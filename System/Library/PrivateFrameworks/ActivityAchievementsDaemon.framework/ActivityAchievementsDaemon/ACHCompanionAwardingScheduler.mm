@interface ACHCompanionAwardingScheduler
- (ACHCompanionAwardingScheduler)initWithHealthStore:(id)store assertionClient:(id)client cloudSyncStatusProvider:(id)provider systemTaskScheduler:(id)scheduler dataStore:(id)dataStore earnedInstanceStore:(id)instanceStore templateStore:(id)templateStore awardingEngine:(id)self0;
- (BOOL)_didRunToday;
- (BOOL)isInitialAwardingRunComplete;
- (BOOL)maintenanceTaskScheduled;
- (NSDate)lastSuccessfulRunDate;
- (void)_cloudRestoreStatusDidChange:(id)change;
- (void)_queue_addAwardingCompletion:(id)completion;
- (void)_queue_callAwardingCompletionsWithSuccess:(BOOL)success error:(id)error;
- (void)_queue_performCleanupTasks;
- (void)_queue_removeAllEarnedInstances;
- (void)_queue_requestAwardingEvaluation;
- (void)_runBackgroundTaskWithCompletion:(id)completion;
- (void)_startUp;
- (void)_systemTimeZoneDidChange:(id)change;
- (void)activate;
- (void)addAwardingCompletion:(id)completion;
- (void)clearLastSuccessfulRunDate;
- (void)dataStoreDidPopulate:(id)populate;
- (void)lastSuccessfulRunDate;
- (void)overrideCoalescingDelay:(double)delay;
- (void)requestAwardingEvaluationWithCompletion:(id)completion;
- (void)scheduleMaintenanceTaskForAwardingWithCompletion:(id)completion;
- (void)setLastSuccessfulRunDate:(id)date;
- (void)setMaintenanceTaskScheduled:(BOOL)scheduled;
- (void)templateStore:(id)store didAddNewTemplates:(id)templates;
- (void)templateStoreDidFinishInitialFetch:(id)fetch;
@end

@implementation ACHCompanionAwardingScheduler

- (ACHCompanionAwardingScheduler)initWithHealthStore:(id)store assertionClient:(id)client cloudSyncStatusProvider:(id)provider systemTaskScheduler:(id)scheduler dataStore:(id)dataStore earnedInstanceStore:(id)instanceStore templateStore:(id)templateStore awardingEngine:(id)self0
{
  storeCopy = store;
  clientCopy = client;
  providerCopy = provider;
  schedulerCopy = scheduler;
  dataStoreCopy = dataStore;
  instanceStoreCopy = instanceStore;
  templateStoreCopy = templateStore;
  engineCopy = engine;
  v40.receiver = self;
  v40.super_class = ACHCompanionAwardingScheduler;
  v18 = [(ACHCompanionAwardingScheduler *)&v40 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_healthStore, store);
    objc_storeStrong(&v19->_assertionClient, client);
    keyValueClient = [dataStoreCopy keyValueClient];
    keyValueClient = v19->_keyValueClient;
    v19->_keyValueClient = keyValueClient;

    objc_storeStrong(&v19->_systemTaskScheduler, scheduler);
    objc_storeStrong(&v19->_dataStore, dataStore);
    objc_storeStrong(&v19->_earnedInstanceStore, instanceStore);
    objc_storeStrong(&v19->_templateStore, templateStore);
    objc_storeStrong(&v19->_awardingEngine, engine);
    v22 = HKCreateSerialDispatchQueue();
    queue = v19->_queue;
    v19->_queue = v22;

    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v19->_calendar;
    v19->_calendar = autoupdatingCurrentCalendar;

    v26 = HKCreateSerialDispatchQueueWithQOSClass();
    awardingEvaluationQueue = v19->_awardingEvaluationQueue;
    v19->_awardingEvaluationQueue = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    awardEvaluationCompletionBlocks = v19->_awardEvaluationCompletionBlocks;
    v19->_awardEvaluationCompletionBlocks = v28;

    v19->_dataStoreIsLoaded = 0;
    v30 = [objc_alloc(MEMORY[0x277CCD570]) initWithCategory:3 domainName:@"com.apple.ActivityAchievements.CompanionAwardingScheduler" healthStore:v19->_healthStore];
    localKeyValueDomain = v19->_localKeyValueDomain;
    v19->_localKeyValueDomain = v30;

    objc_storeStrong(&v19->_cloudSyncStatusProvider, provider);
  }

  return v19;
}

