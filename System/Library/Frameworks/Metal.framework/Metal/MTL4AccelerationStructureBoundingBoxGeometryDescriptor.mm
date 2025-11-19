@interface MTL4AccelerationStructureBoundingBoxGeometryDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4AccelerationStructureBoundingBoxGeometryDescriptor)init;
- (MTL4BufferRange)boundingBoxBuffer;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4AccelerationStructureBoundingBoxGeometryDescriptor

- (MTL4AccelerationStructureBoundingBoxGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4AccelerationStructureBoundingBoxGeometryDescriptor;
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
  v2.super_class = MTL4AccelerationStructureBoundingBoxGeometryDescriptor;
  [(MTL4AccelerationStructureGeometryDescriptor *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MTL4AccelerationStructureBoundingBoxGeometryDescriptor;
  v4 = [(MTL4AccelerationStructureGeometryDescriptor *)&v6 copyWithZone:a3];
  [v4 setBoundingBoxBuffer:{self->_boundingBoxBuffer.bufferAddress, self->_boundingBoxBuffer.length}];
  [v4 setBoundingBoxStride:self->_boundingBoxStride];
  [v4 setBoundingBoxCount:self->_boundingBoxCount];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v18 = v3;
  v19 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v17.receiver = self;
  v17.super_class = MTL4AccelerationStructureBoundingBoxGeometryDescriptor;
  v8 = [(MTL4AccelerationStructureGeometryDescriptor *)&v17 isEqual:a3];
  if (v8)
  {
    v9 = [(MTL4AccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxBuffer];
    v11 = v10;
    v13 = [a3 boundingBoxBuffer];
    LOBYTE(v8) = 0;
    if (v9 == v13 && v11 == v12)
    {
      v14 = [(MTL4AccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxStride];
      if (v14 == [a3 boundingBoxStride])
      {
        v15 = [(MTL4AccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxCount];
        LOBYTE(v8) = v15 == [a3 boundingBoxCount];
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
  v5.super_class = MTL4AccelerationStructureBoundingBoxGeometryDescriptor;
  v6[0] = [(MTL4AccelerationStructureGeometryDescriptor *)&v5 hash];
  v6[1] = [(MTL4AccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxBuffer];
  v6[2] = v3;
  v6[3] = [(MTL4AccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxStride];
  v6[4] = [(MTL4AccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxCount];
  return _MTLHashState(v6, 0x28uLL);
}

- (MTL4BufferRange)boundingBoxBuffer
{
  p_boundingBoxBuffer = &self->_boundingBoxBuffer;
  bufferAddress = self->_boundingBoxBuffer.bufferAddress;
  length = p_boundingBoxBuffer->length;
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