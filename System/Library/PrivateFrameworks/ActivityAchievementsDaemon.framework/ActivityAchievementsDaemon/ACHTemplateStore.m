@interface ACHTemplateStore
- (ACHTemplateStore)initWithClient:(id)a3 assertionClient:(id)a4 device:(unsigned __int8)a5;
- (BOOL)_queue_addTemplates:(id)a3 triggerSync:(BOOL)a4 error:(id *)a5;
- (BOOL)_queue_addTemplatesToDatabase:(id)a3 error:(id *)a4;
- (BOOL)_queue_loadAllTemplatesFromDatabaseIfNecessary;
- (BOOL)_queue_removeTemplatesFromDatabase:(id)a3 error:(id *)a4;
- (BOOL)addTemplates:(id)a3 error:(id *)a4;
- (BOOL)loadAllTemplatesFromDatabaseIfNecessary;
- (BOOL)removeAllTemplates:(id *)a3;
- (BOOL)removeTemplates:(id)a3 error:(id *)a4;
- (BOOL)removeTemplatesForSource:(id)a3 error:(id *)a4;
- (BOOL)removeTemplatesWithUniqueNames:(id)a3 error:(id *)a4;
- (NSArray)allTemplates;
- (id)_queue_orphanedTemplatesWithFetchedTemplates:(id)a3;
- (id)_queue_templatesFilteredForDuplicates:(id)a3;
- (id)_templatesWithUniqueNames:(id)a3;
- (id)availableTemplatesForDateComponents:(id)a3 countryCode:(id)a4;
- (id)templateForTemplateKey:(unint64_t)a3;
- (id)templateForUniqueName:(id)a3;
- (id)templatesForSource:(id)a3;
- (void)_addTemplatesToLocalCollections:(id)a3;
- (void)_notifyObserversOfInitialFetchCompletion;
- (void)_notifyObserversOfNewTemplates:(id)a3;
- (void)_notifyObserversOfRemovedTemplates:(id)a3;
- (void)_queue_protectedDataAvailabilityChanged:(BOOL)a3;
- (void)_queue_updateTemplatesFromDatabase;
- (void)_removeTemplatesFromLocalCollections:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation ACHTemplateStore

- (ACHTemplateStore)initWithClient:(id)a3 assertionClient:(id)a4 device:(unsigned __int8)a5
{
  v9 = a3;
  v10 = a4;
  v39.receiver = self;
  v39.super_class = ACHTemplateStore;
  v11 = [(ACHTemplateStore *)&v39 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_client, a3);
    objc_storeStrong(&v12->_databaseAssertionClient, a4);
    v12->_device = a5;
    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    templates = v12->_templates;
    v12->_templates = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templatesByUniqueName = v12->_templatesByUniqueName;
    v12->_templatesByUniqueName = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templatesByKey = v12->_templatesByKey;
    v12->_templatesByKey = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templatesBySource = v12->_templatesBySource;
    v12->_templatesBySource = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    templatesReadyToAdd = v12->_templatesReadyToAdd;
    v12->_templatesReadyToAdd = v21;

    v23 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v12->_observers;
    v12->_observers = v23;

    v25 = HKCreateSerialDispatchQueue();
    notificationQueue = v12->_notificationQueue;
    v12->_notificationQueue = v25;

    v27 = HKCreateSerialDispatchQueue();
    synchronizationQueue = v12->_synchronizationQueue;
    v12->_synchronizationQueue = v27;

    objc_initWeak(&location, v12);
    v29 = [*MEMORY[0x277CE8C10] UTF8String];
    v30 = v12->_synchronizationQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __58__ACHTemplateStore_initWithClient_assertionClient_device___block_invoke;
    handler[3] = &unk_2784907F8;
    objc_copyWeak(&v37, &location);
    notify_register_dispatch(v29, &v12->_protectedDataToken, v30, handler);
    v31 = [*MEMORY[0x277CE8B10] UTF8String];
    v32 = v12->_synchronizationQueue;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __58__ACHTemplateStore_initWithClient_assertionClient_device___block_invoke_305;
    v34[3] = &unk_2784907F8;
    objc_copyWeak(&v35, &location);
    notify_register_dispatch(v31, &v12->_syncedTemplatesToken, v32, v34);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __58__ACHTemplateStore_initWithClient_assertionClient_device___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained client];
  v4 = [v3 isProtectedDataAvailable];

  v5 = ACHLogTemplates();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v4;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Template store detected received notification of a change in protected data availability: %d", v9, 8u);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 _queue_protectedDataAvailabilityChanged:v4];

  if (v4)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 _queue_loadAllTemplatesFromDatabaseIfNecessary];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __58__ACHTemplateStore_initWithClient_assertionClient_device___block_invoke_305(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_updateTemplatesFromDatabase];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_protectedDataToken))
  {
    notify_cancel(self->_protectedDataToken);
  }

  if (notify_is_valid_token(self->_syncedTemplatesToken))
  {
    notify_cancel(self->_syncedTemplatesToken);
  }

  v3.receiver = self;
  v3.super_class = ACHTemplateStore;
  [(ACHTemplateStore *)&v3 dealloc];
}

