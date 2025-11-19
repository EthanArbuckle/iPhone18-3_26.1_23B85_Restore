@interface ARPRoutePredictor
+ (NSString)defaultFile;
+ (double)defaultMicroLocationSimilarityThreshold;
+ (id)routePredictor;
- (ARPRoutePredictor)initWithmicroLocationSimilarityThreshold:(double)a3 file:(id)a4 knowledgeStore:(id)a5;
- (id)description;
- (id)predictionsForContext:(id)a3;
- (id)predictionsWithCurrentContext:(id *)a3;
- (void)_reloadLatestMicroLocationEvent;
- (void)_reloadPersistedSessions;
- (void)dealloc;
@end

@implementation ARPRoutePredictor

+ (NSString)defaultFile
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  v4 = [v3 stringByAppendingPathComponent:@"AirPlayRoutePrediction/correlations.archive"];

  return v4;
}

+ (double)defaultMicroLocationSimilarityThreshold
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AirPlayRoutePrediction"];
  [v2 doubleForKey:@"MicroLocationSimilarityThreshold"];
  if (v3 <= 0.0)
  {
    v4 = 0.75;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)routePredictor
{
  v3 = [MEMORY[0x277CFE208] knowledgeStore];
  v4 = objc_alloc(objc_opt_class());
  [a1 defaultMicroLocationSimilarityThreshold];
  v6 = v5;
  v7 = [a1 defaultFile];
  v8 = [v4 initWithmicroLocationSimilarityThreshold:v7 file:v3 knowledgeStore:v6];

  return v8;
}

- (ARPRoutePredictor)initWithmicroLocationSimilarityThreshold:(double)a3 file:(id)a4 knowledgeStore:(id)a5
{
  v8 = a4;
  v9 = a5;
  v31.receiver = self;
  v31.super_class = ARPRoutePredictor;
  v10 = [(ARPRoutePredictor *)&v31 init];
  v11 = v10;
  if (!v10)
  {
LABEL_7:
    v23 = v11;
    goto LABEL_8;
  }

  v10->_microLocationSimilarityThreshold = a3;
  v10->_token = -1;
  v12 = [v8 copy];
  file = v11->_file;
  v11->_file = v12;

  objc_storeStrong(&v11->_knowledgeStore, a5);
  v14 = [MEMORY[0x277CBEB98] set];
  knownOutputDeviceIDs = v11->_knownOutputDeviceIDs;
  v11->_knownOutputDeviceIDs = v14;

  v11->_routingSessionTimeout = 10800.0;
  v11->_hasLoadedMicroLocation = 0;
  [(ARPRoutePredictor *)v11 _reloadPersistedSessions];
  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("com.apple.AirPlayRoutePrediction.ARPRoutePredictor", v16);
  queue = v11->_queue;
  v11->_queue = v17;

  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.AirPlayRoutePrediction:%s", objc_msgSend(v8, "fileSystemRepresentation")];
  objc_initWeak(&location, v11);
  v20 = [v19 UTF8String];
  v21 = v11->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __82__ARPRoutePredictor_initWithmicroLocationSimilarityThreshold_file_knowledgeStore___block_invoke;
  handler[3] = &unk_278C64770;
  objc_copyWeak(&v29, &location);
  v22 = notify_register_dispatch(v20, &v11->_token, v21, handler);
  objc_destroyWeak(&v29);
  if (!v22)
  {
    if (v11->_knowledgeStore)
    {
      v24 = [MEMORY[0x277CCA9A0] defaultCenter];
      v25 = [MEMORY[0x277CFE298] microLocationVisitStream];
      v26 = [v25 name];
      [v24 addObserver:v11 selector:sel__reloadLatestMicroLocationEvent name:*MEMORY[0x277CFE2E8] object:v26];
    }

    objc_destroyWeak(&location);

    goto LABEL_7;
  }

  objc_destroyWeak(&location);

  v23 = 0;
LABEL_8:

  return v23;
}

void __82__ARPRoutePredictor_initWithmicroLocationSimilarityThreshold_file_knowledgeStore___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 _reloadPersistedSessions];

  objc_destroyWeak(&to);
}

