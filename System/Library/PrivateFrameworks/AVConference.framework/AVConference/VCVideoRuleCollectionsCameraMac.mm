@interface VCVideoRuleCollectionsCameraMac
- (BOOL)setUp1080pRules:(int)rules;
- (BOOL)setupH264Rules;
- (BOOL)setupH264WifiRules;
- (BOOL)setupHEVCRules;
- (BOOL)setupRules;
- (VCVideoRuleCollectionsCameraMac)initWithHardwareSettings:(id)settings;
- (void)_addWVGAEncodingRules;
- (void)_removeRulesGreaterThan720p;
- (void)_removeRulesGreaterThanVGA;
- (void)_resetJ92EncodingRulesForCameraIsHD:(BOOL)d isWVGA:(BOOL)a is1080:(BOOL)is1080;
- (void)computeDecodingScore;
- (void)computeEncodingScore;
- (void)dealloc;
- (void)initSupportedPayloads;
- (void)resetEncodingRulesForCameraIsHD:(BOOL)d isWVGA:(BOOL)a is1080:(BOOL)is1080;
- (void)setupH264WifiRules;
- (void)setupHEVCRules;
@end

@implementation VCVideoRuleCollectionsCameraMac

- (VCVideoRuleCollectionsCameraMac)initWithHardwareSettings:(id)settings
{
  v28 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = VCVideoRuleCollectionsCameraMac;
  v4 = [(VCVideoRuleCollections *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_hardwareSettings = settings;
    [(VCVideoRuleCollectionsCameraMac *)v4 initSupportedPayloads];
    [(VCVideoRuleCollectionsCameraMac *)v5 computeEncodingScore];
    [(VCVideoRuleCollectionsCameraMac *)v5 computeDecodingScore];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(&v5->super._decodeHighDef + 3);
        v9 = *(&v5->super.super._encodingType + 1);
        encodeScore = v5->_encodeScore;
        v11 = *(&v5->super.super._encodingType + 2);
        *buf = 136316674;
        v15 = v6;
        v16 = 2080;
        v17 = "[VCVideoRuleCollectionsCameraMac initWithHardwareSettings:]";
        v18 = 1024;
        v19 = 37;
        v20 = 1024;
        v21 = v8;
        v22 = 1024;
        v23 = v9;
        v24 = 1024;
        v25 = encodeScore;
        v26 = 1024;
        v27 = v11;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d encode score = %d, encodingHighDef = %d decoding score = %d, decodeHighDef = %d", buf, 0x34u);
      }
    }

    if (![(VCVideoRuleCollectionsCameraMac *)v5 setupRules])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoRuleCollectionsCameraMac initWithHardwareSettings:];
        }
      }

      return 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = VCVideoRuleCollectionsCameraMac;
  [(VCVideoRuleCollections *)&v2 dealloc];
}

- (void)initSupportedPayloads
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  supportedVideoPayloads = [(VCHardwareSettingsMacProtocol *)self->_hardwareSettings supportedVideoPayloads];
  v4 = [supportedVideoPayloads countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(supportedVideoPayloads);
        }

        -[VCVideoRuleCollections addSupportedPayload:](self, "addSupportedPayload:", [*(*(&v9 + 1) + 8 * v7++) unsignedIntValue]);
      }

      while (v5 != v7);
      v5 = [supportedVideoPayloads countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

- (void)computeEncodingScore
{
  v24 = *MEMORY[0x1E69E9840];
  encodingScore = [+[VCDefaults sharedInstance](VCDefaults encodingScore];
  if (encodingScore - 1 > 0x1D)
  {
    *(&self->super.super._encodingType + 1) = [(VCHardwareSettingsMacProtocol *)self->_hardwareSettings canDoHiDefEncoding];
    *(&self->super._decodeHighDef + 3) = [(VCHardwareSettingsMacProtocol *)self->_hardwareSettings hardwareScore];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(&self->super._decodeHighDef + 3);
        v13 = *(&self->super.super._encodingType + 1);
        v14 = 136316162;
        v15 = v10;
        v16 = 2080;
        v17 = "[VCVideoRuleCollectionsCameraMac computeEncodingScore]";
        v18 = 1024;
        v19 = 81;
        v20 = 1024;
        v21 = v12;
        v22 = 1024;
        v23 = v13;
        v7 = " [%s] %s:%d Setting encode score to %d, _encodeHighDef=%d";
        v8 = v11;
        v9 = 40;
        goto LABEL_8;
      }
    }
  }

  else
  {
    *(&self->super._decodeHighDef + 3) = encodingScore;
    *(&self->super.super._encodingType + 1) = encodingScore > 0x18;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(&self->super._decodeHighDef + 3);
        v14 = 136315906;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCVideoRuleCollectionsCameraMac computeEncodingScore]";
        v18 = 1024;
        v19 = 77;
        v20 = 1024;
        v21 = v6;
        v7 = " [%s] %s:%d Found default encode score setting, setting encode score to %d";
        v8 = v5;
        v9 = 34;
LABEL_8:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
      }
    }
  }
}

