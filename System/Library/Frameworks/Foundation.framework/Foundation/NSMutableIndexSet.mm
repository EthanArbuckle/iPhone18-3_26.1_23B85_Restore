@interface NSMutableIndexSet
- (void)_addRangeToArray:(_NSRange)a3;
- (void)_convertToUsingRanges;
- (void)_ensureRangeCapacity:(unint64_t)a3;
- (void)_incrementBy:(unint64_t)a3 startingAtIndex:(unint64_t)a4;
- (void)_insertRange:(_NSRange)a3 inArrayAtIndex:(unint64_t)a4;
- (void)_mergeOverlappingRangesStartingAtIndex:(unint64_t)a3;
- (void)_removeAndDecrementBy:(unint64_t)a3 startingAtIndex:(unint64_t)a4;
- (void)_removeRangeInArrayAtIndex:(unint64_t)a3;
- (void)_replaceRangeInArrayAtIndex:(unint64_t)a3 withRange:(_NSRange)a4;
- (void)addIndex:(NSUInteger)value;
- (void)addIndexes:(NSIndexSet *)indexSet;
- (void)addIndexes:(const unint64_t *)a3 count:(unint64_t)a4;
- (void)addIndexesInRange:(NSRange)range;
- (void)addIndexesWithBitfield:(unint64_t)a3;
- (void)removeAllIndexes;
- (void)removeIndex:(NSUInteger)value;
- (void)removeIndexes:(NSIndexSet *)indexSet;
- (void)removeIndexesInRange:(NSRange)range;
- (void)removeIndexesInRange:(_NSRange)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (void)removeIndexesWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (void)shiftIndexesStartingAtIndex:(NSUInteger)index by:(NSInteger)delta;
@end

@implementation NSMutableIndexSet

- (void)removeAllIndexes
{
  indexSetFlags = self->super._indexSetFlags;
  if ((indexSetFlags & 1) == 0)
  {
    free(self->super._internal._multipleRanges._data);
    indexSetFlags = *&self->super._indexSetFlags | 1;
  }

  self->super._indexSetFlags = (indexSetFlags | 2);
  self->super._internal._singleRange._range.location = 0;
}

- (void)_convertToUsingRanges
{
  p_internal = &self->super._internal;
  location = self->super._internal._singleRange._range.location;
  if (location)
  {
    v5 = ~location;
    v6 = 1;
    v7 = self->super._internal._singleRange._range.location;
    while (1)
    {
      v8 = (-1 << __clz(__rbit64(v7))) & v5;
      if (!v8)
      {
        break;
      }

      ++v6;
      v7 = (-1 << __clz(__rbit64(v8))) & location;
      if (!v7)
      {
        --v6;
        break;
      }
    }

    self->super._indexSetFlags = (*&self->super._indexSetFlags & 0xFFFFFFFC | 1);
    self->super._internal._singleRange._range.length = 0;
    if (v6)
    {
      if (v6 == 1)
      {
        v9 = __clz(__rbit64(location));
        self->super._internal._singleRange._range.location = v9;
        self->super._internal._singleRange._range.length = __clz(__rbit64((-1 << v9) & v5)) - v9;
      }

      else
      {
        [(NSMutableIndexSet *)self _ensureRangeCapacity:v6 + 1];
        v10 = 0;
        v11 = 0;
        *(self->super._internal._singleRange._range.location + 24) = 0;
        v12 = -1;
LABEL_11:
        if (v11)
        {
          v13 = v10;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13 + v12;
        do
        {
          v15 = (-1 << v11) & location;
          if (!v15)
          {
            break;
          }

          v16 = __clz(__rbit64(v15));
          v11 = __clz(__rbit64((-1 << v16) & v5));
          if (__CFADD__(v14++, 1))
          {
            v18 = p_internal;
            if ((*&self->super._indexSetFlags & 1) == 0)
            {
              v18 = p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64;
            }

            v19 = (v18 + 16 * v10++);
            *v19 = v16;
            v19[1] = v11 - v16;
            *(p_internal->_singleRange._range.location + 16) += v11 - v16;
            --v12;
            if (v11 < 0x40)
            {
              goto LABEL_11;
            }

            break;
          }
        }

        while (v11 <= 0x3F);
        *(p_internal->_singleRange._range.location + 8) = v6;
      }
    }
  }

  else
  {
    self->super._indexSetFlags = (*&self->super._indexSetFlags & 0xFFFFFFFC | 1);
    self->super._internal._singleRange._range.length = 0;
  }
}

- (void)_ensureRangeCapacity:(unint64_t)a3
{
  indexSetFlags = self->super._indexSetFlags;
  if (*&indexSetFlags)
  {
    v5 = 1;
  }

  else
  {
    v5 = *self->super._internal._singleRange._range.location;
  }

  if (v5 < a3)
  {
    if (a3 == 1)
    {
      self->super._indexSetFlags = (*&indexSetFlags | 1);
    }

    else
    {
      v6 = 2 * v5;
      if (v6 <= a3)
      {
        v6 = a3;
      }

      if (a3 >= 4)
      {
        v7 = v6;
      }

      else
      {
        v7 = 4;
      }

      if (*&indexSetFlags)
      {
        if ((self & 0x8000000000000000) != 0)
        {
          v19 = *MEMORY[0x1E69E5910];
          if ((~self & 0xC000000000000007) == 0)
          {
            v19 = 0;
          }

          v20 = v19 ^ self;
          v21 = 0xFFFFFFFFFFFFFFFLL;
          if ((~v20 & 7) == 0)
          {
            v21 = 0xFFFFFFFFFFFFFLL;
          }

          v22 = v21 & (v20 >> 3);
          location = v22;
        }

        else
        {
          v24 = 16;
          if ((*&indexSetFlags & 2) == 0)
          {
            v24 = 24;
          }

          v22 = *(&self->super.super.isa + v24);
          if ((*&indexSetFlags & 2) != 0)
          {
            location = self->super._internal._singleRange._range.location;
          }

          else
          {
            location = self->super._internal._singleRange._range.length;
          }
        }

        v25 = v22 != 0;
        if (location)
        {
          length = self->super._internal._singleRange._range.length;
        }

        else
        {
          length = 0;
        }

        p_internal = &self->super._internal;
        internal = self->super._internal;
        self->super._indexSetFlags = (*&indexSetFlags & 0xFFFFFFFE);
        v28 = malloc_type_malloc(16 * v7 + 64, 0x1080040E45EEDC5uLL);
        self->super._internal._singleRange._range.location = v28;
        atomic_store(0, v28 + 7);
        *self->super._internal._singleRange._range.location = v7;
        *(self->super._internal._singleRange._range.location + 8) = v25;
        *(self->super._internal._singleRange._range.location + 16) = length;
        v29 = (v7 - v25) >> 1;
        if (v7 < 5)
        {
          v29 = 0;
        }

        *(self->super._internal._singleRange._range.location + 24) = v29;
        if ((*&self->super._indexSetFlags & 1) == 0)
        {
          p_internal = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
        }

        *p_internal = internal;
      }

      else
      {
        v8 = *(self->super._internal._singleRange._range.location + 24);
        v9 = MEMORY[0x1865CFE30]();
        self->super._internal._singleRange._range.location = v9;
        *v9 = v7;
        v10 = self->super._internal._singleRange._range.location;
        v11 = *(v10 + 8);
        v13 = v7 >= v11;
        v12 = v7 - v11;
        v13 = v13 && v7 >= 5;
        v14 = v12 >> 1;
        if (!v13)
        {
          v14 = 0;
        }

        *(v10 + 24) = v14;
        v15 = self->super._internal._singleRange._range.location;
        v16 = *(v15 + 24);
        if (v8 != v16)
        {
          v17 = *(v15 + 8);
          v18 = v15 + 64;

          memmove((v18 + 16 * v16), (v18 + 16 * v8), 16 * v17);
        }
      }
    }
  }
}

- (void)_addRangeToArray:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [(NSIndexSet *)self rangeCount];

  [(NSMutableIndexSet *)self _insertRange:location inArrayAtIndex:length, v6];
}

