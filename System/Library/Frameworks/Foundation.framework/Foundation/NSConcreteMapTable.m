@interface NSConcreteMapTable
- (BOOL)containsKeys:(const void *)a3 values:(const void *)a4 count:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)mapMember:(const void *)a3 originalKey:(const void *)a4 value:(const void *)a5;
- (NSConcreteMapTable)initWithCoder:(id)a3;
- (NSConcreteMapTable)initWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4 capacity:(unint64_t)a5;
- (NSConcreteMapTable)initWithKeyPointerFunctions:(id)a3 valuePointerFunctions:(id)a4 capacity:(unint64_t)a5;
- (id)allKeys;
- (id)allValues;
- (id)copy;
- (id)description;
- (id)dump;
- (id)keyEnumerator;
- (id)keyPointerFunctions;
- (id)objectForKey:(id)a3;
- (id)valuePointerFunctions;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)getKeys:(const void *)a3 values:(const void *)a4;
- (unint64_t)hash;
- (unint64_t)realCount;
- (unint64_t)rehashAround:(unint64_t)a3;
- (void)_setBackingStore;
- (void)assign:(unint64_t)a3 key:(const void *)a4 value:(const void *)a5 isNew:(BOOL)a6;
- (void)checkCount:(const char *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)existingItemForSetItem:(const void *)a3 forAbsentKey:(const void *)a4;
- (void)grow;
- (void)rehash;
- (void)removeAllItems;
- (void)removeObjectForKey:(id)a3;
- (void)replaceItem:(const void *)a3 forExistingKey:(const void *)a4;
- (void)setItem:(const void *)a3 forAbsentKey:(const void *)a4;
- (void)setItem:(const void *)a3 forKnownAbsentKey:(const void *)a4;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation NSConcreteMapTable

- (id)keyEnumerator
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695E008]) initWithObject:self];

  return v2;
}

