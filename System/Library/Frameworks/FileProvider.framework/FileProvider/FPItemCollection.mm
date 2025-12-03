@interface FPItemCollection
+ (BOOL)isEnumerationSuspended;
+ (id)_bouncedItem:(id)item withinItems:(id)items;
+ (id)activeCollections;
+ (void)addActiveCollection:(id)collection;
+ (void)consumeUpdates:(id)updates deletes:(id)deletes;
+ (void)initialize;
+ (void)refreshActiveCollectionsForDecorationChange;
+ (void)removeActiveCollection:(id)collection;
+ (void)replacePlaceholders:(id)placeholders withActualItems:(id)items deletedIDs:(id)ds;
+ (void)resumeVendorEnumeration;
- (BOOL)_isUsingDataSource:(id)source;
- (BOOL)isHiddenItem:(id)item;
- (BOOL)shouldConsiderUsingPlaceholder:(id)placeholder forItem:(id)item skipForwardFormerID:(BOOL *)d;
- (FPItemCollection)initWithPacing:(BOOL)pacing;
- (FPItemCollectionMinimalDelegate)delegate;
- (NSArray)items;
- (id)_itemsMutableCopy;
- (id)_reorderWithPlaceholdersLast:(id)last;
- (id)_t_items;
- (id)computeIndexPathsBasedDiffsWithOldItems:(id)items futureItems:(id)futureItems;
- (id)computeItemIDBasedDiffs;
- (id)createDataSourceWithSortDescriptors:(id)descriptors;
- (id)indexPathFromIndex:(int64_t)index;
- (id)indexPathsFromIndexSet:(id)set;
- (id)itemAtIndexPath:(id)path;
- (id)scopedSearchQuery;
- (int64_t)_numberOfItems;
- (int64_t)numberOfItems;
- (unint64_t)_indexOfItem:(id)item;
- (unint64_t)_indexOfItemID:(id)d;
- (void)_cancelStartTime;
- (void)_flushPendingUpdates;
- (void)_receivedBatchWithUpdatedItems:(id)items deletedItemsIdentifiers:(id)identifiers forceFlush:(BOOL)flush dropForReplacedPlaceholders:(BOOL)placeholders;
- (void)_replaceContentsWithVendorItems:(id)items;
- (void)_restartObservation;
- (void)_restartObservationWithReason:(id)reason;
- (void)_startObserving;
- (void)_startRegathering;
- (void)_updateObservedItem:(id)item;
- (void)dataSource:(id)source receivedUpdatedItems:(id)items deletedItems:(id)deletedItems hasMoreChanges:(BOOL)changes;
- (void)dataSource:(id)source replaceContentsWithItems:(id)items hasMoreChanges:(BOOL)changes;
- (void)dataSource:(id)source wasInvalidatedWithError:(id)error;
- (void)dealloc;
- (void)forceRefreshOfItemWithItemID:(id)d;
- (void)reachabilityMonitor:(id)monitor didChangeReachabilityStatusTo:(BOOL)to;
- (void)receivedBatchWithUpdatedItems:(id)items deletedItemsIdentifiers:(id)identifiers;
- (void)receivedBatchWithUpdatedItems:(id)items deletedItemsIdentifiers:(id)identifiers hasMoreChanges:(BOOL)changes;
- (void)reorderItemsWithSortDescriptors:(id)descriptors;
- (void)replacePlaceholders:(id)placeholders withActualItems:(id)items deletedIDs:(id)ds;
- (void)resumeUpdates;
- (void)sendIndexPathBasedDiffs:(id)diffs;
- (void)sendItemIDBasedDiffs:(id)diffs;
- (void)setDelegate:(id)delegate;
- (void)startObserving;
- (void)stopObserving;
- (void)suspendUpdates;
@end

@implementation FPItemCollection

+ (void)initialize
{
  if (initialize_once_0 != -1)
  {
    +[FPItemCollection initialize];
  }
}

void __30__FPItemCollection_initialize__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _activeCollections;
  _activeCollections = v0;

  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("collections-queue", v4);
  v3 = _collectionsQueue;
  _collectionsQueue = v2;
}

- (void)_startRegathering
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)startObserving
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_startObserving
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (NSArray)items
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  itemAccessQueue = self->_itemAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__FPItemCollection_items__block_invoke;
  v5[3] = &unk_1E793AA20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(itemAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __25__FPItemCollection_items__block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) allObjects];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_restartObservation
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stopObserving
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_cancelStartTime
{
  restartTimer = self->_restartTimer;
  if (restartTimer)
  {
    dispatch_source_cancel(restartTimer);
    v4 = self->_restartTimer;
    self->_restartTimer = 0;
  }
}

void __33__FPItemCollection_stopObserving__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 180))
  {
    *(v1 + 180) = 0;
    v7 = *(*(a1 + 32) + 16);
    [v7 invalidate];
    [v7 setDelegate:0];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;

    [FPItemCollection removeActiveCollection:*(a1 + 32)];
    v5 = +[FPReachabilityMonitor sharedReachabilityMonitor];
    [v5 removeObserver:*(a1 + 32)];

    [*(*(a1 + 32) + 224) suspend];
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __33__FPItemCollection_stopObserving__block_invoke_cold_1();
    }
  }
}

void __40__FPItemCollection__flushPendingUpdates__block_invoke(uint64_t a1)
{
  v27 = *(a1 + 64);
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__FPItemCollection__flushPendingUpdates__block_invoke_cold_1(&v27);
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__17;
  v25 = __Block_byref_object_dispose__17;
  v26 = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __40__FPItemCollection__flushPendingUpdates__block_invoke_187;
  v17 = &unk_1E793A190;
  v20 = &v21;
  v18 = v3;
  v19 = *(a1 + 40);
  dispatch_sync(v4, &v14);
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__FPItemCollection__flushPendingUpdates__block_invoke_cold_2();
  }

  if (*(a1 + 72) == 1)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __40__FPItemCollection__flushPendingUpdates__block_invoke_cold_3();
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 192));
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [v22[5] itemIDsDifferenceWithList:{*(a1 + 40), v14, v15, v16, v17, v18}];
      v10 = objc_loadWeakRetained((*(a1 + 32) + 192));
      [v10 dataForCollectionShouldBeReloaded:*(a1 + 32) deleteItemsWithIDs:v9];
    }

    else
    {
      v9 = objc_loadWeakRetained((*(a1 + 32) + 192));
      [v9 dataForCollectionShouldBeReloaded:{*(a1 + 32), v14, v15, v16, v17, v18}];
    }
  }

  else
  {
    if ([*(a1 + 48) containsChanges])
    {
      v11 = objc_loadWeakRetained((*(a1 + 32) + 168));

      if (v11)
      {
        [*(a1 + 32) sendIndexPathBasedDiffs:*(a1 + 48)];
      }
    }

    if ([*(a1 + 56) containsChanges])
    {
      v12 = objc_loadWeakRetained((*(a1 + 32) + 160));

      if (v12)
      {
        [*(a1 + 32) sendItemIDBasedDiffs:*(a1 + 56)];
      }
    }
  }

  if (*(a1 + 73) == 1)
  {
    [*(a1 + 32) willChangeValueForKey:@"gathering"];
    *(*(a1 + 32) + 176) = 0;
    [*(a1 + 32) didChangeValueForKey:@"gathering"];
    v13 = objc_loadWeakRetained((*(a1 + 32) + 192));
    if (objc_opt_respondsToSelector())
    {
      [v13 collectionDidFinishGathering:*(a1 + 32)];
    }
  }

  [*(*(a1 + 32) + 224) resume];
  dispatch_resume(*(*(a1 + 32) + 216));

  _Block_object_dispose(&v21, 8);
  __fp_leave_section_Debug(&v27);
}

void __40__FPItemCollection__flushPendingUpdates__block_invoke_187(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = a1 + 48;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 24));
  [*v1 willChangeValueForKey:@"_t_items"];
  objc_storeStrong(*v1 + 3, v1[1]);
  [*v1 didChangeValueForKey:@"_t_items"];
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __40__FPItemCollection__flushPendingUpdates__block_invoke_187_cold_1(v1, v2, v3);
  }
}

