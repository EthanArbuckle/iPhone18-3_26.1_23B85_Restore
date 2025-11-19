@interface ACHEarnedInstanceAwardingEngine
- (ACHEarnedInstanceAwardingEngine)initWithClient:(id)a3 assertionClient:(id)a4 dataStore:(id)a5 earnedInstanceStore:(id)a6 historicalEvaluationPolicy:(id *)a7;
- (id)currentDate;
- (id)sourceRecordForSource:(id)a3;
- (unint64_t)sourceCount;
- (void)_queue_evaluateHistoryForSource:(id)a3 completion:(id)a4;
- (void)_queue_performQueuedEvaluations;
- (void)_queue_protectedDataBecameAvailable;
- (void)_requestHistoricalEvaluationForAllSourcesWithCompletion:(id)a3;
- (void)activate;
- (void)dealloc;
- (void)deregisterSource:(id)a3;
- (void)registerSource:(id)a3;
- (void)requestHistoricalEvaluationForAllSourcesWithCompletion:(id)a3;
- (void)requestIncrementalEvaluationForSource:(id)a3 evaluationBlock:(id)a4;
@end

@implementation ACHEarnedInstanceAwardingEngine

- (ACHEarnedInstanceAwardingEngine)initWithClient:(id)a3 assertionClient:(id)a4 dataStore:(id)a5 earnedInstanceStore:(id)a6 historicalEvaluationPolicy:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v34.receiver = self;
  v34.super_class = ACHEarnedInstanceAwardingEngine;
  v16 = [(ACHEarnedInstanceAwardingEngine *)&v34 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_client, v12);
    objc_storeWeak(&v17->_assertionClient, v13);
    objc_storeWeak(&v17->_dataStore, v14);
    objc_storeWeak(&v17->_earnedInstanceStore, v15);
    v18 = *&a7->var2;
    *&v17->_historicalEvaluationPolicy.startDate = *&a7->var0;
    *&v17->_historicalEvaluationPolicy.clearDataStoreBeforeHistoricalRun = v18;
    v17->_isActivated = 0;
    v19 = HKCreateSerialDispatchQueue();
    internalQueue = v17->_internalQueue;
    v17->_internalQueue = v19;

    v21 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v17->_calendar;
    v17->_calendar = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sourceRegistry = v17->_sourceRegistry;
    v17->_sourceRegistry = v23;

    v25 = [MEMORY[0x277CBEB38] dictionary];
    queuedIncrementalEvaluations = v17->_queuedIncrementalEvaluations;
    v17->_queuedIncrementalEvaluations = v25;

    objc_initWeak(&location, v17);
    v27 = [*MEMORY[0x277CE8C10] UTF8String];
    v28 = v17->_internalQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __123__ACHEarnedInstanceAwardingEngine_initWithClient_assertionClient_dataStore_earnedInstanceStore_historicalEvaluationPolicy___block_invoke;
    handler[3] = &unk_278492B90;
    v31 = v12;
    objc_copyWeak(&v32, &location);
    notify_register_dispatch(v27, &v17->_protectedDataToken, v28, handler);
    objc_destroyWeak(&v32);

    objc_destroyWeak(&location);
  }

  return v17;
}

void __123__ACHEarnedInstanceAwardingEngine_initWithClient_assertionClient_dataStore_earnedInstanceStore_historicalEvaluationPolicy___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isProtectedDataAvailable])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _queue_protectedDataBecameAvailable];
  }
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_protectedDataToken))
  {
    notify_cancel(self->_protectedDataToken);
  }

  v3.receiver = self;
  v3.super_class = ACHEarnedInstanceAwardingEngine;
  [(ACHEarnedInstanceAwardingEngine *)&v3 dealloc];
}

- (void)activate
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ACHEarnedInstanceAwardingEngine_activate__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __43__ACHEarnedInstanceAwardingEngine_activate__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 97);
  v3 = ACHLogAwardEngine();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __43__ACHEarnedInstanceAwardingEngine_activate__block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Activating Awarding Engine", v12, 2u);
    }

    *(*(a1 + 32) + 97) = 1;
  }
}

