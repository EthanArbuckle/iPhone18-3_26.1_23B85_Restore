@interface NSUnitElectricPotentialDifference
+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4;
+ (void)initialize;
@end

@implementation NSUnitElectricPotentialDifference

+ (void)initialize
{
  if (NSUnitElectricPotentialDifference == a1)
  {
    objc_opt_class();
  }
}

+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4
{
  v4 = a3;
  if (a4)
  {
    return v4;
  }

  if (([objc_msgSend(a3 "unit")] & 1) == 0)
  {
    v4 = [v4 measurementByConvertingToUnit:{+[NSUnitElectricPotentialDifference baseUnit](NSUnitElectricPotentialDifference, "baseUnit")}];
  }

  [v4 doubleValue];
  if (v6 >= 1000.0)
  {
    v7 = +[NSUnitElectricPotentialDifference kilovolts];
  }

  else
  {
    if (v6 > 0.001)
    {
      return v4;
    }

    v7 = +[NSUnitElectricPotentialDifference millivolts];
  }

  return [v4 measurementByConvertingToUnit:v7];
}

@end