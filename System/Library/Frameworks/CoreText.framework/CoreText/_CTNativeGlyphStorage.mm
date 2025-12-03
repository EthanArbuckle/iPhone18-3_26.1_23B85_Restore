@interface _CTNativeGlyphStorage
+ (id)newWithCount:(int64_t)count capacity:(int64_t)capacity;
- (CGPoint)originAtIndex:(int64_t)index;
- (_CTNativeGlyphStorage)initWithCount:(int64_t)count capacity:(int64_t)capacity;
- (_CTNativeGlyphStorage)retain;
- (const)allocatedAdvances;
- (id)copyWithRange:(id)range;
- (int64_t)attachmentCountAtIndex:(int64_t)index;
- (void)dealloc;
- (void)initGlyphStackWithCapacity:(int64_t)capacity;
- (void)insertGlyphsAtRange:(id)range;
- (void)moveGlyphsFromRange:(id)range toIndex:(int64_t)index;
- (void)popGlyphAtIndex:(int64_t)index;
- (void)puntStringIndicesInRange:(id)range by:(int64_t)by;
- (void)pushGlyphAtIndex:(int64_t)index;
- (void)release;
- (void)setAdvance:(CGSize)advance atIndex:(int64_t)index;
- (void)setAttachmentCount:(int64_t)count atIndex:(int64_t)index;
- (void)setOrigin:(CGPoint)origin atIndex:(int64_t)index;
- (void)swapGlyphsAtIndex:(int64_t)index withIndex:(int64_t)withIndex;
@end

@implementation _CTNativeGlyphStorage

- (_CTNativeGlyphStorage)retain
{
  os_unfair_lock_lock_with_options();
  ++self->_retainCount;
  os_unfair_lock_unlock(&sRetainLock);
  return self;
}

- (void)release
{
  os_unfair_lock_lock_with_options();
  retainCount = self->_retainCount;
  if (retainCount)
  {
    self->_retainCount = retainCount - 1;

    os_unfair_lock_unlock(&sRetainLock);
  }

  else
  {
    os_unfair_lock_unlock(&sRetainLock);

    [(_CTNativeGlyphStorage *)self dealloc];
  }
}

- (void)dealloc
{
  free(self->_stack);
  advanceWidths = self->super._advanceWidths;
  if (advanceWidths != self->_preallocatedStorage)
  {
    free(advanceWidths);
  }

  free(self->super._advances);
  free(self->_attachCounts);
  free(self->_origins);
  if (!self->_preallocatedStorage)
  {
    goto LABEL_6;
  }

  os_unfair_lock_lock_with_options();
  if (qword_1ED567788)
  {
    os_unfair_lock_unlock(&_MergedGlobals_13);
LABEL_6:
    v5.receiver = self;
    v5.super_class = _CTNativeGlyphStorage;
    [(_CTNativeGlyphStorage *)&v5 dealloc];
    return;
  }

  v4 = objc_opt_class();
  objc_destructInstance(self);
  self->_stack = 0;
  self->super._advances = 0;
  self->_attachCounts = 0;
  self->_origins = 0;
  self->_retainCount = 0;
  objc_constructInstance(v4, self);
  qword_1ED567788 = self;

  os_unfair_lock_unlock(&_MergedGlobals_13);
}

+ (id)newWithCount:(int64_t)count capacity:(int64_t)capacity
{
  if (capacity > 16)
  {
    v11 = [self alloc];
  }

  else
  {
    os_unfair_lock_lock_with_options();
    v7 = qword_1ED567788;
    if (qword_1ED567788)
    {
      qword_1ED567788 = 0;
      os_unfair_lock_unlock(&_MergedGlobals_13);
      v7[1] = count;
      v7[11] = 16;
      v8 = v7[12];
      v7[3] = v8;
      v8[20] = 0u;
      v8[21] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[14] = 0u;
      v8[15] = 0u;
      v8[12] = 0u;
      v8[13] = 0u;
      v8[10] = 0u;
      v8[11] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v9 = v7[3];
      v7[5] = v9 + 256;
      v7[6] = v9 + 128;
      v7[2] = v9 + 320;
      return v7;
    }

    os_unfair_lock_unlock(&_MergedGlobals_13);
    Instance = class_createInstance(self, 0x160uLL);
    v13 = Instance;
    if (Instance)
    {
      Instance[12] = object_getIndexedIvars(Instance);
    }

    v11 = v13;
  }

  return [v11 initWithCount:count capacity:capacity];
}

