@interface ATXStackStateTracker
+ (ATXStackStateTracker)sharedInstance;
- (ATXStackStateTracker)init;
- (BOOL)lastStackRotationWasALongTimeAgoForStackId:(id)id;
- (BOOL)lastStalenessRotationWasALongTimeAgoForStackId:(id)id;
- (BOOL)lastUserScrollWasALongTimeAgoForStackId:(id)id;
- (BOOL)loadInternalState;
- (BOOL)mostRecentRotationOfStackIsSystemInitiated:(id)initiated;
- (BOOL)persistInternalState;
- (BOOL)stackIsStale:(id)stale;
- (BOOL)stackWasCreatedALongTimeAgo:(id)ago;
- (id)_blendingCacheIdToStackIdMap:(id)map;
- (id)dataFromDisk;
- (id)initTrackerInDirectory:(id)directory;
- (id)jsonRepresentation;
- (id)lastStackRotationEvent:(id)event;
- (id)lastStackShownEvent:(id)event;
- (id)lastThreeUserVisitDatesOfPage:(unint64_t)page;
- (id)lastUserScrollStackRotationEvent:(id)event;
- (id)layoutForLastStalenessRotation:(id)rotation;
- (id)stackCreationEvent:(id)event;
- (id)stackStateForStackId:(id)id;
- (id)topWidgetUniqueIdOfStack:(id)stack;
- (void)_persistInternalStateImmediatelyOnSigterm;
- (void)cleanupOldDataWithHomeScreenPages:(id)pages;
- (void)coalescedPersistInternalState;
- (void)dataFromDisk;
- (void)handleSigterm;
- (void)loadInternalState;
- (void)setLayoutForLastStalenessRotation:(id)rotation stackId:(id)id date:(id)date;
- (void)updateStackRotationEvents;
@end

@implementation ATXStackStateTracker

- (BOOL)persistInternalState
{
  selfCopy = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  internalStateLock = self->_internalStateLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ATXStackStateTracker_persistInternalState__block_invoke;
  v7[3] = &unk_27859D660;
  v7[4] = selfCopy;
  v7[5] = &v8;
  [(_PASLock *)internalStateLock runWithLockAcquired:v7];
  queue = selfCopy->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ATXStackStateTracker_persistInternalState__block_invoke_196;
  block[3] = &unk_278596BB8;
  block[4] = selfCopy;
  dispatch_async(queue, block);
  LOBYTE(selfCopy) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return selfCopy;
}

void __44__ATXStackStateTracker_persistInternalState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v15 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v15];
  v6 = v15;
  objc_autoreleasePoolPop(v4);
  if (!v5)
  {
    v12 = __atxlog_handle_blending();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __44__ATXStackStateTracker_persistInternalState__block_invoke_cold_3();
    }

    goto LABEL_12;
  }

  v7 = open([*(*(a1 + 32) + 40) UTF8String], 514, 384);
  if (v7 == -1)
  {
    v13 = __atxlog_handle_blending();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __44__ATXStackStateTracker_persistInternalState__block_invoke_cold_2(a1 + 32);
    }

LABEL_12:
    LOBYTE(v9) = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = ATXCacheFileWrite();
  v10 = __atxlog_handle_blending();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXStackStateTracker: Done persisting internal state.", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __44__ATXStackStateTracker_persistInternalState__block_invoke_cold_1();
  }

  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

LABEL_17:
  *(*(*(a1 + 40) + 8) + 24) = v9;
}

- (void)coalescedPersistInternalState
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ATXStackStateTracker_coalescedPersistInternalState__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateStackRotationEvents
{
  v3 = objc_autoreleasePoolPush();
  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "ATXStackStateTracker is updating and persisting its internal state.", buf, 2u);
  }

  v5 = dispatch_semaphore_create(0);
  v6 = objc_opt_new();
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __49__ATXStackStateTracker_updateStackRotationEvents__block_invoke;
  v12 = &unk_27859D6D8;
  selfCopy = self;
  v7 = v5;
  v14 = v7;
  [v6 getCurrentSuggestionsWidgetAndAppPredictionPanelLayoutsWithCompletionHandler:&v9];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v7 timeoutSeconds:{1.0, v9, v10, v11, v12, selfCopy}] == 1)
  {
    v8 = __atxlog_handle_blending();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXStackStateTracker updateStackRotationEvents];
    }
  }

  [(ATXStackStateTracker *)self updateStackRotationEventsByQueryingBiome];
  [(ATXStackStateTracker *)self coalescedPersistInternalState];

  objc_autoreleasePoolPop(v3);
}

void __49__ATXStackStateTracker_updateStackRotationEvents__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __49__ATXStackStateTracker_updateStackRotationEvents__block_invoke_cold_1();
    }

    [*(a1 + 32) setCurrentSuggestionsWidgetLayouts:0];
    v10 = *(a1 + 32);
    v11 = 0;
  }

  else
  {
    [*(a1 + 32) setCurrentSuggestionsWidgetLayouts:a2];
    v10 = *(a1 + 32);
    v11 = v7;
  }

  [v10 setCurrentAppPredictionPanelLayouts:v11];
  dispatch_semaphore_signal(*(a1 + 40));
}

