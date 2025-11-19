@interface CPLayoutArea
- (CGRect)layoutAreaBounds;
- (CPLayoutArea)init;
- (double)selectionBottom;
- (id)properties;
- (void)addColumnBreaks;
@end

@implementation CPLayoutArea

- (id)properties
{
  v2 = MEMORY[0x1E696AEC0];
  [(CPLayoutArea *)self layoutAreaBounds];
  return [v2 stringWithFormat:@"layoutAreaBounds=%@", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CGRect{{%f, %f}, {%f, %f}}", v3, v4, v5, v6)];
}

- (double)selectionBottom
{
  v3 = [(CPObject *)self count];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  [-[CPObject childAtIndex:](self childAtIndex:{0), "selectionBottom"}];
  v6 = v5;
  if (v4 >= 2)
  {
    v7 = 1;
    do
    {
      [-[CPObject childAtIndex:](self childAtIndex:{v7), "selectionBottom"}];
      if (v8 < v6)
      {
        v6 = v8;
      }

      v7 = (v7 + 1);
    }

    while (v4 != v7);
  }

  return v6;
}

- (CGRect)layoutAreaBounds
{
  v3 = [(CPChunk *)self shrinksWithChildren];
  [(CPChunk *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v3)
  {
    if ([(CPObject *)self count])
    {
      v12 = [(CPObject *)self firstChild];
      v13 = [(CPObject *)self lastChild];
      [v12 leftPad];
      v15 = v14;
      [v13 rightPad];
      if (v15 + v16 > 0.0)
      {
        if (v15 > 0.0)
        {
          v9 = v9 + v15;
          v5 = v5 - v15;
        }

        if (v16 > 0.0)
        {
          v9 = v16 + v9;
        }
      }
    }
  }

  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)addColumnBreaks
{
  v3 = [(CPObject *)self count];
  v4 = (v3 - 1);
  if (v3 > 1)
  {
    v5 = 0;
    do
    {
      [-[NSMutableArray objectAtIndex:](self->super.super.super.super.children objectAtIndex:{v5++), "setHasColumnBreak:", 1}];
    }

    while (v4 != v5);
  }

  if (v3 >= 1)
  {
    v6 = [(NSMutableArray *)self->super.super.super.super.children objectAtIndex:v4];

    [v6 setHasColumnBreak:0];
  }
}

- (CPLayoutArea)init
{
  v3.receiver = self;
  v3.super_class = CPLayoutArea;
  result = [(CPRotatedRegion *)&v3 init];
  if (result)
  {
    *(&result->super.dirtyNormalizedBounds + 1) = 0;
  }

  return result;
}

@end