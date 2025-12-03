@interface _ATXAppLaunchSequenceManager
+ (_ATXAppLaunchSequenceManager)sharedInstance;
- (_ATXAppLaunchSequenceManager)init;
- (_ATXAppLaunchSequenceManager)initWithDataStore:(id)store;
- (_ATXAppLaunchSequenceManager)initWithInMemoryStore;
- (id)launchSequence;
- (id)launchSequenceForAppAction:(id)action;
- (id)launchSequenceForBundle:(id)bundle;
- (void)addBundleIdToLaunchSequence:(id)sequence date:(id)date;
- (void)decayAllAppActionLaunchSequencesWithHalfLifeInDays:(double)days;
- (void)decayAllLaunchSequencesWithHalfLifeInDays:(double)days;
- (void)deleteAllLaunchesForAppActions:(id)actions;
- (void)deleteAllLaunchesForBundles:(id)bundles;
@end

@implementation _ATXAppLaunchSequenceManager

+ (_ATXAppLaunchSequenceManager)sharedInstance
{
  if (sharedInstance__pasOnceToken7_22 != -1)
  {
    +[_ATXAppLaunchSequenceManager sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_27;

  return v3;
}

- (_ATXAppLaunchSequenceManager)init
{
  v3 = +[_ATXDataStore sharedInstance];
  v4 = [(_ATXAppLaunchSequenceManager *)self initWithDataStore:v3];

  return v4;
}

- (_ATXAppLaunchSequenceManager)initWithInMemoryStore
{
  initWithInMemoryDataStore = [[_ATXDataStore alloc] initWithInMemoryDataStore];
  v4 = [(_ATXAppLaunchSequenceManager *)self initWithDataStore:initWithInMemoryDataStore];

  return v4;
}

- (_ATXAppLaunchSequenceManager)initWithDataStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    [(_ATXAppLaunchSequenceManager *)a2 initWithDataStore:?];
  }

  v26.receiver = self;
  v26.super_class = _ATXAppLaunchSequenceManager;
  v7 = [(_ATXAppLaunchSequenceManager *)&v26 init];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    syncQueue = v7->_syncQueue;
    v7->_syncQueue = v12;

    objc_storeStrong(&v7->_datastore, store);
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    appLaunchSequence = v7->_appLaunchSequence;
    v7->_appLaunchSequence = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    appActionLaunchSequence = v7->_appActionLaunchSequence;
    v7->_appActionLaunchSequence = strongToWeakObjectsMapTable2;

    objc_initWeak(&location, v7);
    v18 = objc_opt_new();
    uninstallNotificationListener = v7->_uninstallNotificationListener;
    v7->_uninstallNotificationListener = v18;

    v20 = v7->_uninstallNotificationListener;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __50___ATXAppLaunchSequenceManager_initWithDataStore___block_invoke;
    v23[3] = &unk_278596DA0;
    objc_copyWeak(&v24, &location);
    [(_ATXInternalUninstallNotification *)v20 registerForNotificationsWithUninstallBlock:v23];
    v21 = __atxlog_handle_default();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchSequenceManager initWithDataStore:v21];
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (id)launchSequenceForBundle:(id)bundle
{
  bundleCopy = bundle;
  if (!bundleCopy)
  {
    [(_ATXAppLaunchSequenceManager *)a2 launchSequenceForBundle:?];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__59;
  v17 = __Block_byref_object_dispose__59;
  v18 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___ATXAppLaunchSequenceManager_launchSequenceForBundle___block_invoke;
  block[3] = &unk_27859A8B0;
  v11 = bundleCopy;
  v12 = &v13;
  block[4] = self;
  v7 = bundleCopy;
  dispatch_sync(syncQueue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)launchSequenceForAppAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    [(_ATXAppLaunchSequenceManager *)a2 launchSequenceForAppAction:?];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__59;
  v17 = __Block_byref_object_dispose__59;
  v18 = 0;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59___ATXAppLaunchSequenceManager_launchSequenceForAppAction___block_invoke;
  block[3] = &unk_27859A8B0;
  v11 = actionCopy;
  v12 = &v13;
  block[4] = self;
  v7 = actionCopy;
  dispatch_sync(syncQueue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)decayAllLaunchSequencesWithHalfLifeInDays:(double)days
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74___ATXAppLaunchSequenceManager_decayAllLaunchSequencesWithHalfLifeInDays___block_invoke;
  v4[3] = &unk_278598278;
  v4[4] = self;
  *&v4[5] = days;
  dispatch_async(syncQueue, v4);
}

- (void)decayAllAppActionLaunchSequencesWithHalfLifeInDays:(double)days
{
  syncQueue = self->_syncQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83___ATXAppLaunchSequenceManager_decayAllAppActionLaunchSequencesWithHalfLifeInDays___block_invoke;
  v4[3] = &unk_278598278;
  v4[4] = self;
  *&v4[5] = days;
  dispatch_async(syncQueue, v4);
}

- (void)deleteAllLaunchesForBundles:(id)bundles
{
  bundlesCopy = bundles;
  if ([bundlesCopy count])
  {
    syncQueue = self->_syncQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60___ATXAppLaunchSequenceManager_deleteAllLaunchesForBundles___block_invoke;
    v6[3] = &unk_278596C10;
    v6[4] = self;
    v7 = bundlesCopy;
    dispatch_sync(syncQueue, v6);
  }
}

- (void)deleteAllLaunchesForAppActions:(id)actions
{
  actionsCopy = actions;
  if ([actionsCopy count])
  {
    syncQueue = self->_syncQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63___ATXAppLaunchSequenceManager_deleteAllLaunchesForAppActions___block_invoke;
    v6[3] = &unk_278596C10;
    v6[4] = self;
    v7 = actionsCopy;
    dispatch_sync(syncQueue, v6);
  }
}

- (id)launchSequence
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__59;
  v10 = __Block_byref_object_dispose__59;
  v11 = 0;
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46___ATXAppLaunchSequenceManager_launchSequence__block_invoke;
  v5[3] = &unk_2785980E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(syncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addBundleIdToLaunchSequence:(id)sequence date:(id)date
{
  sequenceCopy = sequence;
  dateCopy = date;
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65___ATXAppLaunchSequenceManager_addBundleIdToLaunchSequence_date___block_invoke;
  block[3] = &unk_278597828;
  block[4] = self;
  v12 = sequenceCopy;
  v13 = dateCopy;
  v9 = dateCopy;
  v10 = sequenceCopy;
  dispatch_sync(syncQueue, block);
}

- (void)initWithDataStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchSequenceManager.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"datastore"}];
}

- (void)launchSequenceForBundle:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchSequenceManager.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];
}

- (void)launchSequenceForAppAction:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchSequenceManager.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"appAction"}];
}

@end