- (void)_queue_protectedDataAvailabilityChanged:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if ([(ACHTemplateStore *)self needsUpdateWhenProtectedDataAvailable])
    {
      [(ACHTemplateStore *)self _queue_updateTemplatesFromDatabase];
    }

    v4 = [(ACHTemplateStore *)self templatesReadyToAdd];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [(ACHTemplateStore *)self templatesReadyToAdd];
      v7 = [v6 copy];

      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(ACHTemplateStore *)self setTemplatesReadyToAdd:v8];

      v9 = ACHLogTemplates();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = [v7 count];
        _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Adding %lu templates after protected data became available", buf, 0xCu);
      }

      v14 = 0;
      v10 = [(ACHTemplateStore *)self _queue_addTemplates:v7 triggerSync:1 error:&v14];
      v11 = v14;
      if (!v10)
      {
        v12 = ACHLogTemplates();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [ACHTemplateStore _queue_protectedDataAvailabilityChanged:];
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (NSArray)allTemplates
{
  v3 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v4 = [(ACHTemplateStore *)self synchronizationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ACHTemplateStore_allTemplates__block_invoke;
  v7[3] = &unk_278490FE8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __32__ACHTemplateStore_allTemplates__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) templates];
  v2 = ACHSortedTemplates();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)templateForUniqueName:(id)a3
{
  v4 = a3;
  v5 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_not_V2(v5);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v6 = [(ACHTemplateStore *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ACHTemplateStore_templateForUniqueName___block_invoke;
  block[3] = &unk_278491010;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v7 = v4;
  dispatch_sync(v6, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __42__ACHTemplateStore_templateForUniqueName___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) templatesByUniqueName];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_templatesWithUniqueNames:(id)a3
{
  v4 = a3;
  v5 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_not_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [(ACHTemplateStore *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ACHTemplateStore__templatesWithUniqueNames___block_invoke;
  block[3] = &unk_278490B98;
  v13 = v4;
  v14 = self;
  v15 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_sync(v7, block);

  v10 = [v8 copy];

  return v10;
}

void __46__ACHTemplateStore__templatesWithUniqueNames___block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [a1[5] templatesByUniqueName];
        v9 = [v8 objectForKeyedSubscript:v7];

        if (v9)
        {
          [a1[6] addObject:v9];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)templateForTemplateKey:(unint64_t)a3
{
  v5 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_not_V2(v5);

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v6 = [(ACHTemplateStore *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ACHTemplateStore_templateForTemplateKey___block_invoke;
  block[3] = &unk_278491038;
  block[4] = self;
  block[5] = &v10;
  block[6] = a3;
  dispatch_sync(v6, block);

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __43__ACHTemplateStore_templateForTemplateKey___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) templatesByKey];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v3 = [v6 objectForKeyedSubscript:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)templatesForSource:(id)a3
{
  v4 = a3;
  v5 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_not_V2(v5);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v6 = [(ACHTemplateStore *)self synchronizationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ACHTemplateStore_templatesForSource___block_invoke;
  block[3] = &unk_278491010;
  v11 = v4;
  v12 = &v13;
  block[4] = self;
  v7 = v4;
  dispatch_sync(v6, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __39__ACHTemplateStore_templatesForSource___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) templatesBySource];
  v2 = [v6 objectForKeyedSubscript:*(a1 + 40)];
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)availableTemplatesForDateComponents:(id)a3 countryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v8 = [(ACHTemplateStore *)self synchronizationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__ACHTemplateStore_availableTemplatesForDateComponents_countryCode___block_invoke;
  v13[3] = &unk_278491060;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v17 = &v18;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __68__ACHTemplateStore_availableTemplatesForDateComponents_countryCode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = [*(a1 + 48) templates];
  v4 = ACHSortedTemplates();
  v5 = ACHAvailableTemplatesForDateComponentsAndCountryCodeInTemplates(v2, v3, v4);
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)loadAllTemplatesFromDatabaseIfNecessary
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ACHTemplateStore *)self synchronizationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__ACHTemplateStore_loadAllTemplatesFromDatabaseIfNecessary__block_invoke;
  v5[3] = &unk_278490FE8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __59__ACHTemplateStore_loadAllTemplatesFromDatabaseIfNecessary__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_loadAllTemplatesFromDatabaseIfNecessary];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_queue_loadAllTemplatesFromDatabaseIfNecessary
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(ACHTemplateStore *)self initialFetchComplete])
  {
    v3 = ACHLogDatabase();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Template Store has already completed initial fetch", buf, 2u);
    }

    v4 = 1;
  }

  else
  {
    v5 = [(ACHTemplateStore *)self client];
    v12 = 0;
    v6 = [v5 fetchAllTemplatesWithError:&v12];
    v3 = v12;

    if ([v6 count])
    {
      [(ACHTemplateStore *)self _addTemplatesToLocalCollections:v6];
    }

    v4 = v3 == 0;
    v7 = ACHLogDatabase();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v8)
      {
        *buf = 138412290;
        v14 = v3;
        _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Error fetching templates: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v8)
      {
        v9 = [v6 count];
        *buf = 134217984;
        v14 = v9;
        _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Initial fetch returned %lu templates, notifying observers of new templates and initial fetch complete", buf, 0xCu);
      }

      [(ACHTemplateStore *)self setInitialFetchComplete:1];
      [(ACHTemplateStore *)self _notifyObserversOfInitialFetchCompletion];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_queue_updateTemplatesFromDatabase
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error fetching templates: %@\nWill run again when protected data becomes available.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_queue_templatesFilteredForDuplicates:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ACHTemplateStore__queue_templatesFilteredForDuplicates___block_invoke;
  v8[3] = &unk_278491088;
  v8[4] = self;
  v4 = a3;
  v5 = [v3 predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

BOOL __58__ACHTemplateStore__queue_templatesFilteredForDuplicates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) templatesByUniqueName];
  v5 = [v3 uniqueName];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 version];
    v8 = v7 < [v3 version];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_queue_orphanedTemplatesWithFetchedTemplates:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 uniqueName];
        [v5 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v13 = [(ACHTemplateStore *)self templates];
  v14 = [v13 allObjects];
  v15 = MEMORY[0x277CCAC30];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __65__ACHTemplateStore__queue_orphanedTemplatesWithFetchedTemplates___block_invoke;
  v21[3] = &unk_278491088;
  v22 = v5;
  v16 = v5;
  v17 = [v15 predicateWithBlock:v21];
  v18 = [v14 filteredArrayUsingPredicate:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

BOOL __65__ACHTemplateStore__queue_orphanedTemplatesWithFetchedTemplates___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueName];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4 == 0;
}