- (void)grow
{
  p_keys = &self->keys;
  p_values = &self->values;
  items = self->keys.items;
  v24 = self->values.items;
  capacity = self->capacity;
  if (!self->shouldRehash || ([(NSConcreteMapTable *)self rehash], self->capacity <= 2 * self->count))
  {
    v5 = capacity << (self->capacity <= 2 * NSConcreteMapTable_reclaim(self));
    v6 = (*(p_keys->internalProps + 1))(v5);
    if (!v6 || (v7 = v6, (v8 = (*(p_values->internalProps + 1))(v5)) == 0))
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"*** NSMapTable unable to allocate memory -- allocation function failed" userInfo:{0, items}]);
    }

    v9 = v8;
    os_unfair_lock_lock(&self->growLock);
    p_keys->items = v7;
    p_values->items = v9;
    self->capacity = v5;
    os_unfair_lock_unlock(&self->growLock);
    self->count = 0;
    if (capacity)
    {
      v10 = items;
      v11 = v24;
      v12 = capacity;
      do
      {
        v13 = objc_autoreleasePoolPush();
        v14 = (*(p_keys->internalProps + 3))(v10, 0);
        v15 = (*(p_values->internalProps + 3))(v11, 0);
        if (v14 | v15)
        {
          v16 = v15;
          if (v14)
          {
            v17 = v15 == 0;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            v20 = *(p_keys->acquisitionProps + 2);
            if (v20)
            {
              v20(v14, *(p_keys->personalityProps + 1));
            }

            (*(p_keys->internalProps + 6))(v10);
            (*(p_keys->internalProps + 4))(v14);
          }

          else
          {
            if (v14)
            {
              v18 = 1;
            }

            else
            {
              v18 = v15 == 0;
            }

            if (v18)
            {
              v19 = probeGC(self, v14, 0, 0, 1);
              (*(p_keys->internalProps + 7))(p_keys->items, v19, v14);
              (*(p_values->internalProps + 7))(p_values->items, v19, v16);
              (*(p_keys->internalProps + 4))(v14);
              (*(p_values->internalProps + 4))(v16);
              ++self->count;
            }

            else
            {
              v21 = *(p_values->acquisitionProps + 2);
              if (v21)
              {
                v21(v15, *(p_keys->personalityProps + 1));
              }

              (*(p_values->internalProps + 6))(v11);
              (*(p_values->internalProps + 4))(v16);
            }
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
        ++v10;
        --v12;
      }

      while (v12);
    }

    (*(p_keys->internalProps + 2))(items, capacity);
    v22 = *(p_values->internalProps + 2);

    v22(v24, capacity);
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  dealloc(&self->keys, self->capacity);
  dealloc(&self->values, self->capacity);
  if (self->hasDynamicSlices)
  {
    NSSliceDealloc(&self->keys);
    NSSliceDealloc(&self->values);
  }

  v3.receiver = self;
  v3.super_class = NSConcreteMapTable;
  [(NSConcreteMapTable *)&v3 dealloc];
}

- (void)_setBackingStore
{
  [NSConcretePointerFunctions initializeBackingStore:"initializeBackingStore:sentinel:weakAutoreleasing:dynamic:" sentinel:? weakAutoreleasing:? dynamic:?];

  [NSConcretePointerFunctions initializeBackingStore:"initializeBackingStore:sentinel:weakAutoreleasing:dynamic:" sentinel:? weakAutoreleasing:? dynamic:?];
}

- (unint64_t)count
{
  if (!self->shouldRehash)
  {
    return self->count;
  }

  [(NSConcreteMapTable *)self rehash];
  result = [(NSConcreteMapTable *)self realCount];
  self->count = result;
  return result;
}

- (void)removeAllItems
{
  ++self->mutations;
  empty_0(&self->keys, self->capacity);
  empty_0(&self->values, self->capacity);
  self->count = 0;
}

- (id)copy
{
  v3 = [NSConcreteMapTable alloc];
  v4 = v3;
  v3->count = 0;
  v3->capacity = self->capacity;
  v3->keyOptions = self->keyOptions;
  v3->valueOptions = self->valueOptions;
  v3->mutations = 0;
  p_keys = &v3->keys;
  v6 = &self->keys;
  if (self->hasDynamicSlices)
  {
    NSSliceInitWithSlice(&v3->keys.items, &self->keys.items);
    NSSliceInitWithSlice(&v4->values.items, &self->values.items);
    v4->hasDynamicSlices = 1;
  }

  else
  {
    v7 = *&self->keys.personalityProps;
    *p_keys = *&v6->items;
    *&v3->keys.personalityProps = v7;
    v8 = *&self->values.personalityProps;
    *&v3->values.items = *&self->values.items;
    *&v3->values.personalityProps = v8;
  }

  allocateInitialCapacity_0(p_keys, self->capacity);
  allocateInitialCapacity_0(&v4->values, self->capacity);
  if (self->capacity)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (*(self->keys.internalProps + 3))(&v6->items[v9], 0);
      v12 = (*(self->values.internalProps + 3))(&self->values.items[v9], 0);
      if (v11 | v12)
      {
        v13 = v12;
        if (v12)
        {
          v14 = v11 != 0;
        }

        else
        {
          v14 = 1;
        }

        if (v12)
        {
          v15 = 1;
        }

        else
        {
          v15 = v11 == 0;
        }

        if (v15 && v14)
        {
          [(NSConcreteMapTable *)v4 setObject:v12 forKey:v11];
        }

        else
        {
          self->shouldRehash = 1;
        }

        (*(self->keys.internalProps + 4))(v11);
        (*(self->values.internalProps + 4))(v13);
      }

      ++v10;
      ++v9;
    }

    while (v10 < self->capacity);
  }

  if (self->shouldRehash)
  {
    [(NSConcreteMapTable *)self rehash];
  }

  return v4;
}

- (void)rehash
{
  capacity = self->capacity;
  if (capacity)
  {
    v4 = 0;
    p_keys = &self->keys;
    v6 = *(self->keys.internalProps + 3);
    do
    {
      if (p_keys->items[v4] == v6)
      {
        ++v4;
      }

      else
      {
        v7 = [(NSConcreteMapTable *)self rehashAround:v4];
        if (v7 < v4)
        {
          break;
        }

        capacity = self->capacity;
        v4 = v7;
      }
    }

    while (v4 < capacity);
  }

  self->shouldRehash = 0;
}