- (_CTNativeGlyphStorage)initWithCount:(int64_t)count capacity:(int64_t)capacity
{
  v14.receiver = self;
  v14.super_class = _CTNativeGlyphStorage;
  v5 = [(_CTGlyphStorage *)&v14 initWithCount:count];
  v6 = v5;
  if (v5)
  {
    preallocatedStorage = v5->_preallocatedStorage;
    if (preallocatedStorage)
    {
      v5->_capacity = 16;
      v5->super._advanceWidths = preallocatedStorage;
      *(preallocatedStorage + 20) = 0u;
      *(preallocatedStorage + 21) = 0u;
      *(preallocatedStorage + 18) = 0u;
      *(preallocatedStorage + 19) = 0u;
      *(preallocatedStorage + 16) = 0u;
      *(preallocatedStorage + 17) = 0u;
      *(preallocatedStorage + 14) = 0u;
      *(preallocatedStorage + 15) = 0u;
      *(preallocatedStorage + 12) = 0u;
      *(preallocatedStorage + 13) = 0u;
      *(preallocatedStorage + 10) = 0u;
      *(preallocatedStorage + 11) = 0u;
      *(preallocatedStorage + 8) = 0u;
      *(preallocatedStorage + 9) = 0u;
      *(preallocatedStorage + 6) = 0u;
      *(preallocatedStorage + 7) = 0u;
      *(preallocatedStorage + 4) = 0u;
      *(preallocatedStorage + 5) = 0u;
      *(preallocatedStorage + 2) = 0u;
      *(preallocatedStorage + 3) = 0u;
      *preallocatedStorage = 0u;
      *(preallocatedStorage + 1) = 0u;
      advanceWidths = v5->super._advanceWidths;
      v5->super._props = (advanceWidths + 32);
      v5->super._stringIndices = (advanceWidths + 16);
      v9 = (advanceWidths + 40);
    }

    else
    {
      v5->_capacity = capacity;
      v10 = malloc_type_calloc(1uLL, 22 * capacity, 0x1000040BDFB0063uLL);
      v6->super._advanceWidths = v10;
      if (!v10)
      {

        return 0;
      }

      v11 = &v10[capacity];
      v12 = &v11[capacity];
      v6->super._props = v12;
      v6->super._stringIndices = v11;
      v9 = &v12[capacity];
    }

    v6->super._glyphs = v9;
  }

  return v6;
}

- (id)copyWithRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v6 = [objc_opt_class() newWithCount:var1 capacity:var1];
  v7 = v6;
  if (v6)
  {
    if (var1)
    {
      memmove(v6[2], &self->super._glyphs[var0], 2 * var1);
      advances = self->super._advances;
      if (advances)
      {
        memmove([v7 allocatedAdvances], &advances[var0], 16 * var1);
        v9 = 8 * var1;
      }

      else
      {
        v9 = 8 * var1;
        memmove(v7[3], &self->super._advanceWidths[var0], 8 * var1);
      }

      memmove(v7[5], &self->super._props[var0], 4 * var1);
      memmove(v7[6], &self->super._stringIndices[var0], v9);
    }

    else
    {
      if (self->super._advances)
      {
        [v6 allocatedAdvances];
      }

      v9 = 0;
    }

    if (self->_attachCounts)
    {
      v10 = reallocarray_DARWIN_EXTSN();
      v7[7] = v10;
      if (var1)
      {
        memmove(v10, &self->_attachCounts[var0], v9);
      }
    }

    if (self->_origins)
    {
      v11 = reallocarray_DARWIN_EXTSN();
      v7[8] = v11;
      if (var1)
      {
        memmove(v11, &self->_origins[var0], 16 * var1);
      }
    }
  }

  return v7;
}

