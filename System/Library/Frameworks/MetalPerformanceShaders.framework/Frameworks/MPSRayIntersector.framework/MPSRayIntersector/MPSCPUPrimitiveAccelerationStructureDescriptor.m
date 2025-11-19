@interface MPSCPUPrimitiveAccelerationStructureDescriptor
- (void)dealloc;
@end

@implementation MPSCPUPrimitiveAccelerationStructureDescriptor

- (void)dealloc
{
  geometryDescriptors = self->_geometryDescriptors;
  if (geometryDescriptors)
  {

    self->_geometryDescriptors = 0;
  }

  v4.receiver = self;
  v4.super_class = MPSCPUPrimitiveAccelerationStructureDescriptor;
  [(MPSCPUPrimitiveAccelerationStructureDescriptor *)&v4 dealloc];
}

@end