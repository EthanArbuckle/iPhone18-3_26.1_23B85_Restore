@interface MTLRenderPassSampleBufferAttachmentDescriptorArrayInternal
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)dealloc;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
@end

@implementation MTLRenderPassSampleBufferAttachmentDescriptorArrayInternal

- (void)dealloc
{
  v3 = 0;
  sampleDescriptors = self->_sampleDescriptors;
  do
  {
  }

  while (v3 != 4);
  v5.receiver = self;
  v5.super_class = MTLRenderPassSampleBufferAttachmentDescriptorArrayInternal;
  [(MTLRenderPassSampleBufferAttachmentDescriptorArrayInternal *)&v5 dealloc];
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript >= 4)
  {
    [(MTLRenderPassSampleBufferAttachmentDescriptorArrayInternal *)subscript objectAtIndexedSubscript:a2, subscript, v3, v4, v5, v6, v7];
  }

  sampleDescriptors = self->_sampleDescriptors;
  result = sampleDescriptors[subscript];
  if (!result)
  {
    result = objc_alloc_init(MTLRenderPassSampleBufferAttachmentDescriptorInternal);
    v12 = 0;
    atomic_compare_exchange_strong(&sampleDescriptors[subscript], &v12, result);
    if (v12)
    {

      return sampleDescriptors[subscript];
    }

    else
    {
      sampleDescriptors[subscript] = result;
    }
  }

  return result;
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  if (subscript >= 4)
  {
    [(MTLRenderPassSampleBufferAttachmentDescriptorArrayInternal *)subscript setObject:a2 atIndexedSubscript:object, subscript, v4, v5, v6, v7];
  }

  sampleDescriptors = self->_sampleDescriptors;
  if (sampleDescriptors[subscript] != object)
  {
    v12 = sampleDescriptors[subscript];
    sampleDescriptors[subscript] = [object copy];
  }
}

@end