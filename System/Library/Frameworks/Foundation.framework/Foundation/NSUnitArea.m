@interface NSUnitArea
+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4;
+ (void)initialize;
@end

@implementation NSUnitArea

+ (void)initialize
{
  if (NSUnitArea == a1)
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
        v4 = [v4 measurementByConvertingToUnit:{+[NSUnitArea baseUnit](NSUnitArea, "baseUnit")}];
      }

      [v4 doubleValue];
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

    return v4;
  }

  if (([objc_msgSend(a3 "unit")] & 1) == 0)
  {
    v4 = [v4 measurementByConvertingToUnit:{+[NSUnitArea squareFeet](NSUnitArea, "squareFeet")}];
  }

  [v4 doubleValue];
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
    return v4;
  }

  v6 = +[NSUnitArea squareInches];
LABEL_18:

  return [v4 measurementByConvertingToUnit:v6];
}

@end