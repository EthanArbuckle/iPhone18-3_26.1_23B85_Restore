@interface MTRDoorLockClusterSetCredentialParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRDoorLockClusterSetCredentialParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterSetCredentialParams

- (MTRDoorLockClusterSetCredentialParams)init
{
  v15.receiver = self;
  v15.super_class = MTRDoorLockClusterSetCredentialParams;
  v2 = [(MTRDoorLockClusterSetCredentialParams *)&v15 init];
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
    v3->_userIndex = 0;

    userStatus = v3->_userStatus;
    v3->_userStatus = 0;

    userType = v3->_userType;
    v3->_userType = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterSetCredentialParams);
  operationType = [(MTRDoorLockClusterSetCredentialParams *)self operationType];
  [(MTRDoorLockClusterSetCredentialParams *)v4 setOperationType:operationType];

  credential = [(MTRDoorLockClusterSetCredentialParams *)self credential];
  [(MTRDoorLockClusterSetCredentialParams *)v4 setCredential:credential];

  credentialData = [(MTRDoorLockClusterSetCredentialParams *)self credentialData];
  [(MTRDoorLockClusterSetCredentialParams *)v4 setCredentialData:credentialData];

  userIndex = [(MTRDoorLockClusterSetCredentialParams *)self userIndex];
  [(MTRDoorLockClusterSetCredentialParams *)v4 setUserIndex:userIndex];

  userStatus = [(MTRDoorLockClusterSetCredentialParams *)self userStatus];
  [(MTRDoorLockClusterSetCredentialParams *)v4 setUserStatus:userStatus];

  userType = [(MTRDoorLockClusterSetCredentialParams *)self userType];
  [(MTRDoorLockClusterSetCredentialParams *)v4 setUserType:userType];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetCredentialParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterSetCredentialParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRDoorLockClusterSetCredentialParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterSetCredentialParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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
  v9 = [v3 stringWithFormat:@"<%@: operationType:%@ credential:%@; credentialData:%@; userIndex:%@; userStatus:%@; userType:%@; >", v5, operationType, credential, v8, self->_userIndex, self->_userStatus, self->_userType];;

  return v9;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v33[0] = 0;
  unsignedCharValue = 0;
  unsignedShortValue = 0;
  v38 = 0;
  v36 = 0uLL;
  LOBYTE(unsignedShortValue2) = 0;
  v39 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  operationType = [(MTRDoorLockClusterSetCredentialParams *)self operationType];
  v33[0] = [operationType unsignedCharValue];

  credential = [(MTRDoorLockClusterSetCredentialParams *)self credential];
  credentialType = [credential credentialType];
  unsignedCharValue = [credentialType unsignedCharValue];

  credential2 = [(MTRDoorLockClusterSetCredentialParams *)self credential];
  credentialIndex = [credential2 credentialIndex];
  unsignedShortValue = [credentialIndex unsignedShortValue];

  credentialData = [(MTRDoorLockClusterSetCredentialParams *)self credentialData];
  sub_238DB6950(v25, [credentialData bytes], objc_msgSend(credentialData, "length"));

  v36 = v25[0];
  userIndex = [(MTRDoorLockClusterSetCredentialParams *)self userIndex];

  if (userIndex)
  {
    unsignedShortValue2 = 0;
    v38 = 1;
    userIndex2 = [(MTRDoorLockClusterSetCredentialParams *)self userIndex];
    unsignedShortValue2 = [userIndex2 unsignedShortValue];
  }

  userStatus = [(MTRDoorLockClusterSetCredentialParams *)self userStatus];

  if (userStatus)
  {
    LOWORD(v39) = 256;
    userStatus2 = [(MTRDoorLockClusterSetCredentialParams *)self userStatus];
    LOBYTE(v39) = [userStatus2 unsignedCharValue];
  }

  userType = [(MTRDoorLockClusterSetCredentialParams *)self userType];

  if (userType)
  {
    HIWORD(v39) = 256;
    userType2 = [(MTRDoorLockClusterSetCredentialParams *)self userType];
    BYTE2(v39) = [userType2 unsignedCharValue];
  }

  sub_2393D9C18(0x62FuLL, 0, &v30);
  if (v30)
  {
    sub_2393C7B90(v25);
    v27 = 0;
    v28 = 0;
    v26 = &unk_284BB83A8;
    v29 = 0;
    sub_238EA16C4(&v26, &v30, 0);
    sub_2393C7BF0(v25, &v26, 0xFFFFFFFF);
    v17 = sub_238F122C8(v33, v25, 0x100uLL);
    v19 = v17;
    if (v17 || (v17 = sub_238DD2EFC(v25, &v30), v19 = v17, v17))
    {
      v20 = v18;
    }

    else
    {
      sub_238DD2F90(reader, &v30);
      v17 = sub_2393C7114(reader, 21, 256);
      v20 = v24;
      v19 = v17;
    }

    v21 = v17 & 0xFFFFFFFF00000000;
    v26 = &unk_284BB83A8;
    sub_238EA1758(&v28);
    sub_238EA1758(&v27);
  }

  else
  {
    v20 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v21 = 0x523100000000;
    v19 = 11;
  }

  sub_238EA1758(&v30);
  sub_238EA1790(&v31);
  v22 = v21 | v19;
  v23 = v20;
  result.mFile = v23;
  result.mError = v22;
  result.mLine = HIDWORD(v22);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDoorLockClusterSetCredentialParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x524E00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end