@interface ATXTimelineRelevanceMetricHarvester
+ (double)roundNumber:(id)number toSignificantFigures:(unint64_t)figures;
+ (int)PBClientModelFromString:(id)string;
+ (int)PBTimelineEntrySuggestionMappingReasonFrom:(int64_t)from;
+ (int)PBTimelineRelevanceAbuseControlOutcomeTypeFrom:(int64_t)from;
+ (int)PBTimelineRelevanceEngagementFromATXStackRotationEngagementStatus:(unint64_t)status;
+ (int)PBTimelineRelevanceRotationEventTypeFromReason:(id)reason;
+ (int)PBWidgetFamilyFromCHSWidgetFamily:(int64_t)family;
- (ATXTimelineRelevanceMetricHarvester)init;
- (ATXTimelineRelevanceMetricHarvester)initWithInformationStore:(id)store;
- (BOOL)_shouldLogHomeScreenEvent:(id)event widgetBundleId:(id)id appBundleId:(id)bundleId widgetKind:(id)kind widgetFamily:(int64_t)family;
- (BOOL)_shouldProcessEvent:(id)event;
- (BOOL)addTimelineRelevanceScoresToTimelineRelevanceContainer:(id)container forWidget:(id)widget withDistributionsLogged:(unint64_t)logged updatingDictionary:(id)dictionary anonymizeTimestampsRelativeTo:(double)to;
- (id)fetchStackConfigSummaryForWidgetBundleId:(id)id appBundleId:(id)bundleId widgetKind:(id)kind widgetSize:(int64_t)size withPBTimelineRelevanceContainer:(id)container anonymizeTimestampsRelativeTo:(double)to;
- (id)timeOfLatestMetricsSubmission;
- (id)widgetsForDataCollection:(id)collection;
- (void)_addAbuseControlOutcomesForSuggestionId:(id)id withPBTimelineRelevanceSuggestion:(id)suggestion anonymizeTimestampsRelativeTo:(double)to;
- (void)_addRotationHistoryForWidgetBundleId:(id)id appBundleId:(id)bundleId widgetKind:(id)kind widgetSize:(int64_t)size withPBTimelineRelevanceContainer:(id)container anonymizeTimestampsRelativeTo:(double)to;
- (void)_updateTimelineEntriesDictionaryWithEntries:(id)entries withKey:(id)key withScoreEntry:(id)entry;
- (void)addFeatureVectorToTimelineRelevanceContainer:(id)container;
- (void)addRotationsToContainer:(id)container withStackRotationSesssion:(id)sesssion anonymizeTimestampsRelativeTo:(double)to;
- (void)addStackConfigSummaryToTimelineRelevanceContainer:(id)container withStackConfigSummary:(id)summary;
- (void)addTimelineRelevanceSuggestionsToContainer:(id)container withTimelineEntries:(id)entries anonymizeTimestampsRelativeTo:(double)to;
- (void)harvestWithActivity:(id)activity;
@end

@implementation ATXTimelineRelevanceMetricHarvester

- (ATXTimelineRelevanceMetricHarvester)init
{
  v3 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "Initializing ATXTimelineRelevanceMetricHarvester.", buf, 2u);
  }

  v16.receiver = self;
  v16.super_class = ATXTimelineRelevanceMetricHarvester;
  v4 = [(ATXTimelineRelevanceMetricHarvester *)&v16 init];
  if (v4)
  {
    mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
    informationStore = v4->_informationStore;
    v4->_informationStore = mEMORY[0x277CEB5C8];

    timeOfLatestMetricsSubmission = [(ATXTimelineRelevanceMetricHarvester *)v4 timeOfLatestMetricsSubmission];
    v8 = timeOfLatestMetricsSubmission;
    if (timeOfLatestMetricsSubmission)
    {
      v9 = timeOfLatestMetricsSubmission;
      loggingStartDate = v4->_loggingStartDate;
      v4->_loggingStartDate = v9;
    }

    else
    {
      loggingStartDate = [MEMORY[0x277CBEAA8] now];
      v11 = [loggingStartDate dateByAddingTimeInterval:-604800.0];
      v12 = v4->_loggingStartDate;
      v4->_loggingStartDate = v11;
    }

    v13 = objc_opt_new();
    abuseControlConfig = v4->_abuseControlConfig;
    v4->_abuseControlConfig = v13;
  }

  return v4;
}

- (ATXTimelineRelevanceMetricHarvester)initWithInformationStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = ATXTimelineRelevanceMetricHarvester;
  v6 = [(ATXTimelineRelevanceMetricHarvester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_informationStore, store);
  }

  return v7;
}

