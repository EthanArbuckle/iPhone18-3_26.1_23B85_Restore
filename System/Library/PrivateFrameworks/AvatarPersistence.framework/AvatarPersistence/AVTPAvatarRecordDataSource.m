@interface AVTPAvatarRecordDataSource
+ (id)defaultUIDataSourceWithDomainIdentifier:(id)a3;
+ (id)loadRecordsWithStore:(id)a3 request:(id)a4 logger:(id)a5;
+ (id)sortedRecordsEditableFirstReverseOrder:(id)a3;
+ (unint64_t)indexForInsertingDuplicateRecord:(id)a3 original:(id)a4 inRecords:(id)a5;
+ (unint64_t)indexForInsertingRecord:(id)a3 inRecords:(id)a4;
- (AVTPAvatarRecordDataSource)initWithRecordStore:(id)a3 fetchRequest:(id)a4;
- (AVTPAvatarRecordDataSource)initWithRecordStore:(id)a3 fetchRequest:(id)a4 callbackQueue:(id)a5 environment:(id)a6;
- (AVTPAvatarRecordDataSource)initWithRecordStore:(id)a3 fetchRequest:(id)a4 callbackQueue:(id)a5 logger:(id)a6 notificationCenter:(id)a7;
- (AVTPAvatarRecordDataSource)initWithRecordStore:(id)a3 fetchRequest:(id)a4 environment:(id)a5;
- (BOOL)areRecordsLoaded;
- (id)indexesOfRecordsPassingTest:(id)a3;
- (id)recordAtIndex:(unint64_t)a3;
- (unint64_t)indexOfRecordPassingTest:(id)a3;
- (unint64_t)numberOfRecords;
- (void)addObserver:(id)a3;
- (void)addPriorityObserver:(id)a3;
- (void)avatarStoreDidChange:(id)a3;
- (void)dealloc;
- (void)enumerateObserversRespondingToSelector:(SEL)a3 withBlock:(id)a4;
- (void)performObserversWork:(id)a3;
- (void)performSyncWorkWithRecords:(id)a3;
- (void)removeObserver:(id)a3;
- (void)store:(id)a3 didCreateDuplicateAvatar:(id)a4 forOriginal:(id)a5 postCompletionHandler:(id)a6;
- (void)store:(id)a3 didDeleteAvatarWithIdentifier:(id)a4 postCompletionHandler:(id)a5;
- (void)store:(id)a3 didSaveAvatar:(id)a4 postCompletionHandler:(id)a5;
@end

@implementation AVTPAvatarRecordDataSource

+ (id)sortedRecordsEditableFirstReverseOrder:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 isEditable])
        {
          [v4 insertObject:v10 atIndex:0];
        }

        else
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (unint64_t)indexForInsertingRecord:(id)a3 inRecords:(id)a4
{
  v5 = a4;
  if ([a3 isEditable])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 count];
  }

  return v6;
}

+ (unint64_t)indexForInsertingDuplicateRecord:(id)a3 original:(id)a4 inRecords:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([a4 isEditable])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v7}];
    }

    v9 = v7;
    for (i = 0; i < [v8 count]; ++i)
    {
      v11 = [v8 objectAtIndexedSubscript:i];
      v12 = [v11 isEditable];

      if (!v12)
      {
        break;
      }

      v13 = [v8 objectAtIndexedSubscript:i];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v15 = MEMORY[0x277CBEAD8];
        v16 = [v8 objectAtIndexedSubscript:i];
        [v15 raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v16}];
      }

      v17 = [v8 objectAtIndexedSubscript:i];
      v18 = [v9 orderDate];
      v19 = [v17 orderDate];
      v20 = [v18 compare:v19];

      if (v20 != -1)
      {
        break;
      }
    }
  }

  else
  {
    i = [v8 count];
  }

  return i;
}

- (AVTPAvatarRecordDataSource)initWithRecordStore:(id)a3 fetchRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AVTCoreEnvironment defaultEnvironment];
  v9 = [(AVTPAvatarRecordDataSource *)self initWithRecordStore:v7 fetchRequest:v6 environment:v8];

  return v9;
}

