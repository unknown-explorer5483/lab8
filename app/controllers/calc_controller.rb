class CalcController < ApplicationController
  def input
  end
  def view
  nmax = params[:less_than_number].to_i  
  @result = [*1..nmax].select {|num| (num**2).to_s.reverse == (num**2).to_s && num <= nmax}
                      .map {|num| num = [num,num**2]}
  @result = [["Тут ничего нету"]] if @result == []
  @input = "n = #{nmax}"
  end
end