- (id)widgetsForDataCollection:(id)collection
{
  v33 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = collectionCopy;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        extensionIdentity = [v11 extensionIdentity];
        extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
        v14 = [(ATXTimelineRelevanceMetricHarvester *)self isFirstParty:extensionBundleIdentifier];

        if (v14)
        {
          v15 = v5;
        }

        else
        {
          v15 = v6;
        }

        [v15 addObject:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v16 = objc_opt_new();
  v17 = [v5 _pas_shuffledArrayUsingRng:v16];

  v18 = [v6 count] >> 1;
  v19 = [v5 count];
  if (v18 >= v19)
  {
    v18 = v19;
  }

  v20 = [v17 subarrayWithRange:{0, v18}];
  [v6 addObjectsFromArray:v20];
  v21 = objc_opt_new();
  v22 = [v6 _pas_shuffledArrayUsingRng:v21];

  v23 = [v17 subarrayWithRange:{v18, objc_msgSend(v17, "count") - v18}];
  v24 = [v22 arrayByAddingObjectsFromArray:v23];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)harvestWithActivity:(id)activity
{
  v69 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = __atxlog_handle_timeline();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    loggingStartDate = self->_loggingStartDate;
    *buf = 138412290;
    v68 = loggingStartDate;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_INFO, "ATXTimelineRelevanceMetricHarvester: fetching Timeline Relevance donations since last metric submission date: %@", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [(ATXInformationStore *)self->_informationStore fetchDistinctWidgetsIgnoringIntentSinceDate:self->_loggingStartDate];
  v9 = [(ATXTimelineRelevanceMetricHarvester *)self widgetsForDataCollection:v8];
  didDefer = [activityCopy didDefer];
  v11 = __atxlog_handle_timeline();
  v12 = v11;
  if (didDefer)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "ATXTimelineRelevanceMetricHarvester: Deferring harvesting activity", buf, 2u);
    }
  }

  else
  {
    v54 = v7;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = [v8 count];
      *buf = 134217984;
      v68 = v13;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "ATXTimelineRelevanceMetricHarvester: Logging metrics for %ld widget(s)", buf, 0xCu);
    }

    v53 = v8;

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v52 = v9;
    v12 = v9;
    v59 = [v12 countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v59)
    {
      v14 = 0;
      v57 = *v63;
      v55 = activityCopy;
      v56 = v12;
      selfCopy = self;
      while (2)
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v63 != v57)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v62 + 1) + 8 * i);
          v61 = objc_autoreleasePoolPush();
          v17 = objc_opt_new();
          extensionIdentity = [v16 extensionIdentity];
          extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
          [v17 setWidgetBundleId:extensionBundleIdentifier];

          kind = [v16 kind];
          [v17 setWidgetKind:kind];

          extensionIdentity2 = [v16 extensionIdentity];
          containerBundleIdentifier = [extensionIdentity2 containerBundleIdentifier];
          v23 = containerBundleIdentifier;
          if (containerBundleIdentifier)
          {
            v24 = containerBundleIdentifier;
          }

          else
          {
            v24 = &stru_2839A6058;
          }

          [v17 setContainerBundleIdentifier:{v24, v52}];

          [v17 setWidgetFamily:{objc_msgSend(objc_opt_class(), "PBWidgetFamilyFromCHSWidgetFamily:", objc_msgSend(v16, "family"))}];
          [v17 setTimelineDonationNilCount:0];
          [v17 setAtLeastOnePositiveTimelineRelevanceScore:0];
          timelineRelevanceABGroup = [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig timelineRelevanceABGroup];
          [v17 setAbGroup:timelineRelevanceABGroup];

          v26 = [MEMORY[0x277CBEAA8] now];
          v27 = [v26 dateByAddingTimeInterval:-604800.0];
          [v27 timeIntervalSinceReferenceDate];
          v29 = v28;

          v30 = objc_opt_new();
          if ([(ATXTimelineRelevanceMetricHarvester *)self addTimelineRelevanceScoresToTimelineRelevanceContainer:v17 forWidget:v16 withDistributionsLogged:v14 updatingDictionary:v30 anonymizeTimestampsRelativeTo:v29])
          {
            v60 = v14;
            extensionIdentity3 = [v16 extensionIdentity];
            extensionBundleIdentifier2 = [extensionIdentity3 extensionBundleIdentifier];
            extensionIdentity4 = [v16 extensionIdentity];
            [extensionIdentity4 containerBundleIdentifier];
            v35 = v34 = self;
            kind2 = [v16 kind];
            v37 = -[ATXTimelineRelevanceMetricHarvester fetchStackConfigSummaryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:](v34, "fetchStackConfigSummaryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:", extensionBundleIdentifier2, v35, kind2, [v16 family], v17, v29);

            lastObject = [v37 lastObject];
            if ([lastObject hasSmartStacksWithWidget])
            {
              hasNonSmartStacksWithWidget = 1;
            }

            else
            {
              lastObject2 = [v37 lastObject];
              hasNonSmartStacksWithWidget = [lastObject2 hasNonSmartStacksWithWidget];
            }

            self = selfCopy;
            v12 = v56;
            v14 = v60;
            if (hasNonSmartStacksWithWidget && v60 <= 4)
            {
              [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
              [v17 setTimestamp:(v41 - v29)];
              [(ATXTimelineRelevanceMetricHarvester *)selfCopy addTimelineRelevanceSuggestionsToContainer:v17 withTimelineEntries:v30 anonymizeTimestampsRelativeTo:v29];
              extensionIdentity5 = [v16 extensionIdentity];
              extensionBundleIdentifier3 = [extensionIdentity5 extensionBundleIdentifier];
              extensionIdentity6 = [v16 extensionIdentity];
              containerBundleIdentifier2 = [extensionIdentity6 containerBundleIdentifier];
              kind3 = [v16 kind];
              -[ATXTimelineRelevanceMetricHarvester _addRotationHistoryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:](selfCopy, "_addRotationHistoryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:", extensionBundleIdentifier3, containerBundleIdentifier2, kind3, [v16 family], v17, v29);

              v12 = v56;
              self = selfCopy;

              [(ATXTimelineRelevanceMetricHarvester *)selfCopy addStackConfigSummaryToTimelineRelevanceContainer:v17 withStackConfigSummary:v37];
              [(ATXTimelineRelevanceMetricHarvester *)selfCopy addFeatureVectorToTimelineRelevanceContainer:v17];
              v14 = v60 + 1;
            }

            activityCopy = v55;
          }

          else
          {
            v37 = 0;
          }

          mEMORY[0x277D41DA8] = [MEMORY[0x277D41DA8] sharedInstance];
          [mEMORY[0x277D41DA8] logMessage:v17];

          if ([activityCopy didDefer])
          {
            v50 = __atxlog_handle_timeline();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2263AA000, v50, OS_LOG_TYPE_INFO, "ATXTimelineRelevanceMetricHarvester: Asked to defer activity", buf, 2u);
            }

            v7 = v54;
            [(ATXTimelineRelevanceMetricHarvester *)self _updateMetricsSubmissionDateTo:v54];

            objc_autoreleasePoolPop(v61);
            goto LABEL_33;
          }

          objc_autoreleasePoolPop(v61);
        }

        v59 = [v12 countByEnumeratingWithState:&v62 objects:v66 count:16];
        if (v59)
        {
          continue;
        }

        break;
      }
    }

    v7 = v54;
    [(ATXTimelineRelevanceMetricHarvester *)self _updateMetricsSubmissionDateTo:v54];
    [(ATXInformationStore *)self->_informationStore clearOldAbuseControlOutcomeData];
    [(ATXInformationStore *)self->_informationStore deleteExpiredProactiveStackRotations];
    informationStore = self->_informationStore;
    startDateOfDismissHistoryConsidered = [MEMORY[0x277CEB9C0] startDateOfDismissHistoryConsidered];
    [(ATXInformationStore *)informationStore clearWidgetRemovalHistoryOlderThan:startDateOfDismissHistoryConsidered];

    v12 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "ATXTimelineRelevanceMetricHarvester: Finished logging Timeline Relevance metrics.", buf, 2u);
    }