- (AVTPAvatarRecordDataSource)initWithRecordStore:(id)a3 fetchRequest:(id)a4 environment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 conformsToProtocol:&unk_285395458] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", v8}];
  }

  v11 = [(AVTPAvatarRecordDataSource *)self initWithRecordStore:v8 fetchRequest:v9 callbackQueue:MEMORY[0x277D85CD0] environment:v10];

  return v11;
}

- (AVTPAvatarRecordDataSource)initWithRecordStore:(id)a3 fetchRequest:(id)a4 callbackQueue:(id)a5 environment:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v10 logger];
  v15 = [v10 notificationCenter];

  v16 = [(AVTPAvatarRecordDataSource *)self initWithRecordStore:v13 fetchRequest:v12 callbackQueue:v11 logger:v14 notificationCenter:v15];
  return v16;
}

- (AVTPAvatarRecordDataSource)initWithRecordStore:(id)a3 fetchRequest:(id)a4 callbackQueue:(id)a5 logger:(id)a6 notificationCenter:(id)a7
{
  v13 = a3;
  v25 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = AVTPAvatarRecordDataSource;
  v17 = [(AVTPAvatarRecordDataSource *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_callbackQueue, a5);
    objc_storeStrong(&v18->_underlyingStore, a3);
    v19 = [[AVTObservableAvatarStore alloc] initWithStore:v13 callbackQueue:v14];
    backingStore = v18->_backingStore;
    v18->_backingStore = v19;

    [(AVTObservableAvatarStore *)v18->_backingStore setDelegate:v18];
    objc_storeStrong(&v18->_fetchRequest, a4);
    nts_recordStorage = v18->_nts_recordStorage;
    v18->_nts_recordStorage = 0;

    objc_storeStrong(&v18->_logger, a6);
    objc_storeStrong(&v18->_notificationCenter, a7);
    v22 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    nts_observers = v18->_nts_observers;
    v18->_nts_observers = v22;
  }

  return v18;
}

- (void)dealloc
{
  v3 = [(AVTPAvatarRecordDataSource *)self nts_changeNotificationObserver];

  if (v3)
  {
    v4 = [(AVTPAvatarRecordDataSource *)self notificationCenter];
    v5 = [(AVTPAvatarRecordDataSource *)self nts_changeNotificationObserver];
    [v4 removeObserver:v5];
  }

  v6.receiver = self;
  v6.super_class = AVTPAvatarRecordDataSource;
  [(AVTPAvatarRecordDataSource *)&v6 dealloc];
}