- (unint64_t)sourceCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__ACHEarnedInstanceAwardingEngine_sourceCount__block_invoke;
  v5[3] = &unk_278490FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __46__ACHEarnedInstanceAwardingEngine_sourceCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)sourceRecordForSource:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__29;
  v16 = __Block_byref_object_dispose__29;
  v17 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ACHEarnedInstanceAwardingEngine_sourceRecordForSource___block_invoke;
  block[3] = &unk_278491010;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(internalQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__ACHEarnedInstanceAwardingEngine_sourceRecordForSource___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)registerSource:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_283556FF8])
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__ACHEarnedInstanceAwardingEngine_registerSource___block_invoke;
    v7[3] = &unk_278490898;
    v7[4] = self;
    v8 = v4;
    dispatch_async(internalQueue, v7);
  }

  else
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceAwardingEngine registerSource:];
    }
  }
}

void __50__ACHEarnedInstanceAwardingEngine_registerSource___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  v4 = [*(a1 + 40) uniqueName];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__ACHEarnedInstanceAwardingEngine_registerSource___block_invoke_cold_1(v2);
    }
  }

  else
  {
    v7 = [ACHEarnedInstanceAwardingSourceRecord alloc];
    v8 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
    v10 = objc_loadWeakRetained((*(a1 + 32) + 24));
    v11 = [*(a1 + 32) currentDate];
    v6 = [(ACHEarnedInstanceAwardingSourceRecord *)v7 initWithSource:v8 earnedInstanceStore:WeakRetained dataStore:v10 registrationDate:v11];

    v12 = *(a1 + 40);
    v13 = *(*(a1 + 32) + 64);
    v14 = [v12 uniqueName];
    [v13 setObject:v6 forKeyedSubscript:v14];

    v15 = ACHLogAwardEngine();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*v2 uniqueName];
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, "Awarding engine registered source with name [%{public}@]", &v18, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deregisterSource:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_283556FF8])
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__ACHEarnedInstanceAwardingEngine_deregisterSource___block_invoke;
    v7[3] = &unk_278490898;
    v7[4] = self;
    v8 = v4;
    dispatch_async(internalQueue, v7);
  }

  else
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceAwardingEngine deregisterSource:];
    }
  }
}

