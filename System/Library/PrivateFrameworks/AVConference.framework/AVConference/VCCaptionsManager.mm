@interface VCCaptionsManager
+ (id)defaultManager;
- (VCCaptionsManager)init;
- (id)captionsSourceFromClientContext:(id)context;
- (id)deserializeLocale:(id)locale withError:(id *)error serializedLocale:(id)serializedLocale;
- (id)streamTokenEntryForTranslatorIdentifier:(id)identifier;
- (id)streamTokenEntryFromClientContext:(id)context;
- (int64_t)addCaptionsSourceForTranslatorIdentifier:(id)identifier streamToken:(int64_t)token direction:(int)direction reportingSamplingUUID:(id)d;
- (void)dealloc;
- (void)deregisterBlocksForService;
- (void)dispatchedRegisterCaptionsSource:(id)source streamToken:(int64_t)token;
- (void)dispatchedUnregisterCaptionsSourceWithStreamToken:(int64_t)token;
- (void)notifyClientsWithStreamToken:(int64_t)token service:(char *)service arguments:(id)arguments;
- (void)notifyClientsWithStreamToken:(int64_t)token service:(char *)service arguments:(id)arguments isTranslated:(BOOL)translated;
- (void)registerBlocksForService;
- (void)registerCaptionsSource:(id)source streamToken:(int64_t)token;
- (void)streamToken:(int64_t)token didChangeSourceLocale:(id)locale;
- (void)streamToken:(int64_t)token didConfigureCaptionsWithError:(id)error;
- (void)streamToken:(int64_t)token didDetectGibberish:(BOOL)gibberish;
- (void)streamToken:(int64_t)token didDisableCaptions:(BOOL)captions error:(id)error;
- (void)streamToken:(int64_t)token didEnableCaptions:(BOOL)captions error:(id)error;
- (void)streamToken:(int64_t)token didProduceLanguageHypothesis:(id)hypothesis;
- (void)streamToken:(int64_t)token didStartCaptioningWithReason:(unsigned __int8)reason;
- (void)streamToken:(int64_t)token didStopCaptioningWithReason:(unsigned __int8)reason;
- (void)streamToken:(int64_t)token didStopLanguageDetectorWithError:(id)error;
- (void)streamToken:(int64_t)token didUpdateCaptions:(id)captions;
- (void)unregisterCaptionsSourceWithStreamToken:(int64_t)token;
- (void)updateSourceLocale:(id)locale clientContext:(id)context;
- (void)updateTranslationTranscriptionContextArray:(id)array;
@end

@implementation VCCaptionsManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[VCCaptionsManager defaultManager];
  }

  return defaultManager__vcCaptionsManager;
}

void __35__VCCaptionsManager_defaultManager__block_invoke()
{
  if (!defaultManager__vcCaptionsManager)
  {
    defaultManager__vcCaptionsManager = objc_alloc_init(VCCaptionsManager);
  }
}

- (VCCaptionsManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCCaptionsManager;
  v2 = [(VCCaptionsManager *)&v5 init];
  if (v2)
  {
    v2->_streamTokenList = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_translatorIdentifiers = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_translationContexts = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_transcriptionContexts = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v2->_connection = objc_alloc_init(AVConferenceXPCClient);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->_xpcCommandQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCCaptionsManager.xpcCommandQueue", 0, CustomRootQueue);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCCaptionsManager *)self deregisterBlocksForService];
  dispatch_release(self->_xpcCommandQueue);

  v3.receiver = self;
  v3.super_class = VCCaptionsManager;
  [(VCCaptionsManager *)&v3 dealloc];
}

- (void)dispatchedRegisterCaptionsSource:(id)source streamToken:(int64_t)token
{
  v28 = *MEMORY[0x1E69E9840];
  if (-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenList, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:token]))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v17 = v8;
          v18 = 2080;
          v19 = "[VCCaptionsManager dispatchedRegisterCaptionsSource:streamToken:]";
          v20 = 1024;
          v21 = 230;
          v22 = 1024;
          LODWORD(v23) = token;
          v10 = " [%s] %s:%d VCCaptionsManager: Context already exists for stream token: %u";
          v11 = v9;
          v12 = 34;
LABEL_15:
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(VCCaptionsManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v17 = v13;
          v18 = 2080;
          v19 = "[VCCaptionsManager dispatchedRegisterCaptionsSource:streamToken:]";
          v20 = 1024;
          v21 = 230;
          v22 = 2112;
          v23 = v7;
          v24 = 2048;
          selfCopy = self;
          v26 = 1024;
          tokenCopy = token;
          v10 = " [%s] %s:%d %@(%p) VCCaptionsManager: Context already exists for stream token: %u";
          v11 = v14;
          v12 = 54;
          goto LABEL_15;
        }
      }
    }
  }

  else
  {
    v15 = [[VCCaptionsManagerStreamTokenClientList alloc] initWithStreamToken:token captionsSource:source];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    [source registerCaptionsEventDelegate:self];
  }
}

- (void)registerCaptionsSource:(id)source streamToken:(int64_t)token
{
  v5[7] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__VCCaptionsManager_registerCaptionsSource_streamToken___block_invoke;
  v5[3] = &unk_1E85F50D8;
  v5[4] = self;
  v5[5] = source;
  v5[6] = token;
  dispatch_async(xpcCommandQueue, v5);
}

- (void)dispatchedUnregisterCaptionsSourceWithStreamToken:(int64_t)token
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:token];
  v5 = [(NSMutableDictionary *)self->_streamTokenList objectForKeyedSubscript:v4];
  [objc_msgSend(v5 "captionsSource")];
  [v5 captionsSource];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 translatorIdentifier])
  {
    [objc_msgSend(v5 "captionsSource")];
  }

  streamTokenList = self->_streamTokenList;

  [(NSMutableDictionary *)streamTokenList removeObjectForKey:v4];
}

