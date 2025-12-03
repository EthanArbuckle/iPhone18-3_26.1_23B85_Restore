@interface NSMutableDictionary
+ (NSMutableDictionary)dictionaryWithCapacity:(NSUInteger)numItems;
+ (NSMutableDictionary)dictionaryWithSharedKeySet:(id)keyset;
- (NSMutableDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (void)__addObject:(id)object forKey:(id)key;
- (void)__setObject:(id)object forKey:(id)key;
- (void)addEntriesFromDictionary:(NSDictionary *)otherDictionary;
- (void)addObject:(id)object forKey:(id)key;
- (void)addObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (void)addObjects:(id)objects forKeys:(id)keys;
- (void)invert;
- (void)removeAllObjects;
- (void)removeEntriesInDictionary:(id)dictionary;
- (void)removeEntriesPassingTest:(id)test;
- (void)removeEntriesWithOptions:(unint64_t)options passingTest:(id)test;
- (void)removeKeysForObject:(id)object;
- (void)removeObjectForKey:(id)aKey;
- (void)removeObjectsForKeys:(NSArray *)keyArray;
- (void)replaceObject:(id)object forKey:(id)key;
- (void)replaceObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (void)replaceObjects:(id)objects forKeys:(id)keys;
- (void)setDictionary:(NSDictionary *)otherDictionary;
- (void)setEntriesFromDictionary:(id)dictionary;
- (void)setObject:(id)anObject forKey:(id)aKey;
- (void)setObject:(id)obj forKeyedSubscript:(id)key;
- (void)setObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (void)setObjects:(id)objects forKeys:(id)keys;
@end

@implementation NSMutableDictionary

- (void)addEntriesFromDictionary:(NSDictionary *)otherDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!otherDictionary)
    {
      goto LABEL_4;
    }
  }

  else if (!otherDictionary)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSDictionary(otherDictionary) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary addEntriesFromDictionary:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSMutableDictionary addEntriesFromDictionary:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  if (self != otherDictionary)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(NSDictionary *)otherDictionary countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(otherDictionary);
          }

          [(NSMutableDictionary *)self setObject:[(NSDictionary *)otherDictionary objectForKey:*(*(&v16 + 1) + 8 * i)] forKey:*(*(&v16 + 1) + 8 * i)];
        }

        v7 = [(NSDictionary *)otherDictionary countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addObject:(id)object forKey:(id)key
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = _os_log_pack_size();
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary addObject:forKey:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableDictionary addObject:forKey:]");
    goto LABEL_12;
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!object)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!key)
  {
    v10 = _os_log_pack_size();
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableDictionary addObject:forKey:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSMutableDictionary addObject:forKey:]");
LABEL_12:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v15);
  }

  if ([(NSDictionary *)self objectForKey:key])
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    [(NSMutableDictionary *)self setObject:object forKey:key];
  }
}

- (void)addObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v22[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableDictionary);
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
    goto LABEL_22;
  }

LABEL_4:
  if (count >> 61)
  {
    v16 = _os_log_pack_size();
    v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315394;
    *(v18 + 4) = "[NSMutableDictionary addObjects:forKeys:count:]";
    *(v18 + 12) = 2048;
    *(v18 + 14) = count;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableDictionary addObjects:forKeys:count:]", count);
    goto LABEL_23;
  }

  if (!count)
  {
    goto LABEL_16;
  }

  v10 = 0;
  do
  {
    if (!objects[v10])
    {
LABEL_19:
      v12 = _os_log_pack_size();
      v13 = _os_log_pack_fill();
      *v13 = 136315394;
      *(v13 + 4) = "[NSMutableDictionary addObjects:forKeys:count:]";
      *(v13 + 12) = 2048;
      *(v13 + 14) = v10;
      v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableDictionary addObjects:forKeys:count:]", v10);
      v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12];
      objc_exception_throw(v15);
    }

    ++v10;
  }

  while (count != v10);
  if (!keys)
  {
LABEL_22:
    v16 = _os_log_pack_size();
    v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "[NSMutableDictionary addObjects:forKeys:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v19 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableDictionary addObjects:forKeys:count:]", count);
