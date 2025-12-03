@interface MTRDoorLockClusterGetUserResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetUserResponseParams)init;
- (MTRDoorLockClusterGetUserResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRDoorLockClusterGetUserResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterGetUserResponseParams

- (MTRDoorLockClusterGetUserResponseParams)init
{
  v16.receiver = self;
  v16.super_class = MTRDoorLockClusterGetUserResponseParams;
  v2 = [(MTRDoorLockClusterGetUserResponseParams *)&v16 init];
  v3 = v2;
  if (v2)
  {
    userIndex = v2->_userIndex;
    v2->_userIndex = &unk_284C3E4C8;

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

    credentials = v3->_credentials;
    v3->_credentials = 0;

    creatorFabricIndex = v3->_creatorFabricIndex;
    v3->_creatorFabricIndex = 0;

    lastModifiedFabricIndex = v3->_lastModifiedFabricIndex;
    v3->_lastModifiedFabricIndex = 0;

    nextUserIndex = v3->_nextUserIndex;
    v3->_nextUserIndex = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterGetUserResponseParams);
  userIndex = [(MTRDoorLockClusterGetUserResponseParams *)self userIndex];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setUserIndex:userIndex];

  userName = [(MTRDoorLockClusterGetUserResponseParams *)self userName];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setUserName:userName];

  userUniqueID = [(MTRDoorLockClusterGetUserResponseParams *)self userUniqueID];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setUserUniqueID:userUniqueID];

  userStatus = [(MTRDoorLockClusterGetUserResponseParams *)self userStatus];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setUserStatus:userStatus];

  userType = [(MTRDoorLockClusterGetUserResponseParams *)self userType];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setUserType:userType];

  credentialRule = [(MTRDoorLockClusterGetUserResponseParams *)self credentialRule];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setCredentialRule:credentialRule];

  credentials = [(MTRDoorLockClusterGetUserResponseParams *)self credentials];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setCredentials:credentials];

  creatorFabricIndex = [(MTRDoorLockClusterGetUserResponseParams *)self creatorFabricIndex];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setCreatorFabricIndex:creatorFabricIndex];

  lastModifiedFabricIndex = [(MTRDoorLockClusterGetUserResponseParams *)self lastModifiedFabricIndex];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setLastModifiedFabricIndex:lastModifiedFabricIndex];

  nextUserIndex = [(MTRDoorLockClusterGetUserResponseParams *)self nextUserIndex];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setNextUserIndex:nextUserIndex];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterGetUserResponseParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterGetUserResponseParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: userIndex:%@ userName:%@; userUniqueID:%@; userStatus:%@; userType:%@; credentialRule:%@; credentials:%@; creatorFabricIndex:%@; lastModifiedFabricIndex:%@; nextUserIndex:%@; >", v5, self->_userIndex, self->_userName, self->_userUniqueID, self->_userStatus, self->_userType, self->_credentialRule, self->_credentials, self->_creatorFabricIndex, self->_lastModifiedFabricIndex, self->_nextUserIndex];;

  return v6;
}

- (MTRDoorLockClusterGetUserResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v27.receiver = self;
  v27.super_class = MTRDoorLockClusterGetUserResponseParams;
  v7 = [(MTRDoorLockClusterGetUserResponseParams *)&v27 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:257 commandID:28 error:error];
  if (v26)
  {
    sub_2393C5AAC(v25);
    sub_2393C5ADC(v8, *(v26 + 1), *(v26 + 3));
    v9 = sub_2393C6FD0(v25, 256);
    if (!v9)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v20 = 0;
      v21 = 0;
      v24 = 0;
      v18 = 0;
      v19 = 0;
      v22 = 0;
      v23 = 0;
      v9 = sub_238F12158(&v13, v25);
      if (!v9)
      {
        v9 = [(MTRDoorLockClusterGetUserResponseParams *)v7 _setFieldsFromDecodableStruct:&v13];
        if (!v9)
        {
          v11 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v9, v10, error);
  }

  v11 = 0;
LABEL_8:
  sub_238EA1758(&v26);
LABEL_10:

  return v11;
}

- (MTRDoorLockClusterGetUserResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRDoorLockClusterGetUserResponseParams;
  v4 = [(MTRDoorLockClusterGetUserResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRDoorLockClusterGetUserResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*struct];
  [(MTRDoorLockClusterGetUserResponseParams *)self setUserIndex:v5];

  if (*(struct + 24))
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(struct + 1) length:*(struct + 2) encoding:4];
    [(MTRDoorLockClusterGetUserResponseParams *)self setUserName:v6];

    userName = [(MTRDoorLockClusterGetUserResponseParams *)self userName];

    if (!userName)
    {
      v8 = 0x512B00000000;
      v9 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v10 = 47;
      goto LABEL_40;
    }
  }

  else
  {
    [(MTRDoorLockClusterGetUserResponseParams *)self setUserName:0];
  }

  if (*(struct + 36))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(struct + 8)];
    [(MTRDoorLockClusterGetUserResponseParams *)self setUserUniqueID:v11];
  }

  else
  {
    [(MTRDoorLockClusterGetUserResponseParams *)self setUserUniqueID:0];
  }

  if (*(struct + 41))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 40)];
    [(MTRDoorLockClusterGetUserResponseParams *)self setUserStatus:v12];
  }

  else
  {
    [(MTRDoorLockClusterGetUserResponseParams *)self setUserStatus:0];
  }

  if (*(struct + 43))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 42)];
    [(MTRDoorLockClusterGetUserResponseParams *)self setUserType:v13];
  }

  else
  {
    [(MTRDoorLockClusterGetUserResponseParams *)self setUserType:0];
  }

  if (*(struct + 45))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 44)];
    [(MTRDoorLockClusterGetUserResponseParams *)self setCredentialRule:v14];
  }

  else
  {
    [(MTRDoorLockClusterGetUserResponseParams *)self setCredentialRule:0];
  }

  if (*(struct + 120))
  {
    v15 = objc_opt_new();
    if ((*(struct + 120) & 1) == 0)
    {
      sub_238EA195C();
    }

    sub_2393C5AAC(v29);
    v27 = 0;
    v28 = 0;
    sub_2393C5BDC(v29, struct + 48);
    LOBYTE(v30) = 0;
    HIWORD(v30) = 0;
    while (1)
    {
      v16 = sub_238EA1A80(&v27);
      LODWORD(v17) = v27;
      if (v27)
      {
        v16 = 0;
      }

      if (!v16)
      {
        break;
      }

      v30 = 0;
      v17 = sub_238F142FC(&v30, v29);
      v27 = v17;
      v28 = v18;
      if (v17)
      {
        break;
      }

      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v30];
      [v19 setCredentialType:v20];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v30)];
      [v19 setCredentialIndex:v21];

      [v15 addObject:v19];
    }

    if (v17 != 33)
    {
      v10 = v27;
      if (v27)
      {
        v9 = v28;
        v8 = v27 & 0xFFFFFFFF00000000;

        goto LABEL_40;
      }
    }

    [(MTRDoorLockClusterGetUserResponseParams *)self setCredentials:v15, v27];
  }

  else
  {
    [(MTRDoorLockClusterGetUserResponseParams *)self setCredentials:0];
  }

  if (*(struct + 129))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 128)];
    [(MTRDoorLockClusterGetUserResponseParams *)self setCreatorFabricIndex:v22];
  }

  else
  {
    [(MTRDoorLockClusterGetUserResponseParams *)self setCreatorFabricIndex:0];
  }

  if (*(struct + 131))
  {
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 130)];
    [(MTRDoorLockClusterGetUserResponseParams *)self setLastModifiedFabricIndex:v23];
  }

  else
  {
    [(MTRDoorLockClusterGetUserResponseParams *)self setLastModifiedFabricIndex:0];
  }

  if (*(struct + 134))
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 66)];
    [(MTRDoorLockClusterGetUserResponseParams *)self setNextUserIndex:v24];
  }

  else
  {
    [(MTRDoorLockClusterGetUserResponseParams *)self setNextUserIndex:0];
  }

  v9 = 0;
  v8 = 0;
  v10 = 0;
LABEL_40:
  v25 = v10 | v8;
  v26 = v9;
  result.mFile = v26;
  result.mError = v25;
  result.mLine = HIDWORD(v25);
  return result;
}

@end