- (void)activate
{
  v3 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Activating companion scheduler", v4, 2u);
  }

  [(ACHCompanionAwardingScheduler *)self _startUp];
}

- (void)setLastSuccessfulRunDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v6 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = dateCopy;
    _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "SET: lastSuccessfulRunDate = %@", buf, 0xCu);
  }

  objc_storeStrong(&self->_lastSuccessfulRunDate, date);
  v7 = MEMORY[0x277CCABB0];
  [dateCopy timeIntervalSinceReferenceDate];
  v8 = [v7 numberWithDouble:?];
  localKeyValueDomain = [(ACHCompanionAwardingScheduler *)self localKeyValueDomain];
  v10 = NSStringFromSelector(sel_lastSuccessfulRunDate);
  v14 = 0;
  [localKeyValueDomain setNumber:v8 forKey:v10 error:&v14];
  v11 = v14;

  if (v11)
  {
    v12 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ACHCompanionAwardingScheduler *)v11 setLastSuccessfulRunDate:v12];
    }
  }

  notify_post(*MEMORY[0x277CE8BB8]);

  v13 = *MEMORY[0x277D85DE8];
}

- (NSDate)lastSuccessfulRunDate
{
  lastSuccessfulRunDate = self->_lastSuccessfulRunDate;
  if (!lastSuccessfulRunDate)
  {
    localKeyValueDomain = [(ACHCompanionAwardingScheduler *)self localKeyValueDomain];
    _lastSuccessfulRunDateKey = [(ACHCompanionAwardingScheduler *)self _lastSuccessfulRunDateKey];
    v12 = 0;
    v6 = [localKeyValueDomain numberForKey:_lastSuccessfulRunDateKey error:&v12];
    v7 = v12;

    if (v7)
    {
      v8 = ACHLogAwardScheduling();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(ACHCompanionAwardingScheduler *)v7 lastSuccessfulRunDate];
      }
    }

    if (v6)
    {
      [v6 doubleValue];
      [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    }

    else
    {
      [MEMORY[0x277CBEAA8] distantPast];
    }
    v9 = ;
    v10 = self->_lastSuccessfulRunDate;
    self->_lastSuccessfulRunDate = v9;

    lastSuccessfulRunDate = self->_lastSuccessfulRunDate;
  }

  return lastSuccessfulRunDate;
}

- (void)clearLastSuccessfulRunDate
{
  lastSuccessfulRunDate = self->_lastSuccessfulRunDate;
  self->_lastSuccessfulRunDate = 0;

  localKeyValueDomain = [(ACHCompanionAwardingScheduler *)self localKeyValueDomain];
  v5 = MEMORY[0x277CBEB98];
  _lastSuccessfulRunDateKey = [(ACHCompanionAwardingScheduler *)self _lastSuccessfulRunDateKey];
  v7 = [v5 setWithObject:_lastSuccessfulRunDateKey];
  [localKeyValueDomain removeValuesForKeys:v7 completion:&__block_literal_global_18];

  v8 = *MEMORY[0x277CE8BB8];

  notify_post(v8);
}

void __59__ACHCompanionAwardingScheduler_clearLastSuccessfulRunDate__block_invoke(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Error clearning last run date: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)maintenanceTaskScheduled
{
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_maintenanceTaskScheduled;
}

