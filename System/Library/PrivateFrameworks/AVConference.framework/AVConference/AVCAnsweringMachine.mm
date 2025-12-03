@interface AVCAnsweringMachine
+ (void)cleanUpMessageRecordingURL:(id)l messageRecordingURLSandboxExtensionHandle:(int64_t)handle;
- (AVCAnsweringMachine)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue;
- (BOOL)setUpDelegateQueue:(id)queue;
- (BOOL)setUpServerConnection;
- (id)addAnnouncementAsset:(id)asset;
- (id)description;
- (id)logPrefix;
- (void)dealloc;
- (void)deregisterServerCallbacks;
- (void)printDidStop:(BOOL)stop messageRecordingURL:(id)l error:(id)error;
- (void)printInitConfiguration;
- (void)registerDidFinishAnnouncementBlockWithInstance:(id)instance;
- (void)registerDidStartBlockWithInstance:(id)instance;
- (void)registerDidStopBlockWithInstance:(id)instance;
- (void)registerServerCallbacks;
- (void)registerServerDidDisconnectBlockWithInstance:(id)instance;
- (void)setUpServerConnection;
- (void)start;
- (void)stop;
@end

@implementation AVCAnsweringMachine

- (id)logPrefix
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ self=%p", NSStringFromClass(v4), self];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = AVCAnsweringMachine;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ messageAudioToken=%ld, configuration=%@", -[AVCAnsweringMachine description](&v3, sel_description), -[AVCAnsweringMachine logPrefix](self, "logPrefix"), self->_messageAudioToken, self->_configuration];
}

- (void)registerDidStartBlockWithInstance:(id)instance
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__AVCAnsweringMachine_registerDidStartBlockWithInstance___block_invoke;
  v3[3] = &unk_1E85F3AD8;
  v3[4] = instance;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcAnsweringMachineDidStart" block:v3 queue:self->_stateQueue];
}

void __57__AVCAnsweringMachine_registerDidStartBlockWithInstance___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v6 = [*(a1 + 32) strong];
    if (!v6)
    {
      __57__AVCAnsweringMachine_registerDidStartBlockWithInstance___block_invoke_cold_1();
      return;
    }

    v7 = v6;
    if (objc_opt_class() == v6)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      v21 = v9;
      v22 = 2080;
      v23 = "[AVCAnsweringMachine registerDidStartBlockWithInstance:]_block_invoke";
      v24 = 1024;
      v25 = 107;
      v11 = " [%s] %s:%d received callback for didStart";
      v12 = v10;
      v13 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136316162;
      v21 = v14;
      v22 = 2080;
      v23 = "[AVCAnsweringMachine registerDidStartBlockWithInstance:]_block_invoke";
      v24 = 1024;
      v25 = 107;
      v26 = 2112;
      v27 = v8;
      v28 = 2048;
      v29 = v7;
      v11 = " [%s] %s:%d %@(%p) received callback for didStart";
      v12 = v15;
      v13 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_14:
    v16 = [a2 objectForKeyedSubscript:@"vcAnsweringMachineStatus"];
    v17 = [v7 delegate];
    v18 = [v7 delegateQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__AVCAnsweringMachine_registerDidStartBlockWithInstance___block_invoke_19;
    v19[3] = &unk_1E85F3B00;
    v19[4] = v16;
    v19[5] = v7;
    v19[6] = a3;
    v19[7] = v17;
    dispatch_async(v18, v19);
  }
}

uint64_t __57__AVCAnsweringMachine_registerDidStartBlockWithInstance___block_invoke_19(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) BOOLValue];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-didStart");
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
      v11 = "[AVCAnsweringMachine registerDidStartBlockWithInstance:]_block_invoke";
      v12 = 1024;
      v13 = 114;
      v14 = 2048;
      v15 = v5;
      v16 = 1024;
      v17 = v2;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAnsweringMachine-didStart (%p) didStart=%{BOOL}d, error=%@", &v8, 0x36u);
    }
  }

  return [*(a1 + 56) answeringMachine:*(a1 + 40) didStart:v2 error:*(a1 + 48)];
}

