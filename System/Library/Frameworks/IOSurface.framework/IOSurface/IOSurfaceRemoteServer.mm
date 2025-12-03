@interface IOSurfaceRemoteServer
- (IOSurfaceRemoteServer)initWithListener:(id)listener options:(id)options;
- (void)_handleClientConnection:(id)connection;
- (void)_handleClientDisconnected:(id)disconnected;
- (void)dealloc;
- (void)shutdown;
@end

@implementation IOSurfaceRemoteServer

- (IOSurfaceRemoteServer)initWithListener:(id)listener options:(id)options
{
  v18 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = IOSurfaceRemoteServer;
  v8 = [(IOSurfaceRemoteServer *)&v17 init];
  [(IOSurfaceRemoteServer *)v8 setListener:listenerCopy];
  v9 = objc_opt_new();
  [(IOSurfaceRemoteServer *)v8 setClients:v9];

  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v11 = dispatch_queue_create("com.apple.IOSurfaceRemoteServer", v10);
  [(IOSurfaceRemoteServer *)v8 setQueue:v11];
  objc_initWeak(&location, v8);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __50__IOSurfaceRemoteServer_initWithListener_options___block_invoke;
  handler[3] = &unk_1E7A91A10;
  objc_copyWeak(&v15, &location);
  xpc_connection_set_event_handler(listenerCopy, handler);
  xpc_connection_set_target_queue(listenerCopy, v11);
  xpc_connection_activate(listenerCopy);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

void __50__IOSurfaceRemoteServer_initWithListener_options___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (MEMORY[0x1B27205C0](v5) == MEMORY[0x1E69E9E68])
  {
    [WeakRetained _handleClientConnection:v5];
  }

  else if (v5 == MEMORY[0x1E69E9E20])
  {
    v4 = [WeakRetained clients];
    [v4 removeAllObjects];
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  listener = [(IOSurfaceRemoteServer *)self listener];
  xpc_connection_cancel(listener);

  v5.receiver = self;
  v5.super_class = IOSurfaceRemoteServer;
  [(IOSurfaceRemoteServer *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)shutdown
{
  listener = [(IOSurfaceRemoteServer *)self listener];
  xpc_connection_cancel(listener);
}

- (void)_handleClientConnection:(id)connection
{
  location[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  xpc_connection_get_pid(connectionCopy);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [IOSurfaceRemoteServer _handleClientConnection:];
  }

  objc_initWeak(location, self);
  v5 = [IOSurfaceRemoteRemoteClient alloc];
  queue = [(IOSurfaceRemoteServer *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__IOSurfaceRemoteServer__handleClientConnection___block_invoke;
  v11[3] = &unk_1E7A91A38;
  objc_copyWeak(&v12, location);
  v7 = [(IOSurfaceRemoteRemoteClient *)v5 initWithRemoteConnection:connectionCopy disconnectedQueue:queue disconnectedHandler:v11];

  queue2 = [(IOSurfaceRemoteServer *)self queue];
  dispatch_assert_queue_V2(queue2);

  clients = [(IOSurfaceRemoteServer *)self clients];
  [clients addObject:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(location);

  v10 = *MEMORY[0x1E69E9840];
}

void __49__IOSurfaceRemoteServer__handleClientConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleClientDisconnected:v3];
}

- (void)_handleClientDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  [disconnectedCopy pid];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [IOSurfaceRemoteServer _handleClientDisconnected:];
  }

  queue = [(IOSurfaceRemoteServer *)self queue];
  dispatch_assert_queue_V2(queue);

  clients = [(IOSurfaceRemoteServer *)self clients];
  [clients removeObject:disconnectedCopy];
}

- (void)_handleClientConnection:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleClientDisconnected:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end