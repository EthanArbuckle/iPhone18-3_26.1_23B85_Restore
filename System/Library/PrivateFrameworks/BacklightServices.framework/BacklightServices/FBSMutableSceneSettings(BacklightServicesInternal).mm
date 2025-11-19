@interface FBSMutableSceneSettings(BacklightServicesInternal)
- (void)bls_setAlwaysOnEnabledForEnvironment:()BacklightServicesInternal;
- (void)bls_setDelegateActive:()BacklightServicesInternal;
- (void)bls_setLiveUpdating:()BacklightServicesInternal;
- (void)bls_setPresentationDate:()BacklightServicesInternal;
- (void)bls_setRenderSeed:()BacklightServicesInternal;
- (void)bls_setUnrestrictedFramerateUpdates:()BacklightServicesInternal;
- (void)bls_setVisualState:()BacklightServicesInternal;
@end

@implementation FBSMutableSceneSettings(BacklightServicesInternal)

- (void)bls_setDelegateActive:()BacklightServicesInternal
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:200000];
}

- (void)bls_setVisualState:()BacklightServicesInternal
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:200001];
}

- (void)bls_setPresentationDate:()BacklightServicesInternal
{
  v4 = a3;
  v5 = [a1 otherSettings];
  [v5 setObject:v4 forSetting:200002];
}

- (void)bls_setAlwaysOnEnabledForEnvironment:()BacklightServicesInternal
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:200003];
}

- (void)bls_setRenderSeed:()BacklightServicesInternal
{
  v5 = [a1 otherSettings];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [v5 setObject:v4 forSetting:200004];
}

- (void)bls_setLiveUpdating:()BacklightServicesInternal
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:200005];
}

- (void)bls_setUnrestrictedFramerateUpdates:()BacklightServicesInternal
{
  v1 = [a1 otherSettings];
  [v1 setFlag:BSSettingFlagForBool() forSetting:200006];
}

@end