- (void)printDidStop:(BOOL)stop messageRecordingURL:(id)l error:(id)error
{
  stopCopy = stop;
  v43 = *MEMORY[0x1E69E9840];
  if (l)
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v19 = -1;
    v20 = -1;
    [VCFileUtil statsOfFile:l];
    v17 = 0;
    v9 = VCUtil_BinaryPrefix(v18, &v17);
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-didStop");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136317698;
        v22 = v10;
        v23 = 2080;
        v24 = "[AVCAnsweringMachine printDidStop:messageRecordingURL:error:]";
        v25 = 1024;
        v26 = 139;
        v27 = 2048;
        selfCopy2 = self;
        v29 = 1024;
        v30 = stopCopy;
        v31 = 2112;
        lCopy = l;
        v33 = 2112;
        errorCopy2 = error;
        v35 = 2048;
        v36 = v17;
        v37 = 1024;
        v38 = v9;
        v39 = 2048;
        v40 = v19;
        v41 = 2048;
        v42 = v20;
        v12 = " [%s] %s:%d @:@ AVCAnsweringMachine-didStop (%p) didStop=%{BOOL}d messageRecordingURL=%@ error=%@ recordingSize=%.2f%cB recordingLength=%.2fs, recordingAudioLength=%.2fs";
        v13 = v11;
        v14 = 100;
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-didStop");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v22 = v15;
        v23 = 2080;
        v24 = "[AVCAnsweringMachine printDidStop:messageRecordingURL:error:]";
        v25 = 1024;
        v26 = 133;
        v27 = 2048;
        selfCopy2 = self;
        v29 = 1024;
        v30 = stopCopy;
        v31 = 2112;
        lCopy = 0;
        v33 = 2112;
        errorCopy2 = error;
        v12 = " [%s] %s:%d @:@ AVCAnsweringMachine-didStop (%p) didStop=%{BOOL}d messageRecordingURL=%@ error=%@";
        v13 = v16;
        v14 = 64;
        goto LABEL_8;
      }
    }
  }
}

+ (void)cleanUpMessageRecordingURL:(id)l messageRecordingURLSandboxExtensionHandle:(int64_t)handle
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (l && ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] ? (v6 = v9 == 0) : (v6 = 0), !v6 && VRTraceGetErrorLogLevelForModule() >= 3 && (v7 = VRTraceErrorLogLevelToCSTR(), v8 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))))
  {
    *buf = 136316162;
    v11 = v7;
    v12 = 2080;
    v13 = "+[AVCAnsweringMachine cleanUpMessageRecordingURL:messageRecordingURLSandboxExtensionHandle:]";
    v14 = 1024;
    v15 = 151;
    v16 = 2112;
    lCopy = l;
    v18 = 2112;
    v19 = v9;
    _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to remove messageRecordingURL=%@: error=%@", buf, 0x30u);
    if (!handle)
    {
      return;
    }
  }

  else if (!handle)
  {
    return;
  }

  sandbox_extension_release();
}

- (void)registerDidStopBlockWithInstance:(id)instance
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__AVCAnsweringMachine_registerDidStopBlockWithInstance___block_invoke;
  v3[3] = &unk_1E85F3AD8;
  v3[4] = instance;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcAnsweringMachineDidStop" block:v3 queue:self->_stateQueue];
}

void __56__AVCAnsweringMachine_registerDidStopBlockWithInstance___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v6 = [*(a1 + 32) strong];
    if (!v6)
    {
      __56__AVCAnsweringMachine_registerDidStopBlockWithInstance___block_invoke_cold_1();
      return;
    }

    v7 = v6;
    if (objc_opt_class() == v6)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      v21 = v9;
      v22 = 2080;
      v23 = "[AVCAnsweringMachine registerDidStopBlockWithInstance:]_block_invoke";
      v24 = 1024;
      v25 = 169;
      v11 = " [%s] %s:%d Received callback for didStop";
      v12 = v10;
      v13 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136316162;
      v21 = v14;
      v22 = 2080;
      v23 = "[AVCAnsweringMachine registerDidStopBlockWithInstance:]_block_invoke";
      v24 = 1024;
      v25 = 169;
      v26 = 2112;
      v27 = v8;
      v28 = 2048;
      v29 = v7;
      v11 = " [%s] %s:%d %@(%p) Received callback for didStop";
      v12 = v15;
      v13 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_14:
    v16 = [a2 objectForKeyedSubscript:@"vcAnsweringMachineStatus"];
    v17 = [v7 delegate];
    v18 = [v7 delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__AVCAnsweringMachine_registerDidStopBlockWithInstance___block_invoke_25;
    block[3] = &unk_1E85F6478;
    block[4] = v16;
    block[5] = a2;
    block[6] = v7;
    block[7] = a3;
    block[8] = v17;
    dispatch_async(v18, block);
  }
}