- (const)allocatedAdvances
{
  result = self->super._advances;
  if (!result)
  {
    result = malloc_type_calloc(self->_capacity, 0x10uLL, 0x1000040451B5BE8uLL);
    self->super._advances = result;
    capacity = self->_capacity;
    if (capacity >= 1)
    {
      advanceWidths = self->super._advanceWidths;
      v6 = result;
      do
      {
        v7 = *advanceWidths++;
        v6->width = v7;
        ++v6;
        --capacity;
      }

      while (capacity);
    }
  }

  return result;
}

- (int64_t)attachmentCountAtIndex:(int64_t)index
{
  attachCounts = self->_attachCounts;
  if (attachCounts)
  {
    return attachCounts[index];
  }

  else
  {
    return 0;
  }
}

- (void)setAttachmentCount:(int64_t)count atIndex:(int64_t)index
{
  attachCounts = self->_attachCounts;
  if (count && !attachCounts)
  {
    attachCounts = malloc_type_calloc(self->_capacity, 8uLL, 0x100004000313F17uLL);
    self->_attachCounts = attachCounts;
  }

  if (attachCounts)
  {
    attachCounts[index] = count;
  }
}

- (CGPoint)originAtIndex:(int64_t)index
{
  origins = self->_origins;
  if (origins)
  {
    p_x = &origins[index].x;
  }

  else
  {
    p_x = MEMORY[0x1E695EFF8];
  }

  v5 = *p_x;
  v6 = p_x[1];
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)setOrigin:(CGPoint)origin atIndex:(int64_t)index
{
  y = origin.y;
  x = origin.x;
  origins = self->_origins;
  if (origins || (origin.x == *MEMORY[0x1E695EFF8] ? (v10 = origin.y == *(MEMORY[0x1E695EFF8] + 8)) : (v10 = 0), !v10 && (origins = malloc_type_calloc(self->_capacity, 0x10uLL, 0x1000040451B5BE8uLL), (self->_origins = origins) != 0)))
  {
    p_x = &origins[index].x;
    *p_x = x;
    p_x[1] = y;
  }
}

- (void)setAdvance:(CGSize)advance atIndex:(int64_t)index
{
  height = advance.height;
  width = advance.width;
  advances = self->super._advances;
  if (advances || advance.height != 0.0)
  {
    if (advances || ([(_CTNativeGlyphStorage *)self allocatedAdvances], (advances = self->super._advances) != 0))
    {
      p_width = &advances[index].width;
      *p_width = width;
      p_width[1] = height;
    }
  }

  else
  {
    self->super._advanceWidths[index] = advance.width;
  }
}

- (void)puntStringIndicesInRange:(id)range by:(int64_t)by
{
  if (range.var1)
  {
    v4 = &self->super._stringIndices[range.var0];
    v5 = 8 * range.var1;
    do
    {
      *v4++ += by;
      v5 -= 8;
    }

    while (v5);
  }
}

