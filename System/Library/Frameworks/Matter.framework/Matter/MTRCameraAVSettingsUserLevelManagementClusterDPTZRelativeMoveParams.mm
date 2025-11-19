@interface MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams

- (MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams)init
{
  v11.receiver = self;
  v11.super_class = MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams;
  v2 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    videoStreamID = v2->_videoStreamID;
    v2->_videoStreamID = &unk_284C3E4C8;

    deltaX = v3->_deltaX;
    v3->_deltaX = 0;

    deltaY = v3->_deltaY;
    v3->_deltaY = 0;

    zoomDelta = v3->_zoomDelta;
    v3->_zoomDelta = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams);
  v5 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self videoStreamID];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setVideoStreamID:v5];

  v6 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaX];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setDeltaX:v6];

  v7 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaY];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setDeltaY:v7];

  v8 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self zoomDelta];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setZoomDelta:v8];

  v9 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self timedInvokeTimeoutMs];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setTimedInvokeTimeoutMs:v9];

  v10 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self serverSideProcessingTimeout];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setServerSideProcessingTimeout:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: videoStreamID:%@ deltaX:%@; deltaY:%@; zoomDelta:%@; >", v5, self->_videoStreamID, self->_deltaX, self->_deltaY, self->_zoomDelta];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v28 = 0;
  v29 = 0;
  v31 = 0;
  LOBYTE(v33) = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  v5 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self videoStreamID];
  v28 = [v5 unsignedShortValue];

  v6 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaX];

  if (v6)
  {
    v29 = 1;
    v30 = 0;
    v7 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaX];
    v30 = [v7 shortValue];
  }

  v8 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaY];

  if (v8)
  {
    v31 = 1;
    v32 = 0;
    v9 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaY];
    v32 = [v9 shortValue];
  }

  v10 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self zoomDelta];

  if (v10)
  {
    v33 = 1;
    v11 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self zoomDelta];
    HIBYTE(v33) = [v11 charValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v25);
  if (v25)
  {
    sub_2393C7B90(v20);
    v22 = 0;
    v23 = 0;
    v21 = &unk_284BB83A8;
    v24 = 0;
    sub_238EA16C4(&v21, &v25, 0);
    sub_2393C7BF0(v20, &v21, 0xFFFFFFFF);
    v12 = sub_238F031A0(&v28, v20, 0x100uLL);
    v14 = v12;
    if (v12 || (v12 = sub_238DD2EFC(v20, &v25), v14 = v12, v12))
    {
      v15 = v13;
    }

    else
    {
      sub_238DD2F90(a3, &v25);
      v12 = sub_2393C7114(a3, 21, 256);
      v15 = v19;
      v14 = v12;
    }

    v16 = v12 & 0xFFFFFFFF00000000;
    v21 = &unk_284BB83A8;
    sub_238EA1758(&v23);
    sub_238EA1758(&v22);
  }

  else
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v16 = 0x8C0C00000000;
    v14 = 11;
  }

  sub_238EA1758(&v25);
  sub_238EA1790(&v26);
  v17 = v16 | v14;
  v18 = v15;
  result.mFile = v18;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x8C2900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end