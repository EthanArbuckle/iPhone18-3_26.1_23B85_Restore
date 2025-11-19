@interface MTLResourceStatePassSampleBufferAttachmentDescriptorInternal
- (BOOL)isEqual:(id)a3;
- (MTLResourceStatePassSampleBufferAttachmentDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setSampleBuffer:(id)a3;
@end

@implementation MTLResourceStatePassSampleBufferAttachmentDescriptorInternal

- (MTLResourceStatePassSampleBufferAttachmentDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLResourceStatePassSampleBufferAttachmentDescriptorInternal;
  result = [(MTLResourceStatePassSampleBufferAttachmentDescriptorInternal *)&v3 init];
  result->_private.startOfEncoderSampleIndex = -1;
  result->_private.endOfEncoderSampleIndex = -1;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLResourceStatePassSampleBufferAttachmentDescriptorInternal;
  [(MTLResourceStatePassSampleBufferAttachmentDescriptorInternal *)&v3 dealloc];
}

- (void)setSampleBuffer:(id)a3
{
  sampleBuffer = self->_private.sampleBuffer;
  if (sampleBuffer != a3)
  {

    self->_private.sampleBuffer = a3;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTLResourceStatePassSampleBufferAttachmentDescriptorInternal);
  self = (self + 8);
  v4->_private.sampleBuffer = self->super.super.isa;
  *&v4->_private.startOfEncoderSampleIndex = *&self->_private.sampleBuffer;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
LABEL_3:
      LOBYTE(v6) = 0;
      return v6;
    }

    p_private = &self->_private;
    v8 = (a3 + 8);
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