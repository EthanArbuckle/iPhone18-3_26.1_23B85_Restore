@interface ASDAppQuery
+ (id)_defaultExecutor;
+ (id)queryDefaultPairedWatchForBetaApps;
+ (id)queryForAlmondApps;
+ (id)queryForAppClipWithStoreItemID:(int64_t)a3;
+ (id)queryForBeagleApps;
+ (id)queryForBetaApps;
+ (id)queryForBetaAppsOnPairedDevice:(id)a3;
+ (id)queryForBetaAppsWithStoreItemIDs:(id)a3;
+ (id)queryForBundleAtPath:(id)a3;
+ (id)queryForBundleIDs:(id)a3;
+ (id)queryForRemoteAppLibraryOnDevice:(id)a3;
+ (id)queryForStoreApps;
+ (id)queryForStoreItemIDs:(id)a3;
+ (id)queryForSystemAppsOnPairedDevice:(id)a3;
+ (id)queryForUpdates;
+ (id)queryWithPredicate:(id)a3;
+ (id)queryWithPredicate:(id)a3 onPairedDevice:(id)a4;
+ (void)anyWithPredicate:(id)a3 withResultHandler:(id)a4;
- (ASDAppQuery)init;
- (ASDAppQuery)initWithPredicate:(id)a3;
- (ASDAppQuery)initWithPredicate:(id)a3 onPairedDevice:(id)a4;
- (ASDAppQuery)initWithPredicate:(id)a3 queryExecutor:(id)a4 serviceBroker:(id)a5 notificationCenter:(id)a6;
- (ASDAppQueryResultsObserver)observer;
- (id)_downloadProgressForApp:(void *)a3 fromRemoteProgress:;
- (id)_installProgressForApp:(uint64_t)a1 fromRemoteProgress:(void *)a2;
- (id)_postProcessProgressForApp:(void *)a3 fromRemoteProgress:;
- (id)_removeCachedResultsForBundleIDs:(uint64_t)a1;
- (id)_replaceCachedResultsWithResults:(id *)a1;
- (void)_debugReceivedApps:(uint64_t)a1;
- (void)_executeQueryWithPredicate:(void *)a3 onPairedDevice:(void *)a4 withCompletion:;
- (void)_handleAppsRemovedWithBundleIDs:(uint64_t)a1;
- (void)_handleAppsUpdatedWithResults:(uint64_t)a1;
- (void)_handleBrokerConnectionNotification:(id)a3;
- (void)_handleCancelForApp:(char)a3 reportRemotely:;
- (void)_handleNotificationErrorWithUserInfo:(uint64_t)a1;
- (void)_handleNotificationRefreshWithUserInfo:(uint64_t)a1;
- (void)_handlePauseForApp:(uint64_t)a1;
- (void)_handleQueryOptionsWithResults:(uint64_t)a1;
- (void)_handleResumeForApp:(uint64_t)a1;
- (void)_newProgressForApp:(uint64_t)a1 fromRemoteProgress:(void *)a2 usingServiceBroker:(void *)a3;
- (void)_sendResultsChangedWithResults:(uint64_t)a1;
- (void)_updateCachedResultsWithResults:(uint64_t)a1;
- (void)dealloc;
- (void)executeQueryWithResultHandler:(id)a3;
- (void)notificationCenter:(id)a3 receivedNotifications:(id)a4;
- (void)notificationCenter:(id)a3 receivedProgress:(id)a4;
- (void)setObserver:(id)a3;
@end

@implementation ASDAppQuery

+ (id)queryForAlmondApps
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"softwarePlatform == %ld", 1];
  v4 = [v2 initWithPredicate:v3];

  return v4;
}

+ (id)queryForAppClipWithStoreItemID:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAppClip == YES AND isStoreApp == YES AND storeItemID == %lld", a3];
  v5 = [[a1 alloc] initWithPredicate:v4];

  return v5;
}

+ (id)queryForBeagleApps
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isOcelot == YES"];
  v4 = [v2 initWithPredicate:v3];

  return v4;
}

+ (id)queryForBetaApps
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isBetaApp == YES"];
  v4 = [v2 initWithPredicate:v3];

  return v4;
}

+ (id)queryForBetaAppsWithStoreItemIDs:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAppClip == NO AND isBetaApp == YES AND storeItemID IN %@", v4];

  v7 = [v5 initWithPredicate:v6];

  return v7;
}

+ (id)queryForBundleIDs:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleID IN %@", v4];

  v7 = [v5 initWithPredicate:v6];

  return v7;
}

+ (id)queryForBundleAtPath:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundlePath == %@", v4];

  v7 = [v5 initWithPredicate:v6];

  return v7;
}

+ (id)queryDefaultPairedWatchForBetaApps
{
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1B8220000, v3, OS_LOG_TYPE_ERROR, "Please note that this ASDAppQuery doesn't return real results yet.", v8, 2u);
  }

  v4 = [a1 alloc];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isBetaApp == YES"];
  v6 = [v4 initWithPredicate:v5];

  return v6;
}

+ (id)queryForBetaAppsOnPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isBetaApp == YES"];
  v7 = [v5 initWithPredicate:v6 onPairedDevice:v4];

  return v7;
}

+ (id)queryForRemoteAppLibraryOnDevice:(id)a3
{
  v5 = a3;
  v6 = [a1 alloc];
  v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v8 = v5;
  if (v6)
  {
    v9 = v7;
    v10 = +[ASDAppQuery _defaultExecutor];
    v11 = +[ASDServiceBroker defaultBroker];
    v12 = +[ASDNotificationCenter defaultCenter];
    v6 = [v6 initWithPredicate:v9 queryExecutor:v10 serviceBroker:v11 notificationCenter:v12];

    if (v6)
    {
      objc_storeStrong(v6 + 9, a3);
    }
  }

  return v6;
}

+ (id)queryForStoreApps
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAppClip == NO AND isStoreApp == YES"];
  v4 = [v2 initWithPredicate:v3];

  return v4;
}

+ (id)queryForStoreItemIDs:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAppClip == NO AND isStoreApp == YES AND storeItemID IN %@", v4];

  v7 = [v5 initWithPredicate:v6];

  return v7;
}

+ (id)queryForSystemAppsOnPairedDevice:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isSystemApp == YES"];
  v7 = [v5 initWithPredicate:v6 onPairedDevice:v4];

  return v7;
}

+ (id)queryForUpdates
{
  v2 = [a1 alloc];
  if (v2)
  {
    v2 = [v2 init];
    if (v2)
    {
      v2[17] = 1;
    }
  }

  return v2;
}

