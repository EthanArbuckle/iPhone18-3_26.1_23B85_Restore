@interface FPSpotlightCollector
+ (id)_recursiveDescription;
+ (id)processingQueue;
- (BOOL)_shouldFilterUpdatesForObserver:(id)a3;
- (BOOL)isQueryCancelled:(id)a3;
- (BOOL)isSuspended;
- (FPSpotlightCollector)init;
- (FPSpotlightCollector)initWithDescriptor:(id)a3;
- (FPSpotlightCollectorDelegate)delegate;
- (id)_allItemsForMountPoint:(id)a3;
- (id)_createQueriesForMountPoints:(id)a3;
- (id)_createQueryForMountPoint:(id)a3;
- (id)_mountPointForExistingSearchQuery:(id)a3;
- (id)_mountPointsForDescriptor;
- (id)allItems;
- (id)allItemsForObserver:(id)a3;
- (id)allObservers;
- (id)description;
- (id)filterItems:(id)a3 forObserver:(id)a4 excludedItemIDs:(id *)a5;
- (unint64_t)_itemsOriginForItems:(id)a3;
- (void)_addObserver:(id)a3;
- (void)_clear;
- (void)_regather;
- (void)_removeItemsForQuery:(id)a3 mountPoint:(id)a4;
- (void)_removeObserver:(id)a3;
- (void)_start;
- (void)_stop;
- (void)addObserver:(id)a3;
- (void)mountPointsDidChange:(id)a3;
- (void)query:(id)a3 didFinishWithError:(id)a4;
- (void)query:(id)a3 didRemoveItemsWithCSIdentifiers:(id)a4 inBundle:(id)a5;
- (void)query:(id)a3 didUpdateItems:(id)a4;
- (void)queryDidFinishGathering:(id)a3;
- (void)removeObserver:(id)a3;
- (void)resume;
- (void)setNeedsItemsOriginUpdate;
- (void)suspend;
@end

@implementation FPSpotlightCollector

+ (id)processingQueue
{
  if (processingQueue_onceToken != -1)
  {
    +[FPSpotlightCollector processingQueue];
  }

  v3 = processingQueue_processingQueue;

  return v3;
}

void __39__FPSpotlightCollector_processingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.DocumentManager.Spotlight.processingQueue", v2);
  v1 = processingQueue_processingQueue;
  processingQueue_processingQueue = v0;
}

- (void)_clear
{
  v3 = objc_opt_new();
  observers = self->_observers;
  self->_observers = v3;

  self->_gathering = 1;
  v5 = objc_opt_new();
  itemsByBundleAndCSID = self->_itemsByBundleAndCSID;
  self->_itemsByBundleAndCSID = v5;

  v7 = objc_opt_new();
  itemsByProviderAndCollaborationIdentifier = self->_itemsByProviderAndCollaborationIdentifier;
  self->_itemsByProviderAndCollaborationIdentifier = v7;

  MEMORY[0x1EEE66BB8]();
}

- (void)_start
{
  OUTLINED_FUNCTION_6_0();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 description];
  v9 = [v0 description];
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_mountPointsForDescriptor
{
  v3 = [(FPSpotlightCollector *)self queryDescriptor];
  v4 = [v3 supportsQueryingAllMountPoints];

  if (v4 && ([(FPSpotlightCollector *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(FPSpotlightCollector *)self delegate];
    v7 = [v6 mountPointsForCollector:self];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObject:@"FPQueryCollectionDefaultMountPointIdentifier"];
  }

  return v7;
}

- (FPSpotlightCollectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setNeedsItemsOriginUpdate
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(FPSpotlightCollector *)self allItems];
  v4 = [(FPSpotlightCollector *)self _itemsOriginForItems:v3];

  if (v4 != [(FPSpotlightCollector *)self itemsOrigin])
  {
    [(FPSpotlightCollector *)self setItemsOrigin:v4];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_observers;
    v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) collector:self didUpdateItemsOrigin:{-[FPSpotlightCollector itemsOrigin](self, "itemsOrigin", v11)}];
        }

        while (v7 != v9);
        v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)allItems
{
  v3 = objc_opt_new();
  itemsByBundleAndCSID = self->_itemsByBundleAndCSID;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__FPSpotlightCollector_allItems__block_invoke;
  v7[3] = &unk_1E793AAC0;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)itemsByBundleAndCSID enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __32__FPSpotlightCollector_allItems__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 allValues];
  [v3 addObjectsFromArray:v4];
}

+ (id)_recursiveDescription
{
  v2 = +[FPSpotlightCollectorManager sharedInstance];
  v3 = [v2 _recursiveDescription];

  return v3;
}

- (FPSpotlightCollector)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"FPSpotlightCollector.m" lineNumber:109 description:@"UNREACHABLE: call -initWithDescriptor: instead"];

  return [(FPSpotlightCollector *)self initWithDescriptor:0];
}

- (FPSpotlightCollector)initWithDescriptor:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = FPSpotlightCollector;
  v6 = [(FPSpotlightCollector *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queryDescriptor, a3);
    v8 = [objc_opt_class() processingQueue];
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v8;

    v10 = objc_opt_new();
    queries = v7->_queries;
    v7->_queries = v10;

    v12 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:261 valueOptions:256 capacity:10];
    queryToMountPoint = v7->_queryToMountPoint;
    v7->_queryToMountPoint = v12;

    [(FPSpotlightCollector *)v7 _clear];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(FPSpotlightCollector *)self queryDescriptor];
  v7 = [v6 name];
  v8 = [v3 stringWithFormat:@"<%@:%p n:%@>", v5, self, v7];

  return v8;
}

- (BOOL)isSuspended
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processingQueue = self->_processingQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__FPSpotlightCollector_isSuspended__block_invoke;
  v5[3] = &unk_1E793AA20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_addObserver:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_processingQueue);
  if (([(NSMutableSet *)self->_observers containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_observers addObject:v4];
  }

  if (self->_suspended)
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightCollector _addObserver:];
    }
  }

  else
  {
    if (!self->_gathering)
    {
      v6 = [(FPSpotlightCollector *)self allItemsForObserver:v4];
      v7 = fp_current_or_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v11 = [(FPSpotlightCollector *)self description];
        v12 = 138412802;
        v13 = v11;
        v14 = 2112;
        v15 = v4;
        v16 = 2048;
        v17 = [v6 count];
        _os_log_debug_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Adding observer %@: gathering %ld items", &v12, 0x20u);
      }

      [v4 collector:self didGatherItems:v6];
    }

    v8 = [(FPSpotlightCollector *)self queries];
    v9 = [v8 count];

    if (!v9)
    {
      [(FPSpotlightCollector *)self _start];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FPSpotlightCollector_addObserver___block_invoke;
  block[3] = &unk_1E793AA48;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(processingQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __36__FPSpotlightCollector_addObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _addObserver:*(a1 + 32)];
}

