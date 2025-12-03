@interface MTL4RenderPipelineColorAttachmentDescriptorArray
- (BOOL)isEqual:(id)equal;
- (MTL4RenderPipelineColorAttachmentDescriptorArray)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptors:(unint64_t *)descriptors;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
@end

@implementation MTL4RenderPipelineColorAttachmentDescriptorArray

- (MTL4RenderPipelineColorAttachmentDescriptorArray)init
{
  v4.receiver = self;
  v4.super_class = MTL4RenderPipelineColorAttachmentDescriptorArray;
  v2 = [(MTL4RenderPipelineColorAttachmentDescriptorArray *)&v4 init];
  [(MTL4RenderPipelineColorAttachmentDescriptorArray *)v2 reset];
  return v2;
}

- (void)dealloc
{
  for (i = 8; i != 72; i += 8)
  {
  }

  v4.receiver = self;
  v4.super_class = MTL4RenderPipelineColorAttachmentDescriptorArray;
  [(MTL4RenderPipelineColorAttachmentDescriptorArray *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  for (i = 8; i != 72; i += 8)
  {
    *&v5[i] = [*(&self->super.isa + i) copyWithZone:zone];
  }

  return v5;
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
    if (Class == object_getClass(equal))
    {
      v7 = 0;
      descriptors = self->_descriptors;
      v9 = equal + 8;
      while (1)
      {
        v10 = descriptors[v7];
        if (v10 != *&v9[v7 * 8])
        {
          v6 = [(MTL4RenderPipelineColorAttachmentDescriptor *)v10 isEqual:?];
          if (!v6)
          {
            break;
          }
        }

        if (++v7 == 8)
        {
          LOBYTE(v6) = 1;
          return v6;
        }
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v6, 0x40uLL);
  v3 = 0;
  descriptors = self->_descriptors;
  do
  {
    *&v6[v3 / 4] = [(MTL4RenderPipelineColorAttachmentDescriptor *)descriptors[v3 / 8] hash];
    v3 += 8;
  }

  while (v3 != 64);
  return _MTLHashState(v6, 0x40uLL);
}

- (void)reset
{
  v2 = 0;
  descriptors = self->_descriptors;
  do
  {
    [(MTL4RenderPipelineColorAttachmentDescriptor *)descriptors[v2++] reset];
  }

  while (v2 != 8);
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript >= 8)
  {
    [(MTL4RenderPipelineColorAttachmentDescriptorArray *)subscript objectAtIndexedSubscript:a2, subscript, v3, v4, v5, v6, v7];
  }

  descriptors = self->_descriptors;
  result = descriptors[subscript];
  if (!result)
  {
    result = objc_alloc_init(MTL4RenderPipelineColorAttachmentDescriptor);
    v12 = 0;
    atomic_compare_exchange_strong(&descriptors[subscript], &v12, result);
    if (v12)
    {

      return descriptors[subscript];
    }

    else
    {
      descriptors[subscript] = result;
    }
  }

  return result;
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  if (object)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4RenderPipelineColorAttachmentDescriptorArray *)isKindOfClass setObject:a2 atIndexedSubscript:object, subscript, v4, v5, v6, v7, v14];
    }
  }

  if (subscript >= 8)
  {
    [(MTL4RenderPipelineColorAttachmentDescriptorArray *)subscript setObject:a2 atIndexedSubscript:object, subscript, v4, v5, v6, v7];
  }

  descriptors = self->_descriptors;
  v13 = descriptors[subscript];
  if (object)
  {
    if (v13 != object)
    {
      v15 = descriptors[subscript];
      descriptors[subscript] = [object copy];
    }
  }

  else
  {

    [(MTL4RenderPipelineColorAttachmentDescriptor *)v13 reset];
  }
}

- (id)descriptors:(unint64_t *)descriptors
{
  if (!descriptors)
  {
    return 0;
  }

  *descriptors = 8;
  return self->_descriptors;
}

@end