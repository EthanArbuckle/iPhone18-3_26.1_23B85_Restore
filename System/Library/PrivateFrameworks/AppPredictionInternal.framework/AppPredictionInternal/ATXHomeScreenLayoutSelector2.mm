@interface ATXHomeScreenLayoutSelector2
- (ATXHomeScreenLayoutSelector2)init;
- (ATXHomeScreenLayoutSelector2)initWithBlendingLayerHyperParameters:(id)a3;
- (ATXHomeScreenLayoutSelector2)initWithHomeScreenPageConfigurations:(id)a3 blendingLayerHyperParameters:(id)a4 suggestionDeduplicator:(id)a5 engagementRecordManager:(id)a6 widgetDismissManager:(id)a7 stackStateTracker:(id)a8 store:(id)a9 defaults:(id)a10 modeFilter:(id)a11 chronoService:(id)a12 isiPad:(BOOL)a13;
- (BOOL)_hasEligiblePinnedWidgetStacksForAPPWidget:(id)a3 forCandidateStack:(id)a4;
- (BOOL)_hasEligiblePinnedWidgetStacksForSuggestionsWidget:(id)a3 forCandidateStack:(id)a4;
- (BOOL)_isBackgroundAppRefreshAllowedForAppBundleId:(id)a3;
- (BOOL)_isStack:(id)a3 eligibleToShowSuggestionViaWidgetSuggestion:(id)a4;
- (BOOL)_isStackEligibleForSmartRotate:(id)a3 stack:(id)a4;
- (BOOL)_isSuggestionStillNeededForTopOfStack:(id)a3;
- (BOOL)_shouldConsiderSuggestionForAppPredictionPanel:(id)a3;
- (BOOL)_shouldConsiderSuggestionForSuggestionsWidget:(id)a3;
- (BOOL)_shouldLimitWidgetSuggestionPowerCost;
- (BOOL)_stackHasRemainingReloadBudgetForWidgetSuggestion:(id)a3 homeScreenState:(id)a4;
- (double)_computeScoreForLayout:(id)a3;
- (double)_weightForConfidenceCategory:(int64_t)a3;
- (id)_appPredictionPanelPreviewFromRankedSuggestions:(id)a3;
- (id)_fallbackSuggestions:(id)a3 homeScreenState:(id)a4;
- (id)_filterRankedSuggestions:(id)a3 homeScreenState:(id)a4;
- (id)_homeScreenCachedSuggestionsFromHomeScreenState:(id)a3 sortedFallbackSuggestions:(id)a4 suggestionsWidgetPreviews:(id)a5 appPredictionPanelPreview:(id)a6 withUUID:(id)a7;
- (id)_loadHomeScreenState:(id)a3;
- (id)_processedSuggestionLayoutFromWidgetSuggestion:(id)a3 stack:(id)a4 blendingUpdateUUID:(id)a5;
- (id)_shortcutConversionOriginalActionSuggestionIndices:(id)a3;
- (id)_sortedPagesByMostRecentUserVisit:(id)a3;
- (id)_suggestionsEligibleForSuggestedSGWidgetOnPages:(id)a3 amongSuggestions:(id)a4;
- (id)_suggestionsWidgetPreviewsFromRankedSuggestions:(id)a3;
- (id)_suggestionsWidgetSuggestionsByPriorityOnPage:(id)a3;
- (id)selectedLayoutForConsumerSubType:(unsigned __int8)a3 rankedSuggestions:(id)a4;
- (int64_t)_thresholdConfidenceForSuggestedSG;
- (void)_assignExistingSuggestedSGWidgetsOnPages:(id)a3 withSuggestions:(id)a4 suggestionToRankingIndex:(id)a5;
- (void)_assignNewSuggestedWidgetsForPages:(id)a3 rankedSuggestions:(id)a4 suggestionToRankingIndex:(id)a5 homeScreenState:(id)a6;
- (void)_assignPinnedAPPWidgetForPage:(id)a3 suggestions:(id)a4 homeScreenState:(id)a5;
- (void)_assignPinnedSuggestionsWidgetForPage:(id)a3 suggestions:(id)a4 homeScreenState:(id)a5;
- (void)_assignSuggestion:(id)a3 toTopOfStack:(id)a4;
- (void)_assignSuggestionsForExistingSuggestedWidgets:(id)a3 homeScreenState:(id)a4;
- (void)_assignUnfilledSGWidgetForPage:(id)a3 suggestions:(id)a4 homeScreenState:(id)a5;
- (void)_assignWidgetForTopOfStack:(id)a3 suggestions:(id)a4 homeScreenState:(id)a5;
- (void)_fillSuggestedSGWidgetIfLayoutNotComplete:(id)a3 withSuggestions:(id)a4 updatingUsedSuggestionIndexSet:(id)a5;
- (void)_logStackDetail:(id)a3;
- (void)_performSuggestionAllocationWithRankedSuggestions:(id)a3 homeScreenState:(id)a4;
- (void)_preservePreviousAppSuggestionPositionsWithHomeScreenState:(id)a3;
- (void)_removeSuggestedWidgetWhereNecessaryWithHomeScreenState:(id)a3;
- (void)_rotateAwayFromPreviousSystemInitiatedRotationIfNecessary:(id)a3 homeScreenState:(id)a4;
- (void)_rotateStackToUpdatedSGSuggestionIfNecessary:(id)a3 suggestionToRankingIndex:(id)a4;
- (void)_updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions:(id)a3 suggestionToRankingIndex:(id)a4 homeScreenState:(id)a5;
@end

@implementation ATXHomeScreenLayoutSelector2

- (ATXHomeScreenLayoutSelector2)init
{
  v3 = [MEMORY[0x277D41B98] sharedInstance];
  v4 = [(ATXHomeScreenLayoutSelector2 *)self initWithBlendingLayerHyperParameters:v3];

  return v4;
}

- (ATXHomeScreenLayoutSelector2)initWithBlendingLayerHyperParameters:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x277CEB500] sharedInstance];
  v7 = objc_opt_new();
  v8 = +[ATXStackStateTracker sharedInstance];
  v9 = [MEMORY[0x277CEB5C8] sharedInstance];
  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v11 = [v10 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v12 = +[ATXSuggestionModeFilter sharedInstance];
  v13 = objc_opt_new();
  LOBYTE(v16) = [MEMORY[0x277D42590] isiPad];
  v14 = [(ATXHomeScreenLayoutSelector2 *)self initWithHomeScreenPageConfigurations:0 blendingLayerHyperParameters:v4 suggestionDeduplicator:v5 engagementRecordManager:v6 widgetDismissManager:v7 stackStateTracker:v8 store:v9 defaults:v11 modeFilter:v12 chronoService:v13 isiPad:v16];

  return v14;
}

- (ATXHomeScreenLayoutSelector2)initWithHomeScreenPageConfigurations:(id)a3 blendingLayerHyperParameters:(id)a4 suggestionDeduplicator:(id)a5 engagementRecordManager:(id)a6 widgetDismissManager:(id)a7 stackStateTracker:(id)a8 store:(id)a9 defaults:(id)a10 modeFilter:(id)a11 chronoService:(id)a12 isiPad:(BOOL)a13
{
  v36 = a3;
  obj = a4;
  v35 = a4;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  v31 = a8;
  v37 = a9;
  v30 = a10;
  v19 = a11;
  v20 = a12;
  v38.receiver = self;
  v38.super_class = ATXHomeScreenLayoutSelector2;
  v21 = [(ATXHomeScreenLayoutSelector2 *)&v38 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_homeScreenPageConfigs, a3);
    objc_storeStrong(&v22->_hyperParameters, obj);
    objc_storeStrong(&v22->_suggestionDeduplicator, a5);
    objc_storeStrong(&v22->_engagementRecordManager, a6);
    objc_storeStrong(&v22->_widgetDismissManager, a7);
    objc_storeStrong(&v22->_stackStateTracker, a8);
    objc_storeStrong(&v22->_store, a9);
    objc_storeStrong(&v22->_defaults, a10);
    objc_storeStrong(&v22->_modeFilter, a11);
    objc_storeStrong(&v22->_chronoService, a12);
    v23 = [[_ATXHomeScreenTimelineRelevanceFilter alloc] initWithTimelineRelevanceStore:v37];
    timelineRelevanceFilter = v22->_timelineRelevanceFilter;
    v22->_timelineRelevanceFilter = v23;

    v22->_isiPad = a13;
    v25 = [MEMORY[0x277CEB998] sharedInstance];
    descriptorCache = v22->_descriptorCache;
    v22->_descriptorCache = v25;
  }

  return v22;
}

- (id)selectedLayoutForConsumerSubType:(unsigned __int8)a3 rankedSuggestions:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = __atxlog_handle_blending();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "----- HSLS REFRESH START -----", buf, 2u);
  }

  if (v4 == 34)
  {
    [(ATXStackStateTracker *)self->_stackStateTracker updateStackRotationEvents];
    v8 = [(ATXHomeScreenLayoutSelector2 *)self _loadHomeScreenState:self->_homeScreenPageConfigs];
    stackStateTracker = self->_stackStateTracker;
    v10 = [v8 sortedPagesByUserLastVisit];
    [(ATXStackStateTracker *)stackStateTracker cleanupOldDataWithHomeScreenPages:v10];

    v11 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:8 queryOptions:0];
    dismissedSuggestionsForSuggestionsWidget = self->_dismissedSuggestionsForSuggestionsWidget;
    self->_dismissedSuggestionsForSuggestionsWidget = v11;

    v13 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:16 queryOptions:0];
    dismissedSuggestionsForAppPredictionPanels = self->_dismissedSuggestionsForAppPredictionPanels;
    self->_dismissedSuggestionsForAppPredictionPanels = v13;

    v15 = [(ATXHomeScreenLayoutSelector2 *)self _filterRankedSuggestions:v6 homeScreenState:v8];
    [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestionsForExistingSuggestedWidgets:v15 homeScreenState:v8];
    v16 = [(ATXHomeScreenLayoutSelector2 *)self _suggestionsWidgetPreviewsFromRankedSuggestions:v15];
    v17 = [(ATXHomeScreenLayoutSelector2 *)self _appPredictionPanelPreviewFromRankedSuggestions:v15];
    self->_thresholdConfidenceForSuggestedSG = [(ATXHomeScreenLayoutSelector2 *)self _thresholdConfidenceForSuggestedSG];
    [(ATXHomeScreenLayoutSelector2 *)self setWidgetSuggestionReloadBudgetByStackId:0];
    [(ATXHomeScreenLayoutSelector2 *)self setHasAskedChronoAboutReloadBudget:0];
    self->_shouldLimitWidgetSuggestionPowerCost = [(ATXHomeScreenLayoutSelector2 *)self _shouldLimitWidgetSuggestionPowerCost];
    self->_numSuggestedWidgetInPastDay = [(ATXInformationStore *)self->_store numberOfSuggestedWidgetsInPastDay];
    self->_numWidgetReloadForSuggestionInPastDay = [(ATXInformationStore *)self->_store numberOfWidgetReloadForSuggestionInPastDay];
    [(ATXHomeScreenLayoutSelector2 *)self _performSuggestionAllocationWithRankedSuggestions:v15 homeScreenState:v8];
    [(ATXHomeScreenLayoutSelector2 *)self _rotateAwayFromPreviousSystemInitiatedRotationIfNecessary:v15 homeScreenState:v8];
    [(ATXHomeScreenLayoutSelector2 *)self _preservePreviousAppSuggestionPositionsWithHomeScreenState:v8];
    [(ATXHomeScreenLayoutSelector2 *)self _removeSuggestedWidgetWhereNecessaryWithHomeScreenState:v8];
    v18 = [(ATXHomeScreenLayoutSelector2 *)self _fallbackSuggestions:v15 homeScreenState:v8];
    v19 = objc_opt_new();
    v20 = [(ATXHomeScreenLayoutSelector2 *)self _homeScreenCachedSuggestionsFromHomeScreenState:v8 sortedFallbackSuggestions:v18 suggestionsWidgetPreviews:v16 appPredictionPanelPreview:v17 withUUID:v19];

    v21 = __atxlog_handle_blending();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "----- HSLS REFRESH END -----", v23, 2u);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_performSuggestionAllocationWithRankedSuggestions:(id)a3 homeScreenState:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ATXHomeScreenLayoutSelector2 *)self _shortcutConversionOriginalActionSuggestionIndices:v6];
  v31 = [v6 objectsAtIndexes:v8];
  v9 = [v6 mutableCopy];
  v32 = v8;
  [v9 removeObjectsAtIndexes:v8];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v10 = [v7 sortedPagesByUserLastVisit];
  v11 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        [(ATXHomeScreenLayoutSelector2 *)self _assignPinnedSuggestionsWidgetForPage:v15 suggestions:v9 homeScreenState:v7];
        [(ATXHomeScreenLayoutSelector2 *)self _assignWidgetForTopOfStack:v15 suggestions:v9 homeScreenState:v7];
        [(ATXHomeScreenLayoutSelector2 *)self _assignPinnedAPPWidgetForPage:v15 suggestions:v9 homeScreenState:v7];
        [(ATXHomeScreenLayoutSelector2 *)self _assignUnfilledSGWidgetForPage:v15 suggestions:v9 homeScreenState:v7];
      }

      v12 = [v10 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v12);
  }

  v16 = objc_opt_new();
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __98__ATXHomeScreenLayoutSelector2__performSuggestionAllocationWithRankedSuggestions_homeScreenState___block_invoke;
  v41[3] = &unk_278599578;
  v30 = v16;
  v42 = v30;
  v33 = v6;
  [v6 enumerateObjectsUsingBlock:v41];
  v34 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [v7 sortedPagesByUserLastVisit];
  v17 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v36 = 0;
    v19 = *v38;
    v20 = *MEMORY[0x277CEBAE8];
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v37 + 1) + 8 * j);
        v23 = [v22 config];
        v24 = [v23 pageIndex];

        if (v24 == v20)
        {
          v25 = v22;

          v36 = v25;
        }

        else
        {
          [v34 addObject:v22];
        }
      }

      v18 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v18);
  }

  else
  {
    v36 = 0;
  }

  v26 = [v9 mutableCopy];
  [(ATXHomeScreenLayoutSelector2 *)self _assignExistingSuggestedSGWidgetsOnPages:v34 withSuggestions:v9 suggestionToRankingIndex:v30];
  [(ATXHomeScreenLayoutSelector2 *)self _assignNewSuggestedWidgetsForPages:v34 rankedSuggestions:v9 suggestionToRankingIndex:v30 homeScreenState:v7];
  if (v36)
  {
    v48 = v36;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [(ATXHomeScreenLayoutSelector2 *)self _assignExistingSuggestedSGWidgetsOnPages:v27 withSuggestions:v26 suggestionToRankingIndex:v30];

    v47 = v36;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
    [(ATXHomeScreenLayoutSelector2 *)self _assignNewSuggestedWidgetsForPages:v28 rankedSuggestions:v26 suggestionToRankingIndex:v30 homeScreenState:v7];
  }

  [(ATXHomeScreenLayoutSelector2 *)self _updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions:v31 suggestionToRankingIndex:v30 homeScreenState:v7];

  v29 = *MEMORY[0x277D85DE8];
}

void __98__ATXHomeScreenLayoutSelector2__performSuggestionAllocationWithRankedSuggestions_homeScreenState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)_shortcutConversionOriginalActionSuggestionIndices:(id)a3
{
  v3 = a3;
  v4 = [v3 _pas_filteredArrayWithTest:&__block_literal_global_51];
  v5 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__ATXHomeScreenLayoutSelector2__shortcutConversionOriginalActionSuggestionIndices___block_invoke_2;
  v11[3] = &unk_2785995C0;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v11];

  v8 = v13;
  v9 = v6;

  return v6;
}

uint64_t __83__ATXHomeScreenLayoutSelector2__shortcutConversionOriginalActionSuggestionIndices___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D42070];
  v3 = [a2 clientModelSpecification];
  v4 = [v3 clientModelId];
  v5 = [v2 clientModelTypeFromClientModelId:v4];

  v6 = MEMORY[0x277D42070];

  return [v6 clientModelTypeIsShortcutConversion:v5];
}

void __83__ATXHomeScreenLayoutSelector2__shortcutConversionOriginalActionSuggestionIndices___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 executableSpecification];
  v7 = [v6 executableType];

  v8 = [v5 executableSpecification];
  v9 = v8;
  if (v7 == 2)
  {
    v10 = [v8 executableObject];

    v11 = [v10 intent];
  }

  else
  {
    v12 = [v8 executableType];

    if (v12 != 10)
    {
      goto LABEL_19;
    }

    v10 = [v5 linkActionExecutableObject];
    v11 = [v10 cachedAppIntent];
  }

  v13 = v11;

  if (v13)
  {
    v24 = a1;
    v25 = a3;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = *(a1 + 32);
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v26 + 1) + 8 * i) executableSpecification];
          v20 = [v19 executableObject];

          v21 = [v20 intent];
          LODWORD(v19) = [ATXActionToWidgetConverter isWidgetIntent:v21 validConversionFromActionIntent:v13];

          if (v19)
          {
            v22 = __atxlog_handle_blending();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v5;
              _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "HSLS: Temporarily filtering out action suggestion because there is a converted widget suggestion for it.\n%@", buf, 0xCu);
            }

            [*(v24 + 40) addIndex:v25];
            goto LABEL_18;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