- (void)setMaintenanceTaskScheduled:(BOOL)scheduled
{
  scheduledCopy = scheduled;
  v9 = *MEMORY[0x277D85DE8];
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = scheduledCopy;
    _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "SET: maintenanceTaskScheduled %d", v8, 8u);
  }

  self->_maintenanceTaskScheduled = scheduledCopy;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_systemTimeZoneDidChange:(id)change
{
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ACHCompanionAwardingScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__ACHCompanionAwardingScheduler__systemTimeZoneDidChange___block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_sync(queue2, block);
}

void __58__ACHCompanionAwardingScheduler__systemTimeZoneDidChange___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
  [*(a1 + 32) setCalendar:v2];
}

- (void)_cloudRestoreStatusDidChange:(id)change
{
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ACHCompanionAwardingScheduler__cloudRestoreStatusDidChange___block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __62__ACHCompanionAwardingScheduler__cloudRestoreStatusDidChange___block_invoke(uint64_t a1)
{
  v2 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_221DDC000, v2, OS_LOG_TYPE_DEFAULT, "[ACHCompanionScheduler] received cloud restore status change notification", v4, 2u);
  }

  result = [*(a1 + 32) shouldRunImmediatelyOnCloudSyncCompletion];
  if (result)
  {
    return [*(a1 + 32) _queue_requestAwardingEvaluation];
  }

  return result;
}

- (void)_queue_removeAllEarnedInstances
{
  v16 = *MEMORY[0x277D85DE8];
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  earnedInstanceStore = [(ACHCompanionAwardingScheduler *)self earnedInstanceStore];
  earnedInstanceStore2 = [(ACHCompanionAwardingScheduler *)self earnedInstanceStore];
  earnedInstances = [earnedInstanceStore2 earnedInstances];
  v11 = 0;
  v7 = [earnedInstanceStore removeEarnedInstances:earnedInstances error:&v11];
  v8 = v11;

  v9 = ACHLogDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Removed earned instances due to companion app deletion with success: %{BOOL}d, %{public}@", buf, 0x12u);
  }

  [(ACHCompanionAwardingScheduler *)self setShouldRetryEarnedInstanceDeletion:v7 ^ 1u];
  [(ACHCompanionAwardingScheduler *)self clearLastSuccessfulRunDate];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startUp
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__systemTimeZoneDidChange_ name:*MEMORY[0x277CBE780] object:0];
  v3 = *MEMORY[0x277CE8B30];
  cloudSyncStatusProvider = [(ACHCompanionAwardingScheduler *)self cloudSyncStatusProvider];
  [defaultCenter addObserver:self selector:sel__cloudRestoreStatusDidChange_ name:v3 object:cloudSyncStatusProvider];

  templateStore = [(ACHCompanionAwardingScheduler *)self templateStore];
  [templateStore addObserver:self];

  dataStore = [(ACHCompanionAwardingScheduler *)self dataStore];
  [dataStore addObserver:self];
}

- (void)templateStoreDidFinishInitialFetch:(id)fetch
{
  fetchCopy = fetch;
  v5 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Received templateStoreDidFinishInitialFetch, setting up background task scheduler", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [ACHBackgroundTaskScheduler alloc];
  systemTaskScheduler = [(ACHCompanionAwardingScheduler *)self systemTaskScheduler];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__ACHCompanionAwardingScheduler_templateStoreDidFinishInitialFetch___block_invoke;
  v17[3] = &unk_278491EC8;
  objc_copyWeak(&v18, buf);
  v8 = [(ACHBackgroundTaskScheduler *)v6 initWithName:@"com.apple.activityawardsd.companion_scheduler" systemTaskScheduler:systemTaskScheduler performHandler:v17];
  backgroundTaskScheduler = self->_backgroundTaskScheduler;
  self->_backgroundTaskScheduler = v8;

  allTemplates = [fetchCopy allTemplates];
  if ([allTemplates count])
  {
    _shouldRunImmediatelyOnTemplateLoad = [(ACHCompanionAwardingScheduler *)self _shouldRunImmediatelyOnTemplateLoad];

    if (_shouldRunImmediatelyOnTemplateLoad)
    {
      v12 = ACHLogAwardScheduling();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Templates are loaded and should run immediately on template load is set, requesting evaluation.", v16, 2u);
      }

      [(ACHCompanionAwardingScheduler *)self scheduleMaintenanceTaskForAwardingWithCompletion:0];
      goto LABEL_13;
    }
  }

  else
  {
  }

  allTemplates2 = [fetchCopy allTemplates];
  v14 = [allTemplates2 count];

  if (!v14)
  {
    v15 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, "Initial fetch completed, but no templates exist. Will run when new templates are added.", v16, 2u);
    }
  }

