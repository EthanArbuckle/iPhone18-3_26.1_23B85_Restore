@interface NSUnitLength
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitLength

+ (void)initialize
{
  if (NSUnitLength == self)
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
        scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitLength baseUnit](NSUnitLength, "baseUnit")}];
      }

      [scaleCopy doubleValue];
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

    return scaleCopy;
  }

  if (([objc_msgSend(scale "unit")] & 1) == 0)
  {
    scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitLength feet](NSUnitLength, "feet")}];
  }

  [scaleCopy doubleValue];
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
    return scaleCopy;
  }

  v6 = +[NSUnitLength inches];
LABEL_18:

  return [scaleCopy measurementByConvertingToUnit:v6];
}

@end