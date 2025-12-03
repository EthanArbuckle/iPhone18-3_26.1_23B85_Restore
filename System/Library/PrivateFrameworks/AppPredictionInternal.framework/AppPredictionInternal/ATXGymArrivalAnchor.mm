@interface ATXGymArrivalAnchor
+ (BOOL)isActive;
+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate;
+ (id)sampleEvent;
+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector;
+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)observer;
@end

@implementation ATXGymArrivalAnchor

+ (id)fetchAnchorOccurrencesBetweenStartDate:(id)date endDate:(id)endDate
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___ATXGymArrivalAnchor;
  v4 = objc_msgSendSuper2(&v7, sel_fetchAnchorOccurrencesBetweenStartDate_endDate_, date, endDate);
  v5 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_244];

  return v5;
}

uint64_t __70__ATXGymArrivalAnchor_fetchAnchorOccurrencesBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 possibleCategoryNames];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [v2 possibleCategoryNames];
    v6 = [v5 objectAtIndexedSubscript:0];

    if (([v6 isEqualToString:@"gym"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277D0E890]))
    {
      v7 = [v2 endDate];
      v8 = [v2 startDate];
      [v7 timeIntervalSinceDate:v8];
      v4 = v9 < 600.0;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (BOOL)isActive
{
  v2 = [objc_alloc(objc_msgSend(objc_msgSend(objc_opt_class() "supportedDuetDataProviderClass")];
  v3 = v2;
  if (v2)
  {
    possibleCategoryNames = [v2 possibleCategoryNames];
    v5 = [possibleCategoryNames count];

    if (v5)
    {
      possibleCategoryNames2 = [v3 possibleCategoryNames];
      v7 = [possibleCategoryNames2 objectAtIndexedSubscript:0];

      if ([v7 isEqualToString:@"gym"])
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = [v7 isEqualToString:*MEMORY[0x277D0E890]];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (id)sampleEvent
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [ATXPOICategoryVisitDuetEvent alloc];
  v3 = objc_alloc(MEMORY[0x277CBEB70]);
  v11[0] = @"gym";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [v3 initWithArray:v4];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-20.0];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-10.0];
  v8 = [(ATXPOICategoryVisitDuetEvent *)v2 initWithPossibleCategoryNames:v5 startDate:v6 endDate:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector
{
  v12[2] = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v8 = +[ATXPOICategoryVisitDuetDataProvider sharedInstance];
  v9 = *MEMORY[0x277D0E890];
  v12[0] = @"gym";
  v12[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [v8 subscribeToPOIChangesForCategory:v10 observer:observerCopy enterSelector:selector exitSelector:exitSelector];

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)observer
{
  v3 = +[ATXPOICategoryVisitDuetDataProvider sharedInstance];
  [v3 unsubscribeToPOIChanges];
}

@end