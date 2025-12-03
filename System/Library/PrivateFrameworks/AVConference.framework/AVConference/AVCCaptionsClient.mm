@interface AVCCaptionsClient
- (AVCCaptionsClient)initWithDelegate:(id)delegate streamToken:(int64_t)token;
- (AVCCaptionsClient)initWithDelegate:(id)delegate translatorIdentifier:(id)identifier;
- (AVCCaptionsClient)initWithDelegate:(id)delegate translatorIdentifier:(id)identifier direction:(int)direction reportingSamplingUUID:(id)d;
- (BOOL)captionsEnabled;
- (BOOL)captionsSupported;
- (BOOL)connect:(unsigned int)connect;
- (id)captionsLanguageDetectorResultsWithInternalResults:(id)results;
- (id)captionsResultsWithInternalResults:(id)results;
- (void)configureCaptions:(id)captions;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)didChangeSourceLocale:(id)locale;
- (void)didConfigureCaptionsWithError:(id)error;
- (void)didDetectGibberish:(BOOL)gibberish;
- (void)didDisableCaptions:(BOOL)captions error:(id)error;
- (void)didEnableCaptions:(BOOL)captions error:(id)error;
- (void)didProduceLanguageHypothesis:(id)hypothesis;
- (void)didStartCaptioningWithReason:(unsigned __int8)reason;
- (void)didStopCaptioningWithReason:(unsigned __int8)reason;
- (void)didStopLanguageDetectorWithError:(id)error;
- (void)didUpdateCaptions:(id)captions isRemote:(BOOL)remote;
- (void)disconnect;
- (void)enableCaptions:(BOOL)captions;
- (void)registerBlocksForNotifications;
- (void)setSourceLocale:(id)locale;
@end

@implementation AVCCaptionsClient

- (AVCCaptionsClient)initWithDelegate:(id)delegate streamToken:(int64_t)token
{
  v38 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v27 = v7;
      v28 = 2080;
      v29 = "[AVCCaptionsClient initWithDelegate:streamToken:]";
      v30 = 1024;
      v31 = 59;
      v32 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-init (%p)", buf, 0x26u);
    }
  }

  v25.receiver = self;
  v25.super_class = AVCCaptionsClient;
  v9 = [(AVCCaptionsClient *)&v25 init];
  v10 = v9;
  if (v9)
  {
    v9->_streamToken = token;
    if (objc_opt_class() == v9)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v27 = v12;
          v28 = 2080;
          v29 = "[AVCCaptionsClient initWithDelegate:streamToken:]";
          v30 = 1024;
          v31 = 65;
          v32 = 1024;
          LODWORD(selfCopy) = token;
          v14 = " [%s] %s:%d Setup for streamToken=%u";
          v15 = v13;
          v16 = 34;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(AVCCaptionsClient *)v10 performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v27 = v17;
          v28 = 2080;
          v29 = "[AVCCaptionsClient initWithDelegate:streamToken:]";
          v30 = 1024;
          v31 = 65;
          v32 = 2112;
          selfCopy = v11;
          v34 = 2048;
          v35 = v10;
          v36 = 1024;
          tokenCopy2 = token;
          v14 = " [%s] %s:%d %@(%p) Setup for streamToken=%u";
          v15 = v18;
          v16 = 54;
          goto LABEL_15;
        }
      }
    }

    if ([(AVCCaptionsClient *)v10 setUpInternalStateWithDelegate:delegate clientType:1])
    {
      MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-init");
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v27 = v19;
          v28 = 2080;
          v29 = "[AVCCaptionsClient initWithDelegate:streamToken:]";
          v30 = 1024;
          v31 = 78;
          v32 = 2048;
          selfCopy = v10;
          v34 = 1024;
          LODWORD(v35) = token;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-init (%p) Succeeded with streamToken=%u", buf, 0x2Cu);
        }
      }
    }

    else
    {
      if (objc_opt_class() == v10)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCCaptionsClient initWithDelegate:streamToken:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v21 = [(AVCCaptionsClient *)v10 performSelector:sel_logPrefix];
        }

        else
        {
          v21 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v27 = v22;
            v28 = 2080;
            v29 = "[AVCCaptionsClient initWithDelegate:streamToken:]";
            v30 = 1024;
            v31 = 72;
            v32 = 2112;
            selfCopy = v21;
            v34 = 2048;
            v35 = v10;
            v36 = 1024;
            tokenCopy2 = token;
            _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) AVCCaptionsClient-init FAILED for streamToken=%u", buf, 0x36u);
          }
        }
      }

      return 0;
    }
  }

  return v10;
}

