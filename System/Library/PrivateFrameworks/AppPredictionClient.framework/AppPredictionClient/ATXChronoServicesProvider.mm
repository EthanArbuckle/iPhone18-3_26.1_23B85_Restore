@interface ATXChronoServicesProvider
- (ATXChronoServicesProvider)init;
- (ATXChronoServicesProvider)initWithProactiveService:(id)service widgetMetricsService:(id)metricsService;
- (ATXChronoServicesProviderDelegate)delegate;
- (BOOL)_allReloadsAreCompletedInGuardedData:(id)data;
- (BOOL)_isCurrentTimelineRelevanceScoreNonPositiveForEntries:(id)entries;
- (id)_recordFromSuggestionLayout:(id)layout guardedData:(id)data;
- (id)_widgetFromSuggestionLayout:(id)layout;
- (void)_chronoDidReplyHandle:(id)handle timelineEntries:(id)entries forWidget:(id)widget withError:(id)error;
- (void)_removeOudatedFailureEntriesInGuardedData:(id)data;
- (void)_requestChronoToLoadWidget:(id)widget inGuardedData:(id)data;
- (void)_updateAndSendHomeScreenSuggestionsToDelegateWithGuardedData:(id)data;
- (void)_updateGuardedData:(id)data withNewCachedSuggestions:(id)suggestions;
- (void)resetToPrewarmWidgetsInSuggestions:(id)suggestions;
@end

@implementation ATXChronoServicesProvider

- (ATXChronoServicesProvider)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXChronoServicesProvider *)self initWithProactiveService:v3 widgetMetricsService:v4];

  return v5;
}

- (ATXChronoServicesProvider)initWithProactiveService:(id)service widgetMetricsService:(id)metricsService
{
  serviceCopy = service;
  metricsServiceCopy = metricsService;
  v21.receiver = self;
  v21.super_class = ATXChronoServicesProvider;
  v9 = [(ATXChronoServicesProvider *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_proactiveService, service);
    objc_storeStrong(&v10->_widgetMetricService, metricsService);
    v11 = objc_opt_new();
    v12 = v11[1];
    v11[1] = 0;

    v13 = v11[2];
    v11[2] = MEMORY[0x1E695E0F8];

    v14 = objc_opt_new();
    v15 = v11[3];
    v11[3] = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.proactive.ATXChronoServicesProvider", v16);

    v18 = [objc_alloc(MEMORY[0x1E69C5D70]) initWithGuardedData:v11 serialQueue:v17];
    lock = v10->_lock;
    v10->_lock = v18;
  }

  return v10;
}

- (void)resetToPrewarmWidgetsInSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  lock = self->_lock;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__ATXChronoServicesProvider_resetToPrewarmWidgetsInSuggestions___block_invoke;
  v7[3] = &unk_1E80C3F78;
  v7[4] = self;
  v8 = suggestionsCopy;
  v6 = suggestionsCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v7];
}

void __64__ATXChronoServicesProvider_resetToPrewarmWidgetsInSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _removeOudatedFailureEntriesInGuardedData:v3];
  v4 = [v3[1] uuid];
  v5 = [*(a1 + 40) uuid];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    [*(a1 + 32) _updateGuardedData:v3 withNewCachedSuggestions:*(a1 + 40)];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v7 = v3[2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ATXChronoServicesProvider_resetToPrewarmWidgetsInSuggestions___block_invoke_2;
  v10[3] = &unk_1E80C3F50;
  v13 = &v14;
  v8 = v3;
  v9 = *(a1 + 32);
  v11 = v8;
  v12 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  if (!v15[3])
  {
    [*(a1 + 32) _updateAndSendHomeScreenSuggestionsToDelegateWithGuardedData:v8];
  }

  _Block_object_dispose(&v14, 8);
}

void __64__ATXChronoServicesProvider_resetToPrewarmWidgetsInSuggestions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 state];
  if (!v7 || v7 == 3)
  {
    v8 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v5];
    if (v8)
    {
      v9 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        v11 = v8;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: Short-circuit widget reload because it recently failed at %{public}@: %@", &v10, 0x16u);
      }

      [v6 setState:3];
    }

    else
    {
      [*(a1 + 40) _requestChronoToLoadWidget:v5 inGuardedData:*(a1 + 32)];
      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else if (v7 == 1)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

- (void)_removeOudatedFailureEntriesInGuardedData:(id)data
{
  dataCopy = data;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = 0;
  v4 = dataCopy[3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__ATXChronoServicesProvider__removeOudatedFailureEntriesInGuardedData___block_invoke;
  v5[3] = &unk_1E80C3FA0;
  v5[4] = &v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
  if ([v7[5] count])
  {
    [dataCopy[3] removeObjectsForKeys:v7[5]];
  }

  _Block_object_dispose(&v6, 8);
}

void __71__ATXChronoServicesProvider__removeOudatedFailureEntriesInGuardedData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  [a3 timeIntervalSinceNow];
  if (v5 < -1800.0)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v6 addObject:v10];
  }
}

