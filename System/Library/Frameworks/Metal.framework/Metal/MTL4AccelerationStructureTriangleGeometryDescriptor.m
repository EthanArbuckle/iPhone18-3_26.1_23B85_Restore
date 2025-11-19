@interface MTL4AccelerationStructureTriangleGeometryDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4AccelerationStructureTriangleGeometryDescriptor)init;
- (MTL4BufferRange)indexBuffer;
- (MTL4BufferRange)transformationMatrixBuffer;
- (MTL4BufferRange)vertexBuffer;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4AccelerationStructureTriangleGeometryDescriptor

- (MTL4AccelerationStructureTriangleGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4AccelerationStructureTriangleGeometryDescriptor;
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
  v2.super_class = MTL4AccelerationStructureTriangleGeometryDescriptor;
  [(MTL4AccelerationStructureGeometryDescriptor *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MTL4AccelerationStructureTriangleGeometryDescriptor;
  v4 = [(MTL4AccelerationStructureGeometryDescriptor *)&v6 copyWithZone:a3];
  [v4 setVertexBuffer:{self->_vertexBuffer.bufferAddress, self->_vertexBuffer.length}];
  [v4 setVertexStride:self->_vertexStride];
  [v4 setIndexBuffer:{self->_indexBuffer.bufferAddress, self->_indexBuffer.length}];
  [v4 setIndexType:self->_indexType];
  [v4 setTriangleCount:self->_triangleCount];
  [v4 setVertexFormat:self->_vertexFormat];
  [v4 setTransformationMatrixBuffer:{self->_transformationMatrixBuffer.bufferAddress, self->_transformationMatrixBuffer.length}];
  [v4 setTransformationMatrixLayout:self->_transformationMatrixLayout];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v31 = v3;
  v32 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v30.receiver = self;
  v30.super_class = MTL4AccelerationStructureTriangleGeometryDescriptor;
  v8 = [(MTL4AccelerationStructureGeometryDescriptor *)&v30 isEqual:a3];
  if (v8)
  {
    v9 = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self vertexBuffer];
    v11 = v10;
    v13 = [a3 vertexBuffer];
    LOBYTE(v8) = 0;
    if (v9 == v13 && v11 == v12)
    {
      v14 = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self vertexStride];
      if (v14 != [a3 vertexStride])
      {
        goto LABEL_3;
      }

      v15 = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self indexBuffer];
      v17 = v16;
      v19 = [a3 indexBuffer];
      LOBYTE(v8) = 0;
      if (v15 != v19 || v17 != v18)
      {
        return v8;
      }

      v20 = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self indexType];
      if (v20 != [a3 indexType] || (v21 = -[MTL4AccelerationStructureTriangleGeometryDescriptor triangleCount](self, "triangleCount"), v21 != objc_msgSend(a3, "triangleCount")) || (v22 = -[MTL4AccelerationStructureTriangleGeometryDescriptor vertexFormat](self, "vertexFormat"), v22 != objc_msgSend(a3, "vertexFormat")))
      {
LABEL_3:
        LOBYTE(v8) = 0;
        return v8;
      }

      v23 = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self transformationMatrixBuffer];
      v25 = v24;
      v27 = [a3 transformationMatrixBuffer];
      LOBYTE(v8) = 0;
      if (v23 == v27 && v25 == v26)
      {
        v28 = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self transformationMatrixLayout];
        LOBYTE(v8) = v28 == [a3 transformationMatrixLayout];
      }
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v8, 0x60uLL);
  v7.receiver = self;
  v7.super_class = MTL4AccelerationStructureTriangleGeometryDescriptor;
  v8[0] = [(MTL4AccelerationStructureGeometryDescriptor *)&v7 hash];
  v8[1] = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self vertexBuffer];
  v8[2] = v3;
  v8[3] = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self vertexStride];
  v8[4] = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self indexBuffer];
  v8[5] = v4;
  v8[6] = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self indexType];
  v8[7] = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self triangleCount];
  v8[8] = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self vertexFormat];
  v8[9] = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self transformationMatrixBuffer];
  v8[10] = v5;
  v8[11] = [(MTL4AccelerationStructureTriangleGeometryDescriptor *)self transformationMatrixLayout];
  return _MTLHashState(v8, 0x60uLL);
}

- (MTL4BufferRange)vertexBuffer
{
  p_vertexBuffer = &self->_vertexBuffer;
  bufferAddress = self->_vertexBuffer.bufferAddress;
  length = p_vertexBuffer->length;
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