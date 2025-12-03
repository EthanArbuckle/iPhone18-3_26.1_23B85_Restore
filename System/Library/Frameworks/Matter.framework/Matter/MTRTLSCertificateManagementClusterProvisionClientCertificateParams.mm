@interface MTRTLSCertificateManagementClusterProvisionClientCertificateParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader;
- (MTRTLSCertificateManagementClusterProvisionClientCertificateParams)init;
- (id)_encodeAsDataValue:(id *)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTLSCertificateManagementClusterProvisionClientCertificateParams

- (MTRTLSCertificateManagementClusterProvisionClientCertificateParams)init
{
  v12.receiver = self;
  v12.super_class = MTRTLSCertificateManagementClusterProvisionClientCertificateParams;
  v2 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)&v12 init];
  v3 = v2;
  if (v2)
  {
    ccdid = v2->_ccdid;
    v2->_ccdid = &unk_284C3E4C8;

    data = [MEMORY[0x277CBEA90] data];
    clientCertificate = v3->_clientCertificate;
    v3->_clientCertificate = data;

    array = [MEMORY[0x277CBEA60] array];
    intermediateCertificates = v3->_intermediateCertificates;
    v3->_intermediateCertificates = array;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterProvisionClientCertificateParams);
  ccdid = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self ccdid];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setCcdid:ccdid];

  clientCertificate = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self clientCertificate];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setClientCertificate:clientCertificate];

  intermediateCertificates = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self intermediateCertificates];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setIntermediateCertificates:intermediateCertificates];

  timedInvokeTimeoutMs = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self timedInvokeTimeoutMs];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setTimedInvokeTimeoutMs:timedInvokeTimeoutMs];

  serverSideProcessingTimeout = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self serverSideProcessingTimeout];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setServerSideProcessingTimeout:serverSideProcessingTimeout];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ccdid = self->_ccdid;
  v7 = [(NSData *)self->_clientCertificate base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: ccdid:%@ clientCertificate:%@; intermediateCertificates:%@; >", v5, ccdid, v7, self->_intermediateCertificates];;

  return v8;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)reader
{
  v30 = *MEMORY[0x277D85DE8];
  unsignedShortValue = 0;
  v23 = 0u;
  v24 = 0u;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  ccdid = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self ccdid];
  unsignedShortValue = [ccdid unsignedShortValue];

  clientCertificate = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self clientCertificate];
  v7 = clientCertificate;
  sub_238DB6950(buf, [clientCertificate bytes], objc_msgSend(clientCertificate, "length"));

  v23 = *buf;
  intermediateCertificates = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self intermediateCertificates];
  v9 = [intermediateCertificates count] == 0;

  if (!v9)
  {
    operator new();
  }

  v24 = 0uLL;
  sub_2393D9C18(0x62FuLL, 0, &v19);
  if (v19)
  {
    sub_2393C7B90(buf);
    v27 = 0;
    v28 = 0;
    v26 = &unk_284BB83A8;
    v29 = 0;
    sub_238EA16C4(&v26, &v19, 0);
    sub_2393C7BF0(buf, &v26, 0xFFFFFFFF);
    v10 = sub_238F2E498(&unsignedShortValue, buf, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(buf, &v19), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(reader, &v19);
      v10 = sub_2393C7114(reader, 21, 256);
      v13 = v18;
      v12 = v10;
    }

    v14 = v10 & 0xFFFFFFFF00000000;
    v26 = &unk_284BB83A8;
    sub_238EA1758(&v28);
    sub_238EA1758(&v27);
  }

  else
  {
    v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v14 = 0xA7AE00000000;
    v12 = 11;
  }

  sub_238EA1758(&v19);
  sub_238EA1790(&v20);
  v15 = *MEMORY[0x277D85DE8];
  v16 = v14 | v12;
  v17 = v13;
  result.mFile = v17;
  result.mError = v16;
  result.mLine = HIDWORD(v16);
  return result;
}

- (id)_encodeAsDataValue:(id *)value
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xA7CB00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end