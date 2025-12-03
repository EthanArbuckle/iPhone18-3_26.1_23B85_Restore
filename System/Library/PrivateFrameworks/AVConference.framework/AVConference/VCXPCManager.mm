@interface VCXPCManager
+ (void)addNSError:(id)error toXPCArgumentDictionary:(id)dictionary;
+ (void)registerBlock:(id)block forService:(const char *)service;
+ (void)registerTerminateBlock:(id)block forService:(const char *)service expectedClasses:(id)classes;
- (VCXPCManager)init;
- (void)dealloc;
- (void)deregisterBlocksFromService;
- (void)init;
@end

@implementation VCXPCManager

- (VCXPCManager)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCXPCManager;
  v2 = [(VCObject *)&v8 init];
  if (!v2)
  {
    [VCXPCManager init];
LABEL_6:

    return 0;
  }

  v3 = objc_opt_class();
  v4 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s.%@.%s", "com.apple.AVConference", NSStringFromClass(v3), "xpcCommandQueue"), "UTF8String"];
  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v6 = dispatch_queue_create_with_target_V2(v4, 0, CustomRootQueue);
  v2->_xpcCommandQueue = v6;
  if (!v6)
  {
    [VCXPCManager init];
    goto LABEL_6;
  }

  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(VCXPCManager *)self deregisterBlocksFromService];

  xpcCommandQueue = self->_xpcCommandQueue;
  if (xpcCommandQueue)
  {
    dispatch_release(xpcCommandQueue);
  }

  v4.receiver = self;
  v4.super_class = VCXPCManager;
  [(VCObject *)&v4 dealloc];
}

- (void)deregisterBlocksFromService
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  registeredServices = self->_registeredServices;
  v4 = [(NSMutableArray *)registeredServices countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(registeredServices);
        }

        [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
      }

      v5 = [(NSMutableArray *)registeredServices countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_registeredServices removeAllObjects];
}

+ (void)registerBlock:(id)block forService:(const char *)service
{
  v8[6] = *MEMORY[0x1E69E9840];
  sharedInstance = [self sharedInstance];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__VCXPCManager_registerBlock_forService___block_invoke;
  v8[3] = &unk_1E85F5088;
  v8[4] = self;
  v8[5] = block;
  [*(sharedInstance + 176) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", service)}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

uint64_t __41__VCXPCManager_registerBlock_forService___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  [*(a1 + 32) sharedInstance];
  [a2 objectForKeyedSubscript:@"CONTEXT"];
  return (*(*(a1 + 40) + 16))();
}

+ (void)registerTerminateBlock:(id)block forService:(const char *)service expectedClasses:(id)classes
{
  v10[7] = *MEMORY[0x1E69E9840];
  sharedInstance = [self sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__VCXPCManager_registerTerminateBlock_forService_expectedClasses___block_invoke;
  v10[3] = &unk_1E85F50B0;
  v10[4] = classes;
  v10[5] = self;
  v10[6] = block;
  [*(sharedInstance + 176) addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", service, MEMORY[0x1E69E9820], 3221225472, __66__VCXPCManager_registerTerminateBlock_forService_expectedClasses___block_invoke, &unk_1E85F50B0, classes, self, block)}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

id __66__VCXPCManager_registerTerminateBlock_forService_expectedClasses___block_invoke(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = 0;
  }

  else
  {
    v18 = @"CONTEXT";
    v19[0] = [MEMORY[0x1E695DFB0] null];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  v5 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v12[0] = [*(a1 + 40) sharedInstance];
    v12[1] = v5;
    (*(*(a1 + 48) + 16))(*(a1 + 48), v12);
  }

  return v4;
}

+ (void)addNSError:(id)error toXPCArgumentDictionary:(id)dictionary
{
  if (error)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    domain = [error domain];
    if (domain)
    {
      [v8 setObject:domain forKeyedSubscript:@"ERROR_DOMAIN"];
    }

    [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(error, "code")), @"ERROR_CODE"}];
    userInfo = [error userInfo];
    if (userInfo)
    {
      [v8 setObject:userInfo forKeyedSubscript:@"ERROR_USERINFO"];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"ERROR"];
  }
}

- (void)init
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate super instance", v2, v3, v4, v5, 2u);
    }
  }
}

@end