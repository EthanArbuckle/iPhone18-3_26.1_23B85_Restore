@interface HKProxyProvider
+ (id)_relaunchQueue;
- (HKProxyProvider)initWithSource:(id)a3 serviceIdentifier:(id)a4 exportedObject:(id)a5 exportedInterface:(id)a6 remoteInterface:(id)a7;
- (_HKXPCExportable)exportedObject;
- (id)_fetchConnectionAndGeneration:(int64_t *)a3 error:(id *)a4;
- (id)_lock_sourceWithError:(id *)a3;
- (id)automaticProxyReconnectionHandler;
- (id)clientQueueActionHandlerWithCompletion:(id)a3;
- (id)clientQueueDoubleObjectHandlerWithCompletion:(id)a3;
- (id)clientQueueErrorHandlerWithCompletion:(id)a3;
- (id)clientQueueObjectHandlerWithCompletion:(id)a3;
- (id)clientQueueProgressHandlerWithHandler:(id)a3;
- (id)proxyServiceEndpointFromSource:(id)a3 serviceIdentifier:(id)a4 error:(id *)a5;
- (void)_fetchEndpointAndConnectionWithContinuation:(id)a3;
- (void)_fetchProxyWithHandler:(id)a3 errorHandler:(id)a4;
- (void)_fetchRetryingProxyWithErrorCount:(int64_t)a3 handler:(id)a4 errorHandler:(id)a5;
- (void)_getSynchronousProxyWithErrorCount:(int64_t)a3 handler:(id)a4 errorHandler:(id)a5;
- (void)_getSynchronousProxyWithHandler:(id)a3 errorHandler:(id)a4;
- (void)_handleError:(id)a3 connectionGeneration:(int64_t)a4;
- (void)_lock_flushContinuationsWithConnection:(id)a3 error:(id)a4;
- (void)_lock_setUpConnectionWithEndpoint:(id)a3;
- (void)_resetConnectionWithGeneration:(int64_t)a3;
- (void)_serverDidFinishLaunching;
- (void)dealloc;
- (void)fetchProxyServiceEndpointFromSource:(id)a3 serviceIdentifier:(id)a4 endpointHandler:(id)a5 errorHandler:(id)a6;
- (void)fetchProxyWithHandler:(id)a3 errorHandler:(id)a4;
- (void)getSynchronousProxyWithHandler:(id)a3 errorHandler:(id)a4;
- (void)invalidate;
- (void)referenceSourceWeakly;
- (void)setAutomaticProxyReconnectionHandler:(id)a3;
@end

@implementation HKProxyProvider

+ (id)_relaunchQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__HKProxyProvider__relaunchQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_relaunchQueue_onceToken != -1)
  {
    dispatch_once(&_relaunchQueue_onceToken, block);
  }

  v2 = _relaunchQueue_relaunchQueue;

  return v2;
}

uint64_t __33__HKProxyProvider__relaunchQueue__block_invoke(uint64_t a1)
{
  _relaunchQueue_relaunchQueue = HKCreateSerialDispatchQueue(*(a1 + 32), @"server-relaunch");

  return MEMORY[0x1EEE66BB8]();
}

