@interface UNOneTimeCodeServiceConnection
+ (id)sharedInstance;
- (UNOneTimeCodeServiceConnection)init;
- (id)_queue_ensureConnection;
- (void)_invalidate;
- (void)_queue_invalidatedConnection;
- (void)addObserver:(id)observer;
- (void)consumeCode:(id)code;
- (void)detectedOneTimeCodes:(id)codes;
- (void)registerForUpdates;
- (void)removeObserver:(id)observer;
@end

@implementation UNOneTimeCodeServiceConnection

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[UNOneTimeCodeServiceConnection sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

uint64_t __48__UNOneTimeCodeServiceConnection_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_0 = objc_alloc_init(UNOneTimeCodeServiceConnection);

  return MEMORY[0x1EEE66BB8]();
}

- (UNOneTimeCodeServiceConnection)init
{
  v12.receiver = self;
  v12.super_class = UNOneTimeCodeServiceConnection;
  v2 = [(UNOneTimeCodeServiceConnection *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.usernotifications.UNOneTimeCodeServiceConnection", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v2->_observers;
    v2->_observers = v6;

    v8 = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__UNOneTimeCodeServiceConnection_init__block_invoke;
    block[3] = &unk_1E7CFF9F0;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__UNOneTimeCodeServiceConnection_addObserver___block_invoke;
  v7[3] = &unk_1E7CFF910;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__UNOneTimeCodeServiceConnection_removeObserver___block_invoke;
  v7[3] = &unk_1E7CFF910;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)registerForUpdates
{
  v3 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B85E3000, v3, OS_LOG_TYPE_DEFAULT, "Registering for OTC updates", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__UNOneTimeCodeServiceConnection_registerForUpdates__block_invoke;
  block[3] = &unk_1E7CFF9F0;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __52__UNOneTimeCodeServiceConnection_registerForUpdates__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v1 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_5];
  [v1 registerForUpdates];
}

void __52__UNOneTimeCodeServiceConnection_registerForUpdates__block_invoke_2()
{
  v0 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __52__UNOneTimeCodeServiceConnection_registerForUpdates__block_invoke_2_cold_1(v0);
  }
}

- (void)consumeCode:(id)code
{
  v13 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  v5 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = codeCopy;
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "Consume OTC code: %@", buf, 0xCu);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__UNOneTimeCodeServiceConnection_consumeCode___block_invoke;
  v9[3] = &unk_1E7CFF910;
  v9[4] = self;
  v10 = codeCopy;
  v7 = codeCopy;
  dispatch_sync(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __46__UNOneTimeCodeServiceConnection_consumeCode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_ensureConnection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__UNOneTimeCodeServiceConnection_consumeCode___block_invoke_2;
  v4[3] = &unk_1E7CFFA38;
  v5 = *(a1 + 40);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v4];
  [v3 consumeCode:*(a1 + 40)];
}

void __46__UNOneTimeCodeServiceConnection_consumeCode___block_invoke_2(uint64_t a1)
{
  v2 = UNLogConnections;
  if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_ERROR))
  {
    __46__UNOneTimeCodeServiceConnection_consumeCode___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)_invalidate
{
  [(NSXPCConnection *)self->_connection invalidate];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_connection setExportedObject:0];

  [(UNOneTimeCodeServiceConnection *)self setConnection:0];
}

- (id)_queue_ensureConnection
{
  dispatch_assert_queue_V2(self->_queue);
  connection = self->_connection;
  if (!connection)
  {
    objc_initWeak(&location, self);
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.UserNotifications.OneTimeCodeService" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = +[UNOneTimeCodeService serverInterface];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v7];

    v8 = self->_connection;
    v9 = +[UNOneTimeCodeService clientInterface];
    [(NSXPCConnection *)v8 setExportedInterface:v9];

    v10 = self->_connection;
    v11 = objc_loadWeakRetained(&location);
    [(NSXPCConnection *)v10 setExportedObject:v11];

    objc_initWeak(&from, self->_queue);
    v12 = self->_connection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57__UNOneTimeCodeServiceConnection__queue_ensureConnection__block_invoke;
    v21[3] = &unk_1E7CFFA88;
    objc_copyWeak(&v22, &from);
    objc_copyWeak(&v23, &location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v21];
    v13 = self->_connection;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __57__UNOneTimeCodeServiceConnection__queue_ensureConnection__block_invoke_3;
    v18 = &unk_1E7CFFA88;
    objc_copyWeak(&v19, &from);
    objc_copyWeak(&v20, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:&v15];
    [(NSXPCConnection *)self->_connection activate:v15];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __57__UNOneTimeCodeServiceConnection__queue_ensureConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__UNOneTimeCodeServiceConnection__queue_ensureConnection__block_invoke_2;
    block[3] = &unk_1E7CFFA60;
    objc_copyWeak(&v4, (a1 + 40));
    dispatch_async(WeakRetained, block);
    objc_destroyWeak(&v4);
  }
}

void __57__UNOneTimeCodeServiceConnection__queue_ensureConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_interruptedConnection];
}

void __57__UNOneTimeCodeServiceConnection__queue_ensureConnection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__UNOneTimeCodeServiceConnection__queue_ensureConnection__block_invoke_4;
    block[3] = &unk_1E7CFFA60;
    objc_copyWeak(&v4, (a1 + 40));
    dispatch_async(WeakRetained, block);
    objc_destroyWeak(&v4);
  }
}

void __57__UNOneTimeCodeServiceConnection__queue_ensureConnection__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_invalidatedConnection];
}

- (void)_queue_invalidatedConnection
{
  dispatch_assert_queue_V2(self->_queue);

  [(UNOneTimeCodeServiceConnection *)self _invalidate];
}

- (void)detectedOneTimeCodes:(id)codes
{
  v16 = *MEMORY[0x1E69E9840];
  codesCopy = codes;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [*(*(&v11 + 1) + 8 * v9++) oneTimeCodeServiceConnection:self detectedOneTimeCodes:{codesCopy, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __46__UNOneTimeCodeServiceConnection_consumeCode___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1B85E3000, a2, OS_LOG_TYPE_ERROR, "Failed to consume code: %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end