@interface VCAudioRelayIOControllerSettings
- (VCAudioRelayIOControllerSettings)initWithAudioFormat:(const tagVCAudioFrameFormat *)format remoteCodecInfo:(const _VCRemoteCodecInfo *)info;
@end

@implementation VCAudioRelayIOControllerSettings

- (VCAudioRelayIOControllerSettings)initWithAudioFormat:(const tagVCAudioFrameFormat *)format remoteCodecInfo:(const _VCRemoteCodecInfo *)info
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCAudioRelayIOControllerSettings;
  result = [(VCAudioRelayIOControllerSettings *)&v9 init];
  if (result)
  {
    v7 = *&format->format.mSampleRate;
    v8 = *&format->format.mBytesPerPacket;
    *&result->_audioFormat.format.mBitsPerChannel = *&format->format.mBitsPerChannel;
    *&result->_audioFormat.format.mBytesPerPacket = v8;
    *&result->_audioFormat.format.mSampleRate = v7;
    result->_remoteCodecInfo = *info;
  }

  return result;
}

@end