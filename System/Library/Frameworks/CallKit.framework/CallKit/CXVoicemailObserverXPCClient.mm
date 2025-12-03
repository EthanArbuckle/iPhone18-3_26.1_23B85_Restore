@interface CXVoicemailObserverXPCClient
+ (id)sharedXPCClient;
+ (id)sharedXPCClientSemaphore;
+ (void)releaseSharedXPCClient;
- (CXVoicemailObserverXPCClient)init;
- (NSDictionary)voicemailUUIDToVoicemailMap;
- (NSXPCConnection)connection;
- (id)_init;
- (id)_remoteObjectProxyWithErrorHandler:(id)handler isSynchronous:(BOOL)synchronous;
- (void)_addOrUpdateVoicemails:(id)voicemails;
- (void)_invalidate;
- (void)_removeVoicemails:(id)voicemails;
- (void)_requestVoicemails;
- (void)addDelegate:(id)delegate;
- (void)addOrUpdateVoicemails:(id)voicemails;
- (void)dealloc;
- (void)invalidate;
- (void)removeDelegate:(id)delegate;
- (void)removeVoicemails:(id)voicemails;
- (void)requestTransaction:(id)transaction completion:(id)completion;
@end

@implementation CXVoicemailObserverXPCClient

+ (id)sharedXPCClientSemaphore
{
  if (sharedXPCClientSemaphore_onceToken != -1)
  {
    +[CXVoicemailObserverXPCClient sharedXPCClientSemaphore];
  }

  v3 = sharedXPCClientSemaphore_sharedXPCClientSemaphore;

  return v3;
}