uint64_t __56__AVCAnsweringMachine_registerDidStopBlockWithInstance___block_invoke_25(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) BOOLValue];
  v3 = [*(a1 + 40) objectForKeyedSubscript:@"vcAnsweringMachineMessageRecordingURL"];
  v4 = [*(a1 + 40) objectForKeyedSubscript:@"vcAnsweringMachineMessageRecordingURLSandboxExtensionToken"];
  if (!v4)
  {
    v6 = (v3 == 0) ^ [*(*(a1 + 48) + 8) isMessageRecordingEnabled];
    if (v6)
    {
      v7 = 7;
    }

    else
    {
      v7 = 3;
    }

    if (objc_opt_class() == *(a1 + 48))
    {
      if (v7 <= VRTraceGetErrorLogLevelForModule())
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        v11 = *MEMORY[0x1E6986650];
        if ((v6 & 1) == 0)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __56__AVCAnsweringMachine_registerDidStopBlockWithInstance___block_invoke_25_cold_1();
          }

          goto LABEL_23;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 136315650;
          *&v21[4] = v9;
          *&v21[12] = 2080;
          *&v21[14] = "[AVCAnsweringMachine registerDidStopBlockWithInstance:]_block_invoke";
          *&v21[22] = 1024;
          LODWORD(v22) = 185;
          v12 = " [%s] %s:%d No message recording URL sandbox extension token to consume";
          v13 = v10;
          v14 = 28;
LABEL_18:
          _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, v21, v14);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [*(a1 + 48) performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (v7 > VRTraceGetErrorLogLevelForModule())
      {
        goto LABEL_23;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      v17 = *MEMORY[0x1E6986650];
      if ((v6 & 1) == 0)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a1 + 48);
          *v21 = 136316162;
          *&v21[4] = v15;
          *&v21[12] = 2080;
          *&v21[14] = "[AVCAnsweringMachine registerDidStopBlockWithInstance:]_block_invoke";
          *&v21[22] = 1024;
          LODWORD(v22) = 185;
          WORD2(v22) = 2112;
          *(&v22 + 6) = v8;
          HIWORD(v22) = 2048;
          v23 = v19;
          _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) No message recording URL sandbox extension token to consume", v21, 0x30u);
        }

        goto LABEL_23;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 48);
        *v21 = 136316162;
        *&v21[4] = v15;
        *&v21[12] = 2080;
        *&v21[14] = "[AVCAnsweringMachine registerDidStopBlockWithInstance:]_block_invoke";
        *&v21[22] = 1024;
        LODWORD(v22) = 185;
        WORD2(v22) = 2112;
        *(&v22 + 6) = v8;
        HIWORD(v22) = 2048;
        v23 = v18;
        v12 = " [%s] %s:%d %@(%p) No message recording URL sandbox extension token to consume";
        v13 = v16;
        v14 = 48;
        goto LABEL_18;
      }
    }

LABEL_23:
    v5 = 0;
    goto LABEL_24;
  }

  [v4 UTF8String];
  v5 = sandbox_extension_consume();
LABEL_24:
  [*(a1 + 48) printDidStop:v2 messageRecordingURL:v3 error:{*(a1 + 56), *v21, *&v21[16], v22, v23}];
  [*(a1 + 64) answeringMachine:*(a1 + 48) didStop:v2 messageRecordingURL:v3 error:*(a1 + 56)];
  return [AVCAnsweringMachine cleanUpMessageRecordingURL:v3 messageRecordingURLSandboxExtensionHandle:v5];
}

- (void)registerServerDidDisconnectBlockWithInstance:(id)instance
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __68__AVCAnsweringMachine_registerServerDidDisconnectBlockWithInstance___block_invoke;
  v3[3] = &unk_1E85F3AD8;
  v3[4] = instance;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcAnsweringMachineServerDidDisconnect" block:v3 queue:self->_stateQueue];
}

uint64_t __68__AVCAnsweringMachine_registerServerDidDisconnectBlockWithInstance___block_invoke_34(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-serverDidDisconnect");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 136315906;
      v7 = v2;
      v8 = 2080;
      v9 = "[AVCAnsweringMachine registerServerDidDisconnectBlockWithInstance:]_block_invoke";
      v10 = 1024;
      v11 = 213;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAnsweringMachine-serverDidDisconnect (%p)", &v6, 0x26u);
    }
  }

  return [*(a1 + 40) serverDidDisconnectForAnsweringMachine:*(a1 + 32)];
}

- (void)registerDidFinishAnnouncementBlockWithInstance:(id)instance
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__AVCAnsweringMachine_registerDidFinishAnnouncementBlockWithInstance___block_invoke;
  v3[3] = &unk_1E85F3AD8;
  v3[4] = instance;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcAnsweringMachineDidFinishAnnouncement" block:v3 queue:self->_stateQueue];
}