LABEL_23:
    v21 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v19) osLogPack:0 size:v17, v16];
    objc_exception_throw(v21);
  }

  v10 = 0;
  do
  {
    if (!keys[v10])
    {
      goto LABEL_19;
    }

    ++v10;
  }

  while (count != v10);
  do
  {
    if (![(NSDictionary *)self objectForKey:*keys])
    {
      [(NSMutableDictionary *)self setObject:*objects forKey:*keys];
    }

    ++objects;
    ++keys;
    --count;
  }

  while (count);
LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
}

- (void)addObjects:(id)objects forKeys:(id)keys
{
  v20[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableDictionary addObjects:forKeys:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: objects argument is not an NSArray", "[NSMutableDictionary addObjects:forKeys:]");
    goto LABEL_16;
  }

LABEL_4:
  if (keys && (_NSIsNSArray(keys) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableDictionary addObjects:forKeys:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: keys argument is not an NSArray", "[NSMutableDictionary addObjects:forKeys:]");
LABEL_16:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v19);
  }

  v8 = [objects count];
  v9 = [keys count];
  if (v8 != v9)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of objects (%lu) differs from count of keys (%lu)", "[NSMutableDictionary addObjects:forKeys:]", v8, v9);
  }

  v10 = [objects count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      -[NSMutableDictionary addObject:forKey:](self, "addObject:forKey:", [objects objectAtIndex:i], objc_msgSend(keys, "objectAtIndex:", i));
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invert
{
  v17 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  allKeys = [(NSDictionary *)self allKeys];
  allValues = [(NSDictionary *)self allValues];
  [(NSMutableDictionary *)self removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSArray *)allKeys countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        [(NSMutableDictionary *)self setObject:*(*(&v13 + 1) + 8 * v10++) forKey:[(NSArray *)allValues objectAtIndex:v8++]];
      }

      while (v7 != v10);
      v7 = [(NSArray *)allKeys countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllObjects
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v2, __CFTSANTagMutableDictionary);
  }

  v4 = [(NSDictionary *)self count];
  v6 = v4;
  if (v4 >> 60)
  {
    v14 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v4);
    v15 = [NSException exceptionWithName:@"NSGenericException" reason:v14 userInfo:0];
    CFRelease(v14);
    objc_exception_throw(v15);
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  v7 = MEMORY[0x1EEE9AC00](v4, v5);
  v9 = v16 - v8;
  v16[0] = 0;
  if (v6 >= 0x101)
  {
    v9 = _CFCreateArrayStorage(v7, 0, v16);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  [(NSDictionary *)self getObjects:0 andKeys:v9 count:v6, v16[0]];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v12 = [(NSDictionary *)self countForKey:*&v9[8 * i]]+ 1;
      while (--v12)
      {
        [(NSMutableDictionary *)self removeObjectForKey:*&v9[8 * i]];
      }
    }
  }

  free(v10);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)removeEntriesInDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!dictionary)
    {
      goto LABEL_4;
    }
  }

  else if (!dictionary)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSDictionary(dictionary) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "[NSMutableDictionary removeEntriesInDictionary:]";
    v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSMutableDictionary removeEntriesInDictionary:]");
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v12];
    objc_exception_throw(v15);
  }

LABEL_4:
  if (self == dictionary)
  {
    v11 = *MEMORY[0x1E69E9840];

    [(NSMutableDictionary *)self removeAllObjects];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [dictionary countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(dictionary);
          }

          [(NSMutableDictionary *)self removeObjectForKey:*(*(&v17 + 1) + 8 * i)];
        }

        v7 = [dictionary countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v7);
    }

    v10 = *MEMORY[0x1E69E9840];
  }
}

- (void)removeEntriesWithOptions:(unint64_t)options passingTest:(id)test
{
  optionsCopy = options;
  v31 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (test)
    {
      goto LABEL_3;
    }

LABEL_12:
    v15 = _os_log_pack_size();
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableDictionary removeEntriesWithOptions:passingTest:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableDictionary removeEntriesWithOptions:passingTest:]");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
    objc_exception_throw(v18);
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!test)
  {
    goto LABEL_12;
  }