- (HKProxyProvider)initWithSource:(id)a3 serviceIdentifier:(id)a4 exportedObject:(id)a5 exportedInterface:(id)a6 remoteInterface:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13)
  {
    _HKInitializeLogging();
    v18 = HKLogInfrastructure();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [HKProxyProvider initWithSource:v18 serviceIdentifier:? exportedObject:? exportedInterface:? remoteInterface:?];
    }
  }

  v30.receiver = self;
  v30.super_class = HKProxyProvider;
  v19 = [(HKProxyProvider *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_source, a3);
    v21 = [v14 copy];
    serviceIdentifier = v20->_serviceIdentifier;
    v20->_serviceIdentifier = v21;

    objc_storeWeak(&v20->_exportedObject, v15);
    objc_storeStrong(&v20->_exportedInterface, a6);
    objc_storeStrong(&v20->_remoteInterface, a7);
    v20->_shouldRetryOnInterruption = 1;
    *&v20->_lock._os_unfair_lock_opaque = 0xFFFFFFFF00000000;
    v23 = [v13 clientQueue];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = HKCreateSerialDispatchQueue(v20, 0);
    }

    clientQueue = v20->_clientQueue;
    v20->_clientQueue = v25;

    v27 = [v13 daemonLaunchDarwinNotificationName];
    daemonLaunchNotificationName = v20->_daemonLaunchNotificationName;
    v20->_daemonLaunchNotificationName = v27;
  }

  return v20;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(_HKXPCConnection *)self->_connection invalidate];
  if (self->_lock_automaticProxyReconnectionHandler)
  {
    notifyToken = self->_notifyToken;
    if (notifyToken != -1)
    {
      notify_cancel(notifyToken);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v4.receiver = self;
  v4.super_class = HKProxyProvider;
  [(HKProxyProvider *)&v4 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_invalidated = 1;
  [(_HKXPCConnection *)self->_connection invalidate];
  v3 = [MEMORY[0x1E696ABC0] hk_error:119 description:@"Proxy provider invalidated"];
  [(HKProxyProvider *)self _lock_flushContinuationsWithConnection:0 error:v3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)referenceSourceWeakly
{
  source = self->_source;
  if (source)
  {
    v5 = source;
    objc_storeWeak(&self->_weakSource, v5);
    v4 = self->_source;
    self->_source = 0;
  }
}

- (id)_lock_sourceWithError:(id *)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_invalidated)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 hk_errorForInvalidArgument:@"@" class:v7 selector:a2 format:{@"%@ for %@ invalidated", v9, self->_serviceIdentifier}];
LABEL_3:
    v11 = v10;
    v12 = v11;
    if (v11)
    {
      if (a3)
      {
        v13 = v11;
        *a3 = v12;
      }

      else
      {
        _HKLogDroppedError(v11);
      }
    }

    WeakRetained = 0;
    goto LABEL_12;
  }

  source = self->_source;
  if (source)
  {
    WeakRetained = source;
    goto LABEL_12;
  }

  WeakRetained = objc_loadWeakRetained(&self->_weakSource);
  if (!WeakRetained)
  {
    v16 = MEMORY[0x1E696ABC0];
    v17 = objc_opt_class();
    v9 = NSStringFromClass(v17);
    v10 = [v16 hk_error:100 format:{@"%@ source became nil for %@", v9, self->_serviceIdentifier}];
    goto LABEL_3;
  }

LABEL_12:

  return WeakRetained;
}

- (void)_handleError:(id)a3 connectionGeneration:(int64_t)a4
{
  if ([a3 hk_isXPCConnectionError])
  {

    [(HKProxyProvider *)self _resetConnectionWithGeneration:a4];
  }
}

- (void)_resetConnectionWithGeneration:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated && self->_connectionGeneration == a3)
  {
    connection = self->_connection;
    if (connection)
    {
      self->_connectionGeneration = a3 + 1;
      [(_HKXPCConnection *)connection invalidate];
      v6 = self->_connection;
      self->_connection = 0;

      clientQueue = self->_clientQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__HKProxyProvider__resetConnectionWithGeneration___block_invoke;
      block[3] = &unk_1E7376780;
      block[4] = self;
      dispatch_async(clientQueue, block);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

void __50__HKProxyProvider__resetConnectionWithGeneration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 120));
    [v4 connectionInterrupted];
  }
}

