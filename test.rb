require_relative 'task'

# TODO: CRUD some tasks

# READ (one)
puts '> READ (one)'
# Your code here!
task = Task.find(1)
puts "#{task.title}: #{task.description} #{task.done ? '[X]' : '[ ]'}"

# CREATE
puts '> CREATE'
# Your code here!
new_task = Task.new(title: "Shooping", description: "Put my mask on and go to the combini")
# p new_task
new_task.save
# p new_task

# UPDATE
puts '> UPDATE'
# Your code here!
task = Task.find(2)
# p task
task.done = true
task.save
# p task

# READ (all)
puts '> READ (all)'
# Your code here!
tasks = Task.all
tasks.each do |task|
  puts "#{task.title}: #{task.description} #{task.done ? '[X]' : '[ ]'}"
end

# DELETE
puts '> DELETE'
# Your code here!
task = Task.find(2)
task.delete
