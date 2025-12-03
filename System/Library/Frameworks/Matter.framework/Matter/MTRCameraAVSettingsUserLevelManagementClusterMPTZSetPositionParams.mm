@interface MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams

- (MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams)init
{
  v10.receiver = self;
  v10.super_class = MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams;
  v2 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    pan = v2->_pan;
    v2->_pan = 0;

    tilt = v3->_tilt;
    v3->_tilt = 0;

    zoom = v3->_zoom;
    v3->_zoom = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams);
  v5 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self pan];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)v4 setPan:v5];

  tilt = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self tilt];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)v4 setTilt:tilt];

  zoom = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self zoom];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)v4 setZoom:zoom];

  timedInvokeTimeoutMs = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self timedInvokeTimeoutMs];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self serverSideProcessingTimeout];
  [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: pan:%@ tilt:%@; zoom:%@; >", v5, self->_pan, self->_tilt, self->_zoom];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v27[0] = 0;
  v29 = 0;
  LOBYTE(v31) = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v5 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self pan];

  if (v5)
  {
    v27[0] = 1;
    shortValue = 0;
    v6 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self pan];
    shortValue = [v6 shortValue];
  }

  tilt = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self tilt];

  if (tilt)
  {
    v29 = 1;
    shortValue2 = 0;
    tilt2 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self tilt];
    shortValue2 = [tilt2 shortValue];
  }

  zoom = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self zoom];

  if (zoom)
  {
    v31 = 1;
    zoom2 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self zoom];
    HIBYTE(v31) = [zoom2 unsignedCharValue];
  }

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
    v11 = sub_238F02CD0(v27, v19, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(v19, &v24), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(reader, &v24);
      v11 = sub_2393C7114(reader, 21, 256);
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
    v15 = 0x89F000000000;
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRCameraAVSettingsUserLevelManagementClusterMPTZSetPositionParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x8A0D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end