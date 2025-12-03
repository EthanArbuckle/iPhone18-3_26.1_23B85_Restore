@interface BLSPauseWhenSceneBackgroundAttribute
+ (id)pauseWhenBackgroundFBSScene:(id)scene;
+ (id)pauseWhenBackgroundForFBSSceneIdentityToken:(id)token;
@end

@implementation BLSPauseWhenSceneBackgroundAttribute

+ (id)pauseWhenBackgroundFBSScene:(id)scene
{
  sceneCopy = scene;
  v5 = [[self alloc] initWithFBSScene:sceneCopy];

  return v5;
}

+ (id)pauseWhenBackgroundForFBSSceneIdentityToken:(id)token
{
  tokenCopy = token;
  v5 = [[self alloc] initWithSceneIdentityToken:tokenCopy];

  return v5;
}

@end