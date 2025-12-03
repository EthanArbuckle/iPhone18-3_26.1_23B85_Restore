@interface MTRDoorLockClusterSetUserParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRDoorLockClusterSetUserParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterSetUserParams

- (MTRDoorLockClusterSetUserParams)init
{
  v14.receiver = self;
  v14.super_class = MTRDoorLockClusterSetUserParams;
  v2 = [(MTRDoorLockClusterSetUserParams *)&v14 init];
  v3 = v2;
  if (v2)
  {
    operationType = v2->_operationType;
    v2->_operationType = &unk_284C3E4C8;

    userIndex = v3->_userIndex;
    v3->_userIndex = &unk_284C3E4C8;

    userName = v3->_userName;
    v3->_userName = 0;

    userUniqueID = v3->_userUniqueID;
    v3->_userUniqueID = 0;

    userStatus = v3->_userStatus;
    v3->_userStatus = 0;

    userType = v3->_userType;
    v3->_userType = 0;

    credentialRule = v3->_credentialRule;
    v3->_credentialRule = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterSetUserParams);
  operationType = [(MTRDoorLockClusterSetUserParams *)self operationType];
  [(MTRDoorLockClusterSetUserParams *)v4 setOperationType:operationType];

  userIndex = [(MTRDoorLockClusterSetUserParams *)self userIndex];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserIndex:userIndex];

  userName = [(MTRDoorLockClusterSetUserParams *)self userName];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserName:userName];

  userUniqueID = [(MTRDoorLockClusterSetUserParams *)self userUniqueID];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserUniqueID:userUniqueID];

  userStatus = [(MTRDoorLockClusterSetUserParams *)self userStatus];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserStatus:userStatus];

  userType = [(MTRDoorLockClusterSetUserParams *)self userType];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserType:userType];

  credentialRule = [(MTRDoorLockClusterSetUserParams *)self credentialRule];
  [(MTRDoorLockClusterSetUserParams *)v4 setCredentialRule:credentialRule];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterSetUserParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterSetUserParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRDoorLockClusterSetUserParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterSetUserParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: operationType:%@ userIndex:%@; userName:%@; userUniqueID:%@; userStatus:%@; userType:%@; credentialRule:%@; >", v5, self->_operationType, self->_userIndex, self->_userName, self->_userUniqueID, self->_userStatus, self->_userType, self->_credentialRule];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v33[0] = 0;
  unsignedShortValue = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(unsignedIntValue) = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  operationType = [(MTRDoorLockClusterSetUserParams *)self operationType];
  v33[0] = [operationType unsignedCharValue];

  userIndex = [(MTRDoorLockClusterSetUserParams *)self userIndex];
  unsignedShortValue = [userIndex unsignedShortValue];

  userName = [(MTRDoorLockClusterSetUserParams *)self userName];

  if (userName)
  {
    v35 = 0uLL;
    v36 = 1;
    userName2 = [(MTRDoorLockClusterSetUserParams *)self userName];
    sub_238DB9BD8(v25, [userName2 UTF8String], objc_msgSend(userName2, "lengthOfBytesUsingEncoding:", 4));

    v35 = v25[0];
  }

  userUniqueID = [(MTRDoorLockClusterSetUserParams *)self userUniqueID];

  if (userUniqueID)
  {
    unsignedIntValue = 0;
    v38 = 1;
    userUniqueID2 = [(MTRDoorLockClusterSetUserParams *)self userUniqueID];
    unsignedIntValue = [userUniqueID2 unsignedIntValue];
  }

  userStatus = [(MTRDoorLockClusterSetUserParams *)self userStatus];

  if (userStatus)
  {
    LOWORD(v39) = 256;
    userStatus2 = [(MTRDoorLockClusterSetUserParams *)self userStatus];
    LOBYTE(v39) = [userStatus2 unsignedCharValue];
  }

  userType = [(MTRDoorLockClusterSetUserParams *)self userType];

  if (userType)
  {
    HIWORD(v39) = 256;
    userType2 = [(MTRDoorLockClusterSetUserParams *)self userType];
    BYTE2(v39) = [userType2 unsignedCharValue];
  }

  credentialRule = [(MTRDoorLockClusterSetUserParams *)self credentialRule];

  if (credentialRule)
  {
    v40 = 256;
    credentialRule2 = [(MTRDoorLockClusterSetUserParams *)self credentialRule];
    LOBYTE(v40) = [credentialRule2 unsignedCharValue];
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
    v17 = sub_238F11C8C(v33, v25, 0x100uLL);
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
    v21 = 0x503500000000;
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
  v7 = [(MTRDoorLockClusterSetUserParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x505200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end