@interface HKRemoteFeatureAvailabilityWatchRegionEqualsRule
- (BOOL)evaluate;
- (void)processUserInfo:(id)a3;
@end

@implementation HKRemoteFeatureAvailabilityWatchRegionEqualsRule

- (void)processUserInfo:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"RegionCode"];
  [(HKRemoteFeatureAvailabilityWatchRegionEqualsRule *)self setRegionCode:v4];
}

- (BOOL)evaluate
{
  v3 = [(HKRemoteFeatureAvailabilityWatchRegionEqualsRule *)self regionCode];

  if (!v3)
  {
    return 0;
  }

  v4 = [(HKRemoteFeatureAvailabilityBaseRule *)self dataSource];
  v5 = [v4 watchRegion];
  v6 = [(HKRemoteFeatureAvailabilityWatchRegionEqualsRule *)self regionCode];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

@end