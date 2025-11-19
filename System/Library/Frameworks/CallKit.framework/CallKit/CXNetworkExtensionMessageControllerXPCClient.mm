@interface CXNetworkExtensionMessageControllerXPCClient
- (CXNetworkExtensionMessageControllerXPCClient)init;
- (NSXPCConnection)connection;
- (void)dealloc;
- (void)invalidate;
- (void)sendNetworkExtensionMessage:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5;
- (void)sendNetworkExtensionPushToTalkMessage:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5;
- (void)setConnection:(id)a3;
@end

@implementation CXNetworkExtensionMessageControllerXPCClient

- (CXNetworkExtensionMessageControllerXPCClient)init
{
  v3.receiver = self;
  v3.super_class = CXNetworkExtensionMessageControllerXPCClient;
  result = [(CXNetworkExtensionMessageControllerXPCClient *)&v3 init];
  if (result)
  {
    result->_accessorLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CXNetworkExtensionMessageControllerXPCClient;
  [(CXNetworkExtensionMessageControllerXPCClient *)&v3 dealloc];
}

- (NSXPCConnection)connection
{
  os_unfair_lock_lock(&self->_accessorLock);
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.callkit.networkextension.messagecontrollerhost" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x1E696B0D0] cx_networkExtensionMessageControllerHostInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__CXNetworkExtensionMessageControllerXPCClient_connection__block_invoke;
    v11[3] = &unk_1E7C06E50;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__CXNetworkExtensionMessageControllerXPCClient_connection__block_invoke_4;
    v9[3] = &unk_1E7C06E50;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v9];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  v7 = connection;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v7;
}

void __58__CXNetworkExtensionMessageControllerXPCClient_connection__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for network extension message client %@", &v4, 0xCu);
    }

    [WeakRetained invalidate];
    [WeakRetained setConnection:0];
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __58__CXNetworkExtensionMessageControllerXPCClient_connection__block_invoke_4(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for network extension message client %@", &v4, 0xCu);
    }

    [WeakRetained setConnection:0];
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_connection != v5)
  {
    objc_storeStrong(&self->_connection, a3);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_accessorLock);
  [(NSXPCConnection *)self->_connection invalidate];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)sendNetworkExtensionMessage:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CXNetworkExtensionMessageControllerXPCClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __107__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionMessage_forBundleIdentifier_completion___block_invoke;
  v17[3] = &unk_1E7C07230;
  v12 = v8;
  v18 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionMessage_forBundleIdentifier_completion___block_invoke_6;
  v15[3] = &unk_1E7C07758;
  v16 = v12;
  v14 = v12;
  [v13 sendNetworkExtensionMessage:v10 forBundleIdentifier:v9 reply:v15];
}

void __107__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionMessage_forBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __107__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionMessage_forBundleIdentifier_completion___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __107__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionMessage_forBundleIdentifier_completion___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)sendNetworkExtensionPushToTalkMessage:(id)a3 forBundleIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CXNetworkExtensionMessageControllerXPCClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __117__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionPushToTalkMessage_forBundleIdentifier_completion___block_invoke;
  v17[3] = &unk_1E7C07230;
  v12 = v8;
  v18 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionPushToTalkMessage_forBundleIdentifier_completion___block_invoke_8;
  v15[3] = &unk_1E7C07758;
  v16 = v12;
  v14 = v12;
  [v13 sendNetworkExtensionPushToTalkMessage:v10 forBundleIdentifier:v9 reply:v15];
}

void __117__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionPushToTalkMessage_forBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __117__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionPushToTalkMessage_forBundleIdentifier_completion___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

uint64_t __117__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionPushToTalkMessage_forBundleIdentifier_completion___block_invoke_8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __107__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionMessage_forBundleIdentifier_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Could not send VoIP network extension message due to connection error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __117__CXNetworkExtensionMessageControllerXPCClient_sendNetworkExtensionPushToTalkMessage_forBundleIdentifier_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Could not send PushToTalk network extension message due to connection error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end