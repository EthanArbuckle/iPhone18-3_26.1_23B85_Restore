@interface AVCMediaStreamNegotiatorSettingsRemoteDesktopScreenSharing
- (AVCMediaStreamNegotiatorSettingsRemoteDesktopScreenSharing)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5;
@end

@implementation AVCMediaStreamNegotiatorSettingsRemoteDesktopScreenSharing

- (AVCMediaStreamNegotiatorSettingsRemoteDesktopScreenSharing)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5
{
  v6 = a4;
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AVCMediaStreamNegotiatorSettingsRemoteDesktopScreenSharing;
  v8 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  if (!v8)
  {
    return v8;
  }

  if (v6 != 1 || ![a3 objectForKey:@"AVCMediaStreamNegotiatorAccessNetworkType"])
  {
    goto LABEL_6;
  }

  v9 = [a3 objectForKeyedSubscript:@"AVCMediaStreamNegotiatorAccessNetworkType"];
  if (v9)
  {
    v8->super._accessNetworkType = [v9 intValue];
LABEL_6:
    v10 = +[VCVideoRuleCollectionsScreenAirplay sharedInstance];
    v8->super._screenRuleCollections = &v10->super;
    if (v10)
    {
      v8->super._tilesPerFrame = 4;
      v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v8->super._hdrModesSupported = v11;
      if (v11)
      {
        [(NSMutableSet *)v11 addObject:&unk_1F579B8C8];
        v12 = [AVCMediaStreamNegotiatorSettings hdrModeWithNegotiatorInitOptions:a3];
        -[NSMutableSet addObject:](v8->super._hdrModesSupported, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12]);
        v8->super._shouldSetJitterBufferMode = 1;
        v8->super._blackFrameOnClearScreenEnabledDefault = 1;
        v8->super._blackFrameOnClearScreenEnabled = 1;
        return v8;
      }

      v14 = @"_hdrModesSupported creation failed";
    }

    else
    {
      v14 = @"no _screenRuleCollections is created";
    }

    goto LABEL_13;
  }

  v14 = @"cannot get accessNetworkType from Init options";
LABEL_13:
  if (a5)
  {
    *a5 = v14;
  }

  return 0;
}

@end