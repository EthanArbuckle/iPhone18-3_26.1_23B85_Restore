@interface MTRCameraAVStreamManagementClusterAudioStreamAllocateParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRCameraAVStreamManagementClusterAudioStreamAllocateParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRCameraAVStreamManagementClusterAudioStreamAllocateParams

- (MTRCameraAVStreamManagementClusterAudioStreamAllocateParams)init
{
  v13.receiver = self;
  v13.super_class = MTRCameraAVStreamManagementClusterAudioStreamAllocateParams;
  v2 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    streamUsage = v2->_streamUsage;
    v2->_streamUsage = &unk_284C3E4C8;

    audioCodec = v3->_audioCodec;
    v3->_audioCodec = &unk_284C3E4C8;

    channelCount = v3->_channelCount;
    v3->_channelCount = &unk_284C3E4C8;

    sampleRate = v3->_sampleRate;
    v3->_sampleRate = &unk_284C3E4C8;

    bitRate = v3->_bitRate;
    v3->_bitRate = &unk_284C3E4C8;

    bitDepth = v3->_bitDepth;
    v3->_bitDepth = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams);
  v5 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self streamUsage];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setStreamUsage:v5];

  v6 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self audioCodec];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setAudioCodec:v6];

  v7 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self channelCount];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setChannelCount:v7];

  v8 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self sampleRate];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setSampleRate:v8];

  v9 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self bitRate];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setBitRate:v9];

  v10 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self bitDepth];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setBitDepth:v10];

  v11 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self timedInvokeTimeoutMs];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setTimedInvokeTimeoutMs:v11];

  v12 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self serverSideProcessingTimeout];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setServerSideProcessingTimeout:v12];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: streamUsage:%@ audioCodec:%@; channelCount:%@; sampleRate:%@; bitRate:%@; bitDepth:%@; >", v5, self->_streamUsage, self->_audioCodec, self->_channelCount, self->_sampleRate, self->_bitRate, self->_bitDepth];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v5 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self streamUsage];
  LOBYTE(v27) = [v5 unsignedCharValue];

  v6 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self audioCodec];
  HIBYTE(v27) = [v6 unsignedCharValue];

  v7 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self channelCount];
  v28 = [v7 unsignedCharValue];

  v8 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self sampleRate];
  LODWORD(v29) = [v8 unsignedIntValue];

  v9 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self bitRate];
  HIDWORD(v29) = [v9 unsignedIntValue];

  v10 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self bitDepth];
  v30 = [v10 unsignedCharValue];

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
    v11 = sub_238F036FC(&v27, v19, 0x100uLL);
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
    v15 = 0x849D00000000;
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
  v7 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x84BA00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end