void __70__AVCAnsweringMachine_registerDidFinishAnnouncementBlockWithInstance___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v6 = [*(a1 + 32) strong];
    if (!v6)
    {
      __70__AVCAnsweringMachine_registerDidFinishAnnouncementBlockWithInstance___block_invoke_cold_1();
      return;
    }

    v7 = v6;
    if (objc_opt_class() == v6)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      v21 = v9;
      v22 = 2080;
      v23 = "[AVCAnsweringMachine registerDidFinishAnnouncementBlockWithInstance:]_block_invoke";
      v24 = 1024;
      v25 = 234;
      v11 = " [%s] %s:%d received callback for didFinishAnnouncement";
      v12 = v10;
      v13 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [v7 performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_14;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136316162;
      v21 = v14;
      v22 = 2080;
      v23 = "[AVCAnsweringMachine registerDidFinishAnnouncementBlockWithInstance:]_block_invoke";
      v24 = 1024;
      v25 = 234;
      v26 = 2112;
      v27 = v8;
      v28 = 2048;
      v29 = v7;
      v11 = " [%s] %s:%d %@(%p) received callback for didFinishAnnouncement";
      v12 = v15;
      v13 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_14:
    v16 = [a2 objectForKeyedSubscript:@"vcAnsweringMachineStatus"];
    [v7 setIsAnnouncementInProgress:{objc_msgSend(v16, "BOOLValue") ^ 1}];
    v17 = [v7 delegate];
    v18 = [v7 delegateQueue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__AVCAnsweringMachine_registerDidFinishAnnouncementBlockWithInstance___block_invoke_36;
    v19[3] = &unk_1E85F3B00;
    v19[4] = v16;
    v19[5] = v7;
    v19[6] = a3;
    v19[7] = v17;
    dispatch_async(v18, v19);
  }
}

uint64_t __70__AVCAnsweringMachine_registerDidFinishAnnouncementBlockWithInstance___block_invoke_36(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) BOOLValue];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-didFinishAnnouncement");
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
      v11 = "[AVCAnsweringMachine registerDidFinishAnnouncementBlockWithInstance:]_block_invoke";
      v12 = 1024;
      v13 = 240;
      v14 = 2048;
      v15 = v5;
      v16 = 1024;
      v17 = v2;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAnsweringMachine-didFinishAnnouncement (%p) didFinishAnnouncement=%{BOOL}d, error=%@", &v8, 0x36u);
    }
  }

  return [*(a1 + 56) answeringMachine:*(a1 + 40) didFinishAnnouncement:v2 error:*(a1 + 48)];
}

- (void)registerServerCallbacks
{
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  [(AVCAnsweringMachine *)self registerDidStartBlockWithInstance:v3];
  [(AVCAnsweringMachine *)self registerDidStopBlockWithInstance:v3];
  [(AVCAnsweringMachine *)self registerServerDidDisconnectBlockWithInstance:v3];

  [(AVCAnsweringMachine *)self registerDidFinishAnnouncementBlockWithInstance:v3];
}

- (void)deregisterServerCallbacks
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcAnsweringMachineDidStart"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcAnsweringMachineDidStop"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcAnsweringMachineServerDidDisconnect"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcAnsweringMachineDidFinishAnnouncement"];
}

- (BOOL)setUpDelegateQueue:(id)queue
{
  if (queue)
  {
    queueCopy = queue;
    dispatch_retain(queue);
  }

  else
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    queueCopy = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCAnsweringMachine.delegateQueue", 0, CustomRootQueue);
    if (!queueCopy)
    {
      [AVCAnsweringMachine setUpDelegateQueue:];
      return v7;
    }
  }

  self->_delegateQueue = queueCopy;
  return 1;
}

- (BOOL)setUpServerConnection
{
  v48 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [(AVCAnsweringMachineConfiguration *)self->_configuration dictionary];
  if (!dictionary2)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v20 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v20)
        {
          return v20;
        }

        [AVCAnsweringMachine setUpServerConnection];
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(AVCAnsweringMachine *)self performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        v20 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v20)
        {
          return v20;
        }

        configuration = self->_configuration;
        *buf = 136316418;
        v37 = v30;
        v38 = 2080;
        v39 = "[AVCAnsweringMachine setUpServerConnection]";
        v40 = 1024;
        v41 = 301;
        v42 = 2112;
        v43 = v29;
        v44 = 2048;
        selfCopy = self;
        v46 = 2112;
        v47 = configuration;
        _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to serialize configuration=%@", buf, 0x3Au);
      }
    }

    goto LABEL_52;
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"vcAnsweringMachineConfig"];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      v6 = dictionary ? [objc_msgSend(dictionary "description")] : "<nil>";
      asprintf(&__str, "serializedConfiguration=%s", v6);
      if (__str)
      {
        __lasts = 0;
        v13 = strtok_r(__str, "\n", &__lasts);
        v14 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *v14;
            if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v37 = v15;
              v38 = 2080;
              v39 = "[AVCAnsweringMachine setUpServerConnection]";
              v40 = 1024;
              v41 = 303;
              v42 = 2080;
              v43 = "";
              v44 = 2080;
              selfCopy = v13;
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v13 = strtok_r(0, "\n", &__lasts);
        }

        while (v13);
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCAnsweringMachine *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      __str = 0;
      uTF8String = [(__CFString *)v5 UTF8String];
      v8 = dictionary ? [objc_msgSend(dictionary "description")] : "<nil>";
      asprintf(&__str, "%s(%p) serializedConfiguration=%s", uTF8String, self, v8);
      if (__str)
      {
        __lasts = 0;
        v9 = strtok_r(__str, "\n", &__lasts);
        v10 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v11 = VRTraceErrorLogLevelToCSTR();
            v12 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v37 = v11;
              v38 = 2080;
              v39 = "[AVCAnsweringMachine setUpServerConnection]";
              v40 = 1024;
              v41 = 303;
              v42 = 2080;
              v43 = "";
              v44 = 2080;
              selfCopy = v9;
              _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v9 = strtok_r(0, "\n", &__lasts);
        }

        while (v9);
