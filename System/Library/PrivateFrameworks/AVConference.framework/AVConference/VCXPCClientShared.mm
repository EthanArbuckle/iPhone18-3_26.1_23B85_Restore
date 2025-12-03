@interface VCXPCClientShared
- (VCXPCClientShared)init;
- (void)dealloc;
- (void)deregisterFromNotifications;
- (void)deregisterWithUUID:(id)d service:(char *)service;
- (void)registerBlockWithUUID:(id)d service:(char *)service block:(id)block;
@end

@implementation VCXPCClientShared

- (VCXPCClientShared)init
{
  v14 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCXPCClientShared;
  v2 = [(AVConferenceXPCClient *)&v7 init];
  if (v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = v3;
        v10 = 2080;
        v11 = "[VCXPCClientShared init]";
        v12 = 1024;
        v13 = 42;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
      }
    }

    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v2->_registeredBlocksQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCXPCClientShared.registeredBlocksQueue", 0, CustomRootQueue);
    v2->_registeredUUIDServiceBlocks = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCXPCClientShared *)self deregisterFromNotifications];

  v3.receiver = self;
  v3.super_class = VCXPCClientShared;
  [(AVConferenceXPCClient *)&v3 dealloc];
}

- (void)deregisterFromNotifications
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allKeys = [(NSMutableDictionary *)self->_registeredUUIDServiceBlocks allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        -[AVConferenceXPCClient deregisterFromService:](self, "deregisterFromService:", [*(*(&v9 + 1) + 8 * v7++) UTF8String]);
      }

      while (v5 != v7);
      v5 = [allKeys countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (void)registerBlockWithUUID:(id)d service:(char *)service block:(id)block
{
  block[8] = *MEMORY[0x1E69E9840];
  registeredBlocksQueue = self->_registeredBlocksQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VCXPCClientShared_registerBlockWithUUID_service_block___block_invoke;
  block[3] = &unk_1E85F88F8;
  block[4] = d;
  block[5] = self;
  block[6] = block;
  block[7] = service;
  dispatch_async(registeredBlocksQueue, block);
}

void __57__VCXPCClientShared_registerBlockWithUUID_service_block___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:*(a1 + 56) encoding:4];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    v5 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 56);
        v7 = *(a1 + 32);
        *buf = 136316418;
        v14 = v3;
        v15 = 2080;
        v16 = "[VCXPCClientShared registerBlockWithUUID:service:block:]_block_invoke";
        v17 = 1024;
        v18 = 68;
        v19 = 2080;
        v20 = v6;
        v21 = 2112;
        v22 = v2;
        v23 = 2112;
        v24 = v7;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Registered service %s with key %@, particiantID: %@", buf, 0x3Au);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 32);
      *buf = 136316418;
      v14 = v3;
      v15 = 2080;
      v16 = "[VCXPCClientShared registerBlockWithUUID:service:block:]_block_invoke";
      v17 = 1024;
      v18 = 68;
      v19 = 2080;
      v20 = v10;
      v21 = 2112;
      v22 = v2;
      v23 = 2112;
      v24 = v11;
      _os_log_debug_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Registered service %s with key %@, particiantID: %@", buf, 0x3Au);
    }
  }

  if (![*(*(a1 + 40) + 48) objectForKeyedSubscript:v2])
  {
    v8 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:*(a1 + 40)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__VCXPCClientShared_registerBlockWithUUID_service_block___block_invoke_6;
    v12[3] = &unk_1E85F3AD8;
    v12[4] = v8;
    [*(a1 + 40) registerBlockForService:*(a1 + 56) block:v12];
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [*(*(a1 + 40) + 48) setObject:v9 forKeyedSubscript:v2];
  }

  [objc_msgSend(*(*(a1 + 40) + 48) objectForKeyedSubscript:{v2), "setObject:forKeyedSubscript:", *(a1 + 48), *(a1 + 32)}];
}

void __57__VCXPCClientShared_registerBlockWithUUID_service_block___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) strong];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 registeredBlocksQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__VCXPCClientShared_registerBlockWithUUID_service_block___block_invoke_2;
    v8[3] = &unk_1E85F3E30;
    v8[4] = a2;
    v8[5] = v6;
    v8[6] = a3;
    dispatch_sync(v7, v8);
  }
}

