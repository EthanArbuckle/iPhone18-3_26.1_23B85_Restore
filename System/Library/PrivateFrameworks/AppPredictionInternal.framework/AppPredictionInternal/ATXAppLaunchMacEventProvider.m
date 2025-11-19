@interface ATXAppLaunchMacEventProvider
- (ATXAppLaunchMacEventProvider)init;
- (BOOL)isEventFromProvider:(id)a3;
- (id)aggregationEventsFromEvent:(id)a3;
- (id)biomePublisherWithBookmark:(id)a3 devicePlatform:(int64_t)a4 startTime:(double)a5;
- (id)dateIntervalFromEvent:(id)a3;
- (id)eventsFromPublisher;
- (id)iOSBundleIDForMacOSBundleID:(id)a3;
- (id)remoteDevicesForDevicePlatform:(int64_t)a3;
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
    v5 = [v4 allInstalledAppsKnownToSpringBoard];
    v6 = [v3 initWithArray:v5];
    iOSInstalledApps = v2->_iOSInstalledApps;
    v2->_iOSInstalledApps = v6;
  }

  return v2;
}

- (id)biomePublisherWithBookmark:(id)a3 devicePlatform:(int64_t)a4 startTime:(double)a5
{
  v8 = BiomeLibrary();
  v9 = [v8 App];
  v10 = [v9 InFocus];

  v11 = [(ATXAppLaunchMacEventProvider *)self remoteDevicesForDevicePlatform:a4];
  if ([v11 count])
  {
    v12 = [v10 publishersForDevices:v11 withUseCase:*MEMORY[0x277CEBB48] startTime:0 includeLocal:&__block_literal_global_219 pipeline:a5];
    v13 = [v12 merge];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __84__ATXAppLaunchMacEventProvider_biomePublisherWithBookmark_devicePlatform_startTime___block_invoke_2;
    v16[3] = &__block_descriptor_34_e48___ATXBiomeAppLaunchWrapper_16__0__BMStoreEvent_8l;
    v17 = a4 == 4;
    v18 = a4 == 3;
    v14 = [v13 mapWithTransform:v16];
  }

  else
  {
    v12 = objc_opt_new();
    v14 = [v12 bpsPublisher];
  }

  return v14;
}

ATXBiomeAppLaunchWrapper *__84__ATXAppLaunchMacEventProvider_biomePublisherWithBookmark_devicePlatform_startTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ATXBiomeAppLaunchWrapper alloc];
  v5 = [v3 eventBody];

  v6 = [(ATXBiomeAppLaunchWrapper *)v4 initWithAppLaunch:v5 isLocal:0 isMacPortable:*(a1 + 32) isMacDesktop:*(a1 + 33)];

  return v6;
}

- (id)remoteDevicesForDevicePlatform:(int64_t)a3
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
  v14[4] = a3;
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
      v19 = a3;
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

- (id)aggregationEventsFromEvent:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ATXAppLaunchMacEventProvider *)self isEventFromProvider:v4])
  {
    v5 = [v4 appLaunchEvent];
    if ([v5 starting])
    {
      v6 = [v5 bundleID];
      v7 = [(ATXAppLaunchMacEventProvider *)self iOSBundleIDForMacOSBundleID:v6];

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
        v16 = [v5 absoluteTimestamp];
        v17 = [v5 absoluteTimestamp];
        v18 = [(ATXModeEvent *)v15 initWithStartDate:v16 endDate:v17 entity:v14];

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

- (BOOL)isEventFromProvider:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ![v3 isLocal];

  return v4;
}

- (id)dateIntervalFromEvent:(id)a3
{
  v4 = a3;
  if ([(ATXAppLaunchMacEventProvider *)self isEventFromProvider:v4])
  {
    v5 = MEMORY[0x277CCA970];
    v6 = v4;
    v7 = [v5 alloc];
    v8 = [v6 launchTimestamp];
    v9 = [v6 launchTimestamp];

    v10 = [v7 initWithStartDate:v8 endDate:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)iOSBundleIDForMacOSBundleID:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CF9650] sharedCategories];
  v6 = [v5 bundleIDForPlatform:*MEMORY[0x277CF9640] fromBundleID:v3 platform:*MEMORY[0x277CF9648]];

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