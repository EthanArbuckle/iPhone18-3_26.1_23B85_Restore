@interface VCWCMClient
- (VCWCMClient)init;
- (void)dealloc;
- (void)startWCMClient;
- (void)stopWCMClient;
@end

@implementation VCWCMClient

- (VCWCMClient)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCWCMClient;
  v2 = [(VCWCMClient *)&v5 init];
  if (v2)
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->connectionQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCWCMClient.connectionQueue", 0, CustomRootQueue);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCWCMClient *)self stopWCMClient];
  dispatch_release(self->connectionQueue);

  v3.receiver = self;
  v3.super_class = VCWCMClient;
  [(VCWCMClient *)&v3 dealloc];
}

- (void)startWCMClient
{
  v3[5] = *MEMORY[0x1E69E9840];
  connectionQueue = self->connectionQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __29__VCWCMClient_startWCMClient__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(connectionQueue, v3);
}

void __29__VCWCMClient_startWCMClient__block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (!*(*(a1 + 32) + 8))
  {
    global_queue = dispatch_get_global_queue(0, 0);
    *(*(a1 + 32) + 8) = xpc_connection_create_mach_service("com.apple.WirelessCoexManager", global_queue, 0);
    v3 = *(a1 + 32);
    v4 = *(v3 + 8);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__VCWCMClient_startWCMClient__block_invoke_2;
    handler[3] = &unk_1E85F77C8;
    handler[4] = v3;
    xpc_connection_set_event_handler(v4, handler);
    xpc_connection_resume(*(*(a1 + 32) + 8));
    keys[0] = "kWCMRegisterProcess_ProcessId";
    v5 = xpc_uint64_create(2uLL);
    values = v5;
    v6 = xpc_dictionary_create(keys, &values, 1uLL);
    v19[0] = "kMessageId";
    v19[1] = "kMessageArgs";
    v7 = xpc_uint64_create(1uLL);
    v18[0] = v7;
    v18[1] = v6;
    v8 = xpc_dictionary_create(v19, v18, 2uLL);
    xpc_connection_send_message(*(*(a1 + 32) + 8), v8);
    xpc_release(v5);
    xpc_release(v7);
    xpc_release(v6);
    xpc_release(v8);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCWCMClient startWCMClient]_block_invoke";
        v16 = 1024;
        v17 = 153;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: WCMClient started.", buf, 0x1Cu);
      }
    }
  }
}

- (void)stopWCMClient
{
  v3[5] = *MEMORY[0x1E69E9840];
  connectionQueue = self->connectionQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__VCWCMClient_stopWCMClient__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(connectionQueue, v3);
}

void __28__VCWCMClient_stopWCMClient__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    xpc_release(v2);
    *(*(a1 + 32) + 8) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315650;
        v6 = v3;
        v7 = 2080;
        v8 = "[VCWCMClient stopWCMClient]_block_invoke";
        v9 = 1024;
        v10 = 165;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d WCM: WCMClient stopped.", &v5, 0x1Cu);
      }
    }
  }
}

@end