- (void)_flushPendingUpdates
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (int64_t)_numberOfItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  itemAccessQueue = self->_itemAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__FPItemCollection__numberOfItems__block_invoke;
  v5[3] = &unk_1E793AA20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(itemAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __34__FPItemCollection__numberOfItems__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (void)refreshActiveCollectionsForDecorationChange
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  activeCollections = [self activeCollections];
  v3 = [activeCollections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(activeCollections);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        workingQueue = [v7 workingQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __63__FPItemCollection_refreshActiveCollectionsForDecorationChange__block_invoke;
        block[3] = &unk_1E79399B0;
        block[4] = v7;
        dispatch_async(workingQueue, block);
      }

      v4 = [activeCollections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)activeCollections
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__17;
  v9 = __Block_byref_object_dispose__17;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__FPItemCollection_activeCollections__block_invoke;
  block[3] = &unk_1E793A2E8;
  block[4] = &v5;
  dispatch_sync(_collectionsQueue, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __37__FPItemCollection_activeCollections__block_invoke(uint64_t a1)
{
  v2 = [_activeCollections copy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (FPItemCollection)initWithPacing:(BOOL)pacing
{
  pacingCopy = pacing;
  v40.receiver = self;
  v40.super_class = FPItemCollection;
  v4 = [(FPItemCollection *)&v40 init];
  v5 = v4;
  if (v4)
  {
    v4->_gathering = 1;
    v4->_regathering = 1;
    v4->_hasMoreUpdates = 1;
    fp_sortDescriptorByDisplayName = [MEMORY[0x1E695DEC8] fp_sortDescriptorByDisplayName];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = fp_sortDescriptorByDisplayName;

    v5->_shouldRetryOnceAfterCrash = 1;
    v8 = objc_opt_new();
    updatedItemsByIdentifiers = v5->_updatedItemsByIdentifiers;
    v5->_updatedItemsByIdentifiers = v8;

    v10 = objc_opt_new();
    deletedItemsIdentifiers = v5->_deletedItemsIdentifiers;
    v5->_deletedItemsIdentifiers = v10;

    v12 = objc_opt_new();
    formerItemsIdentifiers = v5->_formerItemsIdentifiers;
    v5->_formerItemsIdentifiers = v12;

    v14 = objc_opt_new();
    pendingItemsStitching = v5->_pendingItemsStitching;
    v5->_pendingItemsStitching = v14;

    v16 = objc_opt_new();
    pendingItemsFields = v5->_pendingItemsFields;
    v5->_pendingItemsFields = v16;

    v18 = objc_alloc_init(_FPItemList);
    currentItems = v5->_currentItems;
    v5->_currentItems = v18;

    objc_storeStrong(&v5->_workingQueue, MEMORY[0x1E69E96A0]);
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.FileProvider.ItemCollection.item-access-queue", v20);
    itemAccessQueue = v5->_itemAccessQueue;
    v5->_itemAccessQueue = v21;

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.FileProvider.ItemCollection.update-queue (%p)", v5];
    uTF8String = [v23 UTF8String];
    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (itemCollectionUpdateQueue_once != -1)
    {
      [FPItemCollection initWithPacing:];
    }

    v26 = itemCollectionUpdateQueue_updateQueue;
    v27 = dispatch_queue_create_with_target_V2(uTF8String, v25, v26);
    updateQueue = v5->_updateQueue;
    v5->_updateQueue = v27;

    if (pacingCopy)
    {
      v29 = 0.5;
    }

    else
    {
      v29 = 0.0;
    }

    v30 = [[FPPacer alloc] initWithName:@"com.apple.FileProvider.ItemCollection.update-pacer" queue:v5->_updateQueue minFireInterval:v29];
    updatePacer = v5->_updatePacer;
    v5->_updatePacer = v30;

    objc_initWeak(&location, v5);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __35__FPItemCollection_initWithPacing___block_invoke;
    v37[3] = &unk_1E7939010;
    objc_copyWeak(&v38, &location);
    [(FPPacer *)v5->_updatePacer setEventBlock:v37];
    v32 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    itemFilteringPredicate = v5->_itemFilteringPredicate;
    v5->_itemFilteringPredicate = v32;

    v34 = +[FPAppRegistry sharedRegistry];
    appRegistry = v5->_appRegistry;
    v5->_appRegistry = v34;

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __35__FPItemCollection_initWithPacing___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _flushPendingUpdates];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (delegateCopy)
  {
    if ([delegateCopy conformsToProtocol:&unk_1F1FDA230])
    {
      v4 = delegateCopy;
    }

    else
    {
      v4 = 0;
    }

    objc_storeWeak(&self->_itemIDBasedDelegate, v4);
    if ([delegateCopy conformsToProtocol:&unk_1F1FE2D68])
    {
      p_indexPathBasedDelegate = &self->_indexPathBasedDelegate;
      v6 = delegateCopy;
      goto LABEL_9;
    }
  }

  else
  {
    objc_storeWeak(&self->_itemIDBasedDelegate, 0);
  }

  p_indexPathBasedDelegate = &self->_indexPathBasedDelegate;
  v6 = 0;
LABEL_9:
  objc_storeWeak(p_indexPathBasedDelegate, v6);
}

- (void)reachabilityMonitor:(id)monitor didChangeReachabilityStatusTo:(BOOL)to
{
  updateQueue = self->_updateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__FPItemCollection_reachabilityMonitor_didChangeReachabilityStatusTo___block_invoke;
  v5[3] = &unk_1E793AE88;
  v5[4] = self;
  toCopy = to;
  dispatch_async(updateQueue, v5);
}

void __70__FPItemCollection_reachabilityMonitor_didChangeReachabilityStatusTo___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isRegatheringAfterSignal] & 1) == 0)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [*(*(a1 + 32) + 24) allObjects];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          [v8 setOffline:(*(a1 + 40) & 1) == 0];
          if (([v8 isDownloading] & 1) != 0 || objc_msgSend(v8, "isUploading"))
          {
            [v2 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    if ([v2 count])
    {
      [*(a1 + 32) receivedBatchWithUpdatedItems:v2 deletedItemsIdentifiers:MEMORY[0x1E695E0F0]];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __34__FPItemCollection_startObserving__block_invoke_135(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __34__FPItemCollection_startObserving__block_invoke_135_cold_1();
    }

    [WeakRetained _cancelStartTime];
    v3 = WeakRetained[27];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__FPItemCollection_startObserving__block_invoke_136;
    block[3] = &unk_1E79399B0;
    block[4] = WeakRetained;
    dispatch_async(v3, block);
  }
}

- (void)dataSource:(id)source replaceContentsWithItems:(id)items hasMoreChanges:(BOOL)changes
{
  sourceCopy = source;
  itemsCopy = items;
  updateQueue = self->_updateQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__FPItemCollection_dataSource_replaceContentsWithItems_hasMoreChanges___block_invoke;
  v13[3] = &unk_1E793B9A8;
  v13[4] = self;
  v14 = sourceCopy;
  changesCopy = changes;
  v15 = itemsCopy;
  v11 = itemsCopy;
  v12 = sourceCopy;
  dispatch_async(updateQueue, v13);
}

uint64_t __71__FPItemCollection_dataSource_replaceContentsWithItems_hasMoreChanges___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) __isUsingDataSource:*(a1 + 40)];
  if (result)
  {
    [*(a1 + 32) _startRegathering];
    *(*(a1 + 32) + 178) = *(a1 + 56);
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = MEMORY[0x1E695E0F0];

    return [v3 _receivedBatchWithUpdatedItems:v4 deletedItemsIdentifiers:v5];
  }

  return result;
}

- (void)dataSource:(id)source receivedUpdatedItems:(id)items deletedItems:(id)deletedItems hasMoreChanges:(BOOL)changes
{
  sourceCopy = source;
  itemsCopy = items;
  deletedItemsCopy = deletedItems;
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__FPItemCollection_dataSource_receivedUpdatedItems_deletedItems_hasMoreChanges___block_invoke;
  block[3] = &unk_1E793CC38;
  block[4] = self;
  v18 = sourceCopy;
  changesCopy = changes;
  v19 = itemsCopy;
  v20 = deletedItemsCopy;
  v14 = deletedItemsCopy;
  v15 = itemsCopy;
  v16 = sourceCopy;
  dispatch_async(updateQueue, block);
}

uint64_t __80__FPItemCollection_dataSource_receivedUpdatedItems_deletedItems_hasMoreChanges___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) __isUsingDataSource:*(a1 + 40)];
  if (result)
  {
    *(*(a1 + 32) + 178) = *(a1 + 64);
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 _receivedBatchWithUpdatedItems:v4 deletedItemsIdentifiers:v5];
  }

  return result;
}

- (void)dataSource:(id)source wasInvalidatedWithError:(id)error
{
  sourceCopy = source;
  errorCopy = error;
  if (!errorCopy)
  {
    [FPItemCollection dataSource:a2 wasInvalidatedWithError:self];
  }

  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__FPItemCollection_dataSource_wasInvalidatedWithError___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v13 = sourceCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = sourceCopy;
  dispatch_async(updateQueue, block);
}

void __55__FPItemCollection_dataSource_wasInvalidatedWithError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) __isUsingDataSource:*(a1 + 40)])
  {
    v2 = [*(a1 + 48) fp_isSyncAnchorExpiredError];
    v3 = *(a1 + 32);
    if (v2)
    {
      [v3 _startRegathering];
      v4 = *(a1 + 32);

      [v4 _restartObservationWithReason:@"sync anchor expired"];
    }

    else
    {
      v5 = v3[4];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __55__FPItemCollection_dataSource_wasInvalidatedWithError___block_invoke_2;
      v6[3] = &unk_1E79390B8;
      v6[4] = v3;
      v7 = *(a1 + 48);
      dispatch_async(v5, v6);
    }
  }
}

