@interface ATXTimelineRelevanceMetricHarvester
+ (double)roundNumber:(id)a3 toSignificantFigures:(unint64_t)a4;
+ (int)PBClientModelFromString:(id)a3;
+ (int)PBTimelineEntrySuggestionMappingReasonFrom:(int64_t)a3;
+ (int)PBTimelineRelevanceAbuseControlOutcomeTypeFrom:(int64_t)a3;
+ (int)PBTimelineRelevanceEngagementFromATXStackRotationEngagementStatus:(unint64_t)a3;
+ (int)PBTimelineRelevanceRotationEventTypeFromReason:(id)a3;
+ (int)PBWidgetFamilyFromCHSWidgetFamily:(int64_t)a3;
- (ATXTimelineRelevanceMetricHarvester)init;
- (ATXTimelineRelevanceMetricHarvester)initWithInformationStore:(id)a3;
- (BOOL)_shouldLogHomeScreenEvent:(id)a3 widgetBundleId:(id)a4 appBundleId:(id)a5 widgetKind:(id)a6 widgetFamily:(int64_t)a7;
- (BOOL)_shouldProcessEvent:(id)a3;
- (BOOL)addTimelineRelevanceScoresToTimelineRelevanceContainer:(id)a3 forWidget:(id)a4 withDistributionsLogged:(unint64_t)a5 updatingDictionary:(id)a6 anonymizeTimestampsRelativeTo:(double)a7;
- (id)fetchStackConfigSummaryForWidgetBundleId:(id)a3 appBundleId:(id)a4 widgetKind:(id)a5 widgetSize:(int64_t)a6 withPBTimelineRelevanceContainer:(id)a7 anonymizeTimestampsRelativeTo:(double)a8;
- (id)timeOfLatestMetricsSubmission;
- (id)widgetsForDataCollection:(id)a3;
- (void)_addAbuseControlOutcomesForSuggestionId:(id)a3 withPBTimelineRelevanceSuggestion:(id)a4 anonymizeTimestampsRelativeTo:(double)a5;
- (void)_addRotationHistoryForWidgetBundleId:(id)a3 appBundleId:(id)a4 widgetKind:(id)a5 widgetSize:(int64_t)a6 withPBTimelineRelevanceContainer:(id)a7 anonymizeTimestampsRelativeTo:(double)a8;
- (void)_updateTimelineEntriesDictionaryWithEntries:(id)a3 withKey:(id)a4 withScoreEntry:(id)a5;
- (void)addFeatureVectorToTimelineRelevanceContainer:(id)a3;
- (void)addRotationsToContainer:(id)a3 withStackRotationSesssion:(id)a4 anonymizeTimestampsRelativeTo:(double)a5;
- (void)addStackConfigSummaryToTimelineRelevanceContainer:(id)a3 withStackConfigSummary:(id)a4;
- (void)addTimelineRelevanceSuggestionsToContainer:(id)a3 withTimelineEntries:(id)a4 anonymizeTimestampsRelativeTo:(double)a5;
- (void)harvestWithActivity:(id)a3;
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
    v5 = [MEMORY[0x277CEB5C8] sharedInstance];
    informationStore = v4->_informationStore;
    v4->_informationStore = v5;

    v7 = [(ATXTimelineRelevanceMetricHarvester *)v4 timeOfLatestMetricsSubmission];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
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

- (ATXTimelineRelevanceMetricHarvester)initWithInformationStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXTimelineRelevanceMetricHarvester;
  v6 = [(ATXTimelineRelevanceMetricHarvester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_informationStore, a3);
  }

  return v7;
}

- (id)widgetsForDataCollection:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
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
        v12 = [v11 extensionIdentity];
        v13 = [v12 extensionBundleIdentifier];
        v14 = [(ATXTimelineRelevanceMetricHarvester *)self isFirstParty:v13];

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

