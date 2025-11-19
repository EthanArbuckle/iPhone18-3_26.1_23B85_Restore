@interface HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"ModelNumberPrefix"];
  [(HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule *)self setModelNumberPrefix:v4];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule *)self modelNumberPrefix];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v5 = [v4 watchModelNumber];
  v6 = [(HKRemoteFeatureAvailabilityWatchModelNumberHasPrefixRule *)self modelNumberPrefix];
  v7 = [v5 hasPrefix:v6];

  return v7;
}

@end