@interface NSUnitArea
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitArea

+ (void)initialize
{
  if (NSUnitArea == self)
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
        scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitArea baseUnit](NSUnitArea, "baseUnit")}];
      }

      [scaleCopy doubleValue];
      if (v7 >= 1000.0)
      {
        v6 = +[NSUnitArea squareKilometers];
        goto LABEL_18;
      }

      if (v7 <= 0.001)
      {
        v6 = +[NSUnitArea squareCentimeters];
        goto LABEL_18;
      }
    }

    return scaleCopy;
  }

  if (([objc_msgSend(scale "unit")] & 1) == 0)
  {
    scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitArea squareFeet](NSUnitArea, "squareFeet")}];
  }

  [scaleCopy doubleValue];
  if (v5 >= 27880000.0)
  {
    v6 = +[NSUnitArea squareMiles];
    goto LABEL_18;
  }

  if (v5 >= 900.0)
  {
    v6 = +[NSUnitArea squareYards];
    goto LABEL_18;
  }

  if (v5 > 0.5)
  {
    return scaleCopy;
  }

  v6 = +[NSUnitArea squareInches];
LABEL_18:

  return [scaleCopy measurementByConvertingToUnit:v6];
}

@end