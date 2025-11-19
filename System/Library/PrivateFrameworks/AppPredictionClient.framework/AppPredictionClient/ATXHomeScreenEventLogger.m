@interface ATXHomeScreenEventLogger
- (ATXHomeScreenEventLogger)initWithHomeScreenConfigCache:(id)a3 biomeUIStream:(id)a4 PETEventTracker:(id)a5 defaults:(id)a6;
- (ATXHomeScreenEventLoggerDelegate)delegate;
- (id)_homeScreenEventWithDate:(id)a3 eventTypeString:(id)a4 stackIdentifier:(id)a5 stackKind:(unint64_t)a6 stackLocation:(unint64_t)a7 reason:(id)a8 widget:(id)a9 blendingCacheIdentifier:(id)a10 metadata:(id)a11;
- (id)_pageIndexGivenWidgetUniqueId:(id)a3 stackIdToStackDataDictionary:(id)a4 widgetIdToStackIdDictionary:(id)a5;
- (unint64_t)_stackKindGivenWidgetUniqueId:(id)a3 stackIdToStackDataDictionary:(id)a4 widgetIdToStackIdDictionary:(id)a5;
- (unint64_t)_stackLocationGivenWidgetUniqueId:(id)a3 stackIdToStackDataDictionary:(id)a4 widgetIdToStackIdDictionary:(id)a5;
- (void)_handleRemovedSuggestedWidgetsIfNecessary:(id)a3;
- (void)_logAppLaunchOverallCaptureRateFromAppPredictionPanelWithTappedWidget:(id)a3 suggestion:(id)a4;
- (void)_logAppPanelLaunchRatioWithTappedWidget:(id)a3;
- (void)_logCaptureRateDiversionIfAppPredictionPanelExistsWithTappedWidget:(id)a3;
- (void)_logCaptureRateForAppPredictionPanelWithEngagedSuggestion:(id)a3 isSuggestionsWidget:(BOOL)a4 widgetIdentifier:(id)a5;
- (void)_logProactiveWidgetEvent:(int)a3 suggestionIdentifiers:(id)a4 widget:(id)a5 blendingCacheId:(id)a6 date:(id)a7;
- (void)_logRemovalDateOfDefaultTVWidgetIfApplicable:(id)a3 configDiffer:(id)a4;
- (void)_logSupplementaryActionInContextMenu:(unint64_t)a3 stackId:(id)a4 widget:(id)a5 prediction:(id)a6;
- (void)_populateCachedIconState:(id)a3;
- (void)_populateStackKindAndLocation:(id)a3;
- (void)_populateSuggestedPageMetadata:(id)a3 forPage:(id)a4;
- (void)_sendEventToBiomeWithDate:(id)a3 eventType:(int)a4 stackIdentifier:(id)a5 stackKind:(unint64_t)a6 stackLocation:(unint64_t)a7 reason:(id)a8 widget:(id)a9 blendingCacheIdentifier:(id)a10 metadata:(id)a11;
- (void)_updateCurrentConfigurationsAndLogDiff;
- (void)logContextMenuDismissOnceForSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logContextMenuNeverShowAgainForSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logDeviceLock;
- (void)logDeviceUnlock;
- (void)logDidTapSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logHomeScreenDidDisappearWithReason:(id)a3;
- (void)logHomeScreenPageDidAppear:(unint64_t)a3 topWidgetsByStackIdentifier:(id)a4 prediction:(id)a5;
- (void)logSpecialPageDidAppear:(unint64_t)a3 widgetsByStackId:(id)a4 prediction:(id)a5;
- (void)logSpecialPageDidDisappear:(unint64_t)a3;
- (void)logStackDidAppear:(id)a3 topWidget:(id)a4 prediction:(id)a5;
- (void)logStackDidDisappear:(id)a3 topWidget:(id)a4 prediction:(id)a5;
- (void)logStackDidTap:(id)a3 engagedUrl:(id)a4 widgetOnTop:(id)a5 prediction:(id)a6;
- (void)logStackStatusDidChange:(id)a3 widgetOnTop:(id)a4 reason:(unint64_t)a5 prediction:(id)a6;
- (void)logStackVisibilityChanged:(id)a3 visibleRect:(CGRect)a4 topWidget:(id)a5 prediction:(id)a6;
- (void)logSuggestionsDidAppear:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logSuggestionsDidDisappear:(id)a3 widget:(id)a4 blendingCacheId:(id)a5;
- (void)logUserDidAcceptWidgetOnboardingSuggestion:(id)a3;
- (void)logUserDidAddApp:(id)a3 page:(id)a4;
- (void)logUserDidAddPinnedWidget:(id)a3 page:(id)a4 defaultsComparator:(id)a5;
- (void)logUserDidAddWidgetToStack:(id)a3 stackIdentifier:(id)a4 isSuggestion:(BOOL)a5;
- (void)logUserDidChangeStackConfiguration:(id)a3;
- (void)logUserDidCreateStack:(id)a3 page:(id)a4 isSuggestion:(BOOL)a5;
- (void)logUserDidDeletePinnedWidget:(id)a3 stackLocation:(unint64_t)a4 page:(id)a5;
- (void)logUserDidDeleteStack:(id)a3 stackKind:(unint64_t)a4 stackLocation:(unint64_t)a5 page:(id)a6;
- (void)logUserDidDeleteWidgetOnStack:(id)a3 stackIdentifier:(id)a4 stackKind:(unint64_t)a5 stackLocation:(unint64_t)a6;
- (void)logUserDidEnterEditModeForWidgetOnboarding;
- (void)logUserDidRejectWidgetOnboardingSuggestion:(id)a3;
- (void)logUserDidRemoveApp:(id)a3 page:(id)a4;
- (void)logUserDidStartWidgetOnboarding;
- (void)logWidgetDidAppear:(id)a3 blendingCacheId:(id)a4;
- (void)logWidgetDidAppear:(id)a3 stackId:(id)a4 prediction:(id)a5;
- (void)logWidgetDidDisappear:(id)a3 blendingCacheId:(id)a4;
- (void)logWidgetDidDisappear:(id)a3 stackId:(id)a4 prediction:(id)a5;
- (void)logWidgetInsertionDidFailInStack:(id)a3 prediction:(id)a4;
- (void)logWidgetOccluded:(id)a3 blendingCacheId:(id)a4;
- (void)logWidgetUnoccluded:(id)a3 blendingCacheId:(id)a4;
- (void)notifySuggestedWidgetsToStacksChanged:(id)a3;
@end

@implementation ATXHomeScreenEventLogger

- (void)logDeviceUnlock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ATXHomeScreenEventLogger_logDeviceUnlock__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(queue, block);
}

void __43__ATXHomeScreenEventLogger_logDeviceUnlock__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenEventLogger: donating unlock event", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DF00] now];
  [v3 _sendEventToBiomeWithDate:v4 eventType:9 stackIdentifier:0 stackKind:0 stackLocation:0 reason:0 widget:0 blendingCacheIdentifier:0 metadata:0];
}

