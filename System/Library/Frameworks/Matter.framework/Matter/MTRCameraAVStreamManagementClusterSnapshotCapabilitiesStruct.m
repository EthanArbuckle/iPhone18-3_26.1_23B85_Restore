@interface MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct
- (MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct

- (MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct)init
{
  v10.receiver = self;
  v10.super_class = MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct;
  v2 = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    resolution = v2->_resolution;
    v2->_resolution = v3;

    maxFrameRate = v2->_maxFrameRate;
    v2->_maxFrameRate = &unk_284C3E588;

    imageCodec = v2->_imageCodec;
    v2->_imageCodec = &unk_284C3E588;

    requiresEncodedPixels = v2->_requiresEncodedPixels;
    v2->_requiresEncodedPixels = &unk_284C3E588;

    requiresHardwareEncoder = v2->_requiresHardwareEncoder;
    v2->_requiresHardwareEncoder = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct);
  v5 = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self resolution];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setResolution:v5];

  v6 = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self maxFrameRate];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setMaxFrameRate:v6];

  v7 = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self imageCodec];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setImageCodec:v7];

  v8 = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self requiresEncodedPixels];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setRequiresEncodedPixels:v8];

  v9 = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self requiresHardwareEncoder];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setRequiresHardwareEncoder:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: resolution:%@ maxFrameRate:%@; imageCodec:%@; requiresEncodedPixels:%@; requiresHardwareEncoder:%@; >", v5, self->_resolution, self->_maxFrameRate, self->_imageCodec, self->_requiresEncodedPixels, self->_requiresHardwareEncoder];;

  return v6;
}

@end