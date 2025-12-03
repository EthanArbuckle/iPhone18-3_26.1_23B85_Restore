@interface CPLineBreaker
+ (void)breakLinesInPage:(id)page;
- (void)breakLinesIn:(id)in;
- (void)breakLinesInParagraph:(id)paragraph;
@end

@implementation CPLineBreaker

- (void)breakLinesIn:(id)in
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(CPLineBreaker *)self breakLinesInParagraph:in];
  }

  else
  {
    v5 = [in count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      do
      {
        v8 = [in childAtIndex:v7];
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

- (void)breakLinesInParagraph:(id)paragraph
{
  [paragraph bounds];
  v5 = v4;
  v7 = v6;
  v8 = [paragraph count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = v5 + v7;
    do
    {
      v13 = v11;
      v11 = [paragraph childAtIndex:v10];
      if (v10)
      {
        charSequence = [v13 charSequence];
        if (charSequence)
        {
          v15 = charSequence;
          v16 = [charSequence length];
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

            firstWord = [v11 firstWord];
            if (firstWord)
            {
              v22 = firstWord;
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

+ (void)breakLinesInPage:(id)page
{
  v4 = objc_alloc_init(CPLineBreaker);
  [(CPLineBreaker *)v4 breakLinesIn:page];
}

@end