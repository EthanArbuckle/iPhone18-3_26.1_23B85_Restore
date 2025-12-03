@interface AVCQoSMonitor
- (AVCQoSMonitor)initWithStreamToken:(int64_t)token queue:(id)queue error:(id *)error;
- (BOOL)generateInvalidStreamTokenWithError:(id *)error;
- (id)registerStreamToken:(int64_t)token;
- (int64_t)reportingIntervalForStreamToken:(int64_t)token;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)registerBlocksForNotifications;
- (void)requestQoSReport;
- (void)setDelegate:(id)delegate;
- (void)terminateConnection;
@end

@implementation AVCQoSMonitor

- (AVCQoSMonitor)initWithStreamToken:(int64_t)token queue:(id)queue error:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *error;
      *buf = 136316418;
      v33 = v9;
      v34 = 2080;
      v35 = "[AVCQoSMonitor initWithStreamToken:queue:error:]";
      v36 = 1024;
      v37 = 48;
      v38 = 2048;
      tokenCopy = token;
      v40 = 2112;
      selfCopy = queue;
      v42 = 2112;
      v43 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken=%ld, queue=%@, error=%@", buf, 0x3Au);
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v33 = v13;
        v34 = 2080;
        v35 = "[AVCQoSMonitor initWithStreamToken:queue:error:]";
        v36 = 1024;
        v37 = 49;
        v38 = 1024;
        LODWORD(tokenCopy) = token;
        v15 = " [%s] %s:%d streamToken[%u]";
        v16 = v14;
        v17 = 34;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(AVCQoSMonitor *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v33 = v18;
        v34 = 2080;
        v35 = "[AVCQoSMonitor initWithStreamToken:queue:error:]";
        v36 = 1024;
        v37 = 49;
        v38 = 2112;
        tokenCopy = v12;
        v40 = 2048;
        selfCopy = self;
        v42 = 1024;
        LODWORD(v43) = token;
        v15 = " [%s] %s:%d %@(%p) streamToken[%u]";
        v16 = v19;
        v17 = 54;
        goto LABEL_14;
      }
    }
  }

  v29.receiver = self;
  v29.super_class = AVCQoSMonitor;
  v20 = [(AVCQoSMonitor *)&v29 init];
  if (v20)
  {
    v20->_connection = objc_alloc_init(AVConferenceXPCClient);
    v30 = @"conferenceCallID";
    v31 = [MEMORY[0x1E696AD98] numberWithInteger:token];
    v21 = -[AVConferenceXPCClient sendMessageSync:arguments:](v20->_connection, "sendMessageSync:arguments:", "vcQosMonitorInitializForStreamToken", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1]);
    if (v21)
    {
      v22 = v21;
      v23 = objc_alloc(MEMORY[0x1E695DF70]);
      v20->_registeredStreamTokens = [v23 initWithObjects:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token), 0}];
      v24 = objc_alloc(MEMORY[0x1E695DF90]);
      v25 = [v22 objectForKeyedSubscript:@"vcQoSReportingInterval"];
      v20->_reportingIntervals = [v24 initWithObjectsAndKeys:{v25, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token), 0}];
      [(AVCQoSMonitor *)v20 registerBlocksForNotifications];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v33 = v26;
          v34 = 2080;
          v35 = "[AVCQoSMonitor initWithStreamToken:queue:error:]";
          v36 = 1024;
          v37 = 62;
          v38 = 1024;
          LODWORD(tokenCopy) = token;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d success streamToken=%u", buf, 0x22u);
        }
      }
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCQoSMonitor initWithStreamToken:queue:error:];
        }
      }

      [(AVCQoSMonitor *)v20 generateInvalidStreamTokenWithError:error];

      return 0;
    }
  }

  return v20;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v3;
      v9 = 2080;
      v10 = "[AVCQoSMonitor dealloc]";
      v11 = 1024;
      v12 = 79;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  objc_storeWeak(&self->_delegate, 0);

  [(AVCQoSMonitor *)self terminateConnection];
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
    self->_stateQueue = 0;
  }

  v6.receiver = self;
  v6.super_class = AVCQoSMonitor;
  [(AVCQoSMonitor *)&v6 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCQoSMonitor setDelegate:]";
      v11 = 1024;
      v12 = 90;
      v13 = 2112;
      delegateCopy = delegate;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d delegate=%@", &v7, 0x26u);
    }
  }

  objc_storeWeak(&self->_delegate, delegate);
}

- (void)requestQoSReport
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d NOT YET IMPLEMENTED", v2, v3, v4, v5, v6);
}