- (AVCCaptionsClient)initWithDelegate:(id)delegate translatorIdentifier:(id)identifier
{
  uUID = [MEMORY[0x1E696AFB0] UUID];

  return [(AVCCaptionsClient *)self initWithDelegate:delegate translatorIdentifier:identifier direction:0 reportingSamplingUUID:uUID];
}

- (AVCCaptionsClient)initWithDelegate:(id)delegate translatorIdentifier:(id)identifier direction:(int)direction reportingSamplingUUID:(id)d
{
  v44 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v31 = v11;
      v32 = 2080;
      v33 = "[AVCCaptionsClient initWithDelegate:translatorIdentifier:direction:reportingSamplingUUID:]";
      v34 = 1024;
      v35 = 92;
      v36 = 2048;
      identifierCopy = self;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-init (%p)", buf, 0x26u);
    }
  }

  v29.receiver = self;
  v29.super_class = AVCCaptionsClient;
  v13 = [(AVCCaptionsClient *)&v29 init];
  v14 = v13;
  if (!v13)
  {
    [AVCCaptionsClient initWithDelegate:translatorIdentifier:direction:reportingSamplingUUID:];
    goto LABEL_25;
  }

  if (!delegate)
  {
    [AVCCaptionsClient initWithDelegate:v13 translatorIdentifier:? direction:? reportingSamplingUUID:?];
    goto LABEL_25;
  }

  if (!identifier)
  {
    [AVCCaptionsClient initWithDelegate:v13 translatorIdentifier:? direction:? reportingSamplingUUID:?];
    goto LABEL_25;
  }

  v13->_translatorIdentifier = [identifier copy];
  v14->_reportingSamplingUUID = [d copy];
  v14->_direction = direction;
  if (objc_opt_class() == v14)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v31 = v16;
        v32 = 2080;
        v33 = "[AVCCaptionsClient initWithDelegate:translatorIdentifier:direction:reportingSamplingUUID:]";
        v34 = 1024;
        v35 = 103;
        v36 = 2112;
        identifierCopy = identifier;
        v38 = 1024;
        *v39 = direction;
        *&v39[4] = 2112;
        *&v39[6] = d;
        v18 = " [%s] %s:%d Setup for translatorIdentifier=%@, direction=%d, reportingSamplingUUID=%@";
        v19 = v17;
        v20 = 54;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v15 = [(AVCCaptionsClient *)v14 performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316930;
        v31 = v21;
        v32 = 2080;
        v33 = "[AVCCaptionsClient initWithDelegate:translatorIdentifier:direction:reportingSamplingUUID:]";
        v34 = 1024;
        v35 = 103;
        v36 = 2112;
        identifierCopy = v15;
        v38 = 2048;
        *v39 = v14;
        *&v39[8] = 2112;
        *&v39[10] = identifier;
        v40 = 1024;
        directionCopy = direction;
        v42 = 2112;
        dCopy = d;
        v18 = " [%s] %s:%d %@(%p) Setup for translatorIdentifier=%@, direction=%d, reportingSamplingUUID=%@";
        v19 = v22;
        v20 = 74;
        goto LABEL_17;
      }
    }
  }

  if ([(AVCCaptionsClient *)v14 setUpInternalStateWithDelegate:delegate clientType:2])
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-init");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v31 = v23;
        v32 = 2080;
        v33 = "[AVCCaptionsClient initWithDelegate:translatorIdentifier:direction:reportingSamplingUUID:]";
        v34 = 1024;
        v35 = 117;
        v36 = 2048;
        identifierCopy = v14;
        v38 = 2112;
        *v39 = identifier;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-init (%p) Succeeded with translatorIdentifier=%@", buf, 0x30u);
      }
    }

    return v14;
  }

LABEL_25:
  if (objc_opt_class() == v14)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCCaptionsClient initWithDelegate:translatorIdentifier:direction:reportingSamplingUUID:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = [(AVCCaptionsClient *)v14 performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v31 = v26;
        v32 = 2080;
        v33 = "[AVCCaptionsClient initWithDelegate:translatorIdentifier:direction:reportingSamplingUUID:]";
        v34 = 1024;
        v35 = 112;
        v36 = 2112;
        identifierCopy = v25;
        v38 = 2048;
        *v39 = v14;
        *&v39[8] = 2112;
        *&v39[10] = identifier;
        _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) AVCCaptionsClient-init FAILED for translatorIdentifier=%@", buf, 0x3Au);
      }
    }
  }

  return 0;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  [(AVCCaptionsClient *)self deregisterBlocksForNotifications];
  [(AVCCaptionsClient *)self disconnect];
  objc_storeWeak(&self->_delegate, 0);
  callbackQueue = self->_callbackQueue;
  if (callbackQueue)
  {
    dispatch_release(callbackQueue);
    self->_callbackQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = AVCCaptionsClient;
  [(AVCCaptionsClient *)&v4 dealloc];
}