- (void)computeDecodingScore
{
  v3 = *(&self->super._decodeHighDef + 3);
  self->_encodeScore = v3;
  v4 = *(&self->super.super._encodingType + 1);
  *(&self->super.super._encodingType + 2) = v4;
  if ((v4 & 1) != 0 || v3 >= 0x16)
  {
    self->_encodeScore = 30;
  }

  if ([+[VCDefaults canDecodeHD] sharedInstance]
  {
    [(VCHardwareSettingsMacProtocol *)self->_hardwareSettings canDoHiDefDecoding];
  }

  *(&self->super.super._encodingType + 2) = self->_encodeScore > 0x19;
}

- (BOOL)setupH264WifiRules
{
  v3 = [VCVideoRule alloc];
  LODWORD(v4) = 15.0;
  v5 = [(VCVideoRule *)v3 initWithFrameWidth:320 frameHeight:240 frameRate:126 payload:v4];
  if (!v5)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    goto LABEL_38;
  }

  v6 = [VCVideoRule alloc];
  LODWORD(v7) = 30.0;
  v49 = [(VCVideoRule *)v6 initWithFrameWidth:320 frameHeight:240 frameRate:126 payload:v7];
  if (!v49)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

LABEL_38:
    v42 = 0;
    v37 = 0;
    v33 = 0;
    v29 = 0;
    v25 = 0;
    v44 = 0;
    v45 = 0;
    v19 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
LABEL_84:
    v41 = 0;
    v39 = 0;
    goto LABEL_31;
  }

  v8 = [VCVideoRule alloc];
  LODWORD(v9) = 15.0;
  v48 = [(VCVideoRule *)v8 initWithFrameWidth:480 frameHeight:368 frameRate:126 payload:v9];
  if (!v48)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    v33 = 0;
    v29 = 0;
    v25 = 0;
    v44 = 0;
    v45 = 0;
    v19 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    goto LABEL_84;
  }

  v10 = [VCVideoRule alloc];
  LODWORD(v11) = 30.0;
  v46 = [(VCVideoRule *)v10 initWithFrameWidth:480 frameHeight:368 frameRate:126 payload:v11];
  if (!v46)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    v33 = 0;
    v29 = 0;
    v25 = 0;
    v44 = 0;
    v45 = 0;
    v19 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_84;
  }

  v12 = [VCVideoRule alloc];
  LODWORD(v13) = 15.0;
  v47 = [(VCVideoRule *)v12 initWithFrameWidth:640 frameHeight:480 frameRate:126 payload:v13];
  if (!v47)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    v33 = 0;
    v29 = 0;
    v25 = 0;
    v44 = 0;
    v45 = 0;
    v19 = 0;
    v47 = 0;
    goto LABEL_84;
  }

  v14 = [VCVideoRule alloc];
  LODWORD(v15) = 30.0;
  v45 = [(VCVideoRule *)v14 initWithFrameWidth:640 frameHeight:480 frameRate:126 payload:v15];
  if (!v45)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    v33 = 0;
    v29 = 0;
    v25 = 0;
    v44 = 0;
    v45 = 0;
    goto LABEL_59;
  }

  v16 = [VCVideoRule alloc];
  LODWORD(v17) = 15.0;
  v18 = [(VCVideoRule *)v16 initWithFrameWidth:848 frameHeight:480 frameRate:126 payload:v17];
  if (!v18)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    v33 = 0;
    v29 = 0;
    v25 = 0;
    v44 = 0;
