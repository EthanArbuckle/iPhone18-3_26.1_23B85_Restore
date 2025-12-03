@interface VCModeSpecificHardwareSettings
+ (unsigned)encoderUsageTypeWithHardwareSettingsMode:(unsigned __int8)mode;
- (BOOL)vcpSupportsHEVCDecoder;
- (BOOL)vcpSupportsHEVCEncoder;
- (VCModeSpecificHardwareSettings)initWithHardwareSettingsMode:(unsigned __int8)mode;
- (unsigned)numTilesPerVideoFrameForHDRMode:(unint64_t)mode;
- (void)dealloc;
- (void)initFeatureListString;
- (void)vcpCodecGetPropertiesForID:(int)d block:(id)block;
@end

@implementation VCModeSpecificHardwareSettings

+ (unsigned)encoderUsageTypeWithHardwareSettingsMode:(unsigned __int8)mode
{
  if ((mode - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_1DBD51524[(mode - 1)];
  }
}

- (VCModeSpecificHardwareSettings)initWithHardwareSettingsMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCModeSpecificHardwareSettings;
  v4 = [(VCModeSpecificHardwareSettings *)&v6 init];
  if (v4)
  {
    v4->_vcpEncoderUsageMode = [VCModeSpecificHardwareSettings encoderUsageTypeWithHardwareSettingsMode:modeCopy];
    v4->_hardwareSettingsMode = modeCopy;
    [(VCModeSpecificHardwareSettings *)v4 initFeatureListString];
    [(VCModeSpecificHardwareSettings *)v4 vcpSupportsHEVCDecoder];
    [(VCModeSpecificHardwareSettings *)v4 vcpSupportsHEVCEncoder];
    v4->_vcpInitializedForHEVC = 1;
    v4->_tilesPerVideoFrame = [(VCModeSpecificHardwareSettings *)v4 numTilesPerVideoFrameForHDRMode:0];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCModeSpecificHardwareSettings;
  [(VCModeSpecificHardwareSettings *)&v3 dealloc];
}

- (unsigned)numTilesPerVideoFrameForHDRMode:(unint64_t)mode
{
  v20 = *MEMORY[0x1E69E9840];
  hardwareSettingsMode = self->_hardwareSettingsMode;
  if (hardwareSettingsMode > 0xA)
  {
    v5 = -1431655766;
  }

  else
  {
    v5 = dword_1DBD51548[hardwareSettingsMode];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_hardwareSettingsMode;
      v10 = 136316162;
      v11 = v6;
      v12 = 2080;
      v13 = "[VCModeSpecificHardwareSettings numTilesPerVideoFrameForHDRMode:]";
      v14 = 1024;
      v15 = 141;
      v16 = 1024;
      v17 = v5;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCHardwareSettings: tilesPerFrame=%d for hardwareSettingsMode=%hhu", &v10, 0x28u);
    }
  }

  return v5;
}

- (BOOL)vcpSupportsHEVCDecoder
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self->_vcpInitializedForHEVC)
  {
    supportVCPDecoderHEVC = self->_supportVCPDecoderHEVC;
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__VCModeSpecificHardwareSettings_vcpSupportsHEVCDecoder__block_invoke;
    v5[3] = &unk_1E85F9F10;
    v5[4] = self;
    v5[5] = &v6;
    [(VCModeSpecificHardwareSettings *)self vcpCodecGetPropertiesForID:0 block:v5];
    supportVCPDecoderHEVC = *(v7 + 24);
    self->_supportVCPDecoderHEVC = supportVCPDecoderHEVC;
  }

  _Block_object_dispose(&v6, 8);
  return supportVCPDecoderHEVC & 1;
}

void __56__VCModeSpecificHardwareSettings_vcpSupportsHEVCDecoder__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = [a3 BOOLValue];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = ([+[VCDefaults extraPayloads]& 2 sharedInstance]!= 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v7 = *(*(a1 + 32) + 8);
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCModeSpecificHardwareSettings vcpSupportsHEVCDecoder]_block_invoke";
      v12 = 1024;
      v13 = 159;
      v14 = 1024;
      v15 = v6;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCHardwareSettings: VCP support HEVC decoder= %d for mode=%d", &v8, 0x28u);
    }
  }
}

- (BOOL)vcpSupportsHEVCEncoder
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (self->_vcpInitializedForHEVC)
  {
    supportVCPEncoderHEVC = self->_supportVCPEncoderHEVC;
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__VCModeSpecificHardwareSettings_vcpSupportsHEVCEncoder__block_invoke;
    v5[3] = &unk_1E85F9F10;
    v5[4] = self;
    v5[5] = &v6;
    [(VCModeSpecificHardwareSettings *)self vcpCodecGetPropertiesForID:2 block:v5];
    supportVCPEncoderHEVC = *(v7 + 24);
    self->_supportVCPEncoderHEVC = supportVCPEncoderHEVC;
  }

  _Block_object_dispose(&v6, 8);
  return supportVCPEncoderHEVC & 1;
}

