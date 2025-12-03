@interface NSSharedKeyDictionary
+ (id)sharedKeyDictionaryWithKeySet:(id)set;
- (NSSharedKeyDictionary)initWithCoder:(id)coder;
- (NSSharedKeyDictionary)initWithKeySet:(id)set;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count;
- (void)removeObjectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObservationInfo:(void *)info;
@end

@implementation NSSharedKeyDictionary

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  values = self->_values;
  if (values)
  {
    v4 = [(NSSharedKeySet *)self->_keyMap count];
    if (v4)
    {
      v5 = v4;
      do
      {
        if ((*values & 0x8000000000000000) == 0)
        {
        }

        ++values;
        --v5;
      }

      while (v5);
    }

    free(self->_values);
  }

  keyMap = self->_keyMap;
  if (keyMap >= 1)
  {
  }

  sideDic = self->_sideDic;
  if (sideDic >= 1)
  {
  }

  v9.receiver = self;
  v9.super_class = NSSharedKeyDictionary;
  [(NSSharedKeyDictionary *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)count
{
  count = self->_count;
  sideDic = self->_sideDic;
  if (sideDic)
  {
    sideDic = [(NSDictionary *)sideDic count];
  }

  return sideDic + count;
}

- (id)objectForKey:(id)key
{
  if (key)
  {
    keyMap = self->_keyMap;
    if (keyMap)
    {
      v6 = (self->_ifkIMP)(keyMap, sel_indexForKey_, key);
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        return self->_values[v6];
      }
    }
  }

  sideDic = self->_sideDic;

  return [(NSDictionary *)sideDic objectForKey:key];
}

