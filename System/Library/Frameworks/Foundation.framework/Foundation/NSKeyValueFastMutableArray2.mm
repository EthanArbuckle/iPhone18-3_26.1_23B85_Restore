@interface NSKeyValueFastMutableArray2
- (id)_nonNilArrayValueWithSelector:(SEL)selector;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation NSKeyValueFastMutableArray2

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableArray2;
  v5 = [(NSKeyValueFastMutableArray *)&v7 _proxyInitWithContainer:container getter:?];
  if (v5)
  {
    v5[4] = [getter baseGetter];
  }

  return v5;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueFastMutableArray2;
  [(NSKeyValueFastMutableArray *)&v3 _proxyNonGCFinalize];
  self->_valueGetter = 0;
}

- (id)_nonNilArrayValueWithSelector:(SEL)selector
{
  result = _NSGetUsingKeyValueGetter(self->super.super._container, &self->_valueGetter->super.super.isa);
  if (!result)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: value for key %@ of object %p is nil", _NSMethodExceptionProem(self, selector), self->super.super._key, self->super.super._container), 0}];
    objc_exception_throw(v6);
  }

  return result;
}

- (unint64_t)count
{
  v2 = [(NSKeyValueFastMutableArray2 *)self _nonNilArrayValueWithSelector:a2];

  return [v2 count];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(NSKeyValueFastMutableArray2 *)self _nonNilArrayValueWithSelector:a2];

  [v7 getObjects:objects range:{location, length}];
}

- (id)objectAtIndex:(unint64_t)index
{
  v4 = [(NSKeyValueFastMutableArray2 *)self _nonNilArrayValueWithSelector:a2];

  return [v4 objectAtIndex:index];
}

- (id)objectsAtIndexes:(id)indexes
{
  v4 = [(NSKeyValueFastMutableArray2 *)self _nonNilArrayValueWithSelector:a2];

  return [v4 objectsAtIndexes:indexes];
}

@end