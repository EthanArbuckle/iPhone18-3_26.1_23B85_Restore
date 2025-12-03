@interface HKRemoteFeatureAvailabilityWatchRegionEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityWatchRegionEqualsRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"RegionCode"];
  [(HKRemoteFeatureAvailabilityWatchRegionEqualsRule *)self setRegionCode:v4];
}

- (BOOL)evaluate
{
  regionCode = [(HKRemoteFeatureAvailabilityWatchRegionEqualsRule *)self regionCode];

  if (!regionCode)
  {
    return 0;
  }

  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  watchRegion = [dataSource watchRegion];
  regionCode2 = [(HKRemoteFeatureAvailabilityWatchRegionEqualsRule *)self regionCode];
  v7 = [watchRegion isEqualToString:regionCode2];

  return v7;
}

@end