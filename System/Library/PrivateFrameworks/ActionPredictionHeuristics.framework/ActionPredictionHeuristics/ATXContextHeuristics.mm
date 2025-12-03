@interface ATXContextHeuristics
- (ATXContextHeuristics)initWithLocationManager:(id)manager;
- (ATXContextHeuristicsDelegate)delegate;
- (BOOL)_queue_refreshResultsForHeuristics:(id)heuristics;
- (id)_criteriaForRefreshJobOnDate:(id)date;
- (void)_queue_cleanupTimeTriggers;
- (void)_queue_refreshResultsForAllHeuristicsWithCompletionHandler:(id)handler;
- (void)_queue_sendRelevantSuggestionsToBlending;
- (void)_queue_updateHeuristicName:(id)name withRefreshTriggers:(id)triggers;
- (void)_setRefreshCTSJobForCriteria:(id)criteria fireDate:(id)date forHeuristics:(id)heuristics;
- (void)donateSuggestions:(id)suggestions forHeuristic:(id)heuristic;
- (void)informationHeuristicRefreshTrigger:(id)trigger didTriggerRefreshForHeuristics:(id)heuristics;
- (void)refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:(id)handler;
@end

@implementation ATXContextHeuristics

- (ATXContextHeuristics)initWithLocationManager:(id)manager
{
  location[15] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v65.receiver = self;
  v65.super_class = ATXContextHeuristics;
  v5 = [(ATXContextHeuristics *)&v65 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_locationManager, manager);
    v7 = objc_opt_new();
    resultsCache = v6->_resultsCache;
    v6->_resultsCache = v7;

    v9 = objc_opt_new();
    heuristicRefreshTriggers = v6->_heuristicRefreshTriggers;
    v6->_heuristicRefreshTriggers = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    attr = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_BACKGROUND, 0);

    v12 = dispatch_queue_create("ATXContextHeuristicsRefresh", attr);
    queue = v6->_queue;
    v6->_queue = v12;

    v14 = objc_opt_class();
    v61 = NSStringFromClass(v14);
    location[0] = v61;
    v15 = objc_opt_class();
    v60 = NSStringFromClass(v15);
    location[1] = v60;
    v16 = objc_opt_class();
    v59 = NSStringFromClass(v16);
    location[2] = v59;
    v17 = objc_opt_class();
    v58 = NSStringFromClass(v17);
    location[3] = v58;
    v18 = objc_opt_class();
    v57 = NSStringFromClass(v18);
    location[4] = v57;
    v19 = objc_opt_class();
    v56 = NSStringFromClass(v19);
    location[5] = v56;
    v20 = objc_opt_class();
    v54 = NSStringFromClass(v20);
    location[6] = v54;
    v21 = objc_opt_class();
    v53 = NSStringFromClass(v21);
    location[7] = v53;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    location[8] = v23;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    location[9] = v25;
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    location[10] = v27;
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    location[11] = v29;
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    location[12] = v31;
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    location[13] = v33;
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    location[14] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:location count:15];
    v37 = [v36 mutableCopy];

    if (_os_feature_enabled_impl())
    {
      v38 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E3DF000, v38, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: zkw_commute feature flag ON, making commute suggestions", buf, 2u);
      }

      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      [v37 addObject:v40];

      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      [v37 addObject:v42];
    }

    v43 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v37];

    v44 = [v43 mutableCopy];
    heuristicsPendingRefresh = v6->_heuristicsPendingRefresh;
    v6->_heuristicsPendingRefresh = v44;

    objc_initWeak(location, v6);
    v46 = objc_alloc(MEMORY[0x277D42628]);
    v47 = v6->_queue;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __48__ATXContextHeuristics_initWithLocationManager___block_invoke;
    v63[3] = &unk_278C3BBB8;
    objc_copyWeak(&v64, location);
    v48 = [v46 initWithQueue:v47 operation:v63];
    coalescedRefreshOperation = v6->_coalescedRefreshOperation;
    v6->_coalescedRefreshOperation = v48;

    v50 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3DF000, v50, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: initialized", buf, 2u);
    }

    objc_destroyWeak(&v64);
    objc_destroyWeak(location);
  }

  v51 = *MEMORY[0x277D85DE8];
  return v6;
}

