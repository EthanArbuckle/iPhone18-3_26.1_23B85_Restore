@interface _NSKeyValueObjectAndKeyPair
- (BOOL)isEqual:(id)equal;
- (BOOL)objectWasDeallocated;
- (_Unwind_Exception)newCurrentValue;
- (id)description;
- (id)initWithObject:(void *)object key:(uint64_t)key context:;
- (void)dealloc;
@end

@implementation _NSKeyValueObjectAndKeyPair

- (id)initWithObject:(void *)object key:(uint64_t)key context:
{
  v11 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = _NSKeyValueObjectAndKeyPair;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  if (v7)
  {
    if (objc_opt_respondsToSelector() & 1) == 0 || ([a2 allowsWeakReference])
    {
      *(v7 + 2) = a2;
      *(v7 + 3) = object_getClass(a2);
      objc_storeWeak(v7 + 1, a2);
      v8 = [object copy];
      *(v7 + 4) = key;
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
  selfCopy = self;
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    selfCopy = objc_loadWeak((selfCopy + 8)) == 0;
    objc_autoreleasePoolPop(v2);
  }

  return selfCopy;
}

- (_Unwind_Exception)newCurrentValue
{
  null = exception_object;
  if (exception_object)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = objc_loadWeak(&null->exception_cleanup);
    if (v3)
    {
      null = [v3 valueForKey:null[1].exception_cleanup];
      if (!null)
      {
        null = [MEMORY[0x1E695DFB0] null];
      }
    }

    else
    {
      null = 0;
    }

    v4 = null;
    objc_autoreleasePoolPop(v2);
  }

  return null;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if ([(_NSKeyValueObjectAndKeyPair *)self objectWasDeallocated])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_objectPointer != *(equal + 2))
  {
    return 0;
  }

  key = self->_key;
  v6 = *(equal + 5);

  return [(NSString *)key isEqualToString:v6];
}

- (id)description
{
  objectPointer = self->_objectPointer;
  objectClass = self->_objectClass;
  objectWasDeallocated = [(_NSKeyValueObjectAndKeyPair *)self objectWasDeallocated];
  v6 = @"live";
  if (objectWasDeallocated)
  {
    v6 = @"deallocated";
  }

  return [NSString stringWithFormat:@"<Key: 0x%llx (%@ -- %@).%@ (context: %p)>", objectPointer, objectClass, v6, self->_key, self->_context];
}

@end