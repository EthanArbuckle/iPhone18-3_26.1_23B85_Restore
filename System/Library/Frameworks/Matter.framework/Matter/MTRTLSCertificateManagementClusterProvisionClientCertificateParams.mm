@interface MTRTLSCertificateManagementClusterProvisionClientCertificateParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTRTLSCertificateManagementClusterProvisionClientCertificateParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

    v5 = [MEMORY[0x277CBEA90] data];
    clientCertificate = v3->_clientCertificate;
    v3->_clientCertificate = v5;

    v7 = [MEMORY[0x277CBEA60] array];
    intermediateCertificates = v3->_intermediateCertificates;
    v3->_intermediateCertificates = v7;

    timedInvokeTimeoutMs = v3->_timedInvokeTimeoutMs;
    v3->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v3->_serverSideProcessingTimeout;
    v3->_serverSideProcessingTimeout = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterProvisionClientCertificateParams);
  v5 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self ccdid];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setCcdid:v5];

  v6 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self clientCertificate];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setClientCertificate:v6];

  v7 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self intermediateCertificates];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setIntermediateCertificates:v7];

  v8 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self timedInvokeTimeoutMs];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setTimedInvokeTimeoutMs:v8];

  v9 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self serverSideProcessingTimeout];
  [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)v4 setServerSideProcessingTimeout:v9];

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

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = 0u;
  v24 = 0u;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v5 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self ccdid];
  v22 = [v5 unsignedShortValue];

  v6 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self clientCertificate];
  v7 = v6;
  sub_238DB6950(buf, [v6 bytes], objc_msgSend(v6, "length"));

  v23 = *buf;
  v8 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self intermediateCertificates];
  v9 = [v8 count] == 0;

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
    v10 = sub_238F2E498(&v22, buf, 0x100uLL);
    v12 = v10;
    if (v10 || (v10 = sub_238DD2EFC(buf, &v19), v12 = v10, v10))
    {
      v13 = v11;
    }

    else
    {
      sub_238DD2F90(a3, &v19);
      v10 = sub_2393C7114(a3, 21, 256);
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

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTRTLSCertificateManagementClusterProvisionClientCertificateParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0xA7CB00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end