- (ASDAppQuery)init
{
  v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v4 = [(ASDAppQuery *)self initWithPredicate:v3];

  return v4;
}

+ (id)queryWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPredicate:v4];

  return v5;
}

- (ASDAppQuery)initWithPredicate:(id)a3
{
  v4 = a3;
  v5 = +[ASDAppQuery _defaultExecutor];
  v6 = +[ASDServiceBroker defaultBroker];
  v7 = +[ASDNotificationCenter defaultCenter];
  v8 = [(ASDAppQuery *)self initWithPredicate:v4 queryExecutor:v5 serviceBroker:v6 notificationCenter:v7];

  return v8;
}

+ (id)_defaultExecutor
{
  objc_opt_self();
  if (_MergedGlobals_23 != -1)
  {
    dispatch_once(&_MergedGlobals_23, &__block_literal_global_0);
  }

  v0 = qword_1ED90D438;

  return v0;
}

+ (id)queryWithPredicate:(id)a3 onPairedDevice:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPredicate:v7 onPairedDevice:v6];

  return v8;
}

- (ASDAppQuery)initWithPredicate:(id)a3 onPairedDevice:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = +[ASDAppQuery _defaultExecutor];
  v10 = +[ASDServiceBroker defaultBroker];
  v11 = +[ASDNotificationCenter defaultCenter];
  v12 = v7;
  if (self)
  {
    v13 = [(ASDAppQuery *)self initWithPredicate:v8 queryExecutor:v9 serviceBroker:v10 notificationCenter:v11];
    self = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_device, a4);
    }
  }

  return self;
}

- (ASDAppQuery)initWithPredicate:(id)a3 queryExecutor:(id)a4 serviceBroker:(id)a5 notificationCenter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = ASDAppQuery;
  v14 = [(ASDAppQuery *)&v27 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.AppStoreDaemon.ASDAppQuery", v15);
    dispatchQueue = v14->_dispatchQueue;
    v14->_dispatchQueue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.AppStoreDaemon.ASDAppQuery.notify", v18);
    notificationQueue = v14->_notificationQueue;
    v14->_notificationQueue = v19;

    v21 = [v10 copy];
    predicate = v14->_predicate;
    v14->_predicate = v21;

    objc_storeStrong(&v14->_serviceBroker, a5);
    objc_storeStrong(&v14->_queryExecutor, a4);
    v23 = objc_opt_new();
    resultCache = v14->_resultCache;
    v14->_resultCache = v23;

    objc_storeStrong(&v14->_notificationCenter, a6);
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 addObserver:v14 selector:sel__handleBrokerConnectionNotification_ name:ASDServiceBrokerConnectedNotification object:v14->_serviceBroker];
  }

  return v14;
}

- (void)dealloc
{
  [(ASDNotificationCenter *)self->_notificationCenter removeNotificationObserver:self forName:@"LS"];
  [(ASDNotificationCenter *)self->_notificationCenter removeProgressObserver:self];
  v3.receiver = self;
  v3.super_class = ASDAppQuery;
  [(ASDAppQuery *)&v3 dealloc];
}

- (ASDAppQueryResultsObserver)observer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__ASDAppQuery_observer__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __23__ASDAppQuery_observer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setObserver:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__ASDAppQuery_setObserver___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __27__ASDAppQuery_setObserver___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(*(a1 + 32) + 24);
  if (*(a1 + 40))
  {
    [v2 addNotificationObserver:? forName:?];
    v3 = *(*(a1 + 32) + 24);

    return [v3 addProgressObserver:?];
  }

  else
  {
    [v2 removeNotificationObserver:? forName:?];
    v5 = *(*(a1 + 32) + 24);

    return [v5 removeProgressObserver:?];
  }
}

+ (void)anyWithPredicate:(id)a3 withResultHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[ASDAppQuery _defaultExecutor];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__ASDAppQuery_anyWithPredicate_withResultHandler___block_invoke;
  v9[3] = &unk_1E7CDB7A8;
  v10 = v5;
  v8 = v5;
  [v7 executeQueryWithPredicate:v6 onPairedDevice:0 remoteDeviceID:0 withResultHandler:v9];
}

void __50__ASDAppQuery_anyWithPredicate_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)executeQueryWithResultHandler:(id)a3
{
  v4 = a3;
  predicate = self->_predicate;
  device = self->_device;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke;
  v8[3] = &unk_1E7CDB8E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(ASDAppQuery *)self _executeQueryWithPredicate:device onPairedDevice:v8 withCompletion:?];
}

void __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke_2;
  v12[3] = &unk_1E7CDB8B8;
  v12[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_sync(v9, v12);
}

void __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke_2(uint64_t a1)
{
  [(ASDAppQuery *)*(a1 + 32) _debugReceivedApps:?];
  *(*(a1 + 32) + 16) = 1;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [(ASDAppQuery *)v2 _replaceCachedResultsWithResults:v3];
    [(ASDAppQuery *)*(a1 + 32) _handleQueryOptionsWithResults:?];
    v5 = *(*(a1 + 32) + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke_3;
    v12[3] = &unk_1E7CDB890;
    v6 = &v14;
    v14 = *(a1 + 56);
    v7 = &v13;
    v13 = *(a1 + 40);
    v8 = v12;
  }

  else
  {
    v5 = *(v2 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke_4;
    v9[3] = &unk_1E7CDB890;
    v6 = &v11;
    v11 = *(a1 + 56);
    v7 = &v10;
    v10 = *(a1 + 48);
    v8 = v9;
  }

  dispatch_async(v5, v8);
}

- (void)_debugReceivedApps:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory(13);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = [v3 count];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __34__ASDAppQuery__debugReceivedApps___block_invoke;
      v7[3] = &unk_1E7CDB958;
      v7[4] = a1;
      v7[5] = v6;
      [v3 enumerateObjectsUsingBlock:v7];
    }
  }
}

- (id)_replaceCachedResultsWithResults:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    [(ASDAppQuery *)v2 _updateCachedResultsWithResults:v3];
    v4 = MEMORY[0x1E695DFA8];
    v5 = [v2[7] allKeys];
    v6 = [v4 setWithArray:v5];

    v7 = MEMORY[0x1E695DFD8];
    v8 = [v3 valueForKey:@"bundleID"];

    v9 = [v7 setWithArray:v8];
    [v6 minusSet:v9];

    v10 = [v6 allObjects];
    v2 = [(ASDAppQuery *)v2 _removeCachedResultsForBundleIDs:v10];
  }

  return v2;
}

