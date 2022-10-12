class Triangle
  
  attr_reader :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a == @b && @b == @c
      :equilateral
    elsif 
      @a == @b || @b == @c || @a == @c
      :isosceles
    elsif @a != @b && @b != @c && @a != @c
      :scalene
    
    elsif @a <= 0 || @b <= 0 || @c <= 0 || @a + @b > @c || @c + @a > @b
      TriangleError
    
    else 
      TriangleError
    end
  end

    class TriangleError < StandardError
      "Invalid triangle!"
    end
end
