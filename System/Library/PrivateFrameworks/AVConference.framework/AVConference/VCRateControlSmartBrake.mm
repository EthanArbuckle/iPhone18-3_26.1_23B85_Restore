@interface VCRateControlSmartBrake
- (VCRateControlSmartBrake)init;
- (VCRateControlSmartBrake)initWithCompletionHandler:(id)handler;
- (int)bindInputBuffers;
- (int)bindLSTMBuffers;
- (int)bindOutputBuffers;
- (int)setupModel;
- (int)setupNetAndConfigFromPath:(id)path;
- (tagVCRateControlSmartBrakeConfig)config;
- (void)compileModel;
- (void)dealloc;
- (void)init;
- (void)setupModel;
@end

@implementation VCRateControlSmartBrake

- (VCRateControlSmartBrake)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCRateControlSmartBrake;
  v2 = [(VCObject *)&v8 init];
  v3 = v2;
  if (!v2 || [(VCRateControlSmartBrake *)v2 setupModel]|| [(VCRateControlSmartBrake *)v3 bindInputBuffers]|| [(VCRateControlSmartBrake *)v3 bindOutputBuffers]|| [(VCRateControlSmartBrake *)v3 bindLSTMBuffers])
  {
    goto LABEL_9;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v5 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCRateControlSmartBrake.compilationQueue", 0, CustomRootQueue);
  v3->_compilationQueue = v5;
  if (!v5)
  {
    [(VCRateControlSmartBrake *)v3 init];
LABEL_9:

    return 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__VCRateControlSmartBrake_init__block_invoke;
  v7[3] = &unk_1E85F3778;
  v7[4] = v3;
  dispatch_async(v5, v7);
  return v3;
}

- (VCRateControlSmartBrake)initWithCompletionHandler:(id)handler
{
  self->_completionHandler = [handler copy];

  return [(VCRateControlSmartBrake *)self init];
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  free(self->_dataLSTM);
  compilationQueue = self->_compilationQueue;
  if (compilationQueue)
  {
    dispatch_release(compilationQueue);
  }

  espresso_plan_destroy();
  espresso_context_destroy();
  v4.receiver = self;
  v4.super_class = VCRateControlSmartBrake;
  [(VCObject *)&v4 dealloc];
}

- (int)setupModel
{
  v39 = *MEMORY[0x1E69E9840];
  context = espresso_create_context();
  self->_context = context;
  if (!context)
  {
    [(VCRateControlSmartBrake *)self setupModel];
    return v27;
  }

  plan = espresso_create_plan();
  self->_plan = plan;
  if (!plan)
  {
    [(VCRateControlSmartBrake *)self setupModel];
    return v27;
  }

  v5 = [MEMORY[0x1E69DB518] clientWithIdentifier:310];
  if (!v5)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCRateControlSmartBrake setupModel];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
      }

      else
      {
        v10 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v27 = 136316162;
          v28 = v12;
          v29 = 2080;
          v30 = "[VCRateControlSmartBrake setupModel]";
          v31 = 1024;
          v32 = 226;
          v33 = 2112;
          v34 = v10;
          v35 = 2048;
          selfCopy5 = self;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to load Trial client", &v27, 0x30u);
        }
      }
    }

    goto LABEL_27;
  }

  v6 = v5;
  v7 = [objc_msgSend(objc_msgSend(v5 levelForFactor:@"smartBrakeModel" withNamespaceName:{@"AVCONFERENCE_NETWORK_SMART_BRAKE", "directoryValue"), "path"}];
  if (!v7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCRateControlSmartBrake setupModel];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v15 = *MEMORY[0x1E6986650];
        v8 = -1;
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v27 = 136316418;
          v28 = v14;
          v29 = 2080;
          v30 = "[VCRateControlSmartBrake setupModel]";
          v31 = 1024;
          v32 = 223;
          v33 = 2112;
          v34 = v11;
          v35 = 2048;
          selfCopy5 = self;
          v37 = 1024;
          v38 = -1;
          _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to load Trial client, switch to bundled model instead returnStatus=%d", &v27, 0x36u);
        }

        goto LABEL_28;
      }
    }

