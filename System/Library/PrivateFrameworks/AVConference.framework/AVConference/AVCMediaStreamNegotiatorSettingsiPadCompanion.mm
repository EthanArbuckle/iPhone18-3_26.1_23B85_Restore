@interface AVCMediaStreamNegotiatorSettingsiPadCompanion
- (AVCMediaStreamNegotiatorSettingsiPadCompanion)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error;
- (unint64_t)maxBandwidth;
@end

@implementation AVCMediaStreamNegotiatorSettingsiPadCompanion

- (AVCMediaStreamNegotiatorSettingsiPadCompanion)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error
{
  roleCopy = role;
  v24 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AVCMediaStreamNegotiatorSettingsiPadCompanion;
  v8 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  if (!v8)
  {
    return v8;
  }

  v9 = +[VCVideoRuleCollectionsScreenSecondary sharedInstance];
  v8->super._screenRuleCollections = &v9->super;
  if (v9)
  {
    v8->super._tilesPerFrame = +[VCVideoRuleCollectionsScreenSecondary tilesPerFrame];
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8->super._hdrModesSupported = v10;
    if (v10)
    {
      [(NSMutableSet *)v10 addObject:&unk_1F579A350];
      v11 = VCFeatureFlagManager_FoveationEnabled();
      if (v11)
      {
        LOBYTE(v11) = +[VCHardwareSettings supportsFoveation];
      }

      v8->super._foveationIsSupported = v11;
      if (roleCopy == 2 && [AVCMediaStreamNegotiatorSettings hdrModeWithNegotiatorInitOptions:options]== 3)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v12 = VRTraceErrorLogLevelToCSTR();
          v13 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v19 = v12;
            v20 = 2080;
            v21 = "[AVCMediaStreamNegotiatorSettingsiPadCompanion initWithOptions:deviceRole:error:]";
            v22 = 1024;
            v23 = 578;
            _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HDR10Reference mode enabled on answerer", buf, 0x1Cu);
          }
        }

        [(NSMutableSet *)v8->super._hdrModesSupported addObject:&unk_1F579A398];
        v8->super._hdrModePixelFormats = &unk_1F579D1B8;
        v14 = &unk_1F579D1B8;
      }

      return v8;
    }

    v16 = @"no _hdrModesSupported ivar is created";
  }

  else
  {
    v16 = @"no _screenRuleCollections is created";
  }

  if (error)
  {
    *error = v16;
  }

  return 0;
}

- (unint64_t)maxBandwidth
{
  if (self->super._foveationIsSupported)
  {
    return 60000000;
  }

  else
  {
    return 40000000;
  }
}

@end