LABEL_59:
    v19 = 0;
    goto LABEL_84;
  }

  v19 = v18;
  v20 = [VCVideoRule alloc];
  LODWORD(v21) = 30.0;
  v44 = [(VCVideoRule *)v20 initWithFrameWidth:848 frameHeight:480 frameRate:126 payload:v21];
  if (!v44)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    v33 = 0;
    v29 = 0;
    v25 = 0;
    v44 = 0;
    goto LABEL_84;
  }

  v22 = [VCVideoRule alloc];
  LODWORD(v23) = 15.0;
  v24 = [(VCVideoRule *)v22 initWithFrameWidth:1024 frameHeight:768 frameRate:126 payload:v23];
  if (!v24)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    v33 = 0;
    v29 = 0;
    v25 = 0;
    goto LABEL_84;
  }

  v25 = v24;
  v26 = [VCVideoRule alloc];
  LODWORD(v27) = 30.0;
  v28 = [(VCVideoRule *)v26 initWithFrameWidth:1024 frameHeight:768 frameRate:126 payload:v27];
  if (!v28)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    v33 = 0;
    v29 = 0;
    goto LABEL_84;
  }

  v29 = v28;
  v30 = [VCVideoRule alloc];
  LODWORD(v31) = 15.0;
  v32 = [(VCVideoRule *)v30 initWithFrameWidth:1280 frameHeight:720 frameRate:126 payload:v31];
  if (!v32)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    v33 = 0;
    goto LABEL_84;
  }

  v33 = v32;
  v34 = [VCVideoRule alloc];
  LODWORD(v35) = 30.0;
  v36 = [(VCVideoRule *)v34 initWithFrameWidth:1280 frameHeight:720 frameRate:126 payload:v35];
  if (!v36)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v37 = 0;
    goto LABEL_84;
  }

  v37 = v36;
  v38 = objc_opt_new();
  if (!v38)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    goto LABEL_84;
  }

  v39 = v38;
  v40 = objc_opt_new();
  if (v40)
  {
    v41 = v40;
    [v39 addObject:v5];
    if (*(&self->super._decodeHighDef + 3) >= 0xBu)
    {
      [v39 addObject:v49];
      [v39 addObject:v48];
      if (*(&self->super._decodeHighDef + 3) >= 0x10u)
      {
        [v39 addObject:v47];
        if (*(&self->super._decodeHighDef + 3) >= 0x15u)
        {
          [v39 addObject:v46];
          [v39 addObject:v45];
          if (*(&self->super._decodeHighDef + 3) >= 0x1Au)
          {
            [v39 addObject:v25];
            [v39 addObject:v33];
            if (*(&self->super._decodeHighDef + 3) >= 0x1Du)
            {
              [v39 addObject:v29];
              [v39 addObject:v37];
            }
          }
        }
      }
    }

    [v41 addObject:{v5, v44}];
    if (self->_encodeScore >= 0xB)
    {
      [v41 addObject:v49];
      [v41 addObject:v48];
      if (self->_encodeScore >= 0x10)
      {
        [v41 addObject:v47];
        if (self->_encodeScore >= 0x15)
        {
          [v41 addObject:v46];
          [v41 addObject:v45];
          [v41 addObject:v44];
          if (self->_encodeScore >= 0x1A)
          {
            [v41 addObject:v33];
            if (self->_encodeScore >= 0x1D)
            {
              [v41 addObject:v37];
            }
          }
        }
      }
    }

    if ([(VCVideoRuleCollections *)self isPayloadSupported:126])
    {
      [(VCVideoRuleCollections *)self addVideoRules:v39 transportType:1 payload:126 encodingType:1];
      [(VCVideoRuleCollections *)self addVideoRules:v41 transportType:1 payload:126 encodingType:2];
    }

    v42 = 1;
    if ([(VCVideoRuleCollections *)self isPayloadSupported:123])
    {
      [(VCVideoRuleCollections *)self addVideoRules:v39 transportType:1 payload:123 encodingType:1];
      [(VCVideoRuleCollections *)self addVideoRules:v41 transportType:1 payload:123 encodingType:2];
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setupH264WifiRules];
      }
    }

    v42 = 0;
    v41 = 0;
  }

LABEL_31:

  return v42;
}

