@interface GCSettingsXPCProxyClientEndpoint
- (GCSettingsXPCProxyClientEndpoint)init;
- (GCSettingsXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile;
- (void)_remoteEndpointHasSetProfile:(id)profile;
- (void)fetchObjectIdentifierWithReply:(id)reply;
- (void)invalidateConnection;
- (void)newProfile:(id)profile;
- (void)refreshProfile;
- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection;
@end

@implementation GCSettingsXPCProxyClientEndpoint

- (GCSettingsXPCProxyClientEndpoint)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = GCSettingsXPCProxyClientEndpoint;
  v8 = [(GCSettingsXPCProxyClientEndpoint *)&v14 init];
  if (v8)
  {
    v9 = getGCSettingsLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v16 = identifierCopy;
      v17 = 2112;
      v18 = profileCopy;
      _os_log_impl(&dword_1D2CD5000, v9, OS_LOG_TYPE_INFO, "GCSettingsXPCProxyClientEndpoint initWithIdentifier: %@ initialProfile: %@", buf, 0x16u);
    }

    v10 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v10;

    objc_storeStrong(&v8->_settingsProfile, profile);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (GCSettingsXPCProxyClientEndpoint)init
{
  [(GCSettingsXPCProxyClientEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setRemoteEndpoint:(id)endpoint connection:(id)connection
{
  endpointCopy = endpoint;
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __65__GCSettingsXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke;
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
  v14 = getGCSettingsLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [GCSettingsXPCProxyClientEndpoint setRemoteEndpoint:connection:];
  }

  [(GCSettingsXPCProxyClientEndpoint *)self refreshProfile];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __65__GCSettingsXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke(uint64_t a1)
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

    v5 = WeakRetained[2];
    WeakRetained[2] = 0;
  }
}

- (void)_remoteEndpointHasSetProfile:(id)profile
{
  profileCopy = profile;
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__GCSettingsXPCProxyClientEndpoint__remoteEndpointHasSetProfile___block_invoke;
  v9[3] = &unk_1E8418CC8;
  v10 = WeakRetained;
  selfCopy = self;
  v12 = profileCopy;
  v13 = a2;
  v7 = profileCopy;
  v8 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __65__GCSettingsXPCProxyClientEndpoint__remoteEndpointHasSetProfile___block_invoke(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"settingsProfile"];
  objc_setProperty_atomic(*(a1 + 40), *(a1 + 56), *(a1 + 48), 48);
  [*(a1 + 32) didChangeValueForKey:@"settingsProfile"];
  result = *(*(a1 + 40) + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)newProfile:(id)profile
{
  profileCopy = profile;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__GCSettingsXPCProxyClientEndpoint_newProfile___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = profileCopy;
  v5 = profileCopy;
  _os_activity_initiate(&dword_1D2CD5000, "(Settings XPC Proxy Client Endpoint) New Profile", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

uint64_t __47__GCSettingsXPCProxyClientEndpoint_newProfile___block_invoke(uint64_t a1)
{
  v2 = getGCSettingsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "(Settings XPC Proxy Client Endpoint) New Profile", v4, 2u);
  }

  return [*(a1 + 32) _remoteEndpointHasSetProfile:*(a1 + 40)];
}

- (void)refreshProfile
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __50__GCSettingsXPCProxyClientEndpoint_refreshProfile__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Settings XPC Proxy Client Endpoint) Refresh Profile", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

uint64_t __50__GCSettingsXPCProxyClientEndpoint_refreshProfile__block_invoke(uint64_t a1)
{
  v2 = getGCSettingsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_INFO, "(Settings XPC Proxy Client Endpoint) Refresh Profile", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__GCSettingsXPCProxyClientEndpoint_refreshProfile__block_invoke_89;
  v6[3] = &unk_1E841A8A8;
  v6[4] = v3;
  return [v4 fetchProfileWithReply:v6];
}

- (void)invalidateConnection
{
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __56__GCSettingsXPCProxyClientEndpoint_invalidateConnection__block_invoke;
  activity_block[3] = &unk_1E8418C28;
  activity_block[4] = self;
  _os_activity_initiate(&dword_1D2CD5000, "(Settings XPC Proxy Client Endpoint) Invalidate Connection", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __56__GCSettingsXPCProxyClientEndpoint_invalidateConnection__block_invoke(uint64_t a1)
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
  identifier = [(GCSettingsXPCProxyClientEndpoint *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)setRemoteEndpoint:connection:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "Server connection established for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__GCSettingsXPCProxyClientEndpoint_setRemoteEndpoint_connection___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, v0, v1, "%@ has lost its connection to the remote endpoint.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end