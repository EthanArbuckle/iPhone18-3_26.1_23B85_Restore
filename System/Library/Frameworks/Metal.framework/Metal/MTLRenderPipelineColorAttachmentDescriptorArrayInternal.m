@interface MTLRenderPipelineColorAttachmentDescriptorArrayInternal
- (BOOL)isEqual:(id)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (uint64_t)reset;
- (unint64_t)hash;
- (void)dealloc;
- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4;
@end

@implementation MTLRenderPipelineColorAttachmentDescriptorArrayInternal

- (void)dealloc
{
  v3 = 0;
  descriptors = self->_descriptors;
  do
  {
  }

  while (v3 != 8);
  v5.receiver = self;
  v5.super_class = MTLRenderPipelineColorAttachmentDescriptorArrayInternal;
  [(MTLRenderPipelineColorAttachmentDescriptorArrayInternal *)&v5 dealloc];
}

- (unint64_t)hash
{
  bzero(v6, 0x40uLL);
  v3 = 0;
  descriptors = self->_descriptors;
  do
  {
    *&v6[v3 / 4] = [(MTLRenderPipelineColorAttachmentDescriptorInternal *)descriptors[v3 / 8] hash];
    v3 += 8;
  }

  while (v3 != 64);
  return _MTLHashState(v6, 0x40uLL);
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v16 = v6;
    v17 = v5;
    v18 = v4;
    v19 = v3;
    v20 = v7;
    v21 = v8;
    ClassName = object_getClassName(self);
    if (ClassName == object_getClassName(a3))
    {
      v13 = 0;
      do
      {
        v12 = -[MTLRenderPipelineColorAttachmentDescriptorInternal isEqual:](self->_descriptors[v13], "isEqual:", [a3 objectAtIndexedSubscript:{v13, v16, v17, v18, v19, v20, v21}]);
      }

      while (v12 && v13++ != 7);
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 >= 8)
  {
    [MTLRenderPipelineColorAttachmentDescriptorArrayInternal objectAtIndexedSubscript:];
  }

  descriptors = self->_descriptors;
  result = descriptors[a3];
  if (!result)
  {
    result = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptorInternal);
    v7 = 0;
    atomic_compare_exchange_strong(&descriptors[a3], &v7, result);
    if (v7)
    {

      return descriptors[a3];
    }

    else
    {
      descriptors[a3] = result;
    }
  }

  return result;
}

- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPipelineColorAttachmentDescriptorArrayInternal *)isKindOfClass setObject:v8 atIndexedSubscript:v9, v10, v11, v12, v13, v14, v17];
    }
  }

  if (a4 >= 8)
  {
    [MTLRenderPipelineColorAttachmentDescriptorArrayInternal setObject:atIndexedSubscript:];
  }

  descriptors = self->_descriptors;
  v16 = descriptors[a4];
  if (a3)
  {
    if (v16 != a3)
    {
      v18 = descriptors[a4];
      descriptors[a4] = [a3 copy];
    }
  }

  else
  {

    [(MTLRenderPipelineColorAttachmentDescriptorInternal *)v16 reset];
  }
}

- (uint64_t)reset
{
  if (result)
  {
    v1 = result;
    v2 = 8;
    do
    {
      result = [*(v1 + 8) reset];
      v1 += 8;
      --v2;
    }

    while (v2);
  }

  return result;
}

@end