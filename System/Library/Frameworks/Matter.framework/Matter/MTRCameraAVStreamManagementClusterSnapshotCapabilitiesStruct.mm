@interface MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct
- (MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct);
  resolution = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self resolution];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setResolution:resolution];

  maxFrameRate = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self maxFrameRate];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setMaxFrameRate:maxFrameRate];

  imageCodec = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self imageCodec];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setImageCodec:imageCodec];

  requiresEncodedPixels = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self requiresEncodedPixels];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setRequiresEncodedPixels:requiresEncodedPixels];

  requiresHardwareEncoder = [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)self requiresHardwareEncoder];
  [(MTRCameraAVStreamManagementClusterSnapshotCapabilitiesStruct *)v4 setRequiresHardwareEncoder:requiresHardwareEncoder];

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