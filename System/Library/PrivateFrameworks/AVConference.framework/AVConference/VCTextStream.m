@interface VCTextStream
- (BOOL)onConfigureStreamWithConfiguration:(id)a3 error:(id *)a4;
- (BOOL)setupTextReceiverWithError:(id *)a3;
- (VCTextStream)init;
- (void)dealloc;
- (void)didReceiveCharacter:(unsigned __int16)a3;
- (void)didReceiveText:(id)a3;
- (void)onStartWithCompletionHandler:(id)a3;
- (void)onStopWithCompletionHandler:(id)a3;
- (void)sendCharacter:(unsigned __int16)a3;
- (void)sendText:(id)a3;
- (void)setupTextTransmitter;
@end

@implementation VCTextStream

- (VCTextStream)init
{
  v17 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCTextStream;
  v2 = [(VCMediaStream *)&v6 init];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCTextStream init]";
      v11 = 1024;
      v12 = 46;
      v13 = 2048;
      v14 = v2;
      v15 = 2080;
      v16 = "[VCTextStream init]";
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, "VCTextStream [%s] %s:%d VCTextStream[%p] %s", buf, 0x30u);
    }
  }

  return v2;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCTextStream dealloc]";
        v16 = 1024;
        v17 = 51;
        v6 = "VCTextStream [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCTextStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCTextStream dealloc]";
        v16 = 1024;
        v17 = 51;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = "VCTextStream [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  objc_storeWeak(&self->_receiveDelegate, 0);
  v11.receiver = self;
  v11.super_class = VCTextStream;
  [(VCMediaStream *)&v11 dealloc];
}

- (void)sendCharacter:(unsigned __int16)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136315906;
          *&v15[4] = v6;
          *&v15[12] = 2080;
          *&v15[14] = "[VCTextStream sendCharacter:]";
          *&v15[22] = 1024;
          LODWORD(v16) = 71;
          WORD2(v16) = 1024;
          *(&v16 + 6) = v3;
          v9 = "VCTextStream [%s] %s:%d Sending text:'%C'";
          v10 = v7;
          v11 = 34;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v15, v11);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(VCTextStream *)v6 sendCharacter:v3, v7];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCTextStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136316418;
          *&v15[4] = v12;
          *&v15[12] = 2080;
          *&v15[14] = "[VCTextStream sendCharacter:]";
          *&v15[22] = 1024;
          LODWORD(v16) = 71;
          WORD2(v16) = 2112;
          *(&v16 + 6) = v5;
          HIWORD(v16) = 2048;
          v17 = self;
          LOWORD(v18) = 1024;
          *(&v18 + 2) = v3;
          v9 = "VCTextStream [%s] %s:%d %@(%p) Sending text:'%C'";
          v10 = v13;
          v11 = 54;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 136316418;
        *&v15[4] = v12;
        *&v15[12] = 2080;
        *&v15[14] = "[VCTextStream sendCharacter:]";
        *&v15[22] = 1024;
        LODWORD(v16) = 71;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v5;
        HIWORD(v16) = 2048;
        v17 = self;
        LOWORD(v18) = 1024;
        *(&v18 + 2) = v3;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCTextStream [%s] %s:%d %@(%p) Sending text:'%C'", v15, 0x36u);
      }
    }
  }

  [(VCTextTransmitter *)self->_textTransmitter sendCharacter:v3, *v15, *&v15[16], v16, v17, v18, v19];
}

- (void)sendText:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      v8 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136315906;
          *&v15[4] = v6;
          *&v15[12] = 2080;
          *&v15[14] = "[VCTextStream sendText:]";
          *&v15[22] = 1024;
          LODWORD(v16) = 76;
          WORD2(v16) = 2112;
          *(&v16 + 6) = a3;
          v9 = "VCTextStream [%s] %s:%d Sending text:%@";
          v10 = v7;
          v11 = 38;
