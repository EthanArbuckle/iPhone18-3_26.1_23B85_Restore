@interface ATXModeEntityCorrelator
- (ATXModeEntityCorrelator)initWithModeEventProvider:(id)provider appLaunchEventProvider:(id)eventProvider macPortableAppEventProvider:(id)appEventProvider macDesktopAppEventProvider:(id)desktopAppEventProvider;
- (ATXModeEntityCorrelator)initWithModeEventProvider:(id)provider entityEventProvider:(id)eventProvider;
- (BOOL)eventOccurredWhileInModeForAggregationEvent:(id)event modeTransitionEvent:(id)transitionEvent;
- (id)entityFeaturesForModeEntityScoring;
- (id)entityFeaturesForWidgetScoring;
- (id)featuresForEntitiesFromCompleteCorrelatorState:(id)state;
- (id)mergedWithLocalPublisher;
- (id)mergedWithRemotePublishers;
- (id)zerosArray;
- (int64_t)daysSinceDate:(id)date today:(id)today;
- (void)populateGlobalOccurencesForAllWidgetsWithWidgetModeEventProvider:(id)provider correlatorState:(id)state;
- (void)trackNewModeTransitionEvent:(id)event correlatorState:(id)state;
- (void)updateCorrelatorState:(id)state forAggregationEvents:(id)events;
- (void)updateDateBasedHistogram:(id)histogram aggregationEvent:(id)event today:(id)today;
- (void)updateInternalStateForGlobalOccurrenceEvent:(id)event correlatorState:(id)state;
- (void)updateInternalStateForLocalOccurrenceEvent:(id)event correlatorState:(id)state;
@end

@implementation ATXModeEntityCorrelator

- (ATXModeEntityCorrelator)initWithModeEventProvider:(id)provider entityEventProvider:(id)eventProvider
{
  providerCopy = provider;
  eventProviderCopy = eventProvider;
  v14.receiver = self;
  v14.super_class = ATXModeEntityCorrelator;
  v9 = [(ATXModeEntityCorrelator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modeEventProvider, provider);
    objc_storeStrong(&v10->_entityEventProvider, eventProvider);
    mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
    informationStore = v10->_informationStore;
    v10->_informationStore = mEMORY[0x277CEB5C8];
  }

  return v10;
}

- (ATXModeEntityCorrelator)initWithModeEventProvider:(id)provider appLaunchEventProvider:(id)eventProvider macPortableAppEventProvider:(id)appEventProvider macDesktopAppEventProvider:(id)desktopAppEventProvider
{
  providerCopy = provider;
  eventProviderCopy = eventProvider;
  appEventProviderCopy = appEventProvider;
  desktopAppEventProviderCopy = desktopAppEventProvider;
  v20.receiver = self;
  v20.super_class = ATXModeEntityCorrelator;
  v15 = [(ATXModeEntityCorrelator *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_modeEventProvider, provider);
    objc_storeStrong(&v16->_localAppLaunchEventProvider, eventProvider);
    objc_storeStrong(&v16->_macPortableAppLaunchEventProvider, appEventProvider);
    objc_storeStrong(&v16->_macDesktopAppLaunchEventProvider, desktopAppEventProvider);
    mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
    informationStore = v16->_informationStore;
    v16->_informationStore = mEMORY[0x277CEB5C8];
  }

  return v16;
}

- (id)entityFeaturesForModeEntityScoring
{
  if (self->_modeEventProvider)
  {
    if (self->_localAppLaunchEventProvider && self->_macDesktopAppLaunchEventProvider && self->_macPortableAppLaunchEventProvider)
    {
      mergedWithRemotePublishers = [(ATXModeEntityCorrelator *)self mergedWithRemotePublishers];
    }

    else
    {
      mergedWithRemotePublishers = [(ATXModeEntityCorrelator *)self mergedWithLocalPublisher];
    }

    v4 = mergedWithRemotePublishers;
    v5 = objc_opt_new();
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __61__ATXModeEntityCorrelator_entityFeaturesForModeEntityScoring__block_invoke_2;
    v13 = &unk_2785988C8;
    selfCopy = self;
    v15 = v5;
    v6 = v5;
    v7 = [v4 sinkWithCompletion:&__block_literal_global_230 receiveInput:&v10];
    selfCopy = [(ATXModeEntityCorrelator *)self featuresForEntitiesFromCompleteCorrelatorState:v6, v10, v11, v12, v13, selfCopy];
  }

  else
  {
    selfCopy = objc_opt_new();
  }

  return selfCopy;
}

