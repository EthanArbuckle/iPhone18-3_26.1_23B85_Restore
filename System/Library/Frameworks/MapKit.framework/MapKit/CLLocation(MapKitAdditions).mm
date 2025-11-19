@interface CLLocation(MapKitAdditions)
+ (double)_mapkit_timeToExpire;
@end

@implementation CLLocation(MapKitAdditions)

+ (double)_mapkit_timeToExpire
{
  v0 = +[MKLocationManager sharedLocationManager];
  [v0 timeScale];
  v2 = 5.0 / v1;

  return v2;
}

@end