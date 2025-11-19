@interface ACHEarnedInstanceStore
- (ACHEarnedInstanceStore)initWithClient:(id)a3 assertionClient:(id)a4 earnedInstanceDuplicateUtility:(id)a5 device:(unsigned __int8)a6;
- (BOOL)_queue_addEarnedInstances:(id)a3 triggerSync:(BOOL)a4 error:(id *)a5;
- (BOOL)_queue_removeEarnedInstances:(id)a3 error:(id *)a4;
- (BOOL)addEarnedInstances:(id)a3 error:(id *)a4;
- (BOOL)removeAllEarnedInstancesWithError:(id *)a3;
- (BOOL)removeEarnedInstances:(id)a3 error:(id *)a4;
- (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4;
- (NSArray)earnedInstances;
- (id)_queue_addEarnedInstancesWithSingleTemplate:(id)a3 error:(id *)a4;
- (id)countOfEarnedInstancesForTemplateUniqueNames:(id)a3 error:(id *)a4;
- (id)earnedInstancesForAnniversaryWithDateComponents:(id)a3 templateUnqiueNames:(id)a4 error:(id *)a5;
- (id)earnedInstancesForDateInterval:(id)a3 error:(id *)a4;
- (id)earnedInstancesForEarnedDateComponents:(id)a3 error:(id *)a4;
- (id)earnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4;
- (id)mostRecentEarnedInstanceForTemplateUniqueName:(id)a3 error:(id *)a4;
- (id)mostRecentEarnedInstancesForTemplateUniqueNames:(id)a3 error:(id *)a4;
- (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4;
- (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)a3 inDateComponentInterval:(id)a4 withCalendar:(id)a5 error:(id *)a6;
- (void)_notifyObserversOfAddedEarnedInstances:(id)a3;
- (void)_notifyObserversOfRemovedEarnedInstances:(id)a3;
- (void)_notifyObserversOfSync;
- (void)_queue_purgeCaches;
- (void)addObserver:(id)a3;
- (void)earnedInstances;
- (void)removeObserver:(id)a3;
@end

@implementation ACHEarnedInstanceStore

- (ACHEarnedInstanceStore)initWithClient:(id)a3 assertionClient:(id)a4 earnedInstanceDuplicateUtility:(id)a5 device:(unsigned __int8)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v32.receiver = self;
  v32.super_class = ACHEarnedInstanceStore;
  v14 = [(ACHEarnedInstanceStore *)&v32 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_client, a3);
    objc_storeStrong(&v15->_assertionClient, a4);
    objc_storeStrong(&v15->_duplicateUtility, a5);
    v16 = HKCreateSerialDispatchQueue();
    earnedInstanceQueue = v15->_earnedInstanceQueue;
    v15->_earnedInstanceQueue = v16;

    v18 = HKCreateSerialDispatchQueue();
    observerQueue = v15->_observerQueue;
    v15->_observerQueue = v18;

    v20 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v15->_observers;
    v15->_observers = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEA78]);
    earnedInstancesForTemplateUniqueNameCache = v15->_earnedInstancesForTemplateUniqueNameCache;
    v15->_earnedInstancesForTemplateUniqueNameCache = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEA78]);
    earnedInstancesForEarnedDateComponentsCache = v15->_earnedInstancesForEarnedDateComponentsCache;
    v15->_earnedInstancesForEarnedDateComponentsCache = v24;

    v15->_device = a6;
    objc_initWeak(&location, v15);
    v26 = [*MEMORY[0x277CE8AF0] UTF8String];
    v27 = v15->_earnedInstanceQueue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __95__ACHEarnedInstanceStore_initWithClient_assertionClient_earnedInstanceDuplicateUtility_device___block_invoke;
    v29[3] = &unk_2784907F8;
    objc_copyWeak(&v30, &location);
    notify_register_dispatch(v26, &v15->_syncedEarnedInstancesToken, v27, v29);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __95__ACHEarnedInstanceStore_initWithClient_assertionClient_earnedInstanceDuplicateUtility_device___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyObserversOfSync];
}