void __61__ATXModeEntityCorrelator_entityFeaturesForModeEntityScoring__block_invoke_2(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 16) && (v5 = [*(v4 + 16) isEventFromProvider:v3], v4 = *(a1 + 32), v5))
  {
    v6 = [*(v4 + 16) aggregationEventsFromEvent:v3];
    v7 = [v6 count];
    v4 = *(a1 + 32);
    if (v7)
    {
      [v4 updateCorrelatorState:*(a1 + 40) forAggregationEvents:v6];
      v4 = *(a1 + 32);
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(v4 + 24);
  if (v8 && [v8 isEventFromProvider:v3])
  {
    v9 = [*(*(a1 + 32) + 24) aggregationEventsFromEvent:v3];

    if ([v9 count])
    {
      v61 = v3;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v6 = v9;
      v10 = [v6 countByEnumeratingWithState:&v72 objects:v78 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v73;
        do
        {
          v13 = 0;
          do
          {
            if (*v73 != v12)
            {
              objc_enumerationMutation(v6);
            }

            v14 = *(*(&v72 + 1) + 8 * v13);
            v15 = objc_autoreleasePoolPush();
            [*(a1 + 40) setSeenAtLeastOneEntityEvent:1];
            v16 = *(a1 + 32);
            v17 = [*(a1 + 40) localDeviceGlobalAppLaunchesHistogramPerEntity];
            v18 = [*(a1 + 40) today];
            [v16 updateDateBasedHistogram:v17 aggregationEvent:v14 today:v18];

            v19 = [*(a1 + 40) mostRecentModeEvent];

            if (v19)
            {
              v20 = *(a1 + 32);
              v21 = [*(a1 + 40) mostRecentModeEvent];
              LODWORD(v20) = [v20 eventOccurredWhileInModeForAggregationEvent:v14 modeTransitionEvent:v21];

              if (v20)
              {
                v22 = *(a1 + 32);
                v23 = [*(a1 + 40) localDeviceModeAppLaunchesHistogramPerEntity];
                v24 = [*(a1 + 40) today];
                [v22 updateDateBasedHistogram:v23 aggregationEvent:v14 today:v24];
              }
            }

            objc_autoreleasePoolPop(v15);
            ++v13;
          }

          while (v11 != v13);
          v11 = [v6 countByEnumeratingWithState:&v72 objects:v78 count:16];
        }

        while (v11);
      }

      [*(a1 + 32) updateCorrelatorState:*(a1 + 40) forAggregationEvents:v6];
      v3 = v61;
    }

    else
    {
      v6 = v9;
    }
  }

  v25 = *(*(a1 + 32) + 32);
  if (v25 && [v25 isEventFromProvider:v3])
  {
    v26 = [*(*(a1 + 32) + 32) aggregationEventsFromEvent:v3];

    if ([v26 count])
    {
      v62 = v3;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v6 = v26;
      v27 = [v6 countByEnumeratingWithState:&v68 objects:v77 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v69;
        do
        {
          v30 = 0;
          do
          {
            if (*v69 != v29)
            {
              objc_enumerationMutation(v6);
            }

            v31 = *(*(&v68 + 1) + 8 * v30);
            v32 = objc_autoreleasePoolPush();
            [*(a1 + 40) setSeenAtLeastOneEntityEvent:1];
            v33 = *(a1 + 32);
            v34 = [*(a1 + 40) macPortableGlobalAppLaunchesHistogramPerEntity];
            v35 = [*(a1 + 40) today];
            [v33 updateDateBasedHistogram:v34 aggregationEvent:v31 today:v35];

            v36 = [*(a1 + 40) mostRecentModeEvent];

            if (v36)
            {
              v37 = *(a1 + 32);
              v38 = [*(a1 + 40) mostRecentModeEvent];
              LODWORD(v37) = [v37 eventOccurredWhileInModeForAggregationEvent:v31 modeTransitionEvent:v38];

              if (v37)
              {
                v39 = *(a1 + 32);
                v40 = [*(a1 + 40) macPortableModeAppLaunchesHistogramPerEntity];
                v41 = [*(a1 + 40) today];
                [v39 updateDateBasedHistogram:v40 aggregationEvent:v31 today:v41];
              }
            }

            objc_autoreleasePoolPop(v32);
            ++v30;
          }

          while (v28 != v30);
          v28 = [v6 countByEnumeratingWithState:&v68 objects:v77 count:16];
        }

        while (v28);
      }

      [*(a1 + 32) updateCorrelatorState:*(a1 + 40) forAggregationEvents:v6];
      v3 = v62;
    }

    else
    {
      v6 = v26;
    }
  }

  v42 = *(*(a1 + 32) + 40);
  if (v42 && [v42 isEventFromProvider:v3])
  {
    v43 = [*(*(a1 + 32) + 40) aggregationEventsFromEvent:v3];

    if ([v43 count])
    {
      v63 = v3;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v6 = v43;
      v44 = [v6 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v65;
        do
        {
          v47 = 0;
          do
          {
            if (*v65 != v46)
            {
              objc_enumerationMutation(v6);
            }

            v48 = *(*(&v64 + 1) + 8 * v47);
            v49 = objc_autoreleasePoolPush();
            [*(a1 + 40) setSeenAtLeastOneEntityEvent:1];
            v50 = *(a1 + 32);
            v51 = [*(a1 + 40) macDesktopGlobalAppLaunchesHistogramPerEntity];
            v52 = [*(a1 + 40) today];
            [v50 updateDateBasedHistogram:v51 aggregationEvent:v48 today:v52];

            v53 = [*(a1 + 40) mostRecentModeEvent];

            if (v53)
            {
              v54 = *(a1 + 32);
              v55 = [*(a1 + 40) mostRecentModeEvent];
              LODWORD(v54) = [v54 eventOccurredWhileInModeForAggregationEvent:v48 modeTransitionEvent:v55];

              if (v54)
              {
                v56 = *(a1 + 32);
                v57 = [*(a1 + 40) macDesktopModeAppLaunchesHistogramPerEntity];
                v58 = [*(a1 + 40) today];
                [v56 updateDateBasedHistogram:v57 aggregationEvent:v48 today:v58];
              }
            }

            objc_autoreleasePoolPop(v49);
            ++v47;
          }

          while (v45 != v47);
          v45 = [v6 countByEnumeratingWithState:&v64 objects:v76 count:16];
        }

        while (v45);
      }

      [*(a1 + 32) updateCorrelatorState:*(a1 + 40) forAggregationEvents:v6];
      v3 = v63;
    }

    else
    {
      v6 = v43;
    }
  }

  if ([*(*(a1 + 32) + 8) isEventFromProvider:v3])
  {
    v59 = [*(*(a1 + 32) + 8) aggregationEventsFromEvent:v3];

    [*(a1 + 32) trackNewModeTransitionEvent:v59 correlatorState:*(a1 + 40)];
    v6 = v59;
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)updateCorrelatorState:(id)state forAggregationEvents:(id)events
{
  v24 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  eventsCopy = events;
  v8 = [eventsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        [stateCopy setSeenAtLeastOneEntityEvent:{1, v19}];
        entity = [v12 entity];

        if (entity)
        {
          [(ATXModeEntityCorrelator *)self updateInternalStateForGlobalOccurrenceEvent:v12 correlatorState:stateCopy];
          mostRecentModeEvent = [stateCopy mostRecentModeEvent];

          if (mostRecentModeEvent)
          {
            mostRecentModeEvent2 = [stateCopy mostRecentModeEvent];
            v17 = [(ATXModeEntityCorrelator *)self eventOccurredWhileInModeForAggregationEvent:v12 modeTransitionEvent:mostRecentModeEvent2];

            if (v17)
            {
              [(ATXModeEntityCorrelator *)self updateInternalStateForLocalOccurrenceEvent:v12 correlatorState:stateCopy];
            }
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [eventsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)entityFeaturesForWidgetScoring
{
  if (self->_modeEventProvider)
  {
    v3 = objc_opt_new();
    v4 = [[ATXWidgetModeEventProvider alloc] initWithInformationStore:self->_informationStore];
    [(ATXModeEntityCorrelator *)self populateGlobalOccurencesForAllWidgetsWithWidgetModeEventProvider:v4 correlatorState:v3];
    v5 = [(ATXModeEntityEventProviderProtocol *)self->_modeEventProvider biomePublisherWithBookmark:0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__ATXModeEntityCorrelator_entityFeaturesForWidgetScoring__block_invoke_2;
    v11[3] = &unk_278597F80;
    v11[4] = self;
    v12 = v4;
    v13 = v3;
    v6 = v3;
    v7 = v4;
    v8 = [v5 sinkWithCompletion:&__block_literal_global_22_1 receiveInput:v11];

    v9 = [(ATXModeEntityCorrelator *)self featuresForEntitiesFromCompleteCorrelatorState:v6];
  }

  else
  {
    v9 = objc_opt_new();
  }

  return v9;
}

void __57__ATXModeEntityCorrelator_entityFeaturesForWidgetScoring__block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v18 = [*(*(a1 + 32) + 8) aggregationEventsFromEvent:?];
  v3 = [v18 firstObject];
  v4 = *(a1 + 40);
  v5 = [v3 startDate];
  v6 = [v3 endDate];
  v7 = [v4 widgetModeEventsBetweenStartDate:v5 endDate:v6];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        [*(a1 + 48) setSeenAtLeastOneEntityEvent:1];
        v15 = [v13 entity];

        if (v15)
        {
          [*(a1 + 32) updateInternalStateForLocalOccurrenceEvent:v13 correlatorState:*(a1 + 48)];
        }

        else
        {
          v16 = __atxlog_handle_modes();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            __57__ATXModeEntityCorrelator_entityFeaturesForWidgetScoring__block_invoke_2_cold_1(&buf, v21, v16);
          }
        }

        objc_autoreleasePoolPop(v14);
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) trackNewModeTransitionEvent:v18 correlatorState:*(a1 + 48)];
  v17 = *MEMORY[0x277D85DE8];
}

- (void)populateGlobalOccurencesForAllWidgetsWithWidgetModeEventProvider:(id)provider correlatorState:(id)state
{
  v28 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  stateCopy = state;
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [v7 dateByAddingTimeInterval:-2419200.0];

  v22 = providerCopy;
  v9 = [providerCopy widgetEngagementCountSinceStartDate:v8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        integerValue = [v15 integerValue];

        if (integerValue >= 1)
        {
          v17 = 0;
          do
          {
            globalEntityOccurrences = [stateCopy globalEntityOccurrences];
            [globalEntityOccurrences addObject:v14];

            ++v17;
            v19 = [v9 objectForKeyedSubscript:v14];
            integerValue2 = [v19 integerValue];
          }

          while (v17 < integerValue2);
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (BOOL)eventOccurredWhileInModeForAggregationEvent:(id)event modeTransitionEvent:(id)transitionEvent
{
  eventCopy = event;
  transitionEventCopy = transitionEvent;
  startDate = [eventCopy startDate];
  [startDate timeIntervalSince1970];
  v9 = v8;
  startDate2 = [transitionEventCopy startDate];
  [startDate2 timeIntervalSince1970];
  if (v9 <= v11)
  {
    v17 = 0;
  }

  else
  {
    startDate3 = [eventCopy startDate];
    [startDate3 timeIntervalSince1970];
    v14 = v13;
    endDate = [transitionEventCopy endDate];
    [endDate timeIntervalSince1970];
    v17 = v14 < v16;
  }

  return v17;
}

- (void)trackNewModeTransitionEvent:(id)event correlatorState:(id)state
{
  stateCopy = state;
  firstObject = [event firstObject];
  [stateCopy setMostRecentModeEvent:firstObject];

  v6 = objc_opt_new();
  [stateCopy setEntitiesSeenForMostRecentModeEvent:v6];

  [stateCopy setModeOccurrences:{objc_msgSend(stateCopy, "modeOccurrences") + 1}];
  if (([stateCopy seenAtLeastOneEntityEvent] & 1) == 0)
  {
    [stateCopy setModeOccurrences:1];
  }
}

- (id)featuresForEntitiesFromCompleteCorrelatorState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_new();
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0x3E45798EE2308C3ALL;
  modeLocalEntityOccurrences = [stateCopy modeLocalEntityOccurrences];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __74__ATXModeEntityCorrelator_featuresForEntitiesFromCompleteCorrelatorState___block_invoke;
  v26[3] = &unk_2785A1090;
  v28 = v29;
  v7 = stateCopy;
  v27 = v7;
  [modeLocalEntityOccurrences enumerateObjectsUsingBlock:v26];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0x3E45798EE2308C3ALL;
  globalEntityOccurrences = [v7 globalEntityOccurrences];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__ATXModeEntityCorrelator_featuresForEntitiesFromCompleteCorrelatorState___block_invoke_2;
  v22[3] = &unk_2785A1090;
  v24 = v25;
  v9 = v7;
  v23 = v9;
  [globalEntityOccurrences enumerateObjectsUsingBlock:v22];

  globalEntityOccurrences2 = [v9 globalEntityOccurrences];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__ATXModeEntityCorrelator_featuresForEntitiesFromCompleteCorrelatorState___block_invoke_3;
  v16[3] = &unk_2785A10B8;
  v11 = v9;
  v17 = v11;
  selfCopy = self;
  v20 = v29;
  v21 = v25;
  v12 = v5;
  v19 = v12;
  [globalEntityOccurrences2 enumerateObjectsUsingBlock:v16];

  v13 = v19;
  v14 = v12;

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v29, 8);

  return v14;
}

void __74__ATXModeEntityCorrelator_featuresForEntitiesFromCompleteCorrelatorState___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 modeLocalEntityOccurrences];
  v5 = [v6 countForObject:v4];

  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v5;
}

void __74__ATXModeEntityCorrelator_featuresForEntitiesFromCompleteCorrelatorState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 globalEntityOccurrences];
  v5 = [v6 countForObject:v4];

  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v5;
}

