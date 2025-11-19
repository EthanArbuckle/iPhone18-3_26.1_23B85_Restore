@interface HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"ProductTypePrefix"];
  [(HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule *)self setProductType:v4];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule *)self productType];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v5 = [v4 watchProductType];
  v6 = [(HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule *)self productType];
  v7 = [v5 hasPrefix:v6];

  return v7;
}

@end