LABEL_19:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_assignPinnedSuggestionsWidgetForPage:(id)a3 suggestions:(id)a4 homeScreenState:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v33 = a4;
  v9 = a5;
  v10 = __atxlog_handle_blending();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 config];
    *buf = 134217984;
    v45 = [v11 pageIndex];
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [assignPinnedSG]: considering pinned SG widgets on page %lu", buf, 0xCu);
  }

  v29 = v8;
  [v8 pinnedSGWidgets];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v34)
  {
    v32 = *v40;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = __atxlog_handle_blending();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v13 config];
          v15 = [v31 widgets];
          v16 = [v15 firstObject];
          v17 = [v16 widgetUniqueId];
          v18 = [v13 config];
          v19 = [v18 identifier];
          *buf = 138543618;
          v45 = v17;
          v46 = 2114;
          v47 = v19;
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "  HSLS [assignPinnedSG]: considering pinned SG widget %{public}@ in stack %{public}@", buf, 0x16u);
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v20 = v33;
        v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v36;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v36 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v35 + 1) + 8 * j);
              if (![(ATXHomeScreenLayoutSelector2 *)self _isSuggestionStillNeededForTopOfStack:v13])
              {
                v27 = __atxlog_handle_blending();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "    HSLS [assignPinnedSG]: pinned SG widget no longer needs suggestion", buf, 2u);
                }

                goto LABEL_27;
              }

              if ([(ATXHomeScreenLayoutSelector2 *)self _isSuggestionACandidate:v25 forStack:v13 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1 homeScreenState:v9]&& [(ATXHomeScreenLayoutSelector2 *)self _hasEligiblePinnedWidgetStacksForSuggestionsWidget:v25 forCandidateStack:v13])
              {
                v26 = __atxlog_handle_blending();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v45 = v25;
                  _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "    HSLS [assignPinnedSG]: ASSIGNING suggestion %@", buf, 0xCu);
                }

                [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestion:v25 toTopOfStack:v13];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:
      }

      v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v34);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_assignPinnedAPPWidgetForPage:(id)a3 suggestions:(id)a4 homeScreenState:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v33 = a4;
  v9 = a5;
  v10 = __atxlog_handle_blending();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 config];
    *buf = 134217984;
    v45 = [v11 pageIndex];
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [assignPinnedAPP]: considering App Prediction Panels on page %lu", buf, 0xCu);
  }

  v29 = v8;
  [v8 pinnedAPPs];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v34)
  {
    v32 = *v40;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v40 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v39 + 1) + 8 * i);
        v14 = __atxlog_handle_blending();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v13 config];
          v15 = [v31 widgets];
          v16 = [v15 firstObject];
          v17 = [v16 widgetUniqueId];
          v18 = [v13 config];
          v19 = [v18 identifier];
          *buf = 138543618;
          v45 = v17;
          v46 = 2114;
          v47 = v19;
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, "  HSLS [assignPinnedAPP]: considering App Prediction Panel %{public}@ in stack %{public}@", buf, 0x16u);
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v20 = v33;
        v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v36;
          while (2)
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v36 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v35 + 1) + 8 * j);
              if (![(ATXHomeScreenLayoutSelector2 *)self _isSuggestionStillNeededForTopOfStack:v13])
              {
                v27 = __atxlog_handle_blending();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "    HSLS [assignPinnedAPP]: App Prediction Panel no longer needs suggestion", buf, 2u);
                }

                goto LABEL_27;
              }

              if ([(ATXHomeScreenLayoutSelector2 *)self _isSuggestionACandidate:v25 forStack:v13 dedupeAppSuggestionsByWidgets:0 ignoreDuplicatesInSGWidget:1 ignoreDuplicatesInPanels:0 homeScreenState:v9]&& [(ATXHomeScreenLayoutSelector2 *)self _hasEligiblePinnedWidgetStacksForAPPWidget:v25 forCandidateStack:v13])
              {
                v26 = __atxlog_handle_blending();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v45 = v25;
                  _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "    HSLS [assignPinnedAPP]: ASSIGNING suggestion %@", buf, 0xCu);
                }

                [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestion:v25 toTopOfStack:v13];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:
      }

      v34 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v34);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_assignWidgetForTopOfStack:(id)a3 suggestions:(id)a4 homeScreenState:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v35 = a4;
  v9 = a5;
  v10 = __atxlog_handle_blending();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 config];
    *buf = 134217984;
    v48 = [v11 pageIndex];
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [assignSmartRotate]: considering Smart Rotate on page %lu", buf, 0xCu);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = v8;
  obj = [v8 stacks];
  v12 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v43;
    v34 = *v43;
    do
    {
      v15 = 0;
      v36 = v13;
      do
      {
        if (*v43 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * v15);
        v17 = [v16 config];
        v18 = [v17 allowsSmartRotate];

        if (v18)
        {
          v19 = __atxlog_handle_blending();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v16 config];
            v21 = [v20 identifier];
            v22 = [v16 isStale];
            *buf = 138543618;
            v23 = @"NO";
            if (v22)
            {
              v23 = @"YES";
            }

            v48 = v21;
            v49 = 2112;
            v50 = v23;
            _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "  HSLS [assignSmartRotate]: considering Smart Rotate for stack %{public}@ (isStale == %@)", buf, 0x16u);
          }

          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v24 = v35;
          v25 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v39;
            while (2)
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v39 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v38 + 1) + 8 * i);
                if (![(ATXHomeScreenLayoutSelector2 *)self _isSuggestionStillNeededForTopOfStack:v16])
                {
                  v31 = __atxlog_handle_blending();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "    HSLS [assignSmartRotate]: stack no longer needs suggestion", buf, 2u);
                  }

                  goto LABEL_30;
                }

                if ([(ATXHomeScreenLayoutSelector2 *)self _isSuggestionACandidate:v29 forStack:v16 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1 homeScreenState:v9]&& [(ATXHomeScreenLayoutSelector2 *)self _isStackEligibleForSmartRotate:v29 stack:v16])
                {
                  v30 = __atxlog_handle_blending();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v48 = v29;
                    _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "    HSLS [assignSmartRotate]: ASSIGNING suggestion %@", buf, 0xCu);
                  }

                  [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestion:v29 toTopOfStack:v16];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }
          }

LABEL_30:

          v14 = v34;
          v13 = v36;
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v13);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_assignUnfilledSGWidgetForPage:(id)a3 suggestions:(id)a4 homeScreenState:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = __atxlog_handle_blending();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 config];
    *buf = 134217984;
    v53 = [v12 pageIndex];
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "HSLS [assignUnfilledSG]: considering user-added unfilled SG widgets on page %lu", buf, 0xCu);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v8 stacks];
  v32 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v32)
  {
    v31 = *v46;
    v13 = v38;
    do
    {
      v14 = 0;
      do
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v14;
        v15 = *(*(&v45 + 1) + 8 * v14);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v16 = [v15 suggestionsWidgetSuggestionsByWidgetUniqueId];
        v17 = [v16 allValues];

        v34 = v17;
        v36 = [v17 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v36)
        {
          v35 = *v42;
          do
          {
            v18 = 0;
            do
            {
              if (*v42 != v35)
              {
                objc_enumerationMutation(v34);
              }

              v19 = *(*(&v41 + 1) + 8 * v18);
              v20 = __atxlog_handle_blending();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                [v19 widget];
                v21 = v13;
                v22 = v10;
                v23 = v9;
                v25 = v24 = v8;
                [v25 widgetUniqueId];
                v27 = v26 = self;
                *buf = 138543362;
                v53 = v27;
                _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, "  HSLS [assignUnfilledSG]: considering SG widget %{public}@", buf, 0xCu);

                self = v26;
                v8 = v24;
                v9 = v23;
                v10 = v22;
                v13 = v21;
              }

              v37[0] = MEMORY[0x277D85DD0];
              v37[1] = 3221225472;
              v38[0] = __91__ATXHomeScreenLayoutSelector2__assignUnfilledSGWidgetForPage_suggestions_homeScreenState___block_invoke;
              v38[1] = &unk_2785995E8;
              v38[2] = v19;
              v38[3] = self;
              v39 = v10;
              v40 = v8;
              [v9 enumerateObjectsUsingBlock:v37];
              if (([v19 isLayoutComplete] & 1) == 0)
              {
                v28 = __atxlog_handle_blending();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  [ATXHomeScreenLayoutSelector2 _assignUnfilledSGWidgetForPage:v49 suggestions:v19 homeScreenState:?];
                }
              }

              ++v18;
            }

            while (v36 != v18);
            v36 = [v34 countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v36);
        }

        v14 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v32);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __91__ATXHomeScreenLayoutSelector2__assignUnfilledSGWidgetForPage_suggestions_homeScreenState___block_invoke(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (![a1[4] isLayoutComplete])
  {
    if (![a1[5] _shouldConsiderSuggestionForSuggestionsWidget:v6])
    {
      goto LABEL_34;
    }

    v13 = [v6 executableSpecification];
    v14 = [v13 executableType];

    if (v14 == 2)
    {
      v15 = [v6 atxActionExecutableObject];
      v7 = [v15 intent];

      if (v7 && [a1[6] containsWidgetForIntent:v7])
      {
        v8 = __atxlog_handle_blending();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138412290;
          v27 = v6;
          _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "    HSLS [assignUnfilledSG]: action suggestion not eligible because there is already a widget showing the same intent %@", &v26, 0xCu);
        }

        goto LABEL_5;
      }

      goto LABEL_26;
    }

    v16 = [v6 executableSpecification];
    v17 = [v16 executableType];

    if (v17 != 10)
    {
LABEL_27:
      if (![a1[7] isShowingDuplicatedContentForSuggestion:v6 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1])
      {
        v23 = a1[4];
        v24 = [v23 mainSuggestionInLayout];
        LODWORD(v23) = [v23 addSuggestion:v6 asMainSuggestion:v24 == 0];

        if (!v23)
        {
          goto LABEL_34;
        }

        v7 = __atxlog_handle_blending();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_6;
        }

        v8 = [a1[4] widget];
        v9 = [v8 widgetUniqueId];
        v26 = 138412546;
        v27 = v9;
        v28 = 2112;
        v29 = v6;
        v10 = "    HSLS [assignUnfilledSG]: ASSIGNED SW %@ with suggestion:\n%@";
        v11 = v7;
        v12 = 22;
        goto LABEL_4;
      }

      v7 = __atxlog_handle_blending();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v26 = 138412290;
      v27 = v6;
      v22 = "    HSLS [assignUnfilledSG]: suggestion not eligible due to duplicates on page %@";
LABEL_30:
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, v22, &v26, 0xCu);
      goto LABEL_6;
    }

    v18 = [v6 linkActionExecutableObject];
    if (!v18)
    {
      v7 = __atxlog_handle_blending();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      v26 = 138412290;
      v27 = v6;
      v22 = "    HSLS [assignUnfilledSG]: Link action suggestion not eligible because the action container couldn't be deserialized %@";
      goto LABEL_30;
    }

    v7 = v18;
    v19 = [v18 cachedAppIntent];
    if (v19)
    {
      if (![a1[6] containsWidgetForIntent:v19])
      {

LABEL_26:
        goto LABEL_27;
      }

      v20 = __atxlog_handle_blending();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v6;
        v21 = "    HSLS [assignUnfilledSG]: Link action suggestion not eligible because there is already a widget showing the same app intent %@";
LABEL_23:
        _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_DEFAULT, v21, &v26, 0xCu);
      }
    }

    else
    {
      v20 = __atxlog_handle_blending();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v6;
        v21 = "    HSLS [assignUnfilledSG]: Link action suggestion not eligible because cached app intent is nil %@";
        goto LABEL_23;
      }
    }

    goto LABEL_6;
  }

  *a4 = 1;
  v7 = __atxlog_handle_blending();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [a1[4] widget];
    v9 = [v8 widgetUniqueId];
    v26 = 138543362;
    v27 = v9;
    v10 = "    HSLS [assignUnfilledSG]: SG widget %{public}@ is layout-complete";
    v11 = v7;
    v12 = 12;
LABEL_4:
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, v10, &v26, v12);

LABEL_5:
  }

LABEL_6:

LABEL_34:
  v25 = *MEMORY[0x277D85DE8];
}

- (id)_suggestionsEligibleForSuggestedSGWidgetOnPages:(id)a3 amongSuggestions:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v6 = a4;
  v26 = objc_opt_new();
  v25 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v36;
    *&v8 = 138412290;
    v24 = v8;
    v27 = *v36;
    do
    {
      v11 = 0;
      v29 = v9;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        if (![(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForSuggestionsWidget:v12, v24])
        {
          goto LABEL_27;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v13 = v28;
        v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
        if (!v14)
        {
          goto LABEL_20;
        }

        v15 = v14;
        v16 = *v32;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            v19 = [v12 executableSpecification];
            if ([v19 executableType] == 1)
            {
              v20 = [v18 isSeldomVisited];

              if (v20)
              {
                if ([v18 suggestionsWidgetOnPageIsShowingDuplicatedContentForSuggestion:v12])
                {
                  goto LABEL_26;
                }

                continue;
              }
            }

            else
            {
            }

            if ([v18 isShowingDuplicatedContentForSuggestion:v12 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1])
            {
              goto LABEL_26;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
        }

        while (v15);
LABEL_20:

        v13 = [ATXSuggestionPreprocessor bundleIdAssociatedWithSuggestion:v12];
        if (!v13)
        {
          goto LABEL_23;
        }

        if (([v25 containsObject:v13] & 1) == 0)
        {
          [v25 addObject:v13];
LABEL_23:
          v21 = __atxlog_handle_blending();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v24;
            v40 = v12;
            _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: Found suggestion eligible for suggested SG %@", buf, 0xCu);
          }

          [v26 addObject:v12];
        }

LABEL_26:
        v10 = v27;
        v9 = v29;

LABEL_27:
        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v9);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v26;
}

- (void)_fillSuggestedSGWidgetIfLayoutNotComplete:(id)a3 withSuggestions:(id)a4 updatingUsedSuggestionIndexSet:(id)a5
{
  v7 = a3;
  v8 = a5;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __121__ATXHomeScreenLayoutSelector2__fillSuggestedSGWidgetIfLayoutNotComplete_withSuggestions_updatingUsedSuggestionIndexSet___block_invoke;
  v15 = &unk_2785995C0;
  v9 = v7;
  v16 = v9;
  v17 = v8;
  v10 = v8;
  [a4 enumerateObjectsUsingBlock:&v12];
  if (([v9 isLayoutComplete] & 1) == 0)
  {
    v11 = __atxlog_handle_blending();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXHomeScreenLayoutSelector2 _fillSuggestedSGWidgetIfLayoutNotComplete:v9 withSuggestions:? updatingUsedSuggestionIndexSet:?];
    }
  }
}

