@interface VCAnsweringMachineManager
+ (id)sharedInstance;
+ (void)registerAnsweringMachineTerminate;
+ (void)registerBlocksForService;
- (VCAnsweringMachineManager)init;
- (void)answeringMachine:(id)a3 didFinishAnnouncement:(BOOL)a4 error:(id)a5;
- (void)answeringMachine:(id)a3 didStart:(BOOL)a4 error:(id)a5;
- (void)answeringMachine:(id)a3 didStop:(BOOL)a4 recordingURL:(id)a5 error:(id)a6;
- (void)dealloc;
- (void)init;
@end

@implementation VCAnsweringMachineManager

- (VCAnsweringMachineManager)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCAnsweringMachineManager;
  v2 = [(VCXPCManager *)&v6 init];
  if (!v2)
  {
    [VCAnsweringMachineManager init];
LABEL_7:

    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2->_instances = v3;
  if (!v3)
  {
    [(VCAnsweringMachineManager *)v2 init];
    goto LABEL_7;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v2->_callbackQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCAnsweringMachineManager.callbackQueue", MEMORY[0x1E69E96A8], CustomRootQueue);
  return v2;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
  }

  v4.receiver = self;
  v4.super_class = VCAnsweringMachineManager;
  [(VCXPCManager *)&v4 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_token_1 != -1)
  {
    +[VCAnsweringMachineManager sharedInstance];
  }

  return sharedInstance_instance;
}

void __43__VCAnsweringMachineManager_sharedInstance__block_invoke()
{
  if (!sharedInstance_instance)
  {
    sharedInstance_instance = objc_alloc_init(VCAnsweringMachineManager);
  }
}

id __63__VCAnsweringMachineManager_registerAnsweringMachineInitialize__block_invoke(uint64_t a1, uint64_t *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = -[AVCAnsweringMachineConfiguration initWithClientDictionary:clientPid:]([AVCAnsweringMachineConfiguration alloc], "initWithClientDictionary:clientPid:", [a3 objectForKeyedSubscript:@"vcAnsweringMachineConfig"], objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"CLIENTPID"), "intValue"));
  if (!v4)
  {
    __63__VCAnsweringMachineManager_registerAnsweringMachineInitialize__block_invoke_cold_2(buf);
    return *buf;
  }

  v5 = v4;
  v6 = [[VCAnsweringMachine alloc] initWithConfiguration:v4 delegate:v3 delegateQueue:*(v3 + 192)];

  if (!v6)
  {
    __63__VCAnsweringMachineManager_registerAnsweringMachineInitialize__block_invoke_cold_1(buf);
    return *buf;
  }

  [*(v3 + 184) addObject:v6];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v7;
      v14 = 2080;
      v15 = "+[VCAnsweringMachineManager registerAnsweringMachineInitialize]_block_invoke";
      v16 = 1024;
      v17 = 86;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCAnsweringMachineManager allocated new VCAnsweringMachine=%@", buf, 0x26u);
    }
  }

  v12[1] = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCAnsweringMachine messageAudioToken](v6, "messageAudioToken", @"CONTEXT", @"vcAnsweringMachineMessageAudioToken", v6)}];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:2];

  return v9;
}

+ (void)registerAnsweringMachineTerminate
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = objc_opt_class();
  [a1 registerTerminateBlock:&__block_literal_global_31 forService:"vcAnsweringMachineTerminate" expectedClasses:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v3, 1)}];
}

uint64_t __62__VCAnsweringMachineManager_registerAnsweringMachineTerminate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  [v3 invalidate];
  v4 = *(*a2 + 184);

  return [v4 removeObject:v3];
}

+ (void)registerBlocksForService
{
  [a1 registerAnsweringMachineInitialize];
  [a1 registerAnsweringMachineTerminate];
  [a1 registerAnsweringMachineStart];
  [a1 registerAnsweringMachineStop];

  [a1 registerAnsweringMachineAnnouncementAsset];
}

- (void)answeringMachine:(id)a3 didStart:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v8 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v6), @"vcAnsweringMachineStatus", 0}];
  [VCXPCManager addNSError:a5 toXPCArgumentDictionary:v9];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)answeringMachine:(id)a3 didStop:(BOOL)a4 recordingURL:(id)a5 error:(id)a6
{
  v8 = a4;
  v34 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_callbackQueue);
  v11 = objc_alloc(MEMORY[0x1E695DF90]);
  v12 = [v11 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v8), @"vcAnsweringMachineStatus", 0}];
  if (!a5)
  {
    [VCAnsweringMachineManager answeringMachine:didStop:recordingURL:error:];
LABEL_20:
    v14 = 0;
    goto LABEL_4;
  }

  [objc_msgSend(a5 "path")];
  v13 = sandbox_extension_issue_file();
  if (!v13)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAnsweringMachineManager answeringMachine:v16 didStop:? recordingURL:? error:?];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v15 = [(VCAnsweringMachineManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v15 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v23 = v17;
          v24 = 2080;
          v25 = "[VCAnsweringMachineManager answeringMachine:didStop:recordingURL:error:]";
          v26 = 1024;
          v27 = 180;
          v28 = 2112;
          v29 = v15;
          v30 = 2048;
          v31 = self;
          v32 = 2112;
          v33 = a5;
          _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to issue sandbox extension for url=%@, removing url", buf, 0x3Au);
        }
      }
    }

    v21 = 0;
    if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v23 = v19;
        v24 = 2080;
        v25 = "[VCAnsweringMachineManager answeringMachine:didStop:recordingURL:error:]";
        v26 = 1024;
        v27 = 190;
        v28 = 2112;
        v29 = a5;
        v30 = 2112;
        v31 = v21;
        _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to remove recordingURL=%@: error=%@", buf, 0x30u);
      }
    }

    goto LABEL_20;
  }

  v14 = v13;
  [v12 setObject:a5 forKeyedSubscript:@"vcAnsweringMachineMessageRecordingURL"];
  [v12 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:", v14), @"vcAnsweringMachineMessageRecordingURLSandboxExtensionToken"}];
LABEL_4:
  free(v14);
  [VCXPCManager addNSError:a6 toXPCArgumentDictionary:v12];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)answeringMachine:(id)a3 didFinishAnnouncement:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_callbackQueue);
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = [v8 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v6), @"vcAnsweringMachineStatus", 0}];
  [VCXPCManager addNSError:a5 toXPCArgumentDictionary:v9];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)init
{
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [0 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_2();
      v5 = 48;
      goto LABEL_11;
    }
  }
}

void __63__VCAnsweringMachineManager_registerAnsweringMachineInitialize__block_invoke_cold_1(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

void __63__VCAnsweringMachineManager_registerAnsweringMachineInitialize__block_invoke_cold_2(void *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

- (void)answeringMachine:(uint64_t)a1 didStop:recordingURL:error:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCAnsweringMachineManager answeringMachine:didStop:recordingURL:error:]";
  v7 = 1024;
  OUTLINED_FUNCTION_29();
  v8 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to issue sandbox extension for url=%@, removing url", &v3, 0x26u);
}

- (void)answeringMachine:didStop:recordingURL:error:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v2 = 176;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Skipping sandbox logic as there is no recordingURL", v1, 0x1Cu);
    }
  }
}

@end