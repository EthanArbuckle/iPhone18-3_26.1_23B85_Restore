@interface MTRTLSCertificateManagementClusterProvisionRootCertificateParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRTLSCertificateManagementClusterProvisionRootCertificateParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTLSCertificateManagementClusterProvisionRootCertificateParams

- (MTRTLSCertificateManagementClusterProvisionRootCertificateParams)init
{
  v9.receiver = self;
  v9.super_class = MTRTLSCertificateManagementClusterProvisionRootCertificateParams;
  v2 = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)&v9 init];
  if (v2)
  {
    data = [MEMORY[0x277CBEA90] data];
    certificate = v2->_certificate;
    v2->_certificate = data;

    caid = v2->_caid;
    v2->_caid = 0;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterProvisionRootCertificateParams);
  certificate = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)self certificate];
  [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)v4 setCertificate:certificate];

  caid = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)self caid];
  [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)v4 setCaid:caid];

  timedInvokeTimeoutMs = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)self timedInvokeTimeoutMs];
  [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)self serverSideProcessingTimeout];
  [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_certificate base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: certificate:%@ caid:%@; >", v5, v6, self->_caid];;

  return v7;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v26 = 0;
  v24 = 0uLL;
  LOBYTE(unsignedShortValue) = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  certificate = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)self certificate];
  sub_238DB6950(v16, [certificate bytes], objc_msgSend(certificate, "length"));

  v24 = v16[0];
  caid = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)self caid];

  if (caid)
  {
    unsignedShortValue = 0;
    v26 = 1;
    caid2 = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)self caid];
    unsignedShortValue = [caid2 unsignedShortValue];
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
    v8 = sub_238F2E0A0(&v24, v16, 0x100uLL);
    v10 = v8;
    if (v8 || (v8 = sub_238DD2EFC(v16, &v21), v10 = v8, v8))
    {
      v11 = v9;
    }

    else
    {
      sub_238DD2F90(reader, &v21);
      v8 = sub_2393C7114(reader, 21, 256);
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
    v12 = 0xA46C00000000;
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

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRTLSCertificateManagementClusterProvisionRootCertificateParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xA48900000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end