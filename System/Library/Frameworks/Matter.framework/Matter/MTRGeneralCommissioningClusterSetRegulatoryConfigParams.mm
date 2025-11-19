@interface MTRGeneralCommissioningClusterSetRegulatoryConfigParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRGeneralCommissioningClusterSetRegulatoryConfigParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRGeneralCommissioningClusterSetRegulatoryConfigParams

- (MTRGeneralCommissioningClusterSetRegulatoryConfigParams)init
{
  v10.receiver = self;
  v10.super_class = MTRGeneralCommissioningClusterSetRegulatoryConfigParams;
  v2 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    newRegulatoryConfig = v2->_newRegulatoryConfig;
    v2->_newRegulatoryConfig = &unk_284C3E4C8;

    countryCode = v3->_countryCode;
    v3->_countryCode = &stru_284BD0DD8;

    breadcrumb = v3->_breadcrumb;
    v3->_breadcrumb = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRGeneralCommissioningClusterSetRegulatoryConfigParams);
  v5 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)self getNewRegulatoryConfig];
  [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)v4 setNewRegulatoryConfig:v5];

  v6 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)self countryCode];
  [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)v4 setCountryCode:v6];

  v7 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)self breadcrumb];
  [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)v4 setBreadcrumb:v7];

  v8 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)self timedInvokeTimeoutMs];
  [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)self serverSideProcessingTimeout];
  [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)v4 setServerSideProcessingTimeout:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: newRegulatoryConfig:%@ countryCode:%@; breadcrumb:%@; >", v5, self->_newRegulatoryConfig, self->_countryCode, self->_breadcrumb];;

  return v6;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v24[0] = 0;
  v26 = 0;
  v25 = 0uLL;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v5 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)self getNewRegulatoryConfig];
  v24[0] = [v5 unsignedCharValue];

  v6 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)self countryCode];
  sub_238DB9BD8(v16, [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));

  v25 = v16[0];
  v7 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)self breadcrumb];
  v26 = [v7 unsignedLongLongValue];

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
    v8 = sub_238F18220(v24, v16, 0x100uLL);
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
    v12 = 0x134600000000;
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
  v7 = [(MTRGeneralCommissioningClusterSetRegulatoryConfigParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x136300000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end