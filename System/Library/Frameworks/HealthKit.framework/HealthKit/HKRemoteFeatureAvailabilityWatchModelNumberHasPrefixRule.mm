@interface HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"ModelNumberPrefix"];
  [(HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule *)self setModelNumberPrefix:v4];
}

- (BOOL)evaluate
{
  modelNumberPrefix = [(HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule *)self modelNumberPrefix];

  if (!modelNumberPrefix)
  {
    return 0;
  }

  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  watchModelNumber = [dataSource watchModelNumber];
  modelNumberPrefix2 = [(HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule *)self modelNumberPrefix];
  v7 = [watchModelNumber hasPrefix:modelNumberPrefix2];

  return v7;
}

@end