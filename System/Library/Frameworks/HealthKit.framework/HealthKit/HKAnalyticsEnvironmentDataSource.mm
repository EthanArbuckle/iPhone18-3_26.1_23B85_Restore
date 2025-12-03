@interface HKAnalyticsEnvironmentDataSource
- (BOOL)areHealthNotificationsAuthorized;
- (HKAnalyticsEnvironmentDataSource)init;
- (id)bucketedNumberOfDaysSinceDate:(id)date;
- (id)bucketedNumberOfWeeksSinceDate:(id)date minimumBinningValue:(int64_t)value;
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
  notificationSettings = [v2 notificationSettings];
  authorizationStatus = [notificationSettings authorizationStatus];

  v6 = authorizationStatus == 4 || (authorizationStatus & 0xFFFFFFFFFFFFFFFELL) == 2;
  return v6;
}

- (id)bucketedNumberOfDaysSinceDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    calendarCache = [(HKAnalyticsEnvironmentDataSource *)self calendarCache];
    currentCalendar = [calendarCache currentCalendar];

    currentDate = [(HKAnalyticsEnvironmentDataSource *)self currentDate];
    v8 = [currentCalendar components:16 fromDate:dateCopy toDate:currentDate options:0];

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

- (id)bucketedNumberOfWeeksSinceDate:(id)date minimumBinningValue:(int64_t)value
{
  if (date)
  {
    dateCopy = date;
    calendarCache = [(HKAnalyticsEnvironmentDataSource *)self calendarCache];
    currentCalendar = [calendarCache currentCalendar];

    currentDate = [(HKAnalyticsEnvironmentDataSource *)self currentDate];
    v10 = [currentCalendar components:0x2000 fromDate:dateCopy toDate:currentDate options:0];

    if (v10 && (v11 = [v10 weekOfYear], v11 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:value];
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