- (void)unregisterCaptionsSourceWithStreamToken:(int64_t)token
{
  block[6] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VCCaptionsManager_unregisterCaptionsSourceWithStreamToken___block_invoke;
  block[3] = &unk_1E85F40E0;
  block[4] = self;
  block[5] = token;
  dispatch_async(xpcCommandQueue, block);
}

- (id)captionsSourceFromClientContext:(id)context
{
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  if (![VCCaptionsManagerStreamTokenClientList isValidContext:context])
  {
    return 0;
  }

  v5 = [VCCaptionsManagerStreamTokenClientList streamTokenFromClientContext:context];
  v6 = -[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenList, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInteger:v5]);

  return [v6 captionsSource];
}

- (id)streamTokenEntryFromClientContext:(id)context
{
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  if (![VCCaptionsManagerStreamTokenClientList isValidContext:context])
  {
    return 0;
  }

  v5 = [VCCaptionsManagerStreamTokenClientList streamTokenFromClientContext:context];
  streamTokenList = self->_streamTokenList;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];

  return [(NSMutableDictionary *)streamTokenList objectForKeyedSubscript:v7];
}

- (id)deserializeLocale:(id)locale withError:(id *)error serializedLocale:(id)serializedLocale
{
  v32 = *MEMORY[0x1E69E9840];
  if (!serializedLocale || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCaptionsManager" code:-5 userInfo:0];
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v15 = objc_opt_class();
    Name = class_getName(v15);
    if (error)
    {
      v17 = *error;
    }

    else
    {
      v17 = @"nil";
    }

    v20 = 136316418;
    v21 = v13;
    v22 = 2080;
    v23 = "[VCCaptionsManager deserializeLocale:withError:serializedLocale:]";
    v24 = 1024;
    v25 = 292;
    v26 = 2112;
    serializedLocaleCopy = serializedLocale;
    v28 = 2080;
    v29 = Name;
    v30 = 2112;
    v31 = v17;
    v18 = " [%s] %s:%d serializedLocale not present serializedLocale=%@, class=%s, error=%@";
    v19 = v14;
    goto LABEL_20;
  }

  result = [AVCCaptionsConfig deserializeLocale:serializedLocale];
  if (result)
  {
    return result;
  }

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCaptionsManager" code:-5 userInfo:0];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = class_getName(v10);
      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = @"nil";
      }

      v20 = 136316418;
      v21 = v8;
      v22 = 2080;
      v23 = "[VCCaptionsManager deserializeLocale:withError:serializedLocale:]";
      v24 = 1024;
      v25 = 300;
      v26 = 2112;
      serializedLocaleCopy = 0;
      v28 = 2080;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      v18 = " [%s] %s:%d deserializedLocale not deserialized into NSLocale, deserializedLocale=%@, class=%s, error=%@";
      v19 = v9;
LABEL_20:
      _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v18, &v20, 0x3Au);
    }
  }

  return 0;
}

- (void)updateSourceLocale:(id)locale clientContext:(id)context
{
  if (locale)
  {
    if (context)
    {
      v7 = [(VCCaptionsManager *)self streamTokenEntryFromClientContext:context];
      if ([v7 sourceLocaleEligibleToBeModified])
      {
        v8 = [(VCCaptionsManager *)self captionsSourceFromClientContext:context];
        if (v8)
        {
          v9 = v8;
          [v7 setSourceLocaleIdentifier:{objc_msgSend(locale, "localeIdentifier")}];
          [v9 setCaptionsSourceLocale:locale];
          [v7 setSourceLocaleHasBeenSet:1];

          [(VCCaptionsManager *)self updateTranslationTranscriptionContextArray:context];
        }

        else
        {
          [VCCaptionsManager updateSourceLocale:? clientContext:?];
        }
      }

      else
      {
        [VCCaptionsManager updateSourceLocale:? clientContext:?];
      }
    }

    else
    {
      [VCCaptionsManager updateSourceLocale:? clientContext:?];
    }
  }

  else
  {
    [VCCaptionsManager updateSourceLocale:? clientContext:?];
  }
}

- (void)registerBlocksForService
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__VCCaptionsManager_registerBlocksForService__block_invoke;
  v10[3] = &unk_1E85F5100;
  v10[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__VCCaptionsManager_registerBlocksForService__block_invoke_118;
  v9[3] = &unk_1E85F5100;
  v9[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__VCCaptionsManager_registerBlocksForService__block_invoke_130;
  v8[3] = &unk_1E85F5100;
  v8[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__VCCaptionsManager_registerBlocksForService__block_invoke_133;
  v7[3] = &unk_1E85F5100;
  v7[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__VCCaptionsManager_registerBlocksForService__block_invoke_2;
  v6[3] = &unk_1E85F5100;
  v6[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__VCCaptionsManager_registerBlocksForService__block_invoke_3;
  v5[3] = &unk_1E85F5100;
  v5[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__VCCaptionsManager_registerBlocksForService__block_invoke_4;
  v4[3] = &unk_1E85F5100;
  v4[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__VCCaptionsManager_registerBlocksForService__block_invoke_151;
  v3[3] = &unk_1E85F5100;
  v3[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

uint64_t __45__VCCaptionsManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKey:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [a2 objectForKey:@"vcCaptionsStreamToken"];
  if (!v7)
  {
    if (a3)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = -4;
      goto LABEL_12;
    }

    return 0;
  }

  v8 = [v7 unsignedIntegerValue];
  v9 = [*(*(a1 + 32) + 8) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v8)}];
  if (!v9)
  {
    if (a3)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = -1;
      goto LABEL_12;
    }

    return 0;
  }

  v10 = v9;
  if ([v9 translatorIdentifier])
  {
    if (a3)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = -9;
LABEL_12:
      v6 = 0;
      *a3 = [v11 errorWithDomain:@"VCCaptionsManager" code:v12 userInfo:0];
      return v6;
    }

    return 0;
  }

  v18 = 0;
  if (([objc_msgSend(v10 "captionsSource")] & 1) == 0)
  {
    if (a3)
    {
      v6 = 0;
      *a3 = v18;
      return v6;
    }

    return 0;
  }

  v14 = [v10 newContext];
  if (!v14)
  {
    if (a3)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = -3;
      goto LABEL_12;
    }

    return 0;
  }

  v15 = v14;
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v14, @"CONTEXT", 0}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v16;
      v21 = 2080;
      v22 = "[VCCaptionsManager registerBlocksForService]_block_invoke";
      v23 = 1024;
      v24 = 371;
      v25 = 2048;
      v26 = v15;
      _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCCaptionsManager: New captions client. Context=%p", buf, 0x26u);
    }
  }

  return v6;
}

