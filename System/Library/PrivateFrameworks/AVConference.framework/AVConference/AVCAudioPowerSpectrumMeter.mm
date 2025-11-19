@interface AVCAudioPowerSpectrumMeter
- (AVCAudioPowerSpectrumMeter)initWithConfig:(_AVCAudioPowerSpectrumMeterConfig *)a3 delegate:(id)a4 queue:(id)a5;
- (BOOL)dispatchedProcessBasebandRegistrationResult:(id)a3 forTapType:(unsigned int)a4 withError:(id *)a5;
- (BOOL)dispatchedRegisterPowerSpectrumForCellularTapType:(unsigned int)a3 error:(id *)a4;
- (BOOL)dispatchedUnregisterPowerSpectrumForCellularTapType:(unsigned int)a3 error:(id *)a4;
- (BOOL)registerPowerSpectrumForCellularTapType:(unsigned int)a3 error:(id *)a4;
- (BOOL)setupPowerSpectrumMeter;
- (BOOL)setupXPCConnection;
- (BOOL)storeDelegate:(id)a3 delegateQueue:(id)a4;
- (BOOL)unregisterPowerSpectrumForCellularTapType:(unsigned int)a3 error:(id *)a4;
- (int64_t)streamTokenForCellularTapType:(unsigned int)a3;
- (void)audioPowerSpectrumMeter:(id)a3 didUpdateAudioPowerSpectrums:(id)a4;
- (void)cleanupDelegate;
- (void)cleanupXPCConnection;
- (void)dealloc;
- (void)deregisterBlocksForService;
- (void)dispatchedUnregisterBasebandTokensForAudioTapType:(unsigned int)a3;
- (void)invalidateBasebandTokens;
- (void)registerBlocksForNotifications;
- (void)registerPowerSpectrumForStreamToken:(int64_t)a3;
- (void)setEnableAsyncTapStart:(BOOL)a3;
- (void)setupPowerSpectrumMeter;
- (void)setupXPCConnection;
- (void)unregisterPowerSpectrumForStreamToken:(int64_t)a3;
@end

@implementation AVCAudioPowerSpectrumMeter

- (AVCAudioPowerSpectrumMeter)initWithConfig:(_AVCAudioPowerSpectrumMeterConfig *)a3 delegate:(id)a4 queue:(id)a5
{
  v15 = *MEMORY[0x1E69E9840];
  VRTraceReset();
  v14.receiver = self;
  v14.super_class = AVCAudioPowerSpectrumMeter;
  v9 = [(AVCAudioPowerSpectrumMeter *)&v14 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9->_basebandAudioTapTypeToStreamTokenMap = v10;
    if (v10)
    {
      CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
      v12 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCAudioPowerSpectrumMeter.stateQueue", 0, CustomRootQueue);
      v9->_stateQueue = v12;
      if (v12)
      {
        if ([(AVCAudioPowerSpectrumMeter *)v9 storeDelegate:a4 delegateQueue:a5])
        {
          if ([(AVCAudioPowerSpectrumMeter *)v9 setupXPCConnection])
          {
            v9->_sessionToken = 0;
            v9->_audioSpectrumBinCount = a3->var2;
            v9->_audioSpectrumRefreshRate = a3->var3;
            if ([(AVCAudioPowerSpectrumMeter *)v9 setupPowerSpectrumMeter])
            {
              return v9;
            }

            [AVCAudioPowerSpectrumMeter initWithConfig:v9 delegate:? queue:?];
          }

          else
          {
            [AVCAudioPowerSpectrumMeter initWithConfig:v9 delegate:? queue:?];
          }
        }

        else
        {
          [AVCAudioPowerSpectrumMeter initWithConfig:v9 delegate:? queue:?];
        }
      }

      else
      {
        [AVCAudioPowerSpectrumMeter initWithConfig:v9 delegate:? queue:?];
      }
    }

    else
    {
      [AVCAudioPowerSpectrumMeter initWithConfig:v9 delegate:? queue:?];
    }

    return 0;
  }

  return v9;
}

