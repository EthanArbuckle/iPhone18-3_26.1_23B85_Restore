@interface HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"ProductTypePrefix"];
  [(HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule *)self setProductType:v4];
}

- (BOOL)evaluate
{
  productType = [(HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule *)self productType];

  if (!productType)
  {
    return 0;
  }

  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  watchProductType = [dataSource watchProductType];
  productType2 = [(HKRemoteFeatureAvailabilityWatchProductTypeHasPrefixRule *)self productType];
  v7 = [watchProductType hasPrefix:productType2];

  return v7;
}

@end