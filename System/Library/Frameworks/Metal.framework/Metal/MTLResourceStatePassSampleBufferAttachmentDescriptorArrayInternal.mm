@interface MTLResourceStatePassSampleBufferAttachmentDescriptorArrayInternal
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (void)dealloc;
- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4;
@end

@implementation MTLResourceStatePassSampleBufferAttachmentDescriptorArrayInternal

- (void)dealloc
{
  v3 = 0;
  sampleDescriptors = self->_sampleDescriptors;
  do
  {
  }

  while (v3 != 4);
  v5.receiver = self;
  v5.super_class = MTLResourceStatePassSampleBufferAttachmentDescriptorArrayInternal;
  [(MTLResourceStatePassSampleBufferAttachmentDescriptorArrayInternal *)&v5 dealloc];
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 >= 4)
  {
    [(MTLResourceStatePassSampleBufferAttachmentDescriptorArrayInternal *)a3 objectAtIndexedSubscript:a2, a3, v3, v4, v5, v6, v7];
  }

  sampleDescriptors = self->_sampleDescriptors;
  result = sampleDescriptors[a3];
  if (!result)
  {
    result = objc_alloc_init(MTLResourceStatePassSampleBufferAttachmentDescriptorInternal);
    v12 = 0;
    atomic_compare_exchange_strong(&sampleDescriptors[a3], &v12, result);
    if (v12)
    {

      return sampleDescriptors[a3];
    }

    else
    {
      sampleDescriptors[a3] = result;
    }
  }

  return result;
}

- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4
{
  if (a4 >= 4)
  {
    [(MTLResourceStatePassSampleBufferAttachmentDescriptorArrayInternal *)a4 setObject:a2 atIndexedSubscript:a3, a4, v4, v5, v6, v7];
  }

  sampleDescriptors = self->_sampleDescriptors;
  if (sampleDescriptors[a4] != a3)
  {
    v12 = sampleDescriptors[a4];
    sampleDescriptors[a4] = [a3 copy];
  }
}

@end