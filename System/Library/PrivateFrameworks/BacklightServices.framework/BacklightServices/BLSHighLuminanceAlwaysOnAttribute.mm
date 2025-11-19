@interface BLSHighLuminanceAlwaysOnAttribute
+ (id)highLuminanceWhileInAlwaysOn;
+ (id)highLuminanceWhileInAlwaysOnForFBSScene:(id)a3;
+ (id)highLuminanceWhileInAlwaysOnForFBSSceneIdentityToken:(id)a3;
@end

@implementation BLSHighLuminanceAlwaysOnAttribute

+ (id)highLuminanceWhileInAlwaysOnForFBSScene:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFBSScene:v4];

  return v5;
}

+ (id)highLuminanceWhileInAlwaysOnForFBSSceneIdentityToken:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSceneIdentityToken:v4];

  return v5;
}

+ (id)highLuminanceWhileInAlwaysOn
{
  v2 = objc_alloc_init(BLSGlobalHighLuminanceAlwaysOnAttribute);

  return v2;
}

@end