- (id)_fetchConnectionAndGeneration:(int64_t *)a3 error:(id *)a4
{
  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  if (connection)
  {
    v9 = connection;
    *a3 = self->_connectionGeneration;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = [(HKProxyProvider *)self _lock_sourceWithError:a4];
    os_unfair_lock_unlock(&self->_lock);
    if (v10)
    {
      v11 = [(HKProxyProvider *)self proxyServiceEndpointFromSource:v10 serviceIdentifier:self->_serviceIdentifier error:a4];
      if (v11)
      {
        os_unfair_lock_lock(&self->_lock);
        if (self->_invalidated)
        {
          v12 = MEMORY[0x1E696ABC0];
          v13 = objc_opt_class();
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = [v12 hk_errorForInvalidArgument:@"@" class:v13 selector:a2 format:{@"%@ for %@ invalidated", v15, self->_serviceIdentifier}];
          v17 = v16;
          if (v16)
          {
            if (a4)
            {
              v18 = v16;
              *a4 = v17;
            }

            else
            {
              _HKLogDroppedError(v16);
            }
          }

          v9 = 0;
        }

        else
        {
          v19 = self->_connection;
          if (!v19)
          {
            [(HKProxyProvider *)self _lock_setUpConnectionWithEndpoint:v11];
            v19 = self->_connection;
          }

          v9 = v19;
          *a3 = self->_connectionGeneration;
        }

        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)_fetchEndpointAndConnectionWithContinuation:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  if (connection)
  {
    v4[2](v4, connection, self->_connectionGeneration, 0);
LABEL_5:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_6;
  }

  pendingFetchContinuations = self->_pendingFetchContinuations;
  if (pendingFetchContinuations)
  {
    v7 = [v4 copy];
    v8 = _Block_copy(v7);
    [(NSMutableArray *)pendingFetchContinuations addObject:v8];

    goto LABEL_5;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = self->_pendingFetchContinuations;
  self->_pendingFetchContinuations = v9;

  v11 = self->_pendingFetchContinuations;
  v12 = [v4 copy];
  v13 = _Block_copy(v12);
  [(NSMutableArray *)v11 addObject:v13];

  v19 = 0;
  v14 = [(HKProxyProvider *)self _lock_sourceWithError:&v19];
  v15 = v19;
  if (v14)
  {
    os_unfair_lock_unlock(&self->_lock);
    serviceIdentifier = self->_serviceIdentifier;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63__HKProxyProvider__fetchEndpointAndConnectionWithContinuation___block_invoke;
    v18[3] = &unk_1E73799B8;
    v18[4] = self;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__HKProxyProvider__fetchEndpointAndConnectionWithContinuation___block_invoke_2;
    v17[3] = &unk_1E7376898;
    v17[4] = self;
    [(HKProxyProvider *)self fetchProxyServiceEndpointFromSource:v14 serviceIdentifier:serviceIdentifier endpointHandler:v18 errorHandler:v17];
  }

  else
  {
    [(HKProxyProvider *)self _lock_flushContinuationsWithConnection:0 error:v15];
    os_unfair_lock_unlock(&self->_lock);
  }

LABEL_6:
}

void __63__HKProxyProvider__fetchEndpointAndConnectionWithContinuation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 20);
  [*(a1 + 32) _lock_setUpConnectionWithEndpoint:v4];

  v5 = (*(a1 + 32) + 80);

  os_unfair_lock_unlock(v5);
}

void __63__HKProxyProvider__fetchEndpointAndConnectionWithContinuation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 20);
  [*(a1 + 32) _lock_flushContinuationsWithConnection:0 error:v4];

  v5 = (*(a1 + 32) + 80);

  os_unfair_lock_unlock(v5);
}

