@interface ATXRSRelevanceMonitor
- (ATXRSRelevanceMonitor)init;
- (ATXRSRelevanceMonitorDelegate)delegate;
- (BOOL)_isBehavioralRelevanceSatisfiedForCandidate:(id)candidate currentMode:(unint64_t)mode;
- (BOOL)_isDateRelevantContextSatisfied:(id)satisfied;
- (id)_earliestFutureDateAmongDateRelevantContexts:(id)contexts;
- (id)_nonnullEndDateOfDateRelevantContext:(id)context;
- (void)_queue_clearAllCurrentMonitoring;
- (void)_queue_refreshCurrentlyRelevantCandidates;
- (void)_queue_startMonitoringDateRelevantContexts:(id)contexts;
- (void)_queue_startMonitoringModeChanges;
- (void)resetToMonitorForRelevantShortcutCandidates:(id)candidates;
@end

@implementation ATXRSRelevanceMonitor

- (ATXRSRelevanceMonitor)init
{
  v14.receiver = self;
  v14.super_class = ATXRSRelevanceMonitor;
  v2 = [(ATXRSRelevanceMonitor *)&v14 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ATXRSRelevanceMonitor", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc(MEMORY[0x277D42628]);
    v7 = v2->_queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __29__ATXRSRelevanceMonitor_init__block_invoke;
    v11[3] = &unk_2785977B0;
    objc_copyWeak(&v12, &location);
    v8 = [v6 initWithQueue:v7 operation:v11];
    coalescedRefreshCurrentlyRelevantCandidatesOperation = v2->_coalescedRefreshCurrentlyRelevantCandidatesOperation;
    v2->_coalescedRefreshCurrentlyRelevantCandidatesOperation = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__ATXRSRelevanceMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _queue_refreshCurrentlyRelevantCandidates];
  }

  else
  {
    v3 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __29__ATXRSRelevanceMonitor_init__block_invoke_cold_1(v3);
    }
  }
}

- (void)_queue_refreshCurrentlyRelevantCandidates
{
  v105 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: Refreshing currently relevant candidates...", buf, 2u);
  }

  v3 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: fetching current mode", buf, 2u);
  }

  currentModeEvent = [MEMORY[0x277D41C60] currentModeEvent];
  eventBody = [currentModeEvent eventBody];
  starting = [eventBody starting];

  if (starting)
  {
    eventBody2 = [currentModeEvent eventBody];
    [eventBody2 atx_dndModeSemanticType];

    DNDModeSemanticTypeToATXActivityType();
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ATXModeFromActivityType()];
    v9 = objc_alloc(MEMORY[0x277CBEAA8]);
    [currentModeEvent timestamp];
    v10 = [v9 initWithTimeIntervalSinceReferenceDate:?];
    v11 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: using last computed mode", buf, 2u);
    }
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  currentModeEvent2 = [MEMORY[0x277D41C68] currentModeEvent];
  eventBody3 = [currentModeEvent2 eventBody];
  isStart = [eventBody3 isStart];

  if (isStart)
  {
    eventBody4 = [currentModeEvent2 eventBody];
    [eventBody4 modeType];
    BMUserFocusInferredModeTypeToActivity();

    v16 = objc_alloc(MEMORY[0x277CBEAA8]);
    [currentModeEvent2 timestamp];
    v17 = [v16 initWithTimeIntervalSinceReferenceDate:?];
    v18 = v17;
    if (v8 && v10 && [v17 compare:v10] != 1)
    {
      goto LABEL_21;
    }

    v19 = v18;

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:ATXModeFromActivityType()];

    v21 = [v19 compare:v19];
    v22 = __atxlog_handle_relevant_shortcut();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v21 == 1)
    {
      if (v23)
      {
        *buf = 0;
        v24 = "ATXRSRelevanceMonitor: overriding computed mode with more recent inferred mode";
LABEL_19:
        _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
      }
    }

    else if (v23)
    {
      *buf = 0;
      v24 = "ATXRSRelevanceMonitor: using last inferred mode";
      goto LABEL_19;
    }

    v10 = v19;
    v8 = v20;
