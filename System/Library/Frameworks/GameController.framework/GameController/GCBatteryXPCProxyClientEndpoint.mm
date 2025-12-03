@interface GCBatteryXPCProxyClientEndpoint
- (GCBatteryXPCProxyClientEndpoint)init;
- (GCBatteryXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialBattery:(id)battery;
- (void)_remoteEndpointHasSetBattery:(id)battery;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateConnection;
- (void)newBattery:(id)battery;
- (void)refreshBattery;
- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection;
@end

@implementation GCBatteryXPCProxyClientEndpoint

- (GCBatteryXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialBattery:(id)battery
{
  identifierCopy = identifier;
  batteryCopy = battery;
  v12.receiver = self;
  v12.super_class = GCBatteryXPCProxyClientEndpoint;
  v8 = [(GCBatteryXPCProxyClientEndpoint *)&v12 init];
  if (v8)
  {
    if (gc_isInternalBuild())
    {
      [GCBatteryXPCProxyClientEndpoint initWithIdentifier:initialBattery:];
    }

    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_battery, battery);
  }

  return v8;
}

- (GCBatteryXPCProxyClientEndpoint)init
{
  [(GCBatteryXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __64__GCBatteryXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
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
    [GCBatteryXPCProxyClientEndpoint setRemoteEndpoint:v14 connection:?];
  }

  [(GCBatteryXPCProxyClientEndpoint *)self refreshBattery];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __64__GCBatteryXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

- (void)_remoteEndpointHasSetBattery:(id)battery
{
  batteryCopy = battery;
  if (gc_isInternalBuild())
  {
    [GCBatteryXPCProxyClientEndpoint _remoteEndpointHasSetBattery:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [WeakRetained willChangeValueForKey:@"battery"];
  battery = self->_battery;
  [batteryCopy batteryLevel];
  [(GCDeviceBattery *)battery _setBatteryLevel:?];
  -[GCDeviceBattery _setBatteryState:](self->_battery, "_setBatteryState:", [batteryCopy batteryState]);
  [WeakRetained didChangeValueForKey:@"battery"];
}

- (void)newBattery:(id)battery
{
  batteryCopy = battery;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__GCBatteryXPCProxyClientEndpoint_newBattery___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = batteryCopy;
  v5 = batteryCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Battery XPC Proxy Client Endpoint) New Battery", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __46__GCBatteryXPCProxyClientEndpoint_newBattery___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __46__GCBatteryXPCProxyClientEndpoint_newBattery___block_invoke_cold_1();
  }

  return [*(a1 + 32) _remoteEndpointHasSetBattery:*(a1 + 40)];
}

- (void)refreshBattery
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Battery XPC Proxy Client Endpoint) Refresh Battery", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke_89;
  v5[3] = &unk_1E8418D40;
  v5[4] = v2;
  return [v3 fetchBatteryWithReply:v5];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __55__GCBatteryXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Battery XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __55__GCBatteryXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCBatteryXPCProxyClientEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)initWithIdentifier:initialBattery:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
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

void __64__GCBatteryXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke_cold_1()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v3, v4, "%@ has lost its connection to the remote endpoint.", v5, v6, v7, v8, v9);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)_remoteEndpointHasSetBattery:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __46__GCBatteryXPCProxyClientEndpoint_newBattery___block_invoke_cold_1()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 2u);
  }
}

void __49__GCBatteryXPCProxyClientEndpoint_refreshBattery__block_invoke_cold_1()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 2u);
  }
}

@end