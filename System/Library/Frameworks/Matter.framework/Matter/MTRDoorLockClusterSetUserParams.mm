@interface MTRDoorLockClusterSetUserParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRDoorLockClusterSetUserParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRDoorLockClusterSetUserParams);
  v5 = [(MTRDoorLockClusterSetUserParams *)self operationType];
  [(MTRDoorLockClusterSetUserParams *)v4 setOperationType:v5];

  v6 = [(MTRDoorLockClusterSetUserParams *)self userIndex];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserIndex:v6];

  v7 = [(MTRDoorLockClusterSetUserParams *)self userName];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserName:v7];

  v8 = [(MTRDoorLockClusterSetUserParams *)self userUniqueID];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserUniqueID:v8];

  v9 = [(MTRDoorLockClusterSetUserParams *)self userStatus];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserStatus:v9];

  v10 = [(MTRDoorLockClusterSetUserParams *)self userType];
  [(MTRDoorLockClusterSetUserParams *)v4 setUserType:v10];

  v11 = [(MTRDoorLockClusterSetUserParams *)self credentialRule];
  [(MTRDoorLockClusterSetUserParams *)v4 setCredentialRule:v11];

  v12 = [(MTRDoorLockClusterSetUserParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterSetUserParams *)v4 setTimedInvokeTimeoutMs:v12];

  v13 = [(MTRDoorLockClusterSetUserParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterSetUserParams *)v4 setServerSideProcessingTimeout:v13];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v33[0] = 0;
  v34 = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v37) = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  v5 = [(MTRDoorLockClusterSetUserParams *)self operationType];
  v33[0] = [v5 unsignedCharValue];

  v6 = [(MTRDoorLockClusterSetUserParams *)self userIndex];
  v34 = [v6 unsignedShortValue];

  v7 = [(MTRDoorLockClusterSetUserParams *)self userName];

  if (v7)
  {
    v35 = 0uLL;
    v36 = 1;
    v8 = [(MTRDoorLockClusterSetUserParams *)self userName];
    sub_238DB9BD8(v25, [v8 UTF8String], objc_msgSend(v8, "lengthOfBytesUsingEncoding:", 4));

    v35 = v25[0];
  }

  v9 = [(MTRDoorLockClusterSetUserParams *)self userUniqueID];

  if (v9)
  {
    v37 = 0;
    v38 = 1;
    v10 = [(MTRDoorLockClusterSetUserParams *)self userUniqueID];
    v37 = [v10 unsignedIntValue];
  }

  v11 = [(MTRDoorLockClusterSetUserParams *)self userStatus];

  if (v11)
  {
    LOWORD(v39) = 256;
    v12 = [(MTRDoorLockClusterSetUserParams *)self userStatus];
    LOBYTE(v39) = [v12 unsignedCharValue];
  }

  v13 = [(MTRDoorLockClusterSetUserParams *)self userType];

  if (v13)
  {
    HIWORD(v39) = 256;
    v14 = [(MTRDoorLockClusterSetUserParams *)self userType];
    BYTE2(v39) = [v14 unsignedCharValue];
  }

  v15 = [(MTRDoorLockClusterSetUserParams *)self credentialRule];

  if (v15)
  {
    v40 = 256;
    v16 = [(MTRDoorLockClusterSetUserParams *)self credentialRule];
    LOBYTE(v40) = [v16 unsignedCharValue];
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
      sub_238DD2F90(a3, &v30);
      v17 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDoorLockClusterSetUserParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x505200000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end