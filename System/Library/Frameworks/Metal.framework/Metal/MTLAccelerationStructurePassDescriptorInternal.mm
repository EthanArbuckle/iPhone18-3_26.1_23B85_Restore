@interface MTLAccelerationStructurePassDescriptorInternal
- (MTLAccelerationStructurePassDescriptorInternal)init;
@end

@implementation MTLAccelerationStructurePassDescriptorInternal

- (MTLAccelerationStructurePassDescriptorInternal)init
{
  v5.receiver = self;
  v5.super_class = MTLAccelerationStructurePassDescriptorInternal;
  v2 = [(MTLAccelerationStructurePassDescriptor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTLAccelerationStructurePassDescriptorInternal *)v2 setEnableSubstreams:1];
  }

  return v3;
}

@end