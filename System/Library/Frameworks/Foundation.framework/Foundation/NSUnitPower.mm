@interface NSUnitPower
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitPower

+ (void)initialize
{
  if (NSUnitPower == self)
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
    scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitPower baseUnit](NSUnitPower, "baseUnit")}];
  }

  [scaleCopy doubleValue];
  if (v6 >= 1000.0)
  {
    v7 = +[NSUnitPower kilowatts];
  }

  else
  {
    if (v6 > 0.001)
    {
      return scaleCopy;
    }

    v7 = +[NSUnitPower milliwatts];
  }

  return [scaleCopy measurementByConvertingToUnit:v7];
}

@end