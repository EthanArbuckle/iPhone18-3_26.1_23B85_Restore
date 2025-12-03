@interface VNVersionParser
+ (BOOL)_isSeparatedString:(id)string equalToString:(id)toString atIndex:(unint64_t)index usingSeparator:(id)separator;
@end

@implementation VNVersionParser

+ (BOOL)_isSeparatedString:(id)string equalToString:(id)toString atIndex:(unint64_t)index usingSeparator:(id)separator
{
  stringCopy = string;
  toStringCopy = toString;
  separatorCopy = separator;
  v12 = 0;
  if (stringCopy && toStringCopy)
  {
    if ([stringCopy isEqualToString:toStringCopy])
    {
      v13 = [stringCopy componentsSeparatedByString:separatorCopy];
      v14 = [toStringCopy componentsSeparatedByString:separatorCopy];
      v15 = [v13 count];
      v12 = 0;
      if (v15 == [v14 count] && v15 >= index + 1)
      {
        v16 = [v13 objectAtIndexedSubscript:index];
        v17 = [v13 objectAtIndexedSubscript:index];
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