@interface CXCallObserverXPCClient
+ (id)sharedXPCClient;
+ (id)sharedXPCClientSemaphore;
+ (void)releaseSharedXPCClient;
- (BOOL)clientsShouldConnect;
- (CXCallObserverXPCClient)init;
- (NSDictionary)callUUIDToCallMap;
- (NSXPCConnection)connection;
- (id)_init;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler isSynchronous:(BOOL)synchronous;
- (void)_addOrUpdateCall:(id)call;
- (void)_invalidate;
- (void)_markAllCallsAsEnded;
- (void)_removeCall:(id)call;
- (void)_requestCalls;
- (void)addDelegate:(id)delegate;
- (void)addOrUpdateCall:(id)call;
- (void)dealloc;
- (void)invalidate;
- (void)removeCall:(id)call;
- (void)removeDelegate:(id)delegate;
- (void)requestTransaction:(id)transaction completion:(id)completion;
@end

@implementation CXCallObserverXPCClient

- (CXCallObserverXPCClient)init
{
  sharedXPCClient = [objc_opt_class() sharedXPCClient];

  return sharedXPCClient;
}

+ (id)sharedXPCClient
{
  sharedXPCClientSemaphore = [self sharedXPCClientSemaphore];
  dispatch_semaphore_wait(sharedXPCClientSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  if (!sharedXPCClient_0)
  {
    _init = [[self alloc] _init];
    v5 = sharedXPCClient_0;
    sharedXPCClient_0 = _init;
  }

  ++sharedXPCClientRetainCount_0;
  sharedXPCClientSemaphore2 = [self sharedXPCClientSemaphore];
  dispatch_semaphore_signal(sharedXPCClientSemaphore2);

  v7 = sharedXPCClient_0;

  return v7;
}

+ (id)sharedXPCClientSemaphore
{
  if (sharedXPCClientSemaphore_onceToken_0 != -1)
  {
    +[CXCallObserverXPCClient sharedXPCClientSemaphore];
  }

  v3 = sharedXPCClientSemaphore_sharedXPCClientSemaphore_0;

  return v3;
}

uint64_t __51__CXCallObserverXPCClient_sharedXPCClientSemaphore__block_invoke()
{
  sharedXPCClientSemaphore_sharedXPCClientSemaphore_0 = dispatch_semaphore_create(1);

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = CXCallObserverXPCClient;
  v2 = [(CXCallObserverXPCClient *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.callobserverxpcclient", MEMORY[0x1E69E96A8]);
    concurrentQueue = v2->_concurrentQueue;
    v2->_concurrentQueue = v3;

    v5 = v2->_concurrentQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__CXCallObserverXPCClient__init__block_invoke;
    block[3] = &unk_1E7C06CA8;
    v8 = v2;
    dispatch_barrier_async(v5, block);
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  notify_cancel(self->_clientsShouldConnectToken);
  v3.receiver = self;
  v3.super_class = CXCallObserverXPCClient;
  [(CXCallObserverXPCClient *)&v3 dealloc];
}

void __32__CXCallObserverXPCClient__init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  objc_initWeak(&location, *(a1 + 32));
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __32__CXCallObserverXPCClient__init__block_invoke_2;
  v13 = &unk_1E7C072B0;
  objc_copyWeak(&v14, &location);
  notify_register_dispatch("com.apple.callkit.callcontroller.shouldconnect", (v8 + 12), v9, &v10);
  [*(a1 + 32) _requestCalls];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_requestCalls
{
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  clientsShouldConnect = [(CXCallObserverXPCClient *)self clientsShouldConnect];
  v5 = CXDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (clientsShouldConnect)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Requesting calls from host", buf, 2u);
    }

    v5 = [(CXCallObserverXPCClient *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_9_0 isSynchronous:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__CXCallObserverXPCClient__requestCalls__block_invoke_10;
    v7[3] = &unk_1E7C070F0;
    v7[4] = self;
    [v5 requestCalls:v7];
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Call host has no calls", buf, 2u);
  }
}

- (BOOL)clientsShouldConnect
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_clientsShouldConnect)
  {
    clientsShouldConnect = 1;
  }

  else
  {
    state64 = 0;
    state = notify_get_state([(CXCallObserverXPCClient *)self clientsShouldConnectToken], &state64);
    if (state)
    {
      v5 = state;
      v6 = CXDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v5;
        _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Bad status received attempting to get host call state: %d", buf, 8u);
      }

      clientsShouldConnect = self->_clientsShouldConnect;
    }

    else
    {
      clientsShouldConnect = state64 != 0;
      self->_clientsShouldConnect = state64 != 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return clientsShouldConnect;
}

- (NSDictionary)callUUIDToCallMap
{
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_V2(concurrentQueue);

  mutableCallUUIDToCallMap = [(CXCallObserverXPCClient *)self mutableCallUUIDToCallMap];
  v5 = [mutableCallUUIDToCallMap copy];

  return v5;
}

- (void)invalidate
{
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  v3 = objc_opt_class();

  [v3 releaseSharedXPCClient];
}

+ (void)releaseSharedXPCClient
{
  sharedXPCClientSemaphore = [self sharedXPCClientSemaphore];
  dispatch_semaphore_wait(sharedXPCClientSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  if (!--sharedXPCClientRetainCount_0)
  {
    [sharedXPCClient_0 _invalidate];
    v4 = sharedXPCClient_0;
    sharedXPCClient_0 = 0;
  }

  sharedXPCClientSemaphore2 = [self sharedXPCClientSemaphore];
  dispatch_semaphore_signal(sharedXPCClientSemaphore2);
}

- (void)_invalidate
{
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

void __32__CXCallObserverXPCClient__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained concurrentQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__CXCallObserverXPCClient__init__block_invoke_3;
    block[3] = &unk_1E7C06CA8;
    v5 = v2;
    dispatch_barrier_async(v3, block);
  }
}

uint64_t __32__CXCallObserverXPCClient__init__block_invoke_3(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (!*(*(result + 32) + 40))
  {
    v1 = result;
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "com.apple.callkit.callcontroller.shouldconnect";
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection", &v4, 0xCu);
    }

    [*(v1 + 32) setClientsShouldConnect:1];
    result = [*(v1 + 32) _requestCalls];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  delegates = [(CXCallObserverXPCClient *)self delegates];
  [delegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  delegates = [(CXCallObserverXPCClient *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (void)requestTransaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  transactionCopy = transaction;
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__CXCallObserverXPCClient_requestTransaction_completion___block_invoke;
  v14[3] = &unk_1E7C07230;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(CXCallObserverXPCClient *)self _remoteObjectProxyWithErrorHandler:v14 isSynchronous:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__CXCallObserverXPCClient_requestTransaction_completion___block_invoke_7;
  v12[3] = &unk_1E7C07230;
  v13 = v9;
  v11 = v9;
  [v10 requestTransaction:transactionCopy reply:v12];
}

void __57__CXCallObserverXPCClient_requestTransaction_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__CXVoicemailObserverXPCClient_requestTransaction_completion___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __57__CXCallObserverXPCClient_requestTransaction_completion___block_invoke_7(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Received reply from transaction request with error: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_markAllCallsAsEnded
{
  v21 = *MEMORY[0x1E69E9840];
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    callUUIDToCallMap = [(CXCallObserverXPCClient *)self callUUIDToCallMap];
    *buf = 138412290;
    v20 = callUUIDToCallMap;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "self.callUUIDToCallMap: %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  callUUIDToCallMap2 = [(CXCallObserverXPCClient *)self callUUIDToCallMap];
  allValues = [callUUIDToCallMap2 allValues];

  v8 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        [v12 setHasEnded:1];
        [(CXCallObserverXPCClient *)self _removeCall:v12];
      }

      v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_addOrUpdateCall:(id)call
{
  v25 = *MEMORY[0x1E69E9840];
  callCopy = call;
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  callUUIDToCallMap = [(CXCallObserverXPCClient *)self callUUIDToCallMap];
  uUID = [callCopy UUID];
  v8 = [callUUIDToCallMap objectForKeyedSubscript:uUID];

  if (([v8 isEqualToCall:callCopy] & 1) == 0)
  {
    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = callCopy;
      _os_log_impl(&dword_1B47F3000, v9, OS_LOG_TYPE_DEFAULT, "call: %@", buf, 0xCu);
    }

    mutableCallUUIDToCallMap = [(CXCallObserverXPCClient *)self mutableCallUUIDToCallMap];
    uUID2 = [callCopy UUID];
    [mutableCallUUIDToCallMap setObject:callCopy forKeyedSubscript:uUID2];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    delegates = [(CXCallObserverXPCClient *)self delegates];
    v13 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(delegates);
          }

          [*(*(&v18 + 1) + 8 * v16++) dataSource:self callChanged:callCopy];
        }

        while (v14 != v16);
        v14 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_removeCall:(id)call
{
  v25 = *MEMORY[0x1E69E9840];
  callCopy = call;
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  callUUIDToCallMap = [(CXCallObserverXPCClient *)self callUUIDToCallMap];
  uUID = [callCopy UUID];
  v8 = [callUUIDToCallMap objectForKeyedSubscript:uUID];

  if (v8)
  {
    v9 = CXDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = callCopy;
      _os_log_impl(&dword_1B47F3000, v9, OS_LOG_TYPE_DEFAULT, "call: %@", buf, 0xCu);
    }

    mutableCallUUIDToCallMap = [(CXCallObserverXPCClient *)self mutableCallUUIDToCallMap];
    uUID2 = [callCopy UUID];
    [mutableCallUUIDToCallMap removeObjectForKey:uUID2];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    delegates = [(CXCallObserverXPCClient *)self delegates];
    v13 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        v16 = 0;
        do
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(delegates);
          }

          [*(*(&v18 + 1) + 8 * v16++) dataSource:self callChanged:callCopy];
        }

        while (v14 != v16);
        v14 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __40__CXCallObserverXPCClient__requestCalls__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __40__CXCallObserverXPCClient__requestCalls__block_invoke_cold_1(v2, v3);
  }
}

void __40__CXCallObserverXPCClient__requestCalls__block_invoke_10(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Received requested calls from host: %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
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

        [*(a1 + 32) _addOrUpdateCall:{*(*(&v11 + 1) + 8 * v9++), v11}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSXPCConnection)connection
{
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  dispatch_assert_queue_barrier(concurrentQueue);

  connection = self->_connection;
  if (!connection)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.callkit.callcontrollerhost" options:0];
    v6 = self->_connection;
    self->_connection = v5;

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    cx_callControllerVendorInterface = [MEMORY[0x1E696B0D0] cx_callControllerVendorInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:cx_callControllerVendorInterface];

    cx_callControllerHostInterface = [MEMORY[0x1E696B0D0] cx_callControllerHostInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:cx_callControllerHostInterface];

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __37__CXCallObserverXPCClient_connection__block_invoke;
    v12[3] = &unk_1E7C06E50;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__CXCallObserverXPCClient_connection__block_invoke_2;
    v10[3] = &unk_1E7C06E50;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v10];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __37__CXCallObserverXPCClient_connection__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for call observer %@", buf, 0xCu);
    }

    v3 = [WeakRetained concurrentQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__CXCallObserverXPCClient_connection__block_invoke_14;
    block[3] = &unk_1E7C06CA8;
    block[4] = WeakRetained;
    dispatch_barrier_async(v3, block);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __37__CXCallObserverXPCClient_connection__block_invoke_14(uint64_t a1)
{
  [*(a1 + 32) _invalidate];
  [*(a1 + 32) setConnection:0];
  [*(a1 + 32) setClientsShouldConnect:0];
  v2 = *(a1 + 32);

  return [v2 _markAllCallsAsEnded];
}

void __37__CXCallObserverXPCClient_connection__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for call observer %@", buf, 0xCu);
    }

    v3 = [WeakRetained concurrentQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__CXCallObserverXPCClient_connection__block_invoke_15;
    block[3] = &unk_1E7C06CA8;
    block[4] = WeakRetained;
    dispatch_barrier_async(v3, block);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __37__CXCallObserverXPCClient_connection__block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) setConnection:0];
  [*(a1 + 32) setClientsShouldConnect:0];
  v2 = *(a1 + 32);

  return [v2 _markAllCallsAsEnded];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler isSynchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  connection = [(CXCallObserverXPCClient *)self connection];
  v8 = connection;
  if (handlerCopy)
  {
    if (synchronousCopy)
    {
      [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
    }

    else
    {
      [connection remoteObjectProxyWithErrorHandler:handlerCopy];
    }
    remoteObjectProxy = ;
  }

  else
  {
    remoteObjectProxy = [connection remoteObjectProxy];
  }

  v10 = remoteObjectProxy;

  return v10;
}

- (void)addOrUpdateCall:(id)call
{
  callCopy = call;
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__CXCallObserverXPCClient_addOrUpdateCall___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = callCopy;
  v6 = callCopy;
  dispatch_barrier_async(concurrentQueue, v7);
}

- (void)removeCall:(id)call
{
  callCopy = call;
  concurrentQueue = [(CXCallObserverXPCClient *)self concurrentQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CXCallObserverXPCClient_removeCall___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = callCopy;
  v6 = callCopy;
  dispatch_barrier_async(concurrentQueue, v7);
}

void __40__CXCallObserverXPCClient__requestCalls__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Error requesting calls from host: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end