- (void)_lock_setUpConnectionWithEndpoint:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_connection)
  {
    WeakRetained = objc_loadWeakRetained(&self->_exportedObject);
    if (WeakRetained)
    {
      v6 = [[_HKXPCConnection alloc] initWithListenerEndpoint:v4];
      connection = self->_connection;
      self->_connection = v6;

      v8 = self->_connection;
      v9 = [(HKProxyProvider *)self debugIdentifier];
      [(_HKXPCConnection *)v8 setDebugIdentifier:v9];

      objc_initWeak(&location, self);
      connectionGeneration = self->_connectionGeneration;
      v11 = self->_connection;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __53__HKProxyProvider__lock_setUpConnectionWithEndpoint___block_invoke;
      v16[3] = &unk_1E73799E0;
      objc_copyWeak(v17, &location);
      v17[1] = connectionGeneration;
      [(_HKXPCConnection *)v11 setInterruptionHandler:v16];
      v12 = self->_connection;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __53__HKProxyProvider__lock_setUpConnectionWithEndpoint___block_invoke_2;
      v14[3] = &unk_1E73799E0;
      objc_copyWeak(v15, &location);
      v15[1] = connectionGeneration;
      [(_HKXPCConnection *)v12 setInvalidationHandler:v14];
      [(_HKXPCConnection *)self->_connection setExportedObject:WeakRetained];
      [(_HKXPCConnection *)self->_connection resumeWithExportedInterface:self->_exportedInterface remoteInterface:self->_remoteInterface];
      [(HKProxyProvider *)self _lock_flushContinuationsWithConnection:self->_connection error:0];
      objc_destroyWeak(v15);
      objc_destroyWeak(v17);
      objc_destroyWeak(&location);
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] hk_error:100 format:{@"exportedObject became nil for %@", self->_serviceIdentifier}];
      [(HKProxyProvider *)self _lock_flushContinuationsWithConnection:0 error:v13];
    }
  }
}

void __53__HKProxyProvider__lock_setUpConnectionWithEndpoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetConnectionWithGeneration:*(a1 + 40)];
}

void __53__HKProxyProvider__lock_setUpConnectionWithEndpoint___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetConnectionWithGeneration:*(a1 + 40)];
}

- (void)_lock_flushContinuationsWithConnection:(id)a3 error:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  connectionGeneration = self->_connectionGeneration;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_pendingFetchContinuations;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v16 + 1) + 8 * v13) + 16))(*(*(&v16 + 1) + 8 * v13));
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  pendingFetchContinuations = self->_pendingFetchContinuations;
  self->_pendingFetchContinuations = 0;

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_fetchRetryingProxyWithErrorCount:(int64_t)a3 handler:(id)a4 errorHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__HKProxyProvider__fetchRetryingProxyWithErrorCount_handler_errorHandler___block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  if (_fetchRetryingProxyWithErrorCount_handler_errorHandler__onceToken != -1)
  {
    dispatch_once(&_fetchRetryingProxyWithErrorCount_handler_errorHandler__onceToken, block);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__HKProxyProvider__fetchRetryingProxyWithErrorCount_handler_errorHandler___block_invoke_2;
  v12[3] = &unk_1E7379A30;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v9;
  v11 = v8;
  [(HKProxyProvider *)self _fetchProxyWithHandler:v11 errorHandler:v12];
}

uint64_t __74__HKProxyProvider__fetchRetryingProxyWithErrorCount_handler_errorHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  _fetchRetryingProxyWithErrorCount_handler_errorHandler__retryQueue = HKCreateSerialDispatchQueue(v2, @"retry");

  return MEMORY[0x1EEE66BB8]();
}

void __74__HKProxyProvider__fetchRetryingProxyWithErrorCount_handler_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hk_isXPCConnectionError] && (v4 = *(a1 + 56), v4 <= 3))
  {
    v5 = pow(1.5, v4);
    v6 = dispatch_time(0, (v5 * 0.25 * 1000000000.0));
    v7 = _fetchRetryingProxyWithErrorCount_handler_errorHandler__retryQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__HKProxyProvider__fetchRetryingProxyWithErrorCount_handler_errorHandler___block_invoke_3;
    v10[3] = &unk_1E7379A08;
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v13 = v8;
    v11 = v9;
    v12 = *(a1 + 48);
    dispatch_after(v6, v7, v10);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)fetchProxyWithHandler:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(HKProxyProvider *)self shouldRetryOnInterruption])
  {
    [(HKProxyProvider *)self _fetchRetryingProxyWithErrorCount:0 handler:v7 errorHandler:v6];
  }

  else
  {
    [(HKProxyProvider *)self _fetchProxyWithHandler:v7 errorHandler:v6];
  }
}