- (void)_removeObserver:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPSpotlightCollector _removeObserver:];
  }

  [(NSMutableSet *)self->_observers removeObject:v4];
  if (![(NSMutableSet *)self->_observers count])
  {
    v6 = [(FPSpotlightCollector *)self queryDescriptor];
    v7 = [v6 keepCollectorsAlive];

    if ((v7 & 1) == 0)
    {
      [(FPSpotlightCollector *)self _stop];
      v8 = [(FPSpotlightCollector *)self delegate];
      [v8 collectorDidFinish:self];
    }
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  processingQueue = self->_processingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FPSpotlightCollector_removeObserver___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(processingQueue, v7);
}

- (id)allObservers
{
  v2 = [(NSMutableSet *)self->_observers copy];

  return v2;
}

- (void)_stop
{
  OUTLINED_FUNCTION_3();
  v12 = *MEMORY[0x1E69E9840];
  v3 = [v2 description];
  v4 = [v1 queries];
  [v4 count];
  v5 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)suspend
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__FPSpotlightCollector_suspend__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_sync(processingQueue, block);
}

_BYTE *__31__FPSpotlightCollector_suspend__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {
    result = [result _stop];
    *(*(a1 + 32) + 24) = 1;
  }

  return result;
}

- (void)resume
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__FPSpotlightCollector_resume__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_sync(processingQueue, block);
}

_BYTE *__30__FPSpotlightCollector_resume__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[24] == 1)
  {
    result = [result _start];
    *(*(a1 + 32) + 24) = 0;
  }

  return result;
}

- (void)mountPointsDidChange:(id)a3
{
  v5 = a3;
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FPSpotlightCollector_mountPointsDidChange___block_invoke;
  block[3] = &unk_1E793AA70;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_async(processingQueue, block);
}

void __45__FPSpotlightCollector_mountPointsDidChange___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  obj = [*(a1 + 32) observers];
  if ([obj count] && *(*v2 + 24) != 1)
  {
    v4 = [*v2 queryDescriptor];
    v5 = [v4 supportsQueryingAllMountPoints];

    if (v5)
    {
      v39 = [*(a1 + 40) mutableCopy];
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
      v40 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obja = [*(a1 + 32) queries];
      v7 = [obja countByEnumeratingWithState:&v51 objects:v65 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v52;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v52 != v9)
            {
              objc_enumerationMutation(obja);
            }

            v11 = *(*(&v51 + 1) + 8 * i);
            v12 = [*v2 _mountPointForExistingSearchQuery:v11];
            if (!v12)
            {
              __45__FPSpotlightCollector_mountPointsDidChange___block_invoke_cold_1();
            }

            if ([*(a1 + 40) containsObject:v12])
            {
              [v39 removeObject:v12];
            }

            else
            {
              if ([v12 isEqualToString:@"FPQueryCollectionDefaultMountPointIdentifier"])
              {
                __45__FPSpotlightCollector_mountPointsDidChange___block_invoke_cold_2();
              }

              v13 = fp_current_or_default_log();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v14 = [*v2 description];
                v38 = NSStringFromSelector(*(a1 + 48));
                *buf = 138412802;
                v56 = v14;
                v57 = 2112;
                v58 = v11;
                v59 = 2112;
                v60 = v38;
                _os_log_debug_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Cancelling query %@ (%@)", buf, 0x20u);
              }

              [v11 cancel];
              [v40 addObject:v11];
              [*v2 _removeItemsForQuery:v11 mountPoint:v12];
            }
          }

          v8 = [obja countByEnumeratingWithState:&v51 objects:v65 count:16];
        }

        while (v8);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v15 = v39;
      v16 = [v15 countByEnumeratingWithState:&v47 objects:v64 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v48;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v48 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*v2 _createQueryForMountPoint:*(*(&v47 + 1) + 8 * j)];
            [v6 addObject:v20];
          }

          v17 = [v15 countByEnumeratingWithState:&v47 objects:v64 count:16];
        }

        while (v17);
      }

      v21 = [*v2 queries];
      [v21 removeObjectsInArray:v40];

      v22 = [*v2 queries];
      [v22 addObjectsFromArray:v6];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v23 = v6;
      v24 = [v23 countByEnumeratingWithState:&v43 objects:v63 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v44;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v44 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v43 + 1) + 8 * k);
            v29 = fp_current_or_default_log();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v30 = [*v2 description];
              *buf = 138412546;
              v56 = v30;
              v57 = 2048;
              v58 = v28;
              _os_log_debug_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Starting query %p", buf, 0x16u);
            }

            [v28 start];
          }

          v25 = [v23 countByEnumeratingWithState:&v43 objects:v63 count:16];
        }

        while (v25);
      }

      v31 = fp_current_or_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v33 = [*v2 description];
        v34 = [*v2 queries];
        v35 = [v34 count];
        v36 = [v40 count];
        v37 = [v23 count];
        *buf = 138413058;
        v56 = v33;
        v57 = 2048;
        v58 = v35;
        v59 = 2048;
        v60 = v36;
        v61 = 2048;
        v62 = v37;
        _os_log_debug_impl(&dword_1AAAE1000, v31, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Number of queries after mount points changed: %ld (cancelled %ld old query/ies, started %ld new query/ies).", buf, 0x2Au);
      }
    }

    v32 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v3 = *MEMORY[0x1E69E9840];
  }
}

- (BOOL)_shouldFilterUpdatesForObserver:(id)a3
{
  v4 = a3;
  if ([(FPSpotlightCollector *)self _shouldRemoveItemsFromObserver:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 itemPredicateForCollector:self];
    v5 = v6 != 0;
  }

  return v5;
}

- (id)_mountPointForExistingSearchQuery:(id)a3
{
  processingQueue = self->_processingQueue;
  v5 = a3;
  dispatch_assert_queue_V2(processingQueue);
  v6 = [(NSMapTable *)self->_queryToMountPoint objectForKey:v5];

  return v6;
}

