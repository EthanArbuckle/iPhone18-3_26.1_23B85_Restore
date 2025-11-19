@interface __NSDictionaryM
- (double)_clumpingFactor;
- (double)_clumpingInterestingThreshold;
- (id)_cfMutableCopy;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyEnumerator;
- (id)keyOfEntryWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)keysOfEntriesWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__apply:(void *)a3 context:(void *)a4;
- (void)__setObject:(id)a3 forKey:(id)a4;
- (void)_mutate;
- (void)dealloc;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5;
- (void)removeAllObjects;
- (void)removeEntriesWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
- (void)setObservationInfo:(void *)a3;
@end

@implementation __NSDictionaryM

- (unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  return self->storage.var0.var1.other & 0x1FFFFFF;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->cow);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    if (!*(v3 + 6))
    {
      [__NSDictionaryM dealloc];
    }

    v4 = *(v3 + 4);
    v5 = *(v3 + 6) - 1;
    *(v3 + 6) = v5;
    v6 = (v5 | v4);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      cow_cleanup(self, 1);
      free(v3);
    }
  }

  else
  {
    cow_cleanup(self, 1);
  }

  v8.receiver = self;
  v8.super_class = __NSDictionaryM;
  [(__NSDictionaryM *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)copy
{
  if (__cf_tsanReadFunction)
  {
    v2 = v3;
    v16 = OUTLINED_FUNCTION_0_27();
    v17(v16);
    if (__cf_tsanReadFunction)
    {
      v18 = OUTLINED_FUNCTION_0_27();
      v19(v18);
    }
  }

  if (![(__NSDictionaryM *)self count])
  {
    return &__NSDictionary0__struct;
  }

  OUTLINED_FUNCTION_3_8();
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_2_10();
    v8 = _cow_create(v6, v7);
    v9 = 0;
    atomic_compare_exchange_strong(v2, &v9, v8);
    if (v9)
    {
      free(v8);
    }
  }

  v10 = objc_opt_self();
  __CFAllocateObject(v10, 0);
  OUTLINED_FUNCTION_1_20();
  v11 = OUTLINED_FUNCTION_2_10();
  _cow_copy(v11, v12, v13, v14, v2, 0);
  return v2;
}

