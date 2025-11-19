@interface __NSFrozenOrderedSetM
- (BOOL)containsObject:(id)a3;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)countForObject:(id)a3;
- (unint64_t)indexOfObject:(id)a3;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
@end

@implementation __NSFrozenOrderedSetM

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->cow);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    if (!*(v3 + 4))
    {
      [__NSFrozenOrderedSetM dealloc];
    }

    v4 = *(v3 + 6);
    v5 = *(v3 + 4) - 1;
    *(v3 + 4) = v5;
    v6 = (v4 | v5);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      __RELEASE_OBJECTS_IN_THE_ORDEREDSET__(self, 0);
      free(v3);
    }
  }

  else
  {
    __RELEASE_OBJECTS_IN_THE_ORDEREDSET__(self, 0);
  }

  v8.receiver = self;
  v8.super_class = __NSFrozenOrderedSetM;
  [(__NSFrozenOrderedSetM *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)mutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableOrderedSet);
  }

  if (!atomic_load(&self->cow))
  {
    v5 = _cow_create(self, 0);
    v6 = 0;
    atomic_compare_exchange_strong(&self->cow, &v6, v5);
    if (v6)
    {
      free(v5);
    }
  }

  v7 = objc_opt_self();
  v8 = __CFAllocateObject(v7, 0);
  v9 = atomic_load(&self->cow);
  _cow_copy(self, 0, v9, __NSOrderedSet_cowCallbacks, v8, 1);
  return v8;
}

- (unint64_t)indexOfObject:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3)
  {
    p_storage = &self->storage;
    set = self->storage.set;
    if (set)
    {
      v8 = 0u;
      v9 = 0u;
      CFBasicHashFindBucket(set, a3, &v8);
      if (*(&v9 + 1))
      {
        result = [(NSArray *)p_storage->array indexOfObjectIdenticalTo:v9];
      }

      else
      {
        result = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  p_storage = &self->storage;
  Count = CFBasicHashGetCount(self->storage.set);
  if (Count <= a3)
  {
    if (Count)
    {
      v14 = Count;
      v9 = _os_log_pack_size();
      v11 = v19 - ((MEMORY[0x1EEE9AC00](v9, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = _os_log_pack_fill();
      v17 = __os_log_helper_1_2_3_8_32_8_0_8_0(v16, "_oset_objectAtIndex", a3, --v14);
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v17, "_oset_objectAtIndex", a3, v14);
    }

    else
    {
      v9 = _os_log_pack_size();
      v11 = v19 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = _os_log_pack_fill();
      *v12 = 136315394;
      *(v12 + 4) = "_oset_objectAtIndex";
      *(v12 + 12) = 2048;
      *(v12 + 14) = a3;
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty ordered set", "_oset_objectAtIndex", a3);
    }

    v18 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v18);
  }

  array = p_storage->array;
  v7 = *MEMORY[0x1E69E9840];

  return [(NSArray *)array objectAtIndex:a3];
}

- (BOOL)containsObject:(id)a3
{
  result = 0;
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    set = self->storage.set;
    if (set)
    {
      v7 = 0u;
      v8 = 0u;
      CFBasicHashFindBucket(set, a3, &v7);
      result = *(&v8 + 1) != 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)countForObject:(id)a3
{
  result = 0;
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    set = self->storage.set;
    if (set)
    {
      v7 = 0u;
      v8 = 0u;
      CFBasicHashFindBucket(set, a3, &v7);
      result = *(&v8 + 1) != 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v6 = _os_log_pack_size();
    v8 = v12 - ((MEMORY[0x1EEE9AC00](v6, v7) + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "_oset_enumerateObjectsWithOptionsUsingBlock";
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "_oset_enumerateObjectsWithOptionsUsingBlock");
    v11 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v10) osLogPack:0 size:v8, v6];
    objc_exception_throw(v11);
  }

  array = self->storage.array;
  v5 = *MEMORY[0x1E69E9840];

  [(NSArray *)array enumerateObjectsWithOptions:a3 usingBlock:?];
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v30[1] = *MEMORY[0x1E69E9840];
  p_storage = &self->storage;
  Count = CFBasicHashGetCount(self->storage.set);
  if ((location & 0x8000000000000000) != 0 || (length & 0x8000000000000000) != 0 || Count < location + length)
  {
    if (Count)
    {
      v25 = Count;
      v16 = _os_log_pack_size();
      v18 = v30 - ((MEMORY[0x1EEE9AC00](v16, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
      v27 = _os_log_pack_fill();
      v28 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v27, "_oset_getObjectsRange", location, length, --v25);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v28, "_oset_getObjectsRange", location, length, v25);
    }

    else
    {
      v16 = _os_log_pack_size();
      v18 = v30 - ((MEMORY[0x1EEE9AC00](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = _os_log_pack_fill();
      v20 = __os_log_helper_1_2_3_8_32_8_0_8_0(v19, "_oset_getObjectsRange", location, length);
      v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty ordered set", v20, "_oset_getObjectsRange", location, length);
    }

    v29 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v18, v16];
    objc_exception_throw(v29);
  }

  if (!a3 && length)
  {
    v11 = _os_log_pack_size();
    v13 = v30 - ((MEMORY[0x1EEE9AC00](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315394;
    *(v14 + 4) = "_oset_getObjectsRange";
    *(v14 + 12) = 2048;
    *(v14 + 14) = length;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "_oset_getObjectsRange", length);
    goto LABEL_14;
  }

  if (length >> 61)
  {
    v11 = _os_log_pack_size();
    v13 = v30 - ((MEMORY[0x1EEE9AC00](v11, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315394;
    *(v23 + 4) = "_oset_getObjectsRange";
    *(v23 + 12) = 2048;
    *(v23 + 14) = length;
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "_oset_getObjectsRange", length);
LABEL_14:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v11];
    objc_exception_throw(v24);
  }

  array = p_storage->array;
  v10 = *MEMORY[0x1E69E9840];

  [(NSArray *)array getObjects:a3 range:location, length];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableOrderedSet);
  }

  if (!atomic_load(&self->cow))
  {
    v6 = _cow_create(self, 0);
    v7 = 0;
    atomic_compare_exchange_strong(&self->cow, &v7, v6);
    if (v7)
    {
      free(v6);
    }
  }

  v8 = objc_opt_self();
  v9 = __CFAllocateObject(v8, 0);
  v10 = atomic_load(&self->cow);
  _cow_copy(self, 0, v10, __NSOrderedSet_cowCallbacks, v9, 1);
  return v9;
}

@end