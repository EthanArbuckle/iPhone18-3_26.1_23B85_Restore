@interface CPTextLineMerge
- (BOOL)fits:(id)a3 into:(id)a4;
- (BOOL)hasOverlappingLines;
- (double)averageHeight:(id)a3;
- (id)findLineFor:(id)a3 in:(id)a4;
- (unsigned)countOverlapsOfLineAtIndex:(unsigned int)a3 in:(id)a4;
- (void)addInterval:(id)a3 to:(id)a4;
- (void)detachDropCaps:(id)a3 to:(id)a4;
- (void)dropCaps:(id)a3 to:(id)a4;
- (void)eliminate:(id)a3;
- (void)makeOverlappingLinesTo:(id)a3;
- (void)mergeByColumn:(id)a3;
- (void)mergeColumn:(id)a3 overlapping:(id)a4;
- (void)mergeLinesIn:(id)a3;
- (void)mergeLinesInInterval:(id)a3 from:(id)a4;
- (void)removeOverlapping:(id)a3;
@end

@implementation CPTextLineMerge

- (void)mergeLinesIn:(id)a3
{
  v5 = [a3 count];
  if ((v5 & 0xFFFFFFFE) != 0)
  {
    v6 = v5;
    [a3 sortUsingFunction:sortTopDescending context:0];
    self->avail = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:a3];
    if ([(CPTextLineMerge *)self hasOverlappingLines])
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
      while ([(NSMutableArray *)self->avail count])
      {
        [(CPTextLineMerge *)self makeOverlappingLinesTo:v7];
        if ([v7 count] < 2)
        {
          [(NSMutableArray *)self->avail removeObjectAtIndex:0];
        }

        else
        {
          [(CPTextLineMerge *)self dropCaps:v7 to:a3];
          if ([v7 count] >= 2)
          {
            [(CPTextLineMerge *)self eliminate:v7];
            if ([v7 count] >= 2)
            {
              [(CPTextLineMerge *)self mergeByColumn:v7];
            }
          }

          [(CPTextLineMerge *)self removeOverlapping:v7];
        }

        [v7 removeAllObjects];
      }

      self->avail = 0;
    }

    else
    {

      self->avail = 0;
    }
  }
}

- (void)dropCaps:(id)a3 to:(id)a4
{
  [CPTextLineMerge detachDropCaps:"detachDropCaps:to:" to:?];
  [(CPTextLineMerge *)self averageHeight:a4];
  v8 = v7;
  v9 = [a3 count];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v9 >= 1)
  {
    v10 = v8 + v8;
    v11 = (v9 & 0x7FFFFFFF) - 1;
    do
    {
      v12 = [a3 objectAtIndex:v11];
      if ([v12 length] == 1)
      {
        [v12 bounds];
        if (v15 < 0.0 || v16 < 0.0)
        {
          *&v13 = CGRectStandardize(*&v13);
        }

        if (v16 > v10 && [(CPTextLineMerge *)self countOverlapsOfLineAtIndex:v11 in:a3, v13, v14, v15])
        {
          [v23 addObject:v12];
          [a3 removeObjectAtIndex:v11];
        }
      }

      v17 = v11-- + 1;
    }

    while (v17 > 1);
  }

  v18 = [v23 count];
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = v18 & 0x7FFFFFFF;
    do
    {
      v21 = [v23 objectAtIndex:v19];
      [(NSMutableArray *)self->avail removeObject:v21];
      v22 = [(CPTextLineMerge *)self findLineFor:v21 in:a3];
      if (v22)
      {
        [v22 mergeByAnchorXIncreasingYDecreasing:v21];
        [v21 removeAllChars];
      }

      ++v19;
    }

    while (v20 != v19);
  }
}

- (double)averageHeight:(id)a3
{
  v4 = [a3 count];
  v5 = v4;
  if (!v4)
  {
    return 0.0;
  }

  if (v4 < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v6 = 0;
    v7 = v4 & 0x7FFFFFFF;
    v8 = 0.0;
    do
    {
      [objc_msgSend(a3 objectAtIndex:{v6), "bounds"}];
      if (v11 < 0.0 || v12 < 0.0)
      {
        *(&v12 - 3) = CGRectStandardize(*&v9);
      }

      v8 = v8 + v12;
      ++v6;
    }

    while (v7 != v6);
  }

  return v8 / v5;
}

