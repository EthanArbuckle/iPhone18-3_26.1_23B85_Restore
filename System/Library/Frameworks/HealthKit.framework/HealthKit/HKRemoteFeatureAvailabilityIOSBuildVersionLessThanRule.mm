@interface HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"BuildVersion"];
  [(HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule *)self setBuildVersion:v4];
}

- (BOOL)evaluate
{
  buildVersion = [(HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule *)self buildVersion];

  if (!buildVersion)
  {
    return 0;
  }

  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  iOSBuildVersion = [dataSource iOSBuildVersion];

  if (!iOSBuildVersion)
  {
    return 0;
  }

  buildVersion2 = [(HKRemoteFeatureAvailabilityIOSBuildVersionLessThanRule *)self buildVersion];
  dataSource2 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  iOSBuildVersion2 = [dataSource2 iOSBuildVersion];
  v9 = [buildVersion2 hk_compareBuildVersionWithString:iOSBuildVersion2] == 1;

  return v9;
}

@end