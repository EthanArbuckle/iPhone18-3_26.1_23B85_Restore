@interface VCAudioSmartRoutingManager
+ (id)sharedInstance;
+ (void)addClient:(id)client;
+ (void)removeClient:(id)client;
- (BOOL)applyAudioScoreForOptOutOfSmartRouting:(BOOL)routing error:(id *)error;
- (VCAudioSmartRoutingManager)init;
- (void)addClient:(id)client;
- (void)dealloc;
- (void)removeClient:(id)client;
- (void)updateOptOutOfSmartRouting;
@end

@implementation VCAudioSmartRoutingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[VCAudioSmartRoutingManager sharedInstance];
  }

  return sharedInstance__sharedSmartRoutingManager;
}

void __44__VCAudioSmartRoutingManager_sharedInstance__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  sharedInstance__sharedSmartRoutingManager = objc_alloc_init(VCAudioSmartRoutingManager);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 136315906;
      v3 = v0;
      v4 = 2080;
      v5 = "+[VCAudioSmartRoutingManager sharedInstance]_block_invoke";
      v6 = 1024;
      v7 = 32;
      v8 = 2048;
      v9 = sharedInstance__sharedSmartRoutingManager;
      _os_log_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d creating manager=%p", &v2, 0x26u);
    }
  }
}

- (VCAudioSmartRoutingManager)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCAudioSmartRoutingManager;
  v2 = [(VCObject *)&v4 init];
  if (v2)
  {
    v2->_optOutOfSmartRouting = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioSmartRoutingManager;
  [(VCObject *)&v3 dealloc];
}

+ (void)addClient:(id)client
{
  v4 = +[VCAudioSmartRoutingManager sharedInstance];

  [(VCAudioSmartRoutingManager *)v4 addClient:client];
}

+ (void)removeClient:(id)client
{
  v4 = +[VCAudioSmartRoutingManager sharedInstance];

  [(VCAudioSmartRoutingManager *)v4 removeClient:client];
}

- (void)addClient:(id)client
{
  v22 = *MEMORY[0x1E69E9840];
  [(VCObject *)self lock];
  if (!client)
  {
    [VCAudioSmartRoutingManager addClient:?];
    goto LABEL_15;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(client, "hash")}];
  if ([(NSMutableDictionary *)self->_optOutOfSmartRouting objectForKeyedSubscript:v5])
  {
    [VCAudioSmartRoutingManager addClient:?];
    goto LABEL_15;
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_optOutOfSmartRouting, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(client, "optOutOfSmartRouting")}], v5);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    optOutOfSmartRouting = [client optOutOfSmartRouting];
    v10 = [(NSMutableDictionary *)self->_optOutOfSmartRouting count];
    *v18 = 136316674;
    *&v18[4] = v7;
    *&v18[12] = 2080;
    *&v18[14] = "[VCAudioSmartRoutingManager addClient:]";
    *&v18[22] = 1024;
    LODWORD(v19) = 63;
    WORD2(v19) = 2048;
    *(&v19 + 6) = client;
    HIWORD(v19) = 2112;
    selfCopy = v5;
    *v21 = 1024;
    *&v21[2] = optOutOfSmartRouting;
    *&v21[6] = 2048;
    *&v21[8] = v10;
    v11 = " [%s] %s:%d client=%p clientHash=%@ optOutOfSmartRouting=%d clients=%ld";
    v12 = v8;
    v13 = 64;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioSmartRoutingManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
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

    optOutOfSmartRouting2 = [client optOutOfSmartRouting];
    v17 = [(NSMutableDictionary *)self->_optOutOfSmartRouting count];
    *v18 = 136317186;
    *&v18[4] = v14;
    *&v18[12] = 2080;
    *&v18[14] = "[VCAudioSmartRoutingManager addClient:]";
    *&v18[22] = 1024;
    LODWORD(v19) = 63;
    WORD2(v19) = 2112;
    *(&v19 + 6) = v6;
    HIWORD(v19) = 2048;
    selfCopy = self;
    *v21 = 2048;
    *&v21[2] = client;
    *&v21[10] = 2112;
    *&v21[12] = v5;
    *&v21[20] = 1024;
    *&v21[22] = optOutOfSmartRouting2;
    *&v21[26] = 2048;
    *&v21[28] = v17;
    v11 = " [%s] %s:%d %@(%p) client=%p clientHash=%@ optOutOfSmartRouting=%d clients=%ld";
    v12 = v15;
    v13 = 84;
  }

  _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v18, v13);
