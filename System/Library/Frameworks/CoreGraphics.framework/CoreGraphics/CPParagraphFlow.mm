@interface CPParagraphFlow
- (BOOL)intervalOverlapLeft:(double)a3 right:(double)a4 paragraphs:(id)a5;
- (BOOL)intervalOverlapLeft:(double)a3 right:(double)a4 rects:(id)a5;
- (BOOL)intervalOverlapTop:(double)a3 bottom:(double)a4 paragraphs:(id)a5;
- (CGRect)belowBounds;
- (CPParagraphFlow)initWithParagraph:(id)a3;
- (double)area;
- (double)dAbove;
- (double)dBelow;
- (id)ignoreCallouts:(unsigned int)a3;
- (id)nextParagraphInColumn:(id)a3;
- (id)simpleRule:(unsigned int)a3;
- (id)twoSides:(unsigned int)a3;
- (int)inOrder;
- (int)inOrder:(BOOL)a3;
- (int)leftOrder;
- (int)outOrder;
- (int)rightOrder;
- (int64_t)topDescending:(id)a3;
- (void)dealloc;
- (void)replaceAbove:(id)a3 withOneOf:(id)a4;
- (void)replaceBelow:(id)a3 withOneOf:(id)a4;
- (void)setParagraphsAboveIn:(id)a3;
- (void)setParagraphsBelowIn:(id)a3;
- (void)setParagraphsLeftIn:(id)a3;
- (void)setParagraphsRightIn:(id)a3;
@end

@implementation CPParagraphFlow

- (int)rightOrder
{
  paragraphsRight = self->paragraphsRight;
  if (paragraphsRight)
  {
    LODWORD(paragraphsRight) = [(NSMutableArray *)paragraphsRight count];
  }

  return paragraphsRight;
}

- (int)leftOrder
{
  paragraphsLeft = self->paragraphsLeft;
  if (paragraphsLeft)
  {
    LODWORD(paragraphsLeft) = [(NSMutableArray *)paragraphsLeft count];
  }

  return paragraphsLeft;
}

- (int)outOrder
{
  paragraphsBelow = self->paragraphsBelow;
  if (paragraphsBelow)
  {
    LODWORD(paragraphsBelow) = [(NSMutableArray *)paragraphsBelow count];
  }

  return paragraphsBelow;
}

- (int)inOrder:(BOOL)a3
{
  if (a3)
  {
    v4 = [(NSMutableArray *)self->paragraphsAbove count];
    v5 = v4;
    if (!v4)
    {
      return 0;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      if (![objc_msgSend(-[NSMutableArray objectAtIndex:](self->paragraphsAbove objectAtIndex:{v6), "flowProperties"), "calloutType"}])
      {
        ++v7;
      }

      ++v6;
    }

    while (v5 != v6);
    return v7;
  }

  else
  {

    return [(CPParagraphFlow *)self inOrder];
  }
}

- (int)inOrder
{
  paragraphsAbove = self->paragraphsAbove;
  if (paragraphsAbove)
  {
    LODWORD(paragraphsAbove) = [(NSMutableArray *)paragraphsAbove count];
  }

  return paragraphsAbove;
}

- (double)area
{
  [(CPRotatedRegion *)self->paragraph normalizedBounds];
  v6 = v2;
  v7 = v3;
  width = v4;
  v9 = v5;
  if (v4 < 0.0 || v5 < 0.0)
  {
    v12 = CGRectStandardize(*&v2);
    height = v12.size.height;
    v12.origin.x = v6;
    v12.origin.y = v7;
    v12.size.width = width;
    v12.size.height = v9;
    v13 = CGRectStandardize(v12);
    width = v13.size.width;
  }

  else
  {
    height = v5;
  }

  return height * width;
}

- (double)dAbove
{
  if (![(CPParagraphFlow *)self inOrder])
  {
    return 0.0;
  }

  [-[NSMutableArray objectAtIndex:](self->paragraphsAbove objectAtIndex:{0), "normalizedBounds"}];
  v7 = v4;
  if (v5 < 0.0 || v6 < 0.0)
  {
    *&v3 = CGRectStandardize(*&v3);
    v7 = v8;
  }

  [(CPRotatedRegion *)self->paragraph normalizedBounds];
  if (v11 < 0.0 || v12 < 0.0)
  {
    *(&v10 - 1) = CGRectStandardize(*&v9);
  }

  return v7 - (v10 + v12);
}

