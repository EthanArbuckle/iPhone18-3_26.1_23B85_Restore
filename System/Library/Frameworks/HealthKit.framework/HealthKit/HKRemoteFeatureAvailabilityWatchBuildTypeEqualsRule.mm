@interface HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"BuildType"];
  [(HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule *)self setBuildType:v4];
}

- (BOOL)evaluate
{
  buildType = [(HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule *)self buildType];

  if (!buildType)
  {
    return 0;
  }

  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  watchBuildType = [dataSource watchBuildType];
  buildType2 = [(HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule *)self buildType];
  v7 = [watchBuildType isEqualToString:buildType2];

  return v7;
}

@end