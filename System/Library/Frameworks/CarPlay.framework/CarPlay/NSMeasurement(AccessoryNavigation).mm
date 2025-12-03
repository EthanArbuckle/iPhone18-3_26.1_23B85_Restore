@interface NSMeasurement(AccessoryNavigation)
- (uint64_t)accNav_safeToBeConvertedToUnit:()AccessoryNavigation;
@end

@implementation NSMeasurement(AccessoryNavigation)

- (uint64_t)accNav_safeToBeConvertedToUnit:()AccessoryNavigation
{
  v4 = a3;
  unit = [self unit];
  if (objc_opt_respondsToSelector())
  {
  }

  else
  {
    unit2 = [self unit];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v8 = 0;
      goto LABEL_6;
    }
  }

  v8 = [self canBeConvertedToUnit:v4];
LABEL_6:

  return v8;
}

@end