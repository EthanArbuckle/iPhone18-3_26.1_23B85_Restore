@interface CPLRUDictionary
+ (id)dictionaryWithMaximumCapacity:(unint64_t)capacity;
- (CPLRUDictionary)initWithMaximumCapacity:(unint64_t)capacity;
- (id)allKeysInLRUOrder;
- (id)allValuesInLRUOrder;
- (id)description;
- (id)objectForKey:(id)key;
- (id)objectForKeyWithoutAffectingLRU:(id)u;
- (unint64_t)linkedListCount;
- (void)_addNodeToFront:(id)front;
- (void)_moveNodeToFront:(id)front;
- (void)_removeNode:(id)node;
- (void)_removeNodeFromLinkedList:(id)list;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation CPLRUDictionary

- (void)_removeNodeFromLinkedList:(id)list
{
  v4 = *(list + 3);
  v3 = *(list + 4);
  *(v3 + 24) = v4;
  *(v4 + 32) = v3;
}

- (void)_removeNode:(id)node
{
  [(CPLRUDictionary *)self _removeNodeFromLinkedList:?];
  dictionary = self->_dictionary;
  v6 = [node key];

  CFDictionaryRemoveValue(dictionary, v6);
}

- (void)_moveNodeToFront:(id)front
{
  if (self->_head->next != front)
  {
    [(CPLRUDictionary *)self _removeNodeFromLinkedList:?];

    [(CPLRUDictionary *)self _addNodeToFront:front];
  }
}

- (void)_addNodeToFront:(id)front
{
  head = self->_head;
  next = head->next;
  head->next = front;
  v5 = self->_head;
  *(front + 3) = next;
  *(front + 4) = v5;
  next->prev = front;
}

+ (id)dictionaryWithMaximumCapacity:(unint64_t)capacity
{
  v3 = [objc_alloc(objc_opt_class()) initWithMaximumCapacity:capacity];

  return v3;
}

- (CPLRUDictionary)initWithMaximumCapacity:(unint64_t)capacity
{
  if (!capacity)
  {
    [(CPLRUDictionary *)a2 initWithMaximumCapacity:?];
  }

  v8.receiver = self;
  v8.super_class = CPLRUDictionary;
  v5 = [(CPLRUDictionary *)&v8 init];
  if (v5)
  {
    v5->_dictionary = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5->_maxCount = capacity;
    v5->_head = [[CPLRUDictionaryNode alloc] initWithKey:0 object:0];
    v6 = [[CPLRUDictionaryNode alloc] initWithKey:0 object:0];
    v5->_tail = v6;
    v5->_head->next = v6;
    v5->_tail->prev = v5->_head;
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_dictionary);

  v3.receiver = self;
  v3.super_class = CPLRUDictionary;
  [(CPLRUDictionary *)&v3 dealloc];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p>{\n", objc_opt_class(), self];
  for (i = self->_head->next; i != self->_tail; i = i->next)
  {
    [v3 appendFormat:@"\t%@ = %@;\n", -[CPLRUDictionaryNode key](i, "key"), -[CPLRUDictionaryNode object](i, "object")];
  }

  [v3 appendString:@"}\n"];
  return v3;
}

- (id)objectForKey:(id)key
{
  result = CFDictionaryGetValue(self->_dictionary, key);
  if (result)
  {
    v5 = result;
    [(CPLRUDictionary *)self _moveNodeToFront:result];

    return [v5 object];
  }

  return result;
}

- (void)setObject:(id)object forKey:(id)key
{
  Value = CFDictionaryGetValue(self->_dictionary, key);
  if (Value)
  {
    v8 = Value;
    [(CPLRUDictionary *)self _moveNodeToFront:Value];

    [v8 setObject:object];
  }

  else
  {
    if (CFDictionaryGetCount(self->_dictionary) == self->_maxCount)
    {
      [(CPLRUDictionary *)self _removeNode:self->_tail->prev];
    }

    key = [key copyWithZone:0];
    v9 = [[CPLRUDictionaryNode alloc] initWithKey:key object:object];
    CFDictionaryAddValue(self->_dictionary, key, v9);
    [(CPLRUDictionary *)self _addNodeToFront:v9];
  }
}

- (void)removeObjectForKey:(id)key
{
  Value = CFDictionaryGetValue(self->_dictionary, key);
  if (Value)
  {

    [(CPLRUDictionary *)self _removeNode:Value];
  }
}

- (void)removeAllObjects
{
  CFDictionaryRemoveAllValues(self->_dictionary);
  tail = self->_tail;
  self->_head->next = tail;
  tail->prev = self->_head;
}

- (unint64_t)linkedListCount
{
  head = self->_head;
  tail = self->_tail;
  result = -1;
  do
  {
    head = head->next;
    ++result;
  }

  while (head != tail);
  return result;
}

- (id)allKeysInLRUOrder
{
  array = [MEMORY[0x1E695DF70] array];
  for (i = self->_head->next; i != self->_tail; i = i->next)
  {
    [array addObject:{-[CPLRUDictionaryNode key](i, "key")}];
  }

  return array;
}

- (id)allValuesInLRUOrder
{
  array = [MEMORY[0x1E695DF70] array];
  for (i = self->_head->next; i != self->_tail; i = i->next)
  {
    [array addObject:{-[CPLRUDictionaryNode object](i, "object")}];
  }

  return array;
}

- (id)objectForKeyWithoutAffectingLRU:(id)u
{
  Value = CFDictionaryGetValue(self->_dictionary, u);

  return [Value object];
}

@end