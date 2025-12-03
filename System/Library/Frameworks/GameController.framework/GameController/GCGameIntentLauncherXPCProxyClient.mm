@interface GCGameIntentLauncherXPCProxyClient
- (GCGameIntentLauncherXPCProxyClient)init;
- (void)dealloc;
- (void)launchApplicationWithBundleIdentifier:(id)identifier;
- (void)refreshActiveClient;
- (void)togglePlatformGamesLibrary;
@end

@implementation GCGameIntentLauncherXPCProxyClient

- (GCGameIntentLauncherXPCProxyClient)init
{
  v7.receiver = self;
  v7.super_class = GCGameIntentLauncherXPCProxyClient;
  v2 = [(GCGameIntentLauncherXPCProxyClient *)&v7 init];
  v3 = objc_opt_new();
  servers = v2->_servers;
  v2->_servers = v3;

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_consoleUserDidChange_ name:*MEMORY[0x1E69A0330] object:0];

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69A0330] object:0];

  v4.receiver = self;
  v4.super_class = GCGameIntentLauncherXPCProxyClient;
  [(GCGameIntentLauncherXPCProxyClient *)&v4 dealloc];
}

- (void)refreshActiveClient
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(self, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = &unk_1F4E8E330;
    _os_log_debug_impl(&dword_1D2CD5000, self, OS_LOG_TYPE_DEBUG, "GCGameIntentLauncherXPCProxy - clientForCurrentUser %@ is nil, early exit", &v5, 0xCu);
  }

  *a2 = self;
  v4 = *MEMORY[0x1E69E9840];
}

- (void)launchApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  server = [(GCGameIntentLauncherXPCProxyClient *)self server];
  [server launchApplicationWithBundleIdentifier:identifierCopy];
}

- (void)togglePlatformGamesLibrary
{
  server = [(GCGameIntentLauncherXPCProxyClient *)self server];
  [server togglePlatformGamesLibrary];
}

- (void)agentCheckIn:(NSObject *)a1 effectiveUserIdentifier:.cold.1(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)agentCheckIn:(NSObject *)a1 effectiveUserIdentifier:(uint64_t *)a2 .cold.2(NSObject *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    v9 = *a2;
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v4, v5, OS_LOG_TYPE_INFO, v6, v7, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)agentCheckIn:effectiveUserIdentifier:.cold.3()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 2u);
  }
}

- (void)agentCheckIn:effectiveUserIdentifier:.cold.4()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 2u);
  }
}

@end