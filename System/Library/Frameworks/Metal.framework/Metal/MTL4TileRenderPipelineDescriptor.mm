@interface MTL4TileRenderPipelineDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4StaticLinkingDescriptor)staticLinkingDescriptor;
- (MTL4TileRenderPipelineDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
- (void)setRequiredThreadsPerThreadgroup:(id *)a3;
- (void)setStaticLinkingDescriptor:(id)a3;
@end

@implementation MTL4TileRenderPipelineDescriptor

- (MTL4TileRenderPipelineDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTL4TileRenderPipelineDescriptor;
  v2 = [(MTL4PipelineDescriptor *)&v4 init];
  [(MTL4TileRenderPipelineDescriptor *)v2 reset];
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4TileRenderPipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = MTL4TileRenderPipelineDescriptor;
  v5 = [(MTL4PipelineDescriptor *)&v8 copyWithZone:?];
  *(v5 + 7) = [(MTL4FunctionDescriptor *)self->_tileFunctionDescriptor copyWithZone:a3];

  *(v5 + 9) = [(MTLTileRenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments copyWithZone:a3];
  *(v5 + 8) = self->_rasterSampleCount;
  v5[40] = self->_threadgroupSizeMatchesTileSize;
  *(v5 + 10) = self->_maxTotalThreadsPerThreadgroup;
  v5[41] = self->_supportBinaryLinking;
  *(v5 + 6) = [(MTL4StaticLinkingDescriptor *)self->_staticLinkingDescriptor copyWithZone:a3];
  v6 = *&self->_requiredThreadsPerThreadgroup.width;
  *(v5 + 13) = self->_requiredThreadsPerThreadgroup.depth;
  *(v5 + 88) = v6;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v16 = v3;
  v17 = v4;
  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    goto LABEL_3;
  }

  v15.receiver = self;
  v15.super_class = MTL4TileRenderPipelineDescriptor;
  LODWORD(v8) = [(MTL4PipelineDescriptor *)&v15 isEqual:a3];
  if (v8)
  {
    tileFunctionDescriptor = self->_tileFunctionDescriptor;
    if (tileFunctionDescriptor == *(a3 + 7) || (LODWORD(v8) = [(MTL4FunctionDescriptor *)tileFunctionDescriptor isEqual:?], v8))
    {
      for (i = 0; i != 8; ++i)
      {
        v11 = [(MTLTileRenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments objectAtIndexedSubscript:i];
        if (v11 != [*(a3 + 9) objectAtIndexedSubscript:i])
        {
          v8 = [(MTLTileRenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments objectAtIndexedSubscript:i];
          if (!v8)
          {
            return v8;
          }

          v8 = [*(a3 + 9) objectAtIndexedSubscript:i];
          if (!v8)
          {
            return v8;
          }

          v12 = [(MTLTileRenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments objectAtIndexedSubscript:i][8];
          if (v12 != *([*(a3 + 9) objectAtIndexedSubscript:i] + 8))
          {
            goto LABEL_3;
          }
        }
      }

      staticLinkingDescriptor = self->_staticLinkingDescriptor;
      if (staticLinkingDescriptor == *(a3 + 6) || (LODWORD(v8) = [(MTL4StaticLinkingDescriptor *)staticLinkingDescriptor isEqual:?], v8))
      {
        if (*(a3 + 8) == self->_rasterSampleCount && *(a3 + 40) == self->_threadgroupSizeMatchesTileSize && *(a3 + 10) == self->_maxTotalThreadsPerThreadgroup && *(a3 + 41) == self->_supportBinaryLinking && *(a3 + 11) == self->_requiredThreadsPerThreadgroup.width && *(a3 + 12) == self->_requiredThreadsPerThreadgroup.height)
        {
          LOBYTE(v8) = *(a3 + 13) == self->_requiredThreadsPerThreadgroup.depth;
          return v8;
        }

LABEL_3:
        LOBYTE(v8) = 0;
      }
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v11, 0x90uLL);
  v3 = [(MTL4FunctionDescriptor *)self->_tileFunctionDescriptor hash];
  v4 = 0;
  rasterSampleCount = self->_rasterSampleCount;
  v11[0] = v3;
  v11[1] = rasterSampleCount;
  do
  {
    if ([(MTLTileRenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments objectAtIndexedSubscript:v4])
    {
      v6 = [(MTLTileRenderPipelineColorAttachmentDescriptorArray *)self->_colorAttachments objectAtIndexedSubscript:v4][8];
    }

    else
    {
      v6 = _MTLDefaultRenderPipelineAttachmentPrivate;
    }

    v11[v4++ + 2] = v6;
  }

  while (v4 != 8);
  maxTotalThreadsPerThreadgroup = self->_maxTotalThreadsPerThreadgroup;
  supportBinaryLinking = self->_supportBinaryLinking;
  v11[10] = self->_threadgroupSizeMatchesTileSize;
  v11[11] = maxTotalThreadsPerThreadgroup;
  v11[12] = supportBinaryLinking;
  v11[13] = [(MTL4StaticLinkingDescriptor *)self->_staticLinkingDescriptor hash];
  v12 = *&self->_requiredThreadsPerThreadgroup.width;
  depth = self->_requiredThreadsPerThreadgroup.depth;
  v10.receiver = self;
  v10.super_class = MTL4TileRenderPipelineDescriptor;
  v14 = [(MTL4PipelineDescriptor *)&v10 hash];
  return _MTLHashState(v11, 0x90uLL);
}

- (void)reset
{
  self->_tileFunctionDescriptor = 0;
  self->_rasterSampleCount = 1;

  self->_colorAttachments = objc_alloc_init(MTLTileRenderPipelineColorAttachmentDescriptorArray);
  self->_threadgroupSizeMatchesTileSize = 0;
  self->_maxTotalThreadsPerThreadgroup = 0;
  self->_supportBinaryLinking = 0;

  self->_staticLinkingDescriptor = 0;
  self->_requiredThreadsPerThreadgroup.height = 0;
  self->_requiredThreadsPerThreadgroup.depth = 0;
  self->_requiredThreadsPerThreadgroup.width = 0;
  v3.receiver = self;
  v3.super_class = MTL4TileRenderPipelineDescriptor;
  [(MTL4PipelineDescriptor *)&v3 reset];
}

- (MTL4StaticLinkingDescriptor)staticLinkingDescriptor
{
  result = self->_staticLinkingDescriptor;
  if (!result)
  {
    result = objc_alloc_init(MTL4StaticLinkingDescriptor);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_staticLinkingDescriptor, &v4, result);
    if (v4)
    {

      return self->_staticLinkingDescriptor;
    }

    else
    {
      self->_staticLinkingDescriptor = result;
    }
  }

  return result;
}

- (void)setStaticLinkingDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4TileRenderPipelineDescriptor *)isKindOfClass setStaticLinkingDescriptor:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_staticLinkingDescriptor != a3)
  {
    staticLinkingDescriptor = self->_staticLinkingDescriptor;
    self->_staticLinkingDescriptor = [a3 copy];
  }
}

- (void)setRequiredThreadsPerThreadgroup:(id *)a3
{
  var2 = a3->var2;
  *&self->_requiredThreadsPerThreadgroup.width = *&a3->var0;
  self->_requiredThreadsPerThreadgroup.depth = var2;
}

@end