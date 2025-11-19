@interface NSKeyValueFastMutableArray2
- (id)_nonNilArrayValueWithSelector:(SEL)a3;
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
@end

@implementation NSKeyValueFastMutableArray2

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableArray2;
  v5 = [(NSKeyValueFastMutableArray *)&v7 _proxyInitWithContainer:a3 getter:?];
  if (v5)
  {
    v5[4] = [a4 baseGetter];
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

- (id)_nonNilArrayValueWithSelector:(SEL)a3
{
  result = _NSGetUsingKeyValueGetter(self->super.super._container, &self->_valueGetter->super.super.isa);
  if (!result)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: value for key %@ of object %p is nil", _NSMethodExceptionProem(self, a3), self->super.super._key, self->super.super._container), 0}];
    objc_exception_throw(v6);
  }

  return result;
}

- (unint64_t)count
{
  v2 = [(NSKeyValueFastMutableArray2 *)self _nonNilArrayValueWithSelector:a2];

  return [v2 count];
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(NSKeyValueFastMutableArray2 *)self _nonNilArrayValueWithSelector:a2];

  [v7 getObjects:a3 range:{location, length}];
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(NSKeyValueFastMutableArray2 *)self _nonNilArrayValueWithSelector:a2];

  return [v4 objectAtIndex:a3];
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = [(NSKeyValueFastMutableArray2 *)self _nonNilArrayValueWithSelector:a2];

  return [v4 objectsAtIndexes:a3];
}

@end