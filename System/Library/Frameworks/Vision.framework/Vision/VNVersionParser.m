@interface VNVersionParser
+ (BOOL)_isSeparatedString:(id)a3 equalToString:(id)a4 atIndex:(unint64_t)a5 usingSeparator:(id)a6;
@end

@implementation VNVersionParser

+ (BOOL)_isSeparatedString:(id)a3 equalToString:(id)a4 atIndex:(unint64_t)a5 usingSeparator:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = 0;
  if (v9 && v10)
  {
    if ([v9 isEqualToString:v10])
    {
      v13 = [v9 componentsSeparatedByString:v11];
      v14 = [v10 componentsSeparatedByString:v11];
      v15 = [v13 count];
      v12 = 0;
      if (v15 == [v14 count] && v15 >= a5 + 1)
      {
        v16 = [v13 objectAtIndexedSubscript:a5];
        v17 = [v13 objectAtIndexedSubscript:a5];
        v12 = [v16 isEqualToString:v17];
      }
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

@end