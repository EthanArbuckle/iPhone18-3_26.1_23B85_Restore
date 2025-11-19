@interface VCMediaAnalyzerManager
+ (id)sharedInstance;
- (VCMediaAnalyzerManager)init;
- (id)initializeMediaAnalyzerManagerHandler:(id)a3 error:(id *)a4;
- (id)mediaAnalyzerManagerEnableHandler:(id)a3 error:(id *)a4;
- (id)mediaAnalyzerSourceFromClientContext:(id)a3;
- (id)unInitializeMediaAnalyzerManagerHandler:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)deregisterBlocksForService;
- (void)init;
- (void)notifyClientsWithStreamToken:(int64_t)a3 service:(const char *)a4 arguments:(id)a5;
- (void)registerBlocksForService;
- (void)registerMediaAnalyzerSource:(id)a3 streamToken:(int64_t)a4;
- (void)streamToken:(int64_t)a3 didEnable:(BOOL)a4 error:(id)a5;
- (void)streamToken:(int64_t)a3 didProduceMediaAnalysis:(id)a4;
- (void)unregisterMediaAnalyzerSourceWithStreamToken:(int64_t)a3;
@end

@implementation VCMediaAnalyzerManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[VCMediaAnalyzerManager sharedInstance];
  }

  return sharedInstance__vcMediaAnalyzerManager;
}

void __40__VCMediaAnalyzerManager_sharedInstance__block_invoke()
{
  if (!sharedInstance__vcMediaAnalyzerManager)
  {
    sharedInstance__vcMediaAnalyzerManager = objc_alloc_init(VCMediaAnalyzerManager);
  }
}

- (VCMediaAnalyzerManager)init
{
  v31 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = VCMediaAnalyzerManager;
  v2 = [(VCXPCManager *)&v20 init];
  if (!v2)
  {
    [VCMediaAnalyzerManager init];
LABEL_21:
    if (objc_opt_class() == v2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaAnalyzerManager init];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [(VCMediaAnalyzerManager *)v2 performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v22 = v18;
          v23 = 2080;
          v24 = "[VCMediaAnalyzerManager init]";
          v25 = 1024;
          v26 = 138;
          v27 = 2112;
          v28 = v17;
          v29 = 2048;
          v30 = v2;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) init failed", buf, 0x30u);
        }
      }
    }

    return 0;
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v2->_streamTokenList = v3;
  if (!v3)
  {
    [(VCMediaAnalyzerManager *)v2 init];
    goto LABEL_21;
  }

  v4 = objc_alloc_init(AVConferenceXPCClient);
  v2->_connection = v4;
  if (!v4)
  {
    [(VCMediaAnalyzerManager *)v2 init];
    goto LABEL_21;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v6 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMediaAnalyzerManager.xpcCommandQueue", 0, CustomRootQueue);
  v2->_xpcCommandQueue = v6;
  v7 = objc_opt_class();
  if (!v6)
  {
    [(VCMediaAnalyzerManager *)v7 == v2 init];
    goto LABEL_21;
  }

  if (v7 == v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = v9;
        v23 = 2080;
        v24 = "[VCMediaAnalyzerManager init]";
        v25 = 1024;
        v26 = 135;
        v11 = " [%s] %s:%d init success";
        v12 = v10;
        v13 = 28;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCMediaAnalyzerManager *)v2 performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v22 = v14;
        v23 = 2080;
        v24 = "[VCMediaAnalyzerManager init]";
        v25 = 1024;
        v26 = 135;
        v27 = 2112;
        v28 = v8;
        v29 = 2048;
        v30 = v2;
        v11 = " [%s] %s:%d %@(%p) init success";
        v12 = v15;
        v13 = 48;
        goto LABEL_15;
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaAnalyzerManager *)self deregisterBlocksForService];
  dispatch_release(self->_xpcCommandQueue);

  v3.receiver = self;
  v3.super_class = VCMediaAnalyzerManager;
  [(VCXPCManager *)&v3 dealloc];
}

- (void)registerMediaAnalyzerSource:(id)a3 streamToken:(int64_t)a4
{
  v5[7] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__VCMediaAnalyzerManager_registerMediaAnalyzerSource_streamToken___block_invoke;
  v5[3] = &unk_1E85F50D8;
  v5[5] = a3;
  v5[6] = a4;
  v5[4] = self;
  dispatch_async(xpcCommandQueue, v5);
}

