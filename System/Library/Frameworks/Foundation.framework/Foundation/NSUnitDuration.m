@interface NSUnitDuration
+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4;
+ (void)initialize;
@end

@implementation NSUnitDuration

+ (void)initialize
{
  if (NSUnitDuration == a1)
  {
    objc_opt_class();
  }
}

+ (id)_measurementWithNaturalScale:(id)a3 system:(unint64_t)a4
{
  v4 = a3;
  if (a4 != 3)
  {
    return v4;
  }

  if (([objc_msgSend(a3 "unit")] & 1) == 0)
  {
    v4 = [v4 measurementByConvertingToUnit:{+[NSUnitDuration baseUnit](NSUnitDuration, "baseUnit")}];
  }

  [v4 doubleValue];
  if (v5 >= 3600.0)
  {
    v8 = +[NSUnitDuration hours];
    goto LABEL_12;
  }

  if (v5 > 3600.0 || v5 < 60.0)
  {
    return v4;
  }

  v8 = +[NSUnitDuration minutes];
LABEL_12:

  return [v4 measurementByConvertingToUnit:v8];
}

@end