- (BOOL)addTemplates:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v7 = [(ACHTemplateStore *)self synchronizationQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__ACHTemplateStore_addTemplates_error___block_invoke;
  v14[3] = &unk_2784910B0;
  v16 = &v24;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v18;
  dispatch_sync(v7, v14);

  if (v25[3])
  {
    v9 = 1;
  }

  else
  {
    v10 = v19[5];
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

    v9 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9 & 1;
}

void __39__ACHTemplateStore_addTemplates_error___block_invoke(uint64_t a1)
{
  v2 = a1 + 56;
  v1 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(v2 - 16);
  v5 = *(v1 + 8);
  obj = *(v5 + 40);
  v6 = [v3 _queue_addTemplates:v4 triggerSync:1 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(v2 - 8) + 8) + 24) = v6;
  if ((*(*(*(v2 - 8) + 8) + 24) & 1) == 0)
  {
    v7 = ACHLogTemplates();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __39__ACHTemplateStore_addTemplates_error___block_invoke_cold_1(v2, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (BOOL)_queue_addTemplates:(id)a3 triggerSync:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(ACHTemplateStore *)self _queue_templatesFilteredForDuplicates:v8];

  v11 = [v10 hk_filter:&__block_literal_global_5];

  if ([v11 count])
  {
    v12 = [MEMORY[0x277CBEAA8] date];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke_315;
    v21 = &unk_2784910F8;
    v22 = v12;
    v23 = self;
    v13 = v12;
    v14 = [v11 hk_map:&v18];
    v15 = [(ACHTemplateStore *)self _queue_addTemplatesToDatabase:v14 error:a5, v18, v19, v20, v21];
    if (v15)
    {
      [(ACHTemplateStore *)self _addTemplatesToLocalCollections:v14];
      [(ACHTemplateStore *)self _notifyObserversOfNewTemplates:v14];
      if (!v6)
      {
LABEL_8:

        goto LABEL_9;
      }

      v16 = [(ACHTemplateStore *)self client];
      [v16 triggerSyncWithCompletion:&__block_literal_global_319_0];
    }

    else
    {
      v16 = [(ACHTemplateStore *)self templatesReadyToAdd];
      [v16 addObjectsFromArray:v11];
    }

    goto LABEL_8;
  }

  LOBYTE(v15) = 1;
LABEL_9:

  return v15;
}

uint64_t __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 minimumEngineVersion] < 0x10)
  {
    v4 = [v2 _isValid];
  }

  else
  {
    v3 = ACHLogTemplates();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke_cold_1(v2, v3);
    }

    v4 = 0;
  }

  return v4;
}

