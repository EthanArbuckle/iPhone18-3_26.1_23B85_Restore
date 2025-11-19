@interface VCAudioPowerSpectrumManager
+ (id)sharedInstance;
- (BOOL)dispatchedUnregisterListenerWithCellularTapType:(id)a3 powerSpectrumMeter:(id)a4 error:(id *)a5;
- (BOOL)registerListenerWithCellularTapType:(id)a3 clientProcessId:(id)a4 enableAsyncTapStart:(BOOL)a5 powerSpectrumMeter:(id)a6 powerSpectrumMeterKey:(id)a7 resultDictionary:(id *)a8 error:(id *)a9;
- (BOOL)registerListenerWithStreamToken:(id)a3 powerSpectrumKey:(id)a4 powerSpectrumMeter:(id)a5 error:(id *)a6;
- (VCAudioPowerSpectrumManager)init;
- (id)newPowerSpectrumMeterWithBinCount:(unsigned __int16)a3 refreshRate:(double)a4 delegate:(id)a5 error:(id *)a6;
- (id)powerSpectrumMetersForCellularTapType:(id)a3;
- (id)registerStreamTokenForCellularTapType:(id)a3 clientProcessId:(int)a4 enableAsyncTapStart:(BOOL)a5 error:(id *)a6;
- (id)serviceHandlerPowerMeterInitializeWithArguments:(id)a3 error:(id *)a4;
- (id)serviceHandlerPowerMeterTerminateWithArguments:(id)a3 error:(id *)a4;
- (id)serviceHandlerRegisterCellularTapWithArguments:(id)a3 error:(id *)a4;
- (id)serviceHandlerRegisterListenerWithArguments:(id)a3 error:(id *)a4;
- (id)serviceHandlerUnregisterCellularTagWithArguments:(id)a3 error:(id *)a4;
- (id)serviceHandlerUnregisterListenerWithArguments:(id)a3 error:(id *)a4;
- (void)audioPowerSpectrumMeter:(id)a3 didUpdateAudioPowerSpectrums:(id)a4;
- (void)dealloc;
- (void)deregisterBlocksForService;
- (void)dispatchedCleanUpCellularAudioTap;
- (void)dispatchedCleanUpPowerSpectrumSetForCellularTapType:(id)a3;
- (void)init;
- (void)registerAudioPowerMeterSource:(id)a3;
- (void)registerBlocksForService;
- (void)serverDidDie;
- (void)terminatePowerSpectrumMeter:(id)a3;
- (void)unregisterAudioPowerSpectrumSourceForStreamToken:(id)a3;
@end

@implementation VCAudioPowerSpectrumManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[VCAudioPowerSpectrumManager sharedInstance];
  }

  return sharedInstance__vcAudioPowerSpectrumManager;
}

void __45__VCAudioPowerSpectrumManager_sharedInstance__block_invoke()
{
  if (!sharedInstance__vcAudioPowerSpectrumManager)
  {
    sharedInstance__vcAudioPowerSpectrumManager = objc_alloc_init(VCAudioPowerSpectrumManager);
  }
}

- (VCAudioPowerSpectrumManager)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCAudioPowerSpectrumManager;
  v2 = [(VCAudioPowerSpectrumManager *)&v7 init];
  if (v2)
  {
    v2->_meters = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_sources = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_connection = objc_alloc_init(AVConferenceXPCClient);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->_xpcCommandQueue = dispatch_queue_create_with_target_V2("com.apple.AVConferenceVCAudioPowerSpectrumManager.XPCCommandQueue", 0, CustomRootQueue);
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_cellularTapTypeToStreamTokenMap = v4;
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v2->_powerSpectrumMetersForCellularTapType = v5;
      if (v5)
      {
        return v2;
      }

      [(VCAudioPowerSpectrumManager *)v2 init];
    }

    else
    {
      [(VCAudioPowerSpectrumManager *)v2 init];
    }

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  dispatch_release(self->_xpcCommandQueue);
  [(VCAudioPowerSpectrumManager *)self deregisterBlocksForService];

  v3.receiver = self;
  v3.super_class = VCAudioPowerSpectrumManager;
  [(VCAudioPowerSpectrumManager *)&v3 dealloc];
}

- (void)registerAudioPowerMeterSource:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__VCAudioPowerSpectrumManager_registerAudioPowerMeterSource___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(xpcCommandQueue, block);
}

void __61__VCAudioPowerSpectrumManager_registerAudioPowerMeterSource___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 40) streamToken];
        *v20 = 136315906;
        *&v20[4] = v3;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioPowerSpectrumManager registerAudioPowerMeterSource:]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 103;
        WORD2(v21) = 2048;
        *(&v21 + 6) = v5;
        v6 = " [%s] %s:%d source.streamToken=%ld";
        v7 = v4;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v20, v8);
      }
    }
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

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = [*(a1 + 40) streamToken];
        *v20 = 136316418;
        *&v20[4] = v9;
        *&v20[12] = 2080;
        *&v20[14] = "[VCAudioPowerSpectrumManager registerAudioPowerMeterSource:]_block_invoke";
        *&v20[22] = 1024;
        LODWORD(v21) = 103;
        WORD2(v21) = 2112;
        *(&v21 + 6) = v2;
        HIWORD(v21) = 2048;
        v22 = v11;
        LOWORD(v23) = 2048;
        *(&v23 + 2) = v12;
        v6 = " [%s] %s:%d %@(%p) source.streamToken=%ld";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }

  v13 = (a1 + 40);
  if ([*(*(a1 + 32) + 16) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(a1 + 40), "streamToken", *v20, *&v20[16], v21, v22, v23))}])
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __61__VCAudioPowerSpectrumManager_registerAudioPowerMeterSource___block_invoke_cold_1(v15, v13);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v18 = *(a1 + 32);
          v19 = [*(a1 + 40) streamToken];
          *v20 = 136316418;
          *&v20[4] = v16;
          *&v20[12] = 2080;
          *&v20[14] = "[VCAudioPowerSpectrumManager registerAudioPowerMeterSource:]_block_invoke";
          *&v20[22] = 1024;
          LODWORD(v21) = 108;
          WORD2(v21) = 2112;
          *(&v21 + 6) = v14;
          HIWORD(v21) = 2048;
          v22 = v18;
          LOWORD(v23) = 2048;
          *(&v23 + 2) = v19;
          _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) source[streamToken=%ld] already existed", v20, 0x3Au);
        }
      }
    }
  }

  else
  {
    [*(*(a1 + 32) + 16) setObject:*(a1 + 40) forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(*(a1 + 40), "streamToken"))}];
  }
}

