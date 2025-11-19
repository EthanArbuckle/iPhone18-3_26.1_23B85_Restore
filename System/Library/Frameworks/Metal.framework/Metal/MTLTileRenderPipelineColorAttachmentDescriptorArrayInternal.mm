@interface MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (uint64_t)_descriptorAtIndex:(uint64_t)result;
- (void)dealloc;
- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4;
@end

@implementation MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal

- (void)dealloc
{
  v3 = 0;
  descriptors = self->_descriptors;
  do
  {
  }

  while (v3 != 8);
  v5.receiver = self;
  v5.super_class = MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal;
  [(MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal *)&v5 dealloc];
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 >= 8)
  {
    [(MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal *)a3 objectAtIndexedSubscript:a2, a3, v3, v4, v5, v6, v7];
  }

  descriptors = self->_descriptors;
  result = descriptors[a3];
  if (!result)
  {
    result = objc_alloc_init(MTLTileRenderPipelineColorAttachmentDescriptorInternal);
    descriptors[a3] = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = 0;
  descriptors = self->_descriptors;
  do
  {
    *&v5[v6 * 8 + 8] = [(MTLTileRenderPipelineColorAttachmentDescriptorInternal *)descriptors[v6] copyWithZone:a3];
    ++v6;
  }

  while (v6 != 8);
  return v5;
}

- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MTLReportFailure(1, "[MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal setObject:atIndexedSubscript:]", 201, @"attachment is not a MTLTileRenderPipelineColorAttachmentDescriptor.", v4, v5, v6, v7, v13);
    }
  }

  if (a4 >= 8)
  {
    MTLReportFailure(0, "[MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal setObject:atIndexedSubscript:]", 203, @"attachmentIndex(%lu) must be < %lu", v4, v5, v6, v7, a4);
  }

  descriptors = self->_descriptors;
  v12 = descriptors[a4];
  if (a3)
  {
    if (v12 != a3)
    {
      v14 = descriptors[a4];
      descriptors[a4] = [a3 copy];
    }
  }

  else if (v12)
  {
    v12->_private.var0.var0.pixelFormat = 0;
  }
}

- (uint64_t)_descriptorAtIndex:(uint64_t)result
{
  if (result)
  {
    return *(result + 8 + 8 * a2);
  }

  return result;
}

@end