@interface GCLightXPCProxyServerEndpoint
- (BOOL)acceptClient:(id)client onConnection:(id)connection error:(id *)error;
- (GCLightXPCProxyServerEndpoint)initWithIdentifier:(id)identifier initialValue:(id)value;
- (GCLightXPCProxyServerEndpoint)initWithInitialValue:(id)value;
- (GCLightXPCProxyServerEndpointDelegate)delegate;
- (_GCControllerComponentDescription)receiverDescription;
- (void)fetchLightWithReply:(id)reply;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateClient;
- (void)invalidateConnection;
- (void)newLight:(id)light;
- (void)setLight:(id)light;
@end

@implementation GCLightXPCProxyServerEndpoint

- (GCLightXPCProxyServerEndpoint)initWithIdentifier:(id)identifier initialValue:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = GCLightXPCProxyServerEndpoint;
  v8 = [(GCLightXPCProxyServerEndpoint *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_light, value);
  }

  return v8;
}

- (GCLightXPCProxyServerEndpoint)initWithInitialValue:(id)value
{
  v4 = MEMORY[0x1E696AFB0];
  valueCopy = value;
  uUID = [v4 UUID];
  v7 = [(GCLightXPCProxyServerEndpoint *)self initWithIdentifier:uUID initialValue:valueCopy];

  return v7;
}

- (_GCControllerComponentDescription)receiverDescription
{
  v2 = [[GCLightXPCProxyClientEndpointDescription alloc] initWithIdentifier:self->_identifier initialLight:self->_light];

  return v2;
}

- (void)invalidateClient
{
  if (gc_isInternalBuild())
  {
    [GCBatteryXPCProxyServerEndpoint invalidateClient];
  }

  clientEndpoint = self->_clientEndpoint;
  connectionInterruptionRegistration = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = 0;
  v5 = clientEndpoint;

  connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = 0;

  connection = self->_connection;
  self->_connection = 0;

  v8 = self->_clientEndpoint;
  self->_clientEndpoint = 0;

  [(GCLightXPCProxyRemoteClientEndpointInterface *)v5 invalidateConnection];
}

- (BOOL)acceptClient:(id)client onConnection:(id)connection error:(id *)error
{
  clientCopy = client;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  connectionInterruptionRegistration = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = 0;

  connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = 0;

  connection = self->_connection;
  self->_connection = 0;

  clientEndpoint = self->_clientEndpoint;
  self->_clientEndpoint = 0;

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __65__GCLightXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke;
  v24 = &unk_1E8418D18;
  objc_copyWeak(&v25, &location);
  v14 = _Block_copy(&v21);
  v15 = [connectionCopy addInterruptionHandler:{v14, v21, v22, v23, v24}];
  v16 = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = v15;

  v17 = [connectionCopy addInvalidationHandler:v14];
  v18 = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = v17;

  objc_storeStrong(&self->_connection, connection);
  objc_storeStrong(&self->_clientEndpoint, client);
  self->_pendingUpdates = 0;
  if (gc_isInternalBuild())
  {
    v20 = getGCLogger();
    [GCLightXPCProxyServerEndpoint acceptClient:v20 onConnection:? error:?];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return 1;
}

void __65__GCLightXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (gc_isInternalBuild())
    {
      __64__GCBatteryXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke_cold_1();
    }

    v2 = WeakRetained[4];
    WeakRetained[4] = 0;

    v3 = WeakRetained[3];
    WeakRetained[3] = 0;

    v4 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

- (void)setLight:(id)light
{
  lightCopy = light;
  if (self->_light != lightCopy)
  {
    objc_storeStrong(&self->_light, light);
    v6 = self->_clientEndpoint;
    if (v6)
    {
      v7 = self->_pendingUpdates + 1;
      self->_pendingUpdates = v7;
      if (v7 <= 6)
      {
        isInternalBuild = gc_isInternalBuild();
        if (v7 == 6)
        {
          if (isInternalBuild)
          {
            [GCLightXPCProxyServerEndpoint setLight:];
          }

          [(GCLightXPCProxyRemoteClientEndpointInterface *)v6 refreshLight];
        }

        else
        {
          if (isInternalBuild)
          {
            [GCLightXPCProxyServerEndpoint setLight:];
          }

          [(GCLightXPCProxyRemoteClientEndpointInterface *)v6 newLight:self->_light];
          if (self->_pendingUpdates == 3)
          {
            connection = self->_connection;
            v10[0] = MEMORY[0x1E69E9820];
            v10[1] = 3221225472;
            v10[2] = __42__GCLightXPCProxyServerEndpoint_setLight___block_invoke;
            v10[3] = &unk_1E8418C28;
            v10[4] = self;
            [(_GCIPCEndpointConnection *)connection scheduleSendBarrierBlock:v10];
          }
        }
      }
    }
  }
}

- (void)newLight:(id)light
{
  lightCopy = light;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__GCLightXPCProxyServerEndpoint_newLight___block_invoke;
  v6[3] = &unk_1E8418C50;
  v7 = lightCopy;
  selfCopy = self;
  v5 = lightCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Light XPC Proxy Server Endpoint) New Light", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __42__GCLightXPCProxyServerEndpoint_newLight___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(v2 + 56);
  v4 = (v2 + 56);
  if (v3 != v5)
  {
    objc_storeStrong(v4, v3);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
    [WeakRetained lightXPCProxyServerEndpoint:*(a1 + 40) didReceiveLightChange:*(a1 + 32)];
  }
}

- (void)fetchLightWithReply:(id)reply
{
  replyCopy = reply;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__GCLightXPCProxyServerEndpoint_fetchLightWithReply___block_invoke;
  v6[3] = &unk_1E8418D68;
  v6[4] = self;
  v7 = replyCopy;
  v5 = replyCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Light XPC Proxy Server Endpoint) Fetch Light", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __53__GCLightXPCProxyServerEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Light XPC Proxy Server Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __53__GCLightXPCProxyServerEndpoint_invalidateConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  *(v8 + 8) = 0;
}

- (void)fetchObjectIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  identifier = [(GCLightXPCProxyServerEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (GCLightXPCProxyServerEndpointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)acceptClient:(NSObject *)a1 onConnection:error:.cold.1(NSObject *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Client has arrived for %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)setLight:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Sending new light to remote endpoint: %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)setLight:.cold.2()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Sending light refresh request to remote endpoint: %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end