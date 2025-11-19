@interface VCVideoRuleCollectionsCameraEmbedded
+ (id)sharedInstance;
- (BOOL)isPreferredVideoRule:(id)a3 preferredFormat:(id)a4;
- (BOOL)setupH264Rules;
- (BOOL)setupHEVCRules;
- (BOOL)setupRules;
- (BOOL)setupVideoRulesForPayload:(int)a3 transportType:(unsigned __int8)a4 encodingType:(unsigned __int8)a5 formatList:(_VCVideoFormat *)a6 formatListCount:(unsigned int)a7 preferredFormat:(id)a8 supportsHighDef:(BOOL *)a9;
- (BOOL)supportsHEVCWifiDecoding;
- (BOOL)supportsHEVCWifiEncoding;
- (VCVideoRuleCollectionsCameraEmbedded)initWithHardwareSettings:(id)a3;
- (_VCBitrateConfiguration)bitrateConfiguration;
- (_VCHardwareConfiguration)hardwareConfigurationForPayload:(int)a3 transportType:(unsigned __int8)a4;
- (id)description;
- (void)bitrateConfiguration;
- (void)dealloc;
- (void)initSupportedPayloads;
- (void)setupHEVCRules;
@end

@implementation VCVideoRuleCollectionsCameraEmbedded

- (VCVideoRuleCollectionsCameraEmbedded)initWithHardwareSettings:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCVideoRuleCollectionsCameraEmbedded;
  v4 = [(VCVideoRuleCollections *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->super._encodeHighDef = a3;
    [(VCVideoRuleCollectionsCameraEmbedded *)v4 initSupportedPayloads];
    if (![(VCVideoRuleCollectionsCameraEmbedded *)v5 setupRules])
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCVideoRuleCollectionsCameraEmbedded initWithHardwareSettings:];
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
  v2.super_class = VCVideoRuleCollectionsCameraEmbedded;
  [(VCVideoRuleCollections *)&v2 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@: supportHEVC[%d] vcpSupportsHEVCEncoder[%d] screenSize[%dx%d] deviceClass[%ld] VCHardwareVideoEncoderType[%ld] useSoftFramerateSwitching[%d]", NSStringFromClass(v4), objc_msgSend(*&self->super._encodeHighDef, "supportHEVC"), objc_msgSend(*&self->super._encodeHighDef, "vcpSupportsHEVCEncoder"), objc_msgSend(*&self->super._encodeHighDef, "screenWidth"), objc_msgSend(*&self->super._encodeHighDef, "screenHeight"), objc_msgSend(*&self->super._encodeHighDef, "deviceClass"), objc_msgSend(*&self->super._encodeHighDef, "videoEncoderType"), objc_msgSend(*&self->super._encodeHighDef, "useSoftFramerateSwitching")];
}

- (void)initSupportedPayloads
{
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [*&self->super._encodeHighDef supportedVideoPayloads];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
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
          objc_enumerationMutation(v3);
        }

        -[VCVideoRuleCollections addSupportedPayload:](self, "addSupportedPayload:", [*(*(&v9 + 1) + 8 * v7++) unsignedIntValue]);
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_token_4 != -1)
  {
    +[VCVideoRuleCollectionsCameraEmbedded sharedInstance];
  }

  return sharedInstance__videoRulesCollections_1;
}

VCVideoRuleCollectionsCameraEmbedded *__54__VCVideoRuleCollectionsCameraEmbedded_sharedInstance__block_invoke()
{
  result = [[VCVideoRuleCollectionsCameraEmbedded alloc] initWithHardwareSettings:+[VCHardwareSettingsEmbedded sharedInstance]];
  sharedInstance__videoRulesCollections_1 = result;
  return result;
}