void __52__ACHEarnedInstanceAwardingEngine_deregisterSource___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  v4 = [*(a1 + 40) uniqueName];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 32) + 64);
    v8 = [v6 uniqueName];
    [v7 removeObjectForKey:v8];

    v9 = ACHLogAwardEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*v2 uniqueName];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Awarding engine deregistered source with name [%{public}@]", &v12, 0xCu);
    }
  }

  else
  {
    v9 = ACHLogAwardEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __52__ACHEarnedInstanceAwardingEngine_deregisterSource___block_invoke_cold_1(v2);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)requestIncrementalEvaluationForSource:(id)a3 evaluationBlock:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ACHLogAwardEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Incremental evaluation requested for source with name: %{public}@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke;
  block[3] = &unk_278491428;
  block[4] = self;
  v14 = v6;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(internalQueue, block);

  v12 = *MEMORY[0x277D85DE8];
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(v2 + 97))
  {
    v3 = (a1 + 40);
    v4 = [*(v2 + 64) objectForKeyedSubscript:*(a1 + 40)];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 lastCompletedEvaluationInterval];

      if (v6)
      {
        if (*(*(a1 + 32) + 96) == 1)
        {
          v7 = ACHLogAwardEngine();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *v3;
            *buf = 138543362;
            v37 = v8;
            _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Queuing incremental request for %{public}@ because historical run in progress", buf, 0xCu);
          }

          v9 = [*(a1 + 48) copy];
          v10 = _Block_copy(v9);
          [*(*(a1 + 32) + 104) setObject:v10 forKeyedSubscript:*(a1 + 40)];
        }

        else
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Achievements Incremental Evaluation - %@", *(a1 + 40)];
          WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
          v35 = 0;
          v12 = [WeakRetained acquireDatabaseAssertionWithIdentifier:v9 error:&v35];
          v13 = v35;

          v14 = ACHLogAwardEngine();
          v15 = v14;
          if (v12)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v16 = *v3;
              *buf = 138543362;
              v37 = v16;
              _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, "Acquired assertion, proceeding with evaluation and removing queued evaluation if necessary for %{public}@", buf, 0xCu);
            }

            [*(*(a1 + 32) + 104) removeObjectForKey:*(a1 + 40)];
            v17 = [v5 lastScheduledEvaluationInterval];
            v18 = [v17 endDate];
            v19 = v18;
            if (v18)
            {
              v20 = v18;
            }

            else
            {
              v24 = [v5 lastCompletedEvaluationInterval];
              v20 = [v24 endDate];
            }

            v23 = [*(a1 + 32) currentDate];
            if ([v20 compare:v23] == 1)
            {
              v25 = ACHLogAwardEngine();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_2(v3);
              }
            }

            else
            {
              v26 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v20 endDate:v23];
              v27 = ACHLogAwardEngine();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v37 = v26;
                _os_log_impl(&dword_221DDC000, v27, OS_LOG_TYPE_DEFAULT, "Incremental evaluation date interval is %{public}@", buf, 0xCu);
              }

              v32[0] = MEMORY[0x277D85DD0];
              v32[1] = 3221225472;
              v32[2] = __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_359;
              v32[3] = &unk_278492BB8;
              v28 = *(a1 + 48);
              v33 = v26;
              v34 = v28;
              v30[0] = MEMORY[0x277D85DD0];
              v30[1] = 3221225472;
              v30[2] = __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_2;
              v30[3] = &unk_278492BE0;
              v30[4] = *(a1 + 32);
              v31 = v12;
              v25 = v26;
              [v5 addEvaluationOperationWithDateInterval:v25 evaluationBlock:v32 completion:v30];
            }
          }

          else
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_3((a1 + 40));
            }

            v21 = ACHLogAwardEngine();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = *v3;
              *buf = 138543362;
              v37 = v22;
              _os_log_impl(&dword_221DDC000, v21, OS_LOG_TYPE_DEFAULT, "Queuing incremental request for %{public}@ until protected data becomes available", buf, 0xCu);
            }

            v20 = [*(a1 + 48) copy];
            v23 = _Block_copy(v20);
            [*(*(a1 + 32) + 104) setObject:v23 forKeyedSubscript:*(a1 + 40)];
          }
        }
      }

      else
      {
        v9 = ACHLogAwardEngine();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_4((a1 + 40));
        }
      }
    }

    else
    {
      v9 = ACHLogAwardEngine();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_5((a1 + 40));
      }
    }
  }

  else
  {
    v5 = ACHLogAwardEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_1(a1);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v7 = 0;
  [WeakRetained invalidateAssertionWithToken:v4 error:&v7];
  v5 = v7;

  if (v5)
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_2_cold_1(v3);
    }
  }
}

- (void)requestHistoricalEvaluationForAllSourcesWithCompletion:(id)a3
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke;
  block[3] = &unk_278490FE8;
  block[4] = self;
  block[5] = &v32;
  dispatch_sync(internalQueue, block);
  if (v33[3])
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "Requesting historical evaluation for all sources", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_assertionClient);
    v30 = 0;
    v8 = [WeakRetained acquireDatabaseAssertionWithIdentifier:@"Achievements Historical Evaluation" duration:&v30 error:600.0];
    v9 = v30;

    if (v8)
    {
      objc_initWeak(buf, self);
      v10 = [MEMORY[0x277CBEAA8] date];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374;
      v24[3] = &unk_278492C08;
      v11 = v10;
      v25 = v11;
      objc_copyWeak(&v28, buf);
      v26 = v8;
      v27 = v4;
      [(ACHEarnedInstanceAwardingEngine *)self _requestHistoricalEvaluationForAllSourcesWithCompletion:v24];

      objc_destroyWeak(&v28);
      objc_destroyWeak(buf);
    }

    else
    {
      v22 = ACHLogAwardEngine();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [ACHEarnedInstanceAwardingEngine requestHistoricalEvaluationForAllSourcesWithCompletion:];
      }

      (*(v4 + 2))(v4, 0, v9);
    }
  }

  else
  {
    v12 = ACHLogAwardEngine();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceAwardingEngine *)v12 requestHistoricalEvaluationForAllSourcesWithCompletion:v13, v14, v15, v16, v17, v18, v19];
    }

    v20 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    v37[0] = @"Awarding Engine not activated";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v9 = [v20 errorWithDomain:@"com.apple.ActivityAchievements" code:11 userInfo:v21];

    (*(v4 + 2))(v4, 0, v9);
  }

  _Block_object_dispose(&v32, 8);
  v23 = *MEMORY[0x277D85DE8];
}