- (void)insertGlyphsAtRange:(id)range
{
  var0 = range.var0;
  count = self->super._count;
  var1 = range.var1;
  v6 = count + range.var1;
  capacity = self->_capacity;
  if (capacity >= count + range.var1)
  {
    goto LABEL_25;
  }

  if (2 * capacity <= v6)
  {
    v8 = count + range.var1;
  }

  else
  {
    v8 = 2 * capacity;
  }

  advanceWidths = self->super._advanceWidths;
  preallocatedStorage = self->_preallocatedStorage;
  v11 = malloc_good_size(22 * v8);
  if (v11 == 22 * v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11 / 0x16;
  }

  if (advanceWidths == preallocatedStorage)
  {
    v36 = malloc_type_calloc(1uLL, v11, 0xF00B3E91uLL);
    v13 = v36;
    v14 = &v36[v12];
    v15 = &v14[v12];
    v23 = v15 + 2 * v12;
    if (!self->super._advances)
    {
      v37 = self->super._count;
      if (!v37)
      {
        goto LABEL_11;
      }

      memmove(v36, self->super._advanceWidths, 8 * v37);
    }

    v38 = self->super._count;
    if (!v38)
    {
      goto LABEL_11;
    }

    memmove(v14, self->super._stringIndices, 8 * v38);
    v39 = self->super._count;
    if (!v39)
    {
      goto LABEL_11;
    }

    memmove(&v14[v12], self->super._props, 4 * v39);
    v40 = self->super._count;
    if (!v40)
    {
      goto LABEL_11;
    }

    v20 = 2 * v40;
    glyphs = self->super._glyphs;
    v21 = (v15 + 4 * v12);
  }

  else
  {
    v13 = reallocf(self->super._advanceWidths, v11);
    v14 = &v13[v12];
    v15 = &v14[v12];
    v16 = self->_capacity;
    v17 = &v13[v16];
    v18 = &v17[4 * v16];
    v41 = var0;
    v19 = self->super._count;
    memmove(v15 + 4 * v12, &v18[2 * v16], 2 * v19);
    memmove(v15, v18, 4 * v19);
    v20 = 8 * v19;
    var0 = v41;
    v21 = v14;
    glyphs = v17;
    v23 = v15 + 2 * v12;
  }

  memmove(v21, glyphs, v20);
LABEL_11:
  self->super._glyphs = v23;
  self->super._advanceWidths = v13;
  self->super._props = v15;
  self->super._stringIndices = v14;
  if (self->super._advances)
  {
    v24 = malloc_type_calloc(v12, 0x10uLL, 0x1000040451B5BE8uLL);
    v25 = v24;
    v26 = self->super._count;
    if (v26)
    {
      memmove(v24, self->super._advances, 16 * v26);
    }

    free(self->super._advances);
    self->super._advances = v25;
  }

  if (self->_attachCounts)
  {
    v27 = malloc_type_calloc(v12, 8uLL, 0x100004000313F17uLL);
    v28 = v27;
    v29 = self->super._count;
    if (v29)
    {
      memmove(v27, self->_attachCounts, 8 * v29);
    }

    free(self->_attachCounts);
    self->_attachCounts = v28;
  }

  if (self->_origins)
  {
    v30 = reallocarrayf_DARWIN_EXTSN();
    self->_origins = v30;
    if (v30)
    {
      v31 = self->super._count;
      v32 = v12 - v31;
      if ((v12 - v31) >= 1)
      {
        p_x = &v30[v31].x;
        v34 = v32 + 1;
        v35 = MEMORY[0x1E695EFF8];
        do
        {
          *p_x++ = *v35;
          --v34;
        }

        while (v34 > 1);
      }
    }
  }

  self->_capacity = v12;
  count = self->super._count;
  v6 = count + var1;
LABEL_25:
  self->super._count = v6;
  if (count - var0 >= 1)
  {

    [(_CTNativeGlyphStorage *)self moveGlyphsFromRange:var0 toIndex:?];
  }
}

- (void)swapGlyphsAtIndex:(int64_t)index withIndex:(int64_t)withIndex
{
  glyphs = self->super._glyphs;
  v5 = glyphs[index];
  glyphs[index] = glyphs[withIndex];
  glyphs[withIndex] = v5;
  advances = self->super._advances;
  if (advances)
  {
    v7 = advances[index];
    advances[index] = advances[withIndex];
    advances[withIndex] = v7;
  }

  else
  {
    advanceWidths = self->super._advanceWidths;
    v9 = advanceWidths[index];
    advanceWidths[index] = advanceWidths[withIndex];
    advanceWidths[withIndex] = v9;
  }

  props = self->super._props;
  stringIndices = self->super._stringIndices;
  v12 = props[index];
  props[index] = props[withIndex];
  props[withIndex] = v12;
  v13 = stringIndices[index];
  stringIndices[index] = stringIndices[withIndex];
  stringIndices[withIndex] = v13;
  attachCounts = self->_attachCounts;
  if (attachCounts)
  {
    v15 = attachCounts[index];
    attachCounts[index] = attachCounts[withIndex];
    attachCounts[withIndex] = v15;
  }

  origins = self->_origins;
  if (origins)
  {
    v17 = origins[index];
    origins[index] = origins[withIndex];
    origins[withIndex] = v17;
  }
}