- (void)harvestWithActivity:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
  v10 = [v4 didDefer];
  v11 = __atxlog_handle_timeline();
  v12 = v11;
  if (v10)
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
      v55 = v4;
      v56 = v12;
      v58 = self;
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
          v18 = [v16 extensionIdentity];
          v19 = [v18 extensionBundleIdentifier];
          [v17 setWidgetBundleId:v19];

          v20 = [v16 kind];
          [v17 setWidgetKind:v20];

          v21 = [v16 extensionIdentity];
          v22 = [v21 containerBundleIdentifier];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = &stru_2839A6058;
          }

          [v17 setContainerBundleIdentifier:{v24, v52}];

          [v17 setWidgetFamily:{objc_msgSend(objc_opt_class(), "PBWidgetFamilyFromCHSWidgetFamily:", objc_msgSend(v16, "family"))}];
          [v17 setTimelineDonationNilCount:0];
          [v17 setAtLeastOnePositiveTimelineRelevanceScore:0];
          v25 = [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig timelineRelevanceABGroup];
          [v17 setAbGroup:v25];

          v26 = [MEMORY[0x277CBEAA8] now];
          v27 = [v26 dateByAddingTimeInterval:-604800.0];
          [v27 timeIntervalSinceReferenceDate];
          v29 = v28;

          v30 = objc_opt_new();
          if ([(ATXTimelineRelevanceMetricHarvester *)self addTimelineRelevanceScoresToTimelineRelevanceContainer:v17 forWidget:v16 withDistributionsLogged:v14 updatingDictionary:v30 anonymizeTimestampsRelativeTo:v29])
          {
            v60 = v14;
            v31 = [v16 extensionIdentity];
            v32 = [v31 extensionBundleIdentifier];
            v33 = [v16 extensionIdentity];
            [v33 containerBundleIdentifier];
            v35 = v34 = self;
            v36 = [v16 kind];
            v37 = -[ATXTimelineRelevanceMetricHarvester fetchStackConfigSummaryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:](v34, "fetchStackConfigSummaryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:", v32, v35, v36, [v16 family], v17, v29);

            v38 = [v37 lastObject];
            if ([v38 hasSmartStacksWithWidget])
            {
              v39 = 1;
            }

            else
            {
              v40 = [v37 lastObject];
              v39 = [v40 hasNonSmartStacksWithWidget];
            }

            self = v58;
            v12 = v56;
            v14 = v60;
            if (v39 && v60 <= 4)
            {
              [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
              [v17 setTimestamp:(v41 - v29)];
              [(ATXTimelineRelevanceMetricHarvester *)v58 addTimelineRelevanceSuggestionsToContainer:v17 withTimelineEntries:v30 anonymizeTimestampsRelativeTo:v29];
              v42 = [v16 extensionIdentity];
              v43 = [v42 extensionBundleIdentifier];
              v44 = [v16 extensionIdentity];
              v45 = [v44 containerBundleIdentifier];
              v46 = [v16 kind];
              -[ATXTimelineRelevanceMetricHarvester _addRotationHistoryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:](v58, "_addRotationHistoryForWidgetBundleId:appBundleId:widgetKind:widgetSize:withPBTimelineRelevanceContainer:anonymizeTimestampsRelativeTo:", v43, v45, v46, [v16 family], v17, v29);

              v12 = v56;
              self = v58;

              [(ATXTimelineRelevanceMetricHarvester *)v58 addStackConfigSummaryToTimelineRelevanceContainer:v17 withStackConfigSummary:v37];
              [(ATXTimelineRelevanceMetricHarvester *)v58 addFeatureVectorToTimelineRelevanceContainer:v17];
              v14 = v60 + 1;
            }

            v4 = v55;
          }

          else
          {
            v37 = 0;
          }

          v47 = [MEMORY[0x277D41DA8] sharedInstance];
          [v47 logMessage:v17];

          if ([v4 didDefer])
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
    v49 = [MEMORY[0x277CEB9C0] startDateOfDismissHistoryConsidered];
    [(ATXInformationStore *)informationStore clearWidgetRemovalHistoryOlderThan:v49];

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

- (BOOL)addTimelineRelevanceScoresToTimelineRelevanceContainer:(id)a3 forWidget:(id)a4 withDistributionsLogged:(unint64_t)a5 updatingDictionary:(id)a6 anonymizeTimestampsRelativeTo:(double)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v40 = self;
  v41 = a6;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v39 = v13;
  obj = [(ATXInformationStore *)self->_informationStore fetchTimelineEntriesForWidget:v13 sinceDate:self->_loggingStartDate];
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
        v20 = [v18 timelineEntry];
        v21 = [v20 relevance];

        if (v21)
        {
          v22 = objc_opt_new();
          [v22 setSuggestionMappingReason:{+[ATXTimelineRelevanceMetricHarvester PBTimelineEntrySuggestionMappingReasonFrom:](ATXTimelineRelevanceMetricHarvester, "PBTimelineEntrySuggestionMappingReasonFrom:", objc_msgSend(v18, "suggestionMappingReason"))}];
          v23 = [v18 timelineEntry];
          v24 = [v23 relevance];
          [v24 score];
          [v22 setRelevanceScore:?];

          if (([v12 atLeastOnePositiveTimelineRelevanceScore] & 1) == 0)
          {
            v25 = [v18 timelineEntry];
            v26 = [v25 relevance];
            [v26 score];
            v28 = v27;

            if (v28 > 0.0)
            {
              [v12 setAtLeastOnePositiveTimelineRelevanceScore:1];
            }
          }

          if (a5 <= 4)
          {
            v29 = [v18 timelineEntry];
            v30 = [v29 date];
            [v30 timeIntervalSinceReferenceDate];
            [v22 setTimestamp:(v31 - a7)];

            v32 = [v18 timelineEntry];
            v33 = [v32 relevance];
            [v33 duration];
            [v22 setDuration:v34];

            v35 = [v18 suggestionId];

            if (v35)
            {
              v36 = [v18 suggestionId];
              [(ATXTimelineRelevanceMetricHarvester *)v40 _updateTimelineEntriesDictionaryWithEntries:v41 withKey:v36 withScoreEntry:v22];
            }

            v42 = 1;
          }
        }

        else
        {
          [v12 setTimelineDonationNilCount:{objc_msgSend(v12, "timelineDonationNilCount") + 1}];
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

- (void)addStackConfigSummaryToTimelineRelevanceContainer:(id)a3 withStackConfigSummary:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v6);
        }

        [v5 addStackConfigSummary:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addTimelineRelevanceSuggestionsToContainer:(id)a3 withTimelineEntries:(id)a4 anonymizeTimestampsRelativeTo:(double)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v7 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [v7 allKeys];
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
        [(ATXTimelineRelevanceMetricHarvester *)self _addAbuseControlOutcomesForSuggestionId:v12 withPBTimelineRelevanceSuggestion:v14 anonymizeTimestampsRelativeTo:a5];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = [v7 objectForKeyedSubscript:v12];
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

        [v23 addTimelineRelevanceSuggestion:v14];
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

- (void)_addAbuseControlOutcomesForSuggestionId:(id)a3 withPBTimelineRelevanceSuggestion:(id)a4 anonymizeTimestampsRelativeTo:(double)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(ATXInformationStore *)self->_informationStore fetchAbuseControlOutcomesForSuggestion:v8 sinceDate:self->_loggingStartDate];
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
      [v17 setTimestamp:(v18 - a5)];
      [v17 setOutcomeType:{+[ATXTimelineRelevanceMetricHarvester PBTimelineRelevanceAbuseControlOutcomeTypeFrom:](ATXTimelineRelevanceMetricHarvester, "PBTimelineRelevanceAbuseControlOutcomeTypeFrom:", objc_msgSend(v15, "abuseControlOutcome"))}];
      [v9 addAbuseControlOutcome:v17];
      v19 = [v9 abuseControlOutcomesCount];

      objc_autoreleasePoolPop(v16);
      if (v19 > 0x1F3)
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