LABEL_33:
    v9 = v52;
    v8 = v53;
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (BOOL)addTimelineRelevanceScoresToTimelineRelevanceContainer:(id)container forWidget:(id)widget withDistributionsLogged:(unint64_t)logged updatingDictionary:(id)dictionary anonymizeTimestampsRelativeTo:(double)to
{
  v49 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  widgetCopy = widget;
  selfCopy = self;
  dictionaryCopy = dictionary;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v39 = widgetCopy;
  obj = [(ATXInformationStore *)self->_informationStore fetchTimelineEntriesForWidget:widgetCopy sinceDate:self->_loggingStartDate];
  v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v42 = 0;
    v16 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        timelineEntry = [v18 timelineEntry];
        relevance = [timelineEntry relevance];

        if (relevance)
        {
          v22 = objc_opt_new();
          [v22 setSuggestionMappingReason:{+[ATXTimelineRelevanceMetricHarvester PBTimelineEntrySuggestionMappingReasonFrom:](ATXTimelineRelevanceMetricHarvester, "PBTimelineEntrySuggestionMappingReasonFrom:", objc_msgSend(v18, "suggestionMappingReason"))}];
          timelineEntry2 = [v18 timelineEntry];
          relevance2 = [timelineEntry2 relevance];
          [relevance2 score];
          [v22 setRelevanceScore:?];

          if (([containerCopy atLeastOnePositiveTimelineRelevanceScore] & 1) == 0)
          {
            timelineEntry3 = [v18 timelineEntry];
            relevance3 = [timelineEntry3 relevance];
            [relevance3 score];
            v28 = v27;

            if (v28 > 0.0)
            {
              [containerCopy setAtLeastOnePositiveTimelineRelevanceScore:1];
            }
          }

          if (logged <= 4)
          {
            timelineEntry4 = [v18 timelineEntry];
            date = [timelineEntry4 date];
            [date timeIntervalSinceReferenceDate];
            [v22 setTimestamp:(v31 - to)];

            timelineEntry5 = [v18 timelineEntry];
            relevance4 = [timelineEntry5 relevance];
            [relevance4 duration];
            [v22 setDuration:v34];

            suggestionId = [v18 suggestionId];

            if (suggestionId)
            {
              suggestionId2 = [v18 suggestionId];
              [(ATXTimelineRelevanceMetricHarvester *)selfCopy _updateTimelineEntriesDictionaryWithEntries:dictionaryCopy withKey:suggestionId2 withScoreEntry:v22];
            }

            v42 = 1;
          }
        }

        else
        {
          [containerCopy setTimelineDonationNilCount:{objc_msgSend(containerCopy, "timelineDonationNilCount") + 1}];
        }

        objc_autoreleasePoolPop(v19);
      }

      v15 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v15);
  }

  else
  {
    v42 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v42 & 1;
}

