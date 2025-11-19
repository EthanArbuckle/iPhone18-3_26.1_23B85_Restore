@interface ASDSoftwareUpdatesStore
+ (id)registerBadgeCountNotificationBlock:(id)a3;
- (ASDSoftwareUpdatesStore)init;
- (BOOL)confirmAgentRequestedUpdateAll;
- (void)_call:(id)a3 run:(id)a4 error:(id)a5;
- (void)clearExpiredUpdateHistoryWithCompletionBlock:(id)a3;
- (void)dealloc;
- (void)getManagedUpdatesWithCompletionBlock:(id)a3;
- (void)getMetricsWithCompletionBlock:(id)a3;
- (void)getUpdatesIncludingMetricsWithCompletionBlock:(id)a3;
- (void)getUpdatesWithCompletionBlock:(id)a3;
- (void)hideApplicationBadgeForPendingUpdates;
- (void)refreshUpdateCountWithCompletionBlock:(id)a3;
- (void)refreshUpdatesWithCompletionBlock:(id)a3 completionBlock:(id)a4;
- (void)reloadForSettingsFromServerWithCompletionBlock:(id)a3;
- (void)reloadFromServerInBackgroundWithCompletionBlock:(id)a3;
- (void)reloadFromServerWithCompletionBlock:(id)a3;
- (void)reloadManagedUpdatesWithCompletionBlock:(id)a3;
- (void)removeUpdateBulletins;
- (void)shouldUseModernUpdatesWithCompletionBlock:(id)a3;
- (void)showApplicationBadgeForPendingUpdates;
- (void)showApplicationUpdateBulletin;
- (void)updateAllWithCompletionBlock:(id)a3;
- (void)updateAllWithJobResultsCompletionBlock:(id)a3;
- (void)updateAllWithOrder:(id)a3 completionBlock:(id)a4;
@end

@implementation ASDSoftwareUpdatesStore

- (ASDSoftwareUpdatesStore)init
{
  v45.receiver = self;
  v45.super_class = ASDSoftwareUpdatesStore;
  v2 = [(ASDSoftwareUpdatesStore *)&v45 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDSoftwareUpdatesStore.access", v3);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appstoredaemonframework.ASDSoftwareUpdatesStore.callout", v6);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v7;

    if ([(ASDBaseClient *)v2 _clientHasEntitlement:?])
    {
      v2->_hasUpdatesEntitlement = 1;
    }

    else
    {
      v9 = [(ASDBaseClient *)v2 _clientHasEntitlement:?];
      v2->_hasUpdatesEntitlement = v9;
      if (!v9)
      {
        return v2;
      }
    }

    objc_initWeak(&location, v2);
    v2->_storeChangedNotificationToken = -1;
    v10 = dispatch_get_global_queue(21, 0);
    handler = MEMORY[0x1E69E9820];
    v40 = 3221225472;
    v41 = __31__ASDSoftwareUpdatesStore_init__block_invoke;
    v42 = &unk_1E7CDC170;
    objc_copyWeak(&v43, &location);
    notify_register_dispatch("com.apple.appstored.updatesstorechanged", &v2->_storeChangedNotificationToken, v10, &handler);

    if ([(ASDBaseClient *)v2 _clientHasEntitlement:?]|| [(ASDBaseClient *)v2 _clientHasEntitlement:?])
    {
      v11 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.appstored.xpc.updates" options:0];
      connection = v2->_connection;
      v2->_connection = v11;

      v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A658];
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0, handler, v40, v41, v42}];
      [v13 setClasses:v16 forSelector:sel_getUpdatesWithCompletionBlock_ argumentIndex:0 ofReply:1];

      v17 = MEMORY[0x1E695DFD8];
      v18 = objc_opt_class();
      v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
      [v13 setClasses:v19 forSelector:sel_getUpdatesIncludingMetricsWithCompletionBlock_ argumentIndex:0 ofReply:1];

      v20 = MEMORY[0x1E695DFD8];
      v21 = objc_opt_class();
      v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
      [v13 setClasses:v22 forSelector:sel_getManagedUpdatesWithCompletionBlock_ argumentIndex:0 ofReply:1];

      v23 = MEMORY[0x1E695DFD8];
      v24 = objc_opt_class();
      v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
      [v13 setClasses:v25 forSelector:sel_reloadFromServerWithCompletionBlock_ argumentIndex:0 ofReply:1];

      v26 = MEMORY[0x1E695DFD8];
      v27 = objc_opt_class();
      v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
      [v13 setClasses:v28 forSelector:sel_reloadManagedUpdatesWithCompletionBlock_ argumentIndex:0 ofReply:1];

      v29 = MEMORY[0x1E695DFD8];
      v30 = objc_opt_class();
      v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
      [v13 setClasses:v31 forSelector:sel_reloadFromServerInBackgroundWithCompletionBlock_ argumentIndex:0 ofReply:1];

      v32 = MEMORY[0x1E695DFD8];
      v33 = objc_opt_class();
      v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
      [v13 setClasses:v34 forSelector:sel_updateAllWithJobResults_ argumentIndex:1 ofReply:1];

      v35 = MEMORY[0x1E695DFD8];
      v36 = objc_opt_class();
      v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
      [v13 setClasses:v37 forSelector:sel_updateAllWithOrder_completionBlock_ argumentIndex:1 ofReply:1];

      [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v13];
      [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_140];
      [(NSXPCConnection *)v2->_connection setInterruptionHandler:&__block_literal_global_143];
      [(NSXPCConnection *)v2->_connection _setQueue:v2->_accessQueue];
      [(NSXPCConnection *)v2->_connection resume];
    }

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __31__ASDSoftwareUpdatesStore_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x1E696AD88] defaultCenter];
  [v1 postNotificationName:@"ASDSoftwareUpdatesStoreDidChangeNotification" object:WeakRetained];
}