void __74__ATXModeEntityCorrelator_featuresForEntitiesFromCompleteCorrelatorState___block_invoke_3(uint64_t a1, void *a2)
{
  v61 = a2;
  v3 = [*(a1 + 32) globalEntityOccurrences];
  v4 = [v3 countForObject:v61];

  v5 = [*(a1 + 32) modeLocalEntityOccurrences];
  v6 = [v5 countForObject:v61];

  v7 = [*(a1 + 32) uniqueModeOccurrences];
  v8 = [v7 countForObject:v61];

  v9 = objc_opt_new();
  v10 = [*(*(a1 + 40) + 8) description];
  [v9 setModeDescription:v10];

  v11 = [v61 identifier];
  [v9 setEntityDescription:v11];

  v12 = [*(a1 + 32) modeOccurrences];
  v13 = 0.0;
  v14 = 0.0;
  if (v12)
  {
    v14 = v8 / [*(a1 + 32) modeOccurrences];
  }

  [v9 setPosteriorProbability:v14];
  if (v4)
  {
    v13 = v6 / v4;
  }

  [v9 setClassConditionalProbability:v13];
  [v9 setUniqueOccurrencesInMode:v8];
  [v9 setModeOccurrences:{objc_msgSend(*(a1 + 32), "modeOccurrences")}];
  [v9 setGlobalOccurrences:v4];
  [v9 setLocalOccurrences:v6];
  [v9 setLocalOccurrencesAcrossAllEntities:*(*(*(a1 + 56) + 8) + 24)];
  v15 = *(*(*(a1 + 56) + 8) + 24);
  v16 = 0.0;
  v17 = 0.0;
  if (v15 != 0.0)
  {
    v17 = v6 / v15;
  }

  [v9 setModePopularity:v17];
  v18 = *(*(*(a1 + 64) + 8) + 24);
  if (v18 != 0.0)
  {
    v16 = v4 / v18;
  }

  [v9 setGlobalPopularity:v16];
  [v9 globalPopularity];
  v19 = 0.0;
  if (v20 > 0.0)
  {
    [v9 modePopularity];
    v22 = v21;
    [v9 globalPopularity];
    v19 = v22 / v23 + -1.0;
  }

  [v9 setRatioModeAndGlobalPopularity:{fmin(v19, 5.0)}];
  v24 = [*(a1 + 32) entityToEntityFeaturesDict];
  v25 = [v24 objectForKeyedSubscript:v61];
  [v9 setEntitySpecificFeatures:v25];

  v26 = [*(a1 + 32) totalModeLaunchesHistogramPerEntity];
  v27 = [v26 objectForKeyedSubscript:v61];
  v28 = v27;
  v29 = MEMORY[0x277CBEBF8];
  if (v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  [v9 setTotalModeLaunchesHistogramForLast28Days:v30];

  v31 = [*(a1 + 32) totalGlobalLaunchesHistogramPerEntity];
  v32 = [v31 objectForKeyedSubscript:v61];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = v29;
  }

  [v9 setTotalGlobalLaunchesHistogramForLast28Days:v34];

  v35 = [*(a1 + 32) macPortableGlobalAppLaunchesHistogramPerEntity];
  v36 = [v35 objectForKeyedSubscript:v61];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = v29;
  }

  [v9 setMacPortableGlobalAppLaunchesHistogramForLast28Days:v38];

  v39 = [*(a1 + 32) macPortableModeAppLaunchesHistogramPerEntity];
  v40 = [v39 objectForKeyedSubscript:v61];
  v41 = v40;
  if (v40)
  {
    v42 = v40;
  }

  else
  {
    v42 = v29;
  }

  [v9 setMacPortableModeAppLaunchesHistogramForLast28Days:v42];

  v43 = [*(a1 + 32) macDesktopGlobalAppLaunchesHistogramPerEntity];
  v44 = [v43 objectForKeyedSubscript:v61];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v29;
  }

  [v9 setMacDesktopGlobalAppLaunchesHistogramForLast28Days:v46];

  v47 = [*(a1 + 32) macDesktopModeAppLaunchesHistogramPerEntity];
  v48 = [v47 objectForKeyedSubscript:v61];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v29;
  }

  [v9 setMacDesktopModeAppLaunchesHistogramForLast28Days:v50];

  v51 = [*(a1 + 32) localDeviceGlobalAppLaunchesHistogramPerEntity];
  v52 = [v51 objectForKeyedSubscript:v61];
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = v29;
  }

  [v9 setLocalDeviceGlobalAppLaunchesHistogramForLast28Days:v54];

  v55 = [*(a1 + 32) localDeviceModeAppLaunchesHistogramPerEntity];
  v56 = [v55 objectForKeyedSubscript:v61];
  v57 = v56;
  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = v29;
  }

  [v9 setLocalDeviceModeAppLaunchesHistogramForLast28Days:v58];

  [v9 setEntity:v61];
  v59 = *(a1 + 48);
  v60 = [v61 identifier];
  [v59 setObject:v9 forKey:v60];
}

