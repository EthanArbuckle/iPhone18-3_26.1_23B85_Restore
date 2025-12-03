@interface NSConcreteHashTable
- (BOOL)isEqual:(id)equal;
- (NSConcreteHashTable)initWithCoder:(id)coder;
- (NSConcreteHashTable)initWithOptions:(unint64_t)options capacity:(unint64_t)capacity;
- (NSConcreteHashTable)initWithPointerFunctions:(id)functions capacity:(unint64_t)capacity;
- (id)allObjects;
- (id)copy;
- (id)description;
- (id)objectEnumerator;
- (id)pointerFunctions;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (unint64_t)rehashAround:(unint64_t)around;
- (void)addObject:(id)object;
- (void)assign:(unint64_t)assign key:(const void *)key;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)getItem:(const void *)item;
- (void)getKeys:(const void *)keys count:(unint64_t *)count;
- (void)hashGrow;
- (void)insertItem:(const void *)item;
- (void)insertKnownAbsentItem:(const void *)item;
- (void)rehash;
- (void)removeAllItems;
- (void)removeItem:(const void *)item;
@end

@implementation NSConcreteHashTable

- (id)allObjects
{
  v14 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSConcreteHashTable *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(self);
        }

        [array addObject:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [(NSConcreteHashTable *)self countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  return array;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  p_slice = &self->slice;
  internalProps = self->slice.internalProps;
  if (internalProps)
  {
    capacity = self->capacity;
    if (*(internalProps + 3) && *(internalProps + 6))
    {
      empty(&self->slice, capacity);
      internalProps = p_slice->internalProps;
    }

    v6 = *(internalProps + 2);
    if (v6)
    {
      v6(p_slice->items, capacity);
    }

    p_slice->items = 0;
  }

  if (self->options[7] < 0)
  {
    NSSliceDealloc(p_slice);
  }

  v7.receiver = self;
  v7.super_class = NSConcreteHashTable;
  [(NSConcreteHashTable *)&v7 dealloc];
}

- (id)copy
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [NSConcreteHashTable alloc];
  v4 = v3;
  v3->capacity = self->capacity;
  v3->count = 0;
  *v3->options = *v3->options & 0x8000000000000000 | *self->options & 0x7FFFFFFFFFFFFFFFLL;
  v3->mutations = 0;
  p_slice = &v3->slice;
  v6 = &self->slice;
  if (self->options[7] < 0)
  {
    NSSliceInitWithSlice(&v3->slice.items, v6);
    v4->options[7] |= 0x80u;
  }

  else
  {
    v7 = *&self->slice.personalityProps;
    *p_slice = *&v6->items;
    *&v3->slice.personalityProps = v7;
  }

  allocateInitialCapacity(p_slice, self->capacity);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSConcreteHashTable *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(self);
        }

        [(NSConcreteHashTable *)v4 insertItem:*(*(&v14 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [(NSConcreteHashTable *)self countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }

  return v4;
}

- (void)hashGrow
{
  p_slice = &self->slice;
  capacity = self->capacity;
  items = self->slice.items;
  self->capacity = 2 * capacity;
  v6 = (*(self->slice.internalProps + 1))();
  p_slice->items = v6;
  if (!v6)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"*** NSHashTable unable to allocate memory -- allocation function failed" userInfo:0]);
  }

  self->count = 0;
  if (capacity)
  {
    v7 = items;
    v8 = capacity;
    do
    {
      v9 = (*(p_slice->internalProps + 3))(v7, 0);
      if (v9)
      {
        v10 = v9;
        v11 = hashProbe(self, v9, 0, 0, 0);
        (*(p_slice->internalProps + 7))(p_slice->items, v11, v10);
        (*(p_slice->internalProps + 6))(v7);
        (*(p_slice->internalProps + 4))(v10);
        ++self->count;
      }

      ++v7;
      --v8;
    }

    while (v8);
  }

  v12 = *(p_slice->internalProps + 2);

  v12(items, capacity);
}

- (id)objectEnumerator
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695E008]) initWithObject:self];

  return v2;
}

- (void)removeAllItems
{
  empty(&self->slice, self->capacity);
  ++self->mutations;
  self->count = 0;
}

- (id)description
{
  v3 = +[(NSString *)NSMutableString];
  [(NSString *)v3 appendString:@"NSHashTable {\n"];
  if (self->capacity)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (*(self->slice.internalProps + 3))(&self->slice.items[v4], 0);
      if (v6)
      {
        v7 = v6;
        [(NSString *)v3 appendFormat:@"[%lu] %@\n", v5, (*(self->slice.personalityProps + 4))()];
        (*(self->slice.internalProps + 4))(v7);
      }

      ++v5;
      ++v4;
    }

    while (v5 < self->capacity);
  }

  [(NSString *)v3 appendString:@"}\n"];
  return v3;
}

