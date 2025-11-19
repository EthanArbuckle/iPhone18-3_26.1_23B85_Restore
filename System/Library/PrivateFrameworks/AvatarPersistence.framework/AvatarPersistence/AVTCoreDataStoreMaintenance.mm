@interface AVTCoreDataStoreMaintenance
- (AVTCoreDataStoreMaintenance)initWithEnvironment:(id)a3 managedObjectContextFactory:(id)a4;
- (AVTCoreDataStoreMaintenance)initWithWorkQueue:(id)a3 managedObjectContextFactory:(id)a4 eventCoalescer:(id)a5 logger:(id)a6;
- (BOOL)fixDuplicateRecordIdentifiers:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (BOOL)mitigateDuplicatesWithManagedObjectContext:(id)a3 error:(id *)a4;
- (id)duplicatedIdentifiersInManagedObjectContext:(id)a3 error:(id *)a4;
- (id)fetchDuplicatedRecordsForIdentifiers:(id)a3 managedObjectContext:(id)a4 error:(id *)a5;
- (void)runMaintenanceTasks;
- (void)storeDidChange;
@end

@implementation AVTCoreDataStoreMaintenance

- (AVTCoreDataStoreMaintenance)initWithEnvironment:(id)a3 managedObjectContextFactory:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 serialQueueProvider];
  v9 = (v8)[2](v8, "com.apple.AvatarUI.AVTCoreDataStoreMaintenance.workQueue");

  v10 = [AVTEventCoalescer alloc];
  v11 = [v7 logger];
  v12 = [(AVTEventCoalescer *)v10 initWithDelay:v9 queue:v11 logger:5.0];

  v13 = [v7 logger];

  v14 = [(AVTCoreDataStoreMaintenance *)self initWithWorkQueue:v9 managedObjectContextFactory:v6 eventCoalescer:v12 logger:v13];
  return v14;
}

- (AVTCoreDataStoreMaintenance)initWithWorkQueue:(id)a3 managedObjectContextFactory:(id)a4 eventCoalescer:(id)a5 logger:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = AVTCoreDataStoreMaintenance;
  v15 = [(AVTCoreDataStoreMaintenance *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_workQueue, a3);
    objc_storeStrong(&v16->_logger, a6);
    objc_storeStrong(&v16->_eventCoalescer, a5);
    v17 = [v12 copy];
    mocFactory = v16->_mocFactory;
    v16->_mocFactory = v17;

    objc_initWeak(&location, v16);
    eventCoalescer = v16->_eventCoalescer;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __99__AVTCoreDataStoreMaintenance_initWithWorkQueue_managedObjectContextFactory_eventCoalescer_logger___block_invoke;
    v21[3] = &unk_278CFA408;
    objc_copyWeak(&v22, &location);
    [(AVTEventCoalescer *)eventCoalescer registerEventForCoalescingWithLabel:@"StoreMaintenanceObservedChange" handler:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v16;
}

void __99__AVTCoreDataStoreMaintenance_initWithWorkQueue_managedObjectContextFactory_eventCoalescer_logger___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runMaintenanceTasks];
}

- (void)storeDidChange
{
  v2 = [(AVTCoreDataStoreMaintenance *)self eventCoalescer];
  [v2 eventDidOccur:0];
}

- (void)runMaintenanceTasks
{
  v3 = [(AVTCoreDataStoreMaintenance *)self logger];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__AVTCoreDataStoreMaintenance_runMaintenanceTasks__block_invoke;
  v4[3] = &unk_278CFA430;
  v4[4] = self;
  [v3 runningMaintenance:v4];
}

void __50__AVTCoreDataStoreMaintenance_runMaintenanceTasks__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mocFactory];
  v3 = v2[2]();

  v4 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
  v14 = 0;
  v5 = [v3 setQueryGenerationFromToken:v4 error:&v14];
  v6 = v14;

  v7 = *(a1 + 32);
  if (v5)
  {
    v13 = 0;
    v8 = [v7 mitigateDuplicatesWithManagedObjectContext:v3 error:&v13];
    v9 = v13;
    if ((v8 & 1) == 0)
    {
      v10 = [*(a1 + 32) logger];
      v11 = [v9 description];
      [v10 logErrorMitigatingDuplicates:v11];
    }

    v12 = [*(a1 + 32) logger];
    [v12 logMaintenanceCompleted];
  }

  else
  {
    v9 = [v7 logger];
    v12 = [v6 description];
    [v9 logErrorPinningContextToCurrentQueryGenerationToken:v12];
  }
}