void __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSinceDate:*(a1 + 32)];
  v8 = v7;

  v9 = ACHLogAwardEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (a2)
    {
      v10 = @"YES";
    }

    *buf = 134218242;
    v22 = v8;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Completed historical evaluation in %lf seconds with success: %@", buf, 0x16u);
  }

  if (v5)
  {
    v11 = ACHLogAwardEngine();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    v14 = objc_loadWeakRetained(WeakRetained + 2);
    v15 = *(a1 + 40);
    v20 = 0;
    v16 = [v14 invalidateAssertionWithToken:v15 error:&v20];
    v17 = v20;

    if ((v16 & 1) == 0)
    {
      v18 = ACHLogAwardEngine();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374_cold_2();
      }
    }
  }

  (*(*(a1 + 48) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_requestHistoricalEvaluationForAllSourcesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = ACHLogAwardEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Assertion acquired! Let's go!", buf, 2u);
  }

  dispatch_assert_queue_not_V2(self->_internalQueue);
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke;
  v8[3] = &unk_278491948;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(internalQueue, v8);
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 96) = 1;
  v2 = *(a1 + 32);
  if (*(v2 + 56) != 1)
  {
LABEL_6:
    v5 = dispatch_group_create();
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 1;
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__29;
    v36 = __Block_byref_object_dispose__29;
    v37 = 0;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [*(*(a1 + 32) + 64) allValues];
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v44 count:16];
    if (v9)
    {
      v10 = *v29;
      do
      {
        v11 = 0;
        do
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v28 + 1) + 8 * v11);
          dispatch_group_enter(v5);
          v13 = *(a1 + 32);
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_382;
          v24[3] = &unk_278492C58;
          v26 = v38;
          v27 = buf;
          v24[4] = v13;
          v24[5] = v12;
          v25 = v5;
          [v13 _queue_evaluateHistoryForSource:v12 completion:v24];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v44 count:16];
      }

      while (v9);
    }

    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(v15 + 80);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_402;
    block[3] = &unk_278492CA8;
    v22 = v38;
    v23 = buf;
    block[4] = v15;
    v21 = v14;
    dispatch_group_notify(v5, v16, block);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v38, 8);
    goto LABEL_14;
  }

  WeakRetained = objc_loadWeakRetained((v2 + 24));
  v43 = 0;
  v4 = [WeakRetained clearAllInMemoryPropertiesWithError:&v43];
  v5 = v43;

  v6 = ACHLogAwardEngine();
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "DataStore cleared for historical evaluation", buf, 2u);
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_cold_1();
  }

  v18 = *(a1 + 40);
  if (v18)
  {
    v19 = dispatch_get_global_queue(21, 0);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_381;
    v40[3] = &unk_278491258;
    v42 = v18;
    v5 = v5;
    v41 = v5;
    dispatch_async(v19, v40);
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_382(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v9 = *(a1 + 48);
  v12 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  block[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2;
  block[3] = &unk_278492C30;
  v15 = a2;
  v14 = *(a1 + 64);
  v11 = v5;
  v7 = v9;
  v13 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 64) + 8) + 24) &= *(a1 + 80);
  v2 = *(*(a1 + 72) + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (!v5)
  {
    v4 = *(a1 + 32);
  }

  objc_storeStrong(v3, v4);
  if (*(a1 + 80) != 1 || *(a1 + 32))
  {
    v6 = ACHLogAwardEngine();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_1(a1);
    }

    goto LABEL_7;
  }

  v8 = *(*(a1 + 48) + 57);
  v6 = ACHLogAwardEngine();
  v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v8 == 1)
  {
    if (v9)
    {
      v10 = [*(a1 + 40) uniqueName];
      *buf = 138543362;
      v37 = v10;
      _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] succeeded historical evaluation, committing data to dataStore", buf, 0xCu);
    }

    v11 = (a1 + 40);
    v12 = [*(a1 + 40) source];
    v13 = [v12 conformsToProtocol:&unk_2835607F0];

    if (v13)
    {
      v6 = [*v11 source];
      if (v6)
      {
        v14 = ACHLogAwardEngine();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [*v11 uniqueName];
          v16 = [*v11 source];
          v17 = [v16 uniqueName];
          *buf = 138543618;
          v37 = v15;
          v38 = 2114;
          v39 = v17;
          _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Committing data store properties for sourceRecord.source %{public}@ to dataStore", buf, 0x16u);
        }

        WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 24));
        v35 = 0;
        v19 = [WeakRetained commitPropertiesForProvider:v6 withError:&v35];
        v20 = v35;

        if ((v19 & 1) == 0)
        {
          v28 = ACHLogAwardEngine();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_2((a1 + 40));
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v22 = ACHLogAwardEngine();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*v11 uniqueName];
      v24 = [*v11 uniqueName];
      *buf = 138543618;
      v37 = v23;
      v38 = 2114;
      v39 = v24;
      _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Now committing source record %{public}@ to data store", buf, 0x16u);
    }

    v25 = objc_loadWeakRetained((*(a1 + 48) + 24));
    v26 = *(a1 + 40);
    v34 = 0;
    v27 = [v25 commitPropertiesForProvider:v26 withError:&v34];
    v20 = v34;

    if (v27)
    {
      goto LABEL_31;
    }

    v28 = ACHLogAwardEngine();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_3((a1 + 40));
    }

