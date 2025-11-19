@interface NSUnitPressure
+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4;
+ (void)initialize;
@end

@implementation NSUnitPressure

+ (void)initialize
{
  if (NSUnitPressure == a1)
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
    v4 = [v4 measurementByConvertingToUnit:{+[NSUnitPressure baseUnit](NSUnitPressure, "baseUnit")}];
  }

  [v4 doubleValue];
  if (v5 < 1000.0)
  {
    return v4;
  }

  v7 = +[NSUnitPressure kilopascals];

  return [v4 measurementByConvertingToUnit:v7];
}

@end