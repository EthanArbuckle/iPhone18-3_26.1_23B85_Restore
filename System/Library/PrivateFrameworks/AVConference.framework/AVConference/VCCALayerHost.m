@interface VCCALayerHost
- (VCCALayerHost)initWithRemoteVideoClient:(id)a3;
- (void)layoutSublayers;
@end

@implementation VCCALayerHost

- (VCCALayerHost)initWithRemoteVideoClient:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCCALayerHost;
  result = [(CALayerHost *)&v5 init];
  if (result)
  {
    result->remoteVideoClient = a3;
  }

  return result;
}

- (void)layoutSublayers
{
  v37 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = VCCALayerHost;
  [(VCCALayerHost *)&v28 layoutSublayers];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [-[VCCALayerHost superlayer](self "superlayer")];
  if (CGRectIsNull(v38))
  {
    goto LABEL_16;
  }

  [-[VCCALayerHost superlayer](self "superlayer")];
  if (CGRectIsEmpty(v39))
  {
    goto LABEL_16;
  }

  [-[VCCALayerHost superlayer](self "superlayer")];
  [(VCCALayerHost *)self setFrame:?];
  [-[VCCALayerHost superlayer](self "superlayer")];
  v4 = v3 * 0.5;
  [-[VCCALayerHost superlayer](self "superlayer")];
  [(VCCALayerHost *)self setPosition:v4, v5 * 0.5];
  v6 = objc_opt_class();
  v7 = MEMORY[0x1E6986650];
  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        [-[VCCALayerHost superlayer](self "superlayer")];
        NSStringFromRect(v40);
        *buf = 136315906;
        v30 = v9;
        OUTLINED_FUNCTION_3_46();
        OUTLINED_FUNCTION_5_37();
        v32 = v11;
        v12 = " [%s] %s:%d superlayer bounds=%@";
        v13 = v10;
        v14 = 38;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      v8 = OUTLINED_FUNCTION_6_1();
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        [-[VCCALayerHost superlayer](self "superlayer")];
        NSStringFromRect(v41);
        *buf = 136316418;
        v30 = v15;
        OUTLINED_FUNCTION_3_46();
        OUTLINED_FUNCTION_5_37();
        v32 = v8;
        v33 = 2048;
        v34 = self;
        v35 = v17;
        v36 = v18;
        v12 = " [%s] %s:%d %@(%p) superlayer bounds=%@";
        v13 = v16;
        v14 = 58;
        goto LABEL_13;
      }
    }
  }

  remoteVideoClient = self->remoteVideoClient;
  if (remoteVideoClient)
  {
    [(VCCALayerHost *)self frame];
    [(AVCRemoteVideoClient *)remoteVideoClient setRemoteVideoLayerBounds:?];
    goto LABEL_16;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *v7;
      if (OUTLINED_FUNCTION_34())
      {
        *buf = 136315650;
        v30 = v21;
        OUTLINED_FUNCTION_3_46();
        v31 = 89;
        v23 = " [%s] %s:%d Invalid AVCRemoteVideoClient instance for the host layer";
        v24 = v22;
        v25 = 28;
LABEL_27:
        _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
      }
    }
  }

  else
  {
    if (OUTLINED_FUNCTION_28_0())
    {
      v20 = OUTLINED_FUNCTION_6_1();
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v26 = VRTraceErrorLogLevelToCSTR();
      v27 = *v7;
      if (OUTLINED_FUNCTION_40())
      {
        *buf = 136316162;
        v30 = v26;
        OUTLINED_FUNCTION_3_46();
        OUTLINED_FUNCTION_5_37();
        v32 = v20;
        v33 = 2048;
        v34 = self;
        v23 = " [%s] %s:%d %@(%p) Invalid AVCRemoteVideoClient instance for the host layer";
        v24 = v27;
        v25 = 48;
        goto LABEL_27;
      }
    }
  }

LABEL_16:
  [MEMORY[0x1E6979518] commit];
}

@end