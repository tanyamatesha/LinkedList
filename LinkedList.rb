class LinkedListNode
  attr_accessor :value, :next_node
  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(list, previous = nil)
  head = list.next_node
  list.next_node = previous
  if head
    reverse_list(head, list)
  else
    list
  end
end

def print_values(node)
  print "#{node.value} -> "
  if node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(node.next_node)
  end
end

node1 = LinkedListNode.new(5)
node2 = LinkedListNode.new(4, node1)
node3 = LinkedListNode.new(3, node2)
node4 = LinkedListNode.new(2, node3)
node5 = LinkedListNode.new(1, node4)
print_values(node5)
reverse = reverse_list(node5)
print_values(reverse)
