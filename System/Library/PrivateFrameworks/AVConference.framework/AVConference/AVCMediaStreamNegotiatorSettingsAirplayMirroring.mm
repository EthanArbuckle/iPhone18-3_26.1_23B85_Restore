@interface AVCMediaStreamNegotiatorSettingsAirplayMirroring
- (AVCMediaStreamNegotiatorSettingsAirplayMirroring)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5;
@end

@implementation AVCMediaStreamNegotiatorSettingsAirplayMirroring

- (AVCMediaStreamNegotiatorSettingsAirplayMirroring)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5
{
  v6 = a4;
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
      v8->super._tilesPerFrame = [VCVideoRuleCollectionsScreenAirplay tilesPerFrameForHDRMode:[AVCMediaStreamNegotiatorSettings hdrModeWithNegotiatorInitOptions:a3]];
      v10 = 1;
      v8->super._blackFrameOnClearScreenEnabledDefault = 1;
      if (v6 == 2)
      {
        v10 = +[VCHardwareSettings deviceClass]!= 8;
      }

      v8->super._blackFrameOnClearScreenEnabled = v10;
    }

    else
    {
      if (a5)
      {
        *a5 = @"no _screenRuleCollections is created";
      }

      return 0;
    }
  }

  return v8;
}

@end