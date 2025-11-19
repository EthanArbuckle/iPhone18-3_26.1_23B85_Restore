@interface MTROperationalCredentialsClusterCertificateChainResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTROperationalCredentialsClusterCertificateChainResponseParams)init;
- (MTROperationalCredentialsClusterCertificateChainResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTROperationalCredentialsClusterCertificateChainResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterCertificateChainResponseParams

- (MTROperationalCredentialsClusterCertificateChainResponseParams)init
{
  v7.receiver = self;
  v7.super_class = MTROperationalCredentialsClusterCertificateChainResponseParams;
  v2 = [(MTROperationalCredentialsClusterCertificateChainResponseParams *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    certificate = v2->_certificate;
    v2->_certificate = v3;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterCertificateChainResponseParams);
  v5 = [(MTROperationalCredentialsClusterCertificateChainResponseParams *)self certificate];
  [(MTROperationalCredentialsClusterCertificateChainResponseParams *)v4 setCertificate:v5];

  v6 = [(MTROperationalCredentialsClusterCertificateChainResponseParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterCertificateChainResponseParams *)v4 setTimedInvokeTimeoutMs:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_certificate base64EncodedStringWithOptions:0];
  v7 = [v3 stringWithFormat:@"<%@: certificate:%@ >", v5, v6];;

  return v7;
}

- (MTROperationalCredentialsClusterCertificateChainResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTROperationalCredentialsClusterCertificateChainResponseParams;
  v7 = [(MTROperationalCredentialsClusterCertificateChainResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:62 commandID:3 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      v12 = 0uLL;
      v8 = sub_238F16E50(&v12, v13);
      if (!v8)
      {
        v8 = [(MTROperationalCredentialsClusterCertificateChainResponseParams *)v7 _setFieldsFromDecodableStruct:&v12];
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
  sub_238EA1758(&v14);
LABEL_10:

  return v10;
}

- (MTROperationalCredentialsClusterCertificateChainResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTROperationalCredentialsClusterCertificateChainResponseParams;
  v4 = [(MTROperationalCredentialsClusterCertificateChainResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTROperationalCredentialsClusterCertificateChainResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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

- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3
{
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:*a3 length:*(a3 + 1)];
  [(MTROperationalCredentialsClusterCertificateChainResponseParams *)self setCertificate:v4];

  v5 = 0;
  v6 = 0;
  result.mFile = v6;
  result.mError = v5;
  result.mLine = HIDWORD(v5);
  return result;
}

@end