void __64__ATXStackStateTracker_updateStackRotationEventsByQueryingBiome__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__55;
  v29 = __Block_byref_object_dispose__55;
  v30 = 0;
  v3 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-43200.0];
  v4 = objc_opt_new();
  [v3 timeIntervalSinceReferenceDate];
  v5 = [v4 genericEventPublisherFromStartTime:34 consumerSubType:?];

  v6 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __64__ATXStackStateTracker_updateStackRotationEventsByQueryingBiome__block_invoke_2;
  v23[3] = &unk_27859A798;
  v7 = v3;
  v24 = v7;
  v8 = [v5 filterWithIsIncluded:v23];
  v9 = [v2 bookmark];
  v10 = [v9 bookmark];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__ATXStackStateTracker_updateStackRotationEventsByQueryingBiome__block_invoke_181;
  v22[3] = &unk_27859D720;
  v22[4] = &v25;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __64__ATXStackStateTracker_updateStackRotationEventsByQueryingBiome__block_invoke_183;
  v19 = &unk_2785988C8;
  v11 = v2;
  v20 = v11;
  v12 = v6;
  v21 = v12;
  v13 = [v8 sinkWithBookmark:v10 completion:v22 receiveInput:&v16];

  v14 = objc_alloc(MEMORY[0x277CEBBF8]);
  v15 = [v14 initWithURLPath:0 versionNumber:&unk_283A56A08 bookmark:v26[5] metadata:{0, v16, v17, v18, v19}];
  [v11 setBookmark:v15];

  _Block_object_dispose(&v25, 8);
}

void __64__ATXStackStateTracker_updateStackRotationEventsByQueryingBiome__block_invoke_181(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 state] == 1)
  {
    v7 = __atxlog_handle_blending();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __64__ATXStackStateTracker_updateStackRotationEventsByQueryingBiome__block_invoke_181_cold_1(v5, v7);
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
}

uint64_t __53__ATXStackStateTracker_coalescedPersistInternalState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[1])
  {
    v3 = os_transaction_create();
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(a1 + 32);
  }

  [v2 _persistInternalStateImmediatelyOnSigterm];
  v6 = *(*(a1 + 32) + 24);

  return [v6 runAfterDelaySeconds:0 coalescingBehavior:10.0];
}

- (void)_persistInternalStateImmediatelyOnSigterm
{
  if (!self->_sigtermListener)
  {
    mEMORY[0x277CEBCD8] = [MEMORY[0x277CEBCD8] sharedInstance];
    sigtermListener = self->_sigtermListener;
    self->_sigtermListener = mEMORY[0x277CEBCD8];

    v6 = self->_sigtermListener;

    [(ATXSigtermListener *)v6 registerObserver:self];
  }
}

- (ATXStackStateTracker)init
{
  appPredictionCacheDirectory = [MEMORY[0x277CEBCB0] appPredictionCacheDirectory];
  v4 = [(ATXStackStateTracker *)self initTrackerInDirectory:appPredictionCacheDirectory];

  return v4;
}

+ (ATXStackStateTracker)sharedInstance
{
  if (sharedInstance__pasOnceToken18 != -1)
  {
    +[ATXStackStateTracker sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_23;

  return v3;
}

void __38__ATXStackStateTracker_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_23;
  sharedInstance__pasExprOnceResult_23 = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)initTrackerInDirectory:(id)directory
{
  directoryCopy = directory;
  v24.receiver = self;
  v24.super_class = ATXStackStateTracker;
  v5 = [(ATXStackStateTracker *)&v24 init];
  if (v5)
  {
    v6 = os_transaction_create();
    v7 = [directoryCopy stringByAppendingPathComponent:@"ATXStackStates"];
    path = v5->_path;
    v5->_path = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_BACKGROUND, 0);

    v11 = dispatch_queue_create("ATXStackStateTracker", v10);
    queue = v5->_queue;
    v5->_queue = v11;

    objc_initWeak(&location, v5);
    v13 = objc_alloc(MEMORY[0x277D42628]);
    v14 = v5->_queue;
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __47__ATXStackStateTracker_initTrackerInDirectory___block_invoke;
    v21 = &unk_2785977B0;
    objc_copyWeak(&v22, &location);
    v15 = [v13 initWithQueue:v14 operation:&v18];
    coalescedPersistInternalStateOperation = v5->_coalescedPersistInternalStateOperation;
    v5->_coalescedPersistInternalStateOperation = v15;

    [(ATXStackStateTracker *)v5 loadInternalState:v18];
    [(ATXStackStateTracker *)v5 updateStackRotationEvents];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __47__ATXStackStateTracker_initTrackerInDirectory___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained persistInternalState];
}

