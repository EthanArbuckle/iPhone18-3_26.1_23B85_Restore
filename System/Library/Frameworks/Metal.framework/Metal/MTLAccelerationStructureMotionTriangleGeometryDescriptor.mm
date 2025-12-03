@interface MTLAccelerationStructureMotionTriangleGeometryDescriptor
+ (MTLAccelerationStructureMotionTriangleGeometryDescriptor)descriptor;
- (BOOL)isEqual:(id)equal;
- (MTLAccelerationStructureMotionTriangleGeometryDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)setVertexBuffers:(NSArray *)vertexBuffers;
@end

@implementation MTLAccelerationStructureMotionTriangleGeometryDescriptor

+ (MTLAccelerationStructureMotionTriangleGeometryDescriptor)descriptor
{
  v2 = objc_alloc_init(MTLAccelerationStructureMotionTriangleGeometryDescriptor);

  return v2;
}

- (MTLAccelerationStructureMotionTriangleGeometryDescriptor)init
{
  v5.receiver = self;
  v5.super_class = MTLAccelerationStructureMotionTriangleGeometryDescriptor;
  v2 = [(MTLAccelerationStructureGeometryDescriptor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_indexType = 1;
    v2->_vertexFormat = 30;
    v2->_vertexStride = 0;
    v2->_transformationMatrixLayout = 0;
    v2->_vertexBuffers = objc_opt_new();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureMotionTriangleGeometryDescriptor;
  [(MTLAccelerationStructureGeometryDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTLAccelerationStructureMotionTriangleGeometryDescriptor;
  v4 = [(MTLAccelerationStructureGeometryDescriptor *)&v6 copyWithZone:zone];
  [v4 setVertexBuffers:self->_vertexBuffers];
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
    v24 = v3;
    v25 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
      goto LABEL_3;
    }

    v23.receiver = self;
    v23.super_class = MTLAccelerationStructureMotionTriangleGeometryDescriptor;
    v8 = [(MTLAccelerationStructureGeometryDescriptor *)&v23 isEqual:equal];
    if (!v8)
    {
      return v8;
    }

    v9 = [(NSArray *)[(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self vertexBuffers] count];
    if (v9 != [objc_msgSend(equal "vertexBuffers")])
    {
      goto LABEL_3;
    }

    if ([(NSArray *)[(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self vertexBuffers] count])
    {
      v10 = 0;
      do
      {
        v11 = [-[NSArray objectAtIndexedSubscript:](-[MTLAccelerationStructureMotionTriangleGeometryDescriptor vertexBuffers](self "vertexBuffers")];
        if (v11 != [objc_msgSend(objc_msgSend(equal "vertexBuffers")])
        {
          goto LABEL_3;
        }

        v12 = [-[NSArray objectAtIndexedSubscript:](-[MTLAccelerationStructureMotionTriangleGeometryDescriptor vertexBuffers](self "vertexBuffers")];
        if (v12 != [objc_msgSend(objc_msgSend(equal "vertexBuffers")])
        {
          goto LABEL_3;
        }
      }

      while ([(NSArray *)[(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self vertexBuffers] count]> ++v10);
    }

    vertexStride = [(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self vertexStride];
    if (vertexStride != [equal vertexStride] || (v14 = -[MTLAccelerationStructureMotionTriangleGeometryDescriptor indexBuffer](self, "indexBuffer"), v14 != objc_msgSend(equal, "indexBuffer")) || (v15 = -[MTLAccelerationStructureMotionTriangleGeometryDescriptor indexBufferOffset](self, "indexBufferOffset"), v15 != objc_msgSend(equal, "indexBufferOffset")) || (v16 = -[MTLAccelerationStructureMotionTriangleGeometryDescriptor indexType](self, "indexType"), v16 != objc_msgSend(equal, "indexType")) || (v17 = -[MTLAccelerationStructureMotionTriangleGeometryDescriptor triangleCount](self, "triangleCount"), v17 != objc_msgSend(equal, "triangleCount")) || (v18 = -[MTLAccelerationStructureMotionTriangleGeometryDescriptor vertexFormat](self, "vertexFormat"), v18 != objc_msgSend(equal, "vertexFormat")) || (v19 = -[MTLAccelerationStructureMotionTriangleGeometryDescriptor transformationMatrixBuffer](self, "transformationMatrixBuffer"), v19 != objc_msgSend(equal, "transformationMatrixBuffer")) || (v20 = -[MTLAccelerationStructureMotionTriangleGeometryDescriptor transformationMatrixBufferOffset](self, "transformationMatrixBufferOffset"), v20 != objc_msgSend(equal, "transformationMatrixBufferOffset")))
    {
LABEL_3:
      LOBYTE(v8) = 0;
      return v8;
    }

    transformationMatrixLayout = [(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self transformationMatrixLayout];
    LOBYTE(v8) = transformationMatrixLayout == [equal transformationMatrixLayout];
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v5, 0x58uLL);
  v4.receiver = self;
  v4.super_class = MTLAccelerationStructureMotionTriangleGeometryDescriptor;
  v5[0] = [(MTLAccelerationStructureGeometryDescriptor *)&v4 hash];
  v5[1] = MTLHashArray([(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self vertexBuffers], 0, 1);
  v5[2] = [(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self vertexStride];
  v5[3] = [-[MTLAccelerationStructureMotionTriangleGeometryDescriptor indexBuffer](self "indexBuffer")];
  v5[4] = [(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self indexBufferOffset];
  v5[5] = [(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self indexType];
  v5[6] = [(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self triangleCount];
  v5[7] = [(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self vertexFormat];
  v5[8] = [-[MTLAccelerationStructureMotionTriangleGeometryDescriptor transformationMatrixBuffer](self "transformationMatrixBuffer")];
  v5[9] = [(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self transformationMatrixBufferOffset];
  v5[10] = [(MTLAccelerationStructureMotionTriangleGeometryDescriptor *)self transformationMatrixLayout];
  return _MTLHashState(v5, 0x58uLL);
}

- (void)setVertexBuffers:(NSArray *)vertexBuffers
{
  v3 = self->_vertexBuffers;
  if (v3 != vertexBuffers)
  {

    self->_vertexBuffers = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:vertexBuffers copyItems:1];
  }
}

@end