- (void)dealloc
{
  v23 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
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

    *buf = 136316162;
    v14 = v9;
    v15 = 2080;
    v16 = "[AVCAudioPowerSpectrumMeter dealloc]";
    v17 = 1024;
    v18 = 84;
    v19 = 2112;
    v20 = v3;
    v21 = 2048;
    v22 = self;
    v6 = " [%s] %s:%d %@(%p) deallocating AVCAudioPowerSpectrumMeter";
    v7 = v10;
    v8 = 48;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = v4;
      v15 = 2080;
      v16 = "[AVCAudioPowerSpectrumMeter dealloc]";
      v17 = 1024;
      v18 = 84;
      v6 = " [%s] %s:%d deallocating AVCAudioPowerSpectrumMeter";
      v7 = v5;
      v8 = 28;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

LABEL_12:
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
    self->_stateQueue = 0;
  }

  [(AVCAudioPowerSpectrumMeter *)self cleanupPowerSpectrumMeter];
  [(AVCAudioPowerSpectrumMeter *)self cleanupXPCConnection];
  [(AVCAudioPowerSpectrumMeter *)self cleanupDelegate];
  v12.receiver = self;
  v12.super_class = AVCAudioPowerSpectrumMeter;
  [(AVCAudioPowerSpectrumMeter *)&v12 dealloc];
}

- (void)registerPowerSpectrumForStreamToken:(int64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = v6;
        v17 = 2080;
        v18 = "[AVCAudioPowerSpectrumMeter registerPowerSpectrumForStreamToken:]";
        v19 = 1024;
        v20 = 95;
        v21 = 2048;
        v22 = a3;
        v8 = " [%s] %s:%d streamToken=%ld";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v16 = v11;
        v17 = 2080;
        v18 = "[AVCAudioPowerSpectrumMeter registerPowerSpectrumForStreamToken:]";
        v19 = 1024;
        v20 = 95;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = self;
        v25 = 2048;
        v26 = a3;
        v8 = " [%s] %s:%d %@(%p) streamToken=%ld";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{a3, @"vcAudioPowerSpectrumStreamToken"}];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcAudioPowerSpectrumRegisterListener", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1]);
}

- (void)unregisterPowerSpectrumForStreamToken:(int64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = v6;
        v17 = 2080;
        v18 = "[AVCAudioPowerSpectrumMeter unregisterPowerSpectrumForStreamToken:]";
        v19 = 1024;
        v20 = 102;
        v21 = 2048;
        v22 = a3;
        v8 = " [%s] %s:%d streamToken=%ld";
        v9 = v7;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v16 = v11;
        v17 = 2080;
        v18 = "[AVCAudioPowerSpectrumMeter unregisterPowerSpectrumForStreamToken:]";
        v19 = 1024;
        v20 = 102;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = self;
        v25 = 2048;
        v26 = a3;
        v8 = " [%s] %s:%d %@(%p) streamToken=%ld";
        v9 = v12;
        v10 = 58;
        goto LABEL_11;
      }
    }
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{a3, @"vcAudioPowerSpectrumStreamToken"}];
  -[AVConferenceXPCClient sendMessageAsync:arguments:](self->_connection, "sendMessageAsync:arguments:", "vcAudioPowerSpectrumUnregisterListener", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1]);
}

- (BOOL)dispatchedProcessBasebandRegistrationResult:(id)a3 forTapType:(unsigned int)a4 withError:(id *)a5
{
  v6 = *&a4;
  v39 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  v9 = [a3 objectForKeyedSubscript:@"vcBasebandAudioTapDirectionToken"];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  if (!v9)
  {
    [AVCAudioPowerSpectrumMeter dispatchedProcessBasebandRegistrationResult:? forTapType:? withError:?];
    if (!a5)
    {
      return 0;
    }

    goto LABEL_31;
  }

  v11 = v10;
  if (![(NSMutableDictionary *)self->_basebandAudioTapTypeToStreamTokenMap objectForKeyedSubscript:v10])
  {
    [(NSMutableDictionary *)self->_basebandAudioTapTypeToStreamTokenMap setObject:v9 forKeyedSubscript:v11];
    v12 = [a3 objectForKeyedSubscript:@"vcBasebandAudioTapTapToken"];
    if (v12)
    {
      v13 = [v12 longValue];
      v14 = v13;
      sessionToken = self->_sessionToken;
      if (!sessionToken || v13 == sessionToken)
      {
        self->_sessionToken = v13;
        return 1;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_30;
        }

        v25 = VRTraceErrorLogLevelToCSTR();
        v26 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v27 = self->_sessionToken;
        *v35 = 136316418;
        *&v35[4] = v25;
        *&v35[12] = 2080;
        *&v35[14] = "[AVCAudioPowerSpectrumMeter dispatchedProcessBasebandRegistrationResult:forTapType:withError:]";
        *&v35[22] = 1024;
        LODWORD(v36) = 135;
        WORD2(v36) = 2048;
        *(&v36 + 6) = v14;
        HIWORD(v36) = 1024;
        *v37 = v6;
        *&v37[4] = 1024;
        *&v37[6] = v27;
        v22 = " [%s] %s:%d Different sessionToken=%ld passed from server for tapType=%u, originalToken=%u";
        v23 = v26;
        v24 = 50;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v18 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
        }

        else
        {
          v18 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_30;
        }

        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        v34 = self->_sessionToken;
        *v35 = 136316930;
        *&v35[4] = v31;
        *&v35[12] = 2080;
        *&v35[14] = "[AVCAudioPowerSpectrumMeter dispatchedProcessBasebandRegistrationResult:forTapType:withError:]";
        *&v35[22] = 1024;
        LODWORD(v36) = 135;
        WORD2(v36) = 2112;
        *(&v36 + 6) = v18;
        HIWORD(v36) = 2048;
        *v37 = self;
        *&v37[8] = 2048;
        *&v37[10] = v14;
        *&v37[18] = 1024;
        *&v37[20] = v6;
        LOWORD(v38) = 1024;
        *(&v38 + 2) = v34;
        v22 = " [%s] %s:%d %@(%p) Different sessionToken=%ld passed from server for tapType=%u, originalToken=%u";
        v23 = v32;
        v24 = 70;
      }

LABEL_33:
      _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, v22, v35, v24);
      if (a5)
      {
        goto LABEL_31;
      }

      return 0;
    }

    [AVCAudioPowerSpectrumMeter dispatchedProcessBasebandRegistrationResult:? forTapType:? withError:?];
    if (!a5)
    {
      return 0;
    }