- (void)_updateGuardedData:(id)data withNewCachedSuggestions:(id)suggestions
{
  v46 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  suggestionsCopy = suggestions;
  v30 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = suggestionsCopy;
  obj = [suggestionsCopy cachedSuggestedWidgetsLayouts];
  v27 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v27)
  {
    v25 = *v37;
    do
    {
      v7 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v7;
        v8 = *(*(&v36 + 1) + 8 * v7);
        cachedSuggestedWidgetsLayouts = [v26 cachedSuggestedWidgetsLayouts];
        v10 = [cachedSuggestedWidgetsLayouts objectForKeyedSubscript:v8];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v29 = v10;
        v11 = [v29 countByEnumeratingWithState:&v32 objects:v44 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(v29);
              }

              v15 = *(*(&v32 + 1) + 8 * i);
              v16 = [(ATXChronoServicesProvider *)self _widgetFromSuggestionLayout:v15];
              if (v16)
              {
                v17 = [dataCopy[2] objectForKeyedSubscript:v16];
                if (!v17)
                {
                  v17 = objc_opt_new();
                  [v17 setState:0];
                }

                extensionIdentity = [v16 extensionIdentity];
                extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
                IsSpecialWidgetExtensionBundleId = ATXBundleIdIsSpecialWidgetExtensionBundleId();

                if (IsSpecialWidgetExtensionBundleId)
                {
                  [v17 setState:2];
                }

                [v17 setWidget:v16];
                [v17 setSuggestedStackId:v8];
                [v30 setObject:v17 forKeyedSubscript:v16];
              }

              else
              {
                v17 = __atxlog_handle_home_screen();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138543618;
                  v41 = v8;
                  v42 = 2112;
                  v43 = v15;
                  _os_log_fault_impl(&dword_1BF549000, v17, OS_LOG_TYPE_FAULT, "ATXChronoServicesProvider: Unable to prewarm suggested widget for stack %{public}@ due to failure of converting suggestion layout into ATXHomeScreenWidgetIdentifiable. Layout: \n%@", buf, 0x16u);
                }
              }
            }

            v12 = [v29 countByEnumeratingWithState:&v32 objects:v44 count:16];
          }

          while (v12);
        }

        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v27);
  }

  v21 = dataCopy[1];
  dataCopy[1] = v26;
  v22 = v26;

  v23 = dataCopy[2];
  dataCopy[2] = v30;
}

- (id)_widgetFromSuggestionLayout:(id)layout
{
  v3 = [ATXHomeScreenStackSuggestion widgetFromSuggestionLayout:layout];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E6994370]);
    v5 = objc_alloc(MEMORY[0x1E6994290]);
    extensionBundleId = [v3 extensionBundleId];
    appBundleId = [v3 appBundleId];
    v8 = [v5 initWithExtensionBundleIdentifier:extensionBundleId containerBundleIdentifier:appBundleId deviceIdentifier:0];
    widgetKind = [v3 widgetKind];
    v10 = CHSWidgetFamilyFromATXStackLayoutSize([v3 size]);
    intent = [v3 intent];
    v12 = [v4 initWithExtensionIdentity:v8 kind:widgetKind family:v10 intent:intent activityIdentifier:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_requestChronoToLoadWidget:(id)widget inGuardedData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  widgetCopy = widget;
  dataCopy = data;
  v8 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = widgetCopy;
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: Requesting Chrono to load widget %@", buf, 0xCu);
  }

  v9 = [dataCopy[2] objectForKeyedSubscript:widgetCopy];
  if (v9)
  {
    v10 = [(SBSWidgetMetricsService *)self->_widgetMetricService systemMetricsForWidget:widgetCopy];
    if (v10)
    {
      [v9 setState:1];
      proactiveService = self->_proactiveService;
      suggestedStackId = [v9 suggestedStackId];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__ATXChronoServicesProvider__requestChronoToLoadWidget_inGuardedData___block_invoke;
      v15[3] = &unk_1E80C3FC8;
      v15[4] = self;
      v16 = widgetCopy;
      [(CHSProactiveService *)proactiveService loadSuggestedWidget:v16 metrics:v10 stackIdentifier:suggestedStackId completion:v15];
    }

    else
    {
      v13 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ATXChronoServicesProvider _requestChronoToLoadWidget:widgetCopy inGuardedData:v13];
      }

      [v9 setState:3];
      v14 = [MEMORY[0x1E695DF00] now];
      [dataCopy[3] setObject:v14 forKeyedSubscript:widgetCopy];
    }
  }

  else
  {
    v10 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [ATXChronoServicesProvider _requestChronoToLoadWidget:widgetCopy inGuardedData:v10];
    }
  }
}

