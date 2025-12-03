@interface VCMediaStreamRateAdaptation
- (BOOL)manageRemoteEndpointForEndpointWithSSRC:(unsigned int)c actionType:(unsigned __int8)type;
- (BOOL)start;
- (BOOL)stop;
- (VCMediaStreamRateAdaptation)initWithDelegate:(id)delegate params:(const tagVCMediaStreamRateAdaptationParams *)params;
- (void)configureRateControllerWithConfig:(const tagVCMediaStreamRateAdaptationConfig *)config;
- (void)dealloc;
- (void)manageRemoteEndpointForEndpointsWithSSRC:(id)c actionType:(unsigned __int8)type;
- (void)notifyRateControllerForRemoteEndPointActivity:(unsigned int)activity actionType:(unsigned __int8)type;
- (void)rateController:(id)controller targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter;
- (void)rateController:(id)controller targetBitrateUnchangedForRemoteSSRC:(unsigned int)c targetBitrate:(unsigned int)bitrate;
- (void)start;
@end

@implementation VCMediaStreamRateAdaptation

- (VCMediaStreamRateAdaptation)initWithDelegate:(id)delegate params:(const tagVCMediaStreamRateAdaptationParams *)params
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = VCMediaStreamRateAdaptation;
  v5 = [(VCMediaStreamRateAdaptation *)&v18 init];
  if (v5)
  {
    FigCFWeakReferenceStore();
    v5->_mode = params->var3;
    v5->_multiLinkRateAdaptation = params->var10;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v6;
    v13 = v6;
    v14 = v6;
    v15 = v6;
    var0 = params->var0;
    LOWORD(v12) = 256;
    var2 = params->var2;
    BYTE8(v13) = 1;
    BYTE8(v14) = 0;
    *&v15 = [[VCRateControllerManager getRateControllerSharingGroupWithConnection:var0 usePolicy:v12 sharedInstance:var2], "getRateControllerSharingGroupWithConnection:usePolicy:", params->var9, [VCMediaStreamRateAdaptation resolvePolicyForCurrentConnection:params->var9]];
    DWORD2(v15) = 0;
    v16 = 0;
    v17 = 0;
    v8 = [[AVCRateController alloc] initWithDelegate:v5 params:&var0];
    v5->_vcrcRateController = v8;
    if (v8)
    {
      [(VCMediaStreamRateAdaptation *)v5 configureRateControllerWithConfig:&params->var4];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaStreamRateAdaptation initWithDelegate:v9 params:?];
        }
      }

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  FigCFWeakReferenceStore();

  v3.receiver = self;
  v3.super_class = VCMediaStreamRateAdaptation;
  [(VCMediaStreamRateAdaptation *)&v3 dealloc];
}

- (void)configureRateControllerWithConfig:(const tagVCMediaStreamRateAdaptationConfig *)config
{
  v38 = *MEMORY[0x1E69E9840];
  p_mode = &self->_mode;
  mode = self->_mode;
  if (mode == 3)
  {
    var2 = config->var1.var0.var2;
    if (config->var1.var0.var3 == 2)
    {
      v13 = 9;
    }

    else
    {
      v13 = 8;
    }

    v14 = (config->var1.var0.var3 == 2) << 13;
    if (config->var1.var1.var4)
    {
      v14 = ((config->var1.var0.var3 == 2) << 13) | 0x20000;
    }

    if (self->_multiLinkRateAdaptation)
    {
      v15 = 10;
    }

    else
    {
      v15 = v13;
    }

    v30 = -21846;
    v29 = -1431655766;
    vcrcRateController = self->_vcrcRateController;
    v25[1] = 0;
    v25[2] = 0;
    v25[0] = v15;
    v26 = *&config->var1.var0.var0;
    v27 = var2;
    v28 = 0;
    v31 = 0;
    v32 = v14;
    v33 = -1431655766;
    v11 = v25;
    goto LABEL_13;
  }

  if (mode == 1)
  {
    var1 = config->var1.var0.var1;
    var3 = config->var1.var0.var3;
    LODWORD(v3) = config->var1.var0.var0;
    LODWORD(v4) = config->var1.var0.var2;
    bzero(v25, 0x400uLL);
    v34 = var1;
    v35 = var3;
    v36 = v3;
    v37 = v4;
    vcrcRateController = self->_vcrcRateController;
    v18 = 11;
    v19 = 0;
    v21 = 0;
    v20 = 0;
    v22 = 0;
    v23 = v25;
    v24 = 0;
    v11 = &v18;
LABEL_13:
    [(AVCRateController *)vcrcRateController configure:v11];
    return;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCMediaStreamRateAdaptation *)v16 configureRateControllerWithConfig:v17];
    }
  }
}

- (BOOL)start
{
  v3 = MEMORY[0x1E1289F20](&self->_delegateWeak, a2);
  self->_delegate = v3;
  if (v3)
  {
    vcrcRateController = self->_vcrcRateController;

    return [(AVCRateController *)vcrcRateController start];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [(VCMediaStreamRateAdaptation *)v6 start];
      }
    }

    return 0;
  }
}