LABEL_31:
    v33 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:{@"Invalid baseband stream token state", *v35, *&v35[16], v36, *v37, *&v37[8], v38}];
    result = 0;
    *a5 = v33;
    return result;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_30;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v21 = [(NSMutableDictionary *)self->_basebandAudioTapTypeToStreamTokenMap objectForKeyedSubscript:v11];
    *v35 = 136316418;
    *&v35[4] = v19;
    *&v35[12] = 2080;
    *&v35[14] = "[AVCAudioPowerSpectrumMeter dispatchedProcessBasebandRegistrationResult:forTapType:withError:]";
    *&v35[22] = 1024;
    LODWORD(v36) = 127;
    WORD2(v36) = 2112;
    *(&v36 + 6) = v21;
    HIWORD(v36) = 1024;
    *v37 = v6;
    *&v37[4] = 2112;
    *&v37[6] = v9;
    v22 = " [%s] %s:%d Token=%@ already exists for tapType=%u, cannot register new token=%@";
    v23 = v20;
    v24 = 54;
    goto LABEL_33;
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
  }

  else
  {
    v17 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v28 = VRTraceErrorLogLevelToCSTR();
    v29 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v30 = [(NSMutableDictionary *)self->_basebandAudioTapTypeToStreamTokenMap objectForKeyedSubscript:v11];
      *v35 = 136316930;
      *&v35[4] = v28;
      *&v35[12] = 2080;
      *&v35[14] = "[AVCAudioPowerSpectrumMeter dispatchedProcessBasebandRegistrationResult:forTapType:withError:]";
      *&v35[22] = 1024;
      LODWORD(v36) = 127;
      WORD2(v36) = 2112;
      *(&v36 + 6) = v17;
      HIWORD(v36) = 2048;
      *v37 = self;
      *&v37[8] = 2112;
      *&v37[10] = v30;
      *&v37[18] = 1024;
      *&v37[20] = v6;
      LOWORD(v38) = 2112;
      *(&v38 + 2) = v9;
      v22 = " [%s] %s:%d %@(%p) Token=%@ already exists for tapType=%u, cannot register new token=%@";
      v23 = v29;
      v24 = 74;
      goto LABEL_33;
    }
  }

LABEL_30:
  if (a5)
  {
    goto LABEL_31;
  }

  return 0;
}

- (BOOL)dispatchedRegisterPowerSpectrumForCellularTapType:(unsigned int)a3 error:(id *)a4
{
  v5 = *&a3;
  v41[3] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = [AVCAudioPowerSpectrumMeter cellularTapTypeWithClientCellularTapType:v5];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioPowerSpectrumMeter-registerPowerSpectrumForCellularTapType");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v26 = 136316162;
      v27 = v9;
      v28 = 2080;
      v29 = "[AVCAudioPowerSpectrumMeter dispatchedRegisterPowerSpectrumForCellularTapType:error:]";
      v30 = 1024;
      v31 = 159;
      v32 = 2048;
      v33 = self;
      v34 = 1024;
      LODWORD(v35) = v5;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAudioPowerSpectrumMeter-registerPowerSpectrumForCellularTapType (%p) type=%u", &v26, 0x2Cu);
    }
  }

  if (!+[VCHardwareSettings isCellularTappingSupported])
  {
    v12 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"Platform doesn't support callular tapping"];
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_20;
      }

      v20 = VRTraceErrorLogLevelToCSTR();
      v21 = *MEMORY[0x1E6986650];
      v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v13)
      {
        goto LABEL_21;
      }

      v26 = 136316674;
      v27 = v20;
      v28 = 2080;
      v29 = "[AVCAudioPowerSpectrumMeter dispatchedRegisterPowerSpectrumForCellularTapType:error:]";
      v30 = 1024;
      v31 = 172;
      v32 = 2112;
      v33 = v14;
      v34 = 2048;
      v35 = self;
      v36 = 2112;
      v37 = v8;
      v38 = 2112;
      v39 = v12;
      v17 = " [%s] %s:%d %@(%p) Failed to register the power spectrum for tap type=%@. error=%@";
      goto LABEL_18;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
