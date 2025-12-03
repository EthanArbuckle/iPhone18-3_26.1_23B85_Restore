@interface GCSettingsXPCProxyServerEndpoint
- (BOOL)acceptClient:(id)client onConnection:(id)connection error:(id *)error;
- (GCSettingsXPCProxyServerEndpoint)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile;
- (GCSettingsXPCProxyServerEndpoint)initWithInitialValueForProfile:(id)profile;
- (GCSettingsXPCProxyServerEndpointDelegate)delegate;
- (_GCControllerComponentDescription)receiverDescription;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)fetchProfileWithReply:(id)reply;
- (void)invalidateClient;
- (void)invalidateConnection;
- (void)setSettingsProfile:(id)profile;
@end

@implementation GCSettingsXPCProxyServerEndpoint

- (GCSettingsXPCProxyServerEndpoint)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile
{
  identifierCopy = identifier;
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = GCSettingsXPCProxyServerEndpoint;
  v8 = [(GCSettingsXPCProxyServerEndpoint *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_settingsProfile, profile);
  }

  return v8;
}

- (GCSettingsXPCProxyServerEndpoint)initWithInitialValueForProfile:(id)profile
{
  v4 = MEMORY[0x1E696AFB0];
  profileCopy = profile;
  uUID = [v4 UUID];
  v7 = [(GCSettingsXPCProxyServerEndpoint *)self initWithIdentifier:uUID initialValueForProfile:profileCopy];

  return v7;
}

- (_GCControllerComponentDescription)receiverDescription
{
  v2 = [[GCSettingsXPCProxyClientEndpointDescription alloc] initWithIdentifier:self->_identifier initialValueForProfile:self->_settingsProfile];

  return v2;
}

- (void)invalidateClient
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Dropping remote endpoint for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
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
  v23 = __68__GCSettingsXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke;
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
  v19 = getGCSettingsLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [GCSettingsXPCProxyServerEndpoint acceptClient:onConnection:error:];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return 1;
}

void __68__GCSettingsXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = getGCSettingsLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __65__GCSettingsXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke_cold_1();
    }

    v3 = WeakRetained[4];
    WeakRetained[4] = 0;

    v4 = WeakRetained[3];
    WeakRetained[3] = 0;

    v5 = WeakRetained[1];
    WeakRetained[1] = 0;
  }
}

- (void)setSettingsProfile:(id)profile
{
  profileCopy = profile;
  objc_storeStrong(&self->_settingsProfile, profile);
  v6 = self->_clientEndpoint;
  if (v6)
  {
    v7 = self->_pendingUpdates + 1;
    self->_pendingUpdates = v7;
    if (v7 <= 6)
    {
      v8 = getGCSettingsLogger();
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      if (v7 == 6)
      {
        if (v9)
        {
          [GCSettingsXPCProxyServerEndpoint setSettingsProfile:];
        }

        [(GCSettingsXPCProxyRemoteClientEndpointInterface *)v6 refreshProfile];
      }

      else
      {
        if (v9)
        {
          [GCSettingsXPCProxyServerEndpoint setSettingsProfile:];
        }

        [(GCSettingsXPCProxyRemoteClientEndpointInterface *)v6 newProfile:profileCopy];
        if (self->_pendingUpdates == 3)
        {
          connection = self->_connection;
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __55__GCSettingsXPCProxyServerEndpoint_setSettingsProfile___block_invoke;
          v11[3] = &unk_1E8418C28;
          v11[4] = self;
          [(_GCIPCEndpointConnection *)connection scheduleSendBarrierBlock:v11];
        }
      }
    }
  }
}

- (void)fetchProfileWithReply:(id)reply
{
  replyCopy = reply;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__GCSettingsXPCProxyServerEndpoint_fetchProfileWithReply___block_invoke;
  v6[3] = &unk_1E8418D68;
  v6[4] = self;
  v7 = replyCopy;
  v5 = replyCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Settings XPC Proxy Server Endpoint) Fetch Profile", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __56__GCSettingsXPCProxyServerEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Settings XPC Proxy Server Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __56__GCSettingsXPCProxyServerEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCSettingsXPCProxyServerEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (GCSettingsXPCProxyServerEndpointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)acceptClient:onConnection:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Client has arrived for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSettingsProfile:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Sending new settings to remote endpoint: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSettingsProfile:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Sending settings refresh request to remote endpoint: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end