- (_VCHardwareConfiguration)hardwareConfigurationForPayload:(int)a3 transportType:(unsigned __int8)a4
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 != 100)
  {
    if (a3 == 126 || a3 == 123)
    {
      if (a4 == 2)
      {
        v5 = [*&self->super._encodeHighDef deviceClass] - 1;
        if (v5 < 8 && ((0x87u >> v5) & 1) != 0)
        {
          v6 = qword_1DBD4F508[v5];
          v7 = &off_1E85F89E8;
          goto LABEL_21;
        }
      }

      else if (a4 == 1)
      {
        v5 = [*&self->super._encodeHighDef deviceClass] - 1;
        if (v5 < 8 && ((0x87u >> v5) & 1) != 0)
        {
          v6 = qword_1DBD4F508[v5];
          v7 = &off_1E85F89A8;
LABEL_21:
          v10 = v7[v5];
          goto LABEL_22;
        }
      }
    }

    return 0;
  }

  if (a4 == 2)
  {
    v5 = [*&self->super._encodeHighDef deviceClass] - 1;
    if (v5 < 8 && ((0x87u >> v5) & 1) != 0)
    {
      v6 = qword_1DBD4F508[v5];
      v7 = &off_1E85F8A28;
      goto LABEL_21;
    }

    return 0;
  }

  if (a4 != 1)
  {
    return 0;
  }

  v8 = +[GKSConnectivitySettings getAbTestMasterLocalSwitches];
  v9 = [*&self->super._encodeHighDef deviceClass];
  v10 = 0;
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = &_hardwareConfigHEVCWifiIPad;
      v6 = 11;
    }

    else
    {
      if (v9 != 8)
      {
        return v10;
      }

      v10 = &_hardwareConfigHEVCWifiWolf;
      v6 = 1;
    }
  }

  else if (v9 == 1)
  {
    v14 = v8 & 0x800;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315906;
        v18 = v15;
        v19 = 2080;
        v20 = "[VCVideoRuleCollectionsCameraEmbedded hardwareConfigurationForPayload:transportType:]";
        v21 = 1024;
        v22 = 472;
        v23 = 1024;
        v24 = v14 >> 11;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Load switch hevcWifiTiersEnabled %d", &v17, 0x22u);
      }
    }

    if (v14)
    {
      v10 = &_hardwareConfigHEVCWifiIPhone;
    }

    else
    {
      v10 = &_hardwareConfigHEVCWifiIPhoneNoEncode;
    }

    v6 = 9;
  }

  else
  {
    if (v9 != 2)
    {
      return v10;
    }

    v10 = &_hardwareConfigHEVCWifiIPod;
    v6 = 2;
  }

LABEL_22:
  for (i = v10; ; ++i)
  {
    var0 = i->var0;
    if (var0 == [*&self->super._encodeHighDef chipId])
    {
      break;
    }

    if (!--v6)
    {
      return v10;
    }
  }

  if (i->var2)
  {
    return i;
  }

  if (i->var4)
  {
    return i;
  }

  return 0;
}

- (BOOL)isPreferredVideoRule:(id)a3 preferredFormat:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  if ([a3 compare:a4])
  {
    v6 = -1;
    for (i = &dword_1DBD4F4B4; ; i += 6)
    {
      v8 = *i;
      if (v8 == [a3 iWidth])
      {
        v9 = i[1];
        if (v9 == [a3 iHeight])
        {
          v10 = i[2];
          [a3 fRate];
          if (v10 == v11)
          {
            v12 = *(i - 3);
            if (v12 == [a4 iWidth])
            {
              v13 = *(i - 2);
              if (v13 == [a4 iHeight])
              {
                v14 = *(i - 1);
                [a4 fRate];
                if (v14 == v15)
                {
                  break;
                }
              }
            }
          }
        }
      }

      if (++v6 == 3)
      {
        return 0;
      }
    }
  }

  return 1;
}

