@interface ATXInformationHeuristics
+ (id)sourceIdentifierForHeuristicWithName:(id)name;
- (ATXInformationHeuristics)init;
- (ATXInformationHeuristicsDelegate)delegate;
- (BOOL)_refreshResultsForHeuristics:(id)heuristics;
- (id)_criteriaForRefreshJobOnDate:(id)date;
- (id)getResultsFromHeuristicInterpreter:(id)interpreter;
- (void)_refreshResultsForAllHeuristics:(BOOL)heuristics completionHandler:(id)handler;
- (void)_setRefreshCTSJobForCriteria:(id)criteria forHeuristics:(id)heuristics;
- (void)informationHeuristicRefreshTrigger:(id)trigger didTriggerRefreshForHeuristics:(id)heuristics;
@end

@implementation ATXInformationHeuristics

- (ATXInformationHeuristics)init
{
  v22.receiver = self;
  v22.super_class = ATXInformationHeuristics;
  v2 = [(ATXInformationHeuristics *)&v22 init];
  if (v2)
  {
    v3 = objc_opt_new();
    heuristicRefreshTriggers = v2->_heuristicRefreshTriggers;
    v2->_heuristicRefreshTriggers = v3;

    v5 = allInfoHeuristics();
    v6 = [v5 mutableCopy];
    heuristicsPendingRefresh = v2->_heuristicsPendingRefresh;
    v2->_heuristicsPendingRefresh = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);

    v10 = dispatch_queue_create("ATXInformationHeuristicsRefresh", v9);
    queue = v2->_queue;
    v2->_queue = v10;

    objc_initWeak(&location, v2);
    v12 = objc_alloc(MEMORY[0x277D42628]);
    v13 = v2->_queue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __32__ATXInformationHeuristics_init__block_invoke;
    v19[3] = &unk_278C3BBB8;
    objc_copyWeak(&v20, &location);
    v14 = [v12 initWithQueue:v13 operation:v19];
    coalescedRefreshOperation = v2->_coalescedRefreshOperation;
    v2->_coalescedRefreshOperation = v14;

    v16 = __atxlog_handle_gi();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_23E3DF000, v16, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristics: initialized", v18, 2u);
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__ATXInformationHeuristics_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained refreshResultsForAllHeuristicsPendingRefreshWithCompletionHandler:0];
  }

  else
  {
    v3 = __atxlog_handle_gi();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __32__ATXInformationHeuristics_init__block_invoke_cold_1();
    }
  }
}

- (void)_refreshResultsForAllHeuristics:(BOOL)heuristics completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__ATXInformationHeuristics__refreshResultsForAllHeuristics_completionHandler___block_invoke;
  v10[3] = &unk_278C3BCD8;
  v11 = handlerCopy;
  v12 = a2;
  heuristicsCopy = heuristics;
  v10[4] = self;
  v9 = handlerCopy;
  dispatch_async(queue, v10);
}

void __78__ATXInformationHeuristics__refreshResultsForAllHeuristics_completionHandler___block_invoke(uint64_t a1)
{
  sel_getName(*(a1 + 48));
  v7 = os_transaction_create();
  v2 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v3 = allInfoHeuristics();
    v4 = [v2 _refreshResultsForHeuristics:v3];

    if ((v4 & 1) == 0)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_6;
    }
  }

  else if (![*(a1 + 32) _refreshResultsForHeuristics:v2[2]])
  {
    goto LABEL_3;
  }

  [*(*(a1 + 32) + 16) removeAllObjects];
  v5 = 1;
LABEL_6:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

+ (id)sourceIdentifierForHeuristicWithName:(id)name
{
  v3 = MEMORY[0x277CCACA8];
  nameCopy = name;
  nameCopy = [[v3 alloc] initWithFormat:@"%@.%@", @"com.apple.proactive", nameCopy];

  return nameCopy;
}

- (void)informationHeuristicRefreshTrigger:(id)trigger didTriggerRefreshForHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__ATXInformationHeuristics_informationHeuristicRefreshTrigger_didTriggerRefreshForHeuristics___block_invoke;
  v8[3] = &unk_278C3BC30;
  v8[4] = self;
  v9 = heuristicsCopy;
  v7 = heuristicsCopy;
  dispatch_async(queue, v8);
}

uint64_t __94__ATXInformationHeuristics_informationHeuristicRefreshTrigger_didTriggerRefreshForHeuristics___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) unionSet:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);

  return [v2 runAfterDelaySeconds:0 coalescingBehavior:0.5];
}

