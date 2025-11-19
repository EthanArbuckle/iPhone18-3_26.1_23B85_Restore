@interface HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"BuildVersion"];
  [(HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule *)self setBuildVersion:v4];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule *)self buildVersion];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v5 = [v4 iOSBuildVersion];

  if (!v5)
  {
    return 0;
  }

  v6 = [(HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule *)self buildVersion];
  v7 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v8 = [v7 iOSBuildVersion];
  v9 = [v6 hk_compareBuildVersionWithString:v8] == 1;

  return v9;
}

@end