- (void)getObjects:(id *)objects andKeys:(id *)keys count:(unint64_t)count
{
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = count >> 61;
  if (objects && v9 || keys && v9)
  {
    v19 = _os_log_pack_size();
    v20 = _os_log_pack_fill();
    *v20 = 136315394;
    *(v20 + 4) = "[NSSharedKeyDictionary getObjects:andKeys:count:]";
    *(v20 + 12) = 2048;
    *(v20 + 14) = count;
    v21 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSharedKeyDictionary getObjects:andKeys:count:]", count);
    v22 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v21) osLogPack:0 size:v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v19];
    objc_exception_throw(v22);
  }

  sideDic = self->_sideDic;
  if (sideDic)
  {
    v11 = [(NSDictionary *)sideDic count];
    sideDic = self->_sideDic;
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = v11;
  }

  [(NSDictionary *)sideDic getObjects:objects andKeys:keys count:countCopy];
  v13 = count - countCopy;
  if (count != countCopy)
  {
    v14 = [(NSSharedKeySet *)self->_keyMap count];
    if (v14)
    {
      if (keys)
      {
        v15 = &keys[countCopy];
      }

      else
      {
        v15 = 0;
      }

      if (objects)
      {
        v16 = &objects[countCopy];
      }

      else
      {
        v16 = 0;
      }

      v17 = v14 - 1;
      do
      {
        if (self->_values[v17])
        {
          if (v15)
          {
            *v15++ = [(NSSharedKeySet *)self->_keyMap keyAtIndex:v17];
          }

          if (v16)
          {
            *v16++ = self->_values[v17];
          }

          if (!--v13)
          {
            break;
          }
        }

        --v17;
      }

      while (v17 != -1);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)keyEnumerator
{
  v18[1] = *MEMORY[0x1E69E9840];
  count = self->_count;
  sideDic = self->_sideDic;
  if (sideDic)
  {
    sideDic = [(NSDictionary *)sideDic count];
  }

  v5 = sideDic + count;
  if (v5 >> 60)
  {
    v16 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
    v17 = [NSException exceptionWithName:@"NSGenericException" reason:v16 userInfo:0];
    CFRelease(v16);
    objc_exception_throw(v17);
  }

  v18[0] = 0;
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = _CFCreateArrayStorage(v6, 0, v18);
  [(NSSharedKeyDictionary *)self getObjects:0 andKeys:v7 count:v5];
  if (v7)
  {
    if (v5)
    {
      v8 = v7;
      v9 = v5;
      do
      {
        v10 = *v8++;
        --v9;
      }

      while (v9);
    }

    v11 = [[NSArray alloc] _initByAdoptingBuffer:v7 count:v5 size:v5];
  }

  else
  {
    v11 = [[NSArray alloc] initWithObjects:0 count:v5];
  }

  v12 = v11;
  objectEnumerator = [(NSArray *)v11 objectEnumerator];

  v14 = *MEMORY[0x1E69E9840];
  return objectEnumerator;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  countCopy = count;
  v38[1] = *MEMORY[0x1E69E9840];
  if (!objects && count)
  {
    v24 = _os_log_pack_size();
    v26 = v38 - ((MEMORY[0x1EEE9AC00](v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = _os_log_pack_fill();
    *v27 = 136315394;
    *(v27 + 4) = "[NSSharedKeyDictionary countByEnumeratingWithState:objects:count:]";
    *(v27 + 12) = 2048;
    *(v27 + 14) = countCopy;
    v28 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: pointer to objects array is NULL but length is %lu", "[NSSharedKeyDictionary countByEnumeratingWithState:objects:count:]", countCopy);
    v29 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v28) osLogPack:0 size:v26, v24];
    objc_exception_throw(v29);
  }

  if (count >> 61)
  {
    v30 = _os_log_pack_size();
    v32 = v38 - ((MEMORY[0x1EEE9AC00](v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = _os_log_pack_fill();
    *v33 = 136315394;
    *(v33 + 4) = "[NSSharedKeyDictionary countByEnumeratingWithState:objects:count:]";
    *(v33 + 12) = 2048;
    *(v33 + 14) = countCopy;
    v34 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: count (%lu) of objects array is ridiculous", "[NSSharedKeyDictionary countByEnumeratingWithState:objects:count:]", countCopy);
    v35 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v34) osLogPack:0 size:v32, v30];
    objc_exception_throw(v35);
  }

  var0 = state->var0;
  if (!state->var0)
  {
    state->var2 = &self->_mutations;
    count = self->_count;
    sideDic = self->_sideDic;
    if (sideDic)
    {
      sideDic = [(NSDictionary *)sideDic count];
      v12 = state->var0;
    }

    else
    {
      v12 = 0;
    }

    v13 = sideDic + count;
    state->var3[0] = v13;
    if (v13 <= v12)
    {
      countCopy = 0;
      v18 = -1;
LABEL_22:
      state->var0 = v18;
      goto LABEL_23;
    }

    if (v13 >> 60)
    {
      v36 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v13);
      v37 = [NSException exceptionWithName:@"NSGenericException" reason:v36 userInfo:0];
      CFRelease(v36);
      objc_exception_throw(v37);
    }

    v38[0] = 0;
    v14 = _CFCreateArrayStorage(v13, 0, v38);
    [(NSSharedKeyDictionary *)self getObjects:0 andKeys:v14 count:v13];
    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = v14[v15++];
      }

      while (v13 != v15);
      v17 = [[NSArray alloc] _initByAdoptingBuffer:v14 count:v13 size:v13];
    }

    else
    {
      v17 = [[NSArray alloc] initWithObjects:0 count:v13];
    }

    state->var3[1] = v17;
    var0 = state->var0;
  }

  v19 = state->var3[0];
  v20 = v19 > var0;
  v21 = v19 - var0;
  if (v20)
  {
    if (v21 < countCopy)
    {
      countCopy = v21;
    }

    [state->var3[1] getObjects:objects range:?];
    state->var1 = objects;
    v18 = state->var0 + countCopy;
    goto LABEL_22;
  }

  countCopy = 0;
LABEL_23:
  v22 = *MEMORY[0x1E69E9840];
  return countCopy;
}

