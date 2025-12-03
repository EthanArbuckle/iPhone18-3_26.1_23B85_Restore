@interface CPCharSequence
- (BOOL)map:(void *)map passing:(void *)passing;
- (BOOL)map:(void *)map whereNeighborsWith:(id)with passing:(void *)passing;
- (BOOL)mapToPairs:(void *)pairs passing:(void *)passing;
- (BOOL)mapToPairsWithIndex:(void *)index passing:(void *)passing;
- (BOOL)mapWithIndex:(void *)index from:(unsigned int)from length:(unsigned int)length passing:(void *)passing;
- (BOOL)mapWithIndex:(void *)index passing:(void *)passing;
- (BOOL)removeSubsequences:(id)subsequences whereTrue:(void *)true passing:(void *)passing;
- (BOOL)removeToSubsequence:(id)subsequence ifTrue:(void *)true passing:(void *)passing;
- (CGRect)bounds;
- (CGRect)boundsFrom:(unsigned int)from length:(unsigned int)length;
- (CGRect)normalizedBounds;
- (CPCharSequence)initWithChars:(CPPDFChar *)chars length:(unsigned int)length;
- (CPCharSequence)initWithSizeFor:(unsigned int)for;
- (CPPDFChar)charAtIndex:(unsigned int)index;
- (double)averageRotation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initSuper;
- (id)newSubsequenceFrom:(unsigned int)from length:(unsigned int)length;
- (void)addChar:(CPPDFChar *)char;
- (void)addChars:(CPPDFChar *)chars length:(unsigned int)length;
- (void)addChars:(CPPDFChar *)chars length:(unsigned int)length ifTrue:(void *)true passing:(void *)passing;
- (void)addCharsFromSequence:(id)sequence;
- (void)copyToSubsequence:(id)subsequence from:(unsigned int)from length:(unsigned int)length;
- (void)copyToSubsequence:(id)subsequence ifTrue:(void *)true passing:(void *)passing;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)merge:(id)merge by:(void *)by;
- (void)removeAllChars;
- (void)removeChar;
- (void)removeCharAtIndex:(unsigned int)index;
- (void)removeFrom:(unsigned int)from;
- (void)replaceCharAtIndex:(unsigned int)index withChar:(CPPDFChar *)char;
- (void)resize:(unsigned int)resize;
- (void)sortBy:(void *)by;
- (void)splitToSubsequences:(id)subsequences whereTrue:(void *)true passing:(void *)passing;
@end

@implementation CPCharSequence

- (double)averageRotation
{
  v3 = [(CPCharSequence *)self length];
  if (v3 < 1)
  {
    v6 = 0.0;
    v5 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = __sincos_stret([(CPCharSequence *)self charAtIndex:v4][168] * 0.0174532925);
      v5 = v5 + v7.__cosval;
      v6 = v6 + v7.__sinval;
      v4 = (v4 + 1);
    }

    while (v3 != v4);
  }

  return atan2(v6 / v3, v5 / v3);
}

- (CGRect)normalizedBounds
{
  if (self->length)
  {
    v3 = 0;
    width = 0.0;
    x = INFINITY;
    y = INFINITY;
    height = 0.0;
    do
    {
      v15 = [(CPCharSequence *)self charAtIndex:v3][112];
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      v13 = CGRectUnion(v12, v15);
      x = v13.origin.x;
      y = v13.origin.y;
      width = v13.size.width;
      height = v13.size.height;
      v3 = (v3 + 1);
    }

    while (v3 < self->length);
  }

  else
  {
    height = 0.0;
    y = INFINITY;
    width = 0.0;
    x = INFINITY;
  }

  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)boundsFrom:(unsigned int)from length:(unsigned int)length
{
  if (length + from > self->length)
  {
    __assert_rtn("[CPCharSequence boundsFrom:length:]", "CPCharSequence.m", 776, "startIndex + numChars <= length");
  }

  if (length)
  {
    v4 = &self->charArray[from];
    v5 = **v4;
    v6 = vaddq_f64(v5, (*v4)[1]);
    if (length != 1)
    {
      v7 = &v4[length];
      v8 = v4 + 1;
      do
      {
        v9 = *v8++;
        v10 = vaddq_f64(*v9, v9[1]);
        v5 = vbslq_s8(vcgtq_f64(v5, *v9), *v9, v5);
        v6 = vbslq_s8(vcgtq_f64(v10, v6), v10, v6);
      }

      while (v8 < v7);
    }

    v11 = vsubq_f64(v6, v5);
  }

  else
  {
    v5 = vdupq_n_s64(0x7FF0000000000000uLL);
    v11 = 0uLL;
  }

  v12 = v5.f64[1];
  v13 = v11.f64[1];
  result.size.width = v11.f64[0];
  result.origin.x = v5.f64[0];
  result.size.height = v13;
  result.origin.y = v12;
  return result;
}

