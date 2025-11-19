@interface VCAudioRuleCollection
+ (BOOL)processPayloads:(id)a3 withMinBlockSize:(unsigned __int16)a4 allowLargerBlockSizes:(BOOL)a5;
+ (int)getForcedPayload;
+ (void)addSupportGuardedPayloadsToBasePayloads:(id)a3 withConfiguration:(id)a4 forSwitchingCase:(BOOL)a5;
+ (void)restrictPayloads:(id)a3 forChannelCount:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPayloadSupported:(int)a3;
- (BOOL)setUpAudioRulesWithConfiguration:(id)a3;
- (BOOL)setUpForcedPayload;
- (VCAudioRuleCollection)init;
- (VCAudioRuleCollection)initWithConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initPrimaryPayload:(int)a3 dtxPayload:(int)a4 redPayload:(int)a5 secondaryPayloads:(id)a6 allowAudioSwitching:(BOOL)a7 sbr:(BOOL)a8 aacBlockSize:(int)a9;
- (id)payloadsForAudioSwitchingWithConfiguration:(id)a3;
- (void)addAudioPayload:(int)a3 isSecondary:(BOOL)a4 sbr:(BOOL)a5;
- (void)addAudioRule:(id)a3;
- (void)addAudioRules:(id)a3;
- (void)clearAudioRules;
- (void)dealloc;
- (void)setRules:(id)a3;
@end

@implementation VCAudioRuleCollection

- (VCAudioRuleCollection)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCAudioRuleCollection;
  v2 = [(VCAudioRuleCollection *)&v4 init];
  if (v2)
  {
    v2->_rules = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_secondaryPayloads = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (VCAudioRuleCollection)initWithConfiguration:(id)a3
{
  v4 = [(VCAudioRuleCollection *)self init];
  v5 = v4;
  if (!v4)
  {
    [VCAudioRuleCollection initWithConfiguration:];
    goto LABEL_4;
  }

  if (!a3)
  {
    [VCAudioRuleCollection initWithConfiguration:v4];
    goto LABEL_4;
  }

  v4->_aacBlockSize = [a3 aacBlockSize];
  v5->_allowAudioSwitching = [a3 allowAudioSwitching];
  v5->_usesSBR = [a3 usesSBR];
  if (![(VCAudioRuleCollection *)v5 setUpAudioRulesWithConfiguration:a3])
  {
LABEL_4:

    return 0;
  }

  return v5;
}

- (id)initPrimaryPayload:(int)a3 dtxPayload:(int)a4 redPayload:(int)a5 secondaryPayloads:(id)a6 allowAudioSwitching:(BOOL)a7 sbr:(BOOL)a8 aacBlockSize:(int)a9
{
  v9 = a8;
  v12 = *&a5;
  v13 = *&a4;
  v14 = *&a3;
  v27 = *MEMORY[0x1E69E9840];
  v15 = [(VCAudioRuleCollection *)self init];
  v16 = v15;
  if (v15)
  {
    v15->_aacBlockSize = a9;
    v15->_allowAudioSwitching = a7;
    [(VCAudioRuleCollection *)v15 addAudioPayload:v14 isSecondary:0 sbr:v9];
    if (v13 != 128)
    {
      [(VCAudioRuleCollection *)v16 addAudioPayload:v13 isSecondary:1 sbr:v9];
    }

    if (v12 != 128)
    {
      [(VCAudioRuleCollection *)v16 addAudioPayload:v12 isSecondary:1 sbr:0];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v17 = [a6 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(a6);
          }

          -[VCAudioRuleCollection addAudioPayload:isSecondary:sbr:](v16, "addAudioPayload:isSecondary:sbr:", [*(*(&v23 + 1) + 8 * v20++) unsignedIntValue], 1, v9);
        }

        while (v18 != v20);
        v18 = [a6 countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v18);
    }
  }

  return v16;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioRuleCollection;
  [(VCAudioRuleCollection *)&v3 dealloc];
}

- (void)addAudioPayload:(int)a3 isSecondary:(BOOL)a4 sbr:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = *&a3;
  v9 = [VCAudioRule alloc];
  aacBlockSize = 0;
  if ((v7 - 101) <= 5 && ((1 << (v7 - 101)) & 0x39) != 0)
  {
    aacBlockSize = self->_aacBlockSize;
  }

  v12 = (v7 == 101 || (v7 - 104) < 3) && v5;
  v13 = [(VCAudioRule *)v9 initWithPayload:v7 isSecondary:v6 sbr:v12 samplesPerBlock:aacBlockSize];
  [(VCAudioRuleCollection *)self addAudioRule:v13];
}

