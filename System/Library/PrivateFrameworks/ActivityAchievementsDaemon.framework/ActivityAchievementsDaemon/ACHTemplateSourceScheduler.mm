@interface ACHTemplateSourceScheduler
- (ACHTemplateSourceScheduler)initWithClient:(id)a3 assertionClient:(id)a4 templateStore:(id)a5 achievementStore:(id)a6;
- (BOOL)_isProtectedDataAvailable;
- (BOOL)_queue_runTemplateSources:(id)a3 requiringRunnableForDate:(BOOL)a4 error:(id *)a5;
- (BOOL)_runSynchronouslyWithError:(id *)a3;
- (id)_currentDate;
- (id)_runnableSourcesInSources:(id)a3 forDate:(id)a4 calendar:(id)a5;
- (unint64_t)_sourceCount;
- (void)_listenForSignificantTimeChanges;
- (void)_runAllTemplateSources;
- (void)_startUp;
- (void)achievementStoreDidFinishInitialFetch:(id)a3;
- (void)dealloc;
- (void)deregisterTemplateSource:(id)a3;
- (void)registerTemplateSource:(id)a3;
- (void)runImmediatelyForTemplateSource:(id)a3;
@end

@implementation ACHTemplateSourceScheduler

- (ACHTemplateSourceScheduler)initWithClient:(id)a3 assertionClient:(id)a4 templateStore:(id)a5 achievementStore:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v33.receiver = self;
  v33.super_class = ACHTemplateSourceScheduler;
  v15 = [(ACHTemplateSourceScheduler *)&v33 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_client, a3);
    objc_storeStrong(&v16->_assertionClient, a4);
    objc_storeStrong(&v16->_templateStore, a5);
    objc_storeStrong(&v16->_achievementStore, a6);
    [(ACHAchievementStoring *)v16->_achievementStore addObserver:v16];
    v17 = HKCreateSerialDispatchQueue();
    serialQueue = v16->_serialQueue;
    v16->_serialQueue = v17;

    v16->_initialRunComplete = 0;
    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    templateSources = v16->_templateSources;
    v16->_templateSources = v19;

    lastRunDateByTemplateSourceIdentifier = v16->_lastRunDateByTemplateSourceIdentifier;
    v16->_lastRunDateByTemplateSourceIdentifier = MEMORY[0x277CBEC10];

    v22 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    gregorianCalendar = v16->_gregorianCalendar;
    v16->_gregorianCalendar = v22;

    objc_initWeak(&location, v16);
    v24 = [*MEMORY[0x277CE8C10] UTF8String];
    v25 = v16->_serialQueue;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __92__ACHTemplateSourceScheduler_initWithClient_assertionClient_templateStore_achievementStore___block_invoke;
    v30 = &unk_2784907F8;
    objc_copyWeak(&v31, &location);
    notify_register_dispatch(v24, &v16->_protectedDataToken, v25, &v27);
    [(ACHTemplateSourceScheduler *)v16 _startUp:v27];
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __92__ACHTemplateSourceScheduler_initWithClient_assertionClient_templateStore_achievementStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained client];
  v4 = [v3 isProtectedDataAvailable];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _runAllTemplateSources];
  }
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_protectedDataToken))
  {
    notify_cancel(self->_protectedDataToken);
  }

  v3.receiver = self;
  v3.super_class = ACHTemplateSourceScheduler;
  [(ACHTemplateSourceScheduler *)&v3 dealloc];
}

