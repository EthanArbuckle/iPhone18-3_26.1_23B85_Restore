@interface VCVideoSourceTokenManager
+ (id)sharedManager;
- (VCVideoSourceTokenManager)init;
- (_VCVideoSourceToken)createtokenForDeviceName:(id)name sourceType:(int)type;
- (_VCVideoSourceToken)tokenForDeviceName:(id)name sourceType:(int)type;
- (id)deviceNameForToken:(_VCVideoSourceToken)token;
- (void)dealloc;
@end

@implementation VCVideoSourceTokenManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[VCVideoSourceTokenManager sharedManager];
  }

  return sharedManager__tokenManager;
}

void __42__VCVideoSourceTokenManager_sharedManager__block_invoke()
{
  if (!sharedManager__tokenManager)
  {
    sharedManager__tokenManager = objc_alloc_init(VCVideoSourceTokenManager);
  }
}

- (VCVideoSourceTokenManager)init
{
  v14 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCVideoSourceTokenManager;
  v2 = [(VCVideoSourceTokenManager *)&v7 init];
  if (v2)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v9 = v3;
        v10 = 2080;
        v11 = "[VCVideoSourceTokenManager init]";
        v12 = 1024;
        v13 = 48;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
      }
    }

    v2->_sourceNames = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_videoSourceTokens = objc_alloc_init(MEMORY[0x1E695DF90]);
    memset_pattern16(&v2->_identifierSeeds[1], &unk_1DBD486C0, 0x20uLL);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->_tokenManagerQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVideoSourceTokenManager.tokenManagerQueue", 0, CustomRootQueue);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  dispatch_release(self->_tokenManagerQueue);
  v3.receiver = self;
  v3.super_class = VCVideoSourceTokenManager;
  [(VCVideoSourceTokenManager *)&v3 dealloc];
}

- (_VCVideoSourceToken)createtokenForDeviceName:(id)name sourceType:(int)type
{
  *&v34[5] = *MEMORY[0x1E69E9840];
  if (!name || (type - 5) <= 0xFFFFFFFB)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v25 = 136316162;
        v26 = v13;
        v27 = 2080;
        v28 = "[VCVideoSourceTokenManager createtokenForDeviceName:sourceType:]";
        v29 = 1024;
        v30 = 75;
        v31 = 1024;
        typeCopy2 = type;
        v33 = 2112;
        *v34 = name;
        _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d kVCVideoSourceTokenInvalid. type=%d, deviceName=%@", &v25, 0x2Cu);
      }
    }

    goto LABEL_22;
  }

  if ([(NSMutableDictionary *)self->_videoSourceTokens objectForKeyedSubscript:name])
  {
    LODWORD(v7) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_videoSourceTokens objectForKeyedSubscript:{name), "unsignedIntegerValue"}];
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316162;
        v26 = v8;
        v27 = 2080;
        v28 = "[VCVideoSourceTokenManager createtokenForDeviceName:sourceType:]";
        v29 = 1024;
        v30 = 81;
        v31 = 1024;
        typeCopy2 = type;
        v33 = 2112;
        *v34 = name;
        v10 = " [%s] %s:%d sourceToken was created before. type=%d, deviceName=%@";
        v11 = v9;
        v12 = 44;
LABEL_7:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &v25, v12);
        return v7;
      }
    }

    return v7;
  }

  v15 = self->_identifierSeeds[type];
  v7 = v15 & 0xFFFFFF | (type << 24);
  if (v15 > 0xFFFFFE)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      v16 = 1;
    }

    else
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v16 = 1;
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316418;
        v26 = v17;
        v27 = 2080;
        v28 = "[VCVideoSourceTokenManager createtokenForDeviceName:sourceType:]";
        v29 = 1024;
        v30 = 92;
        v31 = 1024;
        typeCopy2 = 0xFFFFFF;
        v33 = 1024;
        v34[0] = type;
        LOWORD(v34[1]) = 1024;
        *(&v34[1] + 2) = 1;
        _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reached VCVIDEOSOURCETOKEN_MAX_IDENTIFIER=0x%x, reset _identifierSeeds %d to %d", &v25, 0x2Eu);
      }
    }
  }

  else
  {
    v16 = v15 + 1;
  }

  self->_identifierSeeds[type] = v16;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  if ([(NSMutableDictionary *)self->_sourceNames objectForKeyedSubscript:v19]|| [(NSMutableDictionary *)self->_videoSourceTokens objectForKeyedSubscript:name])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136316162;
        v26 = v20;
        v27 = 2080;
        v28 = "[VCVideoSourceTokenManager createtokenForDeviceName:sourceType:]";
        v29 = 1024;
        v30 = 99;
        v31 = 1024;
        typeCopy2 = v7;
        v33 = 2112;
        *v34 = name;
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sourceToken(0x%x) deviceName (%@) was in look up table _sourceNames. Either token is colliding ,or VCVideoSourceType is not correct", &v25, 0x2Cu);
      }
    }

LABEL_22:
    LODWORD(v7) = 0;
    return v7;
  }

  [(NSMutableDictionary *)self->_sourceNames setObject:name forKeyedSubscript:v19];
  [(NSMutableDictionary *)self->_videoSourceTokens setObject:v19 forKeyedSubscript:name];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136316418;
      v26 = v23;
      v27 = 2080;
      v28 = "[VCVideoSourceTokenManager createtokenForDeviceName:sourceType:]";
      v29 = 1024;
      v30 = 106;
      v31 = 1024;
      typeCopy2 = v7;
      v33 = 1024;
      v34[0] = type;
      LOWORD(v34[1]) = 2112;
      *(&v34[1] + 2) = name;
      v10 = " [%s] %s:%d Created sourceToken=0x%x, type=%d, deviceName=%@";
      v11 = v24;
      v12 = 50;
      goto LABEL_7;
    }
  }

  return v7;
}

- (_VCVideoSourceToken)tokenForDeviceName:(id)name sourceType:(int)type
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2410000000;
  v12 = &unk_1DBF04739;
  v13 = 0;
  tokenManagerQueue = self->_tokenManagerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__VCVideoSourceTokenManager_tokenForDeviceName_sourceType___block_invoke;
  v7[3] = &unk_1E85F6180;
  v7[4] = self;
  v7[5] = name;
  v7[6] = &v9;
  typeCopy = type;
  dispatch_sync(tokenManagerQueue, v7);
  v5.var0.var0 = *(v10 + 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __59__VCVideoSourceTokenManager_tokenForDeviceName_sourceType___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    result = [objc_msgSend(v3[2] objectForKeyedSubscript:{*(a1 + 40)), "unsignedIntegerValue"}];
  }

  else
  {
    result = [v3 createtokenForDeviceName:*(a1 + 40) sourceType:*(a1 + 56)];
  }

  *(*(*(a1 + 48) + 8) + 32) = result;
  return result;
}

- (id)deviceNameForToken:(_VCVideoSourceToken)token
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  tokenManagerQueue = self->_tokenManagerQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VCVideoSourceTokenManager_deviceNameForToken___block_invoke;
  v6[3] = &unk_1E85F61A8;
  var0 = token.var0.var0;
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(tokenManagerQueue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __48__VCVideoSourceTokenManager_deviceNameForToken___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", *(a1 + 48))}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

@end