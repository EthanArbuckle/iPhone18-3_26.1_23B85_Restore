@interface MTLAccelerationStructureTriangleGeometryDescriptor
+ (MTLAccelerationStructureTriangleGeometryDescriptor)descriptor;
- (BOOL)isEqual:(id)a3;
- (MTLAccelerationStructureTriangleGeometryDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MTLAccelerationStructureTriangleGeometryDescriptor;
  v4 = [(MTLAccelerationStructureGeometryDescriptor *)&v6 copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v22 = v3;
    v23 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
      goto LABEL_3;
    }

    v21.receiver = self;
    v21.super_class = MTLAccelerationStructureTriangleGeometryDescriptor;
    v8 = [(MTLAccelerationStructureGeometryDescriptor *)&v21 isEqual:a3];
    if (!v8)
    {
      return v8;
    }

    v9 = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self vertexBuffer];
    if (v9 != [a3 vertexBuffer])
    {
      goto LABEL_3;
    }

    v10 = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self vertexBufferOffset];
    if (v10 != [a3 vertexBufferOffset])
    {
      goto LABEL_3;
    }

    v11 = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self vertexStride];
    if (v11 != [a3 vertexStride])
    {
      goto LABEL_3;
    }

    v12 = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self indexBuffer];
    if (v12 == [a3 indexBuffer] && (v13 = -[MTLAccelerationStructureTriangleGeometryDescriptor indexBufferOffset](self, "indexBufferOffset"), v13 == objc_msgSend(a3, "indexBufferOffset")) && (v14 = -[MTLAccelerationStructureTriangleGeometryDescriptor indexType](self, "indexType"), v14 == objc_msgSend(a3, "indexType")) && (v15 = -[MTLAccelerationStructureTriangleGeometryDescriptor triangleCount](self, "triangleCount"), v15 == objc_msgSend(a3, "triangleCount")) && (v16 = -[MTLAccelerationStructureTriangleGeometryDescriptor vertexFormat](self, "vertexFormat"), v16 == objc_msgSend(a3, "vertexFormat")) && (v17 = -[MTLAccelerationStructureTriangleGeometryDescriptor transformationMatrixBuffer](self, "transformationMatrixBuffer"), v17 == objc_msgSend(a3, "transformationMatrixBuffer")) && (v18 = -[MTLAccelerationStructureTriangleGeometryDescriptor transformationMatrixBufferOffset](self, "transformationMatrixBufferOffset"), v18 == objc_msgSend(a3, "transformationMatrixBufferOffset")))
    {
      v19 = [(MTLAccelerationStructureTriangleGeometryDescriptor *)self transformationMatrixLayout];
      LOBYTE(v8) = v19 == [a3 transformationMatrixLayout];
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