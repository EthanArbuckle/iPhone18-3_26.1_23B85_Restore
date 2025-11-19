@interface NSIndexSet
+ (NSIndexSet)allocWithZone:(_NSZone *)a3;
+ (NSIndexSet)indexSet;
+ (NSIndexSet)indexSetWithBitfield:(unint64_t)a3;
+ (NSIndexSet)indexSetWithIndex:(NSUInteger)value;
+ (NSIndexSet)indexSetWithIndexes:(const unint64_t *)a3 count:(unint64_t)a4;
+ (NSIndexSet)indexSetWithIndexesInRange:(NSRange)range;
+ (id)_alloc;
+ (void)initialize;
- (BOOL)containsIndex:(NSUInteger)value;
- (BOOL)containsIndexes:(NSIndexSet *)indexSet;
- (BOOL)containsIndexesInRange:(NSRange)range;
- (BOOL)getBitfield:(unint64_t *)a3;
- (BOOL)intersectsIndexesInRange:(NSRange)range;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIndexSet:(NSIndexSet *)indexSet;
- (NSIndexSet)indexesInRange:(NSRange)range options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSIndexSet)indexesWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSIndexSet)initWithBitfield:(unint64_t)a3;
- (NSIndexSet)initWithCoder:(id)a3;
- (NSIndexSet)initWithIndex:(NSUInteger)value;
- (NSIndexSet)initWithIndexSet:(NSIndexSet *)indexSet;
- (NSIndexSet)initWithIndexes:(const unint64_t *)a3 count:(unint64_t)a4;
- (NSIndexSet)initWithIndexesInRange:(NSRange)range;
- (NSUInteger)count;
- (NSUInteger)countOfIndexesInRange:(NSRange)range;
- (NSUInteger)firstIndex;
- (NSUInteger)getIndexes:(NSUInteger *)indexBuffer maxCount:(NSUInteger)bufferSize inIndexRange:(NSRangePointer)range;
- (NSUInteger)indexInRange:(NSRange)range options:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSUInteger)indexWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate;
- (NSUInteger)lastIndex;
- (_NSRange)rangeAtIndex:(unint64_t)a3;
- (id)_init;
- (id)_numberEnumerator;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)replacementObjectForPortCoder:(id)a3;
- (uint64_t)_indexClosestToIndex:(int)a3 equalAllowed:(int)a4 following:;
- (unint64_t)__getContainmentVector:(BOOL *)a3 inRange:(_NSRange)a4;
- (unint64_t)_indexAtIndex:(unint64_t)a3;
- (unint64_t)_indexOfRangeAfterOrContainingIndex:(unint64_t)a3;
- (unint64_t)_indexOfRangeBeforeOrContainingIndex:(unint64_t)a3;
- (unint64_t)_indexOfRangeContainingIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unint64_t)rangeCount;
- (void)__forwardEnumerateRanges:(id)a3;
- (void)_setContentToContentFromIndexSet:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateIndexesInRange:(NSRange)range options:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateIndexesUsingBlock:(void *)block;
- (void)enumerateIndexesWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateRangesInRange:(NSRange)range options:(NSEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateRangesUsingBlock:(void *)block;
- (void)enumerateRangesWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block;
@end

@implementation NSIndexSet

- (unint64_t)hash
{
  result = [(NSIndexSet *)self count];
  if (result)
  {
    v4 = result;
    v5 = [(NSIndexSet *)self firstIndex];
    return v5 + v4 + [(NSIndexSet *)self lastIndex];
  }

  return result;
}

- (NSUInteger)count
{
  if ((self & 0x8000000000000000) != 0)
  {
    v2 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v2 = 0;
    }

    v3 = v2 ^ self;
    v4 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v3 & 7) == 0)
    {
      v4 = 0xFFFFFFFFFFFFFLL;
    }

    location = v4 & (v3 >> 3);
    goto LABEL_12;
  }

  indexSetFlags = self->_indexSetFlags;
  if ((*&indexSetFlags & 2) != 0)
  {
    location = self->_internal._singleRange._range.location;
LABEL_12:
    v9 = vcnt_s8(location);
    v9.i16[0] = vaddlv_u8(v9);
    return v9.u32[0];
  }

  if (*&indexSetFlags)
  {
    return self->_internal._singleRange._range.length;
  }

  v7 = self->_internal._singleRange._range.location;
  if (*(v7 + 8))
  {
    return *(v7 + 16);
  }

  else
  {
    return 0;
  }
}

- (NSUInteger)firstIndex
{
  if ((self & 0x8000000000000000) != 0)
  {
    v2 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v2 = 0;
    }

    v3 = v2 ^ self;
    v4 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v3 & 7) == 0)
    {
      v4 = 0xFFFFFFFFFFFFFLL;
    }

    v5 = v4 & (v3 >> 3);
    goto LABEL_12;
  }

  indexSetFlags = self->_indexSetFlags;
  if ((*&indexSetFlags & 2) == 0)
  {
    if (*&indexSetFlags)
    {
      if (self->_internal._singleRange._range.length)
      {
        p_internal = &self->_internal;
        return p_internal->_singleRange._range.location;
      }
    }

    else
    {
      location = self->_internal._singleRange._range.location;
      if (*(location + 8))
      {
        p_internal = (location + 16 * *(location + 24) + 64);
        return p_internal->_singleRange._range.location;
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = self->_internal._singleRange._range.location;
LABEL_12:
  v9 = __clz(__rbit64(v5));
  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v10 = -1;
  }

  if (v10 < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v10;
  }
}

- (NSUInteger)lastIndex
{
  if ((self & 0x8000000000000000) != 0)
  {
    v2 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v2 = 0;
    }

    v3 = v2 ^ self;
    v4 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v3 & 7) == 0)
    {
      v4 = 0xFFFFFFFFFFFFFLL;
    }

    location = v4 & (v3 >> 3);
    if (!location)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    return __clz(location) ^ 0x3F;
  }

  indexSetFlags = self->_indexSetFlags;
  if ((*&indexSetFlags & 2) != 0)
  {
    location = self->_internal._singleRange._range.location;
    if (location)
    {
      return __clz(location) ^ 0x3F;
    }
  }

  else if (*&indexSetFlags)
  {
    if (self->_internal._singleRange._range.length)
    {
      v10 = 0;
      p_internal = &self->_internal;
      return p_internal[v10]._singleRange._range.location + p_internal[v10]._singleRange._range.length - 1;
    }
  }

  else
  {
    v7 = self->_internal._singleRange._range.location;
    v8 = *(v7 + 8);
    if (v8)
    {
      p_internal = (v7 + 16 * *(v7 + 24) + 64);
      v10 = v8 - 1;
      return p_internal[v10]._singleRange._range.location + p_internal[v10]._singleRange._range.length - 1;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSIndexSet;
  result = [(NSIndexSet *)&v3 init];
  if (result)
  {
    *(result + 2) |= 3u;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if ((*&self->_indexSetFlags & 1) == 0)
  {
    free(self->_internal._multipleRanges._data);
  }

  v3.receiver = self;
  v3.super_class = NSIndexSet;
  [(NSIndexSet *)&v3 dealloc];
}

- (unint64_t)rangeCount
{
  if ((self & 0x8000000000000000) != 0)
  {
    v2 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v2 = 0;
    }

    v3 = v2 ^ self;
    v4 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v3 & 7) == 0)
    {
      v4 = 0xFFFFFFFFFFFFFLL;
    }

    location = v4 & (v3 >> 3);
    if (location)
    {
      goto LABEL_7;
    }

    return 0;
  }

  indexSetFlags = self->_indexSetFlags;
  if ((*&indexSetFlags & 2) == 0)
  {
    if (*&indexSetFlags)
    {
      return self->_internal._singleRange._range.length != 0;
    }

    else
    {
      return *(self->_internal._singleRange._range.location + 8);
    }
  }

  location = self->_internal._singleRange._range.location;
  if (!location)
  {
    return 0;
  }

LABEL_7:
  result = 1;
  v7 = location;
  while (1)
  {
    v8 = (-1 << __clz(__rbit64(v7))) & ~location;
    if (!v8)
    {
      break;
    }

    ++result;
    v7 = (-1 << __clz(__rbit64(v8))) & location;
    if (!v7)
    {
      return --result;
    }
  }

  return result;
}

+ (NSIndexSet)indexSet
{
  if (_NSTaggedIndexSetAllowed == 1 && NSIndexSet == a1)
  {
    result = 0x8580000000000007;
    v5 = *MEMORY[0x1E69E5910] ^ 0x8580000000000007;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  else
  {
    v3 = objc_alloc_init(a1);

    return v3;
  }

  return result;
}

+ (void)initialize
{
  if (NSIndexSet == a1)
  {
    _objc_registerTaggedPointerClass();
    _NSTaggedIndexSetAllowed = 1;
  }
}

+ (id)_alloc
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___NSIndexSet;
  return objc_msgSendSuper2(&v3, sel_allocWithZone_, 0);
}

- (id)description
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [NSMutableString stringWithCapacity:128];
  v12.receiver = self;
  v12.super_class = NSIndexSet;
  [(NSMutableString *)v3 appendString:[(NSIndexSet *)&v12 description]];
  v4 = [(NSIndexSet *)self count];
  if (v4)
  {
    v5 = v4;
    v6 = [(NSIndexSet *)self rangeCount];
    -[NSMutableString appendFormat:](v3, "appendFormat:", @"[number of indexes: %lu (in %lu ranges), indexes: ("), v5, v6;
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        if (i)
        {
          [(NSMutableString *)v3 appendString:@" "];
        }

        v8 = [(NSIndexSet *)self rangeAtIndex:i];
        v10 = v9;
        [(NSMutableString *)v3 appendFormat:@"%lu", v8];
        if (v10 >= 2)
        {
          [(NSMutableString *)v3 appendFormat:@"-%lu", v10 + v8 - 1];
        }
      }
    }

    [(NSMutableString *)v3 appendString:@"]"]);
  }

  else
  {
    [(NSMutableString *)v3 appendFormat:@"(no indexes)"];
  }

  return v3;
}