- (void)dealloc
{
  token = self->_token;
  if (token != -1)
  {
    notify_cancel(token);
  }

  if (self->_knowledgeStore)
  {
    v4 = [MEMORY[0x277CCA9A0] defaultCenter];
    v5 = *MEMORY[0x277CFE2E8];
    v6 = [MEMORY[0x277CFE298] microLocationVisitStream];
    v7 = [v6 name];
    [v4 removeObserver:self name:v5 object:v7];
  }

  v8.receiver = self;
  v8.super_class = ARPRoutePredictor;
  [(ARPRoutePredictor *)&v8 dealloc];
}

- (void)_reloadLatestMicroLocationEvent
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23EB15000, v0, OS_LOG_TYPE_ERROR, "Error fetching latest microlocation %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_reloadPersistedSessions
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_23EB15000, v0, OS_LOG_TYPE_ERROR, "Error reading persisted routing sessions: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

BOOL __45__ARPRoutePredictor__reloadPersistedSessions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 outputDeviceID];
  if (v3)
  {
    v4 = [v2 interval];
    if (v4)
    {
      v5 = [v2 microLocationProbabilityVector];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)predictionsForContext:(id)a3
{
  v112[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _os_activity_create(&dword_23EB15000, "CoreDuet: ARPRoutePredictor predictionsForContext:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  *&state[8] = 0;
  *state = 0;
  os_activity_scope_enter(v5, state);
  os_activity_scope_leave(state);

  context = objc_autoreleasePoolPush();
  v6 = ARPLog();
  oslog = v6;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ARPRoutePredictor predictionsForContext:];
  }

  v7 = [(ARPRoutePredictor *)self sessions];
  v8 = v7 == 0;

  if (v8)
  {
    v9 = [(ARPRoutePredictor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__ARPRoutePredictor_predictionsForContext___block_invoke;
    block[3] = &unk_278C646A0;
    block[4] = self;
    dispatch_sync(v9, block);
  }

  v10 = [(ARPRoutePredictor *)self sessions];
  v11 = MEMORY[0x277CCAC30];
  v96[0] = MEMORY[0x277D85DD0];
  v96[1] = 3221225472;
  v96[2] = __43__ARPRoutePredictor_predictionsForContext___block_invoke_2;
  v96[3] = &unk_278C647B8;
  v12 = v4;
  v97 = v12;
  v13 = [v11 predicateWithBlock:v96];
  v67 = [v10 filteredArrayUsingPredicate:v13];

  [(ARPRoutePredictor *)self routingSessionTimeout];
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0x7FFFFFFFFFFFFFFFLL;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __43__ARPRoutePredictor_predictionsForContext___block_invoke_3;
  v82[3] = &unk_278C647E0;
  v87 = v14;
  v69 = v12;
  v83 = v69;
  v84 = self;
  v85 = &v88;
  v86 = &v92;
  [v67 enumerateObjectsUsingBlock:v82];
  v15 = v6;
  if (v93[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ARPRoutePredictor predictionsForContext:v6];
      v15 = v6;
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = objc_alloc_init(MEMORY[0x277CCA940]);
    v71 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v18 = v89[3];
    if (v18 >= [v67 count])
    {
      v22 = 0;
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v19 = v89[3];
      v20 = [v67 count];
      v21 = [v67 subarrayWithRange:{v19, v20 - v89[3]}];
      v22 = 0;
      v23 = [v21 countByEnumeratingWithState:&v78 objects:v111 count:16];
      if (v23)
      {
        v68 = *v79;
        *&v24 = 138413826;
        v60 = v24;
        v61 = v17;
        v62 = self;
        obj = v21;
        do
        {
          v25 = 0;
          do
          {
            if (*v79 != v68)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v78 + 1) + 8 * v25);
            v27 = [v69 microLocationProbabilityVector];
            v28 = [v26 microLocationProbabilityVector];
            v29 = ARPMicroLocationSimilarity(v27, v28);

            [(ARPRoutePredictor *)self microLocationSimilarityThreshold];
            v31 = v30;
            v32 = oslog;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
            {
              v64 = [v26 interval];
              v63 = [v26 outputDeviceID];
              if (v29 < v31)
              {
                v38 = @"not ";
              }

              else
              {
                v38 = &stru_285140A98;
              }

              v39 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
              if (v29 < v31)
              {
                v40 = @"less";
              }

              else
              {
                v40 = @"greater";
              }

              v41 = MEMORY[0x277CCABB0];
              [(ARPRoutePredictor *)v62 microLocationSimilarityThreshold];
              v42 = [v41 numberWithDouble:?];
              v43 = [v26 microLocationProbabilityVector];
              *state = v60;
              *&state[4] = v64;
              *&state[12] = 2112;
              *&state[14] = v63;
              v101 = 2112;
              v102 = v38;
              v103 = 2112;
              v104 = v39;
              v105 = 2112;
              v106 = v40;
              v107 = 2112;
              v108 = v42;
              v109 = 2112;
              v110 = v43;
              _os_log_debug_impl(&dword_23EB15000, oslog, OS_LOG_TYPE_DEBUG, "Session from %@ with route %@ is %@included in predictions because microlocation similarity %@ is %@ than threshold (%@), microLocationProbabilityVector: %@", state, 0x48u);

              v17 = v61;
              self = v62;

              v32 = oslog;
            }

            if (v29 >= v31)
            {
              v33 = [v26 outputDeviceID];
              [v17 addObject:v33];
              v34 = [v71 objectForKey:v33];
              v35 = v34 == 0;

              if (v35)
              {
                v36 = [v26 interval];
                v37 = [v36 endDate];
                [v71 setObject:v37 forKeyedSubscript:v33];
              }

              ++v22;
            }

            if (v22 == 2)
            {
              if ([v17 count] == 1)
              {
                v22 = 2;
LABEL_37:
                v21 = obj;
                goto LABEL_38;
              }
            }

            else if (v22 > 4)
            {
              goto LABEL_37;
            }

            ++v25;
          }

          while (v23 != v25);
          v21 = obj;
          v44 = [obj countByEnumeratingWithState:&v78 objects:v111 count:16];
          v23 = v44;
        }

        while (v44);
      }

LABEL_38:
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v47 = v17;
    v49 = [(ARPRoutePrediction *)v47 countByEnumeratingWithState:&v74 objects:v99 count:16];
    if (v49)
    {
      v50 = *v75;
      v51 = 2;
      if (v22 > 2)
      {
        v51 = v22;
      }

      v52 = v51;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v75 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v54 = [[ARPRoutePrediction alloc] initWithOutputDeviceID:*(*(&v74 + 1) + 8 * i) confidence:[(ARPRoutePrediction *)v47 countForObject:*(*(&v74 + 1) + 8 * i)]/ v52];
          v55 = [v16 count];
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __43__ARPRoutePredictor_predictionsForContext___block_invoke_111;
          v72[3] = &unk_278C64808;
          v73 = v71;
          v56 = [v16 indexOfObject:v54 inSortedRange:0 options:v55 usingComparator:{1024, v72}];
          if (v56 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v16 insertObject:v54 atIndex:v56];
          }
        }

        v49 = [(ARPRoutePrediction *)v47 countByEnumeratingWithState:&v74 objects:v99 count:16];
      }

      while (v49);
    }

    v57 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      [ARPRoutePredictor predictionsForContext:];
      v57 = oslog;
    }

    v48 = [v16 copy];
    v6 = v71;
  }

  else
  {
    v16 = [v67 objectAtIndexedSubscript:?];
    v45 = [ARPRoutePrediction alloc];
    v46 = [v16 outputDeviceID];
    v47 = [(ARPRoutePrediction *)v45 initWithOutputDeviceID:v46 confidence:1.0];

    v112[0] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v112 count:1];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ARPRoutePredictor predictionsForContext:];
    }
  }

  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v92, 8);

  objc_autoreleasePoolPop(context);
  v58 = *MEMORY[0x277D85DE8];

  return v48;
}

