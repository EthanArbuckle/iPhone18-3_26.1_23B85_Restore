@interface NSNumber
+ (BOOL)number:(id)number isEqualToNumber:(id)toNumber;
@end

@implementation NSNumber

+ (BOOL)number:(id)number isEqualToNumber:(id)toNumber
{
  numberCopy = number;
  toNumberCopy = toNumber;
  v7 = toNumberCopy;
  if (numberCopy | toNumberCopy)
  {
    v8 = 0;
    if (numberCopy && toNumberCopy)
    {
      v8 = [numberCopy isEqualToNumber:toNumberCopy];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end