- (void)_updateCurrentConfigurationsAndLogDiff
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__ATXHomeScreenEventLogger__updateCurrentConfigurationsAndLogDiff__block_invoke(uint64_t a1, void *a2)
{
  v161 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__ATXHomeScreenEventLogger__updateCurrentConfigurationsAndLogDiff__block_invoke_cold_1();
    }
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v5 = [*(a1 + 32) addedApps];
  v6 = [v5 countByEnumeratingWithState:&v146 objects:v160 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v147;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v147 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v146 + 1) + 8 * i);
        v11 = *(a1 + 40);
        v12 = [v10 page];
        [v11 logUserDidAddApp:v10 page:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v146 objects:v160 count:16];
    }

    while (v7);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v13 = [*(a1 + 32) removedApps];
  v14 = [v13 countByEnumeratingWithState:&v142 objects:v159 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v143;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v143 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v142 + 1) + 8 * j);
        v19 = *(a1 + 40);
        v20 = [v18 page];
        [v19 logUserDidRemoveApp:v18 page:v20];
      }

      v15 = [v13 countByEnumeratingWithState:&v142 objects:v159 count:16];
    }

    while (v15);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v21 = [*(a1 + 32) addedPinnedWidgets];
  v22 = [v21 countByEnumeratingWithState:&v138 objects:v158 count:16];
  v112 = v22 != 0;
  if (v22)
  {
    v23 = v22;
    v24 = *v139;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v139 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v138 + 1) + 8 * k);
        v27 = *(a1 + 40);
        v28 = [v26 page];
        [v27 logUserDidAddPinnedWidget:v26 page:v28 defaultsComparator:*(a1 + 48)];
      }

      v23 = [v21 countByEnumeratingWithState:&v138 objects:v158 count:16];
    }

    while (v23);
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v29 = [*(a1 + 32) widgetsAddedToStacksByUser];
  v30 = [v29 countByEnumeratingWithState:&v134 objects:v157 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v135;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v135 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v134 + 1) + 8 * m);
        v35 = [*(a1 + 48) rankOfWidgetSuggestedInGallery:v34];
        v36 = [v34 widgetUniqueId];

        if (v36)
        {
          v37 = [*(a1 + 32) stackInCurrentConfigurationsForStackedWidget:v34];
          v38 = [v37 identifier];

          [*(a1 + 40) logUserDidAddWidgetToStack:v34 stackIdentifier:v38 isSuggestion:v35 != 0];
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v134 objects:v157 count:16];
    }

    while (v31);
    v112 = 1;
  }

  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v39 = [*(a1 + 32) suggestedWidgetsAddedPermanentlyByUser];
  v40 = [v39 countByEnumeratingWithState:&v130 objects:v156 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v131;
    do
    {
      for (n = 0; n != v41; ++n)
      {
        if (*v131 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v130 + 1) + 8 * n);
        v45 = [v44 widgetUniqueId];

        if (v45)
        {
          v46 = *(a1 + 56);
          v47 = *(a1 + 64);
          v48 = [v44 widgetUniqueId];
          v49 = [v47 objectForKeyedSubscript:v48];
          v50 = [v46 objectForKeyedSubscript:v49];

          if (v50 && (v51 = v50[3]) != 0)
          {
            [*(a1 + 40) _logSupplementaryActionInContextMenu:3 stackId:v51 widget:v44 prediction:0];
          }

          else
          {
            v52 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v155 = v44;
              _os_log_error_impl(&dword_1BF549000, v52, OS_LOG_TYPE_ERROR, "ATXHomeScreenEventLogger: Unable to emit 'Add To Stack' event for previously suggested widget %@, due to unkown stackId.", buf, 0xCu);
            }
          }
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v130 objects:v156 count:16];
    }

    while (v41);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v53 = [*(a1 + 32) addedStacks];
  v54 = [v53 countByEnumeratingWithState:&v126 objects:v153 count:16];
  v55 = v112;
  if (v54)
  {
    v56 = v54;
    v57 = *v127;
    do
    {
      for (ii = 0; ii != v56; ++ii)
      {
        if (*v127 != v57)
        {
          objc_enumerationMutation(v53);
        }

        v59 = *(*(&v126 + 1) + 8 * ii);
        v60 = [*(a1 + 48) isStackDefaultStack:v59];
        v61 = *(a1 + 40);
        v62 = [v59 page];
        [v61 logUserDidCreateStack:v59 page:v62 isSuggestion:v60];
      }

      v56 = [v53 countByEnumeratingWithState:&v126 objects:v153 count:16];
    }

    while (v56);
    v55 = 1;
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v63 = [*(a1 + 32) deletedPinnedWidgets];
  v64 = [v63 countByEnumeratingWithState:&v122 objects:v152 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v123;
    do
    {
      for (jj = 0; jj != v65; ++jj)
      {
        if (*v123 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v122 + 1) + 8 * jj);
        v69 = *(a1 + 40);
        v70 = [v68 widgetUniqueId];
        v71 = [v69 _stackLocationGivenWidgetUniqueId:v70 stackIdToStackDataDictionary:*(a1 + 56) widgetIdToStackIdDictionary:*(a1 + 64)];

        v72 = *(a1 + 40);
        v73 = [v68 page];
        [v72 logUserDidDeletePinnedWidget:v68 stackLocation:v71 page:v73];

        [*(a1 + 40) _logRemovalDateOfDefaultTVWidgetIfApplicable:v68 configDiffer:*(a1 + 32)];
      }

      v65 = [v63 countByEnumeratingWithState:&v122 objects:v152 count:16];
    }

    while (v65);
    v55 = 1;
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v74 = [*(a1 + 32) widgetsDeletedFromStacksByUser];
  v75 = [v74 countByEnumeratingWithState:&v118 objects:v151 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v119;
    do
    {
      for (kk = 0; kk != v76; ++kk)
      {
        if (*v119 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v79 = *(*(&v118 + 1) + 8 * kk);
        v80 = [*(a1 + 32) stackInPreviousConfigurationsForStackedWidget:v79];
        v81 = [v80 identifier];

        v82 = *(a1 + 40);
        v83 = [v79 widgetUniqueId];
        v84 = [v82 _stackKindGivenWidgetUniqueId:v83 stackIdToStackDataDictionary:*(a1 + 56) widgetIdToStackIdDictionary:*(a1 + 64)];

        v85 = *(a1 + 40);
        v86 = [v79 widgetUniqueId];
        v87 = [v85 _stackLocationGivenWidgetUniqueId:v86 stackIdToStackDataDictionary:*(a1 + 56) widgetIdToStackIdDictionary:*(a1 + 64)];

        [*(a1 + 40) logUserDidDeleteWidgetOnStack:v79 stackIdentifier:v81 stackKind:v84 stackLocation:v87];
        [*(a1 + 40) _logRemovalDateOfDefaultTVWidgetIfApplicable:v79 configDiffer:*(a1 + 32)];
      }

      v76 = [v74 countByEnumeratingWithState:&v118 objects:v151 count:16];
    }

    while (v76);
    v55 = 1;
  }

  v88 = *(a1 + 40);
  v89 = [*(a1 + 32) suggestedWidgetsRemoved];
  [v88 _handleRemovedSuggestedWidgetsIfNecessary:v89];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v90 = [*(a1 + 32) deletedStacks];
  v91 = [v90 countByEnumeratingWithState:&v114 objects:v150 count:16];
  if (v91)
  {
    v92 = v91;
    v93 = *v115;
    obj = v90;
    do
    {
      for (mm = 0; mm != v92; ++mm)
      {
        if (*v115 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v95 = *(*(&v114 + 1) + 8 * mm);
        v96 = *(a1 + 40);
        v97 = [v95 widgets];
        v98 = [v97 firstObject];
        v99 = [v98 widgetUniqueId];
        v100 = [v96 _stackKindGivenWidgetUniqueId:v99 stackIdToStackDataDictionary:*(a1 + 56) widgetIdToStackIdDictionary:*(a1 + 64)];

        v101 = *(a1 + 40);
        v102 = [v95 widgets];
        v103 = [v102 firstObject];
        v104 = [v103 widgetUniqueId];
        v105 = [v101 _stackLocationGivenWidgetUniqueId:v104 stackIdToStackDataDictionary:*(a1 + 56) widgetIdToStackIdDictionary:*(a1 + 64)];

        v106 = *(a1 + 40);
        v107 = [v95 page];
        [v106 logUserDidDeleteStack:v95 stackKind:v100 stackLocation:v105 page:v107];
      }

      v92 = [obj countByEnumeratingWithState:&v114 objects:v150 count:16];
    }

    while (v92);
  }

  else
  {

    if ((v55 & 1) == 0)
    {
      v108 = __atxlog_handle_home_screen();
      v109 = v111;
      if (!os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_87;
      }

      *buf = 0;
      v110 = "ATXHomeScreenEventLogger: No widget or stack changes, not updating default home screen items";
      goto LABEL_86;
    }
  }

  notify_post([@"com.apple.duetexpertd.updateDefaultsDueToRelevantHomeScreenConfigUpdate" UTF8String]);
  v108 = __atxlog_handle_home_screen();
  v109 = v111;
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v110 = "ATXHomeScreenEventLogger: Widgets or stacks changed, updating default home screen items";
LABEL_86:
    _os_log_impl(&dword_1BF549000, v108, OS_LOG_TYPE_DEFAULT, v110, buf, 2u);
  }

LABEL_87:
}

- (ATXHomeScreenEventLogger)initWithHomeScreenConfigCache:(id)a3 biomeUIStream:(id)a4 PETEventTracker:(id)a5 defaults:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v44.receiver = self;
  v44.super_class = ATXHomeScreenEventLogger;
  v15 = [(ATXHomeScreenEventLogger *)&v44 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_homeScreenConfigCache, a3);
    objc_storeStrong(&v16->_biomeUIStream, a4);
    v17 = BiomeLibrary();
    v18 = [v17 Discoverability];
    v19 = [v18 Signals];
    discoverabilitySignalsStream = v16->_discoverabilitySignalsStream;
    v16->_discoverabilitySignalsStream = v19;

    objc_storeStrong(&v16->_tracker, a5);
    objc_storeStrong(&v16->_defaults, a6);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("com.apple.proactive.ATXHomeScreenEventLogger", v21);
    queue = v16->_queue;
    v16->_queue = v22;

    v24 = objc_opt_new();
    widgetIdToStackId = v16->_widgetIdToStackId;
    v16->_widgetIdToStackId = v24;

    v26 = objc_opt_new();
    stackIdToCachedStackData = v16->_stackIdToCachedStackData;
    v16->_stackIdToCachedStackData = v26;

    v28 = objc_opt_new();
    bundleIdToSBPageNumber = v16->_bundleIdToSBPageNumber;
    v16->_bundleIdToSBPageNumber = v28;

    v30 = objc_opt_new();
    dockAppSet = v16->_dockAppSet;
    v16->_dockAppSet = v30;

    v32 = objc_alloc(MEMORY[0x1E69C5D80]);
    v33 = v16->_queue;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke;
    v42[3] = &unk_1E80C0C90;
    v34 = v16;
    v43 = v34;
    v35 = [v32 initWithQueue:v33 operation:v42];
    coalescedConfigDiffOperation = v34->_coalescedConfigDiffOperation;
    v34->_coalescedConfigDiffOperation = v35;

    v37 = v16->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2;
    block[3] = &unk_1E80C0958;
    v40 = v34;
    v41 = v11;
    dispatch_async(v37, block);
  }

  return v16;
}

void __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v23 = 0;
  v3 = [v2 loadHomeScreenAndTodayPageConfigurationsWithError:&v23];
  v4 = v23;
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v3;

  if (v4)
  {
    v7 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2_cold_1();
    }
  }

  if (!*(*(a1 + 32) + 24))
  {
    v8 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2_cold_2();
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 24);
    *(v9 + 24) = MEMORY[0x1E695E0F0];
  }

  v11 = *(a1 + 40);
  v22 = 0;
  v12 = [v11 loadDockAppListWithError:&v22];
  v13 = v22;
  v14 = *(a1 + 32);
  v15 = *(v14 + 56);
  *(v14 + 56) = v12;

  if (v13)
  {
    v16 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2_cold_3();
    }
  }

  v17 = *(a1 + 32);
  if (!v17[7])
  {
    v18 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2_cold_4();
    }

    v19 = objc_opt_new();
    v20 = *(a1 + 32);
    v21 = *(v20 + 56);
    *(v20 + 56) = v19;

    v17 = *(a1 + 32);
  }

  [v17 _populateCachedIconState:v17[3]];
  [*(a1 + 32) _populateStackKindAndLocation:*(*(a1 + 32) + 24)];
}