void __48__ATXContextHeuristics_initWithLocationManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _queue_refreshResultsForAllHeuristicsWithCompletionHandler:0];
  }

  else
  {
    v3 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__ATXContextHeuristics_initWithLocationManager___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

- (void)refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__ATXContextHeuristics_refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C3BBE0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)donateSuggestions:(id)suggestions forHeuristic:(id)heuristic
{
  suggestionsCopy = suggestions;
  heuristicCopy = heuristic;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ATXContextHeuristics_donateSuggestions_forHeuristic___block_invoke;
  block[3] = &unk_278C3BC08;
  v12 = suggestionsCopy;
  v13 = heuristicCopy;
  selfCopy = self;
  v9 = heuristicCopy;
  v10 = suggestionsCopy;
  dispatch_async(queue, block);
}

uint64_t __55__ATXContextHeuristics_donateSuggestions_forHeuristic___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v4 = *(a1 + 40);
    v7 = 134218242;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_23E3DF000, v2, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: donating [%lu] to %@", &v7, 0x16u);
  }

  [*(*(a1 + 48) + 40) setSuggestions:*(a1 + 32) forKey:*(a1 + 40)];
  result = [*(a1 + 48) _queue_sendRelevantSuggestionsToBlending];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)informationHeuristicRefreshTrigger:(id)trigger didTriggerRefreshForHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__ATXContextHeuristics_informationHeuristicRefreshTrigger_didTriggerRefreshForHeuristics___block_invoke;
  v8[3] = &unk_278C3BC30;
  v9 = heuristicsCopy;
  selfCopy = self;
  v7 = heuristicsCopy;
  dispatch_async(queue, v8);
}

