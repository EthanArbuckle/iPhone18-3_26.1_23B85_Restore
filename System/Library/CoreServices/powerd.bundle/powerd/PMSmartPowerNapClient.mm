@interface PMSmartPowerNapClient
- (PMSmartPowerNapClient)initWithConnection:(id)a3;
@end

@implementation PMSmartPowerNapClient

- (PMSmartPowerNapClient)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMSmartPowerNapClient;
  v6 = [(PMSmartPowerNapClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

@end