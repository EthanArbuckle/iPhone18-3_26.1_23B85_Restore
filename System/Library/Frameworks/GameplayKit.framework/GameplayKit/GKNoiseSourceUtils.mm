@interface GKNoiseSourceUtils
+ (double)radialLerpValueForDistanceToOrigin:(double)origin frequency:(double)frequency;
@end

@implementation GKNoiseSourceUtils

+ (double)radialLerpValueForDistanceToOrigin:(double)origin frequency:(double)frequency
{
  v4 = 0.5 / frequency;
  v5 = (origin / v4);
  v6 = (origin - v4 * trunc(origin / v4)) / v4;
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