- (id)jsonRepresentation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__55;
  v10 = __Block_byref_object_dispose__55;
  v11 = 0;
  internalStateLock = self->_internalStateLock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ATXStackStateTracker_jsonRepresentation__block_invoke;
  v5[3] = &unk_27859D5E8;
  v5[4] = &v6;
  [(_PASLock *)internalStateLock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__ATXStackStateTracker_jsonRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 stackStateByStackId];
  v3 = [v6 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)stackIsStale:(id)stale
{
  staleCopy = stale;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  internalStateLock = self->_internalStateLock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__ATXStackStateTracker_stackIsStale___block_invoke;
  v8[3] = &unk_27859D610;
  v6 = staleCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  [(_PASLock *)internalStateLock runWithLockAcquired:v8];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

void __37__ATXStackStateTracker_stackIsStale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __37__ATXStackStateTracker_stackIsStale___block_invoke_cold_1(a1, v3, v4);
  }

  if ([*(a1 + 40) stackWasCreatedALongTimeAgo:*(a1 + 32)])
  {
    if (![*(a1 + 40) lastStackRotationWasALongTimeAgoForStackId:*(a1 + 32)])
    {
      v6 = 0;
      goto LABEL_13;
    }

    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __37__ATXStackStateTracker_stackIsStale___block_invoke_cold_3((a1 + 32), v5);
    }

    v6 = 1;
  }

  else
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __37__ATXStackStateTracker_stackIsStale___block_invoke_cold_2((a1 + 32), v5);
    }

    v6 = 0;
  }

LABEL_13:
  *(*(*(a1 + 48) + 8) + 24) = v6;
}