- (void)unregisterAudioPowerSpectrumSourceForStreamToken:(id)a3
{
  block[6] = *MEMORY[0x1E69E9840];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__VCAudioPowerSpectrumManager_unregisterAudioPowerSpectrumSourceForStreamToken___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a3;
  dispatch_async(xpcCommandQueue, block);
}

- (id)newPowerSpectrumMeterWithBinCount:(unsigned __int16)a3 refreshRate:(double)a4 delegate:(id)a5 error:(id *)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = [[VCAudioPowerSpectrumMeter alloc] initWithBinCount:a3 refreshRate:a5 delegate:a4];
  v9 = objc_opt_class();
  if (!v8)
  {
    if (v9 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager newPowerSpectrumMeterWithBinCount:refreshRate:delegate:error:];
          if (!a6)
          {
            return v8;
          }

          goto LABEL_26;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v19 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v19 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *v22 = 136316162;
          *&v22[4] = v20;
          *&v22[12] = 2080;
          *&v22[14] = "[VCAudioPowerSpectrumManager newPowerSpectrumMeterWithBinCount:refreshRate:delegate:error:]";
          *&v22[22] = 1024;
          LODWORD(v23) = 122;
          WORD2(v23) = 2112;
          *(&v23 + 6) = v19;
          HIWORD(v23) = 2048;
          v24 = self;
          _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) VCPowerSpectrumMeter failed to allocate", v22, 0x30u);
          if (!a6)
          {
            return v8;
          }

          goto LABEL_26;
        }
      }
    }

    if (!a6)
    {
      return v8;
    }

LABEL_26:
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AVConference" code:-4 userInfo:0];
    return v8;
  }

  if (v9 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *v22 = 136315906;
    *&v22[4] = v11;
    *&v22[12] = 2080;
    *&v22[14] = "[VCAudioPowerSpectrumManager newPowerSpectrumMeterWithBinCount:refreshRate:delegate:error:]";
    *&v22[22] = 1024;
    LODWORD(v23) = 124;
    WORD2(v23) = 2048;
    *(&v23 + 6) = v8;
    v13 = " [%s] %s:%d VCPowerSpectrumMeter[%p] created";
    v14 = v12;
    v15 = 38;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_13;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *v22 = 136316418;
    *&v22[4] = v16;
    *&v22[12] = 2080;
    *&v22[14] = "[VCAudioPowerSpectrumManager newPowerSpectrumMeterWithBinCount:refreshRate:delegate:error:]";
    *&v22[22] = 1024;
    LODWORD(v23) = 124;
    WORD2(v23) = 2112;
    *(&v23 + 6) = v10;
    HIWORD(v23) = 2048;
    v24 = self;
    LOWORD(v25) = 2048;
    *(&v25 + 2) = v8;
    v13 = " [%s] %s:%d %@(%p) VCPowerSpectrumMeter[%p] created";
    v14 = v17;
    v15 = 58;
  }

  _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, v22, v15);
LABEL_13:
  [(NSMutableArray *)self->_meters addObject:v8, *v22, *&v22[16], v23, v24, v25];
  return v8;
}

- (void)terminatePowerSpectrumMeter:(id)a3
{
  [a3 unregisterAllStreams];
  meters = self->_meters;

  [(NSMutableArray *)meters removeObject:a3];
}

- (BOOL)registerListenerWithStreamToken:(id)a3 powerSpectrumKey:(id)a4 powerSpectrumMeter:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = [(NSMutableDictionary *)self->_sources objectForKeyedSubscript:?];
  if (!v11)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager registerListenerWithStreamToken:powerSpectrumKey:powerSpectrumMeter:error:];
          if (!a6)
          {
            return v11 != 0;
          }

          goto LABEL_25;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
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
          v24 = 136316418;
          v25 = v22;
          v26 = 2080;
          v27 = "[VCAudioPowerSpectrumManager registerListenerWithStreamToken:powerSpectrumKey:powerSpectrumMeter:error:]";
          v28 = 1024;
          v29 = 144;
          v30 = 2112;
          v31 = v21;
          v32 = 2048;
          v33 = self;
          v34 = 2112;
          v35 = a3;
          _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) audioSpectrumRegisterListener: error no powerSpectrumSource for streamToken=%@", &v24, 0x3Au);
          if (!a6)
          {
            return v11 != 0;
          }

          goto LABEL_25;
        }
      }
    }

    if (!a6)
    {
      return v11 != 0;
    }

LABEL_25:
    *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AVConference" code:-5 userInfo:0];
    return v11 != 0;
  }

  [a5 registerNewAudioPowerSpectrumForStreamToken:a3 powerSpectrumKey:a4 spectrumSource:v11];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136316162;
        v25 = v13;
        v26 = 2080;
        v27 = "[VCAudioPowerSpectrumManager registerListenerWithStreamToken:powerSpectrumKey:powerSpectrumMeter:error:]";
        v28 = 1024;
        v29 = 148;
        v30 = 2112;
        v31 = a5;
        v32 = 2112;
        v33 = a3;
        v15 = " [%s] %s:%d powerSpectrumMeter=%@ registered listener for streamToken=%@";
        v16 = v14;
        v17 = 48;
LABEL_12:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, &v24, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v12 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136316674;
        v25 = v18;
        v26 = 2080;
        v27 = "[VCAudioPowerSpectrumManager registerListenerWithStreamToken:powerSpectrumKey:powerSpectrumMeter:error:]";
        v28 = 1024;
        v29 = 148;
        v30 = 2112;
        v31 = v12;
        v32 = 2048;
        v33 = self;
        v34 = 2112;
        v35 = a5;
        v36 = 2112;
        v37 = a3;
        v15 = " [%s] %s:%d %@(%p) powerSpectrumMeter=%@ registered listener for streamToken=%@";
        v16 = v19;
        v17 = 68;
        goto LABEL_12;
      }
    }
  }

  return v11 != 0;
}