- (id)filterItems:(id)a3 forObserver:(id)a4 excludedItemIDs:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    *a5 = v10;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 itemPredicateForCollector:self];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __64__FPSpotlightCollector_filterItems_forObserver_excludedItemIDs___block_invoke;
  v19[3] = &unk_1E793AA98;
  v20 = v11;
  v21 = self;
  v13 = v12;
  v22 = v13;
  v23 = v10;
  v14 = v10;
  v15 = v11;
  [v8 enumerateObjectsUsingBlock:v19];
  v16 = v23;
  v17 = v13;

  return v13;
}

void __64__FPSpotlightCollector_filterItems_forObserver_excludedItemIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 evaluateWithObject:v3] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 collaborationIdentifier];

  if (v6)
  {
    v7 = *(*(a1 + 40) + 16);
    v8 = [v3 providerIDForDeduplication];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v3 collaborationIdentifier];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = [v3 isEqual:v11] ^ 1;
    }

    else
    {
      v13 = fp_current_or_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __64__FPSpotlightCollector_filterItems_forObserver_excludedItemIDs___block_invoke_cold_1();
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v5 | v12))
  {
    v14 = *(a1 + 56);
    if (v14)
    {
      v15 = [v3 itemID];
      [v14 addObject:v15];
    }
  }

  else
  {
    [*(a1 + 48) addObject:v3];
  }
}

- (id)_allItemsForMountPoint:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_itemsByBundleAndCSID objectForKeyedSubscript:@"com.apple.filesystems.UserFS.FileProvider"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 allValues];
    v8 = MEMORY[0x1E696AE18];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__FPSpotlightCollector__allItemsForMountPoint___block_invoke;
    v12[3] = &unk_1E793AAE8;
    v13 = v4;
    v9 = [v8 predicateWithBlock:v12];
    v10 = [v7 filteredArrayUsingPredicate:v9];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

uint64_t __47__FPSpotlightCollector__allItemsForMountPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 domainIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)allItemsForObserver:(id)a3
{
  v28[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FPSpotlightCollector *)self allItems];
  v6 = [(FPSpotlightCollector *)self filterItems:v5 forObserver:v4 excludedItemIDs:0];
  v7 = [v4 maximumNumberOfItems];

  if ([v6 count] > v7)
  {
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastUsedDate" ascending:0];
    v28[0] = v8;
    v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"contentModificationDate" ascending:0];
    v28[1] = v9;
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"displayName" ascending:1];
    v28[2] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    [v6 sortUsingDescriptors:v11];

    v12 = [v6 count] - v7;
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = [(FPSpotlightCollector *)self description];
      v18 = [v6 count];
      v30.location = v7;
      v30.length = v12;
      v19 = NSStringFromRange(v30);
      v20 = 138413058;
      v21 = v17;
      v22 = 2048;
      v23 = v18;
      v24 = 2048;
      v25 = v7;
      v26 = 2112;
      v27 = v19;
      _os_log_debug_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Too many results (%ld > %ld), will cut off the items in range %@.", &v20, 0x2Au);
    }

    v14 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7, v12}];
    [v6 removeObjectsAtIndexes:v14];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isQueryCancelled:(id)a3
{
  v4 = a3;
  v5 = [(FPSpotlightCollector *)self queries];
  v6 = [v5 containsObject:v4];

  return v6 ^ 1;
}