BOOL __43__ARPRoutePredictor_predictionsForContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 predictionDate];
  v5 = [v3 interval];

  v6 = [v5 endDate];
  v7 = [v4 compare:v6] == 1;

  return v7;
}

void __43__ARPRoutePredictor_predictionsForContext___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 32) predictionDate];
  v9 = [v7 interval];
  v10 = [v9 endDate];
  [v8 timeIntervalSinceDate:v10];
  v12 = v11;
  v13 = *(a1 + 64);

  if (v12 > v13)
  {
    goto LABEL_5;
  }

  *(*(*(a1 + 48) + 8) + 24) = a3 + 1;
  v14 = [v7 microLocationProbabilityVector];
  v15 = [*(a1 + 32) microLocationProbabilityVector];
  v16 = ARPMicroLocationSimilarity(v14, v15);

  [*(a1 + 40) microLocationSimilarityThreshold];
  v18 = v17;
  v19 = ARPLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v7 interval];
    v30 = [v7 outputDeviceID];
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v23 = @"less";
    if (v16 < v18)
    {
      v24 = @"not ";
    }

    else
    {
      v24 = &stru_285140A98;
    }

    if (v16 >= v18)
    {
      v23 = @"greater";
    }

    v28 = v24;
    v29 = v23;
    v25 = MEMORY[0x277CCABB0];
    [*(a1 + 40) microLocationSimilarityThreshold];
    v26 = [v25 numberWithDouble:?];
    v27 = [v7 microLocationProbabilityVector];
    *buf = 138413826;
    v32 = v21;
    v33 = 2112;
    v34 = v30;
    v35 = 2112;
    v36 = v28;
    v37 = 2112;
    v38 = v22;
    v39 = 2112;
    v40 = v29;
    v41 = 2112;
    v42 = v26;
    v43 = 2112;
    v44 = v27;
    _os_log_debug_impl(&dword_23EB15000, v19, OS_LOG_TYPE_DEBUG, "Session from %@ with route %@ is %@eligible for session continuity because microlocation similarity %@ is %@ than threshold (%@), microLocationProbabilityVector: %@", buf, 0x48u);
  }

  if (v16 >= v18)
  {
    *(*(*(a1 + 56) + 8) + 24) = a3;
LABEL_5:
    *a4 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __43__ARPRoutePredictor_predictionsForContext___block_invoke_111(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CCABB0];
  [v6 confidence];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x277CCABB0];
  [v5 confidence];
  v10 = [v9 numberWithDouble:?];
  v11 = [v8 compare:v10];

  if (!v11)
  {
    v12 = *(a1 + 32);
    v13 = [v5 outputDeviceID];
    v14 = [v12 objectForKeyedSubscript:v13];

    v15 = *(a1 + 32);
    v16 = [v6 outputDeviceID];
    v17 = [v15 objectForKeyedSubscript:v16];

    v11 = [v17 compare:v14];
  }

  return v11;
}

