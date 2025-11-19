@interface __NSDictionaryI
- (double)_clumpingFactor;
- (id)_cfMutableCopy;
- (id)keyEnumerator;
- (id)keyOfEntryWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)keysOfEntriesWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)objectForKey:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)__apply:(void *)a3 context:(void *)a4;
- (void)dealloc;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5;
@end

@implementation __NSDictionaryI

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (&__NSDictionary0__struct == self)
  {
    __break(1u);
  }

  v3 = self->_used[7];
  v4 = __NSDictionarySizes[v3 >> 2];
  self->_used[7] = v3 & 3;
  *self->_used &= 0xFE00000000000000;
  v5 = 2 * v4;
  if (2 * v4)
  {
    v6 = (self + 16);
    do
    {
      if (*v6 >= 1)
      {
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = __NSDictionaryI;
  [(__NSDictionaryI *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)keyEnumerator
{
  v2 = [objc_allocWithZone(__NSFastEnumerationEnumerator) initWithObject:self];

  return v2;
}

- (id)_cfMutableCopy
{
  result = _NSDictionaryI_mutableCopyWithZone(self, a2);
  *(result + 2) = *(result + 2) & 0xFFFFFFFF7FFFFFFFLL | (((self->_used[7] >> 1) & 1) << 31);
  return result;
}

- (id)objectForKey:(id)a3
{
  v3 = self->_used[7];
  if (v3 < 4)
  {
    return 0;
  }

  v7 = *(__NSDictionarySizes + ((2 * v3) & 0x1F8));
  v8 = self + 16;
  v9 = [a3 hash] % v7;
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = 2 * v9;
  v12 = *&v8[16 * v9];
  if (v12)
  {
    v13 = v12 == a3;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v14 = 1;
    v15 = 1;
    do
    {
      if ([v12 isEqual:a3])
      {
        break;
      }

      v15 = v14 < v7;
      if (v10 == v14)
      {
        break;
      }

      v16 = v9 + 1;
      v17 = v9 + 1 >= v7 ? v7 : 0;
      v9 = v16 - v17;
      v11 = 2 * (v16 - v17);
      v12 = *&v8[16 * (v16 - v17)];
      ++v14;
    }

    while (v12 && v12 != a3);
  }

  v19 = 2 * v7;
  if (v15)
  {
    v19 = v11;
  }

  if (v19 >= 2 * v7)
  {
    return 0;
  }

  else
  {
    return self->_list[v19];
  }
}

- (void)getObjects:(id *)a3 andKeys:(id *)a4 count:(unint64_t)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a5 >> 61;
  if (a3 && v5 || a4 && v5)
  {
    v14 = _os_log_pack_size();
    v15 = _os_log_pack_fill();
    *v15 = 136315394;
    *(v15 + 4) = "[__NSDictionaryI getObjects:andKeys:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = a5;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSDictionaryI getObjects:andKeys:count:]", a5);
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v14];
    objc_exception_throw(v17);
  }

  v6 = *self->_used & 0x1FFFFFFFFFFFFFFLL;
  if (v6 >= a5)
  {
    v6 = a5;
  }

  v7 = 2 * *(__NSDictionarySizes + ((2 * self->_used[7]) & 0x1F8));
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    list = self->_list;
    v10 = 2;
    do
    {
      v11 = *(list - 1);
      if (v11)
      {
        if (a4)
        {
          *a4++ = v11;
        }

        if (a3)
        {
          *a3++ = *list;
        }

        --v6;
      }

      if (v10 >= v7)
      {
        break;
      }

      v10 += 2;
      list += 2;
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)__apply:(void *)a3 context:(void *)a4
{
  if (!a3)
  {
    v10 = __CFExceptionProem(self, a2);
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: function pointer is NULL", v10);
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
    objc_exception_throw(v12);
  }

  v4 = 2 * *(__NSDictionarySizes + ((2 * self->_used[7]) & 0x1F8));
  if (v4)
  {
    v7 = 0;
    v8 = self + 16;
    do
    {
      v9 = *&v8[8 * v7];
      if (v9)
      {
        (a3)(v9, *&v8[8 * v7 + 8], a4);
      }

      v7 += 2;
    }

    while (v7 < v4);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!a4 && a5)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315394;
    *(v15 + 4) = "[__NSDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v15 + 12) = 2048;
    *(v15 + 14) = a5;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[__NSDictionaryI countByEnumeratingWithState:objects:count:]", a5);
    goto LABEL_18;
  }

  if (a5 >> 61)
  {
    v13 = _os_log_pack_size();
    v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[__NSDictionaryI countByEnumeratingWithState:objects:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = a5;
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[__NSDictionaryI countByEnumeratingWithState:objects:count:]", a5);
LABEL_18:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v13];
    objc_exception_throw(v19);
  }

  v6 = *(__NSDictionarySizes + ((2 * self->_used[7]) & 0x1F8));
  var0 = a3->var0;
  if (!a3->var0)
  {
    a3->var2 = &countByEnumeratingWithState_objects_count__const_mu_0;
  }

  if (v6 > var0 && (a3->var1 = a4, a5))
  {
    result = 0;
    v9 = self + 16;
    do
    {
      v10 = *&v9[16 * var0++];
      a3->var0 = var0;
      if (v10)
      {
        a4[result++] = v10;
        var0 = a3->var0;
      }
    }

    while (var0 < v6 && result < a5);
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v20[6] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v13 = _os_log_pack_size();
    v15 = &v19[-((MEMORY[0x1EEE9AC00](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[__NSDictionaryI enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[__NSDictionaryI enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v13];
    objc_exception_throw(v18);
  }

  v6 = self->_used[7];
  v7 = *(__NSDictionarySizes + ((2 * v6) & 0x1F8));
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __65____NSDictionaryI_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke;
  v20[3] = &unk_1E6D7D7E8;
  v20[4] = self;
  v20[5] = a4;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(a3, 0, v7, v20) & 1) == 0)
  {
    v19[7] = 0;
    if (v6 >= 4u)
    {
      v8 = 0;
      v9 = self + 16;
      do
      {
        if (*&v9[16 * v8])
        {
          v10 = _CFAutoreleasePoolPush();
          v11 = *&v9[16 * v8 + 8];
          __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(a4);
          _CFAutoreleasePoolPop(v10);
        }

        ++v8;
      }

      while (v8 < v7);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)keyOfEntryWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = self->_used[7];
  v7 = *(__NSDictionarySizes + ((2 * v6) & 0x1F8));
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53____NSDictionaryI_keyOfEntryWithOptions_passingTest___block_invoke;
  v17[3] = &unk_1E6D7D810;
  v17[4] = self;
  v17[5] = a4;
  v17[6] = &v18;
  if (__NSCollectionHandleConcurrentEnumerationIfSpecified(a3, 0, v7, v17))
  {
    v8 = atomic_load(v19 + 3);
  }

  else
  {
    v16 = 0;
    if (v6 >= 4u)
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

      list = self->_list;
      do
      {
        v11 = *(list - 1);
        if (v11)
        {
          v12 = *list;
          v13 = _CFAutoreleasePoolPush();
          if ((*(a4 + 2))(a4, v11, v12, &v16))
          {
            v16 = 1;
            v8 = v11;
          }

          _CFAutoreleasePoolPop(v13);
          if (v16)
          {
            break;
          }
        }

        list += 2;
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
  v27 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v17 = _os_log_pack_size();
    v19 = &v23 - ((MEMORY[0x1EEE9AC00](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = "[__NSDictionaryI keysOfEntriesWithOptions:passingTest:]";
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[__NSDictionaryI keysOfEntriesWithOptions:passingTest:]");
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v19, v17];
    objc_exception_throw(v22);
  }

  v5 = a3;
  v7 = self->_used[7];
  v8 = *(__NSDictionarySizes + ((2 * v7) & 0x1F8));
  v9 = +[(NSSet *)NSMutableSet];
  v26 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56____NSDictionaryI_keysOfEntriesWithOptions_passingTest___block_invoke;
  v25[3] = &unk_1E6D7D838;
  v25[6] = a4;
  v25[7] = &v26;
  v25[4] = self;
  v25[5] = v9;
  if ((__NSCollectionHandleConcurrentEnumerationIfSpecified(v5, 0, v8, v25) & 1) == 0)
  {
    v24 = 0;
    if (v7 >= 4u)
    {
      v10 = 0;
      v11 = self + 16;
      do
      {
        v12 = *&v11[16 * v10];
        if (v12)
        {
          v13 = *&v11[16 * v10 + 8];
          v14 = _CFAutoreleasePoolPush();
          if ((*(a4 + 2))(a4, v12, v13, &v24))
          {
            [(NSSet *)v9 addObject:v12];
          }

          _CFAutoreleasePoolPop(v14);
          if (v24)
          {
            break;
          }
        }

        ++v10;
      }

      while (v10 < v8);
    }

    v9 = [NSSet setWithSet:v9];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v3 = self->_used[7];
  if (v3 < 4)
  {
    return 0;
  }

  v7 = *(__NSDictionarySizes + ((2 * v3) & 0x1F8));
  v8 = self + 16;
  v9 = [a3 hash] % v7;
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = 2 * v9;
  v12 = *&v8[16 * v9];
  if (v12)
  {
    v13 = v12 == a3;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v14 = 1;
    v15 = 1;
    do
    {
      if ([v12 isEqual:a3])
      {
        break;
      }

      v15 = v14 < v7;
      if (v10 == v14)
      {
        break;
      }

      v16 = v9 + 1;
      v17 = v9 + 1 >= v7 ? v7 : 0;
      v9 = v16 - v17;
      v11 = 2 * (v16 - v17);
      v12 = *&v8[16 * (v16 - v17)];
      ++v14;
    }

    while (v12 && v12 != a3);
  }

  v19 = 2 * v7;
  if (v15)
  {
    v19 = v11;
  }

  if (v19 >= 2 * v7)
  {
    return 0;
  }

  else
  {
    return self->_list[v19];
  }
}

- (double)_clumpingFactor
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *self->_used;
  if ((v3 & 0x1FFFFFFFFFFFFFELL) != 0)
  {
    v4 = v3 & 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  v5 = MEMORY[0x1EEE9AC00](v4, a2);
  v8 = &v23 - v7;
  v23 = 0;
  if (v6 >= 0x101)
  {
    v8 = _CFCreateArrayStorage(v5, 0, &v23);
    v6 = *self->_used & 0x1FFFFFFFFFFFFFFLL;
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [(__NSDictionaryI *)self getObjects:0 andKeys:v8 count:v6, v23, v24];
  v10 = *self->_used & 0x1FFFFFFFFFFFFFFLL;
  v11 = 0.0;
  if (v10 >= 2)
  {
    v12 = *(__NSDictionarySizes + ((2 * self->_used[7]) & 0x1F8));
    v13 = malloc_type_malloc(8 * v10 + 8, 0x100004000313F17uLL);
    for (i = 0; i != v10; ++i)
    {
      v13[i] = [*&v8[i * 8] hash] % v12;
    }

    qsort(v13, v10, 8uLL, _compare_clumpiness);
    v13[v10] = *v13 + v12;
    v15 = v10;
    v16 = v12 / v10;
    v17 = v13 + 1;
    v18 = 0.0;
    do
    {
      v19 = *v17 - *(v17 - 1);
      if (v16 <= v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v16 - v19;
      }

      v18 = v18 + v20 * v20;
      ++v17;
      --v10;
    }

    while (v10);
    free(v13);
    v11 = v18 * v15 * v15 / (v12 * v12) / (v15 + -1.0);
  }

  free(v9);
  v21 = *MEMORY[0x1E69E9840];
  return v11;
}

@end