void __121__ATXHomeScreenLayoutSelector2__fillSuggestedSGWidgetIfLayoutNotComplete_withSuggestions_updatingUsedSuggestionIndexSet___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = (a1 + 32);
  if ([*(a1 + 32) isLayoutComplete])
  {
    *a4 = 1;
  }

  else if (([*(a1 + 40) containsIndex:a3] & 1) == 0)
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v8 widget];
      v11 = [v10 widgetUniqueId];
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "HSLS [fillIncompleteSuggestedSG]: ASSIGNING new suggestion to suggested SG %{public}@ %@", &v16, 0x16u);
    }

    v12 = *v8;
    v13 = [*v8 mainSuggestionInLayout];
    LODWORD(v12) = [v12 addSuggestion:v7 asMainSuggestion:v13 == 0];

    if (v12)
    {
      [*(a1 + 40) addIndex:a3];
    }

    else
    {
      v14 = __atxlog_handle_blending();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __121__ATXHomeScreenLayoutSelector2__fillSuggestedSGWidgetIfLayoutNotComplete_withSuggestions_updatingUsedSuggestionIndexSet___block_invoke_cold_1((a1 + 32));
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_assignExistingSuggestedSGWidgetsOnPages:(id)a3 withSuggestions:(id)a4 suggestionToRankingIndex:(id)a5
{
  v197 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v112 = a4;
  v120 = a5;
  v119 = objc_opt_new();
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v177 objects:v196 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v178;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v178 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v177 + 1) + 8 * i) config];
        [v119 appendFormat:@"%lu ", objc_msgSend(v14, "pageIndex")];
      }

      v11 = [v9 countByEnumeratingWithState:&v177 objects:v196 count:16];
    }

    while (v11);
  }

  v15 = __atxlog_handle_blending();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v185 = v119;
    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: considering previously suggested SG widgets on pages %{public}@", buf, 0xCu);
  }

  [(ATXHomeScreenLayoutSelector2 *)self _suggestionsEligibleForSuggestedSGWidgetOnPages:v9 amongSuggestions:v112];
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = v176 = 0u;
  v16 = [obj countByEnumeratingWithState:&v173 objects:v195 count:16];
  if (!v16)
  {
    goto LABEL_70;
  }

  v17 = v16;
  v139 = 0;
  v18 = *v174;
  do
  {
    for (j = 0; j != v17; ++j)
    {
      if (*v174 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = [*(*(&v173 + 1) + 8 * j) scoreSpecification];
      v21 = [v20 suggestedConfidenceCategory];
      thresholdConfidenceForSuggestedSG = self->_thresholdConfidenceForSuggestedSG;

      v23 = v139;
      if (v21 >= thresholdConfidenceForSuggestedSG)
      {
        v23 = v139 + 1;
      }

      v139 = v23;
    }

    v17 = [obj countByEnumeratingWithState:&v173 objects:v195 count:16];
  }

  while (v17);
  if (v139)
  {
    v24 = v9;
    v25 = [obj count];
    v127 = objc_opt_new();
    v125 = objc_opt_new();
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v113 = v24;
    v114 = v24;
    v136 = self;
    v116 = [v114 countByEnumeratingWithState:&v169 objects:v194 count:16];
    if (v116)
    {
      v134 = 0;
      v115 = *v170;
      v26 = *MEMORY[0x277CEBBA0];
      v132 = *MEMORY[0x277CEBBA0];
      do
      {
        v27 = 0;
        do
        {
          if (*v170 != v115)
          {
            objc_enumerationMutation(v114);
          }

          v118 = v27;
          v28 = *(*(&v169 + 1) + 8 * v27);
          if ([v28 isSeldomVisited])
          {
            v29 = __atxlog_handle_blending();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v28 config];
              v31 = [v30 pageIndex];
              *buf = 134217984;
              v185 = v31;
              _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: skipping page %lu because it's seldom visited", buf, 0xCu);
            }
          }

          else
          {
            v167 = 0u;
            v168 = 0u;
            v165 = 0u;
            v166 = 0u;
            v29 = [v28 stacks];
            v123 = [v29 countByEnumeratingWithState:&v165 objects:v193 count:16];
            if (v123)
            {
              v32 = *v166;
              v33 = off_278594000;
              v121 = *v166;
              v122 = v29;
              do
              {
                v34 = 0;
                do
                {
                  if (*v166 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v124 = v34;
                  v35 = *(*(&v165 + 1) + 8 * v34);
                  v36 = [v35 config];
                  v37 = [v36 allowsNewWidget];

                  if (v37)
                  {
                    v38 = v139 < 1;
                  }

                  else
                  {
                    v38 = 1;
                  }

                  if (!v38)
                  {
                    v163 = 0u;
                    v164 = 0u;
                    v161 = 0u;
                    v162 = 0u;
                    v39 = [v35 previousSuggestedWidgets];
                    v40 = [v39 countByEnumeratingWithState:&v161 objects:v192 count:16];
                    if (v40)
                    {
                      v41 = v40;
                      v130 = v35;
                      v42 = *v162;
                      v129 = v39;
                      do
                      {
                        v43 = 0;
                        v137 = v41;
                        do
                        {
                          if (*v162 != v42)
                          {
                            objc_enumerationMutation(v39);
                          }

                          v44 = *(*(&v161 + 1) + 8 * v43);
                          v45 = v33[266];
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            widgetDismissManager = self->_widgetDismissManager;
                            v47 = ATXSpecialWidgetKindSiriSuggestions();
                            LODWORD(widgetDismissManager) = [(ATXWidgetSuggestionDismissManager *)widgetDismissManager shouldBlockWidgetSuggestionBecauseOfPreviousDismiss:v26 kind:v47 intent:0];

                            if (widgetDismissManager)
                            {
                              v48 = __atxlog_handle_blending();
                              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&dword_2263AA000, v48, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: considered existing suggestions widget but the widget has been dismissed", buf, 2u);
                              }

                              v41 = v137;
                            }

                            else
                            {
                              v48 = v44;
                              if ([v48 layoutType]== 5)
                              {
                                v49 = 1;
                              }

                              else if ([v48 layoutType]== 9)
                              {
                                v49 = 2;
                              }

                              else
                              {
                                v49 = 4 * ([v48 layoutType]== 11);
                              }

                              v50 = __atxlog_handle_blending();
                              v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
                              if (v25 < v49 || v139 <= 0)
                              {
                                if (v51)
                                {
                                  v61 = [v48 widget];
                                  v62 = [v61 widgetUniqueId];
                                  *buf = 138544130;
                                  v185 = v62;
                                  v186 = 2048;
                                  v187 = v49;
                                  v188 = 2048;
                                  v189 = v25;
                                  v190 = 2048;
                                  v191 = v139;
                                  _os_log_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: not populating previously suggested SG %{public}@: numSuggestionsNeeded %lu, remaining numSuggestions %lu, remaining numSuggestionsAboveConfidenceThreshold %lu", buf, 0x2Au);

                                  self = v136;
                                }

                                v26 = v132;
                                v33 = off_278594000;
                              }

                              else
                              {
                                v131 = v25 - v49;
                                if (v51)
                                {
                                  v52 = [v48 widget];
                                  v53 = [v52 widgetUniqueId];
                                  *buf = 138544130;
                                  v185 = v53;
                                  v186 = 2048;
                                  v187 = v49;
                                  v188 = 2048;
                                  v189 = v25;
                                  v190 = 2048;
                                  v191 = v139;
                                  _os_log_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: creating placeholder for previously suggested SG %{public}@: numSuggestionsNeeded %lu, remaining numSuggestions %lu, remaining numSuggestionsAboveConfidenceThreshold %lu", buf, 0x2Au);

                                  self = v136;
                                }

                                v54 = [_ATXSuggestionsWidgetSuggestion alloc];
                                v55 = [v48 widget];
                                v50 = [(_ATXSuggestionsWidgetSuggestion *)v54 initWithSuggestionsWidget:v55 containingStack:v130 suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];

                                v56 = [v130 suggestionsWidgetSuggestionsByWidgetUniqueId];
                                v57 = [v48 widget];
                                v58 = [v57 widgetUniqueId];
                                [v56 setObject:v50 forKeyedSubscript:v58];

                                self = v136;
                                v59 = [v130 suggestedWidgets];
                                [v59 addObject:v50];

                                [v127 addObject:v50];
                                [v125 addObject:v48];
                                v26 = v132;
                                v134 += v49;
                                v60 = v139 - v49;
                                v33 = off_278594000;
                                v139 = v60;
                                v25 = v131;
                                v39 = v129;
                              }

                              v41 = v137;
                            }
                          }

                          ++v43;
                        }

                        while (v41 != v43);
                        v41 = [v39 countByEnumeratingWithState:&v161 objects:v192 count:16];
                      }

                      while (v41);
                    }

                    v32 = v121;
                    v29 = v122;
                  }

                  v34 = v124 + 1;
                }

                while (v124 + 1 != v123);
                v123 = [v29 countByEnumeratingWithState:&v165 objects:v193 count:16];
              }

              while (v123);
            }
          }

          v27 = v118 + 1;
        }

        while (v118 + 1 != v116);
        v116 = [v114 countByEnumeratingWithState:&v169 objects:v194 count:16];
      }

      while (v116);
    }

    else
    {
      v134 = 0;
    }

    v66 = objc_opt_new();
    v156[0] = MEMORY[0x277D85DD0];
    v156[1] = 3221225472;
    v156[2] = __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke;
    v156[3] = &unk_278599638;
    v126 = v125;
    v157 = v126;
    v67 = obj;
    v158 = v67;
    v160 = v134;
    v68 = v66;
    v159 = v68;
    [v127 enumerateObjectsUsingBlock:v156];
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v69 = v127;
    v70 = [v69 countByEnumeratingWithState:&v152 objects:v183 count:16];
    v9 = v113;
    if (v70)
    {
      v71 = v70;
      v72 = *v153;
      do
      {
        for (k = 0; k != v71; ++k)
        {
          if (*v153 != v72)
          {
            objc_enumerationMutation(v69);
          }

          [(ATXHomeScreenLayoutSelector2 *)self _fillSuggestedSGWidgetIfLayoutNotComplete:*(*(&v152 + 1) + 8 * k) withSuggestions:v67 updatingUsedSuggestionIndexSet:v68];
        }

        v71 = [v69 countByEnumeratingWithState:&v152 objects:v183 count:16];
      }

      while (v71);
    }

    v128 = v67;

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v63 = v69;
    v140 = [v63 countByEnumeratingWithState:&v148 objects:v182 count:16];
    if (v140)
    {
      v74 = *v149;
      v138 = v68;
      v133 = *v149;
      v135 = v63;
      do
      {
        for (m = 0; m != v140; ++m)
        {
          if (*v149 != v74)
          {
            objc_enumerationMutation(v63);
          }

          v76 = *(*(&v148 + 1) + 8 * m);
          if ([v76 isLayoutComplete])
          {
            v77 = [v76 stack];
            v78 = [v77 config];
            v79 = [v78 allowsSmartRotate];

            if (v79)
            {
              v146 = 0u;
              v147 = 0u;
              v144 = 0u;
              v145 = 0u;
              v80 = [v76 suggestionLayout];
              v81 = [v80 allSuggestionsInLayout];

              v82 = [v81 countByEnumeratingWithState:&v144 objects:v181 count:16];
              if (v82)
              {
                v83 = v82;
                v84 = 0;
                v85 = *v145;
                do
                {
                  for (n = 0; n != v83; ++n)
                  {
                    if (*v145 != v85)
                    {
                      objc_enumerationMutation(v81);
                    }

                    v87 = *(*(&v144 + 1) + 8 * n);
                    v88 = [v87 scoreSpecification];
                    v89 = [v88 suggestedConfidenceCategory];

                    if (v89 > v84)
                    {
                      v90 = [v87 scoreSpecification];
                      v84 = [v90 suggestedConfidenceCategory];

                      v91 = [v120 objectForKeyedSubscript:v87];
                      [v91 unsignedIntegerValue];
                    }
                  }

                  v83 = [v81 countByEnumeratingWithState:&v144 objects:v181 count:16];
                }

                while (v83);
              }

              else
              {
                v84 = 0;
              }

              if (v84 < v136->_thresholdConfidenceForSuggestedSG)
              {
                v92 = __atxlog_handle_blending();
                v9 = v113;
                if (os_log_type_enabled(v92, OS_LOG_TYPE_FAULT))
                {
                  v104 = [v76 widget];
                  v105 = [v104 widgetUniqueId];
                  v106 = v136->_thresholdConfidenceForSuggestedSG;
                  v107 = [v76 suggestionLayout];
                  *buf = 138543874;
                  v185 = v105;
                  v186 = 2048;
                  v187 = v106;
                  v188 = 2112;
                  v189 = v107;
                  _os_log_fault_impl(&dword_2263AA000, v92, OS_LOG_TYPE_FAULT, "HSLS [assignExistingSuggestedSG]: newly created layout for previously suggested SG %{public}@ does not have >=1 suggestion with confidence >= %ld: %@", buf, 0x20u);
                }

                v68 = v138;
                v63 = v135;
                goto LABEL_111;
              }

              v93 = [v76 stack];
              v94 = [v93 topOfStackSuggestion];
              v92 = [v94 mainSuggestionInLayout];

              v9 = v113;
              if (v92)
              {
                v95 = [v120 objectForKeyedSubscript:v92];
                v96 = [v95 unsignedIntegerValue];

                v68 = v138;
                v63 = v135;
                if (v96)
                {
                  v97 = __atxlog_handle_blending();
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                  {
                    v98 = [v76 widget];
                    v99 = [v98 widgetUniqueId];
                    *buf = 138543618;
                    v185 = v99;
                    v186 = 2112;
                    v187 = v92;
                    v100 = v97;
                    v101 = "HSLS [assignExistingSuggestedSG]: Smart Rotate to existing suggested SG %{public}@, overriding inferior topOfStackSuggestion %@";
                    v102 = 22;
                    goto LABEL_109;
                  }

                  goto LABEL_110;
                }
              }

              else
              {
                v97 = __atxlog_handle_blending();
                v68 = v138;
                v63 = v135;
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                {
                  v98 = [v76 widget];
                  v99 = [v98 widgetUniqueId];
                  *buf = 138543362;
                  v185 = v99;
                  v100 = v97;
                  v101 = "HSLS [assignExistingSuggestedSG]: Smart Rotate to existing suggested SG %{public}@, because there is no topOfStackSuggestion for the stack yet";
                  v102 = 12;
LABEL_109:
                  _os_log_impl(&dword_2263AA000, v100, OS_LOG_TYPE_DEFAULT, v101, buf, v102);
                }

LABEL_110:

                v103 = [v76 stack];
                [v103 setTopOfStackSuggestion:v76];
              }

LABEL_111:
              v74 = v133;

              continue;
            }
          }
        }

        v140 = [v63 countByEnumeratingWithState:&v148 objects:v182 count:16];
      }

      while (v140);
    }

    v108 = [v128 objectsAtIndexes:v68];
    [v68 removeAllIndexes];
    v141[0] = MEMORY[0x277D85DD0];
    v141[1] = 3221225472;
    v141[2] = __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_51;
    v141[3] = &unk_2785995C0;
    v142 = v108;
    v143 = v68;
    v109 = v68;
    v110 = v108;
    v65 = v112;
    [v112 enumerateObjectsUsingBlock:v141];
    [v112 removeObjectsAtIndexes:v109];
  }

  else
  {
LABEL_70:
    v63 = __atxlog_handle_blending();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = self->_thresholdConfidenceForSuggestedSG;
      *buf = 134217984;
      v185 = v64;
      _os_log_impl(&dword_2263AA000, v63, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: not populating any previously suggested SG because there is no suggestions above confidence threshold %ld", buf, 0xCu);
    }

    v65 = v112;
  }

  v111 = *MEMORY[0x277D85DE8];
}

void __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_2;
  v11[3] = &unk_278599610;
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v15 = *(a1 + 56);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v9 = v6;
  v10 = v5;
  [v8 enumerateObjectsUsingBlock:v11];
}

void __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (*(a1 + 56) <= a3 || (v8 = (a1 + 32), [*(a1 + 32) isLayoutComplete]))
  {
    *a4 = 1;
  }

  else if (([*(a1 + 40) containsIndex:a3] & 1) == 0 && objc_msgSend(*(a1 + 48), "containsIdenticalContentOfSuggestion:", v7))
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*v8 widget];
      v12 = [v11 widgetUniqueId];
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: ASSIGNING previously existing suggestion to suggested SG %{public}@ %@", &v16, 0x16u);
    }

    v13 = *v8;
    v14 = [*v8 mainSuggestionInLayout];
    LODWORD(v13) = [v13 addSuggestion:v7 asMainSuggestion:v14 == 0];

    if (v13)
    {
      [*(a1 + 40) addIndex:a3];
    }

    else
    {
      v15 = __atxlog_handle_blending();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_2_cold_1((a1 + 32));
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_51(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (*(*(&v13 + 1) + 8 * i) == v5)
        {
          [*(a1 + 40) addIndex:{a3, v13}];
          v11 = __atxlog_handle_blending();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v18 = v5;
            _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedSG]: removing used suggestion %@", buf, 0xCu);
          }

          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_assignNewSuggestedWidgetsForPages:(id)a3 rankedSuggestions:(id)a4 suggestionToRankingIndex:(id)a5 homeScreenState:(id)a6
{
  v227 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v145 = a4;
  v11 = a5;
  v162 = a6;
  v12 = objc_opt_new();
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  v212 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v209 objects:v226 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v210;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v210 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v209 + 1) + 8 * i) config];
        [v12 appendFormat:@"%lu ", objc_msgSend(v18, "pageIndex")];
      }

      v15 = [v13 countByEnumeratingWithState:&v209 objects:v226 count:16];
    }

    while (v15);
  }

  v19 = __atxlog_handle_blending();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v217 = v12;
    _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: considering making new Widget Suggestion for pages %{public}@", buf, 0xCu);
  }

  v207[0] = MEMORY[0x277D85DD0];
  v207[1] = 3221225472;
  v207[2] = __126__ATXHomeScreenLayoutSelector2__assignNewSuggestedWidgetsForPages_rankedSuggestions_suggestionToRankingIndex_homeScreenState___block_invoke;
  v207[3] = &unk_278599660;
  v207[4] = self;
  v157 = v13;
  v208 = v157;
  v20 = [v145 _pas_filteredArrayWithTest:v207];
  if (![v20 count])
  {
    v125 = v20;
    v126 = __atxlog_handle_blending();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v126, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: not making any new Widget Suggestion because there isn't any eligible suggestion", buf, 2u);
    }

    goto LABEL_173;
  }

  v21 = *MEMORY[0x277CEBD38];
  buf[0] = 0;
  applicationID = *MEMORY[0x277CEBD00];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v21, *MEMORY[0x277CEBD00], buf);
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  v206 = 0u;
  v143 = v20;
  obj = v20;
  v160 = v11;
  v144 = v12;
  v153 = [obj countByEnumeratingWithState:&v203 objects:v225 count:16];
  if (!v153)
  {
    goto LABEL_147;
  }

  v152 = *v204;
LABEL_13:
  v22 = 0;