- (void)registerTemplateSource:(id)a3
{
  v4 = a3;
  v5 = [(ACHTemplateSourceScheduler *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ACHTemplateSourceScheduler_registerTemplateSource___block_invoke;
  v7[3] = &unk_278490898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__ACHTemplateSourceScheduler_registerTemplateSource___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conformsToProtocol:&unk_28355FB80];
  v4 = ACHLogDefault();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*v2 identifier];
      *buf = 138543362;
      v19 = v6;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template Source scheduler adding template source with identifier %{public}@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) templateSources];
    [v7 addObject:*(a1 + 32)];

    v8 = [*(a1 + 40) initialRunComplete];
    v5 = ACHLogDefault();
    v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v9)
      {
        v10 = [*v2 identifier];
        *buf = 138543362;
        v19 = v10;
        _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template Source scheduler running new template source with identifier %{public}@", buf, 0xCu);
      }

      v11 = *(a1 + 40);
      v12 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
      v17 = 0;
      [v11 _queue_runTemplateSources:v12 requiringRunnableForDate:1 error:&v17];
      v5 = v17;

      if (v5)
      {
        v13 = ACHLogTemplates();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*v2 identifier];
          *buf = 138412546;
          v19 = v14;
          v20 = 2112;
          v21 = v5;
          _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Unable to run template source with identifier: %@; %@", buf, 0x16u);
        }
      }
    }

    else if (v9)
    {
      v15 = [*v2 identifier];
      *buf = 138543362;
      v19 = v15;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template Source scheduler not running new template source with identifier %{public}@ because initial run is not complete", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__ACHTemplateSourceScheduler_registerTemplateSource___block_invoke_cold_1(v2);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)deregisterTemplateSource:(id)a3
{
  v4 = a3;
  v5 = [(ACHTemplateSourceScheduler *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke;
  v7[3] = &unk_278490898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) conformsToProtocol:&unk_28355FB80];
  v4 = [v2[1] templateSources];
  v5 = [v4 containsObject:*v2];

  if (v3)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v8 = ACHLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v2 identifier];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Template Source scheduler removing template source with identifier %{public}@", &v12, 0xCu);
    }

    v7 = [*(a1 + 40) templateSources];
    [v7 removeObject:*(a1 + 32)];
LABEL_15:

    goto LABEL_16;
  }

  if ((v3 & 1) == 0)
  {
    v7 = ACHLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke_cold_1(v2);
    }

    goto LABEL_15;
  }

  if ((v5 & 1) == 0)
  {
    v7 = ACHLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke_cold_2(v2);
    }

    goto LABEL_15;
  }

LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
}

- (void)runImmediatelyForTemplateSource:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ACHLogDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template Source scheduler immediate run requested for source: %{public}@", buf, 0xCu);
  }

  v7 = [(ACHTemplateSourceScheduler *)self serialQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__ACHTemplateSourceScheduler_runImmediatelyForTemplateSource___block_invoke;
  v10[3] = &unk_278490898;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(v7, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __62__ACHTemplateSourceScheduler_runImmediatelyForTemplateSource___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) templateSources];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    if ([*(a1 + 32) initialRunComplete])
    {
      v4 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
      v5 = *(a1 + 32);
      v10 = 0;
      [v5 _queue_runTemplateSources:v4 requiringRunnableForDate:0 error:&v10];
      v6 = v10;
      if (v6)
      {
        v7 = ACHLogTemplates();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(a1 + 40) identifier];
          *buf = 138412546;
          v12 = v8;
          v13 = 2112;
          v14 = v6;
          _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Unable to run template source with identifier %@; %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v4 = ACHLogDefault();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Template Source scheduler not honoring request, initial run hasn't completed", buf, 2u);
      }
    }
  }

  else
  {
    v4 = ACHLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__ACHTemplateSourceScheduler_runImmediatelyForTemplateSource___block_invoke_cold_1();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isProtectedDataAvailable
{
  v2 = [(ACHTemplateSourceScheduler *)self client];
  v3 = [v2 isProtectedDataAvailable];

  return v3;
}

- (void)_startUp
{
  if ([(ACHTemplateSourceScheduler *)self _isProtectedDataAvailable]&& [(ACHTemplateSourceScheduler *)self achievementStoreDidFinishInitialFetch])
  {
    [(ACHTemplateSourceScheduler *)self _runAllTemplateSources];
  }

  else if (![(ACHTemplateSourceScheduler *)self achievementStoreDidFinishInitialFetch])
  {
    [(ACHTemplateSourceScheduler *)self setShouldScheduleAfterInitialFetch:1];
  }

  [(ACHTemplateSourceScheduler *)self _listenForSignificantTimeChanges];
}

- (void)_listenForSignificantTimeChanges
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__ACHTemplateSourceScheduler__listenForSignificantTimeChanges__block_invoke;
  aBlock[3] = &unk_278490820;
  objc_copyWeak(&v18, &location);
  v3 = _Block_copy(aBlock);
  v4 = [@"SignificantTimeChangeNotification" UTF8String];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __62__ACHTemplateSourceScheduler__listenForSignificantTimeChanges__block_invoke_360;
  handler[3] = &unk_278492D70;
  v7 = v3;
  v16 = v7;
  notify_register_dispatch(v4, &self->_significantTimeChangeToken, v5, handler);

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = [MEMORY[0x277CCABD8] mainQueue];
  v10 = *MEMORY[0x277CBE580];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ACHTemplateSourceScheduler__listenForSignificantTimeChanges__block_invoke_2;
  v13[3] = &unk_278492D98;
  v11 = v7;
  v14 = v11;
  v12 = [v8 addObserverForName:v10 object:0 queue:v9 usingBlock:v13];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __62__ACHTemplateSourceScheduler__listenForSignificantTimeChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _isProtectedDataAvailable];
    v4 = ACHLogTemplates();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Significant time change: Running template sources", buf, 2u);
      }

      [v2 _runAllTemplateSources];
    }

    else
    {
      if (v5)
      {
        *v6 = 0;
        _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Significant time change: Will run template sources next time protected data is available", v6, 2u);
      }
    }
  }
}

