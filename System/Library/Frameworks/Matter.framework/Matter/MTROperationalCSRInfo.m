@interface MTROperationalCSRInfo
- (MTROperationalCSRInfo)initWithCSRElementsTLV:(MTRTLVBytes)csrElementsTLV attestationSignature:(NSData *)attestationSignature;
- (MTROperationalCSRInfo)initWithCSRNonce:(NSData *)csrNonce csrElementsTLV:(MTRTLVBytes)csrElementsTLV attestationSignature:(NSData *)attestationSignature;
- (MTROperationalCSRInfo)initWithCSRResponseParams:(MTROperationalCredentialsClusterCSRResponseParams *)responseParams;
- (id)_initWithValidatedCSR:(id)a3 csrNonce:(id)a4 csrElementsTLV:(id)a5 attestationSignature:(id)a6;
@end

@implementation MTROperationalCSRInfo

- (id)_initWithValidatedCSR:(id)a3 csrNonce:(id)a4 csrElementsTLV:(id)a5 attestationSignature:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MTROperationalCSRInfo;
  v15 = [(MTROperationalCSRInfo *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_csr, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
  }

  return p_isa;
}

- (MTROperationalCSRInfo)initWithCSRNonce:(NSData *)csrNonce csrElementsTLV:(MTRTLVBytes)csrElementsTLV attestationSignature:(NSData *)attestationSignature
{
  v8 = csrNonce;
  v9 = csrElementsTLV;
  v10 = attestationSignature;
  v17 = 0uLL;
  __s1 = 0uLL;
  if (!sub_238F399D0(v9, &v17, &__s1))
  {
    v13 = v8;
    sub_238DB6950(&__s2, [(NSData *)v13 bytes], [(NSData *)v13 length]);

    if (*(&__s1 + 1) == __n && (!__n || !memcmp(__s1, __s2, __n)))
    {
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:?];
      self = [(MTROperationalCSRInfo *)self _initWithValidatedCSR:v15 csrNonce:v13 csrElementsTLV:v9 attestationSignature:v10];

      v11 = self;
      goto LABEL_3;
    }

    v14 = sub_2393D9044(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__s2) = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Provided CSR nonce does not match provided csrElementsTLV", &__s2, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0, 1);
    }
  }

  v11 = 0;
LABEL_3:

  return v11;
}

- (MTROperationalCSRInfo)initWithCSRElementsTLV:(MTRTLVBytes)csrElementsTLV attestationSignature:(NSData *)attestationSignature
{
  v6 = csrElementsTLV;
  v7 = attestationSignature;
  v13 = 0uLL;
  v12 = 0uLL;
  if (sub_238F399D0(v6, &v13, &v12))
  {
    v8 = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:?];
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v12 length:?];
    self = [(MTROperationalCSRInfo *)self _initWithValidatedCSR:v9 csrNonce:v10 csrElementsTLV:v6 attestationSignature:v7];

    v8 = self;
  }

  return v8;
}

- (MTROperationalCSRInfo)initWithCSRResponseParams:(MTROperationalCredentialsClusterCSRResponseParams *)responseParams
{
  v4 = responseParams;
  v5 = [(MTROperationalCredentialsClusterCSRResponseParams *)v4 nocsrElements];
  v6 = [(MTROperationalCredentialsClusterCSRResponseParams *)v4 attestationSignature];
  v7 = [(MTROperationalCSRInfo *)self initWithCSRElementsTLV:v5 attestationSignature:v6];

  return v7;
}

@end