- (void)notifySuggestedWidgetsToStacksChanged:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__ATXHomeScreenEventLogger_notifySuggestedWidgetsToStacksChanged___block_invoke;
  v7[3] = &unk_1E80C0958;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __66__ATXHomeScreenEventLogger_notifySuggestedWidgetsToStacksChanged___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 32) count] >= 0xC9)
  {
    [*(*(a1 + 32) + 32) removeAllObjects];
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);

  return [v3 addEntriesFromDictionary:v2];
}

- (void)_populateCachedIconState:(id)a3
{
  bundleIdToSBPageNumber = self->_bundleIdToSBPageNumber;
  v5 = a3;
  [(NSMutableDictionary *)bundleIdToSBPageNumber removeAllObjects];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__ATXHomeScreenEventLogger__populateCachedIconState___block_invoke;
  v6[3] = &unk_1E80C4700;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];
}

void __53__ATXHomeScreenEventLogger__populateCachedIconState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__ATXHomeScreenEventLogger__populateCachedIconState___block_invoke_2;
  v5[3] = &unk_1E80C3DB8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  [v4 enumerateApps:v5];
}

void __53__ATXHomeScreenEventLogger__populateCachedIconState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 40);
  v5 = a2;
  v8 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "pageIndex")}];
  v6 = *(*(a1 + 32) + 48);
  v7 = [v5 bundleId];

  [v6 setObject:v8 forKeyedSubscript:v7];
}

- (void)_populateStackKindAndLocation:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_stackIdToCachedStackData removeAllObjects];
  *&self->_hasAppPanelOnHomeScreen = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__ATXHomeScreenEventLogger__populateStackKindAndLocation___block_invoke;
  v8[3] = &unk_1E80C4728;
  v8[4] = self;
  v8[5] = &v9;
  [v4 enumerateObjectsUsingBlock:v8];
  if (*(v10 + 24) == 1)
  {
    v5 = *MEMORY[0x1E698B040];
    if (![(NSUserDefaults *)self->_defaults BOOLForKey:*MEMORY[0x1E698B040]])
    {
      [(NSUserDefaults *)self->_defaults setBool:1 forKey:v5];
      defaults = self->_defaults;
      v7 = [MEMORY[0x1E695DF00] now];
      [(NSUserDefaults *)defaults setObject:v7 forKey:*MEMORY[0x1E698B038]];
    }
  }

  _Block_object_dispose(&v9, 8);
}

void __58__ATXHomeScreenEventLogger__populateStackKindAndLocation___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v59 = ATXStackLocationForPageAndIndex(v5, a3);
  v60 = v5;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [v5 stacks];
  v55 = [obj countByEnumeratingWithState:&v73 objects:v80 count:16];
  if (v55)
  {
    v53 = *v74;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v74 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v73 + 1) + 8 * i);
        v8 = [v7 widgets];
        if ([v8 count])
        {
          v9 = [v60 pageIndex];

          if (v9 != 20000)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            if ([v60 containsSuggestionsWidget])
            {
              *(*(a1 + 32) + 66) = 1;
            }
          }
        }

        else
        {
        }

        v10 = [v7 widgets];
        if ([v10 count])
        {
          v11 = [v60 pageIndex];

          if (v11 == 20000 && [v60 containsSuggestionsWidget])
          {
            *(*(a1 + 32) + 67) = 1;
          }
        }

        else
        {
        }

        v57 = ATXStackKindForStack(v7);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v12 = [v7 widgets];
        v13 = [v12 countByEnumeratingWithState:&v69 objects:v79 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v70;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v70 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v69 + 1) + 8 * j);
              v18 = [v7 identifier];
              v19 = *(*(a1 + 32) + 32);
              v20 = [v17 widgetUniqueId];
              [v19 setObject:v18 forKeyedSubscript:v20];
            }

            v14 = [v12 countByEnumeratingWithState:&v69 objects:v79 count:16];
          }

          while (v14);
        }

        v21 = objc_opt_new();
        v21[1] = v57;
        v21[2] = v59;
        v22 = [v7 identifier];
        v23 = v21[3];
        v21[3] = v22;

        v21[4] = [v60 pageIndex];
        v24 = *(*(a1 + 32) + 40);
        v25 = [v7 identifier];
        [v24 setObject:v21 forKeyedSubscript:v25];
      }

      v55 = [obj countByEnumeratingWithState:&v73 objects:v80 count:16];
    }

    while (v55);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obja = [v60 panels];
  v56 = [obja countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v56)
  {
    v54 = *v66;
    do
    {
      v26 = 0;
      do
      {
        if (*v66 != v54)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v65 + 1) + 8 * v26);
        v28 = [v27 widgets];
        if ([v28 count])
        {
          v29 = [v60 pageIndex];

          if (v29 != 20000)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            *(*(a1 + 32) + 64) = 1;
          }
        }

        else
        {
        }

        v58 = v26;
        v30 = [v27 widgets];
        if ([v30 count])
        {
          v31 = [v60 pageIndex];

          if (v31 == 20000)
          {
            *(*(a1 + 32) + 65) = 1;
          }
        }

        else
        {
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v32 = [v27 widgets];
        v33 = [v32 countByEnumeratingWithState:&v61 objects:v77 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v62;
          do
          {
            for (k = 0; k != v34; ++k)
            {
              if (*v62 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v61 + 1) + 8 * k);
              v38 = [v37 extensionBundleId];
              v39 = [v38 isEqualToString:@"com.apple.proactive.appprediction.panel"];

              if (v39)
              {
                v40 = [v27 identifier];
                v41 = *(*(a1 + 32) + 32);
                v42 = [v37 widgetUniqueId];
                [v41 setObject:v40 forKeyedSubscript:v42];

                v43 = [v27 identifier];
                v44 = *(*(a1 + 32) + 32);
                v45 = [v27 identifier];
                [v44 setObject:v43 forKeyedSubscript:v45];

                v46 = objc_opt_new();
                v46[1] = 1;
                v46[2] = v59;
                v47 = [v27 identifier];
                v48 = v46[3];
                v46[3] = v47;

                v46[4] = [v60 pageIndex];
                v49 = *(*(a1 + 32) + 40);
                v50 = [v27 identifier];
                [v49 setObject:v46 forKeyedSubscript:v50];
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v61 objects:v77 count:16];
          }

          while (v34);
        }

        v26 = v58 + 1;
      }

      while (v58 + 1 != v56);
      v56 = [obja countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v56);
  }
}

- (void)_logRemovalDateOfDefaultTVWidgetIfApplicable:(id)a3 configDiffer:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (![MEMORY[0x1E69C5CF8] isiPad])
  {
    goto LABEL_10;
  }

  v7 = [v16 extensionBundleId];
  if (([v7 isEqualToString:@"com.apple.tv.TVWidgetExtension"] & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v8 = [v16 widgetKind];
  if (([v8 isEqualToString:@"com.apple.tv"] & 1) == 0)
  {

    goto LABEL_9;
  }

  v9 = [v16 size];

  if (v9 == 4 && ([(NSUserDefaults *)self->_defaults integerForKey:*MEMORY[0x1E698AFB8]]& 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v10 = *MEMORY[0x1E698AFB0];
    v11 = [(NSUserDefaults *)self->_defaults objectForKey:*MEMORY[0x1E698AFB0]];
    if (v11)
    {
    }

    else
    {
      v12 = [v16 extensionBundleId];
      v13 = [v16 widgetKind];
      v14 = [v6 currentConfigContainsWidgetWithBundleId:v12 kind:v13 size:{objc_msgSend(v16, "size")}];

      if ((v14 & 1) == 0)
      {
        defaults = self->_defaults;
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        [(NSUserDefaults *)defaults setDouble:v10 forKey:?];
      }
    }
  }

LABEL_10:
}

- (void)_handleRemovedSuggestedWidgetsIfNecessary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [a3 _pas_filteredArrayWithTest:&__block_literal_global_77];
  if ([v4 count])
  {
    v5 = *MEMORY[0x1E698B048];
    v6 = [(NSUserDefaults *)self->_defaults integerForKey:*MEMORY[0x1E698B048]];
    if (v6 <= 9)
    {
      v7 = v6;
      v20 = v5;
      v19 = *MEMORY[0x1E698B050];
      v8 = [(NSUserDefaults *)self->_defaults integerForKey:?];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v21 = v4;
      v9 = v4;
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          v13 = 0;
          do
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v22 + 1) + 8 * v13);
            WeakRetained = objc_loadWeakRetained(&self->_delegate);
            v16 = [WeakRetained hasWidgetBeenSeen:v14];

            if (v16)
            {
              ++v7;
              v17 = objc_loadWeakRetained(&self->_delegate);
              v18 = [v17 hasWidgetBeenTapped:v14];

              v8 += v18;
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }

      [(NSUserDefaults *)self->_defaults setInteger:v7 forKey:v20];
      [(NSUserDefaults *)self->_defaults setInteger:v8 forKey:v19];
      v4 = v21;
    }
  }
}

uint64_t __70__ATXHomeScreenEventLogger__handleRemovedSuggestedWidgetsIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 extensionBundleId];
  v3 = [v2 isEqualToString:*MEMORY[0x1E698AFC0]];

  return v3;
}

