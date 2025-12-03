@interface MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct
- (MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct

- (MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct)init
{
  v9.receiver = self;
  v9.super_class = MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct;
  v2 = [(MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct *)&v9 init];
  v3 = v2;
  if (v2)
  {
    codec = v2->_codec;
    v2->_codec = &unk_284C3E588;

    v5 = objc_opt_new();
    resolution = v3->_resolution;
    v3->_resolution = v5;

    minBitRate = v3->_minBitRate;
    v3->_minBitRate = &unk_284C3E588;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct);
  codec = [(MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct *)self codec];
  [(MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct *)v4 setCodec:codec];

  resolution = [(MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct *)self resolution];
  [(MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct *)v4 setResolution:resolution];

  minBitRate = [(MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct *)self minBitRate];
  [(MTRCameraAVStreamManagementClusterRateDistortionTradeOffPointsStruct *)v4 setMinBitRate:minBitRate];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: codec:%@ resolution:%@; minBitRate:%@; >", v5, self->_codec, self->_resolution, self->_minBitRate];;

  return v6;
}

@end