- (void)query:(id)a3 didRemoveItemsWithCSIdentifiers:(id)a4 inBundle:(id)a5
{
  v128 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_processingQueue);
  if (![(FPSpotlightCollector *)self isQueryCancelled:v8])
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(FPSpotlightCollector *)self description];
      v80 = self;
      v82 = v81 = v9;
      *buf = 138413314;
      v119 = v82;
      v120 = 2112;
      v121 = v8;
      v122 = 2080;
      v123 = "removed";
      v124 = 2048;
      v125 = [v81 count];
      v126 = 2112;
      v127 = v81;
      _os_log_debug_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Did remove items for query:%@ (%s %ld items) %@", buf, 0x34u);

      v9 = v81;
      self = v80;
    }

    if (v10)
    {
      if (!self->_gathering)
      {
        v84 = v8;
        v85 = v10;
        v92 = self;
        v12 = [(NSMutableDictionary *)self->_itemsByBundleAndCSID objectForKeyedSubscript:v10];
        v91 = objc_opt_new();
        v90 = objc_opt_new();
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v83 = v9;
        obj = v9;
        v13 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
        v87 = v12;
        if (v13)
        {
          v14 = v13;
          v15 = *v110;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v110 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v109 + 1) + 8 * i);
              v18 = [v12 objectForKeyedSubscript:v17];
              v19 = v18;
              if (v18)
              {
                v20 = [v18 itemID];
                [v91 addObject:v20];

                [v90 addObject:v19];
                v21 = [v19 providerIDForDeduplication];
                v22 = [v19 collaborationIdentifier];
                v23 = [v19 collaborationIdentifier];
                if (v23)
                {
                  v24 = v23;
                  v25 = [(NSMutableDictionary *)v92->_itemsByProviderAndCollaborationIdentifier objectForKeyedSubscript:v21];
                  v26 = [v25 objectForKeyedSubscript:v22];
                  v27 = [v26 isEqual:v19];

                  v12 = v87;
                  if (v27)
                  {
                    v28 = [(NSMutableDictionary *)v92->_itemsByProviderAndCollaborationIdentifier objectForKeyedSubscript:v21];
                    [v28 setObject:0 forKeyedSubscript:v22];
                  }
                }
              }

              else
              {
                v21 = fp_current_or_default_log();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v29 = [(FPSpotlightCollector *)v92 description];
                  *buf = 138412546;
                  v119 = v29;
                  v120 = 2112;
                  v121 = v17;
                  _os_log_error_impl(&dword_1AAAE1000, v21, OS_LOG_TYPE_ERROR, "[ERROR] %@: Unable to obtain item for identifier %@ when items have been removed from query results.", buf, 0x16u);
                }
              }
            }

            v14 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
          }

          while (v14);
        }

        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        v30 = obj;
        v31 = [v30 countByEnumeratingWithState:&v105 objects:v116 count:16];
        v10 = v85;
        if (v31)
        {
          v32 = v31;
          v33 = *v106;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v106 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v105 + 1) + 8 * j);
              v36 = [(NSMutableDictionary *)v92->_itemsByBundleAndCSID objectForKeyedSubscript:v85];
              [v36 setObject:0 forKeyedSubscript:v35];
            }

            v32 = [v30 countByEnumeratingWithState:&v105 objects:v116 count:16];
          }

          while (v32);
        }

        v37 = v92;
        if ([v91 count])
        {
          if (![(FPSpotlightCollector *)v92 _areItemsTransientFromBundleIdentifier:v85])
          {
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v38 = v92->_observers;
            v39 = [(NSMutableSet *)v38 countByEnumeratingWithState:&v101 objects:v115 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v102;
              while (2)
              {
                for (k = 0; k != v40; ++k)
                {
                  if (*v102 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  if (![(FPSpotlightCollector *)v92 _shouldRemoveItemsFromObserver:*(*(&v101 + 1) + 8 * k)])
                  {

                    [(FPSpotlightCollector *)v92 _regather];
                    goto LABEL_73;
                  }
                }

                v40 = [(NSMutableSet *)v38 countByEnumeratingWithState:&v101 objects:v115 count:16];
                if (v40)
                {
                  continue;
                }

                break;
              }
            }

            v37 = v92;
          }

          v43 = objc_opt_new();
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v44 = [(FPSpotlightCollector *)v37 allItems];
          v45 = [v44 countByEnumeratingWithState:&v97 objects:v114 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v98;
            do
            {
              for (m = 0; m != v46; ++m)
              {
                if (*v98 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v97 + 1) + 8 * m);
                v50 = [v49 collaborationIdentifier];

                if (v50)
                {
                  itemsByProviderAndCollaborationIdentifier = v92->_itemsByProviderAndCollaborationIdentifier;
                  v52 = [v49 providerIDForDeduplication];
                  v53 = [(NSMutableDictionary *)itemsByProviderAndCollaborationIdentifier objectForKeyedSubscript:v52];
                  v54 = [v49 collaborationIdentifier];
                  v55 = [v53 objectForKeyedSubscript:v54];

                  if (!v55)
                  {
                    v56 = v92->_itemsByProviderAndCollaborationIdentifier;
                    v57 = [v49 providerIDForDeduplication];
                    v58 = [(NSMutableDictionary *)v56 objectForKeyedSubscript:v57];

                    if (!v58)
                    {
                      v58 = objc_opt_new();
                      v59 = v92->_itemsByProviderAndCollaborationIdentifier;
                      v60 = [v49 providerIDForDeduplication];
                      [(NSMutableDictionary *)v59 setObject:v58 forKeyedSubscript:v60];
                    }

                    v61 = [v49 collaborationIdentifier];
                    [v58 setObject:v49 forKeyedSubscript:v61];

                    [v43 addObject:v49];
                  }
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v97 objects:v114 count:16];
            }

            while (v46);
          }

          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          obja = v92->_observers;
          v62 = [(NSMutableSet *)obja countByEnumeratingWithState:&v93 objects:v113 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v94;
            do
            {
              v65 = 0;
              v86 = v63;
              do
              {
                if (*v94 != v64)
                {
                  objc_enumerationMutation(obja);
                }

                v66 = *(*(&v93 + 1) + 8 * v65);
                v67 = objc_autoreleasePoolPush();
                if ([(FPSpotlightCollector *)v92 _shouldFilterUpdatesForObserver:v66])
                {
                  v68 = v43;
                  v69 = v64;
                  v70 = [(FPSpotlightCollector *)v92 filterItems:v90 forObserver:v66 excludedItemIDs:0];
                  v71 = [v70 fp_itemIDs];
                  v72 = [v71 count];
                  v73 = fp_current_or_default_log();
                  v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG);
                  if (v72)
                  {
                    if (v74)
                    {
                      v77 = [(FPSpotlightCollector *)v92 description];
                      *buf = 138412802;
                      v119 = v77;
                      v120 = 2112;
                      v121 = v66;
                      v122 = 2112;
                      v123 = v71;
                      _os_log_debug_impl(&dword_1AAAE1000, v73, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Observer:%@ to remove: %@", buf, 0x20u);
                    }

                    [v66 collector:v92 didRemoveItemIDs:v71];
                  }

                  else
                  {
                    if (v74)
                    {
                      v78 = [(FPSpotlightCollector *)v92 description];
                      *buf = 138412546;
                      v119 = v78;
                      v120 = 2112;
                      v121 = v66;
                      _os_log_debug_impl(&dword_1AAAE1000, v73, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Nothing to send to observer:%@", buf, 0x16u);
                    }
                  }

                  v64 = v69;
                  v43 = v68;
                  v63 = v86;
                }

                else
                {
                  v75 = fp_current_or_default_log();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                  {
                    v76 = [(FPSpotlightCollector *)v92 description];
                    *buf = 138412802;
                    v119 = v76;
                    v120 = 2112;
                    v121 = v66;
                    v122 = 2112;
                    v123 = v91;
                    _os_log_debug_impl(&dword_1AAAE1000, v75, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Observer:%@ to receive delta deletion updates: %@", buf, 0x20u);
                  }

                  [v66 collector:v92 didRemoveItemIDs:v91];
                }

                if ([v43 count])
                {
                  [v66 collector:v92 didUpdateItems:v43];
                }

                objc_autoreleasePoolPop(v67);
                ++v65;
              }

              while (v63 != v65);
              v63 = [(NSMutableSet *)obja countByEnumeratingWithState:&v93 objects:v113 count:16];
            }

            while (v63);
          }

          [(FPSpotlightCollector *)v92 setNeedsItemsOriginUpdate];
          v10 = v85;
          v12 = v87;
        }

LABEL_73:

        v9 = v83;
        v8 = v84;
      }
    }
  }

  v79 = *MEMORY[0x1E69E9840];
}

