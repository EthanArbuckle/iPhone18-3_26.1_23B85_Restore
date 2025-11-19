@interface GCIPCRemoteProcess
@end

@implementation GCIPCRemoteProcess

void __37___GCIPCRemoteProcess_addConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  objc_sync_enter(v5);
  v6 = [*(a1 + 32) connectionInvalidationRegistrations];
  v7 = [v6 containsObject:v3];

  if ((v7 & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"GCIPCProcess.m" lineNumber:97 description:{@"Bug in %s", "-[_GCIPCRemoteProcess addConnection:]_block_invoke"}];
  }

  v8 = [*v4 connectionInvalidationRegistrations];
  [v8 removeObject:v3];

  v9 = [*v4 connections];
  v10 = [v9 mutableCopy];

  if (([v10 containsObject:v2] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"GCIPCProcess.m" lineNumber:101 description:{@"Bug in %s", "-[_GCIPCRemoteProcess addConnection:]_block_invoke"}];
  }

  if (gc_isInternalBuild())
  {
    v13 = getGCLogger();
    __37___GCIPCRemoteProcess_addConnection___block_invoke_cold_1(v13, (a1 + 32));
  }

  [v10 removeObject:v2];
  [*v4 setConnections:v10];

  objc_sync_exit(v5);
}

void __37___GCIPCRemoteProcess_addConnection___block_invoke_cold_1(NSObject *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    v11 = HIDWORD(*a2);
    OUTLINED_FUNCTION_0_12(&dword_1D2CD5000, v4, v5, "%@ removing connection: %@", v6, v7, v8, v9, 2u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end