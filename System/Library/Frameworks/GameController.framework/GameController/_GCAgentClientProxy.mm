@interface _GCAgentClientProxy
+ (id)clientProxyWithConnection:(id)a3 server:(id)a4 userDefaultsProxy:(id)a5 gameIntentProxy:(id)a6;
- (GCRemoteUserDefaultsProxy)userDefaultsProxy;
- (_GCAgentClientProxy)init;
- (id)_initWithConnection:(id)a3 server:(id)a4 userDefaultsProxy:(id)a5 gameIntentProxy:(id)a6;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (void)_invalidate;
- (void)connectToGameIntentLauncherXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToUserDefaultsXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToVideoRelocationXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)observeUserDefaultsValueForKeyPath:(id)a3 change:(id)a4;
- (void)pingWithReply:(id)a3;
- (void)userDefaultsCheckIn:(id)a3;
@end

@implementation _GCAgentClientProxy

+ (id)clientProxyWithConnection:(id)a3 server:(id)a4 userDefaultsProxy:(id)a5 gameIntentProxy:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] _initWithConnection:v13 server:v12 userDefaultsProxy:v11 gameIntentProxy:v10];

  return v14;
}

- (id)_initWithConnection:(id)a3 server:(id)a4 userDefaultsProxy:(id)a5 gameIntentProxy:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v28.receiver = self;
  v28.super_class = _GCAgentClientProxy;
  v15 = [(_GCAgentClientProxy *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_server, a4);
    objc_storeStrong(&v16->_connection, a3);
    objc_storeWeak(&v16->_userDefaultsProxy, v13);
    objc_storeWeak(&v16->_gameIntentProxy, v14);
    v17 = objc_opt_new();
    invalidationHandlers = v16->_invalidationHandlers;
    v16->_invalidationHandlers = v17;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84___GCAgentClientProxy__initWithConnection_server_userDefaultsProxy_gameIntentProxy___block_invoke;
    aBlock[3] = &unk_1E8418C28;
    v19 = v16;
    v27 = v19;
    v20 = _Block_copy(aBlock);
    v21 = [(_GCIPCIncomingConnection *)v16->_connection addInvalidationHandler:v20];
    connectionInvalidationRegistration = v19->_connectionInvalidationRegistration;
    v19->_connectionInvalidationRegistration = v21;

    v23 = [(_GCIPCIncomingConnection *)v16->_connection addInterruptionHandler:v20];
    connectionInterruptedRegistration = v19->_connectionInterruptedRegistration;
    v19->_connectionInterruptedRegistration = v23;

    if (gc_isInternalBuild())
    {
      [_GCAgentClientProxy _initWithConnection:v19 server:? userDefaultsProxy:? gameIntentProxy:?];
    }
  }

  return v16;
}

- (_GCAgentClientProxy)init
{
  [(_GCAgentClientProxy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCAgentClientProxy.m" lineNumber:79 description:{@"%@ is being deallocated, but is still valid.", a2}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = atomic_load(&self->_invalid);
  if (v5)
  {
    v6 = " (invalid)";
  }

  else
  {
    v6 = "";
  }

  v7 = [(_GCIPCIncomingConnection *)self->_connection process];
  v8 = [v7 processIdentifier];
  v9 = [(_GCIPCIncomingConnection *)self->_connection process];
  v10 = [v9 bundleIdentifier];
  v11 = [v3 stringWithFormat:@"<%@%s client.pid: %i, client.bundleIdentifier: %@>", v4, v6, v8, v10];

  return v11;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = atomic_load(&self->_invalid);
  if (v5)
  {
    v6 = " (invalid)";
  }

  else
  {
    v6 = "";
  }

  v7 = [(_GCIPCIncomingConnection *)self->_connection process];
  v8 = [v7 processIdentifier];
  v9 = [(_GCIPCIncomingConnection *)self->_connection process];
  v10 = [v9 bundleIdentifier];
  v11 = [v3 stringWithFormat:@"<%@%s client.pid: %i, client.bundleIdentifier: %@>", v4, v6, v8, v10];

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = atomic_load(&self->_invalid);
  if (v6)
  {
    v7 = " (invalid)";
  }

  else
  {
    v7 = "";
  }

  v8 = [(_GCIPCIncomingConnection *)self->_connection process];
  v9 = [v8 processIdentifier];
  v10 = [(_GCIPCIncomingConnection *)self->_connection process];
  v11 = [v10 bundleIdentifier];
  v12 = [v3 stringWithFormat:@"<%@ %p%s client.pid: %i, client.bundleIdentifier: %@>", v5, self, v7, v9, v11];

  return v12;
}

- (void)_invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "Agent client proxy invalidated: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)pingWithReply:(id)a3
{
  v3 = a3;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __37___GCAgentClientProxy_pingWithReply___block_invoke;
  activity_block[3] = &unk_1E8419198;
  v6 = v3;
  v4 = v3;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Ping", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToUserDefaultsXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __76___GCAgentClientProxy_connectToUserDefaultsXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(Agent Client) Connect 'User Defaults XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToGameIntentLauncherXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __82___GCAgentClientProxy_connectToGameIntentLauncherXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(Agent Client) Connect 'Game Intent Launcher XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToVideoRelocationXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __79___GCAgentClientProxy_connectToVideoRelocationXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(Agent Client) Connect 'Video Relocation XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)userDefaultsCheckIn:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_userDefaultsProxy);
  [WeakRetained userDefaultsCheckIn:v4 effectiveUserIdentifier:{-[_GCIPCIncomingConnection peerEffectiveUserIdentifier](self->_connection, "peerEffectiveUserIdentifier")}];
}

- (void)observeUserDefaultsValueForKeyPath:(id)a3 change:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_userDefaultsProxy);
  [WeakRetained observeUserDefaultsValueForKeyPath:v7 change:v6];
}

- (GCRemoteUserDefaultsProxy)userDefaultsProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_userDefaultsProxy);

  return WeakRetained;
}

- (void)_initWithConnection:(uint64_t)a1 server:userDefaultsProxy:gameIntentProxy:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_debug_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEBUG, "Agent client proxy created: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end