- (id)findLineFor:(id)a3 in:(id)a4
{
  [a3 bounds];
  v6 = v5;
  rect_16 = v7;
  v9 = v8;
  v11 = v10;
  v12 = [a4 count];
  if (v12 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = v12 & 0x7FFFFFFF;
  v15 = fmin(v9, v11) < 0.0;
  v33 = v6 + v9;
  rect = v6;
  while (1)
  {
    v16 = [a4 objectAtIndex:{v13, *&v33}];
    [v16 normalizedBounds];
    v21 = v20;
    y = v17;
    v23 = v18;
    v24 = v19;
    v25 = fmin(v18, v19);
    v26 = v25 < 0.0;
    v27 = v21;
    if (v25 < 0.0)
    {
      v28 = v21;
      *&v27 = CGRectStandardize(*(&v17 - 1));
    }

    if (v15)
    {
      v36.origin.x = rect;
      v36.origin.y = rect_16;
      v36.size.width = v9;
      v36.size.height = v11;
      v37 = CGRectStandardize(v36);
      v29 = v27 - (v37.origin.x + v37.size.width);
      v37.origin.x = rect;
      v37.origin.y = rect_16;
      v37.size.width = v9;
      v37.size.height = v11;
      v38 = CGRectStandardize(v37);
    }

    else
    {
      v29 = v27 - v33;
      v38.size.width = v9;
    }

    if (v29 <= v38.size.width)
    {
      if (v26)
      {
        v39.origin.x = v21;
        v39.origin.y = y;
        v39.size.width = v23;
        v39.size.height = v24;
        v40 = CGRectStandardize(v39);
        y = v40.origin.y;
      }

      v30 = rect_16;
      v31 = v11;
      if (v15)
      {
        v41.origin.x = rect;
        v41.origin.y = rect_16;
        v41.size.width = v9;
        v41.size.height = v11;
        *(&v30 - 1) = CGRectStandardize(v41);
      }

      if (y < v30 + v31)
      {
        break;
      }
    }

    if (v14 == ++v13)
    {
      return 0;
    }
  }

  return v16;
}

- (void)detachDropCaps:(id)a3 to:(id)a4
{
  v6 = [a3 count];
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v6 & 0x7FFFFFFF;
    do
    {
      v9 = [a3 objectAtIndex:v7];
      if ([v9 length] >= 2)
      {
        [v9 removeSubsequences:v10 whereTrue:sizeChange passing:0];
      }

      ++v7;
    }

    while (v8 != v7);
  }

  if ([v10 count])
  {
    [a3 addObjectsFromArray:v10];
    [a4 addObjectsFromArray:v10];
  }

  [a3 sortUsingFunction:sortTopDescending context:0];
}

- (unsigned)countOverlapsOfLineAtIndex:(unsigned int)a3 in:(id)a4
{
  v5 = a3;
  [objc_msgSend(a4 objectAtIndex:{a3), "normalizedBounds"}];
  v10 = v6;
  y = v7;
  v12 = v8;
  v13 = v9;
  if (v8 < 0.0 || v9 < 0.0)
  {
    v28 = CGRectStandardize(*&v6);
    v14 = v28.origin.y + v28.size.height;
    v28.origin.x = v10;
    v28.origin.y = y;
    v28.size.width = v12;
    v28.size.height = v13;
    v29 = CGRectStandardize(v28);
    y = v29.origin.y;
  }

  else
  {
    v14 = v7 + v9;
  }

  v15 = [a4 count];
  v16 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = 0;
    while (1)
    {
      if (v5 != v17)
      {
        [objc_msgSend(a4 objectAtIndex:{v17), "normalizedBounds"}];
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v26 = v22;
        if (v21 < 0.0 || v22 < 0.0)
        {
          v30 = CGRectStandardize(*&v19);
          if (y < v30.origin.y + v30.size.height)
          {
            v31.origin.x = v23;
            v31.origin.y = v24;
            v31.size.width = v25;
            v31.size.height = v26;
            v32 = CGRectStandardize(v31);
            v24 = v32.origin.y;
LABEL_14:
            if (v14 > v24)
            {
              ++v18;
            }
          }
        }

        else if (y < v20 + v22)
        {
          goto LABEL_14;
        }
      }

      if (v16 == ++v17)
      {
        return v18;
      }
    }
  }

  return 0;
}

- (void)removeOverlapping:(id)a3
{
  v5 = [a3 count];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 & 0x7FFFFFFF;
    do
    {
      -[NSMutableArray removeObject:](self->avail, "removeObject:", [a3 objectAtIndex:v6++]);
    }

    while (v7 != v6);
  }
}