- (id)allValues
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (self->capacity)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(self->keys.internalProps + 3))(&self->keys.items[v4], 0);
      v7 = (*(self->values.internalProps + 3))(&self->values.items[v4], 0);
      v8 = v7;
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        [v3 addObject:v7];
      }

      (*(self->keys.internalProps + 4))(v6);
      (*(self->values.internalProps + 4))(v8);
      ++v5;
      ++v4;
    }

    while (v5 < self->capacity);
  }

  return v3;
}

- (id)allKeys
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (self->capacity)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(self->keys.internalProps + 3))(&self->keys.items[v4], 0);
      v7 = (*(self->values.internalProps + 3))(&self->values.items[v4], 0);
      v8 = v7;
      if (v6)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        [v3 addObject:v6];
      }

      (*(self->keys.internalProps + 4))(v6);
      (*(self->values.internalProps + 4))(v8);
      ++v5;
      ++v4;
    }

    while (v5 < self->capacity);
  }

  return v3;
}

- (unint64_t)hash
{
  if ((*(*(self + 32) + 1) & 1) == 0 && *(*(self + 64) + 1) != 1)
  {
    return *(self + 72);
  }

  return self;
}

- (id)description
{
  v11 = +[(NSString *)NSMutableString];
  [(NSString *)v11 appendFormat:@"NSMapTable {\n"];
  if (self->capacity)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = (*(self->keys.internalProps + 3))(&self->keys.items[v3], 0);
      v6 = (*(self->values.internalProps + 3))(&self->values.items[v3], 0);
      v7 = v6;
      if (v5)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        v9 = (*(self->keys.personalityProps + 4))(v5);
        [(NSString *)v11 appendFormat:@"[%lu] %@ -> %@\n", v4, v9, (*(self->values.personalityProps + 4))(v7)];
      }

      (*(self->keys.internalProps + 4))(v5);
      (*(self->values.internalProps + 4))(v7);
      ++v4;
      ++v3;
    }

    while (v4 < self->capacity);
  }

  [(NSString *)v11 appendString:@"}\n"];
  return v11;
}

- (unint64_t)realCount
{
  if (!self->capacity)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  p_keys = &self->keys;
  do
  {
    v7 = (*(p_keys->internalProps + 3))(&p_keys->items[v3], 0);
    v8 = (*(self->values.internalProps + 3))(&self->values.items[v3], 0);
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      ++v4;
    }

    (*(p_keys->internalProps + 4))(v7);
    (*(self->values.internalProps + 4))(v9);
    ++v5;
    ++v3;
  }

  while (v5 < self->capacity);
  return v4;
}

- (void)checkCount:(const char *)a3
{
  v4 = [(NSConcreteMapTable *)self realCount];
  count = self->count;
  if (v4 > count && !self->shouldRehash)
  {
    v6 = [NSString stringWithFormat:@"*** [NSMapTable %@] real count %ld exceeds count %ld when it shouldn't", self, v4, count];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0]);
  }
}

- (NSConcreteMapTable)initWithKeyOptions:(unint64_t)a3 valueOptions:(unint64_t)a4 capacity:(unint64_t)a5
{
  if (a5 >= 5)
  {
    if ((a5 & (a5 - 1)) != 0)
    {
      v7 = 0;
      do
      {
        v8 = v7 + 1;
        if (a5 < 2)
        {
          break;
        }

        a5 >>= 1;
      }

      while (v7++ < 0x17);
      v10 = 1 << v8;
      if (v10 <= 4)
      {
        a5 = 4;
      }

      else
      {
        a5 = v10;
      }
    }
  }

  else
  {
    a5 = 4;
  }

  self->capacity = a5;
  self->keyOptions = a3;
  self->valueOptions = a4;
  self->count = 0;
  self->mutations = 0;
  self->growLock._os_unfair_lock_opaque = 0;
  if (![NSConcretePointerFunctions initializeSlice:&self->keys withOptions:self->keyOptions]|| ![NSConcretePointerFunctions initializeSlice:&self->values withOptions:self->valueOptions])
  {
    v12 = [NSString stringWithFormat:@"*** [NSMapTable %@] Requested configuration not supported.", NSStringFromSelector(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v12 userInfo:0]);
  }

  [(NSConcreteMapTable *)self _setBackingStore];
  allocateInitialCapacity_0(&self->keys, self->capacity);
  allocateInitialCapacity_0(&self->values, self->capacity);
  return self;
}

