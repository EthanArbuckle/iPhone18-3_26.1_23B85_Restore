@interface VCVideoRuleCollectionsMediaRecorderEmbeded
+ (id)sharedInstance;
- (BOOL)isSupportedDeviceClass;
- (VCVideoRuleCollectionsMediaRecorderEmbeded)initWithHardwareSettings:(id)a3;
- (id)mediaRecorderImageTypes;
- (id)mediaRecorderVideoCodecs;
- (unsigned)mediaRecorderCapabilities;
- (void)isSupportedDeviceClass;
@end

@implementation VCVideoRuleCollectionsMediaRecorderEmbeded

- (VCVideoRuleCollectionsMediaRecorderEmbeded)initWithHardwareSettings:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCVideoRuleCollectionsMediaRecorderEmbeded;
  result = [(VCVideoRuleCollectionsMediaRecorder *)&v5 init];
  if (result)
  {
    result->_hardwareSettings = a3;
  }

  return result;
}

+ (id)sharedInstance
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!sharedInstance__videoRulesCollections_28)
  {
    sharedInstance__videoRulesCollections_28 = [[VCVideoRuleCollectionsMediaRecorderEmbeded alloc] initWithHardwareSettings:+[VCHardwareSettingsEmbedded sharedInstance]];
  }

  objc_sync_exit(v2);
  return sharedInstance__videoRulesCollections_28;
}

- (unsigned)mediaRecorderCapabilities
{
  if ([(VCVideoRuleCollectionsMediaRecorderEmbeded *)self isSupportedDeviceClass]&& [(VCVideoRuleCollectionsMediaRecorderEmbeded *)self isSupportedChipID])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)mediaRecorderImageTypes
{
  if (![(VCVideoRuleCollectionsMediaRecorderEmbeded *)self isSupportedDeviceClass]|| ![(VCVideoRuleCollectionsMediaRecorderEmbeded *)self isSupportedChipID])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DFA8] setWithObjects:{&unk_1F579A4B8, 0}];
  v4 = v3;
  if (self->super._isHEIFAndHEVCFormatEnabled)
  {
    [v3 addObject:&unk_1F579A4D0];
  }

  return v4;
}

- (id)mediaRecorderVideoCodecs
{
  if (![(VCVideoRuleCollectionsMediaRecorderEmbeded *)self isSupportedDeviceClass]|| ![(VCVideoRuleCollectionsMediaRecorderEmbeded *)self isSupportedChipID])
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DFA8] setWithObjects:{&unk_1F579A488, 0}];
  if ([(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings supportHEVC]&& self->super._isHEIFAndHEVCFormatEnabled)
  {
    [v3 addObject:&unk_1F579A4A0];
  }

  return v3;
}

- (BOOL)isSupportedDeviceClass
{
  v3 = [(VCHardwareSettingsEmbeddedProtocol *)self->_hardwareSettings deviceClass];
  if ((v3 - 1) >= 8 || ((0x8Fu >> (v3 - 1)) & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v4)
      {
        return v4;
      }

      [(VCVideoRuleCollectionsMediaRecorderEmbeded *)v5 isSupportedDeviceClass];
    }

    LOBYTE(v4) = 0;
    return v4;
  }

  LOBYTE(v4) = 1;
  return v4;
}

- (void)isSupportedDeviceClass
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = [*a2 deviceClass];
  v6 = 136315906;
  v7 = a1;
  v8 = 2080;
  v9 = "[VCVideoRuleCollectionsMediaRecorderEmbeded isSupportedDeviceClass]";
  v10 = 1024;
  v11 = 167;
  v12 = 1024;
  v13 = v5;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d No media recorder supported for device class %d", &v6, 0x22u);
}

@end