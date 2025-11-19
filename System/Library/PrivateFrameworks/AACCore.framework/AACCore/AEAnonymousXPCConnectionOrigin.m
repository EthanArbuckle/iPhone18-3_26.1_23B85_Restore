@interface AEAnonymousXPCConnectionOrigin
- (id)initWithEndpoint:(id *)a1;
- (id)makeConnection;
@end

@implementation AEAnonymousXPCConnectionOrigin

- (id)initWithEndpoint:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = AEAnonymousXPCConnectionOrigin;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

- (id)makeConnection
{
  v3 = objc_alloc(MEMORY[0x277CCAE80]);
  if (self)
  {
    endpoint = self->_endpoint;
  }

  else
  {
    endpoint = 0;
  }

  v5 = [v3 initWithListenerEndpoint:endpoint];

  return v5;
}

@end