+ (NSIndexSet)allocWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  if (v4 == NSIndexSet)
  {
    return &___placeholderIndexSet;
  }

  return NSAllocateObject(v4, 0, a3);
}

+ (NSIndexSet)indexSetWithIndex:(NSUInteger)value
{
  if (_NSTaggedIndexSetAllowed == 1 && value <= 0x33 && NSIndexSet == a1)
  {
    result = ((8 << value) & 0x7FFFFFFFFFFFF8 | 0x8580000000000007);
    v4 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v4 & 0xC000000000000007) != 0)
    {
      return (v4 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v4 & 7)));
    }
  }

  else
  {
    v5 = [[a1 alloc] initWithIndex:value];

    return v5;
  }

  return result;
}

+ (NSIndexSet)indexSetWithIndexesInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  if (NSIndexSet != a1)
  {
    goto LABEL_15;
  }

  v5 = range.location + range.length;
  if (range.length && (v5 & 0x8000000000000000) != 0)
  {
    v9 = _NSMethodExceptionProem(a1, a2);
    v12.location = location;
    v12.length = length;
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range %@ exceeds maximum index value of NSNotFound - 1", v9, NSStringFromRange(v12)), 0}];
    objc_exception_throw(v10);
  }

  if (_NSTaggedIndexSetAllowed == 1 && (!range.length || range.location <= 0x33 && v5 <= 0x34 && v5 >= range.location))
  {
    if (range.length)
    {
      result = ((8 * ((0xFFFFFFFFFFFFFFFFLL >> -LOBYTE(range.length) << SLOBYTE(range.location)) & 0xFFFFFFFFFFFFFLL)) | 0x8580000000000007);
    }

    else
    {
      result = 0x8580000000000007;
    }

    v7 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v7 & 0xC000000000000007) != 0)
    {
      return (v7 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v7 & 7)));
    }
  }

  else
  {
LABEL_15:
    v8 = [[a1 alloc] initWithIndexesInRange:{range.location, range.length}];

    return v8;
  }

  return result;
}

+ (NSIndexSet)indexSetWithIndexes:(const unint64_t *)a3 count:(unint64_t)a4
{
  if (a4)
  {
    v5 = 0;
    v6 = a4 - 1;
    while (1)
    {
      v7 = a3[v6];
      if (v7 > 0x3F)
      {
        if (v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = [[a1 alloc] initWithIndexes:a3 count:a4];

          return v9;
        }
      }

      else
      {
        v5 |= 1 << v7;
      }

      if (--v6 == -1)
      {

        return [a1 indexSetWithBitfield:v5];
      }
    }
  }

  return [a1 indexSet];
}

+ (NSIndexSet)indexSetWithBitfield:(unint64_t)a3
{
  if (_NSTaggedIndexSetAllowed == 1 && NSIndexSet == a1 && (!a3 || (__clz(a3) ^ 0x3C) <= 0x33))
  {
    result = ((8 * (a3 & 0xFFFFFFFFFFFFFLL)) | 0x8580000000000007);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  else
  {
    v3 = [[a1 alloc] initWithBitfield:a3];

    return v3;
  }

  return result;
}

- (NSIndexSet)initWithIndex:(NSUInteger)value
{
  v3 = value;
  if (value > 0x3F)
  {

    return [(NSIndexSet *)self initWithIndexesInRange:?];
  }

  else
  {
    result = [(NSIndexSet *)self _init];
    if (result)
    {
      result->_internal._singleRange._range.location = 1 << v3;
    }
  }

  return result;
}

- (NSIndexSet)initWithIndexesInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  result = [(NSIndexSet *)self _init];
  if (result)
  {
    v7 = location + length;
    if (length && (v7 & 0x8000000000000000) != 0)
    {
      v9 = result;
      v10 = _NSMethodExceptionProem(result, a2);
      v12.location = location;
      v12.length = length;
      v11 = [NSString stringWithFormat:@"%@: Range %@ exceeds maximum index value of NSNotFound - 1", v10, NSStringFromRange(v12)];

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v11 userInfo:0]);
    }

    if (length && (location > 0x3F || v7 > 0x40 || v7 < location))
    {
      *&result->_indexSetFlags &= ~2u;
      result->_internal._singleRange._range.location = location;
      v8 = 24;
    }

    else
    {
      if (length)
      {
        length = 0xFFFFFFFFFFFFFFFFLL >> -length << location;
      }

      else
      {
        length = 0;
      }

      v8 = 16;
    }

    *(&result->super.isa + v8) = length;
  }

  return result;
}

- (void)_setContentToContentFromIndexSet:(id)a3
{
  if (!a3)
  {
    return;
  }

  v5 = objc_opt_class();
  if (NSIndexSet != v5 && _NSConstantIndexSet != v5 && NSMutableIndexSet != v5)
  {
    v37 = [[NSIndexSet alloc] initWithIndexSet:a3];
    [(NSIndexSet *)self _setContentToContentFromIndexSet:v37];

    return;
  }

  indexSetFlags = (*&self->_indexSetFlags | 1);
  self->_indexSetFlags = indexSetFlags;
  if ((a3 & 0x8000000000000000) != 0)
  {
    v7 = *MEMORY[0x1E69E5910];
    if ((~a3 & 0xC000000000000007) == 0)
    {
      v7 = 0;
    }

    v8 = v7 ^ a3;
    v9 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v8 & 7) == 0)
    {
      v9 = 0xFFFFFFFFFFFFFLL;
    }

    v10 = v9 & (v8 >> 3);
    goto LABEL_37;
  }

  if ((*(a3 + 8) & 2) != 0)
  {
    v10 = *(a3 + 2);
LABEL_37:
    self->_indexSetFlags = (*&indexSetFlags | 2);
    self->_internal._singleRange._range.location = v10;
    return;
  }

  v11 = [a3 lastIndex];
  v12 = *(a3 + 2);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL || v11 <= 0x3F)
  {
    v16 = 0;
    v17 = 0;
    v10 = 0;
    v18 = a3 + 16;
    v19 = a3 + 24;
    if ((v12 & 2) != 0)
    {
      v19 = a3 + 16;
    }

    while (1)
    {
      v20 = v19;
      if ((v12 & 3) == 0)
      {
        v20 = (*v18 + 8);
      }

      v21 = *v20;
      v22 = *v20 != 0;
      if ((v12 & 1) == 0 && v21)
      {
        v22 = *(*v18 + 8);
      }

      if (v17 >= v22)
      {
        break;
      }

      v23 = a3 + 16;
      if ((v12 & 1) == 0)
      {
        v23 = (*v18 + 16 * *(*v18 + 24) + 64);
      }

      v24 = &v23[v16];
      v26 = *v24;
      v25 = *(v24 + 1);
      v27 = 0xFFFFFFFFFFFFFFFFLL >> -v25 << v26;
      if (v25)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v10 |= v28;
      ++v17;
      v16 += 16;
    }

    indexSetFlags = self->_indexSetFlags;
    goto LABEL_37;
  }

  v13 = self->_indexSetFlags;
  if (v12)
  {
    self->_indexSetFlags = (*&v13 & 0xFFFFFFFD);
    v29 = (a3 + 16);
    if ((*(a3 + 8) & 1) == 0)
    {
      v29 = (v29->_singleRange._range.location + 16 * *(v29->_singleRange._range.location + 24) + 64);
    }

    self->_internal = *v29;
  }

  else
  {
    self->_indexSetFlags = (*&v13 & 0xFFFFFFFC);
    v14 = *(a3 + 2);
    if ((v14 & 2) != 0)
    {
      v15 = a3 + 16;
    }

    else if (v14)
    {
      v15 = a3 + 24;
    }

    else
    {
      v15 = (*(a3 + 2) + 8);
    }

    if (*v15)
    {
      if (v14)
      {
        v30 = 1;
      }

      else
      {
        v30 = *(*(a3 + 2) + 8);
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = malloc_type_malloc(16 * v30 + 64, 0x1080040E45EEDC5uLL);
    self->_internal._singleRange._range.location = v31;
    p_internal = &self->_internal;
    atomic_store(0, v31 + 7);
    *p_internal->_singleRange._range.location = v30;
    *(p_internal->_singleRange._range.location + 8) = v30;
    *(p_internal->_singleRange._range.location + 16) = 0;
    *(p_internal->_singleRange._range.location + 24) = 0;
    v33 = p_internal;
    if ((*(&p_internal[-1]._singleBitfield + 1) & 1) == 0)
    {
      v33 = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
    }

    v34 = a3 + 16;
    if ((*(a3 + 8) & 1) == 0)
    {
      v34 = (*v34 + 16 * *(*v34 + 24) + 64);
    }

    memcpy(v33, v34, 16 * v30);
    if (v30)
    {
      p_length = &v33->_singleRange._range.length;
      do
      {
        v36 = *p_length;
        p_length += 2;
        *(p_internal->_singleRange._range.location + 16) += v36;
        --v30;
      }

      while (v30);
    }
  }
}

- (NSIndexSet)initWithIndexSet:(NSIndexSet *)indexSet
{
  v4 = [(NSIndexSet *)self _init];
  v5 = v4;
  if (v4)
  {
    [(NSIndexSet *)v4 _setContentToContentFromIndexSet:indexSet];
  }

  return v5;
}

- (NSIndexSet)initWithIndexes:(const unint64_t *)a3 count:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = 0;
    v7 = a4 - 1;
    while (1)
    {
      v8 = a3[v7];
      if (v8 > 0x3F)
      {
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v10 = _NSGroupIndexesIntoSimpleRanges(a3, a4);
          v11 = objc_alloc_init(NSMutableIndexSet);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v12 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              v15 = 0;
              do
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = [*(*(&v20 + 1) + 8 * v15) rangeValue];
                [(NSMutableIndexSet *)v11 addIndexesInRange:v16, v17];
                ++v15;
              }

              while (v13 != v15);
              v13 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
            }

            while (v13);
          }

          v18 = [(NSIndexSet *)self initWithIndexSet:v11];

          return v18;
        }
      }

      else
      {
        v6 |= 1 << v8;
      }

      if (--v7 == -1)
      {
        goto LABEL_9;
      }
    }
  }

  v6 = 0;
