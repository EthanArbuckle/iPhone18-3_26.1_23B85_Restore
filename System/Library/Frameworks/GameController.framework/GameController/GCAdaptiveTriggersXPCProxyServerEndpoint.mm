@interface GCAdaptiveTriggersXPCProxyServerEndpoint
- (BOOL)acceptClient:(id)a3 onConnection:(id)a4 error:(id *)a5;
- (GCAdaptiveTriggersXPCProxyServerEndpoint)initWithIdentifier:(id)a3 initialStatuses:(id)a4;
- (GCAdaptiveTriggersXPCProxyServerEndpoint)initWithInitialStatuses:(id)a3;
- (GCAdaptiveTriggersXPCProxyServerEndpointDelegate)delegate;
- (NSArray)statuses;
- (_GCControllerComponentDescription)receiverDescription;
- (void)fetchObjectIdentifierWithReply:(id)a3;
- (void)fetchStatusesWithReply:(id)a3;
- (void)invalidateClient;
- (void)invalidateConnection;
- (void)newAdaptiveTriggerPayload:(id)a3 index:(int)a4;
- (void)setStatuses:(id)a3;
@end

@implementation GCAdaptiveTriggersXPCProxyServerEndpoint

- (GCAdaptiveTriggersXPCProxyServerEndpoint)initWithIdentifier:(id)a3 initialStatuses:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = GCAdaptiveTriggersXPCProxyServerEndpoint;
  v8 = [(GCAdaptiveTriggersXPCProxyServerEndpoint *)&v16 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
    leftTrigger = v8->_leftTrigger;
    v8->_leftTrigger = v11;

    v13 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
    rightTrigger = v8->_rightTrigger;
    v8->_rightTrigger = v13;

    objc_storeStrong(&v8->_statuses, a4);
  }

  return v8;
}

- (GCAdaptiveTriggersXPCProxyServerEndpoint)initWithInitialStatuses:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(GCAdaptiveTriggersXPCProxyServerEndpoint *)self initWithIdentifier:v6 initialStatuses:v5];

  return v7;
}

- (_GCControllerComponentDescription)receiverDescription
{
  v2 = [[GCAdaptiveTriggersXPCProxyClientEndpointDescription alloc] initWithIdentifier:self->_identifier initialStatuses:self->_statuses];

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

  [(GCAdaptiveTriggersXPCProxyRemoteClientEndpointInterface *)v5 invalidateConnection];
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
  v23 = __76__GCAdaptiveTriggersXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke;
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
    [GCAdaptiveTriggersXPCProxyServerEndpoint acceptClient:v20 onConnection:? error:?];
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return 1;
}

void __76__GCAdaptiveTriggersXPCProxyServerEndpoint_acceptClient_onConnection_error___block_invoke(uint64_t a1)
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

- (NSArray)statuses
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_statuses;
  objc_sync_exit(v2);

  return v3;
}

- (void)setStatuses:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if ([v5 isEqualToArray:v6->_statuses])
  {
    objc_sync_exit(v6);
  }

  else
  {
    objc_storeStrong(&v6->_statuses, a3);
    objc_sync_exit(v6);

    v7 = v6->_clientEndpoint;
    if (v7)
    {
      v8 = v6->_pendingUpdates + 1;
      v6->_pendingUpdates = v8;
      if (v8 <= 6)
      {
        isInternalBuild = gc_isInternalBuild();
        if (v8 == 6)
        {
          if (isInternalBuild)
          {
            [GCAdaptiveTriggersXPCProxyServerEndpoint setStatuses:];
          }

          [(GCAdaptiveTriggersXPCProxyRemoteClientEndpointInterface *)v7 refreshStatuses];
        }

        else
        {
          if (isInternalBuild)
          {
            [GCAdaptiveTriggersXPCProxyServerEndpoint setStatuses:];
          }

          [(GCAdaptiveTriggersXPCProxyRemoteClientEndpointInterface *)v7 newStatuses:v5];
          if (v6->_pendingUpdates == 3)
          {
            connection = v6->_connection;
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 3221225472;
            v11[2] = __56__GCAdaptiveTriggersXPCProxyServerEndpoint_setStatuses___block_invoke;
            v11[3] = &unk_1E8418C28;
            v11[4] = v6;
            [(_GCIPCEndpointConnection *)connection scheduleSendBarrierBlock:v11];
          }
        }
      }
    }
  }
}

- (void)fetchStatusesWithReply:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__GCAdaptiveTriggersXPCProxyServerEndpoint_fetchStatusesWithReply___block_invoke;
  v6[3] = &unk_1E8418D68;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_1D2CD5000, "(Adaptive Trigger XPC Proxy Server Endpoint) Fetch Statuses", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __67__GCAdaptiveTriggersXPCProxyServerEndpoint_fetchStatusesWithReply___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) statuses];
  (*(v1 + 16))(v1, v2);
}

- (void)newAdaptiveTriggerPayload:(id)a3 index:(int)a4
{
  v6 = a3;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __76__GCAdaptiveTriggersXPCProxyServerEndpoint_newAdaptiveTriggerPayload_index___block_invoke;
  activity_block[3] = &unk_1E841ADE0;
  v10 = a4;
  activity_block[4] = self;
  v9 = v6;
  v7 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(Adaptive Trigger XPC Proxy Server Endpoint) New Adaptive Trigger Payload", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __76__GCAdaptiveTriggersXPCProxyServerEndpoint_newAdaptiveTriggerPayload_index___block_invoke(uint64_t a1)
{
  v2 = 56;
  if (*(a1 + 48) == 1)
  {
    v2 = 64;
  }

  objc_storeStrong((*(a1 + 32) + v2), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained adaptiveTriggersXPCProxyServerEndpoint:*(a1 + 32) didReceiveAdaptiveTriggersChange:*(a1 + 40) forIndex:*(a1 + 48)];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __64__GCAdaptiveTriggersXPCProxyServerEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Adaptive Trigger XPC Proxy Server Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __64__GCAdaptiveTriggersXPCProxyServerEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  v6 = [(GCAdaptiveTriggersXPCProxyServerEndpoint *)self identifier];
  (*(a3 + 2))(v5, v6);
}

- (GCAdaptiveTriggersXPCProxyServerEndpointDelegate)delegate
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

- (void)setStatuses:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Sending new status to remote endpoint: %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)setStatuses:.cold.2()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Sending statuses refresh request to remote endpoint: %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end