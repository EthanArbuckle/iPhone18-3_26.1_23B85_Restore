@interface BNBannerSceneTransitionContext
- (BSAnimationSettings)bannerAnimationSettings;
- (void)setBannerAnimationSettings:(id)settings;
@end

@implementation BNBannerSceneTransitionContext

- (BSAnimationSettings)bannerAnimationSettings
{
  otherSettings = [(FBSSettings *)self otherSettings];
  v3 = [otherSettings objectForSetting:50];

  return v3;
}

- (void)setBannerAnimationSettings:(id)settings
{
  settingsCopy = settings;
  otherSettings = [(FBSSettings *)self otherSettings];
  [otherSettings setObject:settingsCopy forSetting:50];
}

@end