- (CGRect)bounds
{
  [(CPCharSequence *)self boundsFrom:0 length:self->length];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)map:(void *)map whereNeighborsWith:(id)with passing:(void *)passing
{
  v5 = *(with + 2);
  length = self->length;
  if (length)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_24;
  }

  charArray = self->charArray;
  v11 = *(with + 2);
  v12 = compareAnchorXIncreasingYDecreasing(charArray, v11);
  v13 = v12;
  v14 = &charArray[v12 < 1];
  v15 = &v11[v12 > 0];
  if (8 * (v12 < 1) < 8 * length && 8 * (v12 > 0) < 8 * v5)
  {
    v18 = &charArray[length];
    v19 = &v11[v5];
    while (1)
    {
      v17 = compareAnchorXIncreasingYDecreasing(v14, v15);
      if (v17 < 1)
      {
        if (v13 >= 1)
        {
          v20 = (map)(*v14, *(v15 - 1), passing);
          if (!v20)
          {
            return v20;
          }
        }

        ++v14;
      }

      else
      {
        if (v13 <= 0)
        {
          v20 = (map)(*(v14 - 1), *v15, passing);
          if (!v20)
          {
            return v20;
          }
        }

        ++v15;
      }

      if (v14 < v18)
      {
        v13 = v17;
        if (v15 < v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  v17 = v12;
LABEL_20:
  if (v17 > 0)
  {
    v20 = (map)(*v14, *(v15 - 1), passing);
    if (!v20)
    {
      return v20;
    }

LABEL_24:
    LOBYTE(v20) = 1;
    return v20;
  }

  if ((map)(*(v14 - 1), *v15, passing))
  {
    goto LABEL_24;
  }

  LOBYTE(v20) = 0;
  return v20;
}

- (BOOL)mapToPairsWithIndex:(void *)index passing:(void *)passing
{
  length = self->length;
  if (length >= 2)
  {
    v8 = 0;
    charArray = self->charArray;
    v10 = &charArray[length];
    v11 = charArray + 2;
    do
    {
      v5 = (index)(v8, *(v11 - 2), *(v11 - 1), passing);
      v8 = (v8 + 1);
      if (v5)
      {
        v12 = v11 >= v10;
      }

      else
      {
        v12 = 1;
      }

      ++v11;
    }

    while (!v12);
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)mapToPairs:(void *)pairs passing:(void *)passing
{
  length = self->length;
  if (length >= 2)
  {
    charArray = self->charArray;
    v9 = &charArray[length];
    v10 = charArray + 2;
    do
    {
      v5 = (pairs)(*(v10 - 2), *(v10 - 1), passing);
      if (v5)
      {
        v11 = v10 >= v9;
      }

      else
      {
        v11 = 1;
      }

      ++v10;
    }

    while (!v11);
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)mapWithIndex:(void *)index from:(unsigned int)from length:(unsigned int)length passing:(void *)passing
{
  v6 = length + from;
  if (length + from > self->length)
  {
    __assert_rtn("[CPCharSequence mapWithIndex:from:length:passing:]", "CPCharSequence.m", 673, "pastEndIndex <= length");
  }

  LODWORD(v7) = from;
  if (v6 <= from)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    charArray = self->charArray;
    v12 = (index)(*&from, charArray[from], passing);
    if (v12)
    {
      v13 = &charArray[v7 + 1];
      v14 = length - 1;
      while (v14)
      {
        v7 = (v7 + 1);
        v15 = *v13++;
        --v14;
        if (!(index)(v7, v15, passing))
        {
          goto LABEL_10;
        }
      }

      LODWORD(v7) = v6;
LABEL_10:
      LOBYTE(v12) = v7 >= v6;
    }
  }

  return v12;
}

- (BOOL)mapWithIndex:(void *)index passing:(void *)passing
{
  if (self->length)
  {
    v7 = 0;
    charArray = self->charArray;
    do
    {
      v9 = (index)(v7, charArray[v7], passing);
      if (!v9)
      {
        break;
      }

      ++v7;
    }

    while (v7 < self->length);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)map:(void *)map passing:(void *)passing
{
  length = self->length;
  if (length)
  {
    charArray = self->charArray;
    v8 = &charArray[length];
    v9 = charArray + 1;
    do
    {
      v10 = (map)(*(v9 - 1), passing);
      if (v10)
      {
        v11 = v9 >= v8;
      }

      else
      {
        v11 = 1;
      }

      ++v9;
    }

    while (!v11);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)removeToSubsequence:(id)subsequence ifTrue:(void *)true passing:(void *)passing
{
  if (!self->charArray)
  {
    return 0;
  }

  if (self->length)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = self->charArray[v9];
      if ((true)(v11, passing))
      {
        v12 = *(subsequence + 2);
        if (v12 >= *(subsequence + 7))
        {
          [subsequence resize:v12 + 1];
          v13 = *(subsequence + 2);
          if (!v13)
          {
            goto LABEL_17;
          }

          v12 = *(subsequence + 2);
        }

        else
        {
          v13 = *(subsequence + 2);
        }

        *(v13 + 8 * v12) = v11;
        *(subsequence + 2) = v12 + 1;
        if (self->sharedMemory)
        {
          if (v9 + 1 < self->length)
          {
            [(CPCharSequence *)self resize:?];
            if (!self->charArray)
            {
              goto LABEL_17;
            }
          }
        }
      }

      else
      {
        self->charArray[v10++] = v11;
      }

      if (++v9 >= self->length)
      {
        goto LABEL_17;
      }
    }
  }

  v10 = 0;
  LODWORD(v9) = 0;
LABEL_17:
  self->length = v10;
  return v10 < v9;
}

- (void)copyToSubsequence:(id)subsequence ifTrue:(void *)true passing:(void *)passing
{
  length = self->length;
  if (length)
  {
    charArray = self->charArray;
    v10 = &charArray[length];
    do
    {
      if ((true)(*charArray, passing))
      {
        v11 = *(subsequence + 2);
        if (v11 >= *(subsequence + 7))
        {
          [subsequence resize:v11 + 1];
          v12 = *(subsequence + 2);
          if (!v12)
          {
            return;
          }

          v11 = *(subsequence + 2);
        }

        else
        {
          v12 = *(subsequence + 2);
        }

        *(v12 + 8 * v11) = *charArray;
        *(subsequence + 2) = v11 + 1;
      }

      ++charArray;
    }

    while (charArray < v10);
  }
}

- (void)copyToSubsequence:(id)subsequence from:(unsigned int)from length:(unsigned int)length
{
  if (length + from > self->length)
  {
    __assert_rtn("[CPCharSequence copyToSubsequence:from:length:]", "CPCharSequence.m", 578, "startIndex + numChars <= length");
  }

  if (length && self->charArray)
  {
    v9 = *(subsequence + 2) + length;
    [subsequence resize:v9];
    v10 = *(subsequence + 2);
    if (v10)
    {
      memcpy((v10 + 8 * *(subsequence + 2)), &self->charArray[from], 8 * length);
      *(subsequence + 2) = v9;
    }
  }
}

- (BOOL)removeSubsequences:(id)subsequences whereTrue:(void *)true passing:(void *)passing
{
  result = 0;
  length = self->length;
  if (length)
  {
    if (length != 1)
    {
      v11 = 0;
      v12 = 0;
      charArray = self->charArray;
      v14 = 1;
      do
      {
        ++charArray;
        while (1)
        {
          v15 = v14;
          v16 = (true)(*(charArray - 1), *charArray, passing);
          if (!v16 || (v12 & 1) == 0)
          {
            break;
          }

          v17 = [(CPCharSequence *)self newSubsequenceFrom:v11 length:(v15 - v11)];
          [subsequences addObject:v17];

          v14 = (v15 + 1);
          ++charArray;
          v12 = 1;
          v11 = v15;
          if (v14 >= self->length)
          {
            v11 = v15;
            goto LABEL_17;
          }
        }

        if (v16)
        {
          length = v15;
        }

        v12 |= v16;
        if (v16)
        {
          v11 = v15;
        }

        else
        {
          v11 = v11;
        }

        v14 = (v15 + 1);
      }

      while (v14 < self->length);
      if ((v12 & 1) == 0)
      {
        result = 0;
        goto LABEL_18;
      }

LABEL_17:
      v18 = [(CPCharSequence *)self newSubsequenceFrom:v11 length:(v14 - v11)];
      [subsequences addObject:v18];

      result = 1;
    }

LABEL_18:
    self->length = length;
  }

  return result;
}

- (void)splitToSubsequences:(id)subsequences whereTrue:(void *)true passing:(void *)passing
{
  LODWORD(v5) = self->length;
  if (v5)
  {
    if (v5 == 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      v11 = self->charArray + 1;
      v5 = 1;
      do
      {
        if ((true)(*(v11 - 1), *v11, passing))
        {
          v12 = [(CPCharSequence *)self newSubsequenceFrom:v8 length:(v5 - v8)];
          [subsequences addObject:v12];

          v8 = v5;
        }

        v5 = (v5 + 1);
        ++v11;
      }

      while (v5 < self->length);
    }

    passing = [(CPCharSequence *)self newSubsequenceFrom:v8 length:(v5 - v8), passing];
    [subsequences addObject:passing];
  }
}

- (id)newSubsequenceFrom:(unsigned int)from length:(unsigned int)length
{
  if (length + from > self->length)
  {
    __assert_rtn("[CPCharSequence newSubsequenceFrom:length:]", "CPCharSequence.m", 493, "startIndex + newLength <= length");
  }

  v7 = [[CPCharSequence alloc] initWithSizeFor:0];
  v8 = v7;
  if (length && v7)
  {
    if (!self->sharedMemory)
    {
      v9 = [[CPMemoryOwner alloc] initWithAllocatedMemory:self->charArray];
      *&self->previousSize = 0;
      self->sharedMemory = v9;
    }

    v8->length = length;
    v8->charArray = &self->charArray[from];
    v8->sharedMemory = self->sharedMemory;
    v8->wasMerged = self->wasMerged;
  }

  return v8;
}

- (void)merge:(id)merge by:(void *)by
{
  v4 = *(merge + 2);
  if (v4)
  {
    v8 = self->length + v4;
    [(CPCharSequence *)self resize:v8];
    charArray = self->charArray;
    if (charArray)
    {
      v10 = *(merge + 2);
      if (v10)
      {
        length = self->length;
        v12 = &v10[8 * v4];
        if (!length)
        {
          goto LABEL_17;
        }

        v13 = &charArray[length];
        v14 = &charArray[v8 - 1];
        do
        {
          v15 = (by)(v13 - 1, v12 - 8);
          if (v15 <= 0)
          {
            v16 = v12;
          }

          else
          {
            v16 = v13;
          }

          if (v15 <= 0)
          {
            v12 -= 8;
          }

          else
          {
            --v13;
          }

          *v14-- = *(v16 - 1);
          charArray = self->charArray;
        }

        while (v13 > charArray && v12 > v10);
        if (v12 > v10)
        {
LABEL_17:
          memcpy(charArray, v10, (v12 - v10) & 0x7FFFFFFF8);
        }

        self->length = v8;
        self->wasMerged = 1;
      }
    }
  }
}

- (void)sortBy:(void *)by
{
  if (self->sharedMemory)
  {
    [(CPCharSequence *)self resize:self->length];
  }

  charArray = self->charArray;
  length = self->length;

  qsort(charArray, length, 8uLL, by);
}

- (void)removeFrom:(unsigned int)from
{
  if (self->length <= from)
  {
    __assert_rtn("[CPCharSequence removeFrom:]", "CPCharSequence.m", 399, "length > startIndex");
  }

  if (from)
  {
    self->length = from;
  }

  else
  {

    [(CPCharSequence *)self removeAllChars];
  }
}

- (void)removeCharAtIndex:(unsigned int)index
{
  length = self->length;
  if (length <= index)
  {
    __assert_rtn("[CPCharSequence removeCharAtIndex:]", "CPCharSequence.m", 382, "index < length");
  }

  if (index + 1 < length)
  {
    if (self->sharedMemory)
    {
      [(CPCharSequence *)self resize:?];
      length = self->length;
    }

    v6 = &self->charArray[index];
    memmove(v6, v6 + 1, 8 * (length + ~index));
    length = self->length;
  }

  self->length = length - 1;
}

- (void)replaceCharAtIndex:(unsigned int)index withChar:(CPPDFChar *)char
{
  if (self->length <= index)
  {
    __assert_rtn("[CPCharSequence replaceCharAtIndex:withChar:]", "CPCharSequence.m", 369, "index < length");
  }

  if (self->sharedMemory)
  {
    [(CPCharSequence *)self resize:?];
  }

  charArray = self->charArray;
  if (charArray)
  {
    charArray[index] = char;
  }
}

- (void)removeAllChars
{
  self->length = 0;
  sharedMemory = self->sharedMemory;
  if (sharedMemory)
  {

    self->sharedMemory = 0;
  }

  else
  {
    free(self->charArray);
    *&self->previousSize = 0;
  }

  self->charArray = 0;
}

- (void)removeChar
{
  length = self->length;
  if (!length)
  {
    __assert_rtn("[CPCharSequence removeChar]", "CPCharSequence.m", 346, "length > 0");
  }

  self->length = length - 1;
}

- (void)addCharsFromSequence:(id)sequence
{
  v3 = *(sequence + 2);
  if (v3)
  {
    v6 = self->length + v3;
    [(CPCharSequence *)self resize:v6];
    charArray = self->charArray;
    if (charArray)
    {
      memcpy(&charArray[self->length], *(sequence + 2), 8 * v3);
      self->length = v6;
    }
  }
}

- (void)addChars:(CPPDFChar *)chars length:(unsigned int)length ifTrue:(void *)true passing:(void *)passing
{
  if (length)
  {
    charsCopy = chars;
    v10 = 0;
    v11 = &chars[length];
    v12 = &self->charArray[self->length];
    do
    {
      if ((true)(charsCopy, passing))
      {
        v13 = self->length + 1;
        self->length = v13;
        if (v13 > self->size)
        {
          [(CPCharSequence *)self resize:?];
          charArray = self->charArray;
          if (!charArray)
          {
            return;
          }

          v12 = &charArray[v10];
        }

        *v12++ = charsCopy;
        ++v10;
      }

      ++charsCopy;
    }

    while (charsCopy < v11);
  }
}

- (void)addChars:(CPPDFChar *)chars length:(unsigned int)length
{
  v7 = self->length + length;
  [(CPCharSequence *)self resize:v7];
  charArray = self->charArray;
  if (charArray)
  {
    if (length)
    {
      v9 = 0;
      v10 = &chars[length];
      if (v10 <= &chars[1])
      {
        v10 = chars + 1;
      }

      v11 = v10 - 1;
      if (v11 == chars)
      {
        charsCopy = chars;
      }

      else
      {
        charsCopy = (&chars->var0.var0.origin.x + 1);
      }

      v13 = v11 == chars;
      v14 = &charArray[self->length];
      v15 = v11 - charsCopy;
      if (!v13)
      {
        ++v15;
      }

      v16 = vdupq_n_s64(v15);
      v17 = (v15 + 2) & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v18 = vaddq_s64(vdupq_n_s64(chars), xmmword_18439C660);
        v19 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v9), xmmword_18439C670)));
        if (v19.i8[0])
        {
          v14[v9] = v18.i64[0];
        }

        if (v19.i8[4])
        {
          v14[v9 + 1] = v18.i64[1];
        }

        v9 += 2;
        chars += 2;
      }

      while (v17 != v9);
    }

    self->length = v7;
  }
}