- (void)_insertRange:(_NSRange)a3 inArrayAtIndex:(unint64_t)a4
{
  length = a3.length;
  location = a3.location;
  if ((self & 0x8000000000000000) == 0)
  {
    indexSetFlags = self->super._indexSetFlags;
    if ((*&indexSetFlags & 2) != 0)
    {
      v11 = self->super._internal._singleRange._range.location;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    else if (*&indexSetFlags)
    {
      v11 = self->super._internal._singleRange._range.length;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = *(self->super._internal._singleRange._range.location + 8);
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_15;
  }

  v8 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v8 = 0;
  }

  v9 = v8 ^ self;
  v10 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v9 & 7) == 0)
  {
    v10 = 0xFFFFFFFFFFFFFLL;
  }

  v11 = v10 & (v9 >> 3);
  if (v11)
  {
LABEL_15:
    if (*&self->super._indexSetFlags)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(self->super._internal._singleRange._range.location + 8);
    }
  }

LABEL_18:
  if (v11 < a4)
  {
    v29 = [NSString stringWithFormat:@"Index %ld out of range bounds [0...%ld]", a4, v11];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v29 userInfo:0]);
  }

  [(NSMutableIndexSet *)self _ensureRangeCapacity:v11 + 1];
  p_internal = &self->super._internal;
  if (*&self->super._indexSetFlags)
  {
    v23 = &p_internal[a4];
    v23->_singleRange._range.location = location;
    v23->_singleRange._range.length = length;
  }

  else
  {
    v14 = p_internal->_singleRange._range.location;
    v16 = *p_internal->_singleRange._range.location;
    v15 = *(p_internal->_singleRange._range.location + 8);
    v17 = *(p_internal->_singleRange._range.location + 24);
    v18 = v17 + v15;
    if (v15 - a4 > a4 && v17 != 0 || v16 == v18)
    {
      if (v15 == a4)
      {
        if (v17 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v17 >> 1;
        }

        memmove(&v14[2 * v17 + 8 + -2 * v21], &v14[2 * v17 + 8], 16 * a4);
        v14 = p_internal->_singleRange._range.location;
        v22 = *(p_internal->_singleRange._range.location + 24) - v21;
      }

      else
      {
        if (a4)
        {
          memmove(&v14[2 * v17 + 6], &v14[2 * v17 + 8], 16 * a4);
          v14 = p_internal->_singleRange._range.location;
          v17 = *(p_internal->_singleRange._range.location + 24);
        }

        v22 = v17 - 1;
      }

      v14[3] = v22;
    }

    else if (a4)
    {
      if (v15 != a4)
      {
        memmove(&v14[2 * v17 + 10 + 2 * a4], &v14[2 * v17 + 8 + 2 * a4], 16 * (v15 - a4));
      }
    }

    else
    {
      v24 = v16 - v18;
      v25 = (v16 - v18) >> 1;
      if (v24 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      memmove(&v14[2 * v17 + 8 + 2 * v26], &v14[2 * v17 + 8], 16 * v15);
      *(p_internal->_singleRange._range.location + 24) = v26 - 1;
    }

    v27 = &self->super._internal;
    if ((*&self->super._indexSetFlags & 1) == 0)
    {
      v27 = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
    }

    v28 = &v27[a4];
    v28->_singleRange._range.location = location;
    v28->_singleRange._range.length = length;
    atomic_store(0, (p_internal->_singleRange._range.location + 56));
    ++*(p_internal->_singleRange._range.location + 8);
    *(p_internal->_singleRange._range.location + 16) += length;
  }
}