- (id)mergedWithRemotePublishers
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = [(ATXModeEntityEventProviderProtocol *)self->_modeEventProvider biomePublisherWithBookmark:0];
  v4 = [(ATXModeEntityEventProviderProtocol *)self->_localAppLaunchEventProvider biomePublisherWithBookmark:0];
  v12[0] = v4;
  v5 = [(ATXModeEntityEventProviderProtocol *)self->_macPortableAppLaunchEventProvider biomePublisherWithBookmark:0];
  v12[1] = v5;
  v6 = [(ATXModeEntityEventProviderProtocol *)self->_macDesktopAppLaunchEventProvider biomePublisherWithBookmark:0];
  v12[2] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__ATXModeEntityCorrelator_mergedWithRemotePublishers__block_invoke;
  v11[3] = &unk_278597CB8;
  v11[4] = self;
  v8 = [v3 orderedMergeWithOthers:v7 comparator:v11];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __53__ATXModeEntityCorrelator_mergedWithRemotePublishers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 24) dateIntervalFromEvent:v5];
  if (v7 || ([*(*(a1 + 32) + 32) dateIntervalFromEvent:v5], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    v21 = [*(*(a1 + 32) + 40) dateIntervalFromEvent:v5];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [*(*(a1 + 32) + 8) dateIntervalFromEvent:v5];
    }

    v8 = v23;

    if (!v8)
    {
      v27 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __53__ATXModeEntityCorrelator_mergedWithRemotePublishers__block_invoke_cold_1();
      }

      v8 = 0;
    }
  }

  v9 = [v8 startDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [*(*(a1 + 32) + 24) dateIntervalFromEvent:v6];
  if (v12 || ([*(*(a1 + 32) + 32) dateIntervalFromEvent:v6], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
  }

  else
  {
    v24 = [*(*(a1 + 32) + 40) dateIntervalFromEvent:v6];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = [*(*(a1 + 32) + 8) dateIntervalFromEvent:v6];
    }

    v13 = v26;

    if (!v13)
    {
      v28 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __53__ATXModeEntityCorrelator_mergedWithRemotePublishers__block_invoke_cold_1();
      }

      v13 = 0;
    }
  }

  v14 = [v13 startDate];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  v19 = [v17 compare:v18];

  return v19;
}

