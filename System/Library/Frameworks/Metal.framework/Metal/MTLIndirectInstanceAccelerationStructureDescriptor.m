@interface MTLIndirectInstanceAccelerationStructureDescriptor
+ (MTLIndirectInstanceAccelerationStructureDescriptor)descriptor;
- (BOOL)isEqual:(id)a3;
- (MTLIndirectInstanceAccelerationStructureDescriptor)init;
- (NSUInteger)instanceDescriptorStride;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLIndirectInstanceAccelerationStructureDescriptor

+ (MTLIndirectInstanceAccelerationStructureDescriptor)descriptor
{
  v2 = objc_alloc_init(MTLIndirectInstanceAccelerationStructureDescriptor);

  return v2;
}

- (MTLIndirectInstanceAccelerationStructureDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLIndirectInstanceAccelerationStructureDescriptor;
  result = [(MTLIndirectInstanceAccelerationStructureDescriptor *)&v3 init];
  if (result)
  {
    result->_instanceDescriptorType = 3;
    result->_instanceTransformationMatrixLayout = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLIndirectInstanceAccelerationStructureDescriptor;
  [(MTLIndirectInstanceAccelerationStructureDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MTLIndirectInstanceAccelerationStructureDescriptor;
  v4 = [(MTLAccelerationStructureDescriptor *)&v6 copyWithZone:a3];
  [v4 setInstanceDescriptorBuffer:self->_instanceDescriptorBuffer];
  [v4 setInstanceDescriptorBufferOffset:self->_instanceDescriptorBufferOffset];
  [v4 setMaxInstanceCount:self->_maxInstanceCount];
  [v4 setInstanceCountBuffer:self->_instanceCountBuffer];
  [v4 setInstanceCountBufferOffset:self->_instanceCountBufferOffset];
  [v4 setInstanceDescriptorType:self->_instanceDescriptorType];
  [v4 setMotionTransformBuffer:self->_motionTransformBuffer];
  [v4 setMotionTransformBufferOffset:self->_motionTransformBufferOffset];
  [v4 setMaxMotionTransformCount:self->_maxMotionTransformCount];
  [v4 setMotionTransformType:self->_motionTransformType];
  [v4 setMotionTransformStride:self->_motionTransformStride];
  [v4 setMotionTransformCountBuffer:self->_motionTransformCountBuffer];
  [v4 setMotionTransformCountBufferOffset:self->_motionTransformCountBufferOffset];
  [v4 setInstanceTransformationMatrixLayout:self->_instanceTransformationMatrixLayout];
  *(v4 + 16) = self->_overriddenInstanceDescriptorStride;
  *(v4 + 3) = self->_instanceDescriptorStride;
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
    v26 = v3;
    v27 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
      goto LABEL_3;
    }

    v25.receiver = self;
    v25.super_class = MTLIndirectInstanceAccelerationStructureDescriptor;
    v8 = [(MTLAccelerationStructureDescriptor *)&v25 isEqual:a3];
    if (!v8)
    {
      return v8;
    }

    v9 = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorBuffer];
    if (v9 != [a3 instanceDescriptorBuffer])
    {
      goto LABEL_3;
    }

    v10 = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorBufferOffset];
    if (v10 != [a3 instanceDescriptorBufferOffset])
    {
      goto LABEL_3;
    }

    v11 = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
    if (v11 != [a3 instanceDescriptorStride])
    {
      goto LABEL_3;
    }

    v12 = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self maxInstanceCount];
    if (v12 != [a3 maxInstanceCount])
    {
      goto LABEL_3;
    }

    v13 = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceCountBuffer];
    if (v13 != [a3 instanceCountBuffer])
    {
      goto LABEL_3;
    }

    v14 = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceCountBufferOffset];
    if (v14 != [a3 instanceCountBufferOffset])
    {
      goto LABEL_3;
    }

    v15 = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorType];
    if (v15 != [a3 instanceDescriptorType])
    {
      goto LABEL_3;
    }

    v16 = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self motionTransformBuffer];
    if (v16 == [a3 motionTransformBuffer] && (v17 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformBufferOffset](self, "motionTransformBufferOffset"), v17 == objc_msgSend(a3, "motionTransformBufferOffset")) && (v18 = -[MTLIndirectInstanceAccelerationStructureDescriptor maxMotionTransformCount](self, "maxMotionTransformCount"), v18 == objc_msgSend(a3, "maxMotionTransformCount")) && (v19 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformType](self, "motionTransformType"), v19 == objc_msgSend(a3, "motionTransformType")) && (v20 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformStride](self, "motionTransformStride"), v20 == objc_msgSend(a3, "motionTransformStride")) && (v21 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformCountBuffer](self, "motionTransformCountBuffer"), v21 == objc_msgSend(a3, "motionTransformCountBuffer")) && (v22 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformCountBufferOffset](self, "motionTransformCountBufferOffset"), v22 == objc_msgSend(a3, "motionTransformCountBufferOffset")))
    {
      v23 = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceTransformationMatrixLayout];
      LOBYTE(v8) = v23 == [a3 instanceTransformationMatrixLayout];
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
  bzero(v5, 0x80uLL);
  v4.receiver = self;
  v4.super_class = MTLIndirectInstanceAccelerationStructureDescriptor;
  v5[0] = [(MTLAccelerationStructureDescriptor *)&v4 hash];
  v5[1] = [-[MTLIndirectInstanceAccelerationStructureDescriptor instanceDescriptorBuffer](self "instanceDescriptorBuffer")];
  v5[2] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorBufferOffset];
  v5[3] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
  v5[4] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self maxInstanceCount];
  v5[5] = [-[MTLIndirectInstanceAccelerationStructureDescriptor instanceCountBuffer](self "instanceCountBuffer")];
  v5[6] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceCountBufferOffset];
  v5[7] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorType];
  v5[8] = [-[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformBuffer](self "motionTransformBuffer")];
  v5[9] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self motionTransformBufferOffset];
  v5[10] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self maxMotionTransformCount];
  v5[11] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self motionTransformType];
  v5[12] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self motionTransformStride];
  v5[13] = [-[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformCountBuffer](self "motionTransformCountBuffer")];
  v5[14] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self motionTransformCountBufferOffset];
  v5[15] = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceTransformationMatrixLayout];
  return _MTLHashState(v5, 0x80uLL);
}

- (NSUInteger)instanceDescriptorStride
{
  if (self->_overriddenInstanceDescriptorStride)
  {
    return self->_instanceDescriptorStride;
  }

  instanceDescriptorType = self->_instanceDescriptorType;
  if (instanceDescriptorType == 3)
  {
    return 72;
  }

  if (instanceDescriptorType == 4)
  {
    return 48;
  }

  MTLReportFailure(0, "[MTLIndirectInstanceAccelerationStructureDescriptor instanceDescriptorStride]", 1675, @"Invalid instance descriptor type", v2, v3, v4, v5, v6);
  return 0;
}

@end