- (BOOL)stop
{
  delegate = self->_delegate;
  if (delegate)
  {
    CFRelease(delegate);
    self->_delegate = 0;
  }

  vcrcRateController = self->_vcrcRateController;

  return [(AVCRateController *)vcrcRateController stop];
}

- (void)notifyRateControllerForRemoteEndPointActivity:(unsigned int)activity actionType:(unsigned __int8)type
{
  v18 = *MEMORY[0x1E69E9840];
  if (type >= 2u)
  {
    [VCMediaStreamRateAdaptation notifyRateControllerForRemoteEndPointActivity:type actionType:?];
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    LODWORD(v5) = 16;
    BYTE12(v6) = type ^ 1;
    DWORD2(v6) = activity;
    v4 = [(AVCRateController *)self->_vcrcRateController statisticsCollector:v5];
    AVCStatisticsCollector_SetVCStatistics(v4, &v5);
  }
}

- (void)manageRemoteEndpointForEndpointsWithSSRC:(id)c actionType:(unsigned __int8)type
{
  if (c)
  {
    typeCopy = type;
    if ([c count])
    {
      v7 = 0;
      do
      {
        -[VCMediaStreamRateAdaptation notifyRateControllerForRemoteEndPointActivity:actionType:](self, "notifyRateControllerForRemoteEndPointActivity:actionType:", [objc_msgSend(c objectAtIndexedSubscript:{v7++), "unsignedIntValue"}], typeCopy);
      }

      while (v7 < [c count]);
    }
  }

  else
  {
    [VCMediaStreamRateAdaptation manageRemoteEndpointForEndpointsWithSSRC:? actionType:?];
  }
}

- (void)rateController:(id)controller targetBitrateDidChange:(unsigned int)change rateChangeCounter:(unsigned int)counter
{
  if (self->_vcrcRateController == controller)
  {
    [(VCMediaStreamRateAdaptationDelegate *)self->_delegate rateAdaptation:self targetBitrateDidChange:*&change rateChangeCounter:*&counter];
  }
}

- (void)rateController:(id)controller targetBitrateUnchangedForRemoteSSRC:(unsigned int)c targetBitrate:(unsigned int)bitrate
{
  v5 = *&bitrate;
  v6 = *&c;
  if ((objc_opt_respondsToSelector() & 1) != 0 && self->_vcrcRateController == controller)
  {
    delegate = self->_delegate;

    [(VCMediaStreamRateAdaptationDelegate *)delegate rateAdaptation:self targetBitrateUnchangedForRemoteSSRC:v6 targetBitrate:v5];
  }
}

- (BOOL)manageRemoteEndpointForEndpointWithSSRC:(unsigned int)c actionType:(unsigned __int8)type
{
  if (self->_multiLinkRateAdaptation)
  {
    if (c)
    {
      [(VCMediaStreamRateAdaptation *)self notifyRateControllerForRemoteEndPointActivity:*&c actionType:type];
      LOBYTE(v4) = 1;
      return v4;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v4)
      {
        return v4;
      }

      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v5, v6, v7, v8, v9, v10);
    }
  }

  LOBYTE(v4) = 0;
  return v4;
}

- (void)initWithDelegate:(uint64_t)a1 params:.cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = a1;
  OUTLINED_FUNCTION_0();
  v4 = 48;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot create rate controller!", &v2, 0x1Cu);
}

- (void)configureRateControllerWithConfig:(os_log_t)log .cold.1(uint64_t a1, int *a2, os_log_t log)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCMediaStreamRateAdaptation configureRateControllerWithConfig:]";
  v8 = 1024;
  v9 = 113;
  v10 = 1024;
  v11 = v3;
  _os_log_error_impl(&dword_1DB56E000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d mode=%d is not supported yet", &v4, 0x22u);
}

- (void)start
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  selfCopy = self;
  OUTLINED_FUNCTION_0();
  v4 = 121;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Cannot load and retain delegate successfully!", &v2, 0x1Cu);
}

- (void)notifyRateControllerForRemoteEndPointActivity:(int)a1 actionType:.cold.1(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v4 = 136315906;
      v5 = v2;
      v6 = 2080;
      v7 = "[VCMediaStreamRateAdaptation notifyRateControllerForRemoteEndPointActivity:actionType:]";
      v8 = 1024;
      v9 = 140;
      v10 = 1024;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Attempted to notify rate controller about wrong action type=%d", &v4, 0x22u);
    }
  }
}

- (void)manageRemoteEndpointForEndpointsWithSSRC:(void *)a1 actionType:.cold.1(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 136315650;
    v13 = v3;
    OUTLINED_FUNCTION_0();
    v14 = 157;
    OUTLINED_FUNCTION_2_0();
LABEL_12:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v12 = 136316162;
      v13 = v10;
      OUTLINED_FUNCTION_0();
      v14 = 157;
      v15 = 2112;
      v16 = v2;
      v17 = 2048;
      v18 = a1;
      v4 = &dword_1DB56E000;
      v7 = " [%s] %s:%d %@(%p) RemoteSSRCs are empty!";
      v8 = &v12;
      v5 = v11;
      v6 = OS_LOG_TYPE_ERROR;
      v9 = 48;
      goto LABEL_12;
    }
  }
}

@end