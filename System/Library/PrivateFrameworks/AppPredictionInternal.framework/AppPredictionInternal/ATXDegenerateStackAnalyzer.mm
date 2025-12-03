@interface ATXDegenerateStackAnalyzer
- (ATXDegenerateStackAnalyzer)init;
- (ATXDegenerateStackAnalyzer)initWithInformationStore:(id)store;
- (BOOL)_hasWidgetHadTimelineDonations:(id)donations startDate:(id)date;
- (BOOL)_isWidgetEligibleForHeuristicFallback:(id)fallback;
- (BOOL)_wouldBlendingDeduplicateWidget:(id)widget inStack:(id)stack againstOtherWidgetsOnPage:(id)page;
- (BOOL)areAllSmartStacksPossiblyDegenerateInPages:(id)pages usingTimelineEntriesSinceDate:(id)date;
- (BOOL)isSmartStackPossiblyDegenerate:(id)degenerate onPage:(id)page usingTimelineEntriesSinceDate:(id)date;
- (id)_simulatedInfoSuggestionForWidget:(id)widget;
@end

@implementation ATXDegenerateStackAnalyzer

- (ATXDegenerateStackAnalyzer)init
{
  mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
  v4 = [(ATXDegenerateStackAnalyzer *)self initWithInformationStore:mEMORY[0x277CEB5C8]];

  return v4;
}

- (ATXDegenerateStackAnalyzer)initWithInformationStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = ATXDegenerateStackAnalyzer;
  v6 = [(ATXDegenerateStackAnalyzer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_informationStore, store);
    v8 = objc_opt_new();
    deduplicator = v7->_deduplicator;
    v7->_deduplicator = v8;
  }

  return v7;
}

