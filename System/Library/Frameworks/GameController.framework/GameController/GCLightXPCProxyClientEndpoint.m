@interface GCLightXPCProxyClientEndpoint
- (GCLightXPCProxyClientEndpoint)init;
- (GCLightXPCProxyClientEndpoint)initWithIdentifier:(id)a3 initialLight:(id)a4;
- (void)_remoteEndpointHasSetLight:(id)a3;
- (void)fetchObjectIdentifierWithReply:(id)a3;
- (void)invalidateConnection;
- (void)newLight:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)refreshLight;
- (void)setRemoteEndpoint:(id)a3 connection:(id)a4;
@end

@implementation GCLightXPCProxyClientEndpoint

- (GCLightXPCProxyClientEndpoint)initWithIdentifier:(id)a3 initialLight:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = GCLightXPCProxyClientEndpoint;
  v8 = [(GCLightXPCProxyClientEndpoint *)&v12 init];
  if (v8)
  {
    if (gc_isInternalBuild())
    {
      [GCLightXPCProxyClientEndpoint initWithIdentifier:initialLight:];
    }

    v9 = [v6 copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_light, a4);
    [(GCLightXPCProxyClientEndpoint *)v8 observeChangesForLight:v8->_light];
  }

  return v8;
}

- (GCLightXPCProxyClientEndpoint)init
{
  [(GCLightXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __62__GCLightXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
  v18 = &unk_1E8418D18;
  objc_copyWeak(&v19, &location);
  v9 = _Block_copy(&v15);
  v10 = [v8 addInterruptionHandler:{v9, v15, v16, v17, v18}];
  connectionInterruptionRegistration = self->_connectionInterruptionRegistration;
  self->_connectionInterruptionRegistration = v10;

  v12 = [v8 addInvalidationHandler:v9];
  connectionInvalidationRegistration = self->_connectionInvalidationRegistration;
  self->_connectionInvalidationRegistration = v12;

  objc_storeStrong(&self->_serverEndpoint, a3);
  if (gc_isInternalBuild())
  {
    v14 = getGCLogger();
    [GCLightXPCProxyClientEndpoint setRemoteEndpoint:v14 connection:?];
  }

  [(GCLightXPCProxyClientEndpoint *)self refreshLight];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __62__GCLightXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  light = self->_light;
  if (light == a4)
  {
    serverEndpoint = self->_serverEndpoint;

    [(GCLightXPCProxyRemoteServerEndpointInterface *)serverEndpoint newLight:light];
  }

  else
  {
    v11 = v6;
    v12 = v7;
    v10.receiver = self;
    v10.super_class = GCLightXPCProxyClientEndpoint;
    [GCLightXPCProxyClientEndpoint observeValueForKeyPath:sel_observeValueForKeyPath_ofObject_change_context_ ofObject:a3 change:? context:?];
  }
}

- (void)_remoteEndpointHasSetLight:(id)a3
{
  v4 = a3;
  if (gc_isInternalBuild())
  {
    [GCLightXPCProxyClientEndpoint _remoteEndpointHasSetLight:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_controller);
  [(GCLightXPCProxyClientEndpoint *)self stopObservingChangesForLight:self->_light];
  [WeakRetained willChangeValueForKey:@"light"];
  v6 = [v4 color];
  [(GCDeviceLight *)self->_light setColor:v6];

  [WeakRetained didChangeValueForKey:@"light"];
  [(GCLightXPCProxyClientEndpoint *)self observeChangesForLight:self->_light];
}

- (void)newLight:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__GCLightXPCProxyClientEndpoint_newLight___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_1D2CD5000, "(Light XPC Proxy Client Endpoint) New Light", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __42__GCLightXPCProxyClientEndpoint_newLight___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __42__GCLightXPCProxyClientEndpoint_newLight___block_invoke_cold_1();
  }

  return [*(a1 + 32) _remoteEndpointHasSetLight:*(a1 + 40)];
}

- (void)refreshLight
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Light XPC Proxy Client Endpoint) Refresh Light", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke_94;
  v5[3] = &unk_1E841A538;
  v5[4] = v2;
  return [v3 fetchLightWithReply:v5];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __53__GCLightXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Light XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __53__GCLightXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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

- (void)fetchObjectIdentifierWithReply:(id)a3
{
  v5 = a3;
  v6 = [(GCLightXPCProxyClientEndpoint *)self identifier];
  (*(a3 + 2))(v5, v6);
}

- (void)initWithIdentifier:initialLight:.cold.1()
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

- (void)_remoteEndpointHasSetLight:.cold.1()
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

void __42__GCLightXPCProxyClientEndpoint_newLight___block_invoke_cold_1()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 2u);
  }
}

void __45__GCLightXPCProxyClientEndpoint_refreshLight__block_invoke_cold_1()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 2u);
  }
}

@end