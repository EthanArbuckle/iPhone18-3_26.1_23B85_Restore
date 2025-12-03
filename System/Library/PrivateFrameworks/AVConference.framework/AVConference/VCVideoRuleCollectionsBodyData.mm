@interface VCVideoRuleCollectionsBodyData
+ (void)addRulesForU1ToCollection:(id)collection;
@end

@implementation VCVideoRuleCollectionsBodyData

+ (void)addRulesForU1ToCollection:(id)collection
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [&unk_1F579D200 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(&unk_1F579D200);
        }

        intValue = [*(*(&v15 + 1) + 8 * i) intValue];
        v9 = [VCVideoRule alloc];
        LODWORD(v10) = 30.0;
        v11 = [(VCVideoRule *)v9 initWithFrameWidth:480 frameHeight:480 frameRate:intValue payload:v10];
        if (!v11)
        {
          [VCVideoRuleCollectionsBodyData addRulesForU1ToCollection:collection];
          return;
        }

        v12 = v11;
        v13 = [MEMORY[0x1E695DF70] arrayWithObject:v11];
        [collection addVideoRules:v13 transportType:1 payload:intValue encodingType:1];
        [collection addVideoRules:v13 transportType:1 payload:intValue encodingType:2];
      }

      v5 = [&unk_1F579D200 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
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
      v7 = "+[VCVideoRuleCollectionsBodyData addRulesForU1ToCollection:]";
      v8 = 1024;
      v9 = 19;
      v10 = 2112;
      v11 = a1;
      _os_log_error_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to allocate rule for instance=%@", &v4, 0x26u);
    }
  }
}

@end