LABEL_14:
  if (*v204 != v152)
  {
    objc_enumerationMutation(obj);
  }

  v23 = *(*(&v203 + 1) + 8 * v22);
  v24 = [v23 executableSpecification];
  v25 = [v24 executableType];

  if (v25 != 3)
  {
    v27 = 0;
    goto LABEL_22;
  }

  v26 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:v23];
  v27 = v26;
  if (!v26)
  {
LABEL_22:
    v29 = 0;
    goto LABEL_26;
  }

  v28 = [v26 widgetBundleIdentifier];
  if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
  {
    buf[0] = 0;
    if (CFPreferencesGetAppBooleanValue(@"ATXWidgetKitDeveloperModeSkipEntitlementCheck", applicationID, buf))
    {
      v29 = 1;
    }

    else
    {
      v29 = [MEMORY[0x277CEB3B0] isDebuggingAllowedForExtensionBundleId:v28];
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_26:
  if (AppBooleanValue || (v29 & 1) != 0 || self->_numSuggestedWidgetInPastDay < 0x14)
  {
    v30 = __atxlog_handle_blending();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v217 = v23;
      _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: considering making new Widget Suggestion with suggestion %@", buf, 0xCu);
    }

    v31 = [v23 executableSpecification];
    v32 = [v31 executableType];

    v33 = v32 != 3 || v27 == 0;
    v161 = v23;
    if (v33)
    {
      v175 = 0;
      goto LABEL_57;
    }

    v158 = v22;
    v201 = 0u;
    v202 = 0u;
    v199 = 0u;
    v200 = 0u;
    v34 = v157;
    v35 = [v34 countByEnumeratingWithState:&v199 objects:v224 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v200;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v200 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v199 + 1) + 8 * j);
          v40 = v27;
          v41 = [v27 appBundleIdentifier];
          v42 = [v39 containsSuggestedWidgetForApp:v41];

          if (v42)
          {
            v45 = __atxlog_handle_blending();
            v27 = v40;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = [v40 appBundleIdentifier];
              v47 = [v39 config];
              v48 = [v47 pageIndex];
              *buf = 138412546;
              v217 = v46;
              v218 = 2048;
              v219 = v48;
              _os_log_impl(&dword_2263AA000, v45, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: Found existing suggested widget under the same bundleId %@ on page %lu, so skipping this suggestion", buf, 0x16u);
            }

            v22 = v158;
            goto LABEL_131;
          }

          v27 = v40;
        }

        v36 = [v34 countByEnumeratingWithState:&v199 objects:v224 count:16];
      }

      while (v36);
    }

    v43 = [v27 widgetBundleIdentifier];
    v44 = ATXBundleIdIsSpecialWidgetExtensionBundleId() | v29;

    if (v44)
    {
      v175 = 0;
      v22 = v158;
LABEL_56:
      v23 = v161;
      goto LABEL_57;
    }

    v22 = v158;
    if (self->_shouldLimitWidgetSuggestionPowerCost)
    {
      v34 = __atxlog_handle_blending();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_131;
      }

      v49 = [v27 widgetBundleIdentifier];
      *buf = 138412290;
      v217 = v49;
      v50 = v34;
      v51 = "HSLS [assignNewWidgetSuggestion]: Not considering making new Widget Suggestion for %@ to save power in the first week after Sky upgrade.";
    }

    else
    {
      if (AppBooleanValue)
      {
        v175 = 1;
        goto LABEL_56;
      }

      v23 = v161;
      if (self->_numWidgetReloadForSuggestionInPastDay < 0x14)
      {
        v175 = 1;
LABEL_57:
        v52 = [v160 objectForKeyedSubscript:v23];
        v163 = [v52 unsignedIntegerValue];

        v171 = [(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForSuggestionsWidget:v23];
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        v198 = 0u;
        v53 = v157;
        v54 = [v53 countByEnumeratingWithState:&v195 objects:v223 count:16];
        if (!v54)
        {

          v168 = 0;
          goto LABEL_127;
        }

        v55 = v54;
        v168 = 0;
        v164 = 0;
        v56 = *v196;
        v150 = v53;
        v159 = v22;
        v154 = v27;
        v147 = *v196;
LABEL_59:
        v57 = 0;
        v148 = v55;
        while (1)
        {
          if (*v196 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v195 + 1) + 8 * v57);
          if (v171 && [*(*(&v195 + 1) + 8 * v57) containsSGWidget])
          {
            v59 = __atxlog_handle_blending();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = [v58 config];
              v61 = [v60 pageIndex];
              *buf = 134218242;
              v217 = v61;
              v218 = 2112;
              v219 = v23;
              _os_log_impl(&dword_2263AA000, v59, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: page %lu is not eligible to surface SG widget suggestion as Widget Suggestion because it already contains a pinned or suggested SG widget: %@", buf, 0x16u);
            }
          }

          else
          {
            v151 = v57;
            v193 = 0u;
            v194 = 0u;
            v191 = 0u;
            v192 = 0u;
            v173 = v58;
            v59 = [v58 stacks];
            v62 = [v59 countByEnumeratingWithState:&v191 objects:v222 count:16];
            if (v62)
            {
              v63 = v62;
              v177 = *v192;
              v64 = v160;
              v166 = v59;
              while (2)
              {
                v65 = 0;
LABEL_69:
                if (*v192 != v177)
                {
                  objc_enumerationMutation(v59);
                }

                v34 = *(*(&v191 + 1) + 8 * v65);
                if (![(ATXHomeScreenLayoutSelector2 *)self _isStack:v34 eligibleToShowSuggestionViaWidgetSuggestion:v23])
                {
                  v70 = __atxlog_handle_blending();
                  if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_103;
                  }

                  v71 = [v34 config];
                  v72 = [v71 identifier];
                  v73 = [v173 config];
                  v74 = [v73 pageIndex];
                  *buf = 138543874;
                  v217 = v72;
                  v218 = 2048;
                  v219 = v74;
                  v220 = 2112;
                  v221 = v23;
                  v75 = v70;
                  v76 = "HSLS [assignNewWidgetSuggestion]: stack %{public}@ on page %lu is not eligible to surface suggestion as Widget Suggestion: %@";
                  goto LABEL_79;
                }

                if (v175)
                {
                  v66 = [v34 config];
                  v67 = [v66 identifier];
                  v68 = [(ATXHomeScreenLayoutSelector2 *)self _stackHasRemainingReloadBudgetForWidgetSuggestion:v67 homeScreenState:v162];

                  if (!v68)
                  {
                    v70 = __atxlog_handle_blending();
                    if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_103;
                    }

                    v71 = [v34 config];
                    v72 = [v71 identifier];
                    v73 = [v173 config];
                    v86 = [v73 pageIndex];
                    *buf = 138543874;
                    v217 = v72;
                    v218 = 2048;
                    v219 = v86;
                    v220 = 2112;
                    v221 = v23;
                    v75 = v70;
                    v76 = "HSLS [assignNewWidgetSuggestion]: stack %{public}@ on page %lu is not eligible to surface Widget Suggestion because it has depleted reload budget: %@";
LABEL_79:
                    _os_log_impl(&dword_2263AA000, v75, OS_LOG_TYPE_DEFAULT, v76, buf, 0x20u);

LABEL_102:
                    goto LABEL_103;
                  }
                }

                v69 = [v34 topOfStackSuggestion];

                if (v69)
                {
                  v70 = [v34 topOfStackSuggestion];
                  if (!v70)
                  {
                    goto LABEL_113;
                  }
                }

                else
                {
                  v77 = [v34 suggestedWidgets];
                  v78 = [v77 count];

                  if (!v78 || (-[NSObject suggestedWidgets](v34, "suggestedWidgets"), v79 = objc_claimAutoreleasedReturnValue(), [v79 firstObject], v70 = objc_claimAutoreleasedReturnValue(), v79, !v70))
                  {
LABEL_113:
                    v106 = v34;

                    v80 = __atxlog_handle_blending();
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                    {
                      v107 = [v106 config];
                      v108 = [v107 identifier];
                      v109 = [v173 config];
                      v110 = [v109 pageIndex];
                      *buf = 138543618;
                      v217 = v108;
                      v218 = 2048;
                      v219 = v110;
                      _os_log_impl(&dword_2263AA000, v80, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: found target stack %{public}@ on page %lu -- stack does not yet have an existingSuggestion", buf, 0x16u);

                      v59 = v166;
                    }

                    v105 = 1;
                    goto LABEL_116;
                  }
                }

                if (!v171 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
LABEL_92:
                  v87 = [v70 mainSuggestionInLayout];
                  v88 = [v64 objectForKeyedSubscript:v87];
                  v89 = [v88 unsignedIntegerValue];

                  if (v89 >= v163)
                  {
                    if (v164)
                    {
                      v95 = [v168 mainSuggestionInLayout];
                      v96 = [v64 objectForKeyedSubscript:v95];
                      v97 = [v96 unsignedIntegerValue];

                      if (v89 <= v97)
                      {
                        v23 = v161;
                        v59 = v166;
                        goto LABEL_103;
                      }

                      v98 = __atxlog_handle_blending();
                      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                      {
                        v156 = [v34 config];
                        v99 = [v156 identifier];
                        v100 = [v173 config];
                        v101 = [v100 pageIndex];
                        v102 = [v70 suggestionLayout];
                        *buf = 138543874;
                        v217 = v99;
                        v218 = 2048;
                        v219 = v101;
                        v64 = v160;
                        v220 = 2112;
                        v221 = v102;
                        _os_log_impl(&dword_2263AA000, v98, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: found a better target stack %{public}@ on page %lu with inferior existingSuggestion %@", buf, 0x20u);
                      }

                      v103 = v34;
                      v71 = v168;
                      v168 = v70;
                      v164 = v103;
                      v23 = v161;
                    }

                    else
                    {
                      v164 = v34;
                      v71 = v168;
                      v168 = v70;
                    }
                  }

                  else
                  {
                    v71 = __atxlog_handle_blending();
                    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                    {
                      v90 = [v34 config];
                      v91 = [v90 identifier];
                      v92 = [v173 config];
                      v93 = [v92 pageIndex];
                      v94 = [v70 suggestionLayout];
                      *buf = 138543874;
                      v217 = v91;
                      v218 = 2048;
                      v219 = v93;
                      v64 = v160;
                      v220 = 2112;
                      v221 = v94;
                      _os_log_impl(&dword_2263AA000, v71, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: can't assign to stack %{public}@ on page %lu -- superior existingSuggestion %@", buf, 0x20u);

                      v23 = v161;
                    }
                  }

                  v59 = v166;
                  goto LABEL_102;
                }

                v80 = v70;
                if ([v80 isLayoutComplete])
                {
                  v81 = __atxlog_handle_blending();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                  {
                    v82 = [v34 config];
                    v83 = [v82 identifier];
                    v84 = [v173 config];
                    v85 = [v84 pageIndex];
                    *buf = 138543618;
                    v217 = v83;
                    v218 = 2048;
                    v219 = v85;
                    _os_log_impl(&dword_2263AA000, v81, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: stack %{public}@ on page %lu is not eligible to surface suggestion because it already contains an existing suggested SG widget with a complete layout.", buf, 0x16u);

                    v59 = v166;
                  }

                  v70 = v80;
LABEL_103:

                  if (v63 == ++v65)
                  {
                    v104 = [v59 countByEnumeratingWithState:&v191 objects:v222 count:16];
                    v63 = v104;
                    if (!v104)
                    {
                      v27 = v154;
                      v53 = v150;
                      v56 = v147;
                      v55 = v148;
                      goto LABEL_109;
                    }

                    continue;
                  }

                  goto LABEL_69;
                }

                break;
              }

              if (![v80 canAddSuggestion:v23])
              {

                goto LABEL_92;
              }

              v118 = v34;

              v119 = __atxlog_handle_blending();
              if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
              {
                v120 = [v118 config];
                v121 = [v120 identifier];
                v122 = [v173 config];
                v123 = [v122 pageIndex];
                *buf = 138543618;
                v217 = v121;
                v218 = 2048;
                v219 = v123;
                _os_log_impl(&dword_2263AA000, v119, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: found target stack %{public}@ on page %lu -- existingSuggestion is SG widget with empty slot", buf, 0x16u);

                v59 = v166;
              }

              v105 = 0;
              v168 = v80;
LABEL_116:
              v27 = v154;

LABEL_117:
              if (v34)
              {
                v111 = __atxlog_handle_blending();
                if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                {
                  v112 = [v34 config];
                  v113 = [v112 identifier];
                  v114 = [v34 page];
                  v115 = [v114 config];
                  v116 = [v115 pageIndex];
                  *buf = 138543874;
                  v217 = v113;
                  v218 = 2048;
                  v219 = v116;
                  v220 = 2112;
                  v221 = v23;
                  _os_log_impl(&dword_2263AA000, v111, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: ASSIGNING suggestion to target stack %{public}@ on page %lu as new Widget Suggestion: %@", buf, 0x20u);
                }

                [(ATXHomeScreenLayoutSelector2 *)self _assignSuggestion:v23 toTopOfStack:v34];
                if (v105)
                {
                  ++self->_numSuggestedWidgetInPastDay;
                }

                if (v175)
                {
                  ++self->_numWidgetReloadForSuggestionInPastDay;
                }

                v22 = v159;
                goto LABEL_130;
              }

              v22 = v159;
LABEL_127:
              v117 = __atxlog_handle_blending();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v217 = v23;
                _os_log_impl(&dword_2263AA000, v117, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: Unable to find suitable target stack for suggestion %@", buf, 0xCu);
              }

              v34 = 0;
LABEL_130:

LABEL_131:
              if (++v22 == v153)
              {
                v124 = [obj countByEnumeratingWithState:&v203 objects:v225 count:16];
                v153 = v124;
                if (!v124)
                {
                  goto LABEL_147;
                }

                goto LABEL_13;
              }

              goto LABEL_14;
            }

            v27 = v154;
LABEL_109:
            v57 = v151;
          }

          if (++v57 == v55)
          {
            v55 = [v53 countByEnumeratingWithState:&v195 objects:v223 count:16];
            if (!v55)
            {
              v105 = 1;
              v34 = v164;
              goto LABEL_117;
            }

            goto LABEL_59;
          }
        }
      }

      v34 = __atxlog_handle_blending();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_131;
      }

      v49 = [v27 widgetBundleIdentifier];
      *buf = 138412290;
      v217 = v49;
      v50 = v34;
      v51 = "HSLS [assignNewWidgetSuggestion]: Not considering making new Widget Suggestion for %@, because we have reached our reload budget.";
    }

    _os_log_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEFAULT, v51, buf, 0xCu);

    goto LABEL_131;
  }

  v127 = __atxlog_handle_blending();
  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v127, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: Not considering making new Widget Suggestion, because we have reached our budget.", buf, 2u);
  }

LABEL_147:
  v126 = [(ATXHomeScreenLayoutSelector2 *)self _suggestionsEligibleForSuggestedSGWidgetOnPages:v157 amongSuggestions:v145];
  v128 = objc_opt_new();
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v165 = v157;
  v169 = [v165 countByEnumeratingWithState:&v187 objects:v215 count:16];
  if (v169)
  {
    v167 = *v188;
    do
    {
      v129 = 0;
      do
      {
        if (*v188 != v167)
        {
          objc_enumerationMutation(v165);
        }

        v170 = v129;
        v130 = *(*(&v187 + 1) + 8 * v129);
        v183 = 0u;
        v184 = 0u;
        v185 = 0u;
        v186 = 0u;
        v172 = [v130 stacks];
        v176 = [v172 countByEnumeratingWithState:&v183 objects:v214 count:16];
        if (v176)
        {
          v174 = *v184;
          do
          {
            v131 = 0;
            do
            {
              if (*v184 != v174)
              {
                objc_enumerationMutation(v172);
              }

              v178 = v131;
              v132 = *(*(&v183 + 1) + 8 * v131);
              v179 = 0u;
              v180 = 0u;
              v181 = 0u;
              v182 = 0u;
              v133 = [v132 suggestionsWidgetSuggestionsByWidgetUniqueId];
              v134 = [v133 allValues];

              v135 = [v134 countByEnumeratingWithState:&v179 objects:v213 count:16];
              if (v135)
              {
                v136 = v135;
                v137 = *v180;
                do
                {
                  for (k = 0; k != v136; ++k)
                  {
                    if (*v180 != v137)
                    {
                      objc_enumerationMutation(v134);
                    }

                    v139 = *(*(&v179 + 1) + 8 * k);
                    v140 = [v139 widget];
                    if ([v140 isSuggestedWidget])
                    {
                      v141 = [v139 isLayoutComplete];

                      if ((v141 & 1) == 0)
                      {
                        [(ATXHomeScreenLayoutSelector2 *)self _fillSuggestedSGWidgetIfLayoutNotComplete:v139 withSuggestions:v126 updatingUsedSuggestionIndexSet:v128];
                      }
                    }

                    else
                    {
                    }
                  }

                  v136 = [v134 countByEnumeratingWithState:&v179 objects:v213 count:16];
                }

                while (v136);
              }

              v131 = v178 + 1;
            }

            while (v178 + 1 != v176);
            v176 = [v172 countByEnumeratingWithState:&v183 objects:v214 count:16];
          }

          while (v176);
        }

        v129 = v170 + 1;
      }

      while (v170 + 1 != v169);
      v169 = [v165 countByEnumeratingWithState:&v187 objects:v215 count:16];
    }

    while (v169);
  }

  v11 = v160;
  v125 = v143;
  v12 = v144;
LABEL_173:

  v142 = *MEMORY[0x277D85DE8];
}

uint64_t __126__ATXHomeScreenLayoutSelector2__assignNewSuggestedWidgetsForPages_rankedSuggestions_suggestionToRankingIndex_homeScreenState___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _hasEligibleWidgetSuggestionsStacksForSuggestion:v3 onPages:*(a1 + 40) ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1];
  if (v4)
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "HSLS [assignNewWidgetSuggestion]: Found suggestion eligible for making new Widget Suggestion %@", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)_stackHasRemainingReloadBudgetForWidgetSuggestion:(id)a3 homeScreenState:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_31;
  }

  if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
  {
    v8 = 1;
    goto LABEL_34;
  }

  v9 = [(ATXHomeScreenLayoutSelector2 *)self widgetSuggestionReloadBudgetByStackId];

  if (v9)
  {
    goto LABEL_5;
  }

  if ([(ATXHomeScreenLayoutSelector2 *)self hasAskedChronoAboutReloadBudget])
  {
    goto LABEL_31;
  }

  v33 = self;
  v35 = v6;
  v12 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v34 = v7;
  obj = [v7 sortedPagesByUserLastVisit];
  v38 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v38)
  {
    goto LABEL_26;
  }

  v37 = *v47;
  do
  {
    v13 = 0;
    do
    {
      if (*v47 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v39 = v13;
      v14 = *(*(&v46 + 1) + 8 * v13);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v15 = [v14 stacks];
      v16 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v43;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v43 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v42 + 1) + 8 * i);
            v21 = [v20 config];
            if ([v21 allowsNewWidget])
            {
              v22 = [v20 config];
              v23 = [v22 widgets];
              v24 = [v23 count];

              if (v24 < 2)
              {
                continue;
              }

              v21 = [v20 config];
              v25 = [v21 identifier];
              [v12 addObject:v25];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v17);
      }

      v13 = v39 + 1;
    }

    while (v39 + 1 != v38);
    v38 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v38);
LABEL_26:

  v26 = dispatch_semaphore_create(0);
  self = v33;
  chronoService = v33->_chronoService;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __98__ATXHomeScreenLayoutSelector2__stackHasRemainingReloadBudgetForWidgetSuggestion_homeScreenState___block_invoke;
  v40[3] = &unk_278599688;
  v40[4] = v33;
  v28 = v26;
  v41 = v28;
  [(CHSProactiveService *)chronoService suggestionBudgetsForStackIdentifiers:v12 completion:v40];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v28 timeoutSeconds:2.0] == 1)
  {
    v29 = __atxlog_handle_blending();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLayoutSelector2 _stackHasRemainingReloadBudgetForWidgetSuggestion:homeScreenState:];
    }
  }

  [(ATXHomeScreenLayoutSelector2 *)v33 setHasAskedChronoAboutReloadBudget:1];
  v30 = [(ATXHomeScreenLayoutSelector2 *)v33 widgetSuggestionReloadBudgetByStackId];

  v7 = v34;
  v6 = v35;
  if (!v30)
  {
LABEL_31:
    v8 = 0;
    goto LABEL_34;
  }

LABEL_5:
  v10 = [(ATXHomeScreenLayoutSelector2 *)self widgetSuggestionReloadBudgetByStackId];
  v11 = [v10 objectForKeyedSubscript:v6];

  if (v11)
  {
    v8 = [v11 integerValue] > 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_34:
  v31 = *MEMORY[0x277D85DE8];
  return v8;
}