LABEL_27:

    v29 = *(*(a1 + 72) + 8);
    v32 = *(v29 + 40);
    v30 = (v29 + 40);
    v31 = v32;
    if (v32)
    {
      v33 = v31;
    }

    else
    {
      v33 = v20;
    }

    objc_storeStrong(v30, v33);
    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_31:

    goto LABEL_7;
  }

  if (v9)
  {
    v21 = [*(a1 + 40) uniqueName];
    *buf = 138543362;
    v37 = v21;
    _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] succeeded historical evaluation", buf, 0xCu);
  }

LABEL_7:

  dispatch_group_leave(*(a1 + 56));
  v7 = *MEMORY[0x277D85DE8];
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_402(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  *(*(a1 + 32) + 96) = 0;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_403;
    block[3] = &unk_278492C80;
    v8 = v4;
    v9 = v2;
    v7 = v3;
    dispatch_async(v5, block);
  }

  [*(a1 + 32) _queue_performQueuedEvaluations];
}

- (void)_queue_protectedDataBecameAvailable
{
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Protected data became available; attempting queued evaluation", v4, 2u);
  }

  [(ACHEarnedInstanceAwardingEngine *)self _queue_performQueuedEvaluations];
}

- (void)_queue_performQueuedEvaluations
{
  queuedIncrementalEvaluations = self->_queuedIncrementalEvaluations;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__ACHEarnedInstanceAwardingEngine__queue_performQueuedEvaluations__block_invoke;
  v3[3] = &unk_278492CD0;
  v3[4] = self;
  [(NSMutableDictionary *)queuedIncrementalEvaluations enumerateKeysAndObjectsUsingBlock:v3];
}

