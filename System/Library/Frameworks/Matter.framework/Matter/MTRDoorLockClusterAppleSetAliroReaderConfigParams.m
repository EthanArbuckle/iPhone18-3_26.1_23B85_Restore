@interface MTRDoorLockClusterAppleSetAliroReaderConfigParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRDoorLockClusterAppleSetAliroReaderConfigParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRDoorLockClusterAppleSetAliroReaderConfigParams

- (MTRDoorLockClusterAppleSetAliroReaderConfigParams)init
{
  v13.receiver = self;
  v13.super_class = MTRDoorLockClusterAppleSetAliroReaderConfigParams;
  v2 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    signingKey = v2->_signingKey;
    v2->_signingKey = v3;

    v5 = [MEMORY[0x277CBEA90] data];
    verificationKey = v2->_verificationKey;
    v2->_verificationKey = v5;

    v7 = [MEMORY[0x277CBEA90] data];
    groupIdentifier = v2->_groupIdentifier;
    v2->_groupIdentifier = v7;

    groupResolvingKey = v2->_groupResolvingKey;
    v2->_groupResolvingKey = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterAppleSetAliroReaderConfigParams);
  v5 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self signingKey];
  [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)v4 setSigningKey:v5];

  v6 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self verificationKey];
  [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)v4 setVerificationKey:v6];

  v7 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self groupIdentifier];
  [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)v4 setGroupIdentifier:v7];

  v8 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self groupResolvingKey];
  [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)v4 setGroupResolvingKey:v8];

  v9 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)v4 setTimedInvokeTimeoutMs:v9];

  v10 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)v4 setServerSideProcessingTimeout:v10];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_signingKey base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_verificationKey base64EncodedStringWithOptions:0];
  v8 = [(NSData *)self->_groupIdentifier base64EncodedStringWithOptions:0];
  v9 = [(NSData *)self->_groupResolvingKey base64EncodedStringWithOptions:0];
  v10 = [v3 stringWithFormat:@"<%@: signingKey:%@ verificationKey:%@; groupIdentifier:%@; groupResolvingKey:%@; >", v5, v6, v7, v8, v9];;

  return v10;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v5 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self signingKey];
  sub_238DB6950(v18, [v5 bytes], objc_msgSend(v5, "length"));

  v26 = v18[0];
  v6 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self verificationKey];
  sub_238DB6950(v18, [v6 bytes], objc_msgSend(v6, "length"));

  v27 = v18[0];
  v7 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self groupIdentifier];
  sub_238DB6950(v18, [v7 bytes], objc_msgSend(v7, "length"));

  v28 = v18[0];
  v8 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self groupResolvingKey];

  if (v8)
  {
    v29 = 1;
    v30 = 0uLL;
    v9 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self groupResolvingKey];
    sub_238DB6950(v18, [v9 bytes], objc_msgSend(v9, "length"));

    v30 = v18[0];
  }

  sub_2393D9C18(0x62FuLL, 0, &v23);
  if (v23)
  {
    sub_2393C7B90(v18);
    v20 = 0;
    v21 = 0;
    v19 = &unk_284BB83A8;
    v22 = 0;
    sub_238EA16C4(&v19, &v23, 0);
    sub_2393C7BF0(v18, &v19, 0xFFFFFFFF);
    v10 = sub_238F12A88(&v26, v18, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(v18, &v23), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(a3, &v23);
      v10 = sub_2393C7114(a3, 21, 256);
      v13 = v17;
      v12 = v10;
    }

    v14 = v10 & 0xFFFFFFFF00000000;
    v19 = &unk_284BB83A8;
    sub_238EA1758(&v21);
    sub_238EA1758(&v20);
  }

  else
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v14 = 0x564000000000;
    v12 = 11;
  }

  sub_238EA1758(&v23);
  sub_238EA1790(&v24);
  v15 = v14 | v12;
  v16 = v13;
  result.mFile = v16;
  result.mError = v15;
  result.mLine = HIDWORD(v15);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDoorLockClusterAppleSetAliroReaderConfigParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x565D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end