LABEL_14:
  [(VCAudioSmartRoutingManager *)self updateOptOutOfSmartRouting:*v18];
LABEL_15:
  [(VCObject *)self unlock];
}

- (void)removeClient:(id)client
{
  v22 = *MEMORY[0x1E69E9840];
  [(VCObject *)self lock];
  if (!client)
  {
    [VCAudioSmartRoutingManager removeClient:?];
    goto LABEL_15;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(client, "hash")}];
  if (![(NSMutableDictionary *)self->_optOutOfSmartRouting objectForKeyedSubscript:v5])
  {
    [VCAudioSmartRoutingManager removeClient:?];
    goto LABEL_15;
  }

  [(NSMutableDictionary *)self->_optOutOfSmartRouting setObject:0 forKeyedSubscript:v5];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_14;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    optOutOfSmartRouting = [client optOutOfSmartRouting];
    v10 = [(NSMutableDictionary *)self->_optOutOfSmartRouting count];
    *v18 = 136316674;
    *&v18[4] = v7;
    *&v18[12] = 2080;
    *&v18[14] = "[VCAudioSmartRoutingManager removeClient:]";
    *&v18[22] = 1024;
    LODWORD(v19) = 75;
    WORD2(v19) = 2048;
    *(&v19 + 6) = client;
    HIWORD(v19) = 2112;
    selfCopy = v5;
    *v21 = 1024;
    *&v21[2] = optOutOfSmartRouting;
    *&v21[6] = 2048;
    *&v21[8] = v10;
    v11 = " [%s] %s:%d client=%p clientHash=%@ optOutOfSmartRouting=%d clients=%ld";
    v12 = v8;
    v13 = 64;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioSmartRoutingManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
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

    optOutOfSmartRouting2 = [client optOutOfSmartRouting];
    v17 = [(NSMutableDictionary *)self->_optOutOfSmartRouting count];
    *v18 = 136317186;
    *&v18[4] = v14;
    *&v18[12] = 2080;
    *&v18[14] = "[VCAudioSmartRoutingManager removeClient:]";
    *&v18[22] = 1024;
    LODWORD(v19) = 75;
    WORD2(v19) = 2112;
    *(&v19 + 6) = v6;
    HIWORD(v19) = 2048;
    selfCopy = self;
    *v21 = 2048;
    *&v21[2] = client;
    *&v21[10] = 2112;
    *&v21[12] = v5;
    *&v21[20] = 1024;
    *&v21[22] = optOutOfSmartRouting2;
    *&v21[26] = 2048;
    *&v21[28] = v17;
    v11 = " [%s] %s:%d %@(%p) client=%p clientHash=%@ optOutOfSmartRouting=%d clients=%ld";
    v12 = v15;
    v13 = 84;
  }

  _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, v18, v13);
LABEL_14:
  [(VCAudioSmartRoutingManager *)self updateOptOutOfSmartRouting:*v18];
LABEL_15:
  [(VCObject *)self unlock];
}

