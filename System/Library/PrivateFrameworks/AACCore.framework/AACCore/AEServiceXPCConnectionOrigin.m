@interface AEServiceXPCConnectionOrigin
- (id)makeConnection;
- (void)initWithServiceName:(void *)a1;
@end

@implementation AEServiceXPCConnectionOrigin

- (void)initWithServiceName:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = AEServiceXPCConnectionOrigin;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

- (id)makeConnection
{
  v3 = objc_alloc(MEMORY[0x277CCAE80]);
  if (self)
  {
    serviceName = self->_serviceName;
  }

  else
  {
    serviceName = 0;
  }

  v5 = [v3 initWithServiceName:serviceName];

  return v5;
}

@end