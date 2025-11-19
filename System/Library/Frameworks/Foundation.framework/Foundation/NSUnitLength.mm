@interface NSUnitLength
+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4;
+ (void)initialize;
@end

@implementation NSUnitLength

+ (void)initialize
{
  if (NSUnitLength == a1)
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
        v4 = [v4 measurementByConvertingToUnit:{+[NSUnitLength baseUnit](NSUnitLength, "baseUnit")}];
      }

      [v4 doubleValue];
      if (v7 >= 1000.0)
      {
        v6 = +[NSUnitLength kilometers];
        goto LABEL_18;
      }

      if (v7 <= 0.001)
      {
        v6 = +[NSUnitLength millimeters];
        goto LABEL_18;
      }
    }

    return v4;
  }

  if (([objc_msgSend(a3 "unit")] & 1) == 0)
  {
    v4 = [v4 measurementByConvertingToUnit:{+[NSUnitLength feet](NSUnitLength, "feet")}];
  }

  [v4 doubleValue];
  if (v5 >= 2640.0)
  {
    v6 = +[NSUnitLength miles];
    goto LABEL_18;
  }

  if (v5 >= 900.0)
  {
    v6 = +[NSUnitLength yards];
    goto LABEL_18;
  }

  if (v5 > 6.5)
  {
    return v4;
  }

  v6 = +[NSUnitLength inches];
LABEL_18:

  return [v4 measurementByConvertingToUnit:v6];
}

@end