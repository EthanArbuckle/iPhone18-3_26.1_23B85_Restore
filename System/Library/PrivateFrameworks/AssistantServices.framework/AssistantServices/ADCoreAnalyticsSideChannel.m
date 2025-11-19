@interface ADCoreAnalyticsSideChannel
+ (int64_t)_currentHour;
+ (void)logAnalyticsBatchUploadedWithBatch:(id)a3;
+ (void)logAnalyticsLocalStoragePurgedWithSize:(id)a3;
+ (void)logAnalyticsLocalStorageSnapshotWithSize:(id)a3;
@end

@implementation ADCoreAnalyticsSideChannel

+ (int64_t)_currentHour
{
  v2 = +[NSDate date];
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:32 fromDate:v2];
  v5 = [v4 hour];

  return v5;
}

+ (void)logAnalyticsLocalStorageSnapshotWithSize:(id)a3
{
  v4 = a3;
  [a1 _currentHour];
  v5 = v4;
  AnalyticsSendEventLazy();
}

+ (void)logAnalyticsLocalStoragePurgedWithSize:(id)a3
{
  v4 = a3;
  [a1 _currentHour];
  v5 = v4;
  AnalyticsSendEventLazy();
}

+ (void)logAnalyticsBatchUploadedWithBatch:(id)a3
{
  v4 = a3;
  v5 = [a1 _currentHour];
  v6 = [v4 analyticsDictionary];

  v7 = [v6 mutableCopy];
  v8 = [NSNumber numberWithInteger:v5];
  [v7 setObject:v8 forKey:@"hour"];

  v9 = v7;
  AnalyticsSendEventLazy();
}

@end