- (void)_removeRangeInArrayAtIndex:(unint64_t)a3
{
  if ((self & 0x8000000000000000) == 0)
  {
    indexSetFlags = self->super._indexSetFlags;
    if ((*&indexSetFlags & 2) != 0)
    {
      location = self->super._internal._singleRange._range.location;
      if (!location)
      {
        goto LABEL_18;
      }
    }

    else if (*&indexSetFlags)
    {
      location = self->super._internal._singleRange._range.length;
      if (!location)
      {
        goto LABEL_18;
      }
    }

    else
    {
      location = *(self->super._internal._singleRange._range.location + 8);
      if (!location)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_15;
  }

  v4 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v4 = 0;
  }

  v5 = v4 ^ self;
  v6 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v5 & 7) == 0)
  {
    v6 = 0xFFFFFFFFFFFFFLL;
  }

  location = v6 & (v5 >> 3);
  if (location)
  {
LABEL_15:
    if (*&self->super._indexSetFlags)
    {
      location = 1;
    }

    else
    {
      location = *(self->super._internal._singleRange._range.location + 8);
    }
  }

LABEL_18:
  if (location < a3)
  {
    v15 = [NSString stringWithFormat:@"Index %ld out of range bounds [0...%ld]", a3, location];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0]);
  }

  if (*&self->super._indexSetFlags)
  {
    self->super._internal._singleRange._range.length = 0;
  }

  else
  {
    v9 = self->super._internal._singleRange._range.location;
    v10 = *(v9 + 24);
    v11 = (v9 + 16 * v10 + 64);
    v12 = &v11[16 * a3];
    v13 = *(v12 + 1);
    v14 = *(v9 + 8) + ~a3;
    if (v14 <= a3)
    {
      if (v14)
      {
        memmove(v12, v12 + 16, 16 * v14);
      }
    }

    else
    {
      if (a3)
      {
        memmove((v9 + 16 * v10 + 80), v11, 16 * a3);
        v9 = self->super._internal._singleRange._range.location;
        v10 = *(v9 + 24);
      }

      *(v9 + 24) = v10 + 1;
    }

    atomic_store(0, (self->super._internal._singleRange._range.location + 56));
    --*(self->super._internal._singleRange._range.location + 8);
    *(self->super._internal._singleRange._range.location + 16) -= v13;
  }
}

- (void)_replaceRangeInArrayAtIndex:(unint64_t)a3 withRange:(_NSRange)a4
{
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
    if (!location)
    {
      goto LABEL_17;
    }
  }

  else
  {
    indexSetFlags = self->super._indexSetFlags;
    if ((*&indexSetFlags & 2) != 0)
    {
      location = self->super._internal._singleRange._range.location;
      if (!location)
      {
        goto LABEL_17;
      }
    }

    else if (*&indexSetFlags)
    {
      location = self->super._internal._singleRange._range.length;
      if (!location)
      {
        goto LABEL_17;
      }
    }

    else
    {
      location = *(self->super._internal._singleRange._range.location + 8);
      if (!location)
      {
        goto LABEL_17;
      }
    }
  }

  if (*&self->super._indexSetFlags)
  {
    location = 1;
    if (a4.length)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  location = *(self->super._internal._singleRange._range.location + 8);
LABEL_17:
  if (a4.length)
  {
LABEL_18:
    if (location < a3)
    {
      v15 = [NSString stringWithFormat:@"Index %ld out of range bounds [0...%ld]", a4.location, a3, location, v4, v5];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0]);
    }

    p_internal = &self->super._internal;
    v12 = &self->super._internal;
    if ((*&self->super._indexSetFlags & 1) == 0)
    {
      v12 = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
    }

    p_range = &v12[a3]._singleRange._range;
    length = p_range->length;
    *p_range = a4;
    if ((*&self->super._indexSetFlags & 1) == 0)
    {
      atomic_store(0, (p_internal->_singleRange._range.location + 56));
      *(p_internal->_singleRange._range.location + 16) -= length;
      *(p_internal->_singleRange._range.location + 16) += a4.length;
    }

    return;
  }

LABEL_25:

  [(NSMutableIndexSet *)self _removeRangeInArrayAtIndex:a3, a4.location];
}

- (void)addIndexes:(NSIndexSet *)indexSet
{
  v23[5] = *MEMORY[0x1E69E9840];
  if (!indexSet || indexSet == self)
  {
    return;
  }

  if ((self & 0x8000000000000000) == 0)
  {
    indexSetFlags = self->super._indexSetFlags;
    if ((*&indexSetFlags & 2) != 0)
    {
      if (self->super._internal._singleRange._range.location)
      {
        goto LABEL_15;
      }
    }

    else if (*&indexSetFlags)
    {
      if (self->super._internal._singleRange._range.length)
      {
        goto LABEL_15;
      }
    }

    else if (*(self->super._internal._singleRange._range.location + 8))
    {
      goto LABEL_15;
    }

LABEL_31:
    [(NSMutableIndexSet *)self removeAllIndexes];

    [(NSIndexSet *)self _setContentToContentFromIndexSet:indexSet];
    return;
  }

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

  if ((v7 & (v6 >> 3)) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v9 = objc_opt_class();
  if (NSIndexSet == v9 || _NSConstantIndexSet == v9 || NSMutableIndexSet == v9)
  {
    if ((indexSet & 0x8000000000000000) != 0)
    {
      v12 = *MEMORY[0x1E69E5910];
      if ((~indexSet & 0xC000000000000007) == 0)
      {
        v12 = 0;
      }

      v13 = v12 ^ indexSet;
      v14 = 0xFFFFFFFFFFFFFFFLL;
      if ((~v13 & 7) == 0)
      {
        v14 = 0xFFFFFFFFFFFFFLL;
      }

      location = v14 & (v13 >> 3);
    }

    else
    {
      if ((*&indexSet->_indexSetFlags & 2) == 0)
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __32__NSMutableIndexSet_addIndexes___block_invoke;
        v23[3] = &unk_1E69F3FF8;
        v23[4] = self;
        [(NSIndexSet *)indexSet enumerateRangesUsingBlock:v23];
        return;
      }

      location = indexSet->_internal._singleRange._range.location;
    }

    if ((*&self->super._indexSetFlags & 2) != 0)
    {
      self->super._internal._singleRange._range.location |= location;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = -1;
LABEL_37:
      if (v17)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19 + v18;
      while (((-1 << v17) & location) != 0)
      {
        v21 = __clz(__rbit64((-1 << v17) & location));
        v17 = __clz(__rbit64((-1 << v21) & ~location));
        if (__CFADD__(v20++, 1))
        {
          ++v16;
          [(NSMutableIndexSet *)self addIndexesInRange:v21, v17 - v21];
          --v18;
          if (v17 <= 0x3F)
          {
            goto LABEL_37;
          }

          return;
        }

        if (v17 > 0x3F)
        {
          return;
        }
      }
    }
  }

  else
  {
    v10 = [(NSIndexSet *)indexSet firstIndex];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSIndexSet *)indexSet indexGreaterThanIndex:i])
      {
        [(NSMutableIndexSet *)self addIndex:i];
      }
    }
  }
}