void __66__VCMediaAnalyzerManager_registerMediaAnalyzerSource_streamToken___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  if ([*(*(a1 + 32) + 184) objectForKeyedSubscript:v2])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __66__VCMediaAnalyzerManager_registerMediaAnalyzerSource_streamToken___block_invoke_cold_1();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 48);
          v14 = 136316418;
          v15 = v5;
          v16 = 2080;
          v17 = "[VCMediaAnalyzerManager registerMediaAnalyzerSource:streamToken:]_block_invoke";
          v18 = 1024;
          v19 = 159;
          v20 = 2112;
          v21 = v3;
          v22 = 2048;
          v23 = v7;
          v24 = 1024;
          v25 = v8;
          _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Context already exists for stream token=%u", &v14, 0x36u);
        }
      }
    }
  }

  else
  {
    v4 = [[VCMediaAnalyzerManagerStreamTokenClientList alloc] initWithStreamToken:*(a1 + 48) mediaAnalyzerSource:*(a1 + 40)];
    if (v4)
    {
      [*(*(a1 + 32) + 184) setObject:v4 forKeyedSubscript:v2];
      [*(a1 + 40) registerMediaAnalyzerSourceDelegate:*(a1 + 32)];
    }

    else if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __66__VCMediaAnalyzerManager_registerMediaAnalyzerSource_streamToken___block_invoke_cold_2();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v12 = *(a1 + 32);
          v13 = *(a1 + 48);
          v14 = 136316418;
          v15 = v10;
          v16 = 2080;
          v17 = "[VCMediaAnalyzerManager registerMediaAnalyzerSource:streamToken:]_block_invoke";
          v18 = 1024;
          v19 = 163;
          v20 = 2112;
          v21 = v9;
          v22 = 2048;
          v23 = v12;
          v24 = 1024;
          v25 = v13;
          _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate streamTokenEntry for stream token=%u", &v14, 0x36u);
        }
      }
    }
  }
}

- (void)unregisterMediaAnalyzerSourceWithStreamToken:(int64_t)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__VCMediaAnalyzerManager_unregisterMediaAnalyzerSourceWithStreamToken___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(xpcCommandQueue, block);
}

uint64_t __71__VCMediaAnalyzerManager_unregisterMediaAnalyzerSourceWithStreamToken___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:v2];
  if (v3)
  {
    [objc_msgSend(v3 "mediaAnalyzerSource")];
  }

  else if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __71__VCMediaAnalyzerManager_unregisterMediaAnalyzerSourceWithStreamToken___block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = 136316418;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCMediaAnalyzerManager unregisterMediaAnalyzerSourceWithStreamToken:]_block_invoke";
        v14 = 1024;
        v15 = 177;
        v16 = 2112;
        v17 = v5;
        v18 = 2048;
        v19 = v8;
        v20 = 1024;
        v21 = v9;
        _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Context not exists for stream token=%u", &v10, 0x36u);
      }
    }
  }

  return [*(*(a1 + 32) + 184) removeObjectForKey:v2];
}

- (id)mediaAnalyzerSourceFromClientContext:(id)a3
{
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  v5 = [VCMediaAnalyzerManagerStreamTokenClientList streamTokenFromClientContext:a3];
  v6 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenList, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:v5]);

  return [v6 mediaAnalyzerSource];
}

- (id)initializeMediaAnalyzerManagerHandler:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = [a3 objectForKeyedSubscript:@"vcMediaAnalyzerStreamToken"];
  if (!v7)
  {
    v19 = -3;
LABEL_15:
    [(VCMediaAnalyzerManager *)v19 initializeMediaAnalyzerManagerHandler:a4 error:buf];
    return *buf;
  }

  v8 = v7;
  v9 = [a3 objectForKeyedSubscript:@"vcMediaAnalyzerAnalysisType"];
  if (!v9)
  {
    v19 = -4;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = [(NSMutableDictionary *)self->_streamTokenList objectForKey:v8];
  if (!v11)
  {
    v19 = -5;
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v11 newClientContext];
  if (!v13)
  {
    v19 = -2;
    goto LABEL_15;
  }

  v14 = v13;
  [objc_msgSend(v12 "mediaAnalyzerSource")];
  v15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v14, @"CONTEXT", 0}];

  if (!v15)
  {
    v19 = -7;
    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v16;
      v21 = 2080;
      v22 = "[VCMediaAnalyzerManager initializeMediaAnalyzerManagerHandler:error:]";
      v23 = 1024;
      v24 = 213;
      v25 = 2048;
      v26 = v14;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d New media analyzer created. Context=0x%p", buf, 0x26u);
    }
  }

  return v15;
}