void __55__FPItemCollection_dataSource_wasInvalidatedWithError___block_invoke_2(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2[136] == 1 && (v4 = (a1 + 40), [v2 shouldRetryError:*(a1 + 40)]))
  {
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__FPItemCollection_dataSource_wasInvalidatedWithError___block_invoke_2_cold_2(v3, v4);
    }

    *(*v3 + 136) = 0;
    [*v3 _restartObservation];
  }

  else
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__FPItemCollection_dataSource_wasInvalidatedWithError___block_invoke_2_cold_1(v3, a1);
    }

    if (([*(a1 + 32) recoverFromError:*(a1 + 40)] & 1) == 0)
    {
      v7 = [*v3 delegate];
      [*v3 stopObserving];
      if (objc_opt_respondsToSelector())
      {
        v8 = *(a1 + 32);
        v9 = [*(a1 + 40) fp_unwrappedInternalError];
        [v7 collection:v8 didEncounterError:v9];
      }
    }
  }
}

- (void)suspendUpdates
{
  dispatch_assert_queue_not_V2(self->_workingQueue);
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__FPItemCollection_suspendUpdates__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_sync(updateQueue, block);
}

- (void)resumeUpdates
{
  dispatch_assert_queue_not_V2(self->_workingQueue);
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPItemCollection_resumeUpdates__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_sync(updateQueue, block);
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)reorderItemsWithSortDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v5 = descriptorsCopy;
  if (descriptorsCopy)
  {
    updateQueue = self->_updateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__FPItemCollection_reorderItemsWithSortDescriptors___block_invoke;
    v7[3] = &unk_1E79390B8;
    v7[4] = self;
    v8 = descriptorsCopy;
    dispatch_async(updateQueue, v7);
  }
}

void __52__FPItemCollection_reorderItemsWithSortDescriptors___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __52__FPItemCollection_reorderItemsWithSortDescriptors___block_invoke_cold_1(v2, a1);
  }

  if (([*(a1 + 40) isEqualToArray:v2] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
    if ([*(a1 + 32) _numberOfItems])
    {
      *(*(a1 + 32) + 112) = 1;
      v4 = [*(a1 + 32) hasMoreUpdates];
      v5 = *(a1 + 32);
      if (v4)
      {
        [v5 _restartObservationWithReason:@"sort order changed"];
      }

      else
      {
        [v5 _flushPendingUpdates];
      }
    }
  }
}

- (int64_t)numberOfItems
{
  dispatch_assert_queue_V2(self->_workingQueue);

  return [(FPItemCollection *)self _numberOfItems];
}

- (unint64_t)_indexOfItemID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  itemAccessQueue = self->_itemAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__FPItemCollection__indexOfItemID___block_invoke;
  block[3] = &unk_1E793A190;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(itemAccessQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __35__FPItemCollection__indexOfItemID___block_invoke(void *a1)
{
  result = [*(a1[4] + 24) indexOfItemID:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (unint64_t)_indexOfItem:(id)item
{
  itemCopy = item;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  itemAccessQueue = self->_itemAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__FPItemCollection__indexOfItem___block_invoke;
  block[3] = &unk_1E793A190;
  v10 = itemCopy;
  v11 = &v12;
  block[4] = self;
  v6 = itemCopy;
  dispatch_sync(itemAccessQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __33__FPItemCollection__indexOfItem___block_invoke(void *a1)
{
  result = [*(a1[4] + 24) indexOfObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(self->_workingQueue);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__17;
  v14 = __Block_byref_object_dispose__17;
  v15 = 0;
  v5 = [pathCopy indexAtPosition:0];
  itemAccessQueue = self->_itemAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__FPItemCollection_itemAtIndexPath___block_invoke;
  block[3] = &unk_1E793CC60;
  block[5] = &v10;
  block[6] = v5;
  block[4] = self;
  dispatch_sync(itemAccessQueue, block);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

unint64_t __36__FPItemCollection_itemAtIndexPath___block_invoke(void *a1)
{
  v2 = a1[6];
  result = [*(a1[4] + 24) count];
  if (v2 < result)
  {
    v4 = [*(a1[4] + 24) objectAtIndex:a1[6]];
    v5 = *(a1[5] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

- (id)_t_items
{
  allObjects = [(_FPItemList *)self->_currentItems allObjects];
  v3 = [allObjects copy];

  return v3;
}

- (id)_itemsMutableCopy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__17;
  v10 = __Block_byref_object_dispose__17;
  v11 = 0;
  itemAccessQueue = self->_itemAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__FPItemCollection__itemsMutableCopy__block_invoke;
  v5[3] = &unk_1E793AA20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(itemAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__FPItemCollection__itemsMutableCopy__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) mutableCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_isUsingDataSource:(id)source
{
  sourceCopy = source;
  dispatch_assert_queue_not_V2(self->_workingQueue);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__FPItemCollection__isUsingDataSource___block_invoke;
  block[3] = &unk_1E793A190;
  v9 = sourceCopy;
  v10 = &v11;
  block[4] = self;
  v6 = sourceCopy;
  dispatch_sync(updateQueue, block);
  LOBYTE(sourceCopy) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return sourceCopy;
}

uint64_t __39__FPItemCollection__isUsingDataSource___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) __isUsingDataSource:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)replacePlaceholders:(id)placeholders withActualItems:(id)items deletedIDs:(id)ds
{
  placeholdersCopy = placeholders;
  itemsCopy = items;
  dsCopy = ds;
  updateQueue = self->_updateQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__FPItemCollection_replacePlaceholders_withActualItems_deletedIDs___block_invoke;
  v15[3] = &unk_1E7939738;
  v15[4] = self;
  v16 = placeholdersCopy;
  v17 = itemsCopy;
  v18 = dsCopy;
  v12 = dsCopy;
  v13 = itemsCopy;
  v14 = placeholdersCopy;
  dispatch_sync(updateQueue, v15);
}

void __67__FPItemCollection_replacePlaceholders_withActualItems_deletedIDs___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  section = __fp_create_section();
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__FPItemCollection_replacePlaceholders_withActualItems_deletedIDs___block_invoke_cold_1(&section);
  }

  if ([*(a1 + 32) isRegatheringAfterSignal])
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __67__FPItemCollection_replacePlaceholders_withActualItems_deletedIDs___block_invoke_cold_3();
    }
  }

  else
  {
    v25 = [*(a1 + 40) mutableCopy];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = *(a1 + 48);
    v5 = [v4 countByEnumeratingWithState:&v28 objects:v39 count:16];
    if (v5)
    {
      v7 = *v29;
      *&v6 = 134218498;
      v24 = v6;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = [v9 formerIdentifier];
          v11 = v10 == 0;

          if (!v11)
          {
            v12 = [*(a1 + 32) _indexOfItem:v9];
            if (v12 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v13 = fp_current_or_default_log();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v20 = [v9 formerIdentifier];
                *buf = v24;
                v34 = v12;
                v35 = 2112;
                v36 = v20;
                v37 = 2112;
                v38 = v9;
                _os_log_debug_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] replacing placeholder at index %ld with ID %@ with %@", buf, 0x20u);
              }

              if ([v9 isBusy])
              {
                v14 = fp_current_or_default_log();
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  __67__FPItemCollection_replacePlaceholders_withActualItems_deletedIDs___block_invoke_cold_2(&v26, v27, v14);
                }

                v15 = [*(*(a1 + 32) + 24) objectAtIndex:v12];
                v16 = [v15 creationDate];
                [v9 setCreationDate:v16];

                v17 = [v15 documentSize];
                [v9 setDocumentSize:v17];

                v18 = [v15 contentModificationDate];
                [v9 setContentModificationDate:v18];
              }

              v19 = [v9 formerItemID];
              [v25 removeObject:v19];
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v28 objects:v39 count:16];
      }

      while (v5);
    }

    v21 = [v25 allObjects];
    v22 = [v21 arrayByAddingObjectsFromArray:*(a1 + 56)];

    ++*(*(a1 + 32) + 184);
    [*(a1 + 32) _receivedBatchWithUpdatedItems:*(a1 + 48) deletedItemsIdentifiers:v22 dropForReplacedPlaceholders:0];
    [*(a1 + 32) _flushPendingUpdates];

    v3 = v25;
  }

  __fp_leave_section_Debug(&section);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_updateObservedItem:(id)item
{
  itemCopy = item;
  dispatch_assert_queue_V2(self->_updateQueue);
  [(FPItemCollection *)self updateRootItem:itemCopy];
  if (self->_observing)
  {
    workingQueue = self->_workingQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__FPItemCollection__updateObservedItem___block_invoke;
    v6[3] = &unk_1E79390B8;
    v7 = itemCopy;
    selfCopy = self;
    dispatch_async(workingQueue, v6);
  }
}

void __40__FPItemCollection__updateObservedItem___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__FPItemCollection__updateObservedItem___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 40) delegate];
    [v5 collection:*(a1 + 40) didUpdateObservedItem:*(a1 + 32)];
  }
}

- (void)receivedBatchWithUpdatedItems:(id)items deletedItemsIdentifiers:(id)identifiers hasMoreChanges:(BOOL)changes
{
  itemsCopy = items;
  identifiersCopy = identifiers;
  updateQueue = self->_updateQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__FPItemCollection_receivedBatchWithUpdatedItems_deletedItemsIdentifiers_hasMoreChanges___block_invoke;
  v13[3] = &unk_1E793B9A8;
  changesCopy = changes;
  v13[4] = self;
  v14 = itemsCopy;
  v15 = identifiersCopy;
  v11 = identifiersCopy;
  v12 = itemsCopy;
  dispatch_async(updateQueue, v13);
}

