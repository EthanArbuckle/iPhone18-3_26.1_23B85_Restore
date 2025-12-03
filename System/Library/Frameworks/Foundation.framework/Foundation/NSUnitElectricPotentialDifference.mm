@interface NSUnitElectricPotentialDifference
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitElectricPotentialDifference

+ (void)initialize
{
  if (NSUnitElectricPotentialDifference == self)
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
    scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitElectricPotentialDifference baseUnit](NSUnitElectricPotentialDifference, "baseUnit")}];
  }

  [scaleCopy doubleValue];
  if (v6 >= 1000.0)
  {
    v7 = +[NSUnitElectricPotentialDifference kilovolts];
  }

  else
  {
    if (v6 > 0.001)
    {
      return scaleCopy;
    }

    v7 = +[NSUnitElectricPotentialDifference millivolts];
  }

  return [scaleCopy measurementByConvertingToUnit:v7];
}

@end