uint64_t __45__VCCaptionsManager_registerBlocksForService__block_invoke_118(uint64_t a1, void *a2, uint64_t *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKey:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [a2 objectForKeyedSubscript:@"vcCaptionsDirection"];
  v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcCaptionsTranslatorIdentifier"}];
  v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(a2, "objectForKeyedSubscript:", @"vcCaptionsReportingSamplingUUID"}];
  v10 = v9;
  if (!v8)
  {
    v18 = 0;
    v12 = 0;
    v26 = -7;
    goto LABEL_31;
  }

  if (!v9)
  {
    v18 = 0;
    v12 = 0;
    v26 = -14;
    goto LABEL_31;
  }

  v11 = [*(a1 + 32) streamTokenEntryForTranslatorIdentifier:v8];
  v12 = v11;
  if (v11)
  {
    goto LABEL_12;
  }

  ID = VCUniqueIDGenerator_GenerateID();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v29 = v14;
      v30 = 2080;
      v31 = "[VCCaptionsManager registerBlocksForService]_block_invoke";
      v32 = 1024;
      v33 = 401;
      v34 = 2048;
      v35 = v8;
      v36 = 2048;
      v37 = ID;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add a new streamTokenEntry for translatorIdentifier=%p, streamToken=%lu", buf, 0x30u);
    }
  }

  v16 = [*(a1 + 32) addCaptionsSourceForTranslatorIdentifier:v8 streamToken:ID direction:objc_msgSend(v7 reportingSamplingUUID:{"intValue"), v10}];
  if (v16)
  {
    v26 = v16;
    v18 = 0;
    v12 = 0;
    goto LABEL_31;
  }

  v17 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", ID)}];
  v12 = v17;
  if (!v17)
  {
    v18 = 0;
    v26 = -12;
LABEL_31:
    if (a3)
    {
      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCaptionsManager" code:v26 userInfo:0];
      v20 = 0;
      v6 = 0;
      *a3 = v27;
    }

    else
    {
      v20 = 0;
      v6 = 0;
    }

    goto LABEL_16;
  }

  [v17 setTranslatorIdentifier:v8];
LABEL_12:
  v18 = [v12 newContext];
  if (!v18)
  {
    v26 = -3;
LABEL_26:
    if (!v11 && [v12 streamToken])
    {
      [*(a1 + 32) dispatchedUnregisterCaptionsSourceWithStreamToken:{objc_msgSend(v12, "streamToken")}];
    }

    goto LABEL_31;
  }

  if (![*(a1 + 32) captionsSourceFromClientContext:v18])
  {
    v26 = -2;
    goto LABEL_26;
  }

  v19 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v18, @"CONTEXT", 0}];
  if (!v19)
  {
    v26 = -10;
    goto LABEL_26;
  }

  v6 = v19;
  [*(*(a1 + 32) + 16) addObject:v8];
  v20 = 1;
LABEL_16:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v21 = VRTraceErrorLogLevelToCSTR();
    v22 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v12 streamToken];
      v24 = [v12 translatorIdentifier];
      *buf = 136316674;
      v29 = v21;
      v30 = 2080;
      v31 = "[VCCaptionsManager registerBlocksForService]_block_invoke";
      v32 = 1024;
      v33 = 432;
      v34 = 2048;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      v38 = 2048;
      v39 = v18;
      v40 = 1024;
      v41 = v20;
      _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCCaptionsManager: New captions (streamToken=%ld, translatorIdentifier=%@) client. Context=%p, SUCCESS=%{BOOL}d", buf, 0x40u);
    }
  }

  return v6;
}

uint64_t __45__VCCaptionsManager_registerBlocksForService__block_invoke_133(uint64_t a1, void *a2, void *a3)
{
  if (![a2 objectForKey:@"CLIENTDIED"])
  {
    v7 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v8 = [*(a1 + 32) captionsSourceFromClientContext:v7];
    if (v8)
    {
      v9 = v8;
      v10 = +[VCCaptionsConfig deserializeConfiguration:](VCCaptionsConfig, "deserializeConfiguration:", [a2 objectForKeyedSubscript:@"vcCaptionsConfig"]);
      if (v10)
      {
        v11 = v10;
        [v9 updateCaptionsConfig:v10];
        [v7 setLocaleIdentifier:{objc_msgSend(objc_msgSend(v11, "locale"), "localeIdentifier")}];
        v12 = [objc_msgSend(*(a1 + 32) streamTokenEntryFromClientContext:{v7), "sourceLocaleHasBeenSet"}];
        v13 = *(a1 + 32);
        if (v12)
        {
          [v13 updateTranslationTranscriptionContextArray:v7];
        }

        else
        {
          [v13 updateSourceLocale:objc_msgSend(v11 clientContext:{"locale"), v7}];
        }

        return 0;
      }

      if (!a3)
      {
        return 0;
      }

      v14 = MEMORY[0x1E696ABC0];
      v15 = -11;
    }

    else
    {
      if (!a3)
      {
        return 0;
      }

      v14 = MEMORY[0x1E696ABC0];
      v15 = -2;
    }

    *a3 = [v14 errorWithDomain:@"VCCaptionsManager" code:v15 userInfo:0];
  }

  return 0;
}