- (void)receivedBatchWithUpdatedItems:(id)items deletedItemsIdentifiers:(id)identifiers
{
  itemsCopy = items;
  identifiersCopy = identifiers;
  updateQueue = self->_updateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__FPItemCollection_receivedBatchWithUpdatedItems_deletedItemsIdentifiers___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v12 = itemsCopy;
  v13 = identifiersCopy;
  v9 = identifiersCopy;
  v10 = itemsCopy;
  dispatch_async(updateQueue, block);
}

- (void)forceRefreshOfItemWithItemID:(id)d
{
  dCopy = d;
  updateQueue = self->_updateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FPItemCollection_forceRefreshOfItemWithItemID___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(updateQueue, v7);
}

void __49__FPItemCollection_forceRefreshOfItemWithItemID___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__17;
  v14[3] = __Block_byref_object_dispose__17;
  v15 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:*(a1 + 40)];
  if (*(v14[0] + 40))
  {
    goto LABEL_3;
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__FPItemCollection_forceRefreshOfItemWithItemID___block_invoke_2;
  block[3] = &unk_1E793A190;
  v12 = &v13;
  block[4] = v3;
  v11 = v2;
  dispatch_sync(v4, block);
  LOBYTE(v4) = *(v14[0] + 40) == 0;

  if ((v4 & 1) == 0)
  {
LABEL_3:
    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __49__FPItemCollection_forceRefreshOfItemWithItemID___block_invoke_cold_1(v14);
    }

    v6 = *(a1 + 32);
    v7 = [*(v14[0] + 40) copy];
    v16[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    [v6 _receivedBatchWithUpdatedItems:v8 deletedItemsIdentifiers:MEMORY[0x1E695E0F0]];
  }

  _Block_object_dispose(&v13, 8);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __49__FPItemCollection_forceRefreshOfItemWithItemID___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 24) itemWithItemID:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)_receivedBatchWithUpdatedItems:(id)items deletedItemsIdentifiers:(id)identifiers forceFlush:(BOOL)flush dropForReplacedPlaceholders:(BOOL)placeholders
{
  placeholdersCopy = placeholders;
  flushCopy = flush;
  v187 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_updateQueue);
  obj = itemsCopy;
  if (self->_observing)
  {
    v11 = [itemsCopy count];
    v123 = identifiersCopy;
    v12 = [identifiersCopy count];
    section = __fp_create_section();
    v13 = fp_current_or_default_log();
    v14 = v12 + v11;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219010;
      *v180 = section;
      *&v180[8] = 2048;
      v181 = v14;
      *v182 = 2048;
      *&v182[2] = [identifiersCopy count];
      v183 = 2112;
      selfCopy = self;
      v185 = 1024;
      v186 = flushCopy;
      _os_log_debug_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx received %ld updates (deleted %ld) for %@ (forceFlush:%d)", buf, 0x30u);
    }

    v121 = v14;
    selfCopy2 = self;

    v133 = objc_opt_new();
    selfCopy4 = self;
    if ([obj count] == 1 && !objc_msgSend(identifiersCopy, "count"))
    {
      v24 = [obj objectAtIndexedSubscript:0];
      v16 = [(FPItemCollection *)self isRootItem:v24];

      selfCopy4 = self;
    }

    else
    {
      v16 = 0;
    }

    v120 = v16;
    v17 = selfCopy4->_regathering && !v16;
    if (v17 || placeholdersCopy)
    {
      v18 = +[FPStitchingManager sharedInstance];
      allPlaceholderItemsByParentIdentifierAndName = [v18 allPlaceholderItemsByParentIdentifierAndName];

      if ([allPlaceholderItemsByParentIdentifierAndName count])
      {
        v20 = MEMORY[0x1E695DF70];
        if (v17)
        {
          allValues = [allPlaceholderItemsByParentIdentifierAndName allValues];
          v22 = [v20 arrayWithArray:allValues];
        }

        else
        {
          allValues = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(obj, "count")}];
          v22 = allValues;
        }

        v166 = 0u;
        v167 = 0u;
        v164 = 0u;
        v165 = 0u;
        v25 = obj;
        v26 = [v25 countByEnumeratingWithState:&v164 objects:v178 count:16];
        if (v26)
        {
          v27 = *v165;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v165 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v164 + 1) + 8 * i);
              v30 = [FPStitchingManager parentIdNameKeyForItem:v29];
              v31 = [allPlaceholderItemsByParentIdentifierAndName objectForKey:v30];
              v32 = v31 == 0;

              if (v32)
              {
                [v22 addObject:v29];
              }
            }

            v26 = [v25 countByEnumeratingWithState:&v164 objects:v178 count:16];
          }

          while (v26);
        }

        obj = v22;
      }

      v33 = +[FPStitchingManager sharedInstance];
      allDeletedIDs = [v33 allDeletedIDs];

      if ([allDeletedIDs count])
      {
        v35 = [v123 arrayByAddingObjectsFromArray:allDeletedIDs];

        v123 = v35;
      }
    }

    if (placeholdersCopy)
    {
      v137 = objc_opt_new();
      v36 = +[FPStitchingManager sharedInstance];
      allPlaceholderReplacementsIDs = [v36 allPlaceholderReplacementsIDs];

      v38 = objc_opt_new();
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v39 = obj;
      v40 = [v39 countByEnumeratingWithState:&v160 objects:v177 count:16];
      if (v40)
      {
        v41 = *v161;
        do
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v161 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v43 = *(*(&v160 + 1) + 8 * j);
            formerItemID = [v43 formerItemID];
            if (formerItemID)
            {
              itemID = [v43 itemID];
              v46 = [allPlaceholderReplacementsIDs containsObject:itemID];

              if (v46)
              {
                formerItemID2 = [v43 formerItemID];
                [v38 addObject:formerItemID2];
              }
            }
          }

          v40 = [v39 countByEnumeratingWithState:&v160 objects:v177 count:16];
        }

        while (v40);
      }

      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v48 = v39;
      v49 = [v48 countByEnumeratingWithState:&v156 objects:v176 count:16];
      if (v49)
      {
        v50 = *v157;
        do
        {
          for (k = 0; k != v49; ++k)
          {
            if (*v157 != v50)
            {
              objc_enumerationMutation(v48);
            }

            v52 = *(*(&v156 + 1) + 8 * k);
            itemID2 = [v52 itemID];
            v54 = [v38 containsObject:itemID2];

            if (v54)
            {
              v55 = fp_current_or_default_log();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *v180 = v52;
                _os_log_debug_impl(&dword_1AAAE1000, v55, OS_LOG_TYPE_DEBUG, "[DEBUG] Dropping placeholder %@ as it has already been replaced.", buf, 0xCu);
              }
            }

            else
            {
              [v137 addObject:v52];
            }
          }

          v49 = [v48 countByEnumeratingWithState:&v156 objects:v176 count:16];
        }

        while (v49);
      }

      obj = v137;
    }

    v56 = +[FPStitchingManager sharedInstance];
    stitchedFieldsAndItemsByItemIDs = [v56 stitchedFieldsAndItemsByItemIDs];

    v57 = +[FPStitchingManager sharedInstance];
    enumeratedItemID = [(FPItemCollection *)selfCopy2 enumeratedItemID];
    v124 = [v57 stitchedItemsForParentID:enumeratedItemID];

    if ([v124 count])
    {
      v59 = fp_current_or_default_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        enumeratedItemID2 = [(FPItemCollection *)selfCopy2 enumeratedItemID];
        [FPItemCollection _receivedBatchWithUpdatedItems:enumeratedItemID2 deletedItemsIdentifiers:v124 forceFlush:v175 dropForReplacedPlaceholders:v59];
      }

      v61 = [MEMORY[0x1E695DF70] arrayWithArray:obj];
      fp_itemIDs = [obj fp_itemIDs];
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v63 = v124;
      v64 = [v63 countByEnumeratingWithState:&v152 objects:v174 count:16];
      if (v64)
      {
        v65 = *v153;
        do
        {
          for (m = 0; m != v64; ++m)
          {
            if (*v153 != v65)
            {
              objc_enumerationMutation(v63);
            }

            v67 = *(*(&v152 + 1) + 8 * m);
            itemID3 = [v67 itemID];
            v69 = [fp_itemIDs containsObject:itemID3];

            if (v69)
            {
              v70 = fp_current_or_default_log();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                *v180 = v67;
                _os_log_debug_impl(&dword_1AAAE1000, v70, OS_LOG_TYPE_DEBUG, "[DEBUG] Dropping stitched item already in update: %@", buf, 0xCu);
              }
            }

            else
            {
              [v61 addObject:v67];
            }
          }

          v64 = [v63 countByEnumeratingWithState:&v152 objects:v174 count:16];
        }

        while (v64);
      }

      v71 = v61;
    }

    else
    {
      v71 = obj;
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    obj = v71;
    v72 = [obj countByEnumeratingWithState:&v148 objects:v173 count:16];
    if (v72)
    {
      v125 = 0;
      v128 = *v149;
      do
      {
        v73 = 0;
        v138 = v125;
        v125 += v72;
        v130 = v72;
        do
        {
          if (*v149 != v128)
          {
            objc_enumerationMutation(obj);
          }

          v136 = v73;
          v74 = *(*(&v148 + 1) + 8 * v73);
          context = objc_autoreleasePoolPush();
          if (v138 <= 0x13)
          {
            v75 = fp_current_or_default_log();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v180 = v74;
              _os_log_debug_impl(&dword_1AAAE1000, v75, OS_LOG_TYPE_DEBUG, "[DEBUG] updated item: %@", buf, 0xCu);
            }
          }

          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          itemID4 = [v74 itemID];
          v77 = [stitchedFieldsAndItemsByItemIDs objectForKeyedSubscript:itemID4];

          v78 = [v77 countByEnumeratingWithState:&v144 objects:v172 count:16];
          if (v78)
          {
            v79 = *v145;
            do
            {
              for (n = 0; n != v78; ++n)
              {
                if (*v145 != v79)
                {
                  objc_enumerationMutation(v77);
                }

                v81 = *(*(&v144 + 1) + 8 * n);
                v82 = [v81 objectForKeyedSubscript:@"FPStitchingSessionFields"];
                v83 = [v81 objectForKeyedSubscript:@"FPStitchingSessionItemKey"];
                v84 = fp_current_or_default_log();
                if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                {
                  itemID5 = [v74 itemID];
                  [FPItemCollection _receivedBatchWithUpdatedItems:itemID5 deletedItemsIdentifiers:v170 forceFlush:&v171 dropForReplacedPlaceholders:v84];
                }

                [v74 overrideFields:v82 ofItem:v83];
              }

              v78 = [v77 countByEnumeratingWithState:&v144 objects:v172 count:16];
            }

            while (v78);
          }

          itemID6 = [v74 itemID];
          providerID = [itemID6 providerID];

          v88 = [v133 objectForKeyedSubscript:providerID];
          if (!v88)
          {
            v89 = MEMORY[0x1E696AD98];
            v90 = +[FPReachabilityMonitor sharedReachabilityMonitor];
            v88 = [v89 numberWithBool:{objc_msgSend(v90, "isNetworkReachableForBundle:", providerID)}];

            [v133 setObject:v88 forKeyedSubscript:providerID];
          }

          [v74 setOffline:{objc_msgSend(v88, "BOOLValue") ^ 1}];
          parentItemIdentifier = [v74 parentItemIdentifier];
          if (![parentItemIdentifier isEqualToString:@"NSFileProviderRootContainerItemIdentifier"])
          {

LABEL_96:
            if ([(FPItemCollection *)selfCopy2 isRootItem:v74])
            {
              [(FPItemCollection *)selfCopy2 _updateObservedItem:v74];
              goto LABEL_118;
            }

            itemID7 = [v74 itemID];
            v95 = selfCopy2;
            objc_sync_enter(v95);
            v132 = selfCopy2->_itemFilteringPredicate;
            v131 = selfCopy2->_additionalItemFilteringPredicate;
            objc_sync_exit(v95);

            v96 = [(FPItemCollection *)v95 isCollectionValidForItem:v74];
            if (v96 && (!v132 || [(NSPredicate *)v132 evaluateWithObject:v74]))
            {
              if (v131)
              {
                HIDWORD(v127) = [(NSPredicate *)v131 evaluateWithObject:v74];
                LODWORD(v127) = 1;
              }

              else
              {
                v127 = 0x100000001;
              }
            }

            else
            {
              v127 = 0;
            }

            v97 = [(FPItemCollection *)v95 isHiddenItem:v74];
            formerItemID3 = [v74 formerItemID];
            if ((v96 & v127 & HIDWORD(v127)) == 1 && (!v97 || selfCopy2->_showHiddenFiles))
            {
              v99 = [(NSMutableDictionary *)selfCopy2->_formerItemsIdentifiers objectForKey:itemID7];

              if (v99)
              {
                v100 = fp_current_or_default_log();
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  *v180 = itemID7;
                  v101 = v100;
                  v102 = "[DEBUG] not interested in superseded itemID %@";
                  v103 = 12;
                  goto LABEL_126;
                }

                goto LABEL_116;
              }

              if (formerItemID3)
              {
                [(NSMutableDictionary *)selfCopy2->_formerItemsIdentifiers setObject:itemID7 forKey:formerItemID3];
                [(NSMutableDictionary *)selfCopy2->_updatedItemsByIdentifiers removeObjectForKey:formerItemID3];
              }

              [(NSMutableDictionary *)selfCopy2->_updatedItemsByIdentifiers setObject:v74 forKeyedSubscript:itemID7];
              [(NSMutableSet *)selfCopy2->_deletedItemsIdentifiers removeObject:itemID7];
            }

            else
            {
              if ([(FPItemCollection *)v95 _indexOfItem:v74]== 0x7FFFFFFFFFFFFFFFLL)
              {
                v100 = fp_current_or_default_log();
                if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_116;
                }

                *buf = 67109888;
                *v180 = v96;
                *&v180[4] = 1024;
                *&v180[6] = v127;
                LOWORD(v181) = 1024;
                *(&v181 + 2) = HIDWORD(v127);
                HIWORD(v181) = 1024;
                *v182 = v97;
                v101 = v100;
                v102 = "[DEBUG] not interested in item (validForCollection: %{BOOL}d, predicate1: %{BOOL}d, predicate2: %{BOOL}d, hidden: %{BOOL}d)";
              }

              else
              {
                [(NSMutableDictionary *)selfCopy2->_updatedItemsByIdentifiers removeObjectForKey:itemID7];
                [(NSMutableSet *)selfCopy2->_deletedItemsIdentifiers addObject:itemID7];
                if (formerItemID3)
                {
                  [(NSMutableSet *)selfCopy2->_deletedItemsIdentifiers addObject:formerItemID3];
                  [(NSMutableDictionary *)selfCopy2->_formerItemsIdentifiers setObject:itemID7 forKey:formerItemID3];
                }

                v100 = fp_current_or_default_log();
                if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_116;
                }

                *buf = 67109888;
                *v180 = v96;
                *&v180[4] = 1024;
                *&v180[6] = v127;
                LOWORD(v181) = 1024;
                *(&v181 + 2) = HIDWORD(v127);
                HIWORD(v181) = 1024;
                *v182 = v97;
                v101 = v100;
                v102 = "[DEBUG] removing item because it isn't not interesting anymore (validForCollection: %{BOOL}d, predicate1: %{BOOL}d, predicate2: %{BOOL}d, hidden: %{BOOL}d)";
              }

              v103 = 26;
LABEL_126:
              _os_log_debug_impl(&dword_1AAAE1000, v101, OS_LOG_TYPE_DEBUG, v102, buf, v103);
LABEL_116:
            }

            goto LABEL_118;
          }

          isFolder = [v74 isFolder];

          if (!isFolder)
          {
            goto LABEL_96;
          }

          v93 = [(FPAppRegistry *)selfCopy2->_appRegistry promoteItemToAppLibraryIfNeeded:v74];
          v94 = v93 == 0;

          if (!v94)
          {
            goto LABEL_96;
          }