LABEL_13:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, v15, v11);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [VCTextStream sendText:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCTextStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v14 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 136316418;
          *&v15[4] = v12;
          *&v15[12] = 2080;
          *&v15[14] = "[VCTextStream sendText:]";
          *&v15[22] = 1024;
          LODWORD(v16) = 76;
          WORD2(v16) = 2112;
          *(&v16 + 6) = v5;
          HIWORD(v16) = 2048;
          v17 = self;
          LOWORD(v18) = 2112;
          *(&v18 + 2) = a3;
          v9 = "VCTextStream [%s] %s:%d %@(%p) Sending text:%@";
          v10 = v13;
          v11 = 58;
          goto LABEL_13;
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 136316418;
        *&v15[4] = v12;
        *&v15[12] = 2080;
        *&v15[14] = "[VCTextStream sendText:]";
        *&v15[22] = 1024;
        LODWORD(v16) = 76;
        WORD2(v16) = 2112;
        *(&v16 + 6) = v5;
        HIWORD(v16) = 2048;
        v17 = self;
        LOWORD(v18) = 2112;
        *(&v18 + 2) = a3;
        _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "VCTextStream [%s] %s:%d %@(%p) Sending text:%@", v15, 0x3Au);
      }
    }
  }

  [(VCTextTransmitter *)self->_textTransmitter sendText:a3, *v15, *&v15[16], v16, v17, v18];
}

- (void)didReceiveCharacter:(unsigned __int16)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCTextStream didReceiveCharacter:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [(VCTextStream *)self performSelector:sel_logPrefix];
    }

    else
    {
      v4 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v7 = 136316162;
        v8 = v5;
        v9 = 2080;
        v10 = "[VCTextStream didReceiveCharacter:]";
        v11 = 1024;
        v12 = 83;
        v13 = 2112;
        v14 = v4;
        v15 = 2048;
        v16 = self;
        _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, "VCTextStream [%s] %s:%d %@(%p) Error: -didReceiveText: should be called instead of this method.", &v7, 0x30u);
      }
    }
  }
}

- (void)didReceiveText:(id)a3
{
  v4 = [(VCTextStream *)self receiveDelegate];

  [(VCTextReceiverDelegate *)v4 didReceiveText:a3];
}

- (void)setupTextTransmitter
{
  v9 = *MEMORY[0x1E69E9840];

  v3 = [(VCMediaStream *)self defaultStreamConfig];
  HIDWORD(v6) = [(VCMediaStreamConfig *)v3 isRedEnabled:[(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtpHandle]];
  v7 = [(VCMediaStreamConfig *)v3 numRedundantPayloads];
  [(VCMediaStreamConfig *)v3 txIntervalMin];
  v8 = v4;
  self->_textTransmitter = [[VCTextTransmitter alloc] initWithConfiguration:&v5];
}

- (BOOL)setupTextReceiverWithError:(id *)a3
{
  v10 = *MEMORY[0x1E69E9840];

  v8 = [(VCMediaStreamTransport *)[(VCMediaStream *)self defaultTransport] rtpHandle];
  v9 = 1000;
  if (self->super._transportSetupInfo.setupType == 5)
  {
    BYTE4(v9) = 1;
  }

  v5 = [[VCTextReceiver alloc] initWithConfiguration:&v8];
  v6 = v5;
  self->_textReceiver = v5;
  if (v5)
  {
    [(VCTextReceiver *)v5 setDelegate:self];
    [(VCTextReceiver *)self->_textReceiver setSupportedPayloads:[(NSDictionary *)[(VCMediaStreamConfig *)[(VCMediaStream *)self defaultStreamConfig] rxPayloadMap] allKeys]];
  }

  else if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"Failed to allocate the text receiver"];
  }

  return v6 != 0;
}