void __56__VCModeSpecificHardwareSettings_vcpSupportsHEVCEncoder__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = [a3 BOOLValue];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v7 = *(*(a1 + 32) + 8);
      v8 = 136316162;
      v9 = v4;
      v10 = 2080;
      v11 = "[VCModeSpecificHardwareSettings vcpSupportsHEVCEncoder]_block_invoke";
      v12 = 1024;
      v13 = 176;
      v14 = 1024;
      v15 = v6;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCHardwareSettings: VCP support HEVC encoder=%d for mode=%d", &v8, 0x28u);
    }
  }
}

- (void)initFeatureListString
{
  v24 = *MEMORY[0x1E69E9840];
  hardwareSettingsMode = self->_hardwareSettingsMode;
  if (hardwareSettingsMode == 8 || hardwareSettingsMode == 5)
  {
    self->_featureListStringH264 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:@"FLS;"];
    self->_featureListStringHEVC = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:@"FLS;"];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        vcpEncoderUsageMode = self->_vcpEncoderUsageMode;
        uTF8String = [(NSString *)self->_featureListStringHEVC UTF8String];
        uTF8String2 = [(NSString *)self->_featureListStringH264 UTF8String];
        *buf = 136316418;
        v13 = v5;
        v14 = 2080;
        v15 = "[VCModeSpecificHardwareSettings initFeatureListString]";
        v16 = 1024;
        v17 = 190;
        v18 = 1024;
        v19 = vcpEncoderUsageMode;
        v20 = 2080;
        v21 = uTF8String;
        v22 = 2080;
        v23 = uTF8String2;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [FLS] mode=%2d: HEVC=%s ; H264=%s", buf, 0x36u);
      }
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__VCModeSpecificHardwareSettings_initFeatureListString__block_invoke;
    v11[3] = &unk_1E85F9F38;
    v11[4] = self;
    [(VCModeSpecificHardwareSettings *)self vcpCodecGetPropertiesForID:1 block:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__VCModeSpecificHardwareSettings_initFeatureListString__block_invoke_13;
    v10[3] = &unk_1E85F9F38;
    v10[4] = self;
    [(VCModeSpecificHardwareSettings *)self vcpCodecGetPropertiesForID:4 block:v10];
  }
}

void __55__VCModeSpecificHardwareSettings_initFeatureListString__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 12) == 6)
  {
    *(*(a1 + 32) + 24) = @"FLS;SW:1;";
    v4 = @"FLS;VRAE:0;SW:1;";
    v5 = 16;
  }

  else
  {
    *(*(a1 + 32) + 16) = [a3 copy];
    v4 = [a2 copy];
    v5 = 24;
  }

  *(*(a1 + 32) + v5) = v4;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 8);
      v11 = [*(v9 + 16) UTF8String];
      v12 = [*(*(a1 + 32) + 24) UTF8String];
      v13 = 136316418;
      v14 = v7;
      v15 = 2080;
      v16 = "[VCModeSpecificHardwareSettings initFeatureListString]_block_invoke";
      v17 = 1024;
      v18 = 202;
      v19 = 1024;
      v20 = v10;
      v21 = 2080;
      v22 = v11;
      v23 = 2080;
      v24 = v12;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [FLS] mode=%2d: HEVC=%s ; H264=%s", &v13, 0x36u);
    }
  }
}

void __55__VCModeSpecificHardwareSettings_initFeatureListString__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 32) = [a3 copy];
  *(*(a1 + 32) + 40) = [a2 copy];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + 8);
      v9 = [*(v7 + 32) UTF8String];
      v10 = [*(*(a1 + 32) + 40) UTF8String];
      v11 = 136316418;
      v12 = v5;
      v13 = 2080;
      v14 = "[VCModeSpecificHardwareSettings initFeatureListString]_block_invoke";
      v15 = 1024;
      v16 = 208;
      v17 = 1024;
      v18 = v8;
      v19 = 2080;
      v20 = v9;
      v21 = 2080;
      v22 = v10;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [FLS] FixedPosition mode=%2d: HEVC=%s ; H264=%s", &v11, 0x36u);
    }
  }
}

- (void)vcpCodecGetPropertiesForID:(int)d block:(id)block
{
  if (VCPCodecCopyProperties())
  {
    [VCModeSpecificHardwareSettings vcpCodecGetPropertiesForID:block:];
  }

  else
  {
    [VCModeSpecificHardwareSettings vcpCodecGetPropertiesForID:block:];
  }
}

- (void)vcpCodecGetPropertiesForID:block:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate memory to get VCP Codec properties", v2, v3, v4, v5, v6);
    }
  }
}

- (void)vcpCodecGetPropertiesForID:block:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d dictAllCodecs is nil", v2, v3, v4, v5, v6);
    }
  }
}

@end