LABEL_9:

  return [(NSIndexSet *)self initWithBitfield:v6];
}

- (NSIndexSet)initWithBitfield:(unint64_t)a3
{
  if (_NSTaggedIndexSetAllowed == 1 && objc_opt_class() == NSIndexSet && (!a3 || (__clz(a3) ^ 0x3C) <= 0x33))
  {

    result = ((8 * (a3 & 0xFFFFFFFFFFFFFLL)) | 0x8580000000000007);
    v6 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v6 & 0xC000000000000007) != 0)
    {
      return (v6 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v6 & 7)));
    }
  }

  else
  {
    result = [(NSIndexSet *)self _init];
    if (result)
    {
      result->_internal._singleRange._range.location = a3;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(NSIndexSet *)self rangeCount];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:v5 forKey:@"NSRangeCount"];
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = [(NSIndexSet *)self rangeAtIndex:0];
        v8 = v7;
        [a3 encodeInteger:v6 forKey:@"NSLocation"];

        [a3 encodeInteger:v8 forKey:@"NSLength"];
      }

      else
      {
        v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:2 * v5 + 16];
        for (i = 0; i != v5; ++i)
        {
          v14 = [(NSIndexSet *)self rangeAtIndex:i];
          v16 = v24;
          if (v14 >= 0x80)
          {
            v17 = v14;
            do
            {
              *v16++ = v17 | 0x80;
              v14 = v17 >> 7;
              v18 = v17 >> 14;
              v17 >>= 7;
            }

            while (v18);
          }

          *v16 = v14;
          v19 = v16 + 1;
          if (v15 < 0x80)
          {
            LOBYTE(v20) = v15;
          }

          else
          {
            do
            {
              *v19++ = v15 | 0x80;
              v20 = v15 >> 7;
              v21 = v15 >> 14;
              v15 >>= 7;
            }

            while (v21);
          }

          *v19 = v20;
          [v12 appendBytes:v24 length:v19 - v24 + 1];
        }

        [a3 encodeObject:v12 forKey:@"NSRangeData"];
      }
    }
  }

  else
  {
    v24[0] = v5;
    [a3 encodeValueOfObjCType:"I" at:v24];
    if (v5)
    {
      for (j = 0; j != v5; ++j)
      {
        v10 = [(NSIndexSet *)self rangeAtIndex:j];
        v22 = v11;
        v23 = v10;
        [a3 encodeValueOfObjCType:"I" at:&v23];
        [a3 encodeValueOfObjCType:"I" at:&v22];
      }
    }
  }
}

- (NSIndexSet)initWithCoder:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(NSMutableIndexSet);
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    LODWORD(v21) = 0;
    [a3 decodeValueOfObjCType:"I" at:&v21 size:4];
    v8 = v21;
    if (v21)
    {
      do
      {
        v20 = 0;
        [a3 decodeValueOfObjCType:"I" at:&v20 + 4 size:4];
        [a3 decodeValueOfObjCType:"I" at:&v20 size:4];
        [(NSMutableIndexSet *)v5 addIndexesInRange:HIDWORD(v20), v20];
        --v8;
      }

      while (v8);
    }

    goto LABEL_17;
  }

  v6 = [a3 decodeIntegerForKey:@"NSRangeCount"];
  if (v6)
  {
    v7 = v6;
    if (v6 == 1)
    {
      -[NSMutableIndexSet addIndexesInRange:](v5, "addIndexesInRange:", [a3 decodeIntegerForKey:@"NSLocation"], objc_msgSend(a3, "decodeIntegerForKey:", @"NSLength"));
      goto LABEL_17;
    }

    if (([a3 containsValueForKey:@"NSRangeData"] & 1) == 0)
    {

      v26 = @"NSLocalizedDescription";
      v27[0] = @"[NSIndexSet initWithCoder:] decoder did not provide range data";
      [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v27, &v26, 1))}];
      self = 0;
      goto LABEL_17;
    }

    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSRangeData"];
    v10 = [v9 bytes];
    v21 = v10;
    if ([a3 requiresSecureCoding])
    {
      if (v9)
      {
        v11 = [v9 length];
        for (i = 0; v11; --v11)
        {
          v13 = *v10++;
          i += (v13 >> 7) ^ 1;
        }

        if (i == 2 * v7)
        {
          goto LABEL_14;
        }

        v22 = @"NSLocalizedDescription";
        v23 = @"Range data did not match expected length.";
        v17 = MEMORY[0x1E695DF20];
        v18 = &v23;
        v19 = &v22;
      }

      else
      {

        v24 = @"NSLocalizedDescription";
        v25 = @"Range data did not match expected length.";
        v17 = MEMORY[0x1E695DF20];
        v18 = &v25;
        v19 = &v24;
      }

      [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, objc_msgSend(v17, "dictionaryWithObjects:forKeys:count:", v18, v19, 1))}];
      return 0;
    }

    do
    {
LABEL_14:
      v14 = _NSGetUnsignedInt2(&v21);
      [(NSMutableIndexSet *)v5 addIndexesInRange:v14, _NSGetUnsignedInt2(&v21)];
      --v7;
    }

    while (v7);
  }

LABEL_17:
  v15 = [(NSIndexSet *)self initWithIndexSet:v5];

  return v15;
}