- (BOOL)connect:(unsigned int)connect
{
  v51 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      uUIDString = [(NSUUID *)self->_translatorIdentifier UUIDString];
      *buf = 136316162;
      v42 = v5;
      v43 = 2080;
      v44 = "[AVCCaptionsClient connect:]";
      v45 = 1024;
      v46 = 160;
      v47 = 1024;
      *v48 = streamToken;
      *&v48[4] = 2112;
      *&v48[6] = uUIDString;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCCaptionsClient: connect for streamToken=%u, translatorIdentifier=%@", buf, 0x2Cu);
    }
  }

  switch(connect)
  {
    case 0u:
      goto LABEL_35;
    case 2u:
      v12 = objc_alloc(MEMORY[0x1E695DF20]);
      uUIDString2 = [(NSUUID *)self->_translatorIdentifier UUIDString];
      uUIDString3 = [(NSUUID *)self->_reportingSamplingUUID UUIDString];
      v10 = [v12 initWithObjectsAndKeys:{uUIDString2, @"vcCaptionsTranslatorIdentifier", uUIDString3, @"vcCaptionsReportingSamplingUUID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", self->_direction), @"vcCaptionsDirection", 0}];
      v11 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcCaptionsClientInitializeTranslator" arguments:v10];
      break;
    case 1u:
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:LODWORD(self->_streamToken)];
      v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"vcCaptionsStreamToken", 0}];
      v11 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcCaptionsClientInitialize" arguments:v10];
      goto LABEL_11;
    default:
      v11 = 0;
      v10 = 0;
      break;
  }

  v9 = 0;
LABEL_11:

  v15 = [v11 objectForKeyedSubscript:@"ERROR"];
  if (!v15)
  {
    LOBYTE(v19) = 1;
    return v19;
  }

  v16 = v15;
  v17 = objc_opt_class();
  if (connect != 1)
  {
    if (v17 != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v20 = [(AVCCaptionsClient *)self performSelector:sel_logPrefix];
      }

      else
      {
        v20 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_35;
      }

      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      v19 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        translatorIdentifier = self->_translatorIdentifier;
        v39 = [objc_msgSend(v16 "description")];
        *buf = 136316674;
        v42 = v36;
        v43 = 2080;
        v44 = "[AVCCaptionsClient connect:]";
        v45 = 1024;
        v46 = 186;
        v47 = 2112;
        *v48 = v20;
        *&v48[8] = 2048;
        *&v48[10] = self;
        v49 = 2112;
        *v50 = translatorIdentifier;
        *&v50[8] = 2080;
        *&v50[10] = v39;
        v25 = " [%s] %s:%d %@(%p) AVCCaptionsClient: Failed connection for translatorIdentifier=%@ Error=%s";
        v26 = v37;
        v27 = 68;
        goto LABEL_34;
      }

      return v19;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      v19 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        return v19;
      }

      v30 = self->_translatorIdentifier;
      v31 = [objc_msgSend(v16 "description")];
      *buf = 136316162;
      v42 = v28;
      v43 = 2080;
      v44 = "[AVCCaptionsClient connect:]";
      v45 = 1024;
      v46 = 186;
      v47 = 2112;
      *v48 = v30;
      *&v48[8] = 2080;
      *&v48[10] = v31;
      v25 = " [%s] %s:%d AVCCaptionsClient: Failed connection for translatorIdentifier=%@ Error=%s";
      v26 = v29;
      v27 = 48;
      goto LABEL_34;
    }

LABEL_35:
    LOBYTE(v19) = 0;
    return v19;
  }

  if (v17 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      v19 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v19)
      {
        return v19;
      }

      v23 = self->_streamToken;
      v24 = [objc_msgSend(v16 "description")];
      *buf = 136316162;
      v42 = v21;
      v43 = 2080;
      v44 = "[AVCCaptionsClient connect:]";
      v45 = 1024;
      v46 = 184;
      v47 = 1024;
      *v48 = v23;
      *&v48[4] = 2080;
      *&v48[6] = v24;
      v25 = " [%s] %s:%d AVCCaptionsClient: Failed connection for streamToken=%u Error=%s";
      v26 = v22;
      v27 = 44;
