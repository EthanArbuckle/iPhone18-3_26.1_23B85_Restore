@interface HKAnalyticsEnvironmentDataSource
- (BOOL)areHealthNotificationsAuthorized;
- (HKAnalyticsEnvironmentDataSource)init;
- (id)bucketedNumberOfDaysSinceDate:(id)a3;
- (id)bucketedNumberOfWeeksSinceDate:(id)a3 minimumBinningValue:(int64_t)a4;
@end

@implementation HKAnalyticsEnvironmentDataSource

- (HKAnalyticsEnvironmentDataSource)init
{
  v6.receiver = self;
  v6.super_class = HKAnalyticsEnvironmentDataSource;
  v2 = [(HKAnalyticsEnvironmentDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKCalendarCache);
    calendarCache = v2->_calendarCache;
    v2->_calendarCache = v3;
  }

  return v2;
}

- (BOOL)areHealthNotificationsAuthorized
{
  v2 = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.Health"];
  v3 = [v2 notificationSettings];
  v4 = [v3 authorizationStatus];

  v6 = v4 == 4 || (v4 & 0xFFFFFFFFFFFFFFFELL) == 2;
  return v6;
}

- (id)bucketedNumberOfDaysSinceDate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HKAnalyticsEnvironmentDataSource *)self calendarCache];
    v6 = [v5 currentCalendar];

    v7 = [(HKAnalyticsEnvironmentDataSource *)self currentDate];
    v8 = [v6 components:16 fromDate:v4 toDate:v7 options:0];

    if (v8 && (v9 = [v8 day], v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v10 = HKAnalyticsSigFigBinnedValue(v11, 2, &unk_1F0685D30);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)bucketedNumberOfWeeksSinceDate:(id)a3 minimumBinningValue:(int64_t)a4
{
  if (a3)
  {
    v6 = a3;
    v7 = [(HKAnalyticsEnvironmentDataSource *)self calendarCache];
    v8 = [v7 currentCalendar];

    v9 = [(HKAnalyticsEnvironmentDataSource *)self currentDate];
    v10 = [v8 components:0x2000 fromDate:v6 toDate:v9 options:0];

    if (v10 && (v11 = [v10 weekOfYear], v11 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
      v12 = HKAnalyticsSigFigBinnedValue(v13, 2, v14);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end