- (void)query:(id)a3 didUpdateItems:(id)a4
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_processingQueue);
  if (![(FPSpotlightCollector *)self isQueryCancelled:v6])
  {
    v8 = fp_current_or_default_log();
    v69 = self;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v55 = [(FPSpotlightCollector *)self description];
      v56 = [v7 count];
      if (self->_gathering)
      {
        v57 = "initially gathered";
      }

      else
      {
        v57 = "updated";
      }

      v58 = v7;
      v59 = [v58 count];
      v60 = MEMORY[0x1E696AEC0];
      if (v59 > 0xA)
      {
        v62 = [v58 subarrayWithRange:{0, 10}];

        v61 = [v60 stringWithFormat:@"%@...", v62];
        v58 = v62;
        self = v69;
      }

      else
      {
        v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v58];
      }

      *buf = 138413314;
      v84 = v55;
      v85 = 2048;
      v86 = v56;
      v87 = 2080;
      v88 = v57;
      v89 = 2112;
      v90 = v6;
      v91 = 2112;
      v92 = v61;
      _os_log_debug_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Did receive %ld %s items from query:%@ -- %@", buf, 0x34u);
    }

    v64 = v6;

    v70 = objc_opt_new();
    v9 = objc_opt_new();
    v67 = self->_itemsByBundleAndCSID;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v63 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v77 objects:v82 count:16];
    v68 = v9;
    if (v11)
    {
      v12 = v11;
      v13 = *v78;
      v66 = v10;
      v65 = *v78;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v78 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v77 + 1) + 8 * i);
          v16 = [[FPItem alloc] initWithSearchableItem:v15];
          v17 = v16;
          if (v16)
          {
            v18 = [(FPItem *)v16 itemIdentifier];
            v19 = [v18 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"];

            if ((v19 & 1) == 0)
            {
              [v9 addObject:v17];
              v20 = [v15 bundleID];
              if (v20)
              {
                v21 = [(NSMutableDictionary *)v67 objectForKeyedSubscript:v20];
                if (!v21)
                {
                  v21 = objc_opt_new();
                  [(NSMutableDictionary *)v67 setObject:v21 forKeyedSubscript:v20];
                }

                v22 = [v15 uniqueIdentifier];
                if (v22)
                {
                  [v21 setObject:v17 forKeyedSubscript:v22];
                }

                v23 = [(FPItem *)v17 collaborationIdentifier];

                if (v23)
                {
                  itemsByProviderAndCollaborationIdentifier = self->_itemsByProviderAndCollaborationIdentifier;
                  v25 = [(FPItem *)v17 providerIDForDeduplication];
                  v26 = [(NSMutableDictionary *)itemsByProviderAndCollaborationIdentifier objectForKeyedSubscript:v25];
                  v27 = [(FPItem *)v17 collaborationIdentifier];
                  v28 = [v26 objectForKeyedSubscript:v27];

                  self = v69;
                  if (!v28 || ([v28 isEqual:v17] & 1) == 0 && !-[FPItem isCollaborationInvitation](v17, "isCollaborationInvitation"))
                  {
                    v29 = v69->_itemsByProviderAndCollaborationIdentifier;
                    v30 = [(FPItem *)v17 providerIDForDeduplication];
                    v31 = [(NSMutableDictionary *)v29 objectForKeyedSubscript:v30];

                    if (!v31)
                    {
                      v31 = objc_opt_new();
                      v32 = v69->_itemsByProviderAndCollaborationIdentifier;
                      v33 = [(FPItem *)v17 providerIDForDeduplication];
                      [(NSMutableDictionary *)v32 setObject:v31 forKeyedSubscript:v33];
                    }

                    v34 = [(FPItem *)v17 collaborationIdentifier];
                    [v31 setObject:v17 forKeyedSubscript:v34];

                    if (v28)
                    {
                      v35 = [v28 itemID];
                      [v70 addObject:v35];
                    }

                    self = v69;
                  }

                  v9 = v68;
                }

                v10 = v66;
                v13 = v65;
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v77 objects:v82 count:16];
      }

      while (v12);
    }

    if (!self->_gathering)
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = self->_observers;
      v36 = [(NSMutableSet *)obj countByEnumeratingWithState:&v73 objects:v81 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v74;
        do
        {
          v39 = 0;
          do
          {
            if (*v74 != v38)
            {
              objc_enumerationMutation(obj);
            }

            v40 = *(*(&v73 + 1) + 8 * v39);
            v41 = objc_autoreleasePoolPush();
            if ([(FPSpotlightCollector *)self _shouldFilterUpdatesForObserver:v40])
            {
              v72 = 0;
              v42 = [(FPSpotlightCollector *)self filterItems:v9 forObserver:v40 excludedItemIDs:&v72];
              v43 = v72;
              v44 = [v42 count];
              v45 = [v43 count] + v44;
              v46 = [v70 count];
              v47 = fp_current_or_default_log();
              v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);
              if (v45 + v46)
              {
                self = v69;
                if (v48)
                {
                  v53 = [(FPSpotlightCollector *)v69 description];
                  *buf = 138413058;
                  v84 = v53;
                  v85 = 2112;
                  v86 = v40;
                  v87 = 2112;
                  v88 = v42;
                  v89 = 2112;
                  v90 = v43;
                  _os_log_debug_impl(&dword_1AAAE1000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Observer:%@ notifying updates: %@ removal: %@", buf, 0x2Au);
                }

                if ([v42 count])
                {
                  [v40 collector:v69 didUpdateItems:v42];
                }

                v9 = v68;
                if ([v43 count])
                {
                  [v40 collector:v69 didRemoveItemIDs:v43];
                }

                if ([v70 count])
                {
                  [v40 collector:v69 didRemoveItemIDs:v70];
                }
              }

              else
              {
                self = v69;
                if (v48)
                {
                  v52 = [(FPSpotlightCollector *)v69 description];
                  *buf = 138412546;
                  v84 = v52;
                  v85 = 2112;
                  v86 = v40;
                  _os_log_debug_impl(&dword_1AAAE1000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Skipping observer %@", buf, 0x16u);
                }

                v9 = v68;
              }
            }

            else
            {
              v49 = fp_current_or_default_log();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
              {
                v50 = [(FPSpotlightCollector *)self description];
                v51 = [v68 count];
                *buf = 138412802;
                v84 = v50;
                v85 = 2112;
                v86 = v40;
                v87 = 2048;
                v88 = v51;
                _os_log_debug_impl(&dword_1AAAE1000, v49, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → Observer:%@: notifying with delta updates (%ld items)", buf, 0x20u);

                v9 = v68;
              }

              [v40 collector:self didUpdateItems:v9];
            }

            objc_autoreleasePoolPop(v41);
            ++v39;
          }

          while (v37 != v39);
          v37 = [(NSMutableSet *)obj countByEnumeratingWithState:&v73 objects:v81 count:16];
        }

        while (v37);
      }

      [(FPSpotlightCollector *)self setNeedsItemsOriginUpdate];
    }

    v7 = v63;
    v6 = v64;
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (void)queryDidFinishGathering:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_processingQueue);
  v5 = [(FPSpotlightCollector *)self isQueryCancelled:v4];
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v20 = [(FPSpotlightCollector *)self description];
    v21 = @"NO";
    *buf = 138412802;
    v28 = v20;
    v29 = 2112;
    if (v5)
    {
      v21 = @"YES";
    }

    v30 = v21;
    v31 = 2112;
    v32 = v4;
    _os_log_debug_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Query did finish gathering (cancelled: %@): %@", buf, 0x20u);
  }

  if (!v5)
  {
    [(FPSpotlightCollector *)self setNeedsItemsOriginUpdate];
    self->_gathering = 0;
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightCollector queryDidFinishGathering:];
    }

    v22 = v4;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = self->_observers;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = [(FPSpotlightCollector *)self allItemsForObserver:v13];
          v16 = fp_current_or_default_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v17 = [(FPSpotlightCollector *)self description];
            v18 = [v15 count];
            *buf = 138413058;
            v28 = v17;
            v29 = 2048;
            v30 = v18;
            v31 = 2112;
            v32 = v13;
            v33 = 2112;
            v34 = v15;
            _os_log_debug_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: → %ld item(s) to observer %@: %@", buf, 0x2Au);
          }

          [v13 collector:self didGatherItems:v15];
          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v23 objects:v35 count:16];
      }

      while (v10);
    }

    v4 = v22;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)query:(id)a3 didFinishWithError:(id)a4
{
  v55[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_processingQueue);
  if (![(FPSpotlightCollector *)self isQueryCancelled:v6])
  {
    if (!self->_gathering)
    {
      [(FPSpotlightCollector *)self queryDidFinishGathering:v6];
    }

    v8 = [(FPSpotlightCollector *)self _mountPointForExistingSearchQuery:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 isEqualToString:@"FPQueryCollectionDefaultMountPointIdentifier"];
    }

    else
    {
      v10 = 1;
    }

    v11 = [v7 domain];
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v12 = getCSSearchQueryErrorDomainSymbolLoc_ptr;
    v49 = getCSSearchQueryErrorDomainSymbolLoc_ptr;
    if (!getCSSearchQueryErrorDomainSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCSSearchQueryErrorDomainSymbolLoc_block_invoke;
      v54 = &unk_1E793A2E8;
      v55[0] = &v46;
      v13 = CoreSpotlightLibrary_0();
      v14 = dlsym(v13, "CSSearchQueryErrorDomain");
      *(*(v55[0] + 8) + 24) = v14;
      getCSSearchQueryErrorDomainSymbolLoc_ptr = *(*(v55[0] + 8) + 24);
      v12 = v47[3];
    }

    _Block_object_dispose(&v46, 8);
    if (!v12)
    {
      [FPSpotlightCollector query:didFinishWithError:];
    }

    v15 = [v11 isEqualToString:*v12];

    v16 = [v7 domain];
    v17 = [v16 isEqualToString:*MEMORY[0x1E696A250]];

    v18 = fp_current_or_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v38 = [(FPSpotlightCollector *)self description];
      *buf = 138412802;
      *&buf[4] = v38;
      *&buf[12] = 2048;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v54 = v7;
      _os_log_debug_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Did finish query:%p with error: %@", buf, 0x20u);
    }

    if (v15)
    {
      if ([v7 code] == -2003)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [FPSpotlightCollector query:didFinishWithError:];
        }