id __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke_315(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  [v3 setCreatedDate:*(a1 + 32)];
  [v3 setCreatorDevice:{objc_msgSend(*(a1 + 40), "device")}];

  return v3;
}

void __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = ACHLogSync();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke_2_cold_1(a2, v5);
  }

  if (v4)
  {
    v6 = ACHLogSync();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke_2_cold_2();
    }
  }
}

- (BOOL)_queue_addTemplatesToDatabase:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_V2(v6);

  v7 = [(ACHTemplateStore *)self databaseAssertionClient];
  v36 = 0;
  v8 = [v7 acquireDatabaseAssertionWithIdentifier:@"ACHTemplateStore" error:&v36];
  v9 = v36;

  if (!v8)
  {
    v10 = ACHLogTemplates();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38[0] = v9;
      _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "BEWARE: Unable to acquire a database assertion. The following operation may fail. %@", buf, 0xCu);
    }
  }

  v29 = v9;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v32 + 1) + 8 * v16);
        v18 = [(ACHTemplateStore *)self templatesByUniqueName];
        v19 = [v17 uniqueName];
        v20 = [v18 objectForKeyedSubscript:v19];

        if (v20)
        {
          [v11 addObject:v20];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v14);
  }

  v21 = [(ACHTemplateStore *)self client];
  v22 = [v21 addTemplates:v12 removingTemplates:v11 error:a4];

  if (v8)
  {
    v23 = [(ACHTemplateStore *)self databaseAssertionClient];
    v31 = v29;
    v24 = [v23 invalidateAssertionWithToken:v8 error:&v31];
    v25 = v31;

    v26 = ACHLogTemplates();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      LODWORD(v38[0]) = v24;
      WORD2(v38[0]) = 2112;
      *(v38 + 6) = v25;
      _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "Invalidated assertion with success %d; error: %@", buf, 0x12u);
    }
  }

  else
  {
    v25 = v29;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)_addTemplatesToLocalCollections:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        v12 = [(ACHTemplateStore *)self templatesByUniqueName];
        v13 = [v11 uniqueName];
        v14 = [v12 objectForKeyedSubscript:v13];

        v15 = [v11 minimumEngineVersion];
        v16 = v15;
        if (v14)
        {
          v17 = [v11 version];
          v18 = [v14 version];
          if (v16 > 0xF || v17 <= v18)
          {
            goto LABEL_18;
          }

          v20 = [(ACHTemplateStore *)self templates];
          [v20 removeObject:v14];

          [v6 addObject:v14];
        }

        else if (v15 >= 0x10)
        {
          goto LABEL_18;
        }

        v21 = [(ACHTemplateStore *)self templates];
        [v21 addObject:v11];

        v22 = [(ACHTemplateStore *)self templatesByUniqueName];
        v23 = [v11 uniqueName];
        [v22 setObject:v11 forKey:v23];

        v24 = [(ACHTemplateStore *)self templatesByKey];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "key")}];
        [v24 setObject:v11 forKey:v25];

        v26 = [v11 sourceName];

        if (v26)
        {
          v27 = v6;
          v28 = [(ACHTemplateStore *)self templatesBySource];
          v29 = [v11 sourceName];
          v30 = [v28 objectForKeyedSubscript:v29];

          if (!v30)
          {
            v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v31 = [(ACHTemplateStore *)self templatesBySource];
            v32 = [v11 sourceName];
            [v31 setObject:v30 forKeyedSubscript:v32];
          }

          [v30 addObject:v11];

          v6 = v27;
        }

