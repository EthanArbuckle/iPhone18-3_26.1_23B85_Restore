@interface __NSCFArray
- (BOOL)isEqual:(id)equal;
- (Class)classForCoder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
@end

@implementation __NSCFArray

- (unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  return _CFNonObjCArrayGetCount(self);
}

- (Class)classForCoder
{
  IsMutable = _CFArrayIsMutable(self);
  v3 = off_1E6A55850;
  if (!IsMutable)
  {
    v3 = off_1E6A55790;
  }

  v4 = *v3;

  return objc_opt_self();
}

- (id)description
{
  v11 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableArray);
  }

  copyDescription = __CFArrayGetCallBacks(self)->copyDescription;
  if (copyDescription == CFCopyDescription || copyDescription == 0)
  {
    v10.receiver = self;
    v10.super_class = __NSCFArray;
    result = [(NSArray *)&v10 description];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = CFCopyDescription(self);
    v9 = *MEMORY[0x1E69E9840];

    return v8;
  }

  return result;
}

- (id)objectAtIndex:(unint64_t)index
{
  v11 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v10 = 0;
  result = _CFArrayCheckAndGetValueAtIndex(self, index, &v10);
  if (v10)
  {
    Count = _CFNonObjCArrayGetCount(self);
    _NSArrayRaiseBoundException(self, a2, index, Count);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v11 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v10 = 0;
  result = _CFArrayCheckAndGetValueAtIndex(self, subscript, &v10);
  if (v10)
  {
    Count = _CFNonObjCArrayGetCount(self);
    _NSArrayRaiseBoundException(self, a2, subscript, Count);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableArray);
  }

  Count = _CFNonObjCArrayGetCount(self);
  v11 = location + length;
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || Count < v11)
  {
    _NSArrayRaiseBoundException(self, a2, v11 - 1, Count);
  }

  if (length)
  {
    v12.location = location;
    v12.length = length;

    CFArrayGetValues(self, v12, objects);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  return _CFArrayFastEnumeration(self, state);
}

- (void)addObject:(id)object
{
  Count = _CFNonObjCArrayGetCount(self);

  [(__NSCFArray *)self insertObject:object atIndex:Count];
}

- (void)removeLastObject
{
  Count = _CFNonObjCArrayGetCount(self);
  if (_CFExecutableLinkedOnOrAfter(7uLL))
  {
    if (!Count)
    {
      return;
    }

    v4 = Count - 1;
  }

  else if (Count)
  {
    v4 = Count - 1;
  }

  else
  {
    v4 = 0;
  }

  [(__NSCFArray *)self removeObjectAtIndex:v4];
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = object;
  if (!_CFArrayIsMutable(self))
  {
    [__NSCFArray insertObject:a2 atIndex:?];
  }

  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_4;
    }

LABEL_7:
    _NSArrayRaiseInsertNilException(self, a2);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  if (!object)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (_CFNonObjCArrayGetCount(self) < index)
  {
    [(__NSCFArray *)self insertObject:a2 atIndex:index];
  }

  _CFArrayReplaceValues(self, index, 0, v10, 1);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  if (!_CFArrayIsMutable(self))
  {
    [__NSCFArray replaceObjectAtIndex:a2 withObject:?];
  }

  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_4;
    }

LABEL_9:
    _NSArrayRaiseInsertNilException(self, a2);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  if (!object)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (_CFNonObjCArrayGetCount(self) <= index)
  {
    Count = _CFNonObjCArrayGetCount(self);
    _NSArrayRaiseBoundException(self, a2, index, Count);
  }

  CFArraySetValueAtIndex(self, index, object);
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  if (!_CFArrayIsMutable(self))
  {
    [(__NSCFArray *)self removeObjectAtIndex:a2];
  }

  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  if (_CFNonObjCArrayGetCount(self) <= index)
  {
    Count = _CFNonObjCArrayGetCount(self);
    _NSArrayRaiseBoundException(self, a2, index, Count);
  }

  _CFArrayReplaceValues(self, index, 1, 0, 0);
}

- (BOOL)isEqual:(id)equal
{
  if (!__cf_tsanReadFunction)
  {
    if (equal)
    {
      return self == equal || _CFNonObjCEqual(self, equal) != 0;
    }

    return 0;
  }

  __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  if (!equal)
  {
    return 0;
  }

  return self == equal || _CFNonObjCEqual(self, equal) != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  theArray = self;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
    self = theArray;
  }

  if (_CFArrayIsMutable(self))
  {

    return CFArrayCreateCopy(0, theArray);
  }

  else
  {

    return theArray;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return CFArrayCreateMutableCopy(0, 0, self);
}

@end