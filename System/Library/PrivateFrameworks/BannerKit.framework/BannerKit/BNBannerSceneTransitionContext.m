@interface BNBannerSceneTransitionContext
- (BSAnimationSettings)bannerAnimationSettings;
- (void)setBannerAnimationSettings:(id)a3;
@end

@implementation BNBannerSceneTransitionContext

- (BSAnimationSettings)bannerAnimationSettings
{
  v2 = [(FBSSettings *)self otherSettings];
  v3 = [v2 objectForSetting:50];

  return v3;
}

- (void)setBannerAnimationSettings:(id)a3
{
  v4 = a3;
  v5 = [(FBSSettings *)self otherSettings];
  [v5 setObject:v4 forSetting:50];
}

@end