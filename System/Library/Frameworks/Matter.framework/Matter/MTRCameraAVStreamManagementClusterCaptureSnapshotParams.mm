@interface MTRCameraAVStreamManagementClusterCaptureSnapshotParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRCameraAVStreamManagementClusterCaptureSnapshotParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterCaptureSnapshotParams

- (MTRCameraAVStreamManagementClusterCaptureSnapshotParams)init
{
  v10.receiver = self;
  v10.super_class = MTRCameraAVStreamManagementClusterCaptureSnapshotParams;
  v2 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    snapshotStreamID = v2->_snapshotStreamID;
    v2->_snapshotStreamID = 0;

    v5 = objc_opt_new();
    requestedResolution = v3->_requestedResolution;
    v3->_requestedResolution = v5;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterCaptureSnapshotParams);
  v5 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)self snapshotStreamID];
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)v4 setSnapshotStreamID:v5];

  v6 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)self requestedResolution];
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)v4 setRequestedResolution:v6];

  v7 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)self timedInvokeTimeoutMs];
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)self serverSideProcessingTimeout];
  [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: snapshotStreamID:%@ requestedResolution:%@; >", v5, self->_snapshotStreamID, self->_requestedResolution];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  LOBYTE(v27) = 0;
  v28 = 0;
  v29 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v5 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)self snapshotStreamID];

  if (v5)
  {
    v27 = 0;
    v28 = 1;
    v6 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)self snapshotStreamID];
    v27 = [v6 unsignedShortValue];
  }

  v7 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)self requestedResolution];
  v8 = [v7 width];
  LOWORD(v29) = [v8 unsignedShortValue];

  v9 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)self requestedResolution];
  v10 = [v9 height];
  HIWORD(v29) = [v10 unsignedShortValue];

  sub_2393D9C18(0x62FuLL, 0, &v24);
  if (v24)
  {
    sub_2393C7B90(v19);
    v21 = 0;
    v22 = 0;
    v20 = &unk_284BB83A8;
    v23 = 0;
    sub_238EA16C4(&v20, &v24, 0);
    sub_2393C7BF0(v19, &v20, 0xFFFFFFFF);
    v11 = sub_238F0413C(&v27, v19, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(v19, &v24), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(a3, &v24);
      v11 = sub_2393C7114(a3, 21, 256);
      v14 = v18;
      v13 = v11;
    }

    v15 = v11 & 0xFFFFFFFF00000000;
    v20 = &unk_284BB83A8;
    sub_238EA1758(&v22);
    sub_238EA1758(&v21);
  }

  else
  {
    v14 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v15 = 0x892500000000;
    v13 = 11;
  }

  sub_238EA1758(&v24);
  sub_238EA1790(&v25);
  v16 = v15 | v13;
  v17 = v14;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRCameraAVStreamManagementClusterCaptureSnapshotParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x894200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end