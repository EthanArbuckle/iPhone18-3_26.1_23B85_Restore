@interface MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams);
  videoStreamID = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self videoStreamID];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setVideoStreamID:videoStreamID];

  deltaX = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaX];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setDeltaX:deltaX];

  deltaY = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaY];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setDeltaY:deltaY];

  zoomDelta = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self zoomDelta];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setZoomDelta:zoomDelta];

  timedInvokeTimeoutMs = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self timedInvokeTimeoutMs];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self serverSideProcessingTimeout];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  unsignedShortValue = 0;
  v29 = 0;
  v31 = 0;
  LOBYTE(v33) = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  videoStreamID = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self videoStreamID];
  unsignedShortValue = [videoStreamID unsignedShortValue];

  deltaX = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaX];

  if (deltaX)
  {
    v29 = 1;
    shortValue = 0;
    deltaX2 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaX];
    shortValue = [deltaX2 shortValue];
  }

  deltaY = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaY];

  if (deltaY)
  {
    v31 = 1;
    shortValue2 = 0;
    deltaY2 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self deltaY];
    shortValue2 = [deltaY2 shortValue];
  }

  zoomDelta = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self zoomDelta];

  if (zoomDelta)
  {
    v33 = 1;
    zoomDelta2 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self zoomDelta];
    HIBYTE(v33) = [zoomDelta2 charValue];
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
    v12 = sub_238F031A0(&unsignedShortValue, v20, 0x100uLL);
    v14 = v12;
    if (v12 || (v12 = sub_238DD2EFC(v20, &v25), v14 = v12, v12))
    {
      v15 = v13;
    }

    else
    {
      sub_238DD2F90(reader, &v25);
      v12 = sub_2393C7114(reader, 21, 256);
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZRelativeMoveParams *)self _encodeToTLVReader:v12, v5];
  if (v7)
  {
    if (value)
    {
      v8 = sub_23921C1E4(MTRError, v7, v6);
      v9 = 0;
LABEL_7:
      *value = v8;
      goto LABEL_9;
    }

    v9 = 0;
  }

  else
  {
    v10 = sub_238EE60DC(v12, 0);
    v9 = v10;
    if (value && !v10)
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