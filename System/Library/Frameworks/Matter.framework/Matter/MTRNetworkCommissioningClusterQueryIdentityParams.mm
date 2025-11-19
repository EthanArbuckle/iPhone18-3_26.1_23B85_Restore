@interface MTRNetworkCommissioningClusterQueryIdentityParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRNetworkCommissioningClusterQueryIdentityParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterQueryIdentityParams

- (MTRNetworkCommissioningClusterQueryIdentityParams)init
{
  v9.receiver = self;
  v9.super_class = MTRNetworkCommissioningClusterQueryIdentityParams;
  v2 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    keyIdentifier = v2->_keyIdentifier;
    v2->_keyIdentifier = v3;

    possessionNonce = v2->_possessionNonce;
    v2->_possessionNonce = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterQueryIdentityParams);
  v5 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)self keyIdentifier];
  [(MTRNetworkCommissioningClusterQueryIdentityParams *)v4 setKeyIdentifier:v5];

  v6 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)self possessionNonce];
  [(MTRNetworkCommissioningClusterQueryIdentityParams *)v4 setPossessionNonce:v6];

  v7 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)self timedInvokeTimeoutMs];
  [(MTRNetworkCommissioningClusterQueryIdentityParams *)v4 setTimedInvokeTimeoutMs:v7];

  v8 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)self serverSideProcessingTimeout];
  [(MTRNetworkCommissioningClusterQueryIdentityParams *)v4 setServerSideProcessingTimeout:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_keyIdentifier base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_possessionNonce base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: keyIdentifier:%@ possessionNonce:%@; >", v5, v6, v7];;

  return v8;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v24 = 0uLL;
  v25 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v5 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)self keyIdentifier];
  sub_238DB6950(v16, [v5 bytes], objc_msgSend(v5, "length"));

  v24 = v16[0];
  v6 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)self possessionNonce];

  if (v6)
  {
    v25 = 1;
    v26 = 0uLL;
    v7 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)self possessionNonce];
    sub_238DB6950(v16, [v7 bytes], objc_msgSend(v7, "length"));

    v26 = v16[0];
  }

  sub_2393D9C18(0x62FuLL, 0, &v21);
  if (v21)
  {
    sub_2393C7B90(v16);
    v18 = 0;
    v19 = 0;
    v17 = &unk_284BB83A8;
    v20 = 0;
    sub_238EA16C4(&v17, &v21, 0);
    sub_2393C7BF0(v16, &v17, 0xFFFFFFFF);
    v8 = sub_238F209A0(&v24, v16, 0x100uLL);
    v10 = v8;
    if (v8 || (v8 = sub_238DD2EFC(v16, &v21), v10 = v8, v8))
    {
      v11 = v9;
    }

    else
    {
      sub_238DD2F90(a3, &v21);
      v8 = sub_2393C7114(a3, 21, 256);
      v11 = v15;
      v10 = v8;
    }

    v12 = v8 & 0xFFFFFFFF00000000;
    v17 = &unk_284BB83A8;
    sub_238EA1758(&v19);
    sub_238EA1758(&v18);
  }

  else
  {
    v11 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v12 = 0x194300000000;
    v10 = 11;
  }

  sub_238EA1758(&v21);
  sub_238EA1790(&v22);
  v13 = v12 | v10;
  v14 = v11;
  result.mFile = v14;
  result.mError = v13;
  result.mLine = HIDWORD(v13);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRNetworkCommissioningClusterQueryIdentityParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x196000000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end