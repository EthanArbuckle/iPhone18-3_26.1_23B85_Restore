@interface VSTrieNode
- (VSTrieNode)init;
@end

@implementation VSTrieNode

- (VSTrieNode)init
{
  v8.receiver = self;
  v8.super_class = VSTrieNode;
  v2 = [(VSTrieNode *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objects = v2->_objects;
    v2->_objects = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    next = v2->_next;
    v2->_next = v5;
  }

  return v2;
}

@end