@interface MTLComputePassDescriptorInternal
+ (id)computePassDescriptor;
- (BOOL)isEqual:(id)a3;
- (MTLComputePassDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLComputePassDescriptorInternal

+ (id)computePassDescriptor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (MTLComputePassDescriptorInternal)init
{
  v5.receiver = self;
  v5.super_class = MTLComputePassDescriptorInternal;
  v2 = [(MTLComputePassDescriptorInternal *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MTLComputePassSampleBufferAttachmentDescriptorArrayInternal);
    v2->_private.dispatchType = 0;
    v2->_private.sampleBufferAttachments = v3;
    v2->_private.substreamCount = 0;
    *&v2->_private.allowCommandEncoderCoalescing = 1;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLComputePassDescriptorInternal;
  [(MTLComputePassDescriptorInternal *)&v3 dealloc];
}

- (unint64_t)hash
{
  p_private = &self->_private;
  v8[0] = self->_private.dispatchType;
  v8[1] = [(MTLComputePassDescriptorInternal *)self substreamCount];
  v9 = [(MTLComputePassDescriptorInternal *)self allowCommandEncoderCoalescing];
  *(&v9 + 1) = [(MTLComputePassDescriptorInternal *)self usedForRaytracingEmulation];
  v4 = 0;
  v5 = _MTLHashState(v8, 0x18uLL);
  do
  {
    v6 = p_private->sampleBufferAttachments->_sampleDescriptors[v4];
    if (v6)
    {
      v5 ^= _MTLHashState(&v6->_private, 0x18uLL) << v4;
    }

    ++v4;
  }

  while (v4 != 4);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  if (Class == object_getClass(a3))
  {
    v6 = a3 + 8;
    if (self->_private.dispatchType == *(a3 + 1) && self->_private.substreamCount == *(a3 + 6) && self->_private.allowCommandEncoderCoalescing == *(a3 + 28) && self->_private.usedForRaytracingEmulation == *(a3 + 29))
    {
      v7 = 0;
      p_sampleBufferAttachments = &self->_private.sampleBufferAttachments;
      v9 = (v6 + 8);
      while (1)
      {
        v10 = (*p_sampleBufferAttachments)->_sampleDescriptors[v7];
        v11 = (*v9)->_sampleDescriptors[v7];
        if (v10 == v11)
        {
          goto LABEL_27;
        }

        if (v10 && v11 == 0)
        {
          break;
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
          v14 = objc_alloc_init(MTLComputePassSampleBufferAttachmentDescriptorInternal);
          v15 = p_sampleBufferAttachments;
          v10 = v14;
LABEL_19:
          (*v15)->_sampleDescriptors[v7] = v14;
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

LABEL_27:
        ++v7;
        result = 1;
        if (v7 == 4)
        {
          return result;
        }
      }

      v14 = objc_alloc_init(MTLComputePassSampleBufferAttachmentDescriptorInternal);
      v15 = v9;
      v11 = v14;
      goto LABEL_19;
    }
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = 0;
  p_private = &self->_private;
  do
  {
    v8 = p_private->sampleBufferAttachments->_sampleDescriptors[v6];
    if (v8)
    {
      *(*(v5 + 16) + 8 + v6 * 8) = [(MTLComputePassSampleBufferAttachmentDescriptorInternal *)v8 copyWithZone:a3];
    }

    ++v6;
  }

  while (v6 != 4);
  *(v5 + 8) = p_private->dispatchType;
  *(v5 + 24) = p_private->substreamCount;
  *(v5 + 28) = *&p_private->allowCommandEncoderCoalescing;
  return v5;
}

@end