@interface MTROperationalCredentialsClusterSetVIDVerificationStatementParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTROperationalCredentialsClusterSetVIDVerificationStatementParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterSetVIDVerificationStatementParams

- (MTROperationalCredentialsClusterSetVIDVerificationStatementParams)init
{
  v10.receiver = self;
  v10.super_class = MTROperationalCredentialsClusterSetVIDVerificationStatementParams;
  v2 = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    vendorID = v2->_vendorID;
    v2->_vendorID = 0;

    vidVerificationStatement = v3->_vidVerificationStatement;
    v3->_vidVerificationStatement = 0;

    vvsc = v3->_vvsc;
    v3->_vvsc = 0;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterSetVIDVerificationStatementParams);
  vendorID = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self vendorID];
  [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)v4 setVendorID:vendorID];

  vidVerificationStatement = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self vidVerificationStatement];
  [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)v4 setVidVerificationStatement:vidVerificationStatement];

  vvsc = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self vvsc];
  [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)v4 setVvsc:vvsc];

  timedInvokeTimeoutMs = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self serverSideProcessingTimeout];
  [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  vendorID = self->_vendorID;
  v7 = [(NSData *)self->_vidVerificationStatement base64EncodedStringWithOptions:0];
  v8 = [(NSData *)self->_vvsc base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: vendorID:%@ vidVerificationStatement:%@; vvsc:%@; >", v5, vendorID, v7, v8];;

  return v9;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v27[0] = 0;
  v29 = 0;
  v31 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  vendorID = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self vendorID];

  if (vendorID)
  {
    v27[0] = 1;
    unsignedShortValue = 0;
    vendorID2 = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self vendorID];
    unsignedShortValue = [vendorID2 unsignedShortValue];
  }

  vidVerificationStatement = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self vidVerificationStatement];

  if (vidVerificationStatement)
  {
    v29 = 1;
    v30 = 0uLL;
    vidVerificationStatement2 = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self vidVerificationStatement];
    sub_238DB6950(v19, [vidVerificationStatement2 bytes], objc_msgSend(vidVerificationStatement2, "length"));

    v30 = v19[0];
  }

  vvsc = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self vvsc];

  if (vvsc)
  {
    v31 = 1;
    v32 = 0uLL;
    vvsc2 = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self vvsc];
    sub_238DB6950(v19, [vvsc2 bytes], objc_msgSend(vvsc2, "length"));

    v32 = v19[0];
  }

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
    v11 = sub_238F22188(v27, v19, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(v19, &v24), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(reader, &v24);
      v11 = sub_2393C7114(reader, 21, 256);
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
    v15 = 0x260000000000;
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTROperationalCredentialsClusterSetVIDVerificationStatementParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x261D00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end