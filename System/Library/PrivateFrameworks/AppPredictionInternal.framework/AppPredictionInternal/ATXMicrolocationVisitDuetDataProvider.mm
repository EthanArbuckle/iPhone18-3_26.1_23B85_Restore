@interface ATXMicrolocationVisitDuetDataProvider
- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates;
@end

@implementation ATXMicrolocationVisitDuetDataProvider

- (id)fetchEventsBetweenStartDate:(id)date andEndDate:(id)endDate withPredicates:(id)predicates
{
  endDateCopy = endDate;
  dateCopy = date;
  v8 = objc_opt_new();
  v9 = objc_alloc_init(MEMORY[0x277CEBCA0]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__ATXMicrolocationVisitDuetDataProvider_fetchEventsBetweenStartDate_andEndDate_withPredicates___block_invoke_2;
  v12[3] = &unk_27859E388;
  v10 = v8;
  v13 = v10;
  [v9 enumerateMicroLocationVisitEventsFromStartDate:dateCopy endDate:endDateCopy filterBlock:&__block_literal_global_137 limit:1000000 ascending:1 block:v12];

  return v10;
}

BOOL __95__ATXMicrolocationVisitDuetDataProvider_fetchEventsBetweenStartDate_andEndDate_withPredicates___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 maxProbability];
  [v2 doubleValue];
  v4 = v3 >= 0.7;

  return v4;
}

uint64_t __95__ATXMicrolocationVisitDuetDataProvider_fetchEventsBetweenStartDate_andEndDate_withPredicates___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXMicrolocationVisitDuetEvent alloc] initWithATXEvent:v3];

  v5 = [(ATXMicrolocationVisitDuetEvent *)v4 dominantMicrolocationUUID];
  v6 = [*(a1 + 32) lastObject];
  v7 = [v6 dominantMicrolocationUUID];
  v8 = [v5 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

@end