- (id)registerStreamTokenForCellularTapType:(id)a3 clientProcessId:(int)a4 enableAsyncTapStart:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v8 = *&a4;
  v47 = *MEMORY[0x1E69E9840];
  v11 = [(NSMutableDictionary *)self->_cellularTapTypeToStreamTokenMap objectForKeyedSubscript:?];
  if (!v11)
  {
    v12 = [a3 unsignedIntValue];
    if (v12 >= 2)
    {
      v17 = -2142765055;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioPowerSpectrumManager registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:];
            if (!a6)
            {
              return 0;
            }

            goto LABEL_37;
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v18 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
        }

        else
        {
          v18 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v26 = VRTraceErrorLogLevelToCSTR();
          v27 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v33 = 136316418;
            v34 = v26;
            v35 = 2080;
            v36 = "[VCAudioPowerSpectrumManager registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:]";
            v37 = 1024;
            v38 = 173;
            v39 = 2112;
            v40 = v18;
            v41 = 2048;
            v42 = self;
            v43 = 2112;
            v44 = a3;
            _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Invalid tapType=%@", &v33, 0x3Au);
            if (!a6)
            {
              return 0;
            }

            goto LABEL_37;
          }
        }
      }
    }

    else
    {
      v13 = v12;
      if (self->_cellularAudioTap || (v14 = [[VCCellularAudioTap alloc] initWithProcessId:v8 delegate:self delegateQueue:self->_xpcCommandQueue], (self->_cellularAudioTap = v14) != 0))
      {
        ID = VCUniqueIDGenerator_GenerateID();
        if ([(VCCellularAudioTap *)self->_cellularAudioTap addAudioTapForStreamToken:ID tapType:v13 enableAsyncTapStart:v7 error:a6])
        {
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:ID];
          [(NSMutableDictionary *)self->_cellularTapTypeToStreamTokenMap setObject:v11 forKeyedSubscript:a3];
          return v11;
        }

        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            return 0;
          }

          v21 = VRTraceErrorLogLevelToCSTR();
          v22 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          v33 = 136316162;
          v34 = v21;
          v35 = 2080;
          v36 = "[VCAudioPowerSpectrumManager registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:]";
          v37 = 1024;
          v38 = 183;
          v39 = 2112;
          v40 = a3;
          v41 = 1024;
          LODWORD(v42) = ID;
          v23 = " [%s] %s:%d Failed to create an app tap for tapType=%@ with streamToken=%u";
          v24 = v22;
          v25 = 44;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v20 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
          }

          else
          {
            v20 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            return 0;
          }

          v31 = VRTraceErrorLogLevelToCSTR();
          v32 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            return 0;
          }

          v33 = 136316674;
          v34 = v31;
          v35 = 2080;
          v36 = "[VCAudioPowerSpectrumManager registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:]";
          v37 = 1024;
          v38 = 183;
          v39 = 2112;
          v40 = v20;
          v41 = 2048;
          v42 = self;
          v43 = 2112;
          v44 = a3;
          v45 = 1024;
          v46 = ID;
          v23 = " [%s] %s:%d %@(%p) Failed to create an app tap for tapType=%@ with streamToken=%u";
          v24 = v32;
          v25 = 64;
        }

        _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, v23, &v33, v25);
        return 0;
      }

      if (objc_opt_class() == self)
      {
        v17 = -2142765054;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioPowerSpectrumManager registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:];
            v17 = -2142765054;
            if (!a6)
            {
              return 0;
            }

            goto LABEL_37;
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v19 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
        }

        else
        {
          v19 = &stru_1F570E008;
        }

        v17 = -2142765054;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v28 = VRTraceErrorLogLevelToCSTR();
          v29 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v33 = 136316418;
            v34 = v28;
            v35 = 2080;
            v36 = "[VCAudioPowerSpectrumManager registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:]";
            v37 = 1024;
            v38 = 178;
            v39 = 2112;
            v40 = v19;
            v41 = 2048;
            v42 = self;
            v43 = 2112;
            v44 = a3;
            _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate the audio tap for tapType=%@", &v33, 0x3Au);
            v17 = -2142765054;
            if (!a6)
            {
              return 0;
            }

            goto LABEL_37;
          }
        }
      }
    }

    if (!a6)
    {
      return 0;
    }

LABEL_37:
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AVConference" code:v17 userInfo:0];
    v11 = 0;
    *a6 = v30;
  }

  return v11;
}

- (id)powerSpectrumMetersForCellularTapType:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->_powerSpectrumMetersForCellularTapType objectForKeyedSubscript:?];
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    if (v6)
    {
      v5 = v6;
      [(NSMutableDictionary *)self->_powerSpectrumMetersForCellularTapType setObject:v6 forKeyedSubscript:a3];
    }

    else
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioPowerSpectrumManager powerSpectrumMetersForCellularTapType:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
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
            v11 = 136316418;
            v12 = v9;
            v13 = 2080;
            v14 = "[VCAudioPowerSpectrumManager powerSpectrumMetersForCellularTapType:]";
            v15 = 1024;
            v16 = 199;
            v17 = 2112;
            v18 = v8;
            v19 = 2048;
            v20 = self;
            v21 = 2112;
            v22 = a3;
            _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed allocate the client set for tapType=%@", &v11, 0x3Au);
          }
        }
      }

      return 0;
    }
  }

  return v5;
}

- (void)dispatchedCleanUpCellularAudioTap
{
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  [(VCCellularAudioTap *)self->_cellularAudioTap invalidate];

  self->_cellularAudioTap = 0;
}