- (void)enumerateKeysAndObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  v24 = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v12 = _os_log_pack_size();
    v14 = &v18[-((MEMORY[0x1EEE9AC00](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSSharedKeyDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: block cannot be nil", "[NSSharedKeyDictionary enumerateKeysAndObjectsWithOptions:usingBlock:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v12];
    objc_exception_throw(v17);
  }

  v7 = [(NSSharedKeySet *)self->_keyMap count];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __71__NSSharedKeyDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke;
  v19[3] = &unk_1E6D7D810;
  v19[4] = self;
  v19[5] = block;
  v19[6] = &v20;
  if (!__NSCollectionHandleConcurrentEnumerationIfSpecified(options, 0, v7, v19))
  {
    v18[15] = 0;
    if (v7)
    {
      for (i = 0; i < v7; ++i)
      {
        while (!self->_values[i])
        {
          if (++i >= v7)
          {
            goto LABEL_11;
          }
        }

        v10 = _CFAutoreleasePoolPush();
        [(NSSharedKeySet *)self->_keyMap keyAtIndex:i];
        __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(block);
        _CFAutoreleasePoolPop(v10);
      }
    }

    goto LABEL_11;
  }

  v8 = atomic_load(v21 + 24);
  if ((v8 & 1) == 0)
  {
LABEL_11:
    [(NSDictionary *)self->_sideDic enumerateKeysAndObjectsWithOptions:options usingBlock:block];
  }

  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x1E69E9840];
}

void *__71__NSSharedKeyDictionary_enumerateKeysAndObjectsWithOptions_usingBlock___block_invoke(void *result, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(*(result[4] + 24) + 8 * a2))
  {
    v3 = result;
    v4 = _CFAutoreleasePoolPush();
    v5 = v3[5];
    [*(v3[4] + 8) keyAtIndex:a2];
    __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(v5);
    result = _CFAutoreleasePoolPop(v4);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setObject:(id)object forKey:(id)key
{
  v26[1] = *MEMORY[0x1E69E9840];
  ++self->_mutations;
  if (!key)
  {
    v14 = _os_log_pack_size();
    v16 = v26 - ((MEMORY[0x1EEE9AC00](v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = _os_log_pack_fill();
    *v17 = 136315138;
    *(v17 + 4) = "[NSSharedKeyDictionary setObject:forKey:]";
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSSharedKeyDictionary setObject:forKey:]");
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18) osLogPack:0 size:v16, v14];
    objc_exception_throw(v19);
  }

  if (!object)
  {
    v20 = _os_log_pack_size();
    v22 = v26 - ((MEMORY[0x1EEE9AC00](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = _os_log_pack_fill();
    *v23 = 136315394;
    *(v23 + 4) = "[NSSharedKeyDictionary setObject:forKey:]";
    *(v23 + 12) = 2112;
    *(v23 + 14) = key;
    v24 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil (key: %@)", "[NSSharedKeyDictionary setObject:forKey:]", key);
    v25 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v24) osLogPack:0 size:v22, v20];
    objc_exception_throw(v25);
  }

  keyMap = self->_keyMap;
  if (keyMap)
  {
    v8 = (self->_ifkIMP)(keyMap, sel_indexForKey_, key);
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_doKVO)
  {
    [(NSSharedKeyDictionary *)self willChangeValueForKey:key];
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sideDic = self->_sideDic;
    if (!sideDic)
    {
      sideDic = objc_opt_new();
      self->_sideDic = sideDic;
    }

    [(NSMutableDictionary *)sideDic setObject:object forKey:key];
  }

  else
  {
    v10 = self->_values[v8];
    if (v10 != object)
    {
      if ((object & 0x8000000000000000) == 0)
      {
        objectCopy = object;
      }

      if (v10)
      {
        self->_values[v8] = object;
        if (v10 >= 1)
        {
        }
      }

      else
      {
        ++self->_count;
        self->_values[v8] = object;
      }
    }
  }

  if (self->_doKVO)
  {
    v12 = *MEMORY[0x1E69E9840];

    [(NSSharedKeyDictionary *)self didChangeValueForKey:key];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];
  }
}

- (void)removeObjectForKey:(id)key
{
  v18[1] = *MEMORY[0x1E69E9840];
  ++self->_mutations;
  if (!key)
  {
    v12 = _os_log_pack_size();
    v14 = v18 - ((MEMORY[0x1EEE9AC00](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill();
    *v15 = 136315138;
    *(v15 + 4) = "[NSSharedKeyDictionary removeObjectForKey:]";
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "[NSSharedKeyDictionary removeObjectForKey:]");
    v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16) osLogPack:0 size:v14, v12];
    objc_exception_throw(v17);
  }

  keyMap = self->_keyMap;
  if (keyMap)
  {
    v6 = (self->_ifkIMP)(keyMap, sel_indexForKey_, key);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_doKVO)
  {
    [(NSSharedKeyDictionary *)self willChangeValueForKey:key];
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sideDic = self->_sideDic;
    if (sideDic)
    {
      [(NSMutableDictionary *)sideDic removeObjectForKey:key];
    }
  }

  else
  {
    values = self->_values;
    v9 = values[v6];
    values[v6] = 0;
    if (v9)
    {
      --self->_count;
      if ((v9 & 0x8000000000000000) == 0)
      {
      }
    }
  }

  if (self->_doKVO)
  {
    v10 = *MEMORY[0x1E69E9840];

    [(NSSharedKeyDictionary *)self didChangeValueForKey:key];
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];
  }
}

- (NSSharedKeyDictionary)initWithKeySet:(id)set
{
  if (set)
  {
    if ((set & 0x8000000000000000) == 0)
    {
      setCopy = set;
    }

    self->_keyMap = set;
    self->_ifkIMP = [set methodForSelector:sel_indexForKey_];
    v7 = malloc_type_calloc([(NSSharedKeySet *)self->_keyMap count], 8uLL, 0x80040B8603338uLL);
    self->_values = v7;
    if (!v7)
    {
      v9 = __CFExceptionProem(self, a2);
      v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v9);
      v11 = _CFAutoreleasePoolAddObject(0, v10);

      objc_exception_throw([NSException exceptionWithName:@"NSMallocException" reason:v11 userInfo:0]);
    }
  }

  return self;
}

