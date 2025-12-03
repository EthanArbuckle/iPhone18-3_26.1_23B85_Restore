@interface ANAnalyticsDailyMessaging
- (ANAnalyticsDailyMessaging)init;
- (BOOL)isDeviceAnalyticsCoordinator;
- (NSDictionary)devicesCountingAnnouncements;
- (void)registerDailyRequest:(id)request;
- (void)sendDailyRequest:(id)request handler:(id)handler;
@end

@implementation ANAnalyticsDailyMessaging

- (ANAnalyticsDailyMessaging)init
{
  v6.receiver = self;
  v6.super_class = ANAnalyticsDailyMessaging;
  v2 = [(ANAnalyticsDailyMessaging *)&v6 init];
  if (v2)
  {
    v3 = +[ANRapportConnection sharedConnection];
    rapportConnection = v2->_rapportConnection;
    v2->_rapportConnection = v3;
  }

  return v2;
}

- (NSDictionary)devicesCountingAnnouncements
{
  rapportConnection = [(ANAnalyticsDailyMessaging *)self rapportConnection];
  devices = [rapportConnection devices];
  activeAccessoryDevicesSupportingAnnounce = [devices activeAccessoryDevicesSupportingAnnounce];

  return activeAccessoryDevicesSupportingAnnounce;
}

- (BOOL)isDeviceAnalyticsCoordinator
{
  devicesCountingAnnouncements = [(ANAnalyticsDailyMessaging *)self devicesCountingAnnouncements];
  rapportConnection = [(ANAnalyticsDailyMessaging *)self rapportConnection];
  localDevice = [rapportConnection localDevice];

  allKeys = [devicesCountingAnnouncements allKeys];
  v7 = [allKeys sortedArrayUsingComparator:&__block_literal_global_25];

  if ([devicesCountingAnnouncements count])
  {
    homeKitIdentifier = [localDevice homeKitIdentifier];
    uUIDString = [homeKitIdentifier UUIDString];
    v10 = [v7 objectAtIndexedSubscript:0];
    uUIDString2 = [v10 UUIDString];
    v12 = [uUIDString compare:uUIDString2] == -1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __57__ANAnalyticsDailyMessaging_isDeviceAnalyticsCoordinator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 UUIDString];
  v6 = [v4 UUIDString];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)registerDailyRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, self);
  rapportConnection = [(ANAnalyticsDailyMessaging *)self rapportConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ANAnalyticsDailyMessaging_registerDailyRequest___block_invoke;
  v7[3] = &unk_278C87078;
  objc_copyWeak(&v9, &location);
  v6 = requestCopy;
  v8 = v6;
  [rapportConnection activateLinkWithOptions:2 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __50__ANAnalyticsDailyMessaging_registerDailyRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained rapportConnection];
  [v2 registerDailyRequest:*(a1 + 32)];
}

- (void)sendDailyRequest:(id)request handler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  rapportConnection = [(ANAnalyticsDailyMessaging *)self rapportConnection];
  [rapportConnection sendDailyRequest:requestCopy handler:handlerCopy];
}

@end