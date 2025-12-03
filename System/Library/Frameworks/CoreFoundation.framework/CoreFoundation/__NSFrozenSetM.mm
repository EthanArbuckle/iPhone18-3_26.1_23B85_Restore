@interface __NSFrozenSetM
- (BOOL)containsObject:(id)object;
- (double)clumpingFactor;
- (double)clumpingInterestingThreshold;
- (id)member:(id)member;
- (id)objectEnumerator;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)countForObject:(id)object;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects count:(unint64_t)count;
@end

@implementation __NSFrozenSetM

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->cow);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    if (!*(v3 + 4))
    {
      [__NSFrozenSetM dealloc];
    }

    v4 = *(v3 + 6);
    v5 = *(v3 + 4) - 1;
    *(v3 + 4) = v5;
    v6 = (v4 | v5);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      __RELEASE_OBJECTS_IN_THE_SET__(self, 0);
      free(v3);
    }
  }

  else
  {
    __RELEASE_OBJECTS_IN_THE_SET__(self, 0);
  }

  v8.receiver = self;
  v8.super_class = __NSFrozenSetM;
  [(__NSFrozenSetM *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)member:(id)member
{
  p_storage = &self->storage;
  v4 = *(&self->storage.var0.var0 + 1);
  if (!(v4 >> 26))
  {
    return 0;
  }

  v6 = *(__NSSetSizes_0 + ((v4 >> 23) & 0x1F8));
  objs = p_storage->objs;
  v8 = [member hash] % v6;
  v9 = v6 <= 1 ? 1 : v6;
  v10 = v6;
  while (1)
  {
    v11 = objs[v8];
    if (!v11)
    {
      break;
    }

    if (v11 == &___NSSetM_DeletedMarker)
    {
      if (v10 == v6)
      {
        v10 = v8;
      }
    }

    else if (v11 == member || ([(state *)v11 isEqual:member]& 1) != 0)
    {
      v10 = v8;
      goto LABEL_21;
    }

    if (v8 + 1 >= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v8 = v8 + 1 - v12;
    if (!--v9)
    {
      goto LABEL_21;
    }
  }

  if (v10 == v6)
  {
    v10 = v8;
  }

LABEL_21:
  if (v10 >= v6)
  {
    return 0;
  }

  if (p_storage->objs[v10] == &___NSSetM_DeletedMarker)
  {
    return 0;
  }

  return p_storage->objs[v10];
}

- (BOOL)containsObject:(id)object
{
  p_storage = &self->storage;
  v4 = *(&self->storage.var0.var0 + 1);
  if (!(v4 >> 26))
  {
    return 0;
  }

  v6 = *(__NSSetSizes_0 + ((v4 >> 23) & 0x1F8));
  objs = p_storage->objs;
  v8 = [object hash] % v6;
  v9 = v6 <= 1 ? 1 : v6;
  v10 = v6;
  while (1)
  {
    v11 = objs[v8];
    if (!v11)
    {
      break;
    }

    if (v11 == &___NSSetM_DeletedMarker)
    {
      if (v10 == v6)
      {
        v10 = v8;
      }
    }

    else if (v11 == object || ([(state *)v11 isEqual:object]& 1) != 0)
    {
      v10 = v8;
      goto LABEL_21;
    }

    if (v8 + 1 >= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v8 = v8 + 1 - v12;
    if (!--v9)
    {
      goto LABEL_21;
    }
  }

  if (v10 == v6)
  {
    v10 = v8;
  }

LABEL_21:
  if (v10 >= v6)
  {
    return 0;
  }

  v13 = p_storage->objs[v10];
  return v13 != &___NSSetM_DeletedMarker && v13 != 0;
}

- (unint64_t)countForObject:(id)object
{
  p_storage = &self->storage;
  v4 = *(&self->storage.var0.var0 + 1);
  if (!(v4 >> 26))
  {
    return 0;
  }

  v6 = *(__NSSetSizes_0 + ((v4 >> 23) & 0x1F8));
  objs = p_storage->objs;
  v8 = [object hash] % v6;
  v9 = v6 <= 1 ? 1 : v6;
  v10 = v6;
  while (1)
  {
    v11 = objs[v8];
    if (!v11)
    {
      break;
    }

    if (v11 == &___NSSetM_DeletedMarker)
    {
      if (v10 == v6)
      {
        v10 = v8;
      }
    }

    else if (v11 == object || ([(state *)v11 isEqual:object]& 1) != 0)
    {
      v10 = v8;
      goto LABEL_21;
    }

    if (v8 + 1 >= v6)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v8 = v8 + 1 - v12;
    if (!--v9)
    {
      goto LABEL_21;
    }
  }

  if (v10 == v6)
  {
    v10 = v8;
  }

LABEL_21:
  if (v10 >= v6)
  {
    return 0;
  }

  v13 = p_storage->objs[v10];
  return v13 != &___NSSetM_DeletedMarker && v13 != 0;
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

- (double)clumpingFactor
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(&self->storage.var0.var0 + 1) & 0x3FFFFFF;
  MEMORY[0x1EEE9AC00](self, a2);
  v5 = &v20 - v4;
  v7 = *(__NSSetSizes_0 + ((v6 >> 23) & 0x1F8));
  v20 = 0;
  if (v3 >= 0x101)
  {
    v5 = _CFCreateArrayStorage(v3, 0, &v20);
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  [(__NSFrozenSetM *)self getObjects:v5 count:v3, v20, v21];
  v9 = 0.0;
  if (v3 >= 2)
  {
    v10 = malloc_type_malloc(8 * v3 + 8, 0x100004000313F17uLL);
    for (i = 0; i != v3; ++i)
    {
      v10[i] = [*&v5[i * 8] hash] % v7;
    }

    qsort(v10, v3, 8uLL, _compare_clumpiness_1);
    v10[v3] = *v10 + v7;
    v12 = v7 / v3;
    v13 = v10 + 1;
    v14 = v3;
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
    v9 = v15 * v3 * v3 / (v7 * v7) / (v3 - 1);
  }

  free(v8);
  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

- (double)clumpingInterestingThreshold
{
  v2 = *(&self->storage.var0.var0 + 1);
  v3 = *(&__NSSetSizes_0 + ((v2 >> 23) & 0x1F8));
  return 1.0 - (2 * (v2 & 0x3FFFFFF)) / v3 + (v2 & 0x3FFFFFF) * (v2 & 0x3FFFFFF) / v3 / v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v13 = _os_log_pack_size();
    v15 = v22 - ((MEMORY[0x1EEE9AC00](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "[__NSFrozenSetM countByEnumeratingWithState:objects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSFrozenSetM countByEnumeratingWithState:objects:count:]", count);
    goto LABEL_20;
  }

  if (count >> 61)
  {
    v13 = _os_log_pack_size();
    v15 = v22 - ((MEMORY[0x1EEE9AC00](v13, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "[__NSFrozenSetM countByEnumeratingWithState:objects:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSFrozenSetM countByEnumeratingWithState:objects:count:]", count);
LABEL_20:
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v13];
    objc_exception_throw(v21);
  }

  p_storage = &self->storage;
  var0 = state->var0;
  v7 = *(__NSSetSizes_0 + ((*(&self->storage.var0.var0 + 1) >> 23) & 0x1F8));
  if (!state->var0)
  {
    state->var2 = &mset_countByEnumeratingWithStateObjectsCount_const_mu;
  }

  if (var0 >= v7)
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
        v9 = p_storage->objs[var0];
        if (v9)
        {
          v10 = v9 == &___NSSetM_DeletedMarker;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          objects[result++] = v9;
        }

        ++var0;
      }

      while (var0 < v7 && result < count);
    }

    state->var0 = var0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v19[6] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v12 = _os_log_pack_size();
    v14 = &v18[-((MEMORY[0x1EEE9AC00](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[__NSFrozenSetM enumerateObjectsWithOptions:usingBlock:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSFrozenSetM enumerateObjectsWithOptions:usingBlock:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v12];
    objc_exception_throw(v17);
  }

  v5 = *(__NSSetSizes_0 + ((*(&self->storage.var0.var0 + 1) >> 23) & 0x1F8));
  objs = self->storage.objs;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __mset_enumerateObjectsWithOptionsUsingBlock_block_invoke;
  v19[3] = &unk_1E6DD0010;
  v19[4] = block;
  v19[5] = objs;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(options, 0, v5, v19) & 1) == 0)
  {
    v18[7] = 0;
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v8 = objs[i];
        if (v8)
        {
          v9 = v8 == &___NSSetM_DeletedMarker;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          v10 = _CFAutoreleasePoolPush();
          __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v10);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)getObjects:(id *)objects count:(unint64_t)count
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v13 = _os_log_pack_size();
    v15 = v22 - ((MEMORY[0x1EEE9AC00](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "mset_getObjectsCount";
    *(v16 + 12) = 2048;
    *(v16 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "mset_getObjectsCount", count);
    goto LABEL_21;
  }

  if (count >> 61)
  {
    v13 = _os_log_pack_size();
    v15 = v22 - ((MEMORY[0x1EEE9AC00](v13, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "mset_getObjectsCount";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "mset_getObjectsCount", count);
LABEL_21:
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v13];
    objc_exception_throw(v21);
  }

  v4 = *(&self->storage.var0.var0 + 1);
  countCopy = v4 & 0x3FFFFFF;
  if (countCopy >= count)
  {
    countCopy = count;
  }

  if (countCopy)
  {
    v6 = v4 >> 26 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = 0;
    v8 = *(__NSSetSizes_0 + ((v4 >> 23) & 0x1F8));
    do
    {
      v9 = self->storage.objs[v7];
      if (v9)
      {
        v10 = v9 == &___NSSetM_DeletedMarker;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        *objects++ = v9;
        LODWORD(countCopy) = countCopy - 1;
      }

      if (!countCopy)
      {
        break;
      }

      ++v7;
    }

    while (v7 < v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end