- (void)dealloc
{
  storeChangedNotificationToken = self->_storeChangedNotificationToken;
  if (storeChangedNotificationToken != -1)
  {
    notify_cancel(storeChangedNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = ASDSoftwareUpdatesStore;
  [(ASDSoftwareUpdatesStore *)&v4 dealloc];
}

+ (id)registerBadgeCountNotificationBlock:(id)a3
{
  v3 = a3;
  v4 = NSUnimplemented_();
  return [(ASDSoftwareUpdatesStore *)v4 autoUpdateEnabled];
}

- (BOOL)confirmAgentRequestedUpdateAll
{
  v2 = NSUnimplemented_();
  [(ASDSoftwareUpdatesStore *)v2 clearExpiredUpdateHistoryWithCompletionBlock:v3, v4];
  return result;
}

- (void)clearExpiredUpdateHistoryWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: clearExpiredUpdateHistoryWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDD2E0;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke_3;
  v5[3] = &unk_1E7CDBDD0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 clearExpiredUpdateHistoryWithCompletionBlock:v5];
}

void __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke_4;
    block[3] = &unk_1E7CDBB30;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72__ASDSoftwareUpdatesStore_clearExpiredUpdateHistoryWithCompletionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)getManagedUpdatesWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getManagedUpdatesWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_1E7CDD2E0;
  v7[4] = v2;
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke_5;
  v5[3] = &unk_1E7CDBAB8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _call:v3 run:v7 error:v5];
}

void __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7CDB8E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 getManagedUpdatesWithCompletionBlock:v4];
}

void __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke_4;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ASDSoftwareUpdatesStore_getManagedUpdatesWithCompletionBlock___block_invoke_6;
  block[3] = &unk_1E7CDCD70;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)getMetricsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getMetricsWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_1E7CDD2E0;
  v7[4] = v2;
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke_5;
  v5[3] = &unk_1E7CDBAB8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _call:v3 run:v7 error:v5];
}

void __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7CDCF70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 getUpdatesMetricsWithCompletionBlock:v4];
}

