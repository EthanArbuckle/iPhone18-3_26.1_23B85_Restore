@interface NSUnitMass
+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4;
+ (void)initialize;
@end

@implementation NSUnitMass

+ (void)initialize
{
  if (NSUnitMass == a1)
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
      v4 = [v4 measurementByConvertingToUnit:{+[NSUnitMass poundsMass](NSUnitMass, "poundsMass")}];
    }

    [v4 doubleValue];
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

    return v4;
  }

  if (a4 == 1)
  {
    if (([objc_msgSend(a3 "unit")] & 1) == 0)
    {
      v4 = [v4 measurementByConvertingToUnit:{+[NSUnitMass stones](NSUnitMass, "stones")}];
    }

    [v4 doubleValue];
    if (v7 <= 0.25)
    {
      v6 = +[NSUnitMass ouncesTroy];
      goto LABEL_19;
    }

    return v4;
  }

  if (a4)
  {
    return v4;
  }

  if (([objc_msgSend(a3 "unit")] & 1) == 0)
  {
    v4 = [v4 measurementByConvertingToUnit:{+[NSUnitMass baseUnit](NSUnitMass, "baseUnit")}];
  }

  [v4 doubleValue];
  if (v5 > 0.001)
  {
    return v4;
  }

  v6 = +[NSUnitMass grams];
LABEL_19:

  return [v4 measurementByConvertingToUnit:v6];
}

@end