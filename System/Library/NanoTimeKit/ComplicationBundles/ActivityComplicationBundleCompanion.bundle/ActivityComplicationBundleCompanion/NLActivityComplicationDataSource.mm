@interface NLActivityComplicationDataSource
+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4;
+ (id)widgetKindForFamily:(int64_t)a3;
- (NLActivityComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_activityStatisticsForData:(id)a3 unit:(id)a4;
- (id)_activityStatisticsForStandHours:(id)a3;
- (id)_timelineEntryFromModel:(id)a3 family:(int64_t)a4;
- (id)lockedTemplate;
- (id)sampleTemplate;
- (void)activityDataProviderCurrentDataModelUpdated:(id)a3;
- (void)dealloc;
- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
@end

@implementation NLActivityComplicationDataSource

+ (id)widgetKindForFamily:(int64_t)a3
{
  v3 = @"ActivityRingsComplication";
  if (a3 == 3)
  {
    v3 = @"ActivityComplication";
  }

  if (a3 == 11)
  {
    return @"ActivityGraphComplication";
  }

  else
  {
    return v3;
  }
}

- (NLActivityComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v8 = a3;
  v9 = a5;
  _HKInitializeLogging();
  v10 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEBUG))
  {
    sub_9600(v10);
  }

  v14.receiver = self;
  v14.super_class = NLActivityComplicationDataSource;
  v11 = [(NLActivityComplicationDataSource *)&v14 initWithComplication:v8 family:a4 forDevice:v9];
  if (v11)
  {
    v12 = +[FIUIActivityDataProvider sharedModel];
    [v12 addSubscriber:v11];
  }

  return v11;
}

- (void)dealloc
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEBUG))
  {
    sub_9644(v3);
  }

  v4 = +[FIUIActivityDataProvider sharedModel];
  [v4 removeSubscriber:self];

  v5.receiver = self;
  v5.super_class = NLActivityComplicationDataSource;
  [(NLActivityComplicationDataSource *)&v5 dealloc];
}

- (void)fetchWidgetMigrationForDescriptor:(id)a3 family:(int64_t)a4 completion:(id)a5
{
  v6 = a5;
  _HKInitializeLogging();
  v7 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[NLActivityComplicationDataSource fetchWidgetMigrationForDescriptor:family:completion:]";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  v8 = [CLKWidgetComplicationDescriptor alloc];
  v9 = +[NLActivityComplicationDataSource widgetExtensionBundleIdentifier];
  v10 = +[NLActivityComplicationDataSource appIdentifier];
  v11 = [NLActivityComplicationDataSource widgetKindForFamily:a4];
  v12 = [v8 initWithExtensionBundleIdentifier:v9 containerBundleIdentifier:v10 kind:v11 intent:0];

  v6[2](v6, v12);
}

+ (BOOL)hasMigratedToWidgetForFamily:(int64_t)a3 device:(id)a4
{
  v4 = a4;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "+[NLActivityComplicationDataSource hasMigratedToWidgetForFamily:device:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v6 = [[NSUUID alloc] initWithUUIDString:@"8DD39CF2-0515-442A-99FD-06F9AAA59249"];
  v7 = [v4 supportsCapability:v6];

  return v7;
}

- (void)activityDataProviderCurrentDataModelUpdated:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Received updated current activity data model: %@, appending to timeline entries", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_60B0;
  v7[3] = &unk_105F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (id)sampleTemplate
{
  v3 = objc_opt_new();
  v4 = +[HKUnit kilocalorieUnit];
  v5 = [HKQuantity quantityWithUnit:v4 doubleValue:500.0];
  [v3 setActiveEnergyGoal:v5];

  v6 = [v3 activeEnergyGoal];
  [v3 setActiveEnergyTotal:v6];

  [v3 setAppleStandHoursGoal:12];
  [v3 setAppleStandHoursTotal:{objc_msgSend(v3, "appleStandHoursGoal")}];
  [v3 setAppleExerciseTimeGoal:30.0];
  [v3 appleExerciseTimeGoal];
  [v3 setAppleExerciseTimeTotal:?];
  if ([(NLActivityComplicationDataSource *)self family]== &dword_8 + 3)
  {
    v7 = +[HKUnit kilocalorieUnit];
    v8 = [HKQuantity quantityWithUnit:v7 doubleValue:345.0];
    [v3 setActiveEnergyTotal:v8];

    [v3 setAppleStandHoursTotal:10];
    [v3 setAppleExerciseTimeTotal:43.0];
    v9 = +[HKUnit kilocalorieUnit];
    v10 = [(NLActivityComplicationDataSource *)self _activityStatisticsForData:&off_11540 unit:v9];

    v11 = +[HKUnit minuteUnit];
    v12 = [(NLActivityComplicationDataSource *)self _activityStatisticsForData:&off_11558 unit:v11];

    v13 = [(NLActivityComplicationDataSource *)self _activityStatisticsForStandHours:&off_11570];
    [v3 setActiveEnergyChartData:v10];
    [v3 setAppleExerciseTimeChartData:v12];
    [v3 setAppleStandHourChartData:v13];
  }

  v14 = [(NLActivityComplicationDataSource *)self _timelineEntryFromModel:v3 family:[(NLActivityComplicationDataSource *)self family]];
  v15 = [v14 complicationTemplate];

  return v15;
}

