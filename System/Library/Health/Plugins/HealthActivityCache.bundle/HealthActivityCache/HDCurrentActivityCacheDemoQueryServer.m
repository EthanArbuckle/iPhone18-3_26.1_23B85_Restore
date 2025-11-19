@interface HDCurrentActivityCacheDemoQueryServer
- (void)_queue_start;
@end

@implementation HDCurrentActivityCacheDemoQueryServer

- (void)_queue_start
{
  v28.receiver = self;
  v28.super_class = HDCurrentActivityCacheDemoQueryServer;
  [(HDCurrentActivityCacheQueryServer *)&v28 _queue_start];
  v3 = +[HKUnit kilocalorieUnit];
  v4 = +[HKUnit minuteUnit];
  v5 = +[NSDate date];
  v6 = +[NSCalendar currentCalendar];
  v7 = _HKActivityCacheDateComponentsFromDate();
  v24 = v5;
  v8 = [v6 startOfDayForDate:v5];
  v9 = [v6 dateByAddingUnit:16 value:1 toDate:v8 options:0];
  v10 = [v6 startOfDayForDate:v9];

  v11 = +[NSUUID UUID];
  v22 = v10;
  v23 = v7;
  v12 = [HKActivityCache _activityCacheWithUUID:v11 startDate:v8 endDate:v10 dateComponents:v7 sequence:1];

  v26 = v3;
  v13 = sub_20708(self, HKQuantityTypeIdentifierActiveEnergyBurned, v3);
  v14 = sub_20708(self, HKQuantityTypeIdentifierAppleMoveTime, v4);
  v25 = v4;
  v15 = sub_20708(self, HKQuantityTypeIdentifierAppleExerciseTime, v4);
  v16 = sub_20980(self);
  v17 = [(HDCurrentActivityCacheDemoQueryServer *)self clientProxy];
  v18 = [v17 remoteObjectProxy];

  _HKInitializeLogging();
  v19 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&def_21990, v19, OS_LOG_TYPE_INFO, "Delivering demo Activity Statistics", buf, 2u);
  }

  v20 = objc_opt_new();
  [v20 setCurrentActivityCache:v12];
  [v20 setActiveEnergyResults:v13];
  [v20 setAppleMoveTimeResults:v14];
  [v20 setAppleExerciseTimeResults:v15];
  [v20 setAppleStandHourResults:v16];
  v21 = [(HDCurrentActivityCacheDemoQueryServer *)self queryUUID];
  [v18 client_deliverQueryResult:v20 queryUUID:v21];
}

@end