- (double)dBelow
{
  if (![(CPParagraphFlow *)self outOrder])
  {
    return 0.0;
  }

  [(CPRotatedRegion *)self->paragraph normalizedBounds];
  v7 = v4;
  if (v5 < 0.0 || v6 < 0.0)
  {
    *&v3 = CGRectStandardize(*&v3);
    v7 = v8;
  }

  [-[NSMutableArray objectAtIndex:](self->paragraphsBelow objectAtIndex:{0, v3), "normalizedBounds"}];
  if (v11 < 0.0 || v12 < 0.0)
  {
    *(&v10 - 1) = CGRectStandardize(*&v9);
  }

  return v7 - (v10 + v12);
}

- (CGRect)belowBounds
{
  v3 = [(NSMutableArray *)self->paragraphsBelow count];
  if (v3)
  {
    [-[NSMutableArray objectAtIndex:](self->paragraphsBelow objectAtIndex:{0), "normalizedBounds"}];
    x = v4;
    y = v6;
    width = v8;
    height = v10;
    if (v3 != 1)
    {
      v12 = v3;
      for (i = 1; i != v12; ++i)
      {
        [-[NSMutableArray objectAtIndex:](self->paragraphsBelow objectAtIndex:{i), "normalizedBounds"}];
        v25.origin.x = v14;
        v25.origin.y = v15;
        v25.size.width = v16;
        v25.size.height = v17;
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        v23 = CGRectUnion(v22, v25);
        x = v23.origin.x;
        y = v23.origin.y;
        width = v23.size.width;
        height = v23.size.height;
      }
    }
  }

  else
  {
    height = 0.0;
    y = INFINITY;
    width = 0.0;
    x = INFINITY;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)replaceAbove:(id)a3 withOneOf:(id)a4
{
  [(NSMutableArray *)self->paragraphsAbove removeObject:a3];
  [(CPRotatedRegion *)self->paragraph normalizedBounds];
  v7 = v6;
  v40 = v8;
  v41 = v9;
  v11 = v10;
  v12 = [a4 count];
  v13 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = fmin(v11, v41) < 0.0;
    do
    {
      v16 = [a4 objectAtIndex:v14];
      [v16 normalizedBounds];
      v21 = v20;
      v22 = v17;
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

      v29 = v7;
      v30 = v11;
      if (v15)
      {
        v42.origin.x = v7;
        v42.origin.y = v40;
        v42.size.height = v41;
        v42.size.width = v11;
        *&v29 = CGRectStandardize(v42);
      }

      if (v27 < v29 + v30)
      {
        x = v21;
        width = v23;
        if (v26)
        {
          v43.origin.x = v21;
          v43.origin.y = v22;
          v43.size.width = v23;
          v43.size.height = v24;
          v44 = CGRectStandardize(v43);
          x = v44.origin.x;
          width = v44.size.width;
        }

        v33 = v7;
        if (v15)
        {
          v45.origin.x = v7;
          v45.origin.y = v40;
          v45.size.height = v41;
          v45.size.width = v11;
          *&v33 = CGRectStandardize(v45);
        }

        if (x + width > v33)
        {
          v34 = v21;
          if (v26)
          {
            v35 = v22;
            v36 = v23;
            v37 = v24;
            v38 = CGRectStandardize(*&v34);
            v46.origin.x = v21;
            v46.origin.y = v22;
            v46.size.width = v23;
            v46.size.height = v24;
            *&v34 = CGRectStandardize(v46);
            v23 = v39;
            v21 = *&v38;
          }

          if (![(CPParagraphFlow *)self intervalOverlapLeft:self->paragraphsAbove right:v21 paragraphs:v34 + v23])
          {
            [(NSMutableArray *)self->paragraphsAbove addObject:v16];
          }
        }
      }

      ++v14;
    }

    while (v13 != v14);
  }
}

