@interface MTRNetworkCommissioningClusterReorderNetworkParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRNetworkCommissioningClusterReorderNetworkParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRNetworkCommissioningClusterReorderNetworkParams

- (MTRNetworkCommissioningClusterReorderNetworkParams)init
{
  v10.receiver = self;
  v10.super_class = MTRNetworkCommissioningClusterReorderNetworkParams;
  v2 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    networkID = v2->_networkID;
    v2->_networkID = v3;

    networkIndex = v2->_networkIndex;
    v2->_networkIndex = &unk_284C3E4C8;

    breadcrumb = v2->_breadcrumb;
    v2->_breadcrumb = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRNetworkCommissioningClusterReorderNetworkParams);
  v5 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self networkID];
  [(MTRNetworkCommissioningClusterReorderNetworkParams *)v4 setNetworkID:v5];

  v6 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self networkIndex];
  [(MTRNetworkCommissioningClusterReorderNetworkParams *)v4 setNetworkIndex:v6];

  v7 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self breadcrumb];
  [(MTRNetworkCommissioningClusterReorderNetworkParams *)v4 setBreadcrumb:v7];

  v8 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self timedInvokeTimeoutMs];
  [(MTRNetworkCommissioningClusterReorderNetworkParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self serverSideProcessingTimeout];
  [(MTRNetworkCommissioningClusterReorderNetworkParams *)v4 setServerSideProcessingTimeout:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_networkID base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: networkID:%@ networkIndex:%@; breadcrumb:%@; >", v5, v6, self->_networkIndex, self->_breadcrumb];;

  return v7;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v27 = 0;
  v25 = 0uLL;
  v26 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  v5 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self networkID];
  sub_238DB6950(v17, [v5 bytes], objc_msgSend(v5, "length"));

  v25 = v17[0];
  v6 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self networkIndex];
  v26 = [v6 unsignedCharValue];

  v7 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self breadcrumb];

  if (v7)
  {
    v27 = 1;
    v28 = 0;
    v8 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self breadcrumb];
    v28 = [v8 unsignedLongLongValue];
  }

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
    v9 = sub_238F20828(&v25, v17, 0x100uLL);
    v11 = v9;
    if (v9 || (v9 = sub_238DD2EFC(v17, &v22), v11 = v9, v9))
    {
      v12 = v10;
    }

    else
    {
      sub_238DD2F90(a3, &v22);
      v9 = sub_2393C7114(a3, 21, 256);
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
    v13 = 0x18EB00000000;
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRNetworkCommissioningClusterReorderNetworkParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x190800000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end