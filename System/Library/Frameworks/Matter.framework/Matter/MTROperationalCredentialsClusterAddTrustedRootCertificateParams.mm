@interface MTROperationalCredentialsClusterAddTrustedRootCertificateParams
- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3;
- (MTROperationalCredentialsClusterAddTrustedRootCertificateParams)init;
- (id)_encodeAsDataValue:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterAddTrustedRootCertificateParams

- (MTROperationalCredentialsClusterAddTrustedRootCertificateParams)init
{
  v8.receiver = self;
  v8.super_class = MTROperationalCredentialsClusterAddTrustedRootCertificateParams;
  v2 = [(MTROperationalCredentialsClusterAddTrustedRootCertificateParams *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    rootCACertificate = v2->_rootCACertificate;
    v2->_rootCACertificate = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;

    serverSideProcessingTimeout = v2->_serverSideProcessingTimeout;
    v2->_serverSideProcessingTimeout = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterAddTrustedRootCertificateParams);
  v5 = [(MTROperationalCredentialsClusterAddTrustedRootCertificateParams *)self rootCACertificate];
  [(MTROperationalCredentialsClusterAddTrustedRootCertificateParams *)v4 setRootCACertificate:v5];

  v6 = [(MTROperationalCredentialsClusterAddTrustedRootCertificateParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterAddTrustedRootCertificateParams *)v4 setTimedInvokeTimeoutMs:v6];

  v7 = [(MTROperationalCredentialsClusterAddTrustedRootCertificateParams *)self serverSideProcessingTimeout];
  [(MTROperationalCredentialsClusterAddTrustedRootCertificateParams *)v4 setServerSideProcessingTimeout:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_rootCACertificate base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: rootCACertificate:%@ >", v5, v6];;

  return v7;
}

- (ChipError)_encodeToTLVReader:(PacketBufferTLVReader *)a3
{
  v21 = 0uLL;
  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  v4 = [(MTROperationalCredentialsClusterAddTrustedRootCertificateParams *)self rootCACertificate];
  sub_238DB6950(v13, [v4 bytes], objc_msgSend(v4, "length"));

  v21 = v13[0];
  sub_2393D9C18(0x62FuLL, 0, &v18);
  if (v18)
  {
    sub_2393C7B90(v13);
    v15 = 0;
    v16 = 0;
    v14 = &unk_284BB83A8;
    v17 = 0;
    sub_238EA16C4(&v14, &v18, 0);
    sub_2393C7BF0(v13, &v14, 0xFFFFFFFF);
    v5 = sub_238F1ABA8(&v21, v13, 0x100uLL);
    v7 = v5;
    if (v5 || (v5 = sub_238DD2EFC(v13, &v18), v7 = v5, v5))
    {
      v8 = v6;
    }

    else
    {
      sub_238DD2F90(a3, &v18);
      v5 = sub_2393C7114(a3, 21, 256);
      v8 = v12;
      v7 = v5;
    }

    v9 = v5 & 0xFFFFFFFF00000000;
    v14 = &unk_284BB83A8;
    sub_238EA1758(&v16);
    sub_238EA1758(&v15);
  }

  else
  {
    v8 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
    v9 = 0x259000000000;
    v7 = 11;
  }

  sub_238EA1758(&v18);
  sub_238EA1790(&v19);
  v10 = v9 | v7;
  v11 = v8;
  result.mFile = v11;
  result.mError = v10;
  result.mLine = HIDWORD(v10);
  return result;
}

- (id)_encodeAsDataValue:(id *)a3
{
  v5 = sub_2393C5AAC(v12);
  v13 = 0;
  v7 = [(MTROperationalCredentialsClusterAddTrustedRootCertificateParams *)self _encodeToTLVReader:v12, v5];
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
      v8 = sub_23921C1E4(MTRError, 0x25AD00000003, "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm");
      goto LABEL_7;
    }
  }

LABEL_9:
  sub_238EA1758(&v13);

  return v9;
}

@end