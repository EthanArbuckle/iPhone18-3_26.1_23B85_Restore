@interface AKAlertImageURLProvider
+ (id)url;
@end

@implementation AKAlertImageURLProvider

+ (id)url
{
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v4 = [(NSBundle *)v3 URLForResource:@"appleaccount_mono_icon-60-dark" withExtension:@"png"];
  _objc_release(v3);

  return v4;
}

@end