LABEL_3:
  __NSDictionaryParameterCheckIterate(self, a2, test);
  v9 = +[(NSSet *)NSMutableSet];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v30 = 0;
  v26 = 850045857;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__NSMutableDictionary_removeEntriesWithOptions_passingTest___block_invoke;
  v20[3] = &unk_1E6D82458;
  v20[5] = test;
  v20[6] = &v26;
  v20[4] = v9;
  __NSDictionaryEnumerate(self, optionsCopy & 0xFD, v20);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(NSMutableDictionary *)self removeObjectForKey:*(*(&v22 + 1) + 8 * i)];
      }

      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __60__NSMutableDictionary_removeEntriesWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    pthread_mutex_lock(*(a1 + 48));
    [*(a1 + 32) addObject:a2];
    v5 = *(a1 + 48);

    return pthread_mutex_unlock(v5);
  }

  return result;
}

- (void)removeEntriesPassingTest:(id)test
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!__cf_tsanWriteFunction)
  {
    if (test)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = _os_log_pack_size();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = "[NSMutableDictionary removeEntriesPassingTest:]";
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: predicate cannot be nil", "[NSMutableDictionary removeEntriesPassingTest:]");
    v10 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v9) osLogPack:0 size:v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7];
    objc_exception_throw(v10);
  }

  __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  if (!test)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = *MEMORY[0x1E69E9840];

  [(NSMutableDictionary *)self removeEntriesWithOptions:0 passingTest:test];
}

- (void)removeKeysForObject:(id)object
{
  v27 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
  }

  v6 = +[(NSArray *)NSMutableArray];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [(NSDictionary *)self countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(self);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        if ([(NSDictionary *)self objectForKey:v11]== object)
        {
          [(NSArray *)v6 addObject:v11];
        }
      }

      v8 = [(NSDictionary *)self countByEnumeratingWithState:&v23 objects:v22 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMutableDictionary *)self removeObjectForKey:*(*(&v18 + 1) + 8 * j)];
      }

      v13 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectsForKeys:(NSArray *)keyArray
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!keyArray)
    {
      goto LABEL_4;
    }
  }

  else if (!keyArray)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(keyArray) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary removeObjectsForKeys:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: array argument is not an NSArray", "[NSMutableDictionary removeObjectsForKeys:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSArray *)keyArray countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(keyArray);
        }

        [(NSMutableDictionary *)self removeObjectForKey:*(*(&v16 + 1) + 8 * i)];
      }

      v7 = [(NSArray *)keyArray countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)replaceObject:(id)object forKey:(id)key
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = _os_log_pack_size();
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary replaceObject:forKey:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableDictionary replaceObject:forKey:]");
    goto LABEL_12;
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!object)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!key)
  {
    v10 = _os_log_pack_size();
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableDictionary replaceObject:forKey:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSMutableDictionary replaceObject:forKey:]");
LABEL_12:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v15);
  }

  if ([(NSDictionary *)self objectForKey:key])
  {
    v8 = *MEMORY[0x1E69E9840];

    [(NSMutableDictionary *)self setObject:object forKey:key];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)replaceObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableDictionary);
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
    goto LABEL_20;
  }

LABEL_4:
  if (count >> 61)
  {
    v19 = _os_log_pack_size();
    v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315394;
    *(v21 + 4) = "[NSMutableDictionary replaceObjects:forKeys:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableDictionary replaceObjects:forKeys:count:]", count);
    goto LABEL_21;
  }

  if (!count)
  {
    goto LABEL_14;
  }

  v10 = 0;
  do
  {
    if (!objects[v10])
    {
LABEL_17:
      v15 = _os_log_pack_size();
      v16 = _os_log_pack_fill();
      *v16 = 136315394;
      *(v16 + 4) = "[NSMutableDictionary replaceObjects:forKeys:count:]";
      *(v16 + 12) = 2048;
      *(v16 + 14) = v10;
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableDictionary replaceObjects:forKeys:count:]", v10);
      v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
      objc_exception_throw(v18);
    }

    ++v10;
  }

  while (count != v10);
  if (!keys)
  {
LABEL_20:
    v19 = _os_log_pack_size();
    v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315394;
    *(v23 + 4) = "[NSMutableDictionary replaceObjects:forKeys:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableDictionary replaceObjects:forKeys:count:]", count);
