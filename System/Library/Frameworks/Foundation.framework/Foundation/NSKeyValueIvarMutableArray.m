@interface NSKeyValueIvarMutableArray
- (id)_nonNilMutableArrayValueWithSelector:(SEL)a3;
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
- (void)addObject:(id)a3;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)insertObjects:(id)a3 atIndexes:(id)a4;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4;
@end

@implementation NSKeyValueIvarMutableArray

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueIvarMutableArray;
  v5 = [(NSKeyValueMutableArray *)&v7 _proxyInitWithContainer:a3 getter:?];
  if (v5)
  {
    v5[3] = [a4 ivar];
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

- (id)_nonNilMutableArrayValueWithSelector:(SEL)a3
{
  container = self->super._container;
  v6 = *(&container->isa + ivar_getOffset(self->_ivar));
  if (!v6)
  {
    [(NSKeyValueIvarMutableArray *)self _raiseNilValueExceptionWithSelector:a3];
  }

  return v6;
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v7 getObjects:a3 range:{location, length}];
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  return [v4 objectAtIndex:a3];
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  return [v4 objectsAtIndexes:a3];
}

- (void)addObject:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = a3;
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v6 = *(&container->isa + Offset);
  if (v6)
  {

    [v6 addObject:a3];
  }

  else
  {
    *(&container->isa + Offset) = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v7 count:1];
  }
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v10 = *(&container->isa + Offset);
  if (v10)
  {

    [v10 insertObject:a3 atIndex:a4];
  }

  else
  {
    if (a4)
    {
      [(NSKeyValueIvarMutableArray *)self _raiseNilValueExceptionWithSelector:a2, v11[0]];
    }

    *(&container->isa + Offset) = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v11 count:1];
  }
}

- (void)insertObjects:(id)a3 atIndexes:(id)a4
{
  container = self->super._container;
  Offset = ivar_getOffset(self->_ivar);
  v10 = *(&container->isa + Offset);
  if (v10)
  {

    [v10 insertObjects:a3 atIndexes:a4];
    return;
  }

  if (!a3 || !a4)
  {
    v14 = _NSMethodExceptionProem(self, a2);
    v15 = @"passed-in array";
    if (a3)
    {
      v15 = @"index set";
    }

    v16 = [NSString stringWithFormat:@"%@: the %@ must not be nil.", v14, v15, v17];
LABEL_18:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0]);
  }

  v11 = [a3 count];
  v12 = [a4 count];
  if (v11 != v12)
  {
    v16 = [NSString stringWithFormat:@"%@: the counts of the passed-in array (%lu) and index set (%lu) must be identical.", _NSMethodExceptionProem(self, a2), v11, v12];
    goto LABEL_18;
  }

  v13 = [a4 lastIndex];
  if (v13 < v11 || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(&container->isa + Offset) = [a3 mutableCopy];
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

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v4 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v4 removeObjectAtIndex:a3];
}

- (void)removeObjectsAtIndexes:(id)a3
{
  v4 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v4 removeObjectsAtIndexes:a3];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v6 replaceObjectAtIndex:a3 withObject:a4];
}

- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4
{
  v6 = [(NSKeyValueIvarMutableArray *)self _nonNilMutableArrayValueWithSelector:a2];

  [v6 replaceObjectsAtIndexes:a3 withObjects:a4];
}

@end