LABEL_118:

          objc_autoreleasePoolPop(context);
          ++v138;
          v73 = v136 + 1;
        }

        while (v136 + 1 != v130);
        v72 = [obj countByEnumeratingWithState:&v148 objects:v173 count:16];
      }

      while (v72);
    }

    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    identifiersCopy = v123;
    v104 = [identifiersCopy countByEnumeratingWithState:&v140 objects:v169 count:16];
    if (v104)
    {
      v105 = *v141;
      do
      {
        for (ii = 0; ii != v104; ++ii)
        {
          if (*v141 != v105)
          {
            objc_enumerationMutation(identifiersCopy);
          }

          v107 = *(*(&v140 + 1) + 8 * ii);
          v108 = objc_autoreleasePoolPush();
          [(NSMutableDictionary *)selfCopy2->_updatedItemsByIdentifiers removeObjectForKey:v107];
          [(NSMutableSet *)selfCopy2->_deletedItemsIdentifiers addObject:v107];
          v109 = fp_current_or_default_log();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v180 = v107;
            _os_log_debug_impl(&dword_1AAAE1000, v109, OS_LOG_TYPE_DEBUG, "[DEBUG] deleted item: %@", buf, 0xCu);
          }

          v110 = [(NSMutableDictionary *)selfCopy2->_formerItemsIdentifiers objectForKey:v107];
          if (v110)
          {
            [(NSMutableDictionary *)selfCopy2->_updatedItemsByIdentifiers removeObjectForKey:v110];
            [(NSMutableSet *)selfCopy2->_deletedItemsIdentifiers addObject:v110];
            v111 = fp_current_or_default_log();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v180 = v110;
              _os_log_debug_impl(&dword_1AAAE1000, v111, OS_LOG_TYPE_DEBUG, "[DEBUG] deleted item: %@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v108);
        }

        v104 = [identifiersCopy countByEnumeratingWithState:&v140 objects:v169 count:16];
      }

      while (v104);
    }

    v112 = +[FPProgressManager defaultManager];
    [v112 attachProgressToItemsIfNeeded:obj];

    v113 = v121 == 0 || v120;
    if (selfCopy2->_gathering)
    {
      v114 = !v113;
    }

    else
    {
      v114 = !selfCopy2->_regathering && !v113;
      if (!selfCopy2->_regathering)
      {
        goto LABEL_145;
      }
    }

    if (!selfCopy2->_hasMoreUpdates)
    {
      v116 = fp_current_or_default_log();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
      {
        [FPItemCollection _receivedBatchWithUpdatedItems:deletedItemsIdentifiers:forceFlush:dropForReplacedPlaceholders:];
      }

      goto LABEL_151;
    }

LABEL_145:
    if (!v114)
    {
      eventBlock = fp_current_or_default_log();
      if (os_log_type_enabled(eventBlock, OS_LOG_TYPE_DEBUG))
      {
        [FPItemCollection _receivedBatchWithUpdatedItems:deletedItemsIdentifiers:forceFlush:dropForReplacedPlaceholders:];
      }

      goto LABEL_155;
    }

LABEL_151:
    v117 = fp_current_or_default_log();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
    {
      [FPItemCollection _receivedBatchWithUpdatedItems:flushCopy deletedItemsIdentifiers:selfCopy2 forceFlush:? dropForReplacedPlaceholders:?];
    }

    selfCopy2->_flushableRegatheringGeneration = selfCopy2->_regatheringGeneration;
    updatePacer = selfCopy2->_updatePacer;
    if (!flushCopy)
    {
      [(FPPacer *)updatePacer signalWithTransferredQoSIfImmediate];
      goto LABEL_157;
    }

    eventBlock = [(FPPacer *)updatePacer eventBlock];
    (*(eventBlock + 16))();
LABEL_155:

LABEL_157:
    __fp_leave_section_Debug(&section);
    goto LABEL_158;
  }

  v23 = fp_current_or_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [FPItemCollection _receivedBatchWithUpdatedItems:deletedItemsIdentifiers:forceFlush:dropForReplacedPlaceholders:];
  }

