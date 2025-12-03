@interface AVCMediaStreamNegotiatorSettingsRemoteMic
- (AVCMediaStreamNegotiatorSettingsRemoteMic)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error;
- (id)newAudioRuleCollection;
- (void)setUpPropertiesWithOptions:(id)options;
@end

@implementation AVCMediaStreamNegotiatorSettingsRemoteMic

- (id)newAudioRuleCollection
{
  v3 = objc_alloc_init(VCAudioRuleCollectionConfiguration);
  [(VCAudioRuleCollectionConfiguration *)v3 setMinBlockSize:2];
  if (VCFeatureFlagManager_NegotiateRemoteMicEnabled())
  {
    [(VCAudioRuleCollectionConfiguration *)v3 setChannelCount:self->_channelCount];
    [(VCAudioRuleCollectionConfiguration *)v3 setAllowLargerBlockSizes:0];
  }

  v4 = [[VCAudioRuleCollection alloc] initWithConfiguration:v3];

  return v4;
}

- (void)setUpPropertiesWithOptions:(id)options
{
  v4 = [objc_msgSend(options objectForKeyedSubscript:{@"AVCMediaStreamNegotiatorRemoteMicChannelCount", "unsignedIntegerValue"}];
  self->_pTime = 10;
  if (v4 == 4)
  {
    self->_channelCount = 4;
    self->_preferredMediaBitrate = 900000;
    self->_packetExpirationTime = 50;
    self->_preferredAudioPayload = 119;
    self->super._preferredAudioCodecType = 19;
  }

  else
  {
    self->_channelCount = 1;
    self->_preferredMediaBitrate = 80000;
    self->_packetExpirationTime = 2 * [(AVCMediaStreamNegotiatorSettingsRemoteMic *)self ptime];
    self->_preferredAudioPayload = 101;
  }
}

- (AVCMediaStreamNegotiatorSettingsRemoteMic)initWithOptions:(id)options deviceRole:(unsigned __int8)role error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AVCMediaStreamNegotiatorSettingsRemoteMic;
  v7 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  v8 = v7;
  if (v7)
  {
    [(AVCMediaStreamNegotiatorSettingsRemoteMic *)v7 setUpPropertiesWithOptions:options];
    newAudioRuleCollection = [(AVCMediaStreamNegotiatorSettingsRemoteMic *)v8 newAudioRuleCollection];
    if (newAudioRuleCollection)
    {
      v10 = newAudioRuleCollection;
      v8->super._audioConfiguration = [[VCMediaNegotiatorAudioConfiguration alloc] initWithAllowAudioRecording:0 ssrc:v8->super._localSSRC audioUnitNumber:0 audioRuleCollection:newAudioRuleCollection];

      if (v8->super._audioConfiguration)
      {
        v8->super._shouldSetJitterBufferMode = 1;
        return v8;
      }

      v12 = @"_audioConfiguration init failed";
    }

    else
    {
      v12 = @"audioRules init failed";
    }

    if (error)
    {
      *error = v12;
    }

    return 0;
  }

  return v8;
}

@end