- (void)replaceBelow:(id)a3 withOneOf:(id)a4
{
  [(NSMutableArray *)self->paragraphsBelow removeObject:a3];
  [(CPRotatedRegion *)self->paragraph normalizedBounds];
  v7 = v6;
  v40 = v8;
  v41 = v9;
  v11 = v10;
  v12 = [a4 count];
  v13 = v12;
  if (v12)
  {
    v14 = 0;
    v15 = fmin(v11, v41) < 0.0;
    do
    {
      v16 = [a4 objectAtIndex:v14];
      [v16 normalizedBounds];
      v21 = v20;
      v22 = v17;
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

      v29 = v7;
      v30 = v11;
      if (v15)
      {
        v42.origin.x = v7;
        v42.origin.y = v40;
        v42.size.height = v41;
        v42.size.width = v11;
        *&v29 = CGRectStandardize(v42);
      }

      if (v27 < v29 + v30)
      {
        x = v21;
        width = v23;
        if (v26)
        {
          v43.origin.x = v21;
          v43.origin.y = v22;
          v43.size.width = v23;
          v43.size.height = v24;
          v44 = CGRectStandardize(v43);
          x = v44.origin.x;
          width = v44.size.width;
        }

        v33 = v7;
        if (v15)
        {
          v45.origin.x = v7;
          v45.origin.y = v40;
          v45.size.height = v41;
          v45.size.width = v11;
          *&v33 = CGRectStandardize(v45);
        }

        if (x + width > v33)
        {
          v34 = v21;
          if (v26)
          {
            v35 = v22;
            v36 = v23;
            v37 = v24;
            v38 = CGRectStandardize(*&v34);
            v46.origin.x = v21;
            v46.origin.y = v22;
            v46.size.width = v23;
            v46.size.height = v24;
            *&v34 = CGRectStandardize(v46);
            v23 = v39;
            v21 = *&v38;
          }

          if (![(CPParagraphFlow *)self intervalOverlapLeft:self->paragraphsBelow right:v21 paragraphs:v34 + v23])
          {
            [(NSMutableArray *)self->paragraphsBelow addObject:v16];
          }
        }
      }

      ++v14;
    }

    while (v13 != v14);
  }
}

