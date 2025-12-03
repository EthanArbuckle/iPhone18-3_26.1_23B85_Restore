@interface MTLIndirectInstanceAccelerationStructureDescriptor
+ (MTLIndirectInstanceAccelerationStructureDescriptor)descriptor;
- (BOOL)isEqual:(id)equal;
- (MTLIndirectInstanceAccelerationStructureDescriptor)init;
- (NSUInteger)instanceDescriptorStride;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTLIndirectInstanceAccelerationStructureDescriptor;
  v4 = [(MTLAccelerationStructureDescriptor *)&v6 copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v26 = v3;
    v27 = v4;
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
      goto LABEL_3;
    }

    v25.receiver = self;
    v25.super_class = MTLIndirectInstanceAccelerationStructureDescriptor;
    v8 = [(MTLAccelerationStructureDescriptor *)&v25 isEqual:equal];
    if (!v8)
    {
      return v8;
    }

    instanceDescriptorBuffer = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorBuffer];
    if (instanceDescriptorBuffer != [equal instanceDescriptorBuffer])
    {
      goto LABEL_3;
    }

    instanceDescriptorBufferOffset = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorBufferOffset];
    if (instanceDescriptorBufferOffset != [equal instanceDescriptorBufferOffset])
    {
      goto LABEL_3;
    }

    instanceDescriptorStride = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorStride];
    if (instanceDescriptorStride != [equal instanceDescriptorStride])
    {
      goto LABEL_3;
    }

    maxInstanceCount = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self maxInstanceCount];
    if (maxInstanceCount != [equal maxInstanceCount])
    {
      goto LABEL_3;
    }

    instanceCountBuffer = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceCountBuffer];
    if (instanceCountBuffer != [equal instanceCountBuffer])
    {
      goto LABEL_3;
    }

    instanceCountBufferOffset = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceCountBufferOffset];
    if (instanceCountBufferOffset != [equal instanceCountBufferOffset])
    {
      goto LABEL_3;
    }

    instanceDescriptorType = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceDescriptorType];
    if (instanceDescriptorType != [equal instanceDescriptorType])
    {
      goto LABEL_3;
    }

    motionTransformBuffer = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self motionTransformBuffer];
    if (motionTransformBuffer == [equal motionTransformBuffer] && (v17 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformBufferOffset](self, "motionTransformBufferOffset"), v17 == objc_msgSend(equal, "motionTransformBufferOffset")) && (v18 = -[MTLIndirectInstanceAccelerationStructureDescriptor maxMotionTransformCount](self, "maxMotionTransformCount"), v18 == objc_msgSend(equal, "maxMotionTransformCount")) && (v19 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformType](self, "motionTransformType"), v19 == objc_msgSend(equal, "motionTransformType")) && (v20 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformStride](self, "motionTransformStride"), v20 == objc_msgSend(equal, "motionTransformStride")) && (v21 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformCountBuffer](self, "motionTransformCountBuffer"), v21 == objc_msgSend(equal, "motionTransformCountBuffer")) && (v22 = -[MTLIndirectInstanceAccelerationStructureDescriptor motionTransformCountBufferOffset](self, "motionTransformCountBufferOffset"), v22 == objc_msgSend(equal, "motionTransformCountBufferOffset")))
    {
      instanceTransformationMatrixLayout = [(MTLIndirectInstanceAccelerationStructureDescriptor *)self instanceTransformationMatrixLayout];
      LOBYTE(v8) = instanceTransformationMatrixLayout == [equal instanceTransformationMatrixLayout];
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