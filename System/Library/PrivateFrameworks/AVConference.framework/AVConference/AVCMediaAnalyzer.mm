@interface AVCMediaAnalyzer
- (AVCMediaAnalyzer)initWithDelegate:(id)a3 delegateQueue:(id)a4 analysisType:(int64_t)a5 streamToken:(int64_t)a6;
- (BOOL)connect;
- (BOOL)setUpDelegateQueue:(id)a3;
- (id)mediaAnalyzerResultsWithInternalResult:(id)a3;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)didEnableHandlerWithResult:(id)a3 error:(id)a4;
- (void)didProduceMediaAnalysisHandlerWithResult:(id)a3 error:(id)a4;
- (void)disconnect;
- (void)enableMediaAnalyzer:(BOOL)a3;
- (void)registerBlocksForNotifications;
@end

@implementation AVCMediaAnalyzer

- (BOOL)setUpDelegateQueue:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    dispatch_retain(a3);
  }

  else
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCMediaAnalyzer.delegateQueue", 0, CustomRootQueue);
    if (!v4)
    {
      [(AVCMediaAnalyzer *)self setUpDelegateQueue:?];
      return v7;
    }
  }

  self->_delegateQueue = v4;
  return 1;
}

- (AVCMediaAnalyzer)initWithDelegate:(id)a3 delegateQueue:(id)a4 analysisType:(int64_t)a5 streamToken:(int64_t)a6
{
  v30 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  v19.receiver = self;
  v19.super_class = AVCMediaAnalyzer;
  v11 = [(AVCMediaAnalyzer *)&v19 init];
  v12 = v11;
  if (!v11)
  {
    [AVCMediaAnalyzer initWithDelegate:delegateQueue:analysisType:streamToken:];
    goto LABEL_16;
  }

  if (!a3)
  {
    [AVCMediaAnalyzer initWithDelegate:v11 delegateQueue:? analysisType:? streamToken:?];
    goto LABEL_16;
  }

  v11->_streamToken = a6;
  v11->_analysisType = a5;
  objc_storeWeak(&v11->_delegate, a3);
  v13 = objc_alloc_init(AVConferenceXPCClient);
  v12->_connection = v13;
  if (!v13)
  {
    [AVCMediaAnalyzer initWithDelegate:v12 delegateQueue:? analysisType:? streamToken:?];
    goto LABEL_16;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
  v15 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCMediaAnalyzer.callbackQueue", 0, CustomRootQueue);
  v12->_callbackQueue = v15;
  if (!v15)
  {
    [AVCMediaAnalyzer initWithDelegate:delegateQueue:analysisType:streamToken:];
    goto LABEL_16;
  }

  if (![(AVCMediaAnalyzer *)v12 setUpDelegateQueue:a4])
  {
LABEL_16:

    return 0;
  }

  [(AVCMediaAnalyzer *)v12 registerBlocksForNotifications];
  if (![(AVCMediaAnalyzer *)v12 connect])
  {
    [AVCMediaAnalyzer initWithDelegate:v12 delegateQueue:? analysisType:? streamToken:?];
    goto LABEL_16;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaAnalyzer-initWithDelegate");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v21 = v16;
      v22 = 2080;
      v23 = "[AVCMediaAnalyzer initWithDelegate:delegateQueue:analysisType:streamToken:]";
      v24 = 1024;
      v25 = 101;
      v26 = 2048;
      v27 = v12;
      v28 = 1024;
      v29 = a6;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaAnalyzer-initWithDelegate (%p) Succeeded with streamToken=%u", buf, 0x2Cu);
    }
  }

  return v12;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  [(AVCMediaAnalyzer *)self deregisterBlocksForNotifications];
  [(AVCMediaAnalyzer *)self disconnect];
  objc_storeWeak(&self->_delegate, 0);
  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
    self->_callbackQueue = 0;
  }

  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaAnalyzer-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[AVCMediaAnalyzer dealloc]";
      v12 = 1024;
      v13 = 117;
      v14 = 2048;
      v15 = self;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaAnalyzer-dealloc (%p)", buf, 0x26u);
    }
  }

  v7.receiver = self;
  v7.super_class = AVCMediaAnalyzer;
  [(AVCMediaAnalyzer *)&v7 dealloc];
}

