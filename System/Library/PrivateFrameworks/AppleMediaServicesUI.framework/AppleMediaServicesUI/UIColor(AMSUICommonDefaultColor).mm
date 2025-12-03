@interface UIColor(AMSUICommonDefaultColor)
+ (id)ams_dim;
+ (id)ams_mediaBorder;
+ (id)ams_shadow;
@end

@implementation UIColor(AMSUICommonDefaultColor)

+ (id)ams_dim
{
  v2 = [self colorWithWhite:1.0 alpha:0.6];
  v3 = [self colorWithWhite:0.0 alpha:0.6];
  v4 = [self ams_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)ams_mediaBorder
{
  v2 = [self colorWithWhite:0.0 alpha:0.08];
  v3 = [self colorWithWhite:1.0 alpha:0.08];
  v4 = [self ams_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)ams_shadow
{
  systemGray4Color = [self systemGray4Color];
  blackColor = [self blackColor];
  v4 = [self ams_dynamicColorWithLightColor:systemGray4Color darkColor:blackColor];

  return v4;
}

@end