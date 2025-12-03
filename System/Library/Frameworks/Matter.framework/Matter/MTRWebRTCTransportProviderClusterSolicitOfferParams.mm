@interface MTRWebRTCTransportProviderClusterSolicitOfferParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRWebRTCTransportProviderClusterSolicitOfferParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRWebRTCTransportProviderClusterSolicitOfferParams

- (MTRWebRTCTransportProviderClusterSolicitOfferParams)init
{
  v15.receiver = self;
  v15.super_class = MTRWebRTCTransportProviderClusterSolicitOfferParams;
  v2 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)&v15 init];
  v3 = v2;
  if (v2)
  {
    streamUsage = v2->_streamUsage;
    v2->_streamUsage = &unk_284C3E4C8;

    originatingEndpointID = v3->_originatingEndpointID;
    v3->_originatingEndpointID = &unk_284C3E4C8;

    videoStreamID = v3->_videoStreamID;
    v3->_videoStreamID = 0;

    audioStreamID = v3->_audioStreamID;
    v3->_audioStreamID = 0;

    iceServers = v3->_iceServers;
    v3->_iceServers = 0;

    iceTransportPolicy = v3->_iceTransportPolicy;
    v3->_iceTransportPolicy = 0;

    metadataEnabled = v3->_metadataEnabled;
    v3->_metadataEnabled = 0;

    sFrameConfig = v3->_sFrameConfig;
    v3->_sFrameConfig = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWebRTCTransportProviderClusterSolicitOfferParams);
  streamUsage = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self streamUsage];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setStreamUsage:streamUsage];

  originatingEndpointID = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self originatingEndpointID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setOriginatingEndpointID:originatingEndpointID];

  videoStreamID = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self videoStreamID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setVideoStreamID:videoStreamID];

  audioStreamID = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self audioStreamID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setAudioStreamID:audioStreamID];

  iceServers = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceServers];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setIceServers:iceServers];

  iceTransportPolicy = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceTransportPolicy];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setIceTransportPolicy:iceTransportPolicy];

  metadataEnabled = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self metadataEnabled];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setMetadataEnabled:metadataEnabled];

  sFrameConfig = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setSFrameConfig:sFrameConfig];

  timedInvokeTimeoutMs = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self timedInvokeTimeoutMs];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self serverSideProcessingTimeout];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: streamUsage:%@ originatingEndpointID:%@; videoStreamID:%@; audioStreamID:%@; iceServers:%@; iceTransportPolicy:%@; metadataEnabled:%@; sFrameConfig:%@; >", v5, self->_streamUsage, self->_originatingEndpointID, self->_videoStreamID, self->_audioStreamID, self->_iceServers, self->_iceTransportPolicy, self->_metadataEnabled, self->_sFrameConfig];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v68 = *MEMORY[0x277D85DE8];
  v49[0] = 0;
  unsignedShortValue = 0;
  v51 = 0;
  v53 = 0;
  v55 = 0;
  v58 = 0;
  LOBYTE(v60) = 0;
  v61 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v47 = v48;
  streamUsage = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self streamUsage];
  v49[0] = [streamUsage unsignedCharValue];

  originatingEndpointID = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self originatingEndpointID];
  unsignedShortValue = [originatingEndpointID unsignedShortValue];

  videoStreamID = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self videoStreamID];
  v7 = videoStreamID == 0;

  if (!v7)
  {
    v51 = 1;
    v52 = 0;
    videoStreamID2 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self videoStreamID];
    v9 = videoStreamID2 == 0;

    if (!v9)
    {
      LOWORD(v52) = 0;
      BYTE2(v52) = 1;
      videoStreamID3 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self videoStreamID];
      LOWORD(v52) = [videoStreamID3 unsignedShortValue];
    }
  }

  audioStreamID = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self audioStreamID];
  v12 = audioStreamID == 0;

  if (!v12)
  {
    v53 = 1;
    v54 = 0;
    audioStreamID2 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self audioStreamID];
    v14 = audioStreamID2 == 0;

    if (!v14)
    {
      LOWORD(v54) = 0;
      BYTE2(v54) = 1;
      audioStreamID3 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self audioStreamID];
      LOWORD(v54) = [audioStreamID3 unsignedShortValue];
    }
  }

  iceServers = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceServers];
  v17 = iceServers == 0;

  if (!v17)
  {
    v55 = 1;
    v56 = 0;
    v57 = 0;
    iceServers2 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceServers];
    v19 = [iceServers2 count] == 0;

    if (!v19)
    {
      operator new();
    }

    v56 = 0;
    v57 = 0;
  }

  iceTransportPolicy = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceTransportPolicy];
  v21 = iceTransportPolicy == 0;

  if (!v21)
  {
    v58 = 1;
    v59 = 0uLL;
    iceTransportPolicy2 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceTransportPolicy];
    v23 = iceTransportPolicy2;
    sub_238DB9BD8(buf, [iceTransportPolicy2 UTF8String], objc_msgSend(iceTransportPolicy2, "lengthOfBytesUsingEncoding:", 4));

    v59 = *buf;
  }

  metadataEnabled = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self metadataEnabled];
  v25 = metadataEnabled == 0;

  if (!v25)
  {
    v60 = 1;
    metadataEnabled2 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self metadataEnabled];
    HIBYTE(v60) = [metadataEnabled2 BOOLValue];
  }

  sFrameConfig = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
  v28 = sFrameConfig == 0;

  if (!v28)
  {
    v61 = 1;
    memset(v62, 0, sizeof(v62));
    sFrameConfig2 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
    cipherSuite = [sFrameConfig2 cipherSuite];
    *v62 = [cipherSuite unsignedShortValue];

    sFrameConfig3 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
    baseKey = [sFrameConfig3 baseKey];
    v33 = baseKey;
    sub_238DB6950(buf, [baseKey bytes], objc_msgSend(baseKey, "length"));

    *&v62[8] = *buf;
    sFrameConfig4 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
    v35 = [sFrameConfig4 kid];
    v36 = v35;
    sub_238DB6950(buf, [v35 bytes], objc_msgSend(v35, "length"));

    *&v62[24] = *buf;
  }

  sub_2393D9C18(0x62FuLL, 0, &v46);
  if (v46)
  {
    sub_2393C7B90(buf);
    v65 = 0;
    v66 = 0;
    v64 = &unk_284BB83A8;
    v67 = 0;
    sub_238EA16C4(&v64, &v46, 0);
    sub_2393C7BF0(buf, &v64, 0xFFFFFFFF);
    v38 = sub_238F33104(v49, buf, 0x100uLL);
    v39 = v38;
    if (v38 || (v38 = sub_238DD2EFC(buf, &v46), v39 = v38, v38))
    {
      v40 = v37;
    }

    else
    {
      sub_238DD2F90(reader, &v46);
      v38 = sub_2393C7114(reader, 21, 256);
      v40 = v44;
      v39 = v38;
    }

    v64 = &unk_284BB83A8;
    sub_238EA1758(&v66);
    sub_238EA1758(&v65);
  }

  else
  {
    v40 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v38 = 0x8CDB00000000;
    v39 = 11;
  }

  sub_238EA1758(&v46);
  sub_238EA1790(&v47);
  v41 = *MEMORY[0x277D85DE8];
  v42 = v38 & 0xFFFFFFFF00000000 | v39;
  v43 = v40;
  result.mFile = v43;
  result.mError = v42;
  result.mLine = HIDWORD(v42);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x8CF800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end