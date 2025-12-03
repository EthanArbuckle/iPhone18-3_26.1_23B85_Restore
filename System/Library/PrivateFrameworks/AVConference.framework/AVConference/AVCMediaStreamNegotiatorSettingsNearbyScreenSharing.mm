@interface AVCMediaStreamNegotiatorSettingsNearbyScreenSharing
- (AVCMediaStreamNegotiatorSettingsNearbyScreenSharing)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error;
@end

@implementation AVCMediaStreamNegotiatorSettingsNearbyScreenSharing

- (AVCMediaStreamNegotiatorSettingsNearbyScreenSharing)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error
{
  roleCopy = role;
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AVCMediaStreamNegotiatorSettingsNearbyScreenSharing;
  v8 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  if (!v8)
  {
    return v8;
  }

  if (roleCopy != 1 || ![options objectForKey:@"AVCMediaStreamNegotiatorAccessNetworkType"])
  {
    goto LABEL_6;
  }

  v9 = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorAccessNetworkType"];
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
        [(NSMutableSet *)v11 addObject:&unk_1F5799A08];
        v8->super._shouldSetJitterBufferMode = 1;
        return v8;
      }

      v13 = @"_hdrModesSupported creation failed";
    }

    else
    {
      v13 = @"no _screenRuleCollections is created";
    }

    goto LABEL_13;
  }

  v13 = @"cannot get accessNetworkType from Init options";
LABEL_13:
  if (error)
  {
    *error = v13;
  }

  return 0;
}

@end