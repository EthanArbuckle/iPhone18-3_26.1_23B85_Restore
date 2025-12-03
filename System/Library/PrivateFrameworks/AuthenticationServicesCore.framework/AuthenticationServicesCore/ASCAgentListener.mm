@interface ASCAgentListener
- (ASCAgentListener)initWithPublicKeyCredentialManager:(id)manager;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ASCAgentListener

- (ASCAgentListener)initWithPublicKeyCredentialManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = ASCAgentListener;
  v6 = [(ASCAgentListener *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x1E696B0D8]);
    v8 = ASCAgentServiceName();
    v9 = [v7 initWithMachServiceName:v8];
    listener = v6->_listener;
    v6->_listener = v9;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    objc_storeStrong(&v6->_publicKeyCredentialManager, manager);
    v11 = objc_alloc_init(_TtC26AuthenticationServicesCore30ASPasswordSignInEventCollector);
    signInEventCollector = v6->_signInEventCollector;
    v6->_signInEventCollector = v11;

    [(NSXPCListener *)v6->_listener resume];
    v13 = v6;
  }

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v25 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = +[ASCAgentInterface xpcInterface];
  [connectionCopy setExportedInterface:v8];

  v9 = [ASCAgent alloc];
  v10 = +[ASCAuthorizationTrafficController sharedInstance];
  v11 = [(ASCAgent *)v9 initWithTrafficController:v10 connection:connectionCopy publicKeyCredentialManager:self->_publicKeyCredentialManager signInEventCollector:self->_signInEventCollector];

  [connectionCopy setExportedObject:v11];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    *buf = 0u;
    v24 = 0u;
  }

  v12 = WBSApplicationIdentifierFromAuditToken();
  v13 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v12;
    _os_log_impl(&dword_1C20AD000, v13, OS_LOG_TYPE_DEFAULT, "Received connection from %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, v11);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __55__ASCAgentListener_listener_shouldAcceptNewConnection___block_invoke;
  v20 = &unk_1E815FFA8;
  v14 = v12;
  v21 = v14;
  objc_copyWeak(&v22, buf);
  [connectionCopy setInvalidationHandler:&v17];
  [connectionCopy resume];
  objc_destroyWeak(&v22);

  objc_destroyWeak(buf);
  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

void __55__ASCAgentListener_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C20AD000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ disconnected.", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancelCurrentRequest];

  v5 = *MEMORY[0x1E69E9840];
}

@end