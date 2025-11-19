@interface MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray
- (BOOL)isEqual:(id)a3;
- (MTLAccelerationStructurePassSampleBufferAttachmentDescriptor)objectAtIndexedSubscript:(NSUInteger)attachmentIndex;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)copyFrom:(id)a3 withZone:(_NSZone *)a4;
- (void)dealloc;
- (void)setObject:(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)attachment atIndexedSubscript:(NSUInteger)attachmentIndex;
@end

@implementation MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray

- (void)dealloc
{
  for (i = 8; i != 40; i += 8)
  {
  }

  v4.receiver = self;
  v4.super_class = MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray;
  [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray *)&v4 dealloc];
}

- (MTLAccelerationStructurePassSampleBufferAttachmentDescriptor)objectAtIndexedSubscript:(NSUInteger)attachmentIndex
{
  if (attachmentIndex >= 4)
  {
    [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray *)attachmentIndex objectAtIndexedSubscript:a2, attachmentIndex, v3, v4, v5, v6, v7];
  }

  sampleDescriptors = self->_sampleDescriptors;
  result = sampleDescriptors[attachmentIndex];
  if (!result)
  {
    result = objc_alloc_init(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor);
    v12 = 0;
    atomic_compare_exchange_strong(&sampleDescriptors[attachmentIndex], &v12, result);
    if (v12)
    {

      return sampleDescriptors[attachmentIndex];
    }

    else
    {
      sampleDescriptors[attachmentIndex] = result;
    }
  }

  return result;
}

- (void)setObject:(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)attachment atIndexedSubscript:(NSUInteger)attachmentIndex
{
  if (attachmentIndex >= 4)
  {
    [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray *)attachmentIndex setObject:a2 atIndexedSubscript:attachment, attachmentIndex, v4, v5, v6, v7];
  }

  sampleDescriptors = self->_sampleDescriptors;
  if (sampleDescriptors[attachmentIndex] != attachment)
  {
    v12 = sampleDescriptors[attachmentIndex];
    sampleDescriptors[attachmentIndex] = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)attachment copy];
  }
}

- (void)copyFrom:(id)a3 withZone:(_NSZone *)a4
{
  v6 = 0;
  sampleDescriptors = self->_sampleDescriptors;
  do
  {
    sampleDescriptors[v6] = [objc_msgSend(a3 _descriptorAtIndex:{v6), "copyWithZone:", a4}];
    ++v6;
  }

  while (v6 != 4);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  [v5 copyFrom:self withZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v23 = v8;
    v24 = v7;
    v25 = v6;
    v26 = v5;
    v27 = v4;
    v28 = v3;
    v29 = v9;
    v30 = v10;
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      v15 = 0;
      sampleDescriptors = self->_sampleDescriptors;
      do
      {
        v17 = sampleDescriptors[v15];
        v18 = [a3 objectAtIndexedSubscript:{v15, v23, v24, v25, v26, v27, v28, v29, v30}];
        if (v17 != v18)
        {
          v19 = v18;
          if (v17)
          {
            v20 = v18 == 0;
          }

          else
          {
            v20 = 0;
          }

          if (v20)
          {
            v19 = objc_alloc_init(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor);
            *(a3 + v15 + 1) = v19;
          }

          else if (v18 && !v17)
          {
            v17 = objc_alloc_init(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor);
            sampleDescriptors[v15] = v17;
          }

          if (v19)
          {
            v21 = v17 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            goto LABEL_3;
          }

          v14 = [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)v17 isEqual:v19];
          if (!v14)
          {
            return v14;
          }
        }

        ++v15;
      }

      while (v15 != 4);
      LOBYTE(v14) = 1;
    }

    else
    {
LABEL_3:
      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v2 = 0;
  v3 = 0;
  sampleDescriptors = self->_sampleDescriptors;
  do
  {
    v5 = sampleDescriptors[v2];
    if (v5)
    {
      v3 ^= [(MTLAccelerationStructurePassSampleBufferAttachmentDescriptor *)v5 hash]<< v2;
    }

    ++v2;
  }

  while (v2 != 4);
  return v3;
}

@end