- (BOOL)mostRecentRotationOfStackIsSystemInitiated:(id)initiated
{
  initiatedCopy = initiated;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalStateLock = self->_internalStateLock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__ATXStackStateTracker_mostRecentRotationOfStackIsSystemInitiated___block_invoke;
  v8[3] = &unk_27859D638;
  v6 = initiatedCopy;
  v9 = v6;
  v10 = &v11;
  [(_PASLock *)internalStateLock runWithLockAcquired:v8];
  LOBYTE(internalStateLock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalStateLock;
}

void __67__ATXStackStateTracker_mostRecentRotationOfStackIsSystemInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stackStateByStackId];
  v14 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  v4 = [v14 lastStackRotationEvent];
  v5 = [v4 reason];
  v6 = NSStringForATXHomeScreenStackChangeReason();
  if ([v5 isEqualToString:v6])
  {
    goto LABEL_4;
  }

  v7 = [v14 lastStackRotationEvent];
  v8 = [v7 reason];
  v9 = NSStringForATXHomeScreenStackChangeReason();
  if ([v8 isEqualToString:v9])
  {

LABEL_4:
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_6;
  }

  v10 = [v14 lastStackRotationEvent];
  v11 = [v10 reason];
  v12 = NSStringForATXHomeScreenStackChangeReason();
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)lastStackRotationWasALongTimeAgoForStackId:(id)id
{
  v3 = [(ATXStackStateTracker *)self lastStackRotationEvent:id];
  v4 = v3;
  if (v3)
  {
    date = [v3 date];
    [date timeIntervalSinceNow];
    v7 = v6;
    mEMORY[0x277D41B98] = [MEMORY[0x277D41B98] sharedInstance];
    [mEMORY[0x277D41B98] maxAgeOfStackSuggestionToConsiderStaleInSeconds];
    v10 = v7 < -v9;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)stackWasCreatedALongTimeAgo:(id)ago
{
  v3 = [(ATXStackStateTracker *)self stackCreationEvent:ago];
  v4 = v3;
  if (v3)
  {
    date = [v3 date];
    [date timeIntervalSinceNow];
    v7 = v6;
    mEMORY[0x277D41B98] = [MEMORY[0x277D41B98] sharedInstance];
    [mEMORY[0x277D41B98] maxAgeOfStackSuggestionToConsiderStaleInSeconds];
    v10 = v7 < -v9;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)lastUserScrollWasALongTimeAgoForStackId:(id)id
{
  idCopy = id;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalStateLock = self->_internalStateLock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__ATXStackStateTracker_lastUserScrollWasALongTimeAgoForStackId___block_invoke;
  v8[3] = &unk_27859D638;
  v6 = idCopy;
  v9 = v6;
  v10 = &v11;
  [(_PASLock *)internalStateLock runWithLockAcquired:v8];
  LOBYTE(internalStateLock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalStateLock;
}

void __64__ATXStackStateTracker_lastUserScrollWasALongTimeAgoForStackId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stackStateByStackId];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = [v4 lastUserScrollStackRotationEvent];
  v13 = [v5 date];

  v6 = v13;
  if (v13)
  {
    [v13 timeIntervalSinceNow];
    v8 = v7;
    v9 = [MEMORY[0x277D41B98] sharedInstance];
    [v9 maxAgeOfStackSuggestionToConsiderStaleInSeconds];
    v11 = -v10;

    v12 = *(*(a1 + 40) + 8);
    *(v12 + 24) = v8 < v11;
    v6 = v13;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)lastStalenessRotationWasALongTimeAgoForStackId:(id)id
{
  idCopy = id;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  internalStateLock = self->_internalStateLock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__ATXStackStateTracker_lastStalenessRotationWasALongTimeAgoForStackId___block_invoke;
  v8[3] = &unk_27859D638;
  v6 = idCopy;
  v9 = v6;
  v10 = &v11;
  [(_PASLock *)internalStateLock runWithLockAcquired:v8];
  LOBYTE(internalStateLock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return internalStateLock;
}

void __71__ATXStackStateTracker_lastStalenessRotationWasALongTimeAgoForStackId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stackStateByStackId];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v12 = [v4 dateOfLastStalenessRotation];

  v5 = v12;
  if (v12)
  {
    [v12 timeIntervalSinceNow];
    v7 = v6;
    v8 = [MEMORY[0x277D41B98] sharedInstance];
    [v8 maxAgeOfStackSuggestionToConsiderStaleInSeconds];
    v10 = -v9;

    v11 = *(*(a1 + 40) + 8);
    *(v11 + 24) = v7 < v10;
    v5 = v12;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)topWidgetUniqueIdOfStack:(id)stack
{
  stackCopy = stack;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__55;
  v16 = __Block_byref_object_dispose__55;
  v17 = 0;
  internalStateLock = self->_internalStateLock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__ATXStackStateTracker_topWidgetUniqueIdOfStack___block_invoke;
  v9[3] = &unk_27859D638;
  v6 = stackCopy;
  v10 = v6;
  v11 = &v12;
  [(_PASLock *)internalStateLock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__ATXStackStateTracker_topWidgetUniqueIdOfStack___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stackStateByStackId];
  v5 = (a1 + 32);
  v6 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  v7 = [v6 lastStackShownEvent];
  if (v7)
  {

LABEL_4:
    v9 = [v6 lastStackShownEvent];
    v10 = [v9 date];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v13 = v12;

    v14 = [v6 lastStackRotationEvent];
    v15 = [v14 date];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v18 = v17;

    v19 = [v13 laterDate:v18];

    if (v13 == v19)
    {
      [v6 lastStackShownEvent];
    }

    else
    {
      [v6 lastStackRotationEvent];
    }
    v20 = ;
    v21 = [v20 widgetUniqueId];
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    goto LABEL_14;
  }

  v8 = [v6 lastStackRotationEvent];

  if (v8)
  {
    goto LABEL_4;
  }

  v24 = __atxlog_handle_blending();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    __49__ATXStackStateTracker_topWidgetUniqueIdOfStack___block_invoke_cold_1(v5, v3);
  }

LABEL_14:
}

- (id)stackStateForStackId:(id)id
{
  idCopy = id;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__55;
  v16 = __Block_byref_object_dispose__55;
  v17 = 0;
  internalStateLock = self->_internalStateLock;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__ATXStackStateTracker_stackStateForStackId___block_invoke;
  v9[3] = &unk_27859D660;
  v11 = &v12;
  v6 = idCopy;
  v10 = v6;
  [(_PASLock *)internalStateLock runWithLockAcquired:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __45__ATXStackStateTracker_stackStateForStackId___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 stackStateByStackId];
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)stackCreationEvent:(id)event
{
  v3 = [(ATXStackStateTracker *)self stackStateForStackId:event];
  stackCreationEvent = [v3 stackCreationEvent];

  return stackCreationEvent;
}

- (id)lastStackRotationEvent:(id)event
{
  v3 = [(ATXStackStateTracker *)self stackStateForStackId:event];
  lastStackRotationEvent = [v3 lastStackRotationEvent];

  return lastStackRotationEvent;
}

- (id)lastStackShownEvent:(id)event
{
  v3 = [(ATXStackStateTracker *)self stackStateForStackId:event];
  lastStackShownEvent = [v3 lastStackShownEvent];

  return lastStackShownEvent;
}

- (id)lastUserScrollStackRotationEvent:(id)event
{
  v3 = [(ATXStackStateTracker *)self stackStateForStackId:event];
  lastUserScrollStackRotationEvent = [v3 lastUserScrollStackRotationEvent];

  return lastUserScrollStackRotationEvent;
}

- (id)layoutForLastStalenessRotation:(id)rotation
{
  v3 = [(ATXStackStateTracker *)self stackStateForStackId:rotation];
  layoutForLastStalenessRotation = [v3 layoutForLastStalenessRotation];

  return layoutForLastStalenessRotation;
}

- (void)setLayoutForLastStalenessRotation:(id)rotation stackId:(id)id date:(id)date
{
  rotationCopy = rotation;
  idCopy = id;
  dateCopy = date;
  internalStateLock = self->_internalStateLock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__ATXStackStateTracker_setLayoutForLastStalenessRotation_stackId_date___block_invoke;
  v15[3] = &unk_27859D688;
  v16 = idCopy;
  v17 = rotationCopy;
  v18 = dateCopy;
  selfCopy = self;
  v12 = dateCopy;
  v13 = rotationCopy;
  v14 = idCopy;
  [(_PASLock *)internalStateLock runWithLockAcquired:v15];
}

void __71__ATXStackStateTracker_setLayoutForLastStalenessRotation_stackId_date___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 stackStateByStackId];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];

  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [v9 stackStateByStackId];
    [v6 setObject:v5 forKeyedSubscript:*(a1 + 32)];
  }

  v7 = [v9 stackStateByStackId];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];

  [v8 setLayoutForLastStalenessRotation:*(a1 + 40)];
  [v8 setDateOfLastStalenessRotation:*(a1 + 48)];
  [*(a1 + 56) coalescedPersistInternalState];
}