LABEL_20:
      LOBYTE(v13) = 0;
      goto LABEL_21;
    }

    v15 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v13)
    {
      goto LABEL_21;
    }

    v26 = 136316162;
    v27 = v15;
    v28 = 2080;
    v29 = "[AVCAudioPowerSpectrumMeter dispatchedRegisterPowerSpectrumForCellularTapType:error:]";
    v30 = 1024;
    v31 = 172;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v12;
    v17 = " [%s] %s:%d Failed to register the power spectrum for tap type=%@. error=%@";
    goto LABEL_13;
  }

  v40[0] = @"vcAudioPowerSpectrumCellularTapType";
  v41[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v40[1] = @"vcAudioPowerSpectrumMeterKeyType";
  v41[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v40[2] = @"vcAudioPowerSpectrumMeterEnableAsyncTapStart";
  v41[2] = [MEMORY[0x1E696AD98] numberWithBool:self->_enableAsyncTapStart];
  v11 = -[AVConferenceXPCClient sendMessageSync:arguments:](self->_connection, "sendMessageSync:arguments:", "vcAudioPowerSpectrumRegisterCellularTap", [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3]);
  v12 = [v11 objectForKeyedSubscript:@"ERROR"];
  if (!v12)
  {
    LOBYTE(v13) = [(AVCAudioPowerSpectrumMeter *)self dispatchedProcessBasebandRegistrationResult:v11 forTapType:v5 withError:a4];
    goto LABEL_21;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_20;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v16 = *MEMORY[0x1E6986650];
    v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v13)
    {
      goto LABEL_21;
    }

    v26 = 136316162;
    v27 = v23;
    v28 = 2080;
    v29 = "[AVCAudioPowerSpectrumMeter dispatchedRegisterPowerSpectrumForCellularTapType:error:]";
    v30 = 1024;
    v31 = 168;
    v32 = 2112;
    v33 = v8;
    v34 = 2112;
    v35 = v12;
    v17 = " [%s] %s:%d Failed to register the power spectrum for tap type=%@. error=%@";
LABEL_13:
    v18 = v16;
    v19 = 48;
LABEL_19:
    _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, v17, &v26, v19);
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    v22 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
  }

  else
  {
    v22 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_20;
  }

  v24 = VRTraceErrorLogLevelToCSTR();
  v21 = *MEMORY[0x1E6986650];
  v13 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v13)
  {
    v26 = 136316674;
    v27 = v24;
    v28 = 2080;
    v29 = "[AVCAudioPowerSpectrumMeter dispatchedRegisterPowerSpectrumForCellularTapType:error:]";
    v30 = 1024;
    v31 = 168;
    v32 = 2112;
    v33 = v22;
    v34 = 2048;
    v35 = self;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v12;
    v17 = " [%s] %s:%d %@(%p) Failed to register the power spectrum for tap type=%@. error=%@";
LABEL_18:
    v18 = v21;
    v19 = 68;
    goto LABEL_19;
  }

LABEL_21:
  if (a4)
  {
    *a4 = v12;
  }

  return v13;
}

