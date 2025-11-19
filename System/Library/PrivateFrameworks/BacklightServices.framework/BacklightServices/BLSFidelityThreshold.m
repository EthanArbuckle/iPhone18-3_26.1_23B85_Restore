@interface BLSFidelityThreshold
+ (int64_t)fidelityForUpdateInterval:(double)a3;
@end

@implementation BLSFidelityThreshold

+ (int64_t)fidelityForUpdateInterval:(double)a3
{
  v3 = 2;
  if (a3 > 15.0)
  {
    v3 = 1;
  }

  if (a3 >= 0.5)
  {
    return v3;
  }

  else
  {
    return 3;
  }
}

@end