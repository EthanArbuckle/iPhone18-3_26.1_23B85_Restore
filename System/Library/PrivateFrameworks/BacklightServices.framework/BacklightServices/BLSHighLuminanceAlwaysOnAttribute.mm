@interface BLSHighLuminanceAlwaysOnAttribute
+ (id)highLuminanceWhileInAlwaysOn;
+ (id)highLuminanceWhileInAlwaysOnForFBSScene:(id)scene;
+ (id)highLuminanceWhileInAlwaysOnForFBSSceneIdentityToken:(id)token;
@end

@implementation BLSHighLuminanceAlwaysOnAttribute

+ (id)highLuminanceWhileInAlwaysOnForFBSScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[self alloc] initWithFBSScene:sceneCopy];

  return v5;
}

+ (id)highLuminanceWhileInAlwaysOnForFBSSceneIdentityToken:(id)token
{
  tokenCopy = token;
  v5 = [[self alloc] initWithSceneIdentityToken:tokenCopy];

  return v5;
}

+ (id)highLuminanceWhileInAlwaysOn
{
  v2 = objc_alloc_init(BLSGlobalHighLuminanceAlwaysOnAttribute);

  return v2;
}

@end