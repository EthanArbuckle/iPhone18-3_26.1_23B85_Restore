@interface BLSPauseWhenSceneBackgroundAttribute
+ (id)pauseWhenBackgroundFBSScene:(id)a3;
+ (id)pauseWhenBackgroundForFBSSceneIdentityToken:(id)a3;
@end

@implementation BLSPauseWhenSceneBackgroundAttribute

+ (id)pauseWhenBackgroundFBSScene:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFBSScene:v4];

  return v5;
}

+ (id)pauseWhenBackgroundForFBSSceneIdentityToken:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSceneIdentityToken:v4];

  return v5;
}

@end