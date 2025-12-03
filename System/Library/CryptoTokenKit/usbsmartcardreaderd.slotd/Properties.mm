@interface Properties
- (Properties)initWithService:(id)service;
- (id)get:(id)get;
@end

@implementation Properties

- (Properties)initWithService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = Properties;
  v6 = [(Properties *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ioService, service);
  }

  return v7;
}

- (id)get:(id)get
{
  ioService = self->_ioService;
  getCopy = get;
  CFProperty = IORegistryEntryCreateCFProperty([(IOKitObjectHolder *)ioService holder], getCopy, kCFAllocatorDefault, 1u);

  return CFProperty;
}

@end