- (id)_pageIndexGivenWidgetUniqueId:(id)a3 stackIdToStackDataDictionary:(id)a4 widgetIdToStackIdDictionary:(id)a5
{
  v7 = a4;
  v8 = [a5 objectForKeyedSubscript:a3];
  if (v8 && ([v7 objectForKeyedSubscript:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v9 + 32)];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)_stackKindGivenWidgetUniqueId:(id)a3 stackIdToStackDataDictionary:(id)a4 widgetIdToStackIdDictionary:(id)a5
{
  v7 = a4;
  v8 = [a5 objectForKeyedSubscript:a3];
  if (v8 && ([v7 objectForKeyedSubscript:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9[1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)_stackLocationGivenWidgetUniqueId:(id)a3 stackIdToStackDataDictionary:(id)a4 widgetIdToStackIdDictionary:(id)a5
{
  v7 = a4;
  v8 = [a5 objectForKeyedSubscript:a3];
  if (v8 && ([v7 objectForKeyedSubscript:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9[2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_homeScreenEventWithDate:(id)a3 eventTypeString:(id)a4 stackIdentifier:(id)a5 stackKind:(unint64_t)a6 stackLocation:(unint64_t)a7 reason:(id)a8 widget:(id)a9 blendingCacheIdentifier:(id)a10 metadata:(id)a11
{
  v17 = a9;
  v33 = a10;
  v18 = a11;
  v19 = a8;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = objc_opt_new();
  [v23 setDate:v22];

  [v23 setEventTypeString:v21];
  [v23 setStackId:v20];

  [v23 setStackKind:a6];
  [v23 setStackLocation:a7];
  [v23 setReason:v19];

  if (v17)
  {
    v24 = [v17 extensionBundleId];
    [v23 setWidgetBundleId:v24];

    v25 = [v17 intent];
    v26 = [v25 intentDescription];
    if (v26)
    {
      [v23 setIntentDescription:v26];
    }

    else
    {
      v27 = [v17 intent];
      v28 = [v27 description];
      [v23 setIntentDescription:v28];
    }

    v29 = [v17 widgetUniqueId];
    [v23 setWidgetUniqueId:v29];

    v30 = [v17 widgetKind];
    [v23 setWidgetKind:v30];

    [v23 setWidgetSize:{objc_msgSend(v17, "size")}];
    v31 = [v17 appBundleId];
    [v23 setAppBundleId:v31];

    [v23 setIsSuggestedWidget:{objc_msgSend(v17, "isSuggestedWidget")}];
  }

  [v23 setBlendingCacheId:v33];
  [v23 setMetadata:v18];

  return v23;
}

- (void)_sendEventToBiomeWithDate:(id)a3 eventType:(int)a4 stackIdentifier:(id)a5 stackKind:(unint64_t)a6 stackLocation:(unint64_t)a7 reason:(id)a8 widget:(id)a9 blendingCacheIdentifier:(id)a10 metadata:(id)a11
{
  v15 = *&a4;
  v26 = a3;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  if (v15 >= 0x17)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v15];
  }

  else
  {
    v22 = off_1E80C4858[v15];
  }

  v23 = [(ATXHomeScreenEventLogger *)self _homeScreenEventWithDate:v26 eventTypeString:v22 stackIdentifier:v17 stackKind:a6 stackLocation:a7 reason:v18 widget:v19 blendingCacheIdentifier:v20 metadata:v21];

  biomeUIStream = self->_biomeUIStream;
  v25 = [ATXUIEvent uiEventWithHomeScreenEvent:v23];
  [(ATXUniversalBiomeUIStream *)biomeUIStream donateGenericUIEvent:v25];
}

- (void)_logProactiveWidgetEvent:(int)a3 suggestionIdentifiers:(id)a4 widget:(id)a5 blendingCacheId:(id)a6 date:(id)a7
{
  v10 = *&a3;
  v24 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (v13)
  {
    if (v10 >= 0xA)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
    }

    else
    {
      v15 = off_1E80C4910[v10];
    }

    v16 = [v12 widgetUniqueId];
    v17 = [(ATXHomeScreenEventLogger *)self _stackIdentifierGivenWidgetUniqueId:v16];
    v18 = [v12 widgetUniqueId];
    v19 = [(ATXHomeScreenEventLogger *)self _stackKindGivenWidgetUniqueId:v18];
    v20 = [v12 widgetUniqueId];
    v21 = [(ATXHomeScreenEventLogger *)self _homeScreenEventWithDate:v14 eventTypeString:v15 stackIdentifier:v17 stackKind:v19 stackLocation:[(ATXHomeScreenEventLogger *)self _stackLocationGivenWidgetUniqueId:v20] reason:0 widget:v12 blendingCacheIdentifier:v13 metadata:0];

    [v21 setSuggestionIds:v24];
    biomeUIStream = self->_biomeUIStream;
    v23 = [ATXUIEvent uiEventWithHomeScreenEvent:v21];
    [(ATXUniversalBiomeUIStream *)biomeUIStream donateGenericUIEvent:v23];
  }
}

- (void)_logCaptureRateForAppPredictionPanelWithEngagedSuggestion:(id)a3 isSuggestionsWidget:(BOOL)a4 widgetIdentifier:(id)a5
{
  if (self->_hasAppPanelOnHomeScreen)
  {
    v5 = a4;
    v8 = a5;
    v9 = [a3 executableSpecification];
    v10 = [v9 executableType];

    v11 = [(ATXHomeScreenEventLogger *)self _stackLocationGivenWidgetUniqueId:v8];
    if ((ATXStackLocationIsTodayPage(v11) & 1) == 0)
    {
      if (v5)
      {
        if (v10 == 2)
        {
          tracker = self->_tracker;
          v13 = 5001;
        }

        else
        {
          if (v10 != 1)
          {
            return;
          }

          tracker = self->_tracker;
          v13 = 5003;
        }

        [ATXBlendingCaptureRateTracker logHomeScreenDiversionWithCaptureType:v13 tracker:tracker];
      }

      else
      {
        v14 = self->_tracker;

        [ATXBlendingCaptureRateTracker logHomeScreenCaptureWithTracker:v14];
      }
    }
  }
}

- (void)_logCaptureRateDiversionIfAppPredictionPanelExistsWithTappedWidget:(id)a3
{
  v10 = a3;
  v4 = [v10 widgetUniqueId];

  if (v4)
  {
    v5 = [v10 extensionBundleId];
    if ([v5 isEqualToString:*MEMORY[0x1E698AFC0]])
    {
    }

    else
    {
      v6 = [v10 extensionBundleId];
      v7 = [v6 isEqualToString:@"com.apple.proactive.appprediction.panel"];

      if ((v7 & 1) == 0)
      {
        v8 = [v10 widgetUniqueId];
        v9 = [(ATXHomeScreenEventLogger *)self _stackLocationGivenWidgetUniqueId:v8];

        if (self->_hasAppPanelOnHomeScreen && (ATXStackLocationIsTodayPage(v9) & 1) == 0)
        {
          [ATXBlendingCaptureRateTracker logHomeScreenDiversionWithCaptureType:5002 tracker:self->_tracker];
        }
      }
    }
  }
}

- (void)_logAppLaunchOverallCaptureRateFromAppPredictionPanelWithTappedWidget:(id)a3 suggestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 widgetUniqueId];
  v9 = [(ATXHomeScreenEventLogger *)self _stackLocationGivenWidgetUniqueId:v8];

  v10 = [v6 extensionBundleId];
  v11 = [v10 isEqualToString:*MEMORY[0x1E698AFC0]];

  if (v11)
  {
    v12 = ATXStackLocationIsTodayPage(v9) == 0;
    v13 = 8;
  }

  else
  {
    v14 = [v6 extensionBundleId];
    v15 = [v14 isEqualToString:@"com.apple.proactive.appprediction.panel"];

    if (!v15)
    {
      goto LABEL_22;
    }

    v12 = ATXStackLocationIsTodayPage(v9) == 0;
    v13 = 6;
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  v17 = [v7 bundleIdExecutableObject];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v19 = [v7 atxActionExecutableObject];
    v18 = [v19 bundleId];

    if (!v18)
    {
      goto LABEL_22;
    }
  }

  v20 = [(NSMutableDictionary *)self->_bundleIdToSBPageNumber objectForKeyedSubscript:v18];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 unsignedIntegerValue];
    if (v22 >= 6)
    {
      v23 = 8;
    }

    else
    {
      v23 = (v22 + 2);
    }
  }

  else
  {
    v23 = [(NSSet *)self->_dockAppSet containsObject:v18];
  }

  v24 = objc_opt_new();
  [v24 setCaptureType:v16];
  [v24 setIconLocation:v23];
  v25 = CFPreferencesCopyValue(@"SBSearchDisabledDomains", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v26 = [v25 containsObject:@"DOMAIN_ZKWS"];

  [v24 setSpotlightEnabled:v26 ^ 1u];
  v27 = CFPreferencesCopyAppValue(@"SuggestionsAppLibraryEnabled", @"com.apple.suggestions");
  v28 = v27;
  if (v27)
  {
    v29 = [v27 BOOLValue];
  }

  else
  {
    v29 = 1;
  }

  [v24 setAppLibraryEnabled:v29];
  [v24 setAppPredictionPanelTodayEnabled:self->_hasAppPanelOnLoH];
  [v24 setAppPredictionPanelEnabled:self->_hasAppPanelOnHomeScreen];
  [v24 setSuggestionsWidgetEnabled:self->_hasSuggestionWidgetOnHomeScreen];
  [v24 setSuggestionsWidgetTodayEnabled:self->_hasSuggestionWidgetOnLoH];
  [(ATXPETEventTracker2Protocol *)self->_tracker trackScalarForMessage:v24];
  v30 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [(ATXHomeScreenEventLogger *)self _logAppLaunchOverallCaptureRateFromAppPredictionPanelWithTappedWidget:v24 suggestion:v30];
  }

LABEL_22:
}

- (void)_logAppPanelLaunchRatioWithTappedWidget:(id)a3
{
  v10 = a3;
  v4 = [v10 extensionBundleId];
  v5 = [v4 isEqualToString:@"com.apple.proactive.appprediction.panel"];

  v6 = v10;
  if (v5)
  {
    v7 = [v10 widgetUniqueId];
    v8 = [(ATXHomeScreenEventLogger *)self _pageIndexGivenWidgetUniqueId:v7];

    if (v8)
    {
      v9 = [v8 unsignedIntegerValue];
      if (v9 < 0x4E20)
      {
        [ATXAppPanelLaunchRatioLogger logAppPanelAppLaunchWithSBPageIndex:v9];
      }
    }

    v6 = v10;
  }
}

- (void)logHomeScreenPageDidAppear:(unint64_t)a3 topWidgetsByStackIdentifier:(id)a4 prediction:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__ATXHomeScreenEventLogger_logHomeScreenPageDidAppear_topWidgetsByStackIdentifier_prediction___block_invoke;
  v13[3] = &unk_1E80C2DC0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __94__ATXHomeScreenEventLogger_logHomeScreenPageDidAppear_topWidgetsByStackIdentifier_prediction___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __94__ATXHomeScreenEventLogger_logHomeScreenPageDidAppear_topWidgetsByStackIdentifier_prediction___block_invoke_cold_1();
  }

  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  [v3 setPageIndex:v4];

  [v3 setStacks:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [*(a1 + 48) blendingCacheId];
  [v5 _sendEventToBiomeWithDate:v6 eventType:1 stackIdentifier:0 stackKind:0 stackLocation:0 reason:0 widget:0 blendingCacheIdentifier:v7 metadata:v3];
}

- (void)logHomeScreenDidDisappearWithReason:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__ATXHomeScreenEventLogger_logHomeScreenDidDisappearWithReason___block_invoke;
  v7[3] = &unk_1E80C0958;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __64__ATXHomeScreenEventLogger_logHomeScreenDidDisappearWithReason___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __64__ATXHomeScreenEventLogger_logHomeScreenDidDisappearWithReason___block_invoke_cold_1();
  }

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E695DF00] now];
  [v3 _sendEventToBiomeWithDate:v4 eventType:1 stackIdentifier:0 stackKind:0 stackLocation:0 reason:*(a1 + 32) widget:0 blendingCacheIdentifier:0 metadata:0];
}

