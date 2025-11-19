@interface MTLAccelerationStructureGeometryDescriptor
- (BOOL)isEqual:(id)a3;
- (MTLAccelerationStructureGeometryDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLAccelerationStructureGeometryDescriptor

- (MTLAccelerationStructureGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureGeometryDescriptor;
  result = [(MTLAccelerationStructureGeometryDescriptor *)&v3 init];
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
  [v4 setPrimitiveDataBuffer:self->_primitiveDataBuffer];
  [v4 setPrimitiveDataBufferOffset:self->_primitiveDataBufferOffset];
  [v4 setPrimitiveDataStride:self->_primitiveDataStride];
  [v4 setPrimitiveDataElementSize:self->_primitiveDataElementSize];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v16) = 1;
    return v16;
  }

  v22 = v5;
  v23 = v4;
  v24 = v3;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_12;
  }

  v12 = [(MTLAccelerationStructureGeometryDescriptor *)self intersectionFunctionTableOffset];
  if (v12 != [a3 intersectionFunctionTableOffset])
  {
    goto LABEL_12;
  }

  v13 = [(MTLAccelerationStructureGeometryDescriptor *)self opaque];
  if (v13 != [a3 opaque])
  {
    goto LABEL_12;
  }

  v14 = [(MTLAccelerationStructureGeometryDescriptor *)self allowDuplicateIntersectionFunctionInvocation];
  if (v14 != [a3 allowDuplicateIntersectionFunctionInvocation])
  {
    goto LABEL_12;
  }

  v15 = [(MTLAccelerationStructureGeometryDescriptor *)self label];
  if (v15 == [a3 label] || (v16 = -[NSString isEqualToString:](-[MTLAccelerationStructureGeometryDescriptor label](self, "label"), "isEqualToString:", objc_msgSend(a3, "label"))))
  {
    v17 = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataBuffer:v6];
    if (v17 == [a3 primitiveDataBuffer])
    {
      v18 = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataBufferOffset];
      if (v18 == [a3 primitiveDataBufferOffset])
      {
        v19 = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataStride];
        if (v19 == [a3 primitiveDataStride])
        {
          v20 = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataElementSize];
          LOBYTE(v16) = v20 == [a3 primitiveDataElementSize];
          return v16;
        }
      }
    }

LABEL_12:
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  bzero(&v4, 0x38uLL);
  v4 = [(MTLAccelerationStructureGeometryDescriptor *)self intersectionFunctionTableOffset];
  v5 = [(MTLAccelerationStructureGeometryDescriptor *)self opaque];
  v6 = [(MTLAccelerationStructureGeometryDescriptor *)self allowDuplicateIntersectionFunctionInvocation];
  v7 = [(NSString *)[(MTLAccelerationStructureGeometryDescriptor *)self label] hash];
  v8 = [-[MTLAccelerationStructureGeometryDescriptor primitiveDataBuffer](self "primitiveDataBuffer")];
  v9 = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataBufferOffset];
  v10 = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataStride];
  v11 = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataElementSize];
  return _MTLHashState(&v4, 0x38uLL);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureGeometryDescriptor;
  [(MTLAccelerationStructureGeometryDescriptor *)&v3 dealloc];
}

@end