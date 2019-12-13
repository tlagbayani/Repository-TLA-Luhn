# Determine if the given number passes the Luhn algorithm.

module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
    digits = number.to_s.split(//).map! { |d| d.to_i }  # separate digits
    (digits.size-2).step(0,-2) { |i| digits[i] *= 2 } # double every other
    digits.map! { |d| d < 10 ? d : [1,d-10] }.flatten!  # split up those > 10
    (digits.inject { |sum, d| sum + d } % 10).zero? # sum divisible by 10?
  end
end