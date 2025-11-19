@interface HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule

- (void)processUserInfo:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"BuildVersion"];
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
  v3 = [(HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule *)self buildVersion];

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

  v6 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v7 = [v6 iOSBuildVersion];
  v8 = [(HKRemoteFeatureAvailabilityIOSBuildVersionEqualsRule *)self buildVersion];
  v9 = [v7 isEqualToString:v8];

  return v9;
}

@end