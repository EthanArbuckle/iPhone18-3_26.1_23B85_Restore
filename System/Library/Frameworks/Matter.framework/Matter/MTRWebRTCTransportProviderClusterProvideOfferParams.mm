@interface MTRWebRTCTransportProviderClusterProvideOfferParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRWebRTCTransportProviderClusterProvideOfferParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRWebRTCTransportProviderClusterProvideOfferParams

- (MTRWebRTCTransportProviderClusterProvideOfferParams)init
{
  v17.receiver = self;
  v17.super_class = MTRWebRTCTransportProviderClusterProvideOfferParams;
  v2 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)&v17 init];
  v3 = v2;
  if (v2)
  {
    webRTCSessionID = v2->_webRTCSessionID;
    v2->_webRTCSessionID = 0;

    sdp = v3->_sdp;
    v3->_sdp = &stru_284BD0DD8;

    streamUsage = v3->_streamUsage;
    v3->_streamUsage = &unk_284C3E4C8;

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
  v4 = objc_alloc_init(MTRWebRTCTransportProviderClusterProvideOfferParams);
  webRTCSessionID = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self webRTCSessionID];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setWebRTCSessionID:webRTCSessionID];

  v6 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self sdp];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setSdp:v6];

  streamUsage = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self streamUsage];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setStreamUsage:streamUsage];

  originatingEndpointID = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self originatingEndpointID];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setOriginatingEndpointID:originatingEndpointID];

  videoStreamID = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self videoStreamID];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setVideoStreamID:videoStreamID];

  audioStreamID = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self audioStreamID];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setAudioStreamID:audioStreamID];

  iceServers = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self iceServers];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setIceServers:iceServers];

  iceTransportPolicy = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self iceTransportPolicy];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setIceTransportPolicy:iceTransportPolicy];

  metadataEnabled = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self metadataEnabled];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setMetadataEnabled:metadataEnabled];

  sFrameConfig = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self sFrameConfig];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setSFrameConfig:sFrameConfig];

  timedInvokeTimeoutMs = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self timedInvokeTimeoutMs];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self serverSideProcessingTimeout];
  [(MTRWebRTCTransportProviderClusterProvideOfferParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: webRTCSessionID:%@ sdp:%@; streamUsage:%@; originatingEndpointID:%@; videoStreamID:%@; audioStreamID:%@; iceServers:%@; iceTransportPolicy:%@; metadataEnabled:%@; sFrameConfig:%@; >", v5, self->_webRTCSessionID, self->_sdp, self->_streamUsage, self->_originatingEndpointID, self->_videoStreamID, self->_audioStreamID, self->_iceServers, self->_iceTransportPolicy, self->_metadataEnabled, self->_sFrameConfig];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v76 = *MEMORY[0x277D85DE8];
  LOBYTE(unsignedShortValue) = 0;
  v55 = 0;
  unsignedShortValue2 = 0;
  v59 = 0;
  v61 = 0;
  v63 = 0;
  v66 = 0;
  LOBYTE(v68) = 0;
  v69 = 0;
  v56 = 0uLL;
  unsignedCharValue = 0;
  v53[0] = 0;
  v53[1] = 0;
  v52 = v53;
  webRTCSessionID = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self webRTCSessionID];
  v5 = webRTCSessionID == 0;

  if (!v5)
  {
    unsignedShortValue = 0;
    v55 = 1;
    webRTCSessionID2 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self webRTCSessionID];
    unsignedShortValue = [webRTCSessionID2 unsignedShortValue];
  }

  v7 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self sdp];
  v8 = v7;
  sub_238DB9BD8(buf, [v7 UTF8String], objc_msgSend(v7, "lengthOfBytesUsingEncoding:", 4));

  v56 = *buf;
  streamUsage = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self streamUsage];
  unsignedCharValue = [streamUsage unsignedCharValue];

  originatingEndpointID = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self originatingEndpointID];
  unsignedShortValue2 = [originatingEndpointID unsignedShortValue];

  videoStreamID = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self videoStreamID];
  v12 = videoStreamID == 0;

  if (!v12)
  {
    v59 = 1;
    v60 = 0;
    videoStreamID2 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self videoStreamID];
    v14 = videoStreamID2 == 0;

    if (!v14)
    {
      LOWORD(v60) = 0;
      BYTE2(v60) = 1;
      videoStreamID3 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self videoStreamID];
      LOWORD(v60) = [videoStreamID3 unsignedShortValue];
    }
  }

  audioStreamID = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self audioStreamID];
  v17 = audioStreamID == 0;

  if (!v17)
  {
    v61 = 1;
    v62 = 0;
    audioStreamID2 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self audioStreamID];
    v19 = audioStreamID2 == 0;

    if (!v19)
    {
      LOWORD(v62) = 0;
      BYTE2(v62) = 1;
      audioStreamID3 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self audioStreamID];
      LOWORD(v62) = [audioStreamID3 unsignedShortValue];
    }
  }

  iceServers = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self iceServers];
  v22 = iceServers == 0;

  if (!v22)
  {
    v63 = 1;
    v64 = 0;
    v65 = 0;
    iceServers2 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self iceServers];
    v24 = [iceServers2 count] == 0;

    if (!v24)
    {
      operator new();
    }

    v64 = 0;
    v65 = 0;
  }

  iceTransportPolicy = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self iceTransportPolicy];
  v26 = iceTransportPolicy == 0;

  if (!v26)
  {
    v66 = 1;
    v67 = 0uLL;
    iceTransportPolicy2 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self iceTransportPolicy];
    v28 = iceTransportPolicy2;
    sub_238DB9BD8(buf, [iceTransportPolicy2 UTF8String], objc_msgSend(iceTransportPolicy2, "lengthOfBytesUsingEncoding:", 4));

    v67 = *buf;
  }

  metadataEnabled = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self metadataEnabled];
  v30 = metadataEnabled == 0;

  if (!v30)
  {
    v68 = 1;
    metadataEnabled2 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self metadataEnabled];
    HIBYTE(v68) = [metadataEnabled2 BOOLValue];
  }

  sFrameConfig = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self sFrameConfig];
  v33 = sFrameConfig == 0;

  if (!v33)
  {
    v69 = 1;
    memset(v70, 0, sizeof(v70));
    sFrameConfig2 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self sFrameConfig];
    cipherSuite = [sFrameConfig2 cipherSuite];
    LOWORD(v70[0]) = [cipherSuite unsignedShortValue];

    sFrameConfig3 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self sFrameConfig];
    baseKey = [sFrameConfig3 baseKey];
    v38 = baseKey;
    sub_238DB6950(buf, [baseKey bytes], objc_msgSend(baseKey, "length"));

    *&v70[1] = *buf;
    sFrameConfig4 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self sFrameConfig];
    v40 = [sFrameConfig4 kid];
    v41 = v40;
    sub_238DB6950(buf, [v40 bytes], objc_msgSend(v40, "length"));

    *&v70[3] = *buf;
  }

  sub_2393D9C18(0x62FuLL, 0, &v51);
  if (v51)
  {
    sub_2393C7B90(buf);
    v73 = 0;
    v74 = 0;
    v72 = &unk_284BB83A8;
    v75 = 0;
    sub_238EA16C4(&v72, &v51, 0);
    sub_2393C7BF0(buf, &v72, 0xFFFFFFFF);
    v43 = sub_238F33528(&unsignedShortValue, buf, 0x100uLL);
    v44 = v43;
    if (v43 || (v43 = sub_238DD2EFC(buf, &v51), v44 = v43, v43))
    {
      v45 = v42;
    }

    else
    {
      sub_238DD2F90(reader, &v51);
      v43 = sub_2393C7114(reader, 21, 256);
      v45 = v49;
      v44 = v43;
    }

    v72 = &unk_284BB83A8;
    sub_238EA1758(&v74);
    sub_238EA1758(&v73);
  }

  else
  {
    v45 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v43 = 0x8E3600000000;
    v44 = 11;
  }

  sub_238EA1758(&v51);
  sub_238EA1790(&v52);
  v46 = *MEMORY[0x277D85DE8];
  v47 = v43 & 0xFFFFFFFF00000000 | v44;
  v48 = v45;
  result.mFile = v48;
  result.mError = v47;
  result.mLine = HIDWORD(v47);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRWebRTCTransportProviderClusterProvideOfferParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x8E5300000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end