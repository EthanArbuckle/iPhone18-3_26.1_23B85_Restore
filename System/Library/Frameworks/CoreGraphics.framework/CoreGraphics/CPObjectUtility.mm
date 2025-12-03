@interface CPObjectUtility
+ (float)complexityOfPage:(id)page;
@end

@implementation CPObjectUtility

+ (float)complexityOfPage:(id)page
{
  v4 = 1.0;
  if ([objc_msgSend(page "imagesOnPage")] <= 0x3E8)
  {
    shapesOnPage = [page shapesOnPage];
    v6 = [shapesOnPage count];
    v7 = v6;
    if (v6 <= 0x3E8)
    {
      if (v6)
      {
        v8 = 0;
        v9 = 0;
        v10 = (v6 & 0x3FF) - 1;
        do
        {
          v9 += [objc_msgSend(shapesOnPage objectAtIndex:{v8), "pathElementCount"}];
        }

        while (v9 >> 4 <= 0x270 && v10 != v8++);
      }

      else
      {
        v9 = 0;
      }

      v12 = v9 + v7;
      if (v9 + v7 >= 0x2710)
      {
        v12 = 10000;
      }

      return v12 / 10000.0;
    }
  }

  return v4;
}

@end