- (BOOL)setupVideoRulesForPayload:(int)a3 transportType:(unsigned __int8)a4 encodingType:(unsigned __int8)a5 formatList:(_VCVideoFormat *)a6 formatListCount:(unsigned int)a7 preferredFormat:(id)a8 supportsHighDef:(BOOL *)a9
{
  LODWORD(v10) = a7;
  v12 = a5;
  v43 = a4;
  v13 = *&a3;
  v54 = *MEMORY[0x1E69E9840];
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = +[VCHardwareSettings supportsDecodingSquareCameraVideo];
  v42 = v12;
  if (v12 == 2 && v16)
  {
    v41 = a6;
    v17 = [VCVideoRule alloc];
    LODWORD(v18) = 30.0;
    v19 = [(VCVideoRule *)v17 initWithFrameWidth:1088 frameHeight:1088 frameRate:v13 payload:v18];
    v20 = [VCVideoRule alloc];
    LODWORD(v21) = 1114636288;
    v22 = [(VCVideoRule *)v20 initWithFrameWidth:1088 frameHeight:1088 frameRate:v13 payload:v21];
    [a8 setToVideoRule:v19];
    LODWORD(v23) = 1.0;
    [(VCVideoRule *)v19 setFPref:v23];
    [v15 addObject:v19];
    [v15 addObject:v22];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v40 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v45 = v40;
        v46 = 2080;
        v47 = "[VCVideoRuleCollectionsCameraEmbedded setupVideoRulesForPayload:transportType:encodingType:formatList:formatListCount:preferredFormat:supportsHighDef:]";
        v48 = 1024;
        v49 = 594;
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d supportsDecodingSquareCameraVideo, decode rules added", buf, 0x1Cu);
      }
    }

    a6 = v41;
  }

  if (v10)
  {
    v10 = v10;
    p_var2 = &a6->var2;
    do
    {
      v26 = [VCVideoRule alloc];
      *&v27 = *p_var2;
      v28 = [(VCVideoRule *)v26 initWithFrameWidth:*(p_var2 - 2) frameHeight:*(p_var2 - 1) frameRate:v13 payload:v27];
      v29 = v28;
      if (a9)
      {
        v30 = [(VCVideoRule *)v28 iWidth];
        if ([(VCVideoRule *)v29 iHeight]* v30 > 307200)
        {
          *a9 = 1;
        }
      }

      if ([(VCVideoRuleCollectionsCameraEmbedded *)self isPreferredVideoRule:v29 preferredFormat:a8])
      {
        LODWORD(v31) = 1.0;
        [(VCVideoRule *)v29 setFPref:v31];
      }

      p_var2 += 3;
      [v15 addObject:v29];

      --v10;
    }

    while (v10);
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v45 = v32;
        v46 = 2080;
        v47 = "[VCVideoRuleCollectionsCameraEmbedded setupVideoRulesForPayload:transportType:encodingType:formatList:formatListCount:preferredFormat:supportsHighDef:]";
        v48 = 1024;
        v49 = 615;
        v50 = 1024;
        v51 = v13;
        v52 = 1024;
        v53 = v43;
        _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d formatList size is zero for payload=%d, transfportType=%d", buf, 0x28u);
      }
    }

    if (a9)
    {
      *a9 = 0;
    }
  }

  [v15 sortUsingSelector:sel_compare_];
  if (v13 == 100)
  {
    if (![(VCVideoRuleCollections *)self isPayloadSupported:100])
    {
LABEL_31:
      LOBYTE(v38) = 1;
      return v38;
    }

    v34 = self;
    v35 = v15;
    v36 = v43;
    v37 = 100;
LABEL_30:
    [(VCVideoRuleCollections *)v34 addVideoRules:v35 transportType:v36 payload:v37 encodingType:v42];
    goto LABEL_31;
  }

  if (v13 == 126 || v13 == 123)
  {
    if ([(VCVideoRuleCollections *)self isPayloadSupported:126])
    {
      [(VCVideoRuleCollections *)self addVideoRules:v15 transportType:v43 payload:126 encodingType:v42];
    }

    if (![(VCVideoRuleCollections *)self isPayloadSupported:123])
    {
      goto LABEL_31;
    }

    v34 = self;
    v35 = v15;
    v36 = v43;
    v37 = 123;
    goto LABEL_30;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v38)
    {
      return v38;
    }

    [VCVideoRuleCollectionsCameraEmbedded setupVideoRulesForPayload:transportType:encodingType:formatList:formatListCount:preferredFormat:supportsHighDef:];
  }

  LOBYTE(v38) = 0;
  return v38;
}

