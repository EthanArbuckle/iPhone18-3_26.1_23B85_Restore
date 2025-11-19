@interface PolicyResponse
- (PolicyResponse)initWithCoder:(id)a3;
- (PolicyResponse)initWithTermsOfService:(id)a3 privacyPolicyText:(id)a4 privacyPolicyURL:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PolicyResponse

- (PolicyResponse)initWithTermsOfService:(id)a3 privacyPolicyText:(id)a4 privacyPolicyURL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PolicyResponse;
  v12 = [(PolicyResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_termsOfService, a3);
    objc_storeStrong(&v13->_privacyPolicyText, a4);
    objc_storeStrong(&v13->_privacyPolicyURL, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PolicyResponse *)self termsOfService];
  [v4 encodeObject:v5 forKey:@"termsOfService"];

  v6 = [(PolicyResponse *)self privacyPolicyText];
  [v4 encodeObject:v6 forKey:@"privacyPolicyText"];

  v7 = [(PolicyResponse *)self privacyPolicyURL];
  [v4 encodeObject:v7 forKey:@"privacyPolicyURL"];
}

- (PolicyResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsOfService"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyText"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyPolicyURL"];

  v8 = [(PolicyResponse *)self initWithTermsOfService:v5 privacyPolicyText:v6 privacyPolicyURL:v7];
  return v8;
}

@end