@interface NSDateFormatter(AppleAccountUI)
+ (id)monthYearStringFromDate:()AppleAccountUI calendar:;
@end

@implementation NSDateFormatter(AppleAccountUI)

+ (id)monthYearStringFromDate:()AppleAccountUI calendar:
{
  v5 = a4;
  v6 = MEMORY[0x1E696AB78];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  calendarIdentifier = [v5 calendarIdentifier];

  if (calendarIdentifier)
  {
    [v8 setCalendar:v5];
    currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
    v12 = [currentLocale2 objectForKey:*MEMORY[0x1E695D9A8]];

    v13 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v12];
    v14 = [v13 mutableCopy];

    allKeys = [v14 allKeys];
    v16 = *MEMORY[0x1E695D958];
    v17 = [allKeys containsObject:*MEMORY[0x1E695D958]];

    calendarIdentifier2 = [v5 calendarIdentifier];
    if (v17)
    {
      v19 = v14;
      v20 = calendarIdentifier2;
      v21 = v16;
    }

    else
    {
      v21 = @"calendar";
      v19 = v14;
      v20 = calendarIdentifier2;
    }

    [v19 setObject:v20 forKeyedSubscript:v21];

    v22 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v14];
    v23 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v22];

    currentLocale = v23;
  }

  v24 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMyyyy" options:0 locale:currentLocale];
  [v8 setDateFormat:v24];
  v25 = [v8 stringFromDate:v7];

  return v25;
}

@end