LABEL_27:
    v8 = -1;
    goto LABEL_28;
  }

  v8 = [(VCRateControlSmartBrake *)self setupNetAndConfigFromPath:v7];
  if (!v8)
  {
    LOBYTE(v9) = [objc_msgSend(objc_msgSend(objc_msgSend(v6 levelForFactor:@"smartBrakeModel" withNamespaceName:{@"AVCONFERENCE_NETWORK_SMART_BRAKE", "metadata"), "valueForKey:", @"version", "intValue"}];
    goto LABEL_39;
  }

LABEL_28:
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCRateControlSmartBrake setupModel];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v16 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
    }

    else
    {
      v16 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v27 = 136316418;
        v28 = v17;
        v29 = 2080;
        v30 = "[VCRateControlSmartBrake setupModel]";
        v31 = 1024;
        v32 = 231;
        v33 = 2112;
        v34 = v16;
        v35 = 2048;
        selfCopy5 = self;
        v37 = 1024;
        v38 = v8;
        _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to load Trial model, switch to bundled model instead returnStatus=%d", &v27, 0x36u);
      }
    }
  }

  v9 = [(VCRateControlSmartBrake *)self setupNetAndConfigFromPath:0];
  if (!v9)
  {
LABEL_39:
    self->_config.trialVersion = v9;
    v19 = espresso_plan_build();
    if (!v19)
    {
      return v19;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCRateControlSmartBrake setupModel];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
      }

      else
      {
        v21 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v27 = 136316418;
          v28 = v23;
          v29 = 2080;
          v30 = "[VCRateControlSmartBrake setupModel]";
          v31 = 1024;
          v32 = 242;
          v33 = 2112;
          v34 = v21;
          v35 = 2048;
          selfCopy5 = self;
          v37 = 1024;
          v38 = v19;
          v25 = " [%s] %s:%d %@(%p) Unable to build espresso plan, returnStatus=%d";
LABEL_64:
          _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, v25, &v27, 0x36u);
          return v19;
        }
      }
    }

    return v19;
  }

  v19 = v9;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCRateControlSmartBrake setupModel];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v27 = 136316418;
        v28 = v26;
        v29 = 2080;
        v30 = "[VCRateControlSmartBrake setupModel]";
        v31 = 1024;
        v32 = 234;
        v33 = 2112;
        v34 = v22;
        v35 = 2048;
        selfCopy5 = self;
        v37 = 1024;
        v38 = v19;
        v25 = " [%s] %s:%d %@(%p) Unable to load Bundled model returnStatus=%d";
        goto LABEL_64;
      }
    }
  }

  return v19;
}

- (int)setupNetAndConfigFromPath:(id)path
{
  pathCopy = path;
  v34 = *MEMORY[0x1E69E9840];
  if (!path)
  {
    pathCopy = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "pathForResource:ofType:", @"smartBrakeModel", 0}];
  }

  v5 = [pathCopy stringByAppendingPathComponent:@"params.plist"];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v5];
  if (!v6)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCRateControlSmartBrake setupNetAndConfigFromPath:];
        }
      }

      return -2;
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
    }

    else
    {
      v18 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return -2;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return -2;
    }

    v22 = 136316418;
    v23 = v19;
    v24 = 2080;
    v25 = "[VCRateControlSmartBrake setupNetAndConfigFromPath:]";
    v26 = 1024;
    v27 = 258;
    v28 = 2112;
    v29 = v18;
    v30 = 2048;
    selfCopy3 = self;
    v32 = 2112;
    v33 = v5;
    v17 = " [%s] %s:%d %@(%p) Unable to load config file from configPath=%@";
    goto LABEL_23;
  }

  v7 = v6;
  [objc_msgSend(v6 objectForKey:{@"probabilityThresholdOn", "floatValue"}];
  self->_config.thresholdOn = v8;
  [objc_msgSend(v7 objectForKey:{@"probabilityThresholdOff", "floatValue"}];
  self->_config.thresholdOff = v9;
  self->_config.nBandwidthSigmas = [objc_msgSend(v7 objectForKey:{@"nBandwidthSigmas", "intValue"}];

  if (self->_config.thresholdOff == 0.0 || self->_config.thresholdOn == 0.0 || self->_config.nBandwidthSigmas == 0.0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCRateControlSmartBrake setupNetAndConfigFromPath:];
        }
      }

      return -2;
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return -2;
    }

    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return -2;
    }

    v22 = 136316418;
    v23 = v14;
    v24 = 2080;
    v25 = "[VCRateControlSmartBrake setupNetAndConfigFromPath:]";
    v26 = 1024;
    v27 = 265;
    v28 = 2112;
    v29 = v13;
    v30 = 2048;
    selfCopy3 = self;
    v32 = 2112;
    v33 = v5;
    v17 = " [%s] %s:%d %@(%p) Unable to format model config file from configPath=%@";