- (id)nextParagraphInColumn:(id)a3
{
  paragraphsBelow = self->paragraphsBelow;
  if (!paragraphsBelow)
  {
    return 0;
  }

  nextInColumn = self->nextInColumn;
  if (nextInColumn)
  {
    return nextInColumn;
  }

  v7 = [(NSMutableArray *)paragraphsBelow count];
  v8 = [(CPParagraphFlow *)self simpleRule:v7];
  if (v8)
  {
    return v8;
  }

  v8 = [(CPParagraphFlow *)self ignoreCallouts:v7];
  if (v8)
  {
    return v8;
  }

  v8 = [(CPParagraphFlow *)self twoSides:v7];
  if (v8)
  {
    return v8;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = 0;
  while ([objc_msgSend(-[NSMutableArray objectAtIndex:](self->paragraphsBelow objectAtIndex:{v9), "flowProperties"), "inOrder"}] == 1)
  {
    nextInColumn = 0;
    if (v7 == ++v9)
    {
      return nextInColumn;
    }
  }

  [(NSMutableArray *)self->paragraphsBelow sortUsingSelector:sel_compareTopDescending_];
  if (v7 == 1)
  {
    goto LABEL_23;
  }

  nextInColumn = [(NSMutableArray *)self->paragraphsBelow objectAtIndex:0];
  if ([-[CPParagraph flowProperties](nextInColumn "flowProperties")] != 1)
  {
    goto LABEL_23;
  }

  [-[NSMutableArray objectAtIndex:](self->paragraphsBelow objectAtIndex:{1), "normalizedBounds"}];
  v14 = v13;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = fmin(v11, v12);
  v19 = v18 < 0.0;
  if (v18 < 0.0)
  {
    v20 = v14;
    *&v18 = CGRectStandardize(*(&v10 - 1));
  }

  v21 = v10 + v12;
  [(CPRotatedRegion *)nextInColumn normalizedBounds];
  if (v24 < 0.0 || v25 < 0.0)
  {
    *(&v23 - 1) = CGRectStandardize(*&v22);
  }

  if (v21 >= v23)
  {
    goto LABEL_23;
  }

  v26 = v14;
  if (v19)
  {
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = CGRectStandardize(*&v26);
    v50.origin.x = v14;
    v50.origin.y = v15;
    v50.size.width = v16;
    v50.size.height = v17;
    *&v26 = CGRectStandardize(v50);
    v16 = v31;
    v14 = *&v30;
  }

  if (fmin(self->fRight, v26 + v16) - fmax(self->fLeft, v14) >= (self->fRight - self->fLeft) * 0.2)
  {
LABEL_23:
    v32 = 0;
    while ([objc_msgSend(-[NSMutableArray objectAtIndex:](self->paragraphsBelow objectAtIndex:{v32), "flowProperties"), "inOrder"}] < 2)
    {
      if (v7 == ++v32)
      {
        [a3 normalizedBounds];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        nextInColumn = [(NSMutableArray *)self->paragraphsBelow objectAtIndex:0];
        [(CPRotatedRegion *)nextInColumn normalizedBounds];
        if (v7 != 1)
        {
          v54.origin.x = v34;
          v54.origin.y = v36;
          v54.size.width = v38;
          v54.size.height = v40;
          v51 = CGRectUnion(*&v41, v54);
          width = v51.size.width;
          if (v7 <= 2)
          {
            v46 = 2;
          }

          else
          {
            v46 = v7;
          }

          for (i = 1; i != v46; ++i)
          {
            v48 = [(NSMutableArray *)self->paragraphsBelow objectAtIndex:i, v51.origin.x, v51.origin.y];
            [(CPRotatedRegion *)v48 normalizedBounds];
            v55.origin.x = v34;
            v55.origin.y = v36;
            v55.size.width = v38;
            v55.size.height = v40;
            v51 = CGRectUnion(v52, v55);
            if (v53.size.width < width)
            {
              width = v53.size.width;
              nextInColumn = v48;
            }
          }
        }

        return nextInColumn;
      }
    }

    return 0;
  }

  return nextInColumn;
}

- (id)twoSides:(unsigned int)a3
{
  if (a3 != 2)
  {
    return 0;
  }

  v4 = [(NSMutableArray *)self->paragraphsBelow objectAtIndex:0];
  v5 = [(NSMutableArray *)self->paragraphsBelow objectAtIndex:1];
  [(CPRotatedRegion *)v4 bottom];
  v7 = v6;
  [(CPRotatedRegion *)v5 top];
  if (v7 <= v8)
  {
    [(CPRotatedRegion *)v5 bottom];
    v11 = v10;
    [(CPRotatedRegion *)v4 top];
    v9 = v4;
    if (v11 <= v12)
    {
      return 0;
    }
  }

  else
  {
    v9 = v5;
    v5 = v4;
  }

  v13 = [(CPParagraph *)v5 flowProperties];
  v14 = [(CPParagraph *)v9 flowProperties];
  if ([v13 inOrder] == 1 && objc_msgSend(v14, "inOrder") == 1 && objc_msgSend(v13, "outOrder") == 1 && objc_msgSend(v14, "outOrder") == 1)
  {
    v15 = [objc_msgSend(v13 "paragraphsBelow")];
    if (v15 == [objc_msgSend(v14 "paragraphsBelow")])
    {
      self->nextInColumn = v5;
      [v13 setNextInColumn:v9];
      [v14 setNextInColumn:{objc_msgSend(objc_msgSend(v14, "paragraphsBelow"), "objectAtIndex:", 0)}];
      return v5;
    }
  }

  return 0;
}

- (id)ignoreCallouts:(unsigned int)a3
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->paragraphsBelow objectAtIndex:v5];
      v9 = [v8 flowProperties];
      if ([v9 calloutType])
      {
        v10 = [v9 outOrder];
        if (v10 < 2)
        {
          ++v6;
        }

        if (v10 > 1)
        {
          return 0;
        }
      }

      else
      {
        v7 = v8;
      }

      if (a3 == ++v5)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = 0;
  v6 = 0;
LABEL_12:
  if (v6 != a3 - 1)
  {
    return 0;
  }

  v11 = [v7 flowProperties];
  if ([v11 inOrder:1] != 1)
  {
    [(CPRotatedRegion *)self->paragraph normalizedBounds];
    v16 = v13;
    v17 = v15;
    if (v14 < 0.0 || v15 < 0.0)
    {
      *&v12 = CGRectStandardize(*&v12);
      v16 = v18;
      v17 = v19;
    }

    v20 = [v11 paragraphsAbove];
    v21 = [v20 count];
    v22 = v21;
    if (v21)
    {
      v23 = 0;
      v24 = v16 + v17;
      while (1)
      {
        v25 = [v20 objectAtIndex:v23];
        if (v25 != self->paragraph)
        {
          v26 = v25;
          [(CPRotatedRegion *)v25 normalizedBounds];
          if (v29 < 0.0 || v30 < 0.0)
          {
            *&v27 = CGRectStandardize(*&v27);
          }

          if (v28 < v24 || [-[CPParagraph flowProperties](v26 flowProperties] == 1)
          {
            break;
          }
        }

        if (v22 == ++v23)
        {
          return v7;
        }
      }
    }

    return 0;
  }

  return v7;
}

