@interface NSUnitDuration
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitDuration

+ (void)initialize
{
  if (NSUnitDuration == self)
  {
    objc_opt_class();
  }
}

+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system
{
  scaleCopy = scale;
  if (system != 3)
  {
    return scaleCopy;
  }

  if (([objc_msgSend(scale "unit")] & 1) == 0)
  {
    scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitDuration baseUnit](NSUnitDuration, "baseUnit")}];
  }

  [scaleCopy doubleValue];
  if (v5 >= 3600.0)
  {
    v8 = +[NSUnitDuration hours];
    goto LABEL_12;
  }

  if (v5 > 3600.0 || v5 < 60.0)
  {
    return scaleCopy;
  }

  v8 = +[NSUnitDuration minutes];
LABEL_12:

  return [scaleCopy measurementByConvertingToUnit:v8];
}

@end