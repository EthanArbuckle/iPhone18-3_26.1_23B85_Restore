@interface NSConcretePointerArray
- (BOOL)isEqual:(id)a3;
- (NSConcretePointerArray)initWithCoder:(id)a3;
- (NSConcretePointerArray)initWithOptions:(unint64_t)a3;
- (NSConcretePointerArray)initWithPointerFunctions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)pointerFunctions;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (unint64_t)indexOfPointer:(void *)a3;
- (void)addPointer:(void *)a3;
- (void)arrayGrow:(unint64_t)a3;
- (void)compact;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)insertPointer:(void *)a3 atIndex:(unint64_t)a4;
- (void)pointerAtIndex:(unint64_t)a3;
- (void)removePointer:(void *)a3;
- (void)removePointerAtIndex:(unint64_t)a3;
- (void)replacePointerAtIndex:(unint64_t)a3 withPointer:(void *)a4;
- (void)setCount:(unint64_t)a3;
@end

@implementation NSConcretePointerArray

- (id)pointerFunctions
{
  v3 = [NSConcretePointerFunctions alloc];
  NSSliceInitWithSlice(&v3->slice.items, &self->slice.items);

  return v3;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  p_slice = &self->slice;
  internalProps = self->slice.internalProps;
  if (internalProps)
  {
    capacity = self->capacity;
    if (*(internalProps + 3))
    {
      if (capacity && *(internalProps + 6) != 0)
      {
        v7 = 0;
        v8 = self->capacity;
        do
        {
          v9 = (*(p_slice->internalProps + 3))(&p_slice->items[v7], 0);
          v10 = v9;
          if (v9)
          {
            v11 = *(p_slice->acquisitionProps + 2);
            if (v11)
            {
              v11(v9, *(p_slice->personalityProps + 1));
            }
          }

          (*(p_slice->internalProps + 6))(&p_slice->items[v7]);
          (*(p_slice->internalProps + 4))(v10);
          ++v7;
          --v8;
        }

        while (v8);
        internalProps = p_slice->internalProps;
      }
    }

    v12 = *(internalProps + 2);
    if (v12)
    {
      v12(p_slice->items, capacity);
    }

    p_slice->items = 0;
  }

  if (self->hasDynamicSlice)
  {
    NSSliceDealloc(p_slice);
  }

  v13.receiver = self;
  v13.super_class = NSConcretePointerArray;
  [(NSConcretePointerArray *)&v13 dealloc];
}

- (void)compact
{
  if (self->needsCompaction && self->count)
  {
    v3 = 0;
    v4 = 0;
    p_slice = &self->slice;
    while ((*(self->slice.internalProps + 3))(&p_slice->items[v3], 0))
    {
      (*(self->slice.internalProps + 4))();
      ++v4;
      count = self->count;
      ++v3;
      if (v4 >= count)
      {
        goto LABEL_8;
      }
    }

    count = self->count;
LABEL_8:
    if (v4 != count)
    {
      v7 = v4 + 1;
      if (v4 + 1 < count)
      {
        v8 = 8 * v4 + 8;
        do
        {
          v9 = (*(self->slice.internalProps + 3))(p_slice->items + v8, 0);
          if (v9)
          {
            v10 = v9;
            (*(self->slice.internalProps + 7))(p_slice->items, v4, v9);
            (*(self->slice.internalProps + 6))(p_slice->items + v8);
            (*(self->slice.internalProps + 4))(v10);
            ++v4;
          }

          ++v7;
          v8 += 8;
        }

        while (v7 < self->count);
      }

      self->count = v4;
      ++self->mutations;
      self->needsCompaction = 0;
    }
  }
}

