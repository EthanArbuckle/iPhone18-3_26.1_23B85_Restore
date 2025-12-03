@interface NSKeyValueFastMutableOrderedSet1
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (void)_proxyNonGCFinalize;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation NSKeyValueFastMutableOrderedSet1

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableOrderedSet1;
  v5 = [(NSKeyValueFastMutableOrderedSet *)&v7 _proxyInitWithContainer:container getter:?];
  if (v5)
  {
    v5[4] = [getter nonmutatingMethods];
  }

  return v5;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueFastMutableOrderedSet1;
  [(NSKeyValueFastMutableOrderedSet *)&v3 _proxyNonGCFinalize];
  self->_nonmutatingMethods = 0;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_nonmutatingMethods->getObjectsRange)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueFastMutableOrderedSet1;
    [(NSKeyValueFastMutableOrderedSet1 *)&v4 getObjects:objects range:range.location, range.length];
  }
}

- (id)objectAtIndex:(unint64_t)index
{
  if (self->_nonmutatingMethods->objectAtIndex)
  {

    method_invoke();
  }

  else
  {
    v4 = [[NSIndexSet alloc] initWithIndex:index];
    method_invoke();
    v6 = v5;

    return [v6 objectAtIndex:0];
  }

  return result;
}

- (id)objectsAtIndexes:(id)indexes
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_nonmutatingMethods->objectsAtIndexes)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueFastMutableOrderedSet1;
    return [(NSKeyValueFastMutableOrderedSet1 *)&v4 objectsAtIndexes:indexes];
  }

  return result;
}

@end