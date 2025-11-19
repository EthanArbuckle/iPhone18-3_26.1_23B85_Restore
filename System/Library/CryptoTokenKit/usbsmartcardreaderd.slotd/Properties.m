@interface Properties
- (Properties)initWithService:(id)a3;
- (id)get:(id)a3;
@end

@implementation Properties

- (Properties)initWithService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = Properties;
  v6 = [(Properties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ioService, a3);
  }

  return v7;
}

- (id)get:(id)a3
{
  ioService = self->_ioService;
  v4 = a3;
  CFProperty = IORegistryEntryCreateCFProperty([(IOKitObjectHolder *)ioService holder], v4, kCFAllocatorDefault, 1u);

  return CFProperty;
}

@end