uint64_t __45__VCCaptionsManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  if ([a2 objectForKey:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [*(a1 + 32) captionsSourceFromClientContext:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CONTEXT"}];
  if (!v7)
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCaptionsManager" code:-2 userInfo:0];
    }

    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v7, "captionsEnabled")}];
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"vcCaptionsEnabled", 0}];

  return v9;
}

uint64_t __45__VCCaptionsManager_registerBlocksForService__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  if ([a2 objectForKey:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [*(a1 + 32) captionsSourceFromClientContext:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CONTEXT"}];
  if (!v7)
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCaptionsManager" code:-2 userInfo:0];
    }

    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v7, "captionsSupported")}];
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"vcCaptionsSupported", 0}];

  return v9;
}

uint64_t __45__VCCaptionsManager_registerBlocksForService__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  if (![a2 objectForKey:@"CLIENTDIED"])
  {
    v6 = [*(a1 + 32) captionsSourceFromClientContext:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CONTEXT"}];
    if (v6)
    {
      v7 = v6;
      v8 = [*(a1 + 32) streamTokenEntryFromClientContext:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CONTEXT"}];
      v9 = [a2 objectForKey:@"vcCaptionsEnable"];
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = v9;
      if (![v9 BOOLValue])
      {
LABEL_7:
        [v7 enableCaptions:{objc_msgSend(v10, "BOOLValue")}];
        return 0;
      }

      if ([v8 sourceLocaleHasBeenSet])
      {
        [v8 setSourceLocaleEligibleToBeModified:0];
        goto LABEL_7;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3 && (v13 = VRTraceErrorLogLevelToCSTR(), os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
      {
        __45__VCCaptionsManager_registerBlocksForService__block_invoke_4_cold_1(v13);
        if (!a3)
        {
          return 0;
        }
      }

      else
      {
LABEL_12:
        if (!a3)
        {
          return 0;
        }
      }

      v11 = MEMORY[0x1E696ABC0];
      v12 = -6;
    }

    else
    {
      if (!a3)
      {
        return 0;
      }

      v11 = MEMORY[0x1E696ABC0];
      v12 = -2;
    }

    *a3 = [v11 errorWithDomain:@"VCCaptionsManager" code:v12 userInfo:0];
  }

  return 0;
}

uint64_t __45__VCCaptionsManager_registerBlocksForService__block_invoke_151(uint64_t a1, void *a2, void *a3)
{
  if (![a2 objectForKey:@"CLIENTDIED"])
  {
    if ([*(a1 + 32) captionsSourceFromClientContext:{objc_msgSend(a2, "objectForKeyedSubscript:", @"CONTEXT"}])
    {
      v7 = [a2 objectForKeyedSubscript:@"CONTEXT"];
      v8 = [*(a1 + 32) deserializeLocale:a2 withError:a3 serializedLocale:{objc_msgSend(a2, "objectForKey:", @"vcCaptionsSourceLocale"}];
      if (v8)
      {
        [*(a1 + 32) updateSourceLocale:v8 clientContext:v7];
      }
    }

    else if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCaptionsManager" code:-2 userInfo:0];
    }
  }

  return 0;
}

- (void)deregisterBlocksForService
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsClientInitialize"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsClientUninitialize"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsSetCaptionsConfiguration"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsGetCaptionsEnabled"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsGetCaptionsSupported"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsSetCaptionsEnabled"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcCaptionsSetCaptionsSourceLocale"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcCaptionsClientInitializeTranslator"];
}

- (id)streamTokenEntryForTranslatorIdentifier:(id)identifier
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  streamTokenList = self->_streamTokenList;
  result = [(NSMutableDictionary *)streamTokenList countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(streamTokenList);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if ([identifier isEqual:{objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_streamTokenList, "objectForKeyedSubscript:", v10), "translatorIdentifier")}])
        {
          return [(NSMutableDictionary *)self->_streamTokenList objectForKeyedSubscript:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [(NSMutableDictionary *)streamTokenList countByEnumeratingWithState:&v12 objects:v11 count:16];
      v7 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (int64_t)addCaptionsSourceForTranslatorIdentifier:(id)identifier streamToken:(int64_t)token direction:(int)direction reportingSamplingUUID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  *&v14 = 0xAAAAAAAAAAAAAA01;
  *(&v15 + 1) = 0xAAAAAAAAAAAA0203;
  BYTE1(v14) = direction == 1;
  *(&v14 + 1) = @"calltranslationcaptions";
  *&v15 = 0;
  *&v16 = token;
  *(&v16 + 1) = identifier;
  *&v17 = d;
  *(&v17 + 1) = direction | 0xAAAAAAAA00000000;
  v9 = [[VCAudioMachineLearningCoordinator alloc] initWithConfiguration:&v14 delegate:0];
  if (v9)
  {
    v10 = v9;
    [(VCCaptionsManager *)self dispatchedRegisterCaptionsSource:v9 streamToken:token, v14, v15, v16, v17];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = v11;
        v19 = 2080;
        v20 = "[VCCaptionsManager addCaptionsSourceForTranslatorIdentifier:streamToken:direction:reportingSamplingUUID:]";
        v21 = 1024;
        v22 = 649;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        tokenCopy = token;
        v27 = 2048;
        identifierCopy = identifier;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Register captionsSource=%p for streamToken=%ld, translatorIdentifier=%p", buf, 0x3Au);
      }
    }

    return 0;
  }

  else
  {
    [VCCaptionsManager addCaptionsSourceForTranslatorIdentifier:buf streamToken:? direction:? reportingSamplingUUID:?];
    return *buf;
  }
}

