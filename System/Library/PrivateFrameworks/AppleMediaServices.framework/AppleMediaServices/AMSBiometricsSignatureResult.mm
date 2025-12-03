@interface AMSBiometricsSignatureResult
- (AMSBiometricsSignatureResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSBiometricsSignatureResult

- (AMSBiometricsSignatureResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AMSBiometricsSignatureResult;
  v5 = [(AMSBiometricsSignatureResult *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPublicKeyKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSignatureKey"];
    signature = v5->_signature;
    v5->_signature = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kOriginalRequestKey"];
    originalRequest = v5->_originalRequest;
    v5->_originalRequest = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  publicKey = [(AMSBiometricsSignatureResult *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"kPublicKeyKey"];

  signature = [(AMSBiometricsSignatureResult *)self signature];
  [coderCopy encodeObject:signature forKey:@"kSignatureKey"];

  originalRequest = [(AMSBiometricsSignatureResult *)self originalRequest];
  [coderCopy encodeObject:originalRequest forKey:@"kOriginalRequestKey"];
}

@end