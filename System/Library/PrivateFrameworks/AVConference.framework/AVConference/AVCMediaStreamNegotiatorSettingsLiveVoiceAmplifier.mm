@interface AVCMediaStreamNegotiatorSettingsLiveVoiceAmplifier
- (id)newAudioRuleCollection;
- (void)setUpPropertiesWithOptions:(id)options;
@end

@implementation AVCMediaStreamNegotiatorSettingsLiveVoiceAmplifier

- (void)setUpPropertiesWithOptions:(id)options
{
  self->super._pTime = 5;
  self->super._channelCount = 1;
  self->super._preferredMediaBitrate = 128000;
  self->super._packetExpirationTime = 2 * [(AVCMediaStreamNegotiatorSettingsRemoteMic *)self ptime];
  self->super._preferredAudioPayload = 119;
  self->super.super._preferredAudioCodecType = 19;
}

- (id)newAudioRuleCollection
{
  v3 = objc_alloc_init(VCAudioRuleCollectionConfiguration);
  [(VCAudioRuleCollectionConfiguration *)v3 setMinBlockSize:1];
  [(VCAudioRuleCollectionConfiguration *)v3 setChannelCount:self->super._channelCount];
  [(VCAudioRuleCollectionConfiguration *)v3 setAllowLargerBlockSizes:0];
  v4 = [[VCAudioRuleCollection alloc] initWithConfiguration:v3];

  return v4;
}

@end