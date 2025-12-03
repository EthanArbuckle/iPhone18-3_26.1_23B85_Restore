@interface LAEnvironment
+ (LAEnvironment)currentUser;
- (LAEnvironment)init;
- (LAEnvironmentState)state;
- (void)_handleDarwinNotification;
- (void)_notifyObserversAboutUpdateFrom:(id)from;
- (void)_registerDarwinNotification;
- (void)_unregisterDarwinNotification;
- (void)_updateState;
- (void)_updateStateWithSynchronousProxyToEnvironmentService:(id)service;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation LAEnvironment

+ (LAEnvironment)currentUser
{
  if (currentUser_onceToken != -1)
  {
    +[LAEnvironment currentUser];
  }

  v3 = currentUser_currentUser;

  return v3;
}

uint64_t __28__LAEnvironment_currentUser__block_invoke()
{
  currentUser_currentUser = objc_alloc_init(LAEnvironment);

  return MEMORY[0x1EEE66BB8]();
}

- (LAEnvironment)init
{
  v14.receiver = self;
  v14.super_class = LAEnvironment;
  v2 = [(LAEnvironment *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69AD238] createDefaultSerialQueueWithIdentifier:@"LAEnvironment work queue"];
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = [MEMORY[0x1E69AD238] createDefaultSerialQueueWithIdentifier:@"LAEnvironment notification queue"];
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v7 = [MEMORY[0x1E69AD238] createDefaultSerialQueueWithIdentifier:@"LAEnvironment observer queue"];
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v7;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v2->_stateLock._os_unfair_lock_opaque = 0;
    v11 = objc_alloc_init(LAEnvironmentServiceXPCClient);
    xpcClient = v2->_xpcClient;
    v2->_xpcClient = v11;

    [(LAEnvironment *)v2 _registerDarwinNotification];
  }

  return v2;
}

- (void)_registerDarwinNotification
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = "com.apple.LocalAuthentication.environment.StateDidChange";
  v5 = 1024;
  selfCopy = self;
  _os_log_fault_impl(&dword_1A784E000, a2, OS_LOG_TYPE_FAULT, "Failed to register %{public}s: %u", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (LAEnvironmentState)state
{
  os_unfair_lock_lock(&self->_stateLock);
  state = self->_state;
  if (!state)
  {
    [(LAEnvironment *)self _updateState];
    state = self->_state;
  }

  v4 = state;
  os_unfair_lock_unlock(&self->_stateLock);

  return v4;
}

- (void)_updateState
{
  objc_initWeak(&location, self);
  xpcClient = self->_xpcClient;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__LAEnvironment__updateState__block_invoke;
  v4[3] = &unk_1E77CB220;
  objc_copyWeak(&v5, &location);
  [(LAEnvironmentServiceXPCClient *)xpcClient synchronousProxyToEnvironmentServiceWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __29__LAEnvironment__updateState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _updateStateWithSynchronousProxyToEnvironmentService:v5];
  }

  else
  {
    WeakRetained = LACLogEnvironment();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __29__LAEnvironment__updateState__block_invoke_cold_1(v6, WeakRetained);
    }
  }
}

- (void)dealloc
{
  [(LAEnvironment *)self _unregisterDarwinNotification];
  v3.receiver = self;
  v3.super_class = LAEnvironment;
  [(LAEnvironment *)&v3 dealloc];
}

void __44__LAEnvironment__registerDarwinNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDarwinNotification];
}

- (void)_handleDarwinNotification
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__LAEnvironment__handleDarwinNotification__block_invoke;
  v4[3] = &unk_1E77CB1F8;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__LAEnvironment__handleDarwinNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 15);
    [(os_unfair_lock_s *)v2 _updateState];
    os_unfair_lock_unlock(v2 + 15);
    WeakRetained = v2;
  }
}

- (void)_unregisterDarwinNotification
{
  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
  }
}

- (void)_updateStateWithSynchronousProxyToEnvironmentService:(id)service
{
  v32 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:geteuid()];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__LAEnvironment__updateStateWithSynchronousProxyToEnvironmentService___block_invoke;
  v15[3] = &unk_1E77CB248;
  v15[4] = &v22;
  v15[5] = &v16;
  [serviceCopy environmentStateForUser:v5 completion:v15];

  if (v23[5])
  {
    os_unfair_lock_assert_owner(&self->_stateLock);
    v6 = self->_state;
    v7 = [LAEnvironmentState alloc];
    v8 = [(LAEnvironmentState *)v7 initWithCoreState:v23[5]];
    state = self->_state;
    self->_state = v8;

    v10 = LACLogEnvironment();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_state;
      *buf = 138412802;
      *v29 = self;
      *&v29[8] = 2112;
      *&v29[10] = v6;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_1A784E000, v10, OS_LOG_TYPE_DEFAULT, "%@ updated from %@ to %@", buf, 0x20u);
    }

    [(LAEnvironment *)self _notifyObserversAboutUpdateFrom:v6];
  }

  else
  {
    v6 = LACLogEnvironment();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      v12 = geteuid();
      v13 = v17[5];
      *buf = 67109378;
      *v29 = v12;
      *&v29[4] = 2112;
      *&v29[6] = v13;
      _os_log_impl(&dword_1A784E000, &v6->super, OS_LOG_TYPE_DEFAULT, "Failed to query environment state for user %u: %@", buf, 0x12u);
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  v14 = *MEMORY[0x1E69E9840];
}

void __70__LAEnvironment__updateStateWithSynchronousProxyToEnvironmentService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  state = [(LAEnvironment *)self state];
  v5 = self->_observers;
  objc_sync_enter(v5);
  [(NSHashTable *)self->_observers addObject:observerCopy];
  objc_sync_exit(v5);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  objc_sync_exit(v4);
}

- (void)_notifyObserversAboutUpdateFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  os_unfair_lock_assert_owner(&self->_stateLock);
  if (![(LAEnvironmentState *)self->_state isEqual:fromCopy])
  {
    v5 = self->_observers;
    objc_sync_enter(v5);
    v6 = MEMORY[0x1E695DEC8];
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v8 = [v6 arrayWithArray:allObjects];

    objc_sync_exit(v5);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            selfCopy = self;
            observerQueue = self->_observerQueue;
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __49__LAEnvironment__notifyObserversAboutUpdateFrom___block_invoke;
            block[3] = &unk_1E77CB270;
            block[4] = v12;
            v19 = selfCopy;
            v20 = fromCopy;
            v15 = selfCopy;
            dispatch_async(observerQueue, block);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __29__LAEnvironment__updateState__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1A784E000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain environment endpoint %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end