- (id)_activityStatisticsForData:(id)a3 unit:(id)a4
{
  v5 = a3;
  v25 = a4;
  v24 = objc_alloc_init(NSMutableArray);
  v6 = +[NSCalendar currentCalendar];
  v7 = +[NSDate date];
  v23 = v6;
  v8 = [v6 startOfDayForDate:v7];

  v9 = v8;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  v26 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    v13 = 1;
    do
    {
      v14 = 0;
      v15 = 30 * v13;
      v16 = v9;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * v14);
        v9 = [v23 dateByAddingUnit:64 value:v15 toDate:v26 options:0];
        v18 = [[_HKActivityStatisticsQuantityInfo alloc] initWithStartDate:v16 endDate:v9];
        [v17 doubleValue];
        v19 = [HKQuantity quantityWithUnit:v25 doubleValue:?];
        [v18 setQuantityValue:v19];
        [v24 addObject:v18];

        ++v13;
        v14 = v14 + 1;
        v15 += 30;
        v16 = v9;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  v20 = [v24 copy];

  return v20;
}

- (id)_activityStatisticsForStandHours:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[NSCalendar currentCalendar];
  v6 = +[NSDate date];
  v7 = [v5 startOfDayForDate:v6];

  v8 = v7;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  v11 = v8;
  if (v10)
  {
    v12 = v10;
    v13 = *v24;
    v14 = 1;
    v11 = v8;
    do
    {
      v15 = 0;
      v16 = v11;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v17 = [*(*(&v23 + 1) + 8 * v15) intValue];
        [v16 timeIntervalSinceReferenceDate];
        if (v17 == 1)
        {
          v19 = 0;
        }

        else
        {
          if (v17 != 2)
          {
            goto LABEL_11;
          }

          v19 = 1;
        }

        v20 = [[_HKActivityStatisticsStandHourInfo alloc] initWithTimeStamp:v19 state:v18];
        [v4 addObject:v20];

LABEL_11:
        v11 = [v5 dateByAddingUnit:32 value:v14 toDate:v8 options:0];

        ++v14;
        v15 = v15 + 1;
        v16 = v11;
      }

      while (v12 != v15);
      v12 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v21 = [v4 copy];

  return v21;
}

- (id)lockedTemplate
{
  _HKInitializeLogging();
  v3 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Returning locked template for activity complication", v8, 2u);
  }

  v4 = +[FIUIActivityDataModel lockedModel];
  v5 = [(NLActivityComplicationDataSource *)self _timelineEntryFromModel:v4 family:[(NLActivityComplicationDataSource *)self family]];
  v6 = [v5 complicationTemplate];

  return v6;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Datasource asking for current timeline entry", buf, 2u);
  }

  v6 = +[FIUIActivityDataProvider sharedModel];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6A58;
  v8[3] = &unk_10620;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getCurrentActivityDataModelWithHandler:v8];
}

- (id)_timelineEntryFromModel:(id)a3 family:(int64_t)a4
{
  v5 = a3;
  v6 = [[NLActivityTimelineEntryModel alloc] initWithDataModel:v5];

  v7 = [(NLActivityTimelineEntryModel *)v6 entryForComplicationFamily:a4];

  return v7;
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v6 = a5;
  v7 = [NSURL URLWithString:@"ActivityMonitorApp://rings"];
  (*(a5 + 2))(v6, v7);
}

@end