- (void)_chronoDidReplyHandle:(id)handle timelineEntries:(id)entries forWidget:(id)widget withError:(id)error
{
  handleCopy = handle;
  entriesCopy = entries;
  widgetCopy = widget;
  errorCopy = error;
  lock = self->_lock;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__ATXChronoServicesProvider__chronoDidReplyHandle_timelineEntries_forWidget_withError___block_invoke;
  v19[3] = &unk_1E80C3FF0;
  v20 = handleCopy;
  v21 = errorCopy;
  v22 = widgetCopy;
  selfCopy = self;
  v24 = entriesCopy;
  v15 = entriesCopy;
  v16 = widgetCopy;
  v17 = errorCopy;
  v18 = handleCopy;
  [(_PASQueueLock *)lock runAsyncWithLockAcquired:v19];
}

void __87__ATXChronoServicesProvider__chronoDidReplyHandle_timelineEntries_forWidget_withError___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32) && !*(a1 + 40))
  {
    v7 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 138412290;
      v38 = v8;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: Chrono successfully loaded widget %@.", buf, 0xCu);
    }

    v5 = [*(a1 + 56) _shouldBlockSuggestionForWidget:*(a1 + 48) entries:*(a1 + 64)] ^ 1;
    v6 = 1;
  }

  else
  {
    v4 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __87__ATXChronoServicesProvider__chronoDidReplyHandle_timelineEntries_forWidget_withError___block_invoke_cold_1(a1, (a1 + 32), v4);
    }

    v5 = 0;
    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 32));
  [WeakRetained chronoServiceProvider:*(a1 + 56) reloadDidCompleteForWidget:*(a1 + 48) success:v6 widgetIsReadyForDisplay:v5 error:*(a1 + 40)];

  v10 = [v3[2] objectForKeyedSubscript:*(a1 + 48)];
  if (v10)
  {
    v11 = __atxlog_handle_home_screen();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v12)
      {
        v13 = *(a1 + 48);
        *buf = 138412290;
        v38 = v13;
        _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: Widget is OK to display %@.", buf, 0xCu);
      }

      [v10 setState:2];
      [v10 setWidgetHandle:*(a1 + 32)];
      goto LABEL_30;
    }

    v31 = v10;
    v32 = v3;
    if (v12)
    {
      v14 = *(a1 + 48);
      *buf = 138412290;
      v38 = v14;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: Widget is NOT OK to display %@.", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = *(a1 + 64);
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (!v16)
    {
LABEL_29:

      v10 = v31;
      [v31 setState:3];
      v30 = [MEMORY[0x1E695DF00] now];
      v3 = v32;
      [v32[3] setObject:v30 forKeyedSubscript:*(a1 + 48)];

LABEL_30:
      if ([*(a1 + 56) _allReloadsAreCompletedInGuardedData:v3])
      {
        [*(a1 + 56) _updateAndSendHomeScreenSuggestionsToDelegateWithGuardedData:v3];
      }

      goto LABEL_32;
    }

    v17 = v16;
    v18 = *v34;
LABEL_18:
    v19 = 0;
    while (1)
    {
      if (*v34 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v33 + 1) + 8 * v19);
      v21 = [v20 relevance];

      v22 = __atxlog_handle_home_screen();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (v23)
        {
          v24 = [v20 date];
          v25 = [v20 relevance];
          [v25 score];
          v27 = v26;
          v28 = [v20 relevance];
          [v28 duration];
          *buf = 138412802;
          v38 = v24;
          v39 = 2048;
          v40 = v27;
          v41 = 2048;
          v42 = v29;
          _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: timeline entry at %@ has relevance score %f duration %f", buf, 0x20u);

LABEL_26:
        }
      }

      else if (v23)
      {
        v24 = [v20 date];
        *buf = 138412290;
        v38 = v24;
        _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: timeline entry at %@ has nil relevance", buf, 0xCu);
        goto LABEL_26;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_18;
      }
    }
  }