- (id)_runnableSourcesInSources:(id)a3 forDate:(id)a4 calendar:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__ACHTemplateSourceScheduler__runnableSourcesInSources_forDate_calendar___block_invoke;
  v14[3] = &unk_278492DC0;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  v11 = v9;
  v12 = [a3 hk_filter:v14];

  return v12;
}

uint64_t __73__ACHTemplateSourceScheduler__runnableSourcesInSources_forDate_calendar___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastRunDateByTemplateSourceIdentifier];
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v3 runCadence];
  if (v7 == 2)
  {
    if (!v6 || ([*(a1 + 40) isDate:*(a1 + 48) inSameDayAsDate:v6] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v7 == 1 && !v6)
  {
LABEL_8:
    v8 = [v3 sourceShouldRunForDate:*(a1 + 48)];
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)_runAllTemplateSources
{
  v3 = [(ACHTemplateSourceScheduler *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACHTemplateSourceScheduler__runAllTemplateSources__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(v3, block);
}

void __52__ACHTemplateSourceScheduler__runAllTemplateSources__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 templateSources];
  v8 = 0;
  v4 = [v2 _queue_runTemplateSources:v3 requiringRunnableForDate:1 error:&v8];
  v5 = v8;

  if (v4)
  {
    [*(a1 + 32) setInitialRunComplete:1];
  }

  if (v5)
  {
    v6 = ACHLogTemplates();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "Error running template sources: %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_runTemplateSources:(id)a3 requiringRunnableForDate:(BOOL)a4 error:(id *)a5
{
  v108 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v62 = self;
  v8 = [(ACHTemplateSourceScheduler *)self serialQueue];
  dispatch_assert_queue_V2(v8);

  v9 = ACHLogAwardEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "[#mc] _queue_runTemplateSources", buf, 2u);
  }

  v10 = objc_alloc(MEMORY[0x277CBEBD0]);
  v61 = [v10 initWithSuiteName:*MEMORY[0x277CE8C00]];
  v11 = [v61 BOOLForKey:*MEMORY[0x277CE8AC0]];
  v12 = [v61 BOOLForKey:*MEMORY[0x277CE8AB8]];
  v65 = [(ACHTemplateSourceScheduler *)v62 _currentDate];
  v13 = v7;
  v60 = v13;
  if (!(v11 & 1 | !a4 | v12 & 1))
  {
    v14 = [(ACHTemplateSourceScheduler *)v62 gregorianCalendar];
    v15 = [(ACHTemplateSourceScheduler *)v62 _runnableSourcesInSources:v60 forDate:v65 calendar:v14];

    v13 = v15;
  }

  v59 = v13;
  if ([v13 count])
  {
    v16 = [(ACHTemplateSourceScheduler *)v62 assertionClient];
    v100 = 0;
    v58 = [v16 acquireDatabaseAssertionWithIdentifier:@"ACHTemplateSourceScheduler" duration:&v100 error:20.0];
    v56 = v100;

    v98[0] = 0;
    v98[1] = v98;
    v98[2] = 0x2810000000;
    v98[3] = &unk_221E74077;
    v99 = 0;
    *buf = 0;
    v93 = buf;
    v94 = 0x3032000000;
    v95 = __Block_byref_object_copy__30;
    v96 = __Block_byref_object_dispose__30;
    v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = __Block_byref_object_copy__30;
    v90 = __Block_byref_object_dispose__30;
    v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v80 = 0;
    v81 = &v80;
    v82 = 0x3032000000;
    v83 = __Block_byref_object_copy__30;
    v84 = __Block_byref_object_dispose__30;
    v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = ACHLogDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v106 = 138412290;
      v107 = v59;
      _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "Running template sourcing for these sources: %@", v106, 0xCu);
    }

    group = dispatch_group_create();
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = v59;
    v18 = [obj countByEnumeratingWithState:&v76 objects:v105 count:16];
    if (v18)
    {
      v19 = *v77;
      v20 = MEMORY[0x277CBEC10];
      do
      {
        v21 = 0;
        v22 = v20;
        do
        {
          if (*v77 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v76 + 1) + 8 * v21);
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __87__ACHTemplateSourceScheduler__queue_runTemplateSources_requiringRunnableForDate_error___block_invoke;
          aBlock[3] = &unk_278492DE8;
          v72 = v98;
          aBlock[4] = v23;
          v73 = buf;
          v74 = &v80;
          v75 = &v86;
          v24 = group;
          v71 = v24;
          v25 = _Block_copy(aBlock);
          dispatch_group_enter(v24);
          [v23 templatesForDate:v65 completion:v25];
          v26 = [v23 identifier];
          v103 = v26;
          v104 = v65;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
          v20 = [v22 hk_dictionaryByAddingEntriesFromDictionary:v27];

          ++v21;
          v22 = v20;
        }

        while (v18 != v21);
        v18 = [obj countByEnumeratingWithState:&v76 objects:v105 count:16];
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277CBEC10];
    }

    v29 = dispatch_time(0, 30000000000);
    if (dispatch_group_wait(group, v29))
    {
      v30 = ACHLogTemplates();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [ACHTemplateSourceScheduler _queue_runTemplateSources:requiringRunnableForDate:error:];
      }

      v31 = MEMORY[0x277CCA9B8];
      v101 = *MEMORY[0x277CCA450];
      v102 = @"Waited for dispatch group and reached timeout. Source scheduling appears to have failed.";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      v33 = [v31 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v32];

      v34 = v33;
      v35 = v34;
      if (v34)
      {
        if (a5)
        {
          v36 = v34;
          *a5 = v35;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      v40 = [(ACHTemplateSourceScheduler *)v62 assertionClient];
      v69 = v56;
      [v40 invalidateAssertionWithToken:v58 error:&v69];
      v38 = v69;

      v28 = 0;
      goto LABEL_41;
    }

    v37 = [(ACHTemplateSourceScheduler *)v62 assertionClient];
    v68 = v56;
    [v37 invalidateAssertionWithToken:v58 error:&v68];
    v38 = v68;

    if ([*(v93 + 5) count])
    {
      v39 = [*(v93 + 5) firstObject];
      v40 = v39;
      if (v39)
      {
        if (a5)
        {
          v41 = v39;
LABEL_33:
          v28 = 0;
          *a5 = v40;
LABEL_40:
          v35 = v40;
LABEL_41:

          _Block_object_dispose(&v80, 8);
          _Block_object_dispose(&v86, 8);

          _Block_object_dispose(buf, 8);
          _Block_object_dispose(v98, 8);

          goto LABEL_42;
        }

        _HKLogDroppedError();
      }
    }

    else
    {
      v42 = [(ACHTemplateSourceScheduler *)v62 templateStore];
      v43 = v81[5];
      v67 = 0;
      [v42 removeTemplates:v43 error:&v67];
      v35 = v67;

      if (!v35)
      {
        v46 = [(ACHTemplateSourceScheduler *)v62 templateStore];
        v47 = v87[5];
        v66 = 0;
        [v46 addTemplates:v47 error:&v66];
        v40 = v66;

        v28 = v40 == 0;
        if (v40)
        {
          v48 = v40;
          v49 = v48;
          if (a5)
          {
            v50 = v48;
            *a5 = v49;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

        else
        {
          v53 = [(ACHTemplateSourceScheduler *)v62 lastRunDateByTemplateSourceIdentifier];
          v54 = [v53 hk_dictionaryByAddingEntriesFromDictionary:v20];
          [(ACHTemplateSourceScheduler *)v62 setLastRunDateByTemplateSourceIdentifier:v54];

          v49 = ACHLogTemplates();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v55 = [(ACHTemplateSourceScheduler *)v62 lastRunDateByTemplateSourceIdentifier];
            *v106 = 138543362;
            v107 = v55;
            _os_log_impl(&dword_221DDC000, v49, OS_LOG_TYPE_DEFAULT, "Updated last run dates for template sources to: %{public}@", v106, 0xCu);
          }
        }

        goto LABEL_41;
      }

      v44 = v35;
      v40 = v44;
      if (a5)
      {
        v45 = v44;
        goto LABEL_33;
      }

      _HKLogDroppedError();
    }

    v28 = 0;
    goto LABEL_40;
  }

  v28 = 1;
LABEL_42:

  v51 = *MEMORY[0x277D85DE8];
  return v28;
}

void __87__ACHTemplateSourceScheduler__queue_runTemplateSources_requiringRunnableForDate_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 48) + 8);
  os_unfair_lock_lock_with_options();
  if (v9)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v9];
  }

  v44 = v9;
  if (v8)
  {
    v45 = v7;
    v11 = ACHLogTemplates();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) identifier];
      *buf = 138543618;
      v63 = v12;
      v64 = 2048;
      v65 = [v8 count];
      _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Source %{public}@ returned %lu templates, removing from template store:", buf, 0x16u);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v56;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v55 + 1) + 8 * i);
          v19 = ACHLogTemplates();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v18 uniqueName];
            *buf = 134218242;
            v63 = v18;
            v64 = 2114;
            v65 = v20;
            _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "%p: %{public}@", buf, 0x16u);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v15);
    }

    v21 = *(*(*(a1 + 64) + 8) + 40);
    v22 = [v13 allObjects];
    [v21 addObjectsFromArray:v22];

    v7 = v45;
  }

  v46 = v8;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v23 = v7;
  v24 = [v23 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v52;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v52 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v51 + 1) + 8 * j);
        v29 = [*(a1 + 32) identifier];
        [v28 setSourceName:v29];
      }

      v25 = [v23 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v25);
  }

  v30 = ACHLogTemplates();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [*(a1 + 32) identifier];
    v32 = [v23 count];
    *buf = 138543618;
    v63 = v31;
    v64 = 2048;
    v65 = v32;
    _os_log_impl(&dword_221DDC000, v30, OS_LOG_TYPE_DEFAULT, "Source %{public}@ returned %lu templates, writing to template store:", buf, 0x16u);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = v23;
  v34 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v48;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v47 + 1) + 8 * k);
        v39 = ACHLogTemplates();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v38 uniqueName];
          *buf = 134218242;
          v63 = v38;
          v64 = 2114;
          v65 = v40;
          _os_log_impl(&dword_221DDC000, v39, OS_LOG_TYPE_DEFAULT, "%p: %{public}@", buf, 0x16u);
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v35);
  }

  v41 = *(*(*(a1 + 72) + 8) + 40);
  v42 = [v33 allObjects];
  [v41 addObjectsFromArray:v42];

  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  dispatch_group_leave(*(a1 + 40));

  v43 = *MEMORY[0x277D85DE8];
}

