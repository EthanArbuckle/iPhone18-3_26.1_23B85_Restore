@interface AVContentKeyResponseAuthorizationToken
- (AVContentKeyResponseAuthorizationToken)initWithAuthorizationTokenData:(id)a3;
- (void)dealloc;
@end

@implementation AVContentKeyResponseAuthorizationToken

- (AVContentKeyResponseAuthorizationToken)initWithAuthorizationTokenData:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVContentKeyResponseAuthorizationToken;
  v4 = [(AVContentKeyResponse *)&v6 initWithKeySystem:@"AuthorizationTokenSystem"];
  if (v4)
  {
    v4->_authorizationTokenData = [a3 copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVContentKeyResponseAuthorizationToken;
  [(AVContentKeyResponse *)&v3 dealloc];
}

@end