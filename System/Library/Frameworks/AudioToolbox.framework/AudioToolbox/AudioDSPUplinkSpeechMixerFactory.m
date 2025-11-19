@interface AudioDSPUplinkSpeechMixerFactory
- (AudioDSPUplinkSpeechMixerFactory)init;
- (AudioStreamBasicDescription)streamDescription;
- (id)createUplinkSpeechMixer;
- (void)setStreamDescription:(AudioStreamBasicDescription *)a3;
@end

@implementation AudioDSPUplinkSpeechMixerFactory

- (id)createUplinkSpeechMixer
{
  version = self->_version;
  if (version == 2)
  {
    v4 = AudioDSPUplinkSpeechMixer_v2;
    goto LABEL_5;
  }

  if (version == 1)
  {
    v4 = AudioDSPUplinkSpeechMixer_v1;
LABEL_5:
    v5 = [v4 alloc];
    v6 = *&self->_settings.streamDescription.mBytesPerPacket;
    v9[0] = *&self->_settings.streamDescription.mSampleRate;
    v9[1] = v6;
    v9[2] = *&self->_settings.streamDescription.mBitsPerChannel;
    v7 = [v5 initWithSettings:v9];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (void)setStreamDescription:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_settings.streamDescription.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_settings.streamDescription.mBytesPerPacket = v4;
  *&self->_settings.streamDescription.mSampleRate = v3;
}

- (AudioStreamBasicDescription)streamDescription
{
  v3 = *&self->mBytesPerFrame;
  *&retstr->mSampleRate = *&self->mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[1].mSampleRate;
  return self;
}

- (AudioDSPUplinkSpeechMixerFactory)init
{
  v6.receiver = self;
  v6.super_class = AudioDSPUplinkSpeechMixerFactory;
  v2 = [(AudioDSPUplinkSpeechMixerFactory *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_settings.streamDescription.mSampleRate = 24000.0;
    *&v2->_settings.streamDescription.mFormatID = xmmword_1DE09BD50;
    *&v2->_settings.streamDescription.mBytesPerFrame = xmmword_1DE09BD60;
    v2->_settings.maximumFramesPerSlice = 480;
    if (_os_feature_enabled_impl())
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v3->_version = v4;
  }

  return v3;
}

@end