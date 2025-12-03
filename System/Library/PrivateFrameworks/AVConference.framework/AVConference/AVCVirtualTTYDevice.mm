@interface AVCVirtualTTYDevice
- (AVCVirtualTTYDevice)initWithMode:(int64_t)mode error:(id *)error streamToken:(int64_t)token;
- (BOOL)sendText:(id)text;
- (id)sendCharacter:(unsigned __int16)character;
- (void)dealloc;
- (void)deregisterBlocksForDelegateNotifications;
- (void)registerBlocksForDelegateNotifications;
- (void)setDelegate:(id)delegate;
- (void)start;
- (void)stop;
- (void)terminateSession;
@end

@implementation AVCVirtualTTYDevice

- (AVCVirtualTTYDevice)initWithMode:(int64_t)mode error:(id *)error streamToken:(int64_t)token
{
  v39 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v11 = *error;
      }

      else
      {
        v11 = @"nil";
      }

      *buf = 136316418;
      v29 = v9;
      v30 = 2080;
      v31 = "[AVCVirtualTTYDevice initWithMode:error:streamToken:]";
      v32 = 1024;
      v33 = 47;
      v34 = 1024;
      *v35 = mode;
      *&v35[4] = 1024;
      *&v35[6] = token;
      *v36 = 2112;
      *&v36[2] = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d mode=%d, streamToken=%u error=%@", buf, 0x32u);
    }
  }

  v27.receiver = self;
  v27.super_class = AVCVirtualTTYDevice;
  v12 = [(AVCVirtualTTYDevice *)&v27 init];
  if (v12)
  {
    VRTraceReset();
    VRTracePrintLoggingInfo();
    v12->_connection = objc_alloc_init(AVConferenceXPCClient);
    v13 = objc_alloc(MEMORY[0x1E695DF20]);
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    v15 = [v13 initWithObjectsAndKeys:{v14, @"vcMediaStreamDictionary", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", token), @"vcMediaStreamToken", 0}];
    if (mode == 3)
    {
      v16 = "vcVirtualRTTDeviceInitialize";
    }

    else
    {
      v16 = "vcVirtualTTYDeviceInitialize";
    }

    v17 = [(AVConferenceXPCClient *)v12->_connection sendMessageSync:v16 arguments:v15];
    [(AVCVirtualTTYDevice *)v12 registerBlocksForDelegateNotifications];
    if (v17)
    {
      v18 = [v17 objectForKeyedSubscript:@"ERROR"];
      if (v18 || [v17 objectForKeyedSubscript:@"TIMEOUT"])
      {
        if (error)
        {
          *error = v18;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            if (v18)
            {
              v25 = [objc_msgSend(v18 "description")];
            }

            else
            {
              v25 = "<nil>";
            }

            v26 = [objc_msgSend(v17 "description")];
            *buf = 136316162;
            v29 = v19;
            v30 = 2080;
            v31 = "[AVCVirtualTTYDevice initWithMode:error:streamToken:]";
            v32 = 1024;
            v33 = 65;
            v34 = 2080;
            *v35 = v25;
            *&v35[8] = 2080;
            *v36 = v26;
            _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, "AVCVirtualTTYDevice [%s] %s:%d AVCVirtualTTYDevice: error initializing error[%s] resultDict[%s]", buf, 0x30u);
          }
        }

        v12 = 0;
      }
    }

    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-init");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v23 = *error;
        }

        else
        {
          v23 = @"None";
        }

        *buf = 136316674;
        v29 = v21;
        v30 = 2080;
        v31 = "[AVCVirtualTTYDevice initWithMode:error:streamToken:]";
        v32 = 1024;
        v33 = 75;
        v34 = 2048;
        *v35 = v12;
        *&v35[8] = 1024;
        *v36 = mode;
        *&v36[4] = 1024;
        *&v36[6] = token;
        v37 = 2112;
        v38 = v23;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-init (%p) mode=%d, streamToken=%d, error=%@", buf, 0x3Cu);
      }
    }
  }

  return v12;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v11 = v5;
      v12 = 2080;
      v13 = "[AVCVirtualTTYDevice dealloc]";
      v14 = 1024;
      v15 = 81;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  objc_storeWeak(&self->_delegate, 0);
  [(AVCVirtualTTYDevice *)self deregisterBlocksForDelegateNotifications];
  [(AVCVirtualTTYDevice *)self terminateSession];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = v7;
      v12 = 2080;
      v13 = "[AVCVirtualTTYDevice dealloc]";
      v14 = 1024;
      v15 = 87;
      v16 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-dealloc (%p)", buf, 0x26u);
    }
  }

  v9.receiver = self;
  v9.super_class = AVCVirtualTTYDevice;
  [(AVCVirtualTTYDevice *)&v9 dealloc];
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
      v10 = "[AVCVirtualTTYDevice setDelegate:]";
      v11 = 1024;
      v12 = 96;
      v13 = 2112;
      delegateCopy = delegate;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d delegate=%@", &v7, 0x26u);
    }
  }

  objc_storeWeak(&self->_delegate, delegate);
}