- (BOOL)registerPowerSpectrumForCellularTapType:(unsigned int)a3 error:(id *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AVCAudioPowerSpectrumMeter_registerPowerSpectrumForCellularTapType_error___block_invoke;
  block[3] = &unk_1E85F92C0;
  block[4] = self;
  block[5] = &v9;
  v8 = a3;
  block[6] = a4;
  dispatch_sync(stateQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __76__AVCAudioPowerSpectrumMeter_registerPowerSpectrumForCellularTapType_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedRegisterPowerSpectrumForCellularTapType:*(a1 + 56) error:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setEnableAsyncTapStart:(BOOL)a3
{
  v6 = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVCAudioPowerSpectrumMeter_setEnableAsyncTapStart___block_invoke;
  block[3] = &unk_1E85F37A0;
  block[4] = self;
  v5 = a3;
  dispatch_async(stateQueue, block);
}

- (int64_t)streamTokenForCellularTapType:(unsigned int)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = __Block_byref_object_copy__39;
  v25 = __Block_byref_object_dispose__39;
  v26 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AVCAudioPowerSpectrumMeter_streamTokenForCellularTapType___block_invoke;
  block[3] = &unk_1E85F61A8;
  block[4] = self;
  block[5] = &v21;
  v20 = a3;
  dispatch_sync(stateQueue, block);
  v6 = v22[5];
  if (v6)
  {
    v7 = [v6 longValue];
  }

  else
  {
    v7 = 0;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v22[5];
        *buf = 136316418;
        v28 = v9;
        v29 = 2080;
        v30 = "[AVCAudioPowerSpectrumMeter streamTokenForCellularTapType:]";
        v31 = 1024;
        v32 = 205;
        v33 = 2048;
        v34 = v7;
        v35 = 1024;
        *v36 = a3;
        *&v36[4] = 2112;
        *&v36[6] = v11;
        v12 = " [%s] %s:%d Querying token=%ld for tapType=%u, mappedNumber=%@";
        v13 = v10;
        v14 = 54;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = v22[5];
        *buf = 136316930;
        v28 = v15;
        v29 = 2080;
        v30 = "[AVCAudioPowerSpectrumMeter streamTokenForCellularTapType:]";
        v31 = 1024;
        v32 = 205;
        v33 = 2112;
        v34 = v8;
        v35 = 2048;
        *v36 = self;
        *&v36[8] = 2048;
        *&v36[10] = v7;
        v37 = 1024;
        v38 = a3;
        v39 = 2112;
        v40 = v17;
        v12 = " [%s] %s:%d %@(%p) Querying token=%ld for tapType=%u, mappedNumber=%@";
        v13 = v16;
        v14 = 74;
        goto LABEL_14;
      }
    }
  }

  _Block_object_dispose(&v21, 8);
  return v7;
}

id __60__AVCAudioPowerSpectrumMeter_streamTokenForCellularTapType___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)dispatchedUnregisterBasebandTokensForAudioTapType:(unsigned int)a3
{
  v3 = *&a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_basebandAudioTapTypeToStreamTokenMap, "setObject:forKeyedSubscript:", 0, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]);
  if (![(NSMutableDictionary *)self->_basebandAudioTapTypeToStreamTokenMap count])
  {
    self->_sessionToken = 0;
  }
}

- (BOOL)dispatchedUnregisterPowerSpectrumForCellularTapType:(unsigned int)a3 error:(id *)a4
{
  v5 = *&a3;
  v40[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_stateQueue);
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCAudioPowerSpectrumMeter-unregisterPowerSpectrumForCellularTapType");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136316162;
      v26 = v7;
      v27 = 2080;
      v28 = "[AVCAudioPowerSpectrumMeter dispatchedUnregisterPowerSpectrumForCellularTapType:error:]";
      v29 = 1024;
      v30 = 230;
      v31 = 2048;
      v32 = self;
      v33 = 1024;
      LODWORD(v34) = v5;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCAudioPowerSpectrumMeter-unregisterPowerSpectrumForCellularTapType (%p) type=%u", &v25, 0x2Cu);
    }
  }

  v9 = [AVCAudioPowerSpectrumMeter cellularTapTypeWithClientCellularTapType:v5];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
  if (!+[VCHardwareSettings isCellularTappingSupported])
  {
    v11 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32000 detailCode:0 description:@"Platform doesn't support callular tapping"];
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v13 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
      }

      else
      {
        v13 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_20;
      }

      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v12)
      {
        goto LABEL_21;
      }

      v25 = 136316674;
      v26 = v19;
      v27 = 2080;
      v28 = "[AVCAudioPowerSpectrumMeter dispatchedUnregisterPowerSpectrumForCellularTapType:error:]";
      v29 = 1024;
      v30 = 244;
      v31 = 2112;
      v32 = v13;
      v33 = 2048;
      v34 = self;
      v35 = 2112;
      v36 = v10;
      v37 = 2112;
      v38 = v11;
      v16 = " [%s] %s:%d %@(%p) Failed to unregister the power spectrum for tap type=%@. error=%@";
      goto LABEL_18;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