+ (id)sharedKeyDictionaryWithKeySet:(id)set
{
  v3 = [[self alloc] initWithKeySet:set];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithKeySet:", self->_keyMap}];
  v5[2] = self->_count;
  v6 = [(NSSharedKeySet *)self->_keyMap count];
  if (v6)
  {
    v7 = v6 - 1;
    do
    {
      v8 = self->_values[v7];
      if (v8 >= 1)
      {
        v9 = v8;
        v8 = self->_values[v7];
      }

      *(v5[3] + 8 * v7--) = v8;
    }

    while (v7 != -1);
  }

  v5[5] = [(NSDictionary *)self->_sideDic mutableCopyWithZone:zone];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v17 = __CFExceptionProem(self, a2);
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: this object can only be encoded by a keyed coder", v17);
    v19 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v18), 0];
    objc_exception_throw(v19);
  }

  [coder encodeObject:self->_keyMap forKey:@"NS.skkeyset"];
  [coder encodeObject:self->_sideDic forKey:@"NS.sideDic"];
  [coder encodeInt64:self->_count forKey:@"NS.count"];
  if (self->_count)
  {
    v6 = +[(NSArray *)NSMutableArray];
    v7 = +[(NSArray *)NSMutableArray];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    keyMap = self->_keyMap;
    v9 = [(NSSharedKeySet *)keyMap countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(keyMap);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [(NSSharedKeyDictionary *)self objectForKey:v13];
          if (v14)
          {
            v15 = v14;
            [(NSArray *)v6 addObject:v13];
            [(NSArray *)v7 addObject:v15];
          }
        }

        v10 = [(NSSharedKeySet *)keyMap countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v10);
    }

    [coder encodeObject:v6 forKey:@"NS.keys"];
    [coder encodeObject:v7 forKey:@"NS.values"];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (NSSharedKeyDictionary)initWithCoder:(id)coder
{
  v115 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v17 = __CFExceptionProem(self, a2);
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: this object can only be decoded by a keyed coder", v17);
    v19 = _CFAutoreleasePoolAddObject(0, v18);

    [coder failWithError:__archiveIsCorrupt(v19)];
    self = 0;
    goto LABEL_14;
  }

  v6 = objc_opt_class();
  objc_getClass("NSKeyedUnarchiver");
  isKindOfClass = objc_opt_isKindOfClass();
  v113 = 0;
  v114 = 0;
  if (isKindOfClass)
  {
    coderCopy = coder;
  }

  else
  {
    coderCopy = 0;
  }

  v111 = 0;
  v112 = coderCopy;
  v109 = coderCopy;
  v110 = 0;
  v9 = [coder decodeObjectOfClass:v6 forKey:@"NS.skkeyset"];
  v10 = v9;
  v113 = v9;
  v105 = 8;
  self->_keyMap = v9;
  if (v9 >= 1)
  {
    v11 = v9;
    v12 = *(&self->super.super.super.isa + v105);
  }

  v13 = objc_opt_class();
  if (v13 == v6)
  {
    v22 = *(&self->super.super.super.isa + v105);
    if (v22)
    {
      self->_ifkIMP = [v22 methodForSelector:sel_indexForKey_];
      v23 = malloc_type_calloc([*(&self->super.super.super.isa + v105) count], 8uLL, 0x80040B8603338uLL);
      self->_values = v23;
      if (!v23)
      {
        v37 = __CFExceptionProem(self, a2);
        v38 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v37);
        v16 = _CFAutoreleasePoolAddObject(0, v38);
        if ([coder decodingFailurePolicy] == 1)
        {
        }

        goto LABEL_10;
      }

      if (isKindOfClass)
      {
        v24 = objc_opt_new();
        v114 = v24;
        if (!v24)
        {
          v47 = __CFExceptionProem(self, a2);
          v48 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v47);
          v16 = _CFAutoreleasePoolAddObject(0, v48);
          if ([coder decodingFailurePolicy] == 1)
          {
          }

          goto LABEL_10;
        }

        if (v10)
        {
          [coder replaceObject:v10 withObject:v24];
        }
      }
    }

    v25 = objc_lookUpClass("NSArray");
    objc_lookUpClass("NSDictionary");
    v26 = objc_lookUpClass("NSMutableDictionary");
    v27 = objc_lookUpClass("NSString");
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__NSSharedKeyDictionary_initWithCoder___block_invoke;
    block[3] = &unk_1E6D81EC0;
    block[4] = v27;
    if (initWithCoder__onceToken != -1)
    {
      dispatch_once(&initWithCoder__onceToken, block);
    }

    allowedClasses = [coder allowedClasses];
    v29 = [allowedClasses setByAddingObjectsFromSet:initWithCoder__oPlistClasses];
    sideDic = [coder decodeObjectOfClasses:objc_msgSend(v29 forKey:{"setByAddingObject:", v26), @"NS.sideDic"}];
    v31 = sideDic;
    v110 = sideDic;
    self->_sideDic = sideDic;
    if (sideDic >= 1)
    {
      v32 = sideDic;
      sideDic = self->_sideDic;
    }

    if (sideDic)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v39 = __CFExceptionProem(self, a2);
        v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: invalid archive (must be mutable)", v39);
        v36 = _CFAutoreleasePoolAddObject(0, v40);
        if ([coder decodingFailurePolicy] == 1)
        {
        }

        goto LABEL_82;
      }

      v33 = self->_sideDic;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = __CFExceptionProem(self, a2);
        v35 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: invalid archive (invalid dictionary)", v34);
        v36 = _CFAutoreleasePoolAddObject(0, v35);
        if ([coder decodingFailurePolicy] == 1)
        {
        }

