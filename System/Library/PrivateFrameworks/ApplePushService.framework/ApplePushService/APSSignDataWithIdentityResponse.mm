@interface APSSignDataWithIdentityResponse
- (APSSignDataWithIdentityResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APSSignDataWithIdentityResponse

- (void)encodeWithCoder:(id)coder
{
  signature = self->_signature;
  coderCopy = coder;
  [coderCopy encodeObject:signature forKey:@"signatureKey"];
  [coderCopy encodeObject:self->_certificates forKey:@"certificatesKey"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonceKey"];
}

- (APSSignDataWithIdentityResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = APSSignDataWithIdentityResponse;
  v5 = [(APSSignDataWithIdentityResponse *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signatureKey"];
    signature = v5->_signature;
    v5->_signature = v6;

    v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"certificatesKey"];
    certificates = v5->_certificates;
    v5->_certificates = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonceKey"];
    nonce = v5->_nonce;
    v5->_nonce = v10;
  }

  return v5;
}

@end