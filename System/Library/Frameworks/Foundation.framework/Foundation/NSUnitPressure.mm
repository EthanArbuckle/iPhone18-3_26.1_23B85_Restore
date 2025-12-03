@interface NSUnitPressure
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitPressure

+ (void)initialize
{
  if (NSUnitPressure == self)
  {
    objc_opt_class();
  }
}

+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system
{
  scaleCopy = scale;
  if (system)
  {
    return scaleCopy;
  }

  if (([objc_msgSend(scale "unit")] & 1) == 0)
  {
    scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitPressure baseUnit](NSUnitPressure, "baseUnit")}];
  }

  [scaleCopy doubleValue];
  if (v5 < 1000.0)
  {
    return scaleCopy;
  }

  v7 = +[NSUnitPressure kilopascals];

  return [scaleCopy measurementByConvertingToUnit:v7];
}

@end