@interface LABaseService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (LABaseService)init;
- (LAServiceManager)manager;
- (NSXPCListenerEndpoint)endpoint;
- (id)exportedInterface;
- (id)exportedObject;
- (void)_assertRunningInCorrectQueue;
- (void)_disconnectClient:(id)a3;
- (void)dealloc;
- (void)exportedInterface;
- (void)init;
@end

@implementation LABaseService

- (LABaseService)init
{
  v9.receiver = self;
  v9.super_class = LABaseService;
  v2 = [(LABaseService *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v2];
    serviceID = v2->_serviceID;
    v2->_serviceID = v3;

    v5 = objc_opt_new();
    clients = v2->_clients;
    v2->_clients = v5;

    v2->_terminating = 0;
    v7 = LACLogService();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [LABaseService init];
    }
  }

  return v2;
}

- (NSXPCListenerEndpoint)endpoint
{
  listener = self->_listener;
  if (!listener)
  {
    v4 = [MEMORY[0x1E696B0D8] anonymousListener];
    v5 = self->_listener;
    self->_listener = v4;

    [(NSXPCListener *)self->_listener setDelegate:self];
    v6 = [(LABaseService *)self queue];

    if (v6)
    {
      v7 = self->_listener;
      v8 = [(LABaseService *)self queue];
      [(NSXPCListener *)v7 _setQueue:v8];
    }

    [(NSXPCListener *)self->_listener resume];
    listener = self->_listener;
  }

  return [(NSXPCListener *)listener endpoint];
}

- (void)_assertRunningInCorrectQueue
{
  v3 = [(LABaseService *)self queue];

  if (v3)
  {
    v4 = [(LABaseService *)self queue];
    dispatch_assert_queue_V2(v4);
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*a2 count];
  v7 = 138412546;
  v8 = a1;
  v9 = 2048;
  v10 = v5;
  _os_log_debug_impl(&dword_1DF403000, a3, OS_LOG_TYPE_DEBUG, "Deallocated service: %@ clients: %ld", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (id)exportedInterface
{
  v4 = LACLogService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [LABaseService exportedInterface];
  }

  [(LABaseService *)self doesNotRecognizeSelector:a2];
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A7A538];

  return v5;
}

- (id)exportedObject
{
  v2 = [objc_alloc(MEMORY[0x1E69AD2C0]) initWithReceiver:self];

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(LABaseService *)self _assertRunningInCorrectQueue];
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy_;
  v19[3] = __Block_byref_object_dispose_;
  v20 = objc_opt_new();
  v8 = [(LABaseService *)self exportedInterface];
  [v7 setExportedInterface:v8];

  v9 = [(LABaseService *)self exportedObject];
  [v7 setExportedObject:v9];

  v10 = [(LABaseService *)self queue];

  if (v10)
  {
    v11 = [(LABaseService *)self queue];
    [v7 _setQueue:v11];
  }

  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__LABaseService_listener_shouldAcceptNewConnection___block_invoke;
  v15[3] = &unk_1E86B5D90;
  objc_copyWeak(&v16, &location);
  v15[4] = &v18;
  [v7 setInterruptionHandler:v15];
  v12 = [v7 interruptionHandler];
  [v7 setInvalidationHandler:v12];

  [(NSMutableDictionary *)self->_clients setObject:v7 forKeyedSubscript:*(v19[0] + 40)];
  [v7 resume];
  v13 = LACLogService();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [LABaseService listener:v19 shouldAcceptNewConnection:?];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v18, 8);

  return 1;
}

void __52__LABaseService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = LACLogService();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __52__LABaseService_listener_shouldAcceptNewConnection___block_invoke_cold_1();
    }

    [WeakRetained _disconnectClient:*(*(*(a1 + 32) + 8) + 40)];
  }
}

- (void)_disconnectClient:(id)a3
{
  v4 = a3;
  [(LABaseService *)self _assertRunningInCorrectQueue];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_clients objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = LACLogService();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [LABaseService _disconnectClient:];
      }

      v7 = [(NSMutableDictionary *)self->_clients objectForKeyedSubscript:v4];
      [v7 invalidate];

      [(NSMutableDictionary *)self->_clients setObject:0 forKeyedSubscript:v4];
    }
  }

  if ([(NSMutableDictionary *)self->_clients count]|| self->_terminating)
  {
    WeakRetained = LACLogService();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEBUG))
    {
      [(LABaseService *)&self->_clients _disconnectClient:?];
    }
  }

  else
  {
    self->_terminating = 1;
    v9 = LACLogService();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [LABaseService _disconnectClient:];
    }

    WeakRetained = objc_loadWeakRetained(&self->manager);
    [WeakRetained shutdownSessionsWithMatchingID:self->_serviceID];
  }
}

- (LAServiceManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->manager);

  return WeakRetained;
}

- (void)init
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1DF403000, v0, v1, "Allocated service: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)exportedInterface
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v1 = *MEMORY[0x1E69E9840];
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1DF403000, v3, v4, "Added client to service: %@ clientID: %@");
  v5 = *MEMORY[0x1E69E9840];
}

void __52__LABaseService_listener_shouldAcceptNewConnection___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1DF403000, v0, v1, "Interruption invoked in service: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_disconnectClient:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1DF403000, v0, v1, "Removed client from service: %@ clientID: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_disconnectClient:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1DF403000, v0, v1, "Requested termination of service: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_disconnectClient:(id *)a1 .cold.3(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 count];
  v5[0] = 67109120;
  v5[1] = v3;
  _os_log_debug_impl(&dword_1DF403000, a2, OS_LOG_TYPE_DEBUG, "Keeping service alive because there are still %d clients", v5, 8u);
  v4 = *MEMORY[0x1E69E9840];
}

@end