- (BOOL)areRecordsLoaded
{
  v2 = self;
  v3 = [(AVTPAvatarRecordDataSource *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(AVTPAvatarRecordDataSource *)v2 nts_recordStorage];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (void)performSyncWorkWithRecords:(id)a3
{
  v4 = a3;
  v5 = [(AVTPAvatarRecordDataSource *)self callbackQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(AVTPAvatarRecordDataSource *)self nts_changeNotificationObserver];

  if (!v6)
  {
    objc_initWeak(&location, self);
    v7 = [(AVTPAvatarRecordDataSource *)self notificationCenter];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __57__AVTPAvatarRecordDataSource_performSyncWorkWithRecords___block_invoke;
    v19 = &unk_278CFA0D0;
    objc_copyWeak(&v20, &location);
    v8 = [v7 addObserverForName:@"AVTAvatarStoreDidChangeNotification" object:0 queue:0 usingBlock:&v16];
    [(AVTPAvatarRecordDataSource *)self setNts_changeNotificationObserver:v8, v16, v17, v18, v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  if (![(AVTPAvatarRecordDataSource *)self areRecordsLoaded])
  {
    v9 = objc_opt_class();
    v10 = [(AVTPAvatarRecordDataSource *)self backingStore];
    v11 = [(AVTPAvatarRecordDataSource *)self fetchRequest];
    v12 = [(AVTPAvatarRecordDataSource *)self logger];
    v13 = [v9 loadRecordsWithStore:v10 request:v11 logger:v12];
    v14 = [v13 mutableCopy];
    [(AVTPAvatarRecordDataSource *)self setNts_recordStorage:v14];
  }

  v15 = [(AVTPAvatarRecordDataSource *)self nts_recordStorage];
  v4[2](v4, v15);
}

void __57__AVTPAvatarRecordDataSource_performSyncWorkWithRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained callbackQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__AVTPAvatarRecordDataSource_performSyncWorkWithRecords___block_invoke_2;
  v7[3] = &unk_278CFA0A8;
  v7[4] = WeakRetained;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)performObserversWork:(id)a3
{
  v4 = a3;
  v5 = [(AVTPAvatarRecordDataSource *)self callbackQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(AVTPAvatarRecordDataSource *)self nts_observers];
  [v6 compact];

  v7 = [(AVTPAvatarRecordDataSource *)self nts_observers];
  v4[2](v4, v7);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__AVTPAvatarRecordDataSource_addObserver___block_invoke;
  v6[3] = &unk_278CFA0F8;
  v7 = v4;
  v5 = v4;
  [(AVTPAvatarRecordDataSource *)self performObserversWork:v6];
}

- (void)addPriorityObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__AVTPAvatarRecordDataSource_addPriorityObserver___block_invoke;
  v6[3] = &unk_278CFA0F8;
  v7 = v4;
  v5 = v4;
  [(AVTPAvatarRecordDataSource *)self performObserversWork:v6];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__AVTPAvatarRecordDataSource_removeObserver___block_invoke;
  v6[3] = &unk_278CFA0F8;
  v7 = v4;
  v5 = v4;
  [(AVTPAvatarRecordDataSource *)self performObserversWork:v6];
}

void __45__AVTPAvatarRecordDataSource_removeObserver___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 allObjects];
  v4 = [v3 indexOfObject:*(a1 + 32)];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removePointerAtIndex:v4];
  }
}

- (void)enumerateObserversRespondingToSelector:(SEL)a3 withBlock:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__AVTPAvatarRecordDataSource_enumerateObserversRespondingToSelector_withBlock___block_invoke;
  v8[3] = &unk_278CFA120;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(AVTPAvatarRecordDataSource *)self performObserversWork:v8];
}

void __79__AVTPAvatarRecordDataSource_enumerateObserversRespondingToSelector_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a2 allObjects];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        if (objc_opt_respondsToSelector())
        {
          (*(*(a1 + 32) + 16))();
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)loadRecordsWithStore:(id)a3 request:(id)a4 logger:(id)a5
{
  v8 = a5;
  v15 = 0;
  v9 = [a3 avatarsForFetchRequest:a4 error:&v15];
  v10 = v15;
  v11 = v10;
  if (v9)
  {
    v12 = [a1 sortedRecordsEditableFirstReverseOrder:v9];
  }

  else
  {
    v13 = [v10 description];
    [v8 logReadingError:v13];

    v12 = 0;
  }

  return v12;
}

