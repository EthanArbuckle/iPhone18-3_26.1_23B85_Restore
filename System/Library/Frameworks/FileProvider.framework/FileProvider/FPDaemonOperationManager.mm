@interface FPDaemonOperationManager
+ (id)sharedInstance;
- (FPDaemonOperationManager)init;
- (id)generateLocalOperationID;
- (void)_enumerateNewDaemonOperationsWithHandler:(id)handler;
- (void)_receiveLongLivedOperation:(id)operation info:(id)info;
- (void)_updateDaemonOperations;
- (void)dealloc;
- (void)wakeUp;
@end

@implementation FPDaemonOperationManager

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[FPDaemonOperationManager sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __42__FPDaemonOperationManager_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __34__FPDaemonOperationManager_wakeUp__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    return [*(result + 32) _updateDaemonOperations];
  }

  return result;
}

- (FPDaemonOperationManager)init
{
  v15.receiver = self;
  v15.super_class = FPDaemonOperationManager;
  v2 = [(FPDaemonOperationManager *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    localOperationIDs = v2->_localOperationIDs;
    v2->_localOperationIDs = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("FileProvider.daemon-op-manager", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    fp_libnotifyPerUserNotificationName = [@"com.apple.fileprovider.daemon-op-created" fp_libnotifyPerUserNotificationName];
    objc_initWeak(&location, v2);
    uTF8String = [fp_libnotifyPerUserNotificationName UTF8String];
    v10 = v2->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __32__FPDaemonOperationManager_init__block_invoke;
    v12[3] = &unk_1E7938FE8;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch(uTF8String, &v2->_notifToken, v10, v12);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)wakeUp
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__FPDaemonOperationManager_wakeUp__block_invoke;
  block[3] = &unk_1E79399B0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateDaemonOperations
{
  dispatch_assert_queue_V2(self->_queue);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__FPDaemonOperationManager__updateDaemonOperations__block_invoke;
  v3[3] = &unk_1E793D5D8;
  v3[4] = self;
  [(FPDaemonOperationManager *)self _enumerateNewDaemonOperationsWithHandler:v3];
}

void __32__FPDaemonOperationManager_init__block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __32__FPDaemonOperationManager_init__block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDaemonOperations];
}

- (void)dealloc
{
  notify_cancel(self->_notifToken);
  v3.receiver = self;
  v3.super_class = FPDaemonOperationManager;
  [(FPDaemonOperationManager *)&v3 dealloc];
}

- (id)generateLocalOperationID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__FPDaemonOperationManager_generateLocalOperationID__block_invoke;
  v5[3] = &unk_1E793AA20;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __52__FPDaemonOperationManager_generateLocalOperationID__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 32) + 16);
  v7 = *(*(*(a1 + 40) + 8) + 40);

  return [v6 addObject:v7];
}

- (void)_receiveLongLivedOperation:(id)operation info:(id)info
{
  operationCopy = operation;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_queue);
  operationID = [infoCopy operationID];
  if (([(NSMutableSet *)self->_localOperationIDs containsObject:operationID]& 1) == 0)
  {
    [(NSMutableSet *)self->_localOperationIDs addObject:operationID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = infoCopy;
      byCopy = [v8 byCopy];
      v10 = off_1E7938550;
      if (!byCopy)
      {
        v10 = off_1E7938678;
      }

      v11 = [objc_alloc(*v10) initWithRemoteOperation:operationCopy info:v8];

      if (v11)
      {
        v12 = +[FPItemManager defaultManager];
        [v12 scheduleAction:v11];
      }
    }
  }
}

- (void)_enumerateNewDaemonOperationsWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[FPDaemonConnection synchronousSharedConnectionProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__FPDaemonOperationManager__enumerateNewDaemonOperationsWithHandler___block_invoke;
  v8[3] = &unk_1E793D628;
  v8[4] = self;
  v9 = v5;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = v5;
  [v7 fetchDaemonOperationIDsWithCompletionHandler:v8];
}

void __69__FPDaemonOperationManager__enumerateNewDaemonOperationsWithHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__FPDaemonOperationManager__enumerateNewDaemonOperationsWithHandler___block_invoke_cold_1(v5, v6);
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __69__FPDaemonOperationManager__enumerateNewDaemonOperationsWithHandler___block_invoke_14;
    v23[3] = &unk_1E793A858;
    v23[4] = a1[4];
    v7 = [a2 fp_filter:v23];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = fp_current_or_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_debug_impl(&dword_1AAAE1000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] fetching remote operationID %@", buf, 0xCu);
          }

          v15 = a1[5];
          v14 = a1[6];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __69__FPDaemonOperationManager__enumerateNewDaemonOperationsWithHandler___block_invoke_16;
          v17[3] = &unk_1E793D600;
          v17[4] = v12;
          v18 = v14;
          [v15 fetchDaemonOperationWithID:v12 completionHandler:v17];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v26 count:16];
      }

      while (v9);
    }

    v5 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __69__FPDaemonOperationManager__enumerateNewDaemonOperationsWithHandler___block_invoke_16(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __69__FPDaemonOperationManager__enumerateNewDaemonOperationsWithHandler___block_invoke_16_cold_1(a1, v9, v10);
    }
  }

  else if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __69__FPDaemonOperationManager__enumerateNewDaemonOperationsWithHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 fp_prettyDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] couldn't fetch remote operation IDs: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __69__FPDaemonOperationManager__enumerateNewDaemonOperationsWithHandler___block_invoke_16_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 fp_prettyDescription];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_ERROR, "[ERROR] couldn't fetch operationID %@; %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end