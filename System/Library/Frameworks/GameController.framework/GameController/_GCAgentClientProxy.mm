@interface _GCAgentClientProxy
+ (id)clientProxyWithConnection:(id)connection server:(id)server userDefaultsProxy:(id)proxy gameIntentProxy:(id)intentProxy;
- (GCRemoteUserDefaultsProxy)userDefaultsProxy;
- (_GCAgentClientProxy)init;
- (id)_initWithConnection:(id)connection server:(id)server userDefaultsProxy:(id)proxy gameIntentProxy:(id)intentProxy;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (void)_invalidate;
- (void)connectToGameIntentLauncherXPCProxyServiceWithClient:(id)client reply:(id)reply;
- (void)connectToUserDefaultsXPCProxyServiceWithClient:(id)client reply:(id)reply;
- (void)connectToVideoRelocationXPCProxyServiceWithClient:(id)client reply:(id)reply;
- (void)dealloc;
- (void)observeUserDefaultsValueForKeyPath:(id)path change:(id)change;
- (void)pingWithReply:(id)reply;
- (void)userDefaultsCheckIn:(id)in;
@end

@implementation _GCAgentClientProxy

+ (id)clientProxyWithConnection:(id)connection server:(id)server userDefaultsProxy:(id)proxy gameIntentProxy:(id)intentProxy
{
  intentProxyCopy = intentProxy;
  proxyCopy = proxy;
  serverCopy = server;
  connectionCopy = connection;
  v14 = [[self alloc] _initWithConnection:connectionCopy server:serverCopy userDefaultsProxy:proxyCopy gameIntentProxy:intentProxyCopy];

  return v14;
}

- (id)_initWithConnection:(id)connection server:(id)server userDefaultsProxy:(id)proxy gameIntentProxy:(id)intentProxy
{
  connectionCopy = connection;
  serverCopy = server;
  proxyCopy = proxy;
  intentProxyCopy = intentProxy;
  v28.receiver = self;
  v28.super_class = _GCAgentClientProxy;
  v15 = [(_GCAgentClientProxy *)&v28 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_server, server);
    objc_storeStrong(&v16->_connection, connection);
    objc_storeWeak(&v16->_userDefaultsProxy, proxyCopy);
    objc_storeWeak(&v16->_gameIntentProxy, intentProxyCopy);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"GCAgentClientProxy.m" lineNumber:79 description:{@"%@ is being deallocated, but is still valid.", a2}];
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

  process = [(_GCIPCIncomingConnection *)self->_connection process];
  processIdentifier = [process processIdentifier];
  process2 = [(_GCIPCIncomingConnection *)self->_connection process];
  bundleIdentifier = [process2 bundleIdentifier];
  v11 = [v3 stringWithFormat:@"<%@%s client.pid: %i, client.bundleIdentifier: %@>", v4, v6, processIdentifier, bundleIdentifier];

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

  process = [(_GCIPCIncomingConnection *)self->_connection process];
  processIdentifier = [process processIdentifier];
  process2 = [(_GCIPCIncomingConnection *)self->_connection process];
  bundleIdentifier = [process2 bundleIdentifier];
  v11 = [v3 stringWithFormat:@"<%@%s client.pid: %i, client.bundleIdentifier: %@>", v4, v6, processIdentifier, bundleIdentifier];

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

  process = [(_GCIPCIncomingConnection *)self->_connection process];
  processIdentifier = [process processIdentifier];
  process2 = [(_GCIPCIncomingConnection *)self->_connection process];
  bundleIdentifier = [process2 bundleIdentifier];
  v12 = [v3 stringWithFormat:@"<%@ %p%s client.pid: %i, client.bundleIdentifier: %@>", v5, self, v7, processIdentifier, bundleIdentifier];

  return v12;
}

- (void)_invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "Agent client proxy invalidated: %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)pingWithReply:(id)reply
{
  replyCopy = reply;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __37___GCAgentClientProxy_pingWithReply___block_invoke;
  activity_block[3] = &unk_1E8419198;
  v6 = replyCopy;
  v4 = replyCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Ping", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToUserDefaultsXPCProxyServiceWithClient:(id)client reply:(id)reply
{
  clientCopy = client;
  replyCopy = reply;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __76___GCAgentClientProxy_connectToUserDefaultsXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  selfCopy = self;
  v13 = replyCopy;
  v11 = clientCopy;
  v8 = replyCopy;
  v9 = clientCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Agent Client) Connect 'User Defaults XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToGameIntentLauncherXPCProxyServiceWithClient:(id)client reply:(id)reply
{
  clientCopy = client;
  replyCopy = reply;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __82___GCAgentClientProxy_connectToGameIntentLauncherXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  selfCopy = self;
  v13 = replyCopy;
  v11 = clientCopy;
  v8 = replyCopy;
  v9 = clientCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Agent Client) Connect 'Game Intent Launcher XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToVideoRelocationXPCProxyServiceWithClient:(id)client reply:(id)reply
{
  clientCopy = client;
  replyCopy = reply;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __79___GCAgentClientProxy_connectToVideoRelocationXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  selfCopy = self;
  v13 = replyCopy;
  v11 = clientCopy;
  v8 = replyCopy;
  v9 = clientCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Agent Client) Connect 'Video Relocation XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)userDefaultsCheckIn:(id)in
{
  inCopy = in;
  WeakRetained = objc_loadWeakRetained(&self->_userDefaultsProxy);
  [WeakRetained userDefaultsCheckIn:inCopy effectiveUserIdentifier:{-[_GCIPCIncomingConnection peerEffectiveUserIdentifier](self->_connection, "peerEffectiveUserIdentifier")}];
}

- (void)observeUserDefaultsValueForKeyPath:(id)path change:(id)change
{
  changeCopy = change;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_userDefaultsProxy);
  [WeakRetained observeUserDefaultsValueForKeyPath:pathCopy change:changeCopy];
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