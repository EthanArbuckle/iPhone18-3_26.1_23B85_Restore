@interface BLSRequestLiveUpdatingAttribute
+ (id)requestLiveUpdatingForFBSScene:(id)scene;
+ (id)requestLiveUpdatingForFBSSceneIdentityToken:(id)token;
@end

@implementation BLSRequestLiveUpdatingAttribute

+ (id)requestLiveUpdatingForFBSScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[self alloc] initWithFBSScene:sceneCopy];

  return v5;
}

+ (id)requestLiveUpdatingForFBSSceneIdentityToken:(id)token
{
  tokenCopy = token;
  v5 = [[self alloc] initWithSceneIdentityToken:tokenCopy];

  return v5;
}

@end