- (NSArray)earnedInstances
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__13;
  v22 = __Block_byref_object_dispose__13;
  v23 = 0;
  v15 = 0;
  v16[0] = &v15;
  v16[1] = 0x3032000000;
  v16[2] = __Block_byref_object_copy__13;
  v16[3] = __Block_byref_object_dispose__13;
  v17 = 0;
  v3 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v3);

  v4 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ACHEarnedInstanceStore_earnedInstances__block_invoke;
  block[3] = &unk_278491530;
  block[4] = self;
  block[5] = &v18;
  block[6] = &v15;
  dispatch_sync(v4, block);

  if (*(v16[0] + 40))
  {
    v5 = ACHLogDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceStore *)v16 earnedInstances:v5];
    }
  }

  v12 = v19[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __41__ACHEarnedInstanceStore_earnedInstances__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 fetchAllEarnedInstancesWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)earnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__13;
  v18[3] = __Block_byref_object_dispose__13;
  v19 = 0;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__ACHEarnedInstanceStore_earnedInstancesForTemplateUniqueName_error___block_invoke;
  v13[3] = &unk_278491580;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v15 = &v20;
  v16 = &v17;
  dispatch_sync(v8, v13);

  if (*(v18[0] + 40))
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore earnedInstancesForTemplateUniqueName:v9 error:v18];
    }

    if (a4)
    {
      *a4 = *(v18[0] + 40);
    }
  }

  v11 = v21[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __69__ACHEarnedInstanceStore_earnedInstancesForTemplateUniqueName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) earnedInstancesForTemplateUniqueNameCache];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
  }

  else
  {
    v4 = [*(a1 + 32) client];
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 56) + 8);
    obj = *(v6 + 40);
    v7 = [v4 fetchEarnedInstancesForTemplateUniqueName:v5 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = [*(a1 + 32) earnedInstancesForTemplateUniqueNameCache];
      [v10 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:*(a1 + 40)];
    }
  }
}

- (id)earnedInstancesForEarnedDateComponents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__13;
  v25 = __Block_byref_object_dispose__13;
  v26 = 0;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__13;
  v19[3] = __Block_byref_object_dispose__13;
  v20 = 0;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__ACHEarnedInstanceStore_earnedInstancesForEarnedDateComponents_error___block_invoke;
  v13[3] = &unk_278491580;
  v9 = v6;
  v14 = v9;
  v15 = self;
  v16 = &v21;
  v17 = &v18;
  dispatch_sync(v8, v13);

  if (*(v19[0] + 40))
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore earnedInstancesForEarnedDateComponents:v9 error:v19];
    }

    if (a4)
    {
      *a4 = *(v19[0] + 40);
    }
  }

  v11 = v22[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

void __71__ACHEarnedInstanceStore_earnedInstancesForEarnedDateComponents_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = ACHYearMonthDayStringFromDateComponents();
  v4 = [*(a1 + 40) earnedInstancesForEarnedDateComponentsCache];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  }

  else
  {
    v6 = [*(a1 + 40) client];
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 56) + 8);
    obj = *(v8 + 40);
    v9 = [v6 fetchEarnedInstancesForEarnedDateComponents:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v12 = [*(a1 + 40) earnedInstancesForEarnedDateComponentsCache];
      [v12 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:v3];
    }
  }
}