LABEL_158:
  v119 = *MEMORY[0x1E69E9840];
}

- (id)indexPathFromIndex:(int64_t)index
{
  v10[2] = *MEMORY[0x1E69E9840];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPItemCollection.m" lineNumber:1260 description:@"invalid index"];
  }

  v10[0] = 0;
  v10[1] = index;
  v7 = [MEMORY[0x1E696AC88] indexPathWithIndexes:v10 length:2];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)indexPathsFromIndexSet:(id)set
{
  v4 = MEMORY[0x1E695DF70];
  setCopy = set;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(setCopy, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__FPItemCollection_indexPathsFromIndexSet___block_invoke;
  v10[3] = &unk_1E793CC88;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [setCopy enumerateIndexesUsingBlock:v10];

  v8 = v7;
  return v7;
}

void __43__FPItemCollection_indexPathsFromIndexSet___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) indexPathFromIndex:a2];
  [v2 addObject:v3];
}

+ (id)_bouncedItem:(id)item withinItems:(id)items
{
  v40 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  itemsCopy = items;
  v7 = itemCopy;
  filename = [v7 filename];
  v38 = 0;
  v9 = [filename fp_stringByDeletingPathBounceNo:&v38 andPathExtension:0 isFolder:{objc_msgSend(v7, "isFolder")}];
  v10 = v38;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
  uRLByDeletingLastPathComponent = v11;
  v14 = v7;
  if (!v12)
  {
    goto LABEL_17;
  }

  v15 = v12;
  v32 = v10;
  v16 = 0;
  v17 = *v35;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v35 != v17)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v34 + 1) + 8 * i);
      filename2 = [v19 filename];
      v33 = 0;
      v21 = [filename2 fp_stringByDeletingPathBounceNo:&v33 andPathExtension:0 isFolder:{objc_msgSend(v19, "isFolder")}];
      v22 = v33;

      if (![v9 localizedCaseInsensitiveCompare:v21])
      {
        unsignedIntValue = [v22 unsignedIntValue];
        if (v16 > unsignedIntValue)
        {
          unsignedIntValue = v16;
        }

        if (unsignedIntValue <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = unsignedIntValue;
        }
      }
    }

    v15 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
  }

  while (v15);

  v14 = v7;
  v10 = v32;
  if (v16)
  {
    v14 = [v7 copy];

    v24 = [v9 fp_bouncedNameWithIndex:v16 + 1 isDir:{objc_msgSend(v14, "isFolder")}];
    [v14 setDisplayName:v24];

    displayName = [v14 displayName];
    [v14 setFilename:displayName];

    fileURL = [v14 fileURL];

    if (fileURL)
    {
      fileURL2 = [v14 fileURL];
      uRLByDeletingLastPathComponent = [fileURL2 URLByDeletingLastPathComponent];

      filename3 = [v14 filename];
      v29 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:filename3];
      [v14 setFileURL:v29];

LABEL_17:
    }
  }

  v30 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_reorderWithPlaceholdersLast:(id)last
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  lastCopy = last;
  v4 = [lastCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(lastCopy);
        }

        if ([*(*(&v13 + 1) + 8 * i) state])
        {

          v9 = [lastCopy fp_filter:&__block_literal_global_172];
          v10 = [lastCopy fp_filter:&__block_literal_global_174];
          v8 = [v9 arrayByAddingObjectsFromArray:v10];

          goto LABEL_11;
        }
      }

      v5 = [lastCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = lastCopy;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)shouldConsiderUsingPlaceholder:(id)placeholder forItem:(id)item skipForwardFormerID:(BOOL *)d
{
  placeholderCopy = placeholder;
  *d = 0;
  pendingItemsStitching = self->_pendingItemsStitching;
  itemCopy = item;
  itemID = [placeholderCopy itemID];
  v12 = [(NSMutableDictionary *)pendingItemsStitching objectForKey:itemID];

  itemID2 = [placeholderCopy itemID];
  itemID3 = [itemCopy itemID];

  v15 = [itemID2 isEqual:itemID3];
  formerItemID = [placeholderCopy formerItemID];

  if ([placeholderCopy isPlaceholder])
  {
    v17 = v15 ^ 1;
    if ((v15 ^ 1))
    {
      goto LABEL_9;
    }

LABEL_6:
    if (formerItemID)
    {
      v17 = 1;
      *d = 1;
    }

    goto LABEL_9;
  }

  if (!((v12 == 0) & ~[placeholderCopy isBusy] | v15 & 1))
  {
    v17 = 1;
    goto LABEL_9;
  }

  v17 = 0;
  if (v15)
  {
    goto LABEL_6;
  }

LABEL_9:

  return v17;
}

- (id)computeIndexPathsBasedDiffsWithOldItems:(id)items futureItems:(id)futureItems
{
  v77 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  futureItemsCopy = futureItems;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  [v6 setMovedSourceIndexPaths:v7];

  v8 = objc_opt_new();
  [v6 setMovedDestinationIndexPaths:v8];

  v9 = objc_opt_new();
  [v6 setDeletedIndexes:v9];

  v10 = objc_opt_new();
  [v6 setInsertedIndexes:v10];

  v11 = objc_opt_new();
  [v6 setUpdatedIndexes:v11];

  movedSourceIndexPaths = [v6 movedSourceIndexPaths];
  movedDestinationIndexPaths = [v6 movedDestinationIndexPaths];
  deletedIndexes = [v6 deletedIndexes];
  insertedIndexes = [v6 insertedIndexes];
  v52 = v6;
  updatedIndexes = [v6 updatedIndexes];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v12 = self->_deletedItemsIdentifiers;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v71;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v71 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v70 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = [(FPItemCollection *)self _indexOfItemID:v17];
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = v19;
          [itemsCopy removeObjectWithID:v17];
          [deletedIndexes addIndex:v20];
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v14);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = [(NSMutableDictionary *)self->_updatedItemsByIdentifiers allValues];
  v21 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v67;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v67 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v66 + 1) + 8 * j);
        v26 = objc_autoreleasePoolPush();
        itemID = [v25 itemID];
        [itemsCopy removeObjectWithID:itemID];

        v28 = [futureItemsCopy indexOfObject:v25];
        v29 = [(FPItemCollection *)self _indexOfItem:v25];
        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = insertedIndexes;
          if (v28 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_23;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"FPItemCollection.m" lineNumber:1681 description:{@"item %@ doesn't belong in collection %@?", v25, self}];
          v30 = insertedIndexes;
          goto LABEL_22;
        }

        v32 = v29;
        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"FPItemCollection.m" lineNumber:1688 description:@"we just inserted this item"];
        }

        v30 = updatedIndexes;
        if (v32 != v28)
        {
          v34 = [(FPItemCollection *)self indexPathFromIndex:v32];
          [movedSourceIndexPaths addObject:v34];

          currentHandler = [(FPItemCollection *)self indexPathFromIndex:v28];
          [movedDestinationIndexPaths addObject:currentHandler];
          v30 = updatedIndexes;
LABEL_22:
        }

