@interface MTRDoorLockClusterAppleSetAliroCredentialParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRDoorLockClusterAppleSetAliroCredentialParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterAppleSetAliroCredentialParams

- (MTRDoorLockClusterAppleSetAliroCredentialParams)init
{
  v13.receiver = self;
  v13.super_class = MTRDoorLockClusterAppleSetAliroCredentialParams;
  v2 = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)&v13 init];
  v3 = v2;
  if (v2)
  {
    operationType = v2->_operationType;
    v2->_operationType = &unk_284C3E4C8;

    v5 = objc_opt_new();
    credential = v3->_credential;
    v3->_credential = v5;

    data = [MEMORY[0x277CBEA90] data];
    credentialData = v3->_credentialData;
    v3->_credentialData = data;

    userIndex = v3->_userIndex;
    v3->_userIndex = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterAppleSetAliroCredentialParams);
  operationType = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self operationType];
  [(MTRDoorLockClusterAppleSetAliroCredentialParams *)v4 setOperationType:operationType];

  credential = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self credential];
  [(MTRDoorLockClusterAppleSetAliroCredentialParams *)v4 setCredential:credential];

  credentialData = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self credentialData];
  [(MTRDoorLockClusterAppleSetAliroCredentialParams *)v4 setCredentialData:credentialData];

  userIndex = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self userIndex];
  [(MTRDoorLockClusterAppleSetAliroCredentialParams *)v4 setUserIndex:userIndex];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterAppleSetAliroCredentialParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterAppleSetAliroCredentialParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  operationType = self->_operationType;
  credential = self->_credential;
  v8 = [(NSData *)self->_credentialData base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: operationType:%@ credential:%@; credentialData:%@; userIndex:%@; >", v5, operationType, credential, v8, self->_userIndex];;

  return v9;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v28[0] = 0;
  unsignedCharValue = 0;
  unsignedShortValue = 0;
  v31 = 0uLL;
  unsignedShortValue2 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  operationType = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self operationType];
  v28[0] = [operationType unsignedCharValue];

  credential = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self credential];
  credentialType = [credential credentialType];
  unsignedCharValue = [credentialType unsignedCharValue];

  credential2 = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self credential];
  credentialIndex = [credential2 credentialIndex];
  unsignedShortValue = [credentialIndex unsignedShortValue];

  credentialData = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self credentialData];
  sub_238DB6950(v20, [credentialData bytes], objc_msgSend(credentialData, "length"));

  v31 = v20[0];
  userIndex = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self userIndex];
  unsignedShortValue2 = [userIndex unsignedShortValue];

  sub_2393D9C18(0x62FuLL, 0, &v25);
  if (v25)
  {
    sub_2393C7B90(v20);
    v22 = 0;
    v23 = 0;
    v21 = &unk_284BB83A8;
    v24 = 0;
    sub_238EA16C4(&v21, &v25, 0);
    sub_2393C7BF0(v20, &v21, 0xFFFFFFFF);
    v12 = sub_238F12C60(v28, v20, 0x100uLL);
    v14 = v12;
    if (v12 || (v12 = sub_238DD2EFC(v20, &v25), v14 = v12, v12))
    {
      v15 = v13;
    }

    else
    {
      sub_238DD2F90(reader, &v25);
      v12 = sub_2393C7114(reader, 21, 256);
      v15 = v19;
      v14 = v12;
    }

    v16 = v12 & 0xFFFFFFFF00000000;
    v21 = &unk_284BB83A8;
    sub_238EA1758(&v23);
    sub_238EA1758(&v22);
  }

  else
  {
    v15 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v16 = 0x553700000000;
    v14 = 11;
  }

  sub_238EA1758(&v25);
  sub_238EA1790(&v26);
  v17 = v16 | v14;
  v18 = v15;
  result.mFile = v18;
  result.mError = v17;
  result.mLine = HIDWORD(v17);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDoorLockClusterAppleSetAliroCredentialParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x555400000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end