@interface ATXNowPlayingDuetDataProvider
- (id)convertNowPlayingEventsToAppLaunchEvents:(id)events;
- (id)playbackEventsAfterSecondsOfInactivity:(double)inactivity betweenStartDate:(id)date endDate:(id)endDate;
@end

@implementation ATXNowPlayingDuetDataProvider

- (id)playbackEventsAfterSecondsOfInactivity:(double)inactivity betweenStartDate:(id)date endDate:(id)endDate
{
  v7 = MEMORY[0x277CEBC80];
  endDateCopy = endDate;
  dateCopy = date;
  v10 = objc_alloc_init(v7);
  v11 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __97__ATXNowPlayingDuetDataProvider_playbackEventsAfterSecondsOfInactivity_betweenStartDate_endDate___block_invoke;
  v19[3] = &__block_descriptor_40_e33_B16__0__ATXMediaNowPlayingEvent_8l;
  *&v19[4] = inactivity;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __97__ATXNowPlayingDuetDataProvider_playbackEventsAfterSecondsOfInactivity_betweenStartDate_endDate___block_invoke_2;
  v16[3] = &unk_27859B2F0;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  [v13 enumerateEventsFromStartDate:dateCopy endDate:endDateCopy filterBlock:v19 ascending:1 block:v16];

  v14 = [v12 copy];

  return v14;
}

BOOL __97__ATXNowPlayingDuetDataProvider_playbackEventsAfterSecondsOfInactivity_betweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 eventDuration];
  v5 = v4 >= *(a1 + 32) && [v3 playbackState] != 1;

  return v5;
}

uint64_t __97__ATXNowPlayingDuetDataProvider_playbackEventsAfterSecondsOfInactivity_betweenStartDate_endDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 endTime];
  v6 = objc_alloc(MEMORY[0x277CBEAA8]);
  v7 = [v4 endTime];

  v8 = [v6 initWithTimeInterval:v7 sinceDate:60.0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__ATXNowPlayingDuetDataProvider_playbackEventsAfterSecondsOfInactivity_betweenStartDate_endDate___block_invoke_4;
  v10[3] = &unk_27859B2C8;
  v11 = *(a1 + 40);
  [v3 enumerateEventsFromStartDate:v5 endDate:v8 filterBlock:&__block_literal_global_82 ascending:1 block:v10];

  return 1;
}

BOOL __97__ATXNowPlayingDuetDataProvider_playbackEventsAfterSecondsOfInactivity_betweenStartDate_endDate___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 eventDuration];
  v4 = v3 >= 30.0 && [v2 playbackState] == 1;

  return v4;
}

uint64_t __97__ATXNowPlayingDuetDataProvider_playbackEventsAfterSecondsOfInactivity_betweenStartDate_endDate___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[ATXNowPlayingDuetEvent alloc] initWithATXEvent:v3];

  [v2 addObject:v4];
  return 0;
}

- (id)convertNowPlayingEventsToAppLaunchEvents:(id)events
{
  v25 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = eventsCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [ATXAppLaunchDuetEvent alloc];
        bundleId = [v9 bundleId];
        startDate = [v9 startDate];
        endDate = [v9 endDate];
        v15 = [(ATXAppLaunchDuetEvent *)v11 initWithBundleId:bundleId startDate:startDate endDate:endDate];

        [v4 addObject:v15];
        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end