- (void)_handleQueryOptionsWithResults:(uint64_t)a1
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (*(a1 + 88))
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v10 + 1) + 8 * v8++) loadUpdateMetadataIfNecessary];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_executeQueryWithPredicate:(void *)a3 onPairedDevice:(void *)a4 withCompletion:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    if (*(a1 + 17) == 1)
    {
      v11 = (*(a1 + 88) >> 1) & 1;
      v12 = *(a1 + 48);
      v13 = *(a1 + 72);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __72__ASDAppQuery__executeQueryWithPredicate_onPairedDevice_withCompletion___block_invoke;
      v19[3] = &unk_1E7CDB7A8;
      v14 = &v20;
      v20 = v9;
      [v12 executeUpdatesQueryWithPredicateReloadingFromServer:v11 onPairedDevice:v8 remoteDeviceID:v13 withResultHandler:v19];
    }

    else
    {
      v15 = *(a1 + 48);
      v16 = *(a1 + 72);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__ASDAppQuery__executeQueryWithPredicate_onPairedDevice_withCompletion___block_invoke_2;
      v17[3] = &unk_1E7CDB7A8;
      v14 = &v18;
      v18 = v9;
      [v15 executeQueryWithPredicate:v7 onPairedDevice:v8 remoteDeviceID:v16 withResultHandler:v17];
    }
  }
}

- (void)notificationCenter:(id)a3 receivedNotifications:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ASDAppQuery_notificationCenter_receivedNotifications___block_invoke;
  v8[3] = &unk_1E7CDB868;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

void __56__ASDAppQuery_notificationCenter_receivedNotifications___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__ASDAppQuery_notificationCenter_receivedNotifications___block_invoke_41;
    v8[3] = &unk_1E7CDB908;
    v8[4] = v2;
    [v3 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v10 = objc_opt_class();
      v6 = v10;
      _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring notifications until query has been run at least once", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __56__ASDAppQuery_notificationCenter_receivedNotifications___block_invoke_41(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v3 name];
  v6 = [v5 isEqualToString:@"LS"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"RD"];
    if (!v7)
    {
LABEL_8:
      v11 = [v4 objectForKeyedSubscript:{@"AC", *v42, *&v42[16], v43}];
      if ([v11 isEqualToString:@"RD"])
      {
        v15 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 32);
          v17 = objc_opt_class();
          *v42 = 138543362;
          *&v42[4] = v17;
          v18 = v17;
          _os_log_impl(&dword_1B8220000, v15, OS_LOG_TYPE_INFO, "[%{public}@]: Handling apps registered notification", v42, 0xCu);
        }

        v19 = *(a1 + 32);
        if (!v19)
        {
          goto LABEL_35;
        }

        v20 = [v4 objectForKeyedSubscript:@"AP"];
        if ([v20 count])
        {
          [(ASDAppQuery *)v19 _handleAppsUpdatedWithResults:v20];
        }
      }

      else if ([v11 isEqualToString:@"UR"])
      {
        v22 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = *(a1 + 32);
          v24 = objc_opt_class();
          *v42 = 138543362;
          *&v42[4] = v24;
          v25 = v24;
          _os_log_impl(&dword_1B8220000, v22, OS_LOG_TYPE_INFO, "[%{public}@]: Handling apps unregistered notification", v42, 0xCu);
        }

        v26 = *(a1 + 32);
        if (!v26)
        {
          goto LABEL_35;
        }

        v20 = [v4 objectForKeyedSubscript:@"BI"];
        if ([v20 count])
        {
          [(ASDAppQuery *)v26 _handleAppsRemovedWithBundleIDs:v20];
        }
      }

      else
      {
        if ([v11 isEqualToString:@"RL"])
        {
          v29 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = *(a1 + 32);
            v31 = objc_opt_class();
            *v42 = 138543362;
            *&v42[4] = v31;
            v32 = v31;
            _os_log_impl(&dword_1B8220000, v29, OS_LOG_TYPE_INFO, "[%{public}@]: Handling apps refreshed notification", v42, 0xCu);
          }

          [(ASDAppQuery *)*(a1 + 32) _handleNotificationRefreshWithUserInfo:v4];
          goto LABEL_35;
        }

        v33 = [v11 isEqualToString:@"ER"];
        v34 = ASDLogHandleForCategory(13);
        v20 = v34;
        if (v33)
        {
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = *(a1 + 32);
            v36 = objc_opt_class();
            *v42 = 138543618;
            *&v42[4] = v36;
            *&v42[12] = 2114;
            *&v42[14] = v3;
            v37 = v36;
            _os_log_impl(&dword_1B8220000, v20, OS_LOG_TYPE_INFO, "[%{public}@]: Handling app error notification action: %{public}@", v42, 0x16u);
          }

          [(ASDAppQuery *)*(a1 + 32) _handleNotificationErrorWithUserInfo:v4];
          goto LABEL_35;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v39 = *(a1 + 32);
          v40 = objc_opt_class();
          *v42 = 138543618;
          *&v42[4] = v40;
          *&v42[12] = 2114;
          *&v42[14] = v3;
          v41 = v40;
          _os_log_error_impl(&dword_1B8220000, v20, OS_LOG_TYPE_ERROR, "[%{public}@]: Received unhandled action: %{public}@", v42, 0x16u);
        }
      }