uint64_t __90__ATXContextHeuristics_informationHeuristicRefreshTrigger_didTriggerRefreshForHeuristics___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23E3DF000, v2, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: add refresh for %@", &v6, 0xCu);
  }

  [*(*(a1 + 40) + 24) unionSet:*(a1 + 32)];
  result = [*(*(a1 + 40) + 48) runAfterDelaySeconds:0 coalescingBehavior:0.5];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_queue_updateHeuristicName:(id)name withRefreshTriggers:(id)triggers
{
  v66 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  triggersCopy = triggers;
  dispatch_assert_queue_V2(self->_queue);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = triggersCopy;
  v9 = [v8 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    v39 = 138412290;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v54 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_heuristicRefreshTriggers containsObject:v13, v39]& 1) == 0)
        {
          v14 = __atxlog_handle_context_heuristic();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = v39;
            v61 = v13;
            _os_log_debug_impl(&dword_23E3DF000, v14, OS_LOG_TYPE_DEBUG, "ATXContextHeuristics: new trigger %@", buf, 0xCu);
          }

          [v13 setDelegate:self];
          [(NSMutableSet *)self->_heuristicRefreshTriggers addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v10);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = self->_heuristicRefreshTriggers;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v50 objects:v64 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v51;
    v40 = 138412546;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v51 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v50 + 1) + 8 * j);
        v21 = [v8 containsObject:{v20, v40}];
        v22 = __atxlog_handle_context_heuristic();
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        if (v21)
        {
          if (v23)
          {
            *buf = v40;
            v61 = nameCopy;
            v62 = 2112;
            v63 = v20;
            _os_log_debug_impl(&dword_23E3DF000, v22, OS_LOG_TYPE_DEBUG, "ATXContextHeuristics: start %@ for trigger %@", buf, 0x16u);
          }

          [v20 startTriggeringRefreshForHeuristicIfNotAlready:nameCopy];
        }

        else
        {
          if (v23)
          {
            *buf = v40;
            v61 = nameCopy;
            v62 = 2112;
            v63 = v20;
            _os_log_debug_impl(&dword_23E3DF000, v22, OS_LOG_TYPE_DEBUG, "ATXContextHeuristics: stop %@ for trigger %@", buf, 0x16u);
          }

          [v20 stopTriggeringRefreshForHeuristicIfAlready:nameCopy];
        }
      }

      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v50 objects:v64 count:16];
    }

    while (v17);
  }

  v41 = nameCopy;

  v24 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = self->_heuristicRefreshTriggers;
  v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v47;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v46 + 1) + 8 * k);
        registeredHeuristics = [v30 registeredHeuristics];
        v32 = [registeredHeuristics count];

        if (!v32)
        {
          [v24 addObject:v30];
        }
      }

      v27 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v27);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = v24;
  v34 = [v33 countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v43;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v43 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [(NSMutableSet *)self->_heuristicRefreshTriggers removeObject:*(*(&v42 + 1) + 8 * m), v41];
      }

      v35 = [v33 countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v35);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_queue_refreshResultsForAllHeuristicsWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v5 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    heuristicsPendingRefresh = self->_heuristicsPendingRefresh;
    v9 = 138412290;
    v10 = heuristicsPendingRefresh;
    _os_log_impl(&dword_23E3DF000, v5, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: refresh %@", &v9, 0xCu);
  }

  v7 = [(ATXContextHeuristics *)self _queue_refreshResultsForHeuristics:self->_heuristicsPendingRefresh];
  if (v7)
  {
    [(NSMutableSet *)self->_heuristicsPendingRefresh removeAllObjects];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v7);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_refreshResultsForHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  dispatch_assert_queue_V2(self->_queue);
  if ([heuristicsCopy count])
  {
    sel_getName(a2);
    v6 = os_transaction_create();
    v7 = [objc_alloc(MEMORY[0x277CE89F0]) initWithLocationManager:self->_locationManager];
    heuristicDevice = self->_heuristicDevice;
    self->_heuristicDevice = v7;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__ATXContextHeuristics__queue_refreshResultsForHeuristics___block_invoke;
    v18[3] = &unk_278C3BC58;
    v18[4] = self;
    [heuristicsCopy enumerateObjectsUsingBlock:v18];
    [(ATXContextHeuristics *)self _queue_sendRelevantSuggestionsToBlending];
    v9 = self->_heuristicDevice;
    self->_heuristicDevice = 0;
  }

  else
  {
    v6 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXContextHeuristics *)v6 _queue_refreshResultsForHeuristics:v10, v11, v12, v13, v14, v15, v16];
    }
  }

  return 1;
}