- (unint64_t)_indexOfRangeContainingIndex:(unint64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ((self & 0x8000000000000000) != 0 || (indexSetFlags = self->_indexSetFlags, (*&indexSetFlags & 2) != 0))
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__NSIndexSet__indexOfRangeContainingIndex___block_invoke;
    v13[3] = &unk_1E69F3FA8;
    v13[5] = v14;
    v13[6] = a3;
    v13[4] = &v15;
    [(NSIndexSet *)self enumerateRangesUsingBlock:v13];
    v9 = v16[3];
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(&v15, 8);
    return v9;
  }

  if (*&indexSetFlags)
  {
    if (self->_internal._singleRange._range.length)
    {
      v9 = 0;
      p_internal = &self->_internal;
      goto LABEL_17;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  location = self->_internal._singleRange._range.location;
  v5 = *(location + 8);
  if (!v5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  p_internal = (location + 16 * *(location + 24) + 64);
  v7 = v5 - 1;
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = (v8 + v7) >> 1;
      v10 = &p_internal[v9];
      if (v10->_singleRange._range.location <= a3)
      {
        if (v10->_singleRange._range.location + v10->_singleRange._range.length - 1 >= a3)
        {
          return v9;
        }

        v8 = v9 + 1;
      }

      else
      {
        v7 = (v8 + v7) >> 1;
      }
    }

    while (v8 < v7);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

LABEL_17:
  v11 = &p_internal[v9];
  if (v11->_singleRange._range.location > a3 || v11->_singleRange._range.location + v11->_singleRange._range.length - 1 < a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

void *__43__NSIndexSet__indexOfRangeContainingIndex___block_invoke(void *result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = result[6];
  if (v4 >= a2 && v4 - a2 < a3)
  {
    *(*(result[4] + 8) + 24) = *(*(result[5] + 8) + 24);
LABEL_7:
    *a4 = 1;
    goto LABEL_8;
  }

  if (v4 < a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  ++*(*(result[5] + 8) + 24);
  return result;
}

- (unint64_t)_indexOfRangeBeforeOrContainingIndex:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if ((self & 0x8000000000000000) != 0 || (indexSetFlags = self->_indexSetFlags, (*&indexSetFlags & 2) != 0))
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v16[3] = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__NSIndexSet__indexOfRangeBeforeOrContainingIndex___block_invoke;
    v15[3] = &unk_1E69F3FA8;
    v15[5] = v16;
    v15[6] = a3;
    v15[4] = &v17;
    [(NSIndexSet *)self enumerateRangesUsingBlock:v15];
    v8 = v18[3];
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v17, 8);
    return v8;
  }

  if (*&indexSetFlags)
  {
    if (self->_internal._singleRange._range.length)
    {
      v7 = 0;
      goto LABEL_10;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = *(self->_internal._singleRange._range.location + 8);
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6 - 1;
LABEL_10:
  if ([(NSIndexSet *)self lastIndex]<= a3)
  {
    return v7;
  }

  if ([(NSIndexSet *)self firstIndex]> a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  p_internal = &self->_internal;
  if ((*&self->_indexSetFlags & 1) == 0)
  {
    p_internal = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
  }

  v11 = 0;
  while (v11 < v7)
  {
    v8 = (v11 + v7) >> 1;
    v12 = &p_internal[v8];
    if (v12->_singleRange._range.location <= a3)
    {
      if (v12->_singleRange._range.location + v12->_singleRange._range.length - 1 >= a3)
      {
        return v8;
      }

      v11 = v8 + 1;
    }

    else
    {
      v7 = (v11 + v7) >> 1;
    }
  }

  location = p_internal[v11]._singleRange._range.location;
  v14 = v11 - 1;
  if (!v11)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (location > a3)
  {
    return v14;
  }

  else
  {
    return v11;
  }
}

void *__51__NSIndexSet__indexOfRangeBeforeOrContainingIndex___block_invoke(void *result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = result[6];
  if (v4 >= a2 && v4 - a2 < a3)
  {
    *(*(result[4] + 8) + 24) = *(*(result[5] + 8) + 24);
LABEL_8:
    *a4 = 1;
    goto LABEL_9;
  }

  if (a2 + a3 >= v4)
  {
    if (v4 >= a2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(*(result[4] + 8) + 24) = *(*(result[5] + 8) + 24);
LABEL_9:
  ++*(*(result[5] + 8) + 24);
  return result;
}

- (unint64_t)_indexOfRangeAfterOrContainingIndex:(unint64_t)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if ((self & 0x8000000000000000) != 0 || (indexSetFlags = self->_indexSetFlags, (*&indexSetFlags & 2) != 0))
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__NSIndexSet__indexOfRangeAfterOrContainingIndex___block_invoke;
    v16[3] = &unk_1E69F3FA8;
    v16[5] = v17;
    v16[6] = a3;
    v16[4] = &v18;
    [(NSIndexSet *)self enumerateRangesUsingBlock:v16];
    v8 = v19[3];
    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&v18, 8);
    return v8;
  }

  if (*&indexSetFlags)
  {
    if (self->_internal._singleRange._range.length)
    {
      v7 = 0;
      goto LABEL_10;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = *(self->_internal._singleRange._range.location + 8);
  if (!v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6 - 1;
LABEL_10:
  if ([(NSIndexSet *)self firstIndex]>= a3)
  {
    return 0;
  }

  if ([(NSIndexSet *)self lastIndex]< a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  p_internal = &self->_internal;
  if ((*&self->_indexSetFlags & 1) == 0)
  {
    p_internal = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
  }

  v11 = 0;
  if (v7)
  {
    v12 = v7;
    do
    {
      v8 = (v11 + v12) >> 1;
      v13 = &p_internal[v8];
      if (v13->_singleRange._range.location <= a3)
      {
        if (v13->_singleRange._range.location + v13->_singleRange._range.length - 1 >= a3)
        {
          return v8;
        }

        v11 = v8 + 1;
      }

      else
      {
        v12 = (v11 + v12) >> 1;
      }
    }

    while (v11 < v12);
  }

  v14 = p_internal[v11]._singleRange._range.location + p_internal[v11]._singleRange._range.length - 1;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11 < v7)
  {
    v15 = v11 + 1;
  }

  if (v14 < a3)
  {
    return v15;
  }

  else
  {
    return v11;
  }
}

void *__50__NSIndexSet__indexOfRangeAfterOrContainingIndex___block_invoke(void *result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v4 = result[6];
  v6 = v4 >= a2;
  v5 = v4 - a2;
  v6 = v6 && v5 >= a3;
  if (!v6)
  {
    *(*(result[4] + 8) + 24) = *(*(result[5] + 8) + 24);
    *a4 = 1;
  }

  ++*(*(result[5] + 8) + 24);
  return result;
}

- (BOOL)isEqualToIndexSet:(NSIndexSet *)indexSet
{
  if (indexSet == self)
  {
    goto LABEL_116;
  }

  if (!indexSet)
  {
LABEL_117:
    v10 = 0;
    return v10 & 1;
  }

  v5 = objc_opt_class();
  if (NSIndexSet != v5 && _NSConstantIndexSet != v5 && NSMutableIndexSet != v5 || (v6 = objc_opt_class(), NSIndexSet != v6) && _NSConstantIndexSet != v6 && NSMutableIndexSet != v6)
  {
    v7 = [(NSIndexSet *)self count];
    if (v7 == [(NSIndexSet *)indexSet count])
    {
      if (v7)
      {
        v8 = [(NSIndexSet *)self firstIndex];
        v9 = [(NSIndexSet *)indexSet firstIndex];
        do
        {
          v10 = v8 == v9;
          if (v8 != v9)
          {
            break;
          }

          v8 = [(NSIndexSet *)self indexGreaterThanIndex:v9];
          v9 = [(NSIndexSet *)indexSet indexGreaterThanIndex:v9];
          --v7;
        }

        while (v7);
        return v10 & 1;
      }

LABEL_116:
      v10 = 1;
      return v10 & 1;
    }

    goto LABEL_117;
  }

  if ((self & 0x8000000000000000) != 0)
  {
    v11 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v11 = 0;
    }

    v12 = v11 ^ self;
    v13 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v12 & 7) == 0)
    {
      v13 = 0xFFFFFFFFFFFFFLL;
    }

    location = v13 & (v12 >> 3);
    if ((indexSet & 0x8000000000000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  indexSetFlags = self->_indexSetFlags;
  if ((*&indexSetFlags & 2) != 0)
  {
    location = self->_internal._singleRange._range.location;
    if ((indexSet & 0x8000000000000000) != 0)
    {
LABEL_21:
      v15 = *MEMORY[0x1E69E5910];
      if ((~indexSet & 0xC000000000000007) == 0)
      {
        v15 = 0;
      }

      v16 = v15 ^ indexSet;
      v17 = 0xFFFFFFFFFFFFFFFLL;
      if ((~v16 & 7) == 0)
      {
        v17 = 0xFFFFFFFFFFFFFLL;
      }

      v18 = v17 & (v16 >> 3);
      goto LABEL_39;
    }

LABEL_34:
    if ((*&indexSet->_indexSetFlags & 2) != 0)
    {
      v18 = indexSet->_internal._singleRange._range.location;
    }

    else
    {
      v24 = [(NSIndexSet *)indexSet lastIndex];
      if (v24 != 0x7FFFFFFFFFFFFFFFLL && v24 > 0x3F)
      {
        v18 = 0;
        v25 = 0;
        goto LABEL_40;
      }

      v28 = 0;
      v29 = 0;
      v18 = 0;
      v30 = indexSet->_indexSetFlags;
      p_internal = &indexSet->_internal;
      v32 = (&indexSet->_internal._singleBitfield + 1);
      if ((*&v30 & 2) != 0)
      {
        v32 = &indexSet->_internal;
      }

      while (1)
      {
        v33 = v32;
        if ((*&v30 & 3) == 0)
        {
          v33 = (p_internal->_singleRange._range.location + 8);
        }

        v34 = v33->_singleRange._range.location;
        v35 = v33->_singleRange._range.location != 0;
        if ((*&v30 & 1) == 0 && v34)
        {
          v35 = *(p_internal->_singleRange._range.location + 8);
        }

        if (v29 >= v35)
        {
          break;
        }

        v36 = &indexSet->_internal;
        if ((*&v30 & 1) == 0)
        {
          v36 = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
        }

        v37 = &v36[v28];
        v39 = v37->_singleRange._range.location;
        length = v37->_singleRange._range.length;
        v40 = 0xFFFFFFFFFFFFFFFFLL >> -length << v39;
        if (length)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v18 |= v41;
        ++v29;
        ++v28;
      }
    }

LABEL_39:
    v25 = 1;
LABEL_40:
    if (location == v18)
    {
      v10 = v25;
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }

  if ((indexSet & 0x8000000000000000) != 0)
  {
    v20 = *MEMORY[0x1E69E5910];
    if ((~indexSet & 0xC000000000000007) == 0)
    {
      v20 = 0;
    }

    v21 = v20 ^ indexSet;
    v22 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v21 & 7) == 0)
    {
      v22 = 0xFFFFFFFFFFFFFLL;
    }

    v23 = v22 & (v21 >> 3);
    goto LABEL_61;
  }

  v26 = indexSet->_indexSetFlags;
  if ((*&v26 & 2) != 0)
  {
    v23 = indexSet->_internal._singleRange._range.location;
LABEL_61:
    v42 = [(NSIndexSet *)self lastIndex];
    v43 = v42 != 0x7FFFFFFFFFFFFFFFLL && v42 >= 0x40;
    v44 = !v43;
    if (v44 == 1)
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = self->_indexSetFlags;
      v49 = &self->_internal;
      v50 = (&self->_internal._singleBitfield + 1);
      if ((*&v48 & 2) != 0)
      {
        v50 = &self->_internal;
      }

      while (1)
      {
        v51 = v50;
        if ((*&v48 & 3) == 0)
        {
          v51 = (v49->_singleRange._range.location + 8);
        }

        v52 = v51->_singleRange._range.location;
        v53 = v51->_singleRange._range.location != 0;
        if ((*&v48 & 1) == 0 && v52)
        {
          v53 = *(v49->_singleRange._range.location + 8);
        }

        if (v46 >= v53)
        {
          break;
        }

        v54 = &self->_internal;
        if ((*&v48 & 1) == 0)
        {
          v54 = (v49->_singleRange._range.location + 16 * *(v49->_singleRange._range.location + 24) + 64);
        }

        v55 = &v54[v45];
        v56 = v55->_singleRange._range.location;
        v57 = v55->_singleRange._range.length;
        v58 = 0xFFFFFFFFFFFFFFFFLL >> -v57 << v56;
        if (v57)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v47 |= v59;
        ++v46;
        ++v45;
      }
    }

    else
    {
      v47 = 0;
    }

    if (v47 == v23)
    {
      v10 = v44;
    }

    else
    {
      v10 = 0;
    }

    return v10 & 1;
  }

  if (*&indexSetFlags)
  {
    v27 = self->_internal._singleRange._range.length != 0;
  }

  else
  {
    v27 = *(self->_internal._singleRange._range.location + 8);
  }

  if (*&v26)
  {
    v60 = indexSet->_internal._singleRange._range.length != 0;
  }

  else
  {
    v60 = *(indexSet->_internal._singleRange._range.location + 8);
  }

  if (v27 != v60)
  {
    goto LABEL_117;
  }

  if (_isEmpty(self))
  {
    bitfield = 0;
  }

  else
  {
    v62 = (*&indexSetFlags & 1) != 0 ? &self->_internal._singleBitfield + 1 : (self->_internal._singleRange._range.location + 16);
    bitfield = v62->_bitfield;
  }

  if (_isEmpty(indexSet))
  {
    v63 = 0;
  }

  else
  {
    v64 = (*&v26 & 1) != 0 ? &indexSet->_internal._singleBitfield + 1 : (indexSet->_internal._singleRange._range.location + 16);
    v63 = v64->_bitfield;
  }

  if (bitfield != v63)
  {
    goto LABEL_117;
  }

  v65 = &self->_internal;
  if ((*&indexSetFlags & 1) == 0)
  {
    v65 = (v65->_singleRange._range.location + 16 * *(v65->_singleRange._range.location + 24) + 64);
  }

  v66 = &indexSet->_internal;
  if ((*&v26 & 1) == 0)
  {
    v66 = (v66->_singleRange._range.location + 16 * *(v66->_singleRange._range.location + 24) + 64);
  }

  if (!v27)
  {
    goto LABEL_116;
  }

  v67 = v27 - 1;
  do
  {
    v68 = *v65++;
    v69 = v68;
    v70 = *v66++;
    v71 = vmovn_s64(vceqq_s64(v69, v70));
    v10 = v71.i8[0] & v71.i8[4];
    v43 = v67-- != 0;
    v72 = v43;
  }

  while ((v71.i8[0] & v71.i8[4] & 1) != 0 && (v72 & 1) != 0);
  return v10 & 1;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(NSIndexSet *)self isEqualToIndexSet:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ((self & 0x8000000000000000) == 0)
  {
    v5 = self;
    if (objc_opt_class() == NSIndexSet)
    {

      return v5;
    }

    else
    {
      v4 = [NSIndexSet allocWithZone:a3];

      return [(NSIndexSet *)v4 initWithIndexSet:v5];
    }
  }

  return self;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(NSIndexSet *)NSMutableIndexSet allocWithZone:a3];

  return [(NSIndexSet *)v4 initWithIndexSet:self];
}

- (uint64_t)_indexClosestToIndex:(int)a3 equalAllowed:(int)a4 following:
{
  if (!a1)
  {
    return 0;
  }

  v5 = a3;
  v6 = a2;
  if (a1 < 0)
  {
    v8 = *MEMORY[0x1E69E5910];
    if ((~a1 & 0xC000000000000007) == 0)
    {
      v8 = 0;
    }

    v9 = v8 ^ a1;
    v10 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v9 & 7) == 0)
    {
      v10 = 0xFFFFFFFFFFFFFLL;
    }

    v11 = v10 & (v9 >> 3);
    if (!v11)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_17:
    v18 = 1;
    if (!a4)
    {
      v18 = -1;
    }

    if (a3)
    {
      v18 = 0;
    }

    v19 = v18 + a2;
    if (a4)
    {
      if (v19 > 63)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v21 = v11 & (-1 << (v19 & ~(v19 >> 63)));
      v20 = v21 == 0;
      v22 = __clz(__rbit64(v21));
    }

    else
    {
      if (v19 < 0)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v19 >= 0x3F)
      {
        LOBYTE(v19) = 63;
      }

      v23 = v11 & (0xFFFFFFFFFFFFFFFFLL >> (v19 ^ 0x3Fu));
      v20 = v23 == 0;
      v22 = __clz(v23) ^ 0x3F;
    }

    if (v20)
    {
      v17 = -1;
    }

    else
    {
      v17 = v22;
    }

    if (v17 < 0x40)
    {
      return v17;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = *(a1 + 8);
  if ((v12 & 2) != 0)
  {
    v11 = *(a1 + 16);
    if (!v11)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_17;
  }

  if (v12)
  {
    v24 = *(a1 + 24);
    if (!v24)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    v25 = *(a1 + 16);
    v26 = v25 + v24 - 1;
    if (a4)
    {
      v17 = *(a1 + 16);
      if (a3)
      {
        if (v25 >= a2)
        {
          return v17;
        }

        v17 = a2;
        if (v26 >= a2)
        {
          return v17;
        }

        goto LABEL_53;
      }

      if (v25 > a2)
      {
        return v17;
      }

      if (v26 > a2)
      {
        return a2 + 1;
      }

LABEL_51:
      if (v6 > 0x7FFFFFFFFFFFFFFELL)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v6;
LABEL_53:
      v27 = a1 + 16;
      v28 = a1 + 16;
      if ((*(a1 + 8) & 1) == 0)
      {
        v28 = *v27 + 16 * *(*v27 + 24) + 64;
      }

      v29 = [a1 _indexOfRangeAfterOrContainingIndex:v6];
      v17 = 0x7FFFFFFFFFFFFFFFLL;
      if (v29 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = v29;
        v31 = *(v28 + 16 * v29);
        if (v6 <= v31)
        {
          v17 = v31;
        }

        else
        {
          v17 = v6;
        }

        goto LABEL_70;
      }

      return v17;
    }

    v17 = v26;
    if (a3)
    {
      if (v26 <= a2)
      {
        return v17;
      }

      v17 = a2;
      if (v25 <= a2)
      {
        return v17;
      }

      goto LABEL_64;
    }

    if (v26 < a2)
    {
      return v17;
    }

    if (v25 < a2)
    {
      return a2 - 1;
    }

    goto LABEL_62;
  }

  v13 = a1 + 16;
  if (!*(*(a1 + 16) + 8))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v14 = pthread_self();
  v15 = atomic_load((*v13 + 56));
  if (v15 == v14)
  {
    v16 = *v13;
    if (*(*v13 + 32) == v6)
    {
      if (v5)
      {
        return v6;
      }

      v39 = *(a1 + 8);
      v40 = a1 + 16;
      if ((v39 & 1) == 0)
      {
        v40 = &v16[2 * v16[3] + 8];
      }

      if (a4)
      {
        v41 = v16[5];
        if ((*(v40 + 16 * v41 + 8) - 1) > v16[6])
        {
          v16[4] = v6 + 1;
          v42 = *v13;
          v43 = *(*v13 + 48) + 1;
LABEL_80:
          *(v42 + 48) = v43;
          return *(*v13 + 32);
        }

        if (!_isEmpty(a1))
        {
          v44 = (v39 & 1) != 0 ? 1 : v16[1];
          if (v41 + 1 < v44)
          {
            v16[5] = v41 + 1;
            v49 = *(v40 + 16 * *(*v13 + 40));
            *(*v13 + 48) = 0;
            v48 = *v13;
            goto LABEL_89;
          }
        }
      }

      else
      {
        if (v16[6])
        {
          v16[4] = v6 - 1;
          v42 = *v13;
          v43 = *(*v13 + 48) - 1;
          goto LABEL_80;
        }

        v45 = v16[5];
        if (v45)
        {
          v16[5] = v45 - 1;
          v46 = (v40 + 16 * *(*v13 + 40));
          v47 = *v46;
          *(*v13 + 48) = v46[1] - 1;
          v48 = *v13;
          v49 = *(*v13 + 48) + v47;
LABEL_89:
          *(v48 + 32) = v49;
          return *(*v13 + 32);
        }
      }

      atomic_store(0, v16 + 7);
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (a4)
  {
    if (v5)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if ((v5 & 1) == 0)
  {
LABEL_62:
    if (!v6)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    --v6;
  }

LABEL_64:
  v27 = a1 + 16;
  v32 = a1 + 16;
  if ((*(a1 + 8) & 1) == 0)
  {
    v32 = *v27 + 16 * *(*v27 + 24) + 64;
  }

  v33 = [a1 _indexOfRangeBeforeOrContainingIndex:v6];
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  if (v33 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = v33;
    v34 = (v32 + 16 * v33);
    v31 = *v34;
    v35 = *v34 + v34[1] - 1;
    if (v6 >= v35)
    {
      v17 = v35;
    }

    else
    {
      v17 = v6;
    }

LABEL_70:
    v36 = pthread_self();
    v37 = atomic_load((*v27 + 56));
    if (v37 == v36 || (v38 = 0, atomic_compare_exchange_strong((*v27 + 56), &v38, v36), !v38))
    {
      *(*v27 + 40) = v30;
      *(*v27 + 48) = v17 - v31;
      *(*v27 + 32) = v17;
    }
  }

  return v17;
}

- (NSUInteger)getIndexes:(NSUInteger *)indexBuffer maxCount:(NSUInteger)bufferSize inIndexRange:(NSRangePointer)range
{
  if (!bufferSize || ![(NSIndexSet *)self count])
  {
    return 0;
  }

  if (range)
  {
    length = range->length;
    if (!length)
    {
      return 0;
    }

    location = range->location;
    v11 = length + range->location - 1;
  }

  else
  {
    location = [(NSIndexSet *)self firstIndex];
    v11 = [(NSIndexSet *)self lastIndex];
  }

  if (v11 < location)
  {
    return 0;
  }

  if ((self & 0x8000000000000000) == 0)
  {
    indexSetFlags = self->_indexSetFlags;
    if ((*&indexSetFlags & 2) != 0)
    {
      v15 = self->_internal._singleRange._range.location;
      goto LABEL_24;
    }

    if ((*&indexSetFlags & 1) != 0 || (v17 = atomic_load((self->_internal._singleRange._range.location + 56)), v17 != pthread_self()) || (v18 = self->_internal._singleRange._range.location, *(v18 + 32) != location) || (v19 = *(v18 + 40), v19 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v19 = [(NSIndexSet *)self _indexOfRangeAfterOrContainingIndex:location];
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0;
      }
    }

    v20 = self->_indexSetFlags;
    if ((*&v20 & 2) != 0)
    {
      p_internal = &self->_internal;
      v22 = (*&self->_indexSetFlags & 1) == 0;
    }

    else
    {
      if (*&v20)
      {
        v32 = self->_internal._singleRange._range.length != 0;
        goto LABEL_46;
      }

      p_internal = (self->_internal._singleRange._range.location + 8);
      v22 = 1;
    }

    if (p_internal->_singleRange._range.location)
    {
      if (v22)
      {
        v31 = self->_internal._singleRange._range.location;
        v32 = *(v31 + 8);
LABEL_42:
        v33 = (v31 + 16 * *(v31 + 24) + 64);
        goto LABEL_47;
      }

      v32 = 1;
    }

    else
    {
      if (v22)
      {
        v32 = 0;
        v31 = self->_internal._singleRange._range.location;
        goto LABEL_42;
      }

      v32 = 0;
    }

LABEL_46:
    v33 = &self->_internal;
LABEL_47:
    if (v19 < v32)
    {
      v34 = 0;
      v23 = 0;
      do
      {
        v35 = &v33[v19];
        v36 = v35->_singleRange._range.location;
        v37 = v35->_singleRange._range.length;
        if (v35->_singleRange._range.location <= location)
        {
          v38 = location;
        }

        else
        {
          v38 = v35->_singleRange._range.location;
        }

        v41 = location >= v36;
        v39 = location - v36;
        if (v41)
        {
          v34 = v39;
        }

        v40 = v34 < v37;
        v41 = v38 > v11 || v34 >= v37;
        if (!v41)
        {
          do
          {
            indexBuffer[v23++] = v38++;
            v40 = ++v34 < v37;
          }

          while (v38 <= v11 && v23 < bufferSize && v34 < v37);
        }

        if (!v40)
        {
          v34 = 0;
        }

        v19 += !v40;
      }

      while (v38 <= v11 && v19 < v32 && v23 < bufferSize);
      if (v23)
      {
        v44 = &indexBuffer[v23];
        if (range)
        {
          v45 = *(v44 - 1) - location + 1;
          v46 = v45 + range->location;
          v47 = range->length - v45;
          range->location = v46;
          range->length = v47;
        }

        if (v19 < v32 && (*&self->_indexSetFlags & 1) == 0)
        {
          v49 = &v33[v19];
          v50 = *(v44 - 1);
          v51 = v50 - v49->_singleRange._range.location;
          if (v51 < v49->_singleRange._range.length)
          {
            v52 = pthread_self();
            v53 = atomic_load((self->_internal._singleRange._range.location + 56));
            if (v53 == v52 || (v54 = 0, atomic_compare_exchange_strong((self->_internal._singleRange._range.location + 56), &v54, v52), !v54))
            {
              *(self->_internal._singleRange._range.location + 40) = v19;
              *(self->_internal._singleRange._range.location + 48) = v51;
              *(self->_internal._singleRange._range.location + 32) = v50;
            }
          }
        }
      }

      return v23;
    }

    return 0;
  }

  v12 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v12 = 0;
  }

  v13 = v12 ^ self;
  v14 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v13 & 7) == 0)
  {
    v14 = 0xFFFFFFFFFFFFFLL;
  }

  v15 = v14 & (v13 >> 3);
LABEL_24:
  if (location > 0x3F)
  {
    return 0;
  }

  v23 = 0;
  v24 = 63;
  if (v11 < 0x3F)
  {
    v24 = v11;
  }

  v25 = location;
  while (v25 <= 0x3FuLL)
  {
    v26 = (-1 << v25) & v15;
    if (!v26)
    {
      break;
    }

    v27 = __clz(__rbit64(v26));
    if (v24 < v27)
    {
      break;
    }

    v25 = v27 + 1;
    indexBuffer[v23++] = v27;
    if (bufferSize == v23)
    {
      v23 = bufferSize;
      break;
    }
  }

  if (range && v23)
  {
    v28 = indexBuffer[v23 - 1] - location + 1;
    v29 = v28 + range->location;
    v30 = range->length - v28;
    range->location = v29;
    range->length = v30;
  }

  return v23;
}

- (unint64_t)__getContainmentVector:(BOOL *)a3 inRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v17[2] = *MEMORY[0x1E69E9840];
  if (a4.length >= 0x101)
  {
    v8 = 1;
  }

  else
  {
    v8 = 256;
  }

  v9 = &v17[-1] - ((8 * v8 + 15) & 0xFFFFFFF0);
  v10 = v9;
  if (a4.length >= 0x101)
  {
    v10 = malloc_type_malloc(8 * a4.length, 0x100004000313F17uLL);
  }

  v17[0] = location;
  v17[1] = length;
  v11 = [(NSIndexSet *)self getIndexes:v10 maxCount:length inIndexRange:v17];
  bzero(a3, length);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    do
    {
      v14 = *v12;
      v12 += 8;
      a3[v14 - location] = 1;
      --v13;
    }

    while (v13);
  }

  if (v10 != v9)
  {
    free(v10);
  }

  return v11;
}