- (BOOL)mitigateDuplicatesWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AVTCoreDataStoreMaintenance *)self duplicatedIdentifiersInManagedObjectContext:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    if ([v7 count])
    {
      v9 = [(AVTCoreDataStoreMaintenance *)self fetchDuplicatedRecordsForIdentifiers:v8 managedObjectContext:v6 error:a4];
      if (v9)
      {
        v10 = [(AVTCoreDataStoreMaintenance *)self fixDuplicateRecordIdentifiers:v9 managedObjectContext:v6 error:a4];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)fixDuplicateRecordIdentifiers:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__AVTCoreDataStoreMaintenance_fixDuplicateRecordIdentifiers_managedObjectContext_error___block_invoke;
  v9[3] = &unk_278CFA458;
  v9[4] = self;
  v7 = a4;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
  LOBYTE(a5) = [v7 save:a5];

  return a5;
}

void __88__AVTCoreDataStoreMaintenance_fixDuplicateRecordIdentifiers_managedObjectContext_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v17 = a3;
  [v17 subarrayWithRange:{1, objc_msgSend(v17, "count") - 1}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v22 = 0u;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CCAD78] UUID];
        [v10 setIdentifier:v11];

        v12 = [*(a1 + 32) logger];
        v13 = [v5 UUIDString];
        v14 = [v10 identifier];
        v15 = [v14 UUIDString];
        [v12 logDeduplicateRecordWithIdentifier:v13 toNewRecordWithIdentifier:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)fetchDuplicatedRecordsForIdentifiers:(id)a3 managedObjectContext:(id)a4 error:(id *)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"Avatar"];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"identifier", v7];
  [v9 setPredicate:v10];

  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"orderDate" ascending:1];
  v36[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  [v9 setSortDescriptors:v12];

  v35[0] = @"identifier";
  v35[1] = @"orderDate";
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
  [v9 setPropertiesToFetch:v13];

  v14 = [v8 executeFetchRequest:v9 error:a5];
  if (v14)
  {
    v28 = v8;
    v29 = v7;
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v14;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v22 = [v21 identifier];
          v23 = [v15 objectForKeyedSubscript:v22];

          if (!v23)
          {
            v23 = [MEMORY[0x277CBEB18] array];
            v24 = [v21 identifier];
            [v15 setObject:v23 forKeyedSubscript:v24];
          }

          [v23 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v18);
    }

    v8 = v28;
    v7 = v29;
    v14 = v27;
  }

  else
  {
    v15 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)duplicatedIdentifiersInManagedObjectContext:(id)a3 error:(id *)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBE428];
  v5 = a3;
  v6 = [v4 fetchRequestWithEntityName:@"Avatar"];
  v7 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"identifier"];
  v8 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v8 setName:@"count"];
  v9 = MEMORY[0x277CCA9C0];
  v29[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v11 = [v9 expressionForFunction:@"count:" arguments:v10];
  [v8 setExpression:v11];

  [v8 setExpressionResultType:300];
  [v6 setResultType:2];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
  v28 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  [v6 setSortDescriptors:v13];

  v27 = @"identifier";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [v6 setPropertiesToGroupBy:v14];

  v26[0] = @"identifier";
  v26[1] = v8;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  [v6 setPropertiesToFetch:v15];

  v16 = [MEMORY[0x277CCA9C0] expressionForVariable:@"count"];
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ > 1", v16];
  [v6 setHavingPredicate:v17];

  v18 = [v5 executeFetchRequest:v6 error:a4];

  if (v18)
  {
    v19 = [(AVTCoreDataStoreMaintenance *)self logger];
    v20 = [v18 description];
    [v19 logDiscoveredDuplicates:v20 count:{objc_msgSend(v18, "count")}];

    v21 = [v18 avt_map:&__block_literal_global_2];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end