- (id)simpleRule:(unsigned int)a3
{
  if (a3 != 1)
  {
    return 0;
  }

  v3 = [(NSMutableArray *)self->paragraphsBelow objectAtIndex:0];
  if ([objc_msgSend(v3 "flowProperties")] == 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)setParagraphsRightIn:(id)a3
{
  v5 = [a3 count];
  if (v5)
  {
    v6 = [a3 indexOfObject:self->paragraph];
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (v6 + 1 < v5)
    {
      v7 = v6 + 1;
      while (1)
      {
        v8 = [a3 objectAtIndex:v7];
        [v8 normalizedBounds];
        y = v10;
        if (v11 < 0.0 || v12 < 0.0)
        {
          v26 = CGRectStandardize(*&v9);
          y = v26.origin.y;
        }

        if (y > self->fTop)
        {
          goto LABEL_22;
        }

        [v8 normalizedBounds];
        if (v16 < 0.0 || v17 < 0.0)
        {
          *(&v15 - 1) = CGRectStandardize(*&v14);
        }

        v18 = v15 + v17;
        if (v15 + v17 < self->fBottom)
        {
          goto LABEL_22;
        }

        [v8 normalizedBounds];
        if (v21 < 0.0 || v22 < 0.0)
        {
          *&v19 = CGRectStandardize(*&v19);
        }

        if (v19 < self->fRight)
        {
          goto LABEL_22;
        }

        if (!self->paragraphsRight)
        {
          break;
        }

        if (![(CPParagraphFlow *)self intervalOverlapTop:v24 bottom:v18 paragraphs:y, v21, v22])
        {
          paragraphsRight = self->paragraphsRight;
LABEL_20:
          [(NSMutableArray *)paragraphsRight addObject:v8];
        }

        [v24 addObject:v8];
LABEL_22:
        if (++v7 >= v5)
        {
          goto LABEL_23;
        }
      }

      paragraphsRight = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      self->paragraphsRight = paragraphsRight;
      goto LABEL_20;
    }

LABEL_23:
  }
}

- (void)setParagraphsLeftIn:(id)a3
{
  if ([a3 count])
  {
    v5 = [a3 indexOfObject:self->paragraph];
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    if (v5 >= 1)
    {
      v6 = (v5 & 0x7FFFFFFF) + 1;
      while (1)
      {
        v7 = [a3 objectAtIndex:v6 - 2];
        [v7 normalizedBounds];
        y = v9;
        if (v10 < 0.0 || v11 < 0.0)
        {
          v25 = CGRectStandardize(*&v8);
          y = v25.origin.y;
        }

        if (y > self->fTop)
        {
          goto LABEL_22;
        }

        [v7 normalizedBounds];
        if (v15 < 0.0 || v16 < 0.0)
        {
          *(&v14 - 1) = CGRectStandardize(*&v13);
        }

        v17 = v14 + v16;
        if (v14 + v16 < self->fBottom)
        {
          goto LABEL_22;
        }

        [v7 normalizedBounds];
        if (v20 < 0.0 || v21 < 0.0)
        {
          *&v18 = CGRectStandardize(*&v18);
        }

        if (v18 + v20 > self->fLeft)
        {
          goto LABEL_22;
        }

        if (!self->paragraphsLeft)
        {
          break;
        }

        if (![(CPParagraphFlow *)self intervalOverlapTop:v23 bottom:v17 paragraphs:y])
        {
          paragraphsLeft = self->paragraphsLeft;
LABEL_20:
          [(NSMutableArray *)paragraphsLeft addObject:v7];
        }

        [v23 addObject:v7];
LABEL_22:
        if (--v6 <= 1)
        {
          goto LABEL_23;
        }
      }

      paragraphsLeft = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      self->paragraphsLeft = paragraphsLeft;
      goto LABEL_20;
    }

LABEL_23:
  }
}

- (void)setParagraphsBelowIn:(id)a3
{
  v5 = [a3 count];
  v6 = v5;
  if (v5)
  {
    [(CPRotatedRegion *)self->paragraph top];
    v8 = v7;
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v10 = [(CPObject *)self->paragraph lastChild];
    [v10 baseline];
    v12 = v11;
    v13 = [v10 leftSpacerIndex];
    v14 = [v10 rightSpacerIndex];
    v15 = 0;
    while (1)
    {
      v16 = [a3 objectAtIndex:{v15, v34, v35}];
      if (v16 != self->paragraph)
      {
        v17 = v16;
        v34 = 0u;
        v35 = 0u;
        v18 = boundsForOverlap(v16, v13, v14);
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        *&v34 = v18;
        *(&v34 + 1) = v19;
        *&v35 = v20;
        *(&v35 + 1) = v21;
        if (v20 < 0.0 || v21 < 0.0)
        {
          v27 = COERCE_DOUBLE(CGRectStandardize(*&v18));
          if (v27 <= self->fRight)
          {
            v36.origin.x = v22;
            v36.origin.y = v23;
            v36.size.width = v24;
            v36.size.height = v25;
            v37 = CGRectStandardize(v36);
            v26 = v37.origin.y + v37.size.height;
            v37.origin.x = v22;
            v37.origin.y = v23;
            v37.size.width = v24;
            v37.size.height = v25;
            *&v18 = CGRectStandardize(v37);
            v24 = v28;
            v22 = v27;
LABEL_10:
            if (v18 + v24 < self->fLeft || v26 >= v8 || v26 - v12 > 2.0)
            {
              goto LABEL_24;
            }

            if (self->paragraphsBelow)
            {
              if (![(CPParagraphFlow *)self intervalOverlapLeft:v9 right:v22 rects:v34, v35])
              {
                paragraphsBelow = self->paragraphsBelow;
                goto LABEL_22;
              }
            }

            else
            {
              v32 = objc_alloc(MEMORY[0x1E695DF70]);
              paragraphsBelow = [v32 initWithCapacity:{1, v34, v35}];
              self->paragraphsBelow = paragraphsBelow;
LABEL_22:
              [(NSMutableArray *)paragraphsBelow addObject:v17];
            }

            v33 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:&v34 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
            [v9 addObject:v33];
          }
        }

        else if (v18 <= self->fRight)
        {
          v26 = v19 + v21;
          goto LABEL_10;
        }
      }

LABEL_24:
      if (v6 == ++v15)
      {

        return;
      }
    }
  }
}

- (void)setParagraphsAboveIn:(id)a3
{
  v5 = [a3 count];
  if (v5)
  {
    v6 = [a3 indexOfObject:self->paragraph];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v8 = [(CPObject *)self->paragraph firstChild];
    v9 = [v8 leftSpacerIndex];
    v10 = [v8 rightSpacerIndex];
    if (v6 + 1 < v5)
    {
      v11 = v10;
      for (i = v6 + 1; i < v5; ++i)
      {
        v13 = [a3 objectAtIndex:{i, v27, v28}];
        v27 = 0u;
        v28 = 0u;
        v14 = boundsForOverlap(v13, v9, v11);
        v18 = v14;
        v19 = v15;
        v20 = v16;
        v21 = v17;
        *&v27 = v14;
        *(&v27 + 1) = v15;
        *&v28 = v16;
        *(&v28 + 1) = v17;
        if (v16 < 0.0 || v17 < 0.0)
        {
          v22 = COERCE_DOUBLE(CGRectStandardize(*&v14));
          if (v22 > self->fRight)
          {
            continue;
          }

          v29.origin.x = v18;
          v29.origin.y = v19;
          v29.size.width = v20;
          v29.size.height = v21;
          *&v14 = CGRectStandardize(v29);
          v20 = v23;
          v18 = v22;
        }

        else if (v14 > self->fRight)
        {
          continue;
        }

        if (v14 + v20 >= self->fLeft)
        {
          if (self->paragraphsAbove)
          {
            if (![(CPParagraphFlow *)self intervalOverlapLeft:v7 right:v18 rects:v27, v28])
            {
              paragraphsAbove = self->paragraphsAbove;
              goto LABEL_15;
            }
          }

          else
          {
            v25 = objc_alloc(MEMORY[0x1E695DF70]);
            paragraphsAbove = [v25 initWithCapacity:{1, v27, v28}];
            self->paragraphsAbove = paragraphsAbove;
LABEL_15:
            [(NSMutableArray *)paragraphsAbove addObject:v13];
          }

          v26 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:&v27 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v7 addObject:v26];
        }
      }
    }
  }
}