LABEL_23:
    _os_log_error_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_ERROR, v17, &v22, 0x3Au);
    return -2;
  }

  v10 = [pathCopy stringByAppendingPathComponent:@"model.espresso.net"];
  [v10 UTF8String];
  v11 = espresso_plan_add_network();
  if (v11)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCRateControlSmartBrake setupNetAndConfigFromPath:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v22 = 136316418;
          v23 = v20;
          v24 = 2080;
          v25 = "[VCRateControlSmartBrake setupNetAndConfigFromPath:]";
          v26 = 1024;
          v27 = 270;
          v28 = 2112;
          v29 = v12;
          v30 = 2048;
          selfCopy3 = self;
          v32 = 2112;
          v33 = v10;
          _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unable to format load espresso net file from netPath=%@", &v22, 0x3Au);
        }
      }
    }
  }

  return v11;
}

- (void)compileModel
{
  v36 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (self->_dataLSTMSize)
  {
    v3 = 0;
    do
    {
      self->_dataLSTM[v3++] = 0.0;
    }

    while (v3 < self->_dataLSTMSize);
  }

  self->_isStartTimeSet = 0.0;
  if (espresso_plan_execute_sync())
  {
    error_info = espresso_plan_get_error_info();
    v13 = v12;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *v25 = 136316418;
      *&v25[4] = v17;
      *&v25[12] = 2080;
      *&v25[14] = "[VCRateControlSmartBrake compileModel]";
      v26 = 1024;
      v27 = 359;
      v28 = 1024;
      *v29 = error_info;
      *&v29[4] = 1024;
      *&v29[6] = HIDWORD(error_info);
      *v30 = 2080;
      *&v30[2] = v13;
      v19 = " [%s] %s:%d Error while executing neural network at compilation planStatus=%d, returnStatus=%d, description=%s";
      v20 = v18;
      v21 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *v25 = 136316930;
      *&v25[4] = v22;
      *&v25[12] = 2080;
      *&v25[14] = "[VCRateControlSmartBrake compileModel]";
      v26 = 1024;
      v27 = 359;
      v28 = 2112;
      *v29 = v14;
      *&v29[8] = 2048;
      *v30 = self;
      *&v30[8] = 1024;
      v31 = error_info;
      v32 = 1024;
      v33 = HIDWORD(error_info);
      v34 = 2080;
      v35 = v13;
      v19 = " [%s] %s:%d %@(%p) Error while executing neural network at compilation planStatus=%d, returnStatus=%d, description=%s";
      v20 = v23;
      v21 = 70;
    }

    _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, v25, v21);
LABEL_18:
    v16 = 2;
    goto LABEL_19;
  }

  if (self->_dataLSTMSize)
  {
    v15 = 0;
    do
    {
      self->_dataLSTM[v15++] = 0.0;
    }

    while (v15 < self->_dataLSTMSize);
  }

  self->_isStartTimeSet = 0.0;
  v16 = 1;
LABEL_19:
  self->_compilationStatus = v16;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    (*(completionHandler + 2))(completionHandler, v4, v5, v6, v7, v8, v9, v10, *v25, *&v25[8]);
  }

  kdebug_trace();
}

- (tagVCRateControlSmartBrakeConfig)config
{
  p_config = &self->_config;
  v3 = *&self->_config.thresholdOn;
  v4 = *&p_config->nBandwidthSigmas;
  result.nBandwidthSigmas = *&v4;
  result.trialVersion = BYTE4(v4);
  result.thresholdOn = *&v3;
  result.thresholdOff = *(&v3 + 1);
  return result;
}

- (int)bindInputBuffers
{
  OUTLINED_FUNCTION_14_19();
  v3 = v2 + 216;
  v4 = v2 + 176;
  OUTLINED_FUNCTION_12_13();
  v11 = _VCRateControlSmartBrake_BindEspressoBuffer(v5, v6, v7, v8, v9, v10);
  if (!v11)
  {
    v11 = OUTLINED_FUNCTION_6_37(v11, v3 + 168, "bitrate", v18, v12, v4 + 4);
    if (!v11)
    {
      v11 = OUTLINED_FUNCTION_6_37(v11, v3 + 504, "RTT", v18, v13, v4 + 12);
      if (!v11)
      {
        v11 = OUTLINED_FUNCTION_6_37(v11, v3 + 336, "OWRD", v18, v14, v4 + 8);
        if (!v11)
        {
          v11 = OUTLINED_FUNCTION_6_37(v11, v3 + 672, "APLR", v18, v15, v4 + 16);
          if (!v11)
          {
            LODWORD(v11) = OUTLINED_FUNCTION_6_37(v11, v3 + 840, "VPLR", v18, v16, v4 + 20);
          }
        }
      }
    }
  }

  return v11;
}

