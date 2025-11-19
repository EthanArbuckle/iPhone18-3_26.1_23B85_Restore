@interface ABPKTime
+ (double)machAbsoluteTimeToSeconds:(unint64_t)a3;
+ (double)nowInSeconds;
@end

@implementation ABPKTime

+ (double)nowInSeconds
{
  v2 = mach_absolute_time();

  [ABPKTime machAbsoluteTimeToSeconds:v2];
  return result;
}

+ (double)machAbsoluteTimeToSeconds:(unint64_t)a3
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v5) = info.denom;
  LODWORD(v4) = info.numer;
  return v4 / (v5 * 1000000000.0) * a3;
}

@end