LABEL_20:
      LOBYTE(v12) = 0;
      goto LABEL_21;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      goto LABEL_21;
    }

    v25 = 136316162;
    v26 = v14;
    v27 = 2080;
    v28 = "[AVCAudioPowerSpectrumMeter dispatchedUnregisterPowerSpectrumForCellularTapType:error:]";
    v29 = 1024;
    v30 = 244;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    v16 = " [%s] %s:%d Failed to unregister the power spectrum for tap type=%@. error=%@";
    goto LABEL_13;
  }

  v39 = @"vcAudioPowerSpectrumCellularTapType";
  v40[0] = v10;
  v11 = [-[AVConferenceXPCClient sendMessageSync:arguments:](self->_connection sendMessageSync:"vcAudioPowerSpectrumUnregisterCellularTap" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v40, &v39, 1)), "objectForKeyedSubscript:", @"ERROR"}];
  if (!v11)
  {
    [(AVCAudioPowerSpectrumMeter *)self dispatchedUnregisterBasebandTokensForAudioTapType:v5];
    LOBYTE(v12) = 1;
    goto LABEL_21;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_20;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      goto LABEL_21;
    }

    v25 = 136316162;
    v26 = v22;
    v27 = 2080;
    v28 = "[AVCAudioPowerSpectrumMeter dispatchedUnregisterPowerSpectrumForCellularTapType:error:]";
    v29 = 1024;
    v30 = 239;
    v31 = 2112;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    v16 = " [%s] %s:%d Failed to unregister the power spectrum for tap type=%@. error=%@";
LABEL_13:
    v17 = v15;
    v18 = 48;
LABEL_19:
    _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v16, &v25, v18);
    goto LABEL_20;
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [(AVCAudioPowerSpectrumMeter *)self performSelector:sel_logPrefix];
  }

  else
  {
    v21 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    goto LABEL_20;
  }

  v23 = VRTraceErrorLogLevelToCSTR();
  v20 = *MEMORY[0x1E6986650];
  v12 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
  if (v12)
  {
    v25 = 136316674;
    v26 = v23;
    v27 = 2080;
    v28 = "[AVCAudioPowerSpectrumMeter dispatchedUnregisterPowerSpectrumForCellularTapType:error:]";
    v29 = 1024;
    v30 = 239;
    v31 = 2112;
    v32 = v21;
    v33 = 2048;
    v34 = self;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    v16 = " [%s] %s:%d %@(%p) Failed to unregister the power spectrum for tap type=%@. error=%@";
LABEL_18:
    v17 = v20;
    v18 = 68;
    goto LABEL_19;
  }

LABEL_21:
  if (a4)
  {
    *a4 = v11;
  }

  return v12;
}

- (BOOL)unregisterPowerSpectrumForCellularTapType:(unsigned int)a3 error:(id *)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__AVCAudioPowerSpectrumMeter_unregisterPowerSpectrumForCellularTapType_error___block_invoke;
  block[3] = &unk_1E85F92C0;
  block[4] = self;
  block[5] = &v9;
  v8 = a3;
  block[6] = a4;
  dispatch_sync(stateQueue, block);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __78__AVCAudioPowerSpectrumMeter_unregisterPowerSpectrumForCellularTapType_error___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) dispatchedUnregisterPowerSpectrumForCellularTapType:*(a1 + 56) error:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)setupXPCConnection
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(AVConferenceXPCClient);
  self->_connection = v3;
  if (v3)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v4 setWithObjects:{v5, v6, v7, v8, v9, objc_opt_class(), 0}];
    self->_allowListedXPCObjects = v10;
    if (v10)
    {
      [(AVCAudioPowerSpectrumMeter *)self registerBlocksForNotifications];
      return 1;
    }

    else
    {
      [(AVCAudioPowerSpectrumMeter *)self setupXPCConnection];
      return v12;
    }
  }

  else
  {
    [(AVCAudioPowerSpectrumMeter *)self setupXPCConnection];
    return v13;
  }
}

- (void)cleanupXPCConnection
{
  [(AVCAudioPowerSpectrumMeter *)self deregisterBlocksForService];

  allowListedXPCObjects = self->_allowListedXPCObjects;
}

