@interface __NSFrozenDictionaryM
- (id)keyEnumerator;
- (id)keyOfEntryWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)keysOfEntriesWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)mutableCopy;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__apply:(void *)a3 context:(void *)a4;
- (void)dealloc;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5;
@end

@implementation __NSFrozenDictionaryM

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->cow);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    if (!*(v3 + 4))
    {
      [__NSFrozenDictionaryM dealloc];
    }

    v4 = *(v3 + 6);
    v5 = *(v3 + 4) - 1;
    *(v3 + 4) = v5;
    v6 = (v4 | v5);
    os_unfair_lock_unlock(v3);
    if (!v6)
    {
      cow_cleanup(self, 0);
      free(v3);
    }
  }

  else
  {
    cow_cleanup(self, 0);
  }

  v8.receiver = self;
  v8.super_class = __NSFrozenDictionaryM;
  [(__NSFrozenDictionaryM *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)mutableCopy
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v2, __CFTSANTagMutableDictionary);
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
  _cow_copy(self, 0, v9, __NSDictionary_cowCallbacks, v8, 1);
  return v8;
}

- (id)keyEnumerator
{
  v2 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v2;
}

- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a5 >> 61;
  if (a3 && v5 || a4 && v5)
  {
    v17 = _os_log_pack_size();
    v19 = v23 - ((MEMORY[0x1EEE9AC00](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "[__NSFrozenDictionaryM getObjects:andKeys:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = a5;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSFrozenDictionaryM getObjects:andKeys:count:]", a5);
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v17];
    objc_exception_throw(v22);
  }

  mutations = self->storage.var0.var0.mutations;
  v7 = mutations >> 58;
  v8 = HIDWORD(mutations) & 0x1FFFFFF;
  if (v8 >= a5)
  {
    v8 = a5;
  }

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = LODWORD(__NSDictionarySizes_0[v7]);
    buffer = self->storage.buffer;
    v12 = 1;
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
        if (a4)
        {
          *a4++ = v13;
        }

        if (a3)
        {
          *a3++ = buffer[v10];
        }

        --v8;
      }

      if (v12 >= v10)
      {
        break;
      }

      ++buffer;
      ++v12;
    }

    while (v8);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)objectForKey:(id)a3
{
  mutations = self->storage.var0.var0.mutations;
  if (!(mutations >> 58))
  {
    return 0;
  }

  v6 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = self->storage.buffer;
  v8 = [a3 hash] % v6;
  if (v6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = v6;
  while (1)
  {
    v11 = buffer[v8];
    if (!v11)
    {
      break;
    }

    if (v11 == &___NSDictionaryM_DeletedMarker)
    {
      if (v10 == v6)
      {
        v10 = v8;
      }
    }

    else if (v11 == a3 || ([(state *)v11 isEqual:a3]& 1) != 0)
    {
      v10 = v8;
      goto LABEL_22;
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
      goto LABEL_22;
    }
  }

  if (v10 == v6)
  {
    v10 = v8;
  }

LABEL_22:
  if (v10 >= v6)
  {
    return 0;
  }

  else
  {
    return *(&buffer[v6] + v10);
  }
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
  v22[1] = *MEMORY[0x1E69E9840];
  if (!a4 && a5)
  {
    v13 = _os_log_pack_size();
    v15 = v22 - ((MEMORY[0x1EEE9AC00](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "[__NSFrozenDictionaryM countByEnumeratingWithState:objects:count:]";
    *(v16 + 12) = 2048;
    *(v16 + 14) = a5;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSFrozenDictionaryM countByEnumeratingWithState:objects:count:]", a5);
    goto LABEL_20;
  }

  if (a5 >> 61)
  {
    v13 = _os_log_pack_size();
    v15 = v22 - ((MEMORY[0x1EEE9AC00](v13, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "[__NSFrozenDictionaryM countByEnumeratingWithState:objects:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = a5;
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSFrozenDictionaryM countByEnumeratingWithState:objects:count:]", a5);
LABEL_20:
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v13];
    objc_exception_throw(v21);
  }

  var0 = a3->var0;
  v6 = *(__NSDictionarySizes_0 + ((self->storage.var0.var0.mutations >> 55) & 0x1F8));
  if (!a3->var0)
  {
    a3->var2 = &mdict_countByEnumeratingWithStateObjectsCount_const_mu;
  }

  if (var0 >= v6)
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
        v9 = buffer[var0];
        if (v9)
        {
          v10 = v9 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          a4[result++] = v9;
        }

        ++var0;
      }

      while (var0 < v6 && result < a5);
    }

    a3->var0 = var0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v21[7] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v14 = _os_log_pack_size();
    v16 = &v20[-((MEMORY[0x1EEE9AC00](v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[__NSFrozenDictionaryM enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSFrozenDictionaryM enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v14];
    objc_exception_throw(v19);
  }

  buffer = self->storage.buffer;
  mutations = self->storage.var0.var0.mutations;
  v7 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __mdict_enumerateKeysAndObjectsWithOptionsUsingBlock_block_invoke;
  v21[3] = &unk_1E6DD2980;
  v21[4] = a4;
  v21[5] = buffer;
  v21[6] = &buffer[v7];
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(a3, 0, v7, v21) & 1) == 0)
  {
    v20[15] = 0;
    if (mutations >> 58)
    {
      v8 = 0;
      do
      {
        v9 = buffer[v8];
        if (v9)
        {
          v10 = v9 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = _CFAutoreleasePoolPush();
          v12 = *(&buffer[v7] + v8);
          __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(a4);
          _CFAutoreleasePoolPop(v11);
        }

        ++v8;
      }

      while (v8 < v7);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)keyOfEntryWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  buffer = self->storage.buffer;
  mutations = self->storage.var0.var0.mutations;
  v7 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __mdict_keyOfEntryWithOptionsPassingTest_block_invoke;
  v17[3] = &unk_1E6DD29A8;
  v17[6] = buffer;
  v17[7] = &buffer[v7];
  v17[4] = a4;
  v17[5] = &v18;
  if (__NSCollectionHandleConcurrentEnumerationIfSpecified(a3, 0, v7, v17))
  {
    v8 = atomic_load(v19 + 3);
  }

  else
  {
    v16 = 0;
    if (mutations >> 58)
    {
      v8 = 0;
      if (v7 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7;
      }

      do
      {
        v10 = *buffer;
        if (*buffer)
        {
          v11 = v10 == &___NSDictionaryM_DeletedMarker;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = buffer[v7];
          v13 = _CFAutoreleasePoolPush();
          if ((*(a4 + 2))(a4, v10, v12, &v16))
          {
            v16 = 1;
            v8 = v10;
          }

          _CFAutoreleasePoolPop(v13);
          if (v16)
          {
            break;
          }
        }

        ++buffer;
        --v9;
      }

      while (v9);
    }

    else
    {
      v8 = 0;
    }
  }

  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)keysOfEntriesWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[__NSFrozenDictionaryM keysOfEntriesWithOptions:passingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[__NSFrozenDictionaryM keysOfEntriesWithOptions:passingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  v4 = *MEMORY[0x1E69E9840];
  p_storage = &self->storage;

  return mdict_keysOfEntriesWithOptionsPassingTest(p_storage, a3, a4);
}

- (id)objectForKeyedSubscript:(id)a3
{
  mutations = self->storage.var0.var0.mutations;
  if (!(mutations >> 58))
  {
    return 0;
  }

  v6 = *(__NSDictionarySizes_0 + ((mutations >> 55) & 0x1F8));
  buffer = self->storage.buffer;
  v8 = [a3 hash] % v6;
  if (v6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = v6;
  while (1)
  {
    v11 = buffer[v8];
    if (!v11)
    {
      break;
    }

    if (v11 == &___NSDictionaryM_DeletedMarker)
    {
      if (v10 == v6)
      {
        v10 = v8;
      }
    }

    else if (v11 == a3 || ([(state *)v11 isEqual:a3]& 1) != 0)
    {
      v10 = v8;
      goto LABEL_22;
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
      goto LABEL_22;
    }
  }

  if (v10 == v6)
  {
    v10 = v8;
  }

LABEL_22:
  if (v10 >= v6)
  {
    return 0;
  }

  else
  {
    return *(&buffer[v6] + v10);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  if (__cf_tsanReadFunction)
  {
    __cf_tsanReadFunction(self, v3, __CFTSANTagMutableDictionary);
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
  _cow_copy(self, 0, v10, __NSDictionary_cowCallbacks, v9, 1);
  return v9;
}

@end