void __59__ATXContextHeuristics__queue_refreshResultsForHeuristics___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([(NSString *)v3 isEqual:@"kRecomputeRelevant"])
  {
    v4 = __atxlog_handle_context_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_23E3DF000, v4, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: asked to recompute relevant suggestions", &v25, 2u);
    }
  }

  else
  {
    v5 = NSClassFromString(v3);
    v6 = [(objc_class *)v5 conformsToProtocol:&unk_2850AE310];
    v7 = __atxlog_handle_context_heuristic();
    v4 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v3;
        _os_log_impl(&dword_23E3DF000, v4, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: _refreshResultsForHeuristics class %@", &v25, 0xCu);
      }

      v4 = objc_alloc_init(v5);
      v8 = objc_autoreleasePoolPush();
      v9 = [v4 heuristicResultWithEnvironment:*(a1 + 32)];
      objc_autoreleasePoolPop(v8);
      v10 = [v9 suggestions];
      v11 = __atxlog_handle_context_heuristic();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v10 count];
        v25 = 138412546;
        v26 = v3;
        v27 = 2048;
        v28 = v12;
        _os_log_impl(&dword_23E3DF000, v11, OS_LOG_TYPE_DEFAULT, "ATXContextHeuristics: %@ produced %lu suggestions", &v25, 0x16u);
      }

      [*(*(a1 + 32) + 40) setSuggestions:v10 forKey:v3];
      v13 = [v4 permanentRefreshTriggers];
      v14 = [v9 additionalRefreshTriggers];
      v15 = *(a1 + 32);
      v16 = [v13 setByAddingObjectsFromSet:v14];
      [v15 _queue_updateHeuristicName:v3 withRefreshTriggers:v16];
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__ATXContextHeuristics__queue_refreshResultsForHeuristics___block_invoke_cold_1(v4, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_queue_cleanupTimeTriggers
{
  v67 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_opt_new();
  v4 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E3DF000, v4, OS_LOG_TYPE_DEFAULT, "[Cache] Get date for next change", buf, 2u);
  }

  v51 = v3;
  v5 = [(ATXContextHeuristicCache *)self->_resultsCache nextChangeAfterDate:v3];
  [(ATXInformationHeuristicRefreshTimeTrigger *)self->_earliestCacheRefreshTimeTrigger stopTriggeringRefreshForAllHeuristics];
  earliestCacheRefreshTimeTrigger = self->_earliestCacheRefreshTimeTrigger;
  self->_earliestCacheRefreshTimeTrigger = 0;

  v7 = __atxlog_handle_context_heuristic();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      *buf = 138412290;
      v62 = v5;
      _os_log_impl(&dword_23E3DF000, v7, OS_LOG_TYPE_DEFAULT, "[Cache] Create time trigger for date: %@", buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x277CE8A68]) initWithFireDate:v5];
    v10 = self->_earliestCacheRefreshTimeTrigger;
    self->_earliestCacheRefreshTimeTrigger = v9;

    [(ATXInformationHeuristicRefreshTimeTrigger *)self->_earliestCacheRefreshTimeTrigger setDelegate:self];
    [(ATXInformationHeuristicRefreshTimeTrigger *)self->_earliestCacheRefreshTimeTrigger startTriggeringRefreshForHeuristicIfNotAlready:@"kRecomputeRelevant"];
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_23E3DF000, v7, OS_LOG_TYPE_DEFAULT, "[Cache] No time trigger", buf, 2u);
    }
  }

  v50 = v5;
  v11 = self->_earliestCacheRefreshTimeTrigger;
  v52 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  selfCopy = self;
  v12 = self->_heuristicRefreshTriggers;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v57 objects:v66 count:16];
  v14 = v51;
  if (v13)
  {
    v15 = v13;
    v16 = *v58;
    v17 = 0x277CE8000uLL;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v58 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v57 + 1) + 8 * i);
        v20 = *(v17 + 2664);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v19;
          fireDate = [v21 fireDate];
          v23 = [fireDate earlierDate:v14];

          if (v23 == v14)
          {
            if (!v11)
            {
              goto LABEL_21;
            }

            fireDate2 = [(ATXInformationHeuristicRefreshTimeTrigger *)v11 fireDate];
            fireDate3 = [v21 fireDate];
            [fireDate2 earlierDate:fireDate3];
            v27 = v26 = v11;
            fireDate4 = [v21 fireDate];

            v29 = v27 == fireDate4;
            v11 = v26;
            v17 = 0x277CE8000;
            v14 = v51;
            if (v29)
            {
LABEL_21:
              v30 = v21;
              v31 = v11;
              v11 = v30;
            }
          }

          else
          {
            [v21 stopTriggeringRefreshForAllHeuristics];
            [v52 addObject:v21];
          }
        }
      }

      v15 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v15);
  }

  v32 = v11;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v33 = v52;
  v34 = [v33 countByEnumeratingWithState:&v53 objects:v65 count:16];
  p_isa = &selfCopy->super.isa;
  if (v34)
  {
    v36 = v34;
    v37 = *v54;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(v33);
        }

        [p_isa[2] removeObject:{*(*(&v53 + 1) + 8 * j), selfCopy}];
      }

      v36 = [v33 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v36);
  }

  v39 = __atxlog_handle_context_heuristic();
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
  v41 = v32;
  if (v32)
  {
    if (v40)
    {
      fireDate5 = [(ATXInformationHeuristicRefreshTimeTrigger *)v32 fireDate];
      registeredHeuristics = [(ATXInformationHeuristicRefreshTimeTrigger *)v32 registeredHeuristics];
      *buf = 138412546;
      v62 = fireDate5;
      v63 = 2112;
      v64 = registeredHeuristics;
      _os_log_impl(&dword_23E3DF000, v39, OS_LOG_TYPE_DEFAULT, "[CTS] Schedule refresh at %@ for [%@]", buf, 0x16u);

      v41 = v32;
    }

    fireDate6 = [(ATXInformationHeuristicRefreshTimeTrigger *)v41 fireDate];
    v45 = [p_isa _criteriaForRefreshJobOnDate:fireDate6];
    fireDate7 = [(ATXInformationHeuristicRefreshTimeTrigger *)v32 fireDate];
    registeredHeuristics2 = [(ATXInformationHeuristicRefreshTimeTrigger *)v32 registeredHeuristics];
    [p_isa _setRefreshCTSJobForCriteria:v45 fireDate:fireDate7 forHeuristics:registeredHeuristics2];

    v41 = v32;
    v14 = v51;
  }

  else
  {
    if (v40)
    {
      *buf = 0;
      _os_log_impl(&dword_23E3DF000, v39, OS_LOG_TYPE_DEFAULT, "[CTS] Remove refresh if exists", buf, 2u);
    }

    [p_isa _removeRefreshCTSJob];
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_queue_sendRelevantSuggestionsToBlending
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  [(ATXContextHeuristics *)self _queue_cleanupTimeTriggers];
  v3 = objc_opt_new();
  v4 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_23E3DF000, v4, OS_LOG_TYPE_DEFAULT, "[Cache] Get relevant suggestions for date: %@", &v11, 0xCu);
  }

  v5 = [(ATXContextHeuristicCache *)self->_resultsCache allRelevantSuggestionsForDate:v3];
  v6 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 count];
    v11 = 134217984;
    v12 = v7;
    _os_log_impl(&dword_23E3DF000, v6, OS_LOG_TYPE_DEFAULT, "[Cache] Received %lu suggestions", &v11, 0xCu);
  }

  v8 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_23E3DF000, v8, OS_LOG_TYPE_DEFAULT, "[Cache] Evict past suggestions", &v11, 2u);
  }

  [(ATXContextHeuristicCache *)self->_resultsCache evictBefore:v3];
  delegate = [(ATXContextHeuristics *)self delegate];
  [delegate contextHeuristics:self didUpdateSuggestions:v5];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setRefreshCTSJobForCriteria:(id)criteria fireDate:(id)date forHeuristics:(id)heuristics
{
  dateCopy = date;
  heuristicsCopy = heuristics;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __76__ATXContextHeuristics__setRefreshCTSJobForCriteria_fireDate_forHeuristics___block_invoke;
  handler[3] = &unk_278C3BC80;
  handler[4] = self;
  v13 = dateCopy;
  v14 = heuristicsCopy;
  v10 = heuristicsCopy;
  v11 = dateCopy;
  xpc_activity_register("com.apple.duetexpertd.context-heuristic-refresh", criteria, handler);
}

