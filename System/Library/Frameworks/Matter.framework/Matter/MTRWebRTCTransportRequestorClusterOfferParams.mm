@interface MTRWebRTCTransportRequestorClusterOfferParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRWebRTCTransportRequestorClusterOfferParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRWebRTCTransportRequestorClusterOfferParams

- (MTRWebRTCTransportRequestorClusterOfferParams)init
{
  v11.receiver = self;
  v11.super_class = MTRWebRTCTransportRequestorClusterOfferParams;
  v2 = [(MTRWebRTCTransportRequestorClusterOfferParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    webRTCSessionID = v2->_webRTCSessionID;
    v2->_webRTCSessionID = &unk_284C3E4C8;

    sdp = v3->_sdp;
    v3->_sdp = &stru_284BD0DD8;

    iceServers = v3->_iceServers;
    v3->_iceServers = 0;

    iceTransportPolicy = v3->_iceTransportPolicy;
    v3->_iceTransportPolicy = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRWebRTCTransportRequestorClusterOfferParams);
  webRTCSessionID = [(MTRWebRTCTransportRequestorClusterOfferParams *)self webRTCSessionID];
  [(MTRWebRTCTransportRequestorClusterOfferParams *)v4 setWebRTCSessionID:webRTCSessionID];

  v6 = [(MTRWebRTCTransportRequestorClusterOfferParams *)self sdp];
  [(MTRWebRTCTransportRequestorClusterOfferParams *)v4 setSdp:v6];

  iceServers = [(MTRWebRTCTransportRequestorClusterOfferParams *)self iceServers];
  [(MTRWebRTCTransportRequestorClusterOfferParams *)v4 setIceServers:iceServers];

  iceTransportPolicy = [(MTRWebRTCTransportRequestorClusterOfferParams *)self iceTransportPolicy];
  [(MTRWebRTCTransportRequestorClusterOfferParams *)v4 setIceTransportPolicy:iceTransportPolicy];

  timedInvokeTimeoutMs = [(MTRWebRTCTransportRequestorClusterOfferParams *)self timedInvokeTimeoutMs];
  [(MTRWebRTCTransportRequestorClusterOfferParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRWebRTCTransportRequestorClusterOfferParams *)self serverSideProcessingTimeout];
  [(MTRWebRTCTransportRequestorClusterOfferParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: webRTCSessionID:%@ sdp:%@; iceServers:%@; iceTransportPolicy:%@; >", v5, self->_webRTCSessionID, self->_sdp, self->_iceServers, self->_iceTransportPolicy];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v38 = *MEMORY[0x277D85DE8];
  unsignedShortValue = 0;
  v31 = 0;
  v27 = 0uLL;
  v28 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  webRTCSessionID = [(MTRWebRTCTransportRequestorClusterOfferParams *)self webRTCSessionID];
  unsignedShortValue = [webRTCSessionID unsignedShortValue];

  v5 = [(MTRWebRTCTransportRequestorClusterOfferParams *)self sdp];
  v6 = v5;
  sub_238DB9BD8(buf, [v5 UTF8String], objc_msgSend(v5, "lengthOfBytesUsingEncoding:", 4));

  v27 = *buf;
  iceServers = [(MTRWebRTCTransportRequestorClusterOfferParams *)self iceServers];
  LOBYTE(v5) = iceServers == 0;

  if ((v5 & 1) == 0)
  {
    v28 = 1;
    v29 = 0;
    v30 = 0;
    iceServers2 = [(MTRWebRTCTransportRequestorClusterOfferParams *)self iceServers];
    v9 = [iceServers2 count] == 0;

    if (!v9)
    {
      operator new();
    }

    v29 = 0;
    v30 = 0;
  }

  iceTransportPolicy = [(MTRWebRTCTransportRequestorClusterOfferParams *)self iceTransportPolicy];
  v11 = iceTransportPolicy == 0;

  if (!v11)
  {
    v31 = 1;
    v32 = 0uLL;
    iceTransportPolicy2 = [(MTRWebRTCTransportRequestorClusterOfferParams *)self iceTransportPolicy];
    v13 = iceTransportPolicy2;
    sub_238DB9BD8(buf, [iceTransportPolicy2 UTF8String], objc_msgSend(iceTransportPolicy2, "lengthOfBytesUsingEncoding:", 4));

    v32 = *buf;
  }

  sub_2393D9C18(0x62FuLL, 0, &v23);
  if (v23)
  {
    sub_2393C7B90(buf);
    v35 = 0;
    v36 = 0;
    v34 = &unk_284BB83A8;
    v37 = 0;
    sub_238EA16C4(&v34, &v23, 0);
    sub_2393C7BF0(buf, &v34, 0xFFFFFFFF);
    v15 = sub_238F33CD8(&unsignedShortValue, buf, 0x100uLL);
    v16 = v15;
    if (v15 || (v15 = sub_238DD2EFC(buf, &v23), v16 = v15, v15))
    {
      v17 = v14;
    }

    else
    {
      sub_238DD2F90(reader, &v23);
      v15 = sub_2393C7114(reader, 21, 256);
      v17 = v21;
      v16 = v15;
    }

    v34 = &unk_284BB83A8;
    sub_238EA1758(&v36);
    sub_238EA1758(&v35);
  }

  else
  {
    v17 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v15 = 0x906B00000000;
    v16 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v18 = *MEMORY[0x277D85DE8];
  v19 = v15 & 0xFFFFFFFF00000000 | v16;
  v20 = v17;
  result.mFile = v20;
  result.mError = v19;
  result.mLine = HIDWORD(v19);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRWebRTCTransportRequestorClusterOfferParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x908800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end