@interface MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (uint64_t)_descriptorAtIndex:(uint64_t)result;
- (void)dealloc;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
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

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript >= 8)
  {
    [(MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal *)subscript objectAtIndexedSubscript:a2, subscript, v3, v4, v5, v6, v7];
  }

  descriptors = self->_descriptors;
  result = descriptors[subscript];
  if (!result)
  {
    result = objc_alloc_init(MTLTileRenderPipelineColorAttachmentDescriptorInternal);
    descriptors[subscript] = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = 0;
  descriptors = self->_descriptors;
  do
  {
    *&v5[v6 * 8 + 8] = [(MTLTileRenderPipelineColorAttachmentDescriptorInternal *)descriptors[v6] copyWithZone:zone];
    ++v6;
  }

  while (v6 != 8);
  return v5;
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  if (object)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      MTLReportFailure(1, "[MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal setObject:atIndexedSubscript:]", 201, @"attachment is not a MTLTileRenderPipelineColorAttachmentDescriptor.", v4, v5, v6, v7, v13);
    }
  }

  if (subscript >= 8)
  {
    MTLReportFailure(0, "[MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal setObject:atIndexedSubscript:]", 203, @"attachmentIndex(%lu) must be < %lu", v4, v5, v6, v7, subscript);
  }

  descriptors = self->_descriptors;
  v12 = descriptors[subscript];
  if (object)
  {
    if (v12 != object)
    {
      v14 = descriptors[subscript];
      descriptors[subscript] = [object copy];
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