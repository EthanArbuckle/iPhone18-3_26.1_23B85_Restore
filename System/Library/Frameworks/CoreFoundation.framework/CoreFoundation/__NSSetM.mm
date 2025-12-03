@interface __NSSetM
- (BOOL)containsObject:(id)object;
- (double)clumpingFactor;
- (double)clumpingInterestingThreshold;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)member:(id)member;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)countForObject:(id)object;
- (void)_mutate;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects count:(unint64_t)count;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
@end

@implementation __NSSetM

- (unint64_t)count
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  return *(&self->storage.var0.var0 + 1) & 0x3FFFFFF;
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
      [__NSSetM dealloc];
    }

    v4 = *(v3 + 4);
    v5 = *(v3 + 6) - 1;
    *(v3 + 6) = v5;
    v6 = (v5 | v4);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      __RELEASE_OBJECTS_IN_THE_SET__(self, 1);
      free(v3);
    }
  }

  else
  {
    __RELEASE_OBJECTS_IN_THE_SET__(self, 1);
  }

  v8.receiver = self;
  v8.super_class = __NSSetM;
  [(__NSSetM *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)copy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableSet);
  }

  return __NSSetM_copy(self, a2);
}

- (void)removeAllObjects
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableSet);
  }

  v4 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.var0.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v7 = muts + 1;
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
      [__NSSetM removeAllObjects];
    }

    if (*(v4 + 6) != 1 || *(v4 + 4) != 0)
    {
      --*(v4 + 6);
      _cow_mutate_slow(self, v4, __NSSet_cowCallbacks);
    }

    os_unfair_lock_unlock(v4);
  }

  v9 = 0;
  self->storage.var0.var0.muts = v7;
  v10 = *(&self->storage.var0.var0 + 1);
  v11 = *(&__NSSetSizes_0 + ((v10 >> 23) & 0x1F8));
  objs = p_storage->objs;
  p_storage->objs = 0;
  *(&p_storage->var0.var0 + 1) = 0;
  if (!(v10 >> 26))
  {
LABEL_31:
    *(&p_storage->var0.var0 + 1) = v9 | v10 & 0xFC000000;
    p_storage->objs = objs;
    return;
  }

  v13 = 0;
  if (v11 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11;
  }

  v15 = 8 * v14;
  do
  {
    v16 = objs[v13 / 8];
    if (v16)
    {
      v17 = v16 == &___NSSetM_DeletedMarker;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
      }

LABEL_28:
      objs[v13 / 8] = 0;
      goto LABEL_29;
    }

    if (v16)
    {
      goto LABEL_28;
    }

LABEL_29:
    v13 += 8;
  }

  while (v15 != v13);
  v9 = *(&p_storage->var0.var0 + 1);
  if (!(v9 >> 26))
  {
    goto LABEL_31;
  }

  free(objs);
}

- (void)_mutate
{
  v2 = atomic_load(&self->cow);
  p_storage = &self->storage;
  muts = self->storage.var0.var0.muts;
  if (v2)
  {
    os_unfair_lock_lock(v2);
    if (!*(v2 + 6))
    {
      [__NSSetM _mutate];
    }

    if (*(v2 + 6) != 1 || *(v2 + 4) != 0)
    {
      --*(v2 + 6);
      _cow_mutate_slow(self, v2, __NSSet_cowCallbacks);
    }

    os_unfair_lock_unlock(v2);
  }

  if (muts >> 9 < 0x7D)
  {
    v7 = muts + 1;
  }

  else
  {
    v7 = 0;
  }

  p_storage->var0.var0.muts = v7;
}