LABEL_32:

        [(FPSpotlightCollector *)self _removeItemsForQuery:v6 mountPoint:v9];
        v27 = [(FPSpotlightCollector *)self queries];
        [v27 removeObject:v6];

LABEL_33:
        goto LABEL_34;
      }

      if ([v7 code] == -2002)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v39 = [(FPSpotlightCollector *)self description];
          v40 = [(FPSpotlightCollector *)self description];
          v41 = [v6 queryString];
          *buf = 138413058;
          *&buf[4] = v39;
          *&buf[12] = 2114;
          *&buf[14] = v40;
          *&buf[22] = 2114;
          v54 = v7;
          LOWORD(v55[0]) = 2114;
          *(v55 + 2) = v41;
          _os_log_debug_impl(&dword_1AAAE1000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Stopped searching for %{public}@: %{public}@, since query seems invalid: %{public}@", buf, 0x2Au);
        }

LABEL_24:

        v21 = MEMORY[0x1E696ABC0];
        v51 = *MEMORY[0x1E696AA08];
        v52 = v7;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        v19 = [v21 errorWithDomain:@"com.apple.FileProvider.Spotlight" code:0 userInfo:v22];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v23 = self->_observers;
        v24 = [(NSMutableSet *)v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
        if (v24)
        {
          v25 = *v43;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v43 != v25)
              {
                objc_enumerationMutation(v23);
              }

              [*(*(&v42 + 1) + 8 * i) collector:self didEncounterError:{v19, v42}];
            }

            v24 = [(NSMutableSet *)v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
          }

          while (v24);
        }

        goto LABEL_32;
      }
    }

    else if (!v17 || [v7 code] != 4097)
    {
      v20 = fp_current_or_default_log();
      v19 = v20;
      if (!v7)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [FPSpotlightCollector query:? didFinishWithError:?];
        }

        goto LABEL_32;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [FPSpotlightCollector query:didFinishWithError:];
      }

      goto LABEL_24;
    }

    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [FPSpotlightCollector query:didFinishWithError:];
    }

    if (v15 && !(([v7 code] != -2000) | v10 & 1))
    {
      goto LABEL_33;
    }

    lastStartOfRecovery = self->_lastStartOfRecovery;
    if (lastStartOfRecovery && ([(NSDate *)lastStartOfRecovery timeIntervalSinceNow], v31 >= -15.0))
    {
      p_numberOfRecoveryAttempts = &self->_numberOfRecoveryAttempts;
      numberOfRecoveryAttempts = self->_numberOfRecoveryAttempts;
      if (numberOfRecoveryAttempts > 5)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [FPSpotlightCollector query:didFinishWithError:];
        }

        goto LABEL_24;
      }
    }

    else
    {
      v32 = [MEMORY[0x1E695DF00] date];
      v33 = self->_lastStartOfRecovery;
      self->_lastStartOfRecovery = v32;

      numberOfRecoveryAttempts = 0;
      self->_numberOfRecoveryAttempts = 0;
      p_numberOfRecoveryAttempts = &self->_numberOfRecoveryAttempts;
    }

    *p_numberOfRecoveryAttempts = numberOfRecoveryAttempts + 1;
    v36 = fp_current_or_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [FPSpotlightCollector query:didFinishWithError:];
    }

    [(FPSpotlightCollector *)self _removeItemsForQuery:v6 mountPoint:v9];
    v37 = [(FPSpotlightCollector *)self queries];
    [v37 removeObject:v6];

    [(FPSpotlightCollector *)self _regather];
    goto LABEL_33;
  }

