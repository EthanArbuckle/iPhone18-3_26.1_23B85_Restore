@interface NSKeyValueFastMutableOrderedSet
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (void)_proxyNonGCFinalize;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)insertObjects:(id)a3 atIndexes:(id)a4;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4;
@end

@implementation NSKeyValueFastMutableOrderedSet

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableOrderedSet;
  v5 = [(NSKeyValueMutableOrderedSet *)&v7 _proxyInitWithContainer:a3 getter:?];
  if (v5)
  {
    v5[3] = [a4 mutatingMethods];
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

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (self->_mutatingMethods->insertObjectAtIndex)
  {

    method_invoke();
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&v8 count:1];
    v6 = [NSIndexSet alloc];
    v7 = [(NSIndexSet *)v6 initWithIndex:a4, v8, v9];
    method_invoke();
  }
}

- (void)insertObjects:(id)a3 atIndexes:(id)a4
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
    [(NSKeyValueFastMutableOrderedSet *)&v4 insertObjects:a3 atIndexes:a4];
  }
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  if (self->_mutatingMethods->removeObjectAtIndex)
  {

    method_invoke();
  }

  else
  {
    v3 = [[NSIndexSet alloc] initWithIndex:a3];
    method_invoke();
  }
}

- (void)removeObjectsAtIndexes:(id)a3
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
    [(NSKeyValueFastMutableOrderedSet *)&v3 removeObjectsAtIndexes:a3];
  }
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = a4;
  mutatingMethods = self->_mutatingMethods;
  if (mutatingMethods->replaceObjectAtIndex)
  {

    method_invoke();
  }

  else if (mutatingMethods->replaceObjectsAtIndexes)
  {
    v8 = [[NSIndexSet alloc] initWithIndex:a3, v10[0]];
    v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v10 count:1];
    method_invoke();
  }

  else
  {
    [(NSKeyValueFastMutableOrderedSet *)self removeObjectAtIndex:a3, v10[0]];

    [(NSKeyValueFastMutableOrderedSet *)self insertObject:a4 atIndex:a3];
  }
}

- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4
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
    [(NSKeyValueFastMutableOrderedSet *)&v4 replaceObjectsAtIndexes:a3 withObjects:a4];
  }
}

@end