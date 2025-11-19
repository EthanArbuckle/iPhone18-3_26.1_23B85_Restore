@interface ATXDegenerateStackAnalyzer
- (ATXDegenerateStackAnalyzer)init;
- (ATXDegenerateStackAnalyzer)initWithInformationStore:(id)a3;
- (BOOL)_hasWidgetHadTimelineDonations:(id)a3 startDate:(id)a4;
- (BOOL)_isWidgetEligibleForHeuristicFallback:(id)a3;
- (BOOL)_wouldBlendingDeduplicateWidget:(id)a3 inStack:(id)a4 againstOtherWidgetsOnPage:(id)a5;
- (BOOL)areAllSmartStacksPossiblyDegenerateInPages:(id)a3 usingTimelineEntriesSinceDate:(id)a4;
- (BOOL)isSmartStackPossiblyDegenerate:(id)a3 onPage:(id)a4 usingTimelineEntriesSinceDate:(id)a5;
- (id)_simulatedInfoSuggestionForWidget:(id)a3;
@end

@implementation ATXDegenerateStackAnalyzer

- (ATXDegenerateStackAnalyzer)init
{
  v3 = [MEMORY[0x277CEB5C8] sharedInstance];
  v4 = [(ATXDegenerateStackAnalyzer *)self initWithInformationStore:v3];

  return v4;
}

- (ATXDegenerateStackAnalyzer)initWithInformationStore:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ATXDegenerateStackAnalyzer;
  v6 = [(ATXDegenerateStackAnalyzer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_informationStore, a3);
    v8 = objc_opt_new();
    deduplicator = v7->_deduplicator;
    v7->_deduplicator = v8;
  }

  return v7;
}

- (BOOL)_isWidgetEligibleForHeuristicFallback:(id)a3
{
  v3 = a3;
  v4 = [v3 appBundleId];
  v5 = [v4 isEqualToString:@"com.apple.weather"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 appBundleId];
    if ([v7 isEqualToString:@"com.apple.gamecenter.widgets"])
    {
      v8 = [v3 widgetKind];
      v6 = [v8 isEqualToString:@"FriendsArePlayingWidget"];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_hasWidgetHadTimelineDonations:(id)a3 startDate:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 size];
  if (v8 > 4)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_226872C40[v8];
  }

  v10 = objc_alloc(MEMORY[0x277CFA358]);
  v11 = objc_alloc(MEMORY[0x277CFA258]);
  v12 = [v6 extensionBundleId];
  v13 = [v6 appBundleId];
  v14 = [v11 initWithExtensionBundleIdentifier:v12 containerBundleIdentifier:v13 deviceIdentifier:0];
  v15 = [v6 widgetKind];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_2839A6058;
  }

  v18 = [v10 initWithExtensionIdentity:v14 kind:v17 family:v9 intent:0 activityIdentifier:0];

  [(ATXInformationStore *)self->_informationStore fetchTimelineEntriesForWidget:v18 sinceDate:v7];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = v32 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v20)
  {
    v21 = *v30;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = [*(*(&v29 + 1) + 8 * i) timelineEntry];
        v24 = [v23 relevance];
        [v24 score];
        v26 = v25;

        if (v26 > 0.00000011920929)
        {
          LOBYTE(v20) = 1;
          goto LABEL_17;
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)_simulatedInfoSuggestionForWidget:(id)a3
{
  v3 = MEMORY[0x277D42040];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 appBundleId];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_2839A6058;
  }

  v9 = [v4 extensionBundleId];
  v10 = [v4 widgetKind];
  v11 = [v4 intent];

  v12 = [v5 initWithAppBundleIdentifier:v8 widgetBundleIdentifier:v9 widgetKind:v10 criterion:@"criterion" applicableLayouts:24 suggestionIdentifier:0 startDate:0 endDate:0 intent:v11 metadata:0 relevanceScore:0];
  v13 = [objc_alloc(MEMORY[0x277D42080]) initWithExecutableObject:v12 executableDescription:@"description" executableIdentifier:@"identifier" suggestionExecutableType:3];
  v14 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:@"simulated_suggestion" clientModelVersion:@"1" engagementResetPolicy:1];
  v15 = objc_alloc(MEMORY[0x277D420A0]);
  LOWORD(v20) = 0;
  v16 = [v15 initWithTitle:0 subtitle:0 predictionReason:0 preferredLayoutConfigs:MEMORY[0x277CBEBF8] allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v20 shouldClearOnEngagement:?];
  v17 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:0 suggestedConfidenceCategory:0.0];
  v18 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v14 executableSpecification:v13 uiSpecification:v16 scoreSpecification:v17];

  return v18;
}

- (BOOL)_wouldBlendingDeduplicateWidget:(id)a3 inStack:(id)a4 againstOtherWidgetsOnPage:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(ATXDegenerateStackAnalyzer *)self _simulatedInfoSuggestionForWidget:a3];
  deduplicator = self->_deduplicator;
  v12 = [v9 identifier];

  LOBYTE(v9) = [(ATXSuggestionDeduplicator *)deduplicator widgetSuggestionIsPinned:v10 homeScreenPage:v8 excludingStackConfigId:v12];
  return v9;
}

- (BOOL)isSmartStackPossiblyDegenerate:(id)a3 onPage:(id)a4 usingTimelineEntriesSinceDate:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v22 = a5;
  if (([v9 allowsSmartRotate] & 1) == 0)
  {
    [ATXDegenerateStackAnalyzer isSmartStackPossiblyDegenerate:a2 onPage:self usingTimelineEntriesSinceDate:?];
  }

  v11 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [v9 widgets];
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        if (![(ATXDegenerateStackAnalyzer *)self _wouldBlendingDeduplicateWidget:v17 inStack:v9 againstOtherWidgetsOnPage:v10]&& ([(ATXDegenerateStackAnalyzer *)self _isWidgetEligibleForHeuristicFallback:v17]|| [(ATXDegenerateStackAnalyzer *)self _hasWidgetHadTimelineDonations:v17 startDate:v22]))
        {
          [v11 addObject:v17];
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v19 = [v11 count] < 2;
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)areAllSmartStacksPossiblyDegenerateInPages:(id)a3 usingTimelineEntriesSinceDate:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v6;
  v22 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v9 = *v28;
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = [v11 stacks];
        v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v24;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v23 + 1) + 8 * j);
              if ([v17 allowsSmartRotate] && !-[ATXDegenerateStackAnalyzer isSmartStackPossiblyDegenerate:onPage:usingTimelineEntriesSinceDate:](self, "isSmartStackPossiblyDegenerate:onPage:usingTimelineEntriesSinceDate:", v17, v11, v7))
              {

                v18 = 0;
                goto LABEL_20;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v21;
      }

      v18 = 1;
      v22 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 1;
  }

LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)isSmartStackPossiblyDegenerate:(uint64_t)a1 onPage:(uint64_t)a2 usingTimelineEntriesSinceDate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXDegenerateStackAnalyzer.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"stack.allowsSmartRotate"}];
}

@end