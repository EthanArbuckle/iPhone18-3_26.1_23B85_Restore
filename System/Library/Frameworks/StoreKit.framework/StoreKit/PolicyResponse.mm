@interface PolicyResponse
- (PolicyResponse)initWithCoder:(id)coder;
- (PolicyResponse)initWithTermsOfService:(id)service privacyPolicyText:(id)text privacyPolicyURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PolicyResponse

- (PolicyResponse)initWithTermsOfService:(id)service privacyPolicyText:(id)text privacyPolicyURL:(id)l
{
  serviceCopy = service;
  textCopy = text;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = PolicyResponse;
  v12 = [(PolicyResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_termsOfService, service);
    objc_storeStrong(&v13->_privacyPolicyText, text);
    objc_storeStrong(&v13->_privacyPolicyURL, l);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  termsOfService = [(PolicyResponse *)self termsOfService];
  [coderCopy encodeObject:termsOfService forKey:@"termsOfService"];

  privacyPolicyText = [(PolicyResponse *)self privacyPolicyText];
  [coderCopy encodeObject:privacyPolicyText forKey:@"privacyPolicyText"];

  privacyPolicyURL = [(PolicyResponse *)self privacyPolicyURL];
  [coderCopy encodeObject:privacyPolicyURL forKey:@"privacyPolicyURL"];
}

- (PolicyResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsOfService"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyText"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyURL"];

  v8 = [(PolicyResponse *)self initWithTermsOfService:v5 privacyPolicyText:v6 privacyPolicyURL:v7];
  return v8;
}

@end