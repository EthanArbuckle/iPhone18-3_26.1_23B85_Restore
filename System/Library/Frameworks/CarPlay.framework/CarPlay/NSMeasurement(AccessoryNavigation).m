@interface NSMeasurement(AccessoryNavigation)
- (uint64_t)accNav_safeToBeConvertedToUnit:()AccessoryNavigation;
@end

@implementation NSMeasurement(AccessoryNavigation)

- (uint64_t)accNav_safeToBeConvertedToUnit:()AccessoryNavigation
{
  v4 = a3;
  v5 = [a1 unit];
  if (objc_opt_respondsToSelector())
  {
  }

  else
  {
    v6 = [a1 unit];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = [a1 canBeConvertedToUnit:v4];
LABEL_6:

  return v8;
}

@end