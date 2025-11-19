@interface MTRWebRTCTransportRequestorClusterICECandidatesParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRWebRTCTransportRequestorClusterICECandidatesParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRWebRTCTransportRequestorClusterICECandidatesParams

- (MTRWebRTCTransportRequestorClusterICECandidatesParams)init
{
  v10.receiver = self;
  v10.super_class = MTRWebRTCTransportRequestorClusterICECandidatesParams;
  v2 = [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    webRTCSessionID = v2->_webRTCSessionID;
    v2->_webRTCSessionID = &unk_284C3E4C8;

    v5 = [MEMORY[0x277CBEA60] array];
    iceCandidates = v3->_iceCandidates;
    v3->_iceCandidates = v5;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRWebRTCTransportRequestorClusterICECandidatesParams);
  v5 = [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)self webRTCSessionID];
  [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)v4 setWebRTCSessionID:v5];

  v6 = [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)self iceCandidates];
  [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)v4 setIceCandidates:v6];

  v7 = [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)self timedInvokeTimeoutMs];
  [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)self serverSideProcessingTimeout];
  [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: webRTCSessionID:%@ iceCandidates:%@; >", v5, self->_webRTCSessionID, self->_iceCandidates];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v28 = *MEMORY[0x277D85DE8];
  LOWORD(v20) = 0;
  v21 = 0;
  v22 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  v4 = [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)self webRTCSessionID];
  LOWORD(v20) = [v4 unsignedShortValue];

  v5 = [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)self iceCandidates];
  v6 = [v5 count] == 0;

  if (!v6)
  {
    operator new();
  }

  v21 = 0;
  v22 = 0;
  sub_2393D9C18(0x62FuLL, 0, &v17);
  if (v17)
  {
    sub_2393C7B90(buf);
    v25 = 0;
    v26 = 0;
    v24 = &unk_284BB83A8;
    v27 = 0;
    sub_238EA16C4(&v24, &v17, 0);
    sub_2393C7BF0(buf, &v24, 0xFFFFFFFF);
    v7 = sub_238F33964(&v20, buf, 0x100uLL);
    v9 = v7;
    if (v7 || (v7 = sub_238DD2EFC(buf, &v17), v9 = v7, v7))
    {
      v10 = v8;
    }

    else
    {
      sub_238DD2F90(a3, &v17);
      v7 = sub_2393C7114(a3, 21, 256);
      v10 = v15;
      v9 = v7;
    }

    v11 = v7 & 0xFFFFFFFF00000000;
    v24 = &unk_284BB83A8;
    sub_238EA1758(&v26);
    sub_238EA1758(&v25);
  }

  else
  {
    v10 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v11 = 0x913700000000;
    v9 = 11;
  }

  sub_238EA1758(&v17);
  sub_238EA1790(&v18);
  v12 = *MEMORY[0x277D85DE8];
  v13 = v11 | v9;
  v14 = v10;
  result.mFile = v14;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRWebRTCTransportRequestorClusterICECandidatesParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x915400000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end