- (id)unInitializeMediaAnalyzerManagerHandler:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  if ([a3 objectForKey:@"CLIENTDIED"])
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v7 = [v8 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v9 = [a3 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v29 = v18;
          v30 = 2080;
          v31 = "[VCMediaAnalyzerManager unInitializeMediaAnalyzerManagerHandler:error:]";
          v32 = 1024;
          v33 = 229;
          v34 = 2048;
          v35 = v9;
          v20 = " [%s] %s:%d Invalid Context=0x%p";
          v21 = v19;
          v22 = 38;
LABEL_26:
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCMediaAnalyzerManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v29 = v25;
          v30 = 2080;
          v31 = "[VCMediaAnalyzerManager unInitializeMediaAnalyzerManagerHandler:error:]";
          v32 = 1024;
          v33 = 229;
          v34 = 2112;
          v35 = v12;
          v36 = 2048;
          v37 = self;
          v38 = 2048;
          v39 = v9;
          v20 = " [%s] %s:%d %@(%p) Invalid Context=0x%p";
          v21 = v26;
          v22 = 58;
          goto LABEL_26;
        }
      }
    }

    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaAnalyzerManager" code:-1 userInfo:0];
    }

    return v7;
  }

  v10 = [VCMediaAnalyzerManagerStreamTokenClientList streamTokenFromClientContext:v9];
  [-[NSMutableDictionary objectForKey:](self->_streamTokenList objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v10)), "removeClientContext:", v9}];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v29 = v13;
        v30 = 2080;
        v31 = "[VCMediaAnalyzerManager unInitializeMediaAnalyzerManagerHandler:error:]";
        v32 = 1024;
        v33 = 239;
        v34 = 2048;
        v35 = v9;
        v15 = " [%s] %s:%d Unregister media analyzer. Context=0x%p";
        v16 = v14;
        v17 = 38;
LABEL_21:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCMediaAnalyzerManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v29 = v23;
        v30 = 2080;
        v31 = "[VCMediaAnalyzerManager unInitializeMediaAnalyzerManagerHandler:error:]";
        v32 = 1024;
        v33 = 239;
        v34 = 2112;
        v35 = v11;
        v36 = 2048;
        v37 = self;
        v38 = 2048;
        v39 = v9;
        v15 = " [%s] %s:%d %@(%p) Unregister media analyzer. Context=0x%p";
        v16 = v24;
        v17 = 58;
        goto LABEL_21;
      }
    }
  }

  return v7;
}

- (id)mediaAnalyzerManagerEnableHandler:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = [a3 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *v22 = 136315906;
      *&v22[4] = v12;
      *&v22[12] = 2080;
      *&v22[14] = "[VCMediaAnalyzerManager mediaAnalyzerManagerEnableHandler:error:]";
      *&v22[22] = 1024;
      LODWORD(v23) = 246;
      WORD2(v23) = 2048;
      *(&v23 + 6) = v7;
      v14 = " [%s] %s:%d Invalid Context=0x%p";
      v15 = v13;
      v16 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCMediaAnalyzerManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_16;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *v22 = 136316418;
      *&v22[4] = v17;
      *&v22[12] = 2080;
      *&v22[14] = "[VCMediaAnalyzerManager mediaAnalyzerManagerEnableHandler:error:]";
      *&v22[22] = 1024;
      LODWORD(v23) = 246;
      WORD2(v23) = 2112;
      *(&v23 + 6) = v11;
      HIWORD(v23) = 2048;
      v24 = self;
      LOWORD(v25) = 2048;
      *(&v25 + 2) = v7;
      v14 = " [%s] %s:%d %@(%p) Invalid Context=0x%p";
      v15 = v18;
      v16 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, v22, v16);
LABEL_16:
    if (!a4)
    {
      return 0;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = -1;
LABEL_18:
    *a4 = [v19 errorWithDomain:@"VCMediaAnalyzerManager" code:v20 userInfo:{0, *v22, *&v22[16], v23, v24, v25}];
    return 0;
  }

  v8 = [(VCMediaAnalyzerManager *)self mediaAnalyzerSourceFromClientContext:v7];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [a3 objectForKeyedSubscript:@"vcMediaAnalyzerEnable"];
  if (!v10)
  {
    if (!a4)
    {
      return 0;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = -6;
    goto LABEL_18;
  }

  [v9 enableMediaAnalyzer:{objc_msgSend(v10, "BOOLValue")}];
  return 0;
}

