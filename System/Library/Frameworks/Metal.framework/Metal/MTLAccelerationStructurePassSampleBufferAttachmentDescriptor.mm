@interface MTLAccelerationStructurePassSampleBufferAttachmentDescriptor
- (BOOL)isEqual:(id)equal;
- (MTLAccelerationStructurePassSampleBufferAttachmentDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLAccelerationStructurePassSampleBufferAttachmentDescriptor

- (MTLAccelerationStructurePassSampleBufferAttachmentDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructurePassSampleBufferAttachmentDescriptor;
  result = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)&v3 init];
  if (result)
  {
    result->_startOfEncoderSampleIndex = -1;
    result->_endOfEncoderSampleIndex = -1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAccelerationStructurePassSampleBufferAttachmentDescriptor;
  [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSampleBuffer:self->_sampleBuffer];
  [v4 setStartOfEncoderSampleIndex:self->_startOfEncoderSampleIndex];
  [v4 setEndOfEncoderSampleIndex:self->_endOfEncoderSampleIndex];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v17 = v5;
    v18 = v4;
    v19 = v3;
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
LABEL_3:
      LOBYTE(v12) = 0;
      return v12;
    }

    sampleBuffer = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)self sampleBuffer];
    if (sampleBuffer == [equal sampleBuffer] || (v12 = objc_msgSend(-[MTLAccelerationStructurePassSampleBufferAttachmentDescriptor sampleBuffer](self, "sampleBuffer"), "isEqual:", objc_msgSend(equal, "sampleBuffer"))) != 0)
    {
      v14 = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)self startOfEncoderSampleIndex:v6];
      if (v14 != [equal startOfEncoderSampleIndex])
      {
        goto LABEL_3;
      }

      endOfEncoderSampleIndex = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)self endOfEncoderSampleIndex];
      LOBYTE(v12) = endOfEncoderSampleIndex == [equal endOfEncoderSampleIndex];
    }
  }

  return v12;
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [-[MTLAccelerationStructurePassSampleBufferAttachmentDescriptor sampleBuffer](self "sampleBuffer")];
  v4[1] = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)self startOfEncoderSampleIndex];
  v4[2] = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)self endOfEncoderSampleIndex];
  return _MTLHashState(v4, 0x18uLL);
}

@end