@interface MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor
+ (MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor)descriptor;
- (BOOL)isEqual:(id)a3;
- (MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor

+ (MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor)descriptor
{
  v2 = objc_alloc_init(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor);

  return v2;
}

- (MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor)init
{
  v5.receiver = self;
  v5.super_class = MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor;
  v2 = [(MTLAccelerationStructureGeometryDescriptor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_boundingBoxStride = 24;
    v2->_boundingBoxBuffers = objc_opt_new();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor;
  [(MTLAccelerationStructureGeometryDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor;
  v4 = [(MTLAccelerationStructureGeometryDescriptor *)&v7 copyWithZone:a3];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_boundingBoxBuffers copyItems:1];
  [v4 setBoundingBoxBuffers:v5];

  [v4 setBoundingBoxCount:self->_boundingBoxCount];
  [v4 setBoundingBoxStride:self->_boundingBoxStride];
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
    v17 = v3;
    v18 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
      goto LABEL_3;
    }

    v16.receiver = self;
    v16.super_class = MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor;
    v8 = [(MTLAccelerationStructureGeometryDescriptor *)&v16 isEqual:a3];
    if (!v8)
    {
      return v8;
    }

    v9 = [(NSArray *)[(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxBuffers] count];
    if (v9 != [objc_msgSend(a3 "boundingBoxBuffers")])
    {
      goto LABEL_3;
    }

    if ([(NSArray *)[(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxBuffers] count])
    {
      v10 = 0;
      do
      {
        v11 = [-[NSArray objectAtIndexedSubscript:](-[MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor boundingBoxBuffers](self "boundingBoxBuffers")];
        if (v11 != [objc_msgSend(objc_msgSend(a3 "boundingBoxBuffers")])
        {
          goto LABEL_3;
        }

        v12 = [-[NSArray objectAtIndexedSubscript:](-[MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor boundingBoxBuffers](self "boundingBoxBuffers")];
        if (v12 != [objc_msgSend(objc_msgSend(a3 "boundingBoxBuffers")])
        {
          goto LABEL_3;
        }
      }

      while ([(NSArray *)[(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxBuffers] count]> ++v10);
    }

    v13 = [(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxStride];
    if (v13 != [a3 boundingBoxStride])
    {
LABEL_3:
      LOBYTE(v8) = 0;
      return v8;
    }

    v14 = [(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxCount];
    LOBYTE(v8) = v14 == [a3 boundingBoxCount];
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v5, 0x20uLL);
  v4.receiver = self;
  v4.super_class = MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor;
  v5[0] = [(MTLAccelerationStructureGeometryDescriptor *)&v4 hash];
  v5[1] = MTLHashArray([(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxBuffers], 0, 1);
  v5[2] = [(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxStride];
  v5[3] = [(MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor *)self boundingBoxCount];
  return _MTLHashState(v5, 0x20uLL);
}

@end