- (BOOL)setupHEVCRules
{
  if ([(VCHardwareSettingsMacProtocol *)self->_hardwareSettings supportHEVC]&& [(VCHardwareSettingsMacProtocol *)self->_hardwareSettings canDoHEVC]&& [(VCVideoRuleCollections *)self isPayloadSupported:100])
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = v6;
    if (v3)
    {
      if (v4)
      {
        if (v5)
        {
          if (v6)
          {
            v8 = [VCVideoRule alloc];
            LODWORD(v9) = 15.0;
            v10 = [(VCVideoRule *)v8 initWithFrameWidth:320 frameHeight:240 frameRate:126 payload:v9];
            if (v10)
            {
              v11 = v10;
              v12 = [VCVideoRule alloc];
              LODWORD(v13) = 15.0;
              v14 = [(VCVideoRule *)v12 initWithFrameWidth:480 frameHeight:368 frameRate:126 payload:v13];
              if (v14)
              {
                v15 = v14;
                v16 = [VCVideoRule alloc];
                LODWORD(v17) = 30.0;
                v18 = [(VCVideoRule *)v16 initWithFrameWidth:480 frameHeight:368 frameRate:126 payload:v17];
                v19 = [VCVideoRule alloc];
                LODWORD(v20) = 15.0;
                v70 = [(VCVideoRule *)v19 initWithFrameWidth:480 frameHeight:272 frameRate:100 payload:v20];
                if (v70)
                {
                  v21 = [VCVideoRule alloc];
                  LODWORD(v22) = 30.0;
                  v68 = [(VCVideoRule *)v21 initWithFrameWidth:480 frameHeight:272 frameRate:100 payload:v22];
                  if (v68)
                  {
                    v23 = [VCVideoRule alloc];
                    LODWORD(v24) = 30.0;
                    v73 = [(VCVideoRule *)v23 initWithFrameWidth:1024 frameHeight:768 frameRate:100 payload:v24];
                    if (v73)
                    {
                      v25 = [VCVideoRule alloc];
                      LODWORD(v26) = 30.0;
                      v74 = [(VCVideoRule *)v25 initWithFrameWidth:1024 frameHeight:576 frameRate:100 payload:v26];
                      if (v74)
                      {
                        v27 = [VCVideoRule alloc];
                        LODWORD(v28) = 30.0;
                        v72 = [(VCVideoRule *)v27 initWithFrameWidth:1280 frameHeight:720 frameRate:100 payload:v28];
                        if (v72)
                        {
                          v29 = [VCVideoRule alloc];
                          LODWORD(v30) = 1114636288;
                          v71 = [(VCVideoRule *)v29 initWithFrameWidth:1280 frameHeight:720 frameRate:100 payload:v30];
                          if (v71)
                          {
                            [v5 addObject:v11];
                            [v5 addObject:v15];
                            [v5 addObject:v18];
                            [v5 addObject:v73];
                            [v5 addObject:v74];
                            if ([(VCHardwareSettingsMacProtocol *)self->_hardwareSettings vcpSupportsHEVCEncoder])
                            {
                              [(VCVideoRuleCollections *)self addVideoRules:v5 transportType:2 payload:100 encodingType:1];
                            }

                            v31 = [VCVideoRule alloc];
                            LODWORD(v32) = 30.0;
                            v69 = [(VCVideoRule *)v31 initWithFrameWidth:480 frameHeight:272 frameRate:100 payload:v32];
                            if (v69)
                            {
                              v67 = v4;
                              v33 = [VCVideoRule alloc];
                              LODWORD(v34) = 30.0;
                              v35 = [(VCVideoRule *)v33 initWithFrameWidth:1024 frameHeight:576 frameRate:100 payload:v34];
                              if (v35)
                              {
                                v37 = v35;
                                LODWORD(v36) = 1.0;
                                [(VCVideoRule *)v69 setFPref:v36];
                                LODWORD(v38) = 1.0;
                                [v37 setFPref:v38];
                                [v7 addObject:v11];
                                [v7 addObject:v15];
                                [v7 addObject:v18];
                                [v7 addObject:v70];
                                [v7 addObject:v69];
                                v65 = v37;
                                [v7 addObject:v37];
                                [(VCVideoRuleCollections *)self addVideoRules:v7 transportType:2 payload:100 encodingType:2];
                                [v3 addObject:v74];
                                [v3 addObject:v73];
                                [v3 addObject:v72];
                                [v3 addObject:v71];
                                v66 = v18;
                                if ([+[VCDefaults forceHWI] sharedInstance]
                                {
                                  v4 = v67;
                                  if ([+[VCDefaults forceVideoPayload]== 100 sharedInstance]
                                  {
                                    v39 = v3;
                                    v40 = [VCVideoRule alloc];
                                    v64 = v11;
                                    forceEncodeWidth = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
                                    forceEncodeHeight = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
                                    *&v43 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeFramerate];
                                    v44 = v40;
                                    v3 = v39;
                                    v4 = v67;
                                    v45 = [(VCVideoRule *)v44 initWithFrameWidth:forceEncodeWidth frameHeight:forceEncodeHeight frameRate:100 payload:v43];
                                    [v3 addObject:v45];
                                    v46 = 1;
                                    [(VCVideoRuleCollections *)self addVideoRules:v3 transportType:1 payload:100 encodingType:1];

                                    v11 = v64;
                                  }

                                  else
                                  {
                                    v46 = 0;
                                  }
                                }

                                else
                                {
                                  v46 = 0;
                                  v4 = v67;
                                }

                                if ([(VCHardwareSettingsMacProtocol *)self->_hardwareSettings vcpSupportsHEVCEncoder])
                                {
                                  [(VCVideoRuleCollections *)self addVideoRules:v3 transportType:1 payload:100 encodingType:1];
                                }

                                v49 = v3;
                                [v4 addObject:v74];
                                [v4 addObject:v72];
                                [v4 addObject:v71];
                                if ((v46 & [+[VCDefaults forceHWI] sharedInstance]== 1)
                                {
                                  v50 = v11;
                                  v51 = [VCVideoRule alloc];
                                  forceEncodeWidth2 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeWidth];
                                  forceEncodeHeight2 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeHeight];
                                  *&v54 = [+[VCDefaults sharedInstance](VCDefaults forceEncodeFramerate];
                                  v55 = [(VCVideoRule *)v51 initWithFrameWidth:forceEncodeWidth2 frameHeight:forceEncodeHeight2 frameRate:100 payload:v54];
                                  [v4 addObject:v55];

                                  v11 = v50;
                                }

                                v47 = 1;
                                [(VCVideoRuleCollections *)self addVideoRules:v4 transportType:1 payload:100 encodingType:2];
                                v57 = v65;
                                v56 = v66;
                                v58 = v15;
                                v59 = v68;
                                goto LABEL_32;
                              }

                              v49 = v3;
                              if (VRTraceGetErrorLogLevelForModule() >= 3)
                              {
                                VRTraceErrorLogLevelToCSTR();
                                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                                {
                                  [VCVideoRuleCollectionsCameraMac setupHEVCRules];
                                }
                              }

                              v47 = 0;
                              v56 = v18;
                              v58 = v15;
                              goto LABEL_84;
                            }

                            v62 = v18;
                            v63 = v15;
                            v49 = v3;
                            if (VRTraceGetErrorLogLevelForModule() >= 3)
                            {
                              VRTraceErrorLogLevelToCSTR();
                              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                              {
                                [VCVideoRuleCollectionsCameraMac setupHEVCRules];
                              }
                            }

                            v69 = 0;
                          }

                          else
                          {
                            v62 = v18;
                            v63 = v15;
                            v49 = v3;
                            if (VRTraceGetErrorLogLevelForModule() >= 3)
                            {
                              VRTraceErrorLogLevelToCSTR();
                              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                              {
                                [VCVideoRuleCollectionsCameraMac setupHEVCRules];
                              }
                            }

                            v69 = 0;
                            v71 = 0;
                          }
                        }

                        else
                        {
                          v62 = v18;
                          v63 = v15;
                          v49 = v3;
                          if (VRTraceGetErrorLogLevelForModule() >= 3)
                          {
                            VRTraceErrorLogLevelToCSTR();
                            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                            {
                              [VCVideoRuleCollectionsCameraMac setupHEVCRules];
                            }
                          }

                          v69 = 0;
                          v71 = 0;
                          v72 = 0;
                        }
                      }

                      else
                      {
                        v62 = v18;
                        v63 = v15;
                        v49 = v3;
                        if (VRTraceGetErrorLogLevelForModule() >= 3)
                        {
                          VRTraceErrorLogLevelToCSTR();
                          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                          {
                            [VCVideoRuleCollectionsCameraMac setupHEVCRules];
                          }
                        }

                        v69 = 0;
                        v71 = 0;
                        v72 = 0;
                        v74 = 0;
                      }
                    }

                    else
                    {
                      v62 = v18;
                      v63 = v15;
                      v49 = v3;
                      if (VRTraceGetErrorLogLevelForModule() >= 3)
                      {
                        VRTraceErrorLogLevelToCSTR();
                        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                        {
                          [VCVideoRuleCollectionsCameraMac setupHEVCRules];
                        }
                      }

                      v69 = 0;
                      v71 = 0;
                      v72 = 0;
                      v74 = 0;
                      v73 = 0;
                    }

                    v47 = 0;
                    v56 = v62;
                    v58 = v63;
LABEL_84:
                    v57 = 0;
                    v59 = v68;
                    goto LABEL_32;
                  }

                  v60 = v18;
                  v61 = v15;
                  v49 = v3;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      [VCVideoRuleCollectionsCameraMac setupHEVCRules];
                    }
                  }

                  v69 = 0;
                  v71 = 0;
                  v72 = 0;
                  v74 = 0;
                  v73 = 0;
                  v59 = 0;
                }

                else
                {
                  v60 = v18;
                  v61 = v15;
                  v49 = v3;
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    VRTraceErrorLogLevelToCSTR();
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      [VCVideoRuleCollectionsCameraMac setupHEVCRules];
                    }
                  }

                  v69 = 0;
                  v71 = 0;
                  v72 = 0;
                  v74 = 0;
                  v73 = 0;
                  v59 = 0;
                  v70 = 0;
                }

                v47 = 0;
                v56 = v60;
                v58 = v61;
                v57 = 0;
LABEL_32:

                return v47;
              }

              v49 = v3;
              if (VRTraceGetErrorLogLevelForModule() >= 3)
              {
                VRTraceErrorLogLevelToCSTR();
                if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                {
                  [VCVideoRuleCollectionsCameraMac setupHEVCRules];
                }
              }

              v57 = 0;
              v69 = 0;
              v71 = 0;
              v72 = 0;
              v74 = 0;
              v73 = 0;
              v59 = 0;
              v70 = 0;
              v56 = 0;
              v58 = 0;
LABEL_49:
              v47 = 0;
              goto LABEL_32;
            }

            v49 = v3;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCVideoRuleCollectionsCameraMac setupHEVCRules];
              }
            }
          }

          else
          {
            v49 = v3;
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCVideoRuleCollectionsCameraMac setupHEVCRules];
              }
            }
          }
        }

        else
        {
          v49 = v3;
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCVideoRuleCollectionsCameraMac setupHEVCRules];
            }
          }
        }
      }

      else
      {
        v49 = v3;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCVideoRuleCollectionsCameraMac setupHEVCRules];
          }
        }
      }
    }

    else
    {
      v49 = 0;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoRuleCollectionsCameraMac setupHEVCRules];
        }
      }
    }

    v57 = 0;
    v69 = 0;
    v71 = 0;
    v72 = 0;
    v74 = 0;
    v73 = 0;
    v59 = 0;
    v70 = 0;
    v56 = 0;
    v58 = 0;
    v11 = 0;
    goto LABEL_49;
  }

  return 1;
}