- (BOOL)connect
{
  v44 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        streamToken = self->_streamToken;
        *buf = 136315906;
        v33 = v4;
        v34 = 2080;
        v35 = "[AVCMediaAnalyzer connect]";
        v36 = 1024;
        v37 = 124;
        v38 = 1024;
        *v39 = streamToken;
        v7 = " [%s] %s:%d connect for streamToken=%u";
        v8 = v5;
        v9 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(AVCMediaAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_streamToken;
        *buf = 136316418;
        v33 = v10;
        v34 = 2080;
        v35 = "[AVCMediaAnalyzer connect]";
        v36 = 1024;
        v37 = 124;
        v38 = 2112;
        *v39 = v3;
        *&v39[8] = 2048;
        *&v39[10] = self;
        v40 = 1024;
        v41 = v12;
        v7 = " [%s] %s:%d %@(%p) connect for streamToken=%u";
        v8 = v11;
        v9 = 54;
        goto LABEL_11;
      }
    }
  }

  v13 = [AVCMediaAnalyzer analysisTypeWithClientAnalysisType:self->_analysisType];
  v14 = objc_alloc(MEMORY[0x1E695DF20]);
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_streamToken];
  v16 = [v14 initWithObjectsAndKeys:{v15, @"vcMediaAnalyzerStreamToken", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v13), @"vcMediaAnalyzerAnalysisType", 0}];
  v17 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaAnalyzerInitialize" arguments:v16];

  v18 = [v17 objectForKeyedSubscript:@"ERROR"];
  if (!v18)
  {
    return v18 == 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v18 == 0;
    }

    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v18 == 0;
    }

    v22 = self->_streamToken;
    v23 = [objc_msgSend(v18 "description")];
    *buf = 136316162;
    v33 = v20;
    v34 = 2080;
    v35 = "[AVCMediaAnalyzer connect]";
    v36 = 1024;
    v37 = 132;
    v38 = 1024;
    *v39 = v22;
    *&v39[4] = 2080;
    *&v39[6] = v23;
    v24 = " [%s] %s:%d Failed connection for streamToken=%u Error=%s";
    v25 = v21;
    v26 = 44;
LABEL_24:
    _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
    return v18 == 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [(AVCMediaAnalyzer *)self performSelector:sel_logPrefix];
  }

  else
  {
    v19 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v30 = self->_streamToken;
      v31 = [objc_msgSend(v18 "description")];
      *buf = 136316674;
      v33 = v27;
      v34 = 2080;
      v35 = "[AVCMediaAnalyzer connect]";
      v36 = 1024;
      v37 = 132;
      v38 = 2112;
      *v39 = v19;
      *&v39[8] = 2048;
      *&v39[10] = self;
      v40 = 1024;
      v41 = v30;
      v42 = 2080;
      v43 = v31;
      v24 = " [%s] %s:%d %@(%p) Failed connection for streamToken=%u Error=%s";
      v25 = v28;
      v26 = 64;
      goto LABEL_24;
    }
  }

  return v18 == 0;
}

- (void)disconnect
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        streamToken = self->_streamToken;
        *v13 = 136315906;
        *&v13[4] = v4;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCMediaAnalyzer disconnect]";
        *&v13[22] = 1024;
        LODWORD(v14) = 138;
        WORD2(v14) = 1024;
        *(&v14 + 6) = streamToken;
        v7 = " [%s] %s:%d disconnect for streamToken=%u";
        v8 = v5;
        v9 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v13, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(AVCMediaAnalyzer *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_streamToken;
        *v13 = 136316418;
        *&v13[4] = v10;
        *&v13[12] = 2080;
        *&v13[14] = "[AVCMediaAnalyzer disconnect]";
        *&v13[22] = 1024;
        LODWORD(v14) = 138;
        WORD2(v14) = 2112;
        *(&v14 + 6) = v3;
        HIWORD(v14) = 2048;
        v15 = self;
        LOWORD(v16) = 1024;
        *(&v16 + 2) = v12;
        v7 = " [%s] %s:%d %@(%p) disconnect for streamToken=%u";
        v8 = v11;
        v9 = 54;
        goto LABEL_11;
      }
    }
  }

  [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcMediaAnalyzerUnInitialize", *v13, *&v13[16], v14, v15, v16, v17];
}