- (NSConcretePointerArray)initWithOptions:(unint64_t)a3
{
  self->options = a3;
  self->capacity = 4;
  self->count = 0;
  self->mutations = 0;
  if (![NSConcretePointerFunctions initializeSlice:&self->slice withOptions:self->options])
  {
    v6 = [NSString stringWithFormat:@"*** [NSPointerArray %@] Requested configuration not supported.", NSStringFromSelector(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v6 userInfo:0]);
  }

  [NSConcretePointerFunctions initializeBackingStore:&self->slice sentinel:0 weakAutoreleasing:*(self->slice.acquisitionProps + 3) dynamic:0];
  allocateInitialCapacity_1(&self->slice, self->capacity);
  return self;
}

- (NSConcretePointerArray)initWithPointerFunctions:(id)a3
{
  if (!a3)
  {
    v5 = [NSString stringWithFormat:@"*** [NSPointerArray %@] Functions cannot be NULL.", NSStringFromSelector(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v5 userInfo:0]);
  }

  NSSliceInitWithSlice(&self->slice.items, a3 + 1);
  self->hasDynamicSlice = 1;
  self->capacity = 16;
  self->count = 0;
  self->mutations = 0;
  [NSConcretePointerFunctions initializeBackingStore:&self->slice sentinel:0 weakAutoreleasing:*(self->slice.acquisitionProps + 3) dynamic:1];
  self->options = -1;
  allocateInitialCapacity_1(&self->slice, self->capacity);
  return self;
}

- (NSConcretePointerArray)initWithCoder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  [a3 decodeValueOfObjCType:"i" at:&v11 size:4];
  if ((_NSPointerFunctionCoding_isValidOptions(v11) & 1) == 0)
  {

    [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Invalid NSPointerArray options for %d", v11)}];
    return 0;
  }

  v10 = 0;
  [a3 decodeValueOfObjCType:"i" at:&v10 size:4];
  if (v10 < 0)
  {

    [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"NSPointerArray archive contains negative count"}];
    return 0;
  }

  v5 = [(NSConcretePointerArray *)self initWithOptions:v11];
  if (objc_opt_isKindOfClass())
  {
    if (v10 >= 1)
    {
      v6 = 0;
      while (([a3 _containsNextUnkeyedObject] & 1) != 0)
      {
        -[NSConcretePointerArray addPointer:](v5, "addPointer:", [a3 decodeObject]);
        if (++v6 >= v10)
        {
          return v5;
        }
      }

      v8 = [NSError _readCorruptErrorWithFormat:@"Missing expected key while decoding NSPointerArray"];

      [a3 failWithError:v8];
      return 0;
    }
  }

  else if (v10 >= 1)
  {
    for (i = 0; i < v10; ++i)
    {
      -[NSConcretePointerArray addPointer:](v5, "addPointer:", [a3 decodeObject]);
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*(*(self + 32) + 1) != 1)
  {
    return *(self + 40);
  }

  return self;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v6 = *(a3 + 5);
  if (v6 != self->count)
  {
    return 0;
  }

  personalityProps = self->slice.personalityProps;
  v8 = a3 + 8;
  v9 = *(a3 + 3);
  if (*(personalityProps + 3) != *(v9 + 24) || *(personalityProps + 1) != *(v9 + 8))
  {
    return 0;
  }

  if (v6)
  {
    v11 = 0;
    v12 = 0;
    p_internalProps = (a3 + 32);
    while (1)
    {
      v14 = (*(self->slice.internalProps + 3))(&self->slice.items[v11], 0);
      v15 = (*(v8[3] + 24))(*v8 + v11 * 8, 0);
      if (v14)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        p_internalProps = &self->slice.internalProps;
        goto LABEL_26;
      }

      v17 = v15;
      if (v15 && v14 == 0)
      {
        break;
      }

      if (v14 | v15)
      {
        v19 = (*(self->slice.personalityProps + 3))(v14, v15, *(self->slice.personalityProps + 1));
        (*(self->slice.internalProps + 4))(v14);
        (*(*p_internalProps + 4))(v17);
        if (!v19)
        {
          return 0;
        }
      }

      ++v12;
      ++v11;
      result = 1;
      if (v12 >= self->count)
      {
        return result;
      }
    }

    v14 = v15;
LABEL_26:
    (*(*p_internalProps + 4))(v14);
    return 0;
  }

  return 1;
}

