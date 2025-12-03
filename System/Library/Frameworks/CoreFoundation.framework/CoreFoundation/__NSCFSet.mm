@interface __NSCFSet
- (BOOL)isEqual:(id)equal;
- (Class)classForCoder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)member:(id)member;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)getObjects:(id *)objects;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
@end

@implementation __NSCFSet

- (unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  return CFSetGetCount(self);
}

- (void)removeAllObjects
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableSet);
  }

  if (!_CFSetIsMutable(self))
  {
    [(__NSCFSet *)self removeAllObjects];
  }

  CFSetRemoveAllValues(self);
}

- (BOOL)isEqual:(id)equal
{
  v9 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  if (_CFExecutableLinkedOnOrAfter(6uLL))
  {
    v8.receiver = self;
    v8.super_class = __NSCFSet;
    result = [(NSSet *)&v8 isEqual:equal];
  }

  else if (equal)
  {
    result = _CFNonObjCEqual(self, equal) != 0;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)description
{
  v11 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  Callbacks = __CFSetGetCallbacks(self, v9);
  if (v10 == CFCopyDescription || v10 == 0)
  {
    v8.receiver = self;
    v8.super_class = __NSCFSet;
    result = [(NSSet *)&v8 description];
  }

  else
  {
    result = CFCopyDescription(self);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (Class)classForCoder
{
  IsMutable = _CFSetIsMutable(self);
  v3 = off_1E6A55888;
  if (!IsMutable)
  {
    v3 = off_1E6A558B8;
  }

  v4 = *v3;

  return objc_opt_self();
}

- (id)copyWithZone:(_NSZone *)zone
{
  theSet = self;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
    self = theSet;
  }

  if (_CFSetIsMutable(self))
  {

    return CFSetCreateCopy(0, theSet);
  }

  else
  {

    return theSet;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return CFSetCreateMutableCopy(0, 0, self);
}

- (id)member:(id)member
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (member)
  {
    if (__cf_tsanReadFunction)
    {
      __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
    }

    v8[0] = 0;
    if (CFSetGetValueIfPresent(self, member, v8))
    {
      result = v8[0];
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableSet);
  }

  return _CFSetFastEnumeration(self, state, objects, count);
}

- (id)objectEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  v4 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v4;
}

- (void)addObject:(id)object
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
  }

  if (!_CFSetIsMutable(self))
  {
    [(__NSCFSet *)self addObject:a2];
  }

  if (!object)
  {
    [(__NSCFSet *)self addObject:a2];
  }

  CFSetAddValue(self, object);
}

- (void)removeObject:(id)object
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
  }

  if (!_CFSetIsMutable(self))
  {
    [(__NSCFSet *)self removeObject:a2];
  }

  if (!object)
  {
    [(__NSCFSet *)self removeObject:a2];
  }

  CFSetRemoveValue(self, object);
}

- (void)getObjects:(id *)objects
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  Count = CFSetGetCount(self);
  if (objects && Count)
  {

    CFSetGetValues(self, objects);
  }
}

@end