@interface MTLAccelerationStructureGeometryDescriptor
- (BOOL)isEqual:(id)equal;
- (MTLAccelerationStructureGeometryDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v16) = 1;
    return v16;
  }

  v22 = v5;
  v23 = v4;
  v24 = v3;
  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    goto LABEL_12;
  }

  intersectionFunctionTableOffset = [(MTLAccelerationStructureGeometryDescriptor *)self intersectionFunctionTableOffset];
  if (intersectionFunctionTableOffset != [equal intersectionFunctionTableOffset])
  {
    goto LABEL_12;
  }

  opaque = [(MTLAccelerationStructureGeometryDescriptor *)self opaque];
  if (opaque != [equal opaque])
  {
    goto LABEL_12;
  }

  allowDuplicateIntersectionFunctionInvocation = [(MTLAccelerationStructureGeometryDescriptor *)self allowDuplicateIntersectionFunctionInvocation];
  if (allowDuplicateIntersectionFunctionInvocation != [equal allowDuplicateIntersectionFunctionInvocation])
  {
    goto LABEL_12;
  }

  label = [(MTLAccelerationStructureGeometryDescriptor *)self label];
  if (label == [equal label] || (v16 = -[NSString isEqualToString:](-[MTLAccelerationStructureGeometryDescriptor label](self, "label"), "isEqualToString:", objc_msgSend(equal, "label"))))
  {
    v17 = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataBuffer:v6];
    if (v17 == [equal primitiveDataBuffer])
    {
      primitiveDataBufferOffset = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataBufferOffset];
      if (primitiveDataBufferOffset == [equal primitiveDataBufferOffset])
      {
        primitiveDataStride = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataStride];
        if (primitiveDataStride == [equal primitiveDataStride])
        {
          primitiveDataElementSize = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataElementSize];
          LOBYTE(v16) = primitiveDataElementSize == [equal primitiveDataElementSize];
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
  bzero(&intersectionFunctionTableOffset, 0x38uLL);
  intersectionFunctionTableOffset = [(MTLAccelerationStructureGeometryDescriptor *)self intersectionFunctionTableOffset];
  opaque = [(MTLAccelerationStructureGeometryDescriptor *)self opaque];
  allowDuplicateIntersectionFunctionInvocation = [(MTLAccelerationStructureGeometryDescriptor *)self allowDuplicateIntersectionFunctionInvocation];
  v7 = [(NSString *)[(MTLAccelerationStructureGeometryDescriptor *)self label] hash];
  v8 = [-[MTLAccelerationStructureGeometryDescriptor primitiveDataBuffer](self "primitiveDataBuffer")];
  primitiveDataBufferOffset = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataBufferOffset];
  primitiveDataStride = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataStride];
  primitiveDataElementSize = [(MTLAccelerationStructureGeometryDescriptor *)self primitiveDataElementSize];
  return _MTLHashState(&intersectionFunctionTableOffset, 0x38uLL);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureGeometryDescriptor;
  [(MTLAccelerationStructureGeometryDescriptor *)&v3 dealloc];
}

@end