- (id)mutableCopy
{
  if (__cf_tsanReadFunction)
  {
    v2 = v3;
    v15 = OUTLINED_FUNCTION_0_17();
    v16(v15);
    if (__cf_tsanReadFunction)
    {
      v17 = OUTLINED_FUNCTION_0_17();
      v18(v17);
    }
  }

  OUTLINED_FUNCTION_3_3();
  if (!v4)
  {
    v5 = OUTLINED_FUNCTION_1_12();
    v7 = _cow_create(v5, v6);
    v8 = 0;
    atomic_compare_exchange_strong(v2, &v8, v7);
    if (v8)
    {
      free(v7);
    }
  }

  v9 = objc_opt_self();
  __CFAllocateObject(v9, 0);
  OUTLINED_FUNCTION_2_5();
  v10 = OUTLINED_FUNCTION_1_12();
  _cow_copy(v10, v11, v12, v13, v2, 1);
  return v2;
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

- (id)member:(id)member
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  p_storage = &self->storage;
  v7 = *(&p_storage->var0.var0 + 1);
  if (!(v7 >> 26))
  {
    return 0;
  }

  v8 = *(__NSSetSizes_0 + ((v7 >> 23) & 0x1F8));
  objs = p_storage->objs;
  v10 = [member hash] % v8;
  v11 = v8 <= 1 ? 1 : v8;
  v12 = v8;
  while (1)
  {
    v13 = objs[v10];
    if (!v13)
    {
      break;
    }

    if (v13 == &___NSSetM_DeletedMarker)
    {
      if (v12 == v8)
      {
        v12 = v10;
      }
    }

    else if (v13 == member || ([(state *)v13 isEqual:member]& 1) != 0)
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
  if (v12 >= v8)
  {
    return 0;
  }

  if (p_storage->objs[v12] == &___NSSetM_DeletedMarker)
  {
    return 0;
  }

  return p_storage->objs[v12];
}

- (void)addObject:(id)object
{
  selfCopy = self;
  v37 = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(selfCopy, v3, __CFTSANTagMutableSet);
    if (object)
    {
      goto LABEL_3;
    }

LABEL_56:
    v28 = _os_log_pack_size();
    v30 = &v34 - ((MEMORY[0x1EEE9AC00](v28, v29) + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = _os_log_pack_fill();
    *v31 = 136315138;
    *(v31 + 4) = "[__NSSetM addObject:]";
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[__NSSetM addObject:]");
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v32) osLogPack:0 size:v30, v28];
    objc_exception_throw(v33);
  }

  if (!object)
  {
    goto LABEL_56;
  }

LABEL_3:
  v5 = selfCopy;
  v6 = atomic_load(&selfCopy->cow);
  p_storage = &v5->storage;
  muts = v5->storage.var0.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v9 = muts + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    os_unfair_lock_lock(v6);
    if (!*(v6 + 6))
    {
      [__NSSetM addObject:];
    }

    if (*(v6 + 6) != 1 || *(v6 + 4) != 0)
    {
      --*(v6 + 6);
      _cow_mutate_slow(selfCopy, v6, __NSSet_cowCallbacks);
    }

    os_unfair_lock_unlock(v6);
  }

  p_storage->var0.var0.muts = v9;
  v11 = *(&p_storage->var0.var0 + 1);
  if (v11 >> 29 >= 5)
  {
    __break(1u);
  }

  if (v11 >> 26)
  {
    v35 = *(&p_storage->var0.var0 + 1);
    v12 = v11 >> 26;
    LODWORD(v13) = __NSSetSizes_0[2 * (v11 >> 26)];
  }

  else
  {
    *(&p_storage->var0.var0 + 1) = v11 | 0x4000000;
    LODWORD(v12) = 1;
    p_storage->objs = malloc_type_calloc(1uLL, 0x18uLL, 0x80040B8603338uLL);
    v35 = *(&p_storage->var0.var0 + 1);
    LODWORD(v13) = 3;
  }

  while (1)
  {
    objs = p_storage->objs;
    v15 = v13;
    v16 = 0;
    v17 = [object hash] % v13;
    v13 = (v13 & 0xFFFFFFFE) != 0 ? v13 : 1;
    v18 = v15;
    while (1)
    {
      v19 = objs[v17];
      if (!v19)
      {
        break;
      }

      if (v19 == &___NSSetM_DeletedMarker)
      {
        ++v16;
        if (v18 == v15)
        {
          v18 = v17;
        }
      }

      else if (v19 == object || ([(state *)v19 isEqual:object]& 1) != 0)
      {
        v18 = v17;
        goto LABEL_37;
      }

      if (v17 + 1 >= v15)
      {
        v20 = v15;
      }

      else
      {
        v20 = 0;
      }

      v17 = v17 + 1 - v20;
      if (!--v13)
      {
        goto LABEL_37;
      }
    }

    if (v18 == v15)
    {
      v18 = v17;
    }

LABEL_37:
    if (v18 < v15 && v16 <= 0xF)
    {
      break;
    }

    if (v18 < v15)
    {
      v21 = v12;
    }

    else
    {
      v21 = v12 + 1;
    }

    __rehashs(selfCopy, v21);
    v12 = *(&p_storage->var0.var0 + 1) >> 26;
    LODWORD(v13) = __NSSetSizes_0[2 * v12];
  }

  v22 = objs[v18];
  if (v22 != &___NSSetM_DeletedMarker && v22 != 0)
  {
    goto LABEL_54;
  }

  v24 = v35 & 0x3FFFFFF;
  if ((object & 0x8000000000000000) == 0)
  {
    objectCopy = object;
  }

  objs[v18] = object;
  *(&p_storage->var0.var0 + 1) = *(&p_storage->var0.var0 + 1) & 0xFC000000 | (*(&p_storage->var0.var0 + 1) + 1) & 0x3FFFFFF;
  if (__NSSetCapacities_0[v12] < v24)
  {
    v26 = *MEMORY[0x1E69E9840];

    __rehashs(selfCopy, v12 + 1);
  }

  else
  {
LABEL_54:
    v27 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)containsObject:(id)object
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  p_storage = &self->storage;
  v7 = *(&p_storage->var0.var0 + 1);
  if (!(v7 >> 26))
  {
    return 0;
  }

  v8 = *(__NSSetSizes_0 + ((v7 >> 23) & 0x1F8));
  objs = p_storage->objs;
  v10 = [object hash] % v8;
  v11 = v8 <= 1 ? 1 : v8;
  v12 = v8;
  while (1)
  {
    v13 = objs[v10];
    if (!v13)
    {
      break;
    }

    if (v13 == &___NSSetM_DeletedMarker)
    {
      if (v12 == v8)
      {
        v12 = v10;
      }
    }

    else if (v13 == object || ([(state *)v13 isEqual:object]& 1) != 0)
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
  if (v12 >= v8)
  {
    return 0;
  }

  v15 = p_storage->objs[v12];
  return v15 != &___NSSetM_DeletedMarker && v15 != 0;
}

