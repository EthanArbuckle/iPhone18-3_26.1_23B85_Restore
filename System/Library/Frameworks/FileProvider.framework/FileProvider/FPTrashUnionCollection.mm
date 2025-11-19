@interface FPTrashUnionCollection
- (FPTrashUnionCollection)initWithQueryCollection:(id)a3;
- (id)scopedSearchQuery;
- (void)fetchTrashItemsFromProvider:(id)a3 completionHandler:(id)a4;
- (void)updateCollectionsForDomains:(id)a3;
@end

@implementation FPTrashUnionCollection

- (FPTrashUnionCollection)initWithQueryCollection:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17.receiver = self;
  v17.super_class = FPTrashUnionCollection;
  v7 = [(FPUnionCollection *)&v17 initWithCollections:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_trashQueryCollection, a3);
    v8 = [(FPItemCollection *)v7->_trashQueryCollection updateQueue];
    queue = v7->_queue;
    v7->_queue = v8;

    objc_initWeak(&location, v7);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__FPTrashUnionCollection_initWithQueryCollection___block_invoke;
    v14[3] = &unk_1E793DB50;
    objc_copyWeak(&v15, &location);
    v10 = [FPProviderDomain beginMonitoringProviderDomainChangesWithHandler:v14];
    providerDomainChangesToken = v7->_providerDomainChangesToken;
    v7->_providerDomainChangesToken = v10;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

void __50__FPTrashUnionCollection_initWithQueryCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 allValues];
    v6 = [WeakRetained filterDomains:v5];

    v7 = WeakRetained[32];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__FPTrashUnionCollection_initWithQueryCollection___block_invoke_2;
    v9[3] = &unk_1E79390B8;
    v10 = WeakRetained;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, v9);
  }
}

BOOL __40__FPTrashUnionCollection_filterDomains___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 spotlightMountPoint];
  v3 = v2 != 0;

  return v3;
}

- (void)fetchTrashItemsFromProvider:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[FPItemManager defaultManager];
  v8 = [v6 identifier];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__FPTrashUnionCollection_fetchTrashItemsFromProvider_completionHandler___block_invoke;
  v10[3] = &unk_1E793DBC0;
  v11 = v5;
  v9 = v5;
  [v7 fetchOperationServiceForProviderDomainID:v8 handler:v10];
}

void __72__FPTrashUnionCollection_fetchTrashItemsFromProvider_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }

  else
  {
    v4 = [a2 remoteObjectProxy];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __72__FPTrashUnionCollection_fetchTrashItemsFromProvider_completionHandler___block_invoke_2;
    v7[3] = &unk_1E793DB98;
    v8 = *(a1 + 32);
    [v4 fetchTrashIdentifiersWithCompletionHandler:v7];
  }
}

- (void)updateCollectionsForDomains:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(FPTrashUnionCollection *)v4 updateCollectionsForDomains:v5];
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count") + 1}];
  [v6 addObject:self->_trashQueryCollection];
  v7 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        dispatch_group_enter(v7);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke;
        v19[3] = &unk_1E793DBE8;
        v19[4] = v12;
        v20 = v6;
        v21 = v7;
        [(FPTrashUnionCollection *)self fetchTrashItemsFromProvider:v12 completionHandler:v19];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke_8;
  block[3] = &unk_1E79390B8;
  block[4] = self;
  v18 = v6;
  v14 = v6;
  dispatch_group_notify(v7, queue, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v16 = a3;
  if (v16)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke_cold_1(v16, a1);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    objc_sync_enter(v5);
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke_cold_2(v17, a1);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v17;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:{16, 0}];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = *(a1 + 40);
          v13 = +[FPItemManager defaultManager];
          v14 = [v13 newCollectionWithItemID:v11];
          [v12 addObject:v14];
        }

        v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    objc_sync_exit(v5);
  }

  dispatch_group_leave(*(a1 + 48));
  v15 = *MEMORY[0x1E69E9840];
}

- (id)scopedSearchQuery
{
  v2 = [[NSFileProviderSearchQuery alloc] initWithSearchScope:0];

  return v2;
}

- (void)updateCollectionsForDomains:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] updating trash collection with domains %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v3, v4, "[DEBUG] Received error %@ looking for trash items on domain %@");
  v5 = *MEMORY[0x1E69E9840];
}

void __54__FPTrashUnionCollection_updateCollectionsForDomains___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_0(&dword_1AAAE1000, v3, v4, "[DEBUG] received trash items %@ for domain %@");
  v5 = *MEMORY[0x1E69E9840];
}

@end