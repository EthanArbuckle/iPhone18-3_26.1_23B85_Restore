@interface VCVideoRuleCollectionsCompositorServicesEmbedded
+ (id)sharedInstance;
- (BOOL)initSupportedPayloads;
- (VCVideoRuleCollectionsCompositorServicesEmbedded)initWithHardwareSettings:(id)settings;
- (void)dealloc;
@end

@implementation VCVideoRuleCollectionsCompositorServicesEmbedded

- (VCVideoRuleCollectionsCompositorServicesEmbedded)initWithHardwareSettings:(id)settings
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCVideoRuleCollectionsCompositorServicesEmbedded;
  v4 = [(VCVideoRuleCollections *)&v6 init];
  if (!v4)
  {
    [VCVideoRuleCollectionsCompositorServicesEmbedded initWithHardwareSettings:];
LABEL_8:

    return 0;
  }

  v4->_hardwareSettings = settings;
  if (![(VCVideoRuleCollectionsCompositorServicesEmbedded *)v4 initSupportedPayloads])
  {
    [VCVideoRuleCollectionsCompositorServicesEmbedded initWithHardwareSettings:v4];
    goto LABEL_8;
  }

  if (![(VCVideoRuleCollectionsCompositorServices *)v4 setUpHEVCRules])
  {
    [VCVideoRuleCollectionsCompositorServicesEmbedded initWithHardwareSettings:v4];
    goto LABEL_8;
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCVideoRuleCollectionsCompositorServicesEmbedded;
  [(VCVideoRuleCollections *)&v3 dealloc];
}

+ (id)sharedInstance
{
  if (sharedInstance_token_7 != -1)
  {
    +[VCVideoRuleCollectionsCompositorServicesEmbedded sharedInstance];
  }

  return sharedInstance_videoRulesCollections;
}

VCVideoRuleCollectionsCompositorServicesEmbedded *__66__VCVideoRuleCollectionsCompositorServicesEmbedded_sharedInstance__block_invoke()
{
  result = [[VCVideoRuleCollectionsCompositorServicesEmbedded alloc] initWithHardwareSettings:+[VCHardwareSettingsEmbedded sharedInstance]];
  sharedInstance_videoRulesCollections = result;
  return result;
}

- (BOOL)initSupportedPayloads
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [VCHardwareSettings isHEVCDecodeSupportedForHardwareSettingsMode:9];
  v4 = [VCHardwareSettings isHEVCEncodeSupportedForHardwareSettingsMode:9];
  v5 = v4;
  if (v3 && v4)
  {
    [(VCVideoRuleCollections *)self addSupportedPayload:100];
  }

  v7 = [(NSMutableArray *)self->super.super._supportedPayloads count];
  if (!v7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return v7 != 0;
      }

      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return v7 != 0;
      }

      deviceClass = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
      v19 = 136316418;
      v20 = v10;
      v21 = 2080;
      v22 = "[VCVideoRuleCollectionsCompositorServicesEmbedded initSupportedPayloads]";
      v23 = 1024;
      v24 = 59;
      v25 = 2048;
      v26 = deviceClass;
      v27 = 1024;
      *v28 = v3;
      *&v28[4] = 1024;
      *&v28[6] = v5;
      v13 = " [%s] %s:%d Empty supported payload: device classType=%ld, decodeSupported=%d, encodeSupported=%d";
      v14 = v11;
      v15 = 50;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCVideoRuleCollectionsCompositorServicesEmbedded *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return v7 != 0;
      }

      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return v7 != 0;
      }

      deviceClass2 = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
      v19 = 136316930;
      v20 = v16;
      v21 = 2080;
      v22 = "[VCVideoRuleCollectionsCompositorServicesEmbedded initSupportedPayloads]";
      v23 = 1024;
      v24 = 59;
      v25 = 2112;
      v26 = v9;
      v27 = 2048;
      *v28 = self;
      *&v28[8] = 2048;
      v29 = deviceClass2;
      v30 = 1024;
      v31 = v3;
      v32 = 1024;
      v33 = v5;
      v13 = " [%s] %s:%d %@(%p) Empty supported payload: device classType=%ld, decodeSupported=%d, encodeSupported=%d";
      v14 = v17;
      v15 = 70;
    }

    _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, v13, &v19, v15);
  }

  return v7 != 0;
}

- (void)initWithHardwareSettings:(void *)a1 .cold.1(void *a1)
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
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithHardwareSettings:(void *)a1 .cold.2(void *a1)
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
    OUTLINED_FUNCTION_2_0();
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
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithHardwareSettings:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end