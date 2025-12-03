@interface ACDClientAuthorization
- (id)initForClient:(id)client;
@end

@implementation ACDClientAuthorization

- (id)initForClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = ACDClientAuthorization;
  v6 = [(ACDClientAuthorization *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, client);
  }

  return v7;
}

@end