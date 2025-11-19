@interface MTLIOAccelServiceDescriptor
- (MTLIOAccelServiceDescriptor)initWithAcceleratorPort:(unsigned int)a3 deviceClass:(Class)a4;
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

- (MTLIOAccelServiceDescriptor)initWithAcceleratorPort:(unsigned int)a3 deviceClass:(Class)a4
{
  v9.receiver = self;
  v9.super_class = MTLIOAccelServiceDescriptor;
  v6 = [(MTLIOAccelServiceDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_acceleratorPort = a3;
    v6->_deviceClass = a4;
    IOObjectRetain(a3);
  }

  return v7;
}

@end