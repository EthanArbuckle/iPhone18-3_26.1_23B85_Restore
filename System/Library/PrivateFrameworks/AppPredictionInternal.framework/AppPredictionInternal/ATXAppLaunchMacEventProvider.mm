@interface ATXAppLaunchMacEventProvider
- (ATXAppLaunchMacEventProvider)init;
- (BOOL)isEventFromProvider:(id)provider;
- (id)aggregationEventsFromEvent:(id)event;
- (id)biomePublisherWithBookmark:(id)bookmark devicePlatform:(int64_t)platform startTime:(double)time;
- (id)dateIntervalFromEvent:(id)event;
- (id)eventsFromPublisher;
- (id)iOSBundleIDForMacOSBundleID:(id)d;
- (id)remoteDevicesForDevicePlatform:(int64_t)platform;
@end

@implementation ATXAppLaunchMacEventProvider

- (ATXAppLaunchMacEventProvider)init
{
  v9.receiver = self;
  v9.super_class = ATXAppLaunchMacEventProvider;
  v2 = [(ATXAppLaunchMacEventProvider *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB58]);
    v4 = +[_ATXAppIconState sharedInstance];
    allInstalledAppsKnownToSpringBoard = [v4 allInstalledAppsKnownToSpringBoard];
    v6 = [v3 initWithArray:allInstalledAppsKnownToSpringBoard];
    iOSInstalledApps = v2->_iOSInstalledApps;
    v2->_iOSInstalledApps = v6;
  }

  return v2;
}

- (id)biomePublisherWithBookmark:(id)bookmark devicePlatform:(int64_t)platform startTime:(double)time
{
  v8 = BiomeLibrary();
  v9 = [v8 App];
  inFocus = [v9 InFocus];

  v11 = [(ATXAppLaunchMacEventProvider *)self remoteDevicesForDevicePlatform:platform];
  if ([v11 count])
  {
    v12 = [inFocus publishersForDevices:v11 withUseCase:*MEMORY[0x277CEBB48] startTime:0 includeLocal:&__block_literal_global_219 pipeline:time];
    merge = [v12 merge];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__ATXAppLaunchMacEventProvider_biomePublisherWithBookmark_devicePlatform_startTime___block_invoke_2;
    v16[3] = &__block_descriptor_34_e48___ATXBiomeAppLaunchWrapper_16__0__BMStoreEvent_8l;
    v17 = platform == 4;
    v18 = platform == 3;
    bpsPublisher = [merge mapWithTransform:v16];
  }

  else
  {
    v12 = objc_opt_new();
    bpsPublisher = [v12 bpsPublisher];
  }

  return bpsPublisher;
}

ATXBiomeAppLaunchWrapper *__84__ATXAppLaunchMacEventProvider_biomePublisherWithBookmark_devicePlatform_startTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ATXBiomeAppLaunchWrapper alloc];
  v5 = [v3 eventBody];

  v6 = [(ATXBiomeAppLaunchWrapper *)v4 initWithAppLaunch:v5 isLocal:0 isMacPortable:*(a1 + 32) isMacDesktop:*(a1 + 33)];

  return v6;
}

- (id)remoteDevicesForDevicePlatform:(int64_t)platform
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v15 = 0;
  v5 = [v4 remoteDevicesWithError:&v15];
  v6 = v15;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__ATXAppLaunchMacEventProvider_remoteDevicesForDevicePlatform___block_invoke;
  v14[3] = &__block_descriptor_40_e18_B16__0__BMDevice_8l;
  v14[4] = platform;
  v7 = [v5 _pas_filteredArrayWithTest:v14];

  v8 = __atxlog_handle_modes();
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXAppLaunchMacEventProvider *)v6 remoteDevicesForDevicePlatform:v9];
    }

    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = [v7 count];
      *buf = 134218240;
      v17 = v11;
      v18 = 2048;
      platformCopy = platform;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_INFO, "ATXAppLaunchMacEventProvider: Got %lu remote devices for BMDevicePlatform: %ld", buf, 0x16u);
    }

    v10 = v7;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)eventsFromPublisher
{
  v3 = objc_opt_new();
  v4 = [(ATXAppLaunchMacEventProvider *)self biomePublisherWithBookmark:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__ATXAppLaunchMacEventProvider_eventsFromPublisher__block_invoke_2;
  v10[3] = &unk_2785988C8;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  v6 = [v4 sinkWithCompletion:&__block_literal_global_31_2 receiveInput:v10];

  v7 = v11;
  v8 = v5;

  return v5;
}

void __51__ATXAppLaunchMacEventProvider_eventsFromPublisher__block_invoke_2(uint64_t a1, void *a2)
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

- (id)aggregationEventsFromEvent:(id)event
{
  v23[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(ATXAppLaunchMacEventProvider *)self isEventFromProvider:eventCopy])
  {
    appLaunchEvent = [eventCopy appLaunchEvent];
    if ([appLaunchEvent starting])
    {
      bundleID = [appLaunchEvent bundleID];
      v7 = [(ATXAppLaunchMacEventProvider *)self iOSBundleIDForMacOSBundleID:bundleID];

      if (v7 && [(NSSet *)self->_iOSInstalledApps containsObject:v7])
      {
        v8 = [ATXSessionTaggingAppEntity genreIdForBundleId:v7];
        v9 = v8;
        v10 = &unk_283A57530;
        if (v8)
        {
          v10 = v8;
        }

        v11 = v10;

        v12 = objc_alloc(MEMORY[0x277CEB390]);
        v23[0] = v11;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
        v14 = [v12 initWithBundleId:v7 itunesGenreIds:v13];

        v15 = [ATXModeEvent alloc];
        absoluteTimestamp = [appLaunchEvent absoluteTimestamp];
        absoluteTimestamp2 = [appLaunchEvent absoluteTimestamp];
        v18 = [(ATXModeEvent *)v15 initWithStartDate:absoluteTimestamp endDate:absoluteTimestamp2 entity:v14];

        v19 = objc_alloc(MEMORY[0x277CBEA60]);
        v20 = [v19 initWithObjects:{v18, 0}];
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)isEventFromProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ![providerCopy isLocal];

  return v4;
}

- (id)dateIntervalFromEvent:(id)event
{
  eventCopy = event;
  if ([(ATXAppLaunchMacEventProvider *)self isEventFromProvider:eventCopy])
  {
    v5 = MEMORY[0x277CCA970];
    v6 = eventCopy;
    v7 = [v5 alloc];
    launchTimestamp = [v6 launchTimestamp];
    launchTimestamp2 = [v6 launchTimestamp];

    v10 = [v7 initWithStartDate:launchTimestamp endDate:launchTimestamp2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)iOSBundleIDForMacOSBundleID:(id)d
{
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  mEMORY[0x277CF9650] = [MEMORY[0x277CF9650] sharedCategories];
  v6 = [mEMORY[0x277CF9650] bundleIDForPlatform:*MEMORY[0x277CF9640] fromBundleID:dCopy platform:*MEMORY[0x277CF9648]];

  objc_autoreleasePoolPop(v4);

  return v6;
}

- (void)remoteDevicesForDevicePlatform:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXAppLaunchMacEventProvider: Biome couldn't fetch remote devices with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end