- (BOOL)registerListenerWithCellularTapType:(id)a3 clientProcessId:(id)a4 enableAsyncTapStart:(BOOL)a5 powerSpectrumMeter:(id)a6 powerSpectrumMeterKey:(id)a7 resultDictionary:(id *)a8 error:(id *)a9
{
  v12 = a5;
  v52 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF90] dictionary];
  if (!a3)
  {
    [VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:];
    v24 = *buf;
    goto LABEL_78;
  }

  if (!a4)
  {
    if (objc_opt_class() == self)
    {
      v24 = -2142765055;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:];
        }
      }

      goto LABEL_78;
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    v24 = -2142765055;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_78;
    }

    v31 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136316418;
    *&buf[4] = v31;
    v42 = 2080;
    v43 = "[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:]";
    v44 = 1024;
    v45 = 265;
    v46 = 2112;
    v47 = v25;
    v48 = 2048;
    v49 = self;
    v50 = 2112;
    v51 = a3;
    v33 = " [%s] %s:%d %@(%p) Process id is missing tapType=%@";
    goto LABEL_76;
  }

  if (!a6)
  {
    if (objc_opt_class() == self)
    {
      v24 = -2142765055;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:];
        }
      }

      goto LABEL_78;
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    v24 = -2142765055;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_78;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136316418;
    *&buf[4] = v34;
    v42 = 2080;
    v43 = "[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:]";
    v44 = 1024;
    v45 = 266;
    v46 = 2112;
    v47 = v26;
    v48 = 2048;
    v49 = self;
    v50 = 2112;
    v51 = a3;
    v33 = " [%s] %s:%d %@(%p) Missing power spectrum meter for tapType=%@";
    goto LABEL_76;
  }

  if (!a7)
  {
    v24 = -2142765055;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:];
        }
      }

      goto LABEL_78;
    }

    if (objc_opt_respondsToSelector())
    {
      v27 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v27 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_78;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136316418;
    *&buf[4] = v35;
    v42 = 2080;
    v43 = "[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:]";
    v44 = 1024;
    v45 = 267;
    v46 = 2112;
    v47 = v27;
    v48 = 2048;
    v49 = self;
    v50 = 2112;
    v51 = a3;
    v33 = " [%s] %s:%d %@(%p) Missing power spectrum meter key for tapType=%@";
    goto LABEL_76;
  }

  v17 = v16;
  if ([a3 unsignedIntValue] >= 2)
  {
    v24 = -2142765055;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:];
        }
      }

      goto LABEL_78;
    }

    if (objc_opt_respondsToSelector())
    {
      v28 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v28 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_78;
    }

    v36 = VRTraceErrorLogLevelToCSTR();
    v32 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 136316418;
    *&buf[4] = v36;
    v42 = 2080;
    v43 = "[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:]";
    v44 = 1024;
    v45 = 269;
    v46 = 2112;
    v47 = v28;
    v48 = 2048;
    v49 = self;
    v50 = 2112;
    v51 = a3;
    v33 = " [%s] %s:%d %@(%p) Invalid tapType=%@";
LABEL_76:
    _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x3Au);
    goto LABEL_78;
  }

  v18 = [(VCAudioPowerSpectrumManager *)self powerSpectrumMetersForCellularTapType:a3];
  if (!v18)
  {
    if (objc_opt_class() == self)
    {
      v24 = -2142765054;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_78;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      [VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:];
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v29 = &stru_1F570E008;
      }

      v24 = -2142765054;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_78;
      }

      v37 = VRTraceErrorLogLevelToCSTR();
      v38 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_78;
      }

      *buf = 136316418;
      *&buf[4] = v37;
      v42 = 2080;
      v43 = "[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:]";
      v44 = 1024;
      v45 = 271;
      v46 = 2112;
      v47 = v29;
      v48 = 2048;
      v49 = self;
      v50 = 2112;
      v51 = a3;
      _os_log_error_impl(&dword_1DB56E000, v38, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) power spectrum meter set not found for tapType=%@", buf, 0x3Au);
    }

    v24 = -2142765054;
    goto LABEL_78;
  }

  v19 = v18;
  if ([v18 containsObject:a6])
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        v24 = -2142765015;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:];
        }

        goto LABEL_78;
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v30 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        v24 = -2142765015;
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_78;
        }

        *buf = 136316418;
        *&buf[4] = v39;
        v42 = 2080;
        v43 = "[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:]";
        v44 = 1024;
        v45 = 272;
        v46 = 2112;
        v47 = v30;
        v48 = 2048;
        v49 = self;
        v50 = 2112;
        v51 = a3;
        v33 = " [%s] %s:%d %@(%p) power spectrum meter is already registered for tapType=%@";
        goto LABEL_76;
      }
    }

    v24 = -2142765015;
LABEL_78:
    if (a9)
    {
      *a9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AVConference" code:v24 userInfo:0];
    }

    goto LABEL_80;
  }

  v20 = -[VCAudioPowerSpectrumManager registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:](self, "registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:", a3, [a4 unsignedIntegerValue], v12, a9);
  if (!v20)
  {
    [VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:];
LABEL_80:
    [(VCAudioPowerSpectrumManager *)self dispatchedCleanUpPowerSpectrumSetForCellularTapType:a3];
    return 0;
  }

  v21 = v20;
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", -[VCCellularAudioTap tapToken](self->_cellularAudioTap, "tapToken")), @"vcBasebandAudioTapTapToken"}];
  [v17 setObject:v21 forKeyedSubscript:@"vcBasebandAudioTapDirectionToken"];
  xpcCommandQueue = self->_xpcCommandQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __167__VCAudioPowerSpectrumManager_registerListenerWithCellularTapType_clientProcessId_enableAsyncTapStart_powerSpectrumMeter_powerSpectrumMeterKey_resultDictionary_error___block_invoke;
  block[3] = &unk_1E85F53D0;
  block[4] = self;
  block[5] = v21;
  block[6] = a7;
  block[7] = a6;
  block[9] = a3;
  block[10] = a9;
  block[8] = v19;
  dispatch_async(xpcCommandQueue, block);
  if (a8)
  {
    *a8 = v17;
  }

  return 1;
}

void __167__VCAudioPowerSpectrumManager_registerListenerWithCellularTapType_clientProcessId_enableAsyncTapStart_powerSpectrumMeter_powerSpectrumMeterKey_resultDictionary_error___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) registerListenerWithStreamToken:*(a1 + 40) powerSpectrumKey:*(a1 + 48) powerSpectrumMeter:*(a1 + 56) error:*(a1 + 80)])
  {
    [*(a1 + 64) addObject:*(a1 + 56)];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 56);
          v7 = *(a1 + 72);
          v8 = *(a1 + 40);
          v22 = 136316418;
          v23 = v4;
          v24 = 2080;
          v25 = "[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:]_block_invoke";
          v26 = 1024;
          v27 = 288;
          v28 = 2112;
          v29 = v6;
          v30 = 2112;
          v31 = v7;
          v32 = 2112;
          v33 = v8;
          v9 = " [%s] %s:%d powerSpectrumMeter=%@ registered listener for tapType=%@ with streamToken=%@";
          v10 = v5;
          v11 = 58;