- (void)_fetchProxyWithHandler:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_clientQueue;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __55__HKProxyProvider__fetchProxyWithHandler_errorHandler___block_invoke;
  v16 = &unk_1E7379A80;
  v17 = self;
  v18 = v8;
  v19 = v7;
  v20 = v6;
  v9 = v6;
  v10 = v8;
  v11 = v7;
  v12 = _Block_copy(&v13);
  [(HKProxyProvider *)self _fetchEndpointAndConnectionWithContinuation:v12, v13, v14, v15, v16, v17];
}

void __55__HKProxyProvider__fetchProxyWithHandler_errorHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__HKProxyProvider__fetchProxyWithHandler_errorHandler___block_invoke_2;
  aBlock[3] = &unk_1E7379A58;
  aBlock[4] = *(a1 + 32);
  v23 = a3;
  v22 = *(a1 + 48);
  v9 = _Block_copy(aBlock);
  if (v7)
  {
    v10 = [v7 remoteObjectProxyWithErrorHandler:v9];
    v11 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__HKProxyProvider__fetchProxyWithHandler_errorHandler___block_invoke_3;
    block[3] = &unk_1E7376AC0;
    v12 = *(a1 + 56);
    v19 = v10;
    v20 = v12;
    v13 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    if (!v8)
    {
      v8 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"Failed to fetch proxy connection."];
    }

    v14 = *(a1 + 40);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __55__HKProxyProvider__fetchProxyWithHandler_errorHandler___block_invoke_4;
    v15[3] = &unk_1E7376AC0;
    v17 = v9;
    v8 = v8;
    v16 = v8;
    dispatch_async(v14, v15);

    v13 = v17;
  }
}

void __55__HKProxyProvider__fetchProxyWithHandler_errorHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [v3 _handleError:v5 connectionGeneration:v4];
  (*(a1[5] + 16))();
}

- (void)getSynchronousProxyWithHandler:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(HKProxyProvider *)self shouldRetryOnInterruption])
  {
    [(HKProxyProvider *)self _getSynchronousProxyWithErrorCount:0 handler:v7 errorHandler:v6];
  }

  else
  {
    [(HKProxyProvider *)self _getSynchronousProxyWithHandler:v7 errorHandler:v6];
  }
}

- (void)_getSynchronousProxyWithErrorCount:(int64_t)a3 handler:(id)a4 errorHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__HKProxyProvider__getSynchronousProxyWithErrorCount_handler_errorHandler___block_invoke;
  v12[3] = &unk_1E7379A30;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v9;
  v11 = v8;
  [(HKProxyProvider *)self _getSynchronousProxyWithHandler:v11 errorHandler:v12];
}

void __75__HKProxyProvider__getSynchronousProxyWithErrorCount_handler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 hk_isXPCConnectionError] && (v3 = *(a1 + 56), v3 <= 3))
  {
    [*(a1 + 32) _getSynchronousProxyWithErrorCount:v3 + 1 handler:*(a1 + 40) errorHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_getSynchronousProxyWithHandler:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v16 = 0;
  v8 = [(HKProxyProvider *)self _fetchConnectionAndGeneration:&v17 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__HKProxyProvider__getSynchronousProxyWithHandler_errorHandler___block_invoke;
    v13[3] = &unk_1E7379A58;
    v13[4] = self;
    v15 = v17;
    v14 = v7;
    v11 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v13];
    v6[2](v6, v11);
  }

  else if (v9)
  {
    (*(v7 + 2))(v7, v9);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] hk_error:100 format:@"Failed to fetch proxy connection."];
    (*(v7 + 2))(v7, v12);
  }
}

