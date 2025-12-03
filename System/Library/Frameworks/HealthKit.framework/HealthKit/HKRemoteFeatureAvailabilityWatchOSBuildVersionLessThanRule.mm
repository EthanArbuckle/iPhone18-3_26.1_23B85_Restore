@interface HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"BuildVersion"];
  [(HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule *)self setBuildVersion:v4];
}

- (BOOL)evaluate
{
  buildVersion = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule *)self buildVersion];

  if (!buildVersion)
  {
    return 0;
  }

  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  watchOSBuildVersion = [dataSource watchOSBuildVersion];

  if (!watchOSBuildVersion)
  {
    return 0;
  }

  buildVersion2 = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionLessThanRule *)self buildVersion];
  dataSource2 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  watchOSBuildVersion2 = [dataSource2 watchOSBuildVersion];
  v9 = [buildVersion2 hk_compareBuildVersionWithString:watchOSBuildVersion2] == 1;

  return v9;
}

@end