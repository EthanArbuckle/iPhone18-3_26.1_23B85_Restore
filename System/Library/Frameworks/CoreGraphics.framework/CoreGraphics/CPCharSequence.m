@interface CPCharSequence
- (BOOL)map:(void *)a3 passing:(void *)a4;
- (BOOL)map:(void *)a3 whereNeighborsWith:(id)a4 passing:(void *)a5;
- (BOOL)mapToPairs:(void *)a3 passing:(void *)a4;
- (BOOL)mapToPairsWithIndex:(void *)a3 passing:(void *)a4;
- (BOOL)mapWithIndex:(void *)a3 from:(unsigned int)a4 length:(unsigned int)a5 passing:(void *)a6;
- (BOOL)mapWithIndex:(void *)a3 passing:(void *)a4;
- (BOOL)removeSubsequences:(id)a3 whereTrue:(void *)a4 passing:(void *)a5;
- (BOOL)removeToSubsequence:(id)a3 ifTrue:(void *)a4 passing:(void *)a5;
- (CGRect)bounds;
- (CGRect)boundsFrom:(unsigned int)a3 length:(unsigned int)a4;
- (CGRect)normalizedBounds;
- (CPCharSequence)initWithChars:(CPPDFChar *)a3 length:(unsigned int)a4;
- (CPCharSequence)initWithSizeFor:(unsigned int)a3;
- (CPPDFChar)charAtIndex:(unsigned int)a3;
- (double)averageRotation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initSuper;
- (id)newSubsequenceFrom:(unsigned int)a3 length:(unsigned int)a4;
- (void)addChar:(CPPDFChar *)a3;
- (void)addChars:(CPPDFChar *)a3 length:(unsigned int)a4;
- (void)addChars:(CPPDFChar *)a3 length:(unsigned int)a4 ifTrue:(void *)a5 passing:(void *)a6;
- (void)addCharsFromSequence:(id)a3;
- (void)copyToSubsequence:(id)a3 from:(unsigned int)a4 length:(unsigned int)a5;
- (void)copyToSubsequence:(id)a3 ifTrue:(void *)a4 passing:(void *)a5;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)merge:(id)a3 by:(void *)a4;
- (void)removeAllChars;
- (void)removeChar;
- (void)removeCharAtIndex:(unsigned int)a3;
- (void)removeFrom:(unsigned int)a3;
- (void)replaceCharAtIndex:(unsigned int)a3 withChar:(CPPDFChar *)a4;
- (void)resize:(unsigned int)a3;
- (void)sortBy:(void *)a3;
- (void)splitToSubsequences:(id)a3 whereTrue:(void *)a4 passing:(void *)a5;
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