LABEL_32:
}

- (BOOL)_isCurrentTimelineRelevanceScoreNonPositiveForEntries:(id)entries
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [entries sortedArrayUsingComparator:&__block_literal_global_63];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {

    v9 = 0;
    v8 = 0;
    goto LABEL_21;
  }

  v8 = 0;
  v9 = 0;
  v10 = *v27;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v27 != v10)
    {
      objc_enumerationMutation(v6);
    }

    v12 = *(*(&v26 + 1) + 8 * v11);
    date = [v12 date];
    [date timeIntervalSinceReferenceDate];
    v15 = v14;

    if (v15 > v5)
    {
      break;
    }

    relevance = [v12 relevance];

    if (relevance)
    {
      relevance2 = [v12 relevance];

      date2 = [v12 date];

      v8 = date2;
      v9 = relevance2;
    }

    if (v7 == ++v11)
    {
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v9)
  {
LABEL_20:
    LOBYTE(v7) = 0;
    goto LABEL_21;
  }

  [v9 duration];
  if (v19 >= 0.0)
  {
    [v9 duration];
    if (v20 == 0.0 || ([v8 timeIntervalSinceReferenceDate], v22 = v21, objc_msgSend(v9, "duration"), v5 < v22 + v23))
    {
      [v9 score];
      LOBYTE(v7) = v24 <= 0.0;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ATXChronoServicesProvider _isCurrentTimelineRelevanceScoreNonPositiveForEntries:v7];
  }

  LOBYTE(v7) = 1;
LABEL_21:

  return v7;
}

uint64_t __83__ATXChronoServicesProvider__isCurrentTimelineRelevanceScoreNonPositiveForEntries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v8 = [v4 date];

  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  if (v7 < v10)
  {
    return -1;
  }

  else
  {
    return v7 > v10;
  }
}

- (BOOL)_allReloadsAreCompletedInGuardedData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [*(data + 2) allValues];
  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (![v8 state] || objc_msgSend(v8, "state") == 1)
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (void)_updateAndSendHomeScreenSuggestionsToDelegateWithGuardedData:(id)data
{
  v69 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = objc_opt_new();
    [dataCopy[1] cachedTopOfStackLayouts];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v61 = 0u;
    v7 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    v8 = dataCopy;
    v42 = v6;
    if (!v7)
    {
      goto LABEL_25;
    }

    v9 = v7;
    v10 = *v59;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v58 + 1) + 8 * v11);
        v13 = [obj objectForKeyedSubscript:v12];
        if (![v13 isNPlusOne])
        {
          goto LABEL_18;
        }

        v14 = [(ATXChronoServicesProvider *)selfCopy _recordFromSuggestionLayout:v13 guardedData:dataCopy];
        if (!v14)
        {
          v15 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543618;
            v65 = v12;
            v66 = 2112;
            v67 = v13;
            _os_log_fault_impl(&dword_1BF549000, v15, OS_LOG_TYPE_FAULT, "ATXChronoServicesProvider: Unable to find record for a N+1 topOfStackLayout for stack %{public}@. Layout %@", buf, 0x16u);
          }

          v6 = v42;
        }

        if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
        {
          v16 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v65 = v12;
            v66 = 2112;
            v67 = v13;
            _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: widgetkit developer mode on, allowing topOfStackLayout for stack %{public}@. Layout %@", buf, 0x16u);
          }

          dataCopy = v8;
LABEL_17:

LABEL_18:
          [v6 setObject:v13 forKeyedSubscript:v12];
          goto LABEL_19;
        }

        if ([v14 state] == 2)
        {
          goto LABEL_17;
        }

        v17 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v65 = v12;
          v66 = 2112;
          v67 = v13;
          _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: Skipping topOfStackLayout for stack %{public}@ because it's a suggested widget and it's not ready for display. Layout %@", buf, 0x16u);
        }

        dataCopy = v8;
