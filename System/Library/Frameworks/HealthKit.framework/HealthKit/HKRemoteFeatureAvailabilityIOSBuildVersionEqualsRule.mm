@interface HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule

- (void)processUserInfo:(id)info
{
  v5 = [info objectForKeyedSubscript:@"BuildVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  [(HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule *)self setBuildVersion:v4];
}

- (BOOL)evaluate
{
  buildVersion = [(HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule *)self buildVersion];

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

  dataSource2 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  iOSBuildVersion2 = [dataSource2 iOSBuildVersion];
  buildVersion2 = [(HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule *)self buildVersion];
  v9 = [iOSBuildVersion2 isEqualToString:buildVersion2];

  return v9;
}

@end