LABEL_35:
      goto LABEL_36;
    }

    v8 = *(*(a1 + 32) + 80);
    if (v8)
    {
      v9 = [v8 pairingID];
      v10 = [v9 isEqual:v7];

      v11 = ASDLogHandleForCategory(13);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if ((v10 & 1) == 0)
      {
        if (v12)
        {
          v27 = *(a1 + 32);
          *v42 = 138543618;
          *&v42[4] = objc_opt_class();
          *&v42[12] = 2114;
          *&v42[14] = v7;
          v28 = *&v42[4];
          _os_log_impl(&dword_1B8220000, v11, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring notification for unmatched device: %{public}@", v42, 0x16u);
        }

        goto LABEL_35;
      }

      if (v12)
      {
        v13 = *(a1 + 32);
        *v42 = 138543618;
        *&v42[4] = objc_opt_class();
        *&v42[12] = 2114;
        *&v42[14] = v7;
        v14 = *&v42[4];
        _os_log_impl(&dword_1B8220000, v11, OS_LOG_TYPE_INFO, "[%{public}@]: Handling device specific notification: %{public}@", v42, 0x16u);
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      *v42 = 138543618;
      *&v42[4] = objc_opt_class();
      *&v42[12] = 2114;
      *&v42[14] = v3;
      v11 = *&v42[4];
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Received unexpected notification: %{public}@", v42, 0x16u);
      goto LABEL_35;
    }
  }

LABEL_36:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)_handleNotificationRefreshWithUserInfo:(uint64_t)a1
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [a2 objectForKeyedSubscript:@"BI"];
    if ([v3 count])
    {
      v4 = MEMORY[0x1E696AB28];
      v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleID IN %@", v3];
      v6 = *(a1 + 96);
      v14[0] = v5;
      v14[1] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
      v8 = [v4 andPredicateWithSubpredicates:v7];
    }

    else
    {
      v8 = *(a1 + 96);
    }

    v9 = *(a1 + 80);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__ASDAppQuery__handleNotificationRefreshWithUserInfo___block_invoke;
    v12[3] = &unk_1E7CDBA48;
    v12[4] = a1;
    v13 = v3;
    v10 = v3;
    [(ASDAppQuery *)a1 _executeQueryWithPredicate:v8 onPairedDevice:v9 withCompletion:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleNotificationErrorWithUserInfo:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 objectForKeyedSubscript:@"AP"];
    if ([v3 count])
    {
      [(ASDAppQuery *)a1 _handleAppsUpdatedWithResults:v3];
    }
  }
}

- (void)notificationCenter:(id)a3 receivedProgress:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__ASDAppQuery_notificationCenter_receivedProgress___block_invoke;
  v8[3] = &unk_1E7CDB868;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

void __51__ASDAppQuery_notificationCenter_receivedProgress___block_invoke(uint64_t a1)
{
  v106 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    obj = *(a1 + 40);
    v3 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    if (!v3)
    {
      goto LABEL_47;
    }

    v5 = v3;
    v6 = *v95;
    v91 = *MEMORY[0x1E696A898];
    *&v4 = 138543874;
    v87 = v4;
    v7 = 0x1E696A000uLL;
    v92 = v2;
    while (1)
    {
      v8 = 0;
      v89 = v5;
      do
      {
        if (*v95 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v94 + 1) + 8 * v8);
        v10 = *(*(a1 + 32) + 56);
        v11 = [v9 bundleID];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (!v12)
        {
          if (![v9 reportRemotely])
          {
            goto LABEL_15;
          }

          v18 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = *(a1 + 32);
            v20 = objc_opt_class();
            v21 = v20;
            v22 = [v9 bundleID];
            *buf = 138543618;
            v99 = v20;
            v100 = 2114;
            v101 = v22;
            _os_log_impl(&dword_1B8220000, v18, OS_LOG_TYPE_INFO, "[%{public}@]: Found untracked progress for remote install: %{public}@", buf, 0x16u);
          }

          v23 = [ASDApp alloc];
          v24 = [v9 bundleID];
          v25 = [(ASDApp *)v23 initWithBundleID:v24];

          [(ASDApp *)v25 setStatus:1];
          [(ASDApp *)v25 setRemoteProgress:v9];
          v26 = *(a1 + 32);
          v104 = v25;
          v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
          [(ASDAppQuery *)v26 _updateCachedResultsWithResults:v27];

          v28 = *(*(a1 + 32) + 56);
          v29 = [v9 bundleID];
          v12 = [v28 objectForKeyedSubscript:v29];

          v7 = 0x1E696A000;
          if (!v12)
          {
LABEL_15:
            v12 = ASDLogHandleForCategory(13);
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              goto LABEL_45;
            }

            v30 = *(a1 + 32);
            v31 = objc_opt_class();
            v13 = v31;
            v32 = [v9 bundleID];
            *buf = 138543618;
            v99 = v31;
            v100 = 2114;
            v101 = v32;
            _os_log_impl(&dword_1B8220000, v12, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring untracked progress for: %{public}@", buf, 0x16u);

            goto LABEL_17;
          }
        }

        if ([v12 isInstalled])
        {
          v13 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = *(a1 + 32);
            v15 = objc_opt_class();
            v16 = v15;
            v17 = [v9 bundleID];
            *buf = 138543618;
            v99 = v15;
            v100 = 2114;
            v101 = v17;
            _os_log_impl(&dword_1B8220000, v13, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring progress for installed: %{public}@", buf, 0x16u);

            v7 = 0x1E696A000;
          }

LABEL_17:

          goto LABEL_45;
        }

        v33 = [v12 progress];
        if (!v33)
        {
          v50 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            v51 = *(a1 + 32);
            v52 = objc_opt_class();
            *buf = 138543618;
            v99 = v52;
            v100 = 2114;
            v101 = v12;
            v53 = v52;
            _os_log_impl(&dword_1B8220000, v50, OS_LOG_TYPE_INFO, "[%{public}@]: Progress started for: %{public}@", buf, 0x16u);
          }

          v34 = [ASDAppQuery _newProgressForApp:v12 fromRemoteProgress:v9 usingServiceBroker:?];
          [v12 setProgress:v34];
          v54 = [(ASDAppQuery *)*(a1 + 32) _downloadProgressForApp:v12 fromRemoteProgress:v9];
          [v12 setDownloadProgress:v54];

          v55 = [ASDAppQuery _installProgressForApp:v9 fromRemoteProgress:?];
          [v12 setInstallProgress:v55];

          -[NSObject setProgressPhase:](v12, "setProgressPhase:", [v9 phase]);
          v56 = [(ASDAppQuery *)*(a1 + 32) _postProcessProgressForApp:v12 fromRemoteProgress:v9];
          [v12 setPostProcessProgress:v56];
LABEL_39:

          goto LABEL_40;
        }

        v34 = v33;
        [v33 setCompletedUnitCount:{objc_msgSend(v9, "completedUnitCount")}];
        v35 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          v80 = *(a1 + 32);
          v81 = objc_opt_class();
          v82 = v81;
          [v34 fractionCompleted];
          *buf = v87;
          v99 = v81;
          v7 = 0x1E696A000;
          v100 = 2048;
          v101 = v83;
          v102 = 2114;
          v103 = v12;
          _os_log_debug_impl(&dword_1B8220000, v35, OS_LOG_TYPE_DEBUG, "[%{public}@]: Setting %.2f for: %{public}@", buf, 0x20u);
        }

        v36 = [v12 downloadProgress];

        if (!v36)
        {
          v37 = [(ASDAppQuery *)*(a1 + 32) _downloadProgressForApp:v12 fromRemoteProgress:v9];
          [v12 setDownloadProgress:v37];
        }

        v38 = [v9 downloadCompletedUnitCount];
        v39 = [v12 downloadProgress];
        [v39 setCompletedUnitCount:v38];

        v40 = [v9 downloadTotalUnitCount];
        v41 = [v12 downloadProgress];
        [v41 setTotalUnitCount:v40];

        if ([v9 phase] == 2)
        {
          v42 = *(v7 + 3480);
          [v9 throughput];
          v43 = [v42 numberWithDouble:?];
          v44 = [v12 downloadProgress];
          [v44 setThroughput:v43];

          v45 = [v12 downloadProgress];
          v46 = *(v7 + 3480);
          [v9 throughput];
          v47 = [v46 numberWithDouble:?];
          [v45 setUserInfoObject:v47 forKey:v91];

          v48 = [v9 secondsRemaining];
          if (v48 < 0)
          {
            v49 = 0;
          }

          else
          {
            v49 = [*(v7 + 3480) numberWithInteger:{objc_msgSend(v9, "secondsRemaining")}];
            v88 = v49;
          }

          v57 = [v12 downloadProgress];
          [v57 setEstimatedTimeRemaining:v49];

          if ((v48 & 0x8000000000000000) == 0)
          {
          }

          v7 = 0x1E696A000uLL;
        }

        v58 = [v9 installCompletedUnitCount];
        v59 = [v12 installProgress];
        [v59 setCompletedUnitCount:v58];

        v60 = [v9 installTotalUnitCount];
        v61 = [v12 installProgress];
        [v61 setTotalUnitCount:v60];

        -[NSObject setProgressPhase:](v12, "setProgressPhase:", [v9 phase]);
        v62 = [v9 postProcessCompletedUnitCount];
        v63 = [v12 postProcessProgress];
        [v63 setCompletedUnitCount:v62];

        v64 = [v9 postProcessTotalUnitCount];
        v65 = [v12 postProcessProgress];
        [v65 setTotalUnitCount:v64];

        if ([v9 phase] == 5)
        {
          v66 = v6;
          v67 = *(v7 + 3480);
          [v9 throughput];
          v68 = [v67 numberWithDouble:?];
          v69 = [v12 postProcessProgress];
          [v69 setThroughput:v68];

          v70 = [v12 postProcessProgress];
          v71 = *(v7 + 3480);
          [v9 throughput];
          v72 = [v71 numberWithDouble:?];
          [v70 setUserInfoObject:v72 forKey:v91];

          v73 = [v9 secondsRemaining];
          if (v73 < 0)
          {
            v74 = 0;
            v56 = v90;
          }

          else
          {
            v56 = [*(v7 + 3480) numberWithInteger:{objc_msgSend(v9, "secondsRemaining")}];
            v74 = v56;
          }

          v75 = [v12 postProcessProgress];
          [v75 setEstimatedTimeRemaining:v74];

          v90 = v56;
          v2 = v92;
          v6 = v66;
          v5 = v89;
          if (v73 < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        v2 = v92;
LABEL_40:
        -[NSObject setHasPostProcessing:](v12, "setHasPostProcessing:", [v9 hasPostProcessing]);
        -[NSObject setEssentialBackgroundAssetDownloadEstimate:](v12, "setEssentialBackgroundAssetDownloadEstimate:", [v9 essentialBackgroundAssetDownloadEstimate]);
        if ([v34 isFinished])
        {
          v76 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
          {
            v77 = *(a1 + 32);
            v78 = objc_opt_class();
            *buf = 138543618;
            v99 = v78;
            v100 = 2114;
            v101 = v12;
            v79 = v78;
            _os_log_impl(&dword_1B8220000, v76, OS_LOG_TYPE_INFO, "[%{public}@]: Progress complete for: %{public}@", buf, 0x16u);

            v2 = v92;
          }
        }

        [v2 addObject:v12];

        v7 = 0x1E696A000;
LABEL_45:

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
      if (!v5)
      {
LABEL_47:

        [(ASDAppQuery *)*(a1 + 32) _sendResultsChangedWithResults:v2];
        goto LABEL_50;
      }
    }
  }

  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v84 = *(a1 + 32);
    *buf = 138543362;
    v99 = objc_opt_class();
    v85 = v99;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring progress until query has been run at least once", buf, 0xCu);
  }