LABEL_34:
      _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, v25, buf, v27);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = [(AVCCaptionsClient *)self performSelector:sel_logPrefix];
  }

  else
  {
    v18 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_35;
  }

  v32 = VRTraceErrorLogLevelToCSTR();
  v33 = *MEMORY[0x1E6986650];
  v19 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v19)
  {
    v34 = self->_streamToken;
    v35 = [objc_msgSend(v16 "description")];
    *buf = 136316674;
    v42 = v32;
    v43 = 2080;
    v44 = "[AVCCaptionsClient connect:]";
    v45 = 1024;
    v46 = 184;
    v47 = 2112;
    *v48 = v18;
    *&v48[8] = 2048;
    *&v48[10] = self;
    v49 = 1024;
    *v50 = v34;
    *&v50[4] = 2080;
    *&v50[6] = v35;
    v25 = " [%s] %s:%d %@(%p) AVCCaptionsClient: Failed connection for streamToken=%u Error=%s";
    v26 = v33;
    v27 = 64;
    goto LABEL_34;
  }

  return v19;
}

- (void)disconnect
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[AVCCaptionsClient disconnect]";
      v10 = 1024;
      v11 = 194;
      v12 = 1024;
      v13 = streamToken;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCCaptionsClient: disconnect for streamToken:%u", &v6, 0x22u);
    }
  }

  [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcCaptionsClientUninitialize"];
}

- (void)registerBlocksForNotifications
{
  v14[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke;
  v14[3] = &unk_1E85F3AD8;
  v14[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidConfigureCaptions" block:v14 queue:self->_callbackQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_107;
  v13[3] = &unk_1E85F3AD8;
  v13[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidEnableCaptions" block:v13 queue:self->_callbackQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_2;
  v12[3] = &unk_1E85F3AD8;
  v12[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidDisableCaptions" block:v12 queue:self->_callbackQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_3;
  v11[3] = &unk_1E85F3AD8;
  v11[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidCaptionsStart" block:v11 queue:self->_callbackQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_4;
  v10[3] = &unk_1E85F3AD8;
  v10[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidCaptionsEnd" block:v10 queue:self->_callbackQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_5;
  v9[3] = &unk_1E85F3AD8;
  v9[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidUpdateCaptions" block:v9 queue:self->_callbackQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_129;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidDetectGibberish" block:v8 queue:self->_callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_2_134;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidProduceLanguageHypothesis" block:v7 queue:self->_callbackQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_137;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidStopLanguageDetectorWithError" block:v6 queue:self->_callbackQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_2_139;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcCaptionsDidChangeSourceLocale" block:v5 queue:self->_callbackQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_3_145;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"conferenceDidServerDie" block:v4 queue:self->_callbackQueue];
}

uint64_t __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v5 = result;
      v6 = [a2 objectForKeyedSubscript:@"vcCaptionsError"];
      if (v6)
      {
        v10 = 0;
        v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v10];
        if (v10)
        {
          if (objc_opt_class() == v5)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_cold_1();
              }
            }
          }

          else
          {
            if (objc_opt_respondsToSelector())
            {
              v7 = [v5 performSelector:sel_logPrefix];
            }

            else
            {
              v7 = &stru_1F570E008;
            }

            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v8 = VRTraceErrorLogLevelToCSTR();
              v9 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                *buf = 136316418;
                v12 = v8;
                v13 = 2080;
                v14 = "[AVCCaptionsClient registerBlocksForNotifications]_block_invoke";
                v15 = 1024;
                v16 = 215;
                v17 = 2112;
                v18 = v7;
                v19 = 2048;
                v20 = v5;
                v21 = 2112;
                v22 = v10;
                _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to unarchive with error=%@", buf, 0x3Au);
              }
            }
          }
        }
      }

      return [v5 didConfigureCaptionsWithError:v6];
    }
  }

  return result;
}

uint64_t __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_107(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v5 = result;
      v6 = [a2 objectForKey:@"vcCaptionsError"];
      if (v6)
      {
        v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
      }

      v7 = [objc_msgSend(a2 objectForKey:{@"vcCaptionsEnabled", "BOOLValue"}];

      return [v5 didEnableCaptions:v7 error:v6];
    }
  }

  return result;
}

