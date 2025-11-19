@interface APSSignDataWithIdentityResponse
- (APSSignDataWithIdentityResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APSSignDataWithIdentityResponse

- (void)encodeWithCoder:(id)a3
{
  signature = self->_signature;
  v5 = a3;
  [v5 encodeObject:signature forKey:@"signatureKey"];
  [v5 encodeObject:self->_certificates forKey:@"certificatesKey"];
  [v5 encodeObject:self->_nonce forKey:@"nonceKey"];
}

- (APSSignDataWithIdentityResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = APSSignDataWithIdentityResponse;
  v5 = [(APSSignDataWithIdentityResponse *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signatureKey"];
    signature = v5->_signature;
    v5->_signature = v6;

    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"certificatesKey"];
    certificates = v5->_certificates;
    v5->_certificates = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonceKey"];
    nonce = v5->_nonce;
    v5->_nonce = v10;
  }

  return v5;
}

@end