LABEL_50:

  v86 = *MEMORY[0x1E69E9840];
}

- (void)_updateCachedResultsWithResults:(uint64_t)a1
{
  v66 = *MEMORY[0x1E69E9840];
  obj = a2;
  if (a1)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v3 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v58;
      v54 = *MEMORY[0x1E696A898];
      *&v4 = 138543618;
      v50 = v4;
      v55 = *v58;
      do
      {
        v7 = 0;
        v52 = v5;
        do
        {
          if (*v58 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v57 + 1) + 8 * v7);
          v9 = [v8 bundleID];
          if (v9)
          {
            v10 = [*(a1 + 56) objectForKeyedSubscript:v9];
            v11 = [v10 progress];

            v12 = [v8 remoteProgress];
            v13 = v12;
            if (v12)
            {
              if (!v11)
              {
                v11 = [ASDAppQuery _newProgressForApp:a1 fromRemoteProgress:v8 usingServiceBroker:v12];
                v28 = [(ASDAppQuery *)a1 _downloadProgressForApp:v8 fromRemoteProgress:v13];
                [v8 setDownloadProgress:v28];

                v29 = [ASDAppQuery _installProgressForApp:a1 fromRemoteProgress:v13];
                [v8 setInstallProgress:v29];

                [v8 setProgressPhase:{-[NSObject phase](v13, "phase")}];
                v30 = [(ASDAppQuery *)a1 _postProcessProgressForApp:v8 fromRemoteProgress:v13];
                [v8 setPostProcessProgress:v30];
                goto LABEL_26;
              }

              [v11 setCompletedUnitCount:{-[NSObject completedUnitCount](v12, "completedUnitCount")}];
              v14 = [v13 downloadCompletedUnitCount];
              v15 = [v8 downloadProgress];
              [v15 setCompletedUnitCount:v14];

              v16 = [v13 downloadTotalUnitCount];
              v17 = [v8 downloadProgress];
              [v17 setTotalUnitCount:v16];

              if ([v13 phase]== 2)
              {
                v18 = MEMORY[0x1E696AD98];
                [v13 throughput];
                v19 = [v18 numberWithDouble:?];
                v20 = [v8 downloadProgress];
                [v20 setThroughput:v19];

                v21 = [v8 downloadProgress];
                v22 = MEMORY[0x1E696AD98];
                [v13 throughput];
                v23 = [v22 numberWithDouble:?];
                [v21 setUserInfoObject:v23 forKey:v54];

                v24 = [v13 secondsRemaining];
                if (v24 < 0)
                {
                  v25 = 0;
                }

                else
                {
                  v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject secondsRemaining](v13, "secondsRemaining")}];
                  v51 = v25;
                }

                v31 = [v8 downloadProgress];
                [v31 setEstimatedTimeRemaining:v25];

                if ((v24 & 0x8000000000000000) == 0)
                {
                }
              }

              v32 = [v13 installCompletedUnitCount];
              v33 = [v8 installProgress];
              [v33 setCompletedUnitCount:v32];

              v34 = [v13 installTotalUnitCount];
              v35 = [v8 installProgress];
              [v35 setTotalUnitCount:v34];

              [v8 setProgressPhase:{-[NSObject phase](v13, "phase")}];
              v36 = [v13 postProcessCompletedUnitCount];
              v37 = [v8 postProcessProgress];
              [v37 setCompletedUnitCount:v36];

              v38 = [v13 postProcessTotalUnitCount];
              v39 = [v8 postProcessProgress];
              [v39 setTotalUnitCount:v38];

              if ([v13 phase]== 5)
              {
                v40 = MEMORY[0x1E696AD98];
                [v13 throughput];
                v41 = [v40 numberWithDouble:?];
                v42 = [v8 postProcessProgress];
                [v42 setThroughput:v41];

                v43 = [v8 postProcessProgress];
                v44 = MEMORY[0x1E696AD98];
                [v13 throughput];
                v45 = [v44 numberWithDouble:?];
                [v43 setUserInfoObject:v45 forKey:v54];

                v46 = [v13 secondsRemaining];
                if (v46 < 0)
                {
                  v47 = 0;
                  v30 = v53;
                }

                else
                {
                  v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject secondsRemaining](v13, "secondsRemaining")}];
                  v47 = v30;
                }

                v48 = [v8 postProcessProgress];
                [v48 setEstimatedTimeRemaining:v47];

                v53 = v30;
                v5 = v52;
                if ((v46 & 0x8000000000000000) == 0)
                {
LABEL_26:
                }
              }

              [v8 setHasPostProcessing:{-[NSObject hasPostProcessing](v13, "hasPostProcessing")}];
              [v8 setEssentialBackgroundAssetDownloadEstimate:{-[NSObject essentialBackgroundAssetDownloadEstimate](v13, "essentialBackgroundAssetDownloadEstimate")}];
              [v8 setProgress:v11];
              v6 = v55;