- (void)addIndexes:(const unint64_t *)a3 count:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if ((*&self->super._indexSetFlags & 2) != 0)
    {
      v12 = 0;
      v13 = a4;
      do
      {
        v14 = a3[v13 - 1];
        if (v14 > 0x3F)
        {
          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v12 |= 1 << v14;
        }

        --v13;
      }

      while (v13);
      self->super._internal._singleRange._range.location |= v12;
    }

    else
    {
LABEL_3:
      v5 = _NSGroupIndexesIntoSimpleRanges(a3, a4);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
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
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v16 + 1) + 8 * i) rangeValue];
            [(NSMutableIndexSet *)self addIndexesInRange:v10, v11];
          }

          v7 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)addIndexesWithBitfield:(unint64_t)a3
{
  if ((*&self->super._indexSetFlags & 2) != 0)
  {
    self->super._internal._singleRange._range.location |= a3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
LABEL_3:
    if (v6)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 + v7;
    while (((-1 << v6) & a3) != 0)
    {
      v10 = __clz(__rbit64((-1 << v6) & a3));
      v6 = __clz(__rbit64((-1 << v10) & ~a3));
      if (__CFADD__(v9++, 1))
      {
        ++v5;
        [(NSMutableIndexSet *)self addIndexesInRange:v10, v6 - v10];
        --v7;
        if (v6 < 0x40)
        {
          goto LABEL_3;
        }

        return;
      }

      if (v6 > 0x3F)
      {
        return;
      }
    }
  }
}

- (void)removeIndexes:(NSIndexSet *)indexSet
{
  v24[5] = *MEMORY[0x1E69E9840];
  if (!indexSet)
  {
    return;
  }

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

    if ((v7 & (v6 >> 3)) == 0)
    {
      return;
    }
  }

  else
  {
    indexSetFlags = self->super._indexSetFlags;
    if ((*&indexSetFlags & 2) != 0)
    {
      if (!self->super._internal._singleRange._range.location)
      {
        return;
      }
    }

    else if (*&indexSetFlags)
    {
      if (!self->super._internal._singleRange._range.length)
      {
        return;
      }
    }

    else if (!*(self->super._internal._singleRange._range.location + 8))
    {
      return;
    }
  }

  if ((*&self->super._indexSetFlags & 1) != 0 || *(self->super._internal._singleRange._range.location + 8))
  {
    if (indexSet == self)
    {

      [(NSMutableIndexSet *)self removeAllIndexes];
    }

    else
    {
      v9 = objc_opt_class();
      if (NSIndexSet == v9 || _NSConstantIndexSet == v9 || NSMutableIndexSet == v9)
      {
        if ((indexSet & 0x8000000000000000) != 0)
        {
          v12 = *MEMORY[0x1E69E5910];
          if ((~indexSet & 0xC000000000000007) == 0)
          {
            v12 = 0;
          }

          v13 = v12 ^ indexSet;
          v14 = 0xFFFFFFFFFFFFFFFLL;
          if ((~v13 & 7) == 0)
          {
            v14 = 0xFFFFFFFFFFFFFLL;
          }

          location = v14 & (v13 >> 3);
        }

        else
        {
          if ((*&indexSet->_indexSetFlags & 2) == 0)
          {
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __35__NSMutableIndexSet_removeIndexes___block_invoke;
            v24[3] = &unk_1E69F3FF8;
            v24[4] = self;
            [(NSIndexSet *)indexSet enumerateRangesUsingBlock:v24];
            return;
          }

          location = indexSet->_internal._singleRange._range.location;
        }

        v16 = ~location;
        if ((*&self->super._indexSetFlags & 2) != 0)
        {
          self->super._internal._singleRange._range.location &= v16;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = -1;
LABEL_40:
          if (v18)
          {
            v20 = v17;
          }

          else
          {
            v20 = 0;
          }

          v21 = v20 + v19;
          while (((-1 << v18) & location) != 0)
          {
            v22 = __clz(__rbit64((-1 << v18) & location));
            v18 = __clz(__rbit64((-1 << v22) & v16));
            if (__CFADD__(v21++, 1))
            {
              ++v17;
              [(NSMutableIndexSet *)self removeIndexesInRange:v22, v18 - v22];
              --v19;
              if (v18 <= 0x3F)
              {
                goto LABEL_40;
              }

              return;
            }

            if (v18 > 0x3F)
            {
              return;
            }
          }
        }
      }

      else
      {
        v10 = [(NSIndexSet *)indexSet firstIndex];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          for (i = v10; i != 0x7FFFFFFFFFFFFFFFLL; i = [(NSIndexSet *)indexSet indexGreaterThanIndex:i])
          {
            [(NSMutableIndexSet *)self removeIndex:i];
          }
        }
      }
    }
  }
}