LABEL_21:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v19];
    objc_exception_throw(v24);
  }

  v10 = 0;
  do
  {
    if (!keys[v10])
    {
      goto LABEL_17;
    }

    ++v10;
  }

  while (count != v10);
  do
  {
    v12 = *objects++;
    v11 = v12;
    v13 = *keys++;
    [(NSMutableDictionary *)self replaceObject:v11 forKey:v13];
    --count;
  }

  while (count);
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)replaceObjects:(id)objects forKeys:(id)keys
{
  v20[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableDictionary replaceObjects:forKeys:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: objects argument is not an NSArray", "[NSMutableDictionary replaceObjects:forKeys:]");
    goto LABEL_16;
  }

LABEL_4:
  if (keys && (_NSIsNSArray(keys) & 1) == 0)
  {
    v14 = _os_log_pack_size();
    v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = _os_log_pack_fill();
    *v18 = 136315138;
    *(v18 + 4) = "[NSMutableDictionary replaceObjects:forKeys:]";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: keys argument is not an NSArray", "[NSMutableDictionary replaceObjects:forKeys:]");
LABEL_16:
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v14];
    objc_exception_throw(v19);
  }

  v8 = [objects count];
  v9 = [keys count];
  if (v8 != v9)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of objects (%lu) differs from count of keys (%lu)", "[NSMutableDictionary replaceObjects:forKeys:]", v8, v9);
  }

  v10 = [objects count];
  if (v10)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      -[NSMutableDictionary replaceObject:forKey:](self, "replaceObject:forKey:", [objects objectAtIndex:i], objc_msgSend(keys, "objectAtIndex:", i));
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setEntriesFromDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!dictionary)
    {
      goto LABEL_4;
    }
  }

  else if (!dictionary)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSDictionary(dictionary) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary setEntriesFromDictionary:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSMutableDictionary setEntriesFromDictionary:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  if (self != dictionary)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [dictionary countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(dictionary);
          }

          -[NSMutableDictionary setObject:forKey:](self, "setObject:forKey:", [dictionary objectForKey:*(*(&v16 + 1) + 8 * i)], *(*(&v16 + 1) + 8 * i));
        }

        v7 = [dictionary countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setObject:(id)obj forKeyedSubscript:(id)key
{
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  }

  if (obj)
  {

    [(NSMutableDictionary *)self setObject:obj forKey:key];
  }

  else
  {

    [(NSMutableDictionary *)self removeObjectForKey:key];
  }
}

- (void)setObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v25[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v5, __CFTSANTagMutableDictionary);
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
    goto LABEL_20;
  }

LABEL_4:
  if (count >> 61)
  {
    v19 = _os_log_pack_size();
    v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill();
    *v21 = 136315394;
    *(v21 + 4) = "[NSMutableDictionary setObjects:forKeys:count:]";
    *(v21 + 12) = 2048;
    *(v21 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableDictionary setObjects:forKeys:count:]", count);
    goto LABEL_21;
  }

  if (!count)
  {
    goto LABEL_14;
  }

  v10 = 0;
  do
  {
    if (!objects[v10])
    {
LABEL_17:
      v15 = _os_log_pack_size();
      v16 = _os_log_pack_fill();
      *v16 = 136315394;
      *(v16 + 4) = "[NSMutableDictionary setObjects:forKeys:count:]";
      *(v16 + 12) = 2048;
      *(v16 + 14) = v10;
      v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableDictionary setObjects:forKeys:count:]", v10);
      v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v15];
      objc_exception_throw(v18);
    }

    ++v10;
  }

  while (count != v10);
  if (!keys)
  {
LABEL_20:
    v19 = _os_log_pack_size();
    v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315394;
    *(v23 + 4) = "[NSMutableDictionary setObjects:forKeys:count:]";
    *(v23 + 12) = 2048;
    *(v23 + 14) = count;
    v22 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableDictionary setObjects:forKeys:count:]", count);
