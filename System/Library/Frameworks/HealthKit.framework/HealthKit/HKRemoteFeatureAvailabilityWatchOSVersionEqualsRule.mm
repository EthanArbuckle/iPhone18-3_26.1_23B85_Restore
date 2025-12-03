@interface HKRemoteFeatureAvailabilityWatchOSVersionEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
- (void)setTargetVersion:(id *)version;
@end

@implementation HKRemoteFeatureAvailabilityWatchOSVersionEqualsRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"OperatingSystemVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    HKNSOperatingSystemVersionFromString(v4, &v8);
    v6 = v8;
    v5 = v9;
  }

  else
  {
    v6 = HKNSOperatingSystemVersionUnknown;
    v5 = 0;
  }

  v7 = v5;
  [(HKRemoteFeatureAvailabilityWatchOSVersionEqualsRule *)self setTargetVersion:&v6];
}

- (BOOL)evaluate
{
  [(HKRemoteFeatureAvailabilityWatchOSVersionEqualsRule *)self targetVersion];
  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    [dataSource watchOSVersion];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = HKNSOperatingSystemVersionCompare(v8, v7) == 0;

  return v5;
}

- (void)setTargetVersion:(id *)version
{
  var2 = version->var2;
  *&self->_targetVersion.majorVersion = *&version->var0;
  self->_targetVersion.patchVersion = var2;
}

@end