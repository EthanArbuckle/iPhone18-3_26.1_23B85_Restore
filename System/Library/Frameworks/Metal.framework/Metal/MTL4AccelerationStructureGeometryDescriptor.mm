@interface MTL4AccelerationStructureGeometryDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4AccelerationStructureGeometryDescriptor)init;
- (MTL4BufferRange)primitiveDataBuffer;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v25 = v5;
    v26 = v4;
    v27 = v3;
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
      goto LABEL_6;
    }

    intersectionFunctionTableOffset = [(MTL4AccelerationStructureGeometryDescriptor *)self intersectionFunctionTableOffset];
    if (intersectionFunctionTableOffset != [equal intersectionFunctionTableOffset])
    {
      goto LABEL_6;
    }

    opaque = [(MTL4AccelerationStructureGeometryDescriptor *)self opaque];
    if (opaque != [equal opaque])
    {
      goto LABEL_6;
    }

    allowDuplicateIntersectionFunctionInvocation = [(MTL4AccelerationStructureGeometryDescriptor *)self allowDuplicateIntersectionFunctionInvocation];
    if (allowDuplicateIntersectionFunctionInvocation != [equal allowDuplicateIntersectionFunctionInvocation])
    {
      goto LABEL_6;
    }

    label = [(MTL4AccelerationStructureGeometryDescriptor *)self label];
    if (label == [equal label] || (v15 = -[NSString isEqualToString:](-[MTL4AccelerationStructureGeometryDescriptor label](self, "label"), "isEqualToString:", objc_msgSend(equal, "label"))))
    {
      v17 = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataBuffer:v6];
      v19 = v18;
      primitiveDataBuffer = [equal primitiveDataBuffer];
      LOBYTE(v15) = 0;
      if (v17 == primitiveDataBuffer && v19 == v20)
      {
        primitiveDataStride = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataStride];
        if (primitiveDataStride != [equal primitiveDataStride])
        {
LABEL_6:
          LOBYTE(v15) = 0;
          return v15;
        }

        primitiveDataElementSize = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataElementSize];
        LOBYTE(v15) = primitiveDataElementSize == [equal primitiveDataElementSize];
      }
    }
  }

  return v15;
}

- (unint64_t)hash
{
  bzero(&intersectionFunctionTableOffset, 0x38uLL);
  intersectionFunctionTableOffset = [(MTL4AccelerationStructureGeometryDescriptor *)self intersectionFunctionTableOffset];
  opaque = [(MTL4AccelerationStructureGeometryDescriptor *)self opaque];
  allowDuplicateIntersectionFunctionInvocation = [(MTL4AccelerationStructureGeometryDescriptor *)self allowDuplicateIntersectionFunctionInvocation];
  v8 = [(NSString *)[(MTL4AccelerationStructureGeometryDescriptor *)self label] hash];
  primitiveDataBuffer = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataBuffer];
  v10 = v3;
  primitiveDataStride = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataStride];
  primitiveDataElementSize = [(MTL4AccelerationStructureGeometryDescriptor *)self primitiveDataElementSize];
  return _MTLHashState(&intersectionFunctionTableOffset, 0x38uLL);
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