- (void)addStackConfigSummaryToTimelineRelevanceContainer:(id)container withStackConfigSummary:(id)summary
{
  v17 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  summaryCopy = summary;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [summaryCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(summaryCopy);
        }

        [containerCopy addStackConfigSummary:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [summaryCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addTimelineRelevanceSuggestionsToContainer:(id)container withTimelineEntries:(id)entries anonymizeTimestampsRelativeTo:(double)to
{
  v34 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  entriesCopy = entries;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [entriesCopy allKeys];
  v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = objc_opt_new();
        [(ATXTimelineRelevanceMetricHarvester *)self _addAbuseControlOutcomesForSuggestionId:v12 withPBTimelineRelevanceSuggestion:v14 anonymizeTimestampsRelativeTo:to];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = [entriesCopy objectForKeyedSubscript:v12];
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            v19 = 0;
            do
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v14 addTimelineRelevanceScoreEntry:*(*(&v24 + 1) + 8 * v19++)];
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v17);
        }

        [containerCopy addTimelineRelevanceSuggestion:v14];
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_addAbuseControlOutcomesForSuggestionId:(id)id withPBTimelineRelevanceSuggestion:(id)suggestion anonymizeTimestampsRelativeTo:(double)to
{
  v26 = *MEMORY[0x277D85DE8];
  idCopy = id;
  suggestionCopy = suggestion;
  [(ATXInformationStore *)self->_informationStore fetchAbuseControlOutcomesForSuggestion:idCopy sinceDate:self->_loggingStartDate];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v24 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v22 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v21 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      v17 = objc_opt_new();
      [v15 timestamp];
      [v17 setTimestamp:(v18 - to)];
      [v17 setOutcomeType:{+[ATXTimelineRelevanceMetricHarvester PBTimelineRelevanceAbuseControlOutcomeTypeFrom:](ATXTimelineRelevanceMetricHarvester, "PBTimelineRelevanceAbuseControlOutcomeTypeFrom:", objc_msgSend(v15, "abuseControlOutcome"))}];
      [suggestionCopy addAbuseControlOutcome:v17];
      abuseControlOutcomesCount = [suggestionCopy abuseControlOutcomesCount];

      objc_autoreleasePoolPop(v16);
      if (abuseControlOutcomesCount > 0x1F3)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)addFeatureVectorToTimelineRelevanceContainer:(id)container
{
  v27 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v4 = objc_opt_new();
  widgetBundleId = [containerCopy widgetBundleId];
  widgetKind = [containerCopy widgetKind];
  v21 = containerCopy;
  containerBundleIdentifier = [containerCopy containerBundleIdentifier];
  v20 = v4;
  v8 = [v4 featurizeTimelineWithWidgetBundleId:widgetBundleId widgetKind:widgetKind appBundleIdentifier:containerBundleIdentifier];

  v9 = objc_opt_new();
  dictionaryRepresentation = [v8 dictionaryRepresentation];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [dictionaryRepresentation countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(dictionaryRepresentation);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        NSSelectorFromString(v15);
        if (objc_opt_respondsToSelector())
        {
          v16 = MEMORY[0x277CCABB0];
          v17 = [dictionaryRepresentation objectForKeyedSubscript:v15];
          [ATXTimelineRelevanceMetricHarvester roundNumber:v17 toSignificantFigures:2];
          v18 = [v16 numberWithDouble:?];

          [v9 setValue:v18 forKey:v15];
        }
      }

      v12 = [dictionaryRepresentation countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  [v21 setFeatureVector:v9];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateTimelineEntriesDictionaryWithEntries:(id)entries withKey:(id)key withScoreEntry:(id)entry
{
  entriesCopy = entries;
  keyCopy = key;
  entryCopy = entry;
  v9 = [entriesCopy objectForKeyedSubscript:keyCopy];

  if (!v9)
  {
    v10 = objc_opt_new();
    [entriesCopy setObject:v10 forKeyedSubscript:keyCopy];
  }

  v11 = [entriesCopy objectForKeyedSubscript:keyCopy];
  [v11 addObject:entryCopy];
}

uint64_t __84__ATXTimelineRelevanceMetricHarvester__timeBasedMergePublisher_withOtherPublishers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 timestamp];
  v7 = v6;
  [v5 timestamp];
  if (v7 >= v8)
  {
    [v4 timestamp];
    v11 = v10;
    [v5 timestamp];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (void)_addRotationHistoryForWidgetBundleId:(id)id appBundleId:(id)bundleId widgetKind:(id)kind widgetSize:(int64_t)size withPBTimelineRelevanceContainer:(id)container anonymizeTimestampsRelativeTo:(double)to
{
  v67[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  bundleIdCopy = bundleId;
  kindCopy = kind;
  containerCopy = container;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  objc_initWeak(&location, self);
  v16 = objc_opt_new();
  [(NSDate *)self->_loggingStartDate timeIntervalSinceReferenceDate];
  v43 = [v16 genericEventPublisherFromStartTime:?];

  v17 = objc_opt_new();
  [(NSDate *)self->_loggingStartDate timeIntervalSinceReferenceDate];
  v42 = [v17 publisherFromStartTime:?];

  v67[0] = v42;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
  v41 = [(ATXTimelineRelevanceMetricHarvester *)self _timeBasedMergePublisher:v43 withOtherPublishers:v18];

  v19 = objc_opt_new();
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __173__ATXTimelineRelevanceMetricHarvester__addRotationHistoryForWidgetBundleId_appBundleId_widgetKind_widgetSize_withPBTimelineRelevanceContainer_anonymizeTimestampsRelativeTo___block_invoke;
  v60[3] = &unk_27859A798;
  v60[4] = self;
  v20 = [v41 filterWithIsIncluded:v60];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __173__ATXTimelineRelevanceMetricHarvester__addRotationHistoryForWidgetBundleId_appBundleId_widgetKind_widgetSize_withPBTimelineRelevanceContainer_anonymizeTimestampsRelativeTo___block_invoke_143;
  v55[3] = &unk_2785A0A30;
  v44 = idCopy;
  v56 = v44;
  v21 = bundleIdCopy;
  v57 = v21;
  v22 = kindCopy;
  v58 = v22;
  sizeCopy = size;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __173__ATXTimelineRelevanceMetricHarvester__addRotationHistoryForWidgetBundleId_appBundleId_widgetKind_widgetSize_withPBTimelineRelevanceContainer_anonymizeTimestampsRelativeTo___block_invoke_145;
  v51[3] = &unk_2785A0A58;
  objc_copyWeak(&v54, &location);
  v53 = &v62;
  v40 = v19;
  v52 = v40;
  v23 = [v20 sinkWithCompletion:v55 receiveInput:v51];

  v24 = v63[3];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  if (v24 >= v25)
  {
    removeAndReturnCompletedSessions = __atxlog_handle_home_screen();
    if (os_log_type_enabled(removeAndReturnCompletedSessions, OS_LOG_TYPE_ERROR))
    {
      [ATXTimelineRelevanceMetricHarvester _addRotationHistoryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:];
    }
  }

  else
  {
    v26 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [ATXTimelineRelevanceMetricHarvester _addRotationHistoryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:];
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    removeAndReturnCompletedSessions = [v40 removeAndReturnCompletedSessions];
    v28 = [removeAndReturnCompletedSessions countByEnumeratingWithState:&v47 objects:v66 count:16];
    if (v28)
    {
      v29 = *v48;
LABEL_6:
      v30 = 0;
      while (1)
      {
        if (*v48 != v29)
        {
          objc_enumerationMutation(removeAndReturnCompletedSessions);
        }

        v31 = *(*(&v47 + 1) + 8 * v30);
        sessionEndDate = [v31 sessionEndDate];
        [sessionEndDate timeIntervalSinceReferenceDate];
        v34 = v33;
        [(NSDate *)self->_loggingStartDate timeIntervalSinceReferenceDate];
        v36 = v34 < v35;

        if (v36)
        {
          break;
        }

        startingStackChangeEvent = [v31 startingStackChangeEvent];
        v38 = [(ATXTimelineRelevanceMetricHarvester *)self _shouldLogHomeScreenEvent:startingStackChangeEvent widgetBundleId:v44 appBundleId:v21 widgetKind:v22 widgetFamily:size];

        if (!v38)
        {
          break;
        }

        [(ATXTimelineRelevanceMetricHarvester *)self addRotationsToContainer:containerCopy withStackRotationSesssion:v31 anonymizeTimestampsRelativeTo:to];
        if ([containerCopy rotationsCount] > 0x1F3)
        {
          break;
        }

        if (v28 == ++v30)
        {
          v28 = [removeAndReturnCompletedSessions countByEnumeratingWithState:&v47 objects:v66 count:16];
          if (v28)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v62, 8);

  v39 = *MEMORY[0x277D85DE8];
}

uint64_t __173__ATXTimelineRelevanceMetricHarvester__addRotationHistoryForWidgetBundleId_appBundleId_widgetKind_widgetSize_withPBTimelineRelevanceContainer_anonymizeTimestampsRelativeTo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v5 = [v3 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = *(a1 + 32);
      v8 = [v3 eventBody];
      v9 = [v7 _shouldProcessEvent:v8];
    }

    else
    {
      v11 = [v3 eventBody];
      v12 = [v11 conformsToProtocol:&unk_283B11C28];

      v9 = v12 ^ 1u;
    }
  }

  else
  {
    v10 = __atxlog_handle_timeline();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __173__ATXTimelineRelevanceMetricHarvester__addRotationHistoryForWidgetBundleId_appBundleId_widgetKind_widgetSize_withPBTimelineRelevanceContainer_anonymizeTimestampsRelativeTo___block_invoke_cold_1();
    }

    v9 = 0;
  }

  return v9;
}

void __173__ATXTimelineRelevanceMetricHarvester__addRotationHistoryForWidgetBundleId_appBundleId_widgetKind_widgetSize_withPBTimelineRelevanceContainer_anonymizeTimestampsRelativeTo___block_invoke_143(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_timeline();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __173__ATXTimelineRelevanceMetricHarvester__addRotationHistoryForWidgetBundleId_appBundleId_widgetKind_widgetSize_withPBTimelineRelevanceContainer_anonymizeTimestampsRelativeTo___block_invoke_143_cold_1(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = a1[4];
    v8 = a1[5];
    v10 = a1[6];
    v9 = a1[7];
    v11 = NSStringFromWidgetFamily();
    v13 = 138413058;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "ATXTimelineRelevanceMetricHarvester: Successfully fetched rotation events from Biome for widgetBundleId: %@, appBundleId: %@, widgetKind: %@, widgetFamily: %@", &v13, 0x2Au);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __173__ATXTimelineRelevanceMetricHarvester__addRotationHistoryForWidgetBundleId_appBundleId_widgetKind_widgetSize_withPBTimelineRelevanceContainer_anonymizeTimestampsRelativeTo___block_invoke_145(uint64_t a1, void *a2)
{
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = *(*(*(a1 + 40) + 8) + 24);
    [v14 timestamp];
    if (v4 >= v5)
    {
      v5 = v4;
    }

    *(*(*(a1 + 40) + 8) + 24) = v5;
    v6 = [v14 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = *(a1 + 32);
      v9 = [v14 eventBody];
      [v8 updateWithUIEvent:v9];
    }

    v10 = [v14 eventBody];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();

    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = [v14 eventBody];
      [v12 updateWithBlendingUICacheUpdate:v13];
    }
  }
}

- (void)addRotationsToContainer:(id)container withStackRotationSesssion:(id)sesssion anonymizeTimestampsRelativeTo:(double)to
{
  containerCopy = container;
  sesssionCopy = sesssion;
  v8 = objc_opt_new();
  sessionStartDate = [sesssionCopy sessionStartDate];
  [sessionStartDate timeIntervalSinceReferenceDate];
  [v8 setTimestamp:(v10 - to)];

  sessionEndDate = [sesssionCopy sessionEndDate];
  [sessionEndDate timeIntervalSinceReferenceDate];
  v13 = v12;
  sessionStartDate2 = [sesssionCopy sessionStartDate];
  [sessionStartDate2 timeIntervalSinceReferenceDate];
  [v8 setDuration:(v13 - v15)];

  [v8 setEngagement:{objc_msgSend(objc_opt_class(), "PBTimelineRelevanceEngagementFromATXStackRotationEngagementStatus:", objc_msgSend(sesssionCopy, "engagementStatus"))}];
  v16 = objc_opt_class();
  startingStackChangeEvent = [sesssionCopy startingStackChangeEvent];
  reason = [startingStackChangeEvent reason];
  [v8 setRotationEventType:{objc_msgSend(v16, "PBTimelineRelevanceRotationEventTypeFromReason:", reason)}];

  systemSuggestSuggestionLayout = [sesssionCopy systemSuggestSuggestionLayout];

  if (systemSuggestSuggestionLayout)
  {
    systemSuggestSuggestionLayout2 = [sesssionCopy systemSuggestSuggestionLayout];
    [v8 setIsMediumOrHighConfidence:{objc_msgSend(systemSuggestSuggestionLayout2, "isLowConfidenceStackRotationForStaleStack") ^ 1}];

    systemSuggestSuggestionLayout3 = [sesssionCopy systemSuggestSuggestionLayout];
    allSuggestionsInLayout = [systemSuggestSuggestionLayout3 allSuggestionsInLayout];
    firstObject = [allSuggestionsInLayout firstObject];

    if (firstObject)
    {
      clientModelSpecification = [firstObject clientModelSpecification];

      if (clientModelSpecification)
      {
        v25 = objc_opt_class();
        clientModelSpecification2 = [firstObject clientModelSpecification];
        clientModelId = [clientModelSpecification2 clientModelId];
        [v8 setClientModelId:{objc_msgSend(v25, "PBClientModelFromString:", clientModelId)}];
      }
    }
  }

  [containerCopy addRotation:v8];
}

- (BOOL)_shouldLogHomeScreenEvent:(id)event widgetBundleId:(id)id appBundleId:(id)bundleId widgetKind:(id)kind widgetFamily:(int64_t)family
{
  eventCopy = event;
  idCopy = id;
  bundleIdCopy = bundleId;
  kindCopy = kind;
  if (!eventCopy)
  {
    goto LABEL_11;
  }

  widgetBundleId = [eventCopy widgetBundleId];
  if (![widgetBundleId isEqualToString:idCopy])
  {
    v19 = 0;
LABEL_16:

    goto LABEL_17;
  }

  appBundleId = [eventCopy appBundleId];
  if (![appBundleId isEqualToString:bundleIdCopy])
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  widgetKind = [eventCopy widgetKind];
  if (([widgetKind isEqualToString:kindCopy] & 1) == 0)
  {

    goto LABEL_14;
  }

  [eventCopy widgetSize];
  v18 = CHSWidgetFamilyFromATXStackLayoutSize();

  if (v18 == family)
  {
    appBundleId = [eventCopy eventTypeString];
    if (([appBundleId isEqualToString:@"Unknown"] & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"HomeScreenPageShown") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"HomeScreenDisappeared") & 1) == 0)
    {
      if ([appBundleId isEqualToString:@"StackChanged"])
      {
        v19 = 1;
        goto LABEL_10;
      }

      if (([appBundleId isEqualToString:@"WidgetTapped"] & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"WidgetLongLook") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"WidgetUserFeedback") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"UserStackConfigChanged") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"DeviceLocked") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"DeviceUnlocked") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"PinnedWidgetAdded") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"PinnedWidgetDeleted") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"SpecialPageAppeared") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"SpecialPageDisappeared") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"StackShown") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"StackDisappeared") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"StackCreated") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"StackDeleted") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"WidgetAddedToStack") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"WidgetRemovedFromStack") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"StackVisibilityChanged") & 1) == 0 && (objc_msgSend(appBundleId, "isEqualToString:", @"AppAdded") & 1) == 0)
      {
        [appBundleId isEqualToString:@"AppRemoved"];
      }
    }

    v19 = 0;