- (void)encodeWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (encodeWithCoder__onceToken != -1)
  {
    dispatch_once(&encodeWithCoder__onceToken, &__block_literal_global_35);
  }

  options = self->options;
  if ((_NSPointerFunctionCoding_isValidOptions(options) & 1) == 0)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = @"NSHashTable has invalid options for encoding";
    goto LABEL_27;
  }

  count = self->count;
  v7 = _NSPointerFunctionCoding_bufferForCount(count);
  if (!v7)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695DA18];
    v19 = @"NSPointerArray is too big to encode";
LABEL_27:
    objc_exception_throw([v17 exceptionWithName:v18 reason:v19 userInfo:0]);
  }

  v8 = v7;
  v20 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(NSConcretePointerArray *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(self);
        }

        if (v11 > count)
        {
          goto LABEL_26;
        }

        v8[v11++] = *(*(&v22 + 1) + 8 * i);
        v20 = v11;
      }

      v10 = [(NSConcretePointerArray *)self countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v14 = (options & 7) != 5;
  if (v11 >= count)
  {
    v14 = 0;
  }

  if (v11 > count || v14)
  {
LABEL_26:
    free(v8);
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = @"NSPointerArray was modified while encoding";
    goto LABEL_27;
  }

  [a3 encodeValueOfObjCType:"i" at:&self->options];
  [a3 encodeValueOfObjCType:"i" at:&v20];
  if (v20)
  {
    for (j = 0; j < v20; ++j)
    {
      v16 = v8[j];
      if ((options & 7) == 5)
      {
        [a3 encodeConditionalObject:v16];
      }

      else
      {
        [a3 encodeObject:v16];
      }
    }
  }

  [a3 encodeObject:0];
  free(v8);
}

void __42__NSConcretePointerArray_encodeWithCoder___block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = _NSOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (a3->var0)
  {
    (*(self->slice.internalProps + 4))(a3->var3[0], a2);
    var0 = a3->var0;
  }

  else
  {
    a3->var2 = &self->mutations;
    if ((*(self->slice.internalProps + 1) & 1) == 0)
    {
      a3->var1 = self->slice.items;
      result = self->count;
      a3->var0 = result;
      return result;
    }

    var0 = 0;
    a3->var1 = a3->var3;
  }

  if (var0 >= self->count)
  {
    return 0;
  }

  v8 = (*(self->slice.internalProps + 3))(&self->slice.items[var0], 0);
  ++a3->var0;
  a3->var3[0] = v8;
  return 1;
}

- (void)arrayGrow:(unint64_t)a3
{
  p_slice = &self->slice;
  items = self->slice.items;
  v7 = (*(self->slice.internalProps + 1))(a3, a2);
  p_slice->items = v7;
  if (!v7)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"*** NSPointerArray unable to allocate memory -- allocation function failed" userInfo:0]);
  }

  if (self->capacity)
  {
    v8 = 0;
    v9 = items;
    do
    {
      if (*v9)
      {
        v10 = (*(p_slice->internalProps + 3))(v9, 0);
        if (v10)
        {
          v11 = v10;
          (*(p_slice->internalProps + 7))(p_slice->items, v8, v10);
          (*(p_slice->internalProps + 4))(v11);
        }
      }

      ++v8;
      capacity = self->capacity;
      ++v9;
    }

    while (v8 < capacity);
  }

  else
  {
    capacity = 0;
  }

  (*(p_slice->internalProps + 2))(items, capacity);
  self->capacity = a3;
}

