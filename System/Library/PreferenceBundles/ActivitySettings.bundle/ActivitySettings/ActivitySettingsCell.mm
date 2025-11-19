@interface ActivitySettingsCell
+ (id)bundle;
@end

@implementation ActivitySettingsCell

+ (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

@end