- (NSConcreteHashTable)initWithOptions:(unint64_t)options capacity:(unint64_t)capacity
{
  *self->options = *self->options & 0x8000000000000000 | options & 0x7FFFFFFFFFFFFFFFLL;
  v6 = 4;
  capacityCopy = 2 << -__clz(capacity >> 1);
  if ((capacity & (capacity - 1)) == 0)
  {
    capacityCopy = capacity;
  }

  if (capacity)
  {
    v6 = capacityCopy;
  }

  self->capacity = v6;
  self->count = 0;
  self->mutations = 0;
  if (![NSConcretePointerFunctions initializeSlice:&self->slice withOptions:*self->options & 0x7FFFFFFFFFFFFFFFLL])
  {
    v9 = [NSString stringWithFormat:@"*** [NSHashTable %@] Requested configuration not supported.", NSStringFromSelector(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v9 userInfo:0]);
  }

  [NSConcretePointerFunctions initializeBackingStore:&self->slice sentinel:1 weakAutoreleasing:*(self->slice.acquisitionProps + 3) dynamic:0];
  allocateInitialCapacity(&self->slice, self->capacity);
  return self;
}

- (NSConcreteHashTable)initWithPointerFunctions:(id)functions capacity:(unint64_t)capacity
{
  if (!functions)
  {
    v9 = [NSString stringWithFormat:@"*** [NSPointerArray %@] Functions cannot be NULL.", NSStringFromSelector(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v9 userInfo:0]);
  }

  NSSliceInitWithSlice(&self->slice.items, functions + 1);
  self->options[7] |= 0x80u;
  v6 = 4;
  capacityCopy = 2 << -__clz(capacity >> 1);
  if ((capacity & (capacity - 1)) == 0)
  {
    capacityCopy = capacity;
  }

  if (capacity)
  {
    v6 = capacityCopy;
  }

  self->capacity = v6;
  self->count = 0;
  self->mutations = 0;
  *self->options |= 0x7FFFFFFFFFFFFFFFuLL;
  [NSConcretePointerFunctions initializeBackingStore:&self->slice sentinel:1 weakAutoreleasing:*(self->slice.acquisitionProps + 3) dynamic:self->options[7] >> 7];
  allocateInitialCapacity(&self->slice, self->capacity);
  return self;
}

- (NSConcreteHashTable)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  if ((objc_opt_isKindOfClass() & 1) != 0 && [coder containsValueForKey:@"NS.count"])
  {
    v5 = [coder decodeInt64ForKey:@"NS.count"];
    if (v5 < 0)
    {

      [coder failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"NSHashTable archive contains negative count"}];
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

  v15 = 0;
  [coder decodeValueOfObjCType:"i" at:&v15 size:4];
  v8 = v15;
  if ((_NSPointerFunctionCoding_isValidOptions(v15) & 1) == 0)
  {

    [coder failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Decoded unsupported NSHashTable options %x", v15)}];
    return 0;
  }

  v9 = [(NSConcreteHashTable *)self initWithOptions:v8 capacity:16];
  if ((v7 & 1) == 0)
  {
    for (i = [coder decodeObject]; i; i = objc_msgSend(coder, "decodeObject"))
    {
      [(NSConcreteHashTable *)v9 addObject:i];
    }

    return v9;
  }

  if (!v6)
  {
    return v9;
  }

  v10 = v15 & 5;
  while (1)
  {
    if (([coder _containsNextUnkeyedObject] & 1) == 0)
    {
      v14 = [NSError _readCorruptErrorWithFormat:@"Missing expected key while decoding NSHashTable"];

      [coder failWithError:v14];
      return 0;
    }

    decodeObject = [coder decodeObject];
    if (!decodeObject)
    {
      break;
    }

    [(NSConcreteHashTable *)v9 addObject:decodeObject];
LABEL_14:
    if (!--v6)
    {
      return v9;
    }
  }

  if (v10)
  {
    goto LABEL_14;
  }

  [coder failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Unexpected nil object encountered while decoding NSHashTable."}];
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *self->options;
  allowsKeyedCoding = [coder allowsKeyedCoding];
  if ((_NSPointerFunctionCoding_isValidOptions(*self->options) & 1) == 0)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"NSHashTable has invalid options for encoding";
    goto LABEL_32;
  }

  count = self->count;
  v8 = _NSPointerFunctionCoding_bufferForCount(count);
  if (!v8)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695DA18];
    v23 = @"NSHashTable is too big to encode";
LABEL_32:
    objc_exception_throw([v21 exceptionWithName:v22 reason:v23 userInfo:0]);
  }

  v9 = v8;
  v24 = allowsKeyedCoding;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(NSConcreteHashTable *)self countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v28;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(self);
      }

      if (v12 > count)
      {
        goto LABEL_30;
      }

      v15 = *(*(&v27 + 1) + 8 * i);
      if (!v15)
      {
        v21 = MEMORY[0x1E695DF30];
        v22 = *MEMORY[0x1E695D940];
        v23 = @"NSHashTable contained an invalid nil element that was found while encoding";
        goto LABEL_32;
      }

      v9[v12++] = v15;
    }

    v11 = [(NSConcreteHashTable *)self countByEnumeratingWithState:&v27 objects:v26 count:16];
  }

  while (v11);
