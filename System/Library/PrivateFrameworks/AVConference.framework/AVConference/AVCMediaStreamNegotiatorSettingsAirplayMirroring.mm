@interface AVCMediaStreamNegotiatorSettingsAirplayMirroring
- (AVCMediaStreamNegotiatorSettingsAirplayMirroring)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error;
@end

@implementation AVCMediaStreamNegotiatorSettingsAirplayMirroring

- (AVCMediaStreamNegotiatorSettingsAirplayMirroring)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error
{
  roleCopy = role;
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = AVCMediaStreamNegotiatorSettingsAirplayMirroring;
  v8 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  if (v8)
  {
    v9 = +[VCVideoRuleCollectionsScreenAirplay sharedInstance];
    v8->super._screenRuleCollections = &v9->super;
    if (v9)
    {
      v8->super._tilesPerFrame = [VCVideoRuleCollectionsScreenAirplay tilesPerFrameForHDRMode:[AVCMediaStreamNegotiatorSettings hdrModeWithNegotiatorInitOptions:options]];
      v10 = 1;
      v8->super._blackFrameOnClearScreenEnabledDefault = 1;
      if (roleCopy == 2)
      {
        v10 = +[VCHardwareSettings deviceClass]!= 8;
      }

      v8->super._blackFrameOnClearScreenEnabled = v10;
    }

    else
    {
      if (error)
      {
        *error = @"no _screenRuleCollections is created";
      }

      return 0;
    }
  }

  return v8;
}

@end