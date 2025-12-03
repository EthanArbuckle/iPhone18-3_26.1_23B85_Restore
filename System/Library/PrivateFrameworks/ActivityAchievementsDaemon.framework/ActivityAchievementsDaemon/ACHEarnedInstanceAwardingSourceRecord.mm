@interface ACHEarnedInstanceAwardingSourceRecord
- (ACHEarnedInstanceAwardingSourceRecord)initWithSource:(id)source earnedInstanceStore:(id)store dataStore:(id)dataStore registrationDate:(id)date;
- (NSArray)dataStorePropertyKeys;
- (NSDateInterval)lastCompletedEvaluationInterval;
- (NSDateInterval)lastScheduledEvaluationInterval;
- (NSDictionary)dataStoreProperties;
- (NSString)description;
- (NSString)uniqueName;
- (void)addEvaluationOperationWithDateInterval:(id)interval evaluationBlock:(id)block completion:(id)completion;
- (void)dataStoreDidClearAllProperties:(id)properties completion:(id)completion;
- (void)setDataStoreProperties:(id)properties;
@end

@implementation ACHEarnedInstanceAwardingSourceRecord

- (ACHEarnedInstanceAwardingSourceRecord)initWithSource:(id)source earnedInstanceStore:(id)store dataStore:(id)dataStore registrationDate:(id)date
{
  sourceCopy = source;
  storeCopy = store;
  dataStoreCopy = dataStore;
  dateCopy = date;
  v24.receiver = self;
  v24.super_class = ACHEarnedInstanceAwardingSourceRecord;
  v15 = [(ACHEarnedInstanceAwardingSourceRecord *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_source, source);
    objc_storeWeak(&v16->_earnedInstanceStore, storeCopy);
    objc_storeWeak(&v16->_dataStore, dataStoreCopy);
    objc_storeStrong(&v16->_registrationDate, date);
    v17 = HKCreateSerialDispatchQueue();
    internalQueue = v16->_internalQueue;
    v16->_internalQueue = v17;

    v19 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v16->_operationQueue;
    v16->_operationQueue = v19;

    [(NSOperationQueue *)v16->_operationQueue setMaxConcurrentOperationCount:1];
    v21 = HKCreateSerialDispatchQueue();
    [(NSOperationQueue *)v16->_operationQueue setUnderlyingQueue:v21];

    [(NSOperationQueue *)v16->_operationQueue setQualityOfService:17];
    WeakRetained = objc_loadWeakRetained(&v16->_dataStore);
    [WeakRetained addPropertyProvider:v16];
  }

  return v16;
}

- (NSDateInterval)lastCompletedEvaluationInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__ACHEarnedInstanceAwardingSourceRecord_lastCompletedEvaluationInterval__block_invoke;
  v5[3] = &unk_278490FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSDateInterval)lastScheduledEvaluationInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__ACHEarnedInstanceAwardingSourceRecord_lastScheduledEvaluationInterval__block_invoke;
  v5[3] = &unk_278490FE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addEvaluationOperationWithDateInterval:(id)interval evaluationBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  intervalCopy = interval;
  dispatch_assert_queue_not_V2(internalQueue);
  v12 = ACHEvaluationDateIntervalFor(intervalCopy);

  v13 = self->_internalQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke;
  v17[3] = &unk_2784918F8;
  v17[4] = self;
  v18 = v12;
  v19 = blockCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = blockCopy;
  v16 = v12;
  dispatch_sync(v13, v17);
}