LABEL_23:
        [v30 addIndex:v28];
        objc_autoreleasePoolPop(v26);
      }

      v22 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v22);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  allObjects = [itemsCopy allObjects];
  v36 = [allObjects countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v63;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(allObjects);
        }

        v40 = *(*(&v62 + 1) + 8 * k);
        v41 = objc_autoreleasePoolPush();
        v42 = [(FPItemCollection *)self _indexOfItem:v40];
        v43 = [futureItemsCopy indexOfObject:v40];
        if (v43 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v42 == 0x7FFFFFFFFFFFFFFFLL)
          {
            currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler3 handleFailureInMethod:a2 object:self file:@"FPItemCollection.m" lineNumber:1708 description:@"item doesn't belong anywhere"];
          }

          v45 = deletedIndexes;
          v46 = v42;
        }

        else
        {
          v47 = v43;
          if (v42 != v43)
          {
            v48 = [(FPItemCollection *)self indexPathFromIndex:v42];
            [movedSourceIndexPaths addObject:v48];

            v49 = [(FPItemCollection *)self indexPathFromIndex:v47];
            [movedDestinationIndexPaths addObject:v49];
          }

          v45 = updatedIndexes;
          v46 = v47;
        }

        [v45 addIndex:v46];
        objc_autoreleasePoolPop(v41);
      }

      v37 = [allObjects countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v37);
  }

  v50 = *MEMORY[0x1E69E9840];

  return v52;
}

- (void)sendIndexPathBasedDiffs:(id)diffs
{
  diffsCopy = diffs;
  movedSourceIndexPaths = [diffsCopy movedSourceIndexPaths];
  movedDestinationIndexPaths = [diffsCopy movedDestinationIndexPaths];
  deletedIndexes = [diffsCopy deletedIndexes];
  insertedIndexes = [diffsCopy insertedIndexes];
  updatedIndexes = [diffsCopy updatedIndexes];

  WeakRetained = objc_loadWeakRetained(&self->_indexPathBasedDelegate);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke;
  aBlock[3] = &unk_1E793CCF8;
  v11 = deletedIndexes;
  v24 = v11;
  v12 = WeakRetained;
  v25 = v12;
  selfCopy = self;
  v13 = insertedIndexes;
  v27 = v13;
  v14 = movedSourceIndexPaths;
  v28 = v14;
  v15 = movedDestinationIndexPaths;
  v29 = v15;
  v16 = _Block_copy(aBlock);
  v17 = [v11 count];
  v18 = [v13 count] + v17;
  if (v18 + [v14 count])
  {
    [v12 collection:self didPerformBatchUpdateWithReplayBlock:v16];
  }

  if ([updatedIndexes count])
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_207;
    v19[3] = &unk_1E7939090;
    v20 = updatedIndexes;
    v21 = v12;
    selfCopy2 = self;
    [v21 collection:self didPerformBatchUpdateWithReplayBlock:v19];
  }
}

uint64_t __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) count])
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_cold_1(v2);
    }

    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = [v4 indexPathsFromIndexSet:*(a1 + 32)];
    [v5 collection:v4 didDeleteItemsAtIndexPaths:v6];
  }

  if ([*(a1 + 56) count])
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_cold_2((a1 + 56));
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [v9 indexPathsFromIndexSet:*(a1 + 56)];
    [v8 collection:v9 didInsertItemsAtIndexPaths:v10];
  }

  result = [*(a1 + 64) count];
  if (result)
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_cold_3((a1 + 64));
    }

    return [*(a1 + 40) collection:*(a1 + 48) didMoveItemsFromIndexPaths:*(a1 + 64) toIndexPaths:*(a1 + 72)];
  }

  return result;
}

void __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_207(void *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_207_cold_1(a1);
  }

  v4 = a1[5];
  v3 = a1[6];
  v5 = [v3 indexPathsFromIndexSet:a1[4]];
  [v4 collection:v3 didUpdateItemsAtIndexPaths:v5 changes:0];
}

- (id)computeItemIDBasedDiffs
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  allObjects = [(NSMutableSet *)self->_deletedItemsIdentifiers allObjects];
  v5 = [allObjects mutableCopy];
  [v3 setDeletedItemIDs:v5];

  allValues = [(NSMutableDictionary *)self->_updatedItemsByIdentifiers allValues];
  v7 = [allValues mutableCopy];
  [v3 setUpdatedItems:v7];

  v8 = objc_opt_new();
  [v3 setReplacedItemsByFormerID:v8];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues2 = [(NSMutableDictionary *)self->_updatedItemsByIdentifiers allValues];
  v10 = [allValues2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(allValues2);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        formerItemID = [v14 formerItemID];
        if (formerItemID)
        {
          v16 = formerItemID;
          currentItems = self->_currentItems;
          formerItemID2 = [v14 formerItemID];
          v19 = [(_FPItemList *)currentItems indexOfItemID:formerItemID2];

          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            replacedItemsByFormerID = [v3 replacedItemsByFormerID];
            formerItemID3 = [v14 formerItemID];
            [replacedItemsByFormerID setObject:v14 forKeyedSubscript:formerItemID3];

            updatedItems = [v3 updatedItems];
            [updatedItems removeObject:v14];
          }
        }
      }

      v11 = [allValues2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)sendItemIDBasedDiffs:(id)diffs
{
  diffsCopy = diffs;
  WeakRetained = objc_loadWeakRetained(&self->_itemIDBasedDelegate);
  updatedItems = [diffsCopy updatedItems];
  replacedItemsByFormerID = [diffsCopy replacedItemsByFormerID];
  deletedItemIDs = [diffsCopy deletedItemIDs];

  [WeakRetained collection:self didUpdateItems:updatedItems replaceItemsByFormerID:replacedItemsByFormerID deleteItemsWithIDs:deletedItemIDs];
}

- (id)createDataSourceWithSortDescriptors:(id)descriptors
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPItemCollection.m" lineNumber:1797 description:@"UNREACHABLE: should be overriden"];

  return 0;
}

- (id)scopedSearchQuery
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"FPItemCollection.m" lineNumber:1802 description:@"UNREACHABLE: should be overriden"];

  return 0;
}

- (BOOL)isHiddenItem:(id)item
{
  itemCopy = item;
  if (([itemCopy fileSystemFlags] & 8) != 0)
  {
    goto LABEL_5;
  }

  creationDate = [itemCopy creationDate];
  if (!creationDate)
  {
    goto LABEL_6;
  }

  v5 = creationDate;
  creationDate2 = [itemCopy creationDate];
  [creationDate2 timeIntervalSinceNow];
  v8 = fabs(v7);

  if (v8 >= 10.0)
  {
    goto LABEL_6;
  }

  filename = [itemCopy filename];
  pathExtension = [filename pathExtension];
  v11 = [pathExtension hasPrefix:@"sb-"];

  if (v11)
  {
LABEL_5:
    v12 = 1;
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

+ (void)consumeUpdates:(id)updates deletes:(id)deletes
{
  v32 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  deletesCopy = deletes;
  section = __fp_create_section();
  v24 = section;
  v9 = fp_current_or_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v27 = section;
    v28 = 2112;
    v29 = updatesCopy;
    v30 = 2112;
    v31 = deletesCopy;
    _os_log_debug_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx stitching notifications (updated:%@ deleted:%@)", buf, 0x20u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  activeCollections = [self activeCollections];
  v11 = [activeCollections countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v11)
  {
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(activeCollections);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        updateQueue = [v14 updateQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__FPItemCollection_consumeUpdates_deletes___block_invoke;
        block[3] = &unk_1E7939090;
        block[4] = v14;
        v18 = updatesCopy;
        v19 = deletesCopy;
        dispatch_async(updateQueue, block);
      }

      v11 = [activeCollections countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v11);
  }

  __fp_leave_section_Debug(&v24);
  v16 = *MEMORY[0x1E69E9840];
}

void __43__FPItemCollection_consumeUpdates_deletes___block_invoke(uint64_t *a1)
{
  v2 = a1 + 4;
  if ([a1[4] isRegatheringAfterSignal])
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __43__FPItemCollection_consumeUpdates_deletes___block_invoke_cold_1(v2);
    }
  }

  else
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    [v4 _receivedBatchWithUpdatedItems:v5 deletedItemsIdentifiers:v6 forceFlush:1 dropForReplacedPlaceholders:0];
  }
}

+ (void)replacePlaceholders:(id)placeholders withActualItems:(id)items deletedIDs:(id)ds
{
  v22 = *MEMORY[0x1E69E9840];
  placeholdersCopy = placeholders;
  itemsCopy = items;
  dsCopy = ds;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  activeCollections = [self activeCollections];
  v12 = [activeCollections countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(activeCollections);
        }

        [*(*(&v17 + 1) + 8 * v15++) replacePlaceholders:placeholdersCopy withActualItems:itemsCopy deletedIDs:dsCopy];
      }

      while (v13 != v15);
      v13 = [activeCollections countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isEnumerationSuspended
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__FPItemCollection_isEnumerationSuspended__block_invoke;
  block[3] = &unk_1E793A2E8;
  block[4] = &v5;
  dispatch_sync(_collectionsQueue, block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __44__FPItemCollection_suspendVendorEnumeration__block_invoke()
{
  ++_enumerationSuspendCount;
  v0 = fp_current_or_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __44__FPItemCollection_suspendVendorEnumeration__block_invoke_cold_1();
  }
}

+ (void)resumeVendorEnumeration
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__17;
  v23 = __Block_byref_object_dispose__17;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__FPItemCollection_resumeVendorEnumeration__block_invoke;
  block[3] = &unk_1E793CD20;
  block[6] = a2;
  block[7] = self;
  block[4] = &v15;
  block[5] = &v19;
  dispatch_sync(_collectionsQueue, block);
  if (!v16[3])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = v20[5];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v25 count:16];
    if (v3)
    {
      v4 = *v11;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v10 + 1) + 8 * i);
          updateQueue = [v6 updateQueue];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __43__FPItemCollection_resumeVendorEnumeration__block_invoke_220;
          v9[3] = &unk_1E79399B0;
          v9[4] = v6;
          dispatch_sync(updateQueue, v9);
        }

        v3 = [v2 countByEnumeratingWithState:&v10 objects:v25 count:16];
      }

      while (v3);
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  v8 = *MEMORY[0x1E69E9840];
}

