@interface MTRDoorLockClusterSetAliroReaderConfigParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRDoorLockClusterSetAliroReaderConfigParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterSetAliroReaderConfigParams

- (MTRDoorLockClusterSetAliroReaderConfigParams)init
{
  v13.receiver = self;
  v13.super_class = MTRDoorLockClusterSetAliroReaderConfigParams;
  v2 = [(MTRDoorLockClusterSetAliroReaderConfigParams *)&v13 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEA90] data];
    signingKey = v2->_signingKey;
    v2->_signingKey = data;

    data2 = [MEMORY[0x277CBEA90] data];
    verificationKey = v2->_verificationKey;
    v2->_verificationKey = data2;

    data3 = [MEMORY[0x277CBEA90] data];
    groupIdentifier = v2->_groupIdentifier;
    v2->_groupIdentifier = data3;

    groupResolvingKey = v2->_groupResolvingKey;
    v2->_groupResolvingKey = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterSetAliroReaderConfigParams);
  signingKey = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self signingKey];
  [(MTRDoorLockClusterSetAliroReaderConfigParams *)v4 setSigningKey:signingKey];

  verificationKey = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self verificationKey];
  [(MTRDoorLockClusterSetAliroReaderConfigParams *)v4 setVerificationKey:verificationKey];

  groupIdentifier = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self groupIdentifier];
  [(MTRDoorLockClusterSetAliroReaderConfigParams *)v4 setGroupIdentifier:groupIdentifier];

  groupResolvingKey = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self groupResolvingKey];
  [(MTRDoorLockClusterSetAliroReaderConfigParams *)v4 setGroupResolvingKey:groupResolvingKey];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterSetAliroReaderConfigParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterSetAliroReaderConfigParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  signingKey = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self signingKey];
  sub_238DB6950(v18, [signingKey bytes], objc_msgSend(signingKey, "length"));

  v26 = v18[0];
  verificationKey = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self verificationKey];
  sub_238DB6950(v18, [verificationKey bytes], objc_msgSend(verificationKey, "length"));

  v27 = v18[0];
  groupIdentifier = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self groupIdentifier];
  sub_238DB6950(v18, [groupIdentifier bytes], objc_msgSend(groupIdentifier, "length"));

  v28 = v18[0];
  groupResolvingKey = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self groupResolvingKey];

  if (groupResolvingKey)
  {
    v29 = 1;
    v30 = 0uLL;
    groupResolvingKey2 = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self groupResolvingKey];
    sub_238DB6950(v18, [groupResolvingKey2 bytes], objc_msgSend(groupResolvingKey2, "length"));

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
      sub_238DD2F90(reader, &v23);
      v10 = sub_2393C7114(reader, 21, 256);
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
    v14 = 0x548C00000000;
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDoorLockClusterSetAliroReaderConfigParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x54A900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end