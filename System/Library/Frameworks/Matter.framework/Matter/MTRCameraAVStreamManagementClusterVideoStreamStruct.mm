@interface MTRCameraAVStreamManagementClusterVideoStreamStruct
- (MTRCameraAVStreamManagementClusterVideoStreamStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterVideoStreamStruct

- (MTRCameraAVStreamManagementClusterVideoStreamStruct)init
{
  v20.receiver = self;
  v20.super_class = MTRCameraAVStreamManagementClusterVideoStreamStruct;
  v2 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)&v20 init];
  v3 = v2;
  if (v2)
  {
    videoStreamID = v2->_videoStreamID;
    v2->_videoStreamID = &unk_284C3E588;

    streamUsage = v3->_streamUsage;
    v3->_streamUsage = &unk_284C3E588;

    videoCodec = v3->_videoCodec;
    v3->_videoCodec = &unk_284C3E588;

    minFrameRate = v3->_minFrameRate;
    v3->_minFrameRate = &unk_284C3E588;

    maxFrameRate = v3->_maxFrameRate;
    v3->_maxFrameRate = &unk_284C3E588;

    v9 = objc_opt_new();
    minResolution = v3->_minResolution;
    v3->_minResolution = v9;

    v11 = objc_opt_new();
    maxResolution = v3->_maxResolution;
    v3->_maxResolution = v11;

    minBitRate = v3->_minBitRate;
    v3->_minBitRate = &unk_284C3E588;

    maxBitRate = v3->_maxBitRate;
    v3->_maxBitRate = &unk_284C3E588;

    keyFrameInterval = v3->_keyFrameInterval;
    v3->_keyFrameInterval = &unk_284C3E588;

    watermarkEnabled = v3->_watermarkEnabled;
    v3->_watermarkEnabled = 0;

    osdEnabled = v3->_osdEnabled;
    v3->_osdEnabled = 0;

    referenceCount = v3->_referenceCount;
    v3->_referenceCount = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamStruct);
  videoStreamID = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self videoStreamID];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setVideoStreamID:videoStreamID];

  streamUsage = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self streamUsage];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setStreamUsage:streamUsage];

  videoCodec = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self videoCodec];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setVideoCodec:videoCodec];

  minFrameRate = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self minFrameRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMinFrameRate:minFrameRate];

  maxFrameRate = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self maxFrameRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMaxFrameRate:maxFrameRate];

  minResolution = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self minResolution];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMinResolution:minResolution];

  maxResolution = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self maxResolution];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMaxResolution:maxResolution];

  minBitRate = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self minBitRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMinBitRate:minBitRate];

  maxBitRate = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self maxBitRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMaxBitRate:maxBitRate];

  keyFrameInterval = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self keyFrameInterval];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setKeyFrameInterval:keyFrameInterval];

  watermarkEnabled = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self watermarkEnabled];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setWatermarkEnabled:watermarkEnabled];

  osdEnabled = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self osdEnabled];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setOsdEnabled:osdEnabled];

  referenceCount = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self referenceCount];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setReferenceCount:referenceCount];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: videoStreamID:%@ streamUsage:%@; videoCodec:%@; minFrameRate:%@; maxFrameRate:%@; minResolution:%@; maxResolution:%@; minBitRate:%@; maxBitRate:%@; keyFrameInterval:%@; watermarkEnabled:%@; osdEnabled:%@; referenceCount:%@; >", v5, self->_videoStreamID, self->_streamUsage, self->_videoCodec, self->_minFrameRate, self->_maxFrameRate, self->_minResolution, self->_maxResolution, self->_minBitRate, self->_maxBitRate, self->_keyFrameInterval, self->_watermarkEnabled, self->_osdEnabled, self->_referenceCount];;

  return v6;
}

@end