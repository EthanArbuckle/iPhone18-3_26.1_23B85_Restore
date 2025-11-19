@interface AEMachServiceXPCConnectionOrigin
- (id)makeConnection;
- (void)initWithMachServiceName:(uint64_t)a3 options:;
@end

@implementation AEMachServiceXPCConnectionOrigin

- (id)makeConnection
{
  v3 = objc_alloc(MEMORY[0x277CCAE80]);
  if (self)
  {
    v4 = self->_machServiceName;
    options = self->_options;
  }

  else
  {
    v4 = 0;
    options = 0;
  }

  v6 = [v3 initWithMachServiceName:v4 options:options];

  return v6;
}

- (void)initWithMachServiceName:(uint64_t)a3 options:
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = AEMachServiceXPCConnectionOrigin;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v6 = [v5 copy];
      v7 = a1[1];
      a1[1] = v6;

      a1[2] = a3;
    }
  }

  return a1;
}

@end