LABEL_18:

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    [(ACHTemplateStore *)self _notifyObserversOfRemovedTemplates:v6];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeTemplates:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v7 = [(ACHTemplateStore *)self synchronizationQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__ACHTemplateStore_removeTemplates_error___block_invoke;
  v14[3] = &unk_2784910B0;
  v16 = &v24;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v17 = &v18;
  dispatch_sync(v7, v14);

  if (v25[3])
  {
    v9 = 1;
  }

  else
  {
    v10 = v19[5];
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

    v9 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9 & 1;
}

void __42__ACHTemplateStore_removeTemplates_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _queue_removeTemplatesFromDatabase:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v5;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) _removeTemplatesFromLocalCollections:*(a1 + 40)];
  }
}

- (BOOL)removeTemplatesForSource:(id)a3 error:(id *)a4
{
  v6 = [(ACHTemplateStore *)self templatesForSource:a3];
  LOBYTE(a4) = [(ACHTemplateStore *)self removeTemplates:v6 error:a4];

  return a4;
}

- (BOOL)removeTemplatesWithUniqueNames:(id)a3 error:(id *)a4
{
  v6 = [(ACHTemplateStore *)self _templatesWithUniqueNames:a3];
  LOBYTE(a4) = [(ACHTemplateStore *)self removeTemplates:v6 error:a4];

  return a4;
}

- (BOOL)removeAllTemplates:(id *)a3
{
  v5 = [(ACHTemplateStore *)self allTemplates];
  LOBYTE(a3) = [(ACHTemplateStore *)self removeTemplates:v5 error:a3];

  return a3;
}