- (BOOL)_refreshResultsForHeuristics:(id)heuristics
{
  v102 = *MEMORY[0x277D85DE8];
  heuristicsCopy = heuristics;
  dispatch_assert_queue_V2(self->_queue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v6 = [(ATXInformationHeuristics *)self getResultsFromHeuristicInterpreter:heuristicsCopy];
    v65 = v6 != 0;
    v7 = __atxlog_handle_gi();
    v8 = v7;
    v66 = v6;
    if (v6)
    {
      v64 = heuristicsCopy;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v98 = [v6 count];
        _os_log_impl(&dword_23E3DF000, v8, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristics: received %lu results from HeuristicInterpreter", buf, 0xCu);
      }

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      obj = v6;
      v71 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
      if (v71)
      {
        v69 = *v90;
        do
        {
          for (i = 0; i != v71; i = i + 1)
          {
            if (*v90 != v69)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v89 + 1) + 8 * i);
            v11 = __atxlog_handle_gi();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              heuristicName = [v10 heuristicName];
              suggestions = [v10 suggestions];
              v14 = [suggestions count];
              *buf = 138412546;
              v98 = heuristicName;
              v99 = 2048;
              v100 = v14;
              _os_log_impl(&dword_23E3DF000, v11, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristics: update heuristics %@, got %lu new suggestions", buf, 0x16u);
            }

            if ([v10 hasFailed])
            {
              v15 = __atxlog_handle_gi();
              if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_17;
              }

              heuristicName2 = [v10 heuristicName];
              *buf = 138412290;
              v98 = heuristicName2;
              _os_log_impl(&dword_23E3DF000, v15, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristics: updating heuristic %@ has failed in a non-trivial manner; bypassing the suggestions update", buf, 0xCu);
            }

            else
            {
              v15 = objc_loadWeakRetained(&self->_delegate);
              heuristicName2 = [v10 suggestions];
              heuristicName3 = [v10 heuristicName];
              [v15 informationHeuristics:self didUpdateSuggestions:heuristicName2 forHeuristic:heuristicName3];
            }

LABEL_17:
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            refreshTriggers = [v10 refreshTriggers];
            v19 = [refreshTriggers countByEnumeratingWithState:&v85 objects:v96 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v86;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v86 != v21)
                  {
                    objc_enumerationMutation(refreshTriggers);
                  }

                  v23 = *(*(&v85 + 1) + 8 * j);
                  if (([(NSMutableSet *)self->_heuristicRefreshTriggers containsObject:v23]& 1) == 0)
                  {
                    [v23 setDelegate:self];
                    [(NSMutableSet *)self->_heuristicRefreshTriggers addObject:v23];
                  }
                }

                v20 = [refreshTriggers countByEnumeratingWithState:&v85 objects:v96 count:16];
              }

              while (v20);
            }

            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v24 = self->_heuristicRefreshTriggers;
            v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v81 objects:v95 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v82;
              do
              {
                for (k = 0; k != v26; ++k)
                {
                  if (*v82 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v81 + 1) + 8 * k);
                  refreshTriggers2 = [v10 refreshTriggers];
                  v31 = [refreshTriggers2 containsObject:v29];

                  heuristicName4 = [v10 heuristicName];
                  if (v31)
                  {
                    [v29 startTriggeringRefreshForHeuristicIfNotAlready:heuristicName4];
                  }

                  else
                  {
                    [v29 stopTriggeringRefreshForHeuristicIfAlready:heuristicName4];
                  }
                }

                v26 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v81 objects:v95 count:16];
              }

              while (v26);
            }
          }

          v71 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
        }

        while (v71);
      }

      v33 = objc_opt_new();
      date = [MEMORY[0x277CBEAA8] date];
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v72 = self->_heuristicRefreshTriggers;
      v35 = [(NSMutableSet *)v72 countByEnumeratingWithState:&v77 objects:v94 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = 0;
        v38 = *v78;
        obja = v33;
        do
        {
          for (m = 0; m != v36; ++m)
          {
            if (*v78 != v38)
            {
              objc_enumerationMutation(v72);
            }

            v40 = *(*(&v77 + 1) + 8 * m);
            registeredHeuristics = [v40 registeredHeuristics];
            v42 = [registeredHeuristics count];

            if (v42)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v43 = v40;
                fireDate = [v43 fireDate];
                v45 = [fireDate earlierDate:date];

                if (v45 == date)
                {
                  if (!v37)
                  {
                    goto LABEL_51;
                  }

                  fireDate2 = [v37 fireDate];
                  fireDate3 = [v43 fireDate];
                  v48 = [fireDate2 earlierDate:fireDate3];
                  [v43 fireDate];
                  v70 = v37;
                  v50 = v49 = date;

                  v51 = v48 == v50;
                  date = v49;
                  v33 = obja;
                  v37 = v70;
                  if (v51)
                  {
LABEL_51:
                    v52 = v43;

                    v37 = v52;
                  }
                }

                else
                {
                  [v43 stopTriggeringRefreshForAllHeuristics];
                  [v33 addObject:v43];
                }
              }
            }

            else
            {
              [v33 addObject:v40];
            }
          }

          v36 = [(NSMutableSet *)v72 countByEnumeratingWithState:&v77 objects:v94 count:16];
        }

        while (v36);
      }

      else
      {
        v37 = 0;
      }

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v8 = v33;
      v55 = [v8 countByEnumeratingWithState:&v73 objects:v93 count:16];
      heuristicsCopy = v64;
      if (v55)
      {
        v56 = v55;
        v57 = *v74;
        do
        {
          for (n = 0; n != v56; ++n)
          {
            if (*v74 != v57)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMutableSet *)self->_heuristicRefreshTriggers removeObject:*(*(&v73 + 1) + 8 * n)];
          }

          v56 = [v8 countByEnumeratingWithState:&v73 objects:v93 count:16];
        }

        while (v56);
      }

      if (v37)
      {
        fireDate4 = [v37 fireDate];
        v60 = [(ATXInformationHeuristics *)self _criteriaForRefreshJobOnDate:fireDate4];
        registeredHeuristics2 = [v37 registeredHeuristics];
        [(ATXInformationHeuristics *)self _setRefreshCTSJobForCriteria:v60 forHeuristics:registeredHeuristics2];

        [v37 stopTriggeringRefreshForAllHeuristics];
        [(NSMutableSet *)self->_heuristicRefreshTriggers removeObject:v37];
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristics _refreshResultsForHeuristics:];
    }

    v53 = v66;
    v54 = v65;
  }

  else
  {
    v53 = __atxlog_handle_gi();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [ATXInformationHeuristics _refreshResultsForHeuristics:];
    }

    v54 = 0;
  }

  v62 = *MEMORY[0x277D85DE8];
  return v54;
}

