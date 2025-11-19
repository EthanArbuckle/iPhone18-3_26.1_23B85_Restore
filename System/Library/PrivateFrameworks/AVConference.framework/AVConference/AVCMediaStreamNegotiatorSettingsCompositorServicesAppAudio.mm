@interface AVCMediaStreamNegotiatorSettingsCompositorServicesAppAudio
- (AVCMediaStreamNegotiatorSettingsCompositorServicesAppAudio)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5;
@end

@implementation AVCMediaStreamNegotiatorSettingsCompositorServicesAppAudio

- (AVCMediaStreamNegotiatorSettingsCompositorServicesAppAudio)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = AVCMediaStreamNegotiatorSettingsCompositorServicesAppAudio;
  v7 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:a3 defaultDirection:? error:?];
  v8 = v7;
  if (v7)
  {
    if ((a4 - 3) < 0xFEu)
    {
      v10 = 0;
      v13 = @"Invalid device role";
    }

    else
    {
      v7->super._shouldNegotiateDirection = 1;
      v7->_preferredAudioPayload = 101;
      v9 = objc_alloc_init(VCAudioRuleCollectionConfiguration);
      [(VCAudioRuleCollectionConfiguration *)v9 setChannelCount:2];
      [(VCAudioRuleCollectionConfiguration *)v9 setMinBlockSize:2];
      v10 = [[VCAudioRuleCollection alloc] initWithConfiguration:v9];

      if (v10)
      {
        v11 = [[VCMediaNegotiatorAudioConfiguration alloc] initWithAllowAudioRecording:0 ssrc:v8->super._localSSRC audioUnitNumber:0 audioRuleCollection:v10];
        v8->super._audioConfiguration = v11;
        if (v11)
        {
          v8->super._shouldSetJitterBufferMode = 1;
          if (!+[VCHardwareSettings deviceClass])
          {
            v8->super._systemAudioCaptureMuteBehavior = 1;
          }

          return v8;
        }

        v13 = @"_audioConfiguration init failed";
      }

      else
      {
        v13 = @"audioRules init failed";
      }
    }
  }

  else
  {
    v10 = 0;
    v13 = @"Failed super init";
  }

  if (a5)
  {
    *a5 = v13;
  }

  return 0;
}

@end