- (void)addFeatureVectorToTimelineRelevanceContainer:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 widgetBundleId];
  v6 = [v3 widgetKind];
  v21 = v3;
  v7 = [v3 containerBundleIdentifier];
  v20 = v4;
  v8 = [v4 featurizeTimelineWithWidgetBundleId:v5 widgetKind:v6 appBundleIdentifier:v7];

  v9 = objc_opt_new();
  v10 = [v8 dictionaryRepresentation];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        NSSelectorFromString(v15);
        if (objc_opt_respondsToSelector())
        {
          v16 = MEMORY[0x277CCABB0];
          v17 = [v10 objectForKeyedSubscript:v15];
          [ATXTimelineRelevanceMetricHarvester roundNumber:v17 toSignificantFigures:2];
          v18 = [v16 numberWithDouble:?];

          [v9 setValue:v18 forKey:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  [v21 setFeatureVector:v9];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_updateTimelineEntriesDictionaryWithEntries:(id)a3 withKey:(id)a4 withScoreEntry:(id)a5
{
  v12 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v12 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v10 = objc_opt_new();
    [v12 setObject:v10 forKeyedSubscript:v7];
  }

  v11 = [v12 objectForKeyedSubscript:v7];
  [v11 addObject:v8];
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

- (void)_addRotationHistoryForWidgetBundleId:(id)a3 appBundleId:(id)a4 widgetKind:(id)a5 widgetSize:(int64_t)a6 withPBTimelineRelevanceContainer:(id)a7 anonymizeTimestampsRelativeTo:(double)a8
{
  v67[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v46 = a7;
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
  v44 = v13;
  v56 = v44;
  v21 = v14;
  v57 = v21;
  v22 = v15;
  v58 = v22;
  v59 = a6;
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
    v27 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
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
    v27 = [v40 removeAndReturnCompletedSessions];
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v66 count:16];
    if (v28)
    {
      v29 = *v48;
LABEL_6:
      v30 = 0;
      while (1)
      {
        if (*v48 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v47 + 1) + 8 * v30);
        v32 = [v31 sessionEndDate];
        [v32 timeIntervalSinceReferenceDate];
        v34 = v33;
        [(NSDate *)self->_loggingStartDate timeIntervalSinceReferenceDate];
        v36 = v34 < v35;

        if (v36)
        {
          break;
        }

        v37 = [v31 startingStackChangeEvent];
        v38 = [(ATXTimelineRelevanceMetricHarvester *)self _shouldLogHomeScreenEvent:v37 widgetBundleId:v44 appBundleId:v21 widgetKind:v22 widgetFamily:a6];

        if (!v38)
        {
          break;
        }

        [(ATXTimelineRelevanceMetricHarvester *)self addRotationsToContainer:v46 withStackRotationSesssion:v31 anonymizeTimestampsRelativeTo:a8];
        if ([v46 rotationsCount] > 0x1F3)
        {
          break;
        }

        if (v28 == ++v30)
        {
          v28 = [v27 countByEnumeratingWithState:&v47 objects:v66 count:16];
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

- (void)addRotationsToContainer:(id)a3 withStackRotationSesssion:(id)a4 anonymizeTimestampsRelativeTo:(double)a5
{
  v28 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [v7 sessionStartDate];
  [v9 timeIntervalSinceReferenceDate];
  [v8 setTimestamp:(v10 - a5)];

  v11 = [v7 sessionEndDate];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;
  v14 = [v7 sessionStartDate];
  [v14 timeIntervalSinceReferenceDate];
  [v8 setDuration:(v13 - v15)];

  [v8 setEngagement:{objc_msgSend(objc_opt_class(), "PBTimelineRelevanceEngagementFromATXStackRotationEngagementStatus:", objc_msgSend(v7, "engagementStatus"))}];
  v16 = objc_opt_class();
  v17 = [v7 startingStackChangeEvent];
  v18 = [v17 reason];
  [v8 setRotationEventType:{objc_msgSend(v16, "PBTimelineRelevanceRotationEventTypeFromReason:", v18)}];

  v19 = [v7 systemSuggestSuggestionLayout];

  if (v19)
  {
    v20 = [v7 systemSuggestSuggestionLayout];
    [v8 setIsMediumOrHighConfidence:{objc_msgSend(v20, "isLowConfidenceStackRotationForStaleStack") ^ 1}];

    v21 = [v7 systemSuggestSuggestionLayout];
    v22 = [v21 allSuggestionsInLayout];
    v23 = [v22 firstObject];

    if (v23)
    {
      v24 = [v23 clientModelSpecification];

      if (v24)
      {
        v25 = objc_opt_class();
        v26 = [v23 clientModelSpecification];
        v27 = [v26 clientModelId];
        [v8 setClientModelId:{objc_msgSend(v25, "PBClientModelFromString:", v27)}];
      }
    }
  }

  [v28 addRotation:v8];
}

- (BOOL)_shouldLogHomeScreenEvent:(id)a3 widgetBundleId:(id)a4 appBundleId:(id)a5 widgetKind:(id)a6 widgetFamily:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    goto LABEL_11;
  }

  v15 = [v11 widgetBundleId];
  if (![v15 isEqualToString:v12])
  {
    v19 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v16 = [v11 appBundleId];
  if (![v16 isEqualToString:v13])
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  v17 = [v11 widgetKind];
  if (([v17 isEqualToString:v14] & 1) == 0)
  {

    goto LABEL_14;
  }

  [v11 widgetSize];
  v18 = CHSWidgetFamilyFromATXStackLayoutSize();

  if (v18 == a7)
  {
    v16 = [v11 eventTypeString];
    if (([v16 isEqualToString:@"Unknown"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"HomeScreenPageShown") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"HomeScreenDisappeared") & 1) == 0)
    {
      if ([v16 isEqualToString:@"StackChanged"])
      {
        v19 = 1;
        goto LABEL_10;
      }

      if (([v16 isEqualToString:@"WidgetTapped"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"WidgetLongLook") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"WidgetUserFeedback") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"UserStackConfigChanged") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"DeviceLocked") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"DeviceUnlocked") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"PinnedWidgetAdded") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"PinnedWidgetDeleted") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"SpecialPageAppeared") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"SpecialPageDisappeared") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"StackShown") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"StackDisappeared") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"StackCreated") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"StackDeleted") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"WidgetAddedToStack") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"WidgetRemovedFromStack") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"StackVisibilityChanged") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"AppAdded") & 1) == 0)
      {
        [v16 isEqualToString:@"AppRemoved"];
      }
    }

    v19 = 0;
