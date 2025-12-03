@interface FBSMutableSceneClientSettings(BacklightServices)
- (void)bls_setAlwaysOnContentIs1hz:()BacklightServices;
- (void)bls_setHasDelegate:()BacklightServices;
- (void)bls_setOptsOutOfProcessAssertions:()BacklightServices;
- (void)bls_setSupportsAlwaysOn:()BacklightServices;
@end

@implementation FBSMutableSceneClientSettings(BacklightServices)

- (void)bls_setHasDelegate:()BacklightServices
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:200000];
}

- (void)bls_setSupportsAlwaysOn:()BacklightServices
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:200001];
}

- (void)bls_setAlwaysOnContentIs1hz:()BacklightServices
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:200002];
}

- (void)bls_setOptsOutOfProcessAssertions:()BacklightServices
{
  otherSettings = [self otherSettings];
  [otherSettings setFlag:BSSettingFlagForBool() forSetting:200003];
}

@end