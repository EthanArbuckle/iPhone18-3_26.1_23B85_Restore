@interface NSKeyValueIvarMutableOrderedSet
- (id)_nonNilMutableOrderedSetValueWithSelector:(SEL)selector;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (unint64_t)count;
- (unint64_t)indexOfObject:(id)object;
- (void)_proxyNonGCFinalize;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects;
@end

@implementation NSKeyValueIvarMutableOrderedSet

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueIvarMutableOrderedSet;
  v5 = [(NSKeyValueMutableOrderedSet *)&v7 _proxyInitWithContainer:container getter:?];
  if (v5)
  {
    v5[3] = [getter ivar];
  }

  return v5;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSKeyValueIvarMutableOrderedSet;
  [(NSKeyValueMutableOrderedSet *)&v3 _proxyNonGCFinalize];
  self->_ivar = 0;
}

- (unint64_t)count
{
  container = self->super._container;
  v3 = *(&container->isa + ivar_getOffset(self->_ivar));

  return [v3 count];
}

- (id)_nonNilMutableOrderedSetValueWithSelector:(SEL)selector
{
  container = self->super._container;
  v6 = *(&container->isa + ivar_getOffset(self->_ivar));
  if (!v6)
  {
    [(NSKeyValueIvarMutableOrderedSet *)self _raiseNilValueExceptionWithSelector:selector];
  }

  return v6;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(NSKeyValueIvarMutableOrderedSet *)self _nonNilMutableOrderedSetValueWithSelector:a2];

  [v7 getObjects:objects range:{location, length}];
}

- (unint64_t)indexOfObject:(id)object
{
  container = self->super._container;
  v5 = *(&container->isa + ivar_getOffset(self->_ivar));
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v5 indexOfObject:object];
}

- (id)objectAtIndex:(unint64_t)index
{
  v4 = [(NSKeyValueIvarMutableOrderedSet *)self _nonNilMutableOrderedSetValueWithSelector:a2];

  return [v4 objectAtIndex:index];
}

- (id)objectsAtIndexes:(id)indexes
{
  v4 = [(NSKeyValueIvarMutableOrderedSet *)self _nonNilMutableOrderedSetValueWithSelector:a2];

  return [v4 objectsAtIndexes:indexes];
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = object;
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v10 = *(&container->isa + Offset);
  if (v10)
  {

    [v10 insertObject:object atIndex:index];
  }

  else
  {
    if (index)
    {
      [(NSKeyValueIvarMutableOrderedSet *)self _raiseNilValueExceptionWithSelector:a2, v11[0]];
    }

    *(&container->isa + Offset) = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v11 count:1];
  }
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v10 = *(&container->isa + Offset);
  if (v10)
  {

    [v10 insertObjects:objects atIndexes:indexes];
    return;
  }

  if (!objects || !indexes)
  {
    v14 = _NSMethodExceptionProem(self, a2);
    v15 = @"passed-in ordered set";
    if (objects)
    {
      v15 = @"index set";
    }

    v16 = [NSString stringWithFormat:@"%@: the %@ must not be nil.", v14, v15, v17];
LABEL_18:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0]);
  }

  v11 = [objects count];
  v12 = [indexes count];
  if (v11 != v12)
  {
    v16 = [NSString stringWithFormat:@"%@: the counts of the passed-in ordered set (%lu) and index set (%lu) must be identical.", _NSMethodExceptionProem(self, a2), v11, v12];
    goto LABEL_18;
  }

  lastIndex = [indexes lastIndex];
  if (lastIndex < v11 || lastIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(&container->isa + Offset) = [objects mutableCopy];
  }

  else
  {

    [(NSKeyValueIvarMutableOrderedSet *)self _raiseNilValueExceptionWithSelector:a2];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v4 = [(NSKeyValueIvarMutableOrderedSet *)self _nonNilMutableOrderedSetValueWithSelector:a2];

  [v4 removeObjectAtIndex:index];
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  v4 = [(NSKeyValueIvarMutableOrderedSet *)self _nonNilMutableOrderedSetValueWithSelector:a2];

  [v4 removeObjectsAtIndexes:indexes];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v6 = [(NSKeyValueIvarMutableOrderedSet *)self _nonNilMutableOrderedSetValueWithSelector:a2];

  [v6 replaceObjectAtIndex:index withObject:object];
}

- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects
{
  v6 = [(NSKeyValueIvarMutableOrderedSet *)self _nonNilMutableOrderedSetValueWithSelector:a2];

  [v6 replaceObjectsAtIndexes:indexes withObjects:objects];
}

@end