- (NSUInteger)countOfIndexesInRange:(NSRange)range
{
  length = range.length;
  if (!range.length)
  {
    return length;
  }

  location = range.location;
  if ((self & 0x8000000000000000) == 0)
  {
    indexSetFlags = self->_indexSetFlags;
    if ((*&indexSetFlags & 2) != 0)
    {
      v9 = self->_internal._singleRange._range.location;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (*&indexSetFlags)
      {
        p_length = &self->_internal._singleRange._range.length;
      }

      else
      {
        p_length = (self->_internal._singleRange._range.location + 8);
      }

      if (*p_length)
      {
        v19 = [(NSIndexSet *)self _indexOfRangeAfterOrContainingIndex:range.location];
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          p_internal = &self->_internal;
          if (*&self->_indexSetFlags)
          {
            v23 = 16;
            if ((*&self->_indexSetFlags & 2) == 0)
            {
              v23 = 24;
            }

            v22 = *(&self->super.isa + v23) != 0;
          }

          else
          {
            v21 = p_internal->_singleRange._range.location;
            p_internal = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
            v22 = *(v21 + 8);
          }

          v24 = location + length;
          v25 = location + length - 1;
          v26 = &p_internal[v19];
          if (v26->_singleRange._range.location >= location)
          {
            length = 0;
          }

          else
          {
            v27 = v26->_singleRange._range.length + v26->_singleRange._range.location;
            if (v27 - 1 >= v25)
            {
              return length;
            }

            length = v27 - location;
            ++v19;
          }

          v28 = v22 > v19;
          v29 = v22 - v19;
          if (v28)
          {
            for (i = &p_internal[v19]._singleRange._range.length; ; i += 2)
            {
              v31 = *(i - 1);
              v32 = *i;
              if (v31 + *i - 1 > v25)
              {
                break;
              }

              length += v32;
              if (!--v29)
              {
                return length;
              }
            }

            v33 = length + v24 - v31;
            if (v31 <= v25)
            {
              return v33;
            }
          }

          return length;
        }
      }
    }

    return 0;
  }

  v6 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v6 = 0;
  }

  v7 = v6 ^ self;
  v8 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v7 & 7) == 0)
  {
    v8 = 0xFFFFFFFFFFFFFLL;
  }

  v9 = v8 & (v7 >> 3);
  if (!v9)
  {
    return 0;
  }

