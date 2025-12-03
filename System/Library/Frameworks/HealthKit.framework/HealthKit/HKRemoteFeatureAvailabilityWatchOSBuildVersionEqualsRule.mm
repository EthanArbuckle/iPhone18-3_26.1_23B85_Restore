@interface HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"BuildVersion"];
  [(HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule *)self setBuildVersion:v4];
}

- (BOOL)evaluate
{
  buildVersion = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule *)self buildVersion];

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

  dataSource2 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  watchOSBuildVersion2 = [dataSource2 watchOSBuildVersion];
  buildVersion2 = [(HKRemoteFeatureAvailabilityWatchOSBuildVersionEqualsRule *)self buildVersion];
  v9 = [watchOSBuildVersion2 isEqualToString:buildVersion2];

  return v9;
}

@end