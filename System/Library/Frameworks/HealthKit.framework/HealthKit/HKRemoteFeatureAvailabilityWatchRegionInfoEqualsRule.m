@interface HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"RegionInfo"];
  [(HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule *)self setRegionInfo:v4];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule *)self regionInfo];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v5 = [v4 watchRegionInfo];
  v6 = [(HKRemoteFeatureAvailabilityWatchRegionInfoEqualsRule *)self regionInfo];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

@end