- (void)logSpecialPageDidAppear:(unint64_t)a3 widgetsByStackId:(id)a4 prediction:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__ATXHomeScreenEventLogger_logSpecialPageDidAppear_widgetsByStackId_prediction___block_invoke;
  v13[3] = &unk_1E80C2DC0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __80__ATXHomeScreenEventLogger_logSpecialPageDidAppear_widgetsByStackId_prediction___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __80__ATXHomeScreenEventLogger_logSpecialPageDidAppear_widgetsByStackId_prediction___block_invoke_cold_1();
  }

  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
  [v3 setPageIndex:v4];

  [v3 setStacks:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E695DF00] now];
  v7 = [*(a1 + 48) blendingCacheId];
  [v5 _sendEventToBiomeWithDate:v6 eventType:12 stackIdentifier:0 stackKind:0 stackLocation:0 reason:0 widget:0 blendingCacheIdentifier:v7 metadata:v3];
}

- (void)logSpecialPageDidDisappear:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__ATXHomeScreenEventLogger_logSpecialPageDidDisappear___block_invoke;
  v4[3] = &unk_1E80C4798;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(queue, v4);
}

void __55__ATXHomeScreenEventLogger_logSpecialPageDidDisappear___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__ATXHomeScreenEventLogger_logSpecialPageDidDisappear___block_invoke_cold_1();
  }

  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  [v3 setPageIndex:v4];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E695DF00] now];
  [v5 _sendEventToBiomeWithDate:v6 eventType:13 stackIdentifier:0 stackKind:0 stackLocation:0 reason:0 widget:0 blendingCacheIdentifier:0 metadata:v3];
}

- (void)logWidgetDidAppear:(id)a3 stackId:(id)a4 prediction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__ATXHomeScreenEventLogger_logWidgetDidAppear_stackId_prediction___block_invoke;
  v15[3] = &unk_1E80C3B48;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

void __66__ATXHomeScreenEventLogger_logWidgetDidAppear_stackId_prediction___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v3 widgetUniqueId];
    *buf = 136315906;
    v18 = "[ATXHomeScreenEventLogger logWidgetDidAppear:stackId:prediction:]_block_invoke";
    v19 = 2114;
    v20 = v4;
    v21 = 2112;
    v22 = v3;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "%s: stackID: %{public}@ topWidget: %@ (widgetID %{public}@)", buf, 0x2Au);
  }

  v6 = *(a1 + 48);
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) widgetUniqueId];
  v11 = [v8 _stackKindGivenWidgetUniqueId:v10];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) widgetUniqueId];
  v14 = [v12 _stackLocationGivenWidgetUniqueId:v13];
  v15 = *(a1 + 40);
  v16 = [*(a1 + 56) blendingCacheId];
  [v6 _sendEventToBiomeWithDate:v7 eventType:14 stackIdentifier:v9 stackKind:v11 stackLocation:v14 reason:0 widget:v15 blendingCacheIdentifier:v16 metadata:0];
}

- (void)logWidgetDidDisappear:(id)a3 stackId:(id)a4 prediction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__ATXHomeScreenEventLogger_logWidgetDidDisappear_stackId_prediction___block_invoke;
  v15[3] = &unk_1E80C3B48;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

void __69__ATXHomeScreenEventLogger_logWidgetDidDisappear_stackId_prediction___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v3 widgetUniqueId];
    *buf = 136315906;
    v18 = "[ATXHomeScreenEventLogger logWidgetDidDisappear:stackId:prediction:]_block_invoke";
    v19 = 2114;
    v20 = v4;
    v21 = 2112;
    v22 = v3;
    v23 = 2114;
    v24 = v5;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "%s: stackID: %{public}@ topWidget: %@ (widgetID %{public}@)", buf, 0x2Au);
  }

  v6 = *(a1 + 48);
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) widgetUniqueId];
  v11 = [v8 _stackKindGivenWidgetUniqueId:v10];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 40) widgetUniqueId];
  v14 = [v12 _stackLocationGivenWidgetUniqueId:v13];
  v15 = *(a1 + 40);
  v16 = [*(a1 + 56) blendingCacheId];
  [v6 _sendEventToBiomeWithDate:v7 eventType:15 stackIdentifier:v9 stackKind:v11 stackLocation:v14 reason:0 widget:v15 blendingCacheIdentifier:v16 metadata:0];
}

- (void)logStackDidAppear:(id)a3 topWidget:(id)a4 prediction:(id)a5
{
  if (a4)
  {
    [(ATXHomeScreenEventLogger *)self logWidgetDidAppear:a4 stackId:a3 prediction:a5];
  }
}

- (void)logStackDidDisappear:(id)a3 topWidget:(id)a4 prediction:(id)a5
{
  if (a4)
  {
    [(ATXHomeScreenEventLogger *)self logWidgetDidDisappear:a4 stackId:a3 prediction:a5];
  }
}

- (void)logStackVisibilityChanged:(id)a3 visibleRect:(CGRect)a4 topWidget:(id)a5 prediction:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  queue = self->_queue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__ATXHomeScreenEventLogger_logStackVisibilityChanged_visibleRect_topWidget_prediction___block_invoke;
  v20[3] = &unk_1E80C47C0;
  v21 = v13;
  v22 = v14;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  v23 = self;
  v24 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  dispatch_async(queue, v20);
}

void __87__ATXHomeScreenEventLogger_logStackVisibilityChanged_visibleRect_topWidget_prediction___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v3 widgetUniqueId];
    *buf = 136315906;
    v20 = "[ATXHomeScreenEventLogger logStackVisibilityChanged:visibleRect:topWidget:prediction:]_block_invoke";
    v21 = 2114;
    v22 = v4;
    v23 = 2112;
    v24 = v3;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "%s: stackID: %{public}@ topWidget: %@ (widgetID %{public}@)", buf, 0x2Au);
  }

  v6 = objc_opt_new();
  v7 = [[ATXCGRectWrapper alloc] initWithCGRect:*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)];
  [v6 setVisibleRect:v7];

  v8 = *(a1 + 48);
  v9 = [MEMORY[0x1E695DF00] now];
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) widgetUniqueId];
  v13 = [v10 _stackKindGivenWidgetUniqueId:v12];
  v14 = *(a1 + 48);
  v15 = [*(a1 + 40) widgetUniqueId];
  v16 = [v14 _stackLocationGivenWidgetUniqueId:v15];
  v17 = *(a1 + 40);
  v18 = [*(a1 + 56) blendingCacheId];
  [v8 _sendEventToBiomeWithDate:v9 eventType:20 stackIdentifier:v11 stackKind:v13 stackLocation:v16 reason:0 widget:v17 blendingCacheIdentifier:v18 metadata:v6];
}

- (void)logStackStatusDidChange:(id)a3 widgetOnTop:(id)a4 reason:(unint64_t)a5 prediction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__ATXHomeScreenEventLogger_logStackStatusDidChange_widgetOnTop_reason_prediction___block_invoke;
  block[3] = &unk_1E80C47E8;
  v21 = self;
  v22 = a5;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

void __82__ATXHomeScreenEventLogger_logStackStatusDidChange_widgetOnTop_reason_prediction___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v4 widgetUniqueId];
    *buf = 67109890;
    v22 = v3;
    v23 = 2114;
    v24 = v5;
    v25 = 2112;
    v26 = v4;
    v27 = 2114;
    v28 = v6;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "logStackStatusDidChange: reason: %d, stackID: %{public}@, widget: %@ (widgetID %{public}@)", buf, 0x26u);
  }

  if (*(a1 + 64) == 2)
  {
    v7 = [*(a1 + 48) suggestionForStackIdentifier:*(a1 + 32)];
    if ([v7 isLowConfidenceStackRotationForStaleStack])
    {
      v8 = objc_opt_new();
      [v8 setIsStalenessRotation:MEMORY[0x1E695E118]];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = *(a1 + 56);
  v9 = [MEMORY[0x1E695DF00] now];
  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) widgetUniqueId];
  v13 = [v10 _stackKindGivenWidgetUniqueId:v12];
  v14 = *(a1 + 56);
  v15 = [*(a1 + 40) widgetUniqueId];
  v16 = [v14 _stackLocationGivenWidgetUniqueId:v15];
  v17 = NSStringForATXHomeScreenStackChangeReason(*(a1 + 64));
  v18 = *(a1 + 40);
  v19 = [*(a1 + 48) blendingCacheId];
  [v20 _sendEventToBiomeWithDate:v9 eventType:3 stackIdentifier:v11 stackKind:v13 stackLocation:v16 reason:v17 widget:v18 blendingCacheIdentifier:v19 metadata:v8];
}

