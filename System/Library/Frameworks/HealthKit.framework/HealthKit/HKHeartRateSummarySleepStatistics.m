@interface HKHeartRateSummarySleepStatistics
- (HKHeartRateSummarySleepStatistics)init;
@end

@implementation HKHeartRateSummarySleepStatistics

- (HKHeartRateSummarySleepStatistics)init
{
  v3.receiver = self;
  v3.super_class = HKHeartRateSummarySleepStatistics;
  result = [(HKHeartRateSummarySleepStatistics *)&v3 init];
  if (result)
  {
    result->_hasBGHRSleepMode = 0;
  }

  return result;
}

@end