- (void)achievementStoreDidFinishInitialFetch:(id)a3
{
  [(ACHTemplateSourceScheduler *)self setAchievementStoreDidFinishInitialFetch:1];
  if ([(ACHTemplateSourceScheduler *)self shouldScheduleAfterInitialFetch]&& [(ACHTemplateSourceScheduler *)self _isProtectedDataAvailable])
  {

    [(ACHTemplateSourceScheduler *)self _runAllTemplateSources];
  }
}

- (unint64_t)_sourceCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(ACHTemplateSourceScheduler *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__ACHTemplateSourceScheduler__sourceCount__block_invoke;
  v6[3] = &unk_278490FE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __42__ACHTemplateSourceScheduler__sourceCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) templateSources];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)_currentDate
{
  v2 = [(ACHTemplateSourceScheduler *)self currentDateOverride];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] date];
  }

  v5 = v4;

  return v5;
}

- (BOOL)_runSynchronouslyWithError:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__30;
  v13 = __Block_byref_object_dispose__30;
  v14 = 0;
  v5 = [(ACHTemplateSourceScheduler *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__ACHTemplateSourceScheduler__runSynchronouslyWithError___block_invoke;
  v8[3] = &unk_278491920;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v10[5] == 0;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __57__ACHTemplateSourceScheduler__runSynchronouslyWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 templateSources];
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  [v2 _queue_runTemplateSources:v3 requiringRunnableForDate:1 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

void __53__ACHTemplateSourceScheduler_registerTemplateSource___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__ACHTemplateSourceScheduler_deregisterTemplateSource___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end