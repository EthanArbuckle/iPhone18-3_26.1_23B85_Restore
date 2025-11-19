@interface AFFlowServiceConnection
+ (id)sharedConnection;
- (id)_connection;
- (id)_init;
- (void)_clearConnection;
- (void)invokeMethodOnRemoteWithBlock:(id)a3 onError:(id)a4;
@end

@implementation AFFlowServiceConnection

- (id)_connection
{
  v17 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (!connection)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *location = 136315394;
      *&location[4] = "[AFFlowServiceConnection _connection]";
      v15 = 2112;
      v16 = 0;
      _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s created new connection: %@", location, 0x16u);
    }

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.assistant.flow_service" options:0];
    v6 = self->_connection;
    self->_connection = v5;

    [(NSXPCConnection *)self->_connection _setQueue:self->_queue];
    objc_initWeak(location, self);
    v7 = self->_connection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __38__AFFlowServiceConnection__connection__block_invoke;
    v12[3] = &unk_1E7348A80;
    objc_copyWeak(&v13, location);
    [(NSXPCConnection *)v7 setInvalidationHandler:v12];
    v8 = self->_connection;
    v9 = AFFlowServiceXPCInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
    connection = self->_connection;
  }

  v10 = *MEMORY[0x1E69E9840];

  return connection;
}

void __38__AFFlowServiceConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearConnection];
}

- (void)_clearConnection
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    connection = self->_connection;
    v7 = 136315394;
    v8 = "[AFFlowServiceConnection _clearConnection]";
    v9 = 2112;
    v10 = connection;
    _os_log_debug_impl(&dword_1912FE000, v3, OS_LOG_TYPE_DEBUG, "%s cleared connection: %@", &v7, 0x16u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  v4 = self->_connection;
  self->_connection = 0;

  v5 = *MEMORY[0x1E69E9840];
}

- (void)invokeMethodOnRemoteWithBlock:(id)a3 onError:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFFlowServiceConnection_invokeMethodOnRemoteWithBlock_onError___block_invoke;
  block[3] = &unk_1E7342078;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

void __65__AFFlowServiceConnection_invokeMethodOnRemoteWithBlock_onError___block_invoke(uint64_t a1)
{
  ++*(*(a1 + 32) + 16);
  v2 = [AFSafetyBlock alloc];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__AFFlowServiceConnection_invokeMethodOnRemoteWithBlock_onError___block_invoke_2;
  v15[3] = &unk_1E7345450;
  v15[4] = *(a1 + 32);
  v3 = [(AFSafetyBlock *)v2 initWithBlock:v15];
  v4 = [*(a1 + 32) _connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__AFFlowServiceConnection_invokeMethodOnRemoteWithBlock_onError___block_invoke_3;
  v12[3] = &unk_1E7348AD0;
  v14 = *(a1 + 40);
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];

  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__AFFlowServiceConnection_invokeMethodOnRemoteWithBlock_onError___block_invoke_5;
  v10[3] = &unk_1E7349860;
  v10[4] = *(a1 + 32);
  v11 = v5;
  v8 = *(v7 + 16);
  v9 = v5;
  v8(v7, v6, v10);
}

void *__65__AFFlowServiceConnection_invokeMethodOnRemoteWithBlock_onError___block_invoke_2(uint64_t a1)
{
  --*(*(a1 + 32) + 16);
  result = *(a1 + 32);
  if (!result[2])
  {
    return [result _clearConnection];
  }

  return result;
}

void __65__AFFlowServiceConnection_invokeMethodOnRemoteWithBlock_onError___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[AFFlowServiceConnection invokeMethodOnRemoteWithBlock:onError:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s Error accessing remote proxy: %@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invoke];

  v5 = *MEMORY[0x1E69E9840];
}

void __65__AFFlowServiceConnection_invokeMethodOnRemoteWithBlock_onError___block_invoke_5(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__AFFlowServiceConnection_invokeMethodOnRemoteWithBlock_onError___block_invoke_2_6;
  block[3] = &unk_1E73497C8;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = AFFlowServiceConnection;
  v2 = [(AFFlowServiceConnection *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INTERACTIVE, 0);

    v5 = dispatch_queue_create("AFFlowServiceConnection", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)sharedConnection
{
  if (sharedConnection_onceToken != -1)
  {
    dispatch_once(&sharedConnection_onceToken, &__block_literal_global_2100);
  }

  v3 = sharedConnection_sConnection;

  return v3;
}

void __43__AFFlowServiceConnection_sharedConnection__block_invoke()
{
  v0 = [[AFFlowServiceConnection alloc] _init];
  v1 = sharedConnection_sConnection;
  sharedConnection_sConnection = v0;
}

@end