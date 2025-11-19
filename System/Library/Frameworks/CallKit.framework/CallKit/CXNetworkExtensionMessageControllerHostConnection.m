@interface CXNetworkExtensionMessageControllerHostConnection
- (CXNetworkExtensionMessageControllerHostConnection)initWithConnection:(id)a3;
- (CXNetworkExtensionMessageControllerHostConnectionDelegate)delegate;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
- (void)sendNetworkExtensionMessage:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5;
- (void)sendNetworkExtensionPushToTalkMessage:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5;
- (void)setDelegate:(id)a3;
@end

@implementation CXNetworkExtensionMessageControllerHostConnection

- (CXNetworkExtensionMessageControllerHostConnection)initWithConnection:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CXNetworkExtensionMessageControllerHostConnection;
  v6 = [(CXNetworkExtensionMessageControllerHostConnection *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    v8 = [v5 cx_applicationIdentifier];
    applicationIdentifier = v7->_applicationIdentifier;
    v7->_applicationIdentifier = v8;

    v10 = [v5 cx_capabilities];
    capabilities = v7->_capabilities;
    v7->_capabilities = v10;

    objc_storeStrong(&v7->_connection, a3);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    v12 = [MEMORY[0x1E696B0D0] cx_networkExtensionMessageControllerHostInterface];
    [(NSXPCConnection *)v7->_connection setExportedInterface:v12];

    objc_initWeak(&location, v7);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__CXNetworkExtensionMessageControllerHostConnection_initWithConnection___block_invoke;
    v18[3] = &unk_1E7C06E50;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v7->_connection setInterruptionHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__CXNetworkExtensionMessageControllerHostConnection_initWithConnection___block_invoke_2;
    v16[3] = &unk_1E7C06E50;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v7->_connection setInvalidationHandler:v16];
    [(NSXPCConnection *)v7->_connection resume];
    v13 = CXDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "Created %@", buf, 0xCu);
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

void __72__CXNetworkExtensionMessageControllerHostConnection_initWithConnection___block_invoke(uint64_t a1)
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
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for network extension message controller host %@", &v4, 0xCu);
    }

    [WeakRetained invalidate];
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __72__CXNetworkExtensionMessageControllerHostConnection_initWithConnection___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for network extension message controller host %@", &v5, 0xCu);
    }

    v3 = [WeakRetained delegate];
    [v3 networkExtensionMessageControllerHostConnectionInvalidated:WeakRetained];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CXNetworkExtensionMessageControllerHostConnection;
  [(CXNetworkExtensionMessageControllerHostConnection *)&v3 dealloc];
}

- (CXNetworkExtensionMessageControllerHostConnectionDelegate)delegate
{
  os_unfair_lock_lock(&self->_accessorLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_accessorLock);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = [(CXNetworkExtensionMessageControllerHostConnection *)self connection];
  [v3 invalidate];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)sendNetworkExtensionMessage:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CXNetworkExtensionMessageControllerHostConnection *)self capabilities];
  v12 = [v11 containsObject:@"private-network-extension-message-api"];

  if (v12)
  {
    v13 = [(CXNetworkExtensionMessageControllerHostConnection *)self delegate];
    [v13 networkExtensionMessageControllerHostConnection:self didReceiveIncomingMessage:v8 forBundleIdentifier:v9];

    v14 = 0;
  }

  else
  {
    v15 = CXDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CXNetworkExtensionMessageControllerHostConnection sendNetworkExtensionMessage:v15 forBundleIdentifier:? reply:?];
    }

    v14 = [MEMORY[0x1E696ABC0] cx_requestTransactionErrorWithCode:1];
  }

  v10[2](v10, v12, v14);
}

- (void)sendNetworkExtensionPushToTalkMessage:(id)a3 forBundleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CXNetworkExtensionMessageControllerHostConnection *)self capabilities];
  v12 = [v11 containsObject:@"private-network-extension-message-api"];

  if (v12)
  {
    v13 = [(CXNetworkExtensionMessageControllerHostConnection *)self delegate];
    [v13 networkExtensionMessageControllerHostConnection:self didReceiveIncomingPushToTalkMessage:v8 forBundleIdentifier:v9];

    v14 = 0;
  }

  else
  {
    v15 = CXDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CXNetworkExtensionMessageControllerHostConnection sendNetworkExtensionMessage:v15 forBundleIdentifier:? reply:?];
    }

    v14 = [MEMORY[0x1E696ABC0] cx_requestTransactionErrorWithCode:1];
  }

  v10[2](v10, v12, v14);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXNetworkExtensionMessageControllerHostConnection *)self applicationIdentifier];
  v6 = [(CXNetworkExtensionMessageControllerHostConnection *)self capabilities];
  v7 = [v3 stringWithFormat:@"<%@ %p applicationIdentifier=%@ capabilities=%@", v4, self, v5, v6];

  return v7;
}

- (void)sendNetworkExtensionMessage:(uint64_t)a1 forBundleIdentifier:(NSObject *)a2 reply:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Connection is not entitled to use private API: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end