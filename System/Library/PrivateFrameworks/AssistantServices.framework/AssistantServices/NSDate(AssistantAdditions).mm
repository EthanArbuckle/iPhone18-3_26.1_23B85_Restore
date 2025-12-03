@interface NSDate(AssistantAdditions)
- (BOOL)_af_isSameDayAsDate:()AssistantAdditions;
- (uint64_t)af_isToday;
- (uint64_t)af_isTomorrow;
@end

@implementation NSDate(AssistantAdditions)

- (uint64_t)af_isTomorrow
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setDay:1];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [currentCalendar dateByAddingComponents:v2 toDate:date options:0];

  v6 = [self _af_isSameDayAsDate:v5];
  return v6;
}

- (uint64_t)af_isToday
{
  date = [MEMORY[0x1E695DF00] date];
  v3 = [self _af_isSameDayAsDate:date];

  return v3;
}

- (BOOL)_af_isSameDayAsDate:()AssistantAdditions
{
  v4 = MEMORY[0x1E695DEE8];
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

@end