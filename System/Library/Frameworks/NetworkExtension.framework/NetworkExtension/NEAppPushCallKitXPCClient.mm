@interface NEAppPushCallKitXPCClient
- (NEAppPushCallKitXPCClient)init;
- (void)dealloc;
- (void)registerVoIPMessagePayload;
- (void)setConnection:(uint64_t)connection;
- (void)voipNetworkExtensionPayloadReceived:(id)received mustPostCall:(BOOL)call withCompletionHandler:(id)handler;
- (void)voipNetworkExtensionRegistrationFailed;
@end

@implementation NEAppPushCallKitXPCClient

- (void)voipNetworkExtensionRegistrationFailed
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@ registration with CallKit failed", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)voipNetworkExtensionPayloadReceived:(id)received mustPostCall:(BOOL)call withCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  handlerCopy = handler;
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *v20 = 138412546;
    *&v20[4] = self;
    *&v20[12] = 2112;
    *&v20[14] = receivedCopy;
    _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "%@ callkit delivered payload %@", v20, 0x16u);
  }

  v10 = receivedCopy;
  v11 = handlerCopy;
  v12 = objc_opt_self();
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v10];
    v14 = [v13 objectForKeyedSubscript:@"ap-push-config-uuid"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = +[NEAppPushManager loadedManagers];
      v16 = ne_log_obj();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
      if (v15)
      {
        if (v17)
        {
          v19 = [v15 count];
          *v20 = 134217984;
          *&v20[4] = v19;
          _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "loaded manager count %zd", v20, 0xCu);
        }

        *v20 = MEMORY[0x1E69E9820];
        *&v20[8] = 3221225472;
        *&v20[16] = __69__NEAppPushManager_deliverIncomingCallPayload_withCompletionHandler___block_invoke;
        v21 = &unk_1E7F07A28;
        v22 = v14;
        v25 = v12;
        v23 = v13;
        v24 = v11;
        [v15 enumerateKeysAndObjectsUsingBlock:v20];

        v16 = v22;
      }

      else if (v17)
      {
        *v20 = 0;
        _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "no loaded managers found", v20, 2u);
      }
    }

    else
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v20 = 138412546;
        *&v20[4] = v12;
        *&v20[12] = 2112;
        *&v20[14] = @"ap-push-config-uuid";
        _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "%@ received payload without [%@] key", v20, 0x16u);
      }
    }
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v20 = 138412290;
      *&v20[4] = v12;
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "%@ received invalid incoming call payload", v20, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  notify_cancel(self->_callKitToken);
  v3.receiver = self;
  v3.super_class = NEAppPushCallKitXPCClient;
  [(NEAppPushCallKitXPCClient *)&v3 dealloc];
}

- (NEAppPushCallKitXPCClient)init
{
  v11.receiver = self;
  v11.super_class = NEAppPushCallKitXPCClient;
  v2 = [(NEAppPushCallKitXPCClient *)&v11 init];
  v3 = v2;
  if (v2)
  {
    connection = v2->_connection;
    v2->_connection = 0;

    v3->_lock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v3);
    v5 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__NEAppPushCallKitXPCClient_init__block_invoke;
    v8[3] = &unk_1E7F0AA30;
    objc_copyWeak(&v9, &location);
    notify_register_dispatch("com.apple.pushkit.launch.voip", &v3->_callKitToken, v5, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __33__NEAppPushCallKitXPCClient_init__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "com.apple.pushkit.launch.voip";
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "Received notification %s", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [*(v4 + 16) invalidate];
    os_unfair_lock_unlock((v4 + 8));
    [NEAppPushCallKitXPCClient setConnection:v4];
    [(NEAppPushCallKitXPCClient *)v4 registerVoIPMessagePayload];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setConnection:(uint64_t)connection
{
  os_unfair_lock_lock((connection + 8));
  if (*(connection + 16))
  {
    objc_storeStrong((connection + 16), 0);
  }

  os_unfair_lock_unlock((connection + 8));
}

- (void)registerVoIPMessagePayload
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock((self + 8));
    v2 = *(self + 16);
    if (!v2)
    {
      v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.callkit.networkextension.voip" options:0];
      v4 = *(self + 16);
      *(self + 16) = v3;

      v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38CF330];
      [*(self + 16) setExportedInterface:v5];

      [*(self + 16) setExportedObject:self];
      v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38D50B0];
      [*(self + 16) setRemoteObjectInterface:v6];

      objc_initWeak(&location, self);
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v18 = __39__NEAppPushCallKitXPCClient_connection__block_invoke;
      v19 = &unk_1E7F0AA58;
      objc_copyWeak(v20, &location);
      [*(self + 16) setInterruptionHandler:&buf];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __39__NEAppPushCallKitXPCClient_connection__block_invoke_13;
      v14 = &unk_1E7F0AA58;
      objc_copyWeak(&v15, &location);
      [*(self + 16) setInvalidationHandler:&v11];
      [*(self + 16) resume];
      objc_destroyWeak(&v15);
      objc_destroyWeak(v20);
      objc_destroyWeak(&location);
      v2 = *(self + 16);
    }

    v7 = v2;
    os_unfair_lock_unlock((self + 8));
    remoteObjectProxy = [v7 remoteObjectProxy];
    [remoteObjectProxy registerVoIPNetworkExtension];

    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "%@ registered with CallKit", &buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __39__NEAppPushCallKitXPCClient_connection__block_invoke(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "CallKit xpc connection interrupted", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 2);
    [*(v4 + 16) invalidate];
    os_unfair_lock_unlock((v4 + 8));
    [NEAppPushCallKitXPCClient setConnection:v4];
  }
}

void __39__NEAppPushCallKitXPCClient_connection__block_invoke_13(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "CallKit xpc connection invalidated", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [NEAppPushCallKitXPCClient setConnection:?];
  }
}

@end