- (id)mergedWithLocalPublisher
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [(ATXModeEntityEventProviderProtocol *)self->_modeEventProvider biomePublisherWithBookmark:0];
  v4 = [(ATXModeEntityEventProviderProtocol *)self->_entityEventProvider biomePublisherWithBookmark:0];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__ATXModeEntityCorrelator_mergedWithLocalPublisher__block_invoke;
  v9[3] = &unk_278597CB8;
  v9[4] = self;
  v6 = [v3 orderedMergeWithOthers:v5 comparator:v9];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __51__ATXModeEntityCorrelator_mergedWithLocalPublisher__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) dateIntervalFromEvent:v5];
  if (v7 || ([*(*(a1 + 32) + 8) dateIntervalFromEvent:v5], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
  }

  else
  {
    v21 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __53__ATXModeEntityCorrelator_mergedWithRemotePublishers__block_invoke_cold_1();
    }

    v8 = 0;
  }

  v9 = [v8 startDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [*(*(a1 + 32) + 16) dateIntervalFromEvent:v6];
  if (v12 || ([*(*(a1 + 32) + 8) dateIntervalFromEvent:v6], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
  }

  else
  {
    v22 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __53__ATXModeEntityCorrelator_mergedWithRemotePublishers__block_invoke_cold_1();
    }

    v13 = 0;
  }

  v14 = [v13 startDate];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  v19 = [v17 compare:v18];

  return v19;
}