LABEL_18:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v22, v11);
        }
      }
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

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 56);
          v15 = *(a1 + 72);
          v16 = *(a1 + 32);
          v17 = *(a1 + 40);
          v22 = 136316930;
          v23 = v12;
          v24 = 2080;
          v25 = "[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:]_block_invoke";
          v26 = 1024;
          v27 = 288;
          v28 = 2112;
          v29 = v2;
          v30 = 2048;
          v31 = v16;
          v32 = 2112;
          v33 = v14;
          v34 = 2112;
          v35 = v15;
          v36 = 2112;
          v37 = v17;
          v9 = " [%s] %s:%d %@(%p) powerSpectrumMeter=%@ registered listener for tapType=%@ with streamToken=%@";
          v10 = v13;
          v11 = 78;
          goto LABEL_18;
        }
      }
    }
  }

  else if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __167__VCAudioPowerSpectrumManager_registerListenerWithCellularTapType_clientProcessId_enableAsyncTapStart_powerSpectrumMeter_powerSpectrumMeterKey_resultDictionary_error___block_invoke_cold_1();
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
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        v21 = *(a1 + 72);
        v22 = 136316418;
        v23 = v18;
        v24 = 2080;
        v25 = "[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:]_block_invoke";
        v26 = 1024;
        v27 = 290;
        v28 = 2112;
        v29 = v3;
        v30 = 2048;
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) client set not found for tapType=%@", &v22, 0x3Au);
      }
    }
  }
}

- (BOOL)dispatchedUnregisterListenerWithCellularTapType:(id)a3 powerSpectrumMeter:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  if (!a3)
  {
    [VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:];
    v13 = *v25;
    goto LABEL_50;
  }

  if (!a4)
  {
    if (objc_opt_class() == self)
    {
      v13 = -2142765055;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:];
        }
      }

      goto LABEL_50;
    }

    if (objc_opt_respondsToSelector())
    {
      v14 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v14 = &stru_1F570E008;
    }

    v13 = -2142765055;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_50;
    }

    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *v25 = 136316418;
    *&v25[4] = v18;
    v26 = 2080;
    v27 = "[VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:]";
    v28 = 1024;
    v29 = 321;
    v30 = 2112;
    v31 = v14;
    v32 = 2048;
    v33 = self;
    v34 = 2112;
    v35 = a3;
    v20 = " [%s] %s:%d %@(%p) Missing power spectrum meter for tapType=%@";
    goto LABEL_49;
  }

  v9 = [(NSMutableDictionary *)self->_powerSpectrumMetersForCellularTapType objectForKeyedSubscript:a3];
  if (!v9)
  {
    if (objc_opt_class() == self)
    {
      v13 = -2142765034;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:];
        }
      }

      goto LABEL_50;
    }

    if (objc_opt_respondsToSelector())
    {
      v15 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v15 = &stru_1F570E008;
    }

    v13 = -2142765034;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_50;
    }

    v21 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *v25 = 136316418;
    *&v25[4] = v21;
    v26 = 2080;
    v27 = "[VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:]";
    v28 = 1024;
    v29 = 323;
    v30 = 2112;
    v31 = v15;
    v32 = 2048;
    v33 = self;
    v34 = 2112;
    v35 = a3;
    v20 = " [%s] %s:%d %@(%p) No registered power spectrum meters found for tapType=%@";
    goto LABEL_49;
  }

  v10 = v9;
  if (([v9 containsObject:a4] & 1) == 0)
  {
    v13 = -2142765034;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:];
        }
      }

      goto LABEL_50;
    }

    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_50;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *v25 = 136316418;
    *&v25[4] = v22;
    v26 = 2080;
    v27 = "[VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:]";
    v28 = 1024;
    v29 = 324;
    v30 = 2112;
    v31 = v16;
    v32 = 2048;
    v33 = self;
    v34 = 2112;
    v35 = a3;
    v20 = " [%s] %s:%d %@(%p) Power spectrum not registered for tapType=%@";
LABEL_49:
    _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, v20, v25, 0x3Au);
    goto LABEL_50;
  }

  v11 = [(NSMutableDictionary *)self->_cellularTapTypeToStreamTokenMap objectForKeyedSubscript:a3];
  if (v11)
  {
    [a4 releaseAudioPowerSpectrumForStreamToken:v11];
    [v10 removeObject:a4];
    [(VCAudioPowerSpectrumManager *)self dispatchedCleanUpPowerSpectrumSetForCellularTapType:a3];
    [a4 cleanUpEventQueue];
    return 1;
  }

  v13 = -2142765034;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:];
      }
    }

    goto LABEL_50;
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
  }

  else
  {
    v17 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v23 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *v25 = 136316418;
      *&v25[4] = v23;
      v26 = 2080;
      v27 = "[VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:]";
      v28 = 1024;
      v29 = 326;
      v30 = 2112;
      v31 = v17;
      v32 = 2048;
      v33 = self;
      v34 = 2112;
      v35 = a3;
      v20 = " [%s] %s:%d %@(%p) Stream token not found for tapType=%@";
      goto LABEL_49;
    }
  }

LABEL_50:
  if (!a5)
  {
    return 0;
  }

  v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AVConference" code:v13 userInfo:0];
  result = 0;
  *a5 = v24;
  return result;
}

- (id)serviceHandlerPowerMeterInitializeWithArguments:(id)a3 error:(id *)a4
{
  v7 = [a3 objectForKeyedSubscript:@"vcAudioPowerSpectrumBinCount"];
  if (v7)
  {
    v8 = v7;
    v9 = [a3 objectForKeyedSubscript:@"vcAudioPowerSpectrumRefreshRate"];
    if (v9)
    {
      v10 = v9;
      v11 = [v8 unsignedShortValue];
      [v10 doubleValue];
      v12 = [(VCAudioPowerSpectrumManager *)self newPowerSpectrumMeterWithBinCount:v11 refreshRate:self delegate:a4 error:?];
      if (v12)
      {
        v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v12, @"CONTEXT", 0}];
      }

      else
      {
        [VCAudioPowerSpectrumManager serviceHandlerPowerMeterInitializeWithArguments:error:];
        v13 = v15;
      }

      return v13;
    }

    [VCAudioPowerSpectrumManager serviceHandlerPowerMeterInitializeWithArguments:error:];
  }

  else
  {
    [VCAudioPowerSpectrumManager serviceHandlerPowerMeterInitializeWithArguments:error:];
  }

  v13 = 0;
  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AVConference" code:v15 userInfo:0];
  }

  return v13;
}

