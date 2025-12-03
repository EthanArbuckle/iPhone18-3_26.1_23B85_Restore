@interface BCNetworkProvider
- (BCNetworkProvider)init;
- (void)performDataTaskWithRequest:(id)request completionHandler:(id)handler;
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
    ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v5 = [v3 sessionWithConfiguration:ephemeralSessionConfiguration];
    session = v2->_session;
    v2->_session = v5;
  }

  return v2;
}

- (void)performDataTaskWithRequest:(id)request completionHandler:(id)handler
{
  if (self)
  {
    self = self->_session;
  }

  v4 = [(BCNetworkProvider *)self dataTaskWithRequest:request completionHandler:handler];
  [v4 resume];
}

@end