- (_VCBitrateConfiguration)bitrateConfiguration
{
  v3 = [*&self->super._encodeHighDef deviceClass] - 1;
  if (v3 < 8 && ((0x87u >> v3) & 1) != 0)
  {
    return (*(&off_1E85F8A68 + v3) + 48);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [(VCVideoRuleCollectionsCameraEmbedded *)v5 bitrateConfiguration];
    }
  }

  return 0;
}

- (BOOL)supportsHEVCWifiDecoding
{
  if (-[VCVideoRuleCollections isPayloadSupported:](self, "isPayloadSupported:", 100) && (v3 = [*&self->super._encodeHighDef chipId], (v3 - 0x8000) <= 0x15))
  {
    v4 = 0x23000Bu >> v3;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (BOOL)supportsHEVCWifiEncoding
{
  if (-[VCVideoRuleCollections isPayloadSupported:](self, "isPayloadSupported:", 100) && (v3 = [*&self->super._encodeHighDef chipId], (v3 - 32784) <= 5))
  {
    v4 = 0x23u >> (v3 - 16);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (BOOL)setupHEVCRules
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!-[VCVideoRuleCollections isPayloadSupported:](self, "isPayloadSupported:", 100) || ![*&self->super._encodeHighDef supportHEVC])
  {
    return 1;
  }

  v3 = [(VCVideoRuleCollectionsCameraEmbedded *)self hardwareConfigurationForPayload:100 transportType:2];
  if (!v3)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCVideoRuleCollectionsCameraEmbedded setupHEVCRules];
      }
    }

    return 1;
  }

  v4 = v3;
  v5 = [VCVideoRule alloc];
  *&v6 = v4->var1.var2;
  v7 = [(VCVideoRule *)v5 initWithFrameWidth:v4->var1.var0 frameHeight:v4->var1.var1 frameRate:v6];
  if (!v7)
  {
    [VCVideoRuleCollectionsCameraEmbedded setupHEVCRules];
LABEL_22:
    v22 = v24;
    v19 = v25[0];
    goto LABEL_11;
  }

  if (![(VCVideoRuleCollectionsCameraEmbedded *)self setupVideoRulesForPayload:100 transportType:2 encodingType:1 formatList:v4->var3 formatListCount:v4->var2 preferredFormat:0 supportsHighDef:0])
  {
    [VCVideoRuleCollectionsCameraEmbedded setupHEVCRules];
    goto LABEL_22;
  }

  if (![(VCVideoRuleCollectionsCameraEmbedded *)self setupVideoRulesForPayload:100 transportType:2 encodingType:2 formatList:v4->var5 formatListCount:v4->var4 preferredFormat:v7 supportsHighDef:0])
  {
    [VCVideoRuleCollectionsCameraEmbedded setupHEVCRules];
    goto LABEL_22;
  }

  v8 = [(VCVideoRuleCollectionsCameraEmbedded *)self hardwareConfigurationForPayload:100 transportType:1];
  if (+[VCHardwareSettings supportsDecodingSquareCameraVideo])
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = [VCVideoRule alloc];
    LODWORD(v11) = 30.0;
    v12 = [(VCVideoRule *)v10 initWithFrameWidth:1088 frameHeight:1088 frameRate:100 payload:v11];
    v13 = [VCVideoRule alloc];
    LODWORD(v14) = 1114636288;
    v15 = [(VCVideoRule *)v13 initWithFrameWidth:1088 frameHeight:1088 frameRate:100 payload:v14];
    [v9 addObject:v12];
    [v9 addObject:v15];
    [(VCVideoRuleCollections *)self addVideoRules:v9 transportType:1 payload:100 encodingType:2];

    v8->var1.var0 = [(VCVideoRule *)v12 iWidth];
    v8->var1.var1 = [(VCVideoRule *)v12 iHeight];
    [(VCVideoRule *)v12 fRate];
    v8->var1.var2 = v16;
  }

  v17 = [VCVideoRule alloc];
  *&v18 = v8->var1.var2;
  v19 = [(VCVideoRule *)v17 initWithFrameWidth:v8->var1.var0 frameHeight:v8->var1.var1 frameRate:v18];
  if (![(VCVideoRuleCollectionsCameraEmbedded *)self setupVideoRulesForPayload:100 transportType:1 encodingType:1 formatList:v8->var3 formatListCount:v8->var2 preferredFormat:0 supportsHighDef:0])
  {
    [(VCVideoRuleCollectionsCameraEmbedded *)v19 setupHEVCRules];
    goto LABEL_22;
  }

  var5 = v8->var5;
  var4 = v8->var4;
  v22 = 1;
  if (![(VCVideoRuleCollectionsCameraEmbedded *)self setupVideoRulesForPayload:100 transportType:1 encodingType:2 formatList:var5 formatListCount:var4 preferredFormat:v19 supportsHighDef:0])
  {
    [(VCVideoRuleCollectionsCameraEmbedded *)v19 setupHEVCRules];
    goto LABEL_22;
  }