- (void)registerBlocksForService
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__VCMediaAnalyzerManager_registerBlocksForService__block_invoke;
  v6[3] = &unk_1E85F5100;
  v6[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__VCMediaAnalyzerManager_registerBlocksForService__block_invoke_2;
  v5[3] = &unk_1E85F5100;
  v5[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
}

uint64_t __50__VCMediaAnalyzerManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  return [v5 initializeMediaAnalyzerManagerHandler:a2 error:a3];
}

uint64_t __50__VCMediaAnalyzerManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  return [v5 unInitializeMediaAnalyzerManagerHandler:a2 error:a3];
}

uint64_t __50__VCMediaAnalyzerManager_registerBlocksForService__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  return [v5 mediaAnalyzerManagerEnableHandler:a2 error:a3];
}

- (void)deregisterBlocksForService
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaAnalyzerInitialize"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaAnalyzerUnInitialize"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcMediaAnalyzerEnable"];
}

- (void)notifyClientsWithStreamToken:(int64_t)a3 service:(const char *)a4 arguments:(id)a5
{
  block[8] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__VCMediaAnalyzerManager_notifyClientsWithStreamToken_service_arguments___block_invoke;
  block[3] = &unk_1E85F5128;
  block[6] = a3;
  block[7] = a4;
  block[4] = self;
  block[5] = a5;
  dispatch_async(xpcCommandQueue, block);
}

void __73__VCMediaAnalyzerManager_notifyClientsWithStreamToken_service_arguments___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 184) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}];
  if (v2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [v2 clientContextList];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v5);
    }
  }

  else if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __73__VCMediaAnalyzerManager_notifyClientsWithStreamToken_service_arguments___block_invoke_cold_1();
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        *buf = 136316162;
        v18 = v9;
        v19 = 2080;
        v20 = "[VCMediaAnalyzerManager notifyClientsWithStreamToken:service:arguments:]_block_invoke";
        v21 = 1024;
        v22 = 309;
        v23 = 2112;
        v24 = v8;
        v25 = 2048;
        v26 = v11;
        _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) No registered streams found", buf, 0x30u);
      }
    }
  }
}

- (void)streamToken:(int64_t)a3 didEnable:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v9 = objc_alloc(MEMORY[0x1E695DF90]);
  v10 = [v9 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v6), @"vcMediaAnalyzerEnable", 0}];
  [VCXPCManager addNSError:a5 toXPCArgumentDictionary:v10];
  [(VCMediaAnalyzerManager *)self notifyClientsWithStreamToken:a3 service:"vcMediaAnalyzerDidEnable" arguments:v10];
}

- (void)streamToken:(int64_t)a3 didProduceMediaAnalysis:(id)a4
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"vcMediaAnalyzerAnalysisResults";
  v5[0] = a4;
  -[VCMediaAnalyzerManager notifyClientsWithStreamToken:service:arguments:](self, "notifyClientsWithStreamToken:service:arguments:", a3, "vcMediaAnalyzerdidProduceMediaAnalysis", [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1]);
}

- (void)init
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d init failed", v2, v3, v4, v5, v6);
}

void __66__VCMediaAnalyzerManager_registerMediaAnalyzerSource_streamToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Context already exists for stream token=%u", v2, v3, v4, v5);
}

void __66__VCMediaAnalyzerManager_registerMediaAnalyzerSource_streamToken___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate streamTokenEntry for stream token=%u", v2, v3, v4, v5);
}

void __71__VCMediaAnalyzerManager_unregisterMediaAnalyzerSourceWithStreamToken___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Context not exists for stream token=%u", v2, v3, v4, v5);
}

- (void)initializeMediaAnalyzerManagerHandler:(void *)a3 error:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCMediaAnalyzerManager" code:a1 userInfo:0];
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        v8 = v6;
        v9 = "[VCMediaAnalyzerManager initializeMediaAnalyzerManagerHandler:error:]";
        v10 = 1024;
        v11 = 217;
        v12 = 2048;
        v13 = a1;
        _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d Initialization of mediaAnalyzer failed. error=%ld", v7, 0x26u);
      }
    }
  }

  *a3 = 0;
}

void __73__VCMediaAnalyzerManager_notifyClientsWithStreamToken_service_arguments___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No registered streams found", v2, v3, v4, v5, v6);
}

@end