LABEL_82:
        [coder failWithError:__archiveIsCorrupt(v36)];
        goto LABEL_11;
      }

      if (isKindOfClass)
      {
        v41 = objc_opt_new();
        v111 = v41;
        if (!v41)
        {
          v76 = __CFExceptionProem(self, a2);
          v77 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v76);
          v36 = _CFAutoreleasePoolAddObject(0, v77);
          if ([coder decodingFailurePolicy] == 1)
          {
          }

          goto LABEL_82;
        }

        if (v31)
        {
          [coder replaceObject:v31 withObject:v41];
        }
      }

      v42 = [(NSDictionary *)self->_sideDic count];
      v44 = v42;
      if (v42 >= 1)
      {
        if (v42 >= 0x1000001)
        {
          v45 = __CFExceptionProem(self, a2);
          v46 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unreasonably sized collection", v45);
          v36 = _CFAutoreleasePoolAddObject(0, v46);
          if ([coder decodingFailurePolicy] == 1)
          {
          }

          goto LABEL_82;
        }

        v104 = &v99;
        MEMORY[0x1EEE9AC00](v42, v43);
        v50 = (&v99 - v49);
        v51 = 0;
        v107 = 0;
        if (v44 >= 0x101)
        {
          v51 = _CFCreateArrayStorage(v44, 0, &v107);
          v50 = v51;
        }

        [(NSDictionary *)self->_sideDic getObjects:0 andKeys:v50 count:v44];
        while (1)
        {
          v52 = *v50;
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
          {
            break;
          }

          ++v50;
          if (!--v44)
          {
            free(v51);
            goto LABEL_56;
          }
        }

        v78 = objc_opt_class();
        v79 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected recursive keys (%@)", v78);
        v80 = _CFAutoreleasePoolAddObject(0, v79);
        if ([coder decodingFailurePolicy] == 1)
        {
        }

        [coder failWithError:__archiveIsCorrupt(v80)];
        v81 = v51;
LABEL_86:
        free(v81);
        self = 0;
        goto LABEL_12;
      }
    }

