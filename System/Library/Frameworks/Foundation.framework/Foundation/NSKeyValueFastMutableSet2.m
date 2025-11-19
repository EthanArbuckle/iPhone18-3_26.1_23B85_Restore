@interface NSKeyValueFastMutableSet2
- (id)_nonNilSetValueWithSelector:(SEL)a3;
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (id)member:(id)a3;
- (id)objectEnumerator;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
@end

@implementation NSKeyValueFastMutableSet2

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueFastMutableSet2;
  v5 = [(NSKeyValueFastMutableSet *)&v7 _proxyInitWithContainer:a3 getter:?];
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
  v3.super_class = NSKeyValueFastMutableSet2;
  [(NSKeyValueFastMutableSet *)&v3 _proxyNonGCFinalize];
  self->_valueGetter = 0;
}

- (id)_nonNilSetValueWithSelector:(SEL)a3
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
  v2 = [(NSKeyValueFastMutableSet2 *)self _nonNilSetValueWithSelector:a2];

  return [v2 count];
}

- (id)member:(id)a3
{
  v4 = [(NSKeyValueFastMutableSet2 *)self _nonNilSetValueWithSelector:a2];

  return [v4 member:a3];
}

- (id)objectEnumerator
{
  v2 = [(NSKeyValueFastMutableSet2 *)self _nonNilSetValueWithSelector:a2];

  return [v2 objectEnumerator];
}

@end