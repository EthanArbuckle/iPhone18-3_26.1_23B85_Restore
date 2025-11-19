@interface _NSKeyValueObjectAndKeyPair
- (BOOL)isEqual:(id)a3;
- (BOOL)objectWasDeallocated;
- (_Unwind_Exception)newCurrentValue;
- (id)description;
- (id)initWithObject:(void *)a3 key:(uint64_t)a4 context:;
- (void)dealloc;
@end

@implementation _NSKeyValueObjectAndKeyPair

- (id)initWithObject:(void *)a3 key:(uint64_t)a4 context:
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = _NSKeyValueObjectAndKeyPair;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  if (v7)
  {
    if (objc_opt_respondsToSelector() & 1) == 0 || ([a2 allowsWeakReference])
    {
      *(v7 + 2) = a2;
      *(v7 + 3) = object_getClass(a2);
      objc_storeWeak(v7 + 1, a2);
      v8 = [a3 copy];
      *(v7 + 4) = a4;
      *(v7 + 5) = v8;
      return v7;
    }

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_object, 0);

  v3.receiver = self;
  v3.super_class = _NSKeyValueObjectAndKeyPair;
  [(_NSKeyValueObjectAndKeyPair *)&v3 dealloc];
}

- (BOOL)objectWasDeallocated
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v1 = objc_loadWeak((v1 + 8)) == 0;
    objc_autoreleasePoolPop(v2);
  }

  return v1;
}

- (_Unwind_Exception)newCurrentValue
{
  v1 = exception_object;
  if (exception_object)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = objc_loadWeak(&v1->exception_cleanup);
    if (v3)
    {
      v1 = [v3 valueForKey:v1[1].exception_cleanup];
      if (!v1)
      {
        v1 = [MEMORY[0x1E695DFB0] null];
      }
    }

    else
    {
      v1 = 0;
    }

    v4 = v1;
    objc_autoreleasePoolPop(v2);
  }

  return v1;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if ([(_NSKeyValueObjectAndKeyPair *)self objectWasDeallocated])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_objectPointer != *(a3 + 2))
  {
    return 0;
  }

  key = self->_key;
  v6 = *(a3 + 5);

  return [(NSString *)key isEqualToString:v6];
}

- (id)description
{
  objectPointer = self->_objectPointer;
  objectClass = self->_objectClass;
  v5 = [(_NSKeyValueObjectAndKeyPair *)self objectWasDeallocated];
  v6 = @"live";
  if (v5)
  {
    v6 = @"deallocated";
  }

  return [NSString stringWithFormat:@"<Key: 0x%llx (%@ -- %@).%@ (context: %p)>", objectPointer, objectClass, v6, self->_key, self->_context];
}

@end