void __43__FPItemCollection_resumeVendorEnumeration__block_invoke(void *a1)
{
  v2 = _enumerationSuspendCount;
  if (!_enumerationSuspendCount)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    [v3 handleFailureInMethod:a1[6] object:a1[7] file:@"FPItemCollection.m" lineNumber:1905 description:@"over resume!"];

    v2 = _enumerationSuspendCount;
  }

  _enumerationSuspendCount = v2 - 1;
  *(*(a1[4] + 8) + 24) = v2 - 1;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __43__FPItemCollection_resumeVendorEnumeration__block_invoke_cold_1();
  }

  v5 = [_activeCollections copy];
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __43__FPItemCollection_resumeVendorEnumeration__block_invoke_220(uint64_t a1)
{
  v1 = [*(a1 + 32) dataSource];
  [v1 enumerationMightHaveResumed];
}

+ (void)addActiveCollection:(id)collection
{
  collectionCopy = collection;
  v4 = _collectionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__FPItemCollection_addActiveCollection___block_invoke;
  block[3] = &unk_1E79399B0;
  v7 = collectionCopy;
  v5 = collectionCopy;
  dispatch_sync(v4, block);
}

void __40__FPItemCollection_addActiveCollection___block_invoke(uint64_t a1)
{
  [_activeCollections addObject:*(a1 + 32)];
  if ([_activeCollections count] == 1)
  {
    v1 = _indexingAssertion;
    if (_indexingAssertion)
    {

      [v1 start];
    }

    else if ((_isFetchingIndexingAssertion & 1) == 0)
    {
      _isFetchingIndexingAssertion = 1;
      v2 = +[FPDaemonConnection sharedConnectionProxy];
      [v2 forceIndexingInForeground:0 completionHandler:&__block_literal_global_224];
    }
  }
}

void __40__FPItemCollection_addActiveCollection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _collectionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__FPItemCollection_addActiveCollection___block_invoke_3;
  block[3] = &unk_1E79399B0;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

uint64_t __40__FPItemCollection_addActiveCollection___block_invoke_3(uint64_t a1)
{
  _isFetchingIndexingAssertion = 0;
  objc_storeStrong(&_indexingAssertion, *(a1 + 32));
  result = [_activeCollections count];
  if (result)
  {
    v2 = _indexingAssertion;

    return [v2 start];
  }

  return result;
}

+ (void)removeActiveCollection:(id)collection
{
  collectionCopy = collection;
  v4 = _collectionsQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__FPItemCollection_removeActiveCollection___block_invoke;
  block[3] = &unk_1E79399B0;
  v7 = collectionCopy;
  v5 = collectionCopy;
  dispatch_sync(v4, block);
}

uint64_t __43__FPItemCollection_removeActiveCollection___block_invoke(uint64_t a1)
{
  [_activeCollections removeObject:*(a1 + 32)];
  result = [_activeCollections count];
  if (!result)
  {
    v2 = _indexingAssertion;

    return [v2 stop];
  }

  return result;
}

- (void)_replaceContentsWithVendorItems:(id)items
{
  itemsCopy = items;
  updateQueue = self->_updateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__FPItemCollection__replaceContentsWithVendorItems___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = itemsCopy;
  v6 = itemsCopy;
  dispatch_async(updateQueue, v7);
}

void __52__FPItemCollection__replaceContentsWithVendorItems___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) removeAllObjects];
  [*(*(a1 + 32) + 72) removeAllObjects];
  *(*(a1 + 32) + 113) = 1;
  v6 = *(a1 + 40);
  v2 = [v6 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = v6;
  }

  else
  {
    v5 = [v6 fp_map:&__block_literal_global_228];

    v4 = v5;
  }

  v7 = v4;
  [*(a1 + 32) _receivedBatchWithUpdatedItems:v4 deletedItemsIdentifiers:MEMORY[0x1E695E0F0]];
}

FPItem *__52__FPItemCollection__replaceContentsWithVendorItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FPItem alloc] initWithSearchableItem:v2];

  return v3;
}

- (void)_restartObservationWithReason:(id)reason
{
  reasonCopy = reason;
  workingQueue = self->_workingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__FPItemCollection__restartObservationWithReason___block_invoke;
  v7[3] = &unk_1E79390B8;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(workingQueue, v7);
}

uint64_t __50__FPItemCollection__restartObservationWithReason___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __50__FPItemCollection__restartObservationWithReason___block_invoke_cold_1(a1);
  }

  return [*(a1 + 32) _restartObservation];
}

- (FPItemCollectionMinimalDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __34__FPItemCollection_startObserving__block_invoke_135_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dataSource:(uint64_t)a1 wasInvalidatedWithError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPItemCollection.m" lineNumber:604 description:{@"Invalid parameter not satisfying: %@", @"error"}];
}

void __55__FPItemCollection_dataSource_wasInvalidatedWithError___block_invoke_2_cold_1(uint64_t *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = [*(a2 + 40) fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1(&dword_1AAAE1000, v4, v5, "[ERROR] %@ received an error from data source: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __55__FPItemCollection_dataSource_wasInvalidatedWithError___block_invoke_2_cold_2(uint64_t *a1, id *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = [*a2 fp_prettyDescription];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_8_1(&dword_1AAAE1000, v4, v5, "[ERROR] %@ received a retriable error from data source: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __33__FPItemCollection_stopObserving__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __52__FPItemCollection_reorderItemsWithSortDescriptors___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __67__FPItemCollection_replacePlaceholders_withActualItems_deletedIDs___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __67__FPItemCollection_replacePlaceholders_withActualItems_deletedIDs___block_invoke_cold_2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Item isBusy, absorbing info from placeHolder", buf, 2u);
}

void __67__FPItemCollection_replacePlaceholders_withActualItems_deletedIDs___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__FPItemCollection__updateObservedItem___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __49__FPItemCollection_forceRefreshOfItemWithItemID___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_receivedBatchWithUpdatedItems:deletedItemsIdentifiers:forceFlush:dropForReplacedPlaceholders:.cold.1()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_receivedBatchWithUpdatedItems:(void *)a1 deletedItemsIdentifiers:(uint64_t)a2 forceFlush:(uint64_t)a3 dropForReplacedPlaceholders:(NSObject *)a4 .cold.2(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = a1;
  *a3 = 138412546;
  *(a3 + 4) = v7;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  _os_log_debug_impl(&dword_1AAAE1000, a4, OS_LOG_TYPE_DEBUG, "[DEBUG] Found stitched child items of (%@): %@", a3, 0x16u);
}

- (void)_receivedBatchWithUpdatedItems:(void *)a1 deletedItemsIdentifiers:(uint8_t *)buf forceFlush:(void *)a3 dropForReplacedPlaceholders:(os_log_t)log .cold.3(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Found a stitched item for itemID %@, overriding if needed.", buf, 0xCu);
}

- (void)_receivedBatchWithUpdatedItems:deletedItemsIdentifiers:forceFlush:dropForReplacedPlaceholders:.cold.4()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_receivedBatchWithUpdatedItems:deletedItemsIdentifiers:forceFlush:dropForReplacedPlaceholders:.cold.5()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_receivedBatchWithUpdatedItems:(uint64_t)a1 deletedItemsIdentifiers:(uint64_t)a2 forceFlush:dropForReplacedPlaceholders:.cold.6(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 120);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
  v8 = *MEMORY[0x1E69E9840];
}

void __40__FPItemCollection__flushPendingUpdates__block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __40__FPItemCollection__flushPendingUpdates__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__FPItemCollection__flushPendingUpdates__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__FPItemCollection__flushPendingUpdates__block_invoke_187_cold_1(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = [*(*(*a2 + 8) + 40) count];
  v8 = [*(*a1 + 24) count];
  v9 = *(*(*a2 + 8) + 40);
  v10 = *(*a1 + 24);
  v12 = 138413314;
  v13 = v6;
  v14 = 1024;
  v15 = v7;
  v16 = 1024;
  v17 = v8;
  v18 = 2112;
  v19 = v9;
  v20 = 2112;
  v21 = v10;
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] calling delegates for %@ (old count=%d, new count=%d)\nold items: %@\nnew items: %@", &v12, 0x2Cu);
  v11 = *MEMORY[0x1E69E9840];
}

void __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void __44__FPItemCollection_sendIndexPathBasedDiffs___block_invoke_207_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x1E69E9840];
}

void __43__FPItemCollection_consumeUpdates_deletes___block_invoke_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_45(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__FPItemCollection_suspendVendorEnumeration__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __43__FPItemCollection_resumeVendorEnumeration__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __50__FPItemCollection__restartObservationWithReason___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

@end