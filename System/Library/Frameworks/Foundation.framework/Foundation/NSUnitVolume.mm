@interface NSUnitVolume
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitVolume

+ (void)initialize
{
  if (NSUnitVolume == self)
  {
    objc_opt_class();
  }
}

+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system
{
  scaleCopy = scale;
  if (system == 2)
  {
    if (([objc_msgSend(scale "unit")] & 1) == 0)
    {
      scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitVolume cups](NSUnitVolume, "cups")}];
    }

    [scaleCopy doubleValue];
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

    return scaleCopy;
  }

  if (system == 1)
  {
    if (([objc_msgSend(scale "unit")] & 1) == 0)
    {
      scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitVolume imperialFluidOunces](NSUnitVolume, "imperialFluidOunces")}];
    }

    [scaleCopy doubleValue];
    if (v7 >= 160.0)
    {
      v6 = +[NSUnitVolume imperialGallons];
      goto LABEL_23;
    }

    return scaleCopy;
  }

  if (system)
  {
    return scaleCopy;
  }

  if (([objc_msgSend(scale "unit")] & 1) == 0)
  {
    scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitVolume baseUnit](NSUnitVolume, "baseUnit")}];
  }

  [scaleCopy doubleValue];
  if (v5 >= 1000.0)
  {
    v6 = +[NSUnitVolume kiloliters];
    goto LABEL_23;
  }

  if (v5 > 0.001)
  {
    return scaleCopy;
  }

  v6 = +[NSUnitVolume centiliters];
LABEL_23:

  return [scaleCopy measurementByConvertingToUnit:v6];
}

@end