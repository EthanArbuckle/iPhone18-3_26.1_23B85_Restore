@interface MTLAccelerationStructureBoundingBoxGeometryDescriptor
+ (MTLAccelerationStructureBoundingBoxGeometryDescriptor)descriptor;
- (BOOL)isEqual:(id)equal;
- (MTLAccelerationStructureBoundingBoxGeometryDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLAccelerationStructureBoundingBoxGeometryDescriptor

+ (MTLAccelerationStructureBoundingBoxGeometryDescriptor)descriptor
{
  v2 = objc_alloc_init(MTLAccelerationStructureBoundingBoxGeometryDescriptor);

  return v2;
}

- (MTLAccelerationStructureBoundingBoxGeometryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureBoundingBoxGeometryDescriptor;
  result = [(MTLAccelerationStructureGeometryDescriptor *)&v3 init];
  if (result)
  {
    result->_boundingBoxStride = 24;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureBoundingBoxGeometryDescriptor;
  [(MTLAccelerationStructureGeometryDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTLAccelerationStructureBoundingBoxGeometryDescriptor;
  v4 = [(MTLAccelerationStructureGeometryDescriptor *)&v6 copyWithZone:zone];
  [v4 setBoundingBoxBuffer:self->_boundingBoxBuffer];
  [v4 setBoundingBoxBufferOffset:self->_boundingBoxBufferOffset];
  [v4 setBoundingBoxStride:self->_boundingBoxStride];
  [v4 setBoundingBoxCount:self->_boundingBoxCount];
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
    v15 = v3;
    v16 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
      goto LABEL_3;
    }

    v14.receiver = self;
    v14.super_class = MTLAccelerationStructureBoundingBoxGeometryDescriptor;
    v8 = [(MTLAccelerationStructureGeometryDescriptor *)&v14 isEqual:equal];
    if (!v8)
    {
      return v8;
    }

    boundingBoxBuffer = [(MTLAccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxBuffer];
    if (boundingBoxBuffer == [equal boundingBoxBuffer] && (v10 = -[MTLAccelerationStructureBoundingBoxGeometryDescriptor boundingBoxBufferOffset](self, "boundingBoxBufferOffset"), v10 == objc_msgSend(equal, "boundingBoxBufferOffset")) && (v11 = -[MTLAccelerationStructureBoundingBoxGeometryDescriptor boundingBoxStride](self, "boundingBoxStride"), v11 == objc_msgSend(equal, "boundingBoxStride")))
    {
      boundingBoxCount = [(MTLAccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxCount];
      LOBYTE(v8) = boundingBoxCount == [equal boundingBoxCount];
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
  bzero(v5, 0x28uLL);
  v4.receiver = self;
  v4.super_class = MTLAccelerationStructureBoundingBoxGeometryDescriptor;
  v5[0] = [(MTLAccelerationStructureGeometryDescriptor *)&v4 hash];
  v5[1] = [-[MTLAccelerationStructureBoundingBoxGeometryDescriptor boundingBoxBuffer](self "boundingBoxBuffer")];
  v5[2] = [(MTLAccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxBufferOffset];
  v5[3] = [(MTLAccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxStride];
  v5[4] = [(MTLAccelerationStructureBoundingBoxGeometryDescriptor *)self boundingBoxCount];
  return _MTLHashState(v5, 0x28uLL);
}

@end