- (void)addChar:(CPPDFChar *)char
{
  length = self->length;
  if (length >= self->size)
  {
    [(CPCharSequence *)self resize:length + 1];
  }

  charArray = self->charArray;
  if (charArray)
  {
    v7 = self->length;
    charArray[v7] = char;
    self->length = v7 + 1;
  }
}

- (CPPDFChar)charAtIndex:(unsigned int)index
{
  if (self->length <= index)
  {
    __assert_rtn("[CPCharSequence charAtIndex:]", "CPCharSequence.m", 275, "index < length");
  }

  charArray = self->charArray;
  if (charArray)
  {
    return charArray[index];
  }

  else
  {
    return 0;
  }
}

- (void)resize:(unsigned int)resize
{
  if (self->length <= resize)
  {
    length = resize;
  }

  else
  {
    length = self->length;
  }

  sharedMemory = self->sharedMemory;
  if (sharedMemory)
  {
    if (length)
    {
      v6 = malloc_type_malloc(8 * length, 0x2004093837F09uLL);
      v7 = v6;
      if (v6)
      {
        memcpy(v6, self->charArray, 8 * self->length);
      }

      self->charArray = v7;
      sharedMemory = self->sharedMemory;
    }

    else
    {
      self->charArray = 0;
    }

    self->previousSize = length;
    self->size = length;

    self->sharedMemory = 0;
  }

  else
  {
    size = self->size;
    if (length > size)
    {
      if (size)
      {
        v9 = self->previousSize + size;
        if (length <= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = length;
        }

        v11 = malloc_type_realloc(self->charArray, 8 * v10, 0x2004093837F09uLL);
        if (v11)
        {
          self->charArray = v11;
          self->previousSize = self->size;
          self->size = v10;
        }

        else
        {
          self->charArray = 0;
          self->size = 0;
          self->length = 0;
        }
      }

      else
      {
        self->charArray = malloc_type_malloc(8 * length, 0x2004093837F09uLL);
        self->previousSize = length;
        self->size = length;
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = CPCopyObject(self, zone);
  if (v4)
  {
    if (!self->sharedMemory)
    {
      v5 = [[CPMemoryOwner alloc] initWithAllocatedMemory:self->charArray];
      *&self->previousSize = 0;
      self->sharedMemory = v5;
    }

    *(v4 + 8) = self->length;
    *(v4 + 16) = self->charArray;
    *(v4 + 28) = self->size;
    *(v4 + 24) = self->previousSize;
    *(v4 + 32) = self->sharedMemory;
    *(v4 + 40) = self->wasMerged;
  }

  return v4;
}

- (void)dealloc
{
  sharedMemory = self->sharedMemory;
  if (sharedMemory)
  {
  }

  else
  {
    [(CPCharSequence *)self dispose];
  }

  v4.receiver = self;
  v4.super_class = CPCharSequence;
  [(CPCharSequence *)&v4 dealloc];
}

- (void)finalize
{
  [(CPCharSequence *)self dispose];
  v3.receiver = self;
  v3.super_class = CPCharSequence;
  [(CPCharSequence *)&v3 finalize];
}

- (void)dispose
{
  charArray = self->charArray;
  if (charArray)
  {
    if (!self->sharedMemory)
    {
      free(charArray);
    }

    self->charArray = 0;
  }
}

- (id)initSuper
{
  v3.receiver = self;
  v3.super_class = CPCharSequence;
  return [(CPCharSequence *)&v3 init];
}

- (CPCharSequence)initWithChars:(CPPDFChar *)chars length:(unsigned int)length
{
  result = [(CPCharSequence *)self initWithSizeFor:*&length];
  if (result)
  {
    if (length)
    {
      v7 = 0;
      v8 = &chars[length];
      if (v8 <= &chars[1])
      {
        v8 = chars + 1;
      }

      v9 = v8 - 1;
      if (v9 == chars)
      {
        charsCopy = chars;
      }

      else
      {
        charsCopy = (&chars->var0.var0.origin.x + 1);
      }

      v11 = v9 == chars;
      v12 = v9 - charsCopy;
      charArray = result->charArray;
      v14 = v12 / 0xC0;
      if (!v11)
      {
        ++v14;
      }

      v15 = vdupq_n_s64(v14);
      v16 = (v14 + 2) & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v17 = vaddq_s64(vdupq_n_s64(chars), xmmword_18439C660);
        v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v7), xmmword_18439C670)));
        if (v18.i8[0])
        {
          charArray[v7] = v17.i64[0];
        }

        if (v18.i8[4])
        {
          charArray[v7 + 1] = v17.i64[1];
        }

        v7 += 2;
        chars += 2;
      }

      while (v16 != v7);
    }

    result->length = length;
  }

  return result;
}

- (CPCharSequence)initWithSizeFor:(unsigned int)for
{
  v7.receiver = self;
  v7.super_class = CPCharSequence;
  v4 = [(CPCharSequence *)&v7 init];
  v5 = v4;
  if (for && v4)
  {
    v4->charArray = malloc_type_malloc(8 * for, 0x2004093837F09uLL);
    v5->previousSize = for;
    v5->size = for;
  }

  return v5;
}

@end