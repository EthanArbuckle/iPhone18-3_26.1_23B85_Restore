@interface HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"BuildType"];
  [(HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule *)self setBuildType:v4];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule *)self buildType];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v5 = [v4 watchBuildType];
  v6 = [(HKRemoteFeatureAvailabilityWatchBuildTypeEqualsRule *)self buildType];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

@end