LABEL_27:
        free(__str);
      }
    }
  }

  v17 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcAnsweringMachineInitialize" arguments:dictionary];
  v18 = v17;
  if (v17 && ([v17 objectForKeyedSubscript:@"ERROR"] || objc_msgSend(v18, "objectForKeyedSubscript:", @"TIMEOUT")))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_52;
      }

      __str = 0;
      asprintf(&__str, "Error initializing, results=%s", [objc_msgSend(v18 "description")]);
      if (!__str)
      {
        goto LABEL_52;
      }

      __lasts = 0;
      v21 = strtok_r(__str, "\n", &__lasts);
      v22 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *v22;
          if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v37 = v23;
            v38 = 2080;
            v39 = "[AVCAnsweringMachine setUpServerConnection]";
            v40 = 1024;
            v41 = 307;
            v42 = 2080;
            v43 = "";
            v44 = 2080;
            selfCopy = v21;
            _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v21 = strtok_r(0, "\n", &__lasts);
      }

      while (v21);
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(AVCAnsweringMachine *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_52;
      }

      __str = 0;
      asprintf(&__str, "%s(%p) Error initializing, results=%s", -[__CFString UTF8String](v19, "UTF8String"), self, [objc_msgSend(v18 "description")]);
      if (!__str)
      {
        goto LABEL_52;
      }

      __lasts = 0;
      v25 = strtok_r(__str, "\n", &__lasts);
      v26 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v27 = VRTraceErrorLogLevelToCSTR();
          v28 = *v26;
          if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v37 = v27;
            v38 = 2080;
            v39 = "[AVCAnsweringMachine setUpServerConnection]";
            v40 = 1024;
            v41 = 307;
            v42 = 2080;
            v43 = "";
            v44 = 2080;
            selfCopy = v25;
            _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v25 = strtok_r(0, "\n", &__lasts);
      }

      while (v25);
    }

    free(__str);
LABEL_52:
    LOBYTE(v20) = 0;
    return v20;
  }

  self->_messageAudioToken = [objc_msgSend(v18 objectForKeyedSubscript:{@"vcAnsweringMachineMessageAudioToken", "integerValue"}];
  LOBYTE(v20) = 1;
  return v20;
}

- (void)printInitConfiguration
{
  v35 = *MEMORY[0x1E69E9840];
  announcementAsset = [(AVCAnsweringMachineConfiguration *)self->_configuration announcementAsset];
  if (announcementAsset)
  {
    v4 = announcementAsset;
    [(AVCAnsweringMachine *)self setIsAnnouncementInProgress:1];
    v21 = 0xAAAAAAAAAAAAAAAALL;
    v22 = NAN;
    v23 = NAN;
    [VCFileUtil statsOfFile:v4];
    v24 = 0;
    v5 = VCUtil_BinaryPrefix(0xAAAAAAAAAAAAAAAALL, &v24);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      __str = 0;
      configuration = self->_configuration;
      v7 = configuration ? [-[AVCAnsweringMachineConfiguration description](configuration "description")] : "<nil>";
      asprintf(&__str, "configuration=%s assetSize=%.2f%cB assetLength=%.2fs, assetAudioLength=%.2fs", v7, *&v24, v5, v22, v23);
      if (__str)
      {
        __lasts = 0;
        v10 = strtok_r(__str, "\n", &__lasts);
        v11 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *v11;
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316162;
              v26 = v12;
              v27 = 2080;
              v28 = "[AVCAnsweringMachine printInitConfiguration]";
              v29 = 1024;
              v30 = 328;
              v31 = 2080;
              v32 = "AVCAnsweringMachine-init";
              v33 = 2080;
              v34 = v10;
              _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v10 = strtok_r(0, "\n", &__lasts);
        }

        while (v10);
        v14 = __str;
LABEL_24:
        free(v14);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v21 = 0;
    v8 = self->_configuration;
    v9 = v8 ? [-[AVCAnsweringMachineConfiguration description](v8 "description")] : "<nil>";
    asprintf(&v21, "configuration=%s", v9);
    if (v21)
    {
      v24 = 0;
      v15 = strtok_r(v21, "\n", &v24);
      v16 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v17 = VRTraceErrorLogLevelToCSTR();
          v18 = *v16;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v26 = v17;
            v27 = 2080;
            v28 = "[AVCAnsweringMachine printInitConfiguration]";
            v29 = 1024;
            v30 = 321;
            v31 = 2080;
            v32 = "AVCAnsweringMachine-init";
            v33 = 2080;
            v34 = v15;
            _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v15 = strtok_r(0, "\n", &v24);
      }

      while (v15);
      v14 = v21;
      goto LABEL_24;
    }
  }
}