- (id)earnedInstancesForAnniversaryWithDateComponents:(id)a3 templateUnqiueNames:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__13;
  v34 = __Block_byref_object_dispose__13;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__13;
  v28 = __Block_byref_object_dispose__13;
  v29 = 0;
  v10 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v10);

  v11 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__ACHEarnedInstanceStore_earnedInstancesForAnniversaryWithDateComponents_templateUnqiueNames_error___block_invoke;
  block[3] = &unk_278491A60;
  v22 = &v30;
  block[4] = self;
  v12 = v8;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  v23 = &v24;
  dispatch_sync(v11, block);

  if (v25[5])
  {
    v14 = ACHLogDefault();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = v25[5];
      *buf = 138543874;
      v37 = v12;
      v38 = 2114;
      v39 = v13;
      v40 = 2114;
      v41 = v18;
      _os_log_error_impl(&dword_221DDC000, v14, OS_LOG_TYPE_ERROR, "Error fetching anniversary earned instances for date components %{public}@ and templateNames %{public}@: %{public}@", buf, 0x20u);
    }

    if (a5)
    {
      *a5 = v25[5];
    }
  }

  v15 = v31[5];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __100__ACHEarnedInstanceStore_earnedInstancesForAnniversaryWithDateComponents_templateUnqiueNames_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 fetchEarnedInstancesForAnniversaryOfDateComponents:v3 templateUniqueNames:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)earnedInstancesForDateInterval:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__13;
  v18[3] = __Block_byref_object_dispose__13;
  v19 = 0;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__ACHEarnedInstanceStore_earnedInstancesForDateInterval_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v20;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(v8, v13);

  if (*(v18[0] + 40))
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore earnedInstancesForDateInterval:v9 error:v18];
    }

    if (a4)
    {
      *a4 = *(v18[0] + 40);
    }
  }

  v11 = v21[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __63__ACHEarnedInstanceStore_earnedInstancesForDateInterval_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchEarnedInstancesForDateInterval:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)mostRecentEarnedInstanceForTemplateUniqueName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__13;
  v18[3] = __Block_byref_object_dispose__13;
  v19 = 0;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ACHEarnedInstanceStore_mostRecentEarnedInstanceForTemplateUniqueName_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v20;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(v8, v13);

  if (*(v18[0] + 40))
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore mostRecentEarnedInstanceForTemplateUniqueName:v9 error:v18];
    }

    if (a4)
    {
      *a4 = *(v18[0] + 40);
    }
  }

  v11 = v21[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __78__ACHEarnedInstanceStore_mostRecentEarnedInstanceForTemplateUniqueName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchMostRecentEarnedInstanceForTemplateUniqueName:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)mostRecentEarnedInstancesForTemplateUniqueNames:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__13;
  v18[3] = __Block_byref_object_dispose__13;
  v19 = 0;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__ACHEarnedInstanceStore_mostRecentEarnedInstancesForTemplateUniqueNames_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v20;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(v8, v13);

  if (*(v18[0] + 40))
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore mostRecentEarnedInstancesForTemplateUniqueNames:v9 error:v18];
    }

    if (a4)
    {
      *a4 = *(v18[0] + 40);
    }
  }

  v11 = v21[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __80__ACHEarnedInstanceStore_mostRecentEarnedInstancesForTemplateUniqueNames_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchMostRecentEarnedInstancesForTemplateUniqueNames:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__13;
  v18[3] = __Block_byref_object_dispose__13;
  v19 = 0;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__ACHEarnedInstanceStore_countOfEarnedInstancesForTemplateUniqueName_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v20;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(v8, v13);

  if (*(v18[0] + 40))
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore countOfEarnedInstancesForTemplateUniqueName:v9 error:v18];
    }

    if (a4)
    {
      *a4 = *(v18[0] + 40);
    }
  }

  v11 = v21[3];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __76__ACHEarnedInstanceStore_countOfEarnedInstancesForTemplateUniqueName_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 countOfEarnedInstancesForTemplateUniqueName:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = [v5 unsignedIntegerValue];
}

- (id)countOfEarnedInstancesForTemplateUniqueNames:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__13;
  v24 = __Block_byref_object_dispose__13;
  v25 = 0;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__13;
  v18[3] = __Block_byref_object_dispose__13;
  v19 = 0;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__ACHEarnedInstanceStore_countOfEarnedInstancesForTemplateUniqueNames_error___block_invoke;
  v13[3] = &unk_2784910B0;
  v15 = &v20;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  v16 = &v17;
  dispatch_sync(v8, v13);

  if (*(v18[0] + 40))
  {
    v10 = ACHLogDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore countOfEarnedInstancesForTemplateUniqueNames:v9 error:v18];
    }

    if (a4)
    {
      *a4 = *(v18[0] + 40);
    }
  }

  v11 = v21[5];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v20, 8);

  return v11;
}

