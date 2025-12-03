@interface ATXLocationEnterAnchor
+ (id)sampleEvent;
+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector;
+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)observer;
@end

@implementation ATXLocationEnterAnchor

+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)observer enterSelector:(SEL)selector exitSelector:(SEL)exitSelector
{
  v6 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v6 defaultCenter];
  [defaultCenter addObserver:observerCopy selector:selector name:*MEMORY[0x277D41CA0] object:0];
}

+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)observer
{
  v3 = MEMORY[0x277CCAB98];
  observerCopy = observer;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:observerCopy name:*MEMORY[0x277D41CA0] object:0];
}

+ (id)sampleEvent
{
  v2 = [ATXLocationVisitDuetEvent alloc];
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-20.0];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-10.0];
  v6 = [(ATXLocationVisitDuetEvent *)v2 initWithLocationOfInterestIdentifier:v3 startDate:v4 endDate:v5];

  return v6;
}

@end