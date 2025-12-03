@interface MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor)init;
- (MTL4BufferRange)boundingBoxBuffers;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor

- (MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor;
  result = [(MTL4AccelerationStructureGeometryDescriptor *)&v3 init];
  if (result)
  {
    result->_boundingBoxStride = 24;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor;
  [(MTL4AccelerationStructureGeometryDescriptor *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor;
  v4 = [(MTL4AccelerationStructureGeometryDescriptor *)&v6 copyWithZone:zone];
  [v4 setBoundingBoxBuffers:{self->_boundingBoxBuffers.bufferAddress, self->_boundingBoxBuffers.length}];
  [v4 setBoundingBoxCount:self->_boundingBoxCount];
  [v4 setBoundingBoxStride:self->_boundingBoxStride];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v18 = v3;
  v19 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    goto LABEL_3;
  }

  v17.receiver = self;
  v17.super_class = MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor;
  v8 = [(MTL4AccelerationStructureGeometryDescriptor *)&v17 isEqual:equal];
  if (v8)
  {
    boundingBoxBuffers = [(MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxBuffers];
    v11 = v10;
    boundingBoxBuffers2 = [equal boundingBoxBuffers];
    LOBYTE(v8) = 0;
    if (boundingBoxBuffers == boundingBoxBuffers2 && v11 == v12)
    {
      boundingBoxStride = [(MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxStride];
      if (boundingBoxStride == [equal boundingBoxStride])
      {
        boundingBoxCount = [(MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxCount];
        LOBYTE(v8) = boundingBoxCount == [equal boundingBoxCount];
        return v8;
      }

LABEL_3:
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v6, 0x28uLL);
  v5.receiver = self;
  v5.super_class = MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor;
  v6[0] = [(MTL4AccelerationStructureGeometryDescriptor *)&v5 hash];
  v6[1] = [(MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxBuffers];
  v6[2] = v3;
  v6[3] = [(MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxStride];
  v6[4] = [(MTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxCount];
  return _MTLHashState(v6, 0x28uLL);
}

- (MTL4BufferRange)boundingBoxBuffers
{
  p_boundingBoxBuffers = &self->_boundingBoxBuffers;
  bufferAddress = self->_boundingBoxBuffers.bufferAddress;
  length = p_boundingBoxBuffers->length;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end