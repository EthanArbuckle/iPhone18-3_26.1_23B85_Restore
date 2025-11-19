@interface NSUnitVolume
+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4;
+ (void)initialize;
@end

@implementation NSUnitVolume

+ (void)initialize
{
  if (NSUnitVolume == a1)
  {
    objc_opt_class();
  }
}

+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4
{
  v4 = a3;
  if (a4 == 2)
  {
    if (([objc_msgSend(a3 "unit")] & 1) == 0)
    {
      v4 = [v4 measurementByConvertingToUnit:{+[NSUnitVolume cups](NSUnitVolume, "cups")}];
    }

    [v4 doubleValue];
    if (v9 >= 15.0)
    {
      v6 = +[NSUnitVolume gallons];
      goto LABEL_23;
    }

    if (v9 >= 8.0)
    {
      v6 = +[NSUnitVolume quarts];
      goto LABEL_23;
    }

    if (v9 <= 0.5)
    {
      v6 = +[NSUnitVolume fluidOunces];
      goto LABEL_23;
    }

    return v4;
  }

  if (a4 == 1)
  {
    if (([objc_msgSend(a3 "unit")] & 1) == 0)
    {
      v4 = [v4 measurementByConvertingToUnit:{+[NSUnitVolume imperialFluidOunces](NSUnitVolume, "imperialFluidOunces")}];
    }

    [v4 doubleValue];
    if (v7 >= 160.0)
    {
      v6 = +[NSUnitVolume imperialGallons];
      goto LABEL_23;
    }

    return v4;
  }

  if (a4)
  {
    return v4;
  }

  if (([objc_msgSend(a3 "unit")] & 1) == 0)
  {
    v4 = [v4 measurementByConvertingToUnit:{+[NSUnitVolume baseUnit](NSUnitVolume, "baseUnit")}];
  }

  [v4 doubleValue];
  if (v5 >= 1000.0)
  {
    v6 = +[NSUnitVolume kiloliters];
    goto LABEL_23;
  }

  if (v5 > 0.001)
  {
    return v4;
  }

  v6 = +[NSUnitVolume centiliters];
LABEL_23:

  return [v4 measurementByConvertingToUnit:v6];
}

@end