- (void)removeIndexesWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  if ((a3 & 2) != 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v6 = a3;
  }

  __NSIndexSetParameterCheckIterate(self, a2, a4, v6, 0, 0x7FFFFFFFFFFFFFFEuLL);
  v7 = objc_alloc_init(NSMutableIndexSet);
  v9 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__NSMutableIndexSet_removeIndexesWithOptions_passingTest___block_invoke;
  v8[3] = &unk_1E69F4020;
  v8[5] = a4;
  v8[6] = &v9;
  v8[4] = v7;
  __NSIndexSetEnumerate(self, v6, 0, 0x7FFFFFFFFFFFFFFELL, v8);
  [(NSMutableIndexSet *)self removeIndexes:v7];
}

void __58__NSMutableIndexSet_removeIndexesWithOptions_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 40) + 16))())
  {
    os_unfair_lock_lock(*(a1 + 48));
    [*(a1 + 32) addIndex:a2];
    v4 = *(a1 + 48);

    os_unfair_lock_unlock(v4);
  }
}

- (void)removeIndexesInRange:(_NSRange)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  length = a3.length;
  location = a3.location;
  v13 = *MEMORY[0x1E69E9840];
  if ((a4 & 2) != 0)
  {
    v9 = a4 & 0xF7FFFFFFFFFFFFFELL;
  }

  else
  {
    v9 = a4;
  }

  __NSIndexSetParameterCheckIterate(self, a2, a5, v9 | 0x800000000000000, a3.location, a3.length);
  v10 = objc_alloc_init(NSMutableIndexSet);
  v12 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__NSMutableIndexSet_removeIndexesInRange_options_passingTest___block_invoke;
  v11[3] = &unk_1E69F4020;
  v11[5] = a5;
  v11[6] = &v12;
  v11[4] = v10;
  __NSIndexSetEnumerate(self, v9 | 0x800000000000000, location, length, v11);
  [(NSMutableIndexSet *)self removeIndexes:v10];
}

void __62__NSMutableIndexSet_removeIndexesInRange_options_passingTest___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 40) + 16))())
  {
    os_unfair_lock_lock(*(a1 + 48));
    [*(a1 + 32) addIndex:a2];
    v4 = *(a1 + 48);

    os_unfair_lock_unlock(v4);
  }
}

- (void)_mergeOverlappingRangesStartingAtIndex:(unint64_t)a3
{
  p_internal = &self->super._internal;
  v6 = self & 0xC000000000000007;
  v7 = MEMORY[0x1E69E5910];
  while ((self & 0x8000000000000000) == 0)
  {
    indexSetFlags = self->super._indexSetFlags;
    if ((*&indexSetFlags & 2) != 0)
    {
      if (!p_internal->_singleRange._range.location)
      {
        return;
      }
    }

    else if (*&indexSetFlags)
    {
      if (!self->super._internal._singleRange._range.length)
      {
        return;
      }
    }

    else if (!*(p_internal->_singleRange._range.location + 8))
    {
      return;
    }

LABEL_17:
    v12 = self->super._indexSetFlags;
    if ((*&v12 & 1) == 0 && !*(p_internal->_singleRange._range.location + 8))
    {
      return;
    }

    if ((self & 0x8000000000000000) != 0)
    {
      v13 = *v7;
      if (v6 == 0xC000000000000007)
      {
        v13 = 0;
      }

      v14 = v13 ^ self;
      if ((~v14 & 7) != 0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = 0xFFFFFFFFFFFFFLL;
      }

      v16 = v15 & (v14 >> 3);
    }

    else
    {
      if ((*&v12 & 2) == 0)
      {
        if (*&v12)
        {
          if (self->super._internal._singleRange._range.length)
          {
            v17 = 0;
          }

          else
          {
            v17 = -1;
          }

          v18 = p_internal;
          if (a3 >= v17)
          {
            return;
          }

          goto LABEL_45;
        }

        location = p_internal->_singleRange._range.location;
        v20 = *(p_internal->_singleRange._range.location + 8);
        if (!v20)
        {
          if (a3 == -1)
          {
            return;
          }

          goto LABEL_44;
        }

        goto LABEL_40;
      }

      v16 = p_internal->_singleRange._range.location;
    }

    if (v16)
    {
      v19 = 0;
    }

    else
    {
      v19 = -1;
    }

    if ((*&v12 & 1) == 0 && v16)
    {
      v20 = *(p_internal->_singleRange._range.location + 8);
LABEL_40:
      v19 = v20 - 1;
    }

    if (a3 >= v19)
    {
      return;
    }

    v18 = p_internal;
    if ((*&v12 & 1) == 0)
    {
      location = p_internal->_singleRange._range.location;
LABEL_44:
      v18 = location + 16 * *(location + 24) + 64;
    }

LABEL_45:
    v22 = *(v18 + 16 * a3);
    v23 = (v18 + 16 * (a3 + 1));
    v24 = vaddvq_s64(v22);
    if (v24 < *v23)
    {
      return;
    }

    v25 = v23[1] + *v23;
    if (v24 < v25)
    {
      [(NSMutableIndexSet *)self _replaceRangeInArrayAtIndex:a3 withRange:*(v18 + 16 * a3), v25 - v22.i64[0]];
      [(NSMutableIndexSet *)self _removeRangeInArrayAtIndex:++a3];
      continue;
    }

    [(NSMutableIndexSet *)self _removeRangeInArrayAtIndex:a3 + 1];
  }

  v8 = *v7;
  if (v6 == 0xC000000000000007)
  {
    v8 = 0;
  }

  v9 = v8 ^ self;
  if ((~v9 & 7) != 0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 0xFFFFFFFFFFFFFLL;
  }

  if ((v10 & (v9 >> 3)) != 0)
  {
    goto LABEL_17;
  }
}

