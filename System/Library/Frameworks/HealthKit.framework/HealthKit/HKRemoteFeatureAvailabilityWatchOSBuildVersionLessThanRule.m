@interface HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"BuildVersion"];
  [(HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule *)self setBuildVersion:v4];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule *)self buildVersion];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v5 = [v4 watchOSBuildVersion];

  if (!v5)
  {
    return 0;
  }

  v6 = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule *)self buildVersion];
  v7 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v8 = [v7 watchOSBuildVersion];
  v9 = [v6 hk_compareBuildVersionWithString:v8] == 1;

  return v9;
}

@end