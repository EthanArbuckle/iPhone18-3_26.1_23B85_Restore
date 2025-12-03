@interface HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)info;
@end

@implementation HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule

- (void)processUserInfo:(id)info
{
  v4 = [info objectForKeyedSubscript:@"RegionInfo"];
  [(HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule *)self setRegionInfo:v4];
}

- (BOOL)evaluate
{
  regionInfo = [(HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule *)self regionInfo];

  if (!regionInfo)
  {
    return 0;
  }

  dataSource = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  watchRegionInfo = [dataSource watchRegionInfo];
  regionInfo2 = [(HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule *)self regionInfo];
  v7 = [watchRegionInfo isEqualToString:regionInfo2];

  return v7;
}

@end