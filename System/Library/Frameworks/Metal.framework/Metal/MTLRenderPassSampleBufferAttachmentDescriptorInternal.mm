@interface MTLRenderPassSampleBufferAttachmentDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (MTLRenderPassSampleBufferAttachmentDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setSampleBuffer:(id)buffer;
@end

@implementation MTLRenderPassSampleBufferAttachmentDescriptorInternal

- (MTLRenderPassSampleBufferAttachmentDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLRenderPassSampleBufferAttachmentDescriptorInternal;
  result = [(MTLRenderPassSampleBufferAttachmentDescriptorInternal *)&v4 init];
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *&result->_private.startOfVertexSampleIndex = v3;
  *&result->_private.startOfFragmentSampleIndex = v3;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLRenderPassSampleBufferAttachmentDescriptorInternal;
  [(MTLRenderPassSampleBufferAttachmentDescriptorInternal *)&v3 dealloc];
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
  v4 = objc_alloc_init(MTLRenderPassSampleBufferAttachmentDescriptorInternal);
  self = (self + 8);
  v4->_private.sampleBuffer = self->super.super.isa;
  *&v4->_private.startOfVertexSampleIndex = *&self->_private.sampleBuffer;
  *&v4->_private.startOfFragmentSampleIndex = *&self->_private.endOfVertexSampleIndex;
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
      if (p_private->startOfVertexSampleIndex != v8[1] || p_private->endOfVertexSampleIndex != v8[2] || p_private->startOfFragmentSampleIndex != v8[3])
      {
        goto LABEL_3;
      }

      LOBYTE(v6) = p_private->endOfFragmentSampleIndex == v8[4];
    }
  }

  return v6;
}

@end