- (int)bindOutputBuffers
{
  OUTLINED_FUNCTION_14_19();
  v4 = v3 + 1224;
  v5 = v3 + 200;
  OUTLINED_FUNCTION_12_13();
  result = _VCRateControlSmartBrake_BindEspressoBuffer(v6, v7, v8, v9, v10, v11);
  if (!result)
  {
    result = _VCRateControlSmartBrake_BindEspressoBuffer(self, v4 + 168, "bandwidth", v13, 2, v5 + 4);
    if (!result)
    {
      return _VCRateControlSmartBrake_BindEspressoBuffer(self, v4 + 336, "bandwidthSigma", v13, 2, v5 + 8);
    }
  }

  return result;
}

- (int)bindLSTMBuffers
{
  v49 = *MEMORY[0x1E69E9840];
  v3.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v3.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v47 = v3;
  v48 = v3;
  blob_dimensions = espresso_network_query_blob_dimensions();
  if (blob_dimensions)
  {
    v20 = blob_dimensions;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return v20;
      }

      v23 = VRTraceErrorLogLevelToCSTR();
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return v20;
      }

      v36 = 136316162;
      v37 = v23;
      v38 = 2080;
      OUTLINED_FUNCTION_9_28();
      v39 = v24;
      v40 = "LSTMStateIn";
      v41 = v25;
      LODWORD(selfCopy) = v20;
      OUTLINED_FUNCTION_2();
      v31 = 44;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [(VCRateControlSmartBrake *)self performSelector:sel_logPrefix];
      }

      else
      {
        v22 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return v20;
      }

      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return v20;
      }

      v36 = 136316674;
      v37 = v32;
      v38 = 2080;
      OUTLINED_FUNCTION_9_28();
      v39 = 2112;
      v40 = v22;
      v41 = 2048;
      selfCopy = self;
      v43 = v34;
      v44 = "LSTMStateIn";
      v45 = v35;
      v46 = v20;
      v26 = &dword_1DB56E000;
      v29 = " [%s] %s:%d %@(%p) Unable to read %s buffer shape, returnStatus=%d";
      v30 = &v36;
      v27 = v33;
      v28 = OS_LOG_TYPE_ERROR;
      v31 = 64;
    }

    _os_log_error_impl(v26, v27, v28, v29, v30, v31);
    return v20;
  }

  v5 = v47.i64[1] * v47.i64[0];
  self->_dataLSTMSize = v47.i64[1] * v47.i64[0];
  self->_dataLSTM = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  v6 = vextq_s8(v47, v47, 8uLL);
  v47 = vextq_s8(v48, v48, 8uLL);
  v48 = v6;
  v7 = OUTLINED_FUNCTION_13_18();
  v13 = _VCRateControlSmartBrake_BindEspressoBuffer(v7, v8, v9, v10, v11, v12);
  if (!v13)
  {
    v14 = OUTLINED_FUNCTION_13_18();
    return _VCRateControlSmartBrake_BindEspressoBuffer(v14, v15, v16, v17, v18, v19);
  }

  return v13;
}

- (void)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315650;
    v11 = v3;
    OUTLINED_FUNCTION_0();
    v12 = 172;
    v5 = " [%s] %s:%d Unable to initialize asynchronous compilation dispatch queue";
    v6 = v4;
    v7 = 28;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v10, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [self performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v10 = 136316162;
      v11 = v8;
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      v13 = v2;
      v14 = 2048;
      selfCopy = self;
      v5 = " [%s] %s:%d %@(%p) Unable to initialize asynchronous compilation dispatch queue";
      v6 = v9;
      v7 = 48;
      goto LABEL_12;
    }
  }
}

- (void)setupModel
{
  if (objc_opt_class() == self)
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

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v9 = 28;
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [self performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = -1;
}

- (void)setupNetAndConfigFromPath:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupNetAndConfigFromPath:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)setupNetAndConfigFromPath:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end