@interface ACDClientAuthorization
- (id)initForClient:(id)a3;
@end

@implementation ACDClientAuthorization

- (id)initForClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACDClientAuthorization;
  v6 = [(ACDClientAuthorization *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_client, a3);
  }

  return v7;
}

@end