@interface MTRCameraAVStreamManagementClusterVideoStreamAllocateParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRCameraAVStreamManagementClusterVideoStreamAllocateParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterVideoStreamAllocateParams

- (MTRCameraAVStreamManagementClusterVideoStreamAllocateParams)init
{
  v20.receiver = self;
  v20.super_class = MTRCameraAVStreamManagementClusterVideoStreamAllocateParams;
  v2 = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)&v20 init];
  v3 = v2;
  if (v2)
  {
    streamUsage = v2->_streamUsage;
    v2->_streamUsage = &unk_284C3E4C8;

    videoCodec = v3->_videoCodec;
    v3->_videoCodec = &unk_284C3E4C8;

    minFrameRate = v3->_minFrameRate;
    v3->_minFrameRate = &unk_284C3E4C8;

    maxFrameRate = v3->_maxFrameRate;
    v3->_maxFrameRate = &unk_284C3E4C8;

    v8 = objc_opt_new();
    minResolution = v3->_minResolution;
    v3->_minResolution = v8;

    v10 = objc_opt_new();
    maxResolution = v3->_maxResolution;
    v3->_maxResolution = v10;

    minBitRate = v3->_minBitRate;
    v3->_minBitRate = &unk_284C3E4C8;

    maxBitRate = v3->_maxBitRate;
    v3->_maxBitRate = &unk_284C3E4C8;

    keyFrameInterval = v3->_keyFrameInterval;
    v3->_keyFrameInterval = &unk_284C3E4C8;

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams);
  streamUsage = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self streamUsage];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setStreamUsage:streamUsage];

  videoCodec = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self videoCodec];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setVideoCodec:videoCodec];

  minFrameRate = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self minFrameRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setMinFrameRate:minFrameRate];

  maxFrameRate = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self maxFrameRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setMaxFrameRate:maxFrameRate];

  minResolution = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self minResolution];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setMinResolution:minResolution];

  maxResolution = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self maxResolution];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setMaxResolution:maxResolution];

  minBitRate = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self minBitRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setMinBitRate:minBitRate];

  maxBitRate = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self maxBitRate];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setMaxBitRate:maxBitRate];

  keyFrameInterval = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self keyFrameInterval];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setKeyFrameInterval:keyFrameInterval];

  watermarkEnabled = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self watermarkEnabled];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setWatermarkEnabled:watermarkEnabled];

  osdEnabled = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self osdEnabled];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setOsdEnabled:osdEnabled];

  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self timedInvokeTimeoutMs];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self serverSideProcessingTimeout];
  [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: streamUsage:%@ videoCodec:%@; minFrameRate:%@; maxFrameRate:%@; minResolution:%@; maxResolution:%@; minBitRate:%@; maxBitRate:%@; keyFrameInterval:%@; watermarkEnabled:%@; osdEnabled:%@; >", v5, self->_streamUsage, self->_videoCodec, self->_minFrameRate, self->_maxFrameRate, self->_minResolution, self->_maxResolution, self->_minBitRate, self->_maxBitRate, self->_keyFrameInterval, self->_watermarkEnabled, self->_osdEnabled];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  LOBYTE(v42) = 0;
  memset(v40, 0, 14);
  *v41 = 0;
  *&v41[7] = 0;
  v39[0] = 0;
  v39[1] = 0;
  v38 = v39;
  streamUsage = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self streamUsage];
  LOBYTE(v40[0]) = [streamUsage unsignedCharValue];

  videoCodec = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self videoCodec];
  BYTE1(v40[0]) = [videoCodec unsignedCharValue];

  minFrameRate = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self minFrameRate];
  WORD1(v40[0]) = [minFrameRate unsignedShortValue];

  maxFrameRate = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self maxFrameRate];
  WORD2(v40[0]) = [maxFrameRate unsignedShortValue];

  minResolution = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self minResolution];
  width = [minResolution width];
  HIWORD(v40[0]) = [width unsignedShortValue];

  minResolution2 = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self minResolution];
  height = [minResolution2 height];
  LOWORD(v40[1]) = [height unsignedShortValue];

  maxResolution = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self maxResolution];
  width2 = [maxResolution width];
  WORD1(v40[1]) = [width2 unsignedShortValue];

  maxResolution2 = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self maxResolution];
  height2 = [maxResolution2 height];
  WORD2(v40[1]) = [height2 unsignedShortValue];

  minBitRate = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self minBitRate];
  *v41 = [minBitRate unsignedIntValue];

  maxBitRate = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self maxBitRate];
  *&v41[4] = [maxBitRate unsignedIntValue];

  keyFrameInterval = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self keyFrameInterval];
  *&v41[8] = [keyFrameInterval unsignedShortValue];

  watermarkEnabled = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self watermarkEnabled];

  if (watermarkEnabled)
  {
    *&v41[10] = 1;
    watermarkEnabled2 = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self watermarkEnabled];
    v41[11] = [watermarkEnabled2 BOOLValue];
  }

  osdEnabled = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self osdEnabled];

  if (osdEnabled)
  {
    v42 = 1;
    osdEnabled2 = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self osdEnabled];
    HIBYTE(v42) = [osdEnabled2 BOOLValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v37);
  if (v37)
  {
    sub_2393C7B90(v32);
    v34 = 0;
    v35 = 0;
    v33 = &unk_284BB83A8;
    v36 = 0;
    sub_238EA16C4(&v33, &v37, 0);
    sub_2393C7BF0(v32, &v33, 0xFFFFFFFF);
    v24 = sub_238F03944(v40, v32, 0x100uLL);
    v26 = v24;
    if (v24 || (v24 = sub_238DD2EFC(v32, &v37), v26 = v24, v24))
    {
      v27 = v25;
    }

    else
    {
      sub_238DD2F90(reader, &v37);
      v24 = sub_2393C7114(reader, 21, 256);
      v27 = v31;
      v26 = v24;
    }

    v28 = v24 & 0xFFFFFFFF00000000;
    v33 = &unk_284BB83A8;
    sub_238EA1758(&v35);
    sub_238EA1758(&v34);
  }

  else
  {
    v27 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v28 = 0x85D800000000;
    v26 = 11;
  }

  sub_238EA1758(&v37);
  sub_238EA1790(&v38);
  v29 = v28 | v26;
  v30 = v27;
  result.mFile = v30;
  result.mError = v29;
  result.mLine = HIDWORD(v29);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRCameraAVStreamManagementClusterVideoStreamAllocateParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x85F500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end