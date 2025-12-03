@interface NSKeyValueIvarMutableArray
- (id)_nonNilMutableArrayValueWithSelector:(SEL)selector;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
- (void)addObject:(id)object;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects;
@end

@implementation NSKeyValueIvarMutableArray

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueIvarMutableArray;
  v5 = [(NSKeyValueMutableArray *)&v7 _proxyInitWithContainer:container getter:?];
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
  v3.super_class = NSKeyValueIvarMutableArray;
  [(NSKeyValueMutableArray *)&v3 _proxyNonGCFinalize];
  self->_ivar = 0;
}

- (unint64_t)count
{
  container = self->super._container;
  v3 = *(&container->isa + ivar_getOffset(self->_ivar));

  return [v3 count];
}

- (id)_nonNilMutableArrayValueWithSelector:(SEL)selector
{
  container = self->super._container;
  v6 = *(&container->isa + ivar_getOffset(self->_ivar));
  if (!v6)
  {
    [(NSKeyValueIvarMutableArray *)self _raiseNilValueExceptionWithSelector:selector];
  }

  return v6;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v7 getObjects:objects range:{location, length}];
}

- (id)objectAtIndex:(unint64_t)index
{
  v4 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  return [v4 objectAtIndex:index];
}

- (id)objectsAtIndexes:(id)indexes
{
  v4 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  return [v4 objectsAtIndexes:indexes];
}

- (void)addObject:(id)object
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = object;
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 addObject:object];
  }

  else
  {
    *(&container->isa + Offset) = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v7 count:1];
  }
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
      [(NSKeyValueIvarMutableArray *)self _raiseNilValueExceptionWithSelector:a2, v11[0]];
    }

    *(&container->isa + Offset) = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v11 count:1];
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
    v15 = @"passed-in array";
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
    v16 = [NSString stringWithFormat:@"%@: the counts of the passed-in array (%lu) and index set (%lu) must be identical.", _NSMethodExceptionProem(self, a2), v11, v12];
    goto LABEL_18;
  }

  lastIndex = [indexes lastIndex];
  if (lastIndex < v11 || lastIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(&container->isa + Offset) = [objects mutableCopy];
  }

  else
  {

    [(NSKeyValueIvarMutableArray *)self _raiseNilValueExceptionWithSelector:a2];
  }
}

- (void)removeLastObject
{
  v2 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v2 removeLastObject];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v4 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v4 removeObjectAtIndex:index];
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  v4 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v4 removeObjectsAtIndexes:indexes];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v6 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v6 replaceObjectAtIndex:index withObject:object];
}

- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects
{
  v6 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v6 replaceObjectsAtIndexes:indexes withObjects:objects];
}

@end