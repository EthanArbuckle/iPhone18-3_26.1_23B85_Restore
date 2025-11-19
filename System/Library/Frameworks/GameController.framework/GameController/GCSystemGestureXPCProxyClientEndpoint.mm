@interface GCSystemGestureXPCProxyClientEndpoint
- (GCSystemGestureXPCProxyClientEndpoint)init;
- (GCSystemGestureXPCProxyClientEndpoint)initWithIdentifier:(id)a3;
- (void)disableSystemGestureForInput:(id)a3;
- (void)enableSystemGestureForInput:(id)a3;
- (void)fetchObjectIdentifierWithReply:(id)a3;
- (void)invalidateConnection;
- (void)setRemoteEndpoint:(id)a3 connection:(id)a4;
@end

@implementation GCSystemGestureXPCProxyClientEndpoint

- (GCSystemGestureXPCProxyClientEndpoint)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GCSystemGestureXPCProxyClientEndpoint;
  v5 = [(GCSystemGestureXPCProxyClientEndpoint *)&v9 init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (GCSystemGestureXPCProxyClientEndpoint)init
{
  [(GCSystemGestureXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)a3 connection:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __70__GCSystemGestureXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
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
    [GCSystemGestureXPCProxyClientEndpoint setRemoteEndpoint:v14 connection:?];
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __70__GCSystemGestureXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __61__GCSystemGestureXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(SystemGesture XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __61__GCSystemGestureXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  v6 = [(GCSystemGestureXPCProxyClientEndpoint *)self identifier];
  (*(a3 + 2))(v5, v6);
}

- (void)disableSystemGestureForInput:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__GCSystemGestureXPCProxyClientEndpoint_disableSystemGestureForInput___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_1D2CD5000, "(SystemGesture XPC Proxy Client Endpoint) Disable system gesture for input name", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __70__GCSystemGestureXPCProxyClientEndpoint_disableSystemGestureForInput___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __70__GCSystemGestureXPCProxyClientEndpoint_disableSystemGestureForInput___block_invoke_cold_1();
  }

  return [*(*(a1 + 32) + 16) disableSystemGestureForInput:*(a1 + 40)];
}

- (void)enableSystemGestureForInput:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__GCSystemGestureXPCProxyClientEndpoint_enableSystemGestureForInput___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_1D2CD5000, "(SystemGesture XPC Proxy Client Endpoint) Enable system gesture for input name", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __69__GCSystemGestureXPCProxyClientEndpoint_enableSystemGestureForInput___block_invoke(uint64_t a1)
{
  if (gc_isInternalBuild())
  {
    __69__GCSystemGestureXPCProxyClientEndpoint_enableSystemGestureForInput___block_invoke_cold_1();
  }

  return [*(*(a1 + 32) + 16) enableSystemGestureForInput:*(a1 + 40)];
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

void __70__GCSystemGestureXPCProxyClientEndpoint_disableSystemGestureForInput___block_invoke_cold_1()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_2_19(&dword_1D2CD5000, v1, v2, "(SystemGesture XPC Proxy Client Endpoint) Disable system gesture for input name", v3, v4, v5, v6, 0);
  }
}

void __69__GCSystemGestureXPCProxyClientEndpoint_enableSystemGestureForInput___block_invoke_cold_1()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_2_19(&dword_1D2CD5000, v1, v2, "(SystemGesture XPC Proxy Client Endpoint) Enable system gesture for input name", v3, v4, v5, v6, 0);
  }
}

@end