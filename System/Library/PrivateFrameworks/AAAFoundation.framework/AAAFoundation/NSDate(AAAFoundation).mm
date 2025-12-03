@interface NSDate(AAAFoundation)
- (uint64_t)aaf_isRelative;
- (uint64_t)aaf_isToday;
- (uint64_t)aaf_isTodayWithCalendar:()AAAFoundation;
@end

@implementation NSDate(AAAFoundation)

- (uint64_t)aaf_isRelative
{
  aaf_standardFormatter = [MEMORY[0x1E696AB78] aaf_standardFormatter];
  v3 = [aaf_standardFormatter stringFromDate:self];
  aaf_standardFormatter2 = [MEMORY[0x1E696AB78] aaf_standardFormatter];
  [aaf_standardFormatter2 setDoesRelativeDateFormatting:0];
  v5 = [aaf_standardFormatter2 stringFromDate:self];
  v6 = [v3 isEqualToString:v5];

  return v6 ^ 1u;
}

- (uint64_t)aaf_isToday
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = [self aaf_isTodayWithCalendar:currentCalendar];

  return v3;
}

- (uint64_t)aaf_isTodayWithCalendar:()AAAFoundation
{
  v4 = a3;
  v5 = [self dayComponentsWithCalendar:v4];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [date dayComponentsWithCalendar:v4];

  v8 = [v5 isEqual:v7];
  return v8;
}

@end