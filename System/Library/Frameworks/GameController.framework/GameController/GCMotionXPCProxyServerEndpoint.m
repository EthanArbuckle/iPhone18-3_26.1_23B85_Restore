@interface GCMotionXPCProxyServerEndpoint
- (BOOL)acceptClient:(id)a3 onConnection:(id)a4 error:(id *)a5;
- (GCMotionXPCProxyServerEndpoint)initWithIdentifier:(id)a3 initialValue:(BOOL)a4;
- (GCMotionXPCProxyServerEndpointDelegate)delegate;
- (_GCControllerComponentDescription)receiverDescription;
- (void)fetchObjectIdentifierWithReply:(id)a3;
- (void)fetchSensorsActiveWithReply:(id)a3;
- (void)invalidateClient;
- (void)invalidateConnection;
- (void)newSensorsActive:(BOOL)a3;
- (void)setSensorsActive:(BOOL)a3;
@end

@implementation GCMotionXPCProxyServerEndpoint

- (GCMotionXPCProxyServerEndpoint)initWithIdentifier:(id)a3 initialValue:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = GCMotionXPCProxyServerEndpoint;
  v7 = [(GCMotionXPCProxyServerEndpoint *)&v11 init];
  if (v7)
  {
    v8 = [v6 copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_sensorsActive = a4;
  }

  return v7;
}

- (_GCControllerComponentDescription)receiverDescription
{
  v2 = [[GCMotionXPCProxyClientEndpointDescription alloc] initWithIdentifier:self->_identifier initialSensorsActive:self->_sensorsActive];

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

  [(GCMotionXPCProxyRemoteClientEndpointInterface *)v5 invalidateConnection];
}

- (BOOL)acceptClient:(id)a3 onConnection:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v23 = __66__GCMotionXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke;
  v24 = &unk_1E8418D18;
  objc_copyWeak(&v25, &location);
  v14 = _Block_copy(&v21);
  v15 = [v9 addInterruptionHandler:{v14, v21, v22, v23, v24}];
  v16 = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = v15;

  v17 = [v9 addInvalidationHandler:v14];
  v18 = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = v17;

  objc_storeStrong(&self->_connection, a4);
  objc_storeStrong(&self->_clientEndpoint, a3);
  self->_pendingUpdates = 0;
  if (gc_isInternalBuild())
  {
    v20 = getGCLogger();
    [GCMotionXPCProxyServerEndpoint acceptClient:v20 onConnection:? error:?];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return 1;
}

void __66__GCMotionXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke(uint64_t a1)
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

- (void)setSensorsActive:(BOOL)a3
{
  if (self->_sensorsActive != a3)
  {
    v10[9] = v3;
    v10[10] = v4;
    self->_sensorsActive = a3;
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
            [GCMotionXPCProxyServerEndpoint setSensorsActive:];
          }

          [(GCMotionXPCProxyRemoteClientEndpointInterface *)v6 refreshSensorsActive];
        }

        else
        {
          if (isInternalBuild)
          {
            [GCMotionXPCProxyServerEndpoint setSensorsActive:];
          }

          [(GCMotionXPCProxyRemoteClientEndpointInterface *)v6 newSensorsActive:self->_sensorsActive];
          if (self->_pendingUpdates == 3)
          {
            connection = self->_connection;
            v10[0] = MEMORY[0x1E69E9820];
            v10[1] = 3221225472;
            v10[2] = __51__GCMotionXPCProxyServerEndpoint_setSensorsActive___block_invoke;
            v10[3] = &unk_1E8418C28;
            v10[4] = self;
            [(_GCIPCEndpointConnection *)connection scheduleSendBarrierBlock:v10];
          }
        }
      }
    }
  }
}

- (void)newSensorsActive:(BOOL)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__GCMotionXPCProxyServerEndpoint_newSensorsActive___block_invoke;
  v3[3] = &unk_1E8419650;
  v4 = a3;
  v3[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Motion XPC Proxy Server Endpoint) New Sensors Active", OS_ACTIVITY_FLAG_DEFAULT, v3);
}

void __51__GCMotionXPCProxyServerEndpoint_newSensorsActive___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 != *(v3 + 48))
  {
    *(v3 + 48) = v2;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
    [WeakRetained motionXPCProxyServerEndpoint:*(a1 + 32) didReceiveSensorsActiveChange:*(a1 + 40)];
  }
}

- (void)fetchSensorsActiveWithReply:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__GCMotionXPCProxyServerEndpoint_fetchSensorsActiveWithReply___block_invoke;
  v6[3] = &unk_1E8418D68;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_1D2CD5000, "(Motion XPC Proxy Server Endpoint) Fetch Sensors Active", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __54__GCMotionXPCProxyServerEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Motion XPC Proxy Server Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __54__GCMotionXPCProxyServerEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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

- (void)fetchObjectIdentifierWithReply:(id)a3
{
  v5 = a3;
  v6 = [(GCMotionXPCProxyServerEndpoint *)self identifier];
  (*(a3 + 2))(v5, v6);
}

- (GCMotionXPCProxyServerEndpointDelegate)delegate
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

- (void)setSensorsActive:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Sending new sensors active to remote endpoint: %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)setSensorsActive:.cold.2()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Sending sensors active refresh request to remote endpoint: %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end