uint64_t __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v5 = result;
      v6 = [a2 objectForKey:@"vcCaptionsError"];
      if (v6)
      {
        v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:0];
      }

      v7 = [objc_msgSend(a2 objectForKey:{@"vcCaptionsDisabled", "BOOLValue"}];

      return [v5 didDisableCaptions:v7 error:v6];
    }
  }

  return result;
}

uint64_t __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v5 = result;
      v6 = [objc_msgSend(a2 objectForKey:{@"vcCaptionsStartReason", "unsignedCharValue"}];

      return [v5 didStartCaptioningWithReason:v6];
    }
  }

  return result;
}

uint64_t __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_4(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v5 = result;
      v6 = [objc_msgSend(a2 objectForKey:{@"vcCaptionsStopReason", "unsignedCharValue"}];

      return [v5 didStopCaptioningWithReason:v6];
    }
  }

  return result;
}

void __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_5(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      v12 = 0;
      v6 = +[VCCaptionsTranscriptionArchiving unarchivedTranscriptionFromData:error:](VCCaptionsTranscriptionArchiving, "unarchivedTranscriptionFromData:error:", [a2 objectForKey:@"vcCaptionsTranscription"], &v12);
      if (v12)
      {
        if (objc_opt_class() == v5)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v8 = VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_5_cold_1(v8, &v12);
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v7 = [v5 performSelector:sel_logPrefix];
          }

          else
          {
            v7 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v11 = [v12 debugDescription];
              *buf = 136316418;
              v14 = v9;
              v15 = 2080;
              v16 = "[AVCCaptionsClient registerBlocksForNotifications]_block_invoke";
              v17 = 1024;
              v18 = 293;
              v19 = 2112;
              v20 = v7;
              v21 = 2048;
              v22 = v5;
              v23 = 2112;
              v24 = v11;
              _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to unarchive captions transcription in XPC callback, error=%@", buf, 0x3Au);
            }
          }
        }
      }

      else
      {
        [v5 didUpdateCaptions:v6 isRemote:{objc_msgSend(v6, "isLocal") ^ 1}];
      }
    }
  }
}

uint64_t __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_129(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v5 = result;
      v6 = [objc_msgSend(a2 objectForKey:{@"vcCaptionsGibberish", "BOOLValue"}];

      return [v5 didDetectGibberish:v6];
    }
  }

  return result;
}

void __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_2_134(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      v12 = 0;
      v6 = +[VCCaptionsLanguageDetectorResults unarchivedTranscriptionFromData:error:](VCCaptionsLanguageDetectorResults, "unarchivedTranscriptionFromData:error:", [a2 objectForKey:@"vcCaptionsTranscription"], &v12);
      if (v12)
      {
        if (objc_opt_class() == v5)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v8 = VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_2_134_cold_1(v8, &v12);
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v7 = [v5 performSelector:sel_logPrefix];
          }

          else
          {
            v7 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v9 = VRTraceErrorLogLevelToCSTR();
            v10 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v11 = [v12 debugDescription];
              *buf = 136316418;
              v14 = v9;
              v15 = 2080;
              v16 = "[AVCCaptionsClient registerBlocksForNotifications]_block_invoke";
              v17 = 1024;
              v18 = 323;
              v19 = 2112;
              v20 = v7;
              v21 = 2048;
              v22 = v5;
              v23 = 2112;
              v24 = v11;
              _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to unarchive captions language detector results in XPC callback, error=%@", buf, 0x3Au);
            }
          }
        }
      }

      else
      {
        [v5 didProduceLanguageHypothesis:v6];
      }
    }
  }
}

void *__51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_137(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {

      return [result didStopLanguageDetectorWithError:a3];
    }
  }

  return result;
}

uint64_t __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_2_139(uint64_t a1, void *a2)
{
  result = [a2 objectForKeyedSubscript:@"SERVERDIED"];
  if (!result)
  {
    result = [*(a1 + 32) strong];
    if (result)
    {
      v5 = result;
      v6 = +[AVCCaptionsConfig deserializeLocale:](AVCCaptionsConfig, "deserializeLocale:", [a2 objectForKey:@"vcCaptionsSourceLocale"]);

      return [v5 didChangeSourceLocale:v6];
    }
  }

  return result;
}

