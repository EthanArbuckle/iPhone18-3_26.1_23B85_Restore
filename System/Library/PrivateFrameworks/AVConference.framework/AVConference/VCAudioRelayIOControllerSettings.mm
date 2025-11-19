@interface VCAudioRelayIOControllerSettings
- (VCAudioRelayIOControllerSettings)initWithAudioFormat:(const tagVCAudioFrameFormat *)a3 remoteCodecInfo:(const _VCRemoteCodecInfo *)a4;
@end

@implementation VCAudioRelayIOControllerSettings

- (VCAudioRelayIOControllerSettings)initWithAudioFormat:(const tagVCAudioFrameFormat *)a3 remoteCodecInfo:(const _VCRemoteCodecInfo *)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCAudioRelayIOControllerSettings;
  result = [(VCAudioRelayIOControllerSettings *)&v9 init];
  if (result)
  {
    v7 = *&a3->format.mSampleRate;
    v8 = *&a3->format.mBytesPerPacket;
    *&result->_audioFormat.format.mBitsPerChannel = *&a3->format.mBitsPerChannel;
    *&result->_audioFormat.format.mBytesPerPacket = v8;
    *&result->_audioFormat.format.mSampleRate = v7;
    result->_remoteCodecInfo = *a4;
  }

  return result;
}

@end