LABEL_13:
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __68__ACHCompanionAwardingScheduler_templateStoreDidFinishInitialFetch___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runBackgroundTaskWithCompletion:v3];
}

- (void)_runBackgroundTaskWithCompletion:(id)completion
{
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ACHCompanionAwardingScheduler__runBackgroundTaskWithCompletion___block_invoke;
  block[3] = &unk_278490FE8;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(queue, block);

  if (v15[3])
  {
    v6 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "Actvity app is installed, request awarding evaluation for periodic update", buf, 2u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__ACHCompanionAwardingScheduler__runBackgroundTaskWithCompletion___block_invoke_324;
    v9[3] = &unk_278491EF0;
    v10 = completionCopy;
    [(ACHCompanionAwardingScheduler *)self scheduleMaintenanceTaskForAwardingWithCompletion:v9];
  }

  else
  {
    v7 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Activity app isn't installed - not requesting evaluation", buf, 2u);
    }

    queue2 = [(ACHCompanionAwardingScheduler *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__ACHCompanionAwardingScheduler__runBackgroundTaskWithCompletion___block_invoke_323;
    v11[3] = &unk_278490870;
    v11[4] = self;
    dispatch_sync(queue2, v11);

    (*(completionCopy + 2))(completionCopy, 1, 0);
  }

  _Block_object_dispose(&v14, 8);
}

void __66__ACHCompanionAwardingScheduler__runBackgroundTaskWithCompletion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) forceActivityAppInstalled];
  if (v5)
  {
    v2 = [*(a1 + 32) forceActivityAppInstalled];
    *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
  }

  else
  {
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v4 = [v3 applicationIsInstalled:*MEMORY[0x277CE8B38]];

    *(*(*(a1 + 40) + 8) + 24) = v4;
  }
}

uint64_t __66__ACHCompanionAwardingScheduler__runBackgroundTaskWithCompletion___block_invoke_323(uint64_t a1)
{
  result = [*(a1 + 32) shouldRetryEarnedInstanceDeletion];
  if (result)
  {
    v3 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Deleting earned instances previously failed, retrying", v4, 2u);
    }

    return [*(a1 + 32) _queue_removeAllEarnedInstances];
  }

  return result;
}

void __66__ACHCompanionAwardingScheduler__runBackgroundTaskWithCompletion___block_invoke_324(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "Periodic activity awarding evaluation finished with success=%d, error=%{public}@", v8, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)templateStore:(id)store didAddNewTemplates:(id)templates
{
  if ([templates count])
  {

    [(ACHCompanionAwardingScheduler *)self scheduleMaintenanceTaskForAwardingWithCompletion:0];
  }
}

- (BOOL)isInitialAwardingRunComplete
{
  lastSuccessfulRunDate = [(ACHCompanionAwardingScheduler *)self lastSuccessfulRunDate];
  [lastSuccessfulRunDate timeIntervalSinceReferenceDate];
  v4 = v3;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v7 = v4 > v6;

  return v7;
}

- (void)requestAwardingEvaluationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Awarding evaluation requested", v6, 2u);
  }

  [(ACHCompanionAwardingScheduler *)self scheduleMaintenanceTaskForAwardingWithCompletion:completionCopy];
}

