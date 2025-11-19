@interface VSSubscriptionService
- (VSSubscriptionService)init;
@end

@implementation VSSubscriptionService

- (VSSubscriptionService)init
{
  v3 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = VSSubscriptionService;
  v4 = [(VSServiceListener *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v5 addObject:@"com.apple.smoot.subscriptionservice"];
    [v5 addObject:@"com.apple.private.subscriptionservice.internal"];
    [v5 addObject:@"com.apple.developer.video-subscription-registration"];
    [v5 addObject:@"com.apple.private.subscriptionservice.all-sources.read-only"];
    [v5 addObject:@"com.apple.private.subscriptionservice.web-sources.read-write"];
    [(VSServiceListener *)v4 setEntitlementNames:v5];
    v6 = VSSubscriptionServiceInterface();
    [(VSServiceListener *)v4 setExportedInterface:v6];

    v7 = objc_alloc_init(VSSubscriptionRegistry);
    [(VSServiceListener *)v4 setExportedObject:v7];
  }

  v8 = v4;
  objc_autoreleasePoolPop(v3);

  return v8;
}

@end