@interface HKRemoteFeatureAvailabilityIOSVersionGreaterThanRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
- (void)setTargetVersion:(id *)a3;
@end

@implementation HKRemoteFeatureAvailabilityIOSVersionGreaterThanRule

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
  [(HKRemoteFeatureAvailabilityIOSVersionGreaterThanRule *)self setTargetVersion:&v6];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v4 = v3;
  if (v3)
  {
    [v3 iOSVersion];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  if (HKNSOperatingSystemVersionIsUnknown(v10))
  {
    v5 = 0;
LABEL_12:

    return v5;
  }

  [(HKRemoteFeatureAvailabilityIOSVersionGreaterThanRule *)self targetVersion];
  IsUnknown = HKNSOperatingSystemVersionIsUnknown(v10);

  if (!IsUnknown)
  {
    [(HKRemoteFeatureAvailabilityIOSVersionGreaterThanRule *)self targetVersion];
    v7 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
    v4 = v7;
    if (v7)
    {
      [v7 iOSVersion];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    v5 = HKNSOperatingSystemVersionCompare(v10, v9) == -1;
    goto LABEL_12;
  }

  return 0;
}

- (void)setTargetVersion:(id *)a3
{
  var2 = a3->var2;
  *&self->_targetVersion.majorVersion = *&a3->var0;
  self->_targetVersion.patchVersion = var2;
}

@end