- (void)scheduleMaintenanceTaskForAwardingWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Running awarding for maintenance task...", buf, 2u);
  }

  queue = [(ACHCompanionAwardingScheduler *)self queue];
  dispatch_assert_queue_not_V2(queue);

  objc_initWeak(buf, self);
  queue2 = [(ACHCompanionAwardingScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ACHCompanionAwardingScheduler_scheduleMaintenanceTaskForAwardingWithCompletion___block_invoke;
  block[3] = &unk_278491F40;
  v10 = completionCopy;
  v8 = completionCopy;
  objc_copyWeak(&v11, buf);
  block[4] = self;
  dispatch_sync(queue2, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __82__ACHCompanionAwardingScheduler_scheduleMaintenanceTaskForAwardingWithCompletion___block_invoke(id *a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__ACHCompanionAwardingScheduler_scheduleMaintenanceTaskForAwardingWithCompletion___block_invoke_2;
  aBlock[3] = &unk_278491F18;
  v8 = a1[5];
  objc_copyWeak(&v9, a1 + 6);
  v2 = _Block_copy(aBlock);
  [a1[4] _queue_addAwardingCompletion:v2];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [WeakRetained maintenanceTaskScheduled];

  if (v4)
  {
    v5 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Task already running, only adding an awarding completion handler.", v6, 2u);
    }
  }

  else
  {
    v5 = objc_loadWeakRetained(a1 + 6);
    [v5 _queue_requestAwardingEvaluation];
  }

  objc_destroyWeak(&v9);
}

uint64_t __82__ACHCompanionAwardingScheduler_scheduleMaintenanceTaskForAwardingWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [MEMORY[0x277CBEAA8] date];
    [WeakRetained setLastSuccessfulRunDate:v8];
  }

  return MEMORY[0x2821F9730]();
}

- (void)_queue_requestAwardingEvaluation
{
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  awardingEvaluationQueue = [(ACHCompanionAwardingScheduler *)self awardingEvaluationQueue];
  dispatch_assert_queue_not_V2(awardingEvaluationQueue);

  cloudSyncStatusProvider = [(ACHCompanionAwardingScheduler *)self cloudSyncStatusProvider];
  isInitialCloudRestoreComplete = [cloudSyncStatusProvider isInitialCloudRestoreComplete];

  if (isInitialCloudRestoreComplete)
  {
    if ([(ACHCompanionAwardingScheduler *)self dataStoreIsLoaded])
    {
      [(ACHCompanionAwardingScheduler *)self setShouldRunImmediatelyOnCloudSyncCompletion:0];
      [(ACHCompanionAwardingScheduler *)self setShouldRunImmediatelyOnDataStoreLoad:0];
      [(ACHCompanionAwardingScheduler *)self setMaintenanceTaskScheduled:1];
      awardingEvaluationQueue2 = [(ACHCompanionAwardingScheduler *)self awardingEvaluationQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__ACHCompanionAwardingScheduler__queue_requestAwardingEvaluation__block_invoke;
      block[3] = &unk_278490870;
      block[4] = self;
      dispatch_async(awardingEvaluationQueue2, block);
    }

    else
    {
      v9 = ACHLogAwardScheduling();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Requesting historical evaluation, but data store isn't loaded yet. Waiting on data store.", buf, 2u);
      }

      [(ACHCompanionAwardingScheduler *)self setShouldRunImmediatelyOnDataStoreLoad:1];
    }
  }

  else
  {
    v8 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Requesting historical evaluation, but initial cloud restore isn't complete. Waiting on restore completion.", buf, 2u);
    }

    [(ACHCompanionAwardingScheduler *)self setShouldRunImmediatelyOnCloudSyncCompletion:1];
  }
}

void __65__ACHCompanionAwardingScheduler__queue_requestAwardingEvaluation__block_invoke(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__19;
  v6[4] = __Block_byref_object_dispose__19;
  [@"com.apple.activityawardsd.phone.full_history_evaluation" UTF8String];
  v7 = os_transaction_create();
  v2 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v2, OS_LOG_TYPE_DEFAULT, "Requesting historical evaluation from engine", buf, 2u);
  }

  v3 = [*(a1 + 32) awardingEngine];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__ACHCompanionAwardingScheduler__queue_requestAwardingEvaluation__block_invoke_328;
  v4[3] = &unk_278491F90;
  v4[4] = *(a1 + 32);
  v4[5] = v6;
  [v3 requestHistoricalEvaluationForAllSourcesWithCompletion:v4];

  _Block_object_dispose(v6, 8);
}

