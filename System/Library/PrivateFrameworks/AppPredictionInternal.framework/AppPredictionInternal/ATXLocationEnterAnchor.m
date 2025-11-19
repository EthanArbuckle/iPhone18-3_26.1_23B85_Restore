@interface ATXLocationEnterAnchor
+ (id)sampleEvent;
+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)a3 enterSelector:(SEL)a4 exitSelector:(SEL)a5;
+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)a3;
@end

@implementation ATXLocationEnterAnchor

+ (void)registerForNotificationsWithoutUsingContextStoreForObserver:(id)a3 enterSelector:(SEL)a4 exitSelector:(SEL)a5
{
  v6 = MEMORY[0x277CCAB98];
  v7 = a3;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:a4 name:*MEMORY[0x277D41CA0] object:0];
}

+ (void)unregisterForNotificationsWithoutUsingContextStoreForObserver:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:*MEMORY[0x277D41CA0] object:0];
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