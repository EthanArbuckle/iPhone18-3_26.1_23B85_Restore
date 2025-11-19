@interface NSDate(HealthKit)
- (id)hk_nearestDate:()HealthKit;
- (id)hk_truncateToDay;
- (id)hk_utcDateAdjustedToCalendar:()HealthKit;
- (uint64_t)hk_rfc3339String;
@end

@implementation NSDate(HealthKit)

- (uint64_t)hk_rfc3339String
{
  if (hk_rfc3339String_onceToken != -1)
  {
    [NSDate(HealthKit) hk_rfc3339String];
  }

  v2 = hk_rfc3339String_dateFormatter;

  return [v2 stringFromDate:a1];
}

- (id)hk_nearestDate:()HealthKit
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__NSDate_HealthKit__hk_nearestDate___block_invoke;
  v5[3] = &unk_1E737D488;
  v5[4] = a1;
  v3 = [a3 hk_firstObjectWithMinimumValueUsingEvaluationBlock:v5];

  return v3;
}

- (id)hk_truncateToDay
{
  [a1 timeIntervalSinceReferenceDate];
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:floor(v1 / 86400.0) * 86400.0];

  return v2;
}

- (id)hk_utcDateAdjustedToCalendar:()HealthKit
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 hk_gregorianCalendarWithUTCTimeZone];
  v7 = [v6 components:254 fromDate:a1];
  v8 = [v5 dateFromComponents:v7];

  return v8;
}

@end