- (id)lastThreeUserVisitDatesOfPage:(unint64_t)page
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__55;
  v11 = __Block_byref_object_dispose__55;
  v12 = 0;
  internalStateLock = self->_internalStateLock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__ATXStackStateTracker_lastThreeUserVisitDatesOfPage___block_invoke;
  v6[3] = &unk_27859D6B0;
  v6[4] = &v7;
  v6[5] = page;
  [(_PASLock *)internalStateLock runWithLockAcquired:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __54__ATXStackStateTracker_lastThreeUserVisitDatesOfPage___block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 lastThreeUserVisitDatesOfPages];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v4 = [v7 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __64__ATXStackStateTracker_updateStackRotationEventsByQueryingBiome__block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 eventBody];
    v7 = [v6 homeScreenEvent];

    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = [v7 eventTypeString];

    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = *(a1 + 32);
    v10 = [v7 date];
    v11 = [v9 earlierDate:v10];
    v12 = [v7 date];

    if (v11 == v12)
    {
      v16 = objc_alloc(MEMORY[0x277CBEAA8]);
      [v3 timestamp];
      v17 = [v16 initWithTimeIntervalSinceReferenceDate:?];
      v18 = __atxlog_handle_blending();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v7 date];
        v20 = *(a1 + 32);
        v26 = 138543874;
        v27 = v19;
        v28 = 2114;
        v29 = v20;
        v30 = 2114;
        v31 = v17;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Encountered a BiomeEvent that has a date before the queryStartDate. ATXHomeScreenEvent Date: %{public}@, Query Start Date: %{public}@, Biome Event Date: %{public}@", &v26, 0x20u);
      }

      goto LABEL_16;
    }

    v13 = [v7 eventTypeString];
    if ([v13 isEqualToString:@"Unknown"])
    {
      v14 = 0;
LABEL_7:

      v15 = [v7 stackId];

      if (!v15)
      {
LABEL_17:

        goto LABEL_18;
      }

      if (v14 == 3)
      {
        v23 = [v7 reason];
        v24 = NSStringForATXHomeScreenStackChangeReason();
        v25 = [v23 isEqualToString:v24];

        v15 = v25 ^ 1u;
        goto LABEL_17;
      }

      v15 = 1;
      if (v14 == 14 || v14 == 16)
      {
        goto LABEL_17;
      }

LABEL_16:
      v15 = 0;
      goto LABEL_17;
    }

    if (([v13 isEqualToString:@"HomeScreenPageShown"] & 1) == 0)
    {
      if ([v13 isEqualToString:@"HomeScreenDisappeared"])
      {
        v14 = 2;
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"StackChanged"])
      {
        v14 = 3;
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"WidgetTapped"])
      {
        v14 = 4;
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"WidgetLongLook"])
      {
        v14 = 5;
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"WidgetUserFeedback"])
      {
        v14 = 6;
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"UserStackConfigChanged"])
      {
        v14 = 7;
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"DeviceLocked"])
      {
        v14 = 8;
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"DeviceUnlocked"])
      {
        v14 = 9;
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"PinnedWidgetAdded"])
      {
        v14 = 10;
        goto LABEL_7;
      }

      if ([v13 isEqualToString:@"PinnedWidgetDeleted"])
      {
        v14 = 11;
        goto LABEL_7;
      }

      if (([v13 isEqualToString:@"SpecialPageAppeared"] & 1) == 0)
      {
        if ([v13 isEqualToString:@"SpecialPageDisappeared"])
        {
          v14 = 13;
        }

        else if ([v13 isEqualToString:@"StackShown"])
        {
          v14 = 14;
        }

        else if ([v13 isEqualToString:@"StackDisappeared"])
        {
          v14 = 15;
        }

        else if ([v13 isEqualToString:@"StackCreated"])
        {
          v14 = 16;
        }

        else if ([v13 isEqualToString:@"StackDeleted"])
        {
          v14 = 17;
        }

        else if ([v13 isEqualToString:@"WidgetAddedToStack"])
        {
          v14 = 18;
        }

        else if ([v13 isEqualToString:@"WidgetRemovedFromStack"])
        {
          v14 = 19;
        }

        else if ([v13 isEqualToString:@"StackVisibilityChanged"])
        {
          v14 = 20;
        }

        else if ([v13 isEqualToString:@"AppAdded"])
        {
          v14 = 21;
        }

        else if ([v13 isEqualToString:@"AppRemoved"])
        {
          v14 = 22;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_7;
      }
    }

    v15 = 1;
    goto LABEL_17;
  }

  v15 = 0;
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

