@interface NSUnitEnergy
+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4;
+ (void)initialize;
@end

@implementation NSUnitEnergy

+ (void)initialize
{
  if (NSUnitEnergy == a1)
  {
    objc_opt_class();
  }
}

+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4
{
  v4 = a3;
  if (a4 - 1 >= 2)
  {
    if (!a4)
    {
      if (([objc_msgSend(a3 "unit")] & 1) == 0)
      {
        v4 = [v4 measurementByConvertingToUnit:{+[NSUnitEnergy baseUnit](NSUnitEnergy, "baseUnit")}];
      }

      [v4 doubleValue];
      if (v7 >= 1000.0)
      {
        v6 = +[NSUnitEnergy kilojoules];
        goto LABEL_12;
      }
    }

    return v4;
  }

  if (([objc_msgSend(a3 "unit")] & 1) == 0)
  {
    v4 = [v4 measurementByConvertingToUnit:{+[NSUnitEnergy calories](NSUnitEnergy, "calories")}];
  }

  [v4 doubleValue];
  if (v5 < 1000.0)
  {
    return v4;
  }

  v6 = +[NSUnitEnergy kilocalories];
LABEL_12:

  return [v4 measurementByConvertingToUnit:v6];
}

@end