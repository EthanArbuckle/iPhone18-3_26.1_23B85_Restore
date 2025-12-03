@interface MTRTLSCertificateManagementClusterClientCSRResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRTLSCertificateManagementClusterClientCSRResponseParams)init;
- (MTRTLSCertificateManagementClusterClientCSRResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRTLSCertificateManagementClusterClientCSRResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRTLSCertificateManagementClusterClientCSRResponseParams

- (MTRTLSCertificateManagementClusterClientCSRResponseParams)init
{
  v10.receiver = self;
  v10.super_class = MTRTLSCertificateManagementClusterClientCSRResponseParams;
  v2 = [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)&v10 init];
  v3 = v2;
  if (v2)
  {
    ccdid = v2->_ccdid;
    v2->_ccdid = &unk_284C3E4C8;

    data = [MEMORY[0x277CBEA90] data];
    csr = v3->_csr;
    v3->_csr = data;

    data2 = [MEMORY[0x277CBEA90] data];
    nonceSignature = v3->_nonceSignature;
    v3->_nonceSignature = data2;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRTLSCertificateManagementClusterClientCSRResponseParams);
  ccdid = [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)self ccdid];
  [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)v4 setCcdid:ccdid];

  v6 = [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)self csr];
  [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)v4 setCsr:v6];

  nonceSignature = [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)self nonceSignature];
  [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)v4 setNonceSignature:nonceSignature];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ccdid = self->_ccdid;
  v7 = [(NSData *)self->_csr base64EncodedStringWithOptions:0];
  v8 = [(NSData *)self->_nonceSignature base64EncodedStringWithOptions:0];
  v9 = [v3 stringWithFormat:@"<%@: ccdid:%@ csr:%@; nonceSignature:%@; >", v5, ccdid, v7, v8];;

  return v9;
}

- (MTRTLSCertificateManagementClusterClientCSRResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = MTRTLSCertificateManagementClusterClientCSRResponseParams;
  v7 = [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)&v17 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:2049 commandID:8 error:error];
  if (v16)
  {
    sub_2393C5AAC(v15);
    sub_2393C5ADC(v15, *(v16 + 1), *(v16 + 3));
    v8 = sub_2393C6FD0(v15, 256);
    if (!v8)
    {
      v12 = 0;
      v13 = 0u;
      v14 = 0u;
      v8 = sub_238F2E398(&v12, v15);
      if (!v8)
      {
        v8 = [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v16);
LABEL_10:

  return v10;
}

- (MTRTLSCertificateManagementClusterClientCSRResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRTLSCertificateManagementClusterClientCSRResponseParams;
  v4 = [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*struct];
  [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)self setCcdid:v5];

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 1) length:*(struct + 2)];
  [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)self setCsr:v6];

  v7 = [MEMORY[0x277CBEA90] dataWithBytes:*(struct + 3) length:*(struct + 4)];
  [(MTRTLSCertificateManagementClusterClientCSRResponseParams *)self setNonceSignature:v7];

  v8 = 0;
  v9 = 0;
  result.mFile = v9;
  result.mError = v8;
  result.mLine = HIDWORD(v8);
  return result;
}

@end