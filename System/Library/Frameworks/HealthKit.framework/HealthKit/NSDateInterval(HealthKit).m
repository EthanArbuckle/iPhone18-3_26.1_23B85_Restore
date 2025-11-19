@interface NSDateInterval(HealthKit)
+ (id)hk_allTime;
+ (id)hk_dateIntervalForDayFromDate:()HealthKit calendar:;
+ (id)hk_dateIntervalWithAnchor:()HealthKit startOffset:endOffset:;
+ (id)hk_dateIntervalWithStart:()HealthKit end:;
+ (id)hk_instantaneousDateIntervalWithDate:()HealthKit;
- (BOOL)hk_containsTime:()HealthKit;
- (id)hk_prettyString;
- (uint64_t)hk_containsDateInterval:()HealthKit;
- (uint64_t)hk_intersectsDateIntervalWithStartDate:()HealthKit endDate:;
@end

@implementation NSDateInterval(HealthKit)

+ (id)hk_allTime
{
  v0 = objc_alloc(MEMORY[0x1E696AB80]);
  v1 = [MEMORY[0x1E695DF00] distantPast];
  v2 = [MEMORY[0x1E695DF00] distantFuture];
  v3 = [v0 initWithStartDate:v1 endDate:v2];

  return v3;
}

+ (id)hk_dateIntervalWithStart:()HealthKit end:
{
  v4 = objc_alloc(MEMORY[0x1E696AB80]);
  v5 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a1];
  v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:a2];
  v7 = [v4 initWithStartDate:v5 endDate:v6];

  return v7;
}

+ (id)hk_instantaneousDateIntervalWithDate:()HealthKit
{
  v3 = MEMORY[0x1E696AB80];
  v4 = a3;
  v5 = [[v3 alloc] initWithStartDate:v4 duration:0.0];

  return v5;
}

+ (id)hk_dateIntervalWithAnchor:()HealthKit startOffset:endOffset:
{
  v7 = MEMORY[0x1E695DF00];
  v8 = a5;
  v9 = [[v7 alloc] initWithTimeInterval:v8 sinceDate:a1];
  v10 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v8 sinceDate:a2];

  v11 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v10];

  return v11;
}

+ (id)hk_dateIntervalForDayFromDate:()HealthKit calendar:
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 dateByAddingUnit:16 value:1 toDate:v6 options:0];
  v8 = [v5 startOfDayForDate:v6];

  v9 = [v5 startOfDayForDate:v7];

  v10 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v9];

  return v10;
}

- (uint64_t)hk_intersectsDateIntervalWithStartDate:()HealthKit endDate:
{
  v6 = MEMORY[0x1E696AB80];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithStartDate:v8 endDate:v7];

  v10 = [a1 intersectsDateInterval:v9];
  return v10;
}

- (uint64_t)hk_containsDateInterval:()HealthKit
{
  v4 = a3;
  v5 = [v4 startDate];
  if ([a1 containsDate:v5])
  {
    v6 = [v4 endDate];
    v7 = [a1 containsDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hk_containsTime:()HealthKit
{
  v4 = [a1 startDate];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  [a1 duration];
  v8 = v6 <= a2;
  if (v6 + v7 < a2)
  {
    v8 = 0;
  }

  if (v7 == 0.0)
  {
    return v6 == a2;
  }

  else
  {
    return v8;
  }
}

- (id)hk_prettyString
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 startDate];
  v4 = [a1 endDate];
  v5 = [v2 stringWithFormat:@"<startDate: %@, endDate: %@>", v3, v4];

  return v5;
}

@end