- (void)removeAllObjects
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = atomic_load(&self->cow);
  p_storage = &self->storage;
  mutations = self->storage.var0.var0.mutations;
  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v7 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    os_unfair_lock_lock(v4);
    if (!*(v4 + 6))
    {
      [__NSDictionaryM removeAllObjects];
    }

    if (*(v4 + 6) != 1 || *(v4 + 4) != 0)
    {
      --*(v4 + 6);
      _cow_mutate_slow(self, v4, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v4);
    mutations = self->storage.var0.var0.mutations;
  }

  v9 = mutations & 0xFFFFFFFF80000000 | v7;
  self->storage.var0.var0.mutations = v9;
  v10 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = p_storage->buffer;
  v12 = mutations >> 58;
  if ((mutations & 0x200000000000000) != 0)
  {
    v33[1] = v33;
    v14 = HIDWORD(mutations) & 0x1FFFFFF;
    if ((mutations & 0x1FFFFFE00000000) != 0)
    {
      v15 = HIDWORD(mutations) & 0x1FFFFFF;
    }

    else
    {
      v15 = 1;
    }

    v16 = MEMORY[0x1EEE9AC00](v15, a2);
    v18 = v33 - v17;
    v34[0] = 0;
    if (v14 >= 0x101)
    {
      v18 = _CFCreateArrayStorage(v16, 0, v34);
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = 0;
    if (v14 && v12)
    {
      v20 = 0;
      v21 = 1;
      v22 = buffer;
      do
      {
        v23 = *v22;
        if (*v22)
        {
          v24 = v23 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          *&v18[8 * v20++] = v23;
        }

        if (v20 == v14)
        {
          break;
        }

        ++v22;
      }

      while (v21++ < v10);
    }

    v13 = [[NSSet alloc] initWithObjects:v18 count:v20];
    [(__NSDictionaryM *)self _willChangeValuesForKeys:v13];
    free(v19);
    v9 = self->storage.var0.var0.mutations;
  }

  else
  {
    v13 = 0;
  }

  v26 = v9 & 0x2000000FFFFFFFFLL;
  p_storage->buffer = 0;
  self->storage.var0.var0.mutations = v26;
  if (!v12)
  {
LABEL_52:
    p_storage->buffer = buffer;
    self->storage.var0.var0.mutations = v26 | mutations & 0xFC00000000000000;
    if ((mutations & 0x200000000000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v27 = 0;
  v28 = &buffer[v10];
  if (v10 <= 1)
  {
    v10 = 1;
  }

  do
  {
    v29 = &buffer[v27];
    v30 = *v29;
    if (*v29)
    {
      v31 = v30 == &___NSDictionaryM_DeletedMarker;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      if ((v30 & 0x8000000000000000) == 0)
      {
      }

      if (*v28 >= 1)
      {
      }

      buffer[v27] = 0;
      v29 = v28;
LABEL_49:
      *v29 = 0;
      goto LABEL_50;
    }

    if (v30)
    {
      goto LABEL_49;
    }

LABEL_50:
    ++v27;
    ++v28;
  }

  while (v10 != v27);
  v26 = self->storage.var0.var0.mutations;
  if (!(v26 >> 58))
  {
    goto LABEL_52;
  }

  free(buffer);
  if ((mutations & 0x200000000000000) != 0)
  {
LABEL_55:
    [(__NSDictionaryM *)self _didChangeValuesForKeys:v13];
  }

LABEL_56:
  v32 = *MEMORY[0x1E69E9840];
}

- (void)_mutate
{
  v2 = atomic_load(&self->cow);
  p_storage = &self->storage;
  mutations = self->storage.var0.var0.mutations;
  v5 = mutations;
  if (v2)
  {
    os_unfair_lock_lock(v2);
    if (!*(v2 + 6))
    {
      [__NSDictionaryM _mutate];
    }

    if (*(v2 + 6) != 1 || *(v2 + 4) != 0)
    {
      --*(v2 + 6);
      _cow_mutate_slow(self, v2, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v2);
    v5 = p_storage->var0.var0.mutations;
  }

  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v8 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v8 = 0;
  }

  p_storage->var0.var0.mutations = v5 & 0xFFFFFFFF80000000 | v8;
}

- (id)mutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  if (!atomic_load(&self->cow))
  {
    v5 = _cow_create(self, 1);
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
  _cow_copy(self, 1, v9, __NSDictionary_cowCallbacks, v8, 1);
  return v8;
}

- (id)_cfMutableCopy
{
  result = [(__NSDictionaryM *)self mutableCopyWithZone:0];
  *(result + 2) = *(result + 2) & 0xFFFFFFFF7FFFFFFFLL | (((self->storage.var0.var0.mutations >> 31) & 1) << 31);
  return result;
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

- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
  }

  v10 = a5 >> 61;
  if (a3 && v10 || a4 && v10)
  {
    v21 = _os_log_pack_size();
    v23 = v27 - ((MEMORY[0x1EEE9AC00](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315394;
    *(v24 + 4) = "[__NSDictionaryM getObjects:andKeys:count:]";
    *(v24 + 12) = 2048;
    *(v24 + 14) = a5;
    v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSDictionaryM getObjects:andKeys:count:]", a5);
    v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25) osLogPack:0 size:v23, v21];
    objc_exception_throw(v26);
  }

  mutations = self->storage.var0.var0.mutations;
  v12 = mutations >> 58;
  v13 = HIDWORD(mutations) & 0x1FFFFFF;
  if (v13 >= a5)
  {
    v13 = a5;
  }

  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = LODWORD(__NSDictionarySizes_0[v12]);
    buffer = self->storage.buffer;
    v17 = 1;
    do
    {
      v18 = *buffer;
      if (*buffer)
      {
        v19 = v18 == &___NSDictionaryM_DeletedMarker;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        if (a4)
        {
          *a4++ = v18;
        }

        if (a3)
        {
          *a3++ = buffer[v15];
        }

        --v13;
      }

      if (v17 >= v15)
      {
        break;
      }

      ++buffer;
      ++v17;
    }

    while (v13);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)objectForKey:(id)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  p_storage = &self->storage;
  mutations = self->storage.var0.var0.mutations;
  if (!(mutations >> 58))
  {
    return 0;
  }

  v8 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = p_storage->buffer;
  v10 = [a3 hash] % v8;
  v11 = v8 <= 1 ? 1 : v8;
  v12 = v8;
  while (1)
  {
    v13 = buffer[v10];
    if (!v13)
    {
      break;
    }

    if (v13 == &___NSDictionaryM_DeletedMarker)
    {
      if (v12 == v8)
      {
        v12 = v10;
      }
    }

    else if (v13 == a3 || ([(state *)v13 isEqual:a3]& 1) != 0)
    {
      v12 = v10;
      goto LABEL_23;
    }

    if (v10 + 1 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    v10 = v10 + 1 - v14;
    if (!--v11)
    {
      goto LABEL_23;
    }
  }

  if (v12 == v8)
  {
    v12 = v10;
  }

LABEL_23:
  if (v12 < v8)
  {
    return *(&buffer[v8] + v12);
  }

  else
  {
    return 0;
  }
}

- (void)removeObjectForKey:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = atomic_load(&self->cow);
  mutations = self->storage.var0.var0.mutations;
  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v8 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    os_unfair_lock_lock(v6);
    if (!*(v6 + 6))
    {
      [__NSDictionaryM removeObjectForKey:];
    }

    if (*(v6 + 6) != 1 || *(v6 + 4) != 0)
    {
      --*(v6 + 6);
      _cow_mutate_slow(self, v6, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v6);
    mutations = self->storage.var0.var0.mutations;
  }

  self->storage.var0.var0.mutations = mutations & 0xFFFFFFFF80000000 | v8;
  if (!a3)
  {
    v11 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x1EEE9AC00](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[__NSDictionaryM removeObjectForKey:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[__NSDictionaryM removeObjectForKey:]");
    v16 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v11];
    objc_exception_throw(v16);
  }

  v10 = *MEMORY[0x1E69E9840];

  mdict_removeObjectForKey(self, a3);
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v48 = self;
  v49 = *MEMORY[0x1E69E9840];
  if (!__cf_tsanWriteFunction)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_64:
    v34 = _os_log_pack_size();
    v36 = &v46 - ((MEMORY[0x1EEE9AC00](v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = _os_log_pack_fill();
    *v37 = 136315138;
    *(v37 + 4) = "[__NSDictionaryM setObject:forKey:]";
    v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[__NSDictionaryM setObject:forKey:]");
    v39 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v38) osLogPack:0 size:v36, v34];
    objc_exception_throw(v39);
  }

  __cf_tsanWriteFunction(v48, v4, __CFTSANTagMutableDictionary);
  if (!a4)
  {
    goto LABEL_64;
  }

LABEL_3:
  if (!a3)
  {
    v40 = _os_log_pack_size();
    v42 = &v46 - ((MEMORY[0x1EEE9AC00](v40, v41) + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = _os_log_pack_fill();
    *v43 = 136315394;
    *(v43 + 4) = "[__NSDictionaryM setObject:forKey:]";
    *(v43 + 12) = 2112;
    *(v43 + 14) = a4;
    v44 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil (key: %@)", "[__NSDictionaryM setObject:forKey:]", a4);
    v45 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v44) osLogPack:0 size:v42, v40];
    objc_exception_throw(v45);
  }

  v7 = v48;
  v8 = atomic_load(v48 + 3);
  v9 = (v7 + 1);
  v10 = v7[2];
  if (((v10 >> 9) & 0x3FFFFF) < 0x7D)
  {
    v11 = (v10 & 0x7FFFFFFF) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSDictionaryM setObject:forKey:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(v48, v8, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
    v10 = v9[1];
  }

  v13 = v10 & 0xFFFFFFFF80000000 | v11;
  v9[1] = v13;
  v14 = v10 >> 58;
  if (v10 >> 58)
  {
    LODWORD(v16) = __NSDictionarySizes_0[v14];
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v9[1] = v13 | 0x400000000000000;
  v15 = malloc_type_calloc(1uLL, 0x30uLL, 0x80040B8603338uLL);
  if (!v15)
  {
    __break(1u);
    return;
  }

  *v9 = v15;
  LODWORD(v14) = 1;
  LODWORD(v16) = 3;
  if ((a3 & 0x8000000000000000) == 0)
  {
LABEL_20:
    v17 = a3;
  }

LABEL_21:
  v46 = v9[1];
  v47 = a3;
  while (1)
  {
    v18 = *v9;
    v19 = v16;
    v20 = 0;
    v21 = [a4 hash] % v16;
    v16 = (v16 & 0xFFFFFFFE) != 0 ? v16 : 1;
    v22 = v19;
    while (1)
    {
      v23 = *(v18 + 8 * v21);
      if (!v23)
      {
        break;
      }

      if (v23 == &___NSDictionaryM_DeletedMarker)
      {
        ++v20;
        if (v22 == v19)
        {
          v22 = v21;
        }
      }

      else if (v23 == a4 || ([v23 isEqual:a4] & 1) != 0)
      {
        v22 = v21;
        goto LABEL_41;
      }

      if (v21 + 1 >= v19)
      {
        v24 = v19;
      }

      else
      {
        v24 = 0;
      }

      v21 = v21 + 1 - v24;
      if (!--v16)
      {
        goto LABEL_41;
      }
    }

    if (v22 == v19)
    {
      v22 = v21;
    }

LABEL_41:
    if (v22 < v19 && v20 <= 0xF)
    {
      break;
    }

    if (v22 < v19)
    {
      v25 = v14;
    }

    else
    {
      v25 = v14 + 1;
    }

    mdict_rehashd(v48, v25);
    v14 = v9[1] >> 58;
    LODWORD(v16) = __NSDictionarySizes_0[v14];
  }

  v26 = *(v18 + 8 * v22);
  v27 = v18 + 8 * v19;
  v28 = v46;
  if ((v46 & 0x200000000000000) != 0)
  {
    [v48 willChangeValueForKey:a4];
  }

  v29 = *(v27 + 8 * v22);
  if (v26 == &___NSDictionaryM_DeletedMarker || v26 == 0)
  {
    *(v18 + 8 * v22) = [a4 copyWithZone:0];
    *(v27 + 8 * v22) = v47;
    v31 = v9[1];
    v9[1] = v31 & 0xFE000000FFFFFFFFLL | ((((v31 + 0x100000000) >> 32) & 0x1FFFFFF) << 32);
    if (__NSDictionaryCapacities_0[v14] < (((v31 + 0x100000000) >> 32) & 0x1FFFFFF))
    {
      mdict_rehashd(v48, v14 + 1);
    }
  }

  else
  {
    *(v27 + 8 * v22) = v47;
  }

  if ((v28 & 0x200000000000000) != 0)
  {
    [v48 didChangeValueForKey:a4];
  }

  if (v29 < 1)
  {
    v33 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v32 = *MEMORY[0x1E69E9840];
  }
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v48 = self;
  v49 = *MEMORY[0x1E69E9840];
  if (!__cf_tsanWriteFunction)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_71:
    v38 = _os_log_pack_size();
    v40 = &v44 - ((MEMORY[0x1EEE9AC00](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = _os_log_pack_fill();
    *v41 = 136315138;
    *(v41 + 4) = "[__NSDictionaryM setObject:forKeyedSubscript:]";
    v42 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[__NSDictionaryM setObject:forKeyedSubscript:]");
    v43 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v42) osLogPack:0 size:v40, v38];
    objc_exception_throw(v43);
  }

  __cf_tsanWriteFunction(v48, v4, __CFTSANTagMutableDictionary);
  if (!a4)
  {
    goto LABEL_71;
  }

LABEL_3:
  v7 = v48;
  v8 = atomic_load(v48 + 3);
  v9 = (v7 + 1);
  v10 = v7[2];
  if (((v10 >> 9) & 0x3FFFFF) < 0x7D)
  {
    v11 = (v10 & 0x7FFFFFFF) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSDictionaryM setObject:forKeyedSubscript:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(v48, v8, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
    v10 = v9[1];
  }

  v13 = v10 & 0xFFFFFFFF80000000 | v11;
  v9[1] = v13;
  if (!a3)
  {
    v17 = *MEMORY[0x1E69E9840];

    mdict_removeObjectForKey(v48, a4);
    return;
  }

  v14 = v10 >> 58;
  if (v10 >> 58)
  {
    LODWORD(v16) = __NSDictionarySizes_0[v14];
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v9[1] = v13 | 0x400000000000000;
    v15 = malloc_type_calloc(1uLL, 0x30uLL, 0x80040B8603338uLL);
    if (!v15)
    {
      __break(1u);
      return;
    }

    *v9 = v15;
    LODWORD(v14) = 1;
    LODWORD(v16) = 3;
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }
  }

  v18 = a3;
LABEL_24:
  v47 = a3;
  v19 = v9[1];
  v45 = v10;
  v46 = v19;
  while (1)
  {
    v20 = *v9;
    v21 = v16;
    v22 = 0;
    v23 = [a4 hash] % v16;
    v16 = (v16 & 0xFFFFFFFE) != 0 ? v16 : 1;
    v24 = v21;
    while (1)
    {
      v25 = *(v20 + 8 * v23);
      if (!v25)
      {
        break;
      }

      if (v25 == &___NSDictionaryM_DeletedMarker)
      {
        ++v22;
        if (v24 == v21)
        {
          v24 = v23;
        }
      }

      else if (v25 == a4 || ([v25 isEqual:a4] & 1) != 0)
      {
        v24 = v23;
        goto LABEL_44;
      }

      if (v23 + 1 >= v21)
      {
        v26 = v21;
      }

      else
      {
        v26 = 0;
      }

      v23 = v23 + 1 - v26;
      if (!--v16)
      {
        goto LABEL_44;
      }
    }

    if (v24 == v21)
    {
      v24 = v23;
    }

LABEL_44:
    if (v24 < v21 && v22 <= 0xF)
    {
      break;
    }

    if (v24 < v21)
    {
      v27 = v14;
    }

    else
    {
      v27 = v14 + 1;
    }

    mdict_rehashd(v48, v27);
    v14 = v9[1] >> 58;
    LODWORD(v16) = __NSDictionarySizes_0[v14];
  }

  v28 = *(v20 + 8 * v24);
  v29 = v20 + 8 * v21;
  v30 = v46;
  if ((v46 & 0x200000000000000) != 0)
  {
    [v48 willChangeValueForKey:a4];
  }

  v31 = *(v29 + 8 * v24);
  if (v28 == &___NSDictionaryM_DeletedMarker || v28 == 0)
  {
    if ((v45 & 0x80000000) != 0)
    {
      v33 = [a4 copyWithZone:0];
    }

    else
    {
      v33 = a4;
      if ((a4 & 0x8000000000000000) == 0)
      {
        v34 = a4;
        v33 = a4;
      }
    }

    *(v20 + 8 * v24) = v33;
    *(v29 + 8 * v24) = v47;
    v35 = v9[1];
    v9[1] = v35 & 0xFE000000FFFFFFFFLL | ((((v35 + 0x100000000) >> 32) & 0x1FFFFFF) << 32);
    if (__NSDictionaryCapacities_0[v14] < (((v35 + 0x100000000) >> 32) & 0x1FFFFFF))
    {
      mdict_rehashd(v48, v14 + 1);
    }
  }

  else
  {
    *(v29 + 8 * v24) = v47;
  }

  if ((v30 & 0x200000000000000) != 0)
  {
    [v48 didChangeValueForKey:a4];
  }

  if (v31 < 1)
  {
    v37 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v36 = *MEMORY[0x1E69E9840];
  }
}

- (void)__setObject:(id)a3 forKey:(id)a4
{
  v80 = *MEMORY[0x1E69E9840];
  v79 = self;
  [(__NSDictionaryM *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_119:
    v63 = _os_log_pack_size();
    v65 = &v75 - ((MEMORY[0x1EEE9AC00](v63, v64) + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = _os_log_pack_fill();
    *v66 = 136315138;
    *(v66 + 4) = "[__NSDictionaryM __setObject:forKey:]";
    v67 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[__NSDictionaryM __setObject:forKey:]");
    v68 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v67) osLogPack:0 size:v65, v63];
    objc_exception_throw(v68);
  }

  __cf_tsanWriteFunction(v79, v4, __CFTSANTagMutableDictionary);
  if (!a4)
  {
    goto LABEL_119;
  }

LABEL_3:
  if (!a3)
  {
    v69 = _os_log_pack_size();
    v71 = &v75 - ((MEMORY[0x1EEE9AC00](v69, v70) + 15) & 0xFFFFFFFFFFFFFFF0);
    v72 = _os_log_pack_fill();
    *v72 = 136315394;
    *(v72 + 4) = "[__NSDictionaryM __setObject:forKey:]";
    *(v72 + 12) = 2112;
    *(v72 + 14) = a4;
    v73 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil (key: %@)", "[__NSDictionaryM __setObject:forKey:]", a4);
    v74 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v73) osLogPack:0 size:v71, v69];
    objc_exception_throw(v74);
  }

  v7 = v79;
  v8 = atomic_load(v79 + 3);
  v9 = (v7 + 1);
  v10 = v7[2];
  if (((v10 >> 9) & 0x3FFFFF) < 0x7D)
  {
    v11 = (v10 & 0x7FFFFFFF) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSDictionaryM __setObject:forKey:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(v79, v8, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
    v10 = v9[1];
  }

  v13 = v10 & 0xFFFFFFFF80000000 | v11;
  v9[1] = v13;
  v78 = a3;
  if ((v10 & 0x80000000) != 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = v9[1];
      goto LABEL_18;
    }

    CFLog(3, @"*** CFDictionarySetValue(): attempt to use this function to set a key which is not copyable into a non-CFDictionary via toll-free bridging", v14, v15, v16, v17, v18, v19, v75);
    v40 = v9[1];
    v41 = v40 >> 58;
    if (v40 >> 58)
    {
      LODWORD(v43) = __NSDictionarySizes_0[v41];
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v9[1] = v40 | 0x400000000000000;
      v42 = malloc_type_calloc(1uLL, 0x30uLL, 0x80040B8603338uLL);
      if (!v42)
      {
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      *v9 = v42;
      LODWORD(v41) = 1;
      LODWORD(v43) = 3;
      if ((a3 & 0x8000000000000000) != 0)
      {
LABEL_75:
        v77 = v9[1];
        while (1)
        {
          v47 = *v9;
          v48 = v43;
          v49 = 0;
          v50 = [a4 hash] % v43;
          v43 = (v43 & 0xFFFFFFFE) != 0 ? v43 : 1;
          v51 = v48;
          while (1)
          {
            v52 = *(v47 + 8 * v50);
            if (!v52)
            {
              break;
            }

            if (v52 == &___NSDictionaryM_DeletedMarker)
            {
              ++v49;
              if (v51 == v48)
              {
                v51 = v50;
              }
            }

            else if (v52 == a4 || ([v52 isEqual:a4] & 1) != 0)
            {
              v51 = v50;
              goto LABEL_95;
            }

            if (v50 + 1 >= v48)
            {
              v53 = v48;
            }

            else
            {
              v53 = 0;
            }

            v50 = v50 + 1 - v53;
            if (!--v43)
            {
              goto LABEL_95;
            }
          }

          if (v51 == v48)
          {
            v51 = v50;
          }

LABEL_95:
          if (v51 < v48 && v49 <= 0xF)
          {
            break;
          }

          if (v51 < v48)
          {
            v54 = v41;
          }

          else
          {
            v54 = v41 + 1;
          }

          mdict_rehashd(v79, v54);
          v41 = v9[1] >> 58;
          LODWORD(v43) = __NSDictionarySizes_0[v41];
        }

        v55 = *(v47 + 8 * v51);
        v56 = v47 + 8 * v48;
        v57 = v77;
        if ((v77 & 0x200000000000000) != 0)
        {
          [v79 willChangeValueForKey:a4];
        }

        v58 = *(v56 + 8 * v51);
        if (v55 == &___NSDictionaryM_DeletedMarker || v55 == 0)
        {
          if ((a4 & 0x8000000000000000) == 0)
          {
            v60 = a4;
          }

          *(v47 + 8 * v51) = a4;
          *(v56 + 8 * v51) = v78;
          v61 = v9[1];
          v9[1] = v61 & 0xFE000000FFFFFFFFLL | ((((v61 + 0x100000000) >> 32) & 0x1FFFFFF) << 32);
          if (__NSDictionaryCapacities_0[v41] < (((v61 + 0x100000000) >> 32) & 0x1FFFFFF))
          {
            mdict_rehashd(v79, v41 + 1);
          }
        }

        else
        {
          *(v56 + 8 * v51) = v78;
        }

        if ((v57 & 0x200000000000000) != 0)
        {
          [v79 didChangeValueForKey:a4];
        }

        if (v58 >= 1)
        {
        }

        if (!getenv("__setObject_throw_on_warning"))
        {
          goto LABEL_117;
        }

LABEL_123:
        objc_exception_throw([NSException exceptionWithName:@"NSInvalidArgumentException" reason:@"key should be copyable" userInfo:0]);
      }
    }

    v46 = a3;
    goto LABEL_75;
  }

LABEL_18:
  v20 = v13 >> 58;
  if (!(v13 >> 58))
  {
    v9[1] = v13 | 0x400000000000000;
    v21 = malloc_type_calloc(1uLL, 0x30uLL, 0x80040B8603338uLL);
    if (v21)
    {
      *v9 = v21;
      LODWORD(v20) = 1;
      LODWORD(v22) = 3;
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_122;
  }

  LODWORD(v22) = __NSDictionarySizes_0[v20];
  if ((a3 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v23 = a3;
  }

LABEL_24:
  v24 = v9[1];
  v76 = v13;
  v77 = v24;
  while (1)
  {
    v25 = *v9;
    v26 = v22;
    v27 = 0;
    v28 = [a4 hash] % v22;
    v29 = (v22 & 0xFFFFFFFE) != 0 ? v22 : 1;
    v22 = v22;
    while (1)
    {
      v30 = *(v25 + 8 * v28);
      if (!v30)
      {
        break;
      }

      if (v30 == &___NSDictionaryM_DeletedMarker)
      {
        ++v27;
        if (v22 == v26)
        {
          v22 = v28;
        }
      }

      else if (v30 == a4 || ([v30 isEqual:a4] & 1) != 0)
      {
        v22 = v28;
        goto LABEL_44;
      }

      if (v28 + 1 >= v26)
      {
        v31 = v26;
      }

      else
      {
        v31 = 0;
      }

      v28 = v28 + 1 - v31;
      if (!--v29)
      {
        goto LABEL_44;
      }
    }

    if (v22 == v26)
    {
      v22 = v28;
    }

LABEL_44:
    if (v22 < v26 && v27 <= 0xF)
    {
      break;
    }

    if (v22 < v26)
    {
      v32 = v20;
    }

    else
    {
      v32 = v20 + 1;
    }

    mdict_rehashd(v79, v32);
    v20 = v9[1] >> 58;
    LODWORD(v22) = __NSDictionarySizes_0[v20];
  }

  v33 = *(v25 + 8 * v22);
  v34 = v25 + 8 * v26;
  v35 = v77;
  if ((v77 & 0x200000000000000) != 0)
  {
    [v79 willChangeValueForKey:a4];
  }

  v36 = *(v34 + 8 * v22);
  if (v33 == &___NSDictionaryM_DeletedMarker || v33 == 0)
  {
    if ((v76 & 0x80000000) != 0)
    {
      v38 = [a4 copyWithZone:0];
    }

    else
    {
      v38 = a4;
      if ((a4 & 0x8000000000000000) == 0)
      {
        v39 = a4;
        v38 = a4;
      }
    }

    *(v25 + 8 * v22) = v38;
    *(v34 + 8 * v22) = v78;
    v44 = v9[1];
    v9[1] = v44 & 0xFE000000FFFFFFFFLL | ((((v44 + 0x100000000) >> 32) & 0x1FFFFFF) << 32);
    if (__NSDictionaryCapacities_0[v20] < (((v44 + 0x100000000) >> 32) & 0x1FFFFFF))
    {
      mdict_rehashd(v79, v20 + 1);
    }
  }

  else
  {
    *(v34 + 8 * v22) = v78;
  }

  if ((v35 & 0x200000000000000) != 0)
  {
    [v79 didChangeValueForKey:a4];
  }

  if (v36 < 1)
  {
LABEL_117:
    v62 = *MEMORY[0x1E69E9840];
    return;
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)setObservationInfo:(void *)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = atomic_load(&self->cow);
  mutations = self->storage.var0.var0.mutations;
  v8 = mutations;
  if (v6)
  {
    os_unfair_lock_lock(v6);
    if (!*(v6 + 6))
    {
      [__NSDictionaryM setObservationInfo:];
    }

    if (*(v6 + 6) != 1 || *(v6 + 4) != 0)
    {
      --*(v6 + 6);
      _cow_mutate_slow(self, v6, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v6);
    v8 = self->storage.var0.var0.mutations;
  }

  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v10 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v10 = 0;
  }

  self->storage.var0.var0.mutations = v10 | ((a3 != 0) << 57) | v8 & 0xFDFFFFFF80000000;
  v12.receiver = self;
  v12.super_class = __NSDictionaryM;
  [(__NSDictionaryM *)&v12 setObservationInfo:a3];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)__apply:(void *)a3 context:(void *)a4
{
  if (!a3)
  {
    v12 = __CFExceptionProem(self, a2);
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v12);
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13), 0];
    objc_exception_throw(v14);
  }

  v4 = self->storage.var0.var0.mutations >> 58;
  if (v4)
  {
    v6 = v4;
    v7 = LODWORD(__NSDictionarySizes_0[v6]);
    buffer = self->storage.buffer;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = LODWORD(__NSDictionarySizes_0[v6]);
    }

    do
    {
      if (*buffer)
      {
        v10 = *buffer == &___NSDictionaryM_DeletedMarker;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = buffer[v7];
        (a3)();
      }

      ++buffer;
      --v9;
    }

    while (v9);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableDictionary);
    if (a4)
    {
      goto LABEL_4;
    }
  }

  else if (a4)
  {
    goto LABEL_4;
  }

  if (a5)
  {
    v17 = _os_log_pack_size();
    v19 = v25 - ((MEMORY[0x1EEE9AC00](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "[__NSDictionaryM countByEnumeratingWithState:objects:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = a5;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSDictionaryM countByEnumeratingWithState:objects:count:]", a5);
    goto LABEL_23;
  }

LABEL_4:
  if (a5 >> 61)
  {
    v17 = _os_log_pack_size();
    v19 = v25 - ((MEMORY[0x1EEE9AC00](v17, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315394;
    *(v23 + 4) = "[__NSDictionaryM countByEnumeratingWithState:objects:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = a5;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSDictionaryM countByEnumeratingWithState:objects:count:]", a5);
LABEL_23:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v17];
    objc_exception_throw(v24);
  }

  var0 = a3->var0;
  v11 = *(__NSDictionarySizes_0 + ((self->storage.var0.var0.mutations >> 55) & 0x1F8));
  if (!a3->var0)
  {
    a3->var2 = &self->storage.var0.var0.mutations;
  }

  if (var0 >= v11)
  {
    result = 0;
  }

  else
  {
    buffer = self->storage.buffer;
    a3->var1 = a4;
    result = 0;
    if (a5)
    {
      do
      {
        v14 = buffer[var0];
        if (v14)
        {
          v15 = v14 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          a4[result++] = v14;
        }

        ++var0;
      }

      while (var0 < v11 && result < a5);
    }

    a3->var0 = var0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a3;
  v24[7] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_14:
    v17 = _os_log_pack_size();
    v19 = &v23[-((MEMORY[0x1EEE9AC00](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = "[__NSDictionaryM enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSDictionaryM enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v17];
    objc_exception_throw(v22);
  }

  if (!a4)
  {
    goto LABEL_14;
  }

LABEL_3:
  buffer = self->storage.buffer;
  mutations = self->storage.var0.var0.mutations;
  v10 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __mdict_enumerateKeysAndObjectsWithOptionsUsingBlock_block_invoke;
  v24[3] = &unk_1E6DD2980;
  v24[4] = a4;
  v24[5] = buffer;
  v24[6] = &buffer[v10];
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(v6, 0, v10, v24) & 1) == 0)
  {
    v23[15] = 0;
    if (mutations >> 58)
    {
      v11 = 0;
      do
      {
        v12 = buffer[v11];
        if (v12)
        {
          v13 = v12 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = _CFAutoreleasePoolPush();
          v15 = *(&buffer[v10] + v11);
          __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(a4);
          _CFAutoreleasePoolPop(v14);
        }

        ++v11;
      }

      while (v11 < v10);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)keyOfEntryWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v6 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  buffer = self->storage.buffer;
  mutations = self->storage.var0.var0.mutations;
  v10 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __mdict_keyOfEntryWithOptionsPassingTest_block_invoke;
  v20[3] = &unk_1E6DD29A8;
  v20[6] = buffer;
  v20[7] = &buffer[v10];
  v20[4] = a4;
  v20[5] = &v21;
  if (__NSCollectionHandleConcurrentEnumerationIfSpecified(v6, 0, v10, v20))
  {
    v11 = atomic_load(v22 + 3);
  }

  else
  {
    v19 = 0;
    v11 = 0;
    if (mutations >> 58)
    {
      if (v10 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v10;
      }

      do
      {
        v13 = *buffer;
        if (*buffer)
        {
          v14 = v13 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          v15 = buffer[v10];
          v16 = _CFAutoreleasePoolPush();
          if ((*(a4 + 2))(a4, v13, v15, &v19))
          {
            v19 = 1;
            v11 = v13;
          }

          _CFAutoreleasePoolPop(v16);
          if (v19)
          {
            break;
          }
        }

        ++buffer;
        --v12;
      }

      while (v12);
    }
  }

  _Block_object_dispose(&v21, 8);
  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)keysOfEntriesWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v6 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  if (!__cf_tsanReadFunction)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = _os_log_pack_size();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = "[__NSDictionaryM keysOfEntriesWithOptions:passingTest:]";
    v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[__NSDictionaryM keysOfEntriesWithOptions:passingTest:]");
    v13 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v12) osLogPack:0 size:v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10];
    objc_exception_throw(v13);
  }

  __cf_tsanReadFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v8 = *MEMORY[0x1E69E9840];

  return mdict_keysOfEntriesWithOptionsPassingTest(&self->storage, v6, a4);
}

- (id)objectForKeyedSubscript:(id)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  p_storage = &self->storage;
  mutations = self->storage.var0.var0.mutations;
  if (!(mutations >> 58))
  {
    return 0;
  }

  v8 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = p_storage->buffer;
  v10 = [a3 hash] % v8;
  v11 = v8 <= 1 ? 1 : v8;
  v12 = v8;
  while (1)
  {
    v13 = buffer[v10];
    if (!v13)
    {
      break;
    }

    if (v13 == &___NSDictionaryM_DeletedMarker)
    {
      if (v12 == v8)
      {
        v12 = v10;
      }
    }

    else if (v13 == a3 || ([(state *)v13 isEqual:a3]& 1) != 0)
    {
      v12 = v10;
      goto LABEL_23;
    }

    if (v10 + 1 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = 0;
    }

    v10 = v10 + 1 - v14;
    if (!--v11)
    {
      goto LABEL_23;
    }
  }

  if (v12 == v8)
  {
    v12 = v10;
  }

LABEL_23:
  if (v12 < v8)
  {
    return *(&buffer[v8] + v12);
  }

  else
  {
    return 0;
  }
}

- (void)removeEntriesWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  v8 = atomic_load(&self->cow);
  mutations = self->storage.var0.var0.mutations;
  if (((mutations >> 9) & 0x3FFFFF) < 0x7D)
  {
    v10 = (mutations & 0x7FFFFFFF) + 1;
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    os_unfair_lock_lock(v8);
    if (!*(v8 + 6))
    {
      [__NSDictionaryM removeEntriesWithOptions:passingTest:];
    }

    if (*(v8 + 6) != 1 || *(v8 + 4) != 0)
    {
      --*(v8 + 6);
      _cow_mutate_slow(self, v8, __NSDictionary_cowCallbacks);
    }

    os_unfair_lock_unlock(v8);
    mutations = self->storage.var0.var0.mutations;
  }

  self->storage.var0.var0.mutations = mutations & 0xFFFFFFFF80000000 | v10;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [(__NSDictionaryM *)self keysOfEntriesWithOptions:a3 passingTest:a4];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(__NSDictionaryM *)self removeObjectForKey:*(*(&v19 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  if (!atomic_load(&self->cow))
  {
    v6 = _cow_create(self, 1);
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
  _cow_copy(self, 1, v10, __NSDictionary_cowCallbacks, v9, 1);
  return v9;
}

- (double)_clumpingFactor
{
  v24 = *MEMORY[0x1E69E9840];
  mutations = self->storage.var0.var0.mutations;
  v4 = HIDWORD(mutations) & 0x1FFFFFF;
  if ((mutations & 0x1FFFFFE00000000) != 0)
  {
    v5 = HIDWORD(mutations) & 0x1FFFFFF;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x1EEE9AC00](v5, a2);
  v8 = &v23 - v7;
  v10 = *(__NSDictionarySizes_0 + ((v9 >> 55) & 0x1F8));
  v23 = 0;
  if (v4 >= 0x101)
  {
    v8 = _CFCreateArrayStorage(v6, 0, &v23);
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  [(__NSDictionaryM *)self getObjects:0 andKeys:v8 count:v4, v23, v24];
  v12 = 0.0;
  if (v4 >= 2)
  {
    v13 = malloc_type_malloc(8 * v4 + 8, 0x100004000313F17uLL);
    for (i = 0; i != v4; ++i)
    {
      v13[i] = [*&v8[i * 8] hash] % v10;
    }

    qsort(v13, v4, 8uLL, _compare_clumpiness_2);
    v13[v4] = *v13 + v10;
    v15 = v10 / v4;
    v16 = v13 + 1;
    v17 = v4;
    v18 = 0.0;
    do
    {
      v19 = *v16 - *(v16 - 1);
      if (v15 <= v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v15 - v19;
      }

      v18 = v18 + v20 * v20;
      ++v16;
      --v17;
    }

    while (v17);
    free(v13);
    v12 = v18 * v4 * v4 / (v10 * v10) / (v4 - 1);
  }

  free(v11);
  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

- (double)_clumpingInterestingThreshold
{
  mutations = self->storage.var0.var0.mutations;
  v3 = *(&__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  return 1.0 - (2 * (HIDWORD(mutations) & 0x1FFFFFF)) / v3 + ((HIDWORD(mutations) & 0x1FFFFFF) * (HIDWORD(mutations) & 0x1FFFFFF)) / v3 / v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    v3 = v4;
    v17 = OUTLINED_FUNCTION_0_27();
    v18(v17);
    if (__cf_tsanReadFunction)
    {
      v19 = OUTLINED_FUNCTION_0_27();
      v20(v19);
    }
  }

  if (![(__NSDictionaryM *)self count])
  {
    return &__NSDictionary0__struct;
  }

  OUTLINED_FUNCTION_3_8();
  if (!v6)
  {
    v7 = OUTLINED_FUNCTION_2_10();
    v9 = _cow_create(v7, v8);
    v10 = 0;
    atomic_compare_exchange_strong(v3, &v10, v9);
    if (v10)
    {
      free(v9);
    }
  }

  v11 = objc_opt_self();
  __CFAllocateObject(v11, 0);
  OUTLINED_FUNCTION_1_20();
  v12 = OUTLINED_FUNCTION_2_10();
  _cow_copy(v12, v13, v14, v15, v3, 0);
  return v3;
}

@end