@interface IOSurfaceRemoteRemoteClient
- (BOOL)_removeSurface:(unsigned int)a3;
- (IOSurfaceRemoteRemoteClient)initWithRemoteConnection:(id)a3 disconnectedQueue:(id)a4 disconnectedHandler:(id)a5;
- (void)_addSurface:(__IOSurfaceClient *)a3 mappedAddress:(void *)a4 mappedSize:(unint64_t)a5 extraData:(id)a6;
- (void)_handleError:(id)a3;
- (void)_handleMessage:(id)a3;
- (void)dealloc;
@end

@implementation IOSurfaceRemoteRemoteClient

- (IOSurfaceRemoteRemoteClient)initWithRemoteConnection:(id)a3 disconnectedQueue:(id)a4 disconnectedHandler:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = IOSurfaceRemoteRemoteClient;
  v11 = [(IOSurfaceRemoteRemoteClient *)&v18 init];
  v12 = objc_opt_new();
  [(IOSurfaceRemoteRemoteClient *)v11 setSurfaceStates:v12];

  [(IOSurfaceRemoteRemoteClient *)v11 setDisconnectedQueue:v9];
  [(IOSurfaceRemoteRemoteClient *)v11 setDisconnectedHandler:v10];
  [(IOSurfaceRemoteRemoteClient *)v11 setRemoteConnection:v8];
  [(IOSurfaceRemoteRemoteClient *)v11 setPid:xpc_connection_get_pid(v8)];
  objc_initWeak(&location, v11);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __94__IOSurfaceRemoteRemoteClient_initWithRemoteConnection_disconnectedQueue_disconnectedHandler___block_invoke;
  handler[3] = &unk_1E7A91A10;
  objc_copyWeak(&v16, &location);
  xpc_connection_set_event_handler(v8, handler);
  xpc_connection_activate(v8);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

void __94__IOSurfaceRemoteRemoteClient_initWithRemoteConnection_disconnectedQueue_disconnectedHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (MEMORY[0x1B27205C0](v4) == MEMORY[0x1E69E9E98])
    {
      [WeakRetained _handleError:v4];
    }

    else
    {
      [WeakRetained _handleMessage:v4];
    }
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [(IOSurfaceRemoteRemoteClient *)self remoteConnection];
  xpc_connection_cancel(v3);

  v5.receiver = self;
  v5.super_class = IOSurfaceRemoteRemoteClient;
  [(IOSurfaceRemoteRemoteClient *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_handleError:(id)a3
{
  v6[5] = *MEMORY[0x1E69E9840];
  v4 = [(IOSurfaceRemoteRemoteClient *)self disconnectedQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__IOSurfaceRemoteRemoteClient__handleError___block_invoke;
  v6[3] = &unk_1E7A91A88;
  v6[4] = self;
  dispatch_async(v4, v6);

  v5 = *MEMORY[0x1E69E9840];
}

void __44__IOSurfaceRemoteRemoteClient__handleError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) disconnectedHandler];
  v2[2](v2, *(a1 + 32));
}

- (void)_addSurface:(__IOSurfaceClient *)a3 mappedAddress:(void *)a4 mappedSize:(unint64_t)a5 extraData:(id)a6
{
  v10 = a6;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IOSurfaceClientGetID(a3)];
  v12 = [(IOSurfaceRemoteRemoteClient *)self surfaceStates];
  v13 = [v12 objectForKeyedSubscript:v11];

  if (v13)
  {
    [(IOSurfaceRemotePerSurfacePerClientState *)v13 addClientReferenceToSurfaceWithExtraData:v10];
  }

  else
  {
    v13 = [[IOSurfaceRemotePerSurfacePerClientState alloc] initWithSurface:a3 mappedAddress:a4 mappedSize:a5 extraData:v10];
    v14 = [(IOSurfaceRemoteRemoteClient *)self surfaceStates];
    [v14 setObject:v13 forKeyedSubscript:v11];
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [IOSurfaceRemoteRemoteClient _addSurface:? mappedAddress:? mappedSize:? extraData:?];
  }
}

- (BOOL)_removeSurface:(unsigned int)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  v5 = [(IOSurfaceRemoteRemoteClient *)self surfaceStates];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    if ([v6 removeClientReferenceToSurface])
    {
      v7 = [(IOSurfaceRemoteRemoteClient *)self surfaceStates];
      [v7 setObject:0 forKeyedSubscript:v4];
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [IOSurfaceRemoteRemoteClient _removeSurface:?];
    }
  }

  return v6 != 0;
}

- (void)_handleMessage:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  reply = xpc_dictionary_create_reply(v4);
  v6 = xpc_dictionary_get_remote_connection(v4);
  v7 = v6;
  if (reply && v6)
  {
    uint64 = xpc_dictionary_get_uint64(v4, "Method");
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
    if (uint64 < 0x1B)
    {
      if (v9)
      {
        [(IOSurfaceRemoteRemoteClient *)uint64 _handleMessage:?];
      }

      v12 = _handleMessage__method_dispatch[uint64];
      if (uint64 > 2)
      {
        v13 = -536870160;
        v14 = xpc_dictionary_get_uint64(v4, "SurfaceID");
        v15 = v14;
        if (uint64 == 3)
        {
          if ([(IOSurfaceRemoteRemoteClient *)self _removeSurface:v14])
          {
            v13 = 0;
          }

          else
          {
            v13 = -536870160;
          }
        }

        else
        {
          xpc_dictionary_set_uint64(reply, "SurfaceID", v14);
          v16 = xpc_dictionary_get_value(v4, "ExtraData");
          v20 = v15;
          v21[0] = 0;
          v17 = [(IOSurfaceRemoteRemoteClient *)self _getClient:v15 inboundExtradata:v16 outboundExtraData:v21];
          v18 = v21[0];

          if (v17)
          {
            v13 = (v12)(self, v17, v4, reply);
            _ioSurfaceAddClientState(v17, v20, reply);
            if (v18)
            {
              xpc_dictionary_set_value(reply, "ExtraData", v18);
            }
          }
        }
      }

      else
      {
        v13 = (v12)(self, v4, reply);
      }

      v11 = v13;
      v10 = reply;
    }

    else
    {
      if (v9)
      {
        [IOSurfaceRemoteRemoteClient _handleMessage:?];
      }

      v10 = reply;
      v11 = -536870201;
    }

    xpc_dictionary_set_uint64(v10, "ErrorCode", v11);
    xpc_connection_send_message(v7, reply);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_addSurface:(void *)a1 mappedAddress:mappedSize:extraData:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 pid];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_removeSurface:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 pid];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_getClient:inboundExtradata:outboundExtraData:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[IOSurfaceRemoteRemoteClient _getClient:inboundExtradata:outboundExtraData:]"];
  [v1 handleFailureInFunction:v0 file:@"IOSurfaceRemoteServer.m" lineNumber:384 description:@"BUG: Missing state?!?"];
}

- (void)_handleMessage:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = _handleMessage__method_name[a1];
  [a2 pid];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleMessage:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 pid];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

@end