LABEL_21:
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v22) osLogPack:0 size:v20, v19];
    objc_exception_throw(v24);
  }

  v10 = 0;
  do
  {
    if (!keys[v10])
    {
      goto LABEL_17;
    }

    ++v10;
  }

  while (count != v10);
  do
  {
    v12 = *objects++;
    v11 = v12;
    v13 = *keys++;
    [(NSMutableDictionary *)self setObject:v11 forKey:v13];
    --count;
  }

  while (count);
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)setObjects:(id)objects forKeys:(id)keys
{
  v18[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
    if (!objects)
    {
      goto LABEL_4;
    }
  }

  else if (!objects)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSArray(objects) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableDictionary setObjects:forKeys:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: objects argument is not an NSArray", "[NSMutableDictionary setObjects:forKeys:]");
    goto LABEL_16;
  }

LABEL_4:
  if (keys && (_NSIsNSArray(keys) & 1) == 0)
  {
    v12 = _os_log_pack_size();
    v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "[NSMutableDictionary setObjects:forKeys:]";
    v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: keys argument is not an NSArray", "[NSMutableDictionary setObjects:forKeys:]");
LABEL_16:
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v15) osLogPack:0 size:v13, v12];
    objc_exception_throw(v17);
  }

  v8 = [objects count];
  v9 = [keys count];
  if (v8 != v9)
  {
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"*** %s: count of objects (%lu) differs from count of keys (%lu)", "[NSMutableDictionary setObjects:forKeys:]", v8, v9);
  }

  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      -[NSMutableDictionary setObject:forKey:](self, "setObject:forKey:", [objects objectAtIndex:i], objc_msgSend(keys, "objectAtIndex:", i));
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setDictionary:(NSDictionary *)otherDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (__cf_tsanWriteFunction)
  {
    __cf_tsanWriteFunction(self, v3, __CFTSANTagMutableDictionary);
    if (!otherDictionary)
    {
      goto LABEL_4;
    }
  }

  else if (!otherDictionary)
  {
    goto LABEL_4;
  }

  if ((_NSIsNSDictionary(otherDictionary) & 1) == 0)
  {
    v11 = _os_log_pack_size();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary setDictionary:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: dictionary argument is not an NSDictionary", "[NSMutableDictionary setDictionary:]");
    v14 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:&v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v11];
    objc_exception_throw(v14);
  }

LABEL_4:
  if (self != otherDictionary)
  {
    [(NSMutableDictionary *)self removeAllObjects];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(NSDictionary *)otherDictionary countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(otherDictionary);
          }

          [(NSMutableDictionary *)self setObject:[(NSDictionary *)otherDictionary objectForKey:*(*(&v16 + 1) + 8 * i)] forKey:*(*(&v16 + 1) + 8 * i)];
        }

        v7 = [(NSDictionary *)otherDictionary countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__addObject:(id)object forKey:(id)key
{
  v16[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = _os_log_pack_size();
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "[NSMutableDictionary __addObject:forKey:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableDictionary __addObject:forKey:]");
    goto LABEL_12;
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!object)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!key)
  {
    v10 = _os_log_pack_size();
    v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = "[NSMutableDictionary __addObject:forKey:]";
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSMutableDictionary __addObject:forKey:]");
LABEL_12:
    v15 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v13) osLogPack:0 size:v11, v10];
    objc_exception_throw(v15);
  }

  if ([(NSDictionary *)self objectForKey:key])
  {
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    [(NSMutableDictionary *)self __setObject:object forKey:key];
  }
}

- (void)__setObject:(id)object forKey:(id)key
{
  v21[1] = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self _mutate];
  if (!__cf_tsanWriteFunction)
  {
    if (object)
    {
      goto LABEL_3;
    }

LABEL_10:
    v15 = _os_log_pack_size();
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSMutableDictionary __setObject:forKey:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "[NSMutableDictionary __setObject:forKey:]");
    goto LABEL_12;
  }

  __cf_tsanWriteFunction(self, v4, __CFTSANTagMutableDictionary);
  if (!object)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (!key)
  {
    v15 = _os_log_pack_size();
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = _os_log_pack_fill();
    *v19 = 136315138;
    *(v19 + 4) = "[NSMutableDictionary __setObject:forKey:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSMutableDictionary __setObject:forKey:]");