LABEL_10:
    v15 = v16;
LABEL_15:

    goto LABEL_16;
  }

LABEL_11:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)fetchStackConfigSummaryForWidgetBundleId:(id)a3 appBundleId:(id)a4 widgetKind:(id)a5 widgetSize:(int64_t)a6 withPBTimelineRelevanceContainer:(id)a7 anonymizeTimestampsRelativeTo:(double)a8
{
  v34 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v28 = v14;
  v17 = [(ATXInformationStore *)self->_informationStore fetchStackConfigStatisticsForWidgetBundleId:v13 widgetKind:v15 containerBundleIdentifier:v14 widgetFamily:a6];
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
        v24 = [v22 timestamp];
        [v24 timeIntervalSinceReferenceDate];
        [v23 setTimestamp:(v25 - a8)];

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

- (BOOL)_shouldProcessEvent:(id)a3
{
  v4 = [a3 homeScreenEvent];
  v5 = [v4 date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  [(NSDate *)self->_loggingStartDate timeIntervalSinceReferenceDate];
  LOBYTE(self) = v7 > v8;

  return self;
}

+ (double)roundNumber:(id)a3 toSignificantFigures:(unint64_t)a4
{
  v5 = a3;
  v6 = 0.0;
  if (([v5 isEqualToNumber:&unk_283A574A0] & 1) == 0)
  {
    if (a4)
    {
      [v5 doubleValue];
      v8 = log10(v7);
      v9 = __exp10(a4 - ceil(v8));
      [v5 doubleValue];
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

+ (int)PBClientModelFromString:(id)a3
{
  v3 = MEMORY[0x277D42070];
  v4 = a3;
  v5 = [v3 clientModelIdFromClientModelType:19];
  v6 = [v4 isEqualToString:v5];

  return v6 ^ 1;
}

+ (int)PBTimelineRelevanceEngagementFromATXStackRotationEngagementStatus:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 1;
  }

  else
  {
    return dword_226872980[a3];
  }
}

+ (int)PBWidgetFamilyFromCHSWidgetFamily:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_226872994[a3 - 1];
  }
}

+ (int)PBTimelineEntrySuggestionMappingReasonFrom:(int64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return dword_2268729A8[a3];
  }
}