- (void)start
{
  v17 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVCVirtualTTYDevice start]";
      v13 = 1024;
      v14 = 101;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d ", &v9, 0x1Cu);
    }
  }

  self->_isStarted = 1;
  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStartConference"];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v7;
      v11 = 2080;
      v12 = "[AVCVirtualTTYDevice start]";
      v13 = 1024;
      v14 = 104;
      v15 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-start (%p)", &v9, 0x26u);
    }
  }
}

- (void)stop
{
  v17 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v4 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVCVirtualTTYDevice stop]";
      v13 = 1024;
      v14 = 108;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d ", &v9, 0x1Cu);
    }
  }

  self->_isStarted = 0;
  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcMediaStreamStopConference"];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v7;
      v11 = 2080;
      v12 = "[AVCVirtualTTYDevice stop]";
      v13 = 1024;
      v14 = 111;
      v15 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-stop (%p)", &v9, 0x26u);
    }
  }
}

- (id)sendCharacter:(unsigned __int16)character
{
  characterCopy = character;
  v25 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    v9 = *v6;
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v17 = v7;
        v18 = 2080;
        v19 = "[AVCVirtualTTYDevice sendCharacter:]";
        v20 = 1024;
        v21 = 115;
        v22 = 1024;
        *v23 = characterCopy;
        *&v23[4] = 1024;
        *&v23[6] = characterCopy;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d Sending text:0x%04x '%C'", buf, 0x28u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AVCVirtualTTYDevice sendCharacter:];
    }
  }

  if (self->_isStarted)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:characterCopy];
    v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcVirtualTTYDeviceSendCharacter" arguments:v11];

    v12 = 0;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"AVCVirtualTTYDevice" code:0 userInfo:0];
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-sendCharacter");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v17 = v13;
      v18 = 2080;
      v19 = "[AVCVirtualTTYDevice sendCharacter:]";
      v20 = 1024;
      v21 = 125;
      v22 = 2048;
      *v23 = self;
      *&v23[8] = 2112;
      v24 = v12;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-sendCharacter (%p) error=%@", buf, 0x30u);
    }
  }

  return v12;
}