LABEL_13:
  v12 = range.location + range.length;
  if (range.location + range.length >= 0x40)
  {
    v12 = 64;
  }

  v13 = v12 - range.location;
  if (range.location < 0x40)
  {
    v14 = range.location;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = 0xFFFFFFFFFFFFFFFFLL >> -v13 << v14;
  if (v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = vcnt_s8((v9 & v16));
  v17.i16[0] = vaddlv_u8(v17);
  return v17.u32[0];
}

- (_NSRange)rangeAtIndex:(unint64_t)a3
{
  if ((self & 0x8000000000000000) != 0)
  {
    v3 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ self;
    v5 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v4 & 7) == 0)
    {
      v5 = 0xFFFFFFFFFFFFFLL;
    }

    v6 = v5 & (v4 >> 3);
    goto LABEL_13;
  }

  indexSetFlags = self->_indexSetFlags;
  if ((*&indexSetFlags & 2) == 0)
  {
    if (*&indexSetFlags)
    {
      v9 = self->_internal._singleRange._range.length != 0;
      if (v9 >= a3)
      {
        p_internal = &self->_internal;
LABEL_24:
        v16 = &p_internal[a3];
        location = v16->_singleRange._range.location;
        length = v16->_singleRange._range.length;
        goto LABEL_25;
      }
    }

    else
    {
      v8 = self->_internal._singleRange._range.location;
      v9 = *(v8 + 8);
      if (v9)
      {
        if (v9 < a3)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      if (!a3)
      {
LABEL_23:
        p_internal = (v8 + 16 * *(v8 + 24) + 64);
        goto LABEL_24;
      }

      v9 = 0;
    }

LABEL_27:
    v13 = [NSString stringWithFormat:@"Index %ld out of bounds [0...%ld]", a3, v9];
LABEL_18:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  v6 = self->_internal._singleRange._range.location;
LABEL_13:
  LOBYTE(v10) = 0;
  v11 = a3 + 1;
  while (1)
  {
    if (((-1 << v10) & v6) == 0)
    {
LABEL_17:
      v13 = [NSString stringWithFormat:@"Index %ld out of bounds [0...%ld]", a3, _bitfieldSetRangesCount(v6)];
      goto LABEL_18;
    }

    location = __clz(__rbit64((-1 << v10) & v6));
    v10 = __clz(__rbit64((-1 << location) & ~v6));
    if (!--v11)
    {
      break;
    }

    if (v10 >= 0x40)
    {
      goto LABEL_17;
    }
  }

  length = v10 - location;
LABEL_25:
  v17 = location;
  result.length = length;
  result.location = v17;
  return result;
}

- (BOOL)getBitfield:(unint64_t *)a3
{
  if ((self & 0x8000000000000000) != 0)
  {
    v3 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ self;
    v5 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v4 & 7) == 0)
    {
      v5 = 0xFFFFFFFFFFFFFLL;
    }

    location = v5 & (v4 >> 3);
    if (!a3)
    {
      return 1;
    }

LABEL_7:
    *a3 = location;
    return 1;
  }

  if ((*&self->_indexSetFlags & 2) != 0)
  {
    location = self->_internal._singleRange._range.location;
    if (!a3)
    {
      return 1;
    }

    goto LABEL_7;
  }

  return 0;
}

- (BOOL)containsIndex:(NSUInteger)value
{
  if ((self & 0x8000000000000000) != 0)
  {
    v5 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v5 = 0;
    }

    v6 = v5 ^ self;
    v7 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v6 & 7) == 0)
    {
      v7 = 0xFFFFFFFFFFFFFLL;
    }

    location = v7 & (v6 >> 3);
LABEL_13:
    if (value <= 0x3F)
    {
      return (location >> value) & 1;
    }

    goto LABEL_17;
  }

  indexSetFlags = self->_indexSetFlags;
  if ((*&indexSetFlags & 2) != 0)
  {
    location = self->_internal._singleRange._range.location;
    goto LABEL_13;
  }

  if (*&indexSetFlags)
  {
    length = self->_internal._singleRange._range.length;
    if (length)
    {
      v15 = self->_internal._singleRange._range.location;
      if (v15 <= value)
      {
        LOBYTE(v13) = v15 + length - 1 >= value;
        return v13;
      }
    }

    goto LABEL_17;
  }

  p_internal = &self->_internal;
  v10 = self->_internal._singleRange._range.location;
  if (!*(v10 + 8))
  {
LABEL_17:
    LOBYTE(v13) = 0;
    return v13;
  }

  v12 = atomic_load((v10 + 56));
  if (v12 != pthread_self())
  {
    goto LABEL_11;
  }

  v16 = p_internal->_singleRange._range.location;
  if (*(p_internal->_singleRange._range.location + 32) == value)
  {
    goto LABEL_20;
  }

  if ((*&self->_indexSetFlags & 1) == 0)
  {
    p_internal = (v16 + 16 * *(v16 + 24) + 64);
  }

  v17 = &p_internal[*(v16 + 40)];
  if (v17->_singleRange._range.location <= value && v17->_singleRange._range.location + v17->_singleRange._range.length - 1 >= value)
  {
LABEL_20:
    LOBYTE(v13) = 1;
  }

  else
  {
LABEL_11:
    LOBYTE(v13) = [(NSIndexSet *)self _indexOfRangeContainingIndex:value]!= 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13;
}