- (void)pointerAtIndex:(unint64_t)a3
{
  count = self->count;
  if (count <= a3)
  {
    if (_CFExecutableLinkedOnOrAfter())
    {
      v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: attempt to access pointer at index %lu beyond bounds %lu", _NSMethodExceptionProem(self, a2), a3, self->count), 0}];
      objc_exception_throw(v10);
    }

    count = self->count;
  }

  if (count <= a3)
  {
    return 0;
  }

  p_slice = &self->slice;
  v8 = (*(p_slice->internalProps + 3))(&p_slice->items[a3], 0);
  (*(p_slice->internalProps + 5))();
  return v8;
}

- (void)addPointer:(void *)a3
{
  count = self->count;
  if (count == self->capacity)
  {
    [(NSConcretePointerArray *)self arrayGrow:2 * count];
  }

  if (a3)
  {
    acquisitionProps = self->slice.acquisitionProps;
    v7 = *(acquisitionProps + 1);
    if (v7)
    {
      a3 = v7(a3, *(self->slice.personalityProps + 1), *(acquisitionProps + 4));
    }
  }

  (*(self->slice.internalProps + 7))(self->slice.items, self->count, a3);
  if (!a3)
  {
    self->needsCompaction = 1;
  }

  ++self->count;
  ++self->mutations;
}

- (void)removePointerAtIndex:(unint64_t)a3
{
  v3 = a3;
  if (self->count <= a3)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: attempt to remove pointer at index %lu beyond bounds %lu", _NSMethodExceptionProem(self, a2), a3, self->count), 0}];
    objc_exception_throw(v13);
  }

  p_slice = &self->slice;
  v6 = (*(self->slice.internalProps + 3))(&self->slice.items[a3], 0);
  if (v6)
  {
    v7 = v6;
    v8 = *(self->slice.acquisitionProps + 2);
    if (v8)
    {
      v8(v6, *(self->slice.personalityProps + 1));
    }

    (*(self->slice.internalProps + 6))(&p_slice->items[v3]);
    (*(self->slice.internalProps + 4))(v7);
  }

  count = self->count;
  if (v3 + 1 < count)
  {
    v10 = 8 * v3 + 8;
    do
    {
      v11 = (*(self->slice.internalProps + 3))(p_slice->items + v10, 0);
      (*(self->slice.internalProps + 7))(p_slice->items, v3, v11);
      (*(self->slice.internalProps + 4))(v11);
      (*(self->slice.internalProps + 6))(p_slice->items + v10);
      count = self->count;
      v12 = v3 + 2;
      ++v3;
      v10 += 8;
    }

    while (v12 < count);
  }

  self->count = count - 1;
  ++self->mutations;
}

- (void)insertPointer:(void *)a3 atIndex:(unint64_t)a4
{
  count = self->count;
  if (count < a4)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: attempt to insert pointer at index %lu beyond bounds %lu", _NSMethodExceptionProem(self, a2), a4, self->count), 0}];
    objc_exception_throw(v12);
  }

  if (count == self->capacity)
  {
    [(NSConcretePointerArray *)self arrayGrow:2 * count];
    count = self->count;
  }

  if (count > a4)
  {
    v8 = 8 * count - 8;
    do
    {
      v9 = (*(self->slice.internalProps + 3))(self->slice.items + v8, 0);
      (*(self->slice.internalProps + 7))(self->slice.items, count, v9);
      (*(self->slice.internalProps + 4))(v9);
      (*(self->slice.internalProps + 6))(self->slice.items + v8);
      --count;
      v8 -= 8;
    }

    while (count > a4);
  }

  if (a3)
  {
    acquisitionProps = self->slice.acquisitionProps;
    v11 = *(acquisitionProps + 1);
    if (v11)
    {
      a3 = v11(a3, *(self->slice.personalityProps + 1), *(acquisitionProps + 4));
    }
  }

  (*(self->slice.internalProps + 7))(self->slice.items, a4, a3);
  if (!a3)
  {
    self->needsCompaction = 1;
  }

  ++self->count;
  ++self->mutations;
}

