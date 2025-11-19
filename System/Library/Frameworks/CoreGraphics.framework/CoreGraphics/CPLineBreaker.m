@interface CPLineBreaker
+ (void)breakLinesInPage:(id)a3;
- (void)breakLinesIn:(id)a3;
- (void)breakLinesInParagraph:(id)a3;
@end

@implementation CPLineBreaker

- (void)breakLinesIn:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(CPLineBreaker *)self breakLinesInParagraph:a3];
  }

  else
  {
    v5 = [a3 count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = [a3 childAtIndex:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(CPLineBreaker *)self breakLinesIn:v8];
        }

        v7 = (v7 + 1);
      }

      while (v6 != v7);
    }
  }
}

- (void)breakLinesInParagraph:(id)a3
{
  [a3 bounds];
  v5 = v4;
  v7 = v6;
  v8 = [a3 count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = v5 + v7;
    do
    {
      v13 = v11;
      v11 = [a3 childAtIndex:v10];
      if (v10)
      {
        v14 = [v13 charSequence];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 length];
          if (v16)
          {
            v17 = [v15 charAtIndex:(v16 - 1)];
            v18 = *(*(v17 + 160) + 64);
            if (v18)
            {
              [v18 spaceWidth];
              v20 = v19 * *(*(v17 + 160) + 72);
            }

            else
            {
              v20 = 0.0;
            }

            v21 = [v11 firstWord];
            if (v21)
            {
              v22 = v21;
              [v13 bounds];
              if (*(v22 + 32) + v20 + v23 + v24 <= v12)
              {
                [v13 setLineBreakAfter:1];
              }
            }
          }
        }
      }

      v10 = (v10 + 1);
    }

    while (v9 != v10);
  }
}

+ (void)breakLinesInPage:(id)a3
{
  v4 = objc_alloc_init(CPLineBreaker);
  [(CPLineBreaker *)v4 breakLinesIn:a3];
}

@end