+ (void)restrictPayloads:(id)a3 forChannelCount:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4 == 4)
  {
    v5 = [a1 payloadsForQuadChannel];

    [a3 intersectSet:v5];
  }

  else if (a4 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      __str = 0;
      v7 = a3 ? [objc_msgSend(a3 "description")] : "<nil>";
      asprintf(&__str, "Unexpected requiredChannelCount=%lu, removing all payloads=%s.", a4, v7);
      if (__str)
      {
        __lasts = 0;
        v8 = strtok_r(__str, "\n", &__lasts);
        v9 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v10 = VRTraceErrorLogLevelToCSTR();
            v11 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v15 = v10;
              v16 = 2080;
              v17 = "+[VCAudioRuleCollection restrictPayloads:forChannelCount:]";
              v18 = 1024;
              v19 = 148;
              v20 = 2080;
              v21 = "";
              v22 = 2080;
              v23 = v8;
              _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v8 = strtok_r(0, "\n", &__lasts);
        }

        while (v8);
        free(__str);
      }
    }

    [a3 removeAllObjects];
  }
}

+ (BOOL)processPayloads:(id)a3 withMinBlockSize:(unsigned __int16)a4 allowLargerBlockSizes:(BOOL)a5
{
  v27 = *MEMORY[0x1E69E9840];
  if (a4 == 3)
  {
    return 1;
  }

  v5 = a5;
  v6 = a4;
  if (a4 == 2)
  {
LABEL_5:
    v8 = +[VCAudioRuleCollection payloadsFor10MSBlockSize];
    [a3 addObjectsFromArray:{objc_msgSend(v8, "allObjects")}];
    if (v5)
    {
      return 1;
    }

LABEL_6:
    [a3 intersectSet:v8];
    return 1;
  }

  if (a4 == 1)
  {
    v8 = +[VCAudioRuleCollection payloadsFor5MSBlockSize];
    [a3 addObjectsFromArray:{objc_msgSend(v8, "allObjects")}];
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    __str = 0;
    v10 = a3 ? [objc_msgSend(a3 "description")] : "<nil>";
    asprintf(&__str, "Unexpected minBlockSize=%hu allowLargerBlockSizes=%d, removing all payloads=%s.", v6, v5, v10);
    if (__str)
    {
      __lasts = 0;
      v11 = strtok_r(__str, "\n", &__lasts);
      v12 = MEMORY[0x1E6986650];
      do
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v18 = v13;
            v19 = 2080;
            v20 = "+[VCAudioRuleCollection processPayloads:withMinBlockSize:allowLargerBlockSizes:]";
            v21 = 1024;
            v22 = 186;
            v23 = 2080;
            v24 = "";
            v25 = 2080;
            v26 = v11;
            _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
          }
        }

        v11 = strtok_r(0, "\n", &__lasts);
      }

      while (v11);
      free(__str);
    }
  }

  [a3 removeAllObjects];
  return 0;
}

+ (void)addSupportGuardedPayloadsToBasePayloads:(id)a3 withConfiguration:(id)a4 forSwitchingCase:(BOOL)a5
{
  v8 = +[GKSConnectivitySettings supportsEVSCodec];
  v9 = +[GKSConnectivitySettings supportsRedAudio];
  if (v8)
  {
    [a3 addObject:&unk_1F5798700];
  }

  if ([a4 addACC24])
  {
    [a3 addObject:&unk_1F5798718];
  }

  if (!a5 && v9)
  {

    [a3 addObject:&unk_1F5798730];
  }
}

- (BOOL)setUpForcedPayload
{
  v3 = +[VCAudioRuleCollection getForcedPayload];
  if (v3 != 128)
  {
    v4 = [[VCAudioRule alloc] initWithPayload:v3 isSecondary:0 sbr:self->_usesSBR samplesPerBlock:self->_aacBlockSize];
    [(VCAudioRuleCollection *)self addAudioRule:v4];
  }

  return v3 != 128;
}

+ (int)getForcedPayload
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [+[VCDefaults sharedInstance](VCDefaults forceAudioPayload];
  v3 = v2;
  if (v2 - 97 <= 0x1F)
  {
    if (((1 << (v2 - 97)) & 0x3418B93) != 0)
    {
LABEL_3:
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315906;
          v11 = v4;
          v12 = 2080;
          v13 = "+[VCAudioRuleCollection getForcedPayload]";
          v14 = 1024;
          v15 = 317;
          v16 = 1024;
          v17 = v3;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing audio payload: %d", &v10, 0x22u);
        }
      }

      return v3;
    }

    if (v2 == 128)
    {
      return v3;
    }
  }

  if (v2 <= 0xD && ((1 << v2) & 0x2201) != 0)
  {
    goto LABEL_3;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v7;
      v12 = 2080;
      v13 = "+[VCAudioRuleCollection getForcedPayload]";
      v14 = 1024;
      v15 = 322;
      v16 = 1024;
      v17 = v3;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid payload (%d) for forceAudioPayload. Forcing PureVoice.", &v10, 0x22u);
    }
  }

  return 128;
}

