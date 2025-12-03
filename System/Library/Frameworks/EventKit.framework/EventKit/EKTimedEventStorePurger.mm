@interface EKTimedEventStorePurger
- (BOOL)purgingAllowed;
- (EKTimedEventStorePurger)init;
- (double)timeout;
- (id)acquireCachedEventStoreOrCreate:(BOOL)create;
- (id)changedBlock;
- (id)creationBlock;
- (void)_addPersistentNotificationObservers;
- (void)_databaseChangedExternally;
- (void)_eventStoreChangedNotification:(id)notification;
- (void)_fireChangedBlock;
- (void)_removePersistentNotificationObservers;
- (void)_removeTransientEventStoreChangeObserver;
- (void)_resetIdleTimer;
- (void)_uninstallTimer;
- (void)dealloc;
- (void)setChangedBlock:(id)block;
- (void)setCreationBlock:(id)block;
- (void)setPurgingAllowed:(BOOL)allowed;
- (void)setTimeout:(double)timeout;
@end

@implementation EKTimedEventStorePurger

- (EKTimedEventStorePurger)init
{
  v10.receiver = self;
  v10.super_class = EKTimedEventStorePurger;
  v2 = [(EKTimedEventStorePurger *)&v10 init];
  if (v2)
  {
    objc_opt_class();
    v3 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v3 UTF8String];

    v5 = dispatch_queue_create(uTF8String, 0);
    [(EKTimedEventStorePurger *)v2 setWorkQueue:v5];

    objc_opt_class();
    v6 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String2 = [v6 UTF8String];

    v8 = dispatch_queue_create(uTF8String2, 0);
    [(EKTimedEventStorePurger *)v2 setCallbackQueue:v8];

    [(EKTimedEventStorePurger *)v2 _addPersistentNotificationObservers];
  }

  return v2;
}

- (void)dealloc
{
  [(EKTimedEventStorePurger *)self _uninstallTimer];
  [(EKTimedEventStorePurger *)self _removePersistentNotificationObservers];
  [(EKTimedEventStorePurger *)self _removeTransientEventStoreChangeObserver];
  v3.receiver = self;
  v3.super_class = EKTimedEventStorePurger;
  [(EKTimedEventStorePurger *)&v3 dealloc];
}

- (void)setTimeout:(double)timeout
{
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__EKTimedEventStorePurger_setTimeout___block_invoke;
  v6[3] = &unk_1E77FDDC0;
  v6[4] = self;
  *&v6[5] = timeout;
  dispatch_async(workQueue, v6);
}

uint64_t __38__EKTimedEventStorePurger_setTimeout___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) internalTimeout];
  v4 = v3;
  if (vabdd_f64(v3, *(a1 + 40)) >= 2.22044605e-16)
  {
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = MEMORY[0x1E696AD98];
      v9 = v5;
      v10 = [v8 numberWithDouble:v4];
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_debug_impl(&dword_1A805E000, v9, OS_LOG_TYPE_DEBUG, "Changing timeout in [%@] from [%@] to [%@].", &v12, 0x20u);
    }

    [*(a1 + 32) setInternalTimeout:*(a1 + 40)];
    result = [*(a1 + 32) _resetIdleTimer];
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (double)timeout
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__EKTimedEventStorePurger_timeout__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __34__EKTimedEventStorePurger_timeout__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalTimeout];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)setCreationBlock:(id)block
{
  blockCopy = block;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__EKTimedEventStorePurger_setCreationBlock___block_invoke;
  v7[3] = &unk_1E77FD1A8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

uint64_t __44__EKTimedEventStorePurger_setCreationBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeTransientEventStoreChangeObserver];
  [*(a1 + 32) setInternalStore:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setInternalCreationBlock:v3];
}

- (id)creationBlock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__EKTimedEventStorePurger_creationBlock__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __40__EKTimedEventStorePurger_creationBlock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalCreationBlock];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setChangedBlock:(id)block
{
  blockCopy = block;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__EKTimedEventStorePurger_setChangedBlock___block_invoke;
  v7[3] = &unk_1E77FD1A8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (id)changedBlock
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__EKTimedEventStorePurger_changedBlock__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(workQueue, v6);

  v4 = _Block_copy(v8[5]);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __39__EKTimedEventStorePurger_changedBlock__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalChangedBlock];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)setPurgingAllowed:(BOOL)allowed
{
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__EKTimedEventStorePurger_setPurgingAllowed___block_invoke;
  v6[3] = &unk_1E77FDDE8;
  v6[4] = self;
  allowedCopy = allowed;
  dispatch_async(workQueue, v6);
}

