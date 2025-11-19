@interface VCVideoRuleCollectionsCompositorServicesMac
- (VCVideoRuleCollectionsCompositorServicesMac)initWithHardwareSettings:(id)a3;
- (void)dealloc;
@end

@implementation VCVideoRuleCollectionsCompositorServicesMac

- (VCVideoRuleCollectionsCompositorServicesMac)initWithHardwareSettings:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCVideoRuleCollectionsCompositorServicesMac;
  v4 = [(VCVideoRuleCollections *)&v6 init];
  if (!v4)
  {
    [VCVideoRuleCollectionsCompositorServicesMac initWithHardwareSettings:];
LABEL_8:

    return 0;
  }

  v4->_hardwareSettings = a3;
  if (![(VCVideoRuleCollectionsCompositorServicesMac *)v4 initSupportedPayloads])
  {
    [VCVideoRuleCollectionsCompositorServicesMac initWithHardwareSettings:v4];
    goto LABEL_8;
  }

  if (![(VCVideoRuleCollectionsCompositorServices *)v4 setUpHEVCRules])
  {
    [VCVideoRuleCollectionsCompositorServicesMac initWithHardwareSettings:v4];
    goto LABEL_8;
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCVideoRuleCollectionsCompositorServicesMac;
  [(VCVideoRuleCollections *)&v3 dealloc];
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