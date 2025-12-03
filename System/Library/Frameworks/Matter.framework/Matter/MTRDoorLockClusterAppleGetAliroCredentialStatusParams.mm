@interface MTRDoorLockClusterAppleGetAliroCredentialStatusParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRDoorLockClusterAppleGetAliroCredentialStatusParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRDoorLockClusterAppleGetAliroCredentialStatusParams

- (MTRDoorLockClusterAppleGetAliroCredentialStatusParams)init
{
  v8.receiver = self;
  v8.super_class = MTRDoorLockClusterAppleGetAliroCredentialStatusParams;
  v2 = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    credential = v2->_credential;
    v2->_credential = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRDoorLockClusterAppleGetAliroCredentialStatusParams);
  credential = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)self credential];
  [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)v4 setCredential:credential];

  timedInvokeTimeoutMs = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)self timedInvokeTimeoutMs];
  [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)self serverSideProcessingTimeout];
  [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: credential:%@ >", v5, self->_credential];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v25[0] = 0;
  unsignedShortValue = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  credential = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)self credential];
  credentialType = [credential credentialType];
  v25[0] = [credentialType unsignedCharValue];

  credential2 = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)self credential];
  credentialIndex = [credential2 credentialIndex];
  unsignedShortValue = [credentialIndex unsignedShortValue];

  sub_2393D9C18(0x62FuLL, 0, &v22);
  if (v22)
  {
    sub_2393C7B90(v17);
    v19 = 0;
    v20 = 0;
    v18 = &unk_284BB83A8;
    v21 = 0;
    sub_238EA16C4(&v18, &v22, 0);
    sub_2393C7BF0(v17, &v18, 0xFFFFFFFF);
    v9 = sub_238F12E24(v25, v17, 0x100uLL);
    v11 = v9;
    if (v9 || (v9 = sub_238DD2EFC(v17, &v22), v11 = v9, v9))
    {
      v12 = v10;
    }

    else
    {
      sub_238DD2F90(reader, &v22);
      v9 = sub_2393C7114(reader, 21, 256);
      v12 = v16;
      v11 = v9;
    }

    v13 = v9 & 0xFFFFFFFF00000000;
    v18 = &unk_284BB83A8;
    sub_238EA1758(&v20);
    sub_238EA1758(&v19);
  }

  else
  {
    v12 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v13 = 0x558700000000;
    v11 = 11;
  }

  sub_238EA1758(&v22);
  sub_238EA1790(&v23);
  v14 = v13 | v11;
  v15 = v12;
  result.mFile = v15;
  result.mError = v14;
  result.mLine = HIDWORD(v14);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRDoorLockClusterAppleGetAliroCredentialStatusParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x55A400000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end