@interface __NSCFDictionary
- (BOOL)isEqual:(id)a3;
- (Class)classForCoder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)removeAllObjects;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObservationInfo:(void *)a3;
@end

@implementation __NSCFDictionary

- (unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  return CFDictionaryGetCount(self);
}

- (id)description
{
  v12 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  __CFDictionaryGetKeyCallbacks(self, v10);
  v4 = v11;
  __CFDictionaryGetValueCallbacks(self, v8);
  if ((!v4 || v4 == CFCopyDescription) && (!v9 || v9 == CFCopyDescription))
  {
    v7.receiver = self;
    v7.super_class = __NSCFDictionary;
    result = [(NSDictionary *)&v7 description];
  }

  else
  {
    result = CFCopyDescription(self);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (Class)classForCoder
{
  IsMutable = _CFDictionaryIsMutable(self);
  v3 = off_1E6A55868;
  if (!IsMutable)
  {
    v3 = off_1E6A557F0;
  }

  v4 = *v3;

  return objc_opt_self();
}

- (id)objectForKey:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return CFDictionaryGetValue(self, a3);
}

- (id)keyEnumerator
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v4;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  if (!_CFDictionaryIsMutable(self))
  {
    [__NSCFDictionary setObject:a2 forKey:?];
  }

  if (!__cf_tsanWriteFunction)
  {
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_9:
    _NSDictionaryRaiseInsertNilKeyException(self, a2);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (!a3)
  {
    _NSDictionaryRaiseInsertNilValueException(self, a2, a4);
  }

  v9 = [a4 copyWithZone:0];
  CFDictionarySetValue(self, v9, a3);
}

- (void)removeObjectForKey:(id)a3
{
  if (!_CFDictionaryIsMutable(self))
  {
    [(__NSCFDictionary *)self removeObjectForKey:a2];
  }

  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  if (!a3)
  {
    _NSDictionaryRaiseRemoveNilKeyException(self, a2);
  }

  CFDictionaryRemoveValue(self, a3);
}

- (void)setObservationInfo:(void *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  _CFDictionarySetKVOBit(self, a3 != 0);
  v6.receiver = self;
  v6.super_class = __NSCFDictionary;
  [(__NSCFDictionary *)&v6 setObservationInfo:a3];
  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  if (_CFExecutableLinkedOnOrAfter(6uLL))
  {
    v8.receiver = self;
    v8.super_class = __NSCFDictionary;
    result = [(NSDictionary *)&v8 isEqual:a3];
  }

  else if (a3)
  {
    result = _CFNonObjCEqual(self, a3) != 0;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
  }

  return _CFDictionaryFastEnumeration(self, a3, a4, a5);
}

- (void)removeAllObjects
{
  if (!_CFDictionaryIsMutable(self))
  {
    [(__NSCFDictionary *)self removeAllObjects];
  }

  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  CFDictionaryRemoveAllValues(self);
}

- (id)copyWithZone:(_NSZone *)a3
{
  theDict = self;
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
    self = theDict;
  }

  if (_CFDictionaryIsMutable(self))
  {

    return CFDictionaryCreateCopy(0, theDict);
  }

  else
  {

    return theDict;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  return CFDictionaryCreateMutableCopy(0, 0, self);
}

@end