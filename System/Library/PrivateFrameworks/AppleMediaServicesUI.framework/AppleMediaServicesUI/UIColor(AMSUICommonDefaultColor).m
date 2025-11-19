@interface UIColor(AMSUICommonDefaultColor)
+ (id)ams_dim;
+ (id)ams_mediaBorder;
+ (id)ams_shadow;
@end

@implementation UIColor(AMSUICommonDefaultColor)

+ (id)ams_dim
{
  v2 = [a1 colorWithWhite:1.0 alpha:0.6];
  v3 = [a1 colorWithWhite:0.0 alpha:0.6];
  v4 = [a1 ams_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)ams_mediaBorder
{
  v2 = [a1 colorWithWhite:0.0 alpha:0.08];
  v3 = [a1 colorWithWhite:1.0 alpha:0.08];
  v4 = [a1 ams_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

+ (id)ams_shadow
{
  v2 = [a1 systemGray4Color];
  v3 = [a1 blackColor];
  v4 = [a1 ams_dynamicColorWithLightColor:v2 darkColor:v3];

  return v4;
}

@end