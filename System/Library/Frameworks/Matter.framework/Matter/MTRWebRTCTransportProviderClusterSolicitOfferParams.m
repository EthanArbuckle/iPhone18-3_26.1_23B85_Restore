@interface MTRWebRTCTransportProviderClusterSolicitOfferParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRWebRTCTransportProviderClusterSolicitOfferParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRWebRTCTransportProviderClusterSolicitOfferParams);
  v5 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self streamUsage];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setStreamUsage:v5];

  v6 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self originatingEndpointID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setOriginatingEndpointID:v6];

  v7 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self videoStreamID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setVideoStreamID:v7];

  v8 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self audioStreamID];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setAudioStreamID:v8];

  v9 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceServers];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setIceServers:v9];

  v10 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceTransportPolicy];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setIceTransportPolicy:v10];

  v11 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self metadataEnabled];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setMetadataEnabled:v11];

  v12 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setSFrameConfig:v12];

  v13 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self timedInvokeTimeoutMs];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setTimedInvokeTimeoutMs:v13];

  v14 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self serverSideProcessingTimeout];
  [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)v4 setServerSideProcessingTimeout:v14];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v49[0] = 0;
  v50 = 0;
  v51 = 0;
  v53 = 0;
  v55 = 0;
  v58 = 0;
  LOBYTE(v60) = 0;
  v61 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v47 = v48;
  v4 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self streamUsage];
  v49[0] = [v4 unsignedCharValue];

  v5 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self originatingEndpointID];
  v50 = [v5 unsignedShortValue];

  v6 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self videoStreamID];
  v7 = v6 == 0;

  if (!v7)
  {
    v51 = 1;
    v52 = 0;
    v8 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self videoStreamID];
    v9 = v8 == 0;

    if (!v9)
    {
      LOWORD(v52) = 0;
      BYTE2(v52) = 1;
      v10 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self videoStreamID];
      LOWORD(v52) = [v10 unsignedShortValue];
    }
  }

  v11 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self audioStreamID];
  v12 = v11 == 0;

  if (!v12)
  {
    v53 = 1;
    v54 = 0;
    v13 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self audioStreamID];
    v14 = v13 == 0;

    if (!v14)
    {
      LOWORD(v54) = 0;
      BYTE2(v54) = 1;
      v15 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self audioStreamID];
      LOWORD(v54) = [v15 unsignedShortValue];
    }
  }

  v16 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceServers];
  v17 = v16 == 0;

  if (!v17)
  {
    v55 = 1;
    v56 = 0;
    v57 = 0;
    v18 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceServers];
    v19 = [v18 count] == 0;

    if (!v19)
    {
      operator new();
    }

    v56 = 0;
    v57 = 0;
  }

  v20 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceTransportPolicy];
  v21 = v20 == 0;

  if (!v21)
  {
    v58 = 1;
    v59 = 0uLL;
    v22 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self iceTransportPolicy];
    v23 = v22;
    sub_238DB9BD8(buf, [v22 UTF8String], objc_msgSend(v22, "lengthOfBytesUsingEncoding:", 4));

    v59 = *buf;
  }

  v24 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self metadataEnabled];
  v25 = v24 == 0;

  if (!v25)
  {
    v60 = 1;
    v26 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self metadataEnabled];
    HIBYTE(v60) = [v26 BOOLValue];
  }

  v27 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
  v28 = v27 == 0;

  if (!v28)
  {
    v61 = 1;
    memset(v62, 0, sizeof(v62));
    v29 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
    v30 = [v29 cipherSuite];
    *v62 = [v30 unsignedShortValue];

    v31 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
    v32 = [v31 baseKey];
    v33 = v32;
    sub_238DB6950(buf, [v32 bytes], objc_msgSend(v32, "length"));

    *&v62[8] = *buf;
    v34 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self sFrameConfig];
    v35 = [v34 kid];
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
      sub_238DD2F90(a3, &v46);
      v38 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRWebRTCTransportProviderClusterSolicitOfferParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x8CF800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end