- (void)makeOverlappingLinesTo:(id)a3
{
  v5 = [(NSMutableArray *)self->avail objectAtIndex:0];
  [a3 addObject:v5];
  [v5 normalizedBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(NSMutableArray *)self->avail count];
  if ((v14 & 0xFFFFFFFE) != 0)
  {
    v16 = v14;
    if (v11 < 0.0 || v13 < 0.0)
    {
      v29.origin.x = v7;
      v29.origin.y = v9;
      v29.size.width = v11;
      v29.size.height = v13;
      *&v15 = CGRectStandardize(v29);
      v9 = v17;
    }

    v18 = v16;
    v19 = 1;
    do
    {
      v20 = [(NSMutableArray *)self->avail objectAtIndex:v19, v15];
      [v20 normalizedBounds];
      v25 = v21;
      y = v22;
      v27 = v23;
      v28 = v24;
      if (v23 < 0.0 || v24 < 0.0)
      {
        v30 = CGRectStandardize(*&v21);
        if (v9 - (v30.origin.y + v30.size.height) >= -2.0)
        {
          return;
        }

        ++v19;
        v31.origin.x = v25;
        v31.origin.y = y;
        v31.size.width = v27;
        v31.size.height = v28;
        v32 = CGRectStandardize(v31);
        y = v32.origin.y;
      }

      else
      {
        if (v9 - (v22 + v24) >= -2.0)
        {
          return;
        }

        ++v19;
      }

      [a3 addObject:v20];
      if (y < v9)
      {
        v9 = y;
      }
    }

    while (v19 != v18);
  }
}

- (BOOL)hasOverlappingLines
{
  [-[NSMutableArray objectAtIndex:](self->avail objectAtIndex:{0), "normalizedBounds"}];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NSMutableArray *)self->avail count];
  if ((v11 & 0xFFFFFFFE) != 0)
  {
    v13 = v11;
    if (v8 < 0.0 || v10 < 0.0)
    {
      v28.origin.x = v4;
      v28.origin.y = v6;
      v28.size.width = v8;
      v28.size.height = v10;
      *&v12 = CGRectStandardize(v28);
      v6 = v14;
    }

    v15 = v13;
    v16 = 1;
    v17 = 1;
    do
    {
      [-[NSMutableArray objectAtIndex:](self->avail objectAtIndex:{v16, v12), "normalizedBounds"}];
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      if (v20 < 0.0 || v21 < 0.0)
      {
        v29 = CGRectStandardize(*&v18);
        if (v29.origin.y + v29.size.height > v6)
        {
          return v17;
        }

        v30.origin.x = v22;
        v30.origin.y = v23;
        v30.size.width = v24;
        v30.size.height = v25;
        *&v12 = CGRectStandardize(v30);
        v23 = v26;
      }

      else
      {
        v12 = v19 + v21;
        if (v19 + v21 > v6)
        {
          return v17;
        }
      }

      if (v23 < v6)
      {
        v6 = v23;
      }

      v17 = ++v16 < v15;
    }

    while (v15 != v16);
  }

  else
  {
    return 0;
  }

  return v17;
}

- (void)eliminate:(id)a3
{
  v5 = 0;
  v6 = [a3 count] - 1;
  while ((v6 & ~(v6 >> 31)) != v5)
  {
    v7 = v5;
    v8 = [a3 objectAtIndex:v5++];
    if (!-[CPTextLineMerge fits:into:](self, "fits:into:", v8, [a3 objectAtIndex:v5]))
    {
      if (v6 > v7)
      {
        v9 = v6;
        do
        {
          [a3 removeObjectAtIndex:v9--];
        }

        while (v9 > v7);
      }

      return;
    }
  }
}

- (void)mergeByColumn:(id)a3
{
  v36 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v5 = [a3 count];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 & 0x7FFFFFFF;
    do
    {
      v8 = [a3 objectAtIndex:v6];
      [v8 normalizedBounds];
      x = v9;
      v12 = v11;
      width = v13;
      v16 = v15;
      v17 = [v8 length];
      if (v17)
      {
        v18 = v17;
        v19 = [v8 charAtIndex:0];
        v20 = [v8 charAtIndex:(v18 - 1)];
        v21 = *(*(v19 + 160) + 64);
        v22 = *(*(v20 + 160) + 64);
        v23 = 0.0;
        v24 = 0.0;
        if (v21)
        {
          [v21 spaceWidth];
          v24 = v25 * 0.25;
        }

        if (v22)
        {
          [v22 spaceWidth];
          v23 = v26 * 0.25;
        }

        v27 = [CPInterval alloc];
        if (width < 0.0 || v16 < 0.0)
        {
          v38.origin.x = x;
          v38.origin.y = v12;
          v38.size.width = width;
          v38.size.height = v16;
          v28 = COERCE_DOUBLE(CGRectStandardize(v38)) - v24;
          v39.origin.x = x;
          v39.origin.y = v12;
          v39.size.width = width;
          v39.size.height = v16;
          v40 = CGRectStandardize(v39);
          x = v40.origin.x;
          width = v40.size.width;
        }

        else
        {
          v28 = x - v24;
        }

        v29 = [(CPInterval *)v27 initLeft:v28 right:v23 + x + width];
        [(CPTextLineMerge *)self addInterval:v29 to:v36];
      }

      ++v6;
    }

    while (v7 != v6);
  }

  v30 = [v36 count];
  v31 = [a3 mutableCopy];
  if (v30 >= 1)
  {
    v32 = 0;
    v33 = v30 & 0x7FFFFFFF;
    do
    {
      v34 = [v36 objectAtIndex:v32];
      v35 = [v31 count];
      [(CPTextLineMerge *)self mergeLinesInInterval:v34 from:v31];
      if ([v31 count] != v35)
      {
        [(CPTextLineMerge *)self mergeByColumn:v31];
      }

      ++v32;
    }

    while (v33 != v32);
  }
}

