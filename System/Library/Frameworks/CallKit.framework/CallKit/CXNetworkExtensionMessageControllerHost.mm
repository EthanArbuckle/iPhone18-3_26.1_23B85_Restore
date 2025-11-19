@interface CXNetworkExtensionMessageControllerHost
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (CXNetworkExtensionMessageControllerHost)init;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)networkExtensionMessageControllerHostConnection:(id)a3 didReceiveIncomingMessage:(id)a4 forBundleIdentifier:(id)a5;
- (void)networkExtensionMessageControllerHostConnection:(id)a3 didReceiveIncomingPushToTalkMessage:(id)a4 forBundleIdentifier:(id)a5;
- (void)networkExtensionMessageControllerHostConnectionInvalidated:(id)a3;
- (void)removeDelegate:(id)a3;
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

    v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateToQueue = v3->_delegateToQueue;
    v3->_delegateToQueue = v6;

    v8 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.callkit.networkextension.messagecontrollerhost"];
    xpcListener = v3->_xpcListener;
    v3->_xpcListener = v8;

    [(NSXPCListener *)v3->_xpcListener setDelegate:v3];
    [(NSXPCListener *)v3->_xpcListener resume];
  }

  return v3;
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v9 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v7 = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
  if (v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = MEMORY[0x1E69E96A0];
  }

  [v7 setObject:v8 forKey:v6];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
  [v5 removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)networkExtensionMessageControllerHostConnectionInvalidated:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [(CXNetworkExtensionMessageControllerHost *)self connections];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)networkExtensionMessageControllerHostConnection:(id)a3 didReceiveIncomingMessage:(id)a4 forBundleIdentifier:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
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
        v14 = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
        v15 = [v14 objectForKey:v13];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __137__CXNetworkExtensionMessageControllerHost_networkExtensionMessageControllerHostConnection_didReceiveIncomingMessage_forBundleIdentifier___block_invoke;
        block[3] = &unk_1E7C06F98;
        block[4] = v13;
        block[5] = self;
        v19 = v7;
        v20 = v8;
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

- (void)networkExtensionMessageControllerHostConnection:(id)a3 didReceiveIncomingPushToTalkMessage:(id)a4 forBundleIdentifier:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
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
        v14 = [(CXNetworkExtensionMessageControllerHost *)self delegateToQueue];
        v15 = [v14 objectForKey:v13];

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __147__CXNetworkExtensionMessageControllerHost_networkExtensionMessageControllerHostConnection_didReceiveIncomingPushToTalkMessage_forBundleIdentifier___block_invoke;
        block[3] = &unk_1E7C06F98;
        block[4] = v13;
        block[5] = self;
        v19 = v7;
        v20 = v8;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = CXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Asked to accept new connection from %@", &v11, 0xCu);
  }

  v7 = [[CXNetworkExtensionMessageControllerHostConnection alloc] initWithConnection:v5];
  [(CXNetworkExtensionMessageControllerHostConnection *)v7 setDelegate:self];
  os_unfair_lock_lock(&self->_accessorLock);
  v8 = [(CXNetworkExtensionMessageControllerHost *)self connections];
  [v8 addObject:v7];

  os_unfair_lock_unlock(&self->_accessorLock);
  v9 = *MEMORY[0x1E69E9840];
  return 1;
}

@end