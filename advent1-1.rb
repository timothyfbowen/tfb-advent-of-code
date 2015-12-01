file = open('puzzleinput.txt')
input = file.read
floor = 0
position = 0
first = true

input.split("").each do |char|
  position += 1
  if char == '('
    floor += 1
  elsif char == ')'
    floor -= 1
  end

  if floor < 0 and first
    first = false
    puts "Position of basement is: #{position}"
  end
end

puts "Final floor is: #{floor}"