LABEL_10:
    widgetBundleId = appBundleId;
LABEL_15:

    goto LABEL_16;
  }

LABEL_11:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)fetchStackConfigSummaryForWidgetBundleId:(id)id appBundleId:(id)bundleId widgetKind:(id)kind widgetSize:(int64_t)size withPBTimelineRelevanceContainer:(id)container anonymizeTimestampsRelativeTo:(double)to
{
  v34 = *MEMORY[0x277D85DE8];
  idCopy = id;
  bundleIdCopy = bundleId;
  kindCopy = kind;
  v16 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = bundleIdCopy;
  v17 = [(ATXInformationStore *)self->_informationStore fetchStackConfigStatisticsForWidgetBundleId:idCopy widgetKind:kindCopy containerBundleIdentifier:bundleIdCopy widgetFamily:size];
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        v23 = objc_opt_new();
        timestamp = [v22 timestamp];
        [timestamp timeIntervalSinceReferenceDate];
        [v23 setTimestamp:(v25 - to)];

        if ([v22 countOfSmartStacksWithWidget] >= 1)
        {
          [v23 setSmartStacksWithWidget:{objc_msgSend(v22, "countOfSmartStacksWithWidget")}];
        }

        if ([v22 countOfNonSmartStacksWithWidget] >= 1)
        {
          [v23 setNonSmartStacksWithWidget:{objc_msgSend(v22, "countOfNonSmartStacksWithWidget")}];
        }

        if ([v22 countOfStandaloneWidgets] >= 1)
        {
          [v23 setStandaloneWidgets:{objc_msgSend(v22, "countOfStandaloneWidgets")}];
        }

        if ([v22 countOfWidgetsWithUnknownStackKind] >= 1)
        {
          [v23 setWidgetsWithUnknownStackKind:{objc_msgSend(v22, "countOfWidgetsWithUnknownStackKind")}];
        }

        [v16 addObject:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)_shouldProcessEvent:(id)event
{
  homeScreenEvent = [event homeScreenEvent];
  date = [homeScreenEvent date];
  [date timeIntervalSinceReferenceDate];
  v7 = v6;
  [(NSDate *)self->_loggingStartDate timeIntervalSinceReferenceDate];
  LOBYTE(self) = v7 > v8;

  return self;
}

+ (double)roundNumber:(id)number toSignificantFigures:(unint64_t)figures
{
  numberCopy = number;
  v6 = 0.0;
  if (([numberCopy isEqualToNumber:&unk_283A574A0] & 1) == 0)
  {
    if (figures)
    {
      [numberCopy doubleValue];
      v8 = log10(v7);
      v9 = __exp10(figures - ceil(v8));
      [numberCopy doubleValue];
      v6 = round(v10 * v9) / v9;
    }

    else
    {
      v11 = __atxlog_handle_timeline();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[ATXTimelineRelevanceMetricHarvester roundNumber:toSignificantFigures:];
      }
    }
  }

  return v6;
}