void __64__ATXStackStateTracker_updateStackRotationEventsByQueryingBiome__block_invoke_183(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 eventBody];
    v7 = [v6 homeScreenEvent];

    v8 = [v7 eventTypeString];
    if ([v8 isEqualToString:@"Unknown"])
    {
      v9 = 0;
    }

    else
    {
      if ([v8 isEqualToString:@"HomeScreenPageShown"])
      {

        v23 = *(a1 + 32);
        v12 = [v7 metadata];
        v24 = [v12 pageIndex];
        v25 = [v7 date];
        [v23 updateLastThreeUserVisitDatesIfNecessaryForPage:v24 date:v25];
LABEL_13:

LABEL_14:
LABEL_31:

LABEL_32:
        goto LABEL_33;
      }

      if ([v8 isEqualToString:@"HomeScreenDisappeared"])
      {
        v9 = 2;
      }

      else if ([v8 isEqualToString:@"StackChanged"])
      {
        v9 = 3;
      }

      else if ([v8 isEqualToString:@"WidgetTapped"])
      {
        v9 = 4;
      }

      else if ([v8 isEqualToString:@"WidgetLongLook"])
      {
        v9 = 5;
      }

      else if ([v8 isEqualToString:@"WidgetUserFeedback"])
      {
        v9 = 6;
      }

      else if ([v8 isEqualToString:@"UserStackConfigChanged"])
      {
        v9 = 7;
      }

      else if ([v8 isEqualToString:@"DeviceLocked"])
      {
        v9 = 8;
      }

      else if ([v8 isEqualToString:@"DeviceUnlocked"])
      {
        v9 = 9;
      }

      else if ([v8 isEqualToString:@"PinnedWidgetAdded"])
      {
        v9 = 10;
      }

      else if ([v8 isEqualToString:@"PinnedWidgetDeleted"])
      {
        v9 = 11;
      }

      else
      {
        if ([v8 isEqualToString:@"SpecialPageAppeared"])
        {

          v51 = [v7 metadata];
          v52 = [v51 pageIndex];
          v53 = [v52 unsignedIntegerValue];

          if (v53 != 2)
          {
            goto LABEL_32;
          }

          v54 = *(a1 + 32);
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*MEMORY[0x277CEBAE8]];
          v24 = [v7 date];
          [v54 updateLastThreeUserVisitDatesIfNecessaryForPage:v12 date:v24];
          goto LABEL_14;
        }

        if ([v8 isEqualToString:@"SpecialPageDisappeared"])
        {
          v9 = 13;
        }

        else if ([v8 isEqualToString:@"StackShown"])
        {
          v9 = 14;
        }

        else if ([v8 isEqualToString:@"StackDisappeared"])
        {
          v9 = 15;
        }

        else if ([v8 isEqualToString:@"StackCreated"])
        {
          v9 = 16;
        }

        else if ([v8 isEqualToString:@"StackDeleted"])
        {
          v9 = 17;
        }

        else if ([v8 isEqualToString:@"WidgetAddedToStack"])
        {
          v9 = 18;
        }

        else if ([v8 isEqualToString:@"WidgetRemovedFromStack"])
        {
          v9 = 19;
        }

        else if ([v8 isEqualToString:@"StackVisibilityChanged"])
        {
          v9 = 20;
        }

        else if ([v8 isEqualToString:@"AppAdded"])
        {
          v9 = 21;
        }

        else if ([v8 isEqualToString:@"AppRemoved"])
        {
          v9 = 22;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    v10 = [*(a1 + 32) stackStateByStackId];
    v11 = [v7 stackId];
    v12 = [v10 objectForKeyedSubscript:v11];

    if (!v12)
    {
      v12 = objc_opt_new();
      v13 = [*(a1 + 32) stackStateByStackId];
      v14 = [v7 stackId];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }

    v15 = __atxlog_handle_blending();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v9 == 14)
    {
      if (v16)
      {
        v26 = [v7 stackId];
        v27 = [v7 date];
        v28 = [v7 stackId];
        v29 = [v7 eventTypeString];
        v30 = [v7 widgetBundleId];
        v31 = [v7 reason];
        *buf = 138544642;
        v60 = v26;
        v61 = 2114;
        v62 = v27;
        v63 = 2112;
        v64 = v28;
        v65 = 2112;
        v66 = v29;
        v67 = 2112;
        v68 = v30;
        v69 = 2114;
        v70 = v31;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Found a stack shown event for stack %{public}@: %{public}@ - %@: %@ - %@ - %{public}@", buf, 0x3Eu);
      }

      [v12 setLastStackShownEvent:v7];
      goto LABEL_31;
    }

    if (v9 == 16)
    {
      if (v16)
      {
        v17 = [v7 stackId];
        v18 = [v7 date];
        v19 = [v7 stackId];
        v20 = [v7 eventTypeString];
        v21 = [v7 widgetBundleId];
        v22 = [v7 reason];
        *buf = 138544642;
        v60 = v17;
        v61 = 2114;
        v62 = v18;
        v63 = 2112;
        v64 = v19;
        v65 = 2112;
        v66 = v20;
        v67 = 2112;
        v68 = v21;
        v69 = 2114;
        v70 = v22;
        _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Found a stack creation event for stack %{public}@: %{public}@ - %@: %@ - %@ - %{public}@", buf, 0x3Eu);
      }

      [v12 setStackCreationEvent:v7];
      goto LABEL_31;
    }

    if (v16)
    {
      v57 = [v7 stackId];
      v32 = [v7 date];
      v55 = [v7 stackId];
      [v7 eventTypeString];
      v33 = v58 = a1;
      v34 = [v7 widgetBundleId];
      v35 = [v7 reason];
      v56 = [v7 metadata];
      v36 = [v56 isStalenessRotation];
      v37 = [v36 BOOLValue];
      *buf = 138544898;
      v38 = @"NO";
      v60 = v57;
      v61 = 2114;
      if (v37)
      {
        v38 = @"YES";
      }

      v62 = v32;
      v63 = 2112;
      v64 = v55;
      v65 = 2112;
      v66 = v33;
      v67 = 2112;
      v68 = v34;
      v69 = 2114;
      v70 = v35;
      v71 = 2114;
      v72 = v38;
      _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEFAULT, "Found a stack rotation event for stack %{public}@: %{public}@ - %@: %@ - %@ - %{public}@ - isStalenessRotation %{public}@", buf, 0x48u);

      a1 = v58;
    }

    [v12 setLastStackRotationEvent:v7];
    v39 = [v7 reason];
    v40 = NSStringForATXHomeScreenStackChangeReason();
    v41 = [v39 isEqualToString:v40];

    if (v41)
    {
      [v12 setLastUserScrollStackRotationEvent:v7];
      goto LABEL_31;
    }

    v42 = [v7 reason];
    v43 = NSStringForATXHomeScreenStackChangeReason();
    v44 = [v42 isEqualToString:v43];

    if (!v44)
    {
      goto LABEL_31;
    }

    v45 = [v7 metadata];
    v46 = [v45 isStalenessRotation];
    v47 = [v46 BOOLValue];

    if (!v47)
    {
      goto LABEL_31;
    }

    v48 = [v7 date];
    [v12 setDateOfLastStalenessRotation:v48];

    v24 = [v7 blendingCacheId];
    v49 = *(a1 + 40);
    v25 = [v7 stackId];
    [v49 setObject:v24 forKeyedSubscript:v25];
    goto LABEL_13;
  }

