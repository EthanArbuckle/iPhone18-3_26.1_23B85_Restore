@interface CPTextLine
- ($F82BA7CF80F7A1221027BFFB2739E57F)firstWord;
- ($F82BA7CF80F7A1221027BFFB2739E57F)lastWord;
- ($F82BA7CF80F7A1221027BFFB2739E57F)wordArrayOfSize:(unsigned int)a3;
- ($F82BA7CF80F7A1221027BFFB2739E57F)wordAtIndex:(unsigned int)a3;
- (BOOL)changesFontAt:(id)a3;
- (BOOL)hasDropCap;
- (BOOL)mapToWordPairs:(void *)a3 passing:(void *)a4;
- (BOOL)mapToWordPairsWithIndex:(void *)a3 passing:(void *)a4;
- (BOOL)mapToWords:(void *)a3 passing:(void *)a4;
- (BOOL)mapToWordsWithIndex:(void *)a3 passing:(void *)a4;
- (BOOL)overlapsHorizontally:(CGRect)a3;
- (BOOL)overlapsWith:(id)a3;
- (BOOL)removeTextLines:(id)a3 whereTrue:(void *)a4 passing:(void *)a5;
- (BOOL)styleIsUniform:(CPPDFStyle *)a3 styleFlags:(unsigned __int16)a4;
- (CGPoint)anchor;
- (CGRect)bounds;
- (CGRect)boundsOfWordAtIndex:(unsigned int)a3;
- (CGRect)normalizedBounds;
- (CPTextLine)init;
- (double)baseline;
- (double)medianFontSize;
- (double)monospaceWidth;
- (id)copyWithZone:(_NSZone *)a3;
- (id)newTextLineFromWordAt:(unsigned int)a3 lengthInWords:(unsigned int)a4;
- (int)align;
- (int64_t)baseLineAscending:(id)a3;
- (int64_t)baseLineDescending:(id)a3;
- (int64_t)baseLineDescendingApprox:(id)a3;
- (int64_t)topIsAbove:(id)a3;
- (int64_t)zOrder;
- (unsigned)inlineCount;
- (unsigned)spacesBeforeWordAtIndex:(unsigned int)a3;
- (void)anchorChunk:(id)a3 atWordIndex:(unsigned int)a4;
- (void)dealloc;
- (void)dispose;
- (void)finalize;
- (void)recomputeBaseline;
- (void)recomputeLevels;
- (void)setCharSequence:(id)a3;
- (void)setColumnBreaks:(id)a3;
- (void)setSpaces:(unsigned int)a3 beforeWordAtIndex:(unsigned int)a4;
- (void)translateObjectYBy:(double)a3;
@end

@implementation CPTextLine

