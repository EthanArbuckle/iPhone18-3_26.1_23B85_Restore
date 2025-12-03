@interface CXNetworkExtensionMessageControllerHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CXNetworkExtensionMessageControllerHost)init;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)networkExtensionMessageControllerHostConnection:(id)connection didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier;
- (void)networkExtensionMessageControllerHostConnection:(id)connection didReceiveIncomingPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier;
- (void)networkExtensionMessageControllerHostConnectionInvalidated:(id)invalidated;
- (void)removeDelegate:(id)delegate;
@end

@implementation CXNetworkExtensionMessageControllerHost

- (CXNetworkExtensionMessageControllerHost)init
{
  v11.receiver = self;
  v11.super_class = CXNetworkExtensionMessageControllerHost;
  v2 = [(CXNetworkExtensionMessageControllerHost *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    connections = v3->_connections;
    v3->_connections = v4;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v3->_delegateToQueue;
    v3->_delegateToQueue = weakToStrongObjectsMapTable;

    v8 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.callkit.networkextension.messagecontrollerhost"];
    xpcListener = v3->_xpcListener;
    v3->_xpcListener = v8;

    [(NSXPCListener *)v3->_xpcListener setDelegate:v3];
    [(NSXPCListener *)v3->_xpcListener resume];
  }

  return v3;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  delegateToQueue = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
  if (queueCopy)
  {
    v8 = queueCopy;
  }

  else
  {
    v8 = MEMORY[0x1E69E96A0];
  }

  [delegateToQueue setObject:v8 forKey:delegateCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_accessorLock);
  delegateToQueue = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
  [delegateToQueue removeObjectForKey:delegateCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)networkExtensionMessageControllerHostConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  os_unfair_lock_lock(&self->_accessorLock);
  connections = [(CXNetworkExtensionMessageControllerHost *)self connections];
  [connections removeObject:invalidatedCopy];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)networkExtensionMessageControllerHostConnection:(id)connection didReceiveIncomingMessage:(id)message forBundleIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        delegateToQueue = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
        v15 = [delegateToQueue objectForKey:v13];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __137__CXNetworkExtensionMessageControllerHost_networkExtensionMessageControllerHostConnection_didReceiveIncomingMessage_forBundleIdentifier___block_invoke;
        block[3] = &unk_1E7C06F98;
        block[4] = v13;
        block[5] = self;
        v19 = messageCopy;
        v20 = identifierCopy;
        dispatch_async(v15, block);

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)networkExtensionMessageControllerHostConnection:(id)connection didReceiveIncomingPushToTalkMessage:(id)message forBundleIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        delegateToQueue = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
        v15 = [delegateToQueue objectForKey:v13];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __147__CXNetworkExtensionMessageControllerHost_networkExtensionMessageControllerHostConnection_didReceiveIncomingPushToTalkMessage_forBundleIdentifier___block_invoke;
        block[3] = &unk_1E7C06F98;
        block[4] = v13;
        block[5] = self;
        v19 = messageCopy;
        v20 = identifierCopy;
        dispatch_async(v15, block);

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v13 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = CXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = connectionCopy;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Asked to accept new connection from %@", &v11, 0xCu);
  }

  v7 = [[CXNetworkExtensionMessageControllerHostConnection alloc] initWithConnection:connectionCopy];
  [(CXNetworkExtensionMessageControllerHostConnection *)v7 setDelegate:self];
  os_unfair_lock_lock(&self->_accessorLock);
  connections = [(CXNetworkExtensionMessageControllerHost *)self connections];
  [connections addObject:v7];

  os_unfair_lock_unlock(&self->_accessorLock);
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

@end