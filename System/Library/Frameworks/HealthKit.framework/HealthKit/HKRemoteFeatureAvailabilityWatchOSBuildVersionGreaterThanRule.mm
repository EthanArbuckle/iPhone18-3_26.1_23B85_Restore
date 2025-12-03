@interface HKRemoteFeatureAvailabilityWatchOSBuildVersionGreaterThanRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityWatchOSBuildVersionGreaterThanRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"BuildVersion"];
  [(HKRemoteFeatureAvailabilityWatchOSBuildVersionGreaterThanRule *)self setBuildVersion:v4];
}

- (BOOL)evaluate
{
  buildVersion = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionGreaterThanRule *)self buildVersion];

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

  buildVersion2 = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionGreaterThanRule *)self buildVersion];
  dataSource2 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  watchOSBuildVersion2 = [dataSource2 watchOSBuildVersion];
  v9 = [buildVersion2 hk_compareBuildVersionWithString:watchOSBuildVersion2] == -1;

  return v9;
}

@end