- (BOOL)sendText:(id)text
{
  v37 = *MEMORY[0x1E69E9840];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v5 = MEMORY[0x1E6986640];
  v6 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 8)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *v6;
    v9 = *v6;
    if (*v5 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v26 = v7;
        v27 = 2080;
        v28 = "[AVCVirtualTTYDevice sendText:]";
        v29 = 1024;
        v30 = 130;
        v31 = 2112;
        *v32 = text;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d Sending text:%@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [AVCVirtualTTYDevice sendText:];
    }
  }

  if ([text length])
  {
    v10 = 0;
    do
    {
      v11 = [text characterAtIndex:v10];
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *v6;
        v14 = *v6;
        if (*v5 == 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [text length];
            *buf = 136316674;
            v26 = v12;
            v27 = 2080;
            v28 = "[AVCVirtualTTYDevice sendText:]";
            v29 = 1024;
            v30 = 131;
            v31 = 1024;
            *v32 = v10;
            *&v32[4] = 1024;
            *&v32[6] = v15;
            v33 = 1024;
            v34 = v11;
            v35 = 1024;
            v36 = v11;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d %d/%d: 0x%04x '%C'", buf, 0x34u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = [text length];
          *buf = 136316674;
          v26 = v12;
          v27 = 2080;
          v28 = "[AVCVirtualTTYDevice sendText:]";
          v29 = 1024;
          v30 = 131;
          v31 = 1024;
          *v32 = v10;
          *&v32[4] = 1024;
          *&v32[6] = v16;
          v33 = 1024;
          v34 = v11;
          v35 = 1024;
          v36 = v11;
          _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, "AVCVirtualTTYDevice [%s] %s:%d %d/%d: 0x%04x '%C'", buf, 0x34u);
        }
      }

      ++v10;
    }

    while (v10 < [text length]);
  }

  isStarted = self->_isStarted;
  if (isStarted)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{text, @"vcMediaStreamDictionary", 0}];
    [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcVirtualTTYDeviceSendText" arguments:v18];

    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-sendText");
    if (VRTraceGetErrorLogLevelForModule() > 5)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v26 = v19;
        v27 = 2080;
        v28 = "[AVCVirtualTTYDevice sendText:]";
        v29 = 1024;
        v30 = 141;
        v31 = 2048;
        *v32 = self;
        v21 = "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-sendText (%p)";
LABEL_26:
        _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x26u);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        [AVCVirtualTTYDevice sendText:];
      }
    }

    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-sendText");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v22 = VRTraceErrorLogLevelToCSTR();
      v20 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v26 = v22;
        v27 = 2080;
        v28 = "[AVCVirtualTTYDevice sendText:]";
        v29 = 1024;
        v30 = 138;
        v31 = 2048;
        *v32 = self;
        v21 = "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-sendText (%p) Not started";
        goto LABEL_26;
      }
    }
  }

  return isStarted;
}

- (void)registerBlocksForDelegateNotifications
{
  v7[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidStartConnection" block:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_53;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamDidStopConnection" block:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_55;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamTTYCharacterReceived" block:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_62;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcMediaStreamTextReceived" block:v4];
}

