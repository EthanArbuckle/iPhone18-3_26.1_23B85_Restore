@interface HPSpatialProfileManagerWrapper
+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)a3;
+ (id)profileEnrollmentViewController;
@end

@implementation HPSpatialProfileManagerWrapper

+ (BOOL)isProxCardEnrollmentSupportedForDevice:(id)a3
{
  v3 = off_10011C418;
  v4 = a3;
  LOBYTE(v3) = [(objc_class *)v3() isProxCardEnrollmentSupportedForDevice:v4];

  return v3;
}

+ (id)profileEnrollmentViewController
{
  v2 = off_10011C418();

  return [(objc_class *)v2 profileEnrollmentViewController];
}

@end