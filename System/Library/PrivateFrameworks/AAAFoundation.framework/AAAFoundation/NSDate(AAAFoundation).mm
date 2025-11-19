@interface NSDate(AAAFoundation)
- (uint64_t)aaf_isRelative;
- (uint64_t)aaf_isToday;
- (uint64_t)aaf_isTodayWithCalendar:()AAAFoundation;
@end

@implementation NSDate(AAAFoundation)

- (uint64_t)aaf_isRelative
{
  v2 = [MEMORY[0x1E696AB78] aaf_standardFormatter];
  v3 = [v2 stringFromDate:a1];
  v4 = [MEMORY[0x1E696AB78] aaf_standardFormatter];
  [v4 setDoesRelativeDateFormatting:0];
  v5 = [v4 stringFromDate:a1];
  v6 = [v3 isEqualToString:v5];

  return v6 ^ 1u;
}

- (uint64_t)aaf_isToday
{
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [a1 aaf_isTodayWithCalendar:v2];

  return v3;
}

- (uint64_t)aaf_isTodayWithCalendar:()AAAFoundation
{
  v4 = a3;
  v5 = [a1 dayComponentsWithCalendar:v4];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v6 dayComponentsWithCalendar:v4];

  v8 = [v5 isEqual:v7];
  return v8;
}

@end