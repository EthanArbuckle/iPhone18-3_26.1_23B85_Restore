@interface MTROperationalCSRInfo
- (MTROperationalCSRInfo)initWithCSRElementsTLV:(MTRTLVBytes)csrElementsTLV attestationSignature:(NSData *)attestationSignature;
- (MTROperationalCSRInfo)initWithCSRNonce:(NSData *)csrNonce csrElementsTLV:(MTRTLVBytes)csrElementsTLV attestationSignature:(NSData *)attestationSignature;
- (MTROperationalCSRInfo)initWithCSRResponseParams:(MTROperationalCredentialsClusterCSRResponseParams *)responseParams;
- (id)_initWithValidatedCSR:(id)r csrNonce:(id)nonce csrElementsTLV:(id)v attestationSignature:(id)signature;
@end

@implementation MTROperationalCSRInfo

- (id)_initWithValidatedCSR:(id)r csrNonce:(id)nonce csrElementsTLV:(id)v attestationSignature:(id)signature
{
  rCopy = r;
  nonceCopy = nonce;
  vCopy = v;
  signatureCopy = signature;
  v18.receiver = self;
  v18.super_class = MTROperationalCSRInfo;
  v15 = [(MTROperationalCSRInfo *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_csr, r);
    objc_storeStrong(p_isa + 2, nonce);
    objc_storeStrong(p_isa + 3, v);
    objc_storeStrong(p_isa + 4, signature);
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

      selfCopy = self;
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

  selfCopy = 0;
LABEL_3:

  return selfCopy;
}

- (MTROperationalCSRInfo)initWithCSRElementsTLV:(MTRTLVBytes)csrElementsTLV attestationSignature:(NSData *)attestationSignature
{
  v6 = csrElementsTLV;
  v7 = attestationSignature;
  v13 = 0uLL;
  v12 = 0uLL;
  if (sub_238F399D0(v6, &v13, &v12))
  {
    selfCopy = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:?];
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v12 length:?];
    self = [(MTROperationalCSRInfo *)self _initWithValidatedCSR:v9 csrNonce:v10 csrElementsTLV:v6 attestationSignature:v7];

    selfCopy = self;
  }

  return selfCopy;
}

- (MTROperationalCSRInfo)initWithCSRResponseParams:(MTROperationalCredentialsClusterCSRResponseParams *)responseParams
{
  v4 = responseParams;
  nocsrElements = [(MTROperationalCredentialsClusterCSRResponseParams *)v4 nocsrElements];
  attestationSignature = [(MTROperationalCredentialsClusterCSRResponseParams *)v4 attestationSignature];
  v7 = [(MTROperationalCSRInfo *)self initWithCSRElementsTLV:nocsrElements attestationSignature:attestationSignature];

  return v7;
}

@end