LABEL_34:

  v28 = *MEMORY[0x1E69E9840];
}

- (id)_createQueriesForMountPoints:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(FPSpotlightCollector *)self _createQueryForMountPoint:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_createQueryForMountPoint:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v37 = a3;
  dispatch_assert_queue_V2(self->_processingQueue);
  v4 = [(FPSpotlightCollector *)self queryDescriptor];
  v36 = [v4 queryStringForMountPoint:v37];
  if (v36)
  {
    if ([v4 supportsSemanticSearch])
    {
      from = 0;
      p_from = &from;
      v60 = 0x2050000000;
      v5 = getCSUserQueryContextClass_softClass;
      v61 = getCSUserQueryContextClass_softClass;
      if (!getCSUserQueryContextClass_softClass)
      {
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __getCSUserQueryContextClass_block_invoke;
        v66 = &unk_1E793A2E8;
        v67 = &from;
        __getCSUserQueryContextClass_block_invoke(location);
        v5 = p_from[3];
      }

      v6 = v5;
      _Block_object_dispose(&from, 8);
      v7 = objc_alloc_init(v5);
      [v7 setEnableRankedResults:0];
    }

    else
    {
      from = 0;
      p_from = &from;
      v60 = 0x2050000000;
      v9 = getCSSearchQueryContextClass_softClass;
      v61 = getCSSearchQueryContextClass_softClass;
      if (!getCSSearchQueryContextClass_softClass)
      {
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __getCSSearchQueryContextClass_block_invoke;
        v66 = &unk_1E793A2E8;
        v67 = &from;
        __getCSSearchQueryContextClass_block_invoke(location);
        v9 = p_from[3];
      }

      v10 = v9;
      _Block_object_dispose(&from, 8);
      v7 = objc_alloc_init(v9);
    }

    v11 = FPDefaultFetchedAttributes();
    [v7 setFetchAttributes:v11];

    [v7 setLive:1];
    if ([v4 desiredCount] != -1)
    {
      [v7 setMaxCount:{objc_msgSend(v4, "desiredCount")}];
    }

    if (([v37 isEqualToString:@"FPQueryCollectionDefaultMountPointIdentifier"] & 1) == 0)
    {
      v64 = v37;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
      [v7 setMountPoints:v12];
    }

    [v4 augmentQueryContext:v7];
    if ([v4 supportsSemanticSearch])
    {
      v13 = [v4 settings];
      v14 = [v13 searchQuery];
      v15 = [v14 userQueryString];

      from = 0;
      p_from = &from;
      v60 = 0x2050000000;
      v16 = getCSUserQueryClass_softClass;
      v61 = getCSUserQueryClass_softClass;
      if (!getCSUserQueryClass_softClass)
      {
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __getCSUserQueryClass_block_invoke;
        v66 = &unk_1E793A2E8;
        v67 = &from;
        __getCSUserQueryClass_block_invoke(location);
        v16 = p_from[3];
      }

      v17 = v16;
      _Block_object_dispose(&from, 8);
      v18 = [[v16 alloc] initWithUserQueryString:v15 userQueryContext:v7];
      v63 = v36;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
      [v18 setFilterQueries:v19];
    }

    else
    {
      from = 0;
      p_from = &from;
      v60 = 0x2050000000;
      v20 = getCSSearchQueryClass_softClass;
      v61 = getCSSearchQueryClass_softClass;
      if (!getCSSearchQueryClass_softClass)
      {
        *location = MEMORY[0x1E69E9820];
        *&location[8] = 3221225472;
        *&location[16] = __getCSSearchQueryClass_block_invoke;
        v66 = &unk_1E793A2E8;
        v67 = &from;
        __getCSSearchQueryClass_block_invoke(location);
        v20 = p_from[3];
      }

      v21 = v20;
      _Block_object_dispose(&from, 8);
      v18 = [[v20 alloc] initWithQueryString:v36 context:v7];
    }

    if (!v18)
    {
      [FPSpotlightCollector _createQueryForMountPoint:];
    }

    v22 = fp_current_or_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v35 = [(FPSpotlightCollector *)self description];
      *location = 138412802;
      *&location[4] = v35;
      *&location[12] = 2112;
      *&location[14] = v37;
      *&location[22] = 2112;
      v66 = v18;
      _os_log_debug_impl(&dword_1AAAE1000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Creating query for mount point '%@': %@", location, 0x20u);
    }

    [(NSMapTable *)self->_queryToMountPoint setObject:v37 forKey:v18];
    v62 = *MEMORY[0x1E696A388];
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    [v18 setProtectionClasses:v23];

    objc_initWeak(location, v18);
    objc_initWeak(&from, self);
    v24 = self->_processingQueue;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke;
    v53[3] = &unk_1E793AB38;
    v25 = v24;
    v54 = v25;
    v26 = v37;
    v55 = v26;
    objc_copyWeak(&v56, &from);
    objc_copyWeak(&v57, location);
    [v18 setFoundItemsHandler:v53];
    v27 = [v18 foundItemsHandler];
    [v18 setChangedItemsHandler:v27];

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_3;
    v48[3] = &unk_1E793AB88;
    v28 = v25;
    v49 = v28;
    v29 = v26;
    v50 = v29;
    objc_copyWeak(&v51, &from);
    objc_copyWeak(&v52, location);
    [v18 setRemovedItemsHandler:v48];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_5;
    v43[3] = &unk_1E793ABD8;
    v30 = v28;
    v44 = v30;
    v31 = v29;
    v45 = v31;
    objc_copyWeak(&v46, &from);
    objc_copyWeak(&v47, location);
    [v18 setGatherEndedHandler:v43];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_7;
    v38[3] = &unk_1E793AC00;
    v32 = v30;
    v39 = v32;
    v40 = v31;
    objc_copyWeak(&v41, &from);
    objc_copyWeak(&v42, location);
    [v18 setCompletionHandler:v38];
    v8 = v18;
    objc_destroyWeak(&v42);
    objc_destroyWeak(&v41);

    objc_destroyWeak(&v47);
    objc_destroyWeak(&v46);

    objc_destroyWeak(&v52);
    objc_destroyWeak(&v51);

    objc_destroyWeak(&v57);
    objc_destroyWeak(&v56);

    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];

  return v8;
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_2;
  v6[3] = &unk_1E793AB10;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_copyWeak(&v9, (a1 + 48));
  objc_copyWeak(&v10, (a1 + 56));
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  [WeakRetained query:v2 didUpdateItems:*(a1 + 40)];
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_4;
  block[3] = &unk_1E793AB60;
  v7 = *(a1 + 32);
  v11 = *(a1 + 40);
  objc_copyWeak(&v14, (a1 + 48));
  objc_copyWeak(&v15, (a1 + 56));
  v12 = v6;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = objc_loadWeakRetained((a1 + 64));
  [WeakRetained query:v2 didRemoveItemsWithCSIdentifiers:*(a1 + 40) inBundle:*(a1 + 48)];
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_5(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_6;
  block[3] = &unk_1E793ABB0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  objc_copyWeak(&v5, (a1 + 48));
  objc_copyWeak(&v6, (a1 + 56));
  dispatch_async(v2, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v5);
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained queryDidFinishGathering:v2];
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_8;
  v6[3] = &unk_1E793AB10;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_copyWeak(&v9, (a1 + 48));
  objc_copyWeak(&v10, (a1 + 56));
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
}

