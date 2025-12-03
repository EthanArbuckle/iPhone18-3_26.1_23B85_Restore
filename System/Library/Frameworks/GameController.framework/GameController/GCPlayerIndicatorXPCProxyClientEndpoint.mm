@interface GCPlayerIndicatorXPCProxyClientEndpoint
- (GCPlayerIndicatorXPCProxyClientEndpoint)init;
- (GCPlayerIndicatorXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialPlayerIndex:(int64_t)index;
- (void)_remoteEndpointSetPlayerIndex:(int64_t)index;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateConnection;
- (void)newPlayerIndex:(int64_t)index;
- (void)refreshPlayerIndex;
- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection;
@end

@implementation GCPlayerIndicatorXPCProxyClientEndpoint

- (GCPlayerIndicatorXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialPlayerIndex:(int64_t)index
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = GCPlayerIndicatorXPCProxyClientEndpoint;
  v7 = [(GCPlayerIndicatorXPCProxyClientEndpoint *)&v11 init];
  if (v7)
  {
    if (gc_isInternalBuild())
    {
      [GCPlayerIndicatorXPCProxyClientEndpoint initWithIdentifier:identifierCopy initialPlayerIndex:index];
    }

    v8 = [identifierCopy copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_playerIndex = index;
  }

  return v7;
}

- (GCPlayerIndicatorXPCProxyClientEndpoint)init
{
  [(GCPlayerIndicatorXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72__GCPlayerIndicatorXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
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
    [GCPlayerIndicatorXPCProxyClientEndpoint setRemoteEndpoint:v14 connection:?];
  }

  [(GCPlayerIndicatorXPCProxyClientEndpoint *)self refreshPlayerIndex];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __72__GCPlayerIndicatorXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

- (void)_remoteEndpointSetPlayerIndex:(int64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained willChangeValueForKey:@"playerIndex"];
    self->_playerIndex = index;
    [v6 didChangeValueForKey:@"playerIndex"];
    WeakRetained = v6;
  }
}

- (void)newPlayerIndex:(int64_t)index
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__GCPlayerIndicatorXPCProxyClientEndpoint_newPlayerIndex___block_invoke;
  v3[3] = &unk_1E84191C0;
  v3[4] = self;
  v3[5] = index;
  _os_activity_initiate(&dword_1D2CD5000, "(Player Indicator XPC Proxy Client Endpoint) New Player Index", OS_ACTIVITY_FLAG_DEFAULT, v3);
}

- (void)refreshPlayerIndex
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __61__GCPlayerIndicatorXPCProxyClientEndpoint_refreshPlayerIndex__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Player Indicator XPC Proxy Client Endpoint) Refresh Player Index", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __61__GCPlayerIndicatorXPCProxyClientEndpoint_refreshPlayerIndex__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__GCPlayerIndicatorXPCProxyClientEndpoint_refreshPlayerIndex__block_invoke_2;
  v4[3] = &unk_1E841B6A0;
  v4[4] = v1;
  return [v2 fetchPlayerIndexWithReply:v4];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __63__GCPlayerIndicatorXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Player Indicator XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __63__GCPlayerIndicatorXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCPlayerIndicatorXPCProxyClientEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)initWithIdentifier:(uint64_t)a1 initialPlayerIndex:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412546;
    v7 = a1;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_INFO, "GCPlayerIndicatorXPCProxyClientEndpoint initWithIdentifier: %@ initialPlayerIndex: %ld", &v6, 0x16u);
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

@end