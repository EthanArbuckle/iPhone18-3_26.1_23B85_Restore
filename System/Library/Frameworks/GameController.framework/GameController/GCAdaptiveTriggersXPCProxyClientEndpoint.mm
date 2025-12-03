@interface GCAdaptiveTriggersXPCProxyClientEndpoint
- (GCAdaptiveTriggersXPCProxyClientEndpoint)init;
- (GCAdaptiveTriggersXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialStatuses:(id)statuses;
- (void)_remoteEndpointHasSetStatuses:(id)statuses;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateConnection;
- (void)newStatuses:(id)statuses;
- (void)refreshStatuses;
- (void)setLeftTrigger:(id)trigger;
- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection;
- (void)setRightTrigger:(id)trigger;
@end

@implementation GCAdaptiveTriggersXPCProxyClientEndpoint

- (GCAdaptiveTriggersXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialStatuses:(id)statuses
{
  identifierCopy = identifier;
  statusesCopy = statuses;
  v20.receiver = self;
  v20.super_class = GCAdaptiveTriggersXPCProxyClientEndpoint;
  v8 = [(GCAdaptiveTriggersXPCProxyClientEndpoint *)&v20 init];
  if (v8)
  {
    if (gc_isInternalBuild())
    {
      [GCAdaptiveTriggersXPCProxyClientEndpoint initWithIdentifier:initialStatuses:];
    }

    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    initOff = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
    leftTrigger = v8->_leftTrigger;
    v8->_leftTrigger = initOff;

    initOff2 = [[GCDeviceAdaptiveTriggersPayload alloc] initOff];
    rightTrigger = v8->_rightTrigger;
    v8->_rightTrigger = initOff2;

    if ([statusesCopy count] >= 2)
    {
      v15 = [statusesCopy objectAtIndexedSubscript:0];
      leftStatus = v8->_leftStatus;
      v8->_leftStatus = v15;

      v17 = [statusesCopy objectAtIndexedSubscript:1];
      rightStatus = v8->_rightStatus;
      v8->_rightStatus = v17;
    }
  }

  return v8;
}

- (GCAdaptiveTriggersXPCProxyClientEndpoint)init
{
  [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __73__GCAdaptiveTriggersXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
  v18 = &unk_1E8418D18;
  objc_copyWeak(&v19, &location);
  v9 = _Block_copy(&v15);
  v10 = [connectionCopy addInterruptionHandler:{v9, v15, v16, v17, v18}];
  connectionInterruptionRegistration = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = v10;

  v12 = [connectionCopy addInvalidationHandler:v9];
  connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = v12;

  objc_storeStrong(&self->_serverEndpoint, endpoint);
  if (gc_isInternalBuild())
  {
    v14 = getGCLogger();
    [GCAdaptiveTriggersXPCProxyClientEndpoint setRemoteEndpoint:v14 connection:?];
  }

  [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self refreshStatuses];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __73__GCAdaptiveTriggersXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

    v4 = WeakRetained[2];
    WeakRetained[2] = 0;
  }
}

- (void)setLeftTrigger:(id)trigger
{
  objc_storeStrong(&self->_leftTrigger, trigger);
  triggerCopy = trigger;
  [(GCAdaptiveTriggersXPCProxyRemoteServerEndpointInterface *)self->_serverEndpoint newAdaptiveTriggerPayload:self->_leftTrigger index:0];
}

- (void)setRightTrigger:(id)trigger
{
  objc_storeStrong(&self->_rightTrigger, trigger);
  triggerCopy = trigger;
  [(GCAdaptiveTriggersXPCProxyRemoteServerEndpointInterface *)self->_serverEndpoint newAdaptiveTriggerPayload:self->_rightTrigger index:1];
}

- (void)_remoteEndpointHasSetStatuses:(id)statuses
{
  statusesCopy = statuses;
  if (gc_isInternalBuild())
  {
    [GCAdaptiveTriggersXPCProxyClientEndpoint _remoteEndpointHasSetStatuses:];
  }

  if ([statusesCopy count] >= 2)
  {
    v5 = [statusesCopy objectAtIndexedSubscript:0];
    [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self setLeftStatus:v5];

    v6 = [statusesCopy objectAtIndexedSubscript:1];
    [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self setRightStatus:v6];
  }
}

- (void)newStatuses:(id)statuses
{
  statusesCopy = statuses;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__GCAdaptiveTriggersXPCProxyClientEndpoint_newStatuses___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = statusesCopy;
  v5 = statusesCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Adaptive Trigger XPC Proxy Client Endpoint) New Statuses", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __56__GCAdaptiveTriggersXPCProxyClientEndpoint_newStatuses___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __56__GCAdaptiveTriggersXPCProxyClientEndpoint_newStatuses___block_invoke_cold_1();
  }

  return [*(a1 + 32) _remoteEndpointHasSetStatuses:*(a1 + 40)];
}

- (void)refreshStatuses
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Adaptive Trigger XPC Proxy Client Endpoint) Refresh Statuses", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke_86;
  v5[3] = &unk_1E841ABD8;
  v5[4] = v2;
  return [v3 fetchStatusesWithReply:v5];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __64__GCAdaptiveTriggersXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Adaptive Trigger XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __64__GCAdaptiveTriggersXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
}

- (void)fetchObjectIdentifierWithReply:(id)reply
{
  replyCopy = reply;
  identifier = [(GCAdaptiveTriggersXPCProxyClientEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)initWithIdentifier:initialStatuses:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setRemoteEndpoint:(NSObject *)a1 connection:.cold.1(NSObject *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "Server connection established for %@", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_remoteEndpointHasSetStatuses:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __56__GCAdaptiveTriggersXPCProxyClientEndpoint_newStatuses___block_invoke_cold_1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
  }
}

void __59__GCAdaptiveTriggersXPCProxyClientEndpoint_refreshStatuses__block_invoke_cold_1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 2u);
  }
}

@end