LABEL_14:
  v16 = (v5 & 7) == 5;
  if (v12 >= count)
  {
    v16 = 1;
  }

  if (v12 > count || !v16)
  {
LABEL_30:
    free(v9);
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = @"NSHashTable was modified while encoding";
    goto LABEL_32;
  }

  if ((v5 & 7) == 5)
  {
    v17 = v24;
  }

  else
  {
    v17 = 0;
  }

  v25 = *self->options & 0x7FFFFFFFFFFFFFFFLL;
  [coder encodeValueOfObjCType:"i" at:&v25];
  if (v12)
  {
    v18 = v9;
    v19 = v12;
    do
    {
      v20 = *v18;
      if (v17)
      {
        [coder encodeConditionalObject:v20];
      }

      else
      {
        [coder encodeObject:v20];
      }

      ++v18;
      --v19;
    }

    while (v19);
  }

  [coder encodeObject:0];
  if (v24)
  {
    [coder encodeInt64:v12 forKey:@"NS.count"];
  }

  free(v9);
}

- (id)pointerFunctions
{
  v3 = [NSConcretePointerFunctions alloc];
  NSSliceInitWithSlice(&v3->slice.items, &self->slice.items);

  return v3;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  p_mutations = &self->mutations;
  state->var2 = &self->mutations;
  if (state->var0)
  {
    if (state->var3[1] == *p_mutations)
    {
      (*(self->slice.internalProps + 4))(*state->var1, a2);
    }

    else
    {
      objc_enumerationMutation(self);
    }
  }

  else
  {
    state->var3[1] = *p_mutations;
  }

  var0 = state->var0;
  while (var0 < self->capacity)
  {
    v9 = (*(self->slice.internalProps + 3))(&self->slice.items[var0], 0);
    var0 = state->var0 + 1;
    state->var0 = var0;
    if (v9)
    {
      state->var3[0] = v9;
      state->var1 = state->var3;
      return 1;
    }
  }

  return 0;
}

- (unint64_t)hash
{
  if (*(*(self + 32) + 1) != 1)
  {
    return *(self + 40);
  }

  return self;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (*(self->slice.internalProps + 1))
  {
    return 0;
  }

  if (self->count != *(equal + 5))
  {
    return 0;
  }

  personalityProps = self->slice.personalityProps;
  v6 = *(equal + 3);
  if (*(personalityProps + 3) != *(v6 + 24) || *(personalityProps + 1) != *(v6 + 8))
  {
    return 0;
  }

  if (self->capacity)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = (*(self->slice.internalProps + 3))(&self->slice.items[v8], 0);
      if (v10)
      {
        v11 = v10;
        v12 = [equal getItem:v10];
        if (!v12)
        {
          (*(self->slice.internalProps + 4))(v11);
          return 0;
        }

        v13 = (*(self->slice.personalityProps + 3))(v11, v12, *(self->slice.personalityProps + 1));
        (*(self->slice.internalProps + 4))(v11);
        if (!v13)
        {
          return 0;
        }
      }

      ++v9;
      ++v8;
      result = 1;
      if (v9 >= self->capacity)
      {
        return result;
      }
    }
  }

  return 1;
}

- (unint64_t)rehashAround:(unint64_t)around
{
  v15 = *MEMORY[0x1E69E9840];
  p_slice = &self->slice;
  capacity = self->capacity;
  aroundCopy = around;
  do
  {
    aroundCopy = (aroundCopy - 1) & (capacity - 1);
  }

  while (self->slice.items[aroundCopy] != *(self->slice.internalProps + 3));
  while (1)
  {
    v8 = capacity - 1;
    do
    {
      aroundCopy = (aroundCopy + 1) & v8;
    }

    while (aroundCopy == around);
    v14 = 0;
    v9 = (*(p_slice->internalProps + 3))(&p_slice->items[aroundCopy], &v14);
    if (v9)
    {
      v10 = v9;
      (*(p_slice->internalProps + 6))(&p_slice->items[aroundCopy]);
      v11 = hashProbe(self, v10, 0, 0, 0);
      (*(p_slice->internalProps + 7))(p_slice->items, v11, v10);
      (*(p_slice->internalProps + 4))(v10);
      goto LABEL_11;
    }

    if (v14)
    {
      return aroundCopy;
    }

    (*(p_slice->internalProps + 6))(&p_slice->items[aroundCopy]);
    count = self->count;
    if (count)
    {
      self->count = count - 1;
    }

    else
    {
      [(NSConcreteHashTable *)self raiseCountUnderflowException];
    }

LABEL_11:
    capacity = self->capacity;
  }
}

