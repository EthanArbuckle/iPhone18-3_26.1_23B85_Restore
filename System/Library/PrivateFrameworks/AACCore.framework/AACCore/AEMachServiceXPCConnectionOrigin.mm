@interface AEMachServiceXPCConnectionOrigin
- (id)makeConnection;
- (void)initWithMachServiceName:(uint64_t)name options:;
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

- (void)initWithMachServiceName:(uint64_t)name options:
{
  v5 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = AEMachServiceXPCConnectionOrigin;
    self = objc_msgSendSuper2(&v9, sel_init);
    if (self)
    {
      v6 = [v5 copy];
      v7 = self[1];
      self[1] = v6;

      self[2] = name;
    }
  }

  return self;
}

@end