- (id)predictionsWithCurrentContext:(id *)a3
{
  if (![(ARPRoutePredictor *)self hasLoadedMicroLocation])
  {
    [(ARPRoutePredictor *)self _reloadLatestMicroLocationEvent];
  }

  v5 = [(ARPRoutePredictor *)self latestMicroLocationEvent];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v5 startDate];
    v8 = [v5 metadata];
    v9 = [MEMORY[0x277CFE230] probabilityVector];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = [[ARPPredictionContext alloc] initWithPredictionDate:v6 microLocationEventDate:v7 microLocationProbabilityVector:v10];
    v12 = v11;
    if (a3)
    {
      v13 = v11;
      *a3 = v12;
    }

    v14 = [(ARPRoutePredictor *)self predictionsForContext:v12];
  }

  else
  {
    v15 = ARPLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_23EB15000, v15, OS_LOG_TYPE_DEFAULT, "No microlocation event to predict airplay routes", v17, 2u);
    }

    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ARPRoutePredictor *)self file];
  v6 = [(ARPRoutePredictor *)self knownOutputDeviceIDs];
  v7 = [v3 stringWithFormat:@"<%@ %p> file: %@, knownOutputDeviceIDs: %@", v4, self, v5, v6];

  return v7;
}

- (void)predictionsForContext:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_23EB15000, v0, v1, "Predicting airplay routes for context: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)predictionsForContext:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_23EB15000, v0, v1, "Predicted AirPlay routes based on session continuity: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)predictionsForContext:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_23EB15000, v0, v1, "Predicted AirPlay routes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end