- (NSConcreteMapTable)initWithKeyPointerFunctions:(id)a3 valuePointerFunctions:(id)a4 capacity:(unint64_t)a5
{
  if (!a3 || !a4)
  {
    v13 = [NSString stringWithFormat:@"*** [NSMapTable %@] Requested configuration not supported.", NSStringFromSelector(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v13 userInfo:0]);
  }

  NSSliceInitWithSlice(&self->keys.items, a3 + 1);
  NSSliceInitWithSlice(&self->values.items, a4 + 1);
  self->hasDynamicSlices = 1;
  if (a5 >= 5)
  {
    if ((a5 & (a5 - 1)) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        if (a5 < 2)
        {
          break;
        }

        a5 >>= 1;
      }

      while (v8++ < 0x17);
      v11 = 1 << v9;
      if (v11 <= 4)
      {
        a5 = 4;
      }

      else
      {
        a5 = v11;
      }
    }
  }

  else
  {
    a5 = 4;
  }

  self->capacity = a5;
  self->count = 0;
  self->mutations = 0;
  self->keyOptions = 0x20000;
  self->valueOptions = 0x20000;
  self->growLock._os_unfair_lock_opaque = 0;
  [(NSConcreteMapTable *)self _setBackingStore];
  allocateInitialCapacity_0(&self->keys, self->capacity);
  allocateInitialCapacity_0(&self->values, self->capacity);
  return self;
}

- (NSConcreteMapTable)initWithCoder:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a3 containsValueForKey:@"NS.count"])
  {
    v5 = [a3 decodeInt64ForKey:@"NS.count"];
    if (v5 < 0)
    {

      [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"NSMapTable archive contains negative count"}];
      return 0;
    }

    v6 = v5;
    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v21[0] = 0;
  [a3 decodeValueOfObjCType:"i" at:v21 + 4 size:4];
  [a3 decodeValueOfObjCType:"i" at:v21 size:4];
  v8 = SHIDWORD(v21[0]);
  if ((_NSPointerFunctionCoding_isValidOptions(SWORD2(v21[0])) & 1) == 0)
  {

    [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Decoded unsupported NSMapTable key options %x", HIDWORD(v21[0]))}];
    return 0;
  }

  v9 = SLODWORD(v21[0]);
  if ((_NSPointerFunctionCoding_isValidOptions(v21[0]) & 1) == 0)
  {

    [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Decoded unsupported NSMapTable value options %x", LODWORD(v21[0]))}];
    return 0;
  }

  v10 = [(NSConcreteMapTable *)self initWithKeyOptions:v8 valueOptions:v9 capacity:16];
  if (v7)
  {
    if (!v6)
    {
      return v10;
    }

    v11 = BYTE4(v21[0]) & 5;
    v12 = v21[0] & 5;
    while (1)
    {
      if (([a3 _containsNextUnkeyedObject] & 1) == 0)
      {
        v18 = [NSError _readCorruptErrorWithFormat:@"Missing expected key for key while decoding NSMapTable"];

        [a3 failWithError:v18];
        return 0;
      }

      v13 = [a3 decodeObject];
      if (([a3 _containsNextUnkeyedObject] & 1) == 0)
      {
        v19 = [NSError _readCorruptErrorWithFormat:@"Missing expected key for value while decoding NSMapTable"];

        [a3 failWithError:v19];
        return 0;
      }

      v14 = [a3 decodeObject];
      if (v13)
      {
        if (v14)
        {
          [(NSConcreteMapTable *)v10 setObject:v14 forKey:v13];
        }

        else if (!v12)
        {
LABEL_31:

          [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Missing key while decoding NSMapTable"}];
          return 0;
        }
      }

      else if (!v11)
      {
        goto LABEL_31;
      }

      if (!--v6)
      {
        return v10;
      }
    }
  }

  for (i = [a3 decodeObject]; ; i = objc_msgSend(a3, "decodeObject"))
  {
    v16 = i;
    if (!i)
    {
      break;
    }

    v17 = [a3 decodeObject];
    if (!v17)
    {

      [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Missing object for non-nil key %@ while decoding NSMapTable", v16)}];
      return 0;
    }

    [(NSConcreteMapTable *)v10 setObject:v17 forKey:v16];
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  keyOptions = self->keyOptions;
  valueOptions = self->valueOptions;
  v7 = [a3 allowsKeyedCoding];
  if ((_NSPointerFunctionCoding_isValidOptions(self->keyOptions) & 1) == 0)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"NSMapTable has invalid key options for encoding";
    goto LABEL_46;
  }

  if ((_NSPointerFunctionCoding_isValidOptions(self->valueOptions) & 1) == 0)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"NSMapTable has invalid value options for encoding";
    goto LABEL_46;
  }

  count = self->count;
  if ((count & 0x8000000000000000) != 0 || (v9 = _NSPointerFunctionCoding_bufferForCount(2 * count)) == 0)
  {
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"NSMapTable is too big to archive";
    goto LABEL_46;
  }

  v10 = v9;
  v31 = valueOptions;
  v32 = keyOptions;
  v30 = v7;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [(NSConcreteMapTable *)self countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v35;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(self);
      }

      v16 = *(*(&v34 + 1) + 8 * i);
      v17 = [(NSConcreteMapTable *)self objectForKey:v16];
      if (v16)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        free(v10);
        v27 = MEMORY[0x1E695DF30];
        v28 = *MEMORY[0x1E695D940];
        v29 = @"NSMapTable has nil item that cannot be encoded";
        goto LABEL_46;
      }

      *(v10 + v13) = v16;
      *(v10 + count + v13++) = v17;
    }

    v12 = [(NSConcreteMapTable *)self countByEnumeratingWithState:&v34 objects:v33 count:16];
  }

  while (v12);
