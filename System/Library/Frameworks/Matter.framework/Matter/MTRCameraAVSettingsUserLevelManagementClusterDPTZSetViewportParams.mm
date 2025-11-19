@interface MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams

- (MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams)init
{
  v10.receiver = self;
  v10.super_class = MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams;
  v2 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    videoStreamID = v2->_videoStreamID;
    v2->_videoStreamID = &unk_284C3E4C8;

    v5 = objc_opt_new();
    viewport = v3->_viewport;
    v3->_viewport = v5;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams);
  v5 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self videoStreamID];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)v4 setVideoStreamID:v5];

  v6 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self viewport];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)v4 setViewport:v6];

  v7 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self timedInvokeTimeoutMs];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self serverSideProcessingTimeout];
  [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: videoStreamID:%@ viewport:%@; >", v5, self->_videoStreamID, self->_viewport];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v30 = 0;
  v31 = 0;
  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  v5 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self videoStreamID];
  v30 = [v5 unsignedShortValue];

  v6 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self viewport];
  v7 = [v6 x1];
  LOWORD(v31) = [v7 unsignedShortValue];

  v8 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self viewport];
  v9 = [v8 y1];
  WORD1(v31) = [v9 unsignedShortValue];

  v10 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self viewport];
  v11 = [v10 x2];
  WORD2(v31) = [v11 unsignedShortValue];

  v12 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self viewport];
  v13 = [v12 y2];
  HIWORD(v31) = [v13 unsignedShortValue];

  sub_2393D9C18(0x62FuLL, 0, &v27);
  if (v27)
  {
    sub_2393C7B90(v22);
    v24 = 0;
    v25 = 0;
    v23 = &unk_284BB83A8;
    v26 = 0;
    sub_238EA16C4(&v23, &v27, 0);
    sub_2393C7BF0(v22, &v23, 0xFFFFFFFF);
    v14 = sub_238F03094(&v30, v22, 0x100uLL);
    v16 = v14;
    if (v14 || (v14 = sub_238DD2EFC(v22, &v27), v16 = v14, v14))
    {
      v17 = v15;
    }

    else
    {
      sub_238DD2F90(a3, &v27);
      v14 = sub_2393C7114(a3, 21, 256);
      v17 = v21;
      v16 = v14;
    }

    v18 = v14 & 0xFFFFFFFF00000000;
    v23 = &unk_284BB83A8;
    sub_238EA1758(&v25);
    sub_238EA1758(&v24);
  }

  else
  {
    v17 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v18 = 0x8BA200000000;
    v16 = 11;
  }

  sub_238EA1758(&v27);
  sub_238EA1790(&v28);
  v19 = v18 | v16;
  v20 = v17;
  result.mFile = v20;
  result.mError = v19;
  result.mLine = HIDWORD(v19);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRCameraAVSettingsUserLevelManagementClusterDPTZSetViewportParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x8BBF00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end