void __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke_4;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__ASDSoftwareUpdatesStore_getMetricsWithCompletionBlock___block_invoke_6;
  block[3] = &unk_1E7CDCD70;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)getUpdatesWithCompletionBlock:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke;
  v7[3] = &unk_1E7CDBE48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = ASDLogHandleForCategory(13);
  v4 = os_log_type_enabled(&v3->super, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8220000, &v3->super, OS_LOG_TYPE_DEBUG, "(SoftwareUpdateStore) Joining request: getUpdatesWithCompletionBlock", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1B8220000, &v3->super, OS_LOG_TYPE_DEBUG, "(SoftwareUpdateStore) Starting request: getUpdatesWithCompletionBlock", buf, 2u);
    }

    v5 = +[ASDSyncTaskScheduler sharedInstance];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_28;
    v18[3] = &unk_1E7CDD358;
    v18[4] = *(a1 + 32);
    v6 = [ASDPromise onScheduler:v5 usingBlock:v18];
    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v3 = [[ASDDispatchQueue alloc] initWithQueue:*(*(a1 + 32) + 8)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_5;
    v17[3] = &unk_1E7CDD380;
    v17[4] = v9;
    [v10 alwaysPerform:v17 onScheduler:v3];
  }

  v11 = [[ASDDispatchQueue alloc] initWithQueue:*(*(a1 + 32) + 24)];
  v12 = *(*(a1 + 32) + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_31;
  v15[3] = &unk_1E7CDCAB8;
  v16 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_33;
  v13[3] = &unk_1E7CDB730;
  v14 = *(a1 + 40);
  [v12 thenPerform:v15 orCatchError:v13 onScheduler:v11];
}

void __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7[2];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_2;
  v13[3] = &unk_1E7CDD330;
  v14 = v5;
  v15 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_4;
  v11[3] = &unk_1E7CDB730;
  v12 = v15;
  v9 = v15;
  v10 = v5;
  [v7 _call:v8 run:v13 error:v11];
}

void __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7CDD308;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 getUpdatesWithCompletionBlock:v4];
}

uint64_t __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_5(uint64_t a1)
{
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEBUG, "(SoftwareUpdateStore) Completing request: getUpdatesWithCompletionBlock", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_31(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = [v3 count];
    _os_log_debug_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEBUG, "(SoftwareUpdateStore) Dispatching %lu results: getUpdatesWithCompletionBlock", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __57__ASDSoftwareUpdatesStore_getUpdatesWithCompletionBlock___block_invoke_33(uint64_t a1)
{
  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEBUG, "(SoftwareUpdateStore) Dispatching error: getUpdatesWithCompletionBlock", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)getUpdatesIncludingMetricsWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: getUpdatesIncludingMetricsWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_1E7CDD2E0;
  v7[4] = v2;
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_5;
  v5[3] = &unk_1E7CDBAB8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _call:v3 run:v7 error:v5];
}

void __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7CDB8E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 getUpdatesIncludingMetricsWithCompletionBlock:v4];
}

void __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_4;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ASDSoftwareUpdatesStore_getUpdatesIncludingMetricsWithCompletionBlock___block_invoke_6;
  block[3] = &unk_1E7CDCD70;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)hideApplicationBadgeForPendingUpdates
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: hideApplicationBadgeForPendingUpdates", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ASDSoftwareUpdatesStore_hideApplicationBadgeForPendingUpdates__block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(accessQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)refreshUpdateCountWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: refreshUpdateCountWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_1E7CDD2E0;
  v7[4] = v2;
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke_5;
  v5[3] = &unk_1E7CDBAB8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _call:v3 run:v7 error:v5];
}

void __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7CDCE88;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 refreshUpdateCountWithCompletionBlock:v4];
}

void __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke_4;
  block[3] = &unk_1E7CDC540;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__ASDSoftwareUpdatesStore_refreshUpdateCountWithCompletionBlock___block_invoke_6;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)refreshUpdatesWithCompletionBlock:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: refreshUpdatesWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(accessQueue, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDD3C8;
  v9 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_3;
  v6[3] = &unk_1E7CDBDD0;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 refreshUpdatesWithCompletionBlock:v4 completionBlock:v6];
}

void __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_4;
    block[3] = &unk_1E7CDBB30;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

