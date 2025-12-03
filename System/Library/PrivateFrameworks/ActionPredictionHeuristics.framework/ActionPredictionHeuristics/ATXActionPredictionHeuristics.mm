@interface ATXActionPredictionHeuristics
+ (id)actionsWithLocationManager:(id)manager;
+ (id)addCacheExpirerNotification:(id)notification;
+ (id)nextCacheExpirationDate;
@end

@implementation ATXActionPredictionHeuristics

+ (id)actionsWithLocationManager:(id)manager
{
  v95 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  context = objc_autoreleasePoolPush();
  mEMORY[0x277CE8A40] = [MEMORY[0x277CE8A40] sharedInstance];
  heuristicsCached = [mEMORY[0x277CE8A40] heuristicsCached];
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__0;
  v83 = __Block_byref_object_dispose__0;
  v84 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.proactive.HeuristicInterpreter"];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850AE370];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  [v5 setClasses:v9 forSelector:sel_actionsAndExpirersForHeuristicsExcept_bundlePath_now_dataSourcesEndpoint_reply_ argumentIndex:0 ofReply:1];

  [v4 setRemoteObjectInterface:v5];
  [v4 resume];
  v10 = [objc_alloc(MEMORY[0x277CE89F0]) initWithLocationManager:managerCopy];
  v11 = [objc_alloc(MEMORY[0x277CE89E8]) initWithDevice:v10];
  v12 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_37];
  v13 = ATXHeuristicsBundlePath();
  v14 = [v10 now];
  listenerEndpoint = [v11 listenerEndpoint];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __60__ATXActionPredictionHeuristics_actionsWithLocationManager___block_invoke_38;
  v78[3] = &unk_278C3BD90;
  v78[4] = &v79;
  [v12 actionsAndExpirersForHeuristicsExcept:heuristicsCached bundlePath:v13 now:v14 dataSourcesEndpoint:listenerEndpoint reply:v78];

  [v4 invalidate];
  objc_autoreleasePoolPop(v3);
  if (v80[5])
  {
    v16 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [v80[5] allKeys];
      *buf = 138412290;
      v94 = allKeys;
      _os_log_impl(&dword_23E3DF000, v16, OS_LOG_TYPE_DEFAULT, "Received results from HeuristicInterpreter: %@", buf, 0xCu);
    }

    v18 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v94 = heuristicsCached;
      _os_log_impl(&dword_23E3DF000, v18, OS_LOG_TYPE_DEFAULT, "Using cached results: %@", buf, 0xCu);
    }

    v19 = objc_opt_new();
    v20 = objc_opt_new();
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v80[5];
    v55 = [obj countByEnumeratingWithState:&v74 objects:v92 count:16];
    if (v55)
    {
      v53 = *v75;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v75 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v74 + 1) + 8 * i);
          v58 = [v80[5] objectForKeyedSubscript:v21];
          actionMakers = [v58 actionMakers];
          v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(actionMakers, "count")}];
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v24 = actionMakers;
          v25 = [v24 countByEnumeratingWithState:&v85 objects:buf count:16];
          if (v25)
          {
            v26 = *v86;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v86 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                action = [*(*(&v85 + 1) + 8 * j) action];
                if (action)
                {
                  [v23 addObject:action];
                }
              }

              v25 = [v24 countByEnumeratingWithState:&v85 objects:buf count:16];
            }

            while (v25);
          }

          expirers = [v58 expirers];
          [mEMORY[0x277CE8A40] setObject:v23 expirers:expirers forKey:v21];

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v30 = v23;
          v31 = [v30 countByEnumeratingWithState:&v70 objects:v91 count:16];
          if (v31)
          {
            v32 = *v71;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v71 != v32)
                {
                  objc_enumerationMutation(v30);
                }

                v34 = *(*(&v70 + 1) + 8 * k);
                criteria = [v34 criteria];
                v36 = [criteria isRelevant:v20];

                if (v36)
                {
                  [v19 addObject:v34];
                }

                else
                {
                  v37 = __atxlog_handle_heuristic();
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v94 = v34;
                    _os_log_impl(&dword_23E3DF000, v37, OS_LOG_TYPE_DEFAULT, "Action is not relevant: %@", buf, 0xCu);
                  }
                }
              }

              v31 = [v30 countByEnumeratingWithState:&v70 objects:v91 count:16];
            }

            while (v31);
          }
        }

        v55 = [obj countByEnumeratingWithState:&v74 objects:v92 count:16];
      }

      while (v55);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v54 = heuristicsCached;
    v59 = [v54 countByEnumeratingWithState:&v66 objects:v90 count:16];
    if (v59)
    {
      v56 = *v67;
      do
      {
        for (m = 0; m != v59; ++m)
        {
          if (*v67 != v56)
          {
            objc_enumerationMutation(v54);
          }

          v38 = [mEMORY[0x277CE8A40] objectForKey:*(*(&v66 + 1) + 8 * m) found:0];
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v39 = v38;
          v40 = [v39 countByEnumeratingWithState:&v62 objects:v89 count:16];
          if (v40)
          {
            v41 = *v63;
            do
            {
              for (n = 0; n != v40; ++n)
              {
                if (*v63 != v41)
                {
                  objc_enumerationMutation(v39);
                }

                v43 = *(*(&v62 + 1) + 8 * n);
                criteria2 = [v43 criteria];
                v45 = [criteria2 isRelevant:v20];

                if (v45)
                {
                  [v19 addObject:v43];
                }

                else
                {
                  v46 = __atxlog_handle_heuristic();
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v94 = v43;
                    _os_log_impl(&dword_23E3DF000, v46, OS_LOG_TYPE_DEFAULT, "Action is no longer relevant: %@", buf, 0xCu);
                  }
                }
              }

              v40 = [v39 countByEnumeratingWithState:&v62 objects:v89 count:16];
            }

            while (v40);
          }
        }

        v59 = [v54 countByEnumeratingWithState:&v66 objects:v90 count:16];
      }

      while (v59);
    }

    [v19 sortWithOptions:16 usingComparator:&__block_literal_global_45];
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v79, 8);

  objc_autoreleasePoolPop(context);
  v47 = *MEMORY[0x277D85DE8];

  return v19;
}

void __60__ATXActionPredictionHeuristics_actionsWithLocationManager___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23E3DF000, v3, OS_LOG_TYPE_DEFAULT, "Error getting heuristic results - unable to establish XPC connection: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __60__ATXActionPredictionHeuristics_actionsWithLocationManager___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (!v5)
  {
    v9 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_23E3DF000, v9, OS_LOG_TYPE_DEFAULT, "Error getting heuristic results - failed to compute actions and expirers for heuristics: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __60__ATXActionPredictionHeuristics_actionsWithLocationManager___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 heuristic];
  v6 = [v4 heuristic];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)addCacheExpirerNotification:(id)notification
{
  v3 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  defaultCenter = [v3 defaultCenter];
  mEMORY[0x277CE8A40] = [MEMORY[0x277CE8A40] sharedInstance];
  v7 = [defaultCenter addObserverForName:@"com.apple.duetexpertd.heuristic.cache-expired" object:mEMORY[0x277CE8A40] queue:0 usingBlock:notificationCopy];

  return v7;
}

+ (id)nextCacheExpirationDate
{
  mEMORY[0x277CE8A40] = [MEMORY[0x277CE8A40] sharedInstance];
  firstExpirationDate = [mEMORY[0x277CE8A40] firstExpirationDate];

  return firstExpirationDate;
}

@end