void __64__HKProxyProvider__getSynchronousProxyWithHandler_errorHandler___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a2;
  [v3 _handleError:v5 connectionGeneration:v4];
  (*(a1[5] + 16))();
}

- (void)setAutomaticProxyReconnectionHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_automaticProxyReconnectionHandler = self->_lock_automaticProxyReconnectionHandler;
  if (v4)
  {
    if (!lock_automaticProxyReconnectionHandler && self->_daemonLaunchNotificationName)
    {
      objc_initWeak(&location, self);
      v6 = [(NSString *)self->_daemonLaunchNotificationName UTF8String];
      v7 = [objc_opt_class() _relaunchQueue];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __56__HKProxyProvider_setAutomaticProxyReconnectionHandler___block_invoke;
      v14 = &unk_1E7379AA8;
      objc_copyWeak(&v15, &location);
      notify_register_dispatch(v6, &self->_notifyToken, v7, &v11);

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  else if (lock_automaticProxyReconnectionHandler)
  {
    notifyToken = self->_notifyToken;
    if (notifyToken != -1)
    {
      notify_cancel(notifyToken);
      self->_notifyToken = -1;
    }
  }

  v9 = [v4 copy];
  v10 = self->_lock_automaticProxyReconnectionHandler;
  self->_lock_automaticProxyReconnectionHandler = v9;

  os_unfair_lock_unlock(&self->_lock);
}

void __56__HKProxyProvider_setAutomaticProxyReconnectionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serverDidFinishLaunching];
}

- (id)automaticProxyReconnectionHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = _Block_copy(self->_lock_automaticProxyReconnectionHandler);
  os_unfair_lock_unlock(&self->_lock);
  v4 = _Block_copy(v3);

  return v4;
}

- (void)_serverDidFinishLaunching
{
  v3 = [(HKProxyProvider *)self automaticProxyReconnectionHandler];
  v4 = v3;
  if (v3)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__HKProxyProvider__serverDidFinishLaunching__block_invoke;
    aBlock[3] = &unk_1E7379AD0;
    aBlock[4] = self;
    v9 = v3;
    v5 = _Block_copy(aBlock);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__HKProxyProvider__serverDidFinishLaunching__block_invoke_44;
    v7[3] = &unk_1E7376898;
    v7[4] = self;
    v6 = _Block_copy(v7);
    if ([(HKProxyProvider *)self shouldRetryOnInterruption])
    {
      [(HKProxyProvider *)self _getSynchronousProxyWithErrorCount:0 handler:v5 errorHandler:v6];
    }

    else
    {
      [(HKProxyProvider *)self _getSynchronousProxyWithHandler:v5 errorHandler:v6];
    }
  }
}

void __44__HKProxyProvider__serverDidFinishLaunching__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_INFO, "%{public}@: Fetched proxy after detecting server relaunch.", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

void __44__HKProxyProvider__serverDidFinishLaunching__block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__HKProxyProvider__serverDidFinishLaunching__block_invoke_44_cold_1(a1, v3, v4);
  }
}

- (id)clientQueueErrorHandlerWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__5;
  v11[4] = __Block_byref_object_dispose__5;
  v12 = [(HKProxyProvider *)self exportedObject];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HKProxyProvider_clientQueueErrorHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7379B20;
  aBlock[4] = self;
  v9 = v4;
  v10 = v11;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  _Block_object_dispose(v11, 8);

  return v6;
}

void __57__HKProxyProvider_clientQueueErrorHandlerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__HKProxyProvider_clientQueueErrorHandlerWithCompletion___block_invoke_2;
  block[3] = &unk_1E7379AF8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, block);
}

void __57__HKProxyProvider_clientQueueErrorHandlerWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)clientQueueActionHandlerWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__5;
  v11[4] = __Block_byref_object_dispose__5;
  v12 = [(HKProxyProvider *)self exportedObject];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__HKProxyProvider_clientQueueActionHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7379B70;
  aBlock[4] = self;
  v9 = v4;
  v10 = v11;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  _Block_object_dispose(v11, 8);

  return v6;
}