- (void)logStackDidTap:(id)a3 engagedUrl:(id)a4 widgetOnTop:(id)a5 prediction:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__ATXHomeScreenEventLogger_logStackDidTap_engagedUrl_widgetOnTop_prediction___block_invoke;
  block[3] = &unk_1E80C4230;
  v20 = v10;
  v21 = v12;
  v22 = self;
  v23 = v11;
  v24 = v13;
  v15 = v13;
  v16 = v11;
  v17 = v12;
  v18 = v10;
  dispatch_async(queue, block);
}

void __77__ATXHomeScreenEventLogger_logStackDidTap_engagedUrl_widgetOnTop_prediction___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __77__ATXHomeScreenEventLogger_logStackDidTap_engagedUrl_widgetOnTop_prediction___block_invoke_cold_1();
  }

  [*(a1 + 48) _logCaptureRateDiversionIfAppPredictionPanelExistsWithTappedWidget:*(a1 + 40)];
  v3 = objc_opt_new();
  [v3 setEngagedUrl:*(a1 + 56)];
  v4 = *(a1 + 48);
  v5 = [MEMORY[0x1E695DF00] now];
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) widgetUniqueId];
  v9 = [v6 _stackKindGivenWidgetUniqueId:v8];
  v10 = *(a1 + 48);
  v11 = [*(a1 + 40) widgetUniqueId];
  v12 = [v10 _stackLocationGivenWidgetUniqueId:v11];
  v13 = *(a1 + 40);
  v14 = [*(a1 + 64) blendingCacheId];
  [v4 _sendEventToBiomeWithDate:v5 eventType:4 stackIdentifier:v7 stackKind:v9 stackLocation:v12 reason:0 widget:v13 blendingCacheIdentifier:v14 metadata:v3];
}

- (void)_logSupplementaryActionInContextMenu:(unint64_t)a3 stackId:(id)a4 widget:(id)a5 prediction:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__ATXHomeScreenEventLogger__logSupplementaryActionInContextMenu_stackId_widget_prediction___block_invoke;
  block[3] = &unk_1E80C47E8;
  v18 = v10;
  v19 = v11;
  v21 = v12;
  v22 = a3;
  v20 = self;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

void __91__ATXHomeScreenEventLogger__logSupplementaryActionInContextMenu_stackId_widget_prediction___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __91__ATXHomeScreenEventLogger__logSupplementaryActionInContextMenu_stackId_widget_prediction___block_invoke_cold_1();
  }

  v3 = *(a1 + 48);
  v4 = [MEMORY[0x1E695DF00] now];
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) widgetUniqueId];
  v8 = [v5 _stackKindGivenWidgetUniqueId:v7];
  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) widgetUniqueId];
  v11 = [v9 _stackLocationGivenWidgetUniqueId:v10];
  v12 = NSStringForATXHomeScreenWidgetExplicitFeedback(*(a1 + 64));
  v13 = *(a1 + 40);
  v14 = [*(a1 + 56) blendingCacheId];
  [v3 _sendEventToBiomeWithDate:v4 eventType:6 stackIdentifier:v6 stackKind:v8 stackLocation:v11 reason:v12 widget:v13 blendingCacheIdentifier:v14 metadata:0];
}

- (void)logUserDidChangeStackConfiguration:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ATXHomeScreenEventLogger_logUserDidChangeStackConfiguration___block_invoke;
  v7[3] = &unk_1E80C0958;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __63__ATXHomeScreenEventLogger_logUserDidChangeStackConfiguration___block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__ATXHomeScreenEventLogger_logUserDidChangeStackConfiguration___block_invoke_cold_1();
  }

  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E695DF00] now];
  [v3 _sendEventToBiomeWithDate:v4 eventType:7 stackIdentifier:*(a1 + 32) stackKind:0 stackLocation:0 reason:0 widget:0 blendingCacheIdentifier:0 metadata:0];
}

- (void)logUserDidAddPinnedWidget:(id)a3 page:(id)a4 defaultsComparator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__ATXHomeScreenEventLogger_logUserDidAddPinnedWidget_page_defaultsComparator___block_invoke;
  v15[3] = &unk_1E80C3B48;
  v16 = v8;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __78__ATXHomeScreenEventLogger_logUserDidAddPinnedWidget_page_defaultsComparator___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 widgetUniqueId];
    *buf = 136315650;
    v24 = "[ATXHomeScreenEventLogger logUserDidAddPinnedWidget:page:defaultsComparator:]_block_invoke";
    v25 = 2112;
    v26 = v3;
    v27 = 2114;
    v28 = v4;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "%s: user added pinned widget: %@ (widgetID %{public}@)", buf, 0x20u);
  }

  v5 = objc_opt_new();
  v6 = [*(a1 + 40) rankOfWidgetSuggestedInGallery:*(a1 + 32)];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6 != 0];
  [v5 setIsSuggestionInAddWidgetSheet:v7];

  [*(a1 + 48) _populateSuggestedPageMetadata:v5 forPage:*(a1 + 56)];
  v8 = *(a1 + 48);
  v9 = [MEMORY[0x1E695DF00] now];
  v10 = *(a1 + 48);
  v11 = [*(a1 + 32) widgetUniqueId];
  v12 = [v8 _homeScreenEventWithDate:v9 eventTypeString:@"PinnedWidgetAdded" stackIdentifier:0 stackKind:1 stackLocation:objc_msgSend(v10 reason:"_stackLocationGivenWidgetUniqueId:" widget:v11) blendingCacheIdentifier:0 metadata:{*(a1 + 32), 0, v5}];

  v13 = *(*(a1 + 48) + 80);
  v14 = [ATXUIEvent uiEventWithHomeScreenEvent:v12];
  [v13 donateGenericUIEvent:v14];

  v15 = objc_alloc(MEMORY[0x1E698EBC0]);
  v16 = [*(a1 + 32) extensionBundleId];
  v17 = [MEMORY[0x1E696AE30] processInfo];
  v18 = [v17 operatingSystemVersionString];
  v19 = [v15 initWithContentIdentifier:@"com.apple.duetexpertd.widget.added" context:v16 osBuild:v18 userInfo:0];

  v20 = [*(*(a1 + 48) + 88) source];
  [v20 sendEvent:v19];

  v21 = [*(a1 + 48) delegate];
  v22 = [*(a1 + 40) galleryItems];
  [v21 logWidgetAddedFeaturesInCoreAnalytics:v12 rankOfWidgetInGallery:v6 galleryItems:v22];
}

- (void)logUserDidDeletePinnedWidget:(id)a3 stackLocation:(unint64_t)a4 page:(id)a5
{
  v8 = a3;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__ATXHomeScreenEventLogger_logUserDidDeletePinnedWidget_stackLocation_page___block_invoke;
  v13[3] = &unk_1E80C2DC0;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v17 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __76__ATXHomeScreenEventLogger_logUserDidDeletePinnedWidget_stackLocation_page___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 widgetUniqueId];
    *buf = 136315650;
    v9 = "[ATXHomeScreenEventLogger logUserDidDeletePinnedWidget:stackLocation:page:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "%s: user deleted pinned widget: %@ (widgetID %{public}@)", buf, 0x20u);
  }

  v5 = objc_opt_new();
  [*(a1 + 40) _populateSuggestedPageMetadata:v5 forPage:*(a1 + 48)];
  v6 = *(a1 + 40);
  v7 = [MEMORY[0x1E695DF00] now];
  [v6 _sendEventToBiomeWithDate:v7 eventType:11 stackIdentifier:0 stackKind:1 stackLocation:*(a1 + 56) reason:0 widget:*(a1 + 32) blendingCacheIdentifier:0 metadata:v5];
}

- (void)logUserDidAddApp:(id)a3 page:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__ATXHomeScreenEventLogger_logUserDidAddApp_page___block_invoke;
  block[3] = &unk_1E80C1728;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __50__ATXHomeScreenEventLogger_logUserDidAddApp_page___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) bundleId];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v2 setBundleIds:v4];

  [*(a1 + 40) _populateSuggestedPageMetadata:v2 forPage:*(a1 + 48)];
  if ([v2 suggestedPageType])
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E695DF00] now];
    [v5 _sendEventToBiomeWithDate:v6 eventType:21 stackIdentifier:0 stackKind:0 stackLocation:0 reason:0 widget:0 blendingCacheIdentifier:0 metadata:v2];
  }
}

- (void)logUserDidRemoveApp:(id)a3 page:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ATXHomeScreenEventLogger_logUserDidRemoveApp_page___block_invoke;
  block[3] = &unk_1E80C1728;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __53__ATXHomeScreenEventLogger_logUserDidRemoveApp_page___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) bundleId];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v2 setBundleIds:v4];

  [*(a1 + 40) _populateSuggestedPageMetadata:v2 forPage:*(a1 + 48)];
  if ([v2 suggestedPageType])
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E695DF00] now];
    [v5 _sendEventToBiomeWithDate:v6 eventType:22 stackIdentifier:0 stackKind:0 stackLocation:0 reason:0 widget:0 blendingCacheIdentifier:0 metadata:v2];
  }
}

