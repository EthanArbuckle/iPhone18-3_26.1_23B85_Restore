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
  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v5 calendarIdentifier];

  if (v10)
  {
    [v8 setCalendar:v5];
    v11 = [MEMORY[0x1E695DF58] currentLocale];
    v12 = [v11 objectForKey:*MEMORY[0x1E695D9A8]];

    v13 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:v12];
    v14 = [v13 mutableCopy];

    v15 = [v14 allKeys];
    v16 = *MEMORY[0x1E695D958];
    v17 = [v15 containsObject:*MEMORY[0x1E695D958]];

    v18 = [v5 calendarIdentifier];
    if (v17)
    {
      v19 = v14;
      v20 = v18;
      v21 = v16;
    }

    else
    {
      v21 = @"calendar";
      v19 = v14;
      v20 = v18;
    }

    [v19 setObject:v20 forKeyedSubscript:v21];

    v22 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v14];
    v23 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v22];

    v9 = v23;
  }

  v24 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"MMyyyy" options:0 locale:v9];
  [v8 setDateFormat:v24];
  v25 = [v8 stringFromDate:v7];

  return v25;
}

@end