- (BOOL)storeDelegate:(id)a3 delegateQueue:(id)a4
{
  v4 = self;
  v36 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    [AVCAudioPowerSpectrumMeter storeDelegate:? delegateQueue:?];
    return v4->_delegate && v4->_delegateQueue != 0;
  }

  if (a4)
  {
    self->_delegateQueue = a4;
    dispatch_retain(a4);
  }

  else
  {
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v7 = dispatch_queue_create_with_target_V2("com.apple.AVConference.AVCAudioPowerSpectrumMeter.notificationQueue", 0, CustomRootQueue);
    v4->_delegateQueue = v7;
    if (!v7)
    {
      [AVCAudioPowerSpectrumMeter storeDelegate:v4 delegateQueue:?];
      return v4->_delegate && v4->_delegateQueue != 0;
    }
  }

  objc_storeWeak(&v4->_delegate, a3);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      *buf = 136316674;
      v27 = v8;
      v28 = 2080;
      v29 = "[AVCAudioPowerSpectrumMeter storeDelegate:delegateQueue:]";
      v30 = 1024;
      v31 = 292;
      v32 = 2048;
      *v33 = v4;
      *&v33[8] = 2112;
      *&v33[10] = v11;
      *&v33[18] = 2048;
      *&v33[20] = a3;
      v34 = 2112;
      v35 = NSStringFromClass(v12);
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d self=%p (%@), delegate=%p (%@)", buf, 0x44u);
    }
  }

  v23 = v4;
  outCount = 0;
  v24 = protocol_copyMethodDescriptionList(&unk_1F57D4340, 0, 1, &outCount);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v27 = v13;
      v28 = 2080;
      v29 = "[AVCAudioPowerSpectrumMeter storeDelegate:delegateQueue:]";
      v30 = 1024;
      v31 = 292;
      v32 = 1024;
      *v33 = outCount;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Protocol AVCAudioPowerSpectrumMeterDelegate contains %u optional methods.", buf, 0x22u);
    }
  }

  if (outCount)
  {
    v15 = 0;
    p_name = &v24->name;
    do
    {
      v17 = NSStringFromSelector(*p_name);
      NSSelectorFromString(v17);
      v18 = objc_opt_respondsToSelector();
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v21 = "does NOT respond";
          if (v18)
          {
            v21 = "responds";
          }

          v27 = v19;
          v28 = 2080;
          v29 = "[AVCAudioPowerSpectrumMeter storeDelegate:delegateQueue:]";
          v30 = 1024;
          v31 = 292;
          v32 = 1024;
          *v33 = v15;
          *&v33[4] = 2080;
          *&v33[6] = v21;
          *&v33[14] = 2112;
          *&v33[16] = v17;
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %u: Delegate %s to %@", buf, 0x36u);
        }
      }

      ++v15;
      p_name += 2;
    }

    while (v15 < outCount);
  }

  free(v24);
  v4 = v23;
  return v4->_delegate && v4->_delegateQueue != 0;
}

- (void)cleanupDelegate
{
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
  }

  objc_storeWeak(&self->_delegate, 0);
}

- (BOOL)setupPowerSpectrumMeter
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"vcAudioPowerSpectrumBinCount";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_audioSpectrumBinCount];
  v6[1] = @"vcAudioPowerSpectrumRefreshRate";
  v7[0] = v3;
  v7[1] = [MEMORY[0x1E696AD98] numberWithDouble:self->_audioSpectrumRefreshRate];
  v4 = [-[AVConferenceXPCClient sendMessageSync:arguments:](self->_connection sendMessageSync:"vcAudioPowerSpectrumInitializeRemoteVideoForStreamToken" arguments:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v7, v6, 2)), "objectForKeyedSubscript:", @"ERROR"}];
  if (v4)
  {
    [(AVCAudioPowerSpectrumMeter *)self setupPowerSpectrumMeter];
  }

  return v4 == 0;
}

- (void)invalidateBasebandTokens
{
  v3[5] = *MEMORY[0x1E69E9840];
  stateQueue = self->_stateQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __54__AVCAudioPowerSpectrumMeter_invalidateBasebandTokens__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_sync(stateQueue, v3);
}

uint64_t __54__AVCAudioPowerSpectrumMeter_invalidateBasebandTokens__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 64) removeAllObjects];
  *(*(a1 + 32) + 44) = 0;
  return result;
}

- (void)registerBlocksForNotifications
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcAudioPowerSpectrumServerDidDisconnect" block:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_2;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcAudioPowerSpectrumServerDidReceiveSpectrum" block:v5 queue:0 eventLogLevel:8];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_2_130;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcAudioPowerSpectrumServerSpectrumInterrupted" block:v4];
}

void __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
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
        v17 = v6;
        v18 = 2080;
        v19 = "[AVCAudioPowerSpectrumMeter registerBlocksForNotifications]_block_invoke";
        v20 = 1024;
        v21 = 343;
        v8 = " [%s] %s:%d received callback for serverDidDisconnect";
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
        v17 = v11;
        v18 = 2080;
        v19 = "[AVCAudioPowerSpectrumMeter registerBlocksForNotifications]_block_invoke";
        v20 = 1024;
        v21 = 343;
        v22 = 2112;
        v23 = v5;
        v24 = 2048;
        v25 = v4;
        v8 = " [%s] %s:%d %@(%p) received callback for serverDidDisconnect";
        v9 = v12;
        v10 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_14:
      [v4 invalidateBasebandTokens];
      v13 = [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        v14 = [v4 delegateQueue];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_120;
        v15[3] = &unk_1E85F37F0;
        v15[4] = v13;
        v15[5] = v4;
        dispatch_async(v14, v15);
      }
    }
  }
}

