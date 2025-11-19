@interface APSSimulatorSupport
+ (BOOL)isBuildSupported;
@end

@implementation APSSimulatorSupport

+ (BOOL)isBuildSupported
{
  v8 = 100;
  if (sysctlbyname("kern.osrelease", v9, &v8, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = v9[0] == 0;
  }

  if (v2)
  {
    return 0;
  }

  v3 = [NSString stringWithFormat:@"%s", v9];
  v4 = [v3 componentsSeparatedByString:@"."];
  v5 = [v4 objectAtIndex:0];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 intValue] > 21;

  return v6;
}

@end