void __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(*(a1 + 32) + 56) uniqueName];
    v5 = *(a1 + 40);
    *buf = 138543874;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    v19 = 2114;
    v20 = v2;
    _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduling evaluation operation, dateInterval=%@, identifier=%{public}@", buf, 0x20u);
  }

  v6 = MEMORY[0x277CCA8C8];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke_304;
  v10[3] = &unk_2784918D0;
  v10[4] = *(a1 + 32);
  v11 = v2;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v12 = *(a1 + 40);
  v7 = v2;
  v8 = [v6 blockOperationWithBlock:v10];
  [*(*(a1 + 32) + 24) addOperation:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke_304(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = __Block_byref_object_copy__10;
  v57[4] = __Block_byref_object_dispose__10;
  v2 = [*(*(a1 + 32) + 56) uniqueName];
  v3 = [@"com.apple.activityawardsd.evaluation." stringByAppendingString:v2];
  v4 = v3;
  [v3 UTF8String];
  v58 = os_transaction_create();

  v5 = objc_autoreleasePoolPush();
  v6 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 56) uniqueName];
    v8 = *(a1 + 40);
    *buf = 138543618;
    v60 = v7;
    v61 = 2114;
    v62 = v8;
    _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Executing evaluation operation with identifier %{public}@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = *(a1 + 56);
  v56 = 0;
  v11 = (*(v10 + 16))();
  v12 = 0;
  v13 = [MEMORY[0x277CBEAA8] date];
  [v13 timeIntervalSinceDate:v9];
  v15 = v14;

  if (!v12)
  {
    v20 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(*(a1 + 32) + 56) uniqueName];
      v22 = [v11 count];
      *buf = 138543874;
      v60 = v21;
      v61 = 2048;
      v62 = v22;
      v63 = 2048;
      v64 = v15;
      _os_log_impl(&dword_221DDC000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Source returned %ld earned instances in %lf seconds; saving...", buf, 0x20u);
    }

    v19 = [MEMORY[0x277CBEAA8] date];
    if ([v11 count])
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
      v51 = 0;
      v43 = [WeakRetained addEarnedInstances:v11 error:&v51];
      v24 = v51;
    }

    else
    {
      v24 = 0;
      v43 = 1;
    }

    v25 = [MEMORY[0x277CBEAA8] date];
    [v25 timeIntervalSinceDate:v19];
    v27 = v26;

    v28 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v5;
      v30 = [*(*(a1 + 32) + 56) uniqueName];
      *buf = 138543618;
      v60 = v30;
      v61 = 2048;
      v62 = v27;
      _os_log_impl(&dword_221DDC000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saved earned instances in %lf seconds", buf, 0x16u);

      v5 = v29;
    }

    v31 = [MEMORY[0x277CBEAA8] date];
    [v31 timeIntervalSinceDate:v9];
    v33 = v32;

    v34 = ACHLogAwardScheduling();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v5;
      v36 = [*(*(a1 + 32) + 56) uniqueName];
      v37 = *(a1 + 40);
      *buf = 138543874;
      v60 = v36;
      v61 = 2114;
      v62 = v37;
      v63 = 2048;
      v64 = v33;
      _os_log_impl(&dword_221DDC000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] Completed evaluation operation with identifier %{public}@ in %lf seconds", buf, 0x20u);

      v5 = v35;
    }

    v38 = *(a1 + 32);
    v39 = *(v38 + 32);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke_310;
    v44[3] = &unk_2784918A8;
    v50 = v43;
    v45 = v24;
    v46 = v38;
    v47 = *(a1 + 48);
    v48 = *(a1 + 64);
    v49 = v57;
    v40 = v24;
    dispatch_async(v39, v44);

    goto LABEL_18;
  }

  v16 = ACHLogAwardScheduling();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v42 = [*(*(a1 + 32) + 56) uniqueName];
    *buf = 138543874;
    v60 = v42;
    v61 = 2048;
    v62 = v15;
    v63 = 2112;
    v64 = v12;
    _os_log_error_impl(&dword_221DDC000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Source failed in %lf seconds with error: %@", buf, 0x20u);
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    v18 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke_309;
    block[3] = &unk_278491858;
    v54 = v17;
    v53 = v12;
    v55 = v57;
    dispatch_async(v18, block);

    v19 = v54;
LABEL_18:
  }

  objc_autoreleasePoolPop(v5);
  _Block_object_dispose(v57, 8);

  v41 = *MEMORY[0x277D85DE8];
}

