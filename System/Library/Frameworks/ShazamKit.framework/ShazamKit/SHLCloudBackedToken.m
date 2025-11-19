@interface SHLCloudBackedToken
- (SHLCloudBackedToken)initWithToken:(id)a3;
@end

@implementation SHLCloudBackedToken

- (SHLCloudBackedToken)initWithToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHLCloudBackedToken;
  v6 = [(SHLCloudBackedToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverChangeToken, a3);
  }

  return v7;
}

@end