- (void)avatarStoreDidChange:(id)a3
{
  v4 = a3;
  v5 = [(AVTPAvatarRecordDataSource *)self callbackQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 object];

  v7 = [(AVTPAvatarRecordDataSource *)self underlyingStore];

  if (v6 != v7)
  {
    [(AVTPAvatarRecordDataSource *)self setNts_recordStorage:0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__AVTPAvatarRecordDataSource_avatarStoreDidChange___block_invoke;
    v8[3] = &unk_278CFA148;
    v8[4] = self;
    [(AVTPAvatarRecordDataSource *)self enumerateObserversRespondingToSelector:sel_significantRecordChangeInDataSource_ withBlock:v8];
  }
}

- (unint64_t)numberOfRecords
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __45__AVTPAvatarRecordDataSource_numberOfRecords__block_invoke;
  v4[3] = &unk_278CFA170;
  v4[4] = &v5;
  [(AVTPAvatarRecordDataSource *)self performSyncWorkWithRecords:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __45__AVTPAvatarRecordDataSource_numberOfRecords__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)recordAtIndex:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__AVTPAvatarRecordDataSource_recordAtIndex___block_invoke;
  v5[3] = &unk_278CFA198;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [(AVTPAvatarRecordDataSource *)self performSyncWorkWithRecords:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__AVTPAvatarRecordDataSource_recordAtIndex___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = [v8 count];
  v4 = a1[6];
  if (v3 <= v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Index %lu out of datasource %p bounds, count: %lu", v4, a1[4], objc_msgSend(v8, "count")}];
    v4 = a1[6];
  }

  v5 = [v8 objectAtIndexedSubscript:v4];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)indexesOfRecordsPassingTest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__AVTPAvatarRecordDataSource_indexesOfRecordsPassingTest___block_invoke;
  v8[3] = &unk_278CFA1C0;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(AVTPAvatarRecordDataSource *)self performSyncWorkWithRecords:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __58__AVTPAvatarRecordDataSource_indexesOfRecordsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 indexesOfObjectsPassingTest:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)indexOfRecordPassingTest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__AVTPAvatarRecordDataSource_indexOfRecordPassingTest___block_invoke;
  v8[3] = &unk_278CFA1C0;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(AVTPAvatarRecordDataSource *)self performSyncWorkWithRecords:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __55__AVTPAvatarRecordDataSource_indexOfRecordPassingTest___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 indexOfObjectPassingTest:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)store:(id)a3 didSaveAvatar:(id)a4 postCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(AVTPAvatarRecordDataSource *)self areRecordsLoaded])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__AVTPAvatarRecordDataSource_store_didSaveAvatar_postCompletionHandler___block_invoke;
    v9[3] = &unk_278CFA280;
    v10 = v7;
    v11 = self;
    v12 = v8;
    [(AVTPAvatarRecordDataSource *)self performSyncWorkWithRecords:v9];
  }
}

void __72__AVTPAvatarRecordDataSource_store_didSaveAvatar_postCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__AVTPAvatarRecordDataSource_store_didSaveAvatar_postCompletionHandler___block_invoke_2;
  v15[3] = &unk_278CFA208;
  v16 = *(a1 + 32);
  v4 = [v3 indexOfObjectPassingTest:v15];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = *(a1 + 40);
    v6 = [objc_opt_class() indexForInsertingRecord:*(a1 + 32) inRecords:v3];
    [v3 insertObject:*(a1 + 32) atIndex:v6];
  }

  else
  {
    [v3 replaceObjectAtIndex:v4 withObject:*(a1 + 32)];
    v6 = v4;
  }

  v7 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  v8 = *(a1 + 48);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__AVTPAvatarRecordDataSource_store_didSaveAvatar_postCompletionHandler___block_invoke_3;
  v11[3] = &unk_278CFA258;
  v14 = v7;
  v10 = *(a1 + 32);
  v9 = v10.i64[0];
  v12 = vextq_s8(v10, v10, 8uLL);
  v13 = v6;
  (*(v8 + 16))(v8, v11);
}

uint64_t __72__AVTPAvatarRecordDataSource_store_didSaveAvatar_postCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __72__AVTPAvatarRecordDataSource_store_didSaveAvatar_postCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = &selRef_dataSource_didAddRecord_atIndex_;
  v3 = *(a1 + 56);
  if (!v3)
  {
    v2 = &selRef_dataSource_didEditRecord_atIndex_;
  }

  v4 = *v2;
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__AVTPAvatarRecordDataSource_store_didSaveAvatar_postCompletionHandler___block_invoke_4;
  v8[3] = &unk_278CFA230;
  v11 = v3;
  v8[4] = v5;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = v6;
  v10 = v7;
  [v5 enumerateObserversRespondingToSelector:v4 withBlock:v8];
}

uint64_t __72__AVTPAvatarRecordDataSource_store_didSaveAvatar_postCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    return [a2 dataSource:v2 didAddRecord:v3 atIndex:v4];
  }

  else
  {
    return [a2 dataSource:v2 didEditRecord:v3 atIndex:v4];
  }
}

