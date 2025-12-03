@interface VCVideoRuleCollectionsImmersiveVideo
- (BOOL)setupMVHEVCRules;
- (void)setupMVHEVCRules;
@end

@implementation VCVideoRuleCollectionsImmersiveVideo

- (BOOL)setupMVHEVCRules
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = vdupq_n_s64(0x40B0E00000000000uLL);
  v35 = vdupq_n_s64(0x40A9500000000000uLL);
  v21 = 0x1E0000005ALL;
  if (![(VCVideoRuleCollections *)self isPayloadSupported:100])
  {
    [(VCVideoRuleCollectionsImmersiveVideo *)buf setupMVHEVCRules];
    return buf[0];
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v3)
  {
    [(VCVideoRuleCollectionsImmersiveVideo *)buf setupMVHEVCRules];
    return buf[0];
  }

  v4 = v3;
  v5 = &v34;
  v6 = &v21;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = [VCVideoRule alloc];
    v10 = *v5->i64;
    v11 = *&v5->i64[1];
    v12 = *v5->i64;
    v13 = *v6;
    *&v14 = *v6;
    v15 = [(VCVideoRule *)v9 initWithFrameWidth:v12 frameHeight:v11 frameRate:100 payload:v14];
    if (!v15)
    {
      break;
    }

    v16 = v15;
    [v4 addObject:v15];

    v7 = 0;
    v6 = &v21 + 1;
    v5 = &v35;
    if ((v8 & 1) == 0)
    {
      v17 = 1;
      [(VCVideoRuleCollections *)self addVideoRules:v4 transportType:1 payload:100 encodingType:1];
      [(VCVideoRuleCollections *)self addVideoRules:v4 transportType:1 payload:100 encodingType:2];
      return v17;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v19 = VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = v19;
      v24 = 2080;
      v25 = "[VCVideoRuleCollectionsImmersiveVideo setupMVHEVCRules]";
      v26 = 1024;
      v27 = 34;
      v28 = 1024;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      v32 = 1024;
      v33 = v13;
      _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate rule for (width=%u, height=%u, frameRate=%u)", buf, 0x2Eu);
    }
  }

  return 0;
}

- (void)setupMVHEVCRules
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate videoRules", v4, v5, v6, v7, 2u);
    }
  }

  *self = 0;
}

@end