- (void)updateInternalStateForGlobalOccurrenceEvent:(id)event correlatorState:(id)state
{
  eventCopy = event;
  stateCopy = state;
  globalEntityOccurrences = [stateCopy globalEntityOccurrences];
  entity = [eventCopy entity];
  [globalEntityOccurrences addObject:entity];

  totalGlobalLaunchesHistogramPerEntity = [stateCopy totalGlobalLaunchesHistogramPerEntity];
  today = [stateCopy today];
  [(ATXModeEntityCorrelator *)self updateDateBasedHistogram:totalGlobalLaunchesHistogramPerEntity aggregationEvent:eventCopy today:today];

  localAppLaunchEventProvider = self->_localAppLaunchEventProvider;
  if (!localAppLaunchEventProvider)
  {
    localAppLaunchEventProvider = self->_entityEventProvider;
  }

  entityToEntityFeaturesDict = [stateCopy entityToEntityFeaturesDict];

  [(ATXModeEntityEventProviderProtocol *)localAppLaunchEventProvider updateEntitySpecificFeaturesDict:entityToEntityFeaturesDict aggregationEvent:eventCopy isLocalToMode:0];
}

- (void)updateInternalStateForLocalOccurrenceEvent:(id)event correlatorState:(id)state
{
  eventCopy = event;
  stateCopy = state;
  modeLocalEntityOccurrences = [stateCopy modeLocalEntityOccurrences];
  entity = [eventCopy entity];
  [modeLocalEntityOccurrences addObject:entity];

  totalModeLaunchesHistogramPerEntity = [stateCopy totalModeLaunchesHistogramPerEntity];
  today = [stateCopy today];
  [(ATXModeEntityCorrelator *)self updateDateBasedHistogram:totalModeLaunchesHistogramPerEntity aggregationEvent:eventCopy today:today];

  localAppLaunchEventProvider = self->_localAppLaunchEventProvider;
  if (!localAppLaunchEventProvider)
  {
    localAppLaunchEventProvider = self->_entityEventProvider;
  }

  entityToEntityFeaturesDict = [stateCopy entityToEntityFeaturesDict];
  [(ATXModeEntityEventProviderProtocol *)localAppLaunchEventProvider updateEntitySpecificFeaturesDict:entityToEntityFeaturesDict aggregationEvent:eventCopy isLocalToMode:1];

  entitiesSeenForMostRecentModeEvent = [stateCopy entitiesSeenForMostRecentModeEvent];
  entity2 = [eventCopy entity];
  v15 = [entitiesSeenForMostRecentModeEvent containsObject:entity2];

  if ((v15 & 1) == 0)
  {
    uniqueModeOccurrences = [stateCopy uniqueModeOccurrences];
    entity3 = [eventCopy entity];
    [uniqueModeOccurrences addObject:entity3];
  }

  entitiesSeenForMostRecentModeEvent2 = [stateCopy entitiesSeenForMostRecentModeEvent];
  entity4 = [eventCopy entity];
  [entitiesSeenForMostRecentModeEvent2 addObject:entity4];
}