LABEL_18:
  v19 = v31 & 7;
  v21 = (v32 & 7) == 5 || v19 == 5;
  if (v13 >= count)
  {
    v21 = 1;
  }

  if (v13 > count || !v21)
  {
    free(v10);
    v27 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = @"NSMapTable was modified during archival";
LABEL_46:
    objc_exception_throw([v27 exceptionWithName:v28 reason:v29 userInfo:0]);
  }

  if ((v32 & 7) != 5)
  {
    v7 = 0;
  }

  if (v19 == 5)
  {
    v22 = v30;
  }

  else
  {
    v22 = 0;
  }

  [a3 encodeValueOfObjCType:"i" at:&self->keyOptions];
  [a3 encodeValueOfObjCType:"i" at:&self->valueOptions];
  if (v13)
  {
    v23 = v10;
    v24 = v13;
    do
    {
      v25 = *v23;
      if (v7)
      {
        [a3 encodeConditionalObject:v25];
      }

      else
      {
        [a3 encodeObject:v25];
      }

      v26 = v23[count];
      if (v22)
      {
        [a3 encodeConditionalObject:v26];
      }

      else
      {
        [a3 encodeObject:v26];
      }

      ++v23;
      --v24;
    }

    while (v24);
  }

  [a3 encodeObject:0];
  free(v10);
  if (v30)
  {
    [a3 encodeInt64:v13 forKey:@"NS.count"];
  }
}

- (id)keyPointerFunctions
{
  v3 = [NSConcretePointerFunctions alloc];
  NSSliceInitWithSlice(&v3->slice.items, &self->keys.items);

  return v3;
}

- (id)valuePointerFunctions
{
  v3 = [NSConcretePointerFunctions alloc];
  NSSliceInitWithSlice(&v3->slice.items, &self->values.items);

  return v3;
}

- (BOOL)containsKeys:(const void *)a3 values:(const void *)a4 count:(unint64_t)a5
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v9 = 0;
    v10 = 0;
    while ([(NSConcreteMapTable *)self objectForKey:a3[v10]])
    {
      v14 = 0;
      v11 = probeGC(self, a3[v10], &v14, 0, 0);
      v12 = (*(self->values.internalProps + 3))(&self->values.items[v11], 0);
      if (v14 != 1 || ((*(self->values.personalityProps + 3))(a4[v10], v12, *(self->values.personalityProps + 1)) & 1) == 0)
      {
        (*(self->values.internalProps + 4))(v12);
        return v9;
      }

      (*(self->values.internalProps + 4))(v12);
      v9 = ++v10 >= a5;
      if (a5 == v10)
      {
        return 1;
      }
    }

    NSLog(@"*** not a member: %p\n", a3[v10]);
  }

  else
  {
    return 1;
  }

  return v9;
}

