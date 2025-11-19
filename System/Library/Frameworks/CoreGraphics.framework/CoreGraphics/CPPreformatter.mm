@interface CPPreformatter
+ (void)preformatInPage:(id)a3;
- (void)preformatIn:(id)a3;
- (void)preformatInParagraph:(id)a3;
@end

@implementation CPPreformatter

- (void)preformatIn:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(CPPreformatter *)self preformatInParagraph:a3];
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
          [(CPPreformatter *)self preformatIn:v8];
        }

        v7 = (v7 + 1);
      }

      while (v6 != v7);
    }
  }
}

- (void)preformatInParagraph:(id)a3
{
  v11 = 0;
  if ([a3 isPreformattedWithUnitWidth:&v11])
  {
    [objc_msgSend(a3 "parent")];
    v5 = v4;
    v6 = [a3 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      do
      {
        v9 = [a3 childAtIndex:v8];
        v10[0] = v9;
        v10[1] = v11;
        v10[2] = v5;
        [v9 mapToWordsWithIndex:insertSpacesBefore passing:v10];
        v8 = (v8 + 1);
        if (v8 < v7)
        {
          [v9 setLineBreakAfter:1];
        }
      }

      while (v7 != v8);
    }
  }
}

+ (void)preformatInPage:(id)a3
{
  v4 = objc_alloc_init(CPPreformatter);
  [(CPPreformatter *)v4 preformatIn:a3];
}

@end