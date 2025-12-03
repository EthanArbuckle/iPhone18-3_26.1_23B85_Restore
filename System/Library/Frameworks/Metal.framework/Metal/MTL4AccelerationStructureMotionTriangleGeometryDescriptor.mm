@interface MTL4AccelerationStructureMotionTriangleGeometryDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4AccelerationStructureMotionTriangleGeometryDescriptor)init;
- (MTL4BufferRange)indexBuffer;
- (MTL4BufferRange)transformationMatrixBuffer;
- (MTL4BufferRange)vertexBuffers;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4AccelerationStructureMotionTriangleGeometryDescriptor

- (MTL4AccelerationStructureMotionTriangleGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4AccelerationStructureMotionTriangleGeometryDescriptor;
  result = [(MTL4AccelerationStructureGeometryDescriptor *)&v3 init];
  if (result)
  {
    result->_indexType = 1;
    result->_vertexFormat = 30;
    result->_vertexStride = 0;
    result->_transformationMatrixLayout = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTL4AccelerationStructureMotionTriangleGeometryDescriptor;
  [(MTL4AccelerationStructureGeometryDescriptor *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTL4AccelerationStructureMotionTriangleGeometryDescriptor;
  v4 = [(MTL4AccelerationStructureGeometryDescriptor *)&v6 copyWithZone:zone];
  [v4 setVertexBuffers:{self->_vertexBuffers.bufferAddress, self->_vertexBuffers.length}];
  [v4 setVertexStride:self->_vertexStride];
  [v4 setIndexBuffer:{self->_indexBuffer.bufferAddress, self->_indexBuffer.length}];
  [v4 setIndexType:self->_indexType];
  [v4 setTriangleCount:self->_triangleCount];
  [v4 setVertexFormat:self->_vertexFormat];
  [v4 setTransformationMatrixBuffer:{self->_transformationMatrixBuffer.bufferAddress, self->_transformationMatrixBuffer.length}];
  [v4 setTransformationMatrixLayout:self->_transformationMatrixLayout];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v31 = v3;
  v32 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    goto LABEL_3;
  }

  v30.receiver = self;
  v30.super_class = MTL4AccelerationStructureMotionTriangleGeometryDescriptor;
  v8 = [(MTL4AccelerationStructureGeometryDescriptor *)&v30 isEqual:equal];
  if (v8)
  {
    vertexBuffers = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self vertexBuffers];
    v11 = v10;
    vertexBuffers2 = [equal vertexBuffers];
    LOBYTE(v8) = 0;
    if (vertexBuffers == vertexBuffers2 && v11 == v12)
    {
      vertexStride = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self vertexStride];
      if (vertexStride != [equal vertexStride])
      {
        goto LABEL_3;
      }

      indexBuffer = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self indexBuffer];
      v17 = v16;
      indexBuffer2 = [equal indexBuffer];
      LOBYTE(v8) = 0;
      if (indexBuffer != indexBuffer2 || v17 != v18)
      {
        return v8;
      }

      indexType = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self indexType];
      if (indexType != [equal indexType] || (v21 = -[MTL4AccelerationStructureMotionTriangleGeometryDescriptor triangleCount](self, "triangleCount"), v21 != objc_msgSend(equal, "triangleCount")) || (v22 = -[MTL4AccelerationStructureMotionTriangleGeometryDescriptor vertexFormat](self, "vertexFormat"), v22 != objc_msgSend(equal, "vertexFormat")))
      {
LABEL_3:
        LOBYTE(v8) = 0;
        return v8;
      }

      transformationMatrixBuffer = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self transformationMatrixBuffer];
      v25 = v24;
      transformationMatrixBuffer2 = [equal transformationMatrixBuffer];
      LOBYTE(v8) = 0;
      if (transformationMatrixBuffer == transformationMatrixBuffer2 && v25 == v26)
      {
        transformationMatrixLayout = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self transformationMatrixLayout];
        LOBYTE(v8) = transformationMatrixLayout == [equal transformationMatrixLayout];
      }
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v8, 0x60uLL);
  v7.receiver = self;
  v7.super_class = MTL4AccelerationStructureMotionTriangleGeometryDescriptor;
  v8[0] = [(MTL4AccelerationStructureGeometryDescriptor *)&v7 hash];
  v8[1] = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self vertexBuffers];
  v8[2] = v3;
  v8[3] = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self vertexStride];
  v8[4] = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self indexBuffer];
  v8[5] = v4;
  v8[6] = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self indexType];
  v8[7] = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self triangleCount];
  v8[8] = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self vertexFormat];
  v8[9] = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self transformationMatrixBuffer];
  v8[10] = v5;
  v8[11] = [(MTL4AccelerationStructureMotionTriangleGeometryDescriptor *)self transformationMatrixLayout];
  return _MTLHashState(v8, 0x60uLL);
}

- (MTL4BufferRange)vertexBuffers
{
  p_vertexBuffers = &self->_vertexBuffers;
  bufferAddress = self->_vertexBuffers.bufferAddress;
  length = p_vertexBuffers->length;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (MTL4BufferRange)indexBuffer
{
  p_indexBuffer = &self->_indexBuffer;
  bufferAddress = self->_indexBuffer.bufferAddress;
  length = p_indexBuffer->length;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (MTL4BufferRange)transformationMatrixBuffer
{
  p_transformationMatrixBuffer = &self->_transformationMatrixBuffer;
  bufferAddress = self->_transformationMatrixBuffer.bufferAddress;
  length = p_transformationMatrixBuffer->length;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  return self;
}

@end