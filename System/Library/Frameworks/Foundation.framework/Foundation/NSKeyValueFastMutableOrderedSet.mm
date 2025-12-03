@interface NSKeyValueFastMutableOrderedSet
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (void)_proxyNonGCFinalize;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects;
@end

@implementation NSKeyValueFastMutableOrderedSet

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableOrderedSet;
  v5 = [(NSKeyValueMutableOrderedSet *)&v7 _proxyInitWithContainer:container getter:?];
  if (v5)
  {
    v5[3] = [getter mutatingMethods];
  }

  return v5;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueFastMutableOrderedSet;
  [(NSKeyValueMutableOrderedSet *)&v3 _proxyNonGCFinalize];
  self->_mutatingMethods = 0;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v9 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (self->_mutatingMethods->insertObjectAtIndex)
  {

    method_invoke();
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&objectCopy count:1];
    v6 = [NSIndexSet alloc];
    v7 = [(NSIndexSet *)v6 initWithIndex:index, objectCopy, v9];
    method_invoke();
  }
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->insertObjectsAtIndexes)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueFastMutableOrderedSet;
    [(NSKeyValueFastMutableOrderedSet *)&v4 insertObjects:objects atIndexes:indexes];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  if (self->_mutatingMethods->removeObjectAtIndex)
  {

    method_invoke();
  }

  else
  {
    v3 = [[NSIndexSet alloc] initWithIndex:index];
    method_invoke();
  }
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  v4 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->removeObjectsAtIndexes)
  {

    method_invoke();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = NSKeyValueFastMutableOrderedSet;
    [(NSKeyValueFastMutableOrderedSet *)&v3 removeObjectsAtIndexes:indexes];
  }
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = object;
  mutatingMethods = self->_mutatingMethods;
  if (mutatingMethods->replaceObjectAtIndex)
  {

    method_invoke();
  }

  else if (mutatingMethods->replaceObjectsAtIndexes)
  {
    v8 = [[NSIndexSet alloc] initWithIndex:index, v10[0]];
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v10 count:1];
    method_invoke();
  }

  else
  {
    [(NSKeyValueFastMutableOrderedSet *)self removeObjectAtIndex:index, v10[0]];

    [(NSKeyValueFastMutableOrderedSet *)self insertObject:object atIndex:index];
  }
}

- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_mutatingMethods->replaceObjectsAtIndexes)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueFastMutableOrderedSet;
    [(NSKeyValueFastMutableOrderedSet *)&v4 replaceObjectsAtIndexes:indexes withObjects:objects];
  }
}

@end