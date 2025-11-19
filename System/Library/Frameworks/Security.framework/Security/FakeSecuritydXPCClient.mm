@interface FakeSecuritydXPCClient
- (FakeSecuritydXPCClient)init;
- (id)protocolWithSync:(BOOL)a3 errorHandler:(id)a4;
@end

@implementation FakeSecuritydXPCClient

- (id)protocolWithSync:(BOOL)a3 errorHandler:(id)a4
{
  if (gSecurityd && (v5 = *(gSecurityd + 704)) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (FakeSecuritydXPCClient)init
{
  v3.receiver = self;
  v3.super_class = FakeSecuritydXPCClient;
  return [(FakeSecuritydXPCClient *)&v3 init];
}

@end