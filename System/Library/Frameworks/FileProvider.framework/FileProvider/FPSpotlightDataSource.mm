@interface FPSpotlightDataSource
- (FPSpotlightDataSource)initWithQueryDescriptor:(id)a3 predicate:(id)a4;
- (FPSpotlightDataSourceDelegate)delegate;
- (NSString)description;
- (unint64_t)maximumNumberOfItems;
- (void)_invalidate;
- (void)_invalidateWithError:(id)a3;
- (void)collector:(id)a3 didEncounterError:(id)a4;
- (void)collector:(id)a3 didGatherItems:(id)a4;
- (void)collector:(id)a3 didRemoveItemIDs:(id)a4;
- (void)collector:(id)a3 didUpdateItems:(id)a4;
- (void)collector:(id)a3 didUpdateItemsOrigin:(unint64_t)a4;
- (void)invalidate;
- (void)start;
@end

@implementation FPSpotlightDataSource

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__FPSpotlightDataSource_start__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (unint64_t)maximumNumberOfItems
{
  v2 = [(FPSpotlightQueryDescriptor *)self->_queryDescriptor settings];
  v3 = [v2 desiredNumberOfItems];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__FPSpotlightDataSource_invalidate__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] invalidating spotlight data source: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (FPSpotlightDataSource)initWithQueryDescriptor:(id)a3 predicate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = FPSpotlightDataSource;
  v9 = [(FPSpotlightDataSource *)&v19 init];
  if (v9)
  {
    v10 = +[FPSpotlightCollectorManager sharedInstance];
    collectorManager = v9->_collectorManager;
    v9->_collectorManager = v10;

    objc_storeStrong(&v9->_predicate, a4);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.FileProvider.SpotlightDataSource.queue (%p)", v9];
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = FPDataSourceBaseQueue();
    v16 = dispatch_queue_create_with_target_V2(v13, v14, v15);
    queue = v9->_queue;
    v9->_queue = v16;

    objc_storeStrong(&v9->_queryDescriptor, a3);
  }

  return v9;
}

- (void)_invalidateWithError:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  [(FPSpotlightDataSource *)self _invalidate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dataSource:self wasInvalidatedWithError:v5];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v3 stringWithFormat:@"<%@:%p d:'<%@:%p>'>", v5, self, v8, v9];

  return v10;
}

- (FPSpotlightDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collector:(id)a3 didGatherItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__FPSpotlightDataSource_FPSpotlightCollectorObserving__collector_didGatherItems___block_invoke;
  block[3] = &unk_1E7939090;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __81__FPSpotlightDataSource_FPSpotlightCollectorObserving__collector_didGatherItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained dataSource:*(a1 + 32) didChangeItemsOrigin:{objc_msgSend(*(a1 + 40), "itemsOrigin")}];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 48));
  [v3 dataSource:*(a1 + 32) replaceContentsWithItems:*(a1 + 48) hasMoreChanges:0];
}

- (void)collector:(id)a3 didUpdateItems:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__FPSpotlightDataSource_FPSpotlightCollectorObserving__collector_didUpdateItems___block_invoke;
  v8[3] = &unk_1E79390B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __81__FPSpotlightDataSource_FPSpotlightCollectorObserving__collector_didUpdateItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained dataSource:*(a1 + 32) receivedUpdatedItems:*(a1 + 40) deletedItems:MEMORY[0x1E695E0F0] hasMoreChanges:0];
}

- (void)collector:(id)a3 didRemoveItemIDs:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__FPSpotlightDataSource_FPSpotlightCollectorObserving__collector_didRemoveItemIDs___block_invoke;
  v8[3] = &unk_1E79390B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __83__FPSpotlightDataSource_FPSpotlightCollectorObserving__collector_didRemoveItemIDs___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained dataSource:*(a1 + 32) receivedUpdatedItems:MEMORY[0x1E695E0F0] deletedItems:*(a1 + 40) hasMoreChanges:0];
}

- (void)collector:(id)a3 didUpdateItemsOrigin:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__FPSpotlightDataSource_FPSpotlightCollectorObserving__collector_didUpdateItemsOrigin___block_invoke;
  v5[3] = &unk_1E7939038;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

void __87__FPSpotlightDataSource_FPSpotlightCollectorObserving__collector_didUpdateItemsOrigin___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  [WeakRetained dataSource:*(a1 + 32) didChangeItemsOrigin:*(a1 + 40)];
}

- (void)collector:(id)a3 didEncounterError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(FPSpotlightDataSource(FPSpotlightCollectorObserving) *)v6 collector:v7 didEncounterError:v8];
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__FPSpotlightDataSource_FPSpotlightCollectorObserving__collector_didEncounterError___block_invoke;
  v11[3] = &unk_1E79390B8;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  dispatch_async(queue, v11);
}

@end