void __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77__ASDSoftwareUpdatesStore_refreshUpdatesWithCompletionBlock_completionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)reloadFromServerInBackgroundWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reloadFromServerInBackgroundWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__ASDSoftwareUpdatesStore_reloadFromServerInBackgroundWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __75__ASDSoftwareUpdatesStore_reloadFromServerInBackgroundWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__ASDSoftwareUpdatesStore_reloadFromServerInBackgroundWithCompletionBlock___block_invoke_2;
  v6[3] = &unk_1E7CDD2E0;
  v6[4] = v2;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__ASDSoftwareUpdatesStore_reloadFromServerInBackgroundWithCompletionBlock___block_invoke_5;
  v4[3] = &unk_1E7CDB730;
  v5 = *(a1 + 40);
  [v2 _call:v3 run:v6 error:v4];
}

void __75__ASDSoftwareUpdatesStore_reloadFromServerInBackgroundWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__ASDSoftwareUpdatesStore_reloadFromServerInBackgroundWithCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7CDB8E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 reloadFromServerInBackgroundWithCompletionBlock:v4];
}

void __75__ASDSoftwareUpdatesStore_reloadFromServerInBackgroundWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__ASDSoftwareUpdatesStore_reloadFromServerInBackgroundWithCompletionBlock___block_invoke_4;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __75__ASDSoftwareUpdatesStore_reloadFromServerInBackgroundWithCompletionBlock___block_invoke_4(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

- (void)reloadFromServerWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reloadFromServerWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_1E7CDD2E0;
  v7[4] = v2;
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_5;
  v5[3] = &unk_1E7CDBAB8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _call:v3 run:v7 error:v5];
}

void __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7CDB8E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 reloadFromServerWithCompletionBlock:v4];
}

void __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_4;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_4(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

void __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__ASDSoftwareUpdatesStore_reloadFromServerWithCompletionBlock___block_invoke_6;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)reloadManagedUpdatesWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reloadManagedUpdatesWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke_2;
  v7[3] = &unk_1E7CDD2E0;
  v7[4] = v2;
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke_5;
  v5[3] = &unk_1E7CDBAB8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v2 _call:v3 run:v7 error:v5];
}

void __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7CDB8E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 reloadManagedUpdatesWithCompletionBlock:v4];
}

void __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke_4;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke_4(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

void __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__ASDSoftwareUpdatesStore_reloadManagedUpdatesWithCompletionBlock___block_invoke_6;
  v7[3] = &unk_1E7CDB890;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)reloadForSettingsFromServerWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"nil block"];
  }

  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: reloadForSettingsFromServerWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__ASDSoftwareUpdatesStore_reloadForSettingsFromServerWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __74__ASDSoftwareUpdatesStore_reloadForSettingsFromServerWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__ASDSoftwareUpdatesStore_reloadForSettingsFromServerWithCompletionBlock___block_invoke_2;
  v6[3] = &unk_1E7CDD2E0;
  v6[4] = v2;
  v7 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__ASDSoftwareUpdatesStore_reloadForSettingsFromServerWithCompletionBlock___block_invoke_5;
  v4[3] = &unk_1E7CDB730;
  v5 = *(a1 + 40);
  [v2 _call:v3 run:v6 error:v4];
}

void __74__ASDSoftwareUpdatesStore_reloadForSettingsFromServerWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __74__ASDSoftwareUpdatesStore_reloadForSettingsFromServerWithCompletionBlock___block_invoke_3;
  v4[3] = &unk_1E7CDB8E0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 reloadFromServerInBackgroundWithCompletionBlock:v4];
}

void __74__ASDSoftwareUpdatesStore_reloadForSettingsFromServerWithCompletionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ASDSoftwareUpdatesStore_reloadForSettingsFromServerWithCompletionBlock___block_invoke_4;
  block[3] = &unk_1E7CDBAE0;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __74__ASDSoftwareUpdatesStore_reloadForSettingsFromServerWithCompletionBlock___block_invoke_4(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

- (void)removeUpdateBulletins
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: removeUpdateBulletins", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__ASDSoftwareUpdatesStore_removeUpdateBulletins__block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(accessQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)showApplicationBadgeForPendingUpdates
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: showApplicationBadgeForPendingUpdates", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__ASDSoftwareUpdatesStore_showApplicationBadgeForPendingUpdates__block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(accessQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)showApplicationUpdateBulletin
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: showApplicationUpdateBulletin", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ASDSoftwareUpdatesStore_showApplicationUpdateBulletin__block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(accessQueue, block);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateAllWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: updateAllWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDD3F0;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke_3;
  v5[3] = &unk_1E7CDCF48;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 updateAllWithJobResults:v5];
}