- (AVCAnsweringMachine)initWithConfiguration:(id)configuration delegate:(id)delegate delegateQueue:(id)queue
{
  v30 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v9;
      v22 = 2080;
      v23 = "[AVCAnsweringMachine initWithConfiguration:delegate:delegateQueue:]";
      v24 = 1024;
      v25 = 333;
      v26 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAnsweringMachine-init (%p)", buf, 0x26u);
    }
  }

  if (!configuration)
  {
    [AVCAnsweringMachine initWithConfiguration:delegate:delegateQueue:];
LABEL_19:
    v12 = *buf;
LABEL_20:
    [AVCAnsweringMachine initWithConfiguration:v12 delegate:? delegateQueue:?];
    return 0;
  }

  if (!delegate)
  {
    [AVCAnsweringMachine initWithConfiguration:delegate:delegateQueue:];
    goto LABEL_19;
  }

  v20.receiver = self;
  v20.super_class = AVCAnsweringMachine;
  v11 = [(AVCAnsweringMachine *)&v20 init];
  if (!v11)
  {
    [AVCAnsweringMachine initWithConfiguration:buf delegate:? delegateQueue:?];
    goto LABEL_19;
  }

  v12 = v11;
  v11->_configuration = [configuration copy];
  [(AVCAnsweringMachine *)v12 printInitConfiguration];
  v13 = objc_alloc_init(AVConferenceXPCClient);
  v12->_connection = v13;
  if (!v13)
  {
    [AVCAnsweringMachine initWithConfiguration:delegate:delegateQueue:];
    goto LABEL_19;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v15 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCAnsweringMachine.stateQueue", 0, CustomRootQueue);
  v12->_stateQueue = v15;
  if (!v15)
  {
    [AVCAnsweringMachine initWithConfiguration:delegate:delegateQueue:];
    goto LABEL_19;
  }

  objc_storeWeak(&v12->_delegate, delegate);
  if (![(AVCAnsweringMachine *)v12 setUpDelegateQueue:queue])
  {
    goto LABEL_20;
  }

  [(AVCAnsweringMachine *)v12 registerServerCallbacks];
  if (![(AVCAnsweringMachine *)v12 setUpServerConnection])
  {
    goto LABEL_20;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      messageAudioToken = v12->_messageAudioToken;
      *buf = 136316162;
      *&buf[4] = v16;
      v22 = 2080;
      v23 = "[AVCAnsweringMachine initWithConfiguration:delegate:delegateQueue:]";
      v24 = 1024;
      v25 = 359;
      v26 = 2048;
      selfCopy = v12;
      v28 = 2048;
      v29 = messageAudioToken;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAnsweringMachine-init (%p) Succeeded with messageAudioToken=%ld", buf, 0x30u);
    }
  }

  return v12;
}

- (void)dealloc
{
  v28 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v4;
        v18 = 2080;
        v19 = "[AVCAnsweringMachine dealloc]";
        v20 = 1024;
        v21 = 364;
        v22 = 2112;
        selfCopy4 = self;
        v6 = " [%s] %s:%d self=%@";
        v7 = v5;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(AVCAnsweringMachine *)self performSelector:sel_logPrefix];
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
        *buf = 136316418;
        v17 = v9;
        v18 = 2080;
        v19 = "[AVCAnsweringMachine dealloc]";
        v20 = 1024;
        v21 = 364;
        v22 = 2112;
        selfCopy4 = v3;
        v24 = 2048;
        selfCopy2 = self;
        v26 = 2112;
        selfCopy3 = self;
        v6 = " [%s] %s:%d %@(%p) self=%@";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }

  [(AVCAnsweringMachine *)self deregisterServerCallbacks];
  [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcAnsweringMachineTerminate"];

  objc_storeWeak(&self->_delegate, 0);
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
    self->_stateQueue = 0;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = v13;
      v18 = 2080;
      v19 = "[AVCAnsweringMachine dealloc]";
      v20 = 1024;
      v21 = 375;
      v22 = 2048;
      selfCopy4 = self;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAnsweringMachine-dealloc (%p)", buf, 0x26u);
    }
  }

  v15.receiver = self;
  v15.super_class = AVCAnsweringMachine;
  [(AVCAnsweringMachine *)&v15 dealloc];
}

