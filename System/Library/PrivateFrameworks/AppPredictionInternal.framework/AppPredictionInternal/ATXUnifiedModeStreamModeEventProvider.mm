@interface ATXUnifiedModeStreamModeEventProvider
- (BOOL)isEventFromProvider:(id)provider;
- (id)aggregationEventsFromEvent:(id)event;
- (id)biomePublisherWithBookmark:(id)bookmark;
- (id)dateIntervalFromEvent:(id)event;
@end

@implementation ATXUnifiedModeStreamModeEventProvider

- (id)biomePublisherWithBookmark:(id)bookmark
{
  v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2419200.0];
  v5 = objc_opt_new();
  [v4 timeIntervalSinceReferenceDate];
  v6 = [v5 sessionPublisherFromStartTime:?];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ATXUnifiedModeStreamModeEventProvider_biomePublisherWithBookmark___block_invoke;
  v9[3] = &unk_2785A16E0;
  v9[4] = self;
  v7 = [v6 filterWithIsIncluded:v9];

  return v7;
}

BOOL __68__ATXUnifiedModeStreamModeEventProvider_biomePublisherWithBookmark___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 inferredActivityType];
  [*(a1 + 32) mode];
  return v3 == ATXActivityTypeFromMode();
}

- (BOOL)isEventFromProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)aggregationEventsFromEvent:(id)event
{
  v13[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(ATXUnifiedModeStreamModeEventProvider *)self isEventFromProvider:eventCopy])
  {
    v5 = [(ATXUnifiedModeStreamModeEventProvider *)self dateIntervalFromEvent:eventCopy];
    if (v5)
    {
      v6 = [ATXModeEvent alloc];
      startDate = [v5 startDate];
      endDate = [v5 endDate];
      v9 = [(ATXModeEvent *)v6 initWithStartDate:startDate endDate:endDate];

      v13[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)dateIntervalFromEvent:(id)event
{
  eventCopy = event;
  if ([(ATXUnifiedModeStreamModeEventProvider *)self isEventFromProvider:eventCopy])
  {
    v5 = MEMORY[0x277CBEAA8];
    v6 = eventCopy;
    v7 = [v5 alloc];
    [v6 startTime];
    v8 = [v7 initWithTimeIntervalSinceReferenceDate:?];
    v9 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v6 endTime];
    v11 = v10;

    v12 = [v9 initWithTimeIntervalSinceReferenceDate:v11];
    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end