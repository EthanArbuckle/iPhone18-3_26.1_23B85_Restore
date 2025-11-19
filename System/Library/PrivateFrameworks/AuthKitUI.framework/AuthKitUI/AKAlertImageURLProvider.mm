@interface AKAlertImageURLProvider
+ (id)url;
@end

@implementation AKAlertImageURLProvider

+ (id)url
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v4 = [v3 URLForResource:@"appleaccount_mono_icon-60-dark" withExtension:@"png"];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

@end