- (CGRect)normalizedBounds
{
  p_normalizedBounds = &self->normalizedBounds;
  x = self->normalizedBounds.origin.x;
  y = self->normalizedBounds.origin.y;
  if (x == INFINITY || y == INFINITY)
  {
    [(CPCharSequence *)self->charSequence normalizedBounds];
    p_normalizedBounds->origin.x = x;
    p_normalizedBounds->origin.y = y;
    p_normalizedBounds->size.width = width;
    p_normalizedBounds->size.height = height;
  }

  else
  {
    width = self->normalizedBounds.size.width;
    height = self->normalizedBounds.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)medianFontSize
{
  v3 = [(CPCharSequence *)self->charSequence length];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(4 * v3, 0x100004052888210uLL);
  for (i = 0; i != v4; v5[i++] = v7)
  {
    v7 = *([(CPCharSequence *)self->charSequence charAtIndex:i][160] + 72);
  }

  v8 = v4 - 1;
  v9 = (v4 - 1) >> 1;
  if (v4 - 1 < 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    LODWORD(v11) = 1;
    do
    {
      v12 = (v10 + v8) >> 1;
      v13 = v5[v12];
      v14 = v5[v8];
      if (v13 <= v14)
      {
        v13 = v5[v8];
      }

      else
      {
        v5[v12] = v14;
        v5[v8] = v13;
      }

      v15 = v5[v10];
      if (v15 > v13)
      {
        v5[v10] = v13;
        v5[v8] = v15;
        v15 = v5[v10];
      }

      v16 = v5[v12];
      if (v16 > v15)
      {
        v5[v12] = v15;
        v5[v10] = v16;
        v16 = v5[v12];
      }

      v5[v12] = v5[v11];
      v5[v11] = v16;
      v17 = v5[v10];
      LODWORD(v12) = v8;
      while (1)
      {
        do
        {
          v11 = (v11 + 1);
          v18 = v5[v11];
        }

        while (v18 < v17);
        do
        {
          v19 = v12;
          v12 = (v12 - 1);
          v20 = v5[v12];
        }

        while (v20 > v17);
        if (v12 < v11)
        {
          break;
        }

        v5[v11] = v20;
        v5[v12] = v18;
      }

      v5[v10] = v20;
      v5[v12] = v17;
      if (v12 <= v9)
      {
        v10 = v11;
      }

      if (v12 >= v9)
      {
        v8 = v19 - 2;
      }

      LODWORD(v11) = v10 + 1;
    }

    while (v8 > v10 + 1);
  }

  if (v8 <= v10)
  {
    v24 = v5[v9];
  }

  else
  {
    v22 = v5[v10];
    v23 = v5[v8];
    if (v22 > v23)
    {
      v5[v10] = v23;
      v5[v8] = v22;
      v23 = v22;
      v22 = v5[v10];
    }

    v24 = (v22 + v23) * 0.5;
  }

  v21 = v24;
  free(v5);
  return v21;
}

- (BOOL)hasDropCap
{
  if (!self->wordCount)
  {
    return 0;
  }

  v3 = [(CPTextLine *)self wordAtIndex:0];
  if (v3->var1 == 1)
  {
    return 0;
  }

  v5 = v3;
  v6 = [(CPCharSequence *)self->charSequence charAtIndex:v3->var0];
  v7 = [(CPCharSequence *)self->charSequence charAtIndex:v5->var0 + 1];
  var11 = v6->var7->var11;
  v9 = v7->var7->var11;
  return var11 > v9 + v9 || v9 > var11 + var11;
}

- (int64_t)topIsAbove:(id)a3
{
  [(CPCharSequence *)self->charSequence bounds];
  v8 = v5;
  v9 = v7;
  if (v6 < 0.0 || v7 < 0.0)
  {
    *&v4 = CGRectStandardize(*&v4);
    v8 = v10;
    v9 = v11;
  }

  [*(a3 + 16) bounds];
  if (v14 < 0.0 || v15 < 0.0)
  {
    *(&v13 - 1) = CGRectStandardize(*&v12);
  }

  v16 = v13 + v15;
  if (v8 + v9 > v16)
  {
    return -1;
  }

  else
  {
    return v8 + v9 < v16;
  }
}

- (void)recomputeLevels
{
  if (self->wordCount)
  {
    v3 = 0;
    [(CPTextLine *)self mapToWordsWithIndex:getMaxLevel passing:&v3];
    self->levels = v3 + 1;
  }

  else
  {
    self->levels = 0;
  }
}

- (void)setSpaces:(unsigned int)a3 beforeWordAtIndex:(unsigned int)a4
{
  wordCount = self->wordCount;
  if (wordCount > a4)
  {
    if (a4)
    {
      v7 = a3 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = a3;
    }

    spacesBefore = self->spacesBefore;
    if (spacesBefore)
    {
      goto LABEL_9;
    }

    if (a4)
    {
      v10 = v8 == 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    if (v8 | a4 && (v11 & 1) == 0)
    {
      spacesBefore = malloc_type_malloc(4 * wordCount, 0x100004052888210uLL);
      self->spacesBefore = spacesBefore;
      *spacesBefore = 0;
      if (self->wordCount >= 2)
      {
        v12 = 1;
        do
        {
          spacesBefore[v12++] = 1;
        }

        while (v12 < self->wordCount);
      }

LABEL_9:
      spacesBefore[a4] = v8;
    }
  }
}

- (unsigned)spacesBeforeWordAtIndex:(unsigned int)a3
{
  if (self->wordCount <= a3)
  {
    return 0;
  }

  spacesBefore = self->spacesBefore;
  if (spacesBefore)
  {
    return spacesBefore[a3];
  }

  else
  {
    return a3 != 0;
  }
}

- (double)monospaceWidth
{
  monospaceWidth = self->monospaceWidth;
  if (monospaceWidth == 0.0)
  {
    v4 = [(CPCharSequence *)self->charSequence length];
    monospaceWidth = 0.0;
    if (v4)
    {
      wordCount = self->wordCount;
      v6 = self->monospaceWidth;
      if (wordCount)
      {
        p_size = &self->wordArray->var4.size;
        do
        {
          width = p_size->width;
          p_size += 3;
          v6 = width + v6;
          self->monospaceWidth = v6;
          --wordCount;
        }

        while (wordCount);
      }

      v9 = v6 / v4;
      self->monospaceWidth = v9;
      if (v9 >= 4.0 && (v10 = v9 * 0.0625, v11 = (v10 + v10) / v4, v12 = [(CPCharSequence *)self->charSequence charAtIndex:0], v13 = self->monospaceWidth, v15[0] = *&v12->var0.var0.origin.x, *&v15[1] = v13, *&v15[2] = v10, *&v15[3] = v11, [(CPCharSequence *)self->charSequence map:isAtWidthMultiple passing:v15]))
      {
        return self->monospaceWidth;
      }

      else
      {
        self->monospaceWidth = 0.0;
      }
    }
  }

  return monospaceWidth;
}

- (BOOL)styleIsUniform:(CPPDFStyle *)a3 styleFlags:(unsigned __int16)a4
{
  uniformStyle = self->uniformStyle;
  if (uniformStyle && self->uniformStyleFlags == a4)
  {
    if (a3)
    {
      *a3 = uniformStyle;
    }

    return 1;
  }

  self->uniformStyleFlags = a4;
  if (![(CPCharSequence *)self->charSequence length])
  {
    self->uniformStyle = 0;
    if (a3)
    {
      *a3 = 0;
    }

    return 1;
  }

  v7 = [(CPCharSequence *)self->charSequence charAtIndex:0][160];
  self->uniformStyle = v7;
  v9 = v7;
  v10 = 0;
  LOWORD(v10) = self->uniformStyleFlags;
  result = [(CPCharSequence *)self->charSequence map:sameStyle passing:&v9];
  if (!result)
  {
    self->uniformStyle = 0;
  }

  if (a3)
  {
    *a3 = self->uniformStyle;
  }

  return result;
}

- (void)recomputeBaseline
{
  wordCount = self->wordCount;
  if (wordCount)
  {
    v4 = [(CPCharSequence *)self->charSequence charAtIndex:self->wordArray->var0][104];
    if (wordCount >= 3)
    {
      v5 = [(CPCharSequence *)self->charSequence charAtIndex:self->wordArray[1].var0];
      if (v4 == self->baseline)
      {
        return;
      }

      if (self->wordCount)
      {
        v6 = 0;
        v7 = 0;
        y = v5->var4.y;
        v9 = 1;
        do
        {
          if (vabdd_f64(v4, [(CPCharSequence *)self->charSequence charAtIndex:self->wordArray[v6].var0][104]) < 2.0)
          {
            ++v9;
          }

          ++v7;
          v10 = self->wordCount;
          ++v6;
        }

        while (v7 < v10);
        if (v9 <= v10 >> 1)
        {
          v4 = y;
        }
      }
    }

    [(CPTextLine *)self setBaseline:v4];
  }
}

- (void)translateObjectYBy:(double)a3
{
  v5.receiver = self;
  v5.super_class = CPTextLine;
  [(CPTextObject *)&v5 translateObjectYBy:?];
  self->baseline = self->baseline + a3;
}

- (double)baseline
{
  if (self->baseLineIsNull)
  {
    v3 = [(CPCharSequence *)self->charSequence length];
    v4 = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v4[i] = [(CPCharSequence *)self->charSequence charAtIndex:i][104];
      }

      v6 = medianDouble(v4, v3);
    }

    else
    {
      v6 = 0.0;
    }

    self->baseline = v6;
    self->baseLineIsNull = 0;
    free(v4);
  }

  return self->baseline;
}

