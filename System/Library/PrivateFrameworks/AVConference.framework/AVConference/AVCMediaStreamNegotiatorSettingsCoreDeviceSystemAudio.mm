@interface AVCMediaStreamNegotiatorSettingsCoreDeviceSystemAudio
- (AVCMediaStreamNegotiatorSettingsCoreDeviceSystemAudio)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error;
- (unint64_t)preferredMediaBitRate;
- (unint64_t)ptime;
@end

@implementation AVCMediaStreamNegotiatorSettingsCoreDeviceSystemAudio

- (AVCMediaStreamNegotiatorSettingsCoreDeviceSystemAudio)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error
{
  roleCopy = role;
  v17 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = AVCMediaStreamNegotiatorSettingsCoreDeviceSystemAudio;
  v8 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  v9 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v8->_preferredAudioPayload = 101;
  v10 = objc_alloc_init(VCAudioRuleCollectionConfiguration);
  [(VCAudioRuleCollectionConfiguration *)v10 setChannelCount:2];
  [(VCAudioRuleCollectionConfiguration *)v10 setMinBlockSize:2];
  v11 = [[VCAudioRuleCollection alloc] initWithConfiguration:v10];

  if (!v11)
  {

    v9 = 0;
    *error = @"audioRules init failed";
    goto LABEL_10;
  }

  if (roleCopy == 1 && [options objectForKey:@"AVCMediaStreamNegotiatorAccessNetworkType"])
  {
    v12 = [options objectForKeyedSubscript:@"AVCMediaStreamNegotiatorAccessNetworkType"];
    if (!v12)
    {
      v15 = @"cannot get accessNetworkType from Init options";
      goto LABEL_15;
    }

    v9->super._accessNetworkType = [v12 intValue];
  }

  v13 = [[VCMediaNegotiatorAudioConfiguration alloc] initWithAllowAudioRecording:0 ssrc:v9->super._localSSRC audioUnitNumber:0 audioRuleCollection:v11];
  v9->super._audioConfiguration = v13;
  if (v13)
  {
    v9->super._shouldSetJitterBufferMode = 1;
LABEL_10:

    return v9;
  }

  v15 = @"_audioConfiguration init failed";
LABEL_15:

  if (error)
  {
    *error = v15;
  }

  return 0;
}

- (unint64_t)ptime
{
  if ([(AVCMediaStreamNegotiatorSettings *)self accessNetworkType]== 1)
  {
    return 10;
  }

  else
  {
    return 20;
  }
}

- (unint64_t)preferredMediaBitRate
{
  if ([(AVCMediaStreamNegotiatorSettings *)self accessNetworkType]== 1)
  {
    return 320000;
  }

  else
  {
    return 128000;
  }
}

@end