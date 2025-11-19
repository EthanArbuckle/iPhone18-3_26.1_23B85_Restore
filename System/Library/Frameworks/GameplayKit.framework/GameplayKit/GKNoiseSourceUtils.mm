@interface GKNoiseSourceUtils
+ (double)radialLerpValueForDistanceToOrigin:(double)a3 frequency:(double)a4;
@end

@implementation GKNoiseSourceUtils

+ (double)radialLerpValueForDistanceToOrigin:(double)a3 frequency:(double)a4
{
  v4 = 0.5 / a4;
  v5 = (a3 / v4);
  v6 = (a3 - v4 * trunc(a3 / v4)) / v4;
  v7 = 1.0 - v6;
  if (v5)
  {
    v7 = -(1.0 - v6);
  }

  else
  {
    v6 = -v6;
  }

  return v7 + v6;
}

@end