@interface FBSMutableSceneClientSettings(BacklightServices)
- (void)bls_setAlwaysOnContentIs1hz:()BacklightServices;
- (void)bls_setHasDelegate:()BacklightServices;
- (void)bls_setOptsOutOfProcessAssertions:()BacklightServices;
- (void)bls_setSupportsAlwaysOn:()BacklightServices;
@end

@implementation FBSMutableSceneClientSettings(BacklightServices)

- (void)bls_setHasDelegate:()BacklightServices
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:200000];
}

- (void)bls_setSupportsAlwaysOn:()BacklightServices
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:200001];
}

- (void)bls_setAlwaysOnContentIs1hz:()BacklightServices
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:200002];
}

- (void)bls_setOptsOutOfProcessAssertions:()BacklightServices
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:200003];
}

@end