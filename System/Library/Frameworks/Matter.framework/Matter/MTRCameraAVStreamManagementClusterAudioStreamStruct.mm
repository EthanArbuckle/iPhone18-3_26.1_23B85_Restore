@interface MTRCameraAVStreamManagementClusterAudioStreamStruct
- (MTRCameraAVStreamManagementClusterAudioStreamStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterAudioStreamStruct

- (MTRCameraAVStreamManagementClusterAudioStreamStruct)init
{
  v13.receiver = self;
  v13.super_class = MTRCameraAVStreamManagementClusterAudioStreamStruct;
  v2 = [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)&v13 init];
  v3 = v2;
  if (v2)
  {
    audioStreamID = v2->_audioStreamID;
    v2->_audioStreamID = &unk_284C3E588;

    streamUsage = v3->_streamUsage;
    v3->_streamUsage = &unk_284C3E588;

    audioCodec = v3->_audioCodec;
    v3->_audioCodec = &unk_284C3E588;

    channelCount = v3->_channelCount;
    v3->_channelCount = &unk_284C3E588;

    sampleRate = v3->_sampleRate;
    v3->_sampleRate = &unk_284C3E588;

    bitRate = v3->_bitRate;
    v3->_bitRate = &unk_284C3E588;

    bitDepth = v3->_bitDepth;
    v3->_bitDepth = &unk_284C3E588;

    referenceCount = v3->_referenceCount;
    v3->_referenceCount = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioStreamStruct);
  audioStreamID = [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)self audioStreamID];
  [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)v4 setAudioStreamID:audioStreamID];

  streamUsage = [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)self streamUsage];
  [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)v4 setStreamUsage:streamUsage];

  audioCodec = [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)self audioCodec];
  [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)v4 setAudioCodec:audioCodec];

  channelCount = [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)self channelCount];
  [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)v4 setChannelCount:channelCount];

  sampleRate = [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)self sampleRate];
  [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)v4 setSampleRate:sampleRate];

  bitRate = [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)self bitRate];
  [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)v4 setBitRate:bitRate];

  bitDepth = [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)self bitDepth];
  [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)v4 setBitDepth:bitDepth];

  referenceCount = [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)self referenceCount];
  [(MTRCameraAVStreamManagementClusterAudioStreamStruct *)v4 setReferenceCount:referenceCount];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: audioStreamID:%@ streamUsage:%@; audioCodec:%@; channelCount:%@; sampleRate:%@; bitRate:%@; bitDepth:%@; referenceCount:%@; >", v5, self->_audioStreamID, self->_streamUsage, self->_audioCodec, self->_channelCount, self->_sampleRate, self->_bitRate, self->_bitDepth, self->_referenceCount];;

  return v6;
}

@end