LABEL_33:

  v50 = *MEMORY[0x277D85DE8];
}

- (id)_blendingCacheIdToStackIdMap:(id)map
{
  mapCopy = map;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ATXStackStateTracker__blendingCacheIdToStackIdMap___block_invoke;
  v7[3] = &unk_27859D748;
  v5 = v4;
  v8 = v5;
  [mapCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __53__ATXStackStateTracker__blendingCacheIdToStackIdMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    v6 = objc_opt_new();
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

  [v6 addObject:v7];
}

- (void)cleanupOldDataWithHomeScreenPages:(id)pages
{
  v41 = *MEMORY[0x277D85DE8];
  pagesCopy = pages;
  v4 = __atxlog_handle_blending();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up state in ATXStackStateTracker...", buf, 2u);
  }

  v5 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = pagesCopy;
  v6 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v26 = *v35;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        config = [v9 config];
        stacks = [config stacks];

        v13 = [stacks countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v31;
          do
          {
            v16 = 0;
            do
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(stacks);
              }

              v17 = *(*(&v30 + 1) + 8 * v16);
              v18 = objc_autoreleasePoolPush();
              identifier = [v17 identifier];
              [v5 addObject:identifier];

              objc_autoreleasePoolPop(v18);
              ++v16;
            }

            while (v14 != v16);
            v14 = [stacks countByEnumeratingWithState:&v30 objects:v39 count:16];
          }

          while (v14);
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v8 != v7);
      v7 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v7);
  }

  internalStateLock = self->_internalStateLock;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __58__ATXStackStateTracker_cleanupOldDataWithHomeScreenPages___block_invoke;
  v27[3] = &unk_27859D770;
  v28 = v5;
  selfCopy = self;
  v21 = v5;
  [(_PASLock *)internalStateLock runWithLockAcquired:v27];
  v22 = __atxlog_handle_blending();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "Done cleaning up state in ATXStackStateTracker.", buf, 2u);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __58__ATXStackStateTracker_cleanupOldDataWithHomeScreenPages___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  v5 = [v3 stackStateByStackId];
  v6 = [v5 allKeys];
  v7 = [v4 initWithArray:v6];

  [v7 minusSet:*(a1 + 32)];
  v8 = __atxlog_handle_blending();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "Removing entries for the following stacks from ATXStackStateTracker: %@", &v15, 0xCu);
  }

  v9 = [v3 stackStateByStackId];
  v10 = [v7 allObjects];
  [v9 removeObjectsForKeys:v10];

  v11 = __atxlog_handle_blending();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v3 stackStateByStackId];
    v13 = [v12 count];
    v15 = 134217984;
    v16 = v13;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "Entries for %lu stacks remain in ATXStackStateTracker", &v15, 0xCu);
  }

  [*(a1 + 40) coalescedPersistInternalState];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleSigterm
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ATXStackStateTracker_handleSigterm__block_invoke;
  block[3] = &unk_278596BB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __37__ATXStackStateTracker_handleSigterm__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8))
  {
    return [*(v1 + 24) runImmediately];
  }

  return result;
}