- (BOOL)containsIndexesInRange:(NSRange)range
{
  if (!range.length)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  if ((self & 0x8000000000000000) != 0)
  {
    v6 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ self;
    v8 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v7 & 7) == 0)
    {
      v8 = 0xFFFFFFFFFFFFFLL;
    }

    v9 = v8 & (v7 >> 3);
LABEL_15:
    if (range.location <= 0x3F)
    {
      result = 0;
      v13 = __CFADD__(range.location, range.length);
      if (range.location + range.length <= 0x40 && !v13)
      {
        return ((0xFFFFFFFFFFFFFFFFLL >> -LOBYTE(range.length) << SLOBYTE(range.location)) & ~v9) == 0;
      }

      return result;
    }

    return 0;
  }

  if ((*&self->_indexSetFlags & 2) != 0)
  {
    v9 = self->_internal._singleRange._range.location;
    goto LABEL_15;
  }

  v11 = [(NSIndexSet *)self _indexOfRangeContainingIndex:range.location];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  p_internal = &self->_internal;
  if ((*&self->_indexSetFlags & 1) == 0)
  {
    p_internal = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
  }

  return p_internal[v11]._singleRange._range.length + p_internal[v11]._singleRange._range.location >= location + length;
}

- (BOOL)containsIndexes:(NSIndexSet *)indexSet
{
  LOBYTE(v3) = 1;
  if (!indexSet || indexSet == self)
  {
    return v3;
  }

  v6 = objc_opt_class();
  if (NSIndexSet != v6 && _NSConstantIndexSet != v6 && NSMutableIndexSet != v6)
  {
    v7 = [(NSIndexSet *)indexSet firstIndex];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v7; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSIndexSet *)indexSet indexGreaterThanIndex:i])
      {
        v3 = [(NSIndexSet *)self containsIndex:i];
        if (!v3)
        {
          break;
        }
      }
    }

    return v3;
  }

  if ((self & 0x8000000000000000) != 0)
  {
    v9 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v9 = 0;
    }

    v10 = v9 ^ self;
    v11 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v10 & 7) == 0)
    {
      v11 = 0xFFFFFFFFFFFFFLL;
    }

    location = v11 & (v10 >> 3);
    if ((indexSet & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  if ((*&self->_indexSetFlags & 2) != 0)
  {
    location = self->_internal._singleRange._range.location;
    if ((indexSet & 0x8000000000000000) != 0)
    {
LABEL_17:
      v13 = *MEMORY[0x1E69E5910];
      if ((~indexSet & 0xC000000000000007) == 0)
      {
        v13 = 0;
      }

      v14 = v13 ^ indexSet;
      v15 = 0xFFFFFFFFFFFFFFFLL;
      if ((~v14 & 7) == 0)
      {
        v15 = 0xFFFFFFFFFFFFFLL;
      }

      v16 = v15 & (v14 >> 3);
      goto LABEL_35;
    }

LABEL_30:
    if ((*&indexSet->_indexSetFlags & 2) != 0)
    {
      v16 = indexSet->_internal._singleRange._range.location;
    }

    else
    {
      v21 = [(NSIndexSet *)indexSet lastIndex];
      if (v21 != 0x7FFFFFFFFFFFFFFFLL && v21 > 0x3F)
      {
        v16 = 0;
        v22 = 0;
        goto LABEL_36;
      }

      v29 = 0;
      v30 = 0;
      v16 = 0;
      indexSetFlags = indexSet->_indexSetFlags;
      p_internal = &indexSet->_internal;
      v33 = (&indexSet->_internal._singleBitfield + 1);
      if ((*&indexSetFlags & 2) != 0)
      {
        v33 = &indexSet->_internal;
      }

      while (1)
      {
        v34 = v33;
        if ((*&indexSetFlags & 3) == 0)
        {
          v34 = (p_internal->_singleRange._range.location + 8);
        }

        v35 = v34->_singleRange._range.location;
        v36 = v34->_singleRange._range.location != 0;
        if ((*&indexSetFlags & 1) == 0 && v35)
        {
          v36 = *(p_internal->_singleRange._range.location + 8);
        }

        if (v30 >= v36)
        {
          break;
        }

        v37 = &indexSet->_internal;
        if ((*&indexSetFlags & 1) == 0)
        {
          v37 = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
        }

        v38 = &v37[v29];
        v40 = v38->_singleRange._range.location;
        length = v38->_singleRange._range.length;
        v41 = 0xFFFFFFFFFFFFFFFFLL >> -length << v40;
        if (length)
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }

        v16 |= v42;
        ++v30;
        ++v29;
      }
    }

LABEL_35:
    v22 = 1;
LABEL_36:
    if ((v16 & ~location) != 0)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = v22;
    }

    return v3;
  }

  if ((indexSet & 0x8000000000000000) != 0)
  {
    v17 = *MEMORY[0x1E69E5910];
    if ((~indexSet & 0xC000000000000007) == 0)
    {
      v17 = 0;
    }

    v18 = v17 ^ indexSet;
    v19 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v18 & 7) == 0)
    {
      v19 = 0xFFFFFFFFFFFFFLL;
    }

    v20 = v19 & (v18 >> 3);
    goto LABEL_62;
  }

  if ((*&indexSet->_indexSetFlags & 2) != 0)
  {
    v20 = indexSet->_internal._singleRange._range.location;
LABEL_62:
    v43 = [(NSIndexSet *)self lastIndex];
    if (v43 == 0x7FFFFFFFFFFFFFFFLL || v43 <= 0x3F)
    {
      v58 = 0;
      v59 = 0;
      v45 = 0;
      v60 = self->_indexSetFlags;
      v61 = &self->_internal;
      v62 = (&self->_internal._singleBitfield + 1);
      if ((*&v60 & 2) != 0)
      {
        v62 = &self->_internal;
      }

      while (1)
      {
        v63 = v62;
        if ((*&v60 & 3) == 0)
        {
          v63 = (v61->_singleRange._range.location + 8);
        }

        v64 = v63->_singleRange._range.location;
        v65 = v63->_singleRange._range.location != 0;
        if ((*&v60 & 1) == 0 && v64)
        {
          v65 = *(v61->_singleRange._range.location + 8);
        }

        if (v59 >= v65)
        {
          break;
        }

        v66 = &self->_internal;
        if ((*&v60 & 1) == 0)
        {
          v66 = (v61->_singleRange._range.location + 16 * *(v61->_singleRange._range.location + 24) + 64);
        }

        v67 = &v66[v58];
        v69 = v67->_singleRange._range.location;
        v68 = v67->_singleRange._range.length;
        v70 = 0xFFFFFFFFFFFFFFFFLL >> -v68 << v69;
        if (v68)
        {
          v71 = v70;
        }

        else
        {
          v71 = 0;
        }

        v45 |= v71;
        ++v59;
        ++v58;
      }
    }

    else
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = &self->_internal;
      v48 = (&self->_internal._singleBitfield + 1);
      v49 = self->_indexSetFlags;
      if ((*&v49 & 2) != 0)
      {
        v48 = &self->_internal;
      }

      while (1)
      {
        v50 = v48;
        if ((*&v49 & 3) == 0)
        {
          v50 = (v47->_singleRange._range.location + 8);
        }

        v51 = v50->_singleRange._range.location;
        v52 = v50->_singleRange._range.location != 0;
        if ((*&v49 & 1) == 0 && v51)
        {
          v52 = *(v47->_singleRange._range.location + 8);
        }

        if (v46 >= v52)
        {
          break;
        }

        v53 = &self->_internal;
        if ((*&v49 & 1) == 0)
        {
          v53 = (v47->_singleRange._range.location + 16 * *(v47->_singleRange._range.location + 24) + 64);
        }

        v54 = &v53[v44];
        v55 = v53[v44]._singleRange._range.location;
        v56 = v54->_singleRange._range.length + v55;
        if (v56 >= 0x40)
        {
          v56 = 64;
        }

        v57 = v55 > 0x3F || v56 == v55;
        if (v57)
        {
          break;
        }

        v45 |= 0xFFFFFFFFFFFFFFFFLL >> ((v55 | 0x40u) - v56) << v55;
        ++v46;
        ++v44;
      }
    }

    LOBYTE(v3) = (v20 & ~v45) == 0;
    return v3;
  }

  v24 = [(NSIndexSet *)indexSet rangeCount];
  if (v24)
  {
    v25 = 0;
    v26 = v24 - 1;
    do
    {
      v27 = [(NSIndexSet *)indexSet rangeAtIndex:v25];
      v3 = [(NSIndexSet *)self containsIndexesInRange:v27, v28];
      if (!v3)
      {
        break;
      }

      v57 = v26 == v25++;
    }

    while (!v57);
  }

  return v3;
}

- (BOOL)intersectsIndexesInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  if ((self & 0x8000000000000000) != 0)
  {
    v6 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ self;
    v8 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v7 & 7) == 0)
    {
      v8 = 0xFFFFFFFFFFFFFLL;
    }

    v9 = v8 & (v7 >> 3);
    goto LABEL_19;
  }

  if ((*&self->_indexSetFlags & 2) != 0)
  {
    v9 = self->_internal._singleRange._range.location;
LABEL_19:
    v15 = range.location + range.length;
    if (range.location + range.length >= 0x40)
    {
      v15 = 64;
    }

    v16 = v15 - range.location;
    if (range.location < 0x40)
    {
      v17 = range.location;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v18 = 0xFFFFFFFFFFFFFFFFLL >> -v16 << v17;
    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    return (v9 & v19) != 0;
  }

  if (!range.length)
  {
    return 0;
  }

  v10 = [(NSIndexSet *)self _indexOfRangeBeforeOrContainingIndex:range.location];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    p_internal = &self->_internal;
    if ((*&self->_indexSetFlags & 1) == 0)
    {
      p_internal = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
    }

    if (p_internal[v10]._singleRange._range.location + p_internal[v10]._singleRange._range.length - 1 >= location)
    {
      return 1;
    }
  }

  v12 = [(NSIndexSet *)self _indexOfRangeAfterOrContainingIndex:location];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v13 = &self->_internal;
  if ((*&self->_indexSetFlags & 1) == 0)
  {
    v13 = (v13->_singleRange._range.location + 16 * *(v13->_singleRange._range.location + 24) + 64);
  }

  return location + length - 1 >= v13[v12]._singleRange._range.location;
}

