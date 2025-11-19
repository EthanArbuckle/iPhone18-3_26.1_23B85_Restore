@interface MTL4IndirectInstanceAccelerationStructureDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4BufferRange)instanceCountBuffer;
- (MTL4BufferRange)instanceDescriptorBuffer;
- (MTL4BufferRange)motionTransformBuffer;
- (MTL4BufferRange)motionTransformCountBuffer;
- (MTL4IndirectInstanceAccelerationStructureDescriptor)init;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4IndirectInstanceAccelerationStructureDescriptor

- (MTL4IndirectInstanceAccelerationStructureDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4IndirectInstanceAccelerationStructureDescriptor;
  result = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)&v3 init];
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
  v2.super_class = MTL4IndirectInstanceAccelerationStructureDescriptor;
  [(MTL4IndirectInstanceAccelerationStructureDescriptor *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MTL4IndirectInstanceAccelerationStructureDescriptor;
  v4 = [(MTLAccelerationStructureDescriptor *)&v6 copyWithZone:a3];
  [v4 setInstanceDescriptorBuffer:{self->_instanceDescriptorBuffer.bufferAddress, self->_instanceDescriptorBuffer.length}];
  [v4 setMaxInstanceCount:self->_maxInstanceCount];
  [v4 setInstanceCountBuffer:{self->_instanceCountBuffer.bufferAddress, self->_instanceCountBuffer.length}];
  [v4 setInstanceDescriptorType:self->_instanceDescriptorType];
  [v4 setInstanceDescriptorStride:self->_instanceDescriptorStride];
  [v4 setMotionTransformBuffer:{self->_motionTransformBuffer.bufferAddress, self->_motionTransformBuffer.length}];
  [v4 setMaxMotionTransformCount:self->_maxMotionTransformCount];
  [v4 setMotionTransformType:self->_motionTransformType];
  [v4 setMotionTransformStride:self->_motionTransformStride];
  [v4 setMotionTransformCountBuffer:{self->_motionTransformCountBuffer.bufferAddress, self->_motionTransformCountBuffer.length}];
  [v4 setInstanceTransformationMatrixLayout:self->_instanceTransformationMatrixLayout];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v38 = v3;
  v39 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v37.receiver = self;
  v37.super_class = MTL4IndirectInstanceAccelerationStructureDescriptor;
  v8 = [(MTLAccelerationStructureDescriptor *)&v37 isEqual:a3];
  if (v8)
  {
    v9 = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorBuffer];
    v11 = v10;
    v13 = [a3 instanceDescriptorBuffer];
    LOBYTE(v8) = 0;
    if (v9 == v13 && v11 == v12)
    {
      v14 = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
      if (v14 != [a3 instanceDescriptorStride])
      {
        goto LABEL_3;
      }

      v15 = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self maxInstanceCount];
      if (v15 != [a3 maxInstanceCount])
      {
        goto LABEL_3;
      }

      v16 = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceCountBuffer];
      v18 = v17;
      v20 = [a3 instanceCountBuffer];
      LOBYTE(v8) = 0;
      if (v16 != v20 || v18 != v19)
      {
        return v8;
      }

      v21 = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorType];
      if (v21 != [a3 instanceDescriptorType])
      {
        goto LABEL_3;
      }

      v22 = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self motionTransformBuffer];
      v24 = v23;
      v26 = [a3 motionTransformBuffer];
      LOBYTE(v8) = 0;
      if (v22 != v26 || v24 != v25)
      {
        return v8;
      }

      v27 = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self maxMotionTransformCount];
      if (v27 != [a3 maxMotionTransformCount] || (v28 = -[MTL4IndirectInstanceAccelerationStructureDescriptor motionTransformType](self, "motionTransformType"), v28 != objc_msgSend(a3, "motionTransformType")) || (v29 = -[MTL4IndirectInstanceAccelerationStructureDescriptor motionTransformStride](self, "motionTransformStride"), v29 != objc_msgSend(a3, "motionTransformStride")))
      {
LABEL_3:
        LOBYTE(v8) = 0;
        return v8;
      }

      v30 = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self motionTransformCountBuffer];
      v32 = v31;
      v34 = [a3 motionTransformCountBuffer];
      LOBYTE(v8) = 0;
      if (v30 == v34 && v32 == v33)
      {
        v35 = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceTransformationMatrixLayout];
        LOBYTE(v8) = v35 == [a3 instanceTransformationMatrixLayout];
      }
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v9, 0x80uLL);
  v8.receiver = self;
  v8.super_class = MTL4IndirectInstanceAccelerationStructureDescriptor;
  v9[0] = [(MTLAccelerationStructureDescriptor *)&v8 hash];
  v9[1] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorBuffer];
  v9[2] = v3;
  v9[3] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
  v9[4] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self maxInstanceCount];
  v9[5] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceCountBuffer];
  v9[6] = v4;
  v9[7] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorType];
  v9[8] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self motionTransformBuffer];
  v9[9] = v5;
  v9[10] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self maxMotionTransformCount];
  v9[11] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self motionTransformType];
  v9[12] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self motionTransformStride];
  v9[13] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self motionTransformCountBuffer];
  v9[14] = v6;
  v9[15] = [(MTL4IndirectInstanceAccelerationStructureDescriptor *)self instanceTransformationMatrixLayout];
  return _MTLHashState(v9, 0x80uLL);
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

- (MTL4BufferRange)instanceCountBuffer
{
  p_instanceCountBuffer = &self->_instanceCountBuffer;
  bufferAddress = self->_instanceCountBuffer.bufferAddress;
  length = p_instanceCountBuffer->length;
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

- (MTL4BufferRange)motionTransformCountBuffer
{
  p_motionTransformCountBuffer = &self->_motionTransformCountBuffer;
  bufferAddress = self->_motionTransformCountBuffer.bufferAddress;
  length = p_motionTransformCountBuffer->length;
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
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  return self;
}

@end