+ (int)PBTimelineRelevanceRotationEventTypeFromReason:(id)a3
{
  v3 = a3;
  v4 = 1;
  v5 = NSStringForATXHomeScreenStackChangeReason();
  v6 = [v3 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = NSStringForATXHomeScreenStackChangeReason();
    v8 = [v3 isEqualToString:v7];

    if (v8)
    {
      v4 = 0;
    }

    else
    {
      v9 = NSStringForATXHomeScreenStackChangeReason();
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        v4 = 2;
      }

      else
      {
        v11 = NSStringForATXHomeScreenStackChangeReason();
        v12 = [v3 isEqualToString:v11];

        if (v12)
        {
          v4 = 3;
        }

        else
        {
          v13 = NSStringForATXHomeScreenStackChangeReason();
          v14 = [v3 isEqualToString:v13];

          if (v14)
          {
            v4 = 4;
          }

          else
          {
            v15 = NSStringForATXHomeScreenStackChangeReason();
            v16 = [v3 isEqualToString:v15];

            if (v16)
            {
              v4 = 5;
            }

            else
            {
              v17 = NSStringForATXHomeScreenStackChangeReason();
              v18 = [v3 isEqualToString:v17];

              if (v18)
              {
                v4 = 6;
              }

              else
              {
                v19 = NSStringForATXHomeScreenStackChangeReason();
                v20 = [v3 isEqualToString:v19];

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

+ (int)PBTimelineRelevanceAbuseControlOutcomeTypeFrom:(int64_t)a3
{
  if (a3 > 0x17)
  {
    return 1;
  }

  else
  {
    return dword_2268729C4[a3];
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