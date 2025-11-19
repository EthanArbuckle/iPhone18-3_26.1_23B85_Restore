@interface HKCalendarCache
+ (id)earliestTimeZoneCalendar;
+ (id)latestTimeZoneCalendar;
- (HKCalendarCache)init;
- (id)calendarForTimeZone:(id)a3;
- (id)currentCalendar;
@end

@implementation HKCalendarCache

- (HKCalendarCache)init
{
  v6.receiver = self;
  v6.super_class = HKCalendarCache;
  v2 = [(HKCalendarCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    calendarsByTimeZoneName = v2->_calendarsByTimeZoneName;
    v2->_calendarsByTimeZoneName = v3;
  }

  return v2;
}

- (id)calendarForTimeZone:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(HKCalendarCache *)a2 calendarForTimeZone:?];
  }

  calendarsByTimeZoneName = self->_calendarsByTimeZoneName;
  v7 = [v5 name];
  v8 = [(NSMutableDictionary *)calendarsByTimeZoneName objectForKeyedSubscript:v7];

  if (!v8)
  {
    _HKInitializeLogging();
    v9 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_DEBUG))
    {
      [(HKCalendarCache *)v9 calendarForTimeZone:v5];
    }

    v8 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
    [v8 setTimeZone:v5];
    v10 = self->_calendarsByTimeZoneName;
    v11 = [v5 name];
    [(NSMutableDictionary *)v10 setObject:v8 forKeyedSubscript:v11];
  }

  return v8;
}

- (id)currentCalendar
{
  test_currentCalendar = self->_test_currentCalendar;
  if (test_currentCalendar)
  {
    v3 = test_currentCalendar;
  }

  else
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [v5 timeZone];
    v3 = [(HKCalendarCache *)self calendarForTimeZone:v6];
  }

  return v3;
}

+ (id)earliestTimeZoneCalendar
{
  if (earliestTimeZoneCalendar_onceToken != -1)
  {
    +[HKCalendarCache earliestTimeZoneCalendar];
  }

  v3 = earliestTimeZoneCalendar_calendar;

  return v3;
}

void __43__HKCalendarCache_earliestTimeZoneCalendar__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  v1 = earliestTimeZoneCalendar_calendar;
  earliestTimeZoneCalendar_calendar = v0;

  v2 = earliestTimeZoneCalendar_calendar;
  v3 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:-43200];
  [v2 setTimeZone:v3];
}

+ (id)latestTimeZoneCalendar
{
  if (latestTimeZoneCalendar_onceToken != -1)
  {
    +[HKCalendarCache latestTimeZoneCalendar];
  }

  v3 = latestTimeZoneCalendar_calendar;

  return v3;
}

void __41__HKCalendarCache_latestTimeZoneCalendar__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  v1 = latestTimeZoneCalendar_calendar;
  latestTimeZoneCalendar_calendar = v0;

  v2 = latestTimeZoneCalendar_calendar;
  v3 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:50400];
  [v2 setTimeZone:v3];
}

- (void)calendarForTimeZone:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCalendarCache.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"timeZone != nil"}];
}

- (void)calendarForTimeZone:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v8 = 138543874;
  v9 = objc_opt_class();
  v10 = 2048;
  v11 = a2;
  v12 = 2114;
  v13 = a3;
  v6 = v9;
  _os_log_debug_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@.%p] Creating new calendar for time zone: %{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end