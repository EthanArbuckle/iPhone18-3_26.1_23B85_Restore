@interface AMSBiometricsSignatureResult
- (AMSBiometricsSignatureResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSBiometricsSignatureResult

- (AMSBiometricsSignatureResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AMSBiometricsSignatureResult;
  v5 = [(AMSBiometricsSignatureResult *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPublicKeyKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSignatureKey"];
    signature = v5->_signature;
    v5->_signature = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kOriginalRequestKey"];
    originalRequest = v5->_originalRequest;
    v5->_originalRequest = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSBiometricsSignatureResult *)self publicKey];
  [v4 encodeObject:v5 forKey:@"kPublicKeyKey"];

  v6 = [(AMSBiometricsSignatureResult *)self signature];
  [v4 encodeObject:v6 forKey:@"kSignatureKey"];

  v7 = [(AMSBiometricsSignatureResult *)self originalRequest];
  [v4 encodeObject:v7 forKey:@"kOriginalRequestKey"];
}

@end