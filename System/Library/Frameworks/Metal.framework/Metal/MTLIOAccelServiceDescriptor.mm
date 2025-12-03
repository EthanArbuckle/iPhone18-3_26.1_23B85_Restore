@interface MTLIOAccelServiceDescriptor
- (MTLIOAccelServiceDescriptor)initWithAcceleratorPort:(unsigned int)port deviceClass:(Class)class;
- (void)dealloc;
@end

@implementation MTLIOAccelServiceDescriptor

- (void)dealloc
{
  IOObjectRelease(self->_acceleratorPort);
  v3.receiver = self;
  v3.super_class = MTLIOAccelServiceDescriptor;
  [(MTLIOAccelServiceDescriptor *)&v3 dealloc];
}

- (MTLIOAccelServiceDescriptor)initWithAcceleratorPort:(unsigned int)port deviceClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = MTLIOAccelServiceDescriptor;
  v6 = [(MTLIOAccelServiceDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_acceleratorPort = port;
    v6->_deviceClass = class;
    IOObjectRetain(port);
  }

  return v7;
}

@end