- (void)updateTranslationTranscriptionContextArray:(id)array
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = [(VCCaptionsManager *)self streamTokenEntryFromClientContext:?];
  if (v5)
  {
    v6 = v5;
    if ([v5 sourceLocaleIdentifier])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v49 = v7;
          v50 = 2080;
          v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
          v52 = 1024;
          v53 = 661;
          v54 = 2112;
          clientContextList = [v6 clientContextList];
          v56 = 2048;
          selfCopy = [objc_msgSend(v6 "clientContextList")];
          _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d clientContextList=%@ (count=%lu)", buf, 0x30u);
        }
      }

      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [v9 addObject:{objc_msgSend(v6, "sourceLocaleIdentifier")}];
      if ([array localeIdentifier])
      {
        [v9 addObject:{objc_msgSend(array, "localeIdentifier")}];
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = [v6 clientContextList];
      v10 = [obj countByEnumeratingWithState:&v63 objects:v62 count:16];
      if (v10)
      {
        v12 = v10;
        v13 = *v64;
        *&v11 = 136316162;
        v46 = v11;
        do
        {
          v14 = 0;
          do
          {
            if (*v64 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v63 + 1) + 8 * v14);
            localeIdentifier = [(VCCaptionsManager *)v15 localeIdentifier];
            if (localeIdentifier)
            {
              v17 = localeIdentifier;
              if ([v9 count] <= 2)
              {
                [v9 addObject:v17];
              }

              if (([v9 containsObject:v17] & 1) == 0)
              {
                if (VRTraceGetErrorLogLevelForModule() >= 3)
                {
                  v28 = VRTraceErrorLogLevelToCSTR();
                  v29 = *MEMORY[0x1E6986650];
                  if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                  {
                    *buf = v46;
                    v49 = v28;
                    v50 = 2080;
                    v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
                    v52 = 1024;
                    v53 = 679;
                    v54 = 2112;
                    clientContextList = v15;
                    v56 = 2112;
                    selfCopy = v17;
                    _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d Not eligible for translation or transcription result context=%@, localeIdentifier=%@", buf, 0x30u);
                  }
                }

                [(NSMutableSet *)self->_transcriptionContexts removeObject:v15];
LABEL_32:
                translationContexts = self->_translationContexts;
LABEL_33:
                [(NSMutableSet *)translationContexts removeObject:v15];
                goto LABEL_34;
              }

              if (-[VCCaptionsManager isEqual:](v17, "isEqual:", [v6 sourceLocaleIdentifier]))
              {
                v18 = [(NSMutableSet *)self->_transcriptionContexts containsObject:v15];
                ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
                if (v18)
                {
                  if (ErrorLogLevelForModule >= 7)
                  {
                    v20 = VRTraceErrorLogLevelToCSTR();
                    v21 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v49 = v20;
                      v50 = 2080;
                      v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
                      v52 = 1024;
                      v53 = 687;
                      v54 = 2112;
                      clientContextList = v15;
                      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Already in transcription context list context=%@", buf, 0x26u);
                    }
                  }
                }

                else
                {
                  if (ErrorLogLevelForModule >= 7)
                  {
                    v37 = VRTraceErrorLogLevelToCSTR();
                    v38 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v49 = v37;
                      v50 = 2080;
                      v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
                      v52 = 1024;
                      v53 = 689;
                      v54 = 2112;
                      clientContextList = v15;
                      _os_log_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add to transcription context list context=%@", buf, 0x26u);
                    }
                  }

                  [(NSMutableSet *)self->_transcriptionContexts addObject:v15];
                }

                if ([(NSMutableSet *)self->_translationContexts containsObject:v15])
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 5)
                  {
                    v39 = VRTraceErrorLogLevelToCSTR();
                    v40 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v49 = v39;
                      v50 = 2080;
                      v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
                      v52 = 1024;
                      v53 = 693;
                      v54 = 2112;
                      clientContextList = v15;
                      _os_log_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove transcription context=%@ from translation context list", buf, 0x26u);
                    }
                  }

                  goto LABEL_32;
                }
              }

              else
              {
                v31 = [(NSMutableSet *)self->_translationContexts containsObject:v15];
                v32 = VRTraceGetErrorLogLevelForModule();
                if (v31)
                {
                  if (v32 >= 7)
                  {
                    v33 = VRTraceErrorLogLevelToCSTR();
                    v34 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v49 = v33;
                      v50 = 2080;
                      v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
                      v52 = 1024;
                      v53 = 699;
                      v54 = 2112;
                      clientContextList = v15;
                      _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Already in translation context list context=%@", buf, 0x26u);
                    }
                  }
                }

                else
                {
                  if (v32 >= 7)
                  {
                    v41 = VRTraceErrorLogLevelToCSTR();
                    v42 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v49 = v41;
                      v50 = 2080;
                      v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
                      v52 = 1024;
                      v53 = 701;
                      v54 = 2112;
                      clientContextList = v15;
                      _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Add to translation context list context=%@", buf, 0x26u);
                    }
                  }

                  [(NSMutableSet *)self->_translationContexts addObject:v15];
                }

                if ([(NSMutableSet *)self->_transcriptionContexts containsObject:v15])
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 5)
                  {
                    v43 = VRTraceErrorLogLevelToCSTR();
                    v44 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315906;
                      v49 = v43;
                      v50 = 2080;
                      v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
                      v52 = 1024;
                      v53 = 705;
                      v54 = 2112;
                      clientContextList = v15;
                      _os_log_impl(&dword_1DB56E000, v44, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove translation context=%@ from transcription context list", buf, 0x26u);
                    }
                  }

                  translationContexts = self->_transcriptionContexts;
                  goto LABEL_33;
                }
              }
            }

            else if (objc_opt_class() == self)
            {
              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v35 = VRTraceErrorLogLevelToCSTR();
                v36 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v46;
                  v49 = v35;
                  v50 = 2080;
                  v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
                  v52 = 1024;
                  v53 = 671;
                  v54 = 2112;
                  clientContextList = v6;
                  v56 = 2112;
                  selfCopy = v15;
                  v25 = v36;
                  v26 = " [%s] %s:%d Config locale not set for streamClientList=%@, context=%@";
                  v27 = 48;
                  goto LABEL_43;
                }
              }
            }

            else
            {
              v22 = &stru_1F570E008;
              if (objc_opt_respondsToSelector())
              {
                v22 = [(VCCaptionsManager *)self performSelector:sel_logPrefix];
              }

              if (VRTraceGetErrorLogLevelForModule() >= 5)
              {
                v23 = VRTraceErrorLogLevelToCSTR();
                v24 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136316674;
                  v49 = v23;
                  v50 = 2080;
                  v51 = "[VCCaptionsManager updateTranslationTranscriptionContextArray:]";
                  v52 = 1024;
                  v53 = 671;
                  v54 = 2112;
                  clientContextList = v22;
                  v56 = 2048;
                  selfCopy = self;
                  v58 = 2112;
                  v59 = v6;
                  v60 = 2112;
                  v61 = v15;
                  v25 = v24;
                  v26 = " [%s] %s:%d %@(%p) Config locale not set for streamClientList=%@, context=%@";
                  v27 = 68;
LABEL_43:
                  _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
                }
              }
            }