void __98__ATXHomeScreenLayoutSelector2__stackHasRemainingReloadBudgetForWidgetSuggestion_homeScreenState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __98__ATXHomeScreenLayoutSelector2__stackHasRemainingReloadBudgetForWidgetSuggestion_homeScreenState___block_invoke_cold_1();
    }
  }

  v8 = __atxlog_handle_blending();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
  }

  [*(a1 + 32) setWidgetSuggestionReloadBudgetByStackId:v5];
  dispatch_semaphore_signal(*(a1 + 40));

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions:(id)a3 suggestionToRankingIndex:(id)a4 homeScreenState:(id)a5
{
  v113 = *MEMORY[0x277D85DE8];
  v81 = a4;
  v8 = a5;
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __144__ATXHomeScreenLayoutSelector2__updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions_suggestionToRankingIndex_homeScreenState___block_invoke;
  v102[3] = &unk_2785996B0;
  v9 = v8;
  v103 = v9;
  v68 = [a3 _pas_filteredArrayWithTest:v102];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v63 = v9;
  obj = [v9 sortedPagesByUserLastVisit];
  v66 = [obj countByEnumeratingWithState:&v98 objects:v112 count:16];
  if (v66)
  {
    v65 = *v99;
    v78 = self;
    do
    {
      v10 = 0;
      do
      {
        if (*v99 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v10;
        v11 = *(*(&v98 + 1) + 8 * v10);
        v12 = [(ATXHomeScreenLayoutSelector2 *)self _suggestionsWidgetSuggestionsByPriorityOnPage:v11];
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v70 = v12;
        v71 = [v12 countByEnumeratingWithState:&v94 objects:v111 count:16];
        if (v71)
        {
          v13 = *v95;
          v74 = v11;
          v69 = *v95;
          do
          {
            v14 = 0;
            do
            {
              if (*v95 != v13)
              {
                objc_enumerationMutation(v70);
              }

              v72 = v14;
              v15 = *(*(&v94 + 1) + 8 * v14);
              v16 = [v15 widget];
              v17 = [v16 isSuggestedWidget];

              if ((v17 & 1) == 0)
              {
                v73 = [v15 stack];
                v90 = 0u;
                v91 = 0u;
                v92 = 0u;
                v93 = 0u;
                v18 = v68;
                v19 = [v18 countByEnumeratingWithState:&v90 objects:v110 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v91;
                  v75 = *v91;
                  v76 = v18;
                  while (2)
                  {
                    v22 = 0;
                    v77 = v20;
                    do
                    {
                      if (*v91 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v90 + 1) + 8 * v22);
                      if (-[ATXHomeScreenLayoutSelector2 _shouldConsiderSuggestionForSuggestionsWidget:](self, "_shouldConsiderSuggestionForSuggestionsWidget:", v23) && ([v11 isShowingDuplicatedContentForSuggestion:v23 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:1] & 1) == 0)
                      {
                        v80 = v23;
                        if ([v15 isLayoutComplete])
                        {
                          v79 = v22;
                          v24 = v15;
                          v25 = [v15 suggestionLayout];
                          v26 = [v25 allSuggestionsInLayout];

                          v27 = [v26 firstObject];
                          v28 = [v81 objectForKeyedSubscript:v27];
                          v29 = [v28 unsignedIntegerValue];

                          v88 = 0u;
                          v89 = 0u;
                          v86 = 0u;
                          v87 = 0u;
                          v30 = v26;
                          v31 = [v30 countByEnumeratingWithState:&v86 objects:v105 count:16];
                          if (v31)
                          {
                            v32 = v31;
                            v33 = *v87;
                            do
                            {
                              for (i = 0; i != v32; ++i)
                              {
                                if (*v87 != v33)
                                {
                                  objc_enumerationMutation(v30);
                                }

                                v35 = *(*(&v86 + 1) + 8 * i);
                                v36 = [v81 objectForKeyedSubscript:v35];
                                v37 = [v36 unsignedIntegerValue];

                                if (v29 < v37)
                                {
                                  v38 = v35;

                                  v29 = v37;
                                  v27 = v38;
                                }
                              }

                              v32 = [v30 countByEnumeratingWithState:&v86 objects:v105 count:16];
                            }

                            while (v32);
                          }

                          v39 = [v81 objectForKeyedSubscript:v80];
                          v40 = [v39 unsignedIntegerValue];

                          self = v78;
                          if (v29 >= v40)
                          {
                            v41 = __atxlog_handle_blending();
                            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                            {
                              v42 = [v24 widget];
                              v43 = [v42 widgetUniqueId];
                              *buf = 138543618;
                              v107 = v43;
                              v108 = 2112;
                              v109 = v80;
                              _os_log_impl(&dword_2263AA000, v41, OS_LOG_TYPE_DEFAULT, "HSLS [updateSGLayoutWithUnusedConvertableShortcut]: updating SG %{public}@ layout, because we have a better unused convertable shortcut suggestion %@", buf, 0x16u);
                            }

                            v44 = [_ATXSuggestionsWidgetSuggestion alloc];
                            v45 = [v24 widget];
                            v46 = [(_ATXSuggestionsWidgetSuggestion *)v44 initWithSuggestionsWidget:v45 containingStack:v73 suggestionDeduplicator:v78->_suggestionDeduplicator hyperParameters:v78->_hyperParameters];

                            v84 = 0u;
                            v85 = 0u;
                            v82 = 0u;
                            v83 = 0u;
                            v47 = v30;
                            v48 = [v47 countByEnumeratingWithState:&v82 objects:v104 count:16];
                            if (v48)
                            {
                              v49 = v48;
                              v50 = *v83;
                              do
                              {
                                for (j = 0; j != v49; ++j)
                                {
                                  if (*v83 != v50)
                                  {
                                    objc_enumerationMutation(v47);
                                  }

                                  v52 = *(*(&v82 + 1) + 8 * j);
                                  v53 = [v24 mainSuggestionInLayout];
                                  if (v52 == v27)
                                  {
                                    v54 = v80;
                                  }

                                  else
                                  {
                                    v54 = v52;
                                  }

                                  [(_ATXCompositeLayoutWidgetSuggestionBase *)v46 addSuggestion:v54 asMainSuggestion:v53 == 0];
                                }

                                v49 = [v47 countByEnumeratingWithState:&v82 objects:v104 count:16];
                              }

                              while (v49);
                            }

                            if ([(_ATXCompositeLayoutWidgetSuggestionBase *)v46 isLayoutComplete])
                            {
                              v59 = [v73 suggestionsWidgetSuggestionsByWidgetUniqueId];
                              v60 = [v24 widget];
                              v61 = [v60 widgetUniqueId];
                              [v59 setObject:v46 forKeyedSubscript:v61];

                              self = v78;
                              [(ATXHomeScreenLayoutSelector2 *)v78 _rotateStackToUpdatedSGSuggestionIfNecessary:v46 suggestionToRankingIndex:v81];

                              v11 = v74;
                              v18 = v76;
                              goto LABEL_53;
                            }

                            self = v78;
                          }

                          v18 = v76;
                          v20 = v77;
                          v15 = v24;
                          v11 = v74;
                          v21 = v75;
                          v22 = v79;
                        }

                        else
                        {
                          v55 = __atxlog_handle_blending();
                          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                          {
                            v56 = [v15 widget];
                            v57 = [v56 widgetUniqueId];
                            *buf = 138543618;
                            v107 = v57;
                            v108 = 2112;
                            v109 = v80;
                            _os_log_impl(&dword_2263AA000, v55, OS_LOG_TYPE_DEFAULT, "HSLS [updateSGLayoutWithUnusedConvertableShortcut]: ASSIGNING suggestion to unfilled SG %{public}@: %@", buf, 0x16u);
                          }

                          v58 = [v15 mainSuggestionInLayout];
                          [v15 addSuggestion:v80 asMainSuggestion:v58 == 0];

                          if ([v15 isLayoutComplete])
                          {
                            [(ATXHomeScreenLayoutSelector2 *)self _rotateStackToUpdatedSGSuggestionIfNecessary:v15 suggestionToRankingIndex:v81];
                            goto LABEL_53;
                          }
                        }
                      }

                      ++v22;
                    }

                    while (v22 != v20);
                    v20 = [v18 countByEnumeratingWithState:&v90 objects:v110 count:16];
                    if (v20)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_53:

                v13 = v69;
              }

              v14 = v72 + 1;
            }

            while (v72 + 1 != v71);
            v71 = [v70 countByEnumeratingWithState:&v94 objects:v111 count:16];
          }

          while (v71);
        }

        v10 = v67 + 1;
      }

      while (v67 + 1 != v66);
      v66 = [obj countByEnumeratingWithState:&v98 objects:v112 count:16];
    }

    while (v66);
  }

  v62 = *MEMORY[0x277D85DE8];
}

uint64_t __144__ATXHomeScreenLayoutSelector2__updateSuggestionsWidgetLayoutIfNecessaryWithRankedShortcutSuggestions_suggestionToRankingIndex_homeScreenState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executableSpecification];
  v5 = [v4 executableType];

  if (v5 == 2)
  {
    v6 = [v3 atxActionExecutableObject];
    v7 = [v6 intent];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 executableSpecification];
  v9 = [v8 executableType];

  if (v9 == 10)
  {
    v10 = [v3 linkActionExecutableObject];
    v11 = [v10 cachedAppIntent];

    v7 = v11;
  }

  if (v7)
  {
    v12 = [*(a1 + 32) containsWidgetForIntent:v7] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_rotateStackToUpdatedSGSuggestionIfNecessary:(id)a3 suggestionToRankingIndex:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 isLayoutComplete])
  {
    v7 = [v5 stack];
    v8 = [v7 config];
    v9 = [v8 allowsSmartRotate];

    if (v9)
    {
      v36 = v7;
      v37 = v5;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v10 = [v5 suggestionLayout];
      v11 = [v10 allSuggestionsInLayout];

      v12 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v39;
        v16 = -1;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v39 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v18 = *(*(&v38 + 1) + 8 * i);
            v19 = [v6 objectForKeyedSubscript:v18];
            v20 = [v19 unsignedIntegerValue];

            if (v20 < v16)
            {
              v21 = v18;

              v16 = v20;
              v14 = v21;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v38 objects:v48 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
        v16 = -1;
      }

      v22 = [v14 scoreSpecification];
      v23 = [v22 suggestedConfidenceCategory];

      v7 = v36;
      v5 = v37;
      if (v23 >= 3)
      {
        v24 = [v36 topOfStackSuggestion];

        if (v24)
        {
          v25 = [v36 topOfStackSuggestion];
          v26 = [v25 mainSuggestionInLayout];

          v27 = [v6 objectForKeyedSubscript:v26];
          v28 = [v27 unsignedIntegerValue];
        }

        else
        {
          v28 = -1;
        }

        if (v16 < v28)
        {
          v29 = __atxlog_handle_default();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v36 config];
            v31 = [v30 identifier];
            v32 = [v37 widget];
            v33 = [v32 widgetUniqueId];
            v34 = [v36 topOfStackSuggestion];
            *buf = 138543874;
            v43 = v31;
            v44 = 2114;
            v45 = v33;
            v46 = 2112;
            v47 = v34;
            _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "HSLS [updateSGLayoutWithUnusedConvertableShortcut]: rotating stack %{public}@ to SG widget %{public}@, because old topOfStackSuggestion is inferior: %@", buf, 0x20u);
          }

          [v36 setTopOfStackSuggestion:v37];
        }
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)_suggestionsWidgetSuggestionsByPriorityOnPage:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v32 = objc_opt_new();
  v5 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = v3;
  obj = [v3 stacks];
  v6 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    v9 = off_278594000;
    v30 = *v39;
    do
    {
      v10 = 0;
      v31 = v7;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = [v11 topOfStackSuggestion];
        v13 = v9[266];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = [v11 config];
          v16 = [v15 isPinnedSuggestionsWidget];

          v17 = [v11 topOfStackSuggestion];
          if (v16)
          {
            v18 = v4;
          }

          else
          {
            v18 = v32;
          }

          [v18 addObject:v17];
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v19 = [v11 suggestionsWidgetSuggestionsByWidgetUniqueId];
          v17 = [v19 allValues];

          v20 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = v4;
            v23 = *v35;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v35 != v23)
                {
                  objc_enumerationMutation(v17);
                }

                v25 = *(*(&v34 + 1) + 8 * i);
                v26 = [v11 topOfStackSuggestion];

                if (v25 != v26)
                {
                  [v5 addObject:v25];
                }
              }

              v21 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
            }

            while (v21);
            v4 = v22;
            v8 = v30;
            v7 = v31;
            v9 = off_278594000;
          }
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v7);
  }

  [v4 addObjectsFromArray:v32];
  [v4 addObjectsFromArray:v5];

  v27 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_filterRankedSuggestions:(id)a3 homeScreenState:(id)a4
{
  v109 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v63 = a4;
  v62 = objc_opt_new();
  v64 = objc_opt_new();
  v7 = 5;
  do
  {
    --v7;
    v8 = objc_opt_new();
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [v62 setObject:v8 forKeyedSubscript:v9];

    v10 = objc_opt_new();
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    [v64 setObject:v10 forKeyedSubscript:v11];
  }

  while (v7 > 1);
  v61 = [(ATXEngagementRecordManager *)self->_engagementRecordManager engagedExecutablesOfType:4 queryOptions:0];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v92 objects:v108 count:16];
  if (!v12)
  {
    goto LABEL_39;
  }

  v66 = *v93;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v93 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v92 + 1) + 8 * i);
      v15 = objc_autoreleasePoolPush();
      if (([(ATXBlendingLayerHyperParameters *)self->_hyperParameters uiSupportsSuggestion:v14 consumerSubType:34]& 1) != 0 || ([(ATXBlendingLayerHyperParameters *)self->_hyperParameters uiSupportsSuggestion:v14 consumerSubType:37]& 1) != 0 || [(ATXBlendingLayerHyperParameters *)self->_hyperParameters uiSupportsSuggestion:v14 consumerSubType:36])
      {
        v16 = [v14 executableSpecification];
        v17 = [v16 executableType] == 2;

        if (v17)
        {
          v18 = [v14 atxActionExecutableObject];
          v19 = v18;
          if (!v18)
          {
            v19 = __atxlog_handle_blending();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v97 = v14;
              _os_log_error_impl(&dword_2263AA000, v19, OS_LOG_TYPE_ERROR, "HSLS [preprocess]: Removing action suggestion, couldn't get ATXAction: %@", buf, 0xCu);
            }

            goto LABEL_36;
          }

          v20 = [v18 intent];
          if (v20)
          {
            if ([v63 containsWidgetForIntent:v20])
            {
              v21 = __atxlog_handle_blending();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v97 = v14;
                v22 = v21;
                v23 = "HSLS [preprocess]: Removing action suggestion due to intent duplication with widget on screen \n%@";
                goto LABEL_27;
              }

              goto LABEL_28;
            }

            if ([(ATXWidgetSuggestionDismissManager *)self->_widgetDismissManager shouldBlockSuggestionWithIntent:v20])
            {
              v21 = __atxlog_handle_blending();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v97 = v14;
                v22 = v21;
                v23 = "HSLS [preprocess]: Removing action suggestion due to previous suggested widget dismiss with same underlying intent \n%@";
LABEL_27:
                _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
              }

LABEL_28:

LABEL_36:
              goto LABEL_37;
            }
          }

LABEL_30:
        }

        else
        {
          v24 = [v14 executableSpecification];
          v25 = [v24 executableType] == 3;

          if (v25)
          {
            v26 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:v14];
            v19 = v26;
            if (!v26)
            {
              goto LABEL_20;
            }

            widgetDismissManager = self->_widgetDismissManager;
            v28 = [v26 widgetBundleIdentifier];
            v29 = [v19 widgetKind];
            v30 = [v19 intent];
            LODWORD(widgetDismissManager) = [(ATXWidgetSuggestionDismissManager *)widgetDismissManager shouldBlockWidgetSuggestionBecauseOfPreviousDismiss:v28 kind:v29 intent:v30];

            if (!widgetDismissManager)
            {
              if (![v61 count] || (-[ATXEngagementRecordManager hasEngagedWithSuggestion:engagedExecutables:](self->_engagementRecordManager, "hasEngagedWithSuggestion:engagedExecutables:", v14, v61) & 1) != 0)
              {
                goto LABEL_30;
              }

              v35 = MEMORY[0x277CCABB0];
              v31 = [v14 scoreSpecification];
              v36 = [v35 numberWithInteger:{-[NSObject suggestedConfidenceCategory](v31, "suggestedConfidenceCategory")}];
              v37 = [v62 objectForKeyedSubscript:v36];
              [v37 addObject:v14];
            }

            else
            {
LABEL_20:
              v31 = __atxlog_handle_blending();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v97 = v14;
                _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Removing widget suggestion due to previous dismiss \n%@", buf, 0xCu);
              }
            }

            goto LABEL_36;
          }
        }

        v32 = MEMORY[0x277CCABB0];
        v19 = [v14 scoreSpecification];
        v33 = [v32 numberWithInteger:{-[NSObject suggestedConfidenceCategory](v19, "suggestedConfidenceCategory")}];
        v34 = [v64 objectForKeyedSubscript:v33];
        [v34 addObject:v14];

        goto LABEL_36;
      }

LABEL_37:
      objc_autoreleasePoolPop(v15);
    }

    v12 = [obj countByEnumeratingWithState:&v92 objects:v108 count:16];
  }

  while (v12);
LABEL_39:

  v38 = objc_opt_new();
  v39 = 4;
  do
  {
    v40 = objc_autoreleasePoolPush();
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v41 = [MEMORY[0x277CCABB0] numberWithInteger:v39];
    v42 = [v62 objectForKeyedSubscript:v41];

    v43 = [v42 countByEnumeratingWithState:&v88 objects:v107 count:16];
    if (v43)
    {
      v44 = *v89;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v89 != v44)
          {
            objc_enumerationMutation(v42);
          }

          [v38 addObject:{*(*(&v88 + 1) + 8 * j), v61}];
        }

        v43 = [v42 countByEnumeratingWithState:&v88 objects:v107 count:16];
      }

      while (v43);
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v46 = [MEMORY[0x277CCABB0] numberWithInteger:v39];
    v47 = [v64 objectForKeyedSubscript:v46];

    v48 = [v47 countByEnumeratingWithState:&v84 objects:v106 count:16];
    if (v48)
    {
      v49 = *v85;
      do
      {
        for (k = 0; k != v48; ++k)
        {
          if (*v85 != v49)
          {
            objc_enumerationMutation(v47);
          }

          [v38 addObject:{*(*(&v84 + 1) + 8 * k), v61}];
        }

        v48 = [v47 countByEnumeratingWithState:&v84 objects:v106 count:16];
      }

      while (v48);
    }

    objc_autoreleasePoolPop(v40);
  }

  while (v39-- > 1);
  [(_ATXHomeScreenTimelineRelevanceFilter *)self->_timelineRelevanceFilter scheduleBlendingRefreshAtNextTimelineRelevanceChangeRelatedToSuggestions:v38];
  v52 = [(_ATXHomeScreenTimelineRelevanceFilter *)self->_timelineRelevanceFilter removeSuggestionsByTimelineRelevanceIfNecessary:v38 homeScreenState:v63];

  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __73__ATXHomeScreenLayoutSelector2__filterRankedSuggestions_homeScreenState___block_invoke;
  v67[3] = &unk_2785996D8;
  v67[4] = &v80;
  v67[5] = &v72;
  v67[6] = &v76;
  v67[7] = &v68;
  [v52 enumerateObjectsUsingBlock:v67];
  v53 = __atxlog_handle_blending();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = [v52 count];
    v55 = v81[3];
    v56 = v73[3];
    v57 = v77[3];
    v58 = v69[3];
    *buf = 134219008;
    v97 = v54;
    v98 = 2048;
    v99 = v55;
    v100 = 2048;
    v101 = v56;
    v102 = 2048;
    v103 = v57;
    v104 = 2048;
    v105 = v58;
    _os_log_impl(&dword_2263AA000, v53, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: filterRankedSuggestions result count = %lu (%ld widget, %ld action, %ld apps, %ld Link actions)", buf, 0x34u);
  }

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);

  v59 = *MEMORY[0x277D85DE8];

  return v52;
}

void __73__ATXHomeScreenLayoutSelector2__filterRankedSuggestions_homeScreenState___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 executableSpecification];
  v7 = [v6 executableType];

  if (v7 == 3)
  {
    if (*(*(a1[4] + 8) + 24) < 3uLL || ([v5 scoreSpecification], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "suggestedConfidenceCategory"), v8, v9 >= 3))
    {
      v10 = __atxlog_handle_blending();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 134218242;
        v32 = a3;
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Widget Suggestion at index %lu:\n%@", &v31, 0x16u);
      }
    }

    v11 = a1[4];
