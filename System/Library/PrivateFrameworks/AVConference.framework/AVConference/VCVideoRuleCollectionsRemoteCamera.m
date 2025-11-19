@interface VCVideoRuleCollectionsRemoteCamera
- (BOOL)setupHEVCRules;
- (void)setupHEVCRules;
@end

@implementation VCVideoRuleCollectionsRemoteCamera

- (BOOL)setupHEVCRules
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(VCVideoRuleCollections *)self isPayloadSupported:100])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v3)
    {
      v4 = v3;
      v5 = [VCVideoRule alloc];
      LODWORD(v6) = 1114636288;
      v7 = [(VCVideoRule *)v5 initWithFrameWidth:1920 frameHeight:1440 frameRate:100 payload:v6];
      if (v7)
      {
        v8 = v7;
        [v4 addObject:v7];

        v9 = 1;
        [(VCVideoRuleCollections *)self addVideoRules:v4 transportType:1 payload:100 encodingType:1];
        [(VCVideoRuleCollections *)self addVideoRules:v4 transportType:1 payload:100 encodingType:2];
      }

      else
      {
        [(VCVideoRuleCollectionsRemoteCamera *)&v12 setupHEVCRules];
        return v12;
      }
    }

    else
    {
      [(VCVideoRuleCollectionsRemoteCamera *)&v13 setupHEVCRules];
      return v13;
    }
  }

  else
  {
    [(VCVideoRuleCollectionsRemoteCamera *)&v11 setupHEVCRules];
    return v11;
  }

  return v9;
}

- (void)setupHEVCRules
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

@end