- (CGPoint)anchor
{
  if (self->wordCount)
  {
    v2 = [(CPCharSequence *)self->charSequence charAtIndex:self->wordArray->var0];
    p_var4 = &v2->var4;
    p_y = &v2->var4.y;
  }

  else
  {
    p_var4 = &CGPointZero;
    p_y = &CGPointZero.y;
  }

  v5 = *p_y;
  x = p_var4->x;
  result.y = v5;
  result.x = x;
  return result;
}

- (BOOL)overlapsHorizontally:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  rect = a3.origin.y;
  x = a3.origin.x;
  [(CPTextLine *)self bounds];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = fmin(v8, v9) < 0.0;
  v15 = v14;
  if (v14)
  {
    *&v6 = CGRectStandardize(*&v6);
  }

  v16 = v6 + v8;
  v14 = fmin(width, height) < 0.0;
  v17 = v14;
  v18 = x;
  if (v14)
  {
    v19 = rect;
    v20 = width;
    v21 = height;
    *&v18 = CGRectStandardize(*&v18);
  }

  if (v16 < v18)
  {
    return 0;
  }

  if (v15)
  {
    v24.origin.x = v10;
    v24.origin.y = v11;
    v24.size.width = v12;
    v24.size.height = v13;
    *&v10 = CGRectStandardize(v24);
  }

  if (v17)
  {
    v25.origin.x = x;
    v25.origin.y = rect;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectStandardize(v25);
    x = v26.origin.x;
    width = v26.size.width;
  }

  return v10 <= x + width;
}