- (id)serviceHandlerRegisterListenerWithArguments:(id)a3 error:(id *)a4
{
  if ([+[VCDefaults forceDisableAudioPowerSpectrumRegister] sharedInstance]
  {
    [VCAudioPowerSpectrumManager serviceHandlerRegisterListenerWithArguments:? error:?];
    return 0;
  }

  v7 = [a3 objectForKeyedSubscript:@"CONTEXT"];
  if (v7)
  {
    v8 = v7;
    v9 = [a3 objectForKeyedSubscript:@"vcAudioPowerSpectrumStreamToken"];
    if (v9)
    {
      if ([(VCAudioPowerSpectrumManager *)self registerListenerWithStreamToken:v9 powerSpectrumKey:v9 powerSpectrumMeter:v8 error:a4])
      {
        return 0;
      }

      [VCAudioPowerSpectrumManager serviceHandlerRegisterListenerWithArguments:error:];
    }

    else
    {
      [VCAudioPowerSpectrumManager serviceHandlerRegisterListenerWithArguments:error:];
    }
  }

  else
  {
    [VCAudioPowerSpectrumManager serviceHandlerRegisterListenerWithArguments:error:];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AVConference" code:v11 userInfo:0];
  }

  return 0;
}

- (id)serviceHandlerUnregisterListenerWithArguments:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:@"CONTEXT"];
  if (v6)
  {
    v7 = v6;
    v8 = [a3 objectForKeyedSubscript:@"vcAudioPowerSpectrumStreamToken"];
    if (v8)
    {
      [v7 releaseAudioPowerSpectrumForStreamToken:v8];
      return 0;
    }

    [VCAudioPowerSpectrumManager serviceHandlerUnregisterListenerWithArguments:error:];
  }

  else
  {
    [VCAudioPowerSpectrumManager serviceHandlerUnregisterListenerWithArguments:error:];
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AVConference" code:v10 userInfo:0];
  }

  return 0;
}

- (id)serviceHandlerRegisterCellularTapWithArguments:(id)a3 error:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  if ([+[VCDefaults forceDisableAudioPowerSpectrumRegister] sharedInstance]
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v26 = v14;
          v27 = 2080;
          v28 = "[VCAudioPowerSpectrumManager serviceHandlerRegisterCellularTapWithArguments:error:]";
          v29 = 1024;
          v30 = 410;
          v16 = " [%s] %s:%d Force disableAudioPowerSpectrumRegister is YES: inhibiting call to API_VCAUDIOPOWERSPECTURM_REGISTER_LISTENER_KEY";
          v17 = v15;
          v18 = 28;
LABEL_26:
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v26 = v19;
          v27 = 2080;
          v28 = "[VCAudioPowerSpectrumManager serviceHandlerRegisterCellularTapWithArguments:error:]";
          v29 = 1024;
          v30 = 410;
          v31 = 2112;
          v32 = v12;
          v33 = 2048;
          v34 = self;
          v16 = " [%s] %s:%d %@(%p) Force disableAudioPowerSpectrumRegister is YES: inhibiting call to API_VCAUDIOPOWERSPECTURM_REGISTER_LISTENER_KEY";
          v17 = v20;
          v18 = 48;
          goto LABEL_26;
        }
      }
    }

LABEL_3:
    v7 = 0;
    v8 = 0;
    if (!a4)
    {
      return v23;
    }

    goto LABEL_4;
  }

  if (-[VCAudioPowerSpectrumManager registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:](self, "registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:", [a3 objectForKeyedSubscript:@"vcAudioPowerSpectrumCellularTapType"], objc_msgSend(a3, "objectForKeyedSubscript:", @"CLIENTPID"), objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"vcAudioPowerSpectrumMeterEnableAsyncTapStart"), "BOOLValue"), objc_msgSend(a3, "objectForKeyedSubscript:", @"CONTEXT"), objc_msgSend(a3, "objectForKeyedSubscript:", @"vcAudioPowerSpectrumMeterKeyType"), &v23, &v24))
  {
    goto LABEL_3;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioPowerSpectrumManager serviceHandlerRegisterCellularTapWithArguments:error:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v26 = v21;
        v27 = 2080;
        v28 = "[VCAudioPowerSpectrumManager serviceHandlerRegisterCellularTapWithArguments:error:]";
        v29 = 1024;
        v30 = 419;
        v31 = 2112;
        v32 = v13;
        v33 = 2048;
        v34 = self;
        v35 = 2112;
        v36 = v24;
        _os_log_error_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to register the listener. error=%@", buf, 0x3Au);
      }
    }
  }

  v8 = -7;
  v7 = 1;
  if (a4)
  {
LABEL_4:
    v9 = v24;
    v10 = v7 ^ 1;
    if (v24)
    {
      v10 = 1;
    }

    if ((v10 & 1) == 0)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.AVConference" code:v8 userInfo:0];
    }

    *a4 = v9;
  }

  return v23;
}

- (id)serviceHandlerUnregisterCellularTagWithArguments:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = 0;
  if (!-[VCAudioPowerSpectrumManager dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:](self, "dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:", [a3 objectForKeyedSubscript:@"vcAudioPowerSpectrumCellularTapType"], objc_msgSend(a3, "objectForKeyedSubscript:", @"CONTEXT"), &v10))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioPowerSpectrumManager serviceHandlerUnregisterCellularTagWithArguments:error:];
          if (!a4)
          {
            return 0;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v12 = v7;
          v13 = 2080;
          v14 = "[VCAudioPowerSpectrumManager serviceHandlerUnregisterCellularTagWithArguments:error:]";
          v15 = 1024;
          v16 = 436;
          v17 = 2112;
          v18 = v6;
          v19 = 2048;
          v20 = self;
          v21 = 2112;
          v22 = v10;
          _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to unregister the listener. error=%@", buf, 0x3Au);
          if (!a4)
          {
            return 0;
          }

          goto LABEL_13;
        }
      }
    }
  }

  if (a4)
  {
LABEL_13:
    *a4 = v10;
  }

  return 0;
}