- (void)updateDateBasedHistogram:(id)histogram aggregationEvent:(id)event today:(id)today
{
  histogramCopy = histogram;
  eventCopy = event;
  todayCopy = today;
  entity = [eventCopy entity];
  v11 = [histogramCopy objectForKeyedSubscript:entity];

  if (!v11)
  {
    zerosArray = [(ATXModeEntityCorrelator *)self zerosArray];
    entity2 = [eventCopy entity];
    [histogramCopy setObject:zerosArray forKeyedSubscript:entity2];
  }

  startDate = [eventCopy startDate];
  v15 = [(ATXModeEntityCorrelator *)self daysSinceDate:startDate today:todayCopy];

  if (v15 <= 0x1B)
  {
    entity3 = [eventCopy entity];
    v17 = [histogramCopy objectForKeyedSubscript:entity3];
    v18 = [v17 objectAtIndexedSubscript:v15];

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v18, "integerValue") + 1}];
    entity4 = [eventCopy entity];
    v21 = [histogramCopy objectForKeyedSubscript:entity4];
    [v21 setObject:v19 atIndexedSubscript:v15];
  }
}

- (id)zerosArray
{
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:28];
  for (i = 0; i != 28; ++i)
  {
    [v2 setObject:&unk_283A575A8 atIndexedSubscript:i];
  }

  return v2;
}

- (int64_t)daysSinceDate:(id)date today:(id)today
{
  v5 = MEMORY[0x277CBEA80];
  todayCopy = today;
  dateCopy = date;
  currentCalendar = [v5 currentCalendar];
  v9 = [currentCalendar components:16 fromDate:dateCopy toDate:todayCopy options:0];

  v10 = [v9 day];
  return v10;
}

void __57__ATXModeEntityCorrelator_entityFeaturesForWidgetScoring__block_invoke_2_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Encountered widget engagement mode event in ModeEntityCorrelator without a valid entity.", buf, 2u);
}

void __53__ATXModeEntityCorrelator_mergedWithRemotePublishers__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "During ordered merge, encountered unknown event: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end