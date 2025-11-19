@interface BKSProximitySensorService
+ (id)sharedInstance;
- (id)_init;
- (id)addObserver:(id)a3 forReason:(id)a4;
- (void)_connectToRemoteServiceIfNeeded;
- (void)proximityDetectionMaskDidChange:(id)a3;
@end

@implementation BKSProximitySensorService

- (id)addObserver:(id)a3 forReason:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(BKSProximitySensorService *)self _connectToRemoteServiceIfNeeded];
  v8 = [(BSCompoundAssertion *)self->_observers acquireForReason:v6 withContext:v7];

  return v8;
}

- (void)proximityDetectionMaskDidChange:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_calloutQueue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(BSCompoundAssertion *)self->_observers orderedContext];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [*(*(&v11 + 1) + 8 * v9++) proximitySensorDetectionMaskDidChange:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_connectToRemoteServiceIfNeeded
{
  v31 = *MEMORY[0x1E69E9840];
  p_connection = &self->_connection;
  if (!self->_connection)
  {
    v5 = +[BKSHIDServiceConnectionFactory sharedInstance];
    v6 = [v5 clientConnectionForServiceWithName:@"BKProximitySensor"];

    if (v6)
    {
      objc_storeStrong(p_connection, v6);
      connection = self->_connection;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __60__BKSProximitySensorService__connectToRemoteServiceIfNeeded__block_invoke;
      v18[3] = &unk_1E6F47978;
      v18[4] = self;
      [(BSServiceInitiatingConnection *)connection configure:v18];
      v8 = BKLogUISensor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_186345000, v8, OS_LOG_TYPE_DEBUG, "activating connection to server", buf, 2u);
      }

      [v6 activate];
      v9 = BKLogUISensor();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v17 = [v6 remoteTarget];
        *buf = 138543362;
        v20 = v17;
        _os_log_debug_impl(&dword_186345000, v9, OS_LOG_TYPE_DEBUG, "server remote target %{public}@", buf, 0xCu);
      }

      v10 = [v6 remoteTarget];

      if (!v10)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we must have a remote target"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v12 = NSStringFromSelector(a2);
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          *buf = 138544642;
          v20 = v12;
          v21 = 2114;
          v22 = v14;
          v23 = 2048;
          v24 = self;
          v25 = 2114;
          v26 = @"BKSProximitySensorService.m";
          v27 = 1024;
          v28 = 101;
          v29 = 2114;
          v30 = v11;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v11 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x186373EE0);
      }
    }

    else
    {
      v15 = BKLogUISensor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v15, OS_LOG_TYPE_ERROR, "cannot get connection for service", buf, 2u);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __60__BKSProximitySensorService__connectToRemoteServiceIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLogUISensor();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_186345000, v4, OS_LOG_TYPE_DEBUG, "configured client service", v8, 2u);
  }

  v5 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF570980];
  v6 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EF579350];
  v7 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"BKProximitySensor"];
  [v7 setServer:v6];
  [v7 setClient:v5];
  [v3 setInterface:v7];
  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setQueue:*(*(a1 + 32) + 16)];
  [v3 setInterruptionHandler:&__block_literal_global_3904];
  [v3 setInvalidationHandler:&__block_literal_global_64_3905];
}

void __60__BKSProximitySensorService__connectToRemoteServiceIfNeeded__block_invoke_62()
{
  v0 = BKLogUISensor();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "backboardd must be going down, sounds like fun", v1, 2u);
  }
}

void __60__BKSProximitySensorService__connectToRemoteServiceIfNeeded__block_invoke_60(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = BKLogUISensor();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_186345000, v3, OS_LOG_TYPE_ERROR, "service interruption -- attempting to reactivate", v4, 2u);
  }

  [v2 activate];
}

- (id)_init
{
  v14.receiver = self;
  v14.super_class = BKSProximitySensorService;
  v2 = [(BKSProximitySensorService *)&v14 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E698F4D0] queueWithName:@"com.apple.backboardd.BKSProximitySensorService"];
    bsServiceDispatchQueue = v2->_bsServiceDispatchQueue;
    v2->_bsServiceDispatchQueue = v3;

    v5 = [(BSServiceDispatchQueue *)v2->_bsServiceDispatchQueue queue];
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v5;

    v7 = MEMORY[0x1E698E658];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__BKSProximitySensorService__init__block_invoke;
    v12[3] = &unk_1E6F46D70;
    v8 = v2;
    v13 = v8;
    v9 = [v7 assertionWithIdentifier:@"BKSProximitySensorService observers" stateDidChangeHandler:v12];
    observers = v8->_observers;
    v8->_observers = v9;
  }

  return v2;
}

void __34__BKSProximitySensorService__init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = a2;
  v5 = [v3 remoteTarget];
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 isActive];

  v8 = [v6 numberWithBool:v7];
  v9 = [v5 setObservesProximitySensorDetectionMaskChanges:v8];

  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = v10[3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__BKSProximitySensorService__init__block_invoke_2;
    v12[3] = &unk_1E6F47C78;
    v13 = v10;
    v14 = v9;
    dispatch_async(v11, v12);
  }
}

+ (id)sharedInstance
{
  v2 = [[BKSProximitySensorService alloc] _init];

  return v2;
}

@end