void __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke_3(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke_4;
    block[3] = &unk_1E7CDBB30;
    v11 = v7;
    v12 = a2;
    v10 = v6;
    dispatch_async(v8, block);
  }
}

void __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__ASDSoftwareUpdatesStore_updateAllWithCompletionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)updateAllWithJobResultsCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: updateAllWithJobResultsCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDD3F0;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke_3;
  v5[3] = &unk_1E7CDCF48;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 updateAllWithJobResults:v5];
}

void __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke_4;
    v11[3] = &unk_1E7CDBF10;
    v14 = v9;
    v15 = a2;
    v12 = v7;
    v13 = v8;
    dispatch_async(v10, v11);
  }
}

void __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __66__ASDSoftwareUpdatesStore_updateAllWithJobResultsCompletionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)updateAllWithOrder:(id)a3 completionBlock:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v9 = v18;
    _os_log_impl(&dword_1B8220000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: updateAllWithOrder", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke;
  block[3] = &unk_1E7CDBF88;
  block[4] = self;
  v15 = v6;
  v16 = v7;
  v11 = v7;
  v12 = v6;
  dispatch_async(accessQueue, block);

  v13 = *MEMORY[0x1E69E9840];
}

void __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDD3C8;
  v9 = *(a1 + 40);
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke_3;
  v6[3] = &unk_1E7CDCF48;
  v5 = *(a1 + 48);
  v6[4] = *(a1 + 40);
  v7 = v5;
  [a2 updateAllWithOrder:v4 completionBlock:v6];
}

void __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke_3(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(*(a1 + 32) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke_4;
    v11[3] = &unk_1E7CDBF10;
    v14 = v9;
    v15 = a2;
    v12 = v7;
    v13 = v8;
    dispatch_async(v10, v11);
  }
}

void __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(*(a1 + 32) + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__ASDSoftwareUpdatesStore_updateAllWithOrder_completionBlock___block_invoke_6;
    v6[3] = &unk_1E7CDB890;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)shouldUseModernUpdatesWithCompletionBlock:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: shouldUseModernUpdatesWithCompletionBlock", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke;
  v10[3] = &unk_1E7CDBE48;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(accessQueue, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke_2;
  v8[3] = &unk_1E7CDD3F0;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke_5;
  v6[3] = &unk_1E7CDBE20;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 _call:v3 run:v8 error:v6];
}

void __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke_3;
  v5[3] = &unk_1E7CDD440;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 shouldUseModernUpdatesWithCompletionBlock:v5];
}

void __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = *(*(a1 + 32) + 24);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke_4;
    v5[3] = &unk_1E7CDD418;
    v6 = v2;
    v7 = a2;
    dispatch_async(v4, v5);
  }
}

void __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__ASDSoftwareUpdatesStore_shouldUseModernUpdatesWithCompletionBlock___block_invoke_6;
    block[3] = &unk_1E7CDCD70;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

- (void)_call:(id)a3 run:(id)a4 error:(id)a5
{
  if (self->_hasUpdatesEntitlement)
  {
    v11.receiver = self;
    v11.super_class = ASDSoftwareUpdatesStore;
    v8 = a5;
    [(ASDBaseClient *)&v11 _call:a3 run:a4 error:v8];
  }

  else
  {
    v9 = a5;
    v10 = ASDErrorWithUnderlyingErrorAndInfo(0, @"ASDErrorDomain", 505, 0, 0, 0);
    (*(a5 + 2))(v9, v10);
  }
}

void __43__ASDSoftwareUpdatesStore__setupConnection__block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalidate", v0, 2u);
  }
}

void __43__ASDSoftwareUpdatesStore__setupConnection__block_invoke_141()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_1B8220000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Interrupt", v0, 2u);
  }
}

@end