void __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_3_145(uint64_t a1, void *a2)
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
          __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_3_145_cold_1();
        }
      }

      [objc_msgSend(v3 "delegate")];
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_3_145_cold_2();
      }
    }
  }
}

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsDidEnableCaptions"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsDidDisableCaptions"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsDidCaptionsStart"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsDidCaptionsEnd"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsDidUpdateCaptions"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsDidDetectGibberish"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"conferenceDidServerDie"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsDidProduceLanguageHypothesis"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsDidStopLanguageDetectorWithError"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcCaptionsDidChangeSourceLocale"];
}

- (id)captionsResultsWithInternalResults:(id)results
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [AVCCaptionsResult alloc];
  v5 = [objc_msgSend(results "segments")];
  isFinal = [results isFinal];
  utteranceNumber = [results utteranceNumber];
  updateNumber = [results updateNumber];
  [results utteranceStartTimestamp];
  v10 = v9;
  [results utteranceDuration];
  v12 = [(AVCCaptionsResult *)v4 initWithCapacity:v5 utteranceComplete:isFinal utteranceNumber:utteranceNumber updateNumber:updateNumber utteranceStartTimestamp:v10 utteranceDuration:v11];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  segments = [results segments];
  v14 = [segments countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(segments);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        if ([v18 text])
        {
          text = [v18 text];
        }

        else
        {
          text = &stru_1F570E008;
        }

        confidence = [v18 confidence];
        range = [v18 range];
        [(AVCCaptionsResult *)v12 addTokenWithString:text confidence:range range:v22, confidence];
      }

      v15 = [segments countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v15);
  }

  return v12;
}

- (id)captionsLanguageDetectorResultsWithInternalResults:(id)results
{
  v3 = [[AVCCaptionsLanguageDetectorResults alloc] initWithLanguageDetectorResults:results];

  return v3;
}

- (void)didConfigureCaptionsWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  delegate = [(AVCCaptionsClient *)self delegate];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-didConfigureCaptionsWithError");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "[AVCCaptionsClient didConfigureCaptionsWithError:]";
      v12 = 1024;
      v13 = 407;
      v14 = 2048;
      selfCopy = self;
      v16 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-didConfigureCaptionsWithError (%p) error=%@", &v8, 0x30u);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(AVCCaptionsClientDelegate *)delegate captionsClient:self didConfigureCaptionsWithError:error];
  }
}

- (void)didEnableCaptions:(BOOL)captions error:(id)error
{
  captionsCopy = captions;
  v21 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-didEnableCaptions");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316418;
      v10 = v7;
      v11 = 2080;
      v12 = "[AVCCaptionsClient didEnableCaptions:error:]";
      v13 = 1024;
      v14 = 414;
      v15 = 2048;
      selfCopy = self;
      v17 = 1024;
      v18 = captionsCopy;
      v19 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-didEnableCaptions (%p) enabled=%d error=%@", &v9, 0x36u);
    }
  }

  [(AVCCaptionsClientDelegate *)[(AVCCaptionsClient *)self delegate] captionsClient:self didEnableCaptions:captionsCopy error:error];
}

- (void)didDisableCaptions:(BOOL)captions error:(id)error
{
  captionsCopy = captions;
  v21 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-didDisableCaptions");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136316418;
      v10 = v7;
      v11 = 2080;
      v12 = "[AVCCaptionsClient didDisableCaptions:error:]";
      v13 = 1024;
      v14 = 419;
      v15 = 2048;
      selfCopy = self;
      v17 = 1024;
      v18 = captionsCopy;
      v19 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-didDisableCaptions (%p) disabled=%d error=%@", &v9, 0x36u);
    }
  }

  [(AVCCaptionsClientDelegate *)[(AVCCaptionsClient *)self delegate] captionsClient:self didDisableCaptions:captionsCopy error:error];
}

- (void)didStartCaptioningWithReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  delegate = [(AVCCaptionsClient *)self delegate];

  [(AVCCaptionsClientDelegate *)delegate captionsClient:self didStartCaptioningWithReason:reasonCopy];
}

- (void)didStopCaptioningWithReason:(unsigned __int8)reason
{
  reasonCopy = reason;
  delegate = [(AVCCaptionsClient *)self delegate];

  [(AVCCaptionsClientDelegate *)delegate captionsClient:self didStopCaptioningWithReason:reasonCopy];
}