+ (int)PBClientModelFromString:(id)string
{
  v3 = MEMORY[0x277D42070];
  stringCopy = string;
  v5 = [v3 clientModelIdFromClientModelType:19];
  v6 = [stringCopy isEqualToString:v5];

  return v6 ^ 1;
}

+ (int)PBTimelineRelevanceEngagementFromATXStackRotationEngagementStatus:(unint64_t)status
{
  if (status > 4)
  {
    return 1;
  }

  else
  {
    return dword_226872980[status];
  }
}

+ (int)PBWidgetFamilyFromCHSWidgetFamily:(int64_t)family
{
  if ((family - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_226872994[family - 1];
  }
}

+ (int)PBTimelineEntrySuggestionMappingReasonFrom:(int64_t)from
{
  if (from > 6)
  {
    return 0;
  }

  else
  {
    return dword_2268729A8[from];
  }
}

+ (int)PBTimelineRelevanceRotationEventTypeFromReason:(id)reason
{
  reasonCopy = reason;
  v4 = 1;
  v5 = NSStringForATXHomeScreenStackChangeReason();
  v6 = [reasonCopy isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = NSStringForATXHomeScreenStackChangeReason();
    v8 = [reasonCopy isEqualToString:v7];

    if (v8)
    {
      v4 = 0;
    }

    else
    {
      v9 = NSStringForATXHomeScreenStackChangeReason();
      v10 = [reasonCopy isEqualToString:v9];

      if (v10)
      {
        v4 = 2;
      }

      else
      {
        v11 = NSStringForATXHomeScreenStackChangeReason();
        v12 = [reasonCopy isEqualToString:v11];

        if (v12)
        {
          v4 = 3;
        }

        else
        {
          v13 = NSStringForATXHomeScreenStackChangeReason();
          v14 = [reasonCopy isEqualToString:v13];

          if (v14)
          {
            v4 = 4;
          }

          else
          {
            v15 = NSStringForATXHomeScreenStackChangeReason();
            v16 = [reasonCopy isEqualToString:v15];

            if (v16)
            {
              v4 = 5;
            }

            else
            {
              v17 = NSStringForATXHomeScreenStackChangeReason();
              v18 = [reasonCopy isEqualToString:v17];

              if (v18)
              {
                v4 = 6;
              }

              else
              {
                v19 = NSStringForATXHomeScreenStackChangeReason();
                v20 = [reasonCopy isEqualToString:v19];

                if (v20)
                {
                  v4 = 7;
                }

                else
                {
                  v4 = 8;
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

+ (int)PBTimelineRelevanceAbuseControlOutcomeTypeFrom:(int64_t)from
{
  if (from > 0x17)
  {
    return 1;
  }

  else
  {
    return dword_2268729C4[from];
  }
}

- (id)timeOfLatestMetricsSubmission
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD08]];
  defaults = self->_defaults;
  self->_defaults = v4;

  v6 = self->_defaults;

  return [(NSUserDefaults *)v6 objectForKey:@"timeOfLatestMetricsSubmissionForTimelineRelevance"];
}

void __173__ATXTimelineRelevanceMetricHarvester__addRotationHistoryForWidgetBundleId_appBundleId_widgetKind_widgetSize_withPBTimelineRelevanceContainer_anonymizeTimestampsRelativeTo___block_invoke_143_cold_1(void *a1, void *a2, NSObject *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = NSStringFromWidgetFamily();
  v10 = [a2 error];
  v12 = 138413314;
  v13 = v5;
  v14 = 2112;
  v15 = v6;
  v16 = 2112;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  v20 = 2112;
  v21 = v10;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "ATXTimelineRelevanceMetricHarvester: Error encountered while fetching rotation events from Biome for widgetBundleId: %@, appBundleId: %@, widgetKind: %@, widgetFamily:%@: %@", &v12, 0x34u);

  v11 = *MEMORY[0x277D85DE8];
}

@end