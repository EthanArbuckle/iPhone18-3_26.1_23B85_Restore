@interface CPTextLineMaker
- (unsigned)makeTextLines:(id)a3;
- (void)dealloc;
- (void)zOrderSplitLines:(id)a3;
@end

@implementation CPTextLineMaker

- (unsigned)makeTextLines:(id)a3
{
  v5 = [a3 charactersInZone];
  result = [v5 length];
  if (result)
  {
    v7 = result;
    self->textLines = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([a3 hasRotatedCharacters])
    {
      [v5 sortByAnchorYDecreasingXIncreasingApprox];
    }

    else
    {
      [v5 sortByAnchorYDecreasingXIncreasing];
    }

    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    [v5 splitToSubsequences:v8 whereTrue:compareBaseline passing:0];
    v9 = [v8 count];
    if (!v9)
    {
      __assert_rtn("[CPTextLineMaker makeTextLines:]", "CPTextLineMaker.m", 213, "count>0");
    }

    v10 = [v8 objectAtIndex:0];
    [(NSMutableArray *)self->textLines addObject:v10];
    if (v9 != 1)
    {
      v11 = v9;
      for (i = 1; i != v11; ++i)
      {
        v13 = [v8 objectAtIndex:i];
        v14 = 0.0;
        v15 = 0.0;
        if ([v10 length])
        {
          v16 = [v10 charAtIndex:0];
          if (v16)
          {
            v15 = *(v16 + 104);
          }
        }

        if ([v13 length])
        {
          v17 = [v13 charAtIndex:0];
          if (v17)
          {
            v14 = *(v17 + 104);
          }
        }

        v18 = 0.0;
        v19 = 0.0;
        if ([v10 length])
        {
          v20 = [v10 charAtIndex:0];
          if (v20)
          {
            v19 = *(v20 + 168);
          }
        }

        if ([v13 length])
        {
          v21 = [v13 charAtIndex:0];
          if (v21)
          {
            v18 = *(v21 + 168);
          }
        }

        v22 = vabdd_f64(v15, v14);
        v23 = vabdd_f64(v19, v18);
        v24 = vabdd_f64(v19 + -360.0, v18);
        if (v23 >= v24)
        {
          v23 = v24;
        }

        v25 = vabdd_f64(v19, v18 + -360.0);
        if (v23 >= v25)
        {
          v23 = v25;
        }

        if (v22 >= 1.2 || v23 >= 0.5)
        {
          [(NSMutableArray *)self->textLines addObject:v13, v23];
          v10 = v13;
        }

        else
        {
          [v10 mergeByAnchorXIncreasingYDecreasing:v13];
        }
      }
    }

    v26 = objc_alloc_init(CPTextLineMerge);
    [(CPTextLineMerge *)v26 mergeLinesIn:self->textLines];

    v27 = [(NSMutableArray *)self->textLines count];
    v28 = (v27 - 1);
    if (v27 - 1 >= 0)
    {
      do
      {
        if (![-[NSMutableArray objectAtIndex:](self->textLines objectAtIndex:{v28), "length"}])
        {
          [(NSMutableArray *)self->textLines removeObjectAtIndex:v28];
        }
      }

      while (v28-- > 0);
    }

    -[CPTextLineMaker zOrderSplitLines:](self, "zOrderSplitLines:", [a3 page]);
    return [(NSMutableArray *)self->textLines count];
  }

  return result;
}

- (void)zOrderSplitLines:(id)a3
{
  v5 = [(NSMutableArray *)self->textLines count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->textLines objectAtIndex:v7];
      v11 = 0xFFFFFFFFLL;
      [v8 map:MinMax passing:&v11];
      v10 = v11;
      v9 = HIDWORD(v11);
      if ([v8 length] != v9 - v10 + 1)
      {
        -[CPTextLineMaker splitByGraphic:with:](self, "splitByGraphic:with:", v8, [a3 PDFContext]);
      }

      ++v7;
    }

    while (v6 != v7);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CPTextLineMaker;
  [(CPTextLineMaker *)&v3 dealloc];
}

@end