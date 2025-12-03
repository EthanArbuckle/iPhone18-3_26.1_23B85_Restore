@interface NSObject
+ (void)_accessibilityConvertDecimalDegreeToDMS:(double)s degreesPtr:(int64_t *)ptr minutesPtr:(int64_t *)minutesPtr secondsPtr:(double *)secondsPtr;
@end

@implementation NSObject

+ (void)_accessibilityConvertDecimalDegreeToDMS:(double)s degreesPtr:(int64_t *)ptr minutesPtr:(int64_t *)minutesPtr secondsPtr:(double *)secondsPtr
{
  if (ptr)
  {
    sCopy = s;
    if (s < 0)
    {
      sCopy = -sCopy;
    }

    *ptr = sCopy;
  }

  v7 = fabs((s - s) * 60.0);
  if (minutesPtr)
  {
    *minutesPtr = v7;
  }

  if (secondsPtr)
  {
    *secondsPtr = (v7 - v7) * 60.0;
  }
}

@end