- (id)registerStreamToken:(int64_t)token
{
  v32 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v5;
      v22 = 2080;
      v23 = "[AVCQoSMonitor registerStreamToken:]";
      v24 = 1024;
      v25 = 103;
      v26 = 2048;
      tokenCopy = token;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken=%ld", buf, 0x26u);
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v8;
        v22 = 2080;
        v23 = "[AVCQoSMonitor registerStreamToken:]";
        v24 = 1024;
        v25 = 104;
        v26 = 1024;
        LODWORD(tokenCopy) = token;
        v10 = " [%s] %s:%d streamToken[%u]";
        v11 = v9;
        v12 = 34;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(AVCQoSMonitor *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = v13;
        v22 = 2080;
        v23 = "[AVCQoSMonitor registerStreamToken:]";
        v24 = 1024;
        v25 = 104;
        v26 = 2112;
        tokenCopy = v7;
        v28 = 2048;
        selfCopy = self;
        v30 = 1024;
        tokenCopy2 = token;
        v10 = " [%s] %s:%d %@(%p) streamToken[%u]";
        v11 = v14;
        v12 = 54;
        goto LABEL_14;
      }
    }
  }

  *buf = 0;
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{token, @"conferenceCallID"}];
  v15 = -[AVConferenceXPCClient sendMessageSync:arguments:](self->_connection, "sendMessageSync:arguments:", "vcQosMonitorRegisterStreamToken", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1]);
  if (v15)
  {
    v16 = v15;
    -[NSMutableArray addObject:](self->_registeredStreamTokens, "addObject:", [MEMORY[0x1E696AD98] numberWithInteger:token]);
    v17 = [v16 objectForKeyedSubscript:@"vcQoSReportingInterval"];
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_reportingIntervals, "setObject:forKeyedSubscript:", v17, [MEMORY[0x1E696AD98] numberWithInteger:token]);
    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCQoSMonitor registerStreamToken:];
      }
    }

    [(AVCQoSMonitor *)self generateInvalidStreamTokenWithError:buf];
    return *buf;
  }
}

- (int64_t)reportingIntervalForStreamToken:(int64_t)token
{
  v16 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315906;
      v9 = v5;
      v10 = 2080;
      v11 = "[AVCQoSMonitor reportingIntervalForStreamToken:]";
      v12 = 1024;
      v13 = 124;
      v14 = 2048;
      tokenCopy = token;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken=%ld", &v8, 0x26u);
    }
  }

  return [-[NSMutableDictionary objectForKeyedSubscript:](self->_reportingIntervals objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token)), "integerValue"}];
}

- (void)terminateConnection
{
  [(AVCQoSMonitor *)self deregisterBlocksForNotifications];
  [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcQosMonitorTerminate"];

  self->_connection = 0;
}

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"conferenceDidServerDie"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcQoSMonitorCallbackDidReceiveReport"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcQoSMonitorCallbackDidReceiveReportEventDrivenKey"];
}

- (void)registerBlocksForNotifications
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"conferenceDidServerDie" block:v6 queue:self->_stateQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_54;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcQoSMonitorCallbackDidReceiveReport" block:v5 queue:self->_stateQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_61;
  v4[3] = &unk_1E85F81C0;
  v4[4] = v3;
  v4[5] = self;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcQoSMonitorCallbackDidReceiveReportEventDrivenKey" block:v4 queue:self->_stateQueue];
}

void __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v3 = [*(a1 + 32) strong];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_cold_1();
        }
      }

      [objc_msgSend(v3 "delegate")];
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_cold_2();
      }
    }
  }
}

void __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_54(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    if (a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_54_cold_1();
        }
      }
    }

    else
    {
      v6 = [*(a1 + 32) strong];
      if (v6)
      {
        v7 = v6;
        v8 = [a2 objectForKeyedSubscript:@"vcQoSReportDictionary"];
        v9 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcQoSReportToken", "unsignedIntegerValue"}];
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136315906;
            v15 = v10;
            v16 = 2080;
            v17 = "[AVCQoSMonitor registerBlocksForNotifications]_block_invoke";
            v18 = 1024;
            v19 = 179;
            v20 = 1024;
            v21 = v9;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCQoSMonitor callback: qosMonitor:didReceiveReport for streamToken=%u", &v14, 0x22u);
          }
        }

        [objc_msgSend(v7 "delegate")];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = v12;
          v16 = 2080;
          v17 = "[AVCQoSMonitor registerBlocksForNotifications]_block_invoke";
          v18 = 1024;
          v19 = 173;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCQoSMonitor: strongSelf is nil", &v14, 0x1Cu);
        }
      }
    }
  }
}

void __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_61(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    if (a3)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_61_cold_1();
        }
      }
    }

    else
    {
      v6 = [*(a1 + 32) strong];
      if (v6)
      {
        v7 = v6;
        v8 = [a2 objectForKeyedSubscript:@"vcQoSReportDictionary"];
        v9 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcQoSReportToken", "unsignedIntegerValue"}];
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136315906;
            v15 = v10;
            v16 = 2080;
            v17 = "[AVCQoSMonitor registerBlocksForNotifications]_block_invoke";
            v18 = 1024;
            v19 = 199;
            v20 = 1024;
            v21 = v9;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCQoSMonitor callback: qosMonitor:didReceiveEventDrivenReport for streamToken=%u", &v14, 0x22u);
          }
        }

        [*(a1 + 40) delegate];
        if (objc_opt_respondsToSelector())
        {
          [objc_msgSend(v7 "delegate")];
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = v12;
          v16 = 2080;
          v17 = "[AVCQoSMonitor registerBlocksForNotifications]_block_invoke";
          v18 = 1024;
          v19 = 193;
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCQoSMonitor: strongSelf is nil", &v14, 0x1Cu);
        }
      }
    }
  }
}

- (BOOL)generateInvalidStreamTokenWithError:(id *)error
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/AVCQoSMonitor.m", 214];

  return [GKVoiceChatError getNSError:error code:32016 detailedCode:0 filePath:v4 description:@"Could not register QoS Monitor" reason:@"Invalid Stream Token"];
}

- (void)initWithStreamToken:queue:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)registerStreamToken:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCQoSMonitor: serverd died, notifying client", v2, v3, v4, v5, v6);
}

void __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCQoSMonitor: server died", v2, v3, v4, v5, v6);
}

void __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_54_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __47__AVCQoSMonitor_registerBlocksForNotifications__block_invoke_61_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end