- (id)serviceHandlerPowerMeterTerminateWithArguments:(id)a3 error:(id *)a4
{
  v6 = [a3 objectForKeyedSubscript:{@"CONTEXT", a4}];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([a3 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v7 = 0;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E695DF20]);
    v7 = [v9 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  [(VCAudioPowerSpectrumManager *)self terminatePowerSpectrumMeter:v6];

  return v7;
}

- (void)registerBlocksForService
{
  v9[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke;
  v9[3] = &unk_1E85F5100;
  v9[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_2;
  v8[3] = &unk_1E85F5100;
  v8[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_3;
  v7[3] = &unk_1E85F5100;
  v7[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_4;
  v6[3] = &unk_1E85F5100;
  v6[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_5;
  v5[3] = &unk_1E85F5100;
  v5[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_6;
  v4[3] = &unk_1E85F5100;
  v4[4] = v3;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

id __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [v5 serviceHandlerPowerMeterInitializeWithArguments:a2 error:a3];

  return v7;
}

id __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [v5 serviceHandlerRegisterListenerWithArguments:a2 error:a3];

  return v7;
}

id __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [v5 serviceHandlerUnregisterListenerWithArguments:a2 error:a3];

  return v7;
}

id __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [v5 serviceHandlerRegisterCellularTapWithArguments:a2 error:a3];

  return v7;
}

id __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = [v5 serviceHandlerUnregisterCellularTagWithArguments:a2 error:a3];

  return v7;
}

id __55__VCAudioPowerSpectrumManager_registerBlocksForService__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_msgSend(*(a1 + 32) "strong")];

  return v3;
}

- (void)deregisterBlocksForService
{
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"vcAudioPowerSpectrumUnregisterCellularTap"];
}

- (void)audioPowerSpectrumMeter:(id)a3 didUpdateAudioPowerSpectrums:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioPowerSpectrumManager *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 8)
    {
      goto LABEL_17;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v16 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316674;
        v23 = v14;
        v24 = 2080;
        v25 = "[VCAudioPowerSpectrumManager audioPowerSpectrumMeter:didUpdateAudioPowerSpectrums:]";
        v26 = 1024;
        v27 = 527;
        v28 = 2112;
        v29 = v7;
        v30 = 2048;
        v31 = self;
        v32 = 2048;
        v33 = a3;
        v34 = 2112;
        v35 = a4;
        v11 = " [%s] %s:%d %@(%p) meter[%p] spectrums[%@]";
        v12 = v15;
        v13 = 68;
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    *buf = 136316674;
    v23 = v14;
    v24 = 2080;
    v25 = "[VCAudioPowerSpectrumManager audioPowerSpectrumMeter:didUpdateAudioPowerSpectrums:]";
    v26 = 1024;
    v27 = 527;
    v28 = 2112;
    v29 = v7;
    v30 = 2048;
    v31 = self;
    v32 = 2048;
    v33 = a3;
    v34 = 2112;
    v35 = a4;
    v17 = " [%s] %s:%d %@(%p) meter[%p] spectrums[%@]";
    v18 = v15;
    v19 = 68;
LABEL_19:
    _os_log_debug_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
    goto LABEL_17;
  }

  if (VRTraceGetErrorLogLevelForModule() < 8)
  {
    goto LABEL_17;
  }

  v8 = VRTraceErrorLogLevelToCSTR();
  v9 = *MEMORY[0x1E6986650];
  v10 = *MEMORY[0x1E6986650];
  if (*MEMORY[0x1E6986640] != 1)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_17;
    }

    *buf = 136316162;
    v23 = v8;
    v24 = 2080;
    v25 = "[VCAudioPowerSpectrumManager audioPowerSpectrumMeter:didUpdateAudioPowerSpectrums:]";
    v26 = 1024;
    v27 = 527;
    v28 = 2048;
    v29 = a3;
    v30 = 2112;
    v31 = a4;
    v17 = " [%s] %s:%d meter[%p] spectrums[%@]";
    v18 = v9;
    v19 = 48;
    goto LABEL_19;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v23 = v8;
    v24 = 2080;
    v25 = "[VCAudioPowerSpectrumManager audioPowerSpectrumMeter:didUpdateAudioPowerSpectrums:]";
    v26 = 1024;
    v27 = 527;
    v28 = 2048;
    v29 = a3;
    v30 = 2112;
    v31 = a4;
    v11 = " [%s] %s:%d meter[%p] spectrums[%@]";
    v12 = v9;
    v13 = 48;
LABEL_13:
    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
  }

LABEL_17:
  v20 = [MEMORY[0x1E696ACC8] newSecureArchivedDataWithRootObject:a4];
  v21 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v20, @"vcAudioPowerSpectrumRemoteSpectrum", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)serverDidDie
{
  v25 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_powerSpectrumMetersForCellularTapType;
  v14 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v14)
  {
    v13 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v21 + 1) + 8 * i);
        v5 = [(NSMutableDictionary *)self->_powerSpectrumMetersForCellularTapType objectForKeyedSubscript:v4];
        v6 = [(NSMutableDictionary *)self->_cellularTapTypeToStreamTokenMap objectForKeyedSubscript:v4];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v7 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v17;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v17 != v9)
              {
                objc_enumerationMutation(v5);
              }

              v11 = *(*(&v16 + 1) + 8 * j);
              [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
              [v11 releaseAudioPowerSpectrumForStreamToken:v6];
              [(VCAudioPowerSpectrumManager *)self terminatePowerSpectrumMeter:v11];
            }

            v8 = [v5 countByEnumeratingWithState:&v16 objects:v15 count:16];
          }

          while (v8);
        }
      }

      v14 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v14);
  }
}

- (void)dispatchedCleanUpPowerSpectrumSetForCellularTapType:(id)a3
{
  dispatch_assert_queue_V2(self->_xpcCommandQueue);
  v5 = [(NSMutableDictionary *)self->_powerSpectrumMetersForCellularTapType objectForKeyedSubscript:a3];
  if (!v5 || [v5 count])
  {
    return;
  }

  [(NSMutableDictionary *)self->_powerSpectrumMetersForCellularTapType setObject:0 forKeyedSubscript:a3];
  v6 = [(NSMutableDictionary *)self->_cellularTapTypeToStreamTokenMap objectForKeyedSubscript:a3];
  if (v6)
  {
    -[VCCellularAudioTap removeAudioTapForStreamToken:error:](self->_cellularAudioTap, "removeAudioTapForStreamToken:error:", [v6 unsignedIntValue], 0);
    [(NSMutableDictionary *)self->_cellularTapTypeToStreamTokenMap setObject:0 forKeyedSubscript:a3];
    if (![(NSMutableDictionary *)self->_cellularTapTypeToStreamTokenMap count])
    {

      [(VCAudioPowerSpectrumManager *)self dispatchedCleanUpCellularAudioTap];
    }

    return;
  }

  if (objc_opt_class() == self)
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
    OUTLINED_FUNCTION_24_0();
    v11 = 38;
LABEL_18:
    _os_log_error_impl(v7, v8, OS_LOG_TYPE_ERROR, v9, v10, v11);
    return;
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
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_27_1();
      OUTLINED_FUNCTION_14_4();
      v11 = 58;
      goto LABEL_18;
    }
  }
}

