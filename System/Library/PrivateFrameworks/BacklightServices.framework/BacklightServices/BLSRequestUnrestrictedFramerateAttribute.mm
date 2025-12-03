@interface BLSRequestUnrestrictedFramerateAttribute
+ (id)requestUnrestrictedFramerate;
+ (id)requestUnrestrictedFramerateForFBSScene:(id)scene;
+ (id)requestUnrestrictedFramerateForFBSSceneIdentityToken:(id)token;
@end

@implementation BLSRequestUnrestrictedFramerateAttribute

+ (id)requestUnrestrictedFramerateForFBSScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[self alloc] initWithFBSScene:sceneCopy];

  return v5;
}

+ (id)requestUnrestrictedFramerateForFBSSceneIdentityToken:(id)token
{
  tokenCopy = token;
  v5 = [[self alloc] initWithSceneIdentityToken:tokenCopy];

  return v5;
}

+ (id)requestUnrestrictedFramerate
{
  v2 = objc_alloc_init(BLSRequestGlobalUnrestrictedFramerateAttribute);

  return v2;
}

@end