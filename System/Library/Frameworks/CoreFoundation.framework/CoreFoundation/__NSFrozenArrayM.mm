@interface __NSFrozenArrayM
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexOfObjectIdenticalTo:(id)to;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation __NSFrozenArrayM

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->cow);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    if (!*(v3 + 4))
    {
      [__NSFrozenArrayM dealloc];
    }

    v4 = *(v3 + 6);
    v5 = *(v3 + 4) - 1;
    *(v3 + 4) = v5;
    v6 = (v4 | v5);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      __RELEASE_OBJECTS_IN_THE_ARRAY__(self, 0);
      free(v3);
    }
  }

  else
  {
    __RELEASE_OBJECTS_IN_THE_ARRAY__(self, 0);
  }

  v8.receiver = self;
  v8.super_class = __NSFrozenArrayM;
  [(__NSFrozenArrayM *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)mutableCopy
{
  p_cow = &self->cow;
  if (!atomic_load(&self->cow))
  {
    v5 = _cow_create(self, 0);
    v6 = 0;
    atomic_compare_exchange_strong(p_cow, &v6, v5);
    if (v6)
    {
      free(v5);
    }
  }

  v7 = objc_opt_self();
  v8 = __CFAllocateObject(v7, 0);
  v9 = atomic_load(&self->cow);
  _cow_copy(self, 0, v9, __NSArray_cowCallbacks, v8, 1);
  return v8;
}

- (id)objectAtIndex:(unint64_t)index
{
  v17[1] = *MEMORY[0x1E69E9840];
  used = self->storage.state.var0.used;
  if ((index & 0x8000000000000000) != 0 || used <= index)
  {
    v9 = _os_log_pack_size();
    v11 = v17 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    if (used)
    {
      v14 = used - 1;
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v12, "[__NSFrozenArrayM objectAtIndex:]", index, v14);
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v15, "[__NSFrozenArrayM objectAtIndex:]", index, v14);
    }

    else
    {
      *v12 = 136315394;
      *(v12 + 4) = "[__NSFrozenArrayM objectAtIndex:]";
      *(v12 + 12) = 2048;
      *(v12 + 14) = index;
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSFrozenArrayM objectAtIndex:]", index);
    }

    v16 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v16);
  }

  size = self->storage.size;
  v5 = self->storage.var0 + index;
  if (size > v5)
  {
    size = 0;
  }

  result = self->storage.list[v5 - size];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v17[1] = *MEMORY[0x1E69E9840];
  used = self->storage.state.var0.used;
  if ((subscript & 0x8000000000000000) != 0 || used <= subscript)
  {
    v9 = _os_log_pack_size();
    v11 = v17 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    if (used)
    {
      v14 = used - 1;
      v15 = __os_log_helper_1_2_3_8_32_8_0_8_0(v12, "[__NSFrozenArrayM objectAtIndexedSubscript:]", subscript, v14);
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds [0 .. %lu]", v15, "[__NSFrozenArrayM objectAtIndexedSubscript:]", subscript, v14);
    }

    else
    {
      *v12 = 136315394;
      *(v12 + 4) = "[__NSFrozenArrayM objectAtIndexedSubscript:]";
      *(v12 + 12) = 2048;
      *(v12 + 14) = subscript;
      v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: index %lu beyond bounds for empty array", "[__NSFrozenArrayM objectAtIndexedSubscript:]", subscript);
    }

    v16 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v9];
    objc_exception_throw(v16);
  }

  size = self->storage.size;
  v5 = self->storage.var0 + subscript;
  if (size > v5)
  {
    size = 0;
  }

  result = self->storage.list[v5 - size];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  atomic_load(&self->cow);
  result = state->var0;
  if (state->var0 == -1)
  {
    return 0;
  }

  p_storage = &self->storage;
  if (result)
  {
    list = p_storage->list;
    state->var0 = -1;
    state->var1 = list;
  }

  else
  {
    state->var2 = &_deque_countByEnumeratingWithStateObjectsCount_const_mu;
    result = p_storage->state.var0.used;
    v8 = p_storage->list;
    var0 = p_storage->var0;
    size = p_storage->size;
    state->var1 = &v8[var0];
    v11 = var0 + result >= size;
    v12 = var0 + result - size;
    if (v12 != 0 && v11)
    {
      state->var0 = v12;
      result -= v12;
    }

    else
    {
      state->var0 = -1;
    }
  }

  return result;
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v30 = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v20 = _os_log_pack_size();
    v22 = &v26 - ((MEMORY[0x1EEE9AC00](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315138;
    *(v23 + 4) = "[__NSFrozenArrayM enumerateObjectsWithOptions:usingBlock:]";
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSFrozenArrayM enumerateObjectsWithOptions:usingBlock:]");
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v20];
    objc_exception_throw(v25);
  }

  optionsCopy = options;
  p_storage = &self->storage;
  size = self->storage.size;
  used = self->storage.state.var0.used;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = ___deque_enumerateObjectsWithOptionsBlock_block_invoke;
  v28[3] = &unk_1E6D7D438;
  v29 = size;
  v28[4] = block;
  v28[5] = &self->storage;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(optionsCopy, 1, used, v28) & 1) == 0)
  {
    if ((optionsCopy & 2) != 0)
    {
      v27 = 0;
      v15 = p_storage->state.var0.used;
      do
      {
        if (!v15)
        {
          break;
        }

        --v15;
        var0 = p_storage->var0;
        v17 = size <= v15 + var0 ? size : 0;
        v18 = *(&p_storage->list[v15] + var0 - v17);
        v19 = _CFAutoreleasePoolPush();
        __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v19);
      }

      while (v27 != 1);
    }

    else
    {
      v27 = 0;
      if (p_storage->state.var0.used)
      {
        v10 = 0;
        do
        {
          v11 = p_storage->var0;
          if (size <= v10 + v11)
          {
            v12 = size;
          }

          else
          {
            v12 = 0;
          }

          v13 = *(&p_storage->list[v10] + v11 - v12);
          v14 = _CFAutoreleasePoolPush();
          __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(block);
          _CFAutoreleasePoolPop(v14);
          if (v27 == 1)
          {
            break;
          }

          ++v10;
        }

        while (v10 < p_storage->state.var0.used);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  objectsCopy = objects;
  v44[1] = *MEMORY[0x1E69E9840];
  if (!objects && range.length)
  {
    v26 = _os_log_pack_size();
    v28 = v44 - ((MEMORY[0x1EEE9AC00](v26, v27) + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = _os_log_pack_fill();
    *v29 = 136315394;
    *(v29 + 4) = "[__NSFrozenArrayM getObjects:range:]";
    *(v29 + 12) = 2048;
    *(v29 + 14) = length;
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSFrozenArrayM getObjects:range:]", length);
    goto LABEL_40;
  }

  if (range.length >> 61)
  {
    v26 = _os_log_pack_size();
    v28 = v44 - ((MEMORY[0x1EEE9AC00](v26, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = _os_log_pack_fill();
    *v32 = 136315394;
    *(v32 + 4) = "[__NSFrozenArrayM getObjects:range:]";
    *(v32 + 12) = 2048;
    *(v32 + 14) = length;
    v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSFrozenArrayM getObjects:range:]", length);
LABEL_40:
    v33 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v30) osLogPack:0 size:v28, v26];
    objc_exception_throw(v33);
  }

  p_storage = &self->storage;
  used = self->storage.state.var0.used;
  if ((range.location & 0x8000000000000000) != 0 || range.location + range.length > used)
  {
    location = range.location;
    v35 = _os_log_pack_size();
    v37 = v44 - ((MEMORY[0x1EEE9AC00](v35, v36) + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = _os_log_pack_fill();
    if (used)
    {
      v41 = used - 1;
      v42 = __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(v38, "[__NSFrozenArrayM getObjects:range:]", location, length, v41);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds [0 .. %lu]", v42, "[__NSFrozenArrayM getObjects:range:]", location, length, v41);
    }

    else
    {
      v39 = __os_log_helper_1_2_3_8_32_8_0_8_0(v38, "[__NSFrozenArrayM getObjects:range:]", location, length);
      v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: range {%lu, %lu} extends beyond bounds for empty array", v39, "[__NSFrozenArrayM getObjects:range:]", location, length);
    }

    v43 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v40) osLogPack:0 size:v37, v35];
    objc_exception_throw(v43);
  }

  if (objects && range.length)
  {
    list = p_storage->list;
    size = self->storage.size;
    v10 = &p_storage->list[size];
    v11 = &self->storage.list[self->storage.var0] + range.location;
    v12 = -size;
    if (v10 <= v11)
    {
      v13 = -size;
    }

    else
    {
      v13 = 0;
    }

    v14 = &v11[v13];
    if (range.length > 2)
    {
      if (range.length == 3)
      {
LABEL_28:
        v20 = *v14;
        v19 = v14 + 1;
        *objectsCopy++ = v20;
        if (v10 <= v19)
        {
          v21 = v12;
        }

        else
        {
          v21 = 0;
        }

        v14 = &v19[v21];
        goto LABEL_32;
      }

      if (range.length == 4)
      {
LABEL_24:
        v17 = *v14;
        v16 = v14 + 1;
        *objectsCopy++ = v17;
        if (v10 <= v16)
        {
          v18 = v12;
        }

        else
        {
          v18 = 0;
        }

        v14 = &v16[v18];
        goto LABEL_28;
      }
    }

    else
    {
      if (range.length == 1)
      {
LABEL_36:
        *objectsCopy = *v14;
        goto LABEL_37;
      }

      if (range.length == 2)
      {
LABEL_32:
        v23 = *v14;
        v22 = v14 + 1;
        *objectsCopy++ = v23;
        if (v10 <= v22)
        {
          v24 = v12;
        }

        else
        {
          v24 = 0;
        }

        v14 = &v22[v24];
        goto LABEL_36;
      }
    }

    if ((v10 - v14) >> 3 >= range.length)
    {
      LODWORD(v15) = range.length;
    }

    else
    {
      v15 = (v10 - v14) >> 3;
    }

    if (v15)
    {
      memmove(objects, v14, 8 * v15);
    }

    if (length != v15)
    {
      memmove(&objectsCopy[v15], list, 8 * (length - v15));
    }

    goto LABEL_24;
  }

LABEL_37:
  v25 = *MEMORY[0x1E69E9840];
}

- (unint64_t)indexOfObjectIdenticalTo:(id)to
{
  list = self->storage.list;
  used = self->storage.state.var0.used;
  var0 = self->storage.var0;
  v6 = self->storage.size - var0;
  if (used >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = used;
  }

  if (v7)
  {
    result = 0;
    v9 = &list[var0];
    while (v9[result] != to)
    {
      if (v7 == ++result)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (used <= v6)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      while (*list != to)
      {
        LODWORD(v7) = v7 + 1;
        ++list;
        if (used == v7)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      return v7;
    }
  }

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  p_cow = &self->cow;
  if (!atomic_load(&self->cow))
  {
    v6 = _cow_create(self, 0);
    v7 = 0;
    atomic_compare_exchange_strong(p_cow, &v7, v6);
    if (v7)
    {
      free(v6);
    }
  }

  v8 = objc_opt_self();
  v9 = __CFAllocateObject(v8, 0);
  v10 = atomic_load(&self->cow);
  _cow_copy(self, 0, v10, __NSArray_cowCallbacks, v9, 1);
  return v9;
}

@end