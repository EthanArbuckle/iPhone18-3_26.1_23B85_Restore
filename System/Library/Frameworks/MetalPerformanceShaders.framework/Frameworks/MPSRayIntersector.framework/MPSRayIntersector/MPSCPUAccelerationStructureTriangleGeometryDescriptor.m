@interface MPSCPUAccelerationStructureTriangleGeometryDescriptor
- (MPSCPUAccelerationStructureTriangleGeometryDescriptor)init;
@end

@implementation MPSCPUAccelerationStructureTriangleGeometryDescriptor

- (MPSCPUAccelerationStructureTriangleGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSCPUAccelerationStructureTriangleGeometryDescriptor;
  result = [(MPSCPUAccelerationStructureTriangleGeometryDescriptor *)&v3 init];
  if (result)
  {
    result->_vertexStride = 12;
    result->_indexDataType = 32;
  }

  return result;
}

@end