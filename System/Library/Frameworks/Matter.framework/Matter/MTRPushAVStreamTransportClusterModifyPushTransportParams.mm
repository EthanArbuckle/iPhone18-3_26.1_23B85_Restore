@interface MTRPushAVStreamTransportClusterModifyPushTransportParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRPushAVStreamTransportClusterModifyPushTransportParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRPushAVStreamTransportClusterModifyPushTransportParams

- (MTRPushAVStreamTransportClusterModifyPushTransportParams)init
{
  v10.receiver = self;
  v10.super_class = MTRPushAVStreamTransportClusterModifyPushTransportParams;
  v2 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    connectionID = v2->_connectionID;
    v2->_connectionID = &unk_284C3E4C8;

    v5 = objc_opt_new();
    transportOptions = v3->_transportOptions;
    v3->_transportOptions = v5;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRPushAVStreamTransportClusterModifyPushTransportParams);
  connectionID = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self connectionID];
  [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)v4 setConnectionID:connectionID];

  transportOptions = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)v4 setTransportOptions:transportOptions];

  timedInvokeTimeoutMs = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self timedInvokeTimeoutMs];
  [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self serverSideProcessingTimeout];
  [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: connectionID:%@ transportOptions:%@; >", v5, self->_connectionID, self->_transportOptions];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v189 = *MEMORY[0x277D85DE8];
  *v158 = 0;
  unsignedCharValue = 0;
  v160 = 0;
  v162 = 0;
  v165 = 0;
  v169 = 0;
  v171 = 0;
  v174 = 0;
  unsignedCharValue2 = 0;
  unsignedCharValue3 = 0;
  v178 = 0;
  v182 = 0;
  memset(v164, 0, sizeof(v164));
  v157[0] = 0;
  v157[1] = 0;
  v156 = v157;
  connectionID = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self connectionID];
  *v158 = [connectionID unsignedShortValue];

  transportOptions = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  streamUsage = [transportOptions streamUsage];
  unsignedCharValue = [streamUsage unsignedCharValue];

  transportOptions2 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  videoStreamID = [transportOptions2 videoStreamID];
  v8 = videoStreamID == 0;

  if (!v8)
  {
    v160 = 1;
    v161 = 0;
    transportOptions3 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    videoStreamID2 = [transportOptions3 videoStreamID];
    v11 = videoStreamID2 == 0;

    if (v11)
    {
      if (BYTE2(v161) == 1)
      {
        BYTE2(v161) = 0;
      }
    }

    else
    {
      LOWORD(v161) = 0;
      BYTE2(v161) = 1;
      transportOptions4 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      videoStreamID3 = [transportOptions4 videoStreamID];
      LOWORD(v161) = [videoStreamID3 unsignedShortValue];
    }
  }

  transportOptions5 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  audioStreamID = [transportOptions5 audioStreamID];
  v16 = audioStreamID == 0;

  if (!v16)
  {
    v162 = 1;
    v163 = 0;
    transportOptions6 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    audioStreamID2 = [transportOptions6 audioStreamID];
    v19 = audioStreamID2 == 0;

    if (v19)
    {
      if (BYTE2(v163) == 1)
      {
        BYTE2(v163) = 0;
      }
    }

    else
    {
      LOWORD(v163) = 0;
      BYTE2(v163) = 1;
      transportOptions7 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      audioStreamID3 = [transportOptions7 audioStreamID];
      LOWORD(v163) = [audioStreamID3 unsignedShortValue];
    }
  }

  transportOptions8 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  endpointID = [transportOptions8 endpointID];
  *v164 = [endpointID unsignedShortValue];

  transportOptions9 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  v25 = [transportOptions9 url];
  v26 = v25;
  sub_238DB9BD8(buf, [v25 UTF8String], objc_msgSend(v25, "lengthOfBytesUsingEncoding:", 4));

  *&v164[2] = *buf;
  transportOptions10 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  triggerOptions = [transportOptions10 triggerOptions];
  triggerType = [triggerOptions triggerType];
  v164[18] = [triggerType unsignedCharValue];

  transportOptions11 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  triggerOptions2 = [transportOptions11 triggerOptions];
  motionZones = [triggerOptions2 motionZones];
  v33 = motionZones == 0;

  if (!v33)
  {
    v165 = 1;
    v167 = 0;
    v168 = 0;
    v166 = 0;
    transportOptions12 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    triggerOptions3 = [transportOptions12 triggerOptions];
    motionZones2 = [triggerOptions3 motionZones];
    v37 = motionZones2 == 0;

    if (v37)
    {
      if (v168 == 1)
      {
        LOBYTE(v168) = 0;
      }
    }

    else
    {
      v166 = 0;
      v167 = 0;
      LOBYTE(v168) = 1;
      transportOptions13 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      triggerOptions4 = [transportOptions13 triggerOptions];
      motionZones3 = [triggerOptions4 motionZones];
      v41 = [motionZones3 count] == 0;

      if (!v41)
      {
        operator new();
      }

      v166 = 0;
      v167 = 0;
    }
  }

  transportOptions14 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  triggerOptions5 = [transportOptions14 triggerOptions];
  motionSensitivity = [triggerOptions5 motionSensitivity];
  v45 = motionSensitivity == 0;

  if (!v45)
  {
    v169 = 1;
    v170 = 0;
    transportOptions15 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    triggerOptions6 = [transportOptions15 triggerOptions];
    motionSensitivity2 = [triggerOptions6 motionSensitivity];
    v49 = motionSensitivity2 == 0;

    if (v49)
    {
      if (HIBYTE(v170) == 1)
      {
        HIBYTE(v170) = 0;
      }
    }

    else
    {
      v170 = 256;
      transportOptions16 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      triggerOptions7 = [transportOptions16 triggerOptions];
      motionSensitivity3 = [triggerOptions7 motionSensitivity];
      LOBYTE(v170) = [motionSensitivity3 unsignedCharValue];
    }
  }

  transportOptions17 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  triggerOptions8 = [transportOptions17 triggerOptions];
  motionTimeControl = [triggerOptions8 motionTimeControl];
  v56 = motionTimeControl == 0;

  if (!v56)
  {
    v171 = 1;
    v172 = 0;
    v173 = 0;
    transportOptions18 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    triggerOptions9 = [transportOptions18 triggerOptions];
    motionTimeControl2 = [triggerOptions9 motionTimeControl];
    initialDuration = [motionTimeControl2 initialDuration];
    LOWORD(v172) = [initialDuration unsignedShortValue];

    transportOptions19 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    triggerOptions10 = [transportOptions19 triggerOptions];
    motionTimeControl3 = [triggerOptions10 motionTimeControl];
    augmentationDuration = [motionTimeControl3 augmentationDuration];
    WORD1(v172) = [augmentationDuration unsignedShortValue];

    transportOptions20 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    triggerOptions11 = [transportOptions20 triggerOptions];
    motionTimeControl4 = [triggerOptions11 motionTimeControl];
    maxDuration = [motionTimeControl4 maxDuration];
    HIDWORD(v172) = [maxDuration unsignedIntValue];

    transportOptions21 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    triggerOptions12 = [transportOptions21 triggerOptions];
    motionTimeControl5 = [triggerOptions12 motionTimeControl];
    blindDuration = [motionTimeControl5 blindDuration];
    LOWORD(v173) = [blindDuration unsignedShortValue];
  }

  transportOptions22 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  triggerOptions13 = [transportOptions22 triggerOptions];
  maxPreRollLen = [triggerOptions13 maxPreRollLen];
  v76 = maxPreRollLen == 0;

  if (!v76)
  {
    v174 = 1;
    unsignedShortValue = 0;
    transportOptions23 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    triggerOptions14 = [transportOptions23 triggerOptions];
    maxPreRollLen2 = [triggerOptions14 maxPreRollLen];
    unsignedShortValue = [maxPreRollLen2 unsignedShortValue];
  }

  transportOptions24 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  ingestMethod = [transportOptions24 ingestMethod];
  unsignedCharValue2 = [ingestMethod unsignedCharValue];

  transportOptions25 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  containerOptions = [transportOptions25 containerOptions];
  containerType = [containerOptions containerType];
  unsignedCharValue3 = [containerType unsignedCharValue];

  transportOptions26 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  containerOptions2 = [transportOptions26 containerOptions];
  cmafContainerOptions = [containerOptions2 cmafContainerOptions];
  v88 = cmafContainerOptions == 0;

  if (!v88)
  {
    v178 = 1;
    memset(v179, 0, sizeof(v179));
    v180 = 0u;
    memset(v181, 0, sizeof(v181));
    transportOptions27 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    containerOptions3 = [transportOptions27 containerOptions];
    cmafContainerOptions2 = [containerOptions3 cmafContainerOptions];
    cmafInterface = [cmafContainerOptions2 cmafInterface];
    LOBYTE(v179[0]) = [cmafInterface unsignedCharValue];

    transportOptions28 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    containerOptions4 = [transportOptions28 containerOptions];
    cmafContainerOptions3 = [containerOptions4 cmafContainerOptions];
    segmentDuration = [cmafContainerOptions3 segmentDuration];
    WORD1(v179[0]) = [segmentDuration unsignedShortValue];

    transportOptions29 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    containerOptions5 = [transportOptions29 containerOptions];
    cmafContainerOptions4 = [containerOptions5 cmafContainerOptions];
    chunkDuration = [cmafContainerOptions4 chunkDuration];
    WORD2(v179[0]) = [chunkDuration unsignedShortValue];

    transportOptions30 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    containerOptions6 = [transportOptions30 containerOptions];
    cmafContainerOptions5 = [containerOptions6 cmafContainerOptions];
    sessionGroup = [cmafContainerOptions5 sessionGroup];
    BYTE6(v179[0]) = [sessionGroup unsignedCharValue];

    transportOptions31 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    containerOptions7 = [transportOptions31 containerOptions];
    cmafContainerOptions6 = [containerOptions7 cmafContainerOptions];
    trackName = [cmafContainerOptions6 trackName];
    v109 = trackName;
    sub_238DB9BD8(buf, [trackName UTF8String], objc_msgSend(trackName, "lengthOfBytesUsingEncoding:", 4));

    *(v179 + 8) = *buf;
    transportOptions32 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    containerOptions8 = [transportOptions32 containerOptions];
    cmafContainerOptions7 = [containerOptions8 cmafContainerOptions];
    cencKey = [cmafContainerOptions7 cencKey];
    v114 = cencKey == 0;

    if (!v114)
    {
      BYTE8(v179[1]) = 1;
      v180 = 0uLL;
      transportOptions33 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      containerOptions9 = [transportOptions33 containerOptions];
      cmafContainerOptions8 = [containerOptions9 cmafContainerOptions];
      cencKey2 = [cmafContainerOptions8 cencKey];
      v119 = cencKey2;
      sub_238DB6950(buf, [cencKey2 bytes], objc_msgSend(cencKey2, "length"));

      v180 = *buf;
    }

    transportOptions34 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    containerOptions10 = [transportOptions34 containerOptions];
    cmafContainerOptions9 = [containerOptions10 cmafContainerOptions];
    cencKeyID = [cmafContainerOptions9 cencKeyID];
    v124 = cencKeyID == 0;

    if (!v124)
    {
      LOBYTE(v181[0]) = 1;
      *(&v181[0] + 1) = 0;
      *&v181[1] = 0;
      transportOptions35 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      containerOptions11 = [transportOptions35 containerOptions];
      cmafContainerOptions10 = [containerOptions11 cmafContainerOptions];
      cencKeyID2 = [cmafContainerOptions10 cencKeyID];
      v129 = cencKeyID2;
      sub_238DB6950(buf, [cencKeyID2 bytes], objc_msgSend(cencKeyID2, "length"));

      *(v181 + 8) = *buf;
    }

    transportOptions36 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    containerOptions12 = [transportOptions36 containerOptions];
    cmafContainerOptions11 = [containerOptions12 cmafContainerOptions];
    metadataEnabled = [cmafContainerOptions11 metadataEnabled];
    v134 = metadataEnabled == 0;

    if (!v134)
    {
      WORD4(v181[1]) = 1;
      transportOptions37 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
      containerOptions13 = [transportOptions37 containerOptions];
      cmafContainerOptions12 = [containerOptions13 cmafContainerOptions];
      metadataEnabled2 = [cmafContainerOptions12 metadataEnabled];
      BYTE9(v181[1]) = [metadataEnabled2 BOOLValue];
    }
  }

  transportOptions38 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
  expiryTime = [transportOptions38 expiryTime];
  v141 = expiryTime == 0;

  if (!v141)
  {
    v182 = 1;
    unsignedIntValue = 0;
    transportOptions39 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self transportOptions];
    expiryTime2 = [transportOptions39 expiryTime];
    unsignedIntValue = [expiryTime2 unsignedIntValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v155);
  if (v155)
  {
    sub_2393C7B90(buf);
    v186 = 0;
    v187 = 0;
    v185 = &unk_284BB83A8;
    v188 = 0;
    sub_238EA16C4(&v185, &v155, 0);
    sub_2393C7BF0(buf, &v185, 0xFFFFFFFF);
    v144 = sub_238F24C2C(v158, buf, 0x100uLL);
    v146 = v144;
    if (v144 || (v144 = sub_238DD2EFC(buf, &v155), v146 = v144, v144))
    {
      v147 = v145;
    }

    else
    {
      sub_238DD2F90(reader, &v155);
      v144 = sub_2393C7114(reader, 21, 256);
      v147 = v152;
      v146 = v144;
    }

    v148 = v144 & 0xFFFFFFFF00000000;
    v185 = &unk_284BB83A8;
    sub_238EA1758(&v187);
    sub_238EA1758(&v186);
  }

  else
  {
    v147 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v148 = 0x942E00000000;
    v146 = 11;
  }

  sub_238EA1758(&v155);
  sub_238EA1790(&v156);
  v149 = *MEMORY[0x277D85DE8];
  v150 = v148 | v146;
  v151 = v147;
  result.mFile = v151;
  result.mError = v150;
  result.mLine = HIDWORD(v150);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRPushAVStreamTransportClusterModifyPushTransportParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x944B00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end