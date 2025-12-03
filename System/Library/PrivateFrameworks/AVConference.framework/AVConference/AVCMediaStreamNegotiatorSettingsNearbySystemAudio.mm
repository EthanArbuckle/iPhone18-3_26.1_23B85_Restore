@interface AVCMediaStreamNegotiatorSettingsNearbySystemAudio
- (AVCMediaStreamNegotiatorSettingsNearbySystemAudio)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error;
@end

@implementation AVCMediaStreamNegotiatorSettingsNearbySystemAudio

- (AVCMediaStreamNegotiatorSettingsNearbySystemAudio)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error
{
  roleCopy = role;
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AVCMediaStreamNegotiatorSettingsNearbySystemAudio;
  v7 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:options defaultDirection:? error:?];
  v8 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v7->_preferredAudioPayload = 101;
  v9 = objc_alloc_init(VCAudioRuleCollectionConfiguration);
  [(VCAudioRuleCollectionConfiguration *)v9 setChannelCount:2];
  [(VCAudioRuleCollectionConfiguration *)v9 setMinBlockSize:2];
  v10 = [[VCAudioRuleCollection alloc] initWithConfiguration:v9];

  if (v10)
  {
    v8->super._accessNetworkType = 1;
    v11 = [[VCMediaNegotiatorAudioConfiguration alloc] initWithAllowAudioRecording:0 ssrc:v8->super._localSSRC audioUnitNumber:0 audioRuleCollection:v10];
    v8->super._audioConfiguration = v11;
    if (v11)
    {
      v8->super._shouldSetJitterBufferMode = 1;
      [(AVCMediaStreamNegotiatorSettingsNearbySystemAudio *)v8 setAudioDeviceUIDForDeviceRole:roleCopy];
LABEL_6:

      return v8;
    }

    v13 = @"_audioConfiguration init failed";
  }

  else
  {
    v13 = @"audioRules init failed";
  }

  if (error)
  {
    *error = v13;
  }

  return 0;
}

@end