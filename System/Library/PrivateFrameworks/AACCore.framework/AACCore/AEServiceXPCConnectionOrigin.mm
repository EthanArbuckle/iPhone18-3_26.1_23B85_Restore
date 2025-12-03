@interface AEServiceXPCConnectionOrigin
- (id)makeConnection;
- (void)initWithServiceName:(void *)name;
@end

@implementation AEServiceXPCConnectionOrigin

- (void)initWithServiceName:(void *)name
{
  v3 = a2;
  if (name)
  {
    v7.receiver = name;
    v7.super_class = AEServiceXPCConnectionOrigin;
    name = objc_msgSendSuper2(&v7, sel_init);
    if (name)
    {
      v4 = [v3 copy];
      v5 = name[1];
      name[1] = v4;
    }
  }

  return name;
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