void __58__HKProxyProvider_clientQueueActionHandlerWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 104);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__HKProxyProvider_clientQueueActionHandlerWithCompletion___block_invoke_2;
  v9[3] = &unk_1E7379B48;
  v7 = *(a1 + 40);
  v13 = a2;
  v10 = v5;
  v11 = v7;
  v12 = *(a1 + 48);
  v8 = v5;
  dispatch_async(v6, v9);
}

void __58__HKProxyProvider_clientQueueActionHandlerWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 56), *(a1 + 32));
  }

  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)clientQueueObjectHandlerWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__5;
  v11[4] = __Block_byref_object_dispose__5;
  v12 = [(HKProxyProvider *)self exportedObject];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__HKProxyProvider_clientQueueObjectHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7379BC0;
  aBlock[4] = self;
  v9 = v4;
  v10 = v11;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  _Block_object_dispose(v11, 8);

  return v6;
}

void __58__HKProxyProvider_clientQueueObjectHandlerWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 104);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__HKProxyProvider_clientQueueObjectHandlerWithCompletion___block_invoke_2;
  v12[3] = &unk_1E7379B98;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v6;
  v9 = *(a1 + 48);
  v15 = v8;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, v12);
}

void __58__HKProxyProvider_clientQueueObjectHandlerWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)clientQueueDoubleObjectHandlerWithCompletion:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__5;
  v11[4] = __Block_byref_object_dispose__5;
  v12 = [(HKProxyProvider *)self exportedObject];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__HKProxyProvider_clientQueueDoubleObjectHandlerWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7379C10;
  aBlock[4] = self;
  v9 = v4;
  v10 = v11;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  _Block_object_dispose(v11, 8);

  return v6;
}

void __64__HKProxyProvider_clientQueueDoubleObjectHandlerWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__HKProxyProvider_clientQueueDoubleObjectHandlerWithCompletion___block_invoke_2;
  block[3] = &unk_1E7379BE8;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v11;
  v20 = *(a1 + 48);
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, block);
}

void __64__HKProxyProvider_clientQueueDoubleObjectHandlerWithCompletion___block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5], a1[6]);
  }

  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)clientQueueProgressHandlerWithHandler:(id)a3
{
  v4 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__5;
  v11[4] = __Block_byref_object_dispose__5;
  v12 = [(HKProxyProvider *)self exportedObject];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__HKProxyProvider_clientQueueProgressHandlerWithHandler___block_invoke;
  aBlock[3] = &unk_1E7379C38;
  aBlock[4] = self;
  v9 = v4;
  v10 = v11;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  _Block_object_dispose(v11, 8);

  return v6;
}

void __57__HKProxyProvider_clientQueueProgressHandlerWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__HKProxyProvider_clientQueueProgressHandlerWithHandler___block_invoke_2;
  block[3] = &unk_1E7379AF8;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, block);
}

void __57__HKProxyProvider_clientQueueProgressHandlerWithHandler___block_invoke_2(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4]);
  }

  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (_HKXPCExportable)exportedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_exportedObject);

  return WeakRetained;
}

- (id)proxyServiceEndpointFromSource:(id)a3 serviceIdentifier:(id)a4 error:(id *)a5
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)fetchProxyServiceEndpointFromSource:(id)a3 serviceIdentifier:(id)a4 endpointHandler:(id)a5 errorHandler:(id)a6
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)initWithSource:(uint64_t)a1 serviceIdentifier:(NSObject *)a2 exportedObject:exportedInterface:remoteInterface:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138543362;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_fault_impl(&dword_19197B000, a2, OS_LOG_TYPE_FAULT, "%{public}@: source unexpectedly nil", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __44__HKProxyProvider__serverDidFinishLaunching__block_invoke_44_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch proxy after detecting server relaunch: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end