uint64_t __45__EKTimedEventStorePurger_setPurgingAllowed___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) internalPurgingAllowed];
  if (*(a1 + 40) != result)
  {
    [*(a1 + 32) setInternalPurgingAllowed:?];
    v3 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v5 = v3;
      v6 = CalBooleanAsString();
      v7 = *(a1 + 40);
      v8 = CalBooleanAsString();
      v9 = *(a1 + 32);
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_debug_impl(&dword_1A805E000, v5, OS_LOG_TYPE_DEBUG, "Set 'purgingAllowed' from [%@] to [%@] in [%@]", &v10, 0x20u);
    }

    result = [*(a1 + 32) _resetIdleTimer];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)purgingAllowed
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__EKTimedEventStorePurger_purgingAllowed__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __41__EKTimedEventStorePurger_purgingAllowed__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalPurgingAllowed];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)acquireCachedEventStoreOrCreate:(BOOL)create
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__17;
  v15 = 0;
  workQueue = [(EKTimedEventStorePurger *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__EKTimedEventStorePurger_acquireCachedEventStoreOrCreate___block_invoke;
  block[3] = &unk_1E77FDE10;
  block[4] = self;
  block[5] = &v10;
  createCopy = create;
  dispatch_sync(workQueue, block);

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __59__EKTimedEventStorePurger_acquireCachedEventStoreOrCreate___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) internalStore];
  v4 = a1 + 40;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_2;
  }

  if (*(a1 + 48) == 1)
  {
    v7 = [*v2 internalCreationBlock];
    v8 = v7[2]();
    v9 = *(*v4 + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*v2 setInternalStore:*(*(*v4 + 8) + 40)];
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __59__EKTimedEventStorePurger_acquireCachedEventStoreOrCreate___block_invoke_cold_1(v2, v4);
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:*v2 selector:sel__eventStoreChangedNotification_ name:@"EKEventStoreChangedNotification" object:*(*(*v4 + 8) + 40)];

    [*v2 setIgnoreLowLevelDatabaseChangedNotifications:1];
    if (*(*(*v4 + 8) + 40))
    {
LABEL_2:
      [*v2 _resetIdleTimer];
    }
  }
}

- (void)_resetIdleTimer
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "The purging timeout is 0.  Will not set up an idle timer for [%@].", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__EKTimedEventStorePurger__resetIdleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __42__EKTimedEventStorePurger__resetIdleTimer__block_invoke_cold_1();
    if (!WeakRetained)
    {
      goto LABEL_8;
    }
  }

  else if (!WeakRetained)
  {
    goto LABEL_8;
  }

  [WeakRetained setIgnoreLowLevelDatabaseChangedNotifications:0];
  v2 = [WeakRetained internalStore];
  if (v2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __42__EKTimedEventStorePurger__resetIdleTimer__block_invoke_cold_2();
    }

    [WeakRetained _removeTransientEventStoreChangeObserver];
    [WeakRetained setInternalStore:0];
  }

  [WeakRetained _uninstallTimer];

LABEL_8:
}

- (void)_uninstallTimer
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Uninstalling dispatch timer in [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_addPersistentNotificationObservers
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Adding persistent notification observers for [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_removePersistentNotificationObservers
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Removing persistent notification observers for [%@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_databaseChangedExternally
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992E00];
  OUTLINED_FUNCTION_1();
  v5 = 2112;
  v6 = v1;
  _os_log_debug_impl(&dword_1A805E000, v2, OS_LOG_TYPE_DEBUG, "[%@] received notification: [%@]", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __53__EKTimedEventStorePurger__databaseChangedExternally__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if ([*(a1 + 32) ignoreLowLevelDatabaseChangedNotifications])
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
    {
      __53__EKTimedEventStorePurger__databaseChangedExternally__block_invoke_cold_1(v1);
    }
  }

  else
  {
    v2 = *v1;

    [v2 _fireChangedBlock];
  }
}

- (void)_removeTransientEventStoreChangeObserver
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "Removing transient event store change observer for event store [%@] in [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_eventStoreChangedNotification:(id)notification
{
  notificationCopy = notification;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKTimedEventStorePurger _eventStoreChangedNotification:];
  }

  if (![EKChangeListener isSyncStatusChangeNotification:notificationCopy])
  {
    workQueue = [(EKTimedEventStorePurger *)self workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__EKTimedEventStorePurger__eventStoreChangedNotification___block_invoke;
    block[3] = &unk_1E77FD418;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)_fireChangedBlock
{
  internalChangedBlock = [(EKTimedEventStorePurger *)self internalChangedBlock];
  if (internalChangedBlock)
  {
    callbackQueue = [(EKTimedEventStorePurger *)self callbackQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__EKTimedEventStorePurger__fireChangedBlock__block_invoke;
    v5[3] = &unk_1E77FD1A8;
    v5[4] = self;
    v6 = internalChangedBlock;
    dispatch_async(callbackQueue, v5);
  }
}

uint64_t __44__EKTimedEventStorePurger__fireChangedBlock__block_invoke(uint64_t a1)
{
  v2 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_DEBUG))
  {
    __44__EKTimedEventStorePurger__fireChangedBlock__block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = *(a1 + 32);
  return (*(*(a1 + 40) + 16))();
}

void __59__EKTimedEventStorePurger_acquireCachedEventStoreOrCreate___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(*(*a2 + 8) + 40);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v4, v5, "No existing store was found in [%@].  Created event store: [%@].");
  v6 = *MEMORY[0x1E69E9840];
}

void __42__EKTimedEventStorePurger__resetIdleTimer__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, v0, v1, "Idle timer fired in [%@].", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __42__EKTimedEventStorePurger__resetIdleTimer__block_invoke_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "Clearing event store: [%@] in [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

void __53__EKTimedEventStorePurger__databaseChangedExternally__block_invoke_cold_1(uint64_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *MEMORY[0x1E6992E00];
  v2 = *a1;
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(&dword_1A805E000, v3, OS_LOG_TYPE_DEBUG, "Ignored low-level [%@] notification in [%@].", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_eventStoreChangedNotification:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_3_0(&dword_1A805E000, v0, v1, "[%@] received notification: [%@]");
  v2 = *MEMORY[0x1E69E9840];
}

void __44__EKTimedEventStorePurger__fireChangedBlock__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_1_1(&dword_1A805E000, a2, a3, "Firing changed block from [%@]", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end