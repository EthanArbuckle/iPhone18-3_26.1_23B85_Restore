@interface NSDate(HomeKit)
+ (id)hm_iso8601dateFromString:()HomeKit;
+ (uint64_t)hm_dayOfTheWeek;
@end

@implementation NSDate(HomeKit)

+ (id)hm_iso8601dateFromString:()HomeKit
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v7 = [v5 dateFromString:v4];

  return v7;
}

+ (uint64_t)hm_dayOfTheWeek
{
  v0 = objc_alloc(MEMORY[0x1E695DEE8]);
  v1 = [v0 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  date = [MEMORY[0x1E695DF00] date];
  v3 = [v1 components:512 fromDate:date];

  LOBYTE(date) = [v3 weekday];
  return date;
}

@end