- (void)logUserDidAddWidgetToStack:(id)a3 stackIdentifier:(id)a4 isSuggestion:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__ATXHomeScreenEventLogger_logUserDidAddWidgetToStack_stackIdentifier_isSuggestion___block_invoke;
  v13[3] = &unk_1E80C4810;
  v17 = a5;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __84__ATXHomeScreenEventLogger_logUserDidAddWidgetToStack_stackIdentifier_isSuggestion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 widgetUniqueId];
    *buf = 136315650;
    v22 = "[ATXHomeScreenEventLogger logUserDidAddWidgetToStack:stackIdentifier:isSuggestion:]_block_invoke";
    v23 = 2112;
    v24 = v3;
    v25 = 2114;
    v26 = v4;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "%s: user added widget to stack: %@ (widgetID %{public}@)", buf, 0x20u);
  }

  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  [v5 setIsSuggestionInAddWidgetSheet:v6];

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x1E695DF00] now];
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = [*(a1 + 32) widgetUniqueId];
  v12 = [v10 _stackKindGivenWidgetUniqueId:v11];
  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) widgetUniqueId];
  [v7 _sendEventToBiomeWithDate:v8 eventType:18 stackIdentifier:v9 stackKind:v12 stackLocation:objc_msgSend(v13 reason:"_stackLocationGivenWidgetUniqueId:" widget:v14) blendingCacheIdentifier:0 metadata:{*(a1 + 32), 0, v5}];

  v15 = objc_alloc(MEMORY[0x1E698EBC0]);
  v16 = [*(a1 + 32) extensionBundleId];
  v17 = [MEMORY[0x1E696AE30] processInfo];
  v18 = [v17 operatingSystemVersionString];
  v19 = [v15 initWithContentIdentifier:@"com.apple.duetexpertd.widget.addedToStack" context:v16 osBuild:v18 userInfo:0];

  v20 = [*(*(a1 + 40) + 88) source];
  [v20 sendEvent:v19];
}

- (void)logUserDidDeleteWidgetOnStack:(id)a3 stackIdentifier:(id)a4 stackKind:(unint64_t)a5 stackLocation:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__ATXHomeScreenEventLogger_logUserDidDeleteWidgetOnStack_stackIdentifier_stackKind_stackLocation___block_invoke;
  block[3] = &unk_1E80C2EA8;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v19 = a5;
  v20 = a6;
  v13 = v11;
  v14 = v10;
  dispatch_async(queue, block);
}

void __98__ATXHomeScreenEventLogger_logUserDidDeleteWidgetOnStack_stackIdentifier_stackKind_stackLocation___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = [v3 widgetUniqueId];
    *buf = 136315650;
    v8 = "[ATXHomeScreenEventLogger logUserDidDeleteWidgetOnStack:stackIdentifier:stackKind:stackLocation:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "%s: user deleted widget on stack: %@ (widgetID %{public}@)", buf, 0x20u);
  }

  v5 = a1[5];
  v6 = [MEMORY[0x1E695DF00] now];
  [v5 _sendEventToBiomeWithDate:v6 eventType:19 stackIdentifier:a1[6] stackKind:a1[7] stackLocation:a1[8] reason:0 widget:a1[4] blendingCacheIdentifier:0 metadata:0];
}

- (void)_populateSuggestedPageMetadata:(id)a3 forPage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6)
  {
    v9 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXHomeScreenEventLogger _populateSuggestedPageMetadata:forPage:];
    }

    goto LABEL_10;
  }

  if ([v6 pageIndex] != 20000)
  {
    v8 = [v7 uniqueIdentifier];

    if (v8)
    {
      v9 = objc_opt_new();
      v10 = [v7 uniqueIdentifier];
      v11 = [v9 suggestedPageTypeWithIdentifier:v10];

      if (v11)
      {
        [v5 setSuggestedPageType:v11];
      }
    }

    else
    {
      v9 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ATXHomeScreenEventLogger _populateSuggestedPageMetadata:v7 forPage:v9];
      }
    }

LABEL_10:
  }
}

- (void)logUserDidCreateStack:(id)a3 page:(id)a4 isSuggestion:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__ATXHomeScreenEventLogger_logUserDidCreateStack_page_isSuggestion___block_invoke;
  v13[3] = &unk_1E80C4810;
  v17 = a5;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

void __68__ATXHomeScreenEventLogger_logUserDidCreateStack_page_isSuggestion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) identifier];
    *buf = 136315394;
    v21 = "[ATXHomeScreenEventLogger logUserDidCreateStack:page:isSuggestion:]_block_invoke";
    v22 = 2114;
    v23 = v3;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "%s: user created stack (ID %{public}@)", buf, 0x16u);
  }

  v4 = objc_opt_new();
  v5 = [*(a1 + 32) widgets];
  v6 = [v5 copy];
  [v4 setWidgetsInStack:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  [v4 setIsSuggestionInAddWidgetSheet:v7];

  [*(a1 + 40) _populateSuggestedPageMetadata:v4 forPage:*(a1 + 48)];
  v19 = *(a1 + 40);
  v18 = [MEMORY[0x1E695DF00] now];
  v8 = [*(a1 + 32) identifier];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) widgets];
  v11 = [v10 firstObject];
  v12 = [v11 widgetUniqueId];
  v13 = [v9 _stackKindGivenWidgetUniqueId:v12];
  v14 = *(a1 + 40);
  v15 = [*(a1 + 32) widgets];
  v16 = [v15 firstObject];
  v17 = [v16 widgetUniqueId];
  [v19 _sendEventToBiomeWithDate:v18 eventType:16 stackIdentifier:v8 stackKind:v13 stackLocation:objc_msgSend(v14 reason:"_stackLocationGivenWidgetUniqueId:" widget:v17) blendingCacheIdentifier:0 metadata:{0, 0, v4}];
}

- (void)logUserDidDeleteStack:(id)a3 stackKind:(unint64_t)a4 stackLocation:(unint64_t)a5 page:(id)a6
{
  v10 = a3;
  v11 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__ATXHomeScreenEventLogger_logUserDidDeleteStack_stackKind_stackLocation_page___block_invoke;
  block[3] = &unk_1E80C2EA8;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v19 = a4;
  v20 = a5;
  v13 = v11;
  v14 = v10;
  dispatch_async(queue, block);
}

void __79__ATXHomeScreenEventLogger_logUserDidDeleteStack_stackKind_stackLocation_page___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 identifier];
    *buf = 136315650;
    v12 = "[ATXHomeScreenEventLogger logUserDidDeleteStack:stackKind:stackLocation:page:]_block_invoke";
    v13 = 2112;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "%s: user deleted stack: %@ (ID %{public}@)", buf, 0x20u);
  }

  v5 = objc_opt_new();
  v6 = [*(a1 + 32) widgets];
  v7 = [v6 copy];
  [v5 setWidgetsInStack:v7];

  [*(a1 + 40) _populateSuggestedPageMetadata:v5 forPage:*(a1 + 48)];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x1E695DF00] now];
  v10 = [*(a1 + 32) identifier];
  [v8 _sendEventToBiomeWithDate:v9 eventType:17 stackIdentifier:v10 stackKind:*(a1 + 56) stackLocation:*(a1 + 64) reason:0 widget:0 blendingCacheIdentifier:0 metadata:v5];
}

- (void)logDeviceLock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ATXHomeScreenEventLogger_logDeviceLock__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(queue, block);
}

void __41__ATXHomeScreenEventLogger_logDeviceLock__block_invoke(uint64_t a1)
{
  v2 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenEventLogger: donating lock event", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E695DF00] now];
  [v3 _sendEventToBiomeWithDate:v4 eventType:8 stackIdentifier:0 stackKind:0 stackLocation:0 reason:0 widget:0 blendingCacheIdentifier:0 metadata:0];
}

- (void)logWidgetDidAppear:(id)a3 blendingCacheId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__ATXHomeScreenEventLogger_logWidgetDidAppear_blendingCacheId___block_invoke;
  block[3] = &unk_1E80C1728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __63__ATXHomeScreenEventLogger_logWidgetDidAppear_blendingCacheId___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = objc_opt_new();
  [v1 _logProactiveWidgetEvent:4 suggestionIdentifiers:0 widget:v2 blendingCacheId:v3 date:v4];
}

- (void)logWidgetDidDisappear:(id)a3 blendingCacheId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__ATXHomeScreenEventLogger_logWidgetDidDisappear_blendingCacheId___block_invoke;
  block[3] = &unk_1E80C1728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __66__ATXHomeScreenEventLogger_logWidgetDidDisappear_blendingCacheId___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = objc_opt_new();
  [v1 _logProactiveWidgetEvent:5 suggestionIdentifiers:0 widget:v2 blendingCacheId:v3 date:v4];
}

- (void)logSuggestionsDidAppear:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__ATXHomeScreenEventLogger_logSuggestionsDidAppear_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C3B48;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __75__ATXHomeScreenEventLogger_logSuggestionsDidAppear_widget_blendingCacheId___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = [MEMORY[0x1E695DF00] now];
  [v1 _logProactiveWidgetEvent:6 suggestionIdentifiers:v2 widget:v3 blendingCacheId:v4 date:v5];
}

- (void)logSuggestionsDidDisappear:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__ATXHomeScreenEventLogger_logSuggestionsDidDisappear_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C3B48;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __78__ATXHomeScreenEventLogger_logSuggestionsDidDisappear_widget_blendingCacheId___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = [MEMORY[0x1E695DF00] now];
  [v1 _logProactiveWidgetEvent:7 suggestionIdentifiers:v2 widget:v3 blendingCacheId:v4 date:v5];
}

- (void)logWidgetOccluded:(id)a3 blendingCacheId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__ATXHomeScreenEventLogger_logWidgetOccluded_blendingCacheId___block_invoke;
  block[3] = &unk_1E80C1728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __62__ATXHomeScreenEventLogger_logWidgetOccluded_blendingCacheId___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = objc_opt_new();
  [v1 _logProactiveWidgetEvent:8 suggestionIdentifiers:0 widget:v2 blendingCacheId:v3 date:v4];
}

