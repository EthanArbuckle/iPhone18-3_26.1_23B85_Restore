@interface __NSCFArray
- (BOOL)isEqual:(id)a3;
- (Class)classForCoder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addObject:(id)a3;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
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

- (id)objectAtIndex:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v10 = 0;
  result = _CFArrayCheckAndGetValueAtIndex(self, a3, &v10);
  if (v10)
  {
    Count = _CFNonObjCArrayGetCount(self);
    _NSArrayRaiseBoundException(self, a2, a3, Count);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  v10 = 0;
  result = _CFArrayCheckAndGetValueAtIndex(self, a3, &v10);
  if (v10)
  {
    Count = _CFNonObjCArrayGetCount(self);
    _NSArrayRaiseBoundException(self, a2, a3, Count);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
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

    CFArrayGetValues(self, v12, a3);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableArray);
  }

  return _CFArrayFastEnumeration(self, a3);
}

- (void)addObject:(id)a3
{
  Count = _CFNonObjCArrayGetCount(self);

  [(__NSCFArray *)self insertObject:a3 atIndex:Count];
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

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  if (!_CFArrayIsMutable(self))
  {
    [__NSCFArray insertObject:a2 atIndex:?];
  }

  if (!__cf_tsanWriteFunction)
  {
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    _NSArrayRaiseInsertNilException(self, a2);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (_CFNonObjCArrayGetCount(self) < a4)
  {
    [(__NSCFArray *)self insertObject:a2 atIndex:a4];
  }

  _CFArrayReplaceValues(self, a4, 0, v10, 1);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  if (!_CFArrayIsMutable(self))
  {
    [__NSCFArray replaceObjectAtIndex:a2 withObject:?];
  }

  if (!__cf_tsanWriteFunction)
  {
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_9:
    _NSArrayRaiseInsertNilException(self, a2);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableArray);
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (_CFNonObjCArrayGetCount(self) <= a3)
  {
    Count = _CFNonObjCArrayGetCount(self);
    _NSArrayRaiseBoundException(self, a2, a3, Count);
  }

  CFArraySetValueAtIndex(self, a3, a4);
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  if (!_CFArrayIsMutable(self))
  {
    [(__NSCFArray *)self removeObjectAtIndex:a2];
  }

  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableArray);
  }

  if (_CFNonObjCArrayGetCount(self) <= a3)
  {
    Count = _CFNonObjCArrayGetCount(self);
    _NSArrayRaiseBoundException(self, a2, a3, Count);
  }

  _CFArrayReplaceValues(self, a3, 1, 0, 0);
}

- (BOOL)isEqual:(id)a3
{
  if (!__cf_tsanReadFunction)
  {
    if (a3)
    {
      return self == a3 || _CFNonObjCEqual(self, a3) != 0;
    }

    return 0;
  }

  __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  if (!a3)
  {
    return 0;
  }

  return self == a3 || _CFNonObjCEqual(self, a3) != 0;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableArray);
  }

  return CFArrayCreateMutableCopy(0, 0, self);
}

@end