LABEL_28:
            }

            else if (v11)
            {
              [v11 setCompletedUnitCount:{objc_msgSend(v11, "totalUnitCount")}];
              goto LABEL_28;
            }

            [*(a1 + 56) setObject:v8 forKeyedSubscript:v9];
            goto LABEL_30;
          }

          v13 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            v26 = objc_opt_class();
            *buf = v50;
            v62 = v26;
            v63 = 2114;
            v64 = v8;
            v27 = v26;
            _os_log_fault_impl(&dword_1B8220000, v13, OS_LOG_TYPE_FAULT, "[%{public}@]: Encountered result with no bundleID: %{public}@", buf, 0x16u);
          }

LABEL_30:

          ++v7;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v5);
    }
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (void)_newProgressForApp:(uint64_t)a1 fromRemoteProgress:(void *)a2 usingServiceBroker:(void *)a3
{
  v5 = a3;
  if (a1)
  {
    v6 = [a2 copy];
    v7 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v5, "totalUnitCount")}];
    [v7 setPausable:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__ASDAppQuery__newProgressForApp_fromRemoteProgress_usingServiceBroker___block_invoke;
    v18[3] = &unk_1E7CDB868;
    v18[4] = a1;
    v8 = v6;
    v19 = v8;
    [v7 setPausingHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__ASDAppQuery__newProgressForApp_fromRemoteProgress_usingServiceBroker___block_invoke_2;
    v16[3] = &unk_1E7CDB868;
    v16[4] = a1;
    v9 = v8;
    v17 = v9;
    [v7 setResumingHandler:v16];
    [v7 setCancellable:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__ASDAppQuery__newProgressForApp_fromRemoteProgress_usingServiceBroker___block_invoke_3;
    v13[3] = &unk_1E7CDBA20;
    v13[4] = a1;
    v14 = v9;
    v10 = v5;
    v15 = v10;
    v11 = v9;
    [v7 setCancellationHandler:v13];
    [v7 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_downloadProgressForApp:(void *)a3 fromRemoteProgress:
{
  v5 = a3;
  if (a1)
  {
    v6 = [a2 copy];
    v7 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v5, "downloadTotalUnitCount")}];
    [v7 setKind:*MEMORY[0x1E696A888]];
    [v7 setCompletedUnitCount:{objc_msgSend(v5, "downloadCompletedUnitCount")}];
    if ([v5 phase] == 2)
    {
      v8 = MEMORY[0x1E696AD98];
      [v5 throughput];
      v9 = [v8 numberWithDouble:?];
      [v7 setThroughput:v9];

      v10 = MEMORY[0x1E696AD98];
      [v5 throughput];
      v11 = [v10 numberWithDouble:?];
      [v7 setUserInfoObject:v11 forKey:*MEMORY[0x1E696A898]];

      if (([v5 secondsRemaining] & 0x8000000000000000) == 0)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "secondsRemaining")}];
        [v7 setEstimatedTimeRemaining:v12];
      }
    }

    [v7 setPausable:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58__ASDAppQuery__downloadProgressForApp_fromRemoteProgress___block_invoke;
    v22[3] = &unk_1E7CDB868;
    v22[4] = a1;
    v13 = v6;
    v23 = v13;
    [v7 setPausingHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__ASDAppQuery__downloadProgressForApp_fromRemoteProgress___block_invoke_2;
    v20[3] = &unk_1E7CDB868;
    v20[4] = a1;
    v14 = v13;
    v21 = v14;
    [v7 setResumingHandler:v20];
    [v7 setCancellable:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__ASDAppQuery__downloadProgressForApp_fromRemoteProgress___block_invoke_3;
    v17[3] = &unk_1E7CDBA20;
    v17[4] = a1;
    v18 = v14;
    v19 = v5;
    v15 = v14;
    [v7 setCancellationHandler:v17];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_installProgressForApp:(uint64_t)a1 fromRemoteProgress:(void *)a2
{
  if (a1)
  {
    v2 = MEMORY[0x1E696AE38];
    v3 = a2;
    v4 = [v2 discreteProgressWithTotalUnitCount:{objc_msgSend(v3, "installTotalUnitCount")}];
    v5 = [v3 installCompletedUnitCount];

    [v4 setCompletedUnitCount:v5];
    [v4 setPausable:0];
    [v4 setCancellable:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_postProcessProgressForApp:(void *)a3 fromRemoteProgress:
{
  v5 = a3;
  if (a1)
  {
    v6 = [a2 copy];
    v7 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v5, "postProcessTotalUnitCount")}];
    [v7 setKind:*MEMORY[0x1E696A888]];
    [v7 setCompletedUnitCount:{objc_msgSend(v5, "postProcessCompletedUnitCount")}];
    if ([v5 phase] == 5)
    {
      v8 = MEMORY[0x1E696AD98];
      [v5 throughput];
      v9 = [v8 numberWithDouble:?];
      [v7 setThroughput:v9];

      v10 = MEMORY[0x1E696AD98];
      [v5 throughput];
      v11 = [v10 numberWithDouble:?];
      [v7 setUserInfoObject:v11 forKey:*MEMORY[0x1E696A898]];

      if (([v5 secondsRemaining] & 0x8000000000000000) == 0)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "secondsRemaining")}];
        [v7 setEstimatedTimeRemaining:v12];
      }
    }

    [v7 setPausable:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__ASDAppQuery__postProcessProgressForApp_fromRemoteProgress___block_invoke;
    v22[3] = &unk_1E7CDB868;
    v22[4] = a1;
    v13 = v6;
    v23 = v13;
    [v7 setPausingHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__ASDAppQuery__postProcessProgressForApp_fromRemoteProgress___block_invoke_2;
    v20[3] = &unk_1E7CDB868;
    v20[4] = a1;
    v14 = v13;
    v21 = v14;
    [v7 setResumingHandler:v20];
    [v7 setCancellable:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__ASDAppQuery__postProcessProgressForApp_fromRemoteProgress___block_invoke_3;
    v17[3] = &unk_1E7CDBA20;
    v17[4] = a1;
    v18 = v14;
    v19 = v5;
    v15 = v14;
    [v7 setCancellationHandler:v17];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_sendResultsChangedWithResults:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 count])
  {
    [(ASDAppQuery *)a1 _handleQueryOptionsWithResults:v4];
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__ASDAppQuery__sendResultsChangedWithResults___block_invoke;
    v6[3] = &unk_1E7CDB868;
    v6[4] = a1;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __31__ASDAppQuery__defaultExecutor__block_invoke()
{
  v0 = [ASDAppQueryExecutor alloc];
  v1 = +[ASDServiceBroker defaultBroker];
  v2 = [(ASDAppQueryExecutor *)v0 initWithServiceBroker:v1];

  v3 = qword_1ED90D438;
  qword_1ED90D438 = v2;
}

- (void)_handleBrokerConnectionNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASDAppQuery__handleBrokerConnectionNotification___block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __51__ASDAppQuery__handleBrokerConnectionNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16) == 1)
  {
    v2 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = objc_opt_class();
      v4 = v7;
      _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Forcing query refresh following broker connection", &v6, 0xCu);
    }

    [(ASDAppQuery *)*(a1 + 32) _handleNotificationRefreshWithUserInfo:?];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __34__ASDAppQuery__debugReceivedApps___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 134218754;
    v11 = v8;
    v12 = 2048;
    v13 = a3 + 1;
    v14 = 2048;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    _os_log_debug_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEBUG, "%p app %lu of %lu: %@", &v10, 0x2Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handlePauseForApp:(uint64_t)a1
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Requesting pause: %{public}@", buf, 0xCu);
    }

    v5 = *(a1 + 64);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__ASDAppQuery__handlePauseForApp___block_invoke;
    v7[3] = &unk_1E7CDB9A8;
    v8 = v3;
    [v5 getLibraryServiceWithCompletionHandler:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __34__ASDAppQuery__handlePauseForApp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __34__ASDAppQuery__handlePauseForApp___block_invoke_2;
    v13[3] = &unk_1E7CDB980;
    v14 = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v13];
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__ASDAppQuery__handlePauseForApp___block_invoke_50;
    v11[3] = &unk_1E7CDB980;
    v12 = v7;
    [v6 pauseApp:v12 withReplyHandler:v11];

    v8 = v14;
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to pause: %{public}@ error: %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __34__ASDAppQuery__handlePauseForApp___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to pause: %{public}@ error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __34__ASDAppQuery__handlePauseForApp___block_invoke_50(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to pause: %{public}@ error: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Completed pause: %{public}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleResumeForApp:(uint64_t)a1
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Requesting resume: %{public}@", buf, 0xCu);
    }

    v5 = *(a1 + 64);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__ASDAppQuery__handleResumeForApp___block_invoke;
    v7[3] = &unk_1E7CDB9A8;
    v8 = v3;
    [v5 getLibraryServiceWithCompletionHandler:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __35__ASDAppQuery__handleResumeForApp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __35__ASDAppQuery__handleResumeForApp___block_invoke_2;
    v13[3] = &unk_1E7CDB980;
    v14 = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v13];
    v7 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35__ASDAppQuery__handleResumeForApp___block_invoke_52;
    v11[3] = &unk_1E7CDB980;
    v12 = v7;
    [v6 resumeApp:v12 withReplyHandler:v11];

    v8 = v14;
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to resume: %{public}@ error: %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __35__ASDAppQuery__handleResumeForApp___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to resume: %{public}@ error: %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __35__ASDAppQuery__handleResumeForApp___block_invoke_52(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to resume: %{public}@ error: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Completed resume: %{public}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleCancelForApp:(char)a3 reportRemotely:
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Requesting cancelation: %{public}@", buf, 0xCu);
    }

    v7 = *(a1 + 64);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke;
    v9[3] = &unk_1E7CDB9F8;
    v11 = a3;
    v9[4] = a1;
    v10 = v5;
    [v7 getLibraryServiceWithCompletionHandler:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }

    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v7 = qword_1ED90D440;
    v35 = qword_1ED90D440;
    if (!qword_1ED90D440)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNRPairedDeviceRegistryClass_block_invoke;
      v37 = &unk_1E7CDBA78;
      v38 = &v32;
      __getNRPairedDeviceRegistryClass_block_invoke(buf);
      v7 = v33[3];
    }

    v8 = v7;
    _Block_object_dispose(&v32, 8);
    v9 = [v7 sharedInstance];
    v10 = [v9 getActivePairedDevice];
    v11 = [v10 pairingID];

    if (v11)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_2;
      v30[3] = &unk_1E7CDB9D0;
      v13 = *(a1 + 32);
      v12 = a1 + 32;
      v30[4] = v13;
      v31 = *(v12 + 8);
      v14 = [v5 remoteObjectProxyWithErrorHandler:v30];
      v15 = *(v12 + 8);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_53;
      v28[3] = &unk_1E7CDB9D0;
      v28[4] = *v12;
      v29 = v15;
      [v14 cancelApp:v29 onPairedDevice:v11 withReplyHandler:v28];
    }

    else
    {
LABEL_7:
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_54;
      v26[3] = &unk_1E7CDB9D0;
      v17 = *(a1 + 32);
      v16 = a1 + 32;
      v26[4] = v17;
      v27 = *(v16 + 8);
      v18 = [v5 remoteObjectProxyWithErrorHandler:v26];
      v19 = *(v16 + 8);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_55;
      v24[3] = &unk_1E7CDB9D0;
      v24[4] = *v16;
      v25 = v19;
      [v18 cancelApp:v25 withReplyHandler:v24];
    }
  }

  else
  {
    v20 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      *buf = 138543874;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v23;
      *&buf[22] = 2114;
      v37 = v6;
      _os_log_error_impl(&dword_1B8220000, v20, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel: %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel remote: %{public}@ error: %{public}@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_53(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v3;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel remote: %{public}@ error: %{public}@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Completed remote cancelation: %{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_54(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138543874;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    v12 = 2114;
    v13 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel: %{public}@ error: %{public}@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_55(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v3;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel: %{public}@ error: %{public}@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Completed cancelation: %{public}@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __58__ASDAppQuery__downloadProgressForApp_fromRemoteProgress___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) reportRemotely];

  [(ASDAppQuery *)v1 _handleCancelForApp:v2 reportRemotely:v3];
}

void __61__ASDAppQuery__postProcessProgressForApp_fromRemoteProgress___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) reportRemotely];

  [(ASDAppQuery *)v1 _handleCancelForApp:v2 reportRemotely:v3];
}

