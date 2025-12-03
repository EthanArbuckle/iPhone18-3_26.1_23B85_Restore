@interface ATXAppLaunchEventProvider
- (BOOL)isEventFromProvider:(id)provider;
- (id)aggregationEventsFromEvent:(id)event;
- (id)biomePublisherWithBookmark:(id)bookmark;
- (id)dateIntervalFromEvent:(id)event;
- (id)eventsFromPublisher;
@end

@implementation ATXAppLaunchEventProvider

- (id)biomePublisherWithBookmark:(id)bookmark
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v5 + -2419200.0];
  v7 = BiomeLibrary();
  v8 = [v7 App];
  inFocus = [v8 InFocus];

  v10 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v6 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v11 = [inFocus publisherWithUseCase:*MEMORY[0x277CEBB48] options:v10];
  v12 = [v11 mapWithTransform:&__block_literal_global_163];
  if (!v12)
  {
    [(ATXAppLaunchEventProvider *)a2 biomePublisherWithBookmark:?];
  }

  return v12;
}

ATXBiomeAppLaunchWrapper *__56__ATXAppLaunchEventProvider_biomePublisherWithBookmark___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ATXBiomeAppLaunchWrapper alloc];
  v4 = [v2 eventBody];

  v5 = [(ATXBiomeAppLaunchWrapper *)v3 initWithAppLaunch:v4 isLocal:1 isMacPortable:0 isMacDesktop:0];

  return v5;
}

- (id)eventsFromPublisher
{
  v3 = objc_opt_new();
  v4 = [(ATXAppLaunchEventProvider *)self biomePublisherWithBookmark:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__ATXAppLaunchEventProvider_eventsFromPublisher__block_invoke_2;
  v10[3] = &unk_2785988C8;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  v6 = [v4 sinkWithCompletion:&__block_literal_global_29_1 receiveInput:v10];

  v7 = v11;
  v8 = v5;

  return v5;
}

void __48__ATXAppLaunchEventProvider_eventsFromPublisher__block_invoke_2(uint64_t a1, void *a2)
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

- (BOOL)isEventFromProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ([providerCopy isLocal] & 1) != 0;

  return v4;
}

- (id)aggregationEventsFromEvent:(id)event
{
  v23[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if ([(ATXAppLaunchEventProvider *)self isEventFromProvider:eventCopy])
  {
    appLaunchEvent = [eventCopy appLaunchEvent];
    if ([appLaunchEvent starting])
    {
      bundleID = [appLaunchEvent bundleID];
      v7 = [ATXSessionTaggingAppEntity genreIdForBundleId:bundleID];
      v8 = v7;
      v9 = &unk_283A56E28;
      if (v7)
      {
        v9 = v7;
      }

      v10 = v9;

      v11 = objc_alloc(MEMORY[0x277CEB390]);
      bundleID2 = [appLaunchEvent bundleID];
      v23[0] = v10;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v14 = [v11 initWithBundleId:bundleID2 itunesGenreIds:v13];

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

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)dateIntervalFromEvent:(id)event
{
  eventCopy = event;
  if ([(ATXAppLaunchEventProvider *)self isEventFromProvider:eventCopy])
  {
    v5 = eventCopy;
    launchTimestamp = [v5 launchTimestamp];

    if (launchTimestamp)
    {
      v7 = objc_alloc(MEMORY[0x277CCA970]);
      launchTimestamp2 = [v5 launchTimestamp];
      launchTimestamp3 = [v5 launchTimestamp];
      launchTimestamp = [v7 initWithStartDate:launchTimestamp2 endDate:launchTimestamp3];
    }
  }

  else
  {
    launchTimestamp = 0;
  }

  return launchTimestamp;
}

- (void)biomePublisherWithBookmark:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAppLaunchEventProvider.m" lineNumber:34 description:@"Publisher for app launches was nil."];
}

@end