- (id)dump
{
  v3 = +[(NSString *)NSMutableString];
  capacity = self->capacity;
  if (capacity)
  {
    v5 = 0;
    p_keys = &self->keys;
    v7 = *(self->keys.internalProps + 3);
    do
    {
      v8 = self->values.items[v5];
      if (p_keys->items[v5] != v7 || v8 != 0)
      {
        [(NSString *)v3 appendFormat:@"[%lu] %p -> %p\n", v5, p_keys->items[v5], v8];
        capacity = self->capacity;
      }

      ++v5;
    }

    while (v5 < capacity);
  }

  return v3;
}

- (void)assign:(unint64_t)a3 key:(const void *)a4 value:(const void *)a5 isNew:(BOOL)a6
{
  ++self->mutations;
  if (a6)
  {
    p_keys = &self->keys;
    acquisitionProps = self->keys.acquisitionProps;
    v12 = *(acquisitionProps + 1);
    if (v12)
    {
      a4 = v12(a4, *(self->keys.personalityProps + 1), *(acquisitionProps + 4));
    }

    (*(self->keys.internalProps + 7))(p_keys->items, a3, a4);
  }

  p_values = &self->values;
  v14 = p_values->acquisitionProps;
  v15 = *(v14 + 1);
  if (v15)
  {
    a5 = v15(a5, *(p_values->personalityProps + 1), *(v14 + 4), a4);
  }

  if (!a6)
  {
    if (*(p_values->acquisitionProps + 2))
    {
      v16 = (*(p_values->internalProps + 3))(&p_values->items[a3], 0, a3, a4);
      (*(p_values->acquisitionProps + 2))(v16, *(p_values->personalityProps + 1));
      (*(p_values->internalProps + 4))(v16);
    }

    (*(p_values->internalProps + 6))(&p_values->items[a3], a2, a3, a4);
  }

  v17 = *(p_values->internalProps + 7);
  items = p_values->items;

  v17(items, a3, a5);
}

- (id)objectForKey:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v8 = 0;
  v4 = probeGC(self, a3, &v8, 0, 0);
  v5 = 0;
  if (v8 == 1)
  {
    p_values = &self->values;
    v5 = (*(p_values->internalProps + 3))(&p_values->items[v4], 0);
    (*(p_values->internalProps + 5))();
  }

  return v5;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      v9 = 0;
      v7 = probeGC(self, a4, &v9, 0, 1);
      [(NSConcreteMapTable *)self assign:v7 key:a4 value:a3 isNew:(v9 & 1) == 0];
      if ((v9 & 1) == 0)
      {
        v8 = self->count + 1;
        self->count = v8;
        if (self->capacity < 2 * v8)
        {
          [(NSConcreteMapTable *)self grow];
        }
      }
    }
  }
}

- (void)setItem:(const void *)a3 forAbsentKey:(const void *)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      v9 = 0;
      v7 = probeGC(self, a4, &v9, 0, 1);
      if ((v9 & 1) == 0)
      {
        [(NSConcreteMapTable *)self assign:v7 key:a4 value:a3 isNew:1];
        v8 = self->count + 1;
        self->count = v8;
        if (self->capacity < 2 * v8)
        {
          [(NSConcreteMapTable *)self grow];
        }
      }
    }
  }
}

- (void)setItem:(const void *)a3 forKnownAbsentKey:(const void *)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    v9 = 0;
    v7 = probeGC(self, a4, &v9, 0, 1);
    if (v9 == 1)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"value not absent" reason:@"value not absent" userInfo:0]);
    }

    [(NSConcreteMapTable *)self assign:v7 key:a4 value:a3 isNew:1];
    v8 = self->count + 1;
    self->count = v8;
    if (self->capacity < 2 * v8)
    {
      [(NSConcreteMapTable *)self grow];
    }
  }
}

