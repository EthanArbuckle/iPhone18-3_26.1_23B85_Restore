@interface BCNetworkProvider
- (BCNetworkProvider)init;
- (void)performDataTaskWithRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation BCNetworkProvider

- (BCNetworkProvider)init
{
  v8.receiver = self;
  v8.super_class = BCNetworkProvider;
  v2 = [(BCNetworkProvider *)&v8 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCAD30];
    v4 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v5 = [v3 sessionWithConfiguration:v4];
    session = v2->_session;
    v2->_session = v5;
  }

  return v2;
}

- (void)performDataTaskWithRequest:(id)a3 completionHandler:(id)a4
{
  if (self)
  {
    self = self->_session;
  }

  v4 = [(BCNetworkProvider *)self dataTaskWithRequest:a3 completionHandler:a4];
  [v4 resume];
}

@end