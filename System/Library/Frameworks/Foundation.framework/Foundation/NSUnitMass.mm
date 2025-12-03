@interface NSUnitMass
+ (id)_measurementWithNaturalScale:(id)scale system:(unint64_t)system;
+ (void)initialize;
@end

@implementation NSUnitMass

+ (void)initialize
{
  if (NSUnitMass == self)
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
      scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitMass poundsMass](NSUnitMass, "poundsMass")}];
    }

    [scaleCopy doubleValue];
    if (v8 >= 1000.0)
    {
      v6 = +[NSUnitMass shortTons];
      goto LABEL_19;
    }

    if (v8 <= 0.9)
    {
      v6 = +[NSUnitMass ounces];
      goto LABEL_19;
    }

    return scaleCopy;
  }

  if (system == 1)
  {
    if (([objc_msgSend(scale "unit")] & 1) == 0)
    {
      scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitMass stones](NSUnitMass, "stones")}];
    }

    [scaleCopy doubleValue];
    if (v7 <= 0.25)
    {
      v6 = +[NSUnitMass ouncesTroy];
      goto LABEL_19;
    }

    return scaleCopy;
  }

  if (system)
  {
    return scaleCopy;
  }

  if (([objc_msgSend(scale "unit")] & 1) == 0)
  {
    scaleCopy = [scaleCopy measurementByConvertingToUnit:{+[NSUnitMass baseUnit](NSUnitMass, "baseUnit")}];
  }

  [scaleCopy doubleValue];
  if (v5 > 0.001)
  {
    return scaleCopy;
  }

  v6 = +[NSUnitMass grams];
LABEL_19:

  return [scaleCopy measurementByConvertingToUnit:v6];
}

@end