- (unint64_t)countForObject:(id)object
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  p_storage = &self->storage;
  v7 = *(&p_storage->var0.var0 + 1);
  if (!(v7 >> 26))
  {
    return 0;
  }

  v8 = *(__NSSetSizes_0 + ((v7 >> 23) & 0x1F8));
  objs = p_storage->objs;
  v10 = [object hash] % v8;
  v11 = v8 <= 1 ? 1 : v8;
  v12 = v8;
  while (1)
  {
    v13 = objs[v10];
    if (!v13)
    {
      break;
    }

    if (v13 == &___NSSetM_DeletedMarker)
    {
      if (v12 == v8)
      {
        v12 = v10;
      }
    }

    else if (v13 == object || ([(state *)v13 isEqual:object]& 1) != 0)
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
  if (v12 >= v8)
  {
    return 0;
  }

  v15 = p_storage->objs[v12];
  return v15 != &___NSSetM_DeletedMarker && v15 != 0;
}

- (double)clumpingFactor
{
  v21 = *MEMORY[0x1E69E9840];
  p_storage = &self->storage;
  v4 = *(&self->storage.var0.var0 + 1) & 0x3FFFFFF;
  MEMORY[0x1EEE9AC00](self, a2);
  v6 = &v20 - v5;
  v20 = 0;
  if (v4 >= 0x101)
  {
    v6 = _CFCreateArrayStorage(v4, 0, &v20);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [(__NSSetM *)self getObjects:v6 count:v4, v20, v21];
  v8 = 0.0;
  if (v4 >= 2)
  {
    v9 = *(__NSSetSizes_0 + ((*(&p_storage->var0.var0 + 1) >> 23) & 0x1F8));
    v10 = malloc_type_malloc(8 * v4 + 8, 0x100004000313F17uLL);
    for (i = 0; i != v4; ++i)
    {
      v10[i] = [*&v6[i * 8] hash] % v9;
    }

    qsort(v10, v4, 8uLL, _compare_clumpiness_1);
    v10[v4] = *v10 + v9;
    v12 = v9 / v4;
    v13 = v10 + 1;
    v14 = v4;
    v15 = 0.0;
    do
    {
      v16 = *v13 - *(v13 - 1);
      if (v12 <= v16)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v12 - v16;
      }

      v15 = v15 + v17 * v17;
      ++v13;
      --v14;
    }

    while (v14);
    free(v10);
    v8 = v15 * v4 * v4 / (v9 * v9) / (v4 - 1);
  }

  free(v7);
  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

- (double)clumpingInterestingThreshold
{
  v2 = *(&self->storage.var0.var0 + 1);
  v3 = *(&__NSSetSizes_0 + ((v2 >> 23) & 0x1F8));
  return 1.0 - (2 * (v2 & 0x3FFFFFF)) / v3 + (v2 & 0x3FFFFFF) * (v2 & 0x3FFFFFF) / v3 / v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v5, __CFTSANTagMutableSet);
    if (objects)
    {
      goto LABEL_4;
    }
  }

  else if (objects)
  {
    goto LABEL_4;
  }

  if (count)
  {
    v16 = _os_log_pack_size();
    v18 = v24 - ((MEMORY[0x1EEE9AC00](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315394;
    *(v19 + 4) = "[__NSSetM countByEnumeratingWithState:objects:count:]";
    *(v19 + 12) = 2048;
    *(v19 + 14) = count;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSSetM countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_23;
  }

LABEL_4:
  if (count >> 61)
  {
    v16 = _os_log_pack_size();
    v18 = v24 - ((MEMORY[0x1EEE9AC00](v16, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "[__NSSetM countByEnumeratingWithState:objects:count:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = count;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSSetM countByEnumeratingWithState:objects:count:]", count);
LABEL_23:
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v16];
    objc_exception_throw(v23);
  }

  var0 = state->var0;
  v11 = *(__NSSetSizes_0 + ((*(&self->storage.var0.var0 + 1) >> 23) & 0x1F8));
  if (!state->var0)
  {
    state->var2 = &self->storage.var0.mutations;
  }

  if (var0 >= v11)
  {
    result = 0;
  }

  else
  {
    state->var1 = objects;
    result = 0;
    if (count)
    {
      do
      {
        v13 = self->storage.objs[var0];
        if (v13)
        {
          v14 = v13 == &___NSSetM_DeletedMarker;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          objects[result++] = v13;
        }

        ++var0;
      }

      while (var0 < v11 && result < count);
    }

    state->var0 = var0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  v23[6] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
    if (block)
    {
      goto LABEL_3;
    }

LABEL_14:
    v16 = _os_log_pack_size();
    v18 = &v22[-((MEMORY[0x1EEE9AC00](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[__NSSetM enumerateObjectsWithOptions:usingBlock:]";
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSSetM enumerateObjectsWithOptions:usingBlock:]");
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v16];
    objc_exception_throw(v21);
  }

  if (!block)
  {
    goto LABEL_14;
  }

LABEL_3:
  p_storage = &self->storage;
  v9 = *(__NSSetSizes_0 + ((*(&self->storage.var0.var0 + 1) >> 23) & 0x1F8));
  objs = p_storage->objs;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __mset_enumerateObjectsWithOptionsUsingBlock_block_invoke;
  v23[3] = &unk_1E6DD0010;
  v23[4] = block;
  v23[5] = objs;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 0, v9, v23) & 1) == 0)
  {
    v22[7] = 0;
    if (v9)
    {
      for (i = 0; i < v9; ++i)
      {
        v12 = objs[i];
        if (v12)
        {
          v13 = v12 == &___NSSetM_DeletedMarker;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = _CFAutoreleasePoolPush();
          __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v14);
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)getObjects:(id *)objects count:(unint64_t)count
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v4, __CFTSANTagMutableSet);
  }

  if (!objects && count)
  {
    v16 = _os_log_pack_size();
    v18 = v24 - ((MEMORY[0x1EEE9AC00](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315394;
    *(v19 + 4) = "mset_getObjectsCount";
    *(v19 + 12) = 2048;
    *(v19 + 14) = count;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "mset_getObjectsCount", count);
    goto LABEL_23;
  }

  if (count >> 61)
  {
    v16 = _os_log_pack_size();
    v18 = v24 - ((MEMORY[0x1EEE9AC00](v16, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "mset_getObjectsCount";
    *(v22 + 12) = 2048;
    *(v22 + 14) = count;
    v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "mset_getObjectsCount", count);
LABEL_23:
    v23 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v20) osLogPack:0 size:v18, v16];
    objc_exception_throw(v23);
  }

  v8 = *(&self->storage.var0.var0 + 1);
  countCopy = v8 & 0x3FFFFFF;
  if (countCopy >= count)
  {
    countCopy = count;
  }

  if (countCopy)
  {
    v10 = v8 >> 26 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = 0;
    v12 = *(__NSSetSizes_0 + ((v8 >> 23) & 0x1F8));
    do
    {
      v13 = self->storage.objs[v11];
      if (v13)
      {
        v14 = v13 == &___NSSetM_DeletedMarker;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        *objects++ = v13;
        LODWORD(countCopy) = countCopy - 1;
      }

      if (!countCopy)
      {
        break;
      }

      ++v11;
    }

    while (v11 < v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeObject:(id)object
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableSet);
  }

  v6 = atomic_load(&self->cow);
  muts = self->storage.var0.var0.muts;
  if (muts >> 9 < 0x7D)
  {
    v8 = muts + 1;
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
      [__NSSetM removeObject:];
    }

    if (*(v6 + 6) != 1 || *(v6 + 4) != 0)
    {
      --*(v6 + 6);
      _cow_mutate_slow(self, v6, __NSSet_cowCallbacks);
    }

    os_unfair_lock_unlock(v6);
  }

  self->storage.var0.var0.muts = v8;
  if (!object)
  {
    v25 = _os_log_pack_size();
    v27 = v31 - ((MEMORY[0x1EEE9AC00](v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = _os_log_pack_fill();
    *v28 = 136315138;
    *(v28 + 4) = "[__NSSetM removeObject:]";
    v29 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[__NSSetM removeObject:]");
    v30 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v29) osLogPack:0 size:v27, v25];
    objc_exception_throw(v30);
  }

  v10 = *(&self->storage.var0.var0 + 1);
  if (!(v10 >> 26))
  {
    goto LABEL_50;
  }

  v31[0] = v10 >> 26;
  v11 = __NSSetSizes_0[2 * (v10 >> 26)];
  objs = self->storage.objs;
  v13 = 0;
  v14 = [object hash] % v11;
  v15 = v11 <= 1 ? 1 : v11;
  v16 = v11;
  while (1)
  {
    v17 = objs[v14];
    if (!v17)
    {
      break;
    }

    if (v17 == &___NSSetM_DeletedMarker)
    {
      ++v13;
      if (v16 == v11)
      {
        v16 = v14;
      }
    }

    else if (v17 == object || ([(state *)v17 isEqual:object]& 1) != 0)
    {
      v16 = v14;
      goto LABEL_35;
    }

    if (v14 + 1 >= v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = 0;
    }

    v14 = v14 + 1 - v18;
    if (!--v15)
    {
      goto LABEL_35;
    }
  }

  if (v16 == v11)
  {
    v16 = v14;
  }

LABEL_35:
  if (v16 >= v11)
  {
    goto LABEL_50;
  }

  v19 = objs[v16];
  if (!v19 || v19 == &___NSSetM_DeletedMarker)
  {
    goto LABEL_50;
  }

  objs[v16] = &___NSSetM_DeletedMarker;
  *(&self->storage.var0.var0 + 1) = *(&self->storage.var0.var0 + 1) & 0xFC000000 | (*(&self->storage.var0.var0 + 1) - 1) & 0x3FFFFFF;
  if (v13 > 0xF)
  {
    __rehashs(self, v31[0]);
    if ((v19 & 0x8000000000000000) != 0)
    {
LABEL_50:
      v23 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  else
  {
    if (v16 + 1 < v11)
    {
      v21 = v16 + 1;
    }

    else
    {
      v21 = 0;
    }

    if (!objs[v21])
    {
      do
      {
        objs[v16] = 0;
        if (v16)
        {
          v22 = v16;
        }

        else
        {
          v22 = v11;
        }

        v16 = v22 - 1;
      }

      while (objs[v22 - 1] == &___NSSetM_DeletedMarker);
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableSet);
  }

  return __NSSetM_copy(self, a2);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (__cf_tsanReadFunction)
  {
    v3 = v4;
    v16 = OUTLINED_FUNCTION_0_17();
    v17(v16);
    if (__cf_tsanReadFunction)
    {
      v18 = OUTLINED_FUNCTION_0_17();
      v19(v18);
    }
  }

  OUTLINED_FUNCTION_3_3();
  if (!v5)
  {
    v6 = OUTLINED_FUNCTION_1_12();
    v8 = _cow_create(v6, v7);
    v9 = 0;
    atomic_compare_exchange_strong(v3, &v9, v8);
    if (v9)
    {
      free(v8);
    }
  }

  v10 = objc_opt_self();
  __CFAllocateObject(v10, 0);
  OUTLINED_FUNCTION_2_5();
  v11 = OUTLINED_FUNCTION_1_12();
  _cow_copy(v11, v12, v13, v14, v3, 1);
  return v3;
}

@end