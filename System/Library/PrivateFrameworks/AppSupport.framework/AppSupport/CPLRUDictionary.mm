@interface CPLRUDictionary
+ (id)dictionaryWithMaximumCapacity:(unint64_t)a3;
- (CPLRUDictionary)initWithMaximumCapacity:(unint64_t)a3;
- (id)allKeysInLRUOrder;
- (id)allValuesInLRUOrder;
- (id)description;
- (id)objectForKey:(id)a3;
- (id)objectForKeyWithoutAffectingLRU:(id)a3;
- (unint64_t)linkedListCount;
- (void)_addNodeToFront:(id)a3;
- (void)_moveNodeToFront:(id)a3;
- (void)_removeNode:(id)a3;
- (void)_removeNodeFromLinkedList:(id)a3;
- (void)dealloc;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CPLRUDictionary

- (void)_removeNodeFromLinkedList:(id)a3
{
  v4 = *(a3 + 3);
  v3 = *(a3 + 4);
  *(v3 + 24) = v4;
  *(v4 + 32) = v3;
}

- (void)_removeNode:(id)a3
{
  [(CPLRUDictionary *)self _removeNodeFromLinkedList:?];
  dictionary = self->_dictionary;
  v6 = [a3 key];

  CFDictionaryRemoveValue(dictionary, v6);
}

- (void)_moveNodeToFront:(id)a3
{
  if (self->_head->next != a3)
  {
    [(CPLRUDictionary *)self _removeNodeFromLinkedList:?];

    [(CPLRUDictionary *)self _addNodeToFront:a3];
  }
}

- (void)_addNodeToFront:(id)a3
{
  head = self->_head;
  next = head->next;
  head->next = a3;
  v5 = self->_head;
  *(a3 + 3) = next;
  *(a3 + 4) = v5;
  next->prev = a3;
}

+ (id)dictionaryWithMaximumCapacity:(unint64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithMaximumCapacity:a3];

  return v3;
}

- (CPLRUDictionary)initWithMaximumCapacity:(unint64_t)a3
{
  if (!a3)
  {
    [(CPLRUDictionary *)a2 initWithMaximumCapacity:?];
  }

  v8.receiver = self;
  v8.super_class = CPLRUDictionary;
  v5 = [(CPLRUDictionary *)&v8 init];
  if (v5)
  {
    v5->_dictionary = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], a3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5->_maxCount = a3;
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

- (id)objectForKey:(id)a3
{
  result = CFDictionaryGetValue(self->_dictionary, a3);
  if (result)
  {
    v5 = result;
    [(CPLRUDictionary *)self _moveNodeToFront:result];

    return [v5 object];
  }

  return result;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  Value = CFDictionaryGetValue(self->_dictionary, a4);
  if (Value)
  {
    v8 = Value;
    [(CPLRUDictionary *)self _moveNodeToFront:Value];

    [v8 setObject:a3];
  }

  else
  {
    if (CFDictionaryGetCount(self->_dictionary) == self->_maxCount)
    {
      [(CPLRUDictionary *)self _removeNode:self->_tail->prev];
    }

    key = [a4 copyWithZone:0];
    v9 = [[CPLRUDictionaryNode alloc] initWithKey:key object:a3];
    CFDictionaryAddValue(self->_dictionary, key, v9);
    [(CPLRUDictionary *)self _addNodeToFront:v9];
  }
}

- (void)removeObjectForKey:(id)a3
{
  Value = CFDictionaryGetValue(self->_dictionary, a3);
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
  v3 = [MEMORY[0x1E695DF70] array];
  for (i = self->_head->next; i != self->_tail; i = i->next)
  {
    [v3 addObject:{-[CPLRUDictionaryNode key](i, "key")}];
  }

  return v3;
}

- (id)allValuesInLRUOrder
{
  v3 = [MEMORY[0x1E695DF70] array];
  for (i = self->_head->next; i != self->_tail; i = i->next)
  {
    [v3 addObject:{-[CPLRUDictionaryNode object](i, "object")}];
  }

  return v3;
}

- (id)objectForKeyWithoutAffectingLRU:(id)a3
{
  Value = CFDictionaryGetValue(self->_dictionary, a3);

  return [Value object];
}

@end