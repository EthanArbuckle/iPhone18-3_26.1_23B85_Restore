@interface ATXMicrolocationVisitAnchor
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)sampleEvent;
+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector;
+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)observer;
@end

@implementation ATXMicrolocationVisitAnchor

BOOL __42__ATXMicrolocationVisitAnchor_filterBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 maxProbability];
    [v3 doubleValue];
    v5 = v4 >= 0.7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate
{
  v5 = MEMORY[0x277CEBCA0];
  endDateCopy = endDate;
  dateCopy = date;
  v8 = objc_alloc_init(v5);
  v9 = objc_opt_new();
  filterBlock = [objc_opt_class() filterBlock];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ATXMicrolocationVisitAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke;
  v13[3] = &unk_27859E388;
  v11 = v9;
  v14 = v11;
  [v8 enumerateMicroLocationVisitEventsFromStartDate:dateCopy endDate:endDateCopy filterBlock:filterBlock limit:1000000 ascending:1 block:v13];

  return v11;
}

uint64_t __78__ATXMicrolocationVisitAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[ATXMicrolocationVisitDuetEvent alloc] initWithATXEvent:v3];

  [v2 addObject:v4];
  return 1;
}

+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMicrolocationVisitAnchor.m" lineNumber:96 description:@"ATXMicrolocationVisitAnchor notification listener has moved to Biome scheduler via ATXMicroLocationVisitScheduler"];
}

+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)observer
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXMicrolocationVisitAnchor.m" lineNumber:102 description:@"ATXMicrolocationVisitAnchor notification listener has moved to Biome scheduler via ATXMicroLocationVisitScheduler"];
}

+ (id)sampleEvent
{
  v2 = [ATXMicrolocationVisitDuetEvent alloc];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-20.0];
  v6 = objc_opt_new();
  v7 = [(ATXMicrolocationVisitDuetEvent *)v2 initWithDominantMicrolocationUUID:v3 microlocationProbabilities:v4 startDate:v5 endDate:v6];

  return v7;
}

@end