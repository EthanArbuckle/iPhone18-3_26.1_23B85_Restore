@interface CPPreformatter
+ (void)preformatInPage:(id)page;
- (void)preformatIn:(id)in;
- (void)preformatInParagraph:(id)paragraph;
@end

@implementation CPPreformatter

- (void)preformatIn:(id)in
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(CPPreformatter *)self preformatInParagraph:in];
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
          [(CPPreformatter *)self preformatIn:v8];
        }

        v7 = (v7 + 1);
      }

      while (v6 != v7);
    }
  }
}

- (void)preformatInParagraph:(id)paragraph
{
  v11 = 0;
  if ([paragraph isPreformattedWithUnitWidth:&v11])
  {
    [objc_msgSend(paragraph "parent")];
    v5 = v4;
    v6 = [paragraph count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      do
      {
        v9 = [paragraph childAtIndex:v8];
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

+ (void)preformatInPage:(id)page
{
  v4 = objc_alloc_init(CPPreformatter);
  [(CPPreformatter *)v4 preformatIn:page];
}

@end