- (void)didUpdateCaptions:(id)captions isRemote:(BOOL)remote
{
  remoteCopy = remote;
  v22 = *MEMORY[0x1E69E9840];
  v7 = [(AVCCaptionsClient *)self captionsResultsWithInternalResults:?];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-didUpdateCaptions");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136316418;
      v11 = v8;
      v12 = 2080;
      v13 = "[AVCCaptionsClient didUpdateCaptions:isRemote:]";
      v14 = 1024;
      v15 = 433;
      v16 = 2048;
      selfCopy = self;
      v18 = 2112;
      captionsCopy = captions;
      v20 = 1024;
      v21 = remoteCopy;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-didUpdateCaptions (%p) transcription=%@, isRemote=%d", &v10, 0x36u);
    }
  }

  [(AVCCaptionsClientDelegate *)[(AVCCaptionsClient *)self delegate] captionsClient:self didUpdateCaptions:v7 source:remoteCopy];
}

- (void)didDetectGibberish:(BOOL)gibberish
{
  gibberishCopy = gibberish;
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-didDetectGibberish");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCCaptionsClient didDetectGibberish:]";
      v11 = 1024;
      v12 = 438;
      v13 = 2048;
      selfCopy = self;
      v15 = 1024;
      v16 = gibberishCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-didDetectGibberish (%p) gibberish=%d", &v7, 0x2Cu);
    }
  }

  [(AVCCaptionsClient *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCCaptionsClientDelegate *)[(AVCCaptionsClient *)self delegate] captionsClient:self didDetectGibberish:gibberishCopy];
  }
}

- (void)didProduceLanguageHypothesis:(id)hypothesis
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [(AVCCaptionsClient *)self captionsLanguageDetectorResultsWithInternalResults:hypothesis];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-didProduceLanguageHypothesis");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if ([v4 detectedLanguageCode])
      {
        v7 = [objc_msgSend(objc_msgSend(v4 "detectedLanguageCode")];
      }

      else
      {
        v7 = "<nil>";
      }

      if ([objc_msgSend(v4 "dominantLocale")])
      {
        v8 = [objc_msgSend(objc_msgSend(objc_msgSend(v4 "dominantLocale")];
      }

      else
      {
        v8 = "<nil>";
      }

      [v4 dominantLocaleConfidence];
      v10 = v9;
      [v4 utteranceStartTimestamp];
      v12 = v11;
      [v4 utteranceDuration];
      v14 = 136317186;
      v15 = v5;
      v16 = 2080;
      v17 = "[AVCCaptionsClient didProduceLanguageHypothesis:]";
      v18 = 1024;
      v19 = 446;
      v20 = 2048;
      selfCopy = self;
      v22 = 2080;
      v23 = v7;
      v24 = 2080;
      v25 = v8;
      v26 = 2048;
      v27 = v10;
      v28 = 2048;
      v29 = v12;
      v30 = 2048;
      v31 = v13;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-didProduceLanguageHypothesis (%p) detectedLanguageCode=%s dominantLocale=%s dominantLocaleConfidence=%f utteranceStartTimestamp=%f utteranceDuration=%f", &v14, 0x58u);
    }
  }

  [(AVCCaptionsClient *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCCaptionsClientDelegate *)[(AVCCaptionsClient *)self delegate] captionsClient:self didProduceLanguageHypothesis:v4];
  }
}

- (void)didStopLanguageDetectorWithError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-didStopLanguageDetectorWithError");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCCaptionsClient didStopLanguageDetectorWithError:]";
      v11 = 1024;
      v12 = 453;
      v13 = 2048;
      selfCopy = self;
      v15 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-didStopLanguageDetectorWithError (%p) error=%@", &v7, 0x30u);
    }
  }

  [(AVCCaptionsClient *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCCaptionsClientDelegate *)[(AVCCaptionsClient *)self delegate] captionsClient:self didStopLanguageDetectorWithError:error];
  }
}

- (void)didChangeSourceLocale:(id)locale
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-didChangeSourceLocale");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCCaptionsClient didChangeSourceLocale:]";
      v11 = 1024;
      v12 = 460;
      v13 = 2048;
      selfCopy = self;
      v15 = 2112;
      localeIdentifier = [locale localeIdentifier];
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-didChangeSourceLocale (%p) sourceLocale=%@", &v7, 0x30u);
    }
  }

  self->_sourceLocale = [locale copy];
  [(AVCCaptionsClient *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(AVCCaptionsClientDelegate *)[(AVCCaptionsClient *)self delegate] captionsClient:self didChangeSourceLocale:self->_sourceLocale];
  }
}

- (BOOL)captionsEnabled
{
  v2 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcCaptionsGetCaptionsEnabled" arguments:0];
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:@"vcCaptionsEnabled"];

    LOBYTE(v2) = [v3 BOOLValue];
  }

  return v2;
}