void __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a2)
      {
        v8 = [objc_msgSend(a2 "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      v29 = 136316162;
      v30 = v6;
      v31 = 2080;
      v32 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
      v33 = 1024;
      v34 = 150;
      v35 = 2048;
      v36 = a3;
      v37 = 2080;
      v38 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d didStartConnectionBlock: error = %p, result = %s", &v29, 0x30u);
    }
  }

  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v9 = [*(a1 + 32) strong];
    if (v9)
    {
      v10 = v9;
      v11 = [a2 objectForKeyedSubscript:@"vcMediaStreamConnectionStarted"];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v13 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v11 BOOLValue];
          v29 = 136315906;
          v30 = v14;
          v31 = 2080;
          v32 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
          v33 = 1024;
          v34 = 161;
          v35 = 1024;
          LODWORD(v36) = v16;
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d AVCVirtualTTYDevice: didStartConnectionBlock strongSelf started(%d)", &v29, 0x22u);
        }
      }

      v17 = [a2 objectForKeyedSubscript:@"vcMediaStreamError"];
      if (v17)
      {
        v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:objc_msgSend(v17 code:"objectForKeyedSubscript:" userInfo:{@"ERROR_DOMAIN", objc_msgSend(objc_msgSend(v17, "objectForKeyedSubscript:", @"ERROR_CODE", "intValue"), objc_msgSend(v17, "objectForKeyedSubscript:", @"ERROR_USERINFO"}];
      }

      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-didStart");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v11 intValue];
          v29 = 136316162;
          v30 = v18;
          v31 = 2080;
          v32 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
          v33 = 1024;
          v34 = 171;
          v35 = 2048;
          v36 = v10;
          v37 = 1024;
          LODWORD(v38) = v20;
          _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-didStart (%p) didSucceed=%d", &v29, 0x2Cu);
        }
      }

      [objc_msgSend(v10 "delegate")];

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        return;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *v13;
      if (!os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v23 = [v11 BOOLValue];
      v29 = 136316162;
      v30 = v21;
      v31 = 2080;
      v32 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
      v33 = 1024;
      v34 = 175;
      v35 = 2048;
      v36 = v10;
      v37 = 1024;
      LODWORD(v38) = v23;
      v24 = "AVCVirtualTTYDevice [%s] %s:%d AVCVirtualTTYDevice: notified client %p of didStart started[%d]";
      v25 = v22;
      v26 = 44;
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return;
      }

      v27 = VRTraceErrorLogLevelToCSTR();
      v28 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v29 = 136315650;
      v30 = v27;
      v31 = 2080;
      v32 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
      v33 = 1024;
      v34 = 155;
      v24 = "AVCVirtualTTYDevice [%s] %s:%d AVCVirtualTTYDevice: didStartConnectionBlock: strongSelf == nil";
      v25 = v28;
      v26 = 28;
    }

    _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v24, &v29, v26);
  }
}

void __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_53(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-didStop");
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v7 = MEMORY[0x1E6986650];
      if (ErrorLogLevelForModule >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v8;
          v14 = 2080;
          v15 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
          v16 = 1024;
          v17 = 187;
          v18 = 2048;
          v19 = v5;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-didStop (%p)", &v12, 0x26u);
        }
      }

      [objc_msgSend(v5 "delegate")];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315906;
          v13 = v10;
          v14 = 2080;
          v15 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
          v16 = 1024;
          v17 = 189;
          v18 = 2048;
          v19 = v5;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d AVCVirtualTTYDevice: notified client %p of didStop", &v12, 0x26u);
        }
      }
    }
  }
}

void __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_55(uint64_t a1, void *a2, uint64_t a3)
{
  *&v21[5] = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcMediaStreamTTYCharacterReceived", "unsignedIntegerValue"}];
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        v10 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136316162;
            v15 = v8;
            v16 = 2080;
            v17 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
            v18 = 1024;
            v19 = 202;
            v20 = 1024;
            *v21 = v7;
            v21[2] = 1024;
            *&v21[3] = v7;
            _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d Received text:0x%04x '%C'", &v14, 0x28u);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_55_cold_1();
        }
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-didReceiveCharacter");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v11 = VRTraceErrorLogLevelToCSTR();
          v12 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v14 = 136315906;
            v15 = v11;
            v16 = 2080;
            v17 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
            v18 = 1024;
            v19 = 204;
            v20 = 2048;
            *v21 = v6;
            _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-didReceiveCharacter (%p)", &v14, 0x26u);
          }
        }

        [objc_msgSend(v6 "delegate")];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_55_cold_2(v13, v6);
        }
      }
    }
  }
}

