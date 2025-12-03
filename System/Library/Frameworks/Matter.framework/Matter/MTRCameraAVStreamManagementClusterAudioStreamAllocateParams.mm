@interface MTRCameraAVStreamManagementClusterAudioStreamAllocateParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRCameraAVStreamManagementClusterAudioStreamAllocateParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams);
  streamUsage = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self streamUsage];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setStreamUsage:streamUsage];

  audioCodec = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self audioCodec];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setAudioCodec:audioCodec];

  channelCount = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self channelCount];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setChannelCount:channelCount];

  sampleRate = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self sampleRate];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setSampleRate:sampleRate];

  bitRate = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self bitRate];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setBitRate:bitRate];

  bitDepth = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self bitDepth];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setBitDepth:bitDepth];

  timedInvokeTimeoutMs = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self timedInvokeTimeoutMs];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self serverSideProcessingTimeout];
  [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v27 = 0;
  unsignedCharValue = 0;
  v29 = 0;
  unsignedCharValue2 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  streamUsage = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self streamUsage];
  LOBYTE(v27) = [streamUsage unsignedCharValue];

  audioCodec = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self audioCodec];
  HIBYTE(v27) = [audioCodec unsignedCharValue];

  channelCount = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self channelCount];
  unsignedCharValue = [channelCount unsignedCharValue];

  sampleRate = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self sampleRate];
  LODWORD(v29) = [sampleRate unsignedIntValue];

  bitRate = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self bitRate];
  HIDWORD(v29) = [bitRate unsignedIntValue];

  bitDepth = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self bitDepth];
  unsignedCharValue2 = [bitDepth unsignedCharValue];

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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRCameraAVStreamManagementClusterAudioStreamAllocateParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x84BA00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end