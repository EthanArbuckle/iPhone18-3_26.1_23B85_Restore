@interface AMAmbientSettingsCell
+ (id)bundle;
@end

@implementation AMAmbientSettingsCell

+ (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

@end