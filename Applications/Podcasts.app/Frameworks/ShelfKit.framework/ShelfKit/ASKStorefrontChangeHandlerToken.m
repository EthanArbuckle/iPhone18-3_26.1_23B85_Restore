@interface ASKStorefrontChangeHandlerToken
- (ASKStorefrontChangeHandlerToken)initWithHandler:(id)a3;
@end

@implementation ASKStorefrontChangeHandlerToken

- (ASKStorefrontChangeHandlerToken)initWithHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASKStorefrontChangeHandlerToken;
  v5 = [(ASKStorefrontChangeHandlerToken *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

@end