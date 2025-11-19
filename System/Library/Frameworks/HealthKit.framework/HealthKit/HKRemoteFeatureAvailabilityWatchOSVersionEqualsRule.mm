@interface HKRemoteFeatureAvailabilityWatchOSVersionEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
- (void)setTargetVersion:(id *)a3;
@end

@implementation HKRemoteFeatureAvailabilityWatchOSVersionEqualsRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"OperatingSystemVersion"];
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
  v3 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v4 = v3;
  if (v3)
  {
    [v3 watchOSVersion];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = HKNSOperatingSystemVersionCompare(v8, v7) == 0;

  return v5;
}

- (void)setTargetVersion:(id *)a3
{
  var2 = a3->var2;
  *&self->_targetVersion.majorVersion = *&a3->var0;
  self->_targetVersion.patchVersion = var2;
}

@end