- (void)replacePointerAtIndex:(unint64_t)a3 withPointer:(void *)a4
{
  if (self->count <= a3)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: attempt to replace pointer at index %lu beyond bounds %lu", _NSMethodExceptionProem(self, a2), a3, self->count), 0}];
    objc_exception_throw(v13);
  }

  p_slice = &self->slice;
  v8 = (*(self->slice.internalProps + 3))(&self->slice.items[a3], 0);
  if (v8)
  {
    v9 = v8;
    v10 = *(self->slice.acquisitionProps + 2);
    if (v10)
    {
      v10(v8, *(self->slice.personalityProps + 1));
    }

    (*(self->slice.internalProps + 6))(&p_slice->items[a3]);
    (*(self->slice.internalProps + 4))(v9);
  }

  if (a4)
  {
    acquisitionProps = self->slice.acquisitionProps;
    v12 = *(acquisitionProps + 1);
    if (v12)
    {
      a4 = v12(a4, *(self->slice.personalityProps + 1), *(acquisitionProps + 4));
    }
  }

  (*(self->slice.internalProps + 7))(p_slice->items, a3, a4);
  if (!a4)
  {
    self->needsCompaction = 1;
  }

  ++self->mutations;
}

- (void)setCount:(unint64_t)a3
{
  if (self->count != a3)
  {
    ++self->mutations;
    count = self->count;
    if (count >= a3)
    {
      if (count > a3)
      {
        p_slice = &self->slice;
        do
        {
          v7 = count - 1;
          self->count = v7;
          v8 = (*(self->slice.internalProps + 3))(&p_slice->items[v7], 0);
          v9 = v8;
          v10 = *(self->slice.acquisitionProps + 2);
          if (v10)
          {
            v11 = v8 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11)
          {
            v10(v8, *(self->slice.personalityProps + 1));
          }

          (*(self->slice.internalProps + 6))(&p_slice->items[self->count]);
          (*(self->slice.internalProps + 4))(v9);
          count = self->count;
        }

        while (count > a3);
      }
    }

    else
    {
      if (self->capacity < a3)
      {
        [(NSConcretePointerArray *)self arrayGrow:a3];
      }

      self->count = a3;
    }
  }
}

- (unint64_t)indexOfPointer:(void *)a3
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->count)
  {
    p_slice = &self->slice;
    do
    {
      v6 = (*(self->slice.internalProps + 3))(p_slice->items, 0);
      if (v6)
      {
        v7 = v6;
        v8 = (*(self->slice.personalityProps + 3))(v6, a3, *(self->slice.personalityProps + 1));
        (*(self->slice.internalProps + 4))(v7);
        if (v8)
        {
          return 0;
        }
      }

      else
      {
        (*(self->slice.internalProps + 4))();
      }
    }

    while (self->count);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)removePointer:(void *)a3
{
  if (a3 && self->count)
  {
    p_slice = &self->slice;
    while (1)
    {
      v6 = (*(self->slice.internalProps + 3))(p_slice->items, 0);
      if (v6)
      {
        v7 = v6;
        if ((*(self->slice.personalityProps + 3))(v6, a3, *(self->slice.personalityProps + 1)))
        {
          break;
        }
      }

      if (!self->count)
      {
        return;
      }
    }

    v8 = *(self->slice.acquisitionProps + 2);
    if (v8)
    {
      v8(v7, *(self->slice.personalityProps + 1));
    }

    (*(self->slice.internalProps + 6))(&p_slice->items[self->count]);
    v9 = *(self->slice.internalProps + 4);

    v9(v7);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPointerArray allocWithZone:?], "initWithPointerFunctions:", [(NSConcretePointerArray *)self pointerFunctions]];
  count = self->count;
  if (count)
  {
    v6 = 0;
    p_slice = &self->slice;
    do
    {
      v8 = (*(p_slice->internalProps + 3))(&p_slice->items[v6], 0);
      [(NSConcretePointerArray *)v4 addPointer:v8];
      (*(p_slice->internalProps + 4))(v8);
      ++v6;
      --count;
    }

    while (count);
  }

  return v4;
}

@end