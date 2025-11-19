@interface ATXModeTransitionModeEventProvider
- (ATXModeTransitionModeEventProvider)initWithMode:(unint64_t)a3;
- (BOOL)eventIsDuringThanksgivingShutdown:(id)a3;
- (BOOL)isEventFromProvider:(id)a3;
- (id)aggregationEventsFromEvent:(id)a3;
- (id)biomePublisherWithBookmark:(id)a3;
- (id)bmStoreEventsForLast61DaysWithStartDateToday:(id)a3 endDateToday:(id)a4 includeWeekends:(BOOL)a5 includeHolidays:(BOOL)a6;
- (id)dateIntervalFromEvent:(id)a3;
- (id)eventsFromPublisher;
@end

@implementation ATXModeTransitionModeEventProvider

- (ATXModeTransitionModeEventProvider)initWithMode:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ATXModeTransitionModeEventProvider;
  result = [(ATXModeTransitionModeEventProvider *)&v5 init];
  if (result)
  {
    result->_mode = a3;
  }

  return result;
}

- (id)biomePublisherWithBookmark:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"ATXModeTransitionModeEventProvider.m" lineNumber:35 description:@"Must be implemented by sub-classes."];

  v6 = objc_opt_new();

  return v6;
}

- (id)eventsFromPublisher
{
  v3 = objc_opt_new();
  v4 = [(ATXModeTransitionModeEventProvider *)self biomePublisherWithBookmark:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__ATXModeTransitionModeEventProvider_eventsFromPublisher__block_invoke_2;
  v10[3] = &unk_2785988C8;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  v6 = [v4 sinkWithCompletion:&__block_literal_global_50 receiveInput:v10];

  v7 = v11;
  v8 = v5;

  return v5;
}

void __57__ATXModeTransitionModeEventProvider_eventsFromPublisher__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = v7;
  if (isKindOfClass)
  {
    v6 = [*(a1 + 32) aggregationEventsFromEvent:v7];
    if ([v6 count])
    {
      [*(a1 + 40) addObjectsFromArray:v6];
    }

    v5 = v7;
  }
}

- (BOOL)isEventFromProvider:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)aggregationEventsFromEvent:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ATXModeTransitionModeEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 eventBody];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dateIntervalFromEvent:(id)a3
{
  v4 = a3;
  if ([(ATXModeTransitionModeEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 eventBody];
    v6 = objc_alloc(MEMORY[0x277CCA970]);
    v7 = [v5 startDate];
    v8 = [v5 endDate];
    v9 = [v6 initWithStartDate:v7 endDate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bmStoreEventsForLast61DaysWithStartDateToday:(id)a3 endDateToday:(id)a4 includeWeekends:(BOOL)a5 includeHolidays:(BOOL)a6
{
  v20 = self;
  v9 = a3;
  v10 = a4;
  v21 = objc_opt_new();
  v11 = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = -61;
  do
  {
    v13 = [v11 dateByAddingUnit:16 value:v12 + 1 toDate:v9 options:{0, v20}];
    v14 = [v11 dateByAddingUnit:16 value:v12 + 1 toDate:v10 options:0];
    if ((a5 || ([v11 isDateInWeekend:v13] & 1) == 0) && (a6 || !-[ATXModeTransitionModeEventProvider eventIsDuringThanksgivingShutdown:](v20, "eventIsDuringThanksgivingShutdown:", v13)))
    {
      v15 = [[ATXModeEvent alloc] initWithStartDate:v13 endDate:v14];
      v16 = objc_alloc(MEMORY[0x277CF1800]);
      [v13 timeIntervalSinceReferenceDate];
      v17 = [v16 initWithEventBody:v15 timestamp:?];
      [v21 addObject:v17];
    }
  }

  while (!__CFADD__(v12++, 1));

  return v21;
}

- (BOOL)eventIsDuringThanksgivingShutdown:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = objc_opt_new();
  [v6 setDay:21];
  [v6 setMonth:11];
  [v6 setYear:2020];
  v7 = [v5 dateFromComponents:v6];
  [v6 setDay:29];
  [v6 setMonth:11];
  [v6 setYear:2020];
  v8 = [v5 dateFromComponents:v6];
  v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v8];
  v10 = [v9 containsDate:v4];

  return v10;
}

@end