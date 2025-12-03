@interface HMUserCloudShareClientInfo
- (HMUserCloudShareClientInfo)initWithAccountAuthToken:(id)token;
- (HMUserCloudShareClientInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMUserCloudShareClientInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountAuthToken = [(HMUserCloudShareClientInfo *)self accountAuthToken];
  [coderCopy encodeObject:accountAuthToken forKey:@"authToken"];
}

- (HMUserCloudShareClientInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authToken"];

  v6 = [(HMUserCloudShareClientInfo *)self initWithAccountAuthToken:v5];
  return v6;
}

- (HMUserCloudShareClientInfo)initWithAccountAuthToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = HMUserCloudShareClientInfo;
  v6 = [(HMUserCloudShareClientInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountAuthToken, token);
  }

  return v7;
}

@end