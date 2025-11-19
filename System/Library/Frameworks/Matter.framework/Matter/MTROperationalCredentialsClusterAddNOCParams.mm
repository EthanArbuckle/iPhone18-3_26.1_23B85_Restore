@interface MTROperationalCredentialsClusterAddNOCParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTROperationalCredentialsClusterAddNOCParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterAddNOCParams

- (MTROperationalCredentialsClusterAddNOCParams)init
{
  v13.receiver = self;
  v13.super_class = MTROperationalCredentialsClusterAddNOCParams;
  v2 = [(MTROperationalCredentialsClusterAddNOCParams *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    nocValue = v2->_nocValue;
    v2->_nocValue = v3;

    icacValue = v2->_icacValue;
    v2->_icacValue = 0;

    v6 = [MEMORY[0x277CBEA90] data];
    ipkValue = v2->_ipkValue;
    v2->_ipkValue = v6;

    caseAdminSubject = v2->_caseAdminSubject;
    v2->_caseAdminSubject = &unk_284C3E4C8;

    adminVendorId = v2->_adminVendorId;
    v2->_adminVendorId = &unk_284C3E4C8;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterAddNOCParams);
  v5 = [(MTROperationalCredentialsClusterAddNOCParams *)self nocValue];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setNocValue:v5];

  v6 = [(MTROperationalCredentialsClusterAddNOCParams *)self icacValue];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setIcacValue:v6];

  v7 = [(MTROperationalCredentialsClusterAddNOCParams *)self ipkValue];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setIpkValue:v7];

  v8 = [(MTROperationalCredentialsClusterAddNOCParams *)self caseAdminSubject];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setCaseAdminSubject:v8];

  v9 = [(MTROperationalCredentialsClusterAddNOCParams *)self adminVendorId];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setAdminVendorId:v9];

  v10 = [(MTROperationalCredentialsClusterAddNOCParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setTimedInvokeTimeoutMs:v10];

  v11 = [(MTROperationalCredentialsClusterAddNOCParams *)self serverSideProcessingTimeout];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setServerSideProcessingTimeout:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_nocValue base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_icacValue base64EncodedStringWithOptions:0];
  v8 = [(NSData *)self->_ipkValue base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: nocValue:%@ icacValue:%@; ipkValue:%@; caseAdminSubject:%@; adminVendorId:%@; >", v5, v6, v7, v8, self->_caseAdminSubject, self->_adminVendorId];;

  return v9;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v27 = 0uLL;
  v28 = 0;
  v31 = 0;
  v30 = 0uLL;
  v32 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v5 = [(MTROperationalCredentialsClusterAddNOCParams *)self nocValue];
  sub_238DB6950(v19, [v5 bytes], objc_msgSend(v5, "length"));

  v27 = v19[0];
  v6 = [(MTROperationalCredentialsClusterAddNOCParams *)self icacValue];

  if (v6)
  {
    v28 = 1;
    v29 = 0uLL;
    v7 = [(MTROperationalCredentialsClusterAddNOCParams *)self icacValue];
    sub_238DB6950(v19, [v7 bytes], objc_msgSend(v7, "length"));

    v29 = v19[0];
  }

  v8 = [(MTROperationalCredentialsClusterAddNOCParams *)self ipkValue];
  sub_238DB6950(v19, [v8 bytes], objc_msgSend(v8, "length"));

  v30 = v19[0];
  v9 = [(MTROperationalCredentialsClusterAddNOCParams *)self caseAdminSubject];
  v31 = [v9 unsignedLongLongValue];

  v10 = [(MTROperationalCredentialsClusterAddNOCParams *)self adminVendorId];
  v32 = [v10 unsignedShortValue];

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
    v11 = sub_238F21DAC(&v27, v19, 0x100uLL);
    v13 = v11;
    if (v11 || (v11 = sub_238DD2EFC(v19, &v24), v13 = v11, v11))
    {
      v14 = v12;
    }

    else
    {
      sub_238DD2F90(a3, &v24);
      v11 = sub_2393C7114(a3, 21, 256);
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
    v15 = 0x23D800000000;
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTROperationalCredentialsClusterAddNOCParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x23F500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end