- (BOOL)setupH264Rules
{
  if ([(VCVideoRuleCollections *)self isPayloadSupported:126]|| [(VCVideoRuleCollections *)self isPayloadSupported:123])
  {
    setupH264WifiRules = [(VCVideoRuleCollectionsCameraMac *)self setupH264WifiRules];
    if (setupH264WifiRules)
    {

      LOBYTE(setupH264WifiRules) = [(VCVideoRuleCollectionsCamera *)self setupH264CellularRules];
    }
  }

  else
  {
    LOBYTE(setupH264WifiRules) = 1;
  }

  return setupH264WifiRules;
}

- (BOOL)setUp1080pRules:(int)rules
{
  v3 = *&rules;
  if ((rules != 100 || [(VCHardwareSettingsMacProtocol *)self->_hardwareSettings supportHEVC]&& [(VCHardwareSettingsMacProtocol *)self->_hardwareSettings canDoHEVC]) && [(VCVideoRuleCollections *)self isPayloadSupported:v3])
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = v6;
    if (v5)
    {
      if (v6)
      {
        if (v3 == 123)
        {
          v8 = 126;
        }

        else
        {
          v8 = v3;
        }

        v9 = [VCVideoRule alloc];
        LODWORD(v10) = 30.0;
        v11 = [(VCVideoRule *)v9 initWithFrameWidth:1920 frameHeight:1080 frameRate:v8 payload:v10];
        if (v11)
        {
          v12 = v11;
          v13 = [VCVideoRule alloc];
          LODWORD(v14) = 1114636288;
          v15 = [(VCVideoRule *)v13 initWithFrameWidth:1920 frameHeight:1080 frameRate:v8 payload:v14];
          v16 = [VCVideoRule alloc];
          LODWORD(v17) = 30.0;
          v18 = [(VCVideoRule *)v16 initWithFrameWidth:1664 frameHeight:1248 frameRate:v8 payload:v17];
          if (v18)
          {
            v19 = v18;
            v20 = [VCVideoRule alloc];
            LODWORD(v21) = 1114636288;
            v22 = [(VCVideoRule *)v20 initWithFrameWidth:1088 frameHeight:1088 frameRate:v8 payload:v21];
            v23 = [VCVideoRule alloc];
            LODWORD(v24) = 30.0;
            v25 = [(VCVideoRule *)v23 initWithFrameWidth:1088 frameHeight:1088 frameRate:v8 payload:v24];
            if (![(VCHardwareSettingsMacProtocol *)self->_hardwareSettings supports1080pEncoding])
            {
              goto LABEL_17;
            }

            [v5 addObject:v12];
            [v5 addObject:v19];
            [v5 addObject:v22];
            [v5 addObject:v25];
            v26 = v3;
            if (v3 == 100)
            {
              if (![(VCHardwareSettingsMacProtocol *)self->_hardwareSettings vcpSupportsHEVCEncoder])
              {
                goto LABEL_17;
              }

              v26 = 100;
            }

            [(VCVideoRuleCollections *)self appendVideoRules:v5 transportType:1 payload:v26 encodingType:1];
LABEL_17:
            if ([(VCHardwareSettingsMacProtocol *)self->_hardwareSettings supports1080pDecoding])
            {
              [v7 addObject:v12];
              [v7 addObject:v15];
              if (+[VCHardwareSettings supportsDecodingSquareCameraVideo])
              {
                [v7 addObject:v22];
                [v7 addObject:v25];
              }

              v27 = 1;
              [(VCVideoRuleCollections *)self appendVideoRules:v7 transportType:1 payload:v3 encodingType:2];
            }

            else
            {
              v27 = 1;
            }

            goto LABEL_23;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [VCVideoRuleCollectionsCameraMac setUp1080pRules:];
            }
          }

          v22 = 0;
          v25 = 0;
          v19 = 0;
LABEL_39:
          v27 = 0;
LABEL_23:

          return v27;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCVideoRuleCollectionsCameraMac setUp1080pRules:];
          }
        }
      }

      else if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoRuleCollectionsCameraMac setUp1080pRules:];
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraMac setUp1080pRules:];
      }
    }

    v22 = 0;
    v25 = 0;
    v19 = 0;
    v15 = 0;
    v12 = 0;
    goto LABEL_39;
  }

  return 1;
}

