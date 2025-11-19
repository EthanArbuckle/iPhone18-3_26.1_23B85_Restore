@interface MTLPrimitiveAccelerationStructureDescriptor
+ (MTLPrimitiveAccelerationStructureDescriptor)descriptor;
- (BOOL)isEqual:(id)a3;
- (MTLPrimitiveAccelerationStructureDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLPrimitiveAccelerationStructureDescriptor

+ (MTLPrimitiveAccelerationStructureDescriptor)descriptor
{
  v2 = objc_alloc_init(MTLPrimitiveAccelerationStructureDescriptor);

  return v2;
}

- (MTLPrimitiveAccelerationStructureDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLPrimitiveAccelerationStructureDescriptor;
  result = [(MTLPrimitiveAccelerationStructureDescriptor *)&v3 init];
  if (result)
  {
    result->_motionStartBorderMode = 0;
    result->_motionEndBorderMode = 0;
    result->_motionStartTime = 0.0;
    result->_motionEndTime = 1.0;
    result->_motionKeyframeCount = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLPrimitiveAccelerationStructureDescriptor;
  [(MTLPrimitiveAccelerationStructureDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = MTLPrimitiveAccelerationStructureDescriptor;
  v4 = [(MTLAccelerationStructureDescriptor *)&v9 copyWithZone:a3];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_geometryDescriptors copyItems:1];
  [v4 setGeometryDescriptors:v5];

  [v4 setMotionStartBorderMode:self->_motionStartBorderMode];
  [v4 setMotionEndBorderMode:self->_motionEndBorderMode];
  *&v6 = self->_motionStartTime;
  [v4 setMotionStartTime:v6];
  *&v7 = self->_motionEndTime;
  [v4 setMotionEndTime:v7];
  [v4 setMotionKeyframeCount:self->_motionKeyframeCount];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v10) = 1;
    return v10;
  }

  v22 = v6;
  v23 = v5;
  v24 = v3;
  v25 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v21.receiver = self;
  v21.super_class = MTLPrimitiveAccelerationStructureDescriptor;
  v10 = [(MTLAccelerationStructureDescriptor *)&v21 isEqual:a3];
  if (v10)
  {
    v10 = MTLCompareArray(-[MTLPrimitiveAccelerationStructureDescriptor geometryDescriptors](self, "geometryDescriptors"), [a3 geometryDescriptors], 1, 0);
    if (v10)
    {
      v11 = [(MTLPrimitiveAccelerationStructureDescriptor *)self motionStartBorderMode];
      if (v11 == [a3 motionStartBorderMode])
      {
        v12 = [(MTLPrimitiveAccelerationStructureDescriptor *)self motionEndBorderMode];
        if (v12 == [a3 motionEndBorderMode])
        {
          [(MTLPrimitiveAccelerationStructureDescriptor *)self motionStartTime];
          v14 = v13;
          [a3 motionStartTime];
          if (v14 == v15)
          {
            [(MTLPrimitiveAccelerationStructureDescriptor *)self motionEndTime];
            v17 = v16;
            [a3 motionEndTime];
            if (v17 == v18)
            {
              v19 = [(MTLPrimitiveAccelerationStructureDescriptor *)self motionKeyframeCount];
              LOBYTE(v10) = v19 == [a3 motionKeyframeCount];
              return v10;
            }
          }
        }
      }

LABEL_3:
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  bzero(v9, 0x30uLL);
  v8.receiver = self;
  v8.super_class = MTLPrimitiveAccelerationStructureDescriptor;
  v9[0] = [(MTLAccelerationStructureDescriptor *)&v8 hash];
  v3 = MTLHashArray([(MTLPrimitiveAccelerationStructureDescriptor *)self geometryDescriptors], 1, 0);
  motionStartBorderMode = self->_motionStartBorderMode;
  v9[1] = v3;
  v9[2] = motionStartBorderMode;
  motionStartTime = self->_motionStartTime;
  v9[3] = self->_motionEndBorderMode;
  motionEndTime = self->_motionEndTime;
  v10 = motionStartTime;
  v11 = motionEndTime;
  motionKeyframeCount = self->_motionKeyframeCount;
  return _MTLHashState(v9, 0x30uLL);
}

@end