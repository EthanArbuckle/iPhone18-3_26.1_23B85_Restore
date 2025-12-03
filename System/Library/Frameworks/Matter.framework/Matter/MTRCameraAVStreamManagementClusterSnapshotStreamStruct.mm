@interface MTRCameraAVStreamManagementClusterSnapshotStreamStruct
- (MTRCameraAVStreamManagementClusterSnapshotStreamStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterSnapshotStreamStruct

- (MTRCameraAVStreamManagementClusterSnapshotStreamStruct)init
{
  v18.receiver = self;
  v18.super_class = MTRCameraAVStreamManagementClusterSnapshotStreamStruct;
  v2 = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)&v18 init];
  v3 = v2;
  if (v2)
  {
    snapshotStreamID = v2->_snapshotStreamID;
    v2->_snapshotStreamID = &unk_284C3E588;

    imageCodec = v3->_imageCodec;
    v3->_imageCodec = &unk_284C3E588;

    frameRate = v3->_frameRate;
    v3->_frameRate = &unk_284C3E588;

    v7 = objc_opt_new();
    minResolution = v3->_minResolution;
    v3->_minResolution = v7;

    v9 = objc_opt_new();
    maxResolution = v3->_maxResolution;
    v3->_maxResolution = v9;

    quality = v3->_quality;
    v3->_quality = &unk_284C3E588;

    referenceCount = v3->_referenceCount;
    v3->_referenceCount = &unk_284C3E588;

    encodedPixels = v3->_encodedPixels;
    v3->_encodedPixels = &unk_284C3E588;

    hardwareEncoder = v3->_hardwareEncoder;
    v3->_hardwareEncoder = &unk_284C3E588;

    watermarkEnabled = v3->_watermarkEnabled;
    v3->_watermarkEnabled = 0;

    osdEnabled = v3->_osdEnabled;
    v3->_osdEnabled = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamStruct);
  snapshotStreamID = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self snapshotStreamID];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setSnapshotStreamID:snapshotStreamID];

  imageCodec = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self imageCodec];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setImageCodec:imageCodec];

  frameRate = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self frameRate];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setFrameRate:frameRate];

  minResolution = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self minResolution];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setMinResolution:minResolution];

  maxResolution = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self maxResolution];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setMaxResolution:maxResolution];

  quality = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self quality];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setQuality:quality];

  referenceCount = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self referenceCount];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setReferenceCount:referenceCount];

  encodedPixels = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self encodedPixels];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setEncodedPixels:encodedPixels];

  hardwareEncoder = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self hardwareEncoder];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setHardwareEncoder:hardwareEncoder];

  watermarkEnabled = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self watermarkEnabled];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setWatermarkEnabled:watermarkEnabled];

  osdEnabled = [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)self osdEnabled];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamStruct *)v4 setOsdEnabled:osdEnabled];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: snapshotStreamID:%@ imageCodec:%@; frameRate:%@; minResolution:%@; maxResolution:%@; quality:%@; referenceCount:%@; encodedPixels:%@; hardwareEncoder:%@; watermarkEnabled:%@; osdEnabled:%@; >", v5, self->_snapshotStreamID, self->_imageCodec, self->_frameRate, self->_minResolution, self->_maxResolution, self->_quality, self->_referenceCount, self->_encodedPixels, self->_hardwareEncoder, self->_watermarkEnabled, self->_osdEnabled];;

  return v6;
}

@end