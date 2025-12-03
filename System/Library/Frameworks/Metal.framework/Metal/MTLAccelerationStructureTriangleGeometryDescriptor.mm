@interface MTLAccelerationStructureTriangleGeometryDescriptor
+ (MTLAccelerationStructureTriangleGeometryDescriptor)descriptor;
- (BOOL)isEqual:(id)equal;
- (MTLAccelerationStructureTriangleGeometryDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLAccelerationStructureTriangleGeometryDescriptor

+ (MTLAccelerationStructureTriangleGeometryDescriptor)descriptor
{
  v2 = objc_alloc_init(MTLAccelerationStructureTriangleGeometryDescriptor);

  return v2;
}

- (MTLAccelerationStructureTriangleGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureTriangleGeometryDescriptor;
  result = [(MTLAccelerationStructureGeometryDescriptor *)&v3 init];
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
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureTriangleGeometryDescriptor;
  [(MTLAccelerationStructureGeometryDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTLAccelerationStructureTriangleGeometryDescriptor;
  v4 = [(MTLAccelerationStructureGeometryDescriptor *)&v6 copyWithZone:zone];
  [v4 setVertexBuffer:self->_vertexBuffer];
  [v4 setVertexBufferOffset:self->_vertexBufferOffset];
  [v4 setVertexStride:self->_vertexStride];
  [v4 setIndexBuffer:self->_indexBuffer];
  [v4 setIndexBufferOffset:self->_indexBufferOffset];
  [v4 setIndexType:self->_indexType];
  [v4 setTriangleCount:self->_triangleCount];
  [v4 setVertexFormat:self->_vertexFormat];
  [v4 setTransformationMatrixBuffer:self->_transformationMatrixBuffer];
  [v4 setTransformationMatrixBufferOffset:self->_transformationMatrixBufferOffset];
  [v4 setTransformationMatrixLayout:self->_transformationMatrixLayout];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v22 = v3;
    v23 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
      goto LABEL_3;
    }

    v21.receiver = self;
    v21.super_class = MTLAccelerationStructureTriangleGeometryDescriptor;
    v8 = [(MTLAccelerationStructureGeometryDescriptor *)&v21 isEqual:equal];
    if (!v8)
    {
      return v8;
    }

    vertexBuffer = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self vertexBuffer];
    if (vertexBuffer != [equal vertexBuffer])
    {
      goto LABEL_3;
    }

    vertexBufferOffset = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self vertexBufferOffset];
    if (vertexBufferOffset != [equal vertexBufferOffset])
    {
      goto LABEL_3;
    }

    vertexStride = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self vertexStride];
    if (vertexStride != [equal vertexStride])
    {
      goto LABEL_3;
    }

    indexBuffer = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self indexBuffer];
    if (indexBuffer == [equal indexBuffer] && (v13 = -[MTLAccelerationStructureTriangleGeometryDescriptor indexBufferOffset](self, "indexBufferOffset"), v13 == objc_msgSend(equal, "indexBufferOffset")) && (v14 = -[MTLAccelerationStructureTriangleGeometryDescriptor indexType](self, "indexType"), v14 == objc_msgSend(equal, "indexType")) && (v15 = -[MTLAccelerationStructureTriangleGeometryDescriptor triangleCount](self, "triangleCount"), v15 == objc_msgSend(equal, "triangleCount")) && (v16 = -[MTLAccelerationStructureTriangleGeometryDescriptor vertexFormat](self, "vertexFormat"), v16 == objc_msgSend(equal, "vertexFormat")) && (v17 = -[MTLAccelerationStructureTriangleGeometryDescriptor transformationMatrixBuffer](self, "transformationMatrixBuffer"), v17 == objc_msgSend(equal, "transformationMatrixBuffer")) && (v18 = -[MTLAccelerationStructureTriangleGeometryDescriptor transformationMatrixBufferOffset](self, "transformationMatrixBufferOffset"), v18 == objc_msgSend(equal, "transformationMatrixBufferOffset")))
    {
      transformationMatrixLayout = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self transformationMatrixLayout];
      LOBYTE(v8) = transformationMatrixLayout == [equal transformationMatrixLayout];
    }

    else
    {
LABEL_3:
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v5, 0x60uLL);
  v4.receiver = self;
  v4.super_class = MTLAccelerationStructureTriangleGeometryDescriptor;
  v5[0] = [(MTLAccelerationStructureGeometryDescriptor *)&v4 hash];
  v5[1] = [-[MTLAccelerationStructureTriangleGeometryDescriptor vertexBuffer](self "vertexBuffer")];
  v5[2] = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self vertexBufferOffset];
  v5[3] = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self vertexStride];
  v5[4] = [-[MTLAccelerationStructureTriangleGeometryDescriptor indexBuffer](self "indexBuffer")];
  v5[5] = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self indexBufferOffset];
  v5[6] = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self indexType];
  v5[7] = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self triangleCount];
  v5[8] = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self vertexFormat];
  v5[9] = [-[MTLAccelerationStructureTriangleGeometryDescriptor transformationMatrixBuffer](self "transformationMatrixBuffer")];
  v5[10] = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self transformationMatrixBufferOffset];
  v5[11] = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self transformationMatrixLayout];
  return _MTLHashState(v5, 0x60uLL);
}

@end