- (void)logWidgetUnoccluded:(id)a3 blendingCacheId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ATXHomeScreenEventLogger_logWidgetUnoccluded_blendingCacheId___block_invoke;
  block[3] = &unk_1E80C1728;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __64__ATXHomeScreenEventLogger_logWidgetUnoccluded_blendingCacheId___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = objc_opt_new();
  [v1 _logProactiveWidgetEvent:9 suggestionIdentifiers:0 widget:v2 blendingCacheId:v3 date:v4];
}

- (void)logDidTapSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__ATXHomeScreenEventLogger_logDidTapSuggestion_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C3B48;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

void __71__ATXHomeScreenEventLogger_logDidTapSuggestion_widget_blendingCacheId___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v3 UUIDString];
  v21[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v6 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x1E695DF00] now];
  [v2 _logProactiveWidgetEvent:1 suggestionIdentifiers:v5 widget:v7 blendingCacheId:v6 date:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 48) widgetUniqueId];
  v11 = [v9 _stackIdentifierGivenWidgetUniqueId:v10];

  if (*(a1 + 56) && v11)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 48);
    v14 = [ATXHomeScreenPrediction alloc];
    v15 = [(ATXHomeScreenPrediction *)v14 initWithBlendingCacheIdentifier:*(a1 + 56) widgetSuggestions:MEMORY[0x1E695E0F8] stacksAffectedByDebugRotation:0];
    [v12 logStackDidTap:v11 widgetOnTop:v13 prediction:v15];
  }

  else
  {
    v15 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __71__ATXHomeScreenEventLogger_logDidTapSuggestion_widget_blendingCacheId___block_invoke_cold_1((a1 + 56), v11, v15);
    }
  }

  [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:0 consumerSubType:34 tracker:*(*(a1 + 32) + 96)];
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = [*(a1 + 48) extensionBundleId];
  v19 = [v18 isEqualToString:*MEMORY[0x1E698AFC0]];
  v20 = [*(a1 + 48) widgetUniqueId];
  [v16 _logCaptureRateForAppPredictionPanelWithEngagedSuggestion:v17 isSuggestionsWidget:v19 widgetIdentifier:v20];

  [*(a1 + 32) _logAppLaunchOverallCaptureRateFromAppPredictionPanelWithTappedWidget:*(a1 + 48) suggestion:*(a1 + 40)];
  [*(a1 + 32) _logAppPanelLaunchRatioWithTappedWidget:*(a1 + 48)];
}

- (void)logContextMenuDismissOnceForSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__ATXHomeScreenEventLogger_logContextMenuDismissOnceForSuggestion_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C3B48;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

uint64_t __90__ATXHomeScreenEventLogger_logContextMenuDismissOnceForSuggestion_widget_blendingCacheId___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v3 UUIDString];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = [MEMORY[0x1E695DF00] now];
  [v2 _logProactiveWidgetEvent:2 suggestionIdentifiers:v5 widget:v6 blendingCacheId:v7 date:v8];

  [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:1 consumerSubType:34 tracker:*(*(a1 + 32) + 96)];
  v9 = [*(a1 + 48) extensionBundleId];
  LOBYTE(v3) = [v9 isEqualToString:*MEMORY[0x1E698AFC0]];

  if (v3)
  {
    v10 = 36;
  }

  else
  {
    v11 = [*(a1 + 48) extensionBundleId];
    v12 = [v11 isEqualToString:@"com.apple.proactive.appprediction.panel"];

    if (v12)
    {
      v10 = 37;
    }

    else
    {
      v10 = 0;
    }
  }

  return [ATXContextMenuFeedbackTracker logContextMenuFeedbackForDismissOnceWithSuggestion:*(a1 + 40) consumerSubType:v10 tracker:*(*(a1 + 32) + 96)];
}

- (void)logContextMenuNeverShowAgainForSuggestion:(id)a3 widget:(id)a4 blendingCacheId:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__ATXHomeScreenEventLogger_logContextMenuNeverShowAgainForSuggestion_widget_blendingCacheId___block_invoke;
  v15[3] = &unk_1E80C3B48;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

uint64_t __93__ATXHomeScreenEventLogger_logContextMenuNeverShowAgainForSuggestion_widget_blendingCacheId___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uuid];
  v4 = [v3 UUIDString];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = [MEMORY[0x1E695DF00] now];
  [v2 _logProactiveWidgetEvent:3 suggestionIdentifiers:v5 widget:v6 blendingCacheId:v7 date:v8];

  [ATXMFeedbackConversionLogger logUserInteractionFeedbackWithEngagementType:1 consumerSubType:34 tracker:*(*(a1 + 32) + 96)];
  v9 = [*(a1 + 48) extensionBundleId];
  LOBYTE(v3) = [v9 isEqualToString:*MEMORY[0x1E698AFC0]];

  if (v3)
  {
    v10 = 36;
  }

  else
  {
    v11 = [*(a1 + 48) extensionBundleId];
    v12 = [v11 isEqualToString:@"com.apple.proactive.appprediction.panel"];

    if (v12)
    {
      v10 = 37;
    }

    else
    {
      v10 = 0;
    }
  }

  return [ATXContextMenuFeedbackTracker logContextMenuFeedbackForNeverShowAgainWithSuggestion:*(a1 + 40) consumerSubType:v10 tracker:*(*(a1 + 32) + 96)];
}

- (void)logWidgetInsertionDidFailInStack:(id)a3 prediction:(id)a4
{
  v4 = __atxlog_handle_default();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [ATXHomeScreenEventLogger logWidgetInsertionDidFailInStack:prediction:];
  }
}

- (void)logUserDidStartWidgetOnboarding
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__ATXHomeScreenEventLogger_logUserDidStartWidgetOnboarding__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__ATXHomeScreenEventLogger_logUserDidStartWidgetOnboarding__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 104) setBool:1 forKey:*MEMORY[0x1E698B058]];
  v2 = objc_opt_new();
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__ATXHomeScreenEventLogger_logUserDidStartWidgetOnboarding__block_invoke_2;
  v3[3] = &unk_1E80C4838;
  v3[4] = *(a1 + 32);
  [v2 fetchSmartStackOfVariant:2 completionHandler:v3];
}

void __59__ATXHomeScreenEventLogger_logUserDidStartWidgetOnboarding__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = [a2 firstObject];
  v3 = [v7 smallDefaultStack];

  if (v3)
  {
    v4 = [v7 smallDefaultStack];
    v5 = [v4 firstObject];

    v6 = [v5 rankType] != 5 && objc_msgSend(v5, "rankType") != 6;
  }

  else
  {
    v6 = 1;
  }

  [*(*(a1 + 32) + 104) setBool:v6 forKey:*MEMORY[0x1E698B070]];
}

- (void)logUserDidAcceptWidgetOnboardingSuggestion:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ATXHomeScreenEventLogger_logUserDidAcceptWidgetOnboardingSuggestion___block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)logUserDidRejectWidgetOnboardingSuggestion:(id)a3
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ATXHomeScreenEventLogger_logUserDidRejectWidgetOnboardingSuggestion___block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)logUserDidEnterEditModeForWidgetOnboarding
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__ATXHomeScreenEventLogger_logUserDidEnterEditModeForWidgetOnboarding__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (ATXHomeScreenEventLoggerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __97__ATXHomeScreenEventLogger_initWithHomeScreenConfigCache_biomeUIStream_PETEventTracker_defaults___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __66__ATXHomeScreenEventLogger__updateCurrentConfigurationsAndLogDiff__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_logAppLaunchOverallCaptureRateFromAppPredictionPanelWithTappedWidget:(NSObject *)a3 suggestion:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 captureType];
  if (v7 >= 0xA)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
  }

  else
  {
    v8 = off_1E80C4960[v7];
  }

  v9 = v8;
  v10 = [a2 iconLocation];
  if (v10 >= 9)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = off_1E80C49B0[v10];
  }

  *buf = 138414338;
  v13 = v6;
  v14 = 2112;
  v15 = v9;
  v16 = 2112;
  v17 = v11;
  v18 = 1024;
  v19 = [a2 spotlightEnabled];
  v20 = 1024;
  v21 = [a2 appLibraryEnabled];
  v22 = 1024;
  v23 = [a2 appPredictionPanelEnabled];
  v24 = 1024;
  v25 = [a2 appPredictionPanelTodayEnabled];
  v26 = 1024;
  v27 = [a2 suggestionsWidgetEnabled];
  v28 = 1024;
  v29 = [a2 suggestionsWidgetTodayEnabled];
  _os_log_debug_impl(&dword_1BF549000, a3, OS_LOG_TYPE_DEBUG, "LOGGED: %@ - ATXMPBAppLaunchOverallCaptureRateTracker with captureType: %@, iconLocation: %@, spotlightEnabled: %u, appLibraryEnabled: %u, hasAppPanel: %u, hasAppPanelToday: %u, suggestionsWidgetEnabled: %u, suggestionsWidgetTodayEnabled: %u", buf, 0x44u);
}

void __64__ATXHomeScreenEventLogger_logHomeScreenDidDisappearWithReason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __80__ATXHomeScreenEventLogger_logSpecialPageDidAppear_widgetsByStackId_prediction___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __55__ATXHomeScreenEventLogger_logSpecialPageDidDisappear___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __63__ATXHomeScreenEventLogger_logUserDidChangeStackConfiguration___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_6();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_populateSuggestedPageMetadata:(void *)a1 forPage:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 pageIndex];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "We have a page without a unique page identifier: %ld", v3, 0xCu);
}

void __71__ATXHomeScreenEventLogger_logDidTapSuggestion_widget_blendingCacheId___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 136315650;
  v5 = "[ATXHomeScreenEventLogger logDidTapSuggestion:widget:blendingCacheId:]_block_invoke";
  v6 = 2114;
  v7 = v3;
  v8 = 2114;
  v9 = a2;
  _os_log_fault_impl(&dword_1BF549000, log, OS_LOG_TYPE_FAULT, "%s: unable to emit stackDidTap log - blendingCacheId %{public}@, stackId %{public}@", &v4, 0x20u);
}

@end