- (void)init
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

void __61__VCAudioPowerSpectrumManager_registerAudioPowerMeterSource___block_invoke_cold_1(uint64_t a1, id *a2)
{
  [*a2 streamToken];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newPowerSpectrumMeterWithBinCount:refreshRate:delegate:error:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_0();
  v2 = 122;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCPowerSpectrumMeter failed to allocate", v1, 0x1Cu);
}

- (void)registerListenerWithStreamToken:powerSpectrumKey:powerSpectrumMeter:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d audioSpectrumRegisterListener: error no powerSpectrumSource for streamToken=%@");
}

- (void)registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate the audio tap for tapType=%@");
}

- (void)registerStreamTokenForCellularTapType:clientProcessId:enableAsyncTapStart:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid tapType=%@");
}

- (void)powerSpectrumMetersForCellularTapType:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed allocate the client set for tapType=%@");
}

- (void)registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
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
    OUTLINED_FUNCTION_24_0();
    v5 = 38;
LABEL_11:
    _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, v5);
    return;
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
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_4_7();
      OUTLINED_FUNCTION_27_1();
      OUTLINED_FUNCTION_14_4();
      v5 = 58;
      goto LABEL_11;
    }
  }
}

- (void)registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d power spectrum meter is already registered for tapType=%@");
}

- (void)registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d power spectrum meter set not found for tapType=%@");
}

- (void)registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid tapType=%@");
}

- (void)registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing power spectrum meter key for tapType=%@");
}

- (void)registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:.cold.6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing power spectrum meter for tapType=%@");
}

- (void)registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:.cold.7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Process id is missing tapType=%@");
}

- (void)registerListenerWithCellularTapType:clientProcessId:enableAsyncTapStart:powerSpectrumMeter:powerSpectrumMeterKey:resultDictionary:error:.cold.8()
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
  *v0 = -2142765055;
  OUTLINED_FUNCTION_39_0();
}

void __167__VCAudioPowerSpectrumManager_registerListenerWithCellularTapType_clientProcessId_enableAsyncTapStart_powerSpectrumMeter_powerSpectrumMeterKey_resultDictionary_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d client set not found for tapType=%@");
}

- (void)dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Power spectrum not registered for tapType=%@");
}

- (void)dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Stream token not found for tapType=%@");
}

- (void)dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d No registered power spectrum meters found for tapType=%@");
}

- (void)dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Missing power spectrum meter for tapType=%@");
}

- (void)dispatchedUnregisterListenerWithCellularTapType:powerSpectrumMeter:error:.cold.5()
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
  *v0 = -2142765055;
  OUTLINED_FUNCTION_39_0();
}

- (void)serviceHandlerPowerMeterInitializeWithArguments:error:.cold.1()
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
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)serviceHandlerPowerMeterInitializeWithArguments:error:.cold.2()
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
  OUTLINED_FUNCTION_19_4(-3);
  OUTLINED_FUNCTION_39_0();
}

- (void)serviceHandlerPowerMeterInitializeWithArguments:error:.cold.3()
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
  OUTLINED_FUNCTION_19_4(-2);
  OUTLINED_FUNCTION_39_0();
}

- (void)serviceHandlerRegisterListenerWithArguments:error:.cold.1()
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
  OUTLINED_FUNCTION_19_4(-7);
  OUTLINED_FUNCTION_39_0();
}

- (void)serviceHandlerRegisterListenerWithArguments:error:.cold.2()
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
  OUTLINED_FUNCTION_19_4(-7);
  OUTLINED_FUNCTION_39_0();
}

- (void)serviceHandlerRegisterListenerWithArguments:error:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        v5 = 28;
LABEL_10:
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, v5);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_14_4();
        v5 = 48;
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_19_4(-6);
  OUTLINED_FUNCTION_39_0();
}

- (void)serviceHandlerRegisterListenerWithArguments:(void *)a1 error:.cold.4(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v2 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v8 = 373;
        v3 = " [%s] %s:%d Force disableAudioPowerSpectrumRegister is YES: inhibiting call to API_VCAUDIOPOWERSPECTURM_REGISTER_LISTENER_KEY";
        v4 = v2;
        v5 = 28;
LABEL_10:
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, v3, v7, v5);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [a1 performSelector:sel_logPrefix];
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_14_3();
        v3 = " [%s] %s:%d %@(%p) Force disableAudioPowerSpectrumRegister is YES: inhibiting call to API_VCAUDIOPOWERSPECTURM_REGISTER_LISTENER_KEY";
        v4 = v6;
        v5 = 48;
        goto LABEL_10;
      }
    }
  }
}

- (void)serviceHandlerUnregisterListenerWithArguments:error:.cold.1()
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
  OUTLINED_FUNCTION_19_4(-7);
  OUTLINED_FUNCTION_39_0();
}

- (void)serviceHandlerUnregisterListenerWithArguments:error:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_24_0();
        v5 = 28;
LABEL_10:
        _os_log_impl(v1, v2, OS_LOG_TYPE_DEFAULT, v3, v4, v5);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_38_0())
    {
      OUTLINED_FUNCTION_37_0();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5_4();
        OUTLINED_FUNCTION_14_4();
        v5 = 48;
        goto LABEL_10;
      }
    }
  }

  OUTLINED_FUNCTION_19_4(-6);
  OUTLINED_FUNCTION_39_0();
}

- (void)serviceHandlerRegisterCellularTapWithArguments:error:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to register the listener. error=%@");
}

- (void)serviceHandlerUnregisterCellularTagWithArguments:error:.cold.1()
{
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_11_2(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to unregister the listener. error=%@");
}

@end