void __72__ASDAppQuery__newProgressForApp_fromRemoteProgress_usingServiceBroker___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) reportRemotely];

  [(ASDAppQuery *)v1 _handleCancelForApp:v2 reportRemotely:v3];
}

- (id)_removeCachedResultsForBundleIDs:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [*(a1 + 56) objectForKeyedSubscript:{v10, v19}];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 progress];
          v14 = v13;
          if (v13)
          {
            [v13 setCompletedUnitCount:{objc_msgSend(v13, "totalUnitCount")}];
          }

          v15 = [[ASDApp alloc] initWithBundleID:v10];
          if ([v12 isStoreApp])
          {
            [(ASDApp *)v15 setStatus:256];
            -[ASDApp setStoreItemID:](v15, "setStoreItemID:", [v12 storeItemID]);
          }

          [v4 addObject:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  [*(a1 + 56) removeObjectsForKeys:v5];
  v16 = [v4 copy];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)_handleAppsRemovedWithBundleIDs:(uint64_t)a1
{
  if (a1)
  {
    v3 = [(ASDAppQuery *)a1 _removeCachedResultsForBundleIDs:a2];
    [(ASDAppQuery *)a1 _sendResultsChangedWithResults:v3];
  }
}

- (void)_handleAppsUpdatedWithResults:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v10 = v3;
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = [v10 filteredArrayUsingPredicate:*(a1 + 96)];
    if ([v5 count])
    {
      [(ASDAppQuery *)a1 _updateCachedResultsWithResults:v5];
      [v4 addObjectsFromArray:v5];
    }

    v6 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:*(a1 + 96)];
    v7 = [v10 filteredArrayUsingPredicate:v6];
    if ([v7 count])
    {
      v8 = [v7 valueForKey:@"bundleID"];
      v9 = [(ASDAppQuery *)a1 _removeCachedResultsForBundleIDs:v8];

      [v4 addObjectsFromArray:v9];
    }

    [(ASDAppQuery *)a1 _sendResultsChangedWithResults:v4];

    v3 = v10;
  }
}