LABEL_21:
  }

  if ([v8 isEqualToNumber:&unk_283A56B70])
  {
    v25 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "ATXRSRelevanceMonitor: current mode is custom, returning nil mode";
LABEL_32:
      _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v25 = __atxlog_handle_relevant_shortcut();
  v27 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (!v8 || !v10)
  {
    if (v27)
    {
      *buf = 0;
      v26 = "ATXRSRelevanceMonitor: no current mode";
      goto LABEL_32;
    }

LABEL_33:

    v29 = 0;
    goto LABEL_34;
  }

  if (v27)
  {
    [v8 unsignedIntegerValue];
    v28 = ATXModeToString();
    *buf = 138412290;
    v94 = v28;
    _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: current mode is %@", buf, 0xCu);
  }

  v29 = [objc_alloc(MEMORY[0x277D42648]) initWithFirst:v8 second:v10];
LABEL_34:

  first = [v29 first];
  unsignedIntegerValue = [first unsignedIntegerValue];

  second = [v29 second];
  v32 = +[_ATXGlobals sharedInstance];
  buf[0] = 0;
  v33 = 0.0;
  if (!CFPreferencesGetAppBooleanValue(@"ATXModeRelevanceDelayDisabled", *MEMORY[0x277CEBD00], buf))
  {
    [v32 behavioralModeRelevanceDelay];
    v33 = v34;
  }

  [v32 behavioralModeRelevanceDuration];
  v36 = v35;
  v37 = [second dateByAddingTimeInterval:v33];
  v38 = [v37 dateByAddingTimeInterval:v36];
  [v37 timeIntervalSinceNow];
  v73 = v29;
  if (v39 >= 0.0)
  {
    v82 = 0;
  }

  else
  {
    [v38 timeIntervalSinceNow];
    v82 = v40 > 0.0;
  }

  v80 = objc_opt_new();
  v79 = objc_opt_new();
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = self->_queue_candidates;
  v83 = [(NSArray *)obj countByEnumeratingWithState:&v89 objects:v104 count:16];
  if (v83)
  {
    v81 = *v90;
    do
    {
      for (i = 0; i != v83; ++i)
      {
        if (*v90 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v89 + 1) + 8 * i);
        if (v82 && ([*(*(&v89 + 1) + 8 * i) relevantContexts], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "count"), v43, !v44) && -[ATXRSRelevanceMonitor _isBehavioralRelevanceSatisfiedForCandidate:currentMode:](self, "_isBehavioralRelevanceSatisfiedForCandidate:currentMode:", v42, unsignedIntegerValue))
        {
          [v80 addObject:v42];
          relevantContexts = __atxlog_handle_relevant_shortcut();
          if (os_log_type_enabled(relevantContexts, OS_LOG_TYPE_DEFAULT))
          {
            widgetDescriptor = [v42 widgetDescriptor];
            extensionBundleIdentifier = [widgetDescriptor extensionBundleIdentifier];
            widgetDescriptor2 = [v42 widgetDescriptor];
            kind = [widgetDescriptor2 kind];
            intent = [v42 intent];
            intentDescription = [intent intentDescription];
            v52 = ATXModeToString();
            *buf = 138413058;
            v94 = extensionBundleIdentifier;
            v95 = 2112;
            v96 = kind;
            v97 = 2112;
            v98 = intentDescription;
            v99 = 2112;
            v100 = v52;
            _os_log_impl(&dword_2263AA000, relevantContexts, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: Candidate (%@ - %@ - %@) with no providers satisfied behavioral relevance for mode: %@", buf, 0x2Au);

LABEL_67:
          }
        }

        else
        {
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          relevantContexts = [v42 relevantContexts];
          v53 = [relevantContexts countByEnumeratingWithState:&v85 objects:v103 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v86;
            while (2)
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v86 != v55)
                {
                  objc_enumerationMutation(relevantContexts);
                }

                v57 = *(*(&v85 + 1) + 8 * j);
                v58 = NSClassFromString(&cfstr_Atxdaterelevan.isa);
                v59 = v57;
                if (v58)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v60 = v59;
                  }

                  else
                  {
                    v60 = 0;
                  }
                }

                else
                {
                  v60 = 0;
                }

                v52 = v60;

                if (v52 && [(ATXRSRelevanceMonitor *)self _isDateRelevantContextSatisfied:v52])
                {
                  [v80 addObject:v42];
                  [v79 setObject:v52 forKeyedSubscript:v42];
                  v61 = __atxlog_handle_relevant_shortcut();
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                  {
                    widgetDescriptor3 = [v42 widgetDescriptor];
                    extensionBundleIdentifier2 = [widgetDescriptor3 extensionBundleIdentifier];
                    widgetDescriptor4 = [v42 widgetDescriptor];
                    kind2 = [widgetDescriptor4 kind];
                    intent2 = [v42 intent];
                    intentDescription2 = [intent2 intentDescription];
                    startDate = [v52 startDate];
                    endDate = [v52 endDate];
                    *buf = 138413314;
                    v94 = extensionBundleIdentifier2;
                    v95 = 2112;
                    v96 = kind2;
                    v97 = 2112;
                    v98 = intentDescription2;
                    v99 = 2114;
                    v100 = startDate;
                    v101 = 2114;
                    v102 = endDate;
                    _os_log_impl(&dword_2263AA000, v61, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: Candidate (%@ - %@ - %@) has active date relevant context (start %{public}@, end %{public}@)", buf, 0x34u);
                  }

                  goto LABEL_67;
                }
              }

              v54 = [relevantContexts countByEnumeratingWithState:&v85 objects:v103 count:16];
              if (v54)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v83 = [(NSArray *)obj countByEnumeratingWithState:&v89 objects:v104 count:16];
    }

    while (v83);
  }

  v67 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = [v80 count];
    *buf = 134217984;
    v94 = v68;
    _os_log_impl(&dword_2263AA000, v67, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: %lu candidates are currently relevant", buf, 0xCu);
  }

  delegate = [(ATXRSRelevanceMonitor *)self delegate];
  v70 = [v80 copy];
  v71 = [v79 copy];
  [delegate relevanceMonitorDidUpdateCurrentlyRelevantCandidates:v70 relevantContexts:v71];

  v72 = *MEMORY[0x277D85DE8];
}