LABEL_34:
            ++v14;
          }

          while (v12 != v14);
          v45 = [obj countByEnumeratingWithState:&v63 objects:v62 count:16];
          v12 = v45;
        }

        while (v45);
      }
    }

    else
    {
      [VCCaptionsManager updateTranslationTranscriptionContextArray:?];
    }
  }

  else
  {
    [VCCaptionsManager updateTranslationTranscriptionContextArray:?];
  }
}

- (void)notifyClientsWithStreamToken:(int64_t)token service:(char *)service arguments:(id)arguments isTranslated:(BOOL)translated
{
  v9 = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__VCCaptionsManager_notifyClientsWithStreamToken_service_arguments_isTranslated___block_invoke;
  v7[3] = &unk_1E85F5150;
  translatedCopy = translated;
  v7[4] = self;
  v7[5] = arguments;
  v7[6] = token;
  v7[7] = service;
  dispatch_async(xpcCommandQueue, v7);
}

uint64_t __81__VCCaptionsManager_notifyClientsWithStreamToken_service_arguments_isTranslated___block_invoke(uint64_t a1)
{
  v1 = a1;
  v57 = *MEMORY[0x1E69E9840];
  result = [*(*(a1 + 32) + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(a1 + 48))}];
  if (result)
  {
    v3 = result;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = [v3 sourceLocaleIdentifier];
        v7 = *(v1 + 64);
        v8 = *(v1 + 40);
        *buf = 136316674;
        v47 = v4;
        v48 = 2080;
        v49 = "[VCCaptionsManager notifyClientsWithStreamToken:service:arguments:isTranslated:]_block_invoke";
        v50 = 1024;
        v51 = 725;
        v52 = 2112;
        v53 = v3;
        v54 = 2112;
        *v55 = v6;
        *&v55[8] = 1024;
        *v56 = v7;
        *&v56[4] = 2112;
        *&v56[6] = v8;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamClientList=%@, sourceLocale=%@, isTranslated=%d, arguments=%@", buf, 0x40u);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() > 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v3 clientContextList];
          v13 = [objc_msgSend(v3 "clientContextList")];
          *buf = 136316162;
          v47 = v9;
          v48 = 2080;
          v49 = "[VCCaptionsManager notifyClientsWithStreamToken:service:arguments:isTranslated:]_block_invoke";
          v50 = 1024;
          v51 = 726;
          v52 = 2112;
          v53 = v12;
          v54 = 2048;
          *v55 = v13;
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d clientContextList=%@ (count=%lu)", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __81__VCCaptionsManager_notifyClientsWithStreamToken_service_arguments_isTranslated___block_invoke_cold_1(v9, v3, v10);
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v14 = [v3 clientContextList];
    result = [v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
    if (result)
    {
      v16 = result;
      v17 = "";
      v18 = *v43;
      *&v15 = 136315906;
      v39 = v15;
      v40 = v1;
      do
      {
        v19 = 0;
        do
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v42 + 1) + 8 * v19);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v21 = VRTraceErrorLogLevelToCSTR();
            v22 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v23 = v16;
              v24 = v17;
              v25 = v14;
              v26 = [v20 streamToken];
              v27 = v18;
              v28 = [v20 uniqueIdentifier];
              v29 = [v20 localeIdentifier];
              *buf = 136316674;
              v47 = v21;
              v48 = 2080;
              v49 = "[VCCaptionsManager notifyClientsWithStreamToken:service:arguments:isTranslated:]_block_invoke";
              v50 = 1024;
              v51 = 728;
              v52 = 2112;
              v53 = v20;
              v54 = 1024;
              *v55 = v26;
              v14 = v25;
              v17 = v24;
              v16 = v23;
              v1 = v40;
              *&v55[4] = 1024;
              *&v55[6] = v28;
              v18 = v27;
              *v56 = 2112;
              *&v56[2] = v29;
              _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d context=%@, streamToken=%u, uniqueIdentifier=%u, locale=%@", buf, 0x3Cu);
            }
          }

          if (*(v1 + 64) != 1)
          {
            goto LABEL_41;
          }

          if ([*(*(v1 + 32) + 24) containsObject:v20])
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              v30 = VRTraceErrorLogLevelToCSTR();
              v31 = *MEMORY[0x1E6986650];
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v47 = v30;
                v48 = 2080;
                v49 = "[VCCaptionsManager notifyClientsWithStreamToken:service:arguments:isTranslated:]_block_invoke";
                v50 = 1024;
                v51 = 730;
                v32 = v31;
                v33 = " [%s] %s:%d Translation update";
                goto LABEL_29;
              }
            }

            goto LABEL_30;
          }

          if ((*(v1 + 64) & 1) == 0)
          {
LABEL_41:
            if ([*(*(v1 + 32) + 32) containsObject:{v20, v39}])
            {
              if (VRTraceGetErrorLogLevelForModule() >= 7)
              {
                v34 = VRTraceErrorLogLevelToCSTR();
                v35 = *MEMORY[0x1E6986650];
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v47 = v34;
                  v48 = 2080;
                  v49 = "[VCCaptionsManager notifyClientsWithStreamToken:service:arguments:isTranslated:]_block_invoke";
                  v50 = 1024;
                  v51 = 734;
                  v32 = v35;
                  v33 = " [%s] %s:%d Transcription update";
LABEL_29:
                  _os_log_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0x1Cu);
                }
              }