- (void)moveGlyphsFromRange:(id)range toIndex:(int64_t)index
{
  var1 = range.var1;
  var0 = range.var0;
  memmove(&self->super._glyphs[index], &self->super._glyphs[range.var0], 2 * range.var1);
  advances = self->super._advances;
  if (advances)
  {
    v9 = &advances[index];
    v10 = &advances[var0];
    v11 = 16 * var1;
  }

  else
  {
    advanceWidths = self->super._advanceWidths;
    v9 = &advanceWidths[index];
    v10 = &advanceWidths[var0];
    v11 = 8 * var1;
  }

  memmove(v9, v10, v11);
  memmove(&self->super._props[index], &self->super._props[var0], 4 * var1);
  memmove(&self->super._stringIndices[index], &self->super._stringIndices[var0], 8 * var1);
  attachCounts = self->_attachCounts;
  if (attachCounts)
  {
    memmove(&attachCounts[index], &attachCounts[var0], 8 * var1);
  }

  origins = self->_origins;
  if (origins)
  {

    memmove(&origins[index], &origins[var0], 16 * var1);
  }
}

- (void)initGlyphStackWithCapacity:(int64_t)capacity
{
  if ((capacity - 1) >> 58 || (v4 = (capacity - 1) << 6, v5 = __CFADD__(v4, 80), v6 = v4 + 80, v5))
  {
    free(self->_stack);
    self->_stack = 0;
    return;
  }

  stack = self->_stack;
  if (!stack)
  {
    stack = malloc_type_malloc(v6, 0x10000400DF6D816uLL);
    goto LABEL_9;
  }

  if (stack->var0 < capacity)
  {
    stack = reallocf(stack, v6);
LABEL_9:
    self->_stack = stack;
    stack->var0 = capacity;
  }

  stack->var1 = 0;
}

- (void)pushGlyphAtIndex:(int64_t)index
{
  stack = self->_stack;
  if (stack)
  {
    var1 = stack->var1;
    if (var1 < stack->var0)
    {
      v7 = stack + 64 * var1;
      *(v7 + 8) = self->super._glyphs[index];
      v8 = v7 + 16;
      advances = self->super._advances;
      if (advances)
      {
        *(v8 + 8) = advances[index];
      }

      else
      {
        *(v8 + 1) = *&self->super._advanceWidths[index];
        *(v8 + 2) = 0;
      }

      stringIndices = self->super._stringIndices;
      *(v8 + 6) = self->super._props[index];
      *(v8 + 4) = stringIndices[index];
      *(v8 + 5) = [(_CTNativeGlyphStorage *)self attachmentCountAtIndex:index];
      [(_CTNativeGlyphStorage *)self originAtIndex:index];
      *(v8 + 6) = v11;
      *(v8 + 7) = v12;
      ++self->_stack->var1;
    }
  }
}

- (void)popGlyphAtIndex:(int64_t)index
{
  stack = self->_stack;
  if (stack)
  {
    var1 = stack->var1;
    v6 = var1 < 1;
    v7 = var1 - 1;
    if (!v6)
    {
      v10 = stack + 64 * v7;
      self->super._glyphs[index] = *(v10 + 8);
      stringIndices = self->super._stringIndices;
      self->super._props[index] = *(v10 + 10);
      stack->var1 = v7;
      stringIndices[index] = *(v10 + 6);
      [(_CTNativeGlyphStorage *)self setAdvance:*(v10 + 3) atIndex:*(v10 + 4)];
      [(_CTNativeGlyphStorage *)self setAttachmentCount:*(v10 + 7) atIndex:index];
      v12 = *(v10 + 8);
      v13 = *(v10 + 9);

      [(_CTNativeGlyphStorage *)self setOrigin:index atIndex:v12, v13];
    }
  }
}

@end