- (void)setRules:(id)a3
{
  if (self->_rules != a3)
  {
    [(VCAudioRuleCollection *)self clearAudioRules];

    [(VCAudioRuleCollection *)self addAudioRules:a3];
  }
}

- (void)addAudioRule:(id)a3
{
  [(NSMutableArray *)self->_rules addObject:?];
  if ([a3 isSecondary])
  {
    secondaryPayloads = self->_secondaryPayloads;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(a3, "payload")}];

    [(NSMutableArray *)secondaryPayloads addObject:v6];
  }
}

- (void)addAudioRules:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [(VCAudioRuleCollection *)self addAudioRule:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (void)clearAudioRules
{
  [(NSMutableArray *)self->_rules removeAllObjects];
  secondaryPayloads = self->_secondaryPayloads;

  [(NSMutableArray *)secondaryPayloads removeAllObjects];
}

- (BOOL)isPayloadSupported:(int)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  rules = self->_rules;
  v5 = [(NSMutableArray *)rules countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(rules);
        }

        if ([*(*(&v11 + 1) + 8 * v8) payload] == a3)
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        ++v8;
      }

      while (v6 != v8);
      v5 = [(NSMutableArray *)rules countByEnumeratingWithState:&v11 objects:v10 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    allowAudioRecording = self->_allowAudioRecording;
    if (allowAudioRecording == [a3 allowAudioRecording] && (allowAudioSwitching = self->_allowAudioSwitching, allowAudioSwitching == objc_msgSend(a3, "allowAudioSwitching")) && (v8 = -[NSMutableArray count](self->_rules, "count"), v8 == objc_msgSend(objc_msgSend(a3, "rules"), "count")))
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      rules = self->_rules;
      v10 = [(NSMutableArray *)rules countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
LABEL_7:
        v13 = 0;
        while (1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(rules);
          }

          v5 = [objc_msgSend(a3 "rules")];
          if (!v5)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [(NSMutableArray *)rules countByEnumeratingWithState:&v16 objects:v15 count:16];
            LOBYTE(v5) = 1;
            if (v11)
            {
              goto LABEL_7;
            }

            return v5;
          }
        }
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [[VCAudioRuleCollection allocWithZone:?]];
  [(VCAudioRuleCollection *)v4 setAllowAudioRecording:self->_allowAudioRecording];
  [(VCAudioRuleCollection *)v4 setAllowAudioSwitching:self->_allowAudioSwitching];
  [(VCAudioRuleCollection *)v4 setAacBlockSize:self->_aacBlockSize];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  rules = self->_rules;
  v6 = [(NSMutableArray *)rules countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(rules);
        }

        [(VCAudioRuleCollection *)v4 addAudioRule:*(*(&v12 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)rules countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)payloadsForAudioSwitchingWithConfiguration:(id)a3
{
  if (!self->_allowAudioSwitching)
  {
    return 0;
  }

  v4 = +[VCAudioRuleCollection secondaryPayloads];
  [VCAudioRuleCollection addSupportGuardedPayloadsToBasePayloads:v4 withConfiguration:a3 forSwitchingCase:1];
  return v4;
}

- (BOOL)setUpAudioRulesWithConfiguration:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  if ([(VCAudioRuleCollection *)self setUpForcedPayload])
  {
LABEL_14:
    LOBYTE(v27) = 1;
    return v27;
  }

  if ([a3 isContinuity])
  {
    v5 = +[VCAudioRuleCollection continuityPayloads];
  }

  else
  {
    v5 = +[VCAudioRuleCollection defaultPayloads];
  }

  v6 = v5;
  [VCAudioRuleCollection addSupportGuardedPayloadsToBasePayloads:v5 withConfiguration:a3 forSwitchingCase:0];
  if (!+[VCAudioRuleCollection processPayloads:withMinBlockSize:allowLargerBlockSizes:](VCAudioRuleCollection, "processPayloads:withMinBlockSize:allowLargerBlockSizes:", v6, [a3 minBlockSize], objc_msgSend(a3, "allowLargerBlockSizes")))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      __str = 0;
      v28 = v6 ? [objc_msgSend(v6 "description")] : "<nil>";
      v38 = a3 ? [objc_msgSend(a3 "description")] : "<nil>";
      asprintf(&__str, "Failed to process payloads=%s with configuration=%s", v28, v38);
      if (__str)
      {
        __lasts = 0;
        v39 = strtok_r(__str, "\n", &__lasts);
        v40 = MEMORY[0x1E6986650];
        do
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v41 = VRTraceErrorLogLevelToCSTR();
            v42 = *v40;
            if (os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316162;
              v55 = v41;
              v56 = 2080;
              v57 = "[VCAudioRuleCollection setUpAudioRulesWithConfiguration:]";
              v58 = 1024;
              v59 = 283;
              v60 = 2080;
              v61 = "";
              v62 = 2080;
              v63 = v39;
              _os_log_error_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
            }
          }

          v39 = strtok_r(0, "\n", &__lasts);
        }

        while (v39);
        free(__str);
      }
    }

    goto LABEL_41;
  }

  +[VCAudioRuleCollection restrictPayloads:forChannelCount:](VCAudioRuleCollection, "restrictPayloads:forChannelCount:", v6, [a3 channelCount]);
  v7 = [(VCAudioRuleCollection *)self payloadsForAudioSwitchingWithConfiguration:a3];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v15 = OUTLINED_FUNCTION_2_9(v7, v8, v9, v10, v11, v12, v13, v14, v44, v46, v48, v50, __lasts, __str);
  if (v15)
  {
    v16 = v15;
    v17 = *v67;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v67 != v17)
        {
          objc_enumerationMutation(v6);
        }

        v19 = -[VCAudioRuleCollection addAudioPayload:isSecondary:sbr:](self, "addAudioPayload:isSecondary:sbr:", [*(*(&v66 + 1) + 8 * i) unsignedIntValue], objc_msgSend(v7, "containsObject:", *(*(&v66 + 1) + 8 * i)), self->_usesSBR);
      }

      v16 = OUTLINED_FUNCTION_2_9(v19, v20, v21, v22, v23, v24, v25, v26, v45, v47, v49, v51, __lasts, __str);
    }

    while (v16);
  }

  if ([v6 count])
  {
    goto LABEL_14;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v29 = [(VCAudioRuleCollection *)self performSelector:sel_logPrefix];
    }

    else
    {
      v29 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_41;
    }

    v35 = VRTraceErrorLogLevelToCSTR();
    v36 = *MEMORY[0x1E6986650];
    v27 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      return v27;
    }

    *buf = 136316418;
    v55 = v35;
    v56 = 2080;
    OUTLINED_FUNCTION_0_4();
    v61 = v29;
    v62 = 2048;
    v63 = self;
    v64 = v37;
    v65 = a3;
    v32 = " [%s] %s:%d %@(%p) Failed to configure any payloads for configuration=%@";
    v33 = v36;
    v34 = 58;
    goto LABEL_29;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    v27 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v27)
    {
      return v27;
    }

    *buf = 136315906;
    v55 = v30;
    v56 = 2080;
    OUTLINED_FUNCTION_0_4();
    v61 = a3;
    v32 = " [%s] %s:%d Failed to configure any payloads for configuration=%@";
    v33 = v31;
    v34 = 38;
LABEL_29:
    _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
  }

LABEL_41:
  LOBYTE(v27) = 0;
  return v27;
}

- (void)initWithConfiguration:(void *)a1 .cold.1(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
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

    v11 = 136315906;
    v12 = v3;
    v13 = 2080;
    OUTLINED_FUNCTION_1_4();
    v14 = 0;
    v5 = " [%s] %s:%d Invalid parameter configuration=%@";
    v6 = v4;
    v7 = 38;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_ERROR, v5, &v11, v7);
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
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v11 = 136316418;
      v12 = v8;
      v13 = 2080;
      OUTLINED_FUNCTION_1_4();
      v14 = v2;
      v15 = 2048;
      v16 = a1;
      v17 = v10;
      v18 = 0;
      v5 = " [%s] %s:%d %@(%p) Invalid parameter configuration=%@";
      v6 = v9;
      v7 = 58;
      goto LABEL_12;
    }
  }
}

- (void)initWithConfiguration:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR();
    v1 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v2 = 136315650;
      v3 = v0;
      v4 = 2080;
      v5 = "[VCAudioRuleCollection initWithConfiguration:]";
      v6 = 1024;
      v7 = 44;
      _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to self init.", &v2, 0x1Cu);
    }
  }
}

@end