void __57__VCXPCClientShared_registerBlockWithUUID_service_block___block_invoke_2(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"vcSessionParticipantID"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"vcServiceType"];
  if ([objc_msgSend(*(a1 + 40) "registeredUUIDServiceBlocks")])
  {
    v4 = [objc_msgSend(objc_msgSend(*(a1 + 40) "registeredUUIDServiceBlocks")];
    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_21;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      v10 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v28 = v8;
          v29 = 2080;
          v30 = "[VCXPCClientShared registerBlockWithUUID:service:block:]_block_invoke_2";
          v31 = 1024;
          v32 = 85;
          v33 = 2112;
          v34 = v3;
          v35 = 2112;
          v36 = v2;
          v11 = " [%s] %s:%d Received callback for service %@ with particiantID: %@";
          v12 = v9;
          v13 = 48;
LABEL_17:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
        }

LABEL_21:
        v22 = *(a1 + 40);
        CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __57__VCXPCClientShared_registerBlockWithUUID_service_block___block_invoke_16;
        v24[3] = &unk_1E85F4DB8;
        v26 = v4;
        v24[4] = *(a1 + 32);
        v25 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
        dispatch_async(CustomRootQueue, v24);
        return;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      *buf = 136316162;
      v28 = v8;
      v29 = 2080;
      v30 = "[VCXPCClientShared registerBlockWithUUID:service:block:]_block_invoke";
      v31 = 1024;
      v32 = 85;
      v33 = 2112;
      v34 = v3;
      v35 = 2112;
      v36 = v2;
      v19 = " [%s] %s:%d Received callback for service %@ with particiantID: %@";
      v20 = v9;
      v21 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 8)
      {
        goto LABEL_21;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      v16 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 40);
          *buf = 136316674;
          v28 = v14;
          v29 = 2080;
          v30 = "[VCXPCClientShared registerBlockWithUUID:service:block:]_block_invoke";
          v31 = 1024;
          v32 = 85;
          v33 = 2112;
          v34 = v5;
          v35 = 2048;
          v36 = v17;
          v37 = 2112;
          v38 = v3;
          v39 = 2112;
          v40 = v2;
          v11 = " [%s] %s:%d %@(%p) Received callback for service %@ with particiantID: %@";
          v12 = v15;
          v13 = 68;
          goto LABEL_17;
        }

        goto LABEL_21;
      }

      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 40);
      *buf = 136316674;
      v28 = v14;
      v29 = 2080;
      v30 = "[VCXPCClientShared registerBlockWithUUID:service:block:]_block_invoke";
      v31 = 1024;
      v32 = 85;
      v33 = 2112;
      v34 = v5;
      v35 = 2048;
      v36 = v18;
      v37 = 2112;
      v38 = v3;
      v39 = 2112;
      v40 = v2;
      v19 = " [%s] %s:%d %@(%p) Received callback for service %@ with particiantID: %@";
      v20 = v15;
      v21 = 68;
    }

    _os_log_debug_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEBUG, v19, buf, v21);
    goto LABEL_21;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v28 = v6;
      v29 = 2080;
      v30 = "[VCXPCClientShared registerBlockWithUUID:service:block:]_block_invoke_2";
      v31 = 1024;
      v32 = 97;
      v33 = 2112;
      v34 = v3;
      v35 = 2112;
      v36 = v2;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot find block for serviceType %@, particiantID: %@", buf, 0x30u);
    }
  }
}

void __57__VCXPCClientShared_registerBlockWithUUID_service_block___block_invoke_16(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = a1[6];
}

- (void)deregisterWithUUID:(id)d service:(char *)service
{
  v5[7] = *MEMORY[0x1E69E9840];
  registeredBlocksQueue = self->_registeredBlocksQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__VCXPCClientShared_deregisterWithUUID_service___block_invoke;
  v5[3] = &unk_1E85F50D8;
  v5[5] = d;
  v5[6] = service;
  v5[4] = self;
  dispatch_async(registeredBlocksQueue, v5);
}

void __48__VCXPCClientShared_deregisterWithUUID_service___block_invoke(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:a1[6] encoding:4];
  [objc_msgSend(*(a1[4] + 48) objectForKeyedSubscript:{v2), "removeObjectForKey:", a1[5]}];
}

@end