- (CGRect)boundsFrom:(unsigned int)a3 length:(unsigned int)a4
{
  if (a4 + a3 > self->length)
  {
    __assert_rtn("[CPCharSequence boundsFrom:length:]", "CPCharSequence.m", 776, "startIndex + numChars <= length");
  }

  if (a4)
  {
    v4 = &self->charArray[a3];
    v5 = **v4;
    v6 = vaddq_f64(v5, (*v4)[1]);
    if (a4 != 1)
    {
      v7 = &v4[a4];
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

- (BOOL)map:(void *)a3 whereNeighborsWith:(id)a4 passing:(void *)a5
{
  v5 = *(a4 + 2);
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
  v11 = *(a4 + 2);
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
          v20 = (a3)(*v14, *(v15 - 1), a5);
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
          v20 = (a3)(*(v14 - 1), *v15, a5);
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
    v20 = (a3)(*v14, *(v15 - 1), a5);
    if (!v20)
    {
      return v20;
    }

LABEL_24:
    LOBYTE(v20) = 1;
    return v20;
  }

  if ((a3)(*(v14 - 1), *v15, a5))
  {
    goto LABEL_24;
  }

  LOBYTE(v20) = 0;
  return v20;
}

- (BOOL)mapToPairsWithIndex:(void *)a3 passing:(void *)a4
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
      v5 = (a3)(v8, *(v11 - 2), *(v11 - 1), a4);
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

- (BOOL)mapToPairs:(void *)a3 passing:(void *)a4
{
  length = self->length;
  if (length >= 2)
  {
    charArray = self->charArray;
    v9 = &charArray[length];
    v10 = charArray + 2;
    do
    {
      v5 = (a3)(*(v10 - 2), *(v10 - 1), a4);
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

- (BOOL)mapWithIndex:(void *)a3 from:(unsigned int)a4 length:(unsigned int)a5 passing:(void *)a6
{
  v6 = a5 + a4;
  if (a5 + a4 > self->length)
  {
    __assert_rtn("[CPCharSequence mapWithIndex:from:length:passing:]", "CPCharSequence.m", 673, "pastEndIndex <= length");
  }

  LODWORD(v7) = a4;
  if (v6 <= a4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    charArray = self->charArray;
    v12 = (a3)(*&a4, charArray[a4], a6);
    if (v12)
    {
      v13 = &charArray[v7 + 1];
      v14 = a5 - 1;
      while (v14)
      {
        v7 = (v7 + 1);
        v15 = *v13++;
        --v14;
        if (!(a3)(v7, v15, a6))
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

- (BOOL)mapWithIndex:(void *)a3 passing:(void *)a4
{
  if (self->length)
  {
    v7 = 0;
    charArray = self->charArray;
    do
    {
      v9 = (a3)(v7, charArray[v7], a4);
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

- (BOOL)map:(void *)a3 passing:(void *)a4
{
  length = self->length;
  if (length)
  {
    charArray = self->charArray;
    v8 = &charArray[length];
    v9 = charArray + 1;
    do
    {
      v10 = (a3)(*(v9 - 1), a4);
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

- (BOOL)removeToSubsequence:(id)a3 ifTrue:(void *)a4 passing:(void *)a5
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
      if ((a4)(v11, a5))
      {
        v12 = *(a3 + 2);
        if (v12 >= *(a3 + 7))
        {
          [a3 resize:v12 + 1];
          v13 = *(a3 + 2);
          if (!v13)
          {
            goto LABEL_17;
          }

          v12 = *(a3 + 2);
        }

        else
        {
          v13 = *(a3 + 2);
        }

        *(v13 + 8 * v12) = v11;
        *(a3 + 2) = v12 + 1;
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

- (void)copyToSubsequence:(id)a3 ifTrue:(void *)a4 passing:(void *)a5
{
  length = self->length;
  if (length)
  {
    charArray = self->charArray;
    v10 = &charArray[length];
    do
    {
      if ((a4)(*charArray, a5))
      {
        v11 = *(a3 + 2);
        if (v11 >= *(a3 + 7))
        {
          [a3 resize:v11 + 1];
          v12 = *(a3 + 2);
          if (!v12)
          {
            return;
          }

          v11 = *(a3 + 2);
        }

        else
        {
          v12 = *(a3 + 2);
        }

        *(v12 + 8 * v11) = *charArray;
        *(a3 + 2) = v11 + 1;
      }

      ++charArray;
    }

    while (charArray < v10);
  }
}

- (void)copyToSubsequence:(id)a3 from:(unsigned int)a4 length:(unsigned int)a5
{
  if (a5 + a4 > self->length)
  {
    __assert_rtn("[CPCharSequence copyToSubsequence:from:length:]", "CPCharSequence.m", 578, "startIndex + numChars <= length");
  }

  if (a5 && self->charArray)
  {
    v9 = *(a3 + 2) + a5;
    [a3 resize:v9];
    v10 = *(a3 + 2);
    if (v10)
    {
      memcpy((v10 + 8 * *(a3 + 2)), &self->charArray[a4], 8 * a5);
      *(a3 + 2) = v9;
    }
  }
}

- (BOOL)removeSubsequences:(id)a3 whereTrue:(void *)a4 passing:(void *)a5
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
          v16 = (a4)(*(charArray - 1), *charArray, a5);
          if (!v16 || (v12 & 1) == 0)
          {
            break;
          }

          v17 = [(CPCharSequence *)self newSubsequenceFrom:v11 length:(v15 - v11)];
          [a3 addObject:v17];

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
      [a3 addObject:v18];

      result = 1;
    }

LABEL_18:
    self->length = length;
  }

  return result;
}

- (void)splitToSubsequences:(id)a3 whereTrue:(void *)a4 passing:(void *)a5
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
        if ((a4)(*(v11 - 1), *v11, a5))
        {
          v12 = [(CPCharSequence *)self newSubsequenceFrom:v8 length:(v5 - v8)];
          [a3 addObject:v12];

          v8 = v5;
        }

        v5 = (v5 + 1);
        ++v11;
      }

      while (v5 < self->length);
    }

    v13 = [(CPCharSequence *)self newSubsequenceFrom:v8 length:(v5 - v8), a5];
    [a3 addObject:v13];
  }
}

- (id)newSubsequenceFrom:(unsigned int)a3 length:(unsigned int)a4
{
  if (a4 + a3 > self->length)
  {
    __assert_rtn("[CPCharSequence newSubsequenceFrom:length:]", "CPCharSequence.m", 493, "startIndex + newLength <= length");
  }

  v7 = [[CPCharSequence alloc] initWithSizeFor:0];
  v8 = v7;
  if (a4 && v7)
  {
    if (!self->sharedMemory)
    {
      v9 = [[CPMemoryOwner alloc] initWithAllocatedMemory:self->charArray];
      *&self->previousSize = 0;
      self->sharedMemory = v9;
    }

    v8->length = a4;
    v8->charArray = &self->charArray[a3];
    v8->sharedMemory = self->sharedMemory;
    v8->wasMerged = self->wasMerged;
  }

  return v8;
}

- (void)merge:(id)a3 by:(void *)a4
{
  v4 = *(a3 + 2);
  if (v4)
  {
    v8 = self->length + v4;
    [(CPCharSequence *)self resize:v8];
    charArray = self->charArray;
    if (charArray)
    {
      v10 = *(a3 + 2);
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
          v15 = (a4)(v13 - 1, v12 - 8);
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

- (void)sortBy:(void *)a3
{
  if (self->sharedMemory)
  {
    [(CPCharSequence *)self resize:self->length];
  }

  charArray = self->charArray;
  length = self->length;

  qsort(charArray, length, 8uLL, a3);
}

- (void)removeFrom:(unsigned int)a3
{
  if (self->length <= a3)
  {
    __assert_rtn("[CPCharSequence removeFrom:]", "CPCharSequence.m", 399, "length > startIndex");
  }

  if (a3)
  {
    self->length = a3;
  }

  else
  {

    [(CPCharSequence *)self removeAllChars];
  }
}

- (void)removeCharAtIndex:(unsigned int)a3
{
  length = self->length;
  if (length <= a3)
  {
    __assert_rtn("[CPCharSequence removeCharAtIndex:]", "CPCharSequence.m", 382, "index < length");
  }

  if (a3 + 1 < length)
  {
    if (self->sharedMemory)
    {
      [(CPCharSequence *)self resize:?];
      length = self->length;
    }

    v6 = &self->charArray[a3];
    memmove(v6, v6 + 1, 8 * (length + ~a3));
    length = self->length;
  }

  self->length = length - 1;
}

- (void)replaceCharAtIndex:(unsigned int)a3 withChar:(CPPDFChar *)a4
{
  if (self->length <= a3)
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
    charArray[a3] = a4;
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

- (void)addCharsFromSequence:(id)a3
{
  v3 = *(a3 + 2);
  if (v3)
  {
    v6 = self->length + v3;
    [(CPCharSequence *)self resize:v6];
    charArray = self->charArray;
    if (charArray)
    {
      memcpy(&charArray[self->length], *(a3 + 2), 8 * v3);
      self->length = v6;
    }
  }
}

- (void)addChars:(CPPDFChar *)a3 length:(unsigned int)a4 ifTrue:(void *)a5 passing:(void *)a6
{
  if (a4)
  {
    v8 = a3;
    v10 = 0;
    v11 = &a3[a4];
    v12 = &self->charArray[self->length];
    do
    {
      if ((a5)(v8, a6))
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

        *v12++ = v8;
        ++v10;
      }

      ++v8;
    }

    while (v8 < v11);
  }
}

- (void)addChars:(CPPDFChar *)a3 length:(unsigned int)a4
{
  v7 = self->length + a4;
  [(CPCharSequence *)self resize:v7];
  charArray = self->charArray;
  if (charArray)
  {
    if (a4)
    {
      v9 = 0;
      v10 = &a3[a4];
      if (v10 <= &a3[1])
      {
        v10 = a3 + 1;
      }

      v11 = v10 - 1;
      if (v11 == a3)
      {
        v12 = a3;
      }

      else
      {
        v12 = (&a3->var0.var0.origin.x + 1);
      }

      v13 = v11 == a3;
      v14 = &charArray[self->length];
      v15 = v11 - v12;
      if (!v13)
      {
        ++v15;
      }

      v16 = vdupq_n_s64(v15);
      v17 = (v15 + 2) & 0x7FFFFFFFFFFFFFELL;
      do
      {
        v18 = vaddq_s64(vdupq_n_s64(a3), xmmword_18439C660);
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
        a3 += 2;
      }

      while (v17 != v9);
    }

    self->length = v7;
  }
}

- (void)addChar:(CPPDFChar *)a3
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
    charArray[v7] = a3;
    self->length = v7 + 1;
  }
}

- (CPPDFChar)charAtIndex:(unsigned int)a3
{
  if (self->length <= a3)
  {
    __assert_rtn("[CPCharSequence charAtIndex:]", "CPCharSequence.m", 275, "index < length");
  }

  charArray = self->charArray;
  if (charArray)
  {
    return charArray[a3];
  }

  else
  {
    return 0;
  }
}

- (void)resize:(unsigned int)a3
{
  if (self->length <= a3)
  {
    length = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = CPCopyObject(self, a3);
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

- (CPCharSequence)initWithChars:(CPPDFChar *)a3 length:(unsigned int)a4
{
  result = [(CPCharSequence *)self initWithSizeFor:*&a4];
  if (result)
  {
    if (a4)
    {
      v7 = 0;
      v8 = &a3[a4];
      if (v8 <= &a3[1])
      {
        v8 = a3 + 1;
      }

      v9 = v8 - 1;
      if (v9 == a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = (&a3->var0.var0.origin.x + 1);
      }

      v11 = v9 == a3;
      v12 = v9 - v10;
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
        v17 = vaddq_s64(vdupq_n_s64(a3), xmmword_18439C660);
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
        a3 += 2;
      }

      while (v16 != v7);
    }

    result->length = a4;
  }

  return result;
}

- (CPCharSequence)initWithSizeFor:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = CPCharSequence;
  v4 = [(CPCharSequence *)&v7 init];
  v5 = v4;
  if (a3 && v4)
  {
    v4->charArray = malloc_type_malloc(8 * a3, 0x2004093837F09uLL);
    v5->previousSize = a3;
    v5->size = a3;
  }

  return v5;
}

@end