@interface AVCMediaStreamNegotiatorSettingsImmersiveAudio
- (AVCMediaStreamNegotiatorSettingsImmersiveAudio)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5;
@end

@implementation AVCMediaStreamNegotiatorSettingsImmersiveAudio

- (AVCMediaStreamNegotiatorSettingsImmersiveAudio)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AVCMediaStreamNegotiatorSettingsImmersiveAudio;
  v6 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:a3 defaultDirection:? error:?];
  v7 = v6;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v6->_preferredAudioPayload = 101;
  v8 = objc_alloc_init(VCAudioRuleCollectionConfiguration);
  [(VCAudioRuleCollectionConfiguration *)v8 setChannelCount:2];
  [(VCAudioRuleCollectionConfiguration *)v8 setMinBlockSize:2];
  v9 = [[VCAudioRuleCollection alloc] initWithConfiguration:v8];

  if (v9)
  {
    v7->super._accessNetworkType = 1;
    v10 = [[VCMediaNegotiatorAudioConfiguration alloc] initWithAllowAudioRecording:0 ssrc:v7->super._localSSRC audioUnitNumber:0 audioRuleCollection:v9];
    v7->super._audioConfiguration = v10;
    if (v10)
    {
      v7->super._shouldSetJitterBufferMode = 1;
LABEL_6:

      return v7;
    }

    v12 = @"_audioConfiguration init failed";
  }

  else
  {
    v12 = @"audioRules init failed";
  }

  if (a5)
  {
    *a5 = v12;
  }

  return 0;
}

@end