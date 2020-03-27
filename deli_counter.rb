# Write your code here.

katz_deli = []

def line(katz_deli)
  if katz_deli != []
    new_katz_deli = []
    counter = 1
    katz_deli.each do |name|
      new_katz_deli << "#{counter}. #{name}"
      counter +=1
    end
    puts "The line is currently: " + new_katz_deli.join(" ")
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli,name)
  case katz_deli == []
  when true
    katz_deli << name
    puts "Welcome, #{name}. You are number 1 in line."
  when false
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  end
end

def now_serving(katz_deli)
  case katz_deli == []
  when true
    puts "There is nobody waiting to be served!"
  when false
    puts "Currently serving #{katz_deli.shift()}."
    katz_deli.shift
  end
end
