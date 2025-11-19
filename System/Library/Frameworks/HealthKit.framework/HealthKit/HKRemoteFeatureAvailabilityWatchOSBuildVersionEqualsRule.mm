@interface HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"BuildVersion"];
  [(HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule *)self setBuildVersion:v4];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule *)self buildVersion];

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

  v6 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v7 = [v6 watchOSBuildVersion];
  v8 = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule *)self buildVersion];
  v9 = [v7 isEqualToString:v8];

  return v9;
}

@end