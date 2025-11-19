@interface _NSCoreDataTaggedObjectIDFactory
- (_NSCoreDataTaggedObjectIDFactory)initWithPK64:(int64_t)a3;
- (id)_fallbackFactory;
- (id)_storeInfo1;
- (id)managedObjectIDFromURIRepresentation:(id)a3;
- (id)managedObjectIDFromUTF8String:(const char *)a3 length:(unint64_t)a4;
- (unsigned)allocateBatch:(id *)a3 count:(unsigned int)a4;
- (void)_storeDeallocated;
- (void)dealloc;
- (void)release;
- (void)setObjectStoreIdentifier:(id)a3;
@end

@implementation _NSCoreDataTaggedObjectIDFactory

- (id)_storeInfo1
{
  if (!_PFTaggedPointersPool)
  {
    return 0;
  }

  v2 = (_PFTaggedPointersPool + 32 * self->_taggedPoolIndex);
  v3 = atomic_load(v2);
  v4 = atomic_load(v2 + 1);
  if (!v3 || v4 == 0)
  {
    return 0;
  }

  else
  {
    return [v3 _storeInfoForEntityDescription:?];
  }
}

- (void)release
{
  if (atomic_fetch_add_explicit(&self->_cd_rc, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    self->_cd_rc += 0x20000000;
    [(_NSCoreDataTaggedObjectIDFactory *)self dealloc];
  }
}

- (void)dealloc
{
  v3 = (_PFTaggedPointersPool + 32 * self->_taggedPoolIndex);
  atomic_store(0, v3 + 1);
  v4 = atomic_load(v3);
  atomic_compare_exchange_strong(v3, &v4, 0);

  self->_fallbackFactories = 0;

  _PFDeallocateObject(self);
}

- (void)_storeDeallocated
{
  v2 = (_PFTaggedPointersPool + 32 * self->_taggedPoolIndex);
  v3 = atomic_load(v2);
  atomic_compare_exchange_strong(v2, &v3, 0);
}

- (_NSCoreDataTaggedObjectIDFactory)initWithPK64:(int64_t)a3
{
  if (a3 > 0x3FFFFFFFFFFLL)
  {
    v6 = [-[_NSCoreDataTaggedObjectIDFactory _fallbackFactory](self "_fallbackFactory")];

    return [v6 initWithPK64:a3];
  }

  else
  {
    result = ((a3 << 21) | (16 * self->_taggedPoolIndex) | 0x8000000000000005);
    v5 = result ^ *MEMORY[0x1E69E5910];
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  return result;
}

- (unsigned)allocateBatch:(id *)a3 count:(unsigned int)a4
{
  v5 = (16 * self->_taggedPoolIndex) | 0x8000000000000005;
  v6 = v5 ^ *MEMORY[0x1E69E5910];
  if ((~v6 & 0xC000000000000007) != 0)
  {
    v5 = v6 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v6 & 7));
  }

  __pattern8 = v5;
  memset_pattern8(a3, &__pattern8, 8 * a4);
  return a4;
}

- (id)managedObjectIDFromUTF8String:(const char *)a3 length:(unint64_t)a4
{
  __endptr = 0;
  v6 = strtouq(a3, &__endptr, 0);
  result = 0;
  if (__endptr)
  {
    v8 = __endptr == a3;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (v6 >> 42)
    {
      return [objc_msgSend(-[_NSCoreDataTaggedObjectIDFactory _fallbackFactory](self "_fallbackFactory")];
    }

    else
    {
      result = ((v6 << 21) | (16 * self->_taggedPoolIndex) | 0x8000000000000005);
      v9 = result ^ *MEMORY[0x1E69E5910];
      if ((~v9 & 0xC000000000000007) != 0)
      {
        return (v9 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v9 & 7)));
      }
    }
  }

  return result;
}

- (id)_fallbackFactory
{
  result = self->_fallbackFactories;
  if (!result)
  {
    v4 = objc_opt_class();
    v5 = _PFTaggedPointersPool;
    v6 = atomic_load((_PFTaggedPointersPool + 32 * self->_taggedPoolIndex));
    v7 = atomic_load((v5 + 32 * self->_taggedPoolIndex + 8));
    v8 = [v4 classWithStore:v6 andEntity:v7];
    self->_fallbackFactories = v8;
    [v8 _setStoreInfo1:{-[_NSCoreDataTaggedObjectIDFactory _storeInfo1](self, "_storeInfo1")}];
    return self->_fallbackFactories;
  }

  return result;
}

- (id)managedObjectIDFromURIRepresentation:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_msgSend(objc_msgSend(a3 "path")];
  v16 = 0;
  v7 = _PFTaggedPointersPool;
  v8 = atomic_load((_PFTaggedPointersPool + 32 * self->_taggedPoolIndex));
  v9 = atomic_load((v7 + 32 * self->_taggedPoolIndex + 8));
  v10 = [v6 characterAtIndex:0];
  v11 = [v6 substringFromIndex:1];
  if (v10 != 116 || (v12 = [[NSTemporaryObjectID alloc] initWithEntity:v9 andUUIDString:v11], [(NSTemporaryObjectID *)v12 _setPersistentStore:v8], !v12))
  {
    if (+[_PFRoutines convertCString:toUnsignedInt64:withBase:](_PFRoutines, [v11 UTF8String], &v16, 0))
    {
      if (!(v16 >> 42))
      {
        v13 = (v16 << 21) | (16 * self->_taggedPoolIndex) | 0x8000000000000005;
        v14 = v13 ^ *MEMORY[0x1E69E5910];
        if ((~v14 & 0xC000000000000007) != 0)
        {
          v13 = v14 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v14 & 7));
        }

        objc_autoreleasePoolPop(v5);
        return v13;
      }

      v12 = [objc_msgSend(-[_NSCoreDataTaggedObjectIDFactory _fallbackFactory](self "_fallbackFactory")];
    }

    else
    {
      v12 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (void)setObjectStoreIdentifier:(id)a3
{
  v4 = (_PFTaggedPointersPool + 32 * self->_taggedPoolIndex + 16);
  v5 = atomic_load(v4);
  v9 = v5;
  if (([v5 isEqual:?] & 1) == 0)
  {
    v6 = [a3 copy];
    v7 = v9;
    v8 = v9;
    atomic_compare_exchange_strong(v4, &v8, v6);
    if (v8 != v7)
    {
    }

    MEMORY[0x1EEE66BB8]();
  }
}

@end