void __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) strong];
  if (v3)
  {
    v4 = v3;
    if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
    {
      v11[0] = 0;
      v5 = [a2 objectForKeyedSubscript:@"vcAudioPowerSpectrumRemoteSpectrum"];
      v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v4[6] fromData:v5 error:v11];
      if (v6)
      {
        v7 = v11[0] == 0;
      }

      else
      {
        v7 = 0;
      }

      if (!v7 && VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_2_cold_1(v8);
        }
      }

      [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        v9 = [v4 delegateQueue];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_128;
        v10[3] = &unk_1E85F37F0;
        v10[4] = v4;
        v10[5] = v6;
        dispatch_async(v9, v10);
      }
    }
  }
}

uint64_t __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_128(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 audioPowerSpectrumMeter:v3 didUpdateAudioPowerSpectrums:v4];
}

void __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_2_130(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) strong];
  if (v3)
  {
    v4 = v3;
    if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
    {
      if (objc_opt_class() == v4)
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
        v16 = v6;
        v17 = 2080;
        v18 = "[AVCAudioPowerSpectrumMeter registerBlocksForNotifications]_block_invoke_2";
        v19 = 1024;
        v20 = 381;
        v8 = " [%s] %s:%d received callback for serverSpectrumInterrupted";
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
        v16 = v11;
        v17 = 2080;
        v18 = "[AVCAudioPowerSpectrumMeter registerBlocksForNotifications]_block_invoke";
        v19 = 1024;
        v20 = 381;
        v21 = 2112;
        v22 = v5;
        v23 = 2048;
        v24 = v4;
        v8 = " [%s] %s:%d %@(%p) received callback for serverSpectrumInterrupted";
        v9 = v12;
        v10 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_14:
      [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        v13 = [v4 delegateQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_132;
        block[3] = &unk_1E85F3778;
        block[4] = v4;
        dispatch_async(v13, block);
      }
    }
  }
}

uint64_t __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_132(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 meterSpectrumCaptureWasInterrupted:v3];
}

- (void)deregisterBlocksForService
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcAudioPowerSpectrumServerDidDisconnect"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcAudioPowerSpectrumServerDidReceiveSpectrum"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcAudioPowerSpectrumServerSpectrumInterrupted"];
}

- (void)audioPowerSpectrumMeter:(id)a3 didUpdateAudioPowerSpectrums:(id)a4
{
  block[6] = *MEMORY[0x1E69E9840];
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__AVCAudioPowerSpectrumMeter_audioPowerSpectrumMeter_didUpdateAudioPowerSpectrums___block_invoke;
  block[3] = &unk_1E85F37F0;
  block[4] = self;
  block[5] = a4;
  dispatch_async(delegateQueue, block);
}

uint64_t __83__AVCAudioPowerSpectrumMeter_audioPowerSpectrumMeter_didUpdateAudioPowerSpectrums___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 audioPowerSpectrumMeter:v3 didUpdateAudioPowerSpectrums:v4];
}

- (void)initWithConfig:(uint64_t)a1 delegate:queue:.cold.1(uint64_t a1)
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
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(uint64_t)a1 delegate:queue:.cold.2(uint64_t a1)
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
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(uint64_t)a1 delegate:queue:.cold.3(uint64_t a1)
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
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(uint64_t)a1 delegate:queue:.cold.4(uint64_t a1)
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
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(uint64_t)a1 delegate:queue:.cold.5(uint64_t a1)
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
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)dispatchedProcessBasebandRegistrationResult:(uint64_t)a1 forTapType:withError:.cold.1(uint64_t a1)
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
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }
}

- (void)dispatchedProcessBasebandRegistrationResult:(uint64_t)a1 forTapType:withError:.cold.2(uint64_t a1)
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
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }
}

- (void)setupXPCConnection
{
  if (objc_opt_class() == a1)
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
    OUTLINED_FUNCTION_2();
    v8 = 28;
LABEL_11:
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v8 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

- (void)storeDelegate:(uint64_t)a1 delegateQueue:.cold.1(uint64_t a1)
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
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)storeDelegate:(uint64_t)a1 delegateQueue:.cold.2(uint64_t a1)
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
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)setupPowerSpectrumMeter
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
    OUTLINED_FUNCTION_2();
    v6 = 38;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_17_0();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

void __60__AVCAudioPowerSpectrumMeter_registerBlocksForNotifications__block_invoke_2_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  v6 = "[AVCAudioPowerSpectrumMeter registerBlocksForNotifications]_block_invoke_2";
  v7 = 1024;
  OUTLINED_FUNCTION_9_9();
  v8 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Decoding: error %@.", &v3, 0x26u);
}

@end