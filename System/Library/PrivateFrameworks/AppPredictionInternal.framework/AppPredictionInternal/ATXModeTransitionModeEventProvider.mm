@interface ATXModeTransitionModeEventProvider
- (ATXModeTransitionModeEventProvider)initWithMode:(unint64_t)mode;
- (BOOL)eventIsDuringThanksgivingShutdown:(id)shutdown;
- (BOOL)isEventFromProvider:(id)provider;
- (id)aggregationEventsFromEvent:(id)event;
- (id)biomePublisherWithBookmark:(id)bookmark;
- (id)bmStoreEventsForLast61DaysWithStartDateToday:(id)today endDateToday:(id)dateToday includeWeekends:(BOOL)weekends includeHolidays:(BOOL)holidays;
- (id)dateIntervalFromEvent:(id)event;
- (id)eventsFromPublisher;
@end

@implementation ATXModeTransitionModeEventProvider

- (ATXModeTransitionModeEventProvider)initWithMode:(unint64_t)mode
{
  v5.receiver = self;
  v5.super_class = ATXModeTransitionModeEventProvider;
  result = [(ATXModeTransitionModeEventProvider *)&v5 init];
  if (result)
  {
    result->_mode = mode;
  }

  return result;
}

- (id)biomePublisherWithBookmark:(id)bookmark
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXModeTransitionModeEventProvider.m" lineNumber:35 description:@"Must be implemented by sub-classes."];

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

- (BOOL)isEventFromProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    eventBody = [providerCopy eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)aggregationEventsFromEvent:(id)event
{
  v9[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(ATXModeTransitionModeEventProvider *)self isEventFromProvider:eventCopy])
  {
    eventBody = [eventCopy eventBody];
    v9[0] = eventBody;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)dateIntervalFromEvent:(id)event
{
  eventCopy = event;
  if ([(ATXModeTransitionModeEventProvider *)self isEventFromProvider:eventCopy])
  {
    eventBody = [eventCopy eventBody];
    v6 = objc_alloc(MEMORY[0x277CCA970]);
    startDate = [eventBody startDate];
    endDate = [eventBody endDate];
    v9 = [v6 initWithStartDate:startDate endDate:endDate];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)bmStoreEventsForLast61DaysWithStartDateToday:(id)today endDateToday:(id)dateToday includeWeekends:(BOOL)weekends includeHolidays:(BOOL)holidays
{
  selfCopy = self;
  todayCopy = today;
  dateTodayCopy = dateToday;
  v21 = objc_opt_new();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v12 = -61;
  do
  {
    v13 = [currentCalendar dateByAddingUnit:16 value:v12 + 1 toDate:todayCopy options:{0, selfCopy}];
    v14 = [currentCalendar dateByAddingUnit:16 value:v12 + 1 toDate:dateTodayCopy options:0];
    if ((weekends || ([currentCalendar isDateInWeekend:v13] & 1) == 0) && (holidays || !-[ATXModeTransitionModeEventProvider eventIsDuringThanksgivingShutdown:](selfCopy, "eventIsDuringThanksgivingShutdown:", v13)))
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

- (BOOL)eventIsDuringThanksgivingShutdown:(id)shutdown
{
  v3 = MEMORY[0x277CBEA80];
  shutdownCopy = shutdown;
  currentCalendar = [v3 currentCalendar];
  v6 = objc_opt_new();
  [v6 setDay:21];
  [v6 setMonth:11];
  [v6 setYear:2020];
  v7 = [currentCalendar dateFromComponents:v6];
  [v6 setDay:29];
  [v6 setMonth:11];
  [v6 setYear:2020];
  v8 = [currentCalendar dateFromComponents:v6];
  v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v8];
  v10 = [v9 containsDate:shutdownCopy];

  return v10;
}

@end