void __77__ACHEarnedInstanceStore_countOfEarnedInstancesForTemplateUniqueNames_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 countOfEarnedInstancesForTemplateUniqueNames:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unint64_t)countOfEarnedInstancesForTemplateUniqueName:(id)a3 inDateComponentInterval:(id)a4 withCalendar:(id)a5 error:(id *)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = [(ACHEarnedInstanceStore *)self earnedInstancesForTemplateUniqueName:a3 error:a6];
  v13 = [v10 startDateComponents];
  v14 = [v11 dateFromComponents:v13];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  v17 = [v10 endDateComponents];
  v18 = [v11 dateFromComponents:v17];
  [v18 timeIntervalSinceReferenceDate];
  v20 = v19;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = 0;
    v25 = *v35;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = [*(*(&v34 + 1) + 8 * i) earnedDateComponents];
        v28 = [v11 dateFromComponents:v27];
        [v28 timeIntervalSinceReferenceDate];
        v30 = v29;

        v31 = v30 <= v20 && v30 >= v16;
        v24 += v31;
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v23);
  }

  else
  {
    v24 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)addEarnedInstances:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__ACHEarnedInstanceStore_addEarnedInstances_error___block_invoke;
  v11[3] = &unk_278491A88;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v9 = v6;
  dispatch_sync(v8, v11);

  LOBYTE(v6) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v6;
}

uint64_t __51__ACHEarnedInstanceStore_addEarnedInstances_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_addEarnedInstances:*(a1 + 40) triggerSync:1 error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_queue_purgeCaches
{
  v3 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ACHEarnedInstanceStore *)self earnedInstancesForTemplateUniqueNameCache];
  [v4 removeAllObjects];

  v5 = [(ACHEarnedInstanceStore *)self earnedInstancesForEarnedDateComponentsCache];
  [v5 removeAllObjects];
}

- (BOOL)_queue_addEarnedInstances:(id)a3 triggerSync:(BOOL)a4 error:(id *)a5
{
  v42 = a4;
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_V2(v7);

  [(ACHEarnedInstanceStore *)self _queue_purgeCaches];
  v8 = [MEMORY[0x277CBEAA8] date];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v60;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v59 + 1) + 8 * i);
        [v13 setCreatedDate:v8];
        [v13 setCreatorDevice:self->_device];
      }

      v10 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v10);
  }

  v14 = [obj hk_map:&__block_literal_global_15];
  v15 = [(ACHEarnedInstanceStore *)self assertionClient];
  v58 = 0;
  v44 = [v15 acquireDatabaseAssertionWithIdentifier:@"AddEarnedInstances" error:&v58];
  v16 = v58;

  if (v16)
  {
    v17 = ACHLogDatabase();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore _queue_addEarnedInstances:triggerSync:error:];
    }
  }

  v43 = v16;
  v45 = v8;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v47 = v14;
  v49 = [v47 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v49)
  {
    v18 = *v55;
    v19 = 1;
    v48 = MEMORY[0x277CBEBF8];
    v20 = a5;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v55 != v18)
        {
          objc_enumerationMutation(v47);
        }

        v22 = *(*(&v54 + 1) + 8 * j);
        v23 = objc_autoreleasePoolPush();
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_306;
        v53[3] = &unk_278491AD0;
        v53[4] = v22;
        v24 = [obj hk_filter:v53];
        v52 = 0;
        v25 = [(ACHEarnedInstanceStore *)self _queue_addEarnedInstancesWithSingleTemplate:v24 error:&v52];
        v26 = v52;
        if (v26)
        {
          v19 = 0;
        }

        else
        {
          [v48 arrayByAddingObjectsFromArray:v25];
          v27 = v19;
          v29 = v28 = self;

          v48 = v29;
          self = v28;
          v19 = v27;
          v20 = a5;
        }

        objc_autoreleasePoolPop(v23);
        if ((v19 & 1) == 0)
        {
          v30 = v26;
          if (v26)
          {
            if (v20)
            {
              v31 = v30;
              *v20 = v30;
            }

            else
            {
              _HKLogDroppedError();
            }
          }
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v49);
  }

  else
  {
    LOBYTE(v19) = 1;
    v48 = MEMORY[0x277CBEBF8];
  }

  if (!v44)
  {
    v33 = v43;
    v34 = v48;
    if ((v19 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v32 = [(ACHEarnedInstanceStore *)self assertionClient];
  v51 = 0;
  [v32 invalidateAssertionWithToken:v44 error:&v51];
  v33 = v51;

  v34 = v48;
  if (v33)
  {
    v35 = ACHLogDatabase();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore _queue_addEarnedInstances:triggerSync:error:];
    }
  }

  if (v19)
  {
LABEL_38:
    v36 = ACHLogDatabase();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
      *buf = 138543362;
      v64 = v37;
      _os_log_impl(&dword_221DDC000, v36, OS_LOG_TYPE_DEFAULT, "Successfully added %{public}@ earned instances to database, adding them to in-memory store.", buf, 0xCu);
    }

    v38 = ACHLogDatabase();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v38, OS_LOG_TYPE_DEFAULT, "Notifying observers of added earned instances.", buf, 2u);
    }

    [(ACHEarnedInstanceStore *)self _notifyObserversOfAddedEarnedInstances:v34];
    if (v42 && [v34 count])
    {
      v39 = [(ACHEarnedInstanceStore *)self client];
      [v39 triggerSyncWithCompletion:&__block_literal_global_312_0];
    }
  }