void __66__ACHEarnedInstanceAwardingEngine__queue_performQueuedEvaluations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ACHLogAwardEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Attempting queued evaluation for %{public}@", &v9, 0xCu);
  }

  [*(a1 + 32) requestIncrementalEvaluationForSource:v5 evaluationBlock:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_evaluateHistoryForSource:(id)a3 completion:(id)a4
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v43 = a4;
  dispatch_assert_queue_V2(self->_internalQueue);
  v7 = [v6 source];
  v42 = [v7 uniqueName];

  v8 = ACHLogAwardEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v42;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Getting ready to evaluate history for source: %{public}@", &buf, 0xCu);
  }

  p_historicalEvaluationPolicy = &self->_historicalEvaluationPolicy;
  v40 = self->_historicalEvaluationPolicy.startDate == 2;
  if (self->_historicalEvaluationPolicy.startDate != 2 || ([v6 source], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "conformsToProtocol:", &unk_2835607F0), v10, !v11))
  {
    v14 = 0;
    v41 = 0;
    v39 = 0;
    goto LABEL_14;
  }

  v12 = ACHLogAwardEngine();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v42;
    _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Looking up snapshot for source: %@", &buf, 0xCu);
  }

  v41 = [v6 source];
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);
  v63 = 0;
  v14 = [WeakRetained snapshotForProvider:v41 withError:&v63];
  v15 = v63;

  if (v14 || !v15)
  {

    v39 = 1;
LABEL_14:
    v19 = [v6 lastCompletedEvaluationInterval];
    v20 = [v19 endDate];
    buf = *&p_historicalEvaluationPolicy->startDate;
    v65 = *&self->_historicalEvaluationPolicy.clearDataStoreBeforeHistoricalRun;
    v18 = ACHHistoricalEvaluationStartDateForPolicy(&buf, v20, v14);

    if (v18)
    {
      calendar = self->_calendar;
      v22 = [(ACHEarnedInstanceAwardingEngine *)self currentDate];
      buf = *&p_historicalEvaluationPolicy->startDate;
      v65 = *&self->_historicalEvaluationPolicy.clearDataStoreBeforeHistoricalRun;
      v23 = ACHHistoricalEvaluationEndDateForPolicy(&buf, calendar, v22);

      [v23 timeIntervalSinceReferenceDate];
      v25 = v24;
      [v18 timeIntervalSinceReferenceDate];
      if (v25 <= v26)
      {
        v37 = ACHLogAwardEngine();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [ACHEarnedInstanceAwardingEngine _queue_evaluateHistoryForSource:completion:];
        }

        if (!v43)
        {
          goto LABEL_28;
        }

        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Achievements.AwardingEngine" code:101 userInfo:0];
        v43[2](v43, 0, v34);
      }

      else
      {
        v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v23];
        v28 = ACHLogAwardEngine();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v27;
          _os_log_impl(&dword_221DDC000, v28, OS_LOG_TYPE_DEFAULT, "Historical evaluation interval is %{public}@", &buf, 0xCu);
        }

        [v6 cancelAllEvaluationOperations];
        v29 = [v6 source];
        objc_initWeak(&buf, self);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_406;
        v52[3] = &unk_278492D20;
        v58 = v40;
        v30 = v14;
        v53 = v30;
        v31 = v42;
        v54 = v31;
        v32 = v41;
        v55 = v32;
        v33 = v29;
        v56 = v33;
        v34 = v27;
        v57 = v34;
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_407;
        v44[3] = &unk_278492D48;
        objc_copyWeak(&v49, &buf);
        v50 = v40;
        v45 = v30;
        v51 = v39;
        v46 = v31;
        v47 = v32;
        v48 = v43;
        [v6 addEvaluationOperationWithDateInterval:v34 evaluationBlock:v52 completion:v44];

        objc_destroyWeak(&v49);
        objc_destroyWeak(&buf);
      }
    }

    else
    {
      v35 = ACHLogAwardEngine();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_221DDC000, v35, OS_LOG_TYPE_DEFAULT, "No valid start date, not evaluating history", &buf, 2u);
      }

      if (!v43)
      {
        goto LABEL_29;
      }

      v36 = dispatch_get_global_queue(21, 0);
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_405;
      v59[3] = &unk_278492CF8;
      v60 = v43;
      dispatch_async(v36, v59);

      v23 = v60;
    }

