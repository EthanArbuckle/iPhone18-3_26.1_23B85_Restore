@interface CXNetworkExtensionMessageControllerHostConnection
- (CXNetworkExtensionMessageControllerHostConnection)initWithConnection:(id)connection;
- (CXNetworkExtensionMessageControllerHostConnectionDelegate)delegate;
- (NSString)description;
- (void)dealloc;
- (void)invalidate;
- (void)sendNetworkExtensionMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)sendNetworkExtensionPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply;
- (void)setDelegate:(id)delegate;
@end

@implementation CXNetworkExtensionMessageControllerHostConnection

- (CXNetworkExtensionMessageControllerHostConnection)initWithConnection:(id)connection
{
  v24 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v21.receiver = self;
  v21.super_class = CXNetworkExtensionMessageControllerHostConnection;
  v6 = [(CXNetworkExtensionMessageControllerHostConnection *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    cx_applicationIdentifier = [connectionCopy cx_applicationIdentifier];
    applicationIdentifier = v7->_applicationIdentifier;
    v7->_applicationIdentifier = cx_applicationIdentifier;

    cx_capabilities = [connectionCopy cx_capabilities];
    capabilities = v7->_capabilities;
    v7->_capabilities = cx_capabilities;

    objc_storeStrong(&v7->_connection, connection);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    cx_networkExtensionMessageControllerHostInterface = [MEMORY[0x1E696B0D0] cx_networkExtensionMessageControllerHostInterface];
    [(NSXPCConnection *)v7->_connection setExportedInterface:cx_networkExtensionMessageControllerHostInterface];

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

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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
  connection = [(CXNetworkExtensionMessageControllerHostConnection *)self connection];
  [connection invalidate];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)sendNetworkExtensionMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply
{
  messageCopy = message;
  identifierCopy = identifier;
  replyCopy = reply;
  capabilities = [(CXNetworkExtensionMessageControllerHostConnection *)self capabilities];
  v12 = [capabilities containsObject:@"private-network-extension-message-api"];

  if (v12)
  {
    delegate = [(CXNetworkExtensionMessageControllerHostConnection *)self delegate];
    [delegate networkExtensionMessageControllerHostConnection:self didReceiveIncomingMessage:messageCopy forBundleIdentifier:identifierCopy];

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

  replyCopy[2](replyCopy, v12, v14);
}

- (void)sendNetworkExtensionPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier reply:(id)reply
{
  messageCopy = message;
  identifierCopy = identifier;
  replyCopy = reply;
  capabilities = [(CXNetworkExtensionMessageControllerHostConnection *)self capabilities];
  v12 = [capabilities containsObject:@"private-network-extension-message-api"];

  if (v12)
  {
    delegate = [(CXNetworkExtensionMessageControllerHostConnection *)self delegate];
    [delegate networkExtensionMessageControllerHostConnection:self didReceiveIncomingPushToTalkMessage:messageCopy forBundleIdentifier:identifierCopy];

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

  replyCopy[2](replyCopy, v12, v14);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  applicationIdentifier = [(CXNetworkExtensionMessageControllerHostConnection *)self applicationIdentifier];
  capabilities = [(CXNetworkExtensionMessageControllerHostConnection *)self capabilities];
  v7 = [v3 stringWithFormat:@"<%@ %p applicationIdentifier=%@ capabilities=%@", v4, self, applicationIdentifier, capabilities];

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