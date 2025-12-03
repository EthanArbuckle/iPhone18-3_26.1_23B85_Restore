@interface ADCoreAnalyticsSideChannel
+ (int64_t)_currentHour;
+ (void)logAnalyticsBatchUploadedWithBatch:(id)batch;
+ (void)logAnalyticsLocalStoragePurgedWithSize:(id)size;
+ (void)logAnalyticsLocalStorageSnapshotWithSize:(id)size;
@end

@implementation ADCoreAnalyticsSideChannel

+ (int64_t)_currentHour
{
  v2 = +[NSDate date];
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:32 fromDate:v2];
  hour = [v4 hour];

  return hour;
}

+ (void)logAnalyticsLocalStorageSnapshotWithSize:(id)size
{
  sizeCopy = size;
  [self _currentHour];
  v5 = sizeCopy;
  AnalyticsSendEventLazy();
}

+ (void)logAnalyticsLocalStoragePurgedWithSize:(id)size
{
  sizeCopy = size;
  [self _currentHour];
  v5 = sizeCopy;
  AnalyticsSendEventLazy();
}

+ (void)logAnalyticsBatchUploadedWithBatch:(id)batch
{
  batchCopy = batch;
  _currentHour = [self _currentHour];
  analyticsDictionary = [batchCopy analyticsDictionary];

  v7 = [analyticsDictionary mutableCopy];
  v8 = [NSNumber numberWithInteger:_currentHour];
  [v7 setObject:v8 forKey:@"hour"];

  v9 = v7;
  AnalyticsSendEventLazy();
}

@end