- (BOOL)_queue_removeTemplatesFromDatabase:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ACHTemplateStore *)self client];
  LOBYTE(a4) = [v8 removeTemplates:v6 error:a4];

  return a4;
}

- (void)_removeTemplatesFromLocalCollections:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACHTemplateStore *)self synchronizationQueue];
  dispatch_assert_queue_V2(v5);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v10 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [(ACHTemplateStore *)self templatesByUniqueName];
        v14 = [v12 uniqueName];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = [(ACHTemplateStore *)self templates];
          [v16 removeObject:v15];

          v17 = [(ACHTemplateStore *)self templatesByUniqueName];
          v18 = [v15 uniqueName];
          [v17 removeObjectForKey:v18];

          v19 = [(ACHTemplateStore *)self templatesByKey];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "key")}];
          [v19 removeObjectForKey:v20];

          v21 = [(ACHTemplateStore *)self templatesBySource];
          v22 = [v15 sourceName];
          v23 = [v21 objectForKeyedSubscript:v22];

          [v23 removeObject:v15];
          v24 = [v10 arrayByAddingObject:v15];

          v10 = v24;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  if ([v10 count])
  {
    [(ACHTemplateStore *)self _notifyObserversOfRemovedTemplates:v10];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACHTemplateStore *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__ACHTemplateStore_addObserver___block_invoke;
  v7[3] = &unk_278490898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __32__ACHTemplateStore_addObserver___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) conformsToProtocol:&unk_283565E80])
  {
    v3 = [*(a1 + 40) observers];
    [v3 addObject:*(a1 + 32)];
  }

  else
  {
    v4 = ACHLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __32__ACHTemplateStore_addObserver___block_invoke_cold_1(v2, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = [*(a1 + 40) initialFetchComplete];
  if (result)
  {
    return [*(a1 + 32) templateStoreDidFinishInitialFetch:*(a1 + 40)];
  }

  return result;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACHTemplateStore *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__ACHTemplateStore_removeObserver___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __35__ACHTemplateStore_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];
  }
}

- (void)_notifyObserversOfInitialFetchCompletion
{
  v3 = [(ACHTemplateStore *)self notificationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ACHTemplateStore__notifyObserversOfInitialFetchCompletion__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(v3, block);
}

void __60__ACHTemplateStore__notifyObserversOfInitialFetchCompletion__block_invoke(uint64_t a1)
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

        [*(*(&v8 + 1) + 8 * v6++) templateStoreDidFinishInitialFetch:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfNewTemplates:(id)a3
{
  v4 = a3;
  v5 = [(ACHTemplateStore *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__ACHTemplateStore__notifyObserversOfNewTemplates___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __51__ACHTemplateStore__notifyObserversOfNewTemplates___block_invoke(uint64_t a1)
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

        [*(*(&v8 + 1) + 8 * v6++) templateStore:*(a1 + 32) didAddNewTemplates:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfRemovedTemplates:(id)a3
{
  v4 = a3;
  v5 = [(ACHTemplateStore *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ACHTemplateStore__notifyObserversOfRemovedTemplates___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __55__ACHTemplateStore__notifyObserversOfRemovedTemplates___block_invoke(uint64_t a1)
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

        [*(*(&v8 + 1) + 8 * v6++) templateStore:*(a1 + 32) didRemoveTemplates:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_protectedDataAvailabilityChanged:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error adding templates after protected data became available: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__ACHTemplateStore_addTemplates_error___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*(*a1 + 8) + 40));
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Error adding templates: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 uniqueName];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Template minimum engine version higher than we support, not adding: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke_2_cold_1(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_221DDC000, a2, OS_LOG_TYPE_DEBUG, "Triggered sync for templates, success: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __58__ACHTemplateStore__queue_addTemplates_triggerSync_error___block_invoke_2_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error triggering sync for templates: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __32__ACHTemplateStore_addObserver___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Template store did not add observer %@ since it doesn't conform to the observer protocol.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end