- (void)addIndexesInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = range.location + range.length;
  if (range.length && (v6 & 0x8000000000000000) != 0)
  {
    v30 = _NSMethodExceptionProem(self, a2);
    v33.location = location;
    v33.length = length;
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Range %@ exceeds maximum index value of NSNotFound - 1", v30, NSStringFromRange(v33)), 0}];
    objc_exception_throw(v31);
  }

  if (range.length)
  {
    if ((*&self->super._indexSetFlags & 2) != 0)
    {
      if (v6 <= 0x40)
      {
        self->super._internal._singleRange._range.location |= 0xFFFFFFFFFFFFFFFFLL >> -LOBYTE(range.length) << SLOBYTE(range.location);
        return;
      }

      [(NSMutableIndexSet *)self _convertToUsingRanges];
    }

    v7 = [(NSIndexSet *)self _indexOfRangeBeforeOrContainingIndex:location];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    p_internal = &self->super._internal;
    p_length = &self->super._internal._singleRange._range.length;
    v11 = MEMORY[0x1E69E5910];
    v12 = *MEMORY[0x1E69E5910];
    if ((self & 0xC000000000000007) == 0xC000000000000007)
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
    for (i = v8; ; ++i)
    {
      v17 = v15;
      if ((self & 0x8000000000000000) == 0)
      {
        indexSetFlags = self->super._indexSetFlags;
        v19 = &self->super._internal;
        if ((*&indexSetFlags & 2) == 0)
        {
          v19 = (&self->super._internal._singleBitfield + 1);
          if ((*&indexSetFlags & 1) == 0)
          {
            v19 = (p_internal->_singleRange._range.location + 8);
          }
        }

        v17 = v19->_singleRange._range.location;
      }

      if (v17)
      {
        if (*&self->super._indexSetFlags)
        {
          v17 = 1;
        }

        else
        {
          v17 = *(p_internal->_singleRange._range.location + 8);
        }
      }

      if (v8 >= v17)
      {
        goto LABEL_43;
      }

      v20 = &self->super._internal;
      if ((*&self->super._indexSetFlags & 1) == 0)
      {
        v20 = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
      }

      v21 = &v20[i];
      v22 = v21->_singleRange._range.location;
      v23 = v6 - v21->_singleRange._range.location;
      if (v6 < v21->_singleRange._range.location)
      {
        break;
      }

      v24 = v21->_singleRange._range.length + v22;
      if (location < v22)
      {
        v22 = location;
        if (v6 <= v24)
        {
          v23 = v24 - location;
        }

        else
        {
          v23 = length;
        }

        if (v6 <= v24)
        {
          length = v24 - location;
        }

LABEL_42:
        [(NSMutableIndexSet *)self _replaceRangeInArrayAtIndex:v8 withRange:v22, v23];
LABEL_43:
        if ((self & 0x8000000000000000) != 0)
        {
          v25 = *v11;
          if ((self & 0xC000000000000007) == 0xC000000000000007)
          {
            v25 = 0;
          }

          v26 = v25 ^ self;
          v27 = 0xFFFFFFFFFFFFFFFLL;
          if ((~v26 & 7) == 0)
          {
            v27 = 0xFFFFFFFFFFFFFLL;
          }

          v28 = v27 & (v26 >> 3);
          if (!v28)
          {
            goto LABEL_60;
          }

LABEL_57:
          if (*&self->super._indexSetFlags)
          {
            v28 = 1;
          }

          else
          {
            v28 = *(p_internal->_singleRange._range.location + 8);
          }
        }

        else
        {
          v29 = self->super._indexSetFlags;
          if ((*&v29 & 2) != 0)
          {
            v28 = p_internal->_singleRange._range.location;
            if (p_internal->_singleRange._range.location)
            {
              goto LABEL_57;
            }
          }

          else if (*&v29)
          {
            v28 = *p_length;
            if (*p_length)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v28 = *(p_internal->_singleRange._range.location + 8);
            if (v28)
            {
              goto LABEL_57;
            }
          }
        }

LABEL_60:
        if (v28 == v8)
        {
          [(NSMutableIndexSet *)self _addRangeToArray:location, length];
        }

        [(NSMutableIndexSet *)self _mergeOverlappingRangesStartingAtIndex:v8];
        return;
      }

      if (v6 <= v24)
      {
        return;
      }

      if (v24 >= location)
      {
        goto LABEL_42;
      }

      ++v8;
    }

    [(NSMutableIndexSet *)self _insertRange:location inArrayAtIndex:length, v8];
  }
}

- (void)addIndex:(NSUInteger)value
{
  if ((*&self->super._indexSetFlags & 2) != 0)
  {
    if (value <= 0x3F)
    {
      self->super._internal._singleRange._range.location |= 1 << value;
      return;
    }

    [(NSMutableIndexSet *)self _convertToUsingRanges];
  }

  [(NSMutableIndexSet *)self addIndexesInRange:value, 1];
}

