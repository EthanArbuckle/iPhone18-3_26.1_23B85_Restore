@interface MPSCPUInstanceAccelerationStructureDescriptor
- (MPSCPUInstanceAccelerationStructureDescriptor)init;
- (void)dealloc;
@end

@implementation MPSCPUInstanceAccelerationStructureDescriptor

- (MPSCPUInstanceAccelerationStructureDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSCPUInstanceAccelerationStructureDescriptor;
  result = [(MPSCPUInstanceAccelerationStructureDescriptor *)&v3 init];
  if (result)
  {
    result->_transformType = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSCPUInstanceAccelerationStructureDescriptor;
  [(MPSCPUInstanceAccelerationStructureDescriptor *)&v2 dealloc];
}

@end