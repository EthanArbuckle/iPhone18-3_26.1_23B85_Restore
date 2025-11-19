@interface MTL4AccelerationStructureGeometryDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4AccelerationStructureGeometryDescriptor)init;
- (MTL4BufferRange)primitiveDataBuffer;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4AccelerationStructureGeometryDescriptor

- (MTL4AccelerationStructureGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4AccelerationStructureGeometryDescriptor;
  result = [(MTL4AccelerationStructureGeometryDescriptor *)&v3 init];
  if (result)
  {
    result->_allowDuplicateIntersectionFunctionInvocation = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setIntersectionFunctionTableOffset:self->_intersectionFunctionTableOffset];
  [v4 setOpaque:self->_opaque];
  [v4 setAllowDuplicateIntersectionFunctionInvocation:self->_allowDuplicateIntersectionFunctionInvocation];
  [v4 setLabel:self->_label];
  [v4 setPrimitiveDataBuffer:{self->_primitiveDataBuffer.bufferAddress, self->_primitiveDataBuffer.length}];
  [v4 setPrimitiveDataStride:self->_primitiveDataStride];
  [v4 setPrimitiveDataElementSize:self->_primitiveDataElementSize];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v25 = v5;
    v26 = v4;
    v27 = v3;
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
      goto LABEL_6;
    }

    v12 = [(MTL4AccelerationStructureGeometryDescriptor *)self intersectionFunctionTableOffset];
    if (v12 != [a3 intersectionFunctionTableOffset])
    {
      goto LABEL_6;
    }

    v13 = [(MTL4AccelerationStructureGeometryDescriptor *)self opaque];
    if (v13 != [a3 opaque])
    {
      goto LABEL_6;
    }

    v14 = [(MTL4AccelerationStructureGeometryDescriptor *)self allowDuplicateIntersectionFunctionInvocation];
    if (v14 != [a3 allowDuplicateIntersectionFunctionInvocation])
    {
      goto LABEL_6;
    }

    v16 = [(MTL4AccelerationStructureGeometryDescriptor *)self label];
    if (v16 == [a3 label] || (v15 = -[NSString isEqualToString:](-[MTL4AccelerationStructureGeometryDescriptor label](self, "label"), "isEqualToString:", objc_msgSend(a3, "label"))))
    {
      v17 = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataBuffer:v6];
      v19 = v18;
      v21 = [a3 primitiveDataBuffer];
      LOBYTE(v15) = 0;
      if (v17 == v21 && v19 == v20)
      {
        v22 = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataStride];
        if (v22 != [a3 primitiveDataStride])
        {
LABEL_6:
          LOBYTE(v15) = 0;
          return v15;
        }

        v23 = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataElementSize];
        LOBYTE(v15) = v23 == [a3 primitiveDataElementSize];
      }
    }
  }

  return v15;
}

- (unint64_t)hash
{
  bzero(&v5, 0x38uLL);
  v5 = [(MTL4AccelerationStructureGeometryDescriptor *)self intersectionFunctionTableOffset];
  v6 = [(MTL4AccelerationStructureGeometryDescriptor *)self opaque];
  v7 = [(MTL4AccelerationStructureGeometryDescriptor *)self allowDuplicateIntersectionFunctionInvocation];
  v8 = [(NSString *)[(MTL4AccelerationStructureGeometryDescriptor *)self label] hash];
  v9 = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataBuffer];
  v10 = v3;
  v11 = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataStride];
  v12 = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataElementSize];
  return _MTLHashState(&v5, 0x38uLL);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4AccelerationStructureGeometryDescriptor;
  [(MTL4AccelerationStructureGeometryDescriptor *)&v3 dealloc];
}

- (MTL4BufferRange)primitiveDataBuffer
{
  length = self->_primitiveDataBuffer.length;
  bufferAddress = self->_primitiveDataBuffer.bufferAddress;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end