void __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_62(uint64_t a1, void *a2, uint64_t a3)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamTextReceived"];
      v8 = [v7 length];
      v9 = MEMORY[0x1E6986650];
      if (!v8 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_62_cold_1();
        }
      }

      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      v11 = MEMORY[0x1E6986640];
      if (ErrorLogLevelForModule >= 8)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *v9;
        v14 = *v9;
        if (*v11 == 1)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v28 = v12;
            v29 = 2080;
            v30 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
            v31 = 1024;
            v32 = 224;
            v33 = 2112;
            *v34 = v7;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d Received text:%@", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_62_cold_2();
        }
      }

      if ([v7 length])
      {
        v16 = 0;
        *&v15 = 136316674;
        v26 = v15;
        do
        {
          v17 = [v7 characterAtIndex:{v16, v26}];
          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v18 = VRTraceErrorLogLevelToCSTR();
            v19 = *v9;
            v20 = *v9;
            if (*v11 == 1)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v7 length];
                *buf = v26;
                v28 = v18;
                v29 = 2080;
                v30 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
                v31 = 1024;
                v32 = 225;
                v33 = 1024;
                *v34 = v16;
                *&v34[4] = 1024;
                *&v34[6] = v21;
                v35 = 1024;
                v36 = v17;
                v37 = 1024;
                v38 = v17;
                _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d %d/%d: 0x%04x '%C'", buf, 0x34u);
              }
            }

            else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v22 = [v7 length];
              *buf = v26;
              v28 = v18;
              v29 = 2080;
              v30 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
              v31 = 1024;
              v32 = 225;
              v33 = 1024;
              *v34 = v16;
              *&v34[4] = 1024;
              *&v34[6] = v22;
              v35 = 1024;
              v36 = v17;
              v37 = 1024;
              v38 = v17;
              _os_log_debug_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEBUG, "AVCVirtualTTYDevice [%s] %s:%d %d/%d: 0x%04x '%C'", buf, 0x34u);
            }
          }

          ++v16;
        }

        while (v16 < [v7 length]);
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCVirtualTTYDevice-didReceiveText");
        if (VRTraceGetErrorLogLevelForModule() >= 6)
        {
          v23 = VRTraceErrorLogLevelToCSTR();
          v24 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v28 = v23;
            v29 = 2080;
            v30 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
            v31 = 1024;
            v32 = 227;
            v33 = 2048;
            *v34 = v6;
            _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, "AVCVirtualTTYDevice [%s] %s:%d @:@ AVCVirtualTTYDevice-didReceiveText (%p)", buf, 0x26u);
          }
        }

        [objc_msgSend(v6 "delegate")];
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v25 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_62_cold_3(v25, v6);
        }
      }
    }
  }
}

- (void)deregisterBlocksForDelegateNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidStartConnection"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamDidStopConnection"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcMediaStreamTTYCharacterReceived"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcMediaStreamTextReceived"];
}

- (void)terminateSession
{
  [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcVirtualTTYDeviceTerminate"];
  connection = self->_connection;
}

- (void)sendCharacter:.cold.1()
{
  OUTLINED_FUNCTION_6_44();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)sendText:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)sendText:.cold.2()
{
  v0 = objc_opt_class();
  NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v1, v2, "AVCVirtualTTYDevice [%s] %s:%d %@ has not started.", v3, v4, v5, v6, v7);
}

void __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_55_cold_1()
{
  OUTLINED_FUNCTION_6_44();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x28u);
}

void __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_55_cold_2(uint64_t a1, void *a2)
{
  [a2 delegate];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v2, v3, "AVCVirtualTTYDevice [%s] %s:%d Delegate %@ does not respond to -device:didReceiveCharacter:", v4, v5, v6, v7, v8);
}

void __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_62_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v3 = v0;
  v4 = "[AVCVirtualTTYDevice registerBlocksForDelegateNotifications]_block_invoke";
  v5 = 1024;
  v6 = 222;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, "AVCVirtualTTYDevice [%s] %s:%d Received an empty string", v2, 0x1Cu);
}

void __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_62_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_2_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __61__AVCVirtualTTYDevice_registerBlocksForDelegateNotifications__block_invoke_62_cold_3(uint64_t a1, void *a2)
{
  [a2 delegate];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_14_13(&dword_1DB56E000, v2, v3, "AVCVirtualTTYDevice [%s] %s:%d Delegate %@ does not respond to -device:didReceiveText:", v4, v5, v6, v7, v8);
}

@end