void __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke_309(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke_310(uint64_t a1)
{
  if (*(a1 + 72) == 1 && !*(a1 + 32))
  {
    objc_storeStrong((*(a1 + 40) + 48), *(a1 + 48));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke_2;
    v8[3] = &unk_278491880;
    v10 = v2;
    v12 = *(a1 + 72);
    v4 = *(a1 + 32);
    v5 = *(a1 + 64);
    v9 = v4;
    v11 = v5;
    dispatch_async(v3, v8);
  }

  else
  {
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }
}

void __107__ACHEarnedInstanceAwardingSourceRecord_addEvaluationOperationWithDateInterval_evaluationBlock_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (NSString)uniqueName
{
  v2 = MEMORY[0x277CCACA8];
  uniqueName = [(ACHEarnedInstanceAwarding *)self->_source uniqueName];
  v4 = [v2 stringWithFormat:@"%@-SourceRecord", uniqueName];

  return v4;
}

- (NSArray)dataStorePropertyKeys
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"LastCompletedEvaluationStart";
  v5[1] = @"LastCompletedEvaluationEnd";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (NSDictionary)dataStoreProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__ACHEarnedInstanceAwardingSourceRecord_dataStoreProperties__block_invoke;
  v5[3] = &unk_278491920;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __60__ACHEarnedInstanceAwardingSourceRecord_dataStoreProperties__block_invoke(uint64_t a1)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v16[0] = @"LastCompletedEvaluationStart";
    v3 = MEMORY[0x277CCABB0];
    v4 = [v2 startDate];
    [v4 timeIntervalSinceReferenceDate];
    v5 = [v3 numberWithDouble:?];
    v16[1] = @"LastCompletedEvaluationEnd";
    v17[0] = v5;
    v6 = MEMORY[0x277CCABB0];
    v7 = [*(*(a1 + 32) + 48) endDate];
    [v7 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
    v17[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = MEMORY[0x277CBEC10];
    v15 = *MEMORY[0x277D85DE8];
  }
}

- (void)setDataStoreProperties:(id)properties
{
  propertiesCopy = properties;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ACHEarnedInstanceAwardingSourceRecord_setDataStoreProperties___block_invoke;
  v7[3] = &unk_278490898;
  v8 = propertiesCopy;
  selfCopy = self;
  v6 = propertiesCopy;
  dispatch_sync(internalQueue, v7);
}

void __64__ACHEarnedInstanceAwardingSourceRecord_setDataStoreProperties___block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"LastCompletedEvaluationStart"];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"LastCompletedEvaluationEnd"];
  [v13 doubleValue];
  v4 = v3;
  [v2 doubleValue];
  if (v4 > 0.0)
  {
    v6 = v5;
    if (v5 > 0.0)
    {
      v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v4];
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v6];
      v9 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v8];
      v10 = ACHEvaluationDateIntervalFor(v9);
      v11 = *(a1 + 40);
      v12 = *(v11 + 48);
      *(v11 + 48) = v10;
    }
  }
}

- (void)dataStoreDidClearAllProperties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__ACHEarnedInstanceAwardingSourceRecord_dataStoreDidClearAllProperties_completion___block_invoke;
  v8[3] = &unk_278491948;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(internalQueue, v8);
}

uint64_t __83__ACHEarnedInstanceAwardingSourceRecord_dataStoreDidClearAllProperties_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ACHEarnedInstanceAwardingSourceRecord;
  v4 = [(ACHEarnedInstanceAwardingSourceRecord *)&v8 description];
  uniqueName = [(ACHEarnedInstanceAwarding *)self->_source uniqueName];
  v6 = [v3 stringWithFormat:@"%@ <\n            uniqueName:%@\n            registrationDate:%@\n            lastScheduledEvaluationInterval:%@\n            lastCompletedEvaluationInterval:%@\n            >", v4, uniqueName, self->_registrationDate, self->_lastScheduledEvaluationInterval, self->_lastCompletedEvaluationInterval];

  return v6;
}

@end