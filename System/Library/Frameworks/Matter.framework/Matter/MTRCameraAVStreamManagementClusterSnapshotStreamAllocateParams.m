@interface MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams

- (MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams)init
{
  v16.receiver = self;
  v16.super_class = MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams;
  v2 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)&v16 init];
  v3 = v2;
  if (v2)
  {
    imageCodec = v2->_imageCodec;
    v2->_imageCodec = &unk_284C3E4C8;

    maxFrameRate = v3->_maxFrameRate;
    v3->_maxFrameRate = &unk_284C3E4C8;

    v6 = objc_opt_new();
    minResolution = v3->_minResolution;
    v3->_minResolution = v6;

    v8 = objc_opt_new();
    maxResolution = v3->_maxResolution;
    v3->_maxResolution = v8;

    quality = v3->_quality;
    v3->_quality = &unk_284C3E4C8;

    watermarkEnabled = v3->_watermarkEnabled;
    v3->_watermarkEnabled = 0;

    osdEnabled = v3->_osdEnabled;
    v3->_osdEnabled = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams);
  v5 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self imageCodec];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v4 setImageCodec:v5];

  v6 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self maxFrameRate];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v4 setMaxFrameRate:v6];

  v7 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self minResolution];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v4 setMinResolution:v7];

  v8 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self maxResolution];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v4 setMaxResolution:v8];

  v9 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self quality];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v4 setQuality:v9];

  v10 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self watermarkEnabled];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v4 setWatermarkEnabled:v10];

  v11 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self osdEnabled];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v4 setOsdEnabled:v11];

  v12 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self timedInvokeTimeoutMs];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v4 setTimedInvokeTimeoutMs:v12];

  v13 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self serverSideProcessingTimeout];
  [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)v4 setServerSideProcessingTimeout:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: imageCodec:%@ maxFrameRate:%@; minResolution:%@; maxResolution:%@; quality:%@; watermarkEnabled:%@; osdEnabled:%@; >", v5, self->_imageCodec, self->_maxFrameRate, self->_minResolution, self->_maxResolution, self->_quality, self->_watermarkEnabled, self->_osdEnabled];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  LOBYTE(v36) = 0;
  LOBYTE(v39) = 0;
  v37 = 0;
  *v38 = 0;
  v35[0] = 0;
  v35[1] = 0;
  v34 = v35;
  v5 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self imageCodec];
  LOBYTE(v36) = [v5 unsignedCharValue];

  v6 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self maxFrameRate];
  LOWORD(v37) = [v6 unsignedShortValue];

  v7 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self minResolution];
  v8 = [v7 width];
  WORD1(v37) = [v8 unsignedShortValue];

  v9 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self minResolution];
  v10 = [v9 height];
  WORD2(v37) = [v10 unsignedShortValue];

  v11 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self maxResolution];
  v12 = [v11 width];
  HIWORD(v37) = [v12 unsignedShortValue];

  v13 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self maxResolution];
  v14 = [v13 height];
  *v38 = [v14 unsignedShortValue];

  v15 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self quality];
  v38[2] = [v15 unsignedCharValue];

  v16 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self watermarkEnabled];

  if (v16)
  {
    *&v38[3] = 1;
    v17 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self watermarkEnabled];
    v38[4] = [v17 BOOLValue];
  }

  v18 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self osdEnabled];

  if (v18)
  {
    v39 = 1;
    v19 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self osdEnabled];
    HIBYTE(v39) = [v19 BOOLValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v33);
  if (v33)
  {
    sub_2393C7B90(v28);
    v30 = 0;
    v31 = 0;
    v29 = &unk_284BB83A8;
    v32 = 0;
    sub_238EA16C4(&v29, &v33, 0);
    sub_2393C7BF0(v28, &v29, 0xFFFFFFFF);
    v20 = sub_238F03D78(&v36, v28, 0x100uLL);
    v22 = v20;
    if (v20 || (v20 = sub_238DD2EFC(v28, &v33), v22 = v20, v20))
    {
      v23 = v21;
    }

    else
    {
      sub_238DD2F90(a3, &v33);
      v20 = sub_2393C7114(a3, 21, 256);
      v23 = v27;
      v22 = v20;
    }

    v24 = v20 & 0xFFFFFFFF00000000;
    v29 = &unk_284BB83A8;
    sub_238EA1758(&v31);
    sub_238EA1758(&v30);
  }

  else
  {
    v23 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v24 = 0x875C00000000;
    v22 = 11;
  }

  sub_238EA1758(&v33);
  sub_238EA1790(&v34);
  v25 = v24 | v22;
  v26 = v23;
  result.mFile = v26;
  result.mError = v25;
  result.mLine = HIDWORD(v25);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRCameraAVStreamManagementClusterSnapshotStreamAllocateParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (a3)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *a3 = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (a3 && !v10)
    {
      v8 = sub_23921C1E4(MTRError, 0x877900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end