- (void)mergeLinesInInterval:(id)a3 from:(id)a4
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [a4 count];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v7 & 0x7FFFFFFF;
    do
    {
      v10 = [a4 objectAtIndex:v8];
      if ([a3 contains:v10])
      {
        [v11 addObject:v10];
      }

      ++v8;
    }

    while (v9 != v8);
  }

  if ([v11 count] > 1)
  {
    [(CPTextLineMerge *)self mergeColumn:v11 overlapping:a4];
  }
}

- (void)mergeColumn:(id)a3 overlapping:(id)a4
{
  v7 = [a3 count];
  if (v7)
  {
    v8 = [a3 objectAtIndex:0];
    if (v7 != 1)
    {
      v9 = v8;
      v10 = v7;
      for (i = 1; i != v10; ++i)
      {
        v12 = [a3 objectAtIndex:i];
        [v9 normalizedBounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [v12 normalizedBounds];
        v25 = v22;
        v26 = v24;
        if (v23 < 0.0 || v24 < 0.0)
        {
          *&v21 = CGRectStandardize(*&v21);
          v25 = v27;
          v26 = v28;
        }

        if (v18 < 0.0 || v20 < 0.0)
        {
          v35.origin.x = v14;
          v35.origin.y = v16;
          v35.size.width = v18;
          v35.size.height = v20;
          *&v21 = CGRectStandardize(v35);
          v16 = v29;
        }

        v30 = 0.0;
        v31 = 0.0;
        if ([v12 length])
        {
          v31 = *([v12 charAtIndex:0] + 168);
        }

        if ([v9 length])
        {
          v30 = *([v9 charAtIndex:0] + 168);
        }

        v32 = vabdd_f64(v31, v30);
        v33 = vabdd_f64(360.0 - v31, v30);
        if (v32 >= v33)
        {
          v32 = v33;
        }

        v34 = vabdd_f64(v31, 360.0 - v30);
        if (v32 >= v34)
        {
          v32 = v34;
        }

        if (v25 + v26 - v16 > 2.0 && v32 < 1.0 && [(CPTextLineMerge *)self fits:v9 into:v12])
        {
          [v9 mergeByAnchorXIncreasingYDecreasing:v12];
          [v12 removeAllChars];
          [a4 removeObject:v12];
        }

        else
        {
          v9 = v12;
        }
      }
    }
  }
}

- (void)addInterval:(id)a3 to:(id)a4
{
  [a3 left];
  v7 = v6;
  [a3 right];
  v9 = v8;
  v10 = [a4 count];
  v11 = v10;
  if (v10 >= 1)
  {
    v12 = 0;
    v13 = v10 & 0x7FFFFFFF;
    do
    {
      v14 = [a4 objectAtIndex:v12];
      if ([a3 intersects:v14])
      {
        [v14 left];
        v16 = v15;
        [v14 right];
        if (v16 < v7)
        {
          v7 = v16;
        }

        if (v17 > v9)
        {
          v9 = v17;
        }
      }

      ++v12;
    }

    while (v13 != v12);
  }

  v19 = [[CPInterval alloc] initLeft:v7 right:v9];
  if (v11 >= 1)
  {
    v18 = (v11 & 0x7FFFFFFF) + 1;
    do
    {
      if ([objc_msgSend(a4 objectAtIndex:{v18 - 2), "intersects:", v19}])
      {
        [a4 removeObjectAtIndex:v18 - 2];
      }

      --v18;
    }

    while (v18 > 1);
  }

  [a4 addObject:v19];
}

- (BOOL)fits:(id)a3 into:(id)a4
{
  v6 = 0.0;
  v7 = 0.0;
  if ([a3 length])
  {
    v7 = *([a3 charAtIndex:0] + 104);
  }

  if ([a4 length])
  {
    v6 = *([a4 charAtIndex:0] + 104);
  }

  v10 = 0;
  if (vabdd_f64(v7, v6) <= 2.0)
  {
    *&v9 = 0x3FF0000000000000;
    LOBYTE(v10) = 1;
  }

  return [a3 map:fits whereNeighborsWith:a4 passing:&v9];
}

@end