LABEL_29:
    ++*(*(v11 + 8) + 24);
    goto LABEL_30;
  }

  v12 = [v5 executableSpecification];
  v13 = [v12 executableType];

  if (v13 == 2)
  {
    if (*(*(a1[5] + 8) + 24) < 3uLL || ([v5 scoreSpecification], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "suggestedConfidenceCategory"), v14, v15 >= 3))
    {
      v16 = __atxlog_handle_blending();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 134218242;
        v32 = a3;
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Action Suggestion at index %lu:\n%@", &v31, 0x16u);
      }
    }

    v11 = a1[5];
    goto LABEL_29;
  }

  v17 = [v5 executableSpecification];
  v18 = [v17 executableType];

  if (v18 == 1)
  {
    if (*(*(a1[6] + 8) + 24) < 3uLL || ([v5 scoreSpecification], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "suggestedConfidenceCategory"), v19, v20 >= 3))
    {
      v21 = __atxlog_handle_blending();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 134218242;
        v32 = a3;
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: App suggestion at index %lu:\n%@", &v31, 0x16u);
      }
    }

    v11 = a1[6];
    goto LABEL_29;
  }

  v22 = [v5 executableSpecification];
  v23 = [v22 executableType];

  if (v23 == 10)
  {
    if (*(*(a1[7] + 8) + 24) < 3uLL || ([v5 scoreSpecification], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "suggestedConfidenceCategory"), v24, v25 >= 3))
    {
      v26 = __atxlog_handle_blending();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 134218242;
        v32 = a3;
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Link action Suggestion at index %lu:\n%@", &v31, 0x16u);
      }
    }

    v11 = a1[7];
    goto LABEL_29;
  }

  v28 = [v5 scoreSpecification];
  v29 = [v28 suggestedConfidenceCategory];

  if (v29 >= 3)
  {
    v30 = __atxlog_handle_blending();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 134218242;
      v32 = a3;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, "HSLS [preprocess]: Suggestion at index %lu:\n%@", &v31, 0x16u);
    }
  }

LABEL_30:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_assignSuggestionsForExistingSuggestedWidgets:(id)a3 homeScreenState:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v5 = a4;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [v5 sortedPagesByUserLastVisit];
  v26 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v26)
  {
    v25 = *v48;
    do
    {
      v6 = 0;
      do
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v7 = *(*(&v47 + 1) + 8 * v6);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v30 = [v7 stacks];
        v8 = [v30 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v44;
          v28 = *v44;
          do
          {
            v11 = 0;
            v29 = v9;
            do
            {
              if (*v44 != v10)
              {
                objc_enumerationMutation(v30);
              }

              v12 = *(*(&v43 + 1) + 8 * v11);
              v13 = [v12 config];
              v14 = [v13 allowsNewWidget];

              if (v14)
              {
                v31 = v11;
                v41 = 0u;
                v42 = 0u;
                v39 = 0u;
                v40 = 0u;
                v15 = [v12 previousSuggestedWidgets];
                v16 = [v15 countByEnumeratingWithState:&v39 objects:v51 count:16];
                if (v16)
                {
                  v17 = v16;
                  v18 = *v40;
                  do
                  {
                    for (i = 0; i != v17; ++i)
                    {
                      if (*v40 != v18)
                      {
                        objc_enumerationMutation(v15);
                      }

                      v20 = *(*(&v39 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v21 = v20;
                        v34[0] = MEMORY[0x277D85DD0];
                        v34[1] = 3221225472;
                        v34[2] = __94__ATXHomeScreenLayoutSelector2__assignSuggestionsForExistingSuggestedWidgets_homeScreenState___block_invoke;
                        v34[3] = &unk_278599700;
                        v34[4] = self;
                        v34[5] = v12;
                        v35 = v21;
                        v36 = v7;
                        v37 = v5;
                        v38 = v21;
                        v22 = v21;
                        [v33 enumerateObjectsUsingBlock:v34];
                      }
                    }

                    v17 = [v15 countByEnumeratingWithState:&v39 objects:v51 count:16];
                  }

                  while (v17);
                }

                v10 = v28;
                v9 = v29;
                v11 = v31;
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [v30 countByEnumeratingWithState:&v43 objects:v52 count:16];
          }

          while (v9);
        }

        v6 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v26);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __94__ATXHomeScreenLayoutSelector2__assignSuggestionsForExistingSuggestedWidgets_homeScreenState___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 executableSpecification];
  if (-[_ATXSimpleWidgetSuggestion executableType](v7, "executableType") != 3 || ![*(*(a1 + 32) + 72) currentModeConfigurationAllowsSuggestion:v6] || !objc_msgSend(*(a1 + 40), "sizeIsCompatibleWithWidgetSuggestion:", v6))
  {
LABEL_19:

    goto LABEL_20;
  }

  v8 = [*(a1 + 48) containsIdenticalContentOfSuggestion:v6];

  if (v8)
  {
    v9 = [*(a1 + 56) config];
    v10 = [v9 pageIndex];
    v11 = *MEMORY[0x277CEBAE8];

    if (v10 == v11)
    {
      if ([*(a1 + 56) isShowingDuplicatedContentForSuggestion:v6 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:0])
      {
        goto LABEL_20;
      }

LABEL_9:
      v12 = [v6 scoreSpecification];
      v13 = [v12 suggestedConfidenceCategory];

      if (v13 <= 2)
      {
        v14 = *(*(a1 + 32) + 56);
        v15 = [*(a1 + 72) widget];
        v16 = [v15 widgetUniqueId];
        v7 = [v14 firstAppearDateOfSuggestedWidgetWithUniqueId:v16];

        if (!v7 || ([(_ATXSimpleWidgetSuggestion *)v7 timeIntervalSinceNow], v17 < -10800.0))
        {
          v18 = __atxlog_handle_blending();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [*(a1 + 72) widget];
            v20 = [v19 compactDescription];
            v21 = [*(a1 + 72) widget];
            v22 = [v21 widgetUniqueId];
            v23 = [*(a1 + 40) config];
            v24 = [v23 identifier];
            v36 = 138412802;
            v37 = v20;
            v38 = 2114;
            v39 = v22;
            v40 = 2114;
            v41 = v24;
            _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedWidgets]: Not assigning low conf suggestion for exisiting suggested widget %@ (uniqueID %{public}@) for stack %{public}@ because it first appeared more than 3 hrs ago.", &v36, 0x20u);
          }

          goto LABEL_19;
        }
      }

      v25 = [_ATXSimpleWidgetSuggestion alloc];
      v26 = [*(a1 + 48) widget];
      v7 = [(_ATXSimpleWidgetSuggestion *)v25 initWithWidget:v26 suggestion:v6 stack:*(a1 + 40) suggestionDeduplicator:*(*(a1 + 32) + 24)];

      v27 = [*(a1 + 40) suggestedWidgets];
      [v27 addObject:v7];

      v28 = __atxlog_handle_blending();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(_ATXSimpleWidgetSuggestion *)v7 widget];
        v30 = [v29 compactDescription];
        v31 = [(_ATXSimpleWidgetSuggestion *)v7 widget];
        v32 = [v31 widgetUniqueId];
        v33 = [*(a1 + 40) config];
        v34 = [v33 identifier];
        v36 = 138413058;
        v37 = v30;
        v38 = 2114;
        v39 = v32;
        v40 = 2114;
        v41 = v34;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "HSLS [assignExistingSuggestedWidgets]: Kept existing suggested widget %@ (uniqueID %{public}@) for stack %{public}@ by suggestion:\n%@", &v36, 0x2Au);
      }

      *a4 = 1;
      goto LABEL_19;
    }

    if (([*(a1 + 64) isShowingDuplicatedContentForSuggestion:v6 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:0 ignoreTodayPage:1] & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_20:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_rotateAwayFromPreviousSystemInitiatedRotationIfNecessary:(id)a3 homeScreenState:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [a4 sortedPagesByUserLastVisit];
  v41 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v41)
  {
    v40 = *v63;
    v43 = self;
    v44 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v63 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v7;
        v8 = *(*(&v62 + 1) + 8 * v7);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v49 = v8;
        v9 = [v8 stacks];
        v10 = [v9 countByEnumeratingWithState:&v58 objects:v72 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v59;
          v45 = *v59;
          v46 = v9;
          do
          {
            v13 = 0;
            v47 = v11;
            do
            {
              if (*v59 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v58 + 1) + 8 * v13);
              v15 = [v14 config];
              if (![v15 allowsSmartRotate])
              {
                goto LABEL_14;
              }

              v16 = [v14 topOfStackSuggestion];
              if (v16)
              {
                goto LABEL_13;
              }

              v17 = [v14 mostRecentRotationOfStackIsSystemInitiated];

              if (v17)
              {
                v15 = [v14 previousTopWidget];
                if (v15)
                {
                  v56 = 0u;
                  v57 = 0u;
                  v54 = 0u;
                  v55 = 0u;
                  v18 = v6;
                  v19 = [v18 countByEnumeratingWithState:&v54 objects:v71 count:16];
                  v48 = v18;
                  if (v19)
                  {
                    v20 = v19;
                    v21 = *v55;
LABEL_21:
                    v22 = 0;
                    while (1)
                    {
                      if (*v55 != v21)
                      {
                        objc_enumerationMutation(v48);
                      }

                      if (([(ATXSuggestionDeduplicatorProtocol *)self->_suggestionDeduplicator isWidget:v15 showingIdenticalContentOfSuggestion:*(*(&v54 + 1) + 8 * v22)]& 1) != 0)
                      {
                        break;
                      }

                      if (v20 == ++v22)
                      {
                        v18 = v48;
                        v20 = [v48 countByEnumeratingWithState:&v54 objects:v71 count:16];
                        if (v20)
                        {
                          goto LABEL_21;
                        }

                        goto LABEL_27;
                      }
                    }
                  }

                  else
                  {
LABEL_27:

                    v23 = __atxlog_handle_blending();
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      v24 = [v14 config];
                      v25 = [v24 identifier];
                      *buf = 138412546;
                      v68 = v15;
                      v69 = 2114;
                      v70 = v25;
                      _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "HSLS [rotateAwayFromIrrelevantWidget]: Previous system rotation to widget %@ in stack %{public}@ is no longer relevant, attempting to make a fresh rotation...", buf, 0x16u);

                      v18 = v48;
                    }

                    v52 = 0u;
                    v53 = 0u;
                    v50 = 0u;
                    v51 = 0u;
                    v26 = v18;
                    v27 = [v26 countByEnumeratingWithState:&v50 objects:v66 count:16];
                    if (v27)
                    {
                      v28 = v27;
                      v29 = *v51;
                      while (2)
                      {
                        for (i = 0; i != v28; ++i)
                        {
                          if (*v51 != v29)
                          {
                            objc_enumerationMutation(v26);
                          }

                          v31 = *(*(&v50 + 1) + 8 * i);
                          v32 = [v31 executableSpecification];
                          if ([v32 executableType] == 3 && !objc_msgSend(v49, "isShowingDuplicatedContentForSuggestion:considerUnderStackContents:dedupeAppSuggestionsByWidgets:ignoreDuplicatesInSGWidget:ignoreDuplicatesInPanels:", v31, 0, 1, 0, 0))
                          {
                            v33 = [v14 widgetForSuggestion:v31 considerSuggestedWidgets:1];

                            if (v33)
                            {
                              v34 = __atxlog_handle_blending();
                              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                              {
                                v35 = [v14 config];
                                v36 = [v35 identifier];
                                *buf = 138543618;
                                v68 = v36;
                                v69 = 2112;
                                v70 = v31;
                                _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_DEFAULT, "HSLS [rotateAwayFromIrrelevantWidget]: ASSIGNING a new top widget for stack %{public}@ by suggestion: \n%@", buf, 0x16u);
                              }

                              self = v43;
                              [(ATXHomeScreenLayoutSelector2 *)v43 _assignSuggestion:v31 toTopOfStack:v14];
                              v6 = v44;
                              goto LABEL_44;
                            }
                          }

                          else
                          {
                          }
                        }

                        v28 = [v26 countByEnumeratingWithState:&v50 objects:v66 count:16];
                        if (v28)
                        {
                          continue;
                        }

                        break;
                      }

                      self = v43;
                      v6 = v44;
LABEL_44:
                      v12 = v45;
                      v9 = v46;
                    }
                  }

                  v11 = v47;
                  v16 = v48;
LABEL_13:
                }

LABEL_14:
              }

              ++v13;
            }

            while (v13 != v11);
            v37 = [v9 countByEnumeratingWithState:&v58 objects:v72 count:16];
            v11 = v37;
          }

          while (v37);
        }

        v7 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v41);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_preservePreviousAppSuggestionPositionsWithHomeScreenState:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [a3 sortedPagesByUserLastVisit];
  v26 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v26)
  {
    v25 = *v33;
    do
    {
      v3 = 0;
      do
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v3;
        v4 = *(*(&v32 + 1) + 8 * v3);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v5 = [v4 stacks];
        v6 = [v5 countByEnumeratingWithState:&v28 objects:v42 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v29;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v29 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v28 + 1) + 8 * i);
              v11 = [v10 config];
              v12 = [v11 isAppPredictionPanel];

              if (v12)
              {
                v13 = [v10 previousTopOfStackSuggestion];
                v14 = [v13 suggestionLayout];
                v15 = [v14 oneByOneSuggestions];

                v16 = [v10 topOfStackSuggestion];
                v17 = [v16 suggestionLayout];
                v18 = [v17 oneByOneSuggestions];

                if (v15)
                {
                  v19 = v18 == 0;
                }

                else
                {
                  v19 = 1;
                }

                if (!v19)
                {
                  v20 = +[ATXStaticSuggestionsManager preservePreviousAppPositionsForPreviousSuggestions:newSuggestions:uiLimit:](ATXStaticSuggestionsManager, "preservePreviousAppPositionsForPreviousSuggestions:newSuggestions:uiLimit:", v15, v18, [v18 count]);
                  v21 = [v10 topOfStackSuggestion];
                  v22 = [v21 suggestionLayout];
                  [v22 setOneByOneSuggestions:v20];
                  goto LABEL_19;
                }

                v20 = __atxlog_handle_blending();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v21 = [v10 config];
                  v22 = [v21 identifier];
                  *buf = 138543874;
                  v37 = v22;
                  v38 = 2112;
                  v39 = v15;
                  v40 = 2112;
                  v41 = v18;
                  _os_log_error_impl(&dword_2263AA000, v20, OS_LOG_TYPE_ERROR, "HSLS [APPStablization]: Can't preserve App suggestion positions for panel in stack %{public}@ - previousSuggestions %@, newSuggestions %@", buf, 0x20u);
LABEL_19:
                }

                continue;
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v28 objects:v42 count:16];
          }

          while (v7);
        }

        v3 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v26);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_fallbackSuggestions:(id)a3 homeScreenState:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v27 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = 0;
    v12 = 0;
    v13 = *v29;
    *&v9 = 138412290;
    v26 = v9;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v28 + 1) + 8 * v14);
      v16 = [v15 executableSpecification];
      v17 = [v16 executableType];

      v18 = v17 > 0xA || ((1 << v17) & 0x406) == 0;
      if (!v18 && ([v6 isShowingDuplicatedContentForSuggestion:v15 considerUnderStackContents:1 dedupeAppSuggestionsByWidgets:1 ignoreDuplicatesInSGWidget:0 ignoreDuplicatesInPanels:0 ignoreTodayPage:0] & 1) == 0)
      {
        if (v17 != 1 || v12 > 2)
        {
          if ((v17 & 3) == 2 && v11 <= 2)
          {
            v21 = __atxlog_handle_blending();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v26;
              v33 = v15;
              _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "HSLS [fallbackGeneration]: Adding fallback action suggestion:\n%@", buf, 0xCu);
            }

            [v27 addObject:v15];
            ++v11;
          }
        }

        else
        {
          v22 = __atxlog_handle_blending();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v26;
            v33 = v15;
            _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "HSLS [fallbackGeneration]: Adding fallback app suggestion:\n%@", buf, 0xCu);
          }

          [v27 addObject:v15];
          ++v12;
        }

        if (v12 == 3 && v11 == 3)
        {
          break;
        }
      }

      if (v10 == ++v14)
      {
        v10 = [v7 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)_removeSuggestedWidgetWhereNecessaryWithHomeScreenState:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [a3 sortedPagesByUserLastVisit];
  v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v21)
  {
    v20 = *v30;
    do
    {
      v4 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v4;
        v5 = *(*(&v29 + 1) + 8 * v4);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v6 = [v5 stacks];
        v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v26;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v26 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v25 + 1) + 8 * i);
              v12 = [v11 suggestedWidgets];
              v13 = [v12 count];

              if (v13)
              {
                v14 = objc_opt_new();
                v15 = [v11 suggestedWidgets];
                v23[0] = MEMORY[0x277D85DD0];
                v23[1] = 3221225472;
                v23[2] = __88__ATXHomeScreenLayoutSelector2__removeSuggestedWidgetWhereNecessaryWithHomeScreenState___block_invoke;
                v23[3] = &unk_278599728;
                v23[4] = v11;
                v23[5] = self;
                v24 = v14;
                v16 = v14;
                [v15 enumerateObjectsUsingBlock:v23];

                v17 = [v11 suggestedWidgets];
                [v17 removeObjectsAtIndexes:v16];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v8);
        }

        v4 = v22 + 1;
      }

      while (v22 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v21);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __88__ATXHomeScreenLayoutSelector2__removeSuggestedWidgetWhereNecessaryWithHomeScreenState___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v79 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) topOfStackSuggestion];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 topOfStackSuggestion];
    v9 = [v8 widget];
    v10 = [v9 widgetUniqueId];
    v11 = [v5 widget];
    v12 = [v11 widgetUniqueId];
    v13 = [v10 isEqualToString:v12];

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = [v7 previousTopWidget];

    if (v14)
    {
      v15 = [*(a1 + 32) previousTopWidget];
      v16 = [v15 widgetUniqueId];
      v17 = [v5 widget];
      v18 = [v17 widgetUniqueId];
      v19 = [v16 isEqualToString:v18];

      if (v19)
      {
        goto LABEL_7;
      }
    }
  }

  v20 = *(*(a1 + 40) + 56);
  v21 = [v5 widget];
  v22 = [v20 mostRecentEngagementOfWidget:v21 ofType:3];

  if (!v22)
  {
    v40 = __atxlog_handle_blending();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v5 widget];
      v42 = [v41 widgetUniqueId];
      v43 = [v5 stack];
      v44 = [v43 config];
      v45 = [v44 identifier];
      *buf = 138543618;
      v73 = v42;
      v74 = 2114;
      v75 = v45;
      _os_log_impl(&dword_2263AA000, v40, OS_LOG_TYPE_DEFAULT, "HSLS [suggestedWidgetRemoval]: Removing suggested widget %{public}@ from stack %{public}@, since it hasn't been seen by the user.", buf, 0x16u);
    }

    v46 = [*(a1 + 32) topOfStackSuggestion];
    v47 = [v46 widget];
    v48 = [v47 widgetUniqueId];
    v49 = [v5 widget];
    v50 = [v49 widgetUniqueId];
    v51 = [v48 isEqualToString:v50];

    if (v51)
    {
      [*(a1 + 32) setTopOfStackSuggestion:0];
    }

    [*(a1 + 48) addIndex:a3];
    goto LABEL_32;
  }