- (BOOL)setupRules
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(VCVideoRuleCollectionsCameraMac *)self setupH264Rules])
  {
    setupHEVCRules = [(VCVideoRuleCollectionsCameraMac *)self setupHEVCRules];
  }

  else
  {
    setupHEVCRules = 0;
  }

  if ([+[VCDefaults forceDisableVideoRuleWiFi1080] sharedInstance]
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v4;
        v12 = 2080;
        v13 = "[VCVideoRuleCollectionsCameraMac setupRules]";
        v14 = 1024;
        v15 = 410;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sVCDefaults forceDisableVideoRuleWiFi1080 is set", &v10, 0x1Cu);
      }
    }

    [(VCVideoRuleCollections *)self limitVideoRulesToMaxWidth:1280 maxHeight:720 transportType:1];
  }

  if ([+[VCDefaults forceDisableVideoRuleCell720] sharedInstance]
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCVideoRuleCollectionsCameraMac setupRules]";
        v14 = 1024;
        v15 = 414;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sVCDefaults forceDisableVideoRuleCell720 is set", &v10, 0x1Cu);
      }
    }

    [(VCVideoRuleCollections *)self limitVideoRulesToMaxWidth:480 maxHeight:272 transportType:2];
  }

  if (setupHEVCRules)
  {
    v8 = [(VCVideoRuleCollectionsCameraMac *)self setUp1080pRules:126];
    if (v8)
    {
      v8 = [(VCVideoRuleCollectionsCameraMac *)self setUp1080pRules:123];
      if (v8)
      {
        LOBYTE(v8) = [(VCVideoRuleCollectionsCameraMac *)self setUp1080pRules:100];
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)_addWVGAEncodingRules
{
  v3 = [VCVideoRule alloc];
  LODWORD(v4) = 15.0;
  v5 = [(VCVideoRule *)v3 initWithFrameWidth:848 frameHeight:480 frameRate:126 payload:v4];
  v6 = [VCVideoRule alloc];
  LODWORD(v7) = 30.0;
  v9 = [(VCVideoRule *)v6 initWithFrameWidth:848 frameHeight:480 frameRate:126 payload:v7];
  v8 = objc_opt_new();
  [v8 addObject:v5];
  [v8 addObject:v9];
  [(VCVideoRuleCollections *)self appendVideoRules:v8 transportType:1 payload:126 encodingType:1];
  [(VCVideoRuleCollections *)self appendVideoRules:v8 transportType:1 payload:123 encodingType:1];
}

- (void)_removeRulesGreaterThanVGA
{
  [(VCVideoRuleCollections *)self removeVideoRulesWithWidth:1280 height:720 transportType:1 encodingType:1];
  [(VCVideoRuleCollections *)self removeVideoRulesWithWidth:1024 height:768 transportType:1 encodingType:1];
  [(VCVideoRuleCollections *)self removeVideoRulesWithWidth:1920 height:1080 transportType:1 encodingType:1];

  [(VCVideoRuleCollections *)self removeVideoRulesWithWidth:1664 height:1248 transportType:1 encodingType:1];
}

- (void)_removeRulesGreaterThan720p
{
  [(VCVideoRuleCollections *)self removeVideoRulesWithWidth:1920 height:1080 transportType:1 encodingType:1];

  [(VCVideoRuleCollections *)self removeVideoRulesWithWidth:1664 height:1248 transportType:1 encodingType:1];
}

- (void)_resetJ92EncodingRulesForCameraIsHD:(BOOL)d isWVGA:(BOOL)a is1080:(BOOL)is1080
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a || is1080 || d)
  {
    if (d && !is1080)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315650;
          v11 = v8;
          v12 = 2080;
          v13 = "[VCVideoRuleCollectionsCameraMac _resetJ92EncodingRulesForCameraIsHD:isWVGA:is1080:]";
          v14 = 1024;
          v15 = 465;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d 720p camera. removing rules greater than 720p", &v10, 0x1Cu);
        }
      }

      [(VCVideoRuleCollectionsCameraMac *)self _removeRulesGreaterThan720p];
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v6;
        v12 = 2080;
        v13 = "[VCVideoRuleCollectionsCameraMac _resetJ92EncodingRulesForCameraIsHD:isWVGA:is1080:]";
        v14 = 1024;
        v15 = 461;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d built in J92 camera. removing rules greater than VGA. adding WVGA encoding rules", &v10, 0x1Cu);
      }
    }

    [(VCVideoRuleCollectionsCameraMac *)self _removeRulesGreaterThanVGA];
    [(VCVideoRuleCollectionsCameraMac *)self _addWVGAEncodingRules];
  }
}