LABEL_30:
              [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
              goto LABEL_37;
            }
          }

          if (VRTraceGetErrorLogLevelForModule() >= 8)
          {
            v36 = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x1E6986650];
            v38 = *MEMORY[0x1E6986650];
            if (*MEMORY[0x1E6986640] == 1)
            {
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v39;
                v47 = v36;
                v48 = 2080;
                v49 = "[VCCaptionsManager notifyClientsWithStreamToken:service:arguments:isTranslated:]_block_invoke";
                v50 = 1024;
                v51 = 738;
                v52 = 2112;
                v53 = v20;
                _os_log_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Context=%@ is not part of translation or transcription contexts", buf, 0x26u);
              }
            }

            else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              *buf = v39;
              v47 = v36;
              v48 = 2080;
              v49 = "[VCCaptionsManager notifyClientsWithStreamToken:service:arguments:isTranslated:]_block_invoke";
              v50 = 1024;
              v51 = 738;
              v52 = 2112;
              v53 = v20;
              _os_log_debug_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Context=%@ is not part of translation or transcription contexts", buf, 0x26u);
            }
          }

LABEL_37:
          ++v19;
        }

        while (v16 != v19);
        result = [v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
        v16 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)notifyClientsWithStreamToken:(int64_t)token service:(char *)service arguments:(id)arguments
{
  block[8] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__VCCaptionsManager_notifyClientsWithStreamToken_service_arguments___block_invoke;
  block[3] = &unk_1E85F5128;
  block[6] = token;
  block[7] = service;
  block[4] = self;
  block[5] = arguments;
  dispatch_async(xpcCommandQueue, block);
}

void *__68__VCCaptionsManager_notifyClientsWithStreamToken_service_arguments___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = [*(a1[4] + 8) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a1[6])}];
  if (result)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [result clientContextList];
    result = [v3 countByEnumeratingWithState:&v8 objects:v7 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        result = [v3 countByEnumeratingWithState:&v8 objects:v7 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)streamToken:(int64_t)token didConfigureCaptionsWithError:(id)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v7 = @"vcCaptionsError";
    v8[0] = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:error requiringSecureCoding:1 error:0];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  [(VCCaptionsManager *)self notifyClientsWithStreamToken:token service:"vcCaptionsDidConfigureCaptions" arguments:v6];
}

- (void)streamToken:(int64_t)token didEnableCaptions:(BOOL)captions error:(id)error
{
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:captions];
  if (error)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:error requiringSecureCoding:1 error:0];
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v13, @"vcCaptionsEnabled", v8, @"vcCaptionsError", 0}];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v13, @"vcCaptionsEnabled", 0, v11, v12}];
  }

  v10 = v9;
  [(VCCaptionsManager *)self notifyClientsWithStreamToken:token service:"vcCaptionsDidEnableCaptions" arguments:v9];
}

- (void)streamToken:(int64_t)token didDisableCaptions:(BOOL)captions error:(id)error
{
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:captions];
  if (error)
  {
    v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:error requiringSecureCoding:1 error:0];
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v13, @"vcCaptionsDisabled", v8, @"vcCaptionsError", 0}];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v13, @"vcCaptionsDisabled", 0, v11, v12}];
  }

  v10 = v9;
  [(VCCaptionsManager *)self notifyClientsWithStreamToken:token service:"vcCaptionsDidDisableCaptions" arguments:v9];
}

- (void)streamToken:(int64_t)token didStartCaptioningWithReason:(unsigned __int8)reason
{
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedChar:reason];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcCaptionsStartReason", 0}];
  [(VCCaptionsManager *)self notifyClientsWithStreamToken:token service:"vcCaptionsDidCaptionsStart" arguments:v6];
}

- (void)streamToken:(int64_t)token didStopCaptioningWithReason:(unsigned __int8)reason
{
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedChar:reason];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcCaptionsStopReason", 0}];
  [(VCCaptionsManager *)self notifyClientsWithStreamToken:token service:"vcCaptionsDidCaptionsEnd" arguments:v6];
}

- (void)streamToken:(int64_t)token didUpdateCaptions:(id)captions
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:captions requiringSecureCoding:1 error:0];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcCaptionsTranscription", 0}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v12 = v9;
      v13 = 2080;
      v14 = "[VCCaptionsManager streamToken:didUpdateCaptions:]";
      v15 = 1024;
      v16 = 816;
      v17 = 1024;
      tokenCopy = token;
      v19 = 2112;
      captionsCopy = captions;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d streamToken=%d, didUpdateCaptions=%@", buf, 0x2Cu);
    }
  }

  -[VCCaptionsManager notifyClientsWithStreamToken:service:arguments:isTranslated:](self, "notifyClientsWithStreamToken:service:arguments:isTranslated:", token, "vcCaptionsDidUpdateCaptions", v8, [captions isTranslated]);
}

- (void)streamToken:(int64_t)token didDetectGibberish:(BOOL)gibberish
{
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:gibberish];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"vcCaptionsGibberish", 0}];
  [(VCCaptionsManager *)self notifyClientsWithStreamToken:token service:"vcCaptionsDidDetectGibberish" arguments:v6];
}

