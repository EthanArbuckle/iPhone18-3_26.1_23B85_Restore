@interface ACHGizmoAwardingScheduler
- (ACHGizmoAwardingScheduler)initWithClient:(id)a3 dataStore:(id)a4 awardingEngine:(id)a5;
- (void)_queue_cancelRetryAwardingEvaluationTimer;
- (void)_queue_handleProtectedDataChange:(BOOL)a3;
- (void)_queue_requestRetryingAwardingEvaluationWithCompletion:(id)a3;
- (void)_queue_scheduleRetryAwardingEvaluation;
- (void)_startUp;
- (void)activate;
- (void)dataStoreDidPopulate:(id)a3;
- (void)dealloc;
- (void)performAfterFirstEvaluation:(id)a3;
- (void)requestAwardingEvaluationWithCompletion:(id)a3;
@end

@implementation ACHGizmoAwardingScheduler

- (ACHGizmoAwardingScheduler)initWithClient:(id)a3 dataStore:(id)a4 awardingEngine:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = ACHGizmoAwardingScheduler;
  v11 = [(ACHGizmoAwardingScheduler *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_client, v8);
    objc_storeWeak(&v12->_dataStore, v9);
    objc_storeWeak(&v12->_awardingEngine, v10);
    v12->_dataStoreHasPopulated = 0;
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    blocksWaitingOnFirstEvaluation = v12->_blocksWaitingOnFirstEvaluation;
    v12->_blocksWaitingOnFirstEvaluation = v13;

    v15 = HKCreateSerialDispatchQueue();
    internalQueue = v12->_internalQueue;
    v12->_internalQueue = v15;

    *&v12->_retryInterval = xmmword_221E5E7A0;
  }

  return v12;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);
  [WeakRetained removeObserver:self];

  if (notify_is_valid_token(self->_protectedDataToken))
  {
    notify_cancel(self->_protectedDataToken);
  }

  v4.receiver = self;
  v4.super_class = ACHGizmoAwardingScheduler;
  [(ACHGizmoAwardingScheduler *)&v4 dealloc];
}

- (void)activate
{
  v3 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Activating gizmo scheduler", v4, 2u);
  }

  [(ACHGizmoAwardingScheduler *)self _startUp];
}

- (void)_startUp
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);
  [WeakRetained addObserver:self];

  v4 = [*MEMORY[0x277CE8C10] UTF8String];
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__ACHGizmoAwardingScheduler__startUp__block_invoke;
  handler[3] = &unk_278491998;
  handler[4] = self;
  notify_register_dispatch(v4, &self->_protectedDataToken, internalQueue, handler);
}

void __37__ACHGizmoAwardingScheduler__startUp__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 58) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 8));
    [v1 _queue_handleProtectedDataChange:{objc_msgSend(WeakRetained, "isProtectedDataAvailable")}];
  }
}

- (void)_queue_handleProtectedDataChange:(BOOL)a3
{
  v3 = a3;
  [(ACHGizmoAwardingScheduler *)self _queue_cancelRetryAwardingEvaluationTimer];
  if (v3 && self->_needsRetry)
  {
    v5 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Protected data available and retry needed, scheduling immediate evaluation", v6, 2u);
    }

    [(ACHGizmoAwardingScheduler *)self _queue_requestRetryingAwardingEvaluationWithCompletion:0];
  }
}

- (void)requestAwardingEvaluationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Awarding evaluation requested", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_awardingEngine);
  [WeakRetained requestHistoricalEvaluationForAllSourcesWithCompletion:v4];
}

- (void)dataStoreDidPopulate:(id)a3
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ACHGizmoAwardingScheduler_dataStoreDidPopulate___block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_queue_requestRetryingAwardingEvaluationWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Retrying awarding evaluation requested", buf, 2u);
  }

  self->_needsRetry = 0;
  [(ACHGizmoAwardingScheduler *)self _queue_cancelRetryAwardingEvaluationTimer];
  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  [@"com.apple.activityawardsd.watch.full_history_evaluation" UTF8String];
  v16 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained(&self->_awardingEngine);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__ACHGizmoAwardingScheduler__queue_requestRetryingAwardingEvaluationWithCompletion___block_invoke;
  v8[3] = &unk_2784919E8;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  v10 = buf;
  [WeakRetained requestHistoricalEvaluationForAllSourcesWithCompletion:v8];

  _Block_object_dispose(buf, 8);
}

void __84__ACHGizmoAwardingScheduler__queue_requestRetryingAwardingEvaluationWithCompletion___block_invoke(void *a1, char a2, void *a3)
{
  v5 = a3;
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(v7 + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ACHGizmoAwardingScheduler__queue_requestRetryingAwardingEvaluationWithCompletion___block_invoke_2;
  block[3] = &unk_2784919C0;
  v17 = a2;
  v13 = v5;
  v14 = v7;
  v9 = v6;
  v10 = a1[6];
  v15 = v9;
  v16 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void __84__ACHGizmoAwardingScheduler__queue_requestRetryingAwardingEvaluationWithCompletion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) != 1 || *(a1 + 32))
  {
    *(*(a1 + 40) + 56) = 1;
    [*(a1 + 40) _queue_scheduleRetryAwardingEvaluation];
  }

  v2 = *(a1 + 40);
  v3 = *(v2 + 80);
  if (v3)
  {
    (*(v3 + 16))(v3, *(a1 + 64), *(a1 + 32));
    v2 = *(a1 + 40);
  }

  if ((*(v2 + 57) & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = *(v2 + 32);
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v13 + 1) + 8 * v8) + 16))(*(*(&v13 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    [*(*(a1 + 40) + 32) removeAllObjects];
    *(*(a1 + 40) + 57) = 1;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, *(a1 + 64), *(a1 + 32));
  }

  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queue_scheduleRetryAwardingEvaluation
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if (self->_dataStoreHasPopulated)
  {
    v3 = (self->_retryInterval * 1000000000.0);
    v4 = (self->_retryLeeway * 1000000000.0);
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
    retryTimer = self->_retryTimer;
    self->_retryTimer = v5;

    v7 = self->_retryTimer;
    v8 = dispatch_time(0, v3);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, v4);
    v9 = self->_retryTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __67__ACHGizmoAwardingScheduler__queue_scheduleRetryAwardingEvaluation__block_invoke;
    handler[3] = &unk_278490870;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(self->_retryTimer);
  }
}

- (void)_queue_cancelRetryAwardingEvaluationTimer
{
  dispatch_assert_queue_V2(self->_internalQueue);
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    dispatch_source_cancel(retryTimer);
    v4 = self->_retryTimer;
    self->_retryTimer = 0;
  }
}

- (void)performAfterFirstEvaluation:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ACHGizmoAwardingScheduler_performAfterFirstEvaluation___block_invoke;
  v7[3] = &unk_278491948;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __57__ACHGizmoAwardingScheduler_performAfterFirstEvaluation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 57) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(v2 + 32);
    v6 = [*(a1 + 40) copy];
    v5 = _Block_copy(v6);
    [v4 addObject:v5];
  }
}

@end