LABEL_45:

  v40 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

uint64_t __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_306(uint64_t a1, void *a2)
{
  v3 = [a2 templateUniqueName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_309(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = ACHLogSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_309_cold_1(a2, v5);
  }

  if (v4)
  {
    v6 = ACHLogSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_309_cold_2();
    }
  }
}

- (id)_queue_addEarnedInstancesWithSingleTemplate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 anyObject];
  v9 = [v8 templateUniqueName];

  v10 = [(ACHEarnedInstanceStore *)self client];
  v34 = 0;
  v11 = [v10 fetchEarnedInstancesForTemplateUniqueName:v9 error:&v34];
  v12 = v34;

  if (v12)
  {
    v13 = ACHLogDatabase();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACHEarnedInstanceStore _queue_addEarnedInstancesWithSingleTemplate:error:];
    }

    if (a4)
    {
      v14 = v12;
      v15 = 0;
      *a4 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CBEB98] setWithArray:v11];
    v17 = [(ACHEarnedInstanceStore *)self duplicateUtility];
    v32 = v16;
    v18 = [v16 setByAddingObjectsFromSet:v6];
    v33 = [v17 earnedInstancesWithoutDuplicates:v18];

    v19 = [(ACHEarnedInstanceStore *)self duplicateUtility];
    v20 = [v19 earnedInstancesLimitedByEarnLimit:v33];

    v31 = [v6 intersectSet:v20];
    v21 = [v16 hk_minus:v20];
    v22 = [(ACHEarnedInstanceStore *)self client];
    [v31 allObjects];
    v23 = v6;
    v24 = v9;
    v26 = v25 = v11;
    v27 = [v21 allObjects];
    v28 = a4;
    v29 = v27;
    v15 = [v22 addEarnedInstances:v26 removingEarnedInstances:v27 error:v28];

    v11 = v25;
    v9 = v24;
    v6 = v23;
  }

  return v15;
}

- (BOOL)removeEarnedInstances:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__13;
  v28 = __Block_byref_object_dispose__13;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__ACHEarnedInstanceStore_removeEarnedInstances_error___block_invoke;
  v16[3] = &unk_278491668;
  v16[4] = self;
  v18 = &v20;
  v9 = v6;
  v17 = v9;
  v19 = &v24;
  dispatch_sync(v8, v16);

  v10 = v25[5];
  if (v10)
  {
    v11 = v10;
    v12 = v11;
    if (a4)
    {
      v13 = v11;
      *a4 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v14 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v14;
}

void __54__ACHEarnedInstanceStore_removeEarnedInstances_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_purgeCaches];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _queue_removeEarnedInstances:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (BOOL)_queue_removeEarnedInstances:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ACHEarnedInstanceStore *)self client];
  v9 = [v8 removeEarnedInstances:v6 error:a4];

  if (v9)
  {
    [(ACHEarnedInstanceStore *)self _notifyObserversOfRemovedEarnedInstances:v6];
  }

  else
  {
    v10 = ACHLogDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ACHEarnedInstanceStore *)a4 _queue_removeEarnedInstances:v6 error:v10];
    }
  }

  return v9;
}

- (BOOL)removeEarnedInstancesForTemplateUniqueName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v7);

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__13;
  v23 = __Block_byref_object_dispose__13;
  v24 = 0;
  v8 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__ACHEarnedInstanceStore_removeEarnedInstancesForTemplateUniqueName_error___block_invoke;
  v15[3] = &unk_278491668;
  v15[4] = self;
  v17 = &v25;
  v9 = v6;
  v16 = v9;
  v18 = &v19;
  dispatch_sync(v8, v15);

  v10 = v20[5];
  v11 = v10;
  if (v10)
  {
    if (a4)
    {
      v12 = v10;
      *a4 = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  return v13;
}

void __75__ACHEarnedInstanceStore_removeEarnedInstancesForTemplateUniqueName_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_purgeCaches];
  v2 = [*(a1 + 32) client];
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 removeEarnedInstancesForTemplateUniqueName:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
}