- (void)resetToMonitorForRelevantShortcutCandidates:(id)candidates
{
  candidatesCopy = candidates;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ATXRSRelevanceMonitor_resetToMonitorForRelevantShortcutCandidates___block_invoke;
  v7[3] = &unk_278596C10;
  v8 = candidatesCopy;
  selfCopy = self;
  v6 = candidatesCopy;
  dispatch_sync(queue, v7);
}

void __69__ATXRSRelevanceMonitor_resetToMonitorForRelevantShortcutCandidates___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v37 = v3;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: Reset to monitor for %lu candidates", buf, 0xCu);
  }

  [*(a1 + 40) _queue_clearAllCurrentMonitoring];
  v4 = [*(a1 + 32) copy];
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  v7 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = a1;
  obj = *(a1 + 32);
  v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v25 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [v11 relevantContexts];
        v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v27;
          do
          {
            v16 = 0;
            do
            {
              if (*v27 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v26 + 1) + 8 * v16);
              v18 = NSClassFromString(&cfstr_Atxdaterelevan.isa);
              v19 = v17;
              if (v18)
              {
                if (objc_opt_isKindOfClass())
                {
                  v20 = v19;
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }

              v21 = v20;

              if (v21)
              {
                [v7 addObject:v21];
              }

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v14);
        }

        ++v10;
      }

      while (v10 != v9);
      v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  [*(v23 + 40) _queue_startMonitoringDateRelevantContexts:v7];
  [*(v23 + 40) _queue_startMonitoringModeChanges];
  [*(v23 + 40) _coalescedRefreshCurrentlyRelevantCandidates];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_queue_clearAllCurrentMonitoring
{
  xpc_activity_unregister("com.apple.duetexpertd.INDateRelevance");
  [(BPSSink *)self->_computedModeSink cancel];
  inferredModeSink = self->_inferredModeSink;

  [(BPSSink *)inferredModeSink cancel];
}