LABEL_56:
    v53 = [coder decodeInt64ForKey:@"NS.count"];
    v54 = v53;
    if ((v53 & 0x8000000000000000) != 0)
    {
      v58 = __CFExceptionProem(self, a2);
      v59 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: negative count", v58);
      v57 = _CFAutoreleasePoolAddObject(0, v59);
      if ([coder decodingFailurePolicy] == 1)
      {
      }
    }

    else
    {
      if (!v53)
      {
        goto LABEL_12;
      }

      if (v53 < 0x1000001)
      {
        if (*(&self->super.super.super.isa + v105))
        {
          v60 = [v29 setByAddingObject:v25];
          v61 = [coder decodeObjectOfClasses:v60 forKey:@"NS.keys"];
          v62 = [coder decodeObjectOfClasses:v60 forKey:@"NS.values"];
          if (!_NSIsNSArray(v61))
          {
            v61 = 0;
          }

          if (_NSIsNSArray(v62))
          {
            v63 = v62;
          }

          else
          {
            v63 = 0;
          }

          v64 = [v61 count];
          v65 = [v63 count];
          if (v64 && v65)
          {
            if (v64 == v65)
            {
              if (v64 == v54)
              {
                v104 = &v99;
                v67 = MEMORY[0x1EEE9AC00](v65, v66);
                v70 = (&v99 - v69);
                v107 = 0;
                if (v54 > 0x100)
                {
                  v70 = _CFCreateArrayStorage(v54, 0, &v107);
                  MEMORY[0x1EEE9AC00](v70, v88);
                  v72 = &v98;
                  v106 = 0;
                  v73 = _CFCreateArrayStorage(v54, 0, &v106);
                  v103 = v70;
                }

                else
                {
                  MEMORY[0x1EEE9AC00](v67, v68);
                  v72 = (&v99 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
                  v103 = 0;
                  v73 = 0;
                  v106 = 0;
                }

                v101 = v63;
                v102 = v73;
                if (v54 >= 0x101)
                {
                  v72 = v73;
                }

                [v61 getObjects:v70 range:{0, v54}];
                v100 = v70;
                v89 = v54;
                do
                {
                  v90 = *v70;
                  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
                  {
                    v93 = objc_opt_class();
                    v94 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected recursive keys (%@)", v93);
                    v95 = _CFAutoreleasePoolAddObject(0, v94);
                    if ([coder decodingFailurePolicy] == 1)
                    {
                    }

                    goto LABEL_109;
                  }

                  ++v70;
                  --v89;
                }

                while (v89);
                [v101 getObjects:v72 range:{0, v54}];
                v91 = v100;
                while (1)
                {
                  v92 = *v91;
                  if ((self->_ifkIMP)(*(&self->super.super.super.isa + v105), sel_indexForKey_, *v91) == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    break;
                  }

                  [(NSSharedKeyDictionary *)self setObject:*v72++ forKey:v92];
                  ++v91;
                  if (!--v54)
                  {
                    free(v102);
                    free(v103);
                    goto LABEL_12;
                  }
                }

                v96 = __CFExceptionProem(self, a2);
                v97 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: encoded key not present in keyset", v96);
                v95 = _CFAutoreleasePoolAddObject(0, v97);
                if ([coder decodingFailurePolicy] == 1)
                {
                }

LABEL_109:
                [coder failWithError:__archiveIsCorrupt(v95)];
                free(v102);
                v81 = v103;
                goto LABEL_86;
              }

              v86 = __CFExceptionProem(self, a2);
              v87 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: more entries than expected", v86);
              v57 = _CFAutoreleasePoolAddObject(0, v87);
              if ([coder decodingFailurePolicy] == 1)
              {
              }
            }

            else
            {
              v84 = __CFExceptionProem(self, a2);
              v85 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: encoded keys/values length does not match", v84);
              v57 = _CFAutoreleasePoolAddObject(0, v85);
              if ([coder decodingFailurePolicy] == 1)
              {
              }
            }
          }

          else
          {
            v82 = __CFExceptionProem(self, a2);
            v83 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: encoded keys/values are empty", v82);
            v57 = _CFAutoreleasePoolAddObject(0, v83);
            if ([coder decodingFailurePolicy] == 1)
            {
            }
          }
        }

        else
        {
          v74 = __CFExceptionProem(self, a2);
          v75 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: invalid archive (encoded count but missing keyset)", v74);
          v57 = _CFAutoreleasePoolAddObject(0, v75);
          if ([coder decodingFailurePolicy] == 1)
          {
          }
        }
      }

      else
      {
        v55 = __CFExceptionProem(self, a2);
        v56 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unreasonably sized collection", v55);
        v57 = _CFAutoreleasePoolAddObject(0, v56);
        if ([coder decodingFailurePolicy] == 1)
        {
        }
      }
    }

    [coder failWithError:__archiveIsCorrupt(v57)];
    goto LABEL_11;
  }

  v14 = __CFExceptionProem(self, a2);
  v15 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: invalid archive (unexpected keyset: %@)", v14, v13);
  v16 = _CFAutoreleasePoolAddObject(0, v15);
  if ([coder decodingFailurePolicy] == 1)
  {
  }

LABEL_10:
  [coder failWithError:__archiveIsCorrupt(v16)];
LABEL_11:
  self = 0;
LABEL_12:
  cleanup_sentinel_pair(&v109);
  cleanup_sentinel_pair(&v112);
LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
  return self;
}

NSSet *__39__NSSharedKeyDictionary_initWithCoder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_lookUpClass("NSNumber");
  v3 = objc_lookUpClass("NSDate");
  v4 = objc_lookUpClass("NSURL");
  v5 = [NSSet setWithObjects:v1, v2, v3, v4, objc_lookUpClass("NSData"), 0];
  initWithCoder__oPlistClasses = v5;

  return v5;
}

- (void)setObservationInfo:(void *)info
{
  v5 = *MEMORY[0x1E69E9840];
  self->_doKVO = info != 0;
  v4.receiver = self;
  v4.super_class = NSSharedKeyDictionary;
  [(NSSharedKeyDictionary *)&v4 setObservationInfo:?];
  v3 = *MEMORY[0x1E69E9840];
}

@end