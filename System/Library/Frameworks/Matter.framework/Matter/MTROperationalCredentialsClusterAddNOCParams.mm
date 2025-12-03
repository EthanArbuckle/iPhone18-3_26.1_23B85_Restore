@interface MTROperationalCredentialsClusterAddNOCParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTROperationalCredentialsClusterAddNOCParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
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
    data = [MEMORY[0x277CBEA90] data];
    nocValue = v2->_nocValue;
    v2->_nocValue = data;

    icacValue = v2->_icacValue;
    v2->_icacValue = 0;

    data2 = [MEMORY[0x277CBEA90] data];
    ipkValue = v2->_ipkValue;
    v2->_ipkValue = data2;

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterAddNOCParams);
  nocValue = [(MTROperationalCredentialsClusterAddNOCParams *)self nocValue];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setNocValue:nocValue];

  icacValue = [(MTROperationalCredentialsClusterAddNOCParams *)self icacValue];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setIcacValue:icacValue];

  ipkValue = [(MTROperationalCredentialsClusterAddNOCParams *)self ipkValue];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setIpkValue:ipkValue];

  caseAdminSubject = [(MTROperationalCredentialsClusterAddNOCParams *)self caseAdminSubject];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setCaseAdminSubject:caseAdminSubject];

  adminVendorId = [(MTROperationalCredentialsClusterAddNOCParams *)self adminVendorId];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setAdminVendorId:adminVendorId];

  timedInvokeTimeoutMs = [(MTROperationalCredentialsClusterAddNOCParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTROperationalCredentialsClusterAddNOCParams *)self serverSideProcessingTimeout];
  [(MTROperationalCredentialsClusterAddNOCParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v27 = 0uLL;
  v28 = 0;
  unsignedLongLongValue = 0;
  v30 = 0uLL;
  unsignedShortValue = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  nocValue = [(MTROperationalCredentialsClusterAddNOCParams *)self nocValue];
  sub_238DB6950(v19, [nocValue bytes], objc_msgSend(nocValue, "length"));

  v27 = v19[0];
  icacValue = [(MTROperationalCredentialsClusterAddNOCParams *)self icacValue];

  if (icacValue)
  {
    v28 = 1;
    v29 = 0uLL;
    icacValue2 = [(MTROperationalCredentialsClusterAddNOCParams *)self icacValue];
    sub_238DB6950(v19, [icacValue2 bytes], objc_msgSend(icacValue2, "length"));

    v29 = v19[0];
  }

  ipkValue = [(MTROperationalCredentialsClusterAddNOCParams *)self ipkValue];
  sub_238DB6950(v19, [ipkValue bytes], objc_msgSend(ipkValue, "length"));

  v30 = v19[0];
  caseAdminSubject = [(MTROperationalCredentialsClusterAddNOCParams *)self caseAdminSubject];
  unsignedLongLongValue = [caseAdminSubject unsignedLongLongValue];

  adminVendorId = [(MTROperationalCredentialsClusterAddNOCParams *)self adminVendorId];
  unsignedShortValue = [adminVendorId unsignedShortValue];

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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTROperationalCredentialsClusterAddNOCParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x23F500000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end