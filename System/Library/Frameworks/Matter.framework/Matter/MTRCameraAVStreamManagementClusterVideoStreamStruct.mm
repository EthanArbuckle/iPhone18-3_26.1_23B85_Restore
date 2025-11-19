@interface MTRCameraAVStreamManagementClusterVideoStreamStruct
- (MTRCameraAVStreamManagementClusterVideoStreamStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamStruct);
  v5 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self videoStreamID];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setVideoStreamID:v5];

  v6 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self streamUsage];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setStreamUsage:v6];

  v7 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self videoCodec];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setVideoCodec:v7];

  v8 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self minFrameRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMinFrameRate:v8];

  v9 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self maxFrameRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMaxFrameRate:v9];

  v10 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self minResolution];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMinResolution:v10];

  v11 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self maxResolution];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMaxResolution:v11];

  v12 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self minBitRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMinBitRate:v12];

  v13 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self maxBitRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setMaxBitRate:v13];

  v14 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self keyFrameInterval];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setKeyFrameInterval:v14];

  v15 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self watermarkEnabled];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setWatermarkEnabled:v15];

  v16 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self osdEnabled];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setOsdEnabled:v16];

  v17 = [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)self referenceCount];
  [(MTRCameraAVStreamManagementClusterVideoStreamStruct *)v4 setReferenceCount:v17];

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