- (void)_queue_startMonitoringDateRelevantContexts:(id)contexts
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(ATXRSRelevanceMonitor *)self _earliestFutureDateAmongDateRelevantContexts:contexts];
  v5 = __atxlog_handle_relevant_shortcut();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: scheduling refresh at %{public}@", buf, 0xCu);
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    v7 = *MEMORY[0x277D86250];
    [v4 timeIntervalSinceNow];
    xpc_dictionary_set_int64(v5, v7, v8);
    xpc_dictionary_set_int64(v5, *MEMORY[0x277D86270], 300);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86380], 1);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_string(v5, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__ATXRSRelevanceMonitor__queue_startMonitoringDateRelevantContexts___block_invoke;
    v10[3] = &unk_278596790;
    v10[4] = self;
    atxRegisterCTSJobHandler("com.apple.duetexpertd.INDateRelevance", v5, v10);
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: not scheduling refresh because all date relevance providers are expired", buf, 2u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_startMonitoringModeChanges
{
  objc_initWeak(&location, self);
  v3 = BiomeLibrary();
  userFocus = [v3 UserFocus];
  computedMode = [userFocus ComputedMode];
  atx_DSLPublisher = [computedMode atx_DSLPublisher];

  v7 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.proactive.ATXRSRelevanceMonitor.ComputedMode" targetQueue:self->_queue];
  computedModeScheduler = self->_computedModeScheduler;
  self->_computedModeScheduler = v7;

  v9 = [atx_DSLPublisher subscribeOn:self->_computedModeScheduler];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_37;
  v23[3] = &unk_2785977D8;
  objc_copyWeak(&v24, &location);
  v10 = [v9 sinkWithCompletion:&__block_literal_global_152 receiveInput:v23];
  computedModeSink = self->_computedModeSink;
  self->_computedModeSink = v10;

  v12 = BiomeLibrary();
  userFocus2 = [v12 UserFocus];
  inferredMode = [userFocus2 InferredMode];
  atx_DSLPublisher2 = [inferredMode atx_DSLPublisher];

  v16 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:@"com.apple.proactive.ATXRSRelevanceMonitor.InferredMode" targetQueue:self->_queue];
  inferredModeScheduler = self->_inferredModeScheduler;
  self->_inferredModeScheduler = v16;

  v18 = [atx_DSLPublisher2 subscribeOn:self->_inferredModeScheduler];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_45;
  v21[3] = &unk_2785977D8;
  objc_copyWeak(&v22, &location);
  v19 = [v18 sinkWithCompletion:&__block_literal_global_44_0 receiveInput:v21];
  inferredModeSink = self->_inferredModeSink;
  self->_inferredModeSink = v19;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_cold_1(v2);
    }
  }
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_37(uint64_t a1)
{
  v2 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: new event in computed mode stream, refreshing candidates", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _coalescedRefreshCurrentlyRelevantCandidates];
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_relevant_shortcut();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_42_cold_1(v2);
    }
  }
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_45(uint64_t a1)
{
  v2 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: new event in inferred mode stream, refreshing candidates", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _coalescedRefreshCurrentlyRelevantCandidates];
}