- (BOOL)overlapsWith:(id)a3
{
  [a3 bounds];

  return [(CPTextLine *)self overlapsHorizontally:?];
}

- (int64_t)baseLineDescendingApprox:(id)a3
{
  [(CPChunk *)self->super.super.super.page bounds];
  v6 = v5;
  [(CPTextLine *)self baseline];
  v8 = v7;
  [a3 baseline];
  if (vabdd_f64(v8, v9) >= v6 * 0.005)
  {
    if (v8 < v9)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    [(CPTextLine *)self normalizedBounds];
    v14 = v10;
    if (v12 < 0.0 || v13 < 0.0)
    {
      *&v14 = CGRectStandardize(*&v10);
    }

    [a3 normalizedBounds];
    if (v17 < 0.0 || v18 < 0.0)
    {
      *&v15 = CGRectStandardize(*&v15);
    }

    if (v14 >= v15)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }
}

- (int64_t)baseLineDescending:(id)a3
{
  [(CPTextLine *)self baseline];
  v5 = v4;
  [a3 baseline];
  v7 = -1;
  if (v5 < v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (int64_t)baseLineAscending:(id)a3
{
  [(CPTextLine *)self baseline];
  v5 = v4;
  [a3 baseline];
  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (CGRect)bounds
{
  p_bounds = &self->super.super.bounds;
  x = self->super.super.bounds.origin.x;
  y = self->super.super.bounds.origin.y;
  if (x == INFINITY || y == INFINITY)
  {
    wordCount = self->wordCount;
    width = self->super.super.bounds.size.width;
    height = self->super.super.bounds.size.height;
    if (wordCount)
    {
      p_height = &self->wordArray->var4.size.height;
      do
      {
        *&x = CGRectUnion(*&x, *(p_height - 3));
        p_bounds->origin.x = x;
        p_bounds->origin.y = y;
        p_bounds->size.width = width;
        p_bounds->size.height = height;
        p_height += 6;
        --wordCount;
      }

      while (wordCount);
    }
  }

  else
  {
    width = self->super.super.bounds.size.width;
    height = self->super.super.bounds.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setColumnBreaks:(id)a3
{
  columnBreaks = self->columnBreaks;
  if (columnBreaks != a3)
  {

    self->columnBreaks = a3;
  }
}

- (BOOL)mapToWordPairsWithIndex:(void *)a3 passing:(void *)a4
{
  wordCount = self->wordCount;
  if (wordCount >= 2)
  {
    v9 = 0;
    wordArray = self->wordArray;
    v11 = &wordArray[wordCount];
    do
    {
      v5 = (a3)(v9, wordArray, &wordArray[1], self->charSequence, a4);
      v9 = (v9 + 1);
      if (v5)
      {
        v12 = &wordArray[2] >= v11;
      }

      else
      {
        v12 = 1;
      }

      ++wordArray;
    }

    while (!v12);
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)mapToWordPairs:(void *)a3 passing:(void *)a4
{
  wordCount = self->wordCount;
  if (wordCount >= 2)
  {
    wordArray = self->wordArray;
    v10 = &wordArray[wordCount];
    do
    {
      v5 = (a3)(wordArray, &wordArray[1], self->charSequence, a4);
      if (v5)
      {
        v11 = &wordArray[2] >= v10;
      }

      else
      {
        v11 = 1;
      }

      ++wordArray;
    }

    while (!v11);
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)mapToWordsWithIndex:(void *)a3 passing:(void *)a4
{
  if (self->wordCount)
  {
    v7 = 0;
    wordArray = self->wordArray;
    do
    {
      v9 = (a3)(v7, wordArray, self->charSequence, a4);
      if (!v9)
      {
        break;
      }

      ++wordArray;
      v7 = (v7 + 1);
    }

    while (v7 < self->wordCount);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (BOOL)mapToWords:(void *)a3 passing:(void *)a4
{
  wordCount = self->wordCount;
  if (wordCount)
  {
    wordArray = self->wordArray;
    v9 = &wordArray[wordCount];
    do
    {
      v10 = (a3)(wordArray++, self->charSequence, a4);
      if (v10)
      {
        v11 = wordArray >= v9;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (BOOL)removeTextLines:(id)a3 whereTrue:(void *)a4 passing:(void *)a5
{
  if (self->wordCount < 2)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v11;
    v14 = v10;
    v15 = v9;
    v16 = v8 + 1;
    v17 = (a4)(&self->wordArray[v12 - 1], &self->wordArray[v12], a5);
    if (v17)
    {
      v11 = v16;
    }

    else
    {
      v11 = v13;
    }

    if (v17)
    {
      v10 = v16;
    }

    else
    {
      v10 = v10;
    }

    v9 = v17 | v15;
    if (v17 && (v15 & 1) != 0)
    {
      v18 = [(CPTextLine *)self newTextLineFromWordAt:v13 lengthInWords:(v8 - v13 + 1)];
      if (v18)
      {
        v19 = v18;
        [a3 addObject:v18];
        [v19 recomputeBaseline];
      }

      v9 = 1;
      v11 = v8 + 1;
      v10 = v14;
    }

    wordCount = self->wordCount;
    ++v12;
    ++v8;
  }

  while (v16 < wordCount - 1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v21 = [(CPTextLine *)self newTextLineFromWordAt:v11 lengthInWords:wordCount - v11];
  if (v21)
  {
    v22 = v21;
    [a3 addObject:v21];
    [v22 recomputeBaseline];
  }

  wordArray = self->wordArray;
  if (!wordArray)
  {
    __assert_rtn("[CPTextLine removeTextLines:whereTrue:passing:]", "CPTextLine.m", 365, "wordArray");
  }

  [(CPCharSequence *)self->charSequence removeFrom:wordArray[v10].var0];
  self->wordCount = v10;
  self->super.super.bounds = CGRectNull;
  self->normalizedBounds = CGRectNull;
  [(CPTextLine *)self recomputeLevels];
  return 1;
}

- (id)newTextLineFromWordAt:(unsigned int)a3 lengthInWords:(unsigned int)a4
{
  if (!self->wordArray)
  {
    return 0;
  }

  v4 = *&a4;
  v7 = objc_alloc_init(CPTextLine);
  [(CPObject *)v7 setPage:self->super.super.super.page];
  v8 = [CPCharSequence newSubsequenceFrom:"newSubsequenceFrom:length:" length:?];
  [(CPTextLine *)v7 setCharSequence:v8];

  v9 = [(CPTextLine *)v7 wordArrayOfSize:v4];
  if (v4)
  {
    var0 = self->wordArray[a3].var0;
    v11 = v4;
    do
    {
      v12 = &self->wordArray[a3];
      size = v12->var4.size;
      v14 = *&v12->var0;
      v9->var4.origin = v12->var4.origin;
      v9->var4.size = size;
      *&v9->var0 = v14;
      v9->var0 -= var0;
      ++v9;
      ++a3;
      --v11;
    }

    while (v11);
  }

  v7->leftSpacerIndex = self->leftSpacerIndex;
  v7->rightSpacerIndex = self->rightSpacerIndex;
  v7->uniformStyle = self->uniformStyle;
  v7->uniformStyleFlags = self->uniformStyleFlags;
  v7->monospaceWidth = self->monospaceWidth;
  [(CPTextLine *)v7 recomputeLevels];
  return v7;
}

- (BOOL)changesFontAt:(id)a3
{
  v5 = [(CPCharSequence *)self->charSequence length];
  v6 = [*(a3 + 16) length];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  result = 0;
  if (!v7)
  {
    v8 = [(CPCharSequence *)self->charSequence charAtIndex:v5 - 1];
    v9 = [*(a3 + 16) charAtIndex:0];
    var7 = v8->var7;
    v11 = *(v9 + 160);
    if (var7 != v11)
    {
      if (!var7 || v11 == 0)
      {
        return 1;
      }

      var10 = var7->var10;
      if (var10 != v11->var10 && ![var10 isSameFontAs:?])
      {
        return 1;
      }
    }
  }

  return result;
}

- (int)align
{
  v3 = [(CPTextLine *)self firstWord];
  v4 = [(CPTextLine *)self lastWord];
  if (!v3)
  {
    v5 = 0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v6 | v5;
  }

  v5 = v3->var3 & 0x55;
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = v4->var3 & 0xAA;
  return v6 | v5;
}

- (int64_t)zOrder
{
  self->super.super.super.zOrder = 0;
  p_zOrder = &self->super.super.super.zOrder;
  [(CPCharSequence *)self->charSequence map:maxInsertionOrder passing:&self->super.super.super.zOrder];
  return *p_zOrder;
}

- (void)anchorChunk:(id)a3 atWordIndex:(unsigned int)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([a3 anchoringTextLine])
    {
      return;
    }

    [a3 setAnchoringTextLine:self];
  }

  v7 = malloc_type_malloc(0x18uLL, 0x10A0040C385777EuLL);
  v7->var0 = a4;
  v7->var1 = a3;
  v7->var2 = 0;
  [a3 anchor];
  p_inlineList = &self->inlineList;
  var2 = *p_inlineList;
  if (*p_inlineList)
  {
    var0 = var2->var0;
    if (var2->var0 <= a4)
    {
      v13 = v8;
      v14 = v9;
      v15 = 0;
      while (1)
      {
        v16 = var2;
        if (var0 == a4)
        {
          [var2->var1 anchor];
          v18 = v13 != v17;
          if (v14 <= v19)
          {
            v18 = 1;
          }

          if (v13 < v17 || !v18)
          {
            break;
          }
        }

        var2 = v16->var2;
        if (var2)
        {
          var0 = var2->var0;
          v15 = v16;
          if (var2->var0 <= a4)
          {
            continue;
          }
        }

        v7->var2 = var2;
        v15 = v16;
LABEL_19:
        p_inlineList = &v15->var2;
        goto LABEL_20;
      }

      v7->var2 = v16;
      if (v15)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7->var2 = var2;
    }
  }

  else
  {
    v7->var2 = 0;
  }

LABEL_20:
  *p_inlineList = v7;
}

- (unsigned)inlineCount
{
  inlineList = self->inlineList;
  if (!inlineList)
  {
    return 0;
  }

  result = 0;
  do
  {
    inlineList = inlineList->var2;
    ++result;
  }

  while (inlineList);
  return result;
}

- ($F82BA7CF80F7A1221027BFFB2739E57F)lastWord
{
  wordCount = self->wordCount;
  if (wordCount)
  {
    return &self->wordArray[wordCount - 1];
  }

  else
  {
    return 0;
  }
}

- ($F82BA7CF80F7A1221027BFFB2739E57F)firstWord
{
  if (self->wordCount)
  {
    return self->wordArray;
  }

  else
  {
    return 0;
  }
}

- ($F82BA7CF80F7A1221027BFFB2739E57F)wordAtIndex:(unsigned int)a3
{
  if (self->wordCount <= a3)
  {
    __assert_rtn("[CPTextLine wordAtIndex:]", "CPTextLine.m", 166, "index < wordCount");
  }

  return &self->wordArray[a3];
}

- (CGRect)boundsOfWordAtIndex:(unsigned int)a3
{
  if (self->wordCount <= a3)
  {
    __assert_rtn("[CPTextLine boundsOfWordAtIndex:]", "CPTextLine.m", 160, "index < wordCount");
  }

  v3 = &self->wordArray[a3];
  x = v3->var4.origin.x;
  y = v3->var4.origin.y;
  width = v3->var4.size.width;
  height = v3->var4.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($F82BA7CF80F7A1221027BFFB2739E57F)wordArrayOfSize:(unsigned int)a3
{
  result = self->wordArray;
  if (!result)
  {
    if (!a3)
    {
      result = 0;
      goto LABEL_8;
    }

    result = malloc_type_malloc(48 * a3, 0x1000040EED21634uLL);
    goto LABEL_6;
  }

  if (self->wordCount < a3)
  {
    result = malloc_type_realloc(result, 48 * a3, 0x1000040EED21634uLL);
LABEL_6:
    self->wordArray = result;
  }

LABEL_8:
  self->wordCount = a3;
  return result;
}

- (void)setCharSequence:(id)a3
{
  charSequence = self->charSequence;
  if (charSequence != a3)
  {

    self->charSequence = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = CPTextLine;
  v5 = [(CPChunk *)&v10 copyWithZone:?];
  v6 = v5;
  if (v5)
  {
    v5[1] = 0;
    v5[28] = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->columnBreaks];
    v6[16] = [(CPCharSequence *)self->charSequence copyWithZone:a3];
    wordCount = self->wordCount;
    if (wordCount)
    {
      v8 = malloc_type_malloc(48 * wordCount, 0x1000040EED21634uLL);
      v6[17] = v8;
      memcpy(v8, self->wordArray, 48 * self->wordCount);
    }
  }

  return v6;
}

- (void)dealloc
{
  [(CPTextLine *)self dispose];

  v3.receiver = self;
  v3.super_class = CPTextLine;
  [(CPObject *)&v3 dealloc];
}

- (void)finalize
{
  [(CPTextLine *)self dispose];
  v3.receiver = self;
  v3.super_class = CPTextLine;
  [(CPTextLine *)&v3 finalize];
}

- (void)dispose
{
  if (!self->disposed)
  {
    [(CPCharSequence *)self->charSequence dispose];
    free(self->wordArray);
    inlineList = self->inlineList;
    if (inlineList)
    {
      do
      {
        var2 = inlineList->var2;
        free(inlineList);
        self->inlineList = var2;
        inlineList = var2;
      }

      while (var2);
    }

    free(self->spacesBefore);
    self->disposed = 1;
  }
}

- (CPTextLine)init
{
  v3.receiver = self;
  v3.super_class = CPTextLine;
  result = [(CPChunk *)&v3 init];
  if (result)
  {
    result->hasTabs = 0;
    result->baseLineIsNull = 1;
    result->normalizedBounds = CGRectNull;
    result->hasBeenProcessed = 0;
    result->hasBeenSplit = 0;
    result->levels = 0;
    result->maximumLetterGap = 0.0;
    result->maximumWordGap = 0.0;
    result->tabsBefore = 0;
    result->irregular = 0;
    result->wordArray = 0;
    result->wordCount = 0;
  }

  return result;
}

@end