LABEL_7:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v5;
    if ([v23 isLayoutComplete])
    {
      v67 = a3;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v24 = [v23 suggestionLayout];
      v25 = [v24 allSuggestionsInLayout];

      v26 = [v25 countByEnumeratingWithState:&v68 objects:v78 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v69;
        while (2)
        {
          v29 = 0;
          do
          {
            if (*v69 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [*(*(&v68 + 1) + 8 * v29) scoreSpecification];
            v31 = [v30 suggestedConfidenceCategory];
            v32 = *(*(a1 + 40) + 136);

            if (v31 >= v32)
            {

              goto LABEL_31;
            }

            ++v29;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v68 objects:v78 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      v33 = __atxlog_handle_blending();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v23 widget];
        v35 = [v34 widgetUniqueId];
        v36 = [v23 stack];
        v37 = [v36 config];
        v38 = [v37 identifier];
        v39 = *(*(a1 + 40) + 136);
        *buf = 138543874;
        v73 = v35;
        v74 = 2114;
        v75 = v38;
        v76 = 2048;
        v77 = v39;
        _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "HSLS [suggestedWidgetRemoval]: Removing suggested SW %{public}@ from stack %{public}@, because it does not have at least 1 suggestion with confidence >= %ld", buf, 0x20u);
      }

      a3 = v67;
    }

    else
    {
      v33 = __atxlog_handle_blending();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v52 = [v23 widget];
        v53 = [v52 widgetUniqueId];
        v54 = [v23 stack];
        v55 = [v54 config];
        v56 = [v55 identifier];
        *buf = 138543618;
        v73 = v53;
        v74 = 2114;
        v75 = v56;
        _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "HSLS [suggestedWidgetRemoval]: Removing suggested SG %{public}@ from stack %{public}@, because it does not have a complete layout", buf, 0x16u);
      }
    }

    v57 = [*(a1 + 32) topOfStackSuggestion];
    v58 = [v57 widget];
    v59 = [v58 widgetUniqueId];
    v60 = [v23 widget];
    v61 = [v60 widgetUniqueId];
    v62 = [v59 isEqualToString:v61];

    if (v62)
    {
      [*(a1 + 32) setTopOfStackSuggestion:0];
    }

    v63 = [*(a1 + 32) suggestionsWidgetSuggestionsByWidgetUniqueId];
    v64 = [v23 widget];
    v65 = [v64 widgetUniqueId];
    [v63 removeObjectForKey:v65];

    [*(a1 + 48) addIndex:a3];
LABEL_31:
  }

LABEL_32:

  v66 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isSuggestionStillNeededForTopOfStack:(id)a3
{
  v3 = a3;
  v4 = [v3 config];
  if ([v4 allowsSmartRotate])
  {
    goto LABEL_6;
  }

  v5 = [v3 config];
  if ([v5 allowsNewWidget])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v6 = [v3 config];
  if ([v6 isPinnedSuggestionsWidget])
  {

    goto LABEL_5;
  }

  v12 = [v3 config];
  v13 = [v12 isAppPredictionPanel];

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v7 = [v3 topOfStackSuggestion];

  if (!v7)
  {
    LOBYTE(v11) = 1;
    goto LABEL_13;
  }

  v8 = [v3 topOfStackSuggestion];
  v9 = [v8 conformsToProtocol:&unk_283A72DB0];

  if (!v9)
  {
LABEL_12:
    LOBYTE(v11) = 0;
    goto LABEL_13;
  }

  v10 = [v3 topOfStackSuggestion];
  v11 = [v10 isLayoutComplete] ^ 1;

LABEL_13:
  return v11;
}

- (void)_assignSuggestion:(id)a3 toTopOfStack:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 executableSpecification];
  v9 = [v8 executableType];

  if (v9 == 3)
  {
    v10 = [[_ATXSimpleWidgetSuggestion alloc] initWithSuggestion:v6 stack:v7 suggestionDeduplicator:self->_suggestionDeduplicator];
    if (v10)
    {
      [v7 setTopOfStackSuggestion:v10];
    }

    goto LABEL_6;
  }

  v11 = [v7 topOfStackSuggestion];
  v12 = [v11 conformsToProtocol:&unk_283A72DB0];

  if (v12)
  {
    v10 = [v7 topOfStackSuggestion];
    v13 = [(_ATXSimpleWidgetSuggestion *)v10 mainSuggestionInLayout];
    [(_ATXSimpleWidgetSuggestion *)v10 addSuggestion:v6 asMainSuggestion:v13 == 0];

LABEL_6:
    goto LABEL_28;
  }

  v14 = [v7 config];
  v15 = [v14 isAppPredictionPanel];

  if (v15)
  {
    v16 = [_ATXAppPredictionPanelSuggestion alloc];
    v17 = [v7 config];
    v18 = [v17 widgets];
    v19 = [v18 firstObject];
    v20 = [(_ATXAppPredictionPanelSuggestion *)v16 initWithAppPredictionPanel:v19 containingStack:v7 suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = [v7 suggestionsWidgetSuggestionsByWidgetUniqueId];
    v22 = [v21 allValues];

    v23 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v45;
LABEL_11:
      v26 = 0;
      while (1)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v44 + 1) + 8 * v26);
        if ([v27 canAddSuggestion:v6])
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [v22 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v24)
          {
            goto LABEL_11;
          }

          goto LABEL_17;
        }
      }

      v20 = v27;
      v28 = __atxlog_handle_blending();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(_ATXCompositeLayoutWidgetSuggestionBase *)v20 widget];
        v30 = [v29 compactDescription];
        v31 = [(_ATXCompositeLayoutWidgetSuggestionBase *)v20 widget];
        v32 = [v31 widgetUniqueId];
        *buf = 138412546;
        v49 = v30;
        v50 = 2114;
        v51 = v32;
        _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "HSLS [topOfStackAssignment]: Setting topOfStackSuggestion to existing SuggestionsWidgetSuggestion (widget %@, uniqueID %{public}@) and add suggestion", buf, 0x16u);
      }

      if (v20)
      {
        goto LABEL_25;
      }
    }

    else
    {
LABEL_17:
    }

    v17 = objc_opt_new();
    v33 = *MEMORY[0x277CEBBA0];
    [v17 setAppBundleId:*MEMORY[0x277CEBBA0]];
    [v17 setExtensionBundleId:v33];
    v34 = ATXSpecialWidgetKindSiriSuggestions();
    [v17 setWidgetKind:v34];

    v35 = [v7 config];
    [v17 setSize:{objc_msgSend(v35, "stackLayoutSize")}];

    v36 = [MEMORY[0x277CCAD78] UUID];
    v37 = [v36 UUIDString];
    [v17 setWidgetUniqueId:v37];

    [v17 setSuggestedWidget:1];
    v20 = [[_ATXSuggestionsWidgetSuggestion alloc] initWithSuggestionsWidget:v17 containingStack:v7 suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];
    v38 = __atxlog_handle_blending();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [(_ATXCompositeLayoutWidgetSuggestionBase *)v20 widget];
      v40 = [v39 compactDescription];
      v41 = [(_ATXCompositeLayoutWidgetSuggestionBase *)v20 widget];
      v42 = [v41 widgetUniqueId];
      *buf = 138412546;
      v49 = v40;
      v50 = 2114;
      v51 = v42;
      _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_DEFAULT, "HSLS [topOfStackAssignment]: Setting topOfStackSuggestion to new SuggestionsWidgetSuggestion (widget %@, uniqueID %{public}@) and add suggestion", buf, 0x16u);
    }
  }

LABEL_25:
  if ([(_ATXCompositeLayoutWidgetSuggestionBase *)v20 addSuggestion:v6 asMainSuggestion:1])
  {
    [v7 setTopOfStackSuggestion:v20];
  }

LABEL_28:
  v43 = *MEMORY[0x277D85DE8];
}

- (id)_suggestionsWidgetPreviewsFromRankedSuggestions:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v3 = objc_opt_new();
  for (i = 0; i != 3; ++i)
  {
    v5 = [[_ATXSuggestionsWidgetSuggestion alloc] initForPreviewOfSize:i hyperParameters:self->_hyperParameters];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v19;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [v11 executableSpecification];
        v13 = [v12 executableType];

        if ((v13 & 0xFFFFFFFFFFFFFFF7) == 2)
        {
          v14 = [v5 mainSuggestionInLayout];
          v15 = [v5 addSuggestion:v11 asMainSuggestion:v14 == 0];

          if (v15)
          {
            if ([v5 isLayoutComplete])
            {
              break;
            }
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if (([v5 isLayoutComplete] & 1) == 0)
    {
      v16 = __atxlog_handle_blending();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(ATXHomeScreenLayoutSelector2 *)v25 _suggestionsWidgetPreviewsFromRankedSuggestions:v5];
      }
    }

    [v3 addObject:{v5, v19}];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_appPredictionPanelPreviewFromRankedSuggestions:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[_ATXAppPredictionPanelSuggestion alloc] initForPreviewWithHyperParameters:self->_hyperParameters];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      v12 = [v11 executableSpecification];
      v13 = [v12 executableType];

      if (v13 == 1)
      {
        v14 = [v5 mainSuggestionInLayout];
        v15 = [v5 addSuggestion:v11 asMainSuggestion:v14 == 0];

        if (v15)
        {
          if ([v5 isLayoutComplete])
          {
            break;
          }
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (([v5 isLayoutComplete] & 1) == 0)
  {
    v16 = __atxlog_handle_blending();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenLayoutSelector2 *)v5 _appPredictionPanelPreviewFromRankedSuggestions:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)_hasEligiblePinnedWidgetStacksForSuggestionsWidget:(id)a3 forCandidateStack:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForSuggestionsWidget:v6])
  {
    goto LABEL_6;
  }

  v8 = [v7 config];
  v9 = [v8 isPinnedSuggestionsWidget];

  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [v7 topOfStackSuggestion];
  if (!v10 || (v11 = v10, [v7 topOfStackSuggestion], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "canAddSuggestion:", v6), v12, v11, (v13 & 1) != 0))
  {
    v14 = 1;
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
}

- (BOOL)_hasEligiblePinnedWidgetStacksForAPPWidget:(id)a3 forCandidateStack:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForAppPredictionPanel:v6])
  {
    goto LABEL_6;
  }

  v8 = [v7 config];
  v9 = [v8 isAppPredictionPanel];

  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [v7 topOfStackSuggestion];
  if (!v10 || (v11 = v10, [v7 topOfStackSuggestion], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "canAddSuggestion:", v6), v12, v11, (v13 & 1) != 0))
  {
    v14 = 1;
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isStackEligibleForSmartRotate:(id)a3 stack:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 config];
  v9 = [v8 allowsSmartRotate];

  if (v9)
  {
    if (![(ATXHomeScreenLayoutSelector2 *)self _isSuggestionStillNeededForTopOfStack:v7])
    {
      v14 = __atxlog_handle_blending();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v7 config];
        v16 = [v15 identifier];
        v34 = 138543618;
        v35 = v16;
        v36 = 2112;
        v37 = v6;
        v17 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - stack no longer needs top of stack suggestion; %@";
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v10 = [v7 topOfStackSuggestion];
    if (v10)
    {
      v11 = v10;
      v12 = [v6 executableSpecification];
      v13 = [v12 executableType];

      if (v13 == 3)
      {
        v14 = __atxlog_handle_blending();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v7 config];
          v16 = [v15 identifier];
          v34 = 138543618;
          v35 = v16;
          v36 = 2112;
          v37 = v6;
          v17 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - cannot assign widget suggestion to composite layout; %@";
LABEL_11:
          _os_log_impl(&dword_2263AA000, v14, OS_LOG_TYPE_DEFAULT, v17, &v34, 0x16u);
LABEL_12:

LABEL_13:
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    v21 = [v6 scoreSpecification];
    v22 = [v21 suggestedConfidenceCategory];

    if (v22 <= 2)
    {
      if (![(ATXHomeScreenLayoutSelector2 *)self _isStackStale:v7])
      {
        v14 = __atxlog_handle_blending();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v15 = [v7 config];
        v16 = [v15 identifier];
        v34 = 138543618;
        v35 = v16;
        v36 = 2112;
        v37 = v6;
        v17 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - low conf suggestion and stack is not stale; %@";
        goto LABEL_11;
      }

      v23 = [v6 executableSpecification];
      v24 = [v23 executableType];

      if (v24 != 3)
      {
        v14 = __atxlog_handle_blending();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v15 = [v7 config];
        v16 = [v15 identifier];
        v34 = 138543618;
        v35 = v16;
        v36 = 2112;
        v37 = v6;
        v17 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - low conf and type is not widget; %@";
        goto LABEL_11;
      }

      if ([v7 previousTopWidgetWasShowingIdenticalContentOfSuggestion:v6])
      {
        v14 = __atxlog_handle_blending();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v15 = [v7 config];
        v16 = [v15 identifier];
        v34 = 138543618;
        v35 = v16;
        v36 = 2112;
        v37 = v6;
        v17 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - low conf and same as existing top widget; %@";
        goto LABEL_11;
      }
    }

    v25 = [v7 config];
    v14 = [v7 widgetForSuggestion:v6 considerSuggestedWidgets:{objc_msgSend(v25, "allowsNewWidget")}];

    if (v14)
    {
      v26 = [v14 extensionBundleId];
      v27 = [v26 isEqualToString:*MEMORY[0x277CEBBA0]];

      if (!v27)
      {
LABEL_27:
        v18 = 1;
        goto LABEL_15;
      }

      if ([(ATXHomeScreenLayoutSelector2 *)self _shouldConsiderSuggestionForSuggestionsWidget:v6])
      {
        v28 = [v7 topOfStackSuggestion];
        if (!v28)
        {
          goto LABEL_27;
        }

        v29 = v28;
        v30 = [v7 topOfStackSuggestion];
        v31 = [v30 canAddSuggestion:v6];

        if (v31)
        {
          goto LABEL_27;
        }

        v15 = __atxlog_handle_blending();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v16 = [v7 config];
        v32 = [v16 identifier];
        v34 = 138543618;
        v35 = v32;
        v36 = 2112;
        v37 = v6;
        v33 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - cannot add to existing layout; %@";
      }

      else
      {
        v15 = __atxlog_handle_blending();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_13;
        }

        v16 = [v7 config];
        v32 = [v16 identifier];
        v34 = 138543618;
        v35 = v32;
        v36 = 2112;
        v37 = v6;
        v33 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - can't be surfaced in SG widget; %@";
      }
    }

    else
    {
      v15 = __atxlog_handle_blending();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      v16 = [v7 config];
      v32 = [v16 identifier];
      v34 = 138543618;
      v35 = v32;
      v36 = 2112;
      v37 = v6;
      v33 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - widget not found in stack; %@";
    }

    _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, v33, &v34, 0x16u);

    goto LABEL_12;
  }

  v14 = __atxlog_handle_blending();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v7 config];
    v16 = [v15 identifier];
    v34 = 138543618;
    v35 = v16;
    v36 = 2112;
    v37 = v6;
    v17 = "    HSLS [assignSmartRotate]: Suggestion cannot smart rotate stack %{public}@ - smart rotate off; %@";
    goto LABEL_11;
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_isStack:(id)a3 eligibleToShowSuggestionViaWidgetSuggestion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 config];
  v9 = [v8 allowsNewWidget];

  if (!v9)
  {
    goto LABEL_3;
  }

  v10 = [v6 page];
  v11 = [v10 isSeldomVisited];

  if (v11)
  {
    goto LABEL_3;
  }

  v15 = [v7 executableSpecification];
  v16 = [v15 executableType];

  if (v16 == 3)
  {
    if ([v6 sizeIsCompatibleWithWidgetSuggestion:v7])
    {
      v17 = [v7 atxInfoSuggestionExecutableObject];
      if (!v17)
      {
        v18 = __atxlog_handle_blending();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412546;
          v28 = v6;
          v29 = 2112;
          v30 = v7;
          _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "HSLS: stack ineligible to show widget suggestion, no info suggestion: stack: %@, suggestion: %@", &v27, 0x16u);
        }

        goto LABEL_20;
      }

      v18 = v17;
      descriptorCache = self->_descriptorCache;
      v20 = [v17 widgetBundleIdentifier];
      v21 = [v18 widgetKind];
      v22 = [(ATXWidgetDescriptorCache *)descriptorCache homeScreenDescriptorForExtensionBundleId:v20 kind:v21];

      if (!v22)
      {
        v22 = __atxlog_handle_blending();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412546;
          v28 = v6;
          v29 = 2112;
          v30 = v7;
          _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "HSLS: stack ineligible to show widget suggestion, descriptor not found: stack: %@, suggestion: %@", &v27, 0x16u);
        }

        goto LABEL_19;
      }

      v23 = [v6 config];
      [v23 stackLayoutSize];
      CHSWidgetFamilyFromATXStackLayoutSize();

      [v22 disfavoredFamiliesForLocation:0];
      if (CHSWidgetFamilyMaskContainsFamily())
      {
        v24 = __atxlog_handle_blending();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412546;
          v28 = v6;
          v29 = 2112;
          v30 = v7;
          _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "HSLS: stack ineligible to show widget suggestion, stack family is disfavored by widget: stack: %@, suggestion: %@", &v27, 0x16u);
        }

LABEL_19:
LABEL_20:

        goto LABEL_3;
      }

LABEL_14:
      v12 = 1;
      goto LABEL_4;
    }
  }

  else
  {
    v25 = [v6 config];
    v26 = [v25 stackLayoutSize];

    if (v26 != 4)
    {
      goto LABEL_14;
    }
  }

LABEL_3:
  v12 = 0;
LABEL_4:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_shouldConsiderSuggestionForSuggestionsWidget:(id)a3
{
  v4 = a3;
  if ([(ATXBlendingLayerHyperParameters *)self->_hyperParameters isSuggestionEligibleForSuggestionsWidget:v4])
  {
    v5 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithSuggestion:v4 engagedExecutables:self->_dismissedSuggestionsForSuggestionsWidget]^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_shouldConsiderSuggestionForAppPredictionPanel:(id)a3
{
  v4 = a3;
  if ([(ATXBlendingLayerHyperParameters *)self->_hyperParameters isSuggestionEligibleForAppPredictionPanel:v4])
  {
    v5 = [(ATXEngagementRecordManager *)self->_engagementRecordManager hasEngagedWithSuggestion:v4 engagedExecutables:self->_dismissedSuggestionsForAppPredictionPanels]^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_isBackgroundAppRefreshAllowedForAppBundleId:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v5 = [MEMORY[0x277D06A28] sharedScheduler];
    v17 = 0;
    v18[0] = &v17;
    v18[1] = 0x2020000000;
    v19 = 1;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __77__ATXHomeScreenLayoutSelector2__isBackgroundAppRefreshAllowedForAppBundleId___block_invoke;
    v14[3] = &unk_278599750;
    v16 = &v17;
    v6 = v4;
    v15 = v6;
    [v5 backgroundAppRefreshEnabledForApp:v3 withHandler:v14];
    v7 = v6;
    v8 = dispatch_time(0, 100000000);
    v9 = dispatch_semaphore_wait(v7, v8);

    if (v9)
    {
      v10 = __atxlog_handle_blending();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenLayoutSelector2 _isBackgroundAppRefreshAllowedForAppBundleId:];
      }

      v11 = 1;
    }

    else
    {
      v12 = __atxlog_handle_blending();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ATXHomeScreenLayoutSelector2 *)v18 _isBackgroundAppRefreshAllowedForAppBundleId:v3, v12];
      }

      v11 = *(v18[0] + 24);
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXHomeScreenLayoutSelector2 _isBackgroundAppRefreshAllowedForAppBundleId:v7];
    }

    v11 = 1;
  }

  return v11 & 1;
}

