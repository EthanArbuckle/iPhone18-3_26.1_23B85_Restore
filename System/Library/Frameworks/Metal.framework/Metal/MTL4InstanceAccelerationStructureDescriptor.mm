@interface MTL4InstanceAccelerationStructureDescriptor
- (BOOL)isEqual:(id)equal;
- (MTL4BufferRange)instanceDescriptorBuffer;
- (MTL4BufferRange)motionTransformBuffer;
- (MTL4InstanceAccelerationStructureDescriptor)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4InstanceAccelerationStructureDescriptor

- (MTL4InstanceAccelerationStructureDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4InstanceAccelerationStructureDescriptor;
  result = [(MTL4InstanceAccelerationStructureDescriptor *)&v3 init];
  if (result)
  {
    result->_instanceDescriptorType = 3;
    result->_instanceTransformationMatrixLayout = 0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTL4InstanceAccelerationStructureDescriptor;
  [(MTL4InstanceAccelerationStructureDescriptor *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTL4InstanceAccelerationStructureDescriptor;
  v4 = [(MTLAccelerationStructureDescriptor *)&v6 copyWithZone:zone];
  [v4 setInstanceDescriptorBuffer:{self->_instanceDescriptorBuffer.bufferAddress, self->_instanceDescriptorBuffer.length}];
  [v4 setInstanceDescriptorStride:self->_instanceDescriptorStride];
  [v4 setInstanceDescriptorType:self->_instanceDescriptorType];
  [v4 setInstanceCount:self->_instanceCount];
  [v4 setMotionTransformBuffer:{self->_motionTransformBuffer.bufferAddress, self->_motionTransformBuffer.length}];
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
    return v8;
  }

  v28 = v3;
  v29 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    goto LABEL_3;
  }

  v27.receiver = self;
  v27.super_class = MTL4InstanceAccelerationStructureDescriptor;
  v8 = [(MTLAccelerationStructureDescriptor *)&v27 isEqual:equal];
  if (v8)
  {
    instanceDescriptorBuffer = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceDescriptorBuffer];
    v11 = v10;
    instanceDescriptorBuffer2 = [equal instanceDescriptorBuffer];
    LOBYTE(v8) = 0;
    if (instanceDescriptorBuffer == instanceDescriptorBuffer2 && v11 == v12)
    {
      instanceDescriptorStride = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
      if (instanceDescriptorStride != [equal instanceDescriptorStride] || (v15 = -[MTL4InstanceAccelerationStructureDescriptor instanceDescriptorType](self, "instanceDescriptorType"), v15 != objc_msgSend(equal, "instanceDescriptorType")) || (v16 = -[MTL4InstanceAccelerationStructureDescriptor instanceCount](self, "instanceCount"), v16 != objc_msgSend(equal, "instanceCount")))
      {
LABEL_3:
        LOBYTE(v8) = 0;
        return v8;
      }

      motionTransformBuffer = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformBuffer];
      v19 = v18;
      motionTransformBuffer2 = [equal motionTransformBuffer];
      LOBYTE(v8) = 0;
      if (motionTransformBuffer == motionTransformBuffer2 && v19 == v20)
      {
        motionTransformCount = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformCount];
        if (motionTransformCount == [equal motionTransformCount])
        {
          instanceTransformationMatrixLayout = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceTransformationMatrixLayout];
          if (instanceTransformationMatrixLayout == [equal instanceTransformationMatrixLayout])
          {
            motionTransformType = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformType];
            if (motionTransformType == [equal motionTransformType])
            {
              motionTransformStride = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformStride];
              LOBYTE(v8) = motionTransformStride == [equal motionTransformStride];
              return v8;
            }
          }
        }

        goto LABEL_3;
      }
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v7, 0x60uLL);
  v6.receiver = self;
  v6.super_class = MTL4InstanceAccelerationStructureDescriptor;
  v7[0] = [(MTLAccelerationStructureDescriptor *)&v6 hash];
  v7[1] = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceDescriptorBuffer];
  v7[2] = v3;
  v7[3] = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
  v7[4] = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceDescriptorType];
  v7[5] = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceCount];
  v7[6] = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformBuffer];
  v7[7] = v4;
  v7[8] = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformCount];
  v7[9] = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceTransformationMatrixLayout];
  v7[10] = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformType];
  v7[11] = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformStride];
  return _MTLHashState(v7, 0x60uLL);
}

- (MTL4BufferRange)instanceDescriptorBuffer
{
  p_instanceDescriptorBuffer = &self->_instanceDescriptorBuffer;
  bufferAddress = self->_instanceDescriptorBuffer.bufferAddress;
  length = p_instanceDescriptorBuffer->length;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (MTL4BufferRange)motionTransformBuffer
{
  p_motionTransformBuffer = &self->_motionTransformBuffer;
  bufferAddress = self->_motionTransformBuffer.bufferAddress;
  length = p_motionTransformBuffer->length;
  result.length = length;
  result.bufferAddress = bufferAddress;
  return result;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  return self;
}

@end