- (BOOL)_isWidgetEligibleForHeuristicFallback:(id)fallback
{
  fallbackCopy = fallback;
  appBundleId = [fallbackCopy appBundleId];
  v5 = [appBundleId isEqualToString:@"com.apple.weather"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    appBundleId2 = [fallbackCopy appBundleId];
    if ([appBundleId2 isEqualToString:@"com.apple.gamecenter.widgets"])
    {
      widgetKind = [fallbackCopy widgetKind];
      v6 = [widgetKind isEqualToString:@"FriendsArePlayingWidget"];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_hasWidgetHadTimelineDonations:(id)donations startDate:(id)date
{
  v34 = *MEMORY[0x277D85DE8];
  donationsCopy = donations;
  dateCopy = date;
  v8 = [donationsCopy size];
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
  extensionBundleId = [donationsCopy extensionBundleId];
  appBundleId = [donationsCopy appBundleId];
  v14 = [v11 initWithExtensionBundleIdentifier:extensionBundleId containerBundleIdentifier:appBundleId deviceIdentifier:0];
  widgetKind = [donationsCopy widgetKind];
  v16 = widgetKind;
  if (widgetKind)
  {
    v17 = widgetKind;
  }

  else
  {
    v17 = &stru_2839A6058;
  }

  v18 = [v10 initWithExtensionIdentity:v14 kind:v17 family:v9 intent:0 activityIdentifier:0];

  [(ATXInformationStore *)self->_informationStore fetchTimelineEntriesForWidget:v18 sinceDate:dateCopy];
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

        timelineEntry = [*(*(&v29 + 1) + 8 * i) timelineEntry];
        relevance = [timelineEntry relevance];
        [relevance score];
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

- (id)_simulatedInfoSuggestionForWidget:(id)widget
{
  v3 = MEMORY[0x277D42040];
  widgetCopy = widget;
  v5 = [v3 alloc];
  appBundleId = [widgetCopy appBundleId];
  v7 = appBundleId;
  if (appBundleId)
  {
    v8 = appBundleId;
  }

  else
  {
    v8 = &stru_2839A6058;
  }

  extensionBundleId = [widgetCopy extensionBundleId];
  widgetKind = [widgetCopy widgetKind];
  intent = [widgetCopy intent];

  v12 = [v5 initWithAppBundleIdentifier:v8 widgetBundleIdentifier:extensionBundleId widgetKind:widgetKind criterion:@"criterion" applicableLayouts:24 suggestionIdentifier:0 startDate:0 endDate:0 intent:intent metadata:0 relevanceScore:0];
  v13 = [objc_alloc(MEMORY[0x277D42080]) initWithExecutableObject:v12 executableDescription:@"description" executableIdentifier:@"identifier" suggestionExecutableType:3];
  v14 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:@"simulated_suggestion" clientModelVersion:@"1" engagementResetPolicy:1];
  v15 = objc_alloc(MEMORY[0x277D420A0]);
  LOWORD(v20) = 0;
  v16 = [v15 initWithTitle:0 subtitle:0 predictionReason:0 preferredLayoutConfigs:MEMORY[0x277CBEBF8] allowedOnLockscreen:0 allowedOnHomeScreen:0 allowedOnSpotlight:v20 shouldClearOnEngagement:?];
  v17 = [objc_alloc(MEMORY[0x277D42090]) initWithRawScore:0 suggestedConfidenceCategory:0.0];
  v18 = [objc_alloc(MEMORY[0x277D42068]) initWithClientModelSpecification:v14 executableSpecification:v13 uiSpecification:v16 scoreSpecification:v17];

  return v18;
}

- (BOOL)_wouldBlendingDeduplicateWidget:(id)widget inStack:(id)stack againstOtherWidgetsOnPage:(id)page
{
  pageCopy = page;
  stackCopy = stack;
  v10 = [(ATXDegenerateStackAnalyzer *)self _simulatedInfoSuggestionForWidget:widget];
  deduplicator = self->_deduplicator;
  identifier = [stackCopy identifier];

  LOBYTE(stackCopy) = [(ATXSuggestionDeduplicator *)deduplicator widgetSuggestionIsPinned:v10 homeScreenPage:pageCopy excludingStackConfigId:identifier];
  return stackCopy;
}

- (BOOL)isSmartStackPossiblyDegenerate:(id)degenerate onPage:(id)page usingTimelineEntriesSinceDate:(id)date
{
  v28 = *MEMORY[0x277D85DE8];
  degenerateCopy = degenerate;
  pageCopy = page;
  dateCopy = date;
  if (([degenerateCopy allowsSmartRotate] & 1) == 0)
  {
    [ATXDegenerateStackAnalyzer isSmartStackPossiblyDegenerate:a2 onPage:self usingTimelineEntriesSinceDate:?];
  }

  v11 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  widgets = [degenerateCopy widgets];
  v13 = [widgets countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(widgets);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        if (![(ATXDegenerateStackAnalyzer *)self _wouldBlendingDeduplicateWidget:v17 inStack:degenerateCopy againstOtherWidgetsOnPage:pageCopy]&& ([(ATXDegenerateStackAnalyzer *)self _isWidgetEligibleForHeuristicFallback:v17]|| [(ATXDegenerateStackAnalyzer *)self _hasWidgetHadTimelineDonations:v17 startDate:dateCopy]))
        {
          [v11 addObject:v17];
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [widgets countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v19 = [v11 count] < 2;
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)areAllSmartStacksPossiblyDegenerateInPages:(id)pages usingTimelineEntriesSinceDate:(id)date
{
  v33 = *MEMORY[0x277D85DE8];
  pagesCopy = pages;
  dateCopy = date;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = pagesCopy;
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
        stacks = [v11 stacks];
        v13 = [stacks countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                objc_enumerationMutation(stacks);
              }

              v17 = *(*(&v23 + 1) + 8 * j);
              if ([v17 allowsSmartRotate] && !-[ATXDegenerateStackAnalyzer isSmartStackPossiblyDegenerate:onPage:usingTimelineEntriesSinceDate:](self, "isSmartStackPossiblyDegenerate:onPage:usingTimelineEntriesSinceDate:", v17, v11, dateCopy))
              {

                v18 = 0;
                goto LABEL_20;
              }
            }

            v14 = [stacks countByEnumeratingWithState:&v23 objects:v31 count:16];
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