- (BOOL)removeAllEarnedInstancesWithError:(id *)a3
{
  v5 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  dispatch_assert_queue_not_V2(v5);

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__13;
  v17 = __Block_byref_object_dispose__13;
  v18 = 0;
  v6 = [(ACHEarnedInstanceStore *)self earnedInstanceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ACHEarnedInstanceStore_removeAllEarnedInstancesWithError___block_invoke;
  block[3] = &unk_278491558;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v13;
  dispatch_sync(v6, block);

  v7 = v14[5];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = *(v20 + 24);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return v10;
}

void __60__ACHEarnedInstanceStore_removeAllEarnedInstancesWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_purgeCaches];
  v2 = [*(a1 + 32) client];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 removeAllEarnedInstancesWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (void)_notifyObserversOfAddedEarnedInstances:(id)a3
{
  v4 = a3;
  v5 = [(ACHEarnedInstanceStore *)self observerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__ACHEarnedInstanceStore__notifyObserversOfAddedEarnedInstances___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__ACHEarnedInstanceStore__notifyObserversOfAddedEarnedInstances___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) earnedInstanceStore:*(a1 + 32) didAddNewEarnedInstances:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfSync
{
  v3 = [(ACHEarnedInstanceStore *)self observerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ACHEarnedInstanceStore__notifyObserversOfSync__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(v3, block);
}

void __48__ACHEarnedInstanceStore__notifyObserversOfSync__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) earnedInstanceStoreDidReceiveSyncNotification:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfRemovedEarnedInstances:(id)a3
{
  v4 = a3;
  v5 = [(ACHEarnedInstanceStore *)self observerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ACHEarnedInstanceStore__notifyObserversOfRemovedEarnedInstances___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__ACHEarnedInstanceStore__notifyObserversOfRemovedEarnedInstances___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) earnedInstanceStore:*(a1 + 32) didRemoveEarnedInstances:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACHEarnedInstanceStore *)self observerQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ACHEarnedInstanceStore *)self observerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ACHEarnedInstanceStore_addObserver___block_invoke;
  v8[3] = &unk_278490898;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __38__ACHEarnedInstanceStore_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACHEarnedInstanceStore *)self observerQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = [(ACHEarnedInstanceStore *)self observerQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__ACHEarnedInstanceStore_removeObserver___block_invoke;
  v8[3] = &unk_278490898;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __41__ACHEarnedInstanceStore_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)earnedInstances
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Error fetching earned instances: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)earnedInstancesForTemplateUniqueName:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v2, v3, "Error fetching earned instances for unique name %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)earnedInstancesForEarnedDateComponents:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v2, v3, "Error fetching earned instances for earned date components %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)earnedInstancesForDateInterval:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v2, v3, "Error fetching earned instances for earned dateInterval %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)mostRecentEarnedInstanceForTemplateUniqueName:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v2, v3, "Error fetching most recent earned instance for unique name %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)mostRecentEarnedInstancesForTemplateUniqueNames:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v2, v3, "Error fetching most recent earned instances for %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)countOfEarnedInstancesForTemplateUniqueName:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v2, v3, "Error counting earned instances for unique name %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)countOfEarnedInstancesForTemplateUniqueNames:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v2, v3, "Error counting earned instances for unique names %{public}@: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addEarnedInstances:triggerSync:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Unable to acquire DB assertion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addEarnedInstances:triggerSync:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Unable to invalidate assertion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_309_cold_1(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Triggered sync for earned instances, success: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __70__ACHEarnedInstanceStore__queue_addEarnedInstances_triggerSync_error___block_invoke_309_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error triggering sync for earned instances: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_addEarnedInstancesWithSingleTemplate:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error looking up existing earned instances for (%@): %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeEarnedInstances:(NSObject *)a3 error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *a1;
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, a2, a3, "Failed to remove earned instances with error %{public}@, earned instances: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end