- (void)registerBlocksForNotifications
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaAnalyzerDidEnable" block:v6 queue:self->_callbackQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke_2;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaAnalyzerdidProduceMediaAnalysis" block:v5 queue:self->_callbackQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke_3;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"conferenceDidServerDie" block:v4 queue:self->_callbackQueue];
}

uint64_t __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    v7 = [*(a1 + 32) strong];

    return [v7 didEnableHandlerWithResult:a2 error:a3];
  }

  return result;
}

uint64_t __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    v7 = [*(a1 + 32) strong];

    return [v7 didProduceMediaAnalysisHandlerWithResult:a2 error:a3];
  }

  return result;
}

void __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v3 = [*(a1 + 32) strong];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke_3_cold_1(v5);
        }
      }

      [objc_msgSend(v3 "delegate")];
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke_3_cold_2(v6);
      }
    }
  }
}

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaAnalyzerDidEnable"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaAnalyzerdidProduceMediaAnalysis"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"conferenceDidServerDie"];
}

- (id)mediaAnalyzerResultsWithInternalResult:(id)a3
{
  v3 = [[AVCMediaAnalyzerResult alloc] initWithInternalResult:a3 analysisType:self->_analysisType];

  return v3;
}

- (void)didEnableHandlerWithResult:(id)a3 error:(id)a4
{
  block[8] = *MEMORY[0x1E69E9840];
  v6 = [a3 objectForKey:@"vcMediaAnalyzerEnable"];
  v7 = [(AVCMediaAnalyzer *)self delegate];
  v8 = [(AVCMediaAnalyzer *)self delegateQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVCMediaAnalyzer_didEnableHandlerWithResult_error___block_invoke;
  block[3] = &unk_1E85F3B00;
  block[4] = v6;
  block[5] = self;
  block[6] = a4;
  block[7] = v7;
  dispatch_async(v8, block);
}

uint64_t __53__AVCMediaAnalyzer_didEnableHandlerWithResult_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) BOOLValue];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaAnalyzer-didEnable");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = 136316418;
      v9 = v3;
      v10 = 2080;
      v11 = "[AVCMediaAnalyzer didEnableHandlerWithResult:error:]_block_invoke";
      v12 = 1024;
      v13 = 191;
      v14 = 2048;
      v15 = v5;
      v16 = 1024;
      v17 = v2;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaAnalyzer-didEnable (%p) didEnableBoolValue=%{BOOL}d, error=%@", &v8, 0x36u);
    }
  }

  return [*(a1 + 56) mediaAnalyzer:*(a1 + 40) didEnable:v2 error:*(a1 + 48)];
}

- (void)didProduceMediaAnalysisHandlerWithResult:(id)a3 error:(id)a4
{
  v14[9] = *MEMORY[0x1E69E9840];
  v7 = [(AVCMediaAnalyzer *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [a3 objectForKeyedSubscript:@"vcMediaAnalyzerAnalysisResults"];
    v10 = [(AVCMediaAnalyzer *)self streamToken];
    v11 = [(AVCMediaAnalyzer *)self mediaAnalyzerResultsWithInternalResult:v9];
    if (v11)
    {
      v12 = v11;
      if (objc_opt_respondsToSelector())
      {
        v13 = [(AVCMediaAnalyzer *)self delegateQueue];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __67__AVCMediaAnalyzer_didProduceMediaAnalysisHandlerWithResult_error___block_invoke;
        v14[3] = &unk_1E85F3B28;
        v14[4] = self;
        v14[5] = a4;
        v14[6] = v8;
        v14[7] = v12;
        v14[8] = v10;
        dispatch_async(v13, v14);
      }
    }
  }
}

uint64_t __67__AVCMediaAnalyzer_didProduceMediaAnalysisHandlerWithResult_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaAnalyzer-didProduceMediaAnalysisResult");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(v4 + 40);
      v8 = 136316418;
      v9 = v2;
      v10 = 2080;
      v11 = "[AVCMediaAnalyzer didProduceMediaAnalysisHandlerWithResult:error:]_block_invoke";
      v12 = 1024;
      v13 = 209;
      v14 = 2048;
      v15 = v4;
      v16 = 2112;
      v17 = v5;
      v18 = 2048;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaAnalyzer-didProduceMediaAnalysisResult (%p) error=%@ analysisType=%ld", &v8, 0x3Au);
    }
  }

  return [*(a1 + 48) mediaAnalyzer:*(a1 + 32) didProduceMediaAnalysisResult:*(a1 + 56) streamToken:*(a1 + 64)];
}

