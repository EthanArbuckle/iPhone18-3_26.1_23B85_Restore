@interface BLSFidelityThreshold
+ (int64_t)fidelityForUpdateInterval:(double)interval;
@end

@implementation BLSFidelityThreshold

+ (int64_t)fidelityForUpdateInterval:(double)interval
{
  v3 = 2;
  if (interval > 15.0)
  {
    v3 = 1;
  }

  if (interval >= 0.5)
  {
    return v3;
  }

  else
  {
    return 3;
  }
}

@end