void __65__ACHCompanionAwardingScheduler__queue_requestAwardingEvaluation__block_invoke_328(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "Historical evaluation complete with success: %{public}@, error: %{public}@", buf, 0x16u);
  }

  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ACHCompanionAwardingScheduler__queue_requestAwardingEvaluation__block_invoke_335;
  block[3] = &unk_278491F68;
  v9 = *(a1 + 32);
  v16 = a2;
  block[4] = v9;
  v15 = v5;
  v10 = v5;
  dispatch_sync(v8, block);

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_queue_performCleanupTasks
{
  v3 = [ACHEarnedInstanceCleanupUtility alloc];
  healthStore = [(ACHCompanionAwardingScheduler *)self healthStore];
  keyValueClient = [(ACHCompanionAwardingScheduler *)self keyValueClient];
  earnedInstanceStore = [(ACHCompanionAwardingScheduler *)self earnedInstanceStore];
  v7 = [(ACHEarnedInstanceCleanupUtility *)v3 initWithHealthStore:healthStore keyValueClient:keyValueClient earnedInstanceStore:earnedInstanceStore];

  [(ACHEarnedInstanceCleanupUtility *)v7 performCleanup];
}

- (BOOL)_didRunToday
{
  lastSuccessfulRunDate = [(ACHCompanionAwardingScheduler *)self lastSuccessfulRunDate];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:lastSuccessfulRunDate];
  v5 = v4 < 86400.0;

  return v5;
}

- (void)overrideCoalescingDelay:(double)delay
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:delay];
  [(ACHCompanionAwardingScheduler *)self setCoalescingDelayOverride:v4];
}

- (void)addAwardingCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    queue = [(ACHCompanionAwardingScheduler *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __55__ACHCompanionAwardingScheduler_addAwardingCompletion___block_invoke;
    v6[3] = &unk_278491948;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_sync(queue, v6);
  }
}

- (void)_queue_addAwardingCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = completionCopy;
  if (completionCopy)
  {
    awardEvaluationCompletionBlocks = self->_awardEvaluationCompletionBlocks;
    v7 = [completionCopy copy];
    v8 = _Block_copy(v7);
    [(NSMutableArray *)awardEvaluationCompletionBlocks addObject:v8];

    v5 = completionCopy;
  }
}

- (void)_queue_callAwardingCompletionsWithSuccess:(BOOL)success error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  dispatch_assert_queue_V2(queue);

  [(ACHCompanionAwardingScheduler *)self _queue_performCleanupTasks];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_awardEvaluationCompletionBlocks;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v15 + 1) + 8 * v11++) + 16))();
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Finished calling run completion handlers", v14, 2u);
  }

  [(ACHCompanionAwardingScheduler *)self setMaintenanceTaskScheduled:0];
  [(NSMutableArray *)self->_awardEvaluationCompletionBlocks removeAllObjects];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataStoreDidPopulate:(id)populate
{
  queue = [(ACHCompanionAwardingScheduler *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ACHCompanionAwardingScheduler_dataStoreDidPopulate___block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __54__ACHCompanionAwardingScheduler_dataStoreDidPopulate___block_invoke(uint64_t a1)
{
  v2 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_221DDC000, v2, OS_LOG_TYPE_DEFAULT, "[ACHCompanionScheduler] received data store is loaded", v4, 2u);
  }

  [*(a1 + 32) setDataStoreIsLoaded:1];
  result = [*(a1 + 32) shouldRunImmediatelyOnDataStoreLoad];
  if (result)
  {
    return [*(a1 + 32) _queue_requestAwardingEvaluation];
  }

  return result;
}

- (void)setLastSuccessfulRunDate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error setting last scheduled run date: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)lastSuccessfulRunDate
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error fetching last scheduled run date: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end