LABEL_11:

  return v22;
}

- (BOOL)setupRules
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = v3;
      v15 = 2080;
      v16 = "[VCVideoRuleCollectionsCameraEmbedded setupRules]";
      v17 = 1024;
      v18 = 889;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", &v13, 0x1Cu);
    }
  }

  if ([(VCVideoRuleCollectionsCameraEmbedded *)self setupH264Rules])
  {
    v5 = [(VCVideoRuleCollectionsCameraEmbedded *)self setupHEVCRules];
  }

  else
  {
    v5 = 0;
  }

  if (+[VCHardwareSettingsEmbedded shouldDisable1080pForOneToOne])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = v6;
        v15 = 2080;
        v16 = "[VCVideoRuleCollectionsCameraEmbedded setupRules]";
        v17 = 1024;
        v18 = 897;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d shouldDisable1080pForOneToOne is set", &v13, 0x1Cu);
      }
    }

    [(VCVideoRuleCollections *)self limitVideoRulesToMaxWidth:1280 maxHeight:1088 transportType:1];
  }

  if ([+[VCDefaults forceDisableVideoRuleWiFi1080] sharedInstance]
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = v8;
        v15 = 2080;
        v16 = "[VCVideoRuleCollectionsCameraEmbedded setupRules]";
        v17 = 1024;
        v18 = 904;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sVCDefaults forceDisableVideoRuleWiFi1080 is set", &v13, 0x1Cu);
      }
    }

    [(VCVideoRuleCollections *)self limitVideoRulesToMaxWidth:1280 maxHeight:768 transportType:1];
  }

  if ([+[VCDefaults forceDisableVideoRuleCell720] sharedInstance]
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315650;
        v14 = v10;
        v15 = 2080;
        v16 = "[VCVideoRuleCollectionsCameraEmbedded setupRules]";
        v17 = 1024;
        v18 = 908;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sVCDefaults forceDisableVideoRuleCell720 is set", &v13, 0x1Cu);
      }
    }

    [(VCVideoRuleCollections *)self limitVideoRulesToMaxWidth:640 maxHeight:480 transportType:2];
  }

  return v5;
}

