@interface MTLInstanceAccelerationStructureDescriptor
+ (MTLInstanceAccelerationStructureDescriptor)descriptor;
- (BOOL)isEqual:(id)equal;
- (MTLInstanceAccelerationStructureDescriptor)init;
- (NSUInteger)instanceDescriptorStride;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLInstanceAccelerationStructureDescriptor

- (NSUInteger)instanceDescriptorStride
{
  if (self->_overriddenInstanceDescriptorStride)
  {
    return self->_instanceDescriptorStride;
  }

  else
  {
    return MTLAccelerationStructureInstanceDescriptorSize(self->_instanceDescriptorType, a2, v2, v3, v4, v5, v6, v7);
  }
}

+ (MTLInstanceAccelerationStructureDescriptor)descriptor
{
  v2 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);

  return v2;
}

- (MTLInstanceAccelerationStructureDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLInstanceAccelerationStructureDescriptor;
  result = [(MTLInstanceAccelerationStructureDescriptor *)&v3 init];
  if (result)
  {
    result->_instanceTransformationMatrixLayout = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLInstanceAccelerationStructureDescriptor;
  [(MTLInstanceAccelerationStructureDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = MTLInstanceAccelerationStructureDescriptor;
  v4 = [(MTLAccelerationStructureDescriptor *)&v7 copyWithZone:zone];
  [v4 setInstanceDescriptorBuffer:self->_instanceDescriptorBuffer];
  [v4 setInstanceDescriptorBufferOffset:self->_instanceDescriptorBufferOffset];
  *(v4 + 16) = self->_overriddenInstanceDescriptorStride;
  *(v4 + 3) = self->_instanceDescriptorStride;
  [v4 setInstanceDescriptorType:self->_instanceDescriptorType];
  [v4 setInstanceCount:self->_instanceCount];
  instancedAccelerationStructures = self->_instancedAccelerationStructures;
  if (instancedAccelerationStructures)
  {
    instancedAccelerationStructures = [MEMORY[0x1E695DF70] arrayWithArray:?];
  }

  [v4 setInstancedAccelerationStructures:instancedAccelerationStructures];
  [v4 setMotionTransformBuffer:self->_motionTransformBuffer];
  [v4 setMotionTransformBufferOffset:self->_motionTransformBufferOffset];
  [v4 setMotionTransformCount:self->_motionTransformCount];
  [v4 setInstanceTransformationMatrixLayout:self->_instanceTransformationMatrixLayout];
  [v4 setMotionTransformType:self->_motionTransformType];
  [v4 setMotionTransformStride:self->_motionTransformStride];
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
    v21.super_class = MTLInstanceAccelerationStructureDescriptor;
    v8 = [(MTLAccelerationStructureDescriptor *)&v21 isEqual:equal];
    if (!v8)
    {
      return v8;
    }

    instanceDescriptorBuffer = [(MTLInstanceAccelerationStructureDescriptor *)self instanceDescriptorBuffer];
    if (instanceDescriptorBuffer != [equal instanceDescriptorBuffer])
    {
      goto LABEL_3;
    }

    instanceDescriptorBufferOffset = [(MTLInstanceAccelerationStructureDescriptor *)self instanceDescriptorBufferOffset];
    if (instanceDescriptorBufferOffset != [equal instanceDescriptorBufferOffset])
    {
      goto LABEL_3;
    }

    instanceDescriptorStride = [(MTLInstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
    if (instanceDescriptorStride != [equal instanceDescriptorStride])
    {
      goto LABEL_3;
    }

    instanceDescriptorType = [(MTLInstanceAccelerationStructureDescriptor *)self instanceDescriptorType];
    if (instanceDescriptorType != [equal instanceDescriptorType])
    {
      goto LABEL_3;
    }

    instanceCount = [(MTLInstanceAccelerationStructureDescriptor *)self instanceCount];
    if (instanceCount != [equal instanceCount])
    {
      goto LABEL_3;
    }

    v8 = MTLCompareArray(-[MTLInstanceAccelerationStructureDescriptor instancedAccelerationStructures](self, "instancedAccelerationStructures"), [equal instancedAccelerationStructures], 1, 0);
    if (!v8)
    {
      return v8;
    }

    motionTransformBuffer = [(MTLInstanceAccelerationStructureDescriptor *)self motionTransformBuffer];
    if (motionTransformBuffer == [equal motionTransformBuffer] && (v15 = -[MTLInstanceAccelerationStructureDescriptor motionTransformBufferOffset](self, "motionTransformBufferOffset"), v15 == objc_msgSend(equal, "motionTransformBufferOffset")) && (v16 = -[MTLInstanceAccelerationStructureDescriptor motionTransformCount](self, "motionTransformCount"), v16 == objc_msgSend(equal, "motionTransformCount")) && (v17 = -[MTLInstanceAccelerationStructureDescriptor instanceTransformationMatrixLayout](self, "instanceTransformationMatrixLayout"), v17 == objc_msgSend(equal, "instanceTransformationMatrixLayout")) && (v18 = -[MTLInstanceAccelerationStructureDescriptor motionTransformType](self, "motionTransformType"), v18 == objc_msgSend(equal, "motionTransformType")))
    {
      motionTransformStride = [(MTLInstanceAccelerationStructureDescriptor *)self motionTransformStride];
      LOBYTE(v8) = motionTransformStride == [equal motionTransformStride];
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
  bzero(v5, 0x68uLL);
  v4.receiver = self;
  v4.super_class = MTLInstanceAccelerationStructureDescriptor;
  v5[0] = [(MTLAccelerationStructureDescriptor *)&v4 hash];
  v5[1] = [-[MTLInstanceAccelerationStructureDescriptor instanceDescriptorBuffer](self "instanceDescriptorBuffer")];
  v5[2] = [(MTLInstanceAccelerationStructureDescriptor *)self instanceDescriptorBufferOffset];
  v5[3] = [(MTLInstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
  v5[4] = [(MTLInstanceAccelerationStructureDescriptor *)self instanceDescriptorType];
  v5[5] = [(MTLInstanceAccelerationStructureDescriptor *)self instanceCount];
  v5[6] = MTLHashArray([(MTLInstanceAccelerationStructureDescriptor *)self instancedAccelerationStructures], 1, 0);
  v5[7] = [-[MTLInstanceAccelerationStructureDescriptor motionTransformBuffer](self "motionTransformBuffer")];
  v5[8] = [(MTLInstanceAccelerationStructureDescriptor *)self motionTransformBufferOffset];
  v5[9] = [(MTLInstanceAccelerationStructureDescriptor *)self motionTransformCount];
  v5[10] = [(MTLInstanceAccelerationStructureDescriptor *)self instanceTransformationMatrixLayout];
  v5[11] = [(MTLInstanceAccelerationStructureDescriptor *)self motionTransformType];
  v5[12] = [(MTLInstanceAccelerationStructureDescriptor *)self motionTransformStride];
  return _MTLHashState(v5, 0x68uLL);
}

@end