- (void)store:(id)a3 didDeleteAvatarWithIdentifier:(id)a4 postCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(AVTPAvatarRecordDataSource *)self areRecordsLoaded])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __88__AVTPAvatarRecordDataSource_store_didDeleteAvatarWithIdentifier_postCompletionHandler___block_invoke;
    v9[3] = &unk_278CFA2F8;
    v10 = v7;
    v11 = self;
    v12 = v8;
    [(AVTPAvatarRecordDataSource *)self performSyncWorkWithRecords:v9];
  }
}

void __88__AVTPAvatarRecordDataSource_store_didDeleteAvatarWithIdentifier_postCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__AVTPAvatarRecordDataSource_store_didDeleteAvatarWithIdentifier_postCompletionHandler___block_invoke_2;
  v13[3] = &unk_278CFA208;
  v14 = *(a1 + 32);
  v4 = [v3 indexOfObjectPassingTest:v13];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [v3 objectAtIndex:v4];
    [v3 removeObjectAtIndex:v5];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88__AVTPAvatarRecordDataSource_store_didDeleteAvatarWithIdentifier_postCompletionHandler___block_invoke_3;
    v10[3] = &unk_278CFA2D0;
    v7 = *(a1 + 48);
    v10[4] = *(a1 + 40);
    v11 = v6;
    v12 = v5;
    v8 = *(v7 + 16);
    v9 = v6;
    v8(v7, v10);
  }
}

uint64_t __88__AVTPAvatarRecordDataSource_store_didDeleteAvatarWithIdentifier_postCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __88__AVTPAvatarRecordDataSource_store_didDeleteAvatarWithIdentifier_postCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__AVTPAvatarRecordDataSource_store_didDeleteAvatarWithIdentifier_postCompletionHandler___block_invoke_4;
  v5[3] = &unk_278CFA2A8;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObserversRespondingToSelector:sel_dataSource_didRemoveRecord_atIndex_ withBlock:v5];
}

- (void)store:(id)a3 didCreateDuplicateAvatar:(id)a4 forOriginal:(id)a5 postCompletionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if ([(AVTPAvatarRecordDataSource *)self areRecordsLoaded])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __95__AVTPAvatarRecordDataSource_store_didCreateDuplicateAvatar_forOriginal_postCompletionHandler___block_invoke;
    v12[3] = &unk_278CFA320;
    v12[4] = self;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    [(AVTPAvatarRecordDataSource *)self performSyncWorkWithRecords:v12];
  }
}

void __95__AVTPAvatarRecordDataSource_store_didCreateDuplicateAvatar_forOriginal_postCompletionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [objc_opt_class() indexForInsertingDuplicateRecord:a1[5] original:a1[6] inRecords:v4];
  [v4 insertObject:a1[5] atIndex:v5];

  v6 = a1[7];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__AVTPAvatarRecordDataSource_store_didCreateDuplicateAvatar_forOriginal_postCompletionHandler___block_invoke_2;
  v8[3] = &unk_278CFA2D0;
  v7 = a1[5];
  v8[4] = a1[4];
  v9 = v7;
  v10 = v5;
  (*(v6 + 16))(v6, v8);
}

void __95__AVTPAvatarRecordDataSource_store_didCreateDuplicateAvatar_forOriginal_postCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __95__AVTPAvatarRecordDataSource_store_didCreateDuplicateAvatar_forOriginal_postCompletionHandler___block_invoke_3;
  v5[3] = &unk_278CFA2A8;
  v5[4] = v2;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObserversRespondingToSelector:sel_dataSource_didAddRecord_atIndex_ withBlock:v5];
}

+ (id)defaultUIDataSourceWithDomainIdentifier:(id)a3
{
  v4 = objc_alloc_init(AVTPAvatarStore);
  v5 = +[AVTAvatarFetchRequest requestForAllAvatars];
  v6 = [[a1 alloc] initWithRecordStore:v4 fetchRequest:v5];

  return v6;
}

@end