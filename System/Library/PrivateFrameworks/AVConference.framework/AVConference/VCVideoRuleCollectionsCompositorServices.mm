@interface VCVideoRuleCollectionsCompositorServices
- (BOOL)setUpHEVCRules;
- (void)setUpHEVCRules;
@end

@implementation VCVideoRuleCollectionsCompositorServices

- (BOOL)setUpHEVCRules
{
  v47 = *MEMORY[0x1E69E9840];
  v45 = xmmword_1DBD47850;
  v46 = xmmword_1DBD47860;
  v29 = 0x3C0000005ALL;
  if (![(VCVideoRuleCollections *)self isPayloadSupported:100])
  {
    [(VCVideoRuleCollectionsCompositorServices *)self setUpHEVCRules];
    return buf[0];
  }

  array = [MEMORY[0x1E695DF70] array];
  if (!array)
  {
    [(VCVideoRuleCollectionsCompositorServices *)self setUpHEVCRules];
    return buf[0];
  }

  v4 = array;
  v5 = 1.0;
  v6 = &v45;
  v7 = &v29;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    v10 = [VCVideoRule alloc];
    v11 = *v6;
    v12 = *(v6 + 1);
    v13 = *v6;
    v14 = *v7;
    *&v15 = *v7;
    v16 = [(VCVideoRule *)v10 initWithFrameWidth:v13 frameHeight:v12 frameRate:100 payload:v15];
    if (!v16)
    {
      break;
    }

    v18 = v16;
    *&v17 = v5;
    [(VCVideoRule *)v16 setFPref:v17];
    [v4 addObject:v18];

    v8 = 0;
    v5 = 0.0;
    v7 = &v29 + 1;
    v6 = &v46;
    if ((v9 & 1) == 0)
    {
      v19 = 1;
      [(VCVideoRuleCollections *)self addVideoRules:v4 transportType:1 payload:100 encodingType:1];
      [(VCVideoRuleCollections *)self addVideoRules:v4 transportType:1 payload:100 encodingType:2];
      return v19;
    }
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136316418;
    v31 = v22;
    v32 = 2080;
    v33 = "[VCVideoRuleCollectionsCompositorServices setUpHEVCRules]";
    v34 = 1024;
    v35 = 38;
    v36 = 1024;
    *v37 = v11;
    *&v37[4] = 1024;
    *&v37[6] = v12;
    LOWORD(selfCopy) = 1024;
    *(&selfCopy + 2) = v14;
    v24 = " [%s] %s:%d Failed to allocate rule for (width=%u, height=%u, frameRate=%u)";
    v25 = v23;
    v26 = 46;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v21 = [(VCVideoRuleCollectionsCompositorServices *)self performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 136316930;
    v31 = v27;
    v32 = 2080;
    v33 = "[VCVideoRuleCollectionsCompositorServices setUpHEVCRules]";
    v34 = 1024;
    v35 = 38;
    v36 = 2112;
    *v37 = v21;
    *&v37[8] = 2048;
    selfCopy = self;
    v39 = 1024;
    v40 = v11;
    v41 = 1024;
    v42 = v12;
    v43 = 1024;
    v44 = v14;
    v24 = " [%s] %s:%d %@(%p) Failed to allocate rule for (width=%u, height=%u, frameRate=%u)";
    v25 = v28;
    v26 = 66;
  }

  _os_log_error_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
  return 0;
}

- (void)setUpHEVCRules
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
    OUTLINED_FUNCTION_11_1();
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
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = 0;
}

@end