LABEL_28:

LABEL_29:
    v15 = v14;
    goto LABEL_30;
  }

  v16 = ACHLogAwardEngine();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ACHEarnedInstanceAwardingEngine _queue_evaluateHistoryForSource:completion:];
  }

  if (v43)
  {
    v17 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke;
    block[3] = &unk_278492CF8;
    v62 = v43;
    dispatch_async(v17, block);

    v18 = v62;
LABEL_30:
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Achievements.AwardingEngine" code:103 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_405(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Achievements.AwardingEngine" code:102 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

id __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_406(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 72) == 1 && *(a1 + 32))
  {
    v4 = ACHLogAwardEngine();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Applying snapshot to source: %@", &v11, 0xCu);
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) properties];
    [v6 setDataStoreProperties:v7];
  }

  v8 = [*(a1 + 56) earnedInstancesForHistoricalInterval:*(a1 + 64) error:a2];
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_407(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained && *(a1 + 72) == 1 && !*(a1 + 32) && *(a1 + 73) == 1)
  {
    v7 = ACHLogAwardEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) validThroughDate];
      *buf = 138543618;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Saving new snapshot for source: %{public}@ with value through date: %{public}@", buf, 0x16u);
    }

    v10 = objc_loadWeakRetained(WeakRetained + 3);
    v11 = *(a1 + 48);
    v17 = 0;
    v12 = [v10 commitSnapshotForProvider:v11 withError:&v17];
    v13 = v17;

    if ((v12 & 1) == 0)
    {
      v14 = ACHLogAwardEngine();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_407_cold_1(a1);
      }
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v5);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)currentDate
{
  currentDateOverride = self->_currentDateOverride;
  if (currentDateOverride)
  {
    v3 = currentDateOverride;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] date];
  }

  return v3;
}

- (void)registerSource:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Not registering source %{public}@ because it does not conform to awarding protocol", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__ACHEarnedInstanceAwardingEngine_registerSource___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 uniqueName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deregisterSource:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Not deregistering source %{public}@ because it does not conform to awarding protocol", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__ACHEarnedInstanceAwardingEngine_deregisterSource___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*a1 uniqueName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v2, v3, "[%{public}@] requested an incremental evaluation but engine is not activated yet. Skipping!", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v1, v2, "Error requesting incremental evaluation for source with name [%{public}@]: the evaluation start date is greater than the end date. - sourceRecord: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v1, v2, "Failed to get accessibility assertion for %{public}@ with error %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v1, v2, "Error requesting incremental evaluation for source with name [%{public}@]: this source has never completed a historical run", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_cold_5(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v1, v2, "Error requesting incremental evaluation for source with name [%{public}@]: no such source exists", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __89__ACHEarnedInstanceAwardingEngine_requestIncrementalEvaluationForSource_evaluationBlock___block_invoke_2_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_7(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v1, v2, "Error invalidating assertion with token %@: %@");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)requestHistoricalEvaluationForAllSourcesWithCompletion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Failed to get accessibility assertion with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __90__ACHEarnedInstanceAwardingEngine_requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_374_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error invalidating accessibility assertion: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Failed to clear data store with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) uniqueName];
  v3 = *(a1 + 32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_2(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*a1 uniqueName];
  v3 = [*a1 source];
  v4 = [v3 uniqueName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

void __91__ACHEarnedInstanceAwardingEngine__requestHistoricalEvaluationForAllSourcesWithCompletion___block_invoke_2_cold_3(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*a1 uniqueName];
  v3 = [*a1 uniqueName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_queue_evaluateHistoryForSource:completion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Snapshot lookup error for source %@, not evaluating history: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_evaluateHistoryForSource:completion:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Historical evaluation not possible, interval start date comes after end date: %{public}@ -> %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __78__ACHEarnedInstanceAwardingEngine__queue_evaluateHistoryForSource_completion___block_invoke_407_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v2, v3, "Error committing snapshot for source %@: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end