- (void)existingItemForSetItem:(const void *)a3 forAbsentKey:(const void *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  v12 = 0;
  v7 = probeGC(self, a4, &v12, 0, 1);
  if (v12 != 1)
  {
    if (a3)
    {
      [(NSConcreteMapTable *)self assign:v7 key:a4 value:a3 isNew:1];
      v10 = self->count + 1;
      self->count = v10;
      if (self->capacity < 2 * v10)
      {
        [(NSConcreteMapTable *)self grow];
      }
    }

    return 0;
  }

  p_values = &self->values;
  v9 = (*(self->values.internalProps + 3))(&self->values.items[v7], 0);
  (*(p_values->internalProps + 5))();
  return v9;
}

- (BOOL)mapMember:(const void *)a3 originalKey:(const void *)a4 value:(const void *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v13 = 0;
  v8 = probeGC(self, a3, &v13, 0, 0);
  v9 = v13;
  if (v13)
  {
    v10 = v8;
    if (a5)
    {
      *a5 = (*(self->values.internalProps + 3))(&self->values.items[v8], 0);
      (*(self->values.internalProps + 5))();
    }

    if (a4)
    {
      p_keys = &self->keys;
      *a4 = (*(p_keys->internalProps + 3))(&p_keys->items[v10], 0);
      (*(p_keys->internalProps + 5))();
    }
  }

  return v9;
}

- (void)replaceItem:(const void *)a3 forExistingKey:(const void *)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      v9 = 0;
      v7 = probeGC(self, a4, &v9, 0, 1);
      if (v9 == 1)
      {
        v8 = v7;
        if ((*(self->values.internalProps + 3))(&self->values.items[v7], 0))
        {
          (*(self->values.internalProps + 4))();
          [(NSConcreteMapTable *)self assign:v8 key:a4 value:a3 isNew:0];
        }
      }
    }
  }
}

- (unint64_t)rehashAround:(unint64_t)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  p_keys = &self->keys;
  internalProps = self->keys.internalProps;
  capacity = self->capacity;
  items = self->keys.items;
  do
  {
    v3 = (v3 - 1) & (capacity - 1);
  }

  while (items[v3] != *(internalProps + 3));
  while (1)
  {
    v3 = (v3 + 1) & (capacity - 1);
    v22 = 0;
    v9 = (*(internalProps + 3))(&items[v3], &v22);
    p_values = &self->values;
    v11 = (*(self->values.internalProps + 3))(&self->values.items[v3], 0);
    v12 = v11;
    if (v9)
    {
      if (v11)
      {
        (*(p_keys->internalProps + 6))(&p_keys->items[v3]);
        (*(self->values.internalProps + 6))(&p_values->items[v3]);
        v13 = probeGC(self, v9, 0, 0, 0);
        (*(p_keys->internalProps + 7))(p_keys->items, v13, v9);
        (*(self->values.internalProps + 7))(p_values->items, v13, v12);
LABEL_25:
        (*(p_keys->internalProps + 4))(v9);
        (*(self->values.internalProps + 4))(v12);
        goto LABEL_26;
      }

      v15 = *(p_keys->acquisitionProps + 2);
      if (v15)
      {
        v15(v9, *(p_keys->personalityProps + 1));
      }

      v16 = 0;
LABEL_17:
      (*(p_keys->internalProps + 6))(&p_keys->items[v3]);
      v17 = *(self->values.acquisitionProps + 2);
      if (v17)
      {
        v18 = !v16;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v17(v12, *(self->values.personalityProps + 1));
      }

      (*(self->values.internalProps + 6))(&p_values->items[v3]);
      count = self->count;
      if (count)
      {
        self->count = count - 1;
      }

      else
      {
        [(NSConcreteMapTable *)self raiseCountUnderflowException];
      }

      goto LABEL_25;
    }

    if (v22 != 1)
    {
      v16 = v11 != 0;
      goto LABEL_17;
    }

    if (v11)
    {
      NSLog(@"NSMaptable %p isEmpty key but not value %p at index %ld", self, v11, v3);
      v14 = *(self->values.acquisitionProps + 2);
      if (v14)
      {
        v14(v12, *(self->values.personalityProps + 1));
      }

      (*(self->values.internalProps + 6))(&p_values->items[v3]);
    }

    (*(p_keys->internalProps + 4))(0);
    (*(self->values.internalProps + 4))(v12);
    if (v3 != a3)
    {
      return v3;
    }

LABEL_26:
    capacity = self->capacity;
    internalProps = p_keys->internalProps;
    items = p_keys->items;
  }
}

