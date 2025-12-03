@interface NSDate(AssistantUIAdditions)
- (BOOL)_afui_isSameDayAsDate:()AssistantUIAdditions;
- (id)_afui_dateStringUsingCurrentLocaleFromTemplate:()AssistantUIAdditions;
- (uint64_t)afui_isToday;
- (uint64_t)afui_isTomorrow;
@end

@implementation NSDate(AssistantUIAdditions)

- (id)_afui_dateStringUsingCurrentLocaleFromTemplate:()AssistantUIAdditions
{
  v4 = MEMORY[0x277CCA968];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v7 dateFormatFromTemplate:v5 options:0 locale:currentLocale];

  [v6 setDateFormat:v9];
  v10 = [v6 stringFromDate:self];

  return v10;
}

- (BOOL)_afui_isSameDayAsDate:()AssistantUIAdditions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:30 fromDate:self];
  v8 = [currentCalendar components:30 fromDate:v5];

  v9 = [v7 era];
  if (v9 == [v8 era] && (v10 = objc_msgSend(v7, "year"), v10 == objc_msgSend(v8, "year")) && (v11 = objc_msgSend(v7, "month"), v11 == objc_msgSend(v8, "month")))
  {
    v12 = [v7 day];
    v13 = v12 == [v8 day];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (uint64_t)afui_isToday
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [self _afui_isSameDayAsDate:date];

  return v3;
}

- (uint64_t)afui_isTomorrow
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v2 setDay:1];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [currentCalendar dateByAddingComponents:v2 toDate:date options:0];

  v6 = [self _afui_isSameDayAsDate:v5];
  return v6;
}

@end