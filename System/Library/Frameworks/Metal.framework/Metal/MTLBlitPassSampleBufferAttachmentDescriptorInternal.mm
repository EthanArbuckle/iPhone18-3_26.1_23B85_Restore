@interface MTLBlitPassSampleBufferAttachmentDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (MTLBlitPassSampleBufferAttachmentDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setSampleBuffer:(id)buffer;
@end

@implementation MTLBlitPassSampleBufferAttachmentDescriptorInternal

- (MTLBlitPassSampleBufferAttachmentDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLBlitPassSampleBufferAttachmentDescriptorInternal;
  result = [(MTLBlitPassSampleBufferAttachmentDescriptorInternal *)&v3 init];
  result->_private.startOfEncoderSampleIndex = -1;
  result->_private.endOfEncoderSampleIndex = -1;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLBlitPassSampleBufferAttachmentDescriptorInternal;
  [(MTLBlitPassSampleBufferAttachmentDescriptorInternal *)&v3 dealloc];
}

- (void)setSampleBuffer:(id)buffer
{
  sampleBuffer = self->_private.sampleBuffer;
  if (sampleBuffer != buffer)
  {

    self->_private.sampleBuffer = buffer;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTLBlitPassSampleBufferAttachmentDescriptorInternal);
  self = (self + 8);
  v4->_private.sampleBuffer = self->super.super.isa;
  *&v4->_private.startOfEncoderSampleIndex = *&self->_private.sampleBuffer;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class != object_getClass(equal))
    {
LABEL_3:
      LOBYTE(v6) = 0;
      return v6;
    }

    p_private = &self->_private;
    v8 = (equal + 8);
    if (p_private->sampleBuffer == *v8 || (v6 = [(MTLCounterSampleBuffer *)p_private->sampleBuffer isEqual:?]) != 0)
    {
      if (p_private->startOfEncoderSampleIndex != v8[1])
      {
        goto LABEL_3;
      }

      LOBYTE(v6) = p_private->endOfEncoderSampleIndex == v8[2];
    }
  }

  return v6;
}

@end