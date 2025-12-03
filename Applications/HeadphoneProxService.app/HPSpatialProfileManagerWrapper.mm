@interface HPSpatialProfileManagerWrapper
+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)device;
+ (id)profileEnrollmentViewController;
@end

@implementation HPSpatialProfileManagerWrapper

+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)device
{
  v3 = off_10011C418;
  deviceCopy = device;
  LOBYTE(v3) = [(objc_class *)v3() isProxCardEnrollmentSupportedForDevice:deviceCopy];

  return v3;
}

+ (id)profileEnrollmentViewController
{
  v2 = off_10011C418();

  return [(objc_class *)v2 profileEnrollmentViewController];
}

@end