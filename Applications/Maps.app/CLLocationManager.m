@interface CLLocationManager
+ (id)inUseAssertionForNavd;
@end

@implementation CLLocationManager

+ (id)inUseAssertionForNavd
{
  v2 = +[CLLocationManager navdLocationBundleSource];
  v3 = [CLInUseAssertion newAssertionForBundleIdentifier:v2 withReason:@"Location in use in navd"];

  return v3;
}

@end