- (void)updateOptOutOfSmartRouting
{
  v43 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = 0;
  obj = self->_optOutOfSmartRouting;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v39 objects:v38 count:16];
  if (!v3)
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v5 = v3;
  v6 = *v40;
  v7 = &selRef_isLatencySensitiveModeEnabled;
  *&v4 = 136316162;
  v21 = v4;
  do
  {
    v8 = 0;
    v9 = v7[456];
    do
    {
      if (*v40 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v39 + 1) + 8 * v8);
      v11 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_optOutOfSmartRouting objectForKeyedSubscript:{v10, v21), "BOOLValue"}];
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v18 = VRTraceErrorLogLevelToCSTR();
          v19 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v25 = v18;
            v26 = 2080;
            v27 = "[VCAudioSmartRoutingManager updateOptOutOfSmartRouting]";
            v28 = 1024;
            v29 = 88;
            v30 = 2112;
            v31 = v10;
            v32 = 1024;
            LODWORD(selfCopy) = v11;
            v15 = v19;
            v16 = " [%s] %s:%d clientHash=%@ clientOptOut=%d";
            v17 = 44;
            goto LABEL_15;
          }
        }
      }

      else
      {
        v12 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v12 = [(VCAudioSmartRoutingManager *)self performSelector:v9];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316674;
            v25 = v13;
            v26 = 2080;
            v27 = "[VCAudioSmartRoutingManager updateOptOutOfSmartRouting]";
            v28 = 1024;
            v29 = 88;
            v30 = 2112;
            v31 = v12;
            v32 = 2048;
            selfCopy = self;
            v34 = 2112;
            v35 = v10;
            v36 = 1024;
            v37 = v11;
            v15 = v14;
            v16 = " [%s] %s:%d %@(%p) clientHash=%@ clientOptOut=%d";
            v17 = 64;
LABEL_15:
            _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, v17);
          }
        }
      }

      if (!v11)
      {
        goto LABEL_20;
      }

      ++v8;
    }

    while (v5 != v8);
    v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v39 objects:v38 count:16];
    v7 = &selRef_isLatencySensitiveModeEnabled;
  }

  while (v5);
  v20 = 1;
LABEL_21:
  [(VCAudioSmartRoutingManager *)self applyAudioScoreForOptOutOfSmartRouting:v20 error:&v23];
}

- (BOOL)applyAudioScoreForOptOutOfSmartRouting:(BOOL)routing error:(id *)error
{
  routingCopy = routing;
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v7;
        v17 = 2080;
        v18 = "[VCAudioSmartRoutingManager applyAudioScoreForOptOutOfSmartRouting:error:]";
        v19 = 1024;
        v20 = 101;
        v21 = 1024;
        LODWORD(v22) = routingCopy;
        v9 = " [%s] %s:%d optOutOfSmartRouting=%d";
        v10 = v8;
        v11 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(VCAudioSmartRoutingManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316418;
        v16 = v12;
        v17 = 2080;
        v18 = "[VCAudioSmartRoutingManager applyAudioScoreForOptOutOfSmartRouting:error:]";
        v19 = 1024;
        v20 = 101;
        v21 = 2112;
        v22 = v6;
        v23 = 2048;
        selfCopy = self;
        v25 = 1024;
        v26 = routingCopy;
        v9 = " [%s] %s:%d %@(%p) optOutOfSmartRouting=%d";
        v10 = v13;
        v11 = 54;
        goto LABEL_11;
      }
    }
  }

  return 1;
}

- (void)addClient:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        v5 = 28;
LABEL_10:
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, v5);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_5_1();
        v5 = 48;
        goto LABEL_10;
      }
    }
  }
}

- (void)addClient:(uint64_t)a1 .cold.2(uint64_t a1)
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
    OUTLINED_FUNCTION_4_0();
    v5 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, v5);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_5_1();
      v5 = 48;
      goto LABEL_11;
    }
  }
}

- (void)removeClient:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_4_0();
        v5 = 28;
LABEL_10:
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, v5);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_5_1();
        v5 = 48;
        goto LABEL_10;
      }
    }
  }
}

- (void)removeClient:(uint64_t)a1 .cold.2(uint64_t a1)
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
    OUTLINED_FUNCTION_4_0();
    v5 = 28;
LABEL_11:
    _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, v5);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_5_1();
      v5 = 48;
      goto LABEL_11;
    }
  }
}

@end