@interface MTL4InstanceAccelerationStructureDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4BufferRange)instanceDescriptorBuffer;
- (MTL4BufferRange)motionTransformBuffer;
- (MTL4InstanceAccelerationStructureDescriptor)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MTL4InstanceAccelerationStructureDescriptor;
  v4 = [(MTLAccelerationStructureDescriptor *)&v6 copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v28 = v3;
  v29 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v27.receiver = self;
  v27.super_class = MTL4InstanceAccelerationStructureDescriptor;
  v8 = [(MTLAccelerationStructureDescriptor *)&v27 isEqual:a3];
  if (v8)
  {
    v9 = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceDescriptorBuffer];
    v11 = v10;
    v13 = [a3 instanceDescriptorBuffer];
    LOBYTE(v8) = 0;
    if (v9 == v13 && v11 == v12)
    {
      v14 = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
      if (v14 != [a3 instanceDescriptorStride] || (v15 = -[MTL4InstanceAccelerationStructureDescriptor instanceDescriptorType](self, "instanceDescriptorType"), v15 != objc_msgSend(a3, "instanceDescriptorType")) || (v16 = -[MTL4InstanceAccelerationStructureDescriptor instanceCount](self, "instanceCount"), v16 != objc_msgSend(a3, "instanceCount")))
      {
LABEL_3:
        LOBYTE(v8) = 0;
        return v8;
      }

      v17 = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformBuffer];
      v19 = v18;
      v21 = [a3 motionTransformBuffer];
      LOBYTE(v8) = 0;
      if (v17 == v21 && v19 == v20)
      {
        v22 = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformCount];
        if (v22 == [a3 motionTransformCount])
        {
          v23 = [(MTL4InstanceAccelerationStructureDescriptor *)self instanceTransformationMatrixLayout];
          if (v23 == [a3 instanceTransformationMatrixLayout])
          {
            v24 = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformType];
            if (v24 == [a3 motionTransformType])
            {
              v25 = [(MTL4InstanceAccelerationStructureDescriptor *)self motionTransformStride];
              LOBYTE(v8) = v25 == [a3 motionTransformStride];
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