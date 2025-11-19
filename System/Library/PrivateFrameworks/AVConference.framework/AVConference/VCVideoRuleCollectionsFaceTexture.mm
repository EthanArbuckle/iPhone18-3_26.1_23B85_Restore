@interface VCVideoRuleCollectionsFaceTexture
+ (void)addRulesForU1ToCollection:(id)a3;
@end

@implementation VCVideoRuleCollectionsFaceTexture

+ (void)addRulesForU1ToCollection:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (VCFeatureFlagManager_PersonaV2Enabled())
  {
    v4 = 1536;
  }

  else
  {
    v4 = 256;
  }

  v17 = 0u;
  v18 = 0u;
  if (VCFeatureFlagManager_PersonaV2Enabled())
  {
    v5 = 1024;
  }

  else
  {
    v5 = 768;
  }

  v19 = 0uLL;
  v20 = 0uLL;
  v6 = [&unk_1F579D1A0 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = *v18;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(&unk_1F579D1A0);
      }

      v10 = [*(*(&v17 + 1) + 8 * i) intValue];
      v11 = [VCVideoRule alloc];
      LODWORD(v12) = 30.0;
      v13 = [(VCVideoRule *)v11 initWithFrameWidth:v4 frameHeight:v5 frameRate:v10 payload:v12];
      if (!v13)
      {
        [VCVideoRuleCollectionsFaceTexture addRulesForU1ToCollection:a3];
        return;
      }

      v14 = v13;
      v15 = [MEMORY[0x1E695DF70] arrayWithObject:v13];
      if (v10 != 100)
      {
        [a3 addVideoRules:v15 transportType:1 payload:v10 encodingType:1];
LABEL_19:
        [a3 addVideoRules:v15 transportType:1 payload:v10 encodingType:2];
        goto LABEL_20;
      }

      if (+[VCHardwareSettings supportsHEVCEncoding])
      {
        [a3 addVideoRules:v15 transportType:1 payload:100 encodingType:1];
      }

      if (+[VCHardwareSettings supportsHEVCDecoding])
      {
        goto LABEL_19;
      }

LABEL_20:
    }

    v7 = [&unk_1F579D1A0 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }
}

+ (void)addRulesForU1ToCollection:(uint64_t)a1 .cold.1(uint64_t a1)
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
      v7 = "+[VCVideoRuleCollectionsFaceTexture addRulesForU1ToCollection:]";
      v8 = 1024;
      v9 = 24;
      v10 = 2112;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate rule for instance=%@", &v4, 0x26u);
    }
  }
}

@end