- (BOOL)setupH264Rules
{
  v31 = *MEMORY[0x1E69E9840];
  if (!-[VCVideoRuleCollections isPayloadSupported:](self, "isPayloadSupported:", 126) && ![OUTLINED_FUNCTION_2_27() isPayloadSupported:?])
  {
    return 1;
  }

  v3 = [OUTLINED_FUNCTION_2_27() hardwareConfigurationForPayload:? transportType:?];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [VCVideoRule alloc];
  *&v6 = v4[4];
  v7 = [(VCVideoRule *)v5 initWithFrameWidth:v4[2] frameHeight:v4[3] frameRate:v6];
  if (!v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v28 = 136315650;
        v29 = v17;
        OUTLINED_FUNCTION_0_5();
        v30 = 662;
        OUTLINED_FUNCTION_26(&dword_1DB56E000, v18, v19, " [%s] %s:%d Failed to allocate preferred H264 wifi rule", &v28);
      }
    }

    return 0;
  }

  v8 = v7;
  if (([OUTLINED_FUNCTION_2_27() setupVideoRulesForPayload:&self->super.super._encodingType + 1 transportType:? encodingType:? formatList:? formatListCount:? preferredFormat:? supportsHighDef:?] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_26;
    }

    VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_5_32();
    OUTLINED_FUNCTION_0_5();
    v30 = 671;
    v22 = " [%s] %s:%d Failed to setup Wifi encoding rules for H264";
LABEL_35:
    OUTLINED_FUNCTION_26(&dword_1DB56E000, v20, v21, v22, &v28);
    goto LABEL_26;
  }

  if (([OUTLINED_FUNCTION_2_27() setupVideoRulesForPayload:&self->super.super._encodingType + 2 transportType:? encodingType:? formatList:? formatListCount:? preferredFormat:? supportsHighDef:?] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_26;
    }

    VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_5_32();
    OUTLINED_FUNCTION_0_5();
    v30 = 680;
    v22 = " [%s] %s:%d Failed to setup Wifi decoding rules for H264";
    goto LABEL_35;
  }

  v9 = [OUTLINED_FUNCTION_2_27() hardwareConfigurationForPayload:? transportType:?];
  if (!v9)
  {
LABEL_26:

    return 0;
  }

  v10 = v9;
  v11 = [VCVideoRule alloc];
  *&v12 = v10[4];
  v13 = [(VCVideoRule *)v11 initWithFrameWidth:v10[2] frameHeight:v10[3] frameRate:v12];
  if (!v13)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_26;
    }

    VRTraceErrorLogLevelToCSTR();
    v20 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_5_32();
    OUTLINED_FUNCTION_0_5();
    v30 = 690;
    v22 = " [%s] %s:%d Failed to allocate preferred H264 cell rule";
    goto LABEL_35;
  }

  v14 = v13;
  if (([OUTLINED_FUNCTION_2_27() setupVideoRulesForPayload:0 transportType:? encodingType:? formatList:? formatListCount:? preferredFormat:? supportsHighDef:?] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_33;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_33;
    }

    v28 = 136315650;
    v29 = v23;
    OUTLINED_FUNCTION_0_5();
    v30 = 699;
    v26 = " [%s] %s:%d Failed to setup cell encoding rules for H264";
    goto LABEL_37;
  }

  if (([OUTLINED_FUNCTION_2_27() setupVideoRulesForPayload:0 transportType:? encodingType:? formatList:? formatListCount:? preferredFormat:? supportsHighDef:?] & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_33;
    }

    v27 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_33;
    }

    v28 = 136315650;
    v29 = v27;
    OUTLINED_FUNCTION_0_5();
    v30 = 708;
    v26 = " [%s] %s:%d Failed to setup cell decoding rules for H264";
LABEL_37:
    OUTLINED_FUNCTION_26(&dword_1DB56E000, v24, v25, v26, &v28);
LABEL_33:
    v15 = 0;
    goto LABEL_12;
  }

  v15 = 1;
LABEL_12:

  return v15;
}

- (void)initWithHardwareSettings:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 333;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create camera rules!", v2);
}

- (void)setupVideoRulesForPayload:transportType:encodingType:formatList:formatListCount:preferredFormat:supportsHighDef:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCVideoRuleCollectionsCameraEmbedded setupVideoRulesForPayload:transportType:encodingType:formatList:formatListCount:preferredFormat:supportsHighDef:]";
  v6 = 1024;
  v7 = 639;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed setupVideoRulesForPayload for unrecognized payload %d!", v3, 0x22u);
}

- (void)bitrateConfiguration
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [*a2 deviceClass];
  v6 = 136315906;
  v7 = a1;
  v8 = 2080;
  v9 = "[VCVideoRuleCollectionsCameraEmbedded bitrateConfiguration]";
  v10 = 1024;
  v11 = 753;
  v12 = 1024;
  v13 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d Couldn't find configuration for _hardwareSettings.deviceClass = %d", &v6, 0x22u);
}

- (void)setupHEVCRules
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 810;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d empty configurations for HEVC/Cell", v2);
}

@end