void __54__ASDAppQuery__handleNotificationRefreshWithUserInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__ASDAppQuery__handleNotificationRefreshWithUserInfo___block_invoke_2;
    block[3] = &unk_1E7CDBA20;
    block[4] = v7;
    v14 = v5;
    v15 = *(a1 + 40);
    dispatch_async(v8, block);
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v6;
      v12 = v17;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Received refresh notification but refresh failed: %{public}@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __54__ASDAppQuery__handleNotificationRefreshWithUserInfo___block_invoke_2(uint64_t a1)
{
  [(ASDAppQuery *)*(a1 + 32) _debugReceivedApps:?];
  v2 = [*(a1 + 48) count];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    [(ASDAppQuery *)*(a1 + 32) _handleAppsUpdatedWithResults:v3];
    v13 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 48)];
    v5 = MEMORY[0x1E695DFD8];
    v6 = [*(a1 + 40) valueForKey:@"bundleID"];
    v7 = [v5 setWithArray:v6];
    [v13 minusSet:v7];

    if (![v13 count])
    {
      goto LABEL_10;
    }

    v8 = *(a1 + 32);
    v9 = [v13 allObjects];
    [(ASDAppQuery *)v8 _handleAppsRemovedWithBundleIDs:v9];
  }

  else
  {
    v10 = v3;
    v13 = v10;
    if (!v4)
    {
      goto LABEL_10;
    }

    v11 = [(ASDAppQuery *)v4 _replaceCachedResultsWithResults:v10];
    if (v11)
    {
      v12 = [v13 arrayByAddingObjectsFromArray:v11];
    }

    else
    {
      v12 = [v13 copy];
    }

    v9 = v12;
    [(ASDAppQuery *)v4 _sendResultsChangedWithResults:v12];
  }

LABEL_10:
}

void __46__ASDAppQuery__sendResultsChangedWithResults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v4 appQuery:*(a1 + 32) resultsDidChange:*(a1 + 40)];
  }
}

@end