- (id)_numberEnumerator
{
  v2 = [[_NSIndexSetEnumerator alloc] initWithIndexSet:self];

  return v2;
}

- (void)__forwardEnumerateRanges:(id)a3
{
  v5 = objc_opt_class();
  if (NSIndexSet != v5 && _NSConstantIndexSet != v5 && NSMutableIndexSet != v5)
  {

    [(NSIndexSet *)self enumerateRangesUsingBlock:a3];
    return;
  }

  if ((self & 0x8000000000000000) != 0)
  {
    v6 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ self;
    v8 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v7 & 7) == 0)
    {
      v8 = 0xFFFFFFFFFFFFFLL;
    }

    location = v8 & (v7 >> 3);
    goto LABEL_18;
  }

  indexSetFlags = self->_indexSetFlags;
  if ((*&indexSetFlags & 2) != 0)
  {
    location = self->_internal._singleRange._range.location;
LABEL_18:

    __NSIndexSetEnumerateBitfield(location, 0x4000000000000000, 0, 64, a3);
    return;
  }

  p_internal = &self->_internal;
  if (*&indexSetFlags)
  {
    if (!self->_internal._singleRange._range.length)
    {
      return;
    }

    v12 = 1;
  }

  else
  {
    v12 = *(p_internal->_singleRange._range.location + 8);
    if (!v12)
    {
      return;
    }

    p_internal = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
  }

  for (i = 0; i < v12; ++i)
  {
    if (p_internal[i]._singleRange._range.length)
    {
      __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a3);
    }
  }
}

- (void)enumerateIndexesUsingBlock:(void *)block
{
  __NSIndexSetParameterCheckIterate(self, a2, block, 0, 0, 0x7FFFFFFFFFFFFFFFuLL);

  __NSIndexSetEnumerate(self, 0, 0, 0x7FFFFFFFFFFFFFFFLL, block);
}

- (void)enumerateIndexesWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  if ((opts & 2) != 0)
  {
    v6 = opts & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v6 = opts;
  }

  __NSIndexSetParameterCheckIterate(self, a2, block, v6, 0, 0x7FFFFFFFFFFFFFFFuLL);

  __NSIndexSetEnumerate(self, v6, 0, 0x7FFFFFFFFFFFFFFFLL, block);
}

- (void)enumerateIndexesInRange:(NSRange)range options:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  if ((opts & 2) != 0)
  {
    v9 = opts & 0xF7FFFFFFFFFFFFFELL;
  }

  else
  {
    v9 = opts;
  }

  __NSIndexSetParameterCheckIterate(self, a2, block, v9 | 0x800000000000000, range.location, range.length);

  __NSIndexSetEnumerate(self, v9 | 0x800000000000000, location, length, block);
}

- (NSUInteger)indexWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  if ((opts & 2) != 0)
  {
    v6 = opts & 0xDFFFFFFFFFFFFFFELL;
  }

  else
  {
    v6 = opts;
  }

  __NSIndexSetParameterCheckIterate(self, a2, predicate, v6 | 0x2000000000000000, 0, 0x7FFFFFFFFFFFFFFFuLL);

  return __NSIndexSetEnumerate(self, v6 | 0x2000000000000000, 0, 0x7FFFFFFFFFFFFFFFLL, predicate);
}

- (NSUInteger)indexInRange:(NSRange)range options:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  length = range.length;
  location = range.location;
  if ((opts & 2) != 0)
  {
    v9 = opts & 0xD7FFFFFFFFFFFFFELL;
  }

  else
  {
    v9 = opts;
  }

  __NSIndexSetParameterCheckIterate(self, a2, predicate, v9 | 0x2800000000000000, range.location, range.length);

  return __NSIndexSetEnumerate(self, v9 | 0x2800000000000000, location, length, predicate);
}

- (NSIndexSet)indexesWithOptions:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  v24 = *MEMORY[0x1E69E9840];
  if ((opts & 2) != 0)
  {
    v6 = opts & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v6 = opts;
  }

  __NSIndexSetParameterCheckIterate(self, a2, predicate, v6, 0, 0x7FFFFFFFFFFFFFFFuLL);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__7;
  v22 = __Block_byref_object_dispose__7;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__NSIndexSet_indexesWithOptions_passingTest___block_invoke;
  v12[3] = &unk_1E69F3FD0;
  v12[4] = predicate;
  v12[5] = &v14;
  v12[6] = &v18;
  v12[7] = &v13;
  __NSIndexSetEnumerate(self, v6, 0, 0x7FFFFFFFFFFFFFFFLL, v12);
  v7 = v19[5];
  if (v7)
  {
    v8 = [v7 copy];

    v9 = v8;
  }

  else
  {
    v9 = [NSIndexSet indexSetWithBitfield:v15[3]];
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v10;
}

void __45__NSIndexSet_indexesWithOptions_passingTest___block_invoke(uint64_t a1, unint64_t a2)
{
  if ((*(*(a1 + 32) + 16))())
  {
    os_unfair_lock_lock(*(a1 + 56));
    if (a2 > 0x3F)
    {
      v4 = *(*(*(a1 + 48) + 8) + 40);
      if (!v4)
      {
        *(*(*(a1 + 48) + 8) + 40) = [(NSIndexSet *)[NSMutableIndexSet alloc] initWithBitfield:*(*(*(a1 + 40) + 8) + 24)];
        v4 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v4 addIndex:a2];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) |= 1 << a2;
    }

    v5 = *(a1 + 56);

    os_unfair_lock_unlock(v5);
  }
}

- (NSIndexSet)indexesInRange:(NSRange)range options:(NSEnumerationOptions)opts passingTest:(void *)predicate
{
  length = range.length;
  location = range.location;
  v27 = *MEMORY[0x1E69E9840];
  if ((opts & 2) != 0)
  {
    v9 = opts & 0xF7FFFFFFFFFFFFFELL;
  }

  else
  {
    v9 = opts;
  }

  __NSIndexSetParameterCheckIterate(self, a2, predicate, v9 | 0x800000000000000, range.location, range.length);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__NSIndexSet_indexesInRange_options_passingTest___block_invoke;
  v15[3] = &unk_1E69F3FD0;
  v15[4] = predicate;
  v15[5] = &v17;
  v15[6] = &v21;
  v15[7] = &v16;
  __NSIndexSetEnumerate(self, v9 | 0x800000000000000, location, length, v15);
  v10 = v22[5];
  if (v10)
  {
    v11 = [v10 copy];

    v12 = v11;
  }

  else
  {
    v12 = [NSIndexSet indexSetWithBitfield:v18[3]];
  }

  v13 = v12;
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v13;
}

void __49__NSIndexSet_indexesInRange_options_passingTest___block_invoke(uint64_t a1, unint64_t a2)
{
  if ((*(*(a1 + 32) + 16))())
  {
    os_unfair_lock_lock(*(a1 + 56));
    if (a2 > 0x3F)
    {
      v4 = *(*(*(a1 + 48) + 8) + 40);
      if (!v4)
      {
        *(*(*(a1 + 48) + 8) + 40) = [(NSIndexSet *)[NSMutableIndexSet alloc] initWithBitfield:*(*(*(a1 + 40) + 8) + 24)];
        v4 = *(*(*(a1 + 48) + 8) + 40);
      }

      [v4 addIndex:a2];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) |= 1 << a2;
    }

    v5 = *(a1 + 56);

    os_unfair_lock_unlock(v5);
  }
}

- (void)enumerateRangesUsingBlock:(void *)block
{
  __NSIndexSetParameterCheckIterate(self, a2, block, 0x4000000000000000, 0, 0x7FFFFFFFFFFFFFFFuLL);

  __NSIndexSetEnumerate(self, 0x4000000000000000, 0, 0x7FFFFFFFFFFFFFFFLL, block);
}

- (void)enumerateRangesWithOptions:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  if ((opts & 2) != 0)
  {
    v6 = opts & 0xBFFFFFFFFFFFFFFELL;
  }

  else
  {
    v6 = opts;
  }

  __NSIndexSetParameterCheckIterate(self, a2, block, v6 | 0x4000000000000000, 0, 0x7FFFFFFFFFFFFFFFuLL);

  __NSIndexSetEnumerate(self, v6 | 0x4000000000000000, 0, 0x7FFFFFFFFFFFFFFFLL, block);
}

- (void)enumerateRangesInRange:(NSRange)range options:(NSEnumerationOptions)opts usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  if ((opts & 2) != 0)
  {
    v9 = opts & 0xBFFFFFFFFFFFFFFELL;
  }

  else
  {
    v9 = opts;
  }

  __NSIndexSetParameterCheckIterate(self, a2, block, v9 | 0x4000000000000000, range.location, range.length);

  __NSIndexSetEnumerate(self, v9 | 0x4000000000000000, location, length, block);
}

- (unint64_t)_indexAtIndex:(unint64_t)a3
{
  result = [(NSIndexSet *)self firstIndex];
  while (a3)
  {
    --a3;
    result = [(NSIndexSet *)self indexGreaterThanIndex:result];
  }

  return result;
}

- (id)replacementObjectForPortCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if ([a3 isByref])
  {
    v6.receiver = self;
    v6.super_class = NSIndexSet;
    return [(NSIndexSet *)&v6 replacementObjectForPortCoder:a3];
  }

  return self;
}

@end