uint64_t __56__CXVoicemailObserverXPCClient_sharedXPCClientSemaphore__block_invoke()
{
  sharedXPCClientSemaphore_sharedXPCClientSemaphore = dispatch_semaphore_create(1);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedXPCClient
{
  sharedXPCClientSemaphore = [self sharedXPCClientSemaphore];
  dispatch_semaphore_wait(sharedXPCClientSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  if (!sharedXPCClient)
  {
    _init = [[self alloc] _init];
    v5 = sharedXPCClient;
    sharedXPCClient = _init;
  }

  ++sharedXPCClientRetainCount;
  sharedXPCClientSemaphore2 = [self sharedXPCClientSemaphore];
  dispatch_semaphore_signal(sharedXPCClientSemaphore2);

  v7 = sharedXPCClient;

  return v7;
}

+ (void)releaseSharedXPCClient
{
  sharedXPCClientSemaphore = [self sharedXPCClientSemaphore];
  dispatch_semaphore_wait(sharedXPCClientSemaphore, 0xFFFFFFFFFFFFFFFFLL);

  if (!--sharedXPCClientRetainCount)
  {
    [sharedXPCClient _invalidate];
    v4 = sharedXPCClient;
    sharedXPCClient = 0;
  }

  sharedXPCClientSemaphore2 = [self sharedXPCClientSemaphore];
  dispatch_semaphore_signal(sharedXPCClientSemaphore2);
}

- (CXVoicemailObserverXPCClient)init
{
  sharedXPCClient = [objc_opt_class() sharedXPCClient];

  return sharedXPCClient;
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = CXVoicemailObserverXPCClient;
  v2 = [(CXVoicemailObserverXPCClient *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.callkit.voicemailobserverxpcclient", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__CXVoicemailObserverXPCClient__init__block_invoke;
    block[3] = &unk_1E7C06CA8;
    v8 = v2;
    dispatch_async(v5, block);
  }

  return v2;
}

void __37__CXVoicemailObserverXPCClient__init__block_invoke(uint64_t a1)
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
  v12 = __37__CXVoicemailObserverXPCClient__init__block_invoke_2;
  v13 = &unk_1E7C072B0;
  objc_copyWeak(&v14, &location);
  notify_register_dispatch("com.apple.callkit.voicemailcontrollerhost.started", (v8 + 8), v9, &v10);
  [*(a1 + 32) _requestVoicemails];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __37__CXVoicemailObserverXPCClient__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__CXVoicemailObserverXPCClient__init__block_invoke_3;
    block[3] = &unk_1E7C06CA8;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __37__CXVoicemailObserverXPCClient__init__block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "com.apple.callkit.voicemailcontrollerhost.started";
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection", &v5, 0xCu);
  }

  result = [*(a1 + 32) _requestVoicemails];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  notify_cancel(self->_notifyToken);
  v3.receiver = self;
  v3.super_class = CXVoicemailObserverXPCClient;
  [(CXVoicemailObserverXPCClient *)&v3 dealloc];
}

- (NSDictionary)voicemailUUIDToVoicemailMap
{
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  mutableVoicemailUUIDToVoicemailMap = [(CXVoicemailObserverXPCClient *)self mutableVoicemailUUIDToVoicemailMap];
  v5 = [mutableVoicemailUUIDToVoicemailMap copy];

  return v5;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  delegates = [(CXVoicemailObserverXPCClient *)self delegates];
  [delegates addObject:delegateCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  delegates = [(CXVoicemailObserverXPCClient *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (void)requestTransaction:(id)transaction completion:(id)completion
{
  completionCopy = completion;
  transactionCopy = transaction;
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__CXVoicemailObserverXPCClient_requestTransaction_completion___block_invoke;
  v14[3] = &unk_1E7C07230;
  v9 = completionCopy;
  v15 = v9;
  v10 = [(CXVoicemailObserverXPCClient *)self _remoteObjectProxyWithErrorHandler:v14 isSynchronous:0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__CXVoicemailObserverXPCClient_requestTransaction_completion___block_invoke_7;
  v12[3] = &unk_1E7C07230;
  v13 = v9;
  v11 = v9;
  [v10 requestTransaction:transactionCopy reply:v12];
}

void __62__CXVoicemailObserverXPCClient_requestTransaction_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__CXVoicemailObserverXPCClient_requestTransaction_completion___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __62__CXVoicemailObserverXPCClient_requestTransaction_completion___block_invoke_7(uint64_t a1, void *a2)
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

- (void)invalidate
{
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = objc_opt_class();

  [v3 releaseSharedXPCClient];
}

- (void)_addOrUpdateVoicemails:(id)voicemails
{
  v38 = *MEMORY[0x1E69E9840];
  voicemailsCopy = voicemails;
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = voicemailsCopy;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v31;
    *&v8 = 138412290;
    v25 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        voicemailUUIDToVoicemailMap = [(CXVoicemailObserverXPCClient *)self voicemailUUIDToVoicemailMap];
        uUID = [v12 UUID];
        v15 = [voicemailUUIDToVoicemailMap objectForKeyedSubscript:uUID];

        if (([v15 isEqualToVoicemail:v12] & 1) == 0)
        {
          v16 = CXDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v36 = v12;
            _os_log_impl(&dword_1B47F3000, v16, OS_LOG_TYPE_DEFAULT, "adding voicemail: %@", buf, 0xCu);
          }

          mutableVoicemailUUIDToVoicemailMap = [(CXVoicemailObserverXPCClient *)self mutableVoicemailUUIDToVoicemailMap];
          uUID2 = [v12 UUID];
          [mutableVoicemailUUIDToVoicemailMap setObject:v12 forKeyedSubscript:uUID2];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  delegates = [(CXVoicemailObserverXPCClient *)self delegates];
  v20 = [delegates countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(delegates);
        }

        [*(*(&v26 + 1) + 8 * v23++) dataSourceVoicemailsChanged:self];
      }

      while (v21 != v23);
      v21 = [delegates countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_removeVoicemails:(id)voicemails
{
  v38 = *MEMORY[0x1E69E9840];
  voicemailsCopy = voicemails;
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = voicemailsCopy;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v31;
    *&v8 = 138412290;
    v25 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v30 + 1) + 8 * v11);
        voicemailUUIDToVoicemailMap = [(CXVoicemailObserverXPCClient *)self voicemailUUIDToVoicemailMap];
        uUID = [v12 UUID];
        v15 = [voicemailUUIDToVoicemailMap objectForKeyedSubscript:uUID];

        if (v15)
        {
          v16 = CXDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v25;
            v36 = v12;
            _os_log_impl(&dword_1B47F3000, v16, OS_LOG_TYPE_DEFAULT, "removing voicemail: %@", buf, 0xCu);
          }

          mutableVoicemailUUIDToVoicemailMap = [(CXVoicemailObserverXPCClient *)self mutableVoicemailUUIDToVoicemailMap];
          uUID2 = [v12 UUID];
          [mutableVoicemailUUIDToVoicemailMap removeObjectForKey:uUID2];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  delegates = [(CXVoicemailObserverXPCClient *)self delegates];
  v20 = [delegates countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(delegates);
        }

        [*(*(&v26 + 1) + 8 * v23++) dataSourceVoicemailsChanged:self];
      }

      while (v21 != v23);
      v21 = [delegates countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_requestVoicemails
{
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Requesting voicemails from host", buf, 2u);
  }

  v5 = [(CXVoicemailObserverXPCClient *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_9 isSynchronous:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__CXVoicemailObserverXPCClient__requestVoicemails__block_invoke_10;
  v6[3] = &unk_1E7C070F0;
  v6[4] = self;
  [v5 requestVoicemails:v6];
}

void __50__CXVoicemailObserverXPCClient__requestVoicemails__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CXDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__CXVoicemailObserverXPCClient__requestVoicemails__block_invoke_cold_1(v2, v3);
  }
}

void __50__CXVoicemailObserverXPCClient__requestVoicemails__block_invoke_10(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Received requested voicemails from host: %@", &v6, 0xCu);
  }

  [*(a1 + 32) _addOrUpdateVoicemails:v3];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_invalidate
{
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  connection = self->_connection;

  [(NSXPCConnection *)connection invalidate];
}

- (NSXPCConnection)connection
{
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  dispatch_assert_queue_V2(queue);

  connection = self->_connection;
  if (!connection)
  {
    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.callkit.voicemailcontrollerhost" options:0];
    v6 = self->_connection;
    self->_connection = v5;

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    cx_voicemailControllerVendorInterface = [MEMORY[0x1E696B0D0] cx_voicemailControllerVendorInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:cx_voicemailControllerVendorInterface];

    cx_voicemailControllerHostInterface = [MEMORY[0x1E696B0D0] cx_voicemailControllerHostInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:cx_voicemailControllerHostInterface];

    objc_initWeak(&location, self);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __42__CXVoicemailObserverXPCClient_connection__block_invoke;
    v13 = &unk_1E7C06E50;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&v10];
    [(NSXPCConnection *)self->_connection resume:v10];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __42__CXVoicemailObserverXPCClient_connection__block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for voicemail observer %@", buf, 0xCu);
    }

    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__CXVoicemailObserverXPCClient_connection__block_invoke_14;
    block[3] = &unk_1E7C06CA8;
    block[4] = WeakRetained;
    dispatch_async(v3, block);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)handler isSynchronous:(BOOL)synchronous
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  connection = [(CXVoicemailObserverXPCClient *)self connection];
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

- (void)addOrUpdateVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CXVoicemailObserverXPCClient_addOrUpdateVoicemails___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = voicemailsCopy;
  v6 = voicemailsCopy;
  dispatch_async(queue, v7);
}

- (void)removeVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  queue = [(CXVoicemailObserverXPCClient *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CXVoicemailObserverXPCClient_removeVoicemails___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = voicemailsCopy;
  v6 = voicemailsCopy;
  dispatch_async(queue, v7);
}

void __62__CXVoicemailObserverXPCClient_requestTransaction_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Received error from transaction request: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __50__CXVoicemailObserverXPCClient__requestVoicemails__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Error requesting voicemails from host: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end