- (id)getResultsFromHeuristicInterpreter:(id)interpreter
{
  interpreterCopy = interpreter;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.proactive.HeuristicInterpreter"];
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850AE370];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_resultsForInformationHeuristics_bundlePath_now_dataSourcesEndpoint_reply_ argumentIndex:0 ofReply:1];

  [v5 setRemoteObjectInterface:v6];
  [v5 resume];
  v10 = [objc_alloc(MEMORY[0x277CE89F0]) initWithLocationManager:0];
  v11 = [objc_alloc(MEMORY[0x277CE89E8]) initWithDevice:v10];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v12 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  v13 = ATXHeuristicsBundlePath();
  v14 = [v10 now];
  listenerEndpoint = [v11 listenerEndpoint];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_60;
  v18[3] = &unk_278C3BD20;
  v18[4] = &v19;
  [v12 resultsForInformationHeuristics:interpreterCopy bundlePath:v13 now:v14 dataSourcesEndpoint:listenerEndpoint reply:v18];

  [v5 invalidate];
  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

void __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_gi();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_cold_1();
  }
}

void __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (!v5)
  {
    v9 = __atxlog_handle_gi();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_60_cold_1();
    }
  }
}

- (void)_setRefreshCTSJobForCriteria:(id)criteria forHeuristics:(id)heuristics
{
  heuristicsCopy = heuristics;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__ATXInformationHeuristics__setRefreshCTSJobForCriteria_forHeuristics___block_invoke;
  v8[3] = &unk_278C3BD48;
  v8[4] = self;
  v9 = heuristicsCopy;
  v7 = heuristicsCopy;
  xpc_activity_register("com.apple.duetexpertd.info-heuristic-refresh", criteria, v8);
}

void __71__ATXInformationHeuristics__setRefreshCTSJobForCriteria_forHeuristics___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  if (xpc_activity_get_state(activity) == 2 && ([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = *(v4 + 24);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__ATXInformationHeuristics__setRefreshCTSJobForCriteria_forHeuristics___block_invoke_2;
    v6[3] = &unk_278C3BC30;
    v6[4] = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

uint64_t __71__ATXInformationHeuristics__setRefreshCTSJobForCriteria_forHeuristics___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) unionSet:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 32);

  return [v2 runAfterDelaySeconds:0 coalescingBehavior:0.5];
}

- (id)_criteriaForRefreshJobOnDate:(id)date
{
  [date timeIntervalSinceNow];
  v4 = v3;
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86250], v4);
  xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], 300);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);

  return v5;
}

- (ATXInformationHeuristicsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_refreshResultsForHeuristics:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__ATXInformationHeuristics_getResultsFromHeuristicInterpreter___block_invoke_60_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end