- (void)streamToken:(int64_t)token didProduceLanguageHypothesis:(id)hypothesis
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v6 = [VCCaptionsLanguageDetectorResults archivedTranscription:hypothesis error:v9];
  if (v9[0])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCaptionsManager streamToken:v7 didProduceLanguageHypothesis:v9];
      }
    }
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"vcCaptionsTranscription", 0}];
    [(VCCaptionsManager *)self notifyClientsWithStreamToken:token service:"vcCaptionsDidProduceLanguageHypothesis" arguments:v8];
  }
}

- (void)streamToken:(int64_t)token didStopLanguageDetectorWithError:(id)error
{
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:error requiringSecureCoding:1 error:0];
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v6, @"vcCaptionsError", 0}];
  [(VCCaptionsManager *)self notifyClientsWithStreamToken:token service:"vcCaptionsDidStopLanguageDetectorWithError" arguments:v7];
}

- (void)streamToken:(int64_t)token didChangeSourceLocale:(id)locale
{
  v6 = [AVCCaptionsConfig serializeLocale:locale];
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v6, @"vcCaptionsSourceLocale", 0}];
  [(VCCaptionsManager *)self notifyClientsWithStreamToken:token service:"vcCaptionsDidChangeSourceLocale" arguments:v7];
}

uint64_t __45__VCCaptionsManager_registerBlocksForService__block_invoke_130(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKey:@"CLIENTDIED"])
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E695DF20]);
    v6 = [v7 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v8 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v9 = [VCCaptionsManagerStreamTokenClientList isValidContext:v8];
  if (v9)
  {
    v10 = [VCCaptionsManagerStreamTokenClientList streamTokenFromClientContext:v8];
    v11 = [*(*(a1 + 32) + 8) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v10)}];
    [v11 removeContext:v8];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v13 = MEMORY[0x1E6986640];
    if (ErrorLogLevelForModule >= 8)
    {
      VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      v15 = *MEMORY[0x1E6986650];
      if (*v13 == 1)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_17_2();
          OUTLINED_FUNCTION_6_11();
          _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCCaptionsManager: Unregister; remove Context=%p for streamToken=%lu, streamTokenEntry=%@", buf, 0x3Au);
        }
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_17_2();
        OUTLINED_FUNCTION_6_11();
        _os_log_debug_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCCaptionsManager: Unregister; remove Context=%p for streamToken=%lu, streamTokenEntry=%@", buf, 0x3Au);
      }
    }

    if (![objc_msgSend(v11 "clientContextList")])
    {
      [v11 setSourceLocaleEligibleToBeModified:1];
      [v11 setSourceLocaleHasBeenSet:0];
      if ([v11 translatorIdentifier])
      {
        [*(*(a1 + 32) + 16) removeObject:{objc_msgSend(v11, "translatorIdentifier")}];
        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          v17 = *MEMORY[0x1E6986650];
          if (*v13 == 1)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              [v11 translatorIdentifier];
              OUTLINED_FUNCTION_16_5();
              OUTLINED_FUNCTION_7_5();
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Remove translatorIdentifier=%@ from _translatorIdentifiers=%@", buf, 0x30u);
            }
          }

          else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [v11 translatorIdentifier];
            OUTLINED_FUNCTION_16_5();
            OUTLINED_FUNCTION_7_5();
            _os_log_debug_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Remove translatorIdentifier=%@ from _translatorIdentifiers=%@", buf, 0x30u);
          }
        }

        [*(a1 + 32) dispatchedUnregisterCaptionsSourceWithStreamToken:{objc_msgSend(v11, "streamToken")}];
      }
    }

    v18 = 0;
  }

  else
  {
    v18 = -2;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v24 = v19;
      v25 = 2080;
      v26 = "[VCCaptionsManager registerBlocksForService]_block_invoke";
      v27 = 1024;
      v28 = 463;
      v29 = 2048;
      v30 = v8;
      _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCCaptionsManager: Unregister captions client. Context=%p", buf, 0x26u);
    }
  }

  if (a3)
  {
    v21 = v9;
  }

  else
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCCaptionsManager" code:v18 userInfo:0];
  }

  return v6;
}

- (void)updateSourceLocale:(uint64_t)a1 clientContext:.cold.1(uint64_t a1)
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

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)updateSourceLocale:(void *)a1 clientContext:.cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_5_7();
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
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_9_6();
      goto LABEL_11;
    }
  }
}

- (void)updateSourceLocale:(uint64_t)a1 clientContext:.cold.3(uint64_t a1)
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

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

- (void)updateSourceLocale:(uint64_t)a1 clientContext:.cold.4(uint64_t a1)
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

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v6 = 48;
      goto LABEL_11;
    }
  }
}

void __45__VCCaptionsManager_registerBlocksForService__block_invoke_4_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 561;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d sourceLocale is not set, cannot enable captions!", &v2, 0x1Cu);
}

- (void)addCaptionsSourceForTranslatorIdentifier:(void *)a1 streamToken:direction:reportingSamplingUUID:.cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v4 = 645;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to create audio machine learning coordinator", v3, 0x1Cu);
    }
  }

  *a1 = -13;
}

- (void)updateTranslationTranscriptionContextArray:(void *)a1 .cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_5_7();
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
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_9_6();
      goto LABEL_11;
    }
  }
}

- (void)updateTranslationTranscriptionContextArray:(void *)a1 .cold.2(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_5_7();
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
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_5();
      OUTLINED_FUNCTION_9_6();
      goto LABEL_11;
    }
  }
}

void __81__VCCaptionsManager_notifyClientsWithStreamToken_service_arguments_isTranslated___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 clientContextList];
  [objc_msgSend(a2 "clientContextList")];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_29();
  v8 = v5;
  v9 = 2048;
  v10 = v6;
  _os_log_debug_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_DEBUG, " [%s] %s:%d clientContextList=%@ (count=%lu)", v7, 0x30u);
}

- (void)streamToken:(uint64_t)a1 didProduceLanguageHypothesis:(id *)a2 .cold.1(uint64_t a1, id *a2)
{
  [*a2 debugDescription];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

@end