@interface NSUnitEnergy
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitEnergy

+ (void)initialize
{
  if (NSUnitEnergy == self)
  {
    objc_opt_class();
  }
}

+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system
{
  scaleCopy = scale;
  if (system - 1 >= 2)
  {
    if (!system)
    {
      if (([objc_msgSend(scale "unit")] & 1) == 0)
      {
        scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitEnergy baseUnit](NSUnitEnergy, "baseUnit")}];
      }

      [scaleCopy doubleValue];
      if (v7 >= 1000.0)
      {
        v6 = +[NSUnitEnergy kilojoules];
        goto LABEL_12;
      }
    }

    return scaleCopy;
  }

  if (([objc_msgSend(scale "unit")] & 1) == 0)
  {
    scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitEnergy calories](NSUnitEnergy, "calories")}];
  }

  [scaleCopy doubleValue];
  if (v5 < 1000.0)
  {
    return scaleCopy;
  }

  v6 = +[NSUnitEnergy kilocalories];
LABEL_12:

  return [scaleCopy measurementByConvertingToUnit:v6];
}

@end