- (BOOL)captionsSupported
{
  v2 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcCaptionsGetCaptionsSupported" arguments:0];
  if (v2)
  {
    v3 = [v2 objectForKeyedSubscript:@"vcCaptionsSupported"];

    LOBYTE(v2) = [v3 BOOLValue];
  }

  return v2;
}

- (void)enableCaptions:(BOOL)captions
{
  captionsCopy = captions;
  v19 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-enableCaptions");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[AVCCaptionsClient enableCaptions:]";
      v13 = 1024;
      v14 = 497;
      v15 = 2112;
      selfCopy = self;
      v17 = 1024;
      v18 = captionsCopy;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-enableCaptions self=%@, isEnabled=%{BOOL}d", buf, 0x2Cu);
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:captionsCopy];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcCaptionsEnable", 0}];
  [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcCaptionsSetCaptionsEnabled" arguments:v8];
}

- (void)configureCaptions:(id)captions
{
  v20 = *MEMORY[0x1E69E9840];

  self->_locale = [objc_msgSend(captions "locale")];
  v5 = [AVCCaptionsConfig serializeConfiguration:captions];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-configureCaptions");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316418;
      v9 = v6;
      v10 = 2080;
      v11 = "[AVCCaptionsClient configureCaptions:]";
      v12 = 1024;
      v13 = 509;
      v14 = 2112;
      selfCopy = self;
      v16 = 2112;
      captionsCopy = captions;
      v18 = 1024;
      v19 = v5 != 0;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-configureCaptions self=%@ configuration=%@ argumentsSerialized=%{BOOL}d", &v8, 0x36u);
    }
  }

  if (v5)
  {
    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcCaptionsSetCaptionsConfiguration" arguments:v5];
  }
}

- (void)setSourceLocale:(id)locale
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (dictionary)
  {
    v6 = dictionary;
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCCaptionsClient-setSourceLocale");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136316162;
        v10 = v7;
        v11 = 2080;
        v12 = "[AVCCaptionsClient setSourceLocale:]";
        v13 = 1024;
        v14 = 526;
        v15 = 2112;
        selfCopy = self;
        v17 = 2112;
        localeIdentifier = [locale localeIdentifier];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCCaptionsClient-setSourceLocale self=%@ sourceLocale=%@", &v9, 0x30u);
      }
    }

    if (locale)
    {
      [v6 setObject:+[AVCCaptionsConfig serializeLocale:](AVCCaptionsConfig forKeyedSubscript:{"serializeLocale:", locale), @"vcCaptionsSourceLocale"}];
    }

    [(AVConferenceXPCClient *)self->_connection sendMessageAsync:"vcCaptionsSetCaptionsSourceLocale" arguments:v6];
  }

  else
  {
    [AVCCaptionsClient setSourceLocale:?];
  }
}

- (void)initWithDelegate:streamToken:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)initWithDelegate:(void *)a1 translatorIdentifier:direction:reportingSamplingUUID:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v7 = 28;
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
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithDelegate:(void *)a1 translatorIdentifier:direction:reportingSamplingUUID:.cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v7 = 28;
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
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithDelegate:translatorIdentifier:direction:reportingSamplingUUID:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initWithDelegate:translatorIdentifier:direction:reportingSamplingUUID:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setUpInternalStateWithDelegate:(uint64_t)a3 clientType:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_40_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_11_0();
  a16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == v24)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      v27 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        a12 = 137;
        v28 = " [%s] %s:%d AVC Captioning is not supported on the device";
        v29 = v27;
        v30 = 28;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &a9, v30);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        v28 = " [%s] %s:%d %@(%p) AVC Captioning is not supported on the device";
        v29 = v31;
        v30 = 48;
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpInternalStateWithDelegate:clientType:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
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
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpInternalStateWithDelegate:clientType:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
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
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpInternalStateWithDelegate:clientType:.cold.4()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
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
  *v0 = 1;
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpInternalStateWithDelegate:clientType:.cold.5()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
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
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setUpInternalStateWithDelegate:clientType:.cold.6()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
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
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

void __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_5_cold_1(uint64_t a1, id *a2)
{
  [*a2 debugDescription];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_2_134_cold_1(uint64_t a1, id *a2)
{
  [*a2 debugDescription];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_3_145_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __51__AVCCaptionsClient_registerBlocksForNotifications__block_invoke_3_145_cold_2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 364;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d AVCCaptionsClient: server died", v1, 0x1Cu);
}

- (void)setSourceLocale:(void *)a1 .cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v7 = 28;
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
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

@end