void __50__FPSpotlightCollector__createQueryForMountPoint___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = objc_loadWeakRetained((a1 + 56));
  [WeakRetained query:v2 didFinishWithError:*(a1 + 40)];
}

- (void)_regather
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 description];
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_itemsOriginForItems:(id)a3
{
  v3 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__3;
  v11[4] = __Block_byref_object_dispose__3;
  v12 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__FPSpotlightCollector__itemsOriginForItems___block_invoke;
  v6[3] = &unk_1E793AC28;
  v6[4] = v11;
  v6[5] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v11, 8);

  return v4;
}

void __45__FPSpotlightCollector__itemsOriginForItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 providerIDForDeduplication];
  v7 = *(*(a1 + 32) + 8);
  v9 = *(v7 + 40);
  v8 = (v7 + 40);
  v10 = v6;
  if (v9)
  {
    if (([v6 isEqualToString:?] & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    objc_storeStrong(v8, v6);
  }
}

- (void)_removeItemsForQuery:(id)a3 mountPoint:(id)a4
{
  v6 = a3;
  processingQueue = self->_processingQueue;
  v8 = a4;
  dispatch_assert_queue_V2(processingQueue);
  v9 = [(FPSpotlightCollector *)self _allItemsForMountPoint:v8];

  v10 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__FPSpotlightCollector__removeItemsForQuery_mountPoint___block_invoke;
  v15[3] = &unk_1E793AC50;
  v16 = v10;
  v11 = v10;
  [v9 enumerateObjectsUsingBlock:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__FPSpotlightCollector__removeItemsForQuery_mountPoint___block_invoke_2;
  v13[3] = &unk_1E793AC78;
  v13[4] = self;
  v14 = v6;
  v12 = v6;
  [v11 enumerateKeysAndObjectsUsingBlock:v13];
}

void __56__FPSpotlightCollector__removeItemsForQuery_mountPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11 = v3;
  v5 = [v3 providerID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = objc_opt_new();
    v7 = *(a1 + 32);
    v8 = [v11 providerID];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  v9 = [v11 itemID];
  v10 = [v9 coreSpotlightIdentifier];
  [v6 addObject:v10];
}

- (void)_addObserver:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v10 = *MEMORY[0x1E69E9840];
  v2 = [v1 description];
  v3 = [v0 description];
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_removeObserver:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __45__FPSpotlightCollector_mountPointsDidChange___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*v1 object:*v0 file:@"FPSpotlightCollector.m" lineNumber:278 description:@"Shouldn't be nil."];
}

void __45__FPSpotlightCollector_mountPointsDidChange___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*v1 object:*v0 file:@"FPSpotlightCollector.m" lineNumber:286 description:@"The default mount point should never be removed."];
}

void __64__FPSpotlightCollector_filterItems_forObserver_excludedItemIDs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*v0 description];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)queryDidFinishGathering:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 description];
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)query:didFinishWithError:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  v9 = *MEMORY[0x1E69E9840];
  [v1 description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_11_1() description];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)query:(void *)a1 didFinishWithError:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_11_1() description];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)query:didFinishWithError:.cold.3()
{
  OUTLINED_FUNCTION_3_2();
  v9 = *MEMORY[0x1E69E9840];
  [v1 description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_11_1() description];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)query:didFinishWithError:.cold.4()
{
  OUTLINED_FUNCTION_3_2();
  v12 = *MEMORY[0x1E69E9840];
  v3 = [v2 description];
  v4 = *v1;
  v5 = [v0 description];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)query:didFinishWithError:.cold.5()
{
  OUTLINED_FUNCTION_3_2();
  v12 = *MEMORY[0x1E69E9840];
  v3 = [v2 description];
  v4 = *v1;
  v5 = [v0 description];
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)query:didFinishWithError:.cold.6()
{
  OUTLINED_FUNCTION_3_2();
  v9 = *MEMORY[0x1E69E9840];
  [v1 description];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_11_1() description];
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)query:didFinishWithError:.cold.7()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCSSearchQueryErrorDomain(void)"];
  [v0 handleFailureInFunction:v1 file:@"FPSpotlightCollector.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_createQueryForMountPoint:.cold.1()
{
  OUTLINED_FUNCTION_6_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [v1 queryDescriptor];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 handleFailureInMethod:v0 object:v1 file:@"FPSpotlightCollector.m" lineNumber:853 description:{@"Unable to create query for descriptor '%@'", v5}];
}

@end