- (void)removeObjectForKey:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = 0;
    v9 = 0;
    v4 = probeGC(self, a3, &v10, &v9, 1);
    if (v10 == 1)
    {
      v5 = v4;
      v6 = *(self->keys.acquisitionProps + 2);
      if (v6)
      {
        v6(v9, *(self->keys.personalityProps + 1));
      }

      p_values = &self->values;
      if (*(self->values.acquisitionProps + 2))
      {
        v8 = (*(self->values.internalProps + 3))(&p_values->items[v5], 0);
        (*(self->values.acquisitionProps + 2))(v8, *(self->values.personalityProps + 1));
        (*(self->values.internalProps + 4))(v8);
      }

      (*(self->keys.internalProps + 6))(&self->keys.items[v5]);
      (*(self->values.internalProps + 6))(&p_values->items[v5]);
      --self->count;
      ++self->mutations;
      [(NSConcreteMapTable *)self rehashAround:v5];
    }
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  p_mutations = &self->mutations;
  a3->var2 = &self->mutations;
  if (a3->var0)
  {
    if (a3->var3[0] == *p_mutations)
    {
      (*(self->keys.internalProps + 4))(a3->var3[1], a2);
      (*(self->values.internalProps + 4))(a3->var3[2]);
    }

    else
    {
      objc_enumerationMutation(self);
    }
  }

  else
  {
    a3->var3[0] = *p_mutations;
  }

  var0 = a3->var0;
  while (var0 < self->capacity)
  {
    v9 = (*(self->keys.internalProps + 3))(&self->keys.items[var0], 0);
    v10 = (*(self->values.internalProps + 3))(&self->values.items[a3->var0], 0);
    var0 = a3->var0 + 1;
    a3->var0 = var0;
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      a3->var3[1] = v9;
      v12 = &a3->var3[1];
      *(v12 - 3) = v12;
      v12[1] = v10;
      return 1;
    }
  }

  return 0;
}

- (unint64_t)getKeys:(const void *)a3 values:(const void *)a4
{
  if (self->capacity)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    p_keys = &self->keys;
    do
    {
      v9 = (*(p_keys->internalProps + 3))(&p_keys->items[v5], 0);
      v10 = (*(self->values.internalProps + 3))(&self->values.items[v5], 0);
      (*(p_keys->internalProps + 5))(v9);
      (*(self->values.internalProps + 5))(v10);
      if (v9)
      {
        v11 = v10 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        a3[v6] = v9;
        a4[v6++] = v10;
      }

      ++v7;
      ++v5;
    }

    while (v7 < self->capacity);
  }

  else
  {
    v6 = 0;
  }

  v12 = &a3[v6];
  if (v12 != a4)
  {
    memmove(v12, a4, 8 * v6);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v10) = 1;
  }

  else if (a3 && (v5 = objc_opt_class(), v5 == objc_opt_class()) && (*(self->keys.internalProps + 1) & 1) == 0 && (*(self->values.internalProps + 1) & 1) == 0 && self->count == *(a3 + 9) && (personalityProps = self->keys.personalityProps, v7 = *(a3 + 3), *(personalityProps + 3) == *(v7 + 24)) && (v8 = self->values.personalityProps, v9 = *(a3 + 7), *(v8 + 3) == *(v9 + 24)) && *(personalityProps + 1) == *(v7 + 8) && *(v8 + 1) == *(v9 + 8))
  {
    capacity = self->capacity;
    if (capacity)
    {
      v12 = 0;
      while (1)
      {
        if (self->keys.items[v12])
        {
          v10 = [a3 objectForKey:?];
          if (!v10)
          {
            return v10;
          }

          LODWORD(v10) = (*(self->values.personalityProps + 3))(self->values.items[v12], v10, *(self->values.personalityProps + 1));
          if (!v10)
          {
            return v10;
          }

          capacity = self->capacity;
        }

        ++v12;
        LOBYTE(v10) = 1;
        if (v12 >= capacity)
        {
          return v10;
        }
      }
    }

    LOBYTE(v10) = 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

@end