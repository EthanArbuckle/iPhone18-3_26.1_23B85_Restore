@interface CSRInfo
- (CSRInfo)initWithNonce:(NSData *)nonce elements:(NSData *)elements elementsSignature:(NSData *)elementsSignature csr:(NSData *)csr;
@end

@implementation CSRInfo

- (CSRInfo)initWithNonce:(NSData *)nonce elements:(NSData *)elements elementsSignature:(NSData *)elementsSignature csr:(NSData *)csr
{
  v11 = nonce;
  v12 = elements;
  v13 = elementsSignature;
  v14 = csr;
  v18.receiver = self;
  v18.super_class = CSRInfo;
  v15 = [(CSRInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_nonce, nonce);
    objc_storeStrong(&v16->_elements, elements);
    objc_storeStrong(&v16->_elementsSignature, elementsSignature);
    objc_storeStrong(&v16->_csr, csr);
  }

  return v16;
}

@end