- (BOOL)intervalOverlapTop:(double)a3 bottom:(double)a4 paragraphs:(id)a5
{
  v8 = [a5 count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      [objc_msgSend(a5 objectAtIndex:{v10), "normalizedBounds"}];
      v16 = v12;
      y = v13;
      v18 = v14;
      v19 = v15;
      if (v14 < 0.0 || v15 < 0.0)
      {
        v23 = CGRectStandardize(*&v12);
        v20 = v23.origin.y + v23.size.height;
        v23.origin.x = v16;
        v23.origin.y = y;
        v23.size.width = v18;
        v23.size.height = v19;
        v24 = CGRectStandardize(v23);
        y = v24.origin.y;
      }

      else
      {
        v20 = v13 + v15;
      }

      if (v20 > a4 && y < a3)
      {
        break;
      }

      v11 = ++v10 < v9;
    }

    while (v9 != v10);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)intervalOverlapLeft:(double)a3 right:(double)a4 paragraphs:(id)a5
{
  v8 = [a5 count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      [objc_msgSend(a5 objectAtIndex:{v10), "normalizedBounds"}];
      x = v12;
      v17 = v13;
      width = v14;
      v19 = v15;
      if (v14 < 0.0 || v15 < 0.0)
      {
        *&v20 = CGRectStandardize(*&v12);
        v23.origin.x = x;
        v23.origin.y = v17;
        v23.size.width = width;
        v23.size.height = v19;
        v24 = CGRectStandardize(v23);
        x = v24.origin.x;
        width = v24.size.width;
      }

      else
      {
        v20 = v12;
      }

      if (x + width > a3 && v20 < a4)
      {
        break;
      }

      v11 = ++v10 < v9;
    }

    while (v9 != v10);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (BOOL)intervalOverlapLeft:(double)a3 right:(double)a4 rects:(id)a5
{
  rect = CGRectNull;
  v8 = [a5 count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      [objc_msgSend(a5 objectAtIndex:{v10), "getValue:", &rect}];
      x = rect.origin.x;
      height = rect.size.height;
      width = rect.size.width;
      if (rect.size.width < 0.0 || rect.size.height < 0.0)
      {
        v16 = CGRectStandardize(rect);
        v21.origin.y = rect.origin.y;
        v21.origin.x = x;
        v21.size.width = width;
        v21.size.height = height;
        *&v15 = CGRectStandardize(v21);
        width = v17;
        x = *&v16;
      }

      else
      {
        v15 = rect.origin.x;
      }

      if (v15 + width > a3 && x < a4)
      {
        break;
      }

      v11 = ++v10 < v9;
    }

    while (v9 != v10);
  }

  else
  {
    return 0;
  }

  return v11;
}