- (void)enableMediaAnalyzer:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AVCMediaAnalyzer_enableMediaAnalyzer___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(callbackQueue, block);
}

void __40__AVCMediaAnalyzer_enableMediaAnalyzer___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != *(a1 + 32))
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = *(a1 + 32);
    *buf = 136316162;
    v17 = v8;
    v18 = 2080;
    v19 = "[AVCMediaAnalyzer enableMediaAnalyzer:]_block_invoke";
    v20 = 1024;
    v21 = 219;
    v22 = 2112;
    v23 = v2;
    v24 = 2048;
    v25 = v10;
    v5 = " [%s] %s:%d %@(%p) ";
    v6 = v9;
    v7 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = v3;
      v18 = 2080;
      v19 = "[AVCMediaAnalyzer enableMediaAnalyzer:]_block_invoke";
      v20 = 1024;
      v21 = 219;
      v5 = " [%s] %s:%d ";
      v6 = v4;
      v7 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
    }
  }

LABEL_12:
  v11 = objc_alloc(MEMORY[0x1E695DF20]);
  v12 = [v11 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", *(a1 + 40)), @"vcMediaAnalyzerEnable", 0}];
  [*(*(a1 + 32) + 24) sendMessageAsync:"vcMediaAnalyzerEnable" arguments:v12];

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCMediaAnalyzer-enableMediaAnalyzer");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 136315906;
      v17 = v13;
      v18 = 2080;
      v19 = "[AVCMediaAnalyzer enableMediaAnalyzer:]_block_invoke";
      v20 = 1024;
      v21 = 223;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCMediaAnalyzer-enableMediaAnalyzer self=%@", buf, 0x26u);
    }
  }
}

- (void)setUpDelegateQueue:(void *)a1 .cold.1(void *a1, _BYTE *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v9 = 28;
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      v9 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)initWithDelegate:(void *)a1 delegateQueue:analysisType:streamToken:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    v7 = 34;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_17_0();
      v7 = 54;
      goto LABEL_11;
    }
  }
}

- (void)initWithDelegate:delegateQueue:analysisType:streamToken:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithDelegate:(void *)a1 delegateQueue:analysisType:streamToken:.cold.3(void *a1)
{
  if (objc_opt_class() == a1)
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

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_2();
    v7 = 34;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3_2();
      OUTLINED_FUNCTION_17_0();
      v7 = 54;
      goto LABEL_11;
    }
  }
}

- (void)initWithDelegate:(void *)a1 delegateQueue:analysisType:streamToken:.cold.4(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
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
    v13 = 89;
    OUTLINED_FUNCTION_2_0();
LABEL_12:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = v9;
      OUTLINED_FUNCTION_0();
      v13 = 89;
      v14 = 2112;
      v15 = v2;
      v16 = 2048;
      v17 = a1;
      v3 = &dword_1DB56E000;
      v6 = " [%s] %s:%d %@(%p) nil delegate passed";
      v7 = &v11;
      v4 = v10;
      v5 = OS_LOG_TYPE_ERROR;
      v8 = 48;
      goto LABEL_12;
    }
  }
}

- (void)initWithDelegate:delegateQueue:analysisType:streamToken:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke_3_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  OUTLINED_FUNCTION_6();
  v6 = 164;
  v7 = 2048;
  v8 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d serverd died, notifying client. self=%p", &v3, 0x26u);
}

void __50__AVCMediaAnalyzer_registerBlocksForNotifications__block_invoke_3_cold_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 167;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d server died", &v2, 0x1Cu);
}

@end