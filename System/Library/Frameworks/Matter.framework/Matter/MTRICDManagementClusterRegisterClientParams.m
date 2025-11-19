@interface MTRICDManagementClusterRegisterClientParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRICDManagementClusterRegisterClientParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRICDManagementClusterRegisterClientParams

- (MTRICDManagementClusterRegisterClientParams)init
{
  v13.receiver = self;
  v13.super_class = MTRICDManagementClusterRegisterClientParams;
  v2 = [(MTRICDManagementClusterRegisterClientParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    checkInNodeID = v2->_checkInNodeID;
    v2->_checkInNodeID = &unk_284C3E4C8;

    monitoredSubject = v3->_monitoredSubject;
    v3->_monitoredSubject = &unk_284C3E4C8;

    v6 = [MEMORY[0x277CBEA90] data];
    key = v3->_key;
    v3->_key = v6;

    verificationKey = v3->_verificationKey;
    v3->_verificationKey = 0;

    clientType = v3->_clientType;
    v3->_clientType = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRICDManagementClusterRegisterClientParams);
  v5 = [(MTRICDManagementClusterRegisterClientParams *)self checkInNodeID];
  [(MTRICDManagementClusterRegisterClientParams *)v4 setCheckInNodeID:v5];

  v6 = [(MTRICDManagementClusterRegisterClientParams *)self monitoredSubject];
  [(MTRICDManagementClusterRegisterClientParams *)v4 setMonitoredSubject:v6];

  v7 = [(MTRICDManagementClusterRegisterClientParams *)self key];
  [(MTRICDManagementClusterRegisterClientParams *)v4 setKey:v7];

  v8 = [(MTRICDManagementClusterRegisterClientParams *)self verificationKey];
  [(MTRICDManagementClusterRegisterClientParams *)v4 setVerificationKey:v8];

  v9 = [(MTRICDManagementClusterRegisterClientParams *)self clientType];
  [(MTRICDManagementClusterRegisterClientParams *)v4 setClientType:v9];

  v10 = [(MTRICDManagementClusterRegisterClientParams *)self timedInvokeTimeoutMs];
  [(MTRICDManagementClusterRegisterClientParams *)v4 setTimedInvokeTimeoutMs:v10];

  v11 = [(MTRICDManagementClusterRegisterClientParams *)self serverSideProcessingTimeout];
  [(MTRICDManagementClusterRegisterClientParams *)v4 setServerSideProcessingTimeout:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  checkInNodeID = self->_checkInNodeID;
  monitoredSubject = self->_monitoredSubject;
  v8 = [(NSData *)self->_key base64EncodedStringWithOptions:0];
  v9 = [(NSData *)self->_verificationKey base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: checkInNodeID:%@ monitoredSubject:%@; key:%@; verificationKey:%@; clientType:%@; >", v5, checkInNodeID, monitoredSubject, v8, v9, self->_clientType];;

  return v10;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v31 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v5 = [(MTRICDManagementClusterRegisterClientParams *)self checkInNodeID];
  *&v27 = [v5 unsignedLongLongValue];

  v6 = [(MTRICDManagementClusterRegisterClientParams *)self monitoredSubject];
  *(&v27 + 1) = [v6 unsignedLongLongValue];

  v7 = [(MTRICDManagementClusterRegisterClientParams *)self key];
  sub_238DB6950(v19, [v7 bytes], objc_msgSend(v7, "length"));

  v28 = v19[0];
  v8 = [(MTRICDManagementClusterRegisterClientParams *)self verificationKey];

  if (v8)
  {
    v29 = 1;
    v30 = 0uLL;
    v9 = [(MTRICDManagementClusterRegisterClientParams *)self verificationKey];
    sub_238DB6950(v19, [v9 bytes], objc_msgSend(v9, "length"));

    v30 = v19[0];
  }

  v10 = [(MTRICDManagementClusterRegisterClientParams *)self clientType];
  v31 = [v10 unsignedCharValue];

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
    v11 = sub_238F1A124(&v27, v19, 0x100uLL);
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
    v15 = 0x296300000000;
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
  v7 = [(MTRICDManagementClusterRegisterClientParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x298000000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end