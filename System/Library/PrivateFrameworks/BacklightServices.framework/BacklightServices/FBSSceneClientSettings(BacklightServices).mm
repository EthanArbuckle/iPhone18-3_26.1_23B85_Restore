@interface FBSSceneClientSettings(BacklightServices)
- (BOOL)bls_alwaysOnContentIs1hz;
- (BOOL)bls_supportsAlwaysOn;
- (uint64_t)bls_hasDelegate;
- (uint64_t)bls_optsOutOfProcessAssertions;
@end

@implementation FBSSceneClientSettings(BacklightServices)

- (BOOL)bls_alwaysOnContentIs1hz
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings flagForSetting:200002];

  return v2 == 1;
}

- (uint64_t)bls_optsOutOfProcessAssertions
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:200003];

  return v2;
}

- (uint64_t)bls_hasDelegate
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings BOOLForSetting:200000];

  return v2;
}

- (BOOL)bls_supportsAlwaysOn
{
  otherSettings = [self otherSettings];
  v2 = [otherSettings flagForSetting:200001];

  return v2 == 1 || v2 == 0x7FFFFFFFFFFFFFFFLL;
}

@end