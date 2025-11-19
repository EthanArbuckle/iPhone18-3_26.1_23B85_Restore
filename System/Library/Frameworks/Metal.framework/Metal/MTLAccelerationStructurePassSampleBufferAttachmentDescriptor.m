@interface MTLAccelerationStructurePassSampleBufferAttachmentDescriptor
- (BOOL)isEqual:(id)a3;
- (MTLAccelerationStructurePassSampleBufferAttachmentDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSampleBuffer:self->_sampleBuffer];
  [v4 setStartOfEncoderSampleIndex:self->_startOfEncoderSampleIndex];
  [v4 setEndOfEncoderSampleIndex:self->_endOfEncoderSampleIndex];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v17 = v5;
    v18 = v4;
    v19 = v3;
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
LABEL_3:
      LOBYTE(v12) = 0;
      return v12;
    }

    v13 = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)self sampleBuffer];
    if (v13 == [a3 sampleBuffer] || (v12 = objc_msgSend(-[MTLAccelerationStructurePassSampleBufferAttachmentDescriptor sampleBuffer](self, "sampleBuffer"), "isEqual:", objc_msgSend(a3, "sampleBuffer"))) != 0)
    {
      v14 = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)self startOfEncoderSampleIndex:v6];
      if (v14 != [a3 startOfEncoderSampleIndex])
      {
        goto LABEL_3;
      }

      v15 = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)self endOfEncoderSampleIndex];
      LOBYTE(v12) = v15 == [a3 endOfEncoderSampleIndex];
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