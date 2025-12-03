@interface HKRemoteFeatureAvailabilityIOSVersionLessThanRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
- (void)setTargetVersion:(id *)version;
@end

@implementation HKRemoteFeatureAvailabilityIOSVersionLessThanRule

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
  [(HKRemoteFeatureAvailabilityIOSVersionLessThanRule *)self setTargetVersion:&v6];
}

- (BOOL)evaluate
{
  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v4 = dataSource;
  if (dataSource)
  {
    [dataSource iOSVersion];
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

  [(HKRemoteFeatureAvailabilityIOSVersionLessThanRule *)self targetVersion];
  IsUnknown = HKNSOperatingSystemVersionIsUnknown(v10);

  if (!IsUnknown)
  {
    [(HKRemoteFeatureAvailabilityIOSVersionLessThanRule *)self targetVersion];
    dataSource2 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
    v4 = dataSource2;
    if (dataSource2)
    {
      [dataSource2 iOSVersion];
    }

    else
    {
      memset(v9, 0, sizeof(v9));
    }

    v5 = HKNSOperatingSystemVersionCompare(v10, v9) == 1;
    goto LABEL_12;
  }

  return 0;
}

- (void)setTargetVersion:(id *)version
{
  var2 = version->var2;
  *&self->_targetVersion.majorVersion = *&version->var0;
  self->_targetVersion.patchVersion = var2;
}

@end