- (void)resetEncodingRulesForCameraIsHD:(BOOL)d isWVGA:(BOOL)a is1080:(BOOL)is1080
{
  is1080Copy = is1080;
  aCopy = a;
  dCopy = d;
  v29 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316418;
      v18 = v9;
      v19 = 2080;
      v20 = "[VCVideoRuleCollectionsCameraMac resetEncodingRulesForCameraIsHD:isWVGA:is1080:]";
      v21 = 1024;
      v22 = 472;
      v23 = 1024;
      v24 = dCopy;
      v25 = 1024;
      v26 = aCopy;
      v27 = 1024;
      v28 = is1080Copy;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isHD = %d, isWVGA = %d, is1080 = %d", &v17, 0x2Eu);
    }
  }

  if (![(VCVideoRuleCollectionsCameraMac *)self setupRules]&& VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCVideoRuleCollectionsCameraMac resetEncodingRulesForCameraIsHD:isWVGA:is1080:];
    }
  }

  if ([(VCHardwareSettingsMacProtocol *)self->_hardwareSettings isMacBookWVGA])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = v11;
        v19 = 2080;
        v20 = "[VCVideoRuleCollectionsCameraMac resetEncodingRulesForCameraIsHD:isWVGA:is1080:]";
        v21 = 1024;
        v22 = 478;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d resetting encoding rules for J92", &v17, 0x1Cu);
      }
    }

    [(VCVideoRuleCollectionsCameraMac *)self _resetJ92EncodingRulesForCameraIsHD:dCopy isWVGA:aCopy is1080:is1080Copy];
  }

  if (!dCopy)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = v13;
        v19 = 2080;
        v20 = "[VCVideoRuleCollectionsCameraMac resetEncodingRulesForCameraIsHD:isWVGA:is1080:]";
        v21 = 1024;
        v22 = 482;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d camera does not support 720p. removing rules greater than VGA", &v17, 0x1Cu);
      }
    }

    [(VCVideoRuleCollectionsCameraMac *)self _removeRulesGreaterThanVGA];
  }

  if (!is1080Copy)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315650;
        v18 = v15;
        v19 = 2080;
        v20 = "[VCVideoRuleCollectionsCameraMac resetEncodingRulesForCameraIsHD:isWVGA:is1080:]";
        v21 = 1024;
        v22 = 487;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d camera does not support 1080p. removing rules greater than 720p", &v17, 0x1Cu);
      }
    }

    [(VCVideoRuleCollectionsCameraMac *)self _removeRulesGreaterThan720p];
  }

  objc_sync_exit(self);
}

- (void)initWithHardwareSettings:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create camera rules!", v2, v3, v4, v5, v6);
}

- (void)setupH264WifiRules
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d H264 Wifi rules: failed to allocate QVGA15 rule", v2, v3, v4, v5, v6);
}

- (void)setupHEVCRules
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate videoRulesWiFiEncoding for HEVC", v2, v3, v4, v5, v6);
}

- (void)setUp1080pRules:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d H264 Wi-Fi rules: failed to allocate 1664x1248 30 FPS rule", v2, v3, v4, v5, v6);
}

- (void)setUp1080pRules:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d H264 Wi-Fi rules: failed to allocate 1920x1080 30 FPS rule", v2, v3, v4, v5, v6);
}

- (void)setUp1080pRules:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate videoRulesWiFiDecoding for HEVC", v2, v3, v4, v5, v6);
}

- (void)setUp1080pRules:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate videoRulesWiFiEncoding for HEVC", v2, v3, v4, v5, v6);
}

- (void)resetEncodingRulesForCameraIsHD:isWVGA:is1080:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to Setup Rules", v2, v3, v4, v5, v6);
}

@end