- (void)assign:(unint64_t)assign key:(const void *)key
{
  ++self->mutations;
  p_slice = &self->slice;
  acquisitionProps = self->slice.acquisitionProps;
  v7 = *(acquisitionProps + 1);
  if (v7)
  {
    key = v7(key, *(self->slice.personalityProps + 1), *(acquisitionProps + 4));
  }

  v8 = *(p_slice->internalProps + 7);
  items = p_slice->items;

  v8(items, assign, key);
}

- (void)rehash
{
  count = self->count;
  if (count)
  {
    v4 = 0;
    p_slice = &self->slice;
    v6 = *(self->slice.internalProps + 3);
    do
    {
      if (p_slice->items[v4] == v6)
      {
        ++v4;
      }

      else
      {
        v7 = [(NSConcreteHashTable *)self rehashAround:v4];
        if (v7 < v4)
        {
          return;
        }

        count = self->count;
        v4 = v7;
      }
    }

    while (v4 < count);
  }
}

- (void)getItem:(const void *)item
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (!item)
  {
    return 0;
  }

  v4[0] = 0;
  hashProbe(self, item, v4, 0, 0);
  return v4[0];
}

- (void)insertItem:(const void *)item
{
  v6 = *MEMORY[0x1E69E9840];
  if (item)
  {
    v5 = 0;
    [(NSConcreteHashTable *)self assign:hashProbe(self key:item, 0, &v5, 1), item];
    if ((v5 & 1) == 0)
    {
      v4 = self->count + 1;
      self->count = v4;
      if (self->capacity < 2 * v4)
      {
        [(NSConcreteHashTable *)self hashGrow];
      }
    }
  }
}

- (void)addObject:(id)object
{
  v8 = *MEMORY[0x1E69E9840];
  if (object)
  {
    v7 = 0;
    v5 = hashProbe(self, object, 0, &v7, 1);
    if ((v7 & 1) == 0)
    {
      [(NSConcreteHashTable *)self assign:v5 key:object];
      v6 = self->count + 1;
      self->count = v6;
      if (self->capacity < 2 * v6)
      {
        [(NSConcreteHashTable *)self hashGrow];
      }
    }
  }
}

- (void)insertKnownAbsentItem:(const void *)item
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (item)
  {
    v8[0] = 0;
    v5 = hashProbe(self, item, v8, 0, 1);
    if (v8[0])
    {
      v7 = [NSString stringWithFormat:@"[NSConcreteHashTable (%p) insertKnownAbsentItem (%p) already has (%p)", self, item, v8[0]];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v7 userInfo:0]);
    }

    [(NSConcreteHashTable *)self assign:v5 key:item];
    v6 = self->count + 1;
    self->count = v6;
    if (self->capacity < 2 * v6)
    {
      [(NSConcreteHashTable *)self hashGrow];
    }
  }
}

- (void)removeItem:(const void *)item
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (item)
  {
    v7[0] = 0;
    v4 = hashProbe(self, item, v7, 0, 1);
    if (v7[0])
    {
      v5 = *(self->slice.acquisitionProps + 2);
      if (v5)
      {
        v5();
      }

      (*(self->slice.internalProps + 6))(&self->slice.items[v4]);
      count = self->count;
      if (count)
      {
        self->count = count - 1;
      }

      else
      {
        [(NSConcreteHashTable *)self raiseCountUnderflowException];
      }

      ++self->mutations;
      [(NSConcreteHashTable *)self rehashAround:v4];
    }
  }
}

- (void)getKeys:(const void *)keys count:(unint64_t *)count
{
  if (!self->capacity)
  {
    v8 = 0;
    if (!count)
    {
      return;
    }

    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  p_slice = &self->slice;
  do
  {
    v11 = (*(p_slice->internalProps + 3))(&p_slice->items[v7], 0);
    (*(p_slice->internalProps + 5))();
    if (v11)
    {
      keys[v8++] = v11;
    }

    ++v9;
    ++v7;
  }

  while (v9 < self->capacity);
  if (count)
  {
LABEL_7:
    *count = v8;
  }
}

@end