- (void)start
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__AVCAnsweringMachine_start__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

void __28__AVCAnsweringMachine_start__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 32);
    *v15 = 136316418;
    *&v15[4] = v9;
    *&v15[12] = 2080;
    *&v15[14] = "[AVCAnsweringMachine start]_block_invoke";
    *&v15[22] = 1024;
    LODWORD(v16) = 383;
    WORD2(v16) = 2112;
    *(&v16 + 6) = v2;
    HIWORD(v16) = 2048;
    v17 = v11;
    LOWORD(v18) = 2112;
    *(&v18 + 2) = v11;
    v6 = " [%s] %s:%d %@(%p) self=%@";
    v7 = v10;
    v8 = 58;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *v15 = 136315906;
      *&v15[4] = v3;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCAnsweringMachine start]_block_invoke";
      *&v15[22] = 1024;
      LODWORD(v16) = 383;
      WORD2(v16) = 2112;
      *(&v16 + 6) = v5;
      v6 = " [%s] %s:%d self=%@";
      v7 = v4;
      v8 = 38;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v15, v8);
    }
  }

LABEL_12:
  [*(*(a1 + 32) + 16) sendMessageAsync:{"vcAnsweringMachineStart", *v15, *&v15[16], v16, v17, v18}];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *v15 = 136315906;
      *&v15[4] = v12;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCAnsweringMachine start]_block_invoke";
      *&v15[22] = 1024;
      LODWORD(v16) = 385;
      WORD2(v16) = 2048;
      *(&v16 + 6) = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAnsweringMachine-start (%p)", v15, 0x26u);
    }
  }
}

- (void)stop
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__AVCAnsweringMachine_stop__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(stateQueue, v3);
}

void __27__AVCAnsweringMachine_stop__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
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

    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = *(a1 + 32);
    *v15 = 136316418;
    *&v15[4] = v9;
    *&v15[12] = 2080;
    *&v15[14] = "[AVCAnsweringMachine stop]_block_invoke";
    *&v15[22] = 1024;
    LODWORD(v16) = 391;
    WORD2(v16) = 2112;
    *(&v16 + 6) = v2;
    HIWORD(v16) = 2048;
    v17 = v11;
    LOWORD(v18) = 2112;
    *(&v18 + 2) = v11;
    v6 = " [%s] %s:%d %@(%p) self=%@";
    v7 = v10;
    v8 = 58;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *v15 = 136315906;
      *&v15[4] = v3;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCAnsweringMachine stop]_block_invoke";
      *&v15[22] = 1024;
      LODWORD(v16) = 391;
      WORD2(v16) = 2112;
      *(&v16 + 6) = v5;
      v6 = " [%s] %s:%d self=%@";
      v7 = v4;
      v8 = 38;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v15, v8);
    }
  }

LABEL_12:
  [*(*(a1 + 32) + 16) sendMessageAsync:{"vcAnsweringMachineStop", *v15, *&v15[16], v16, v17, v18}];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *v15 = 136315906;
      *&v15[4] = v12;
      *&v15[12] = 2080;
      *&v15[14] = "[AVCAnsweringMachine stop]_block_invoke";
      *&v15[22] = 1024;
      LODWORD(v16) = 393;
      WORD2(v16) = 2048;
      *(&v16 + 6) = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAnsweringMachine-stop (%p)", v15, 0x26u);
    }
  }
}

- (id)addAnnouncementAsset:(id)asset
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__35;
  v11 = __Block_byref_object_dispose__35;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AVCAnsweringMachine_addAnnouncementAsset___block_invoke;
  v6[3] = &unk_1E85F4108;
  v6[5] = asset;
  v6[6] = &v7;
  v6[4] = self;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __44__AVCAnsweringMachine_addAnnouncementAsset___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isAnnouncementInProgress])
  {
    *(*(*(a1 + 48) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCAnsweringMachine" code:-1 userInfo:0];
    return;
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_14;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 136315650;
    v20 = v3;
    v21 = 2080;
    v22 = "[AVCAnsweringMachine addAnnouncementAsset:]_block_invoke";
    v23 = 1024;
    v24 = 403;
    v5 = " [%s] %s:%d ";
    v6 = v4;
    v7 = 28;
  }

  else
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
      goto LABEL_14;
    }

    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = *(a1 + 32);
    *buf = 136316162;
    v20 = v8;
    v21 = 2080;
    v22 = "[AVCAnsweringMachine addAnnouncementAsset:]_block_invoke";
    v23 = 1024;
    v24 = 403;
    v25 = 2112;
    v26 = v2;
    v27 = 2048;
    v28 = v10;
    v5 = " [%s] %s:%d %@(%p) ";
    v6 = v9;
    v7 = 48;
  }

  _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