- (BOOL)onConfigureStreamWithConfiguration:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a3 || [a3 count] != 1)
  {
    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTextStream.m", 144], @"Invalid Parameter", @"Called with an invalid parameter");
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v11 = VRTraceErrorLogLevelToCSTR();
        IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
        v13 = *MEMORY[0x1E6986650];
        if (IsOSFaultDisabled)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [(VCTextStream *)v11 onConfigureStreamWithConfiguration:a4 error:v13];
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          [(VCTextStream *)v11 onConfigureStreamWithConfiguration:a4 error:v13];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCTextStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = VRTraceIsOSFaultDisabled();
        v16 = *MEMORY[0x1E6986650];
        if (v15)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            if (*a4)
            {
              v17 = [objc_msgSend(*a4 "description")];
            }

            else
            {
              v17 = "<nil>";
            }

            *buf = 136316418;
            v23 = v14;
            v24 = 2080;
            v25 = "[VCTextStream onConfigureStreamWithConfiguration:error:]";
            v26 = 1024;
            v27 = 147;
            v28 = 2112;
            v29 = v10;
            v30 = 2048;
            v31 = self;
            v32 = 2080;
            v33 = v17;
            _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, "VCTextStream [%s] %s:%d %@(%p) error[%s]", buf, 0x3Au);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          if (*a4)
          {
            v19 = [objc_msgSend(*a4 "description")];
          }

          else
          {
            v19 = "<nil>";
          }

          *buf = 136316418;
          v23 = v14;
          v24 = 2080;
          v25 = "[VCTextStream onConfigureStreamWithConfiguration:error:]";
          v26 = 1024;
          v27 = 147;
          v28 = 2112;
          v29 = v10;
          v30 = 2048;
          v31 = self;
          v32 = 2080;
          v33 = v19;
          _os_log_fault_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_FAULT, "VCTextStream [%s] %s:%d %@(%p) error[%s]", buf, 0x3Au);
        }
      }
    }

    return 0;
  }

  v7 = [a3 objectAtIndexedSubscript:0];
  if ([(NSMutableArray *)self->super._transportArray count])
  {
    v8 = [(VCMediaStream *)self defaultTransport];
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_25:
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCTextStream onConfigureStreamWithConfiguration:error:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = [(VCTextStream *)self performSelector:sel_logPrefix];
      }

      else
      {
        v18 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v23 = v20;
          v24 = 2080;
          v25 = "[VCTextStream onConfigureStreamWithConfiguration:error:]";
          v26 = 1024;
          v27 = 154;
          v28 = 2112;
          v29 = v18;
          v30 = 2048;
          v31 = self;
          _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, "VCTextStream [%s] %s:%d %@(%p) Failed to create transport", buf, 0x30u);
        }
      }
    }

    +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a4, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCTextStream.m", 158], @"Failed to create transport", @"Create transport failed");
    return 0;
  }

  v8 = [(VCMediaStream *)self createTransportWithStreamConfig:v7 ssrc:self->super._localSSRC];
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_5:
  self->super._transportSetupInfo.sourceRate = 1000;
  if (self->super._transportSetupInfo.setupType == 5)
  {
    self->super._transportSetupInfo.var0.ipInfo.srcIPPORT.szIfName[12] = 1;
  }

  if (![VCMediaStreamTransport configureWithStreamConfig:v8 setupInfo:"configureWithStreamConfig:setupInfo:reducedSizeRTCPPackets:hopByHopEncryptRTCPPackets:statisticsCollector:basebandCongestionDetector:error:" reducedSizeRTCPPackets:v7 hopByHopEncryptRTCPPackets:a4 statisticsCollector:? basebandCongestionDetector:? error:?])
  {
    return 0;
  }

  [(VCTextStream *)self setupTextTransmitter];

  return [(VCTextStream *)self setupTextReceiverWithError:a4];
}

- (void)onStartWithCompletionHandler:(id)a3
{
  [(VCTextTransmitter *)self->_textTransmitter start];
  [(VCTextReceiver *)self->_textReceiver start];
  v5 = *(a3 + 2);

  v5(a3, 1, 0);
}

- (void)onStopWithCompletionHandler:(id)a3
{
  [(VCTextTransmitter *)self->_textTransmitter stop];
  [(VCTextReceiver *)self->_textReceiver stop];
  v5 = *(a3 + 2);

  v5(a3, 1, 0);
}

- (void)sendCharacter:(os_log_t)log .cold.1(uint64_t a1, unsigned __int16 a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[VCTextStream sendCharacter:]";
  v7 = 1024;
  v8 = 71;
  v9 = 1024;
  v10 = a2;
  _os_log_debug_impl(&dword_1DB56E000, log, OS_LOG_TYPE_DEBUG, "VCTextStream [%s] %s:%d Sending text:'%C'", &v3, 0x22u);
}

- (void)sendText:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCTextStream sendText:]";
  v6 = 1024;
  v7 = 76;
  v8 = 2112;
  v9 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, "VCTextStream [%s] %s:%d Sending text:%@", v3, 0x26u);
}

- (void)didReceiveCharacter:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 83;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "VCTextStream [%s] %s:%d Error: -didReceiveText: should be called instead of this method.", v1, 0x1Cu);
}

- (void)onConfigureStreamWithConfiguration:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 154;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, "VCTextStream [%s] %s:%d Failed to create transport", v1, 0x1Cu);
}

- (void)onConfigureStreamWithConfiguration:(NSObject *)a3 error:.cold.2(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_2();
  _os_log_fault_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_FAULT, "VCTextStream [%s] %s:%d error[%s]", v4, 0x26u);
}

- (void)onConfigureStreamWithConfiguration:(NSObject *)a3 error:.cold.3(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    [objc_msgSend(*a2 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, "VCTextStream [%s] %s:%d error[%s]", v4, 0x26u);
}

@end