- (void)removeIndexesInRange:(NSRange)range
{
  if (!range.length)
  {
    return;
  }

  length = range.length;
  location = range.location;
  if ((*&self->super._indexSetFlags & 2) == 0)
  {
    if (range.location)
    {
      v6 = [(NSIndexSet *)self _indexOfRangeAfterOrContainingIndex:range.location];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = location + length;
    p_internal = &self->super._internal;
    while (1)
    {
      if ((self & 0x8000000000000000) != 0)
      {
        v10 = *MEMORY[0x1E69E5910];
        if ((self & 0xC000000000000007) == 0xC000000000000007)
        {
          v10 = 0;
        }

        v11 = v10 ^ self;
        if ((~v11 & 7) != 0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = 0xFFFFFFFFFFFFFLL;
        }

        v13 = v12 & (v11 >> 3);
        if (!v13)
        {
          goto LABEL_31;
        }
      }

      else
      {
        indexSetFlags = self->super._indexSetFlags;
        if ((*&indexSetFlags & 2) != 0)
        {
          v13 = p_internal->_singleRange._range.location;
          if (!p_internal->_singleRange._range.location)
          {
            goto LABEL_31;
          }
        }

        else if (*&indexSetFlags)
        {
          v13 = self->super._internal._singleRange._range.length;
          if (!v13)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v13 = *(p_internal->_singleRange._range.location + 8);
          if (!v13)
          {
            goto LABEL_31;
          }
        }
      }

      if (*&self->super._indexSetFlags)
      {
        v13 = 1;
      }

      else
      {
        v13 = *(p_internal->_singleRange._range.location + 8);
      }

LABEL_31:
      if (v6 >= v13)
      {
        return;
      }

      v15 = &self->super._internal;
      if ((*&self->super._indexSetFlags & 1) == 0)
      {
        v15 = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
      }

      v16 = &v15[v6];
      v17 = v16->_singleRange._range.location;
      if (v8 < v16->_singleRange._range.location)
      {
        return;
      }

      v18 = v16->_singleRange._range.length + v17;
      if (location > v17)
      {
        if (v18 > v8)
        {
          [(NSMutableIndexSet *)self _replaceRangeInArrayAtIndex:v6 withRange:v8, v18 - v8];

          [(NSMutableIndexSet *)self _insertRange:v17 inArrayAtIndex:location - v17, v6];
          return;
        }

        if (location < v18)
        {
          [(NSMutableIndexSet *)self _replaceRangeInArrayAtIndex:v6 withRange:v17, location - v17];
        }

        ++v6;
      }

      else
      {
        if (v18 > v8)
        {

          [(NSMutableIndexSet *)self _replaceRangeInArrayAtIndex:v6 withRange:v8, v18 - v8];
          return;
        }

        [(NSMutableIndexSet *)self _removeRangeInArrayAtIndex:v6];
      }
    }
  }

  if (range.location <= 0x3F)
  {
    v7 = LOBYTE(range.location) + LOBYTE(range.length);
    if (range.location + range.length >= 0x40)
    {
      v7 = 64;
    }

    self->super._internal._singleRange._range.location &= ~(0xFFFFFFFFFFFFFFFFLL >> ((LOBYTE(range.location) | 0x40u) - v7) << SLOBYTE(range.location));
  }
}

- (void)removeIndex:(NSUInteger)value
{
  if ((*&self->super._indexSetFlags & 2) != 0)
  {
    if (value <= 0x3F)
    {
      self->super._internal._singleRange._range.location &= ~(1 << value);
    }
  }

  else
  {
    [(NSMutableIndexSet *)self removeIndexesInRange:value, 1];
  }
}

- (void)_incrementBy:(unint64_t)a3 startingAtIndex:(unint64_t)a4
{
  if (!a3)
  {
    return;
  }

  if ((self & 0x8000000000000000) != 0)
  {
    v7 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v7 = 0;
    }

    v8 = v7 ^ self;
    v9 = 0xFFFFFFFFFFFFFFFLL;
    if ((~v8 & 7) == 0)
    {
      v9 = 0xFFFFFFFFFFFFFLL;
    }

    if ((v9 & (v8 >> 3)) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    indexSetFlags = self->super._indexSetFlags;
    if ((*&indexSetFlags & 2) != 0)
    {
      if (!self->super._internal._singleRange._range.location)
      {
        goto LABEL_23;
      }
    }

    else if (*&indexSetFlags)
    {
      if (!self->super._internal._singleRange._range.length)
      {
        goto LABEL_23;
      }
    }

    else if (!*(self->super._internal._singleRange._range.location + 8))
    {
      goto LABEL_23;
    }
  }

  if (*&self->super._indexSetFlags)
  {
    if (a4 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v14 = 0;
      p_internal = &self->super._internal;
LABEL_22:
      if (a3 + p_internal[v14]._singleRange._range.location + p_internal[v14]._singleRange._range.length - 1 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: Incrementing by %ld would push last index beyond maximum index value of NSNotFound - 1", _NSMethodExceptionProem(self, a2), a3), 0}];
        objc_exception_throw(v28);
      }
    }
  }

  else if (a4 <= 0x7FFFFFFFFFFFFFFELL)
  {
    location = self->super._internal._singleRange._range.location;
    v12 = *(location + 8);
    if (v12)
    {
      p_internal = (location + 16 * *(location + 24) + 64);
      v14 = v12 - 1;
      goto LABEL_22;
    }
  }

LABEL_23:
  v15 = [(NSIndexSet *)self _indexOfRangeAfterOrContainingIndex:a4];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return;
  }

  v16 = v15;
  v17 = &self->super._internal;
  v18 = &self->super._internal;
  if ((*&self->super._indexSetFlags & 1) == 0)
  {
    v18 = (v17->_singleRange._range.location + 16 * *(v17->_singleRange._range.location + 24) + 64);
  }

  v19 = &v18[v15];
  v31 = v19->_singleRange._range.location;
  if (v19->_singleRange._range.location >= a4)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v30 = v19->_singleRange._range.location - a4 + v19->_singleRange._range.length;
    v29 = a4 + a3;
    [(NSMutableIndexSet *)self _replaceRangeInArrayAtIndex:v15 withRange:v19->_singleRange._range.location, a4 - v19->_singleRange._range.location];
    ++v16;
  }

  v20 = v16;
  v21 = MEMORY[0x1E69E5910];
  if ((self & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

LABEL_37:
  v26 = self->super._indexSetFlags;
  if ((*&v26 & 2) != 0)
  {
    length = v17->_singleRange._range.location;
    if (v17->_singleRange._range.location)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  if (*&v26)
  {
    length = self->super._internal._singleRange._range.length;
    if (length)
    {
      goto LABEL_44;
    }

    goto LABEL_47;
  }

  length = *(v17->_singleRange._range.location + 8);
  if (length)
  {
LABEL_44:
    if (*&self->super._indexSetFlags)
    {
      length = 1;
    }

    else
    {
      length = *(v17->_singleRange._range.location + 8);
    }
  }

LABEL_47:
  while (v16 < length)
  {
    v27 = &self->super._internal;
    if ((*&self->super._indexSetFlags & 1) == 0)
    {
      v27 = (v17->_singleRange._range.location + 16 * *(v17->_singleRange._range.location + 24) + 64);
    }

    [(NSMutableIndexSet *)self _replaceRangeInArrayAtIndex:v16++ withRange:v27[v20]._singleRange._range.location + a3, v27[v20]._singleRange._range.length];
    ++v20;
    if ((self & 0x8000000000000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_30:
    v22 = *v21;
    if ((self & 0xC000000000000007) == 0xC000000000000007)
    {
      v22 = 0;
    }

    v23 = v22 ^ self;
    if ((~v23 & 7) != 0)
    {
      v24 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = 0xFFFFFFFFFFFFFLL;
    }

    length = v24 & (v23 >> 3);
    if (length)
    {
      goto LABEL_44;
    }
  }

  if (v31 < a4)
  {

    [(NSMutableIndexSet *)self addIndexesInRange:v29, v30];
  }
}

- (void)_removeAndDecrementBy:(unint64_t)a3 startingAtIndex:(unint64_t)a4
{
  if (!a3)
  {
    return;
  }

  v7 = [(NSIndexSet *)self _indexOfRangeAfterOrContainingIndex:a4];
  v8 = v7;
  v9 = v7;
  if (v7)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return;
    }

    p_internal = &self->super._internal;
    if ((*&self->super._indexSetFlags & 1) == 0)
    {
      p_internal = (p_internal->_singleRange._range.location + 16 * *(p_internal->_singleRange._range.location + 24) + 64);
    }

    p_location = &p_internal[v7]._singleRange._range.location;
    v13 = *p_location;
    v12 = p_location[1];
    v15 = a4 >= v13;
    v14 = a4 - v13;
    v15 = !v15 || v14 >= v12;
    v16 = v15;
    v9 = v7 - v16;
  }

  v34 = v9;
  v17 = a3 + a4 - 1;
  v18 = &self->super._internal;
  v19 = MEMORY[0x1E69E5910];
  while (1)
  {
    if ((self & 0x8000000000000000) == 0)
    {
      indexSetFlags = self->super._indexSetFlags;
      if ((*&indexSetFlags & 2) != 0)
      {
        location = v18->_singleRange._range.location;
        if (!v18->_singleRange._range.location)
        {
          goto LABEL_33;
        }
      }

      else if (*&indexSetFlags)
      {
        location = self->super._internal._singleRange._range.length;
        if (!location)
        {
          goto LABEL_33;
        }
      }

      else
      {
        location = *(v18->_singleRange._range.location + 8);
        if (!location)
        {
          goto LABEL_33;
        }
      }

LABEL_30:
      if (*&self->super._indexSetFlags)
      {
        location = 1;
      }

      else
      {
        location = *(v18->_singleRange._range.location + 8);
      }

      goto LABEL_33;
    }

    v20 = *v19;
    if ((self & 0xC000000000000007) == 0xC000000000000007)
    {
      v20 = 0;
    }

    v21 = v20 ^ self;
    if ((~v21 & 7) != 0)
    {
      v22 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = 0xFFFFFFFFFFFFFLL;
    }

    location = v22 & (v21 >> 3);
    if (location)
    {
      goto LABEL_30;
    }

LABEL_33:
    if (v8 >= location)
    {
      break;
    }

    v25 = &self->super._internal;
    if ((*&self->super._indexSetFlags & 1) == 0)
    {
      v25 = (v18->_singleRange._range.location + 16 * *(v18->_singleRange._range.location + 24) + 64);
    }

    v26 = &v25[v8];
    v27 = v26->_singleRange._range.location;
    length = v26->_singleRange._range.length;
    v15 = v17 >= v26->_singleRange._range.location;
    v29 = v17 - v26->_singleRange._range.location;
    if (!v15)
    {
      v27 -= a3;
      goto LABEL_53;
    }

    v30 = v27 + length - 1;
    if (v27 >= a4 && v30 <= v17)
    {
LABEL_44:
      [(NSMutableIndexSet *)self _removeRangeInArrayAtIndex:v8, v34];
    }

    else
    {
      if (v27 <= a4 && v17 <= v30)
      {
        v32 = a3;
LABEL_46:
        length -= v32;
LABEL_53:
        [(NSMutableIndexSet *)self _replaceRangeInArrayAtIndex:v8 withRange:v27, length, v34];
        goto LABEL_54;
      }

      if (v17 <= v30)
      {
        v31 = v29 + 1;
        length -= v31;
        if (length)
        {
          v27 = v27 - a3 + v31;
          goto LABEL_53;
        }

        goto LABEL_44;
      }

      if (v27 <= a4)
      {
        v33 = v30 - a4;
        if (v30 >= a4)
        {
          v15 = __CFADD__(v33, 1);
          v32 = v33 + 1;
          if (!v15)
          {
            goto LABEL_46;
          }
        }
      }

LABEL_54:
      ++v8;
    }
  }

  [(NSMutableIndexSet *)self _mergeOverlappingRangesStartingAtIndex:v34];
}

- (void)shiftIndexesStartingAtIndex:(NSUInteger)index by:(NSInteger)delta
{
  if (delta && [(NSIndexSet *)self count])
  {
    if ((self & 0x8000000000000000) != 0 || (*&self->super._indexSetFlags & 2) != 0)
    {
      [(NSMutableIndexSet *)self _convertToUsingRanges];
    }

    if (delta < 1)
    {

      [NSMutableIndexSet _removeAndDecrementBy:"_removeAndDecrementBy:startingAtIndex:" startingAtIndex:?];
    }

    else
    {

      [(NSMutableIndexSet *)self _incrementBy:delta startingAtIndex:index];
    }
  }
}

@end