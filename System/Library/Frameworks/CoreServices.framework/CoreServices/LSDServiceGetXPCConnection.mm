@interface LSDServiceGetXPCConnection
@end

@implementation LSDServiceGetXPCConnection

id ___LSDServiceGetXPCConnection_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 16) == 3;
  }

  else
  {
    v3 = 0;
  }

  v4 = [__LSDefaultsGetSharedInstance() serviceNameForConnectionType:objc_msgSend(*(a1 + 48) lightweightSystemService:{"connectionType"), v3}];
  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v4 options:*(a1 + 56)];
  if (v5)
  {
    v6 = [*(a1 + 48) XPCInterface];
    [v5 setRemoteObjectInterface:v6];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___LSDServiceGetXPCConnection_block_invoke_3;
    v15[3] = &unk_1E6A1A830;
    v7 = v4;
    v16 = v7;
    [v5 setInterruptionHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___LSDServiceGetXPCConnection_block_invoke_59;
    v12[3] = &unk_1E6A1ABE8;
    v13 = v7;
    v14 = *(a1 + 40);
    [v5 setInvalidationHandler:v12];
    [v5 setDelegate:objc_opt_class()];
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v9(v5, v8);

    [v5 resume];
  }

  return v5;
}

void ___LSDServiceGetXPCConnection_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _LSDServiceGetXPCConnection::serverConnections;
  _LSDServiceGetXPCConnection::serverConnections = v0;
}

void ___LSDServiceGetXPCConnection_block_invoke_3(uint64_t a1)
{
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___LSDServiceGetXPCConnection_block_invoke_3_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void ___LSDServiceGetXPCConnection_block_invoke_59(uint64_t a1)
{
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___LSDServiceGetXPCConnection_block_invoke_59_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  os_unfair_lock_lock(&_LSDServiceGetXPCConnection::serverConnectionsLock);
  [_LSDServiceGetXPCConnection::serverConnections removeObjectForKey:*(a1 + 40)];
  os_unfair_lock_unlock(&_LSDServiceGetXPCConnection::serverConnectionsLock);
}

void ___LSDServiceGetXPCConnection_block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "LaunchServices: disconnect event interruption received for service %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ___LSDServiceGetXPCConnection_block_invoke_59_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "LaunchServices: disconnect event invalidation received for service %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end