LABEL_12:
    v20 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v15];
    objc_exception_throw(v20);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    CFLog(3, @"*** CFDictionarySetValue(): attempt to use this function to set a key which is not copyable into a non-CFDictionary via toll-free bridging", v8, v9, v10, v11, v12, v13, v21[0]);
  }

  v14 = *MEMORY[0x1E69E9840];

  [(NSMutableDictionary *)self setObject:object forKey:key];
}

- (NSMutableDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  countCopy = count;
  keysCopy = keys;
  objectsCopy = objects;
  v26[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    goto LABEL_21;
  }

  if (count >> 61)
  {
    v20 = _os_log_pack_size();
    v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = "[NSMutableDictionary initWithObjects:forKeys:count:]";
    *(v22 + 12) = 2048;
    *(v22 + 14) = countCopy;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSMutableDictionary initWithObjects:forKeys:count:]", countCopy);
    goto LABEL_22;
  }

  if (!count)
  {
    v15 = *MEMORY[0x1E69E9840];

    return [(NSMutableDictionary *)self initWithCapacity:0];
  }

  for (i = 0; i != count; ++i)
  {
    if (!objects[i])
    {
LABEL_18:
      v16 = _os_log_pack_size();
      v17 = _os_log_pack_fill();
      *v17 = 136315394;
      *(v17 + 4) = "[NSMutableDictionary initWithObjects:forKeys:count:]";
      *(v17 + 12) = 2048;
      *(v17 + 14) = i;
      v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: attempt to insert nil object from objects[%lu]", "[NSMutableDictionary initWithObjects:forKeys:count:]", i);
      v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16];
      objc_exception_throw(v19);
    }
  }

  if (!keys)
  {
LABEL_21:
    v20 = _os_log_pack_size();
    v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = _os_log_pack_fill();
    *v24 = 136315394;
    *(v24 + 4) = "[NSMutableDictionary initWithObjects:forKeys:count:]";
    *(v24 + 12) = 2048;
    *(v24 + 14) = countCopy;
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSMutableDictionary initWithObjects:forKeys:count:]", countCopy);
LABEL_22:
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v20];
    objc_exception_throw(v25);
  }

  for (i = 0; i != count; ++i)
  {
    if (!keys[i])
    {
      goto LABEL_18;
    }
  }

  v9 = [(NSMutableDictionary *)self initWithCapacity:count];
  do
  {
    v11 = *objectsCopy++;
    v10 = v11;
    v12 = *keysCopy++;
    [(NSMutableDictionary *)v9 setObject:v10 forKey:v12];
    --countCopy;
  }

  while (countCopy);
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (NSMutableDictionary)dictionaryWithCapacity:(NSUInteger)numItems
{
  v3 = [[self alloc] initWithCapacity:numItems];

  return v3;
}

+ (NSMutableDictionary)dictionaryWithSharedKeySet:(id)keyset
{
  if (!keyset)
  {
    v10 = __CFExceptionProem(self, a2);
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keyset cannot be nil", v10);
    goto LABEL_12;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = __CFExceptionProem(self, a2);
    v11 = objc_opt_class();
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keyset must be an object created by +sharedKeySetForKeys: instead of '%@'", v8, v11);
LABEL_12:
    v9 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v7), 0];
    objc_exception_throw(v9);
  }

  if ([keyset isEmpty])
  {

    return [NSMutableDictionary dictionaryWithCapacity:0];
  }

  else
  {

    return [NSSharedKeyDictionary sharedKeyDictionaryWithKeySet:keyset];
  }
}

- (void)removeObjectForKey:(id)aKey
{
  v5 = __CFLookUpClass("NSMutableDictionary");

  __CFRequireConcreteImplementation(v5, self, a2);
}

- (void)setObject:(id)anObject forKey:(id)aKey
{
  v6 = __CFLookUpClass("NSMutableDictionary");

  __CFRequireConcreteImplementation(v6, self, a2);
}

@end