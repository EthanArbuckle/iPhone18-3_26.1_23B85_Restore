@interface CLLocationManager(HomeLocation)
+ (uint64_t)hm_locationAuthorizationFromCLAuthorizationStatus:()HomeLocation;
+ (unint64_t)hm_regionStateFromCLRegionState:()HomeLocation;
@end

@implementation CLLocationManager(HomeLocation)

+ (unint64_t)hm_regionStateFromCLRegionState:()HomeLocation
{
  if (a3 >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (uint64_t)hm_locationAuthorizationFromCLAuthorizationStatus:()HomeLocation
{
  if ([MEMORY[0x1E695FBE8] hm_isLocationAllowedForAuthorizationStatus:?])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end