void __76__ATXContextHeuristics__setRefreshCTSJobForCriteria_fireDate_forHeuristics___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2 && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v3 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__ATXContextHeuristics__setRefreshCTSJobForCriteria_fireDate_forHeuristics___block_invoke_2;
    block[3] = &unk_278C3BC08;
    v7 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v8 = v4;
    v9 = v5;
    dispatch_async(v3, block);
  }
}

void __76__ATXContextHeuristics__setRefreshCTSJobForCriteria_fireDate_forHeuristics___block_invoke_2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 timeIntervalSinceDate:a1[4]];
  v4 = v3;
  v5 = __atxlog_handle_context_heuristic();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[5];
    v8 = 134218242;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_23E3DF000, v5, OS_LOG_TYPE_DEFAULT, "[CTS] Running refresh %0.1fs after date for [%@].", &v8, 0x16u);
  }

  [*(a1[6] + 24) unionSet:a1[5]];
  [*(a1[6] + 48) runAfterDelaySeconds:0 coalescingBehavior:0.5];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_criteriaForRefreshJobOnDate:(id)date
{
  [date timeIntervalSinceNow];
  v4 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86250], v4);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], *MEMORY[0x277D862A8]);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_string(v5, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);

  return v5;
}

- (ATXContextHeuristicsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end