LABEL_14:
  v11 = [[VCSandboxedURL alloc] initWithURL:*(a1 + 40) accessType:1];
  v12 = v11;
  if (v11)
  {
    v13 = [(VCSandboxedURL *)v11 serialize];
    if (v13)
    {
      v14 = v13;
      [*(a1 + 32) setIsAnnouncementInProgress:1];
      v15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v14, @"vcAnsweringMachineAnnouncementAssetURL", 0}];
      [*(*(a1 + 32) + 16) sendMessageAsync:"vcAnsweringMachineAddAnnouncementAsset" arguments:v15];

      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAnsweringMachine-addAnnouncementAsset");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          *buf = 136315906;
          v20 = v16;
          v21 = 2080;
          v22 = "[AVCAnsweringMachine addAnnouncementAsset:]_block_invoke";
          v23 = 1024;
          v24 = 421;
          v25 = 2048;
          v26 = v18;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAnsweringMachine-addAnnouncementAsset (%p)", buf, 0x26u);
        }
      }
    }

    else
    {
      *(*(*(a1 + 48) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCAnsweringMachine" code:-3 userInfo:0];
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __44__AVCAnsweringMachine_addAnnouncementAsset___block_invoke_cold_1();
        }
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVCAnsweringMachine" code:-2 userInfo:0];
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __44__AVCAnsweringMachine_addAnnouncementAsset___block_invoke_cold_2();
      }
    }
  }
}

void __68__AVCAnsweringMachine_registerServerDidDisconnectBlockWithInstance___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v3 = [*(a1 + 32) strong];
    if (v3)
    {
      v4 = v3;
      if (objc_opt_class() == v3)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_14;
        }

        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136315650;
        v23 = v6;
        OUTLINED_FUNCTION_18_6();
        v24 = 209;
        v8 = " [%s] %s:%d Received callback for serverDidDisconnect";
        v9 = v7;
        v10 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [v4 performSelector:sel_logPrefix];
        }

        else
        {
          v5 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_14;
        }

        v11 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136316162;
        v23 = v11;
        OUTLINED_FUNCTION_18_6();
        v24 = 209;
        v25 = 2112;
        v26 = v5;
        v27 = 2048;
        v28 = v4;
        v8 = " [%s] %s:%d %@(%p) Received callback for serverDidDisconnect";
        v9 = v12;
        v10 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_14:
      v13 = [v4 delegate];
      v14 = [v4 delegateQueue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __68__AVCAnsweringMachine_registerServerDidDisconnectBlockWithInstance___block_invoke_34;
      v21[3] = &unk_1E85F37F0;
      v21[4] = v4;
      v21[5] = v13;
      dispatch_async(v14, v21);
      return;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_18_6();
        OUTLINED_FUNCTION_16_0();
        _os_log_error_impl(v15, v16, v17, v18, v19, v20);
      }
    }
  }
}

void __57__AVCAnsweringMachine_registerDidStartBlockWithInstance___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void __56__AVCAnsweringMachine_registerDidStopBlockWithInstance___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

void __56__AVCAnsweringMachine_registerDidStopBlockWithInstance___block_invoke_25_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __70__AVCAnsweringMachine_registerDidFinishAnnouncementBlockWithInstance___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)setUpDelegateQueue:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
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
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
}

- (void)setUpServerConnection
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to serialize configuration=%@");
}

- (void)initWithConfiguration:delegate:delegateQueue:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
}

- (void)initWithConfiguration:delegate:delegateQueue:.cold.2()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
}

- (void)initWithConfiguration:(void *)a1 delegate:delegateQueue:.cold.3(void *a1)
{
  if (!objc_opt_class())
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
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [0 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *a1 = 0;
}

- (void)initWithConfiguration:delegate:delegateQueue:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
}

- (void)initWithConfiguration:delegate:delegateQueue:.cold.5()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_29_2();
}

- (void)initWithConfiguration:(void *)a1 delegate:delegateQueue:.cold.6(void *a1)
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
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
}

void __44__AVCAnsweringMachine_addAnnouncementAsset___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to serialize sandboxedURL=%@");
}

void __44__AVCAnsweringMachine_addAnnouncementAsset___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to issue read access to sandboxedURL for announcementAsset=%@");
}

@end