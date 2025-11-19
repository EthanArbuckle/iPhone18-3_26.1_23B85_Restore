@interface NSObject
+ (void)_accessibilityConvertDecimalDegreeToDMS:(double)a3 degreesPtr:(int64_t *)a4 minutesPtr:(int64_t *)a5 secondsPtr:(double *)a6;
@end

@implementation NSObject

+ (void)_accessibilityConvertDecimalDegreeToDMS:(double)a3 degreesPtr:(int64_t *)a4 minutesPtr:(int64_t *)a5 secondsPtr:(double *)a6
{
  if (a4)
  {
    v6 = a3;
    if (a3 < 0)
    {
      v6 = -v6;
    }

    *a4 = v6;
  }

  v7 = fabs((a3 - a3) * 60.0);
  if (a5)
  {
    *a5 = v7;
  }

  if (a6)
  {
    *a6 = (v7 - v7) * 60.0;
  }
}

@end