LABEL_19:

        ++v11;
      }

      while (v9 != v11);
      v18 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
      v9 = v18;
      if (!v18)
      {
LABEL_25:
        v44 = objc_opt_new();
        [dataCopy[1] cachedSuggestedWidgetsLayouts];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v46 = v57 = 0u;
        v45 = [v46 countByEnumeratingWithState:&v54 objects:v63 count:16];
        if (!v45)
        {
          goto LABEL_53;
        }

        v43 = *v55;
        while (1)
        {
          v19 = 0;
          do
          {
            if (*v55 != v43)
            {
              objc_enumerationMutation(v46);
            }

            v48 = v19;
            v20 = *(*(&v54 + 1) + 8 * v19);
            v21 = objc_opt_new();
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v22 = [v46 objectForKeyedSubscript:v20];
            v23 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v51;
              do
              {
                v26 = 0;
                do
                {
                  if (*v51 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v50 + 1) + 8 * v26);
                  v28 = [(ATXChronoServicesProvider *)selfCopy _recordFromSuggestionLayout:v27 guardedData:v8];
                  if (!v28)
                  {
                    v29 = __atxlog_handle_home_screen();
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138543618;
                      v65 = v20;
                      v66 = 2112;
                      v67 = v27;
                      _os_log_fault_impl(&dword_1BF549000, v29, OS_LOG_TYPE_FAULT, "ATXChronoServicesProvider: Unable to find record for a suggestedWidgetLayout for stack %{public}@. Layout %@", buf, 0x16u);
                    }
                  }

                  if (CFPreferencesGetAppBooleanValue(@"widgetKitDeveloperModeEnabled", @"com.apple.duetexpertd", 0))
                  {
                    v30 = __atxlog_handle_home_screen();
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      v65 = v20;
                      v66 = 2112;
                      v67 = v27;
                      _os_log_impl(&dword_1BF549000, v30, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: widgetkit developer mode on, allowing suggestedWidgetLayout for stack %{public}@. Layout %@", buf, 0x16u);
                    }

LABEL_44:
                    [v21 addObject:v27];
                    goto LABEL_45;
                  }

                  if ([v28 state] == 2)
                  {
                    goto LABEL_44;
                  }

                  v31 = __atxlog_handle_home_screen();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543618;
                    v65 = v20;
                    v66 = 2112;
                    v67 = v27;
                    _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_DEFAULT, "ATXChronoServicesProvider: Skipping suggestedWidgetLayout for stack %{public}@ because it's not ready for display. Layout %@", buf, 0x16u);
                  }

LABEL_45:
                  ++v26;
                }

                while (v24 != v26);
                v32 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
                v24 = v32;
              }

              while (v32);
            }

            [v44 setObject:v21 forKeyedSubscript:v20];
            v19 = v48 + 1;
          }

          while (v48 + 1 != v45);
          v45 = [v46 countByEnumeratingWithState:&v54 objects:v63 count:16];
          if (!v45)
          {
LABEL_53:
            v33 = objc_alloc(MEMORY[0x1E69C5B80]);
            dataCopy = v8;
            uuid = [v8[1] uuid];
            cachedSuggestionWidgetLayouts = [dataCopy[1] cachedSuggestionWidgetLayouts];
            cachedAppPredictionPanelLayouts = [dataCopy[1] cachedAppPredictionPanelLayouts];
            fallbackSuggestions = [dataCopy[1] fallbackSuggestions];
            v38 = [v33 initWithUUID:uuid suggestionWidgetLayouts:cachedSuggestionWidgetLayouts appPredictionPanelLayouts:cachedAppPredictionPanelLayouts topOfStackLayouts:v42 suggestedWidgetLayouts:v44 fallbackSuggestions:fallbackSuggestions];

            v39 = dataCopy[1];
            dataCopy[1] = v38;
            v40 = v38;

            v41 = objc_loadWeakRetained(&selfCopy->_delegate);
            [v41 chronoServiceProvider:selfCopy finishedPrewarmingSuggestions:v40];

            goto LABEL_54;
          }
        }
      }
    }
  }

LABEL_54:
}

- (id)_recordFromSuggestionLayout:(id)layout guardedData:(id)data
{
  dataCopy = data;
  v7 = [(ATXChronoServicesProvider *)self _widgetFromSuggestionLayout:layout];
  if (v7)
  {
    v8 = [dataCopy[2] objectForKeyedSubscript:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ATXChronoServicesProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_requestChronoToLoadWidget:(uint64_t)a1 inGuardedData:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "ATXChronoServicesProvider: Failed - SBSWidgetMetricsService returned nil metrics for widget %@.", &v2, 0xCu);
}

- (void)_requestChronoToLoadWidget:(uint64_t)a1 inGuardedData:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ATXChronoServicesProvider: No record found for widget %@ in guardedData.", &v2, 0xCu);
}

void __87__ATXChronoServicesProvider__chronoDidReplyHandle_timelineEntries_forWidget_withError___block_invoke_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = 138412802;
  v7 = v4;
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "ATXChronoServicesProvider: Chrono reload failed for widget %@: returned widget handle %@, error %@", &v6, 0x20u);
}

@end