- (int64_t)_thresholdConfidenceForSuggestedSG
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(NSUserDefaults *)self->_defaults integerForKey:*MEMORY[0x277CEBD60]]< 10 || [(NSUserDefaults *)self->_defaults integerForKey:*MEMORY[0x277CEBD68]])
  {
    if ([(ATXWidgetSuggestionDismissManager *)self->_widgetDismissManager userDismissCountForWidgetSuggestionWithBundleId:*MEMORY[0x277CEBBA0]]<= 1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
    }
  }

  else
  {
    v3 = 4;
  }

  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "HSLS: threshold confidence for suggested SG = %ld", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)_shouldLimitWidgetSuggestionPowerCost
{
  if (self->_isiPad || ([MEMORY[0x277D42590] isInternalBuild] & 1) != 0)
  {
    return 0;
  }

  v4 = [(NSUserDefaults *)self->_defaults objectForKey:*MEMORY[0x277CEBD78]];
  if (v4)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = v5;
    [v4 timeIntervalSinceReferenceDate];
    v3 = v6 - v7 < 604800.0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_loadHomeScreenState:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v4;
  v34 = v6;
  if (!v6)
  {
    v49 = 0;
    v6 = [v5 loadHomeScreenAndTodayPageConfigurationsWithError:&v49];
    v7 = v49;
    if (v7)
    {
      v8 = __atxlog_handle_blending();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenLayoutSelector2 _loadHomeScreenState:];
      }
    }

    if (!v6)
    {
      v9 = __atxlog_handle_blending();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenLayoutSelector2 _loadHomeScreenState:];
      }

      v6 = MEMORY[0x277CBEBF8];
    }
  }

  v35 = v5;
  v10 = [(ATXHomeScreenLayoutSelector2 *)self _sortedPagesByMostRecentUserVisit:v6];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v46;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v46 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v17 = [v16 stacks];
        v18 = [v17 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v42;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v42 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [(ATXHomeScreenLayoutSelector2 *)self _logStackDetail:*(*(&v41 + 1) + 8 * j)];
            }

            v19 = [v17 countByEnumeratingWithState:&v41 objects:v51 count:16];
          }

          while (v19);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v22 = [v16 panels];
        v23 = [v22 countByEnumeratingWithState:&v37 objects:v50 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v38;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v38 != v25)
              {
                objc_enumerationMutation(v22);
              }

              [(ATXHomeScreenLayoutSelector2 *)self _logStackDetail:*(*(&v37 + 1) + 8 * k)];
            }

            v24 = [v22 countByEnumeratingWithState:&v37 objects:v50 count:16];
          }

          while (v24);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v13);
  }

  v36 = 0;
  v27 = [v35 loadDockAppListWithError:&v36];
  v28 = v36;
  if (v28)
  {
    v29 = __atxlog_handle_blending();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLayoutSelector2 _loadHomeScreenState:];
    }
  }

  if (!v27)
  {
    v30 = __atxlog_handle_blending();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [ATXHomeScreenLayoutSelector2 _loadHomeScreenState:];
    }

    v27 = objc_opt_new();
  }

  v31 = [[_ATXHomeScreenState alloc] initWithSortedHomeScreenPagesByUserLastVisit:v11 appsOnDock:v27 stackStateTracker:self->_stackStateTracker suggestionDeduplicator:self->_suggestionDeduplicator hyperParameters:self->_hyperParameters];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)_logStackDetail:(id)a3
{
  *(&v31[2] + 6) = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 identifier];
    v6 = [v3 page];
    *buf = 138544386;
    v26 = v5;
    v27 = 2048;
    v28 = [v6 pageIndex];
    v29 = 1024;
    *v30 = [v3 allowsSmartRotate];
    *&v30[4] = 1024;
    *&v30[6] = [v3 allowsNewWidget];
    LOWORD(v31[0]) = 2048;
    *(v31 + 2) = [v3 stackLayoutSize];
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "HSLS [loadHSState]: stack %{public}@ page=%lu rotatation=%d N+1=%d size=%lu widgets:", buf, 0x2Cu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = v3;
  v7 = [v3 widgets];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = __atxlog_handle_blending();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v12 widgetUniqueId];
          v15 = [v12 extensionBundleId];
          v16 = [v12 widgetKind];
          v17 = [v12 intent];
          *buf = 138413058;
          v26 = v14;
          v27 = 2112;
          v28 = v15;
          v29 = 2112;
          *v30 = v16;
          *&v30[8] = 2112;
          v31[0] = v17;
          _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "  HSLS [loadHSState]: %@ : %@ : %@ : %@", buf, 0x2Au);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_sortedPagesByMostRecentUserVisit:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = -[ATXStackStateTracker lastThreeUserVisitDatesOfPage:](self->_stackStateTracker, "lastThreeUserVisitDatesOfPage:", [v10 pageIndex]);
        v12 = [v11 firstObject];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [MEMORY[0x277CBEAA8] distantPast];
        }

        v15 = v14;

        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "pageIndex")}];
        [v5 setObject:v15 forKeyedSubscript:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __66__ATXHomeScreenLayoutSelector2__sortedPagesByMostRecentUserVisit___block_invoke;
  v22[3] = &unk_278599778;
  v23 = v5;
  v17 = v5;
  v18 = [obj sortedArrayUsingComparator:v22];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __66__ATXHomeScreenLayoutSelector2__sortedPagesByMostRecentUserVisit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(a2, "pageIndex")}];
  v9 = [v5 objectForKeyedSubscript:v8];

  v10 = *(a1 + 32);
  v11 = MEMORY[0x277CCABB0];
  v12 = [v7 pageIndex];

  v13 = [v11 numberWithUnsignedInteger:v12];
  v14 = [v10 objectForKeyedSubscript:v13];

  v15 = [v14 compare:v9];
  return v15;
}

- (id)_homeScreenCachedSuggestionsFromHomeScreenState:(id)a3 sortedFallbackSuggestions:(id)a4 suggestionsWidgetPreviews:(id)a5 appPredictionPanelPreview:(id)a6 withUUID:(id)a7
{
  v99 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v59 = a4;
  v57 = a5;
  v58 = a6;
  v13 = a7;
  v73 = objc_opt_new();
  v67 = objc_opt_new();
  v66 = objc_opt_new();
  v68 = objc_opt_new();
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v60 = v12;
  obj = [v12 sortedPagesByUserLastVisit];
  v63 = [obj countByEnumeratingWithState:&v90 objects:v98 count:16];
  if (v63)
  {
    v62 = *v91;
    do
    {
      v14 = 0;
      do
      {
        if (*v91 != v62)
        {
          objc_enumerationMutation(obj);
        }

        v64 = v14;
        v15 = *(*(&v90 + 1) + 8 * v14);
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v65 = [v15 stacks];
        v70 = [v65 countByEnumeratingWithState:&v86 objects:v97 count:16];
        if (v70)
        {
          v69 = *v87;
          do
          {
            v16 = 0;
            do
            {
              if (*v87 != v69)
              {
                objc_enumerationMutation(v65);
              }

              v72 = v16;
              v17 = *(*(&v86 + 1) + 8 * v16);
              v18 = [v17 topOfStackSuggestion];
              v19 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:v18 stack:v17 blendingUpdateUUID:v13];

              if (v19)
              {
                v20 = [v17 config];
                v21 = [v20 isAppPredictionPanel];

                v22 = [v17 config];
                v23 = [v22 identifier];
                if (v21)
                {
                  v24 = v67;
                }

                else
                {
                  v24 = v66;
                }

                [v24 setObject:v19 forKeyedSubscript:v23];
              }

              v71 = v19;
              v84 = 0u;
              v85 = 0u;
              v82 = 0u;
              v83 = 0u;
              v25 = [v17 suggestionsWidgetSuggestionsByWidgetUniqueId];
              v26 = [v25 allValues];

              v27 = [v26 countByEnumeratingWithState:&v82 objects:v96 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v83;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v83 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v31 = *(*(&v82 + 1) + 8 * i);
                    v32 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:v31 stack:v17 blendingUpdateUUID:v13];
                    if (v32)
                    {
                      v33 = [v31 widget];
                      v34 = [v33 widgetUniqueId];
                      [v73 setObject:v32 forKeyedSubscript:v34];
                    }
                  }

                  v28 = [v26 countByEnumeratingWithState:&v82 objects:v96 count:16];
                }

                while (v28);
              }

              v35 = objc_opt_new();
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v36 = [v17 suggestedWidgets];
              v37 = [v36 countByEnumeratingWithState:&v78 objects:v95 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v79;
                do
                {
                  for (j = 0; j != v38; ++j)
                  {
                    if (*v79 != v39)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v41 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:*(*(&v78 + 1) + 8 * j) stack:v17 blendingUpdateUUID:v13];
                    if (v41)
                    {
                      [v35 addObject:v41];
                    }
                  }

                  v38 = [v36 countByEnumeratingWithState:&v78 objects:v95 count:16];
                }

                while (v38);
              }

              v42 = [v17 config];
              v43 = [v42 identifier];
              [v68 setObject:v35 forKeyedSubscript:v43];

              v16 = v72 + 1;
            }

            while (v72 + 1 != v70);
            v70 = [v65 countByEnumeratingWithState:&v86 objects:v97 count:16];
          }

          while (v70);
        }

        v14 = v64 + 1;
      }

      while (v64 + 1 != v63);
      v63 = [obj countByEnumeratingWithState:&v90 objects:v98 count:16];
    }

    while (v63);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v44 = v57;
  v45 = [v44 countByEnumeratingWithState:&v74 objects:v94 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v75;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v75 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v74 + 1) + 8 * k);
        v50 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:v49 stack:0 blendingUpdateUUID:v13];
        if (v50)
        {
          v51 = [v49 widget];
          v52 = [v51 widgetUniqueId];
          [v73 setObject:v50 forKeyedSubscript:v52];
        }
      }

      v46 = [v44 countByEnumeratingWithState:&v74 objects:v94 count:16];
    }

    while (v46);
  }

  v53 = [(ATXHomeScreenLayoutSelector2 *)self _processedSuggestionLayoutFromWidgetSuggestion:v58 stack:0 blendingUpdateUUID:v13];
  if (v53)
  {
    [v67 setObject:v53 forKeyedSubscript:*MEMORY[0x277CEBB40]];
  }

  v54 = [objc_alloc(MEMORY[0x277D42038]) initWithUUID:v13 suggestionWidgetLayouts:v73 appPredictionPanelLayouts:v67 topOfStackLayouts:v66 suggestedWidgetLayouts:v68 fallbackSuggestions:v59];

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (id)_processedSuggestionLayoutFromWidgetSuggestion:(id)a3 stack:(id)a4 blendingUpdateUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 suggestionLayout];

  if (v11)
  {
    v11 = [v8 suggestionLayout];
    v12 = [v8 widget];
    v13 = [v8 mainSuggestionInLayout];
    v14 = [v13 scoreSpecification];
    v15 = [v14 suggestedConfidenceCategory];

    [v11 setUuid:v10];
    v16 = [v8 mainSuggestionInLayout];
    v17 = [v16 uuid];
    [v11 setUuidOfHighestConfidenceSuggestion:v17];

    v18 = [v12 extensionBundleId];
    if ([v18 isEqualToString:*MEMORY[0x277CEBBA0]])
    {
      [v11 setIsValidForSuggestionsWidget:1];
    }

    else
    {
      v19 = [v12 extensionBundleId];
      [v11 setIsValidForSuggestionsWidget:{objc_msgSend(v19, "isEqualToString:", *MEMORY[0x277CEB1C0])}];
    }

    v20 = [v12 widgetUniqueId];
    [v11 setWidgetUniqueId:v20];

    [v11 setIsLowConfidenceStackRotationForStaleStack:v15 < 3];
    v21 = [v9 config];
    v22 = [v21 widgets];
    [v11 setNumWidgetsInStack:{objc_msgSend(v22, "count")}];

    [(ATXHomeScreenLayoutSelector2 *)self _computeScoreForLayout:v11];
    [v11 setLayoutScore:?];
    v23 = [v9 suggestedWidgets];
    [v11 setIsNPlusOne:{objc_msgSend(v23, "containsObject:", v8)}];
  }

  return v11;
}

- (double)_computeScoreForLayout:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D420E8] minSuggestionLayoutTypesForUILayoutType:{objc_msgSend(v4, "layoutType")}];
  v6 = [v5 objectForKeyedSubscript:&unk_283A557A8];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    v8 = 0;
    v9 = 0.0;
    do
    {
      v10 = [v4 oneByOneSuggestions];
      v11 = [v10 objectAtIndexedSubscript:v8];

      v12 = [v11 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [v12 suggestedConfidenceCategory]);
      v9 = v9 + v13;

      ++v8;
      v14 = [v5 objectForKeyedSubscript:&unk_283A557A8];
      v15 = [v14 unsignedIntegerValue];
    }

    while (v8 < v15);
  }

  else
  {
    v9 = 0.0;
  }

  v16 = [v5 objectForKeyedSubscript:&unk_283A557C0];
  v17 = [v16 unsignedIntegerValue];

  if (v17)
  {
    v18 = 0;
    do
    {
      v19 = [v4 oneByTwoSuggestions];
      v20 = [v19 objectAtIndexedSubscript:v18];

      v21 = [v20 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [v21 suggestedConfidenceCategory]);
      v9 = v9 + v22;

      ++v18;
      v23 = [v5 objectForKeyedSubscript:&unk_283A557C0];
      v24 = [v23 unsignedIntegerValue];
    }

    while (v18 < v24);
  }

  v25 = [v5 objectForKeyedSubscript:&unk_283A557D8];
  v26 = [v25 unsignedIntegerValue];

  if (v26)
  {
    v27 = 0;
    do
    {
      v28 = [v4 twoByTwoSuggestions];
      v29 = [v28 objectAtIndexedSubscript:v27];

      v30 = [v29 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [v30 suggestedConfidenceCategory]);
      v9 = v9 + v31;

      ++v27;
      v32 = [v5 objectForKeyedSubscript:&unk_283A557D8];
      v33 = [v32 unsignedIntegerValue];
    }

    while (v27 < v33);
  }

  v34 = [v5 objectForKeyedSubscript:&unk_283A557F0];
  v35 = [v34 unsignedIntegerValue];

  if (v35)
  {
    v36 = 0;
    do
    {
      v37 = [v4 oneByFourSuggestions];
      v38 = [v37 objectAtIndexedSubscript:v36];

      v39 = [v38 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [v39 suggestedConfidenceCategory]);
      v9 = v9 + v40;

      ++v36;
      v41 = [v5 objectForKeyedSubscript:&unk_283A557F0];
      v42 = [v41 unsignedIntegerValue];
    }

    while (v36 < v42);
  }

  v43 = [v5 objectForKeyedSubscript:&unk_283A55808];
  v44 = [v43 unsignedIntegerValue];

  if (v44)
  {
    v45 = 0;
    do
    {
      v46 = [v4 twoByFourSuggestions];
      v47 = [v46 objectAtIndexedSubscript:v45];

      v48 = [v47 scoreSpecification];
      -[ATXHomeScreenLayoutSelector2 _weightForConfidenceCategory:](self, "_weightForConfidenceCategory:", [v48 suggestedConfidenceCategory]);
      v9 = v9 + v49;

      ++v45;
      v50 = [v5 objectForKeyedSubscript:&unk_283A55808];
      v51 = [v50 unsignedIntegerValue];
    }

    while (v45 < v51);
  }

  return v9;
}

- (double)_weightForConfidenceCategory:(int64_t)a3
{
  if (a3 > 3)
  {
    return 100.0;
  }

  else
  {
    return dbl_2268721B8[a3];
  }
}

- (void)_assignUnfilledSGWidgetForPage:(uint64_t)a1 suggestions:(uint64_t)a2 homeScreenState:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_0(a1 a2)];
  v5 = [v4 widgetUniqueId];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_4_1(&dword_2263AA000, v6, v7, "  HSLS [assignUnfilledSG]: Not enough suggestions to fill layouts of SW %@");
}

- (void)_fillSuggestedSGWidgetIfLayoutNotComplete:(void *)a1 withSuggestions:updatingUsedSuggestionIndexSet:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 widget];
  v2 = [v1 widgetUniqueId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x277D85DE8];
}

void __121__ATXHomeScreenLayoutSelector2__fillSuggestedSGWidgetIfLayoutNotComplete_withSuggestions_updatingUsedSuggestionIndexSet___block_invoke_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 widget];
  v2 = [v1 widgetUniqueId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __114__ATXHomeScreenLayoutSelector2__assignExistingSuggestedSGWidgetsOnPages_withSuggestions_suggestionToRankingIndex___block_invoke_2_cold_1(id *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*a1 widget];
  v2 = [v1 widgetUniqueId];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __98__ATXHomeScreenLayoutSelector2__stackHasRemainingReloadBudgetForWidgetSuggestion_homeScreenState___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_suggestionsWidgetPreviewsFromRankedSuggestions:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_0(a1 a2)];
  v5 = [v4 widgetUniqueId];
  *v3 = 138412290;
  *v2 = v5;
  OUTLINED_FUNCTION_4_1(&dword_2263AA000, v6, v7, "HSLS [SWPreviewGeneration]: Not enough suggestion to generate preview %@");
}

- (void)_appPredictionPanelPreviewFromRankedSuggestions:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 widget];
  v4 = [v3 widgetUniqueId];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "HSLS [APPPreviewGeneration]: Not enough suggestion to generate preview %@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isBackgroundAppRefreshAllowedForAppBundleId:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_isBackgroundAppRefreshAllowedForAppBundleId:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 24);
  v5[0] = 67109378;
  v5[1] = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "HSLS: Background app refresh is allowed %{BOOL}d for %@", v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_isBackgroundAppRefreshAllowedForAppBundleId:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = 0;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "HSLS: Attempting to consider suggestion with no app bundle identifier: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_loadHomeScreenState:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loadHomeScreenState:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end