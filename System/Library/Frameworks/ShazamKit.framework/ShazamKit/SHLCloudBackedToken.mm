@interface SHLCloudBackedToken
- (SHLCloudBackedToken)initWithToken:(id)token;
@end

@implementation SHLCloudBackedToken

- (SHLCloudBackedToken)initWithToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = SHLCloudBackedToken;
  v6 = [(SHLCloudBackedToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverChangeToken, token);
  }

  return v7;
}

@end