- (int64_t)topDescending:(id)a3
{
  [(CPRotatedRegion *)[(CPParagraphFlow *)self paragraph] top];
  v5 = v4;
  [objc_msgSend(a3 "paragraph")];
  if (v5 <= v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (void)dealloc
{
  [(CPParagraph *)self->paragraph setFlowProperties:0];

  v3.receiver = self;
  v3.super_class = CPParagraphFlow;
  [(CPParagraphFlow *)&v3 dealloc];
}

- (CPParagraphFlow)initWithParagraph:(id)a3
{
  v15.receiver = self;
  v15.super_class = CPParagraphFlow;
  v4 = [(CPParagraphFlow *)&v15 init];
  if (v4)
  {
    v4->paragraph = a3;
    [a3 setFlowProperties:v4];
    [(CPRotatedRegion *)v4->paragraph normalizedBounds];
    v9 = v5;
    y = v6;
    v11 = v7;
    v12 = v8;
    if (v7 < 0.0 || v8 < 0.0)
    {
      v16 = CGRectStandardize(*&v5);
      v4->fLeft = v16.origin.x;
      v4->fRight = v16.origin.x + v16.size.width;
      v16.origin.x = v9;
      v16.origin.y = y;
      v16.size.width = v11;
      v16.size.height = v12;
      v17 = CGRectStandardize(v16);
      y = v17.origin.y;
      v13 = v17.origin.y + v17.size.height;
    }

    else
    {
      v4->fLeft = v5;
      v4->fRight = v5 + v7;
      v13 = v6 + v8;
    }

    v4->fTop = v13;
    v4->fBottom = y;
    v4->adjacentToCallout = 0;
    v4->calloutType = 0;
    v4->nextInColumn = 0;
    *&v4->paragraphsAbove = 0u;
    *&v4->paragraphsLeft = 0u;
  }

  return v4;
}

@end