- (id)_earliestFutureDateAmongDateRelevantContexts:(id)contexts
{
  v29 = *MEMORY[0x277D85DE8];
  contextsCopy = contexts;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = contextsCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    v10 = distantFuture;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        startDate = [v12 startDate];
        [startDate timeIntervalSinceNow];
        v15 = v14;

        if (v15 > 0.0)
        {
          startDate2 = [v12 startDate];
          v17 = [v10 earlierDate:startDate2];

          v10 = v17;
        }

        v18 = [(ATXRSRelevanceMonitor *)self _nonnullEndDateOfDateRelevantContext:v12];
        [v18 timeIntervalSinceNow];
        if (v19 > 0.0)
        {
          v20 = [v10 earlierDate:v18];

          v10 = v20;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);

    if (v10 == distantFuture)
    {
      v21 = 0;
    }

    else
    {
      v10 = v10;
      v21 = v10;
    }
  }

  else
  {

    v21 = 0;
    v10 = distantFuture;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_nonnullEndDateOfDateRelevantContext:(id)context
{
  contextCopy = context;
  endDate = [contextCopy endDate];

  if (endDate)
  {
    endDate2 = [contextCopy endDate];
  }

  else
  {
    startDate = [contextCopy startDate];

    endDate2 = [startDate dateByAddingTimeInterval:1800.0];
    contextCopy = startDate;
  }

  return endDate2;
}

- (BOOL)_isDateRelevantContextSatisfied:(id)satisfied
{
  satisfiedCopy = satisfied;
  startDate = [satisfiedCopy startDate];
  [startDate timeIntervalSinceNow];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v9 = [(ATXRSRelevanceMonitor *)self _nonnullEndDateOfDateRelevantContext:satisfiedCopy];
    [v9 timeIntervalSinceNow];
    v8 = v10 > 0.0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_isBehavioralRelevanceSatisfiedForCandidate:(id)candidate currentMode:(unint64_t)mode
{
  v51 = *MEMORY[0x277D85DE8];
  donationBundleIdentifier = [candidate donationBundleIdentifier];
  v6 = [ATXRSWidgetSuggestionProducer replacementContainerBundleIdForDonationBundleId:donationBundleIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = donationBundleIdentifier;
  }

  v9 = v8;

  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v11 = [v10 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v11 doubleForKey:@"ATXModeRelevanceScoreThresholdOverride"];
  v41 = v11;
  if (v12 == 0.0)
  {
    v13 = +[_ATXGlobals sharedInstance];
    [v13 scoreThresholdForBehavioralModeRelevance];
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = objc_alloc(MEMORY[0x277CEB6A0]);
  v17 = +[ATXModeEntityScorerServer sharedInstance];
  v18 = [v16 initWithModeEntityScorerClient:v17];

  [v18 rankedAppsForMode:mode];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v19 = v45 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
LABEL_9:
    v23 = 0;
    while (1)
    {
      if (*v43 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v42 + 1) + 8 * v23);
      bundleId = [v24 bundleId];
      v26 = [bundleId isEqualToString:v9];

      if (v26)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [v19 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v21)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    scoreMetadata = [v24 scoreMetadata];
    [scoreMetadata score];
    v32 = v31;

    v33 = __atxlog_handle_relevant_shortcut();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
    v28 = v32 > v15;
    if (v32 <= v15)
    {
      v29 = v41;
      if (v34)
      {
        scoreMetadata2 = [v24 scoreMetadata];
        [scoreMetadata2 score];
        *buf = 134218242;
        v47 = v38;
        v48 = 2112;
        v49 = v9;
        v37 = "ATXRSRelevanceMonitor: score of %f is below threshold for candidate bundleId %@";
        goto LABEL_23;
      }
    }

    else
    {
      v29 = v41;
      if (v34)
      {
        scoreMetadata2 = [v24 scoreMetadata];
        [scoreMetadata2 score];
        *buf = 134218242;
        v47 = v36;
        v48 = 2112;
        v49 = v9;
        v37 = "ATXRSRelevanceMonitor: score of %f is above threshold for candidate bundleId %@";
LABEL_23:
        _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, v37, buf, 0x16u);
      }
    }

    v27 = v19;
    goto LABEL_25;
  }

LABEL_15:

  v27 = __atxlog_handle_relevant_shortcut();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v9;
    _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "ATXRSRelevanceMonitor: candidate bundleId was not found in ranked entities list: %@", buf, 0xCu);
  }

  v28 = 0;
  v29 = v41;
LABEL_25:

  v39 = *MEMORY[0x277D85DE8];
  return v28;
}

- (ATXRSRelevanceMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXRSRelevanceMonitor: error subscribing to computed mode stream: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __58__ATXRSRelevanceMonitor__queue_startMonitoringModeChanges__block_invoke_42_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXRSRelevanceMonitor: error subscribing to inferred mode stream: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end