void __44__ATXStackStateTracker_persistInternalState__block_invoke_196(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (BOOL)loadInternalState
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  dataFromDisk = [(ATXStackStateTracker *)self dataFromDisk];
  if (dataFromDisk)
  {
    v5 = objc_autoreleasePoolPush();
    v21 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataFromDisk error:&v21];
    v7 = v21;
    objc_autoreleasePoolPop(v5);
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    v9 = !v8;
    if (v8)
    {
      v15 = __atxlog_handle_blending();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(ATXStackStateTracker *)v7 loadInternalState];
      }

      v16 = objc_alloc(MEMORY[0x277D425F8]);
      v12 = objc_opt_new();
      v17 = [v16 initWithGuardedData:v12];
      internalStateLock = self->_internalStateLock;
      self->_internalStateLock = v17;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v6];
      v11 = self->_internalStateLock;
      self->_internalStateLock = v10;

      v12 = __atxlog_handle_blending();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = "[ATXStackStateTracker loadInternalState]";
        _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: Success", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = __atxlog_handle_blending();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXStackStateTracker loadInternalState];
    }

    v7 = objc_opt_new();
    v14 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v7];
    v9 = 0;
    v6 = self->_internalStateLock;
    self->_internalStateLock = v14;
  }

  objc_autoreleasePoolPop(v3);
  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)dataFromDisk
{
  v19 = *MEMORY[0x277D85DE8];
  memset(&v15.st_size, 0, 48);
  p_path = &self->_path;
  if (!lstat([(NSString *)self->_path fileSystemRepresentation:0], &v15) && v15.st_size > 0x200000)
  {
    v3 = __atxlog_handle_blending();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(ATXStackStateTracker *)v3 dataFromDisk];
    }

LABEL_16:
    v6 = 0;
    goto LABEL_17;
  }

  v4 = open([(NSString *)*p_path UTF8String], 0);
  if (v4 == -1)
  {
    v7 = *__error();
    v8 = __atxlog_handle_blending();
    v9 = v8;
    if (v7 == 2)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *p_path;
        v11 = __error();
        v12 = strerror(*v11);
        *buf = 138543618;
        *&buf[4] = v10;
        v17 = 2082;
        v18 = v12;
        _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "Stack state tracker file at path %{public}@ exists but we were unable to read it. Error: %{public}s", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXStackStateTracker *)p_path dataFromDisk];
    }

    goto LABEL_16;
  }

  v5 = v4;
  *buf = 0;
  ATXCacheFileRead();
  if ((v5 & 0x80000000) == 0)
  {
    close(v5);
  }

  v6 = *buf;

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

void __37__ATXStackStateTracker_stackIsStale___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = [a2 stackStateByStackId];
  v7 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v9 = 138543618;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  _os_log_debug_impl(&dword_2263AA000, a3, OS_LOG_TYPE_DEBUG, "Stack state for stackId %{public}@:\n%{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __37__ATXStackStateTracker_stackIsStale___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Stack %{public}@ is not stale because it was created recently.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __37__ATXStackStateTracker_stackIsStale___block_invoke_cold_3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Stack %{public}@ is stale because no rotations have happened recently.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __49__ATXStackStateTracker_topWidgetUniqueIdOfStack___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = [a2 stackStateByStackId];
  v10 = [v3 allKeys];
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void __49__ATXStackStateTracker_updateStackRotationEvents__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __64__ATXStackStateTracker_updateStackRotationEventsByQueryingBiome__block_invoke_181_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Biome query for HomeScreen UI events completed with failure. Error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __44__ATXStackStateTracker_persistInternalState__block_invoke_cold_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  v2 = *__error();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
  v9 = *MEMORY[0x277D85DE8];
}

void __44__ATXStackStateTracker_persistInternalState__block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadInternalState
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dataFromDisk
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *self;
  v2 = *__error();
  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
  v9 = *MEMORY[0x277D85DE8];
}

@end