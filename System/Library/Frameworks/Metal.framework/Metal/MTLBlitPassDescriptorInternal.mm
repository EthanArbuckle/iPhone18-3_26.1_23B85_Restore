@interface MTLBlitPassDescriptorInternal
+ (id)blitPassDescriptor;
- (BOOL)isEqual:(id)equal;
- (MTLBlitPassDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLBlitPassDescriptorInternal

+ (id)blitPassDescriptor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (MTLBlitPassDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLBlitPassDescriptorInternal;
  v2 = [(MTLBlitPassDescriptorInternal *)&v4 init];
  if (v2)
  {
    v2->_private.sampleBufferAttachments = objc_alloc_init(MTLBlitPassSampleBufferAttachmentDescriptorArrayInternal);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLBlitPassDescriptorInternal;
  [(MTLBlitPassDescriptorInternal *)&v3 dealloc];
}

- (unint64_t)hash
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = self->_private.sampleBufferAttachments->_sampleDescriptors[v3];
    if (v5)
    {
      v4 ^= _MTLHashState(&v5->_private, 0x18uLL) << v3;
    }

    ++v3;
  }

  while (v3 != 4);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    return 0;
  }

  v7 = 0;
  p_private = &self->_private;
  v9 = (equal + 8);
  do
  {
    v10 = p_private->sampleBufferAttachments->_sampleDescriptors[v7];
    v11 = v9->sampleBufferAttachments->_sampleDescriptors[v7];
    if (v10 == v11)
    {
      goto LABEL_25;
    }

    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v14 = objc_alloc_init(MTLBlitPassSampleBufferAttachmentDescriptorInternal);
      v15 = v9;
      v11 = v14;
      goto LABEL_17;
    }

    if (v10)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11 == 0;
    }

    if (!v13)
    {
      v14 = objc_alloc_init(MTLBlitPassSampleBufferAttachmentDescriptorInternal);
      v15 = p_private;
      v10 = v14;
LABEL_17:
      v15->sampleBufferAttachments->_sampleDescriptors[v7] = v14;
    }

    if (v11)
    {
      v16 = v10 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16 || v10->_private.sampleBuffer != v11->_private.sampleBuffer || v10->_private.startOfEncoderSampleIndex != v11->_private.startOfEncoderSampleIndex || v10->_private.endOfEncoderSampleIndex != v11->_private.endOfEncoderSampleIndex)
    {
      return 0;
    }

LABEL_25:
    ++v7;
  }

  while (v7 != 4);
  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  for (i = 0; i != 4; ++i)
  {
    v7 = self->_private.sampleBufferAttachments->_sampleDescriptors[i];
    if (v7)
    {
      *(v5[1] + 8 + i * 8) = [(MTLBlitPassSampleBufferAttachmentDescriptorInternal *)v7 copyWithZone:zone];
    }
  }

  return v5;
}

@end