@interface MTROperationalCredentialsClusterCSRResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)a3;
- (MTROperationalCredentialsClusterCSRResponseParams)init;
- (MTROperationalCredentialsClusterCSRResponseParams)initWithDecodableStruct:(const void *)a3;
- (MTROperationalCredentialsClusterCSRResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTROperationalCredentialsClusterCSRResponseParams

- (MTROperationalCredentialsClusterCSRResponseParams)init
{
  v9.receiver = self;
  v9.super_class = MTROperationalCredentialsClusterCSRResponseParams;
  v2 = [(MTROperationalCredentialsClusterCSRResponseParams *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEA90] data];
    nocsrElements = v2->_nocsrElements;
    v2->_nocsrElements = v3;

    v5 = [MEMORY[0x277CBEA90] data];
    attestationSignature = v2->_attestationSignature;
    v2->_attestationSignature = v5;

    timedInvokeTimeoutMs = v2->_timedInvokeTimeoutMs;
    v2->_timedInvokeTimeoutMs = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTROperationalCredentialsClusterCSRResponseParams);
  v5 = [(MTROperationalCredentialsClusterCSRResponseParams *)self nocsrElements];
  [(MTROperationalCredentialsClusterCSRResponseParams *)v4 setNocsrElements:v5];

  v6 = [(MTROperationalCredentialsClusterCSRResponseParams *)self attestationSignature];
  [(MTROperationalCredentialsClusterCSRResponseParams *)v4 setAttestationSignature:v6];

  v7 = [(MTROperationalCredentialsClusterCSRResponseParams *)self timedInvokeTimeoutMs];
  [(MTROperationalCredentialsClusterCSRResponseParams *)v4 setTimedInvokeTimeoutMs:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSData *)self->_nocsrElements base64EncodedStringWithOptions:0];
  v7 = [(NSData *)self->_attestationSignature base64EncodedStringWithOptions:0];
  v8 = [v3 stringWithFormat:@"<%@: nocsrElements:%@ attestationSignature:%@; >", v5, v6, v7];;

  return v8;
}

- (MTROperationalCredentialsClusterCSRResponseParams)initWithResponseValue:(NSDictionary *)responseValue error:(NSError *)error
{
  v6 = responseValue;
  v15.receiver = self;
  v15.super_class = MTROperationalCredentialsClusterCSRResponseParams;
  v7 = [(MTROperationalCredentialsClusterCSRResponseParams *)&v15 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:v6 clusterID:62 commandID:5 error:error];
  if (v14)
  {
    sub_2393C5AAC(v13);
    sub_2393C5ADC(v13, *(v14 + 1), *(v14 + 3));
    v8 = sub_2393C6FD0(v13, 256);
    if (!v8)
    {
      memset(v12, 0, sizeof(v12));
      v8 = sub_238F21A7C(v12, v13);
      if (!v8)
      {
        v8 = [(MTROperationalCredentialsClusterCSRResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
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

- (MTROperationalCredentialsClusterCSRResponseParams)initWithDecodableStruct:(const void *)a3
{
  v10.receiver = self;
  v10.super_class = MTROperationalCredentialsClusterCSRResponseParams;
  v4 = [(MTROperationalCredentialsClusterCSRResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTROperationalCredentialsClusterCSRResponseParams *)v4 _setFieldsFromDecodableStruct:a3];
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
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:*a3 length:*(a3 + 1)];
  [(MTROperationalCredentialsClusterCSRResponseParams *)self setNocsrElements:v5];

  v6 = [MEMORY[0x277CBEA90] dataWithBytes:*(a3 + 2) length:*(a3 + 3)];
  [(MTROperationalCredentialsClusterCSRResponseParams *)self setAttestationSignature:v6];

  v7 = 0;
  v8 = 0;
  result.mFile = v8;
  result.mError = v7;
  result.mLine = HIDWORD(v7);
  return result;
}

@end