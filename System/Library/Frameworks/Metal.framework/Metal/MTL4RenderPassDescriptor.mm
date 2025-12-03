@interface MTL4RenderPassDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id)validate width:(unint64_t *)width height:(unint64_t *)height;
- (MTL4RenderPassDescriptor)init;
- (MTLRenderPassDepthAttachmentDescriptor)depthAttachment;
- (MTLRenderPassStencilAttachmentDescriptor)stencilAttachment;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)getSamplePositions:(id *)positions count:(unint64_t)count;
- (unint64_t)hash;
- (void)dealloc;
- (void)setDepthAttachment:(id)attachment;
- (void)setRasterizationRateMap:(id)map;
- (void)setSamplePositions:(id *)positions count:(unint64_t)count;
- (void)setStencilAttachment:(id)attachment;
- (void)setVisibilityResultBuffer:(id)buffer;
@end

@implementation MTL4RenderPassDescriptor

- (MTL4RenderPassDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTL4RenderPassDescriptor;
  v2 = [(MTL4RenderPassDescriptor *)&v4 init];
  if (v2)
  {
    *(v2 + 1) = objc_alloc_init(MTLRenderPassColorAttachmentDescriptorArrayInternal);
    *(v2 + 104) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 136) = 0u;
    *(v2 + 152) = 0u;
    *(v2 + 21) = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4RenderPassDescriptor;
  [(MTL4RenderPassDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(MTL4RenderPassDescriptor);
  *&v5->_private.imageBlockSampleLength = *&self->_private.imageBlockSampleLength;
  *&v5->_private.renderTargetArrayLength = *&self->_private.renderTargetArrayLength;
  v5->_private.tileHeight = self->_private.tileHeight;
  v5->_private.var0.defaultSampleCount = self->_private.var0.defaultSampleCount;
  v5->_private.defaultColorSampleCount = self->_private.defaultColorSampleCount;
  *&v5->_private.renderTargetWidth = *&self->_private.renderTargetWidth;
  v5->_private.visibilityResultType = self->_private.visibilityResultType;
  v5->_private.supportColorAttachmentMapping = self->_private.supportColorAttachmentMapping;
  v5->_private.rasterizationRateMap = self->_private.rasterizationRateMap;
  v6 = 0;
  v5->_private.visibilityResultBuffer = self->_private.visibilityResultBuffer;
  do
  {
    v5->_private.attachments->_color_descriptors[v6] = [(MTLRenderPassColorAttachmentDescriptorInternal *)self->_private.attachments->_color_descriptors[v6] copyWithZone:zone];
    ++v6;
  }

  while (v6 != 8);
  v5->_private.attachments->_depth_descriptor = [(MTLRenderPassDepthAttachmentDescriptorInternal *)self->_private.attachments->_depth_descriptor copyWithZone:zone];
  v5->_private.attachments->_stencil_descriptor = [(MTLRenderPassStencilAttachmentDescriptorInternal *)self->_private.attachments->_stencil_descriptor copyWithZone:zone];
  numCustomSamplePositions = self->_private.numCustomSamplePositions;
  v5->_private.numCustomSamplePositions = numCustomSamplePositions;
  if (numCustomSamplePositions)
  {
    v8 = 0;
    do
    {
      v5->_private.customSamplePositions[v8] = self->_private.customSamplePositions[v8];
      ++v8;
    }

    while (self->_private.numCustomSamplePositions > v8);
  }

  return v5;
}

- (unint64_t)hash
{
  bzero(&renderTargetArrayLength, 0x58uLL);
  renderTargetArrayLength = self->_private.renderTargetArrayLength;
  v3 = *&self->_private.tileWidth;
  v12 = *&self->_private.imageBlockSampleLength;
  v13 = v3;
  defaultColorSampleCount = self->_private.defaultColorSampleCount;
  defaultSampleCount = self->_private.var0.defaultSampleCount;
  v15 = defaultColorSampleCount;
  v16 = *&self->_private.renderTargetWidth;
  visibilityResultType = self->_private.visibilityResultType;
  supportColorAttachmentMapping = self->_private.supportColorAttachmentMapping;
  v5 = _MTLHashState(&renderTargetArrayLength, 0x58uLL);
  v6 = [(MTLRasterizationRateMap *)self->_private.rasterizationRateMap hash]^ v5;
  v7 = 0;
  v8 = v6 ^ [(MTLBuffer *)self->_private.visibilityResultBuffer hash];
  do
  {
    v8 ^= [-[MTLRenderPassColorAttachmentDescriptorArrayInternal _descriptorAtIndex:](self->_private.attachments _descriptorAtIndex:{v7), "hash"}] << v7;
    ++v7;
  }

  while (v7 != 10);
  numCustomSamplePositions = self->_private.numCustomSamplePositions;
  if (numCustomSamplePositions)
  {
    v8 ^= _MTLHashState(self->_private.customSamplePositions, 8 * numCustomSamplePositions);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v25) = 1;
    return v25;
  }

  v43 = v12;
  v44 = v11;
  v45 = v10;
  v46 = v9;
  v47 = v8;
  v48 = v7;
  v49 = v6;
  v50 = v5;
  v51 = v4;
  v52 = v3;
  v53 = v13;
  v54 = v14;
  Class = object_getClass(self);
  if (Class != object_getClass(equal) || self->_private.renderTargetArrayLength != *(equal + 7) || self->_private.imageBlockSampleLength != *(equal + 11) || self->_private.threadgroupMemoryLength != *(equal + 12) || self->_private.tileWidth != *(equal + 8) || self->_private.tileHeight != *(equal + 9) || self->_private.var0.defaultSampleCount != *(equal + 10) || self->_private.defaultColorSampleCount != *(equal + 5) || self->_private.renderTargetWidth != *(equal + 3) || self->_private.renderTargetHeight != *(equal + 4) || self->_private.visibilityResultType != *(equal + 25) || self->_private.visibilityResultBuffer != *(equal + 2) || self->_private.rasterizationRateMap != *(equal + 22) || self->_private.supportColorAttachmentMapping != *(equal + 208))
  {
    goto LABEL_62;
  }

  v18 = 0;
  p_private = &self->_private;
  v20 = equal + 8;
  do
  {
    v21 = p_private->attachments->_color_descriptors[v18];
    v22 = *(*v20 + 8 + v18 * 8);
    if (v21 == v22)
    {
      goto LABEL_24;
    }

    if (v21)
    {
      if (v22)
      {
        goto LABEL_23;
      }

      v23 = objc_alloc_init(MTLRenderPassColorAttachmentDescriptorInternal);
      v24 = (equal + 8);
      v22 = v23;
    }

    else
    {
      v23 = objc_alloc_init(MTLRenderPassColorAttachmentDescriptorInternal);
      v24 = &self->_private;
      v21 = v23;
    }

    v24->attachments->_color_descriptors[v18] = v23;
LABEL_23:
    v25 = [(MTLRenderPassColorAttachmentDescriptorInternal *)v21 isEqual:v22, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54];
    if (!v25)
    {
      return v25;
    }

LABEL_24:
    ++v18;
  }

  while (v18 != 8);
  attachments = p_private->attachments;
  depth_descriptor = p_private->attachments->_depth_descriptor;
  v28 = *v20;
  v29 = *(*v20 + 72);
  if (!(depth_descriptor | v29))
  {
    goto LABEL_41;
  }

  if (depth_descriptor)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29 == 0;
  }

  if (!v30)
  {
    v32 = objc_alloc_init(MTLRenderPassDepthAttachmentDescriptorInternal);
    v33 = &self->_private;
    depth_descriptor = v32;
    goto LABEL_38;
  }

  if (depth_descriptor)
  {
    v31 = v29 == 0;
  }

  else
  {
    v31 = 0;
  }

  if (v31)
  {
    v32 = objc_alloc_init(MTLRenderPassDepthAttachmentDescriptorInternal);
    v33 = (equal + 8);
    v29 = v32;
LABEL_38:
    v33->attachments->_depth_descriptor = v32;
  }

  v25 = [(MTLRenderPassDepthAttachmentDescriptorInternal *)depth_descriptor isEqual:v29, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52];
  if (v25)
  {
    attachments = p_private->attachments;
    v28 = *v20;
LABEL_41:
    stencil_descriptor = attachments->_stencil_descriptor;
    v35 = *(v28 + 80);
    if (!(stencil_descriptor | v35))
    {
      goto LABEL_55;
    }

    if (stencil_descriptor)
    {
      v36 = 1;
    }

    else
    {
      v36 = v35 == 0;
    }

    if (!v36)
    {
      v38 = objc_alloc_init(MTLRenderPassStencilAttachmentDescriptorInternal);
      stencil_descriptor = v38;
      goto LABEL_53;
    }

    if (stencil_descriptor)
    {
      v37 = v35 == 0;
    }

    else
    {
      v37 = 0;
    }

    if (v37)
    {
      v38 = objc_alloc_init(MTLRenderPassStencilAttachmentDescriptorInternal);
      p_private = (equal + 8);
      v35 = v38;
LABEL_53:
      p_private->attachments->_stencil_descriptor = v38;
    }

    v25 = [(MTLRenderPassStencilAttachmentDescriptorInternal *)stencil_descriptor isEqual:v35, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52];
    if (v25)
    {
LABEL_55:
      numCustomSamplePositions = self->_private.numCustomSamplePositions;
      if (numCustomSamplePositions != *(equal + 21))
      {
        goto LABEL_62;
      }

      if (numCustomSamplePositions)
      {
        v40 = (equal + 108);
        p_y = &self->_private.customSamplePositions[0].y;
        LOBYTE(v25) = 1;
        while (*(p_y - 1) == *(v40 - 1) && *p_y == *v40)
        {
          v40 += 2;
          p_y += 2;
          if (!--numCustomSamplePositions)
          {
            return v25;
          }
        }

LABEL_62:
        LOBYTE(v25) = 0;
      }

      else
      {
        LOBYTE(v25) = 1;
      }
    }
  }

  return v25;
}

- (void)setRasterizationRateMap:(id)map
{
  self->_private.rasterizationRateMap = map;

  mapCopy = map;
}

- (void)setVisibilityResultBuffer:(id)buffer
{
  self->_private.visibilityResultBuffer = buffer;

  bufferCopy = buffer;
}

- (void)setSamplePositions:(id *)positions count:(unint64_t)count
{
  positionsCopy = positions;
  if (count <= 8 && ((1 << count) & 0x115) != 0)
  {
    if (positions)
    {
      goto LABEL_5;
    }
  }

  else
  {
    MTLReportFailure(0, "[MTL4RenderPassDescriptor setSamplePositions:count:]", 403, @"count (%lu) is not a supported sample count for custom positions. count must be 0, 2, 4 or 8.", v4, v5, v6, v7, count);
    if (positionsCopy)
    {
      goto LABEL_5;
    }
  }

  if (count)
  {
    [(MTL4RenderPassDescriptor *)count setSamplePositions:a2 count:positions, count, v4, v5, v6, v7];
    return;
  }

LABEL_5:
  if (positionsCopy && count <= 8)
  {
    if (count)
    {
      v11 = 0;
      do
      {
        var0 = positionsCopy->var0;
        if (positionsCopy->var0 < 0.0 || var0 >= 1.0)
        {
          MTLReportFailure(0, "[MTL4RenderPassDescriptor setSamplePositions:count:]", 419, @"Provided sample position x-coodinate (%f) at index %u is not within the range [0,1."), v4, v5, v6, v7, COERCE__INT64(var0));
        }

        var1 = positionsCopy->var1;
        if (var1 < 0.0 || var1 >= 1.0)
        {
          MTLReportFailure(0, "[MTL4RenderPassDescriptor setSamplePositions:count:]", 421, @"Provided sample position y-coodinate (%f) at index %u is not within the range [0,1."), v4, v5, v6, v7, COERCE__INT64(var1));
        }

        v16 = *positionsCopy++;
        self->_private.customSamplePositions[v11++] = v16;
      }

      while (count != v11);
    }

    self->_private.numCustomSamplePositions = count;
  }
}

- (unint64_t)getSamplePositions:(id *)positions count:(unint64_t)count
{
  if (!positions && count)
  {
    [(MTL4RenderPassDescriptor *)count getSamplePositions:a2 count:0, count, v4, v5, v6, v7];
  }

  else if (!count)
  {
    goto LABEL_6;
  }

  if (self->_private.numCustomSamplePositions != count)
  {
    MTLReportFailure(0, "[MTL4RenderPassDescriptor getSamplePositions:count:]", 435, @"Non-zero count (%lu) does not match the number of programmed custom sample positions (%lu).", v4, v5, v6, v7, count);
  }

LABEL_6:
  result = self->_private.numCustomSamplePositions;
  if (positions && result == count)
  {
    if (count)
    {
      v12 = 0;
      do
      {
        positions[v12] = self->_private.customSamplePositions[v12];
        ++v12;
        result = self->_private.numCustomSamplePositions;
      }

      while (result > v12);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (MTLRenderPassDepthAttachmentDescriptor)depthAttachment
{
  if (!self->_private.attachments->_depth_descriptor)
  {
    v3 = objc_alloc_init(MTLRenderPassDepthAttachmentDescriptorInternal);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_private.attachments->_depth_descriptor, &v4, v3);
    if (v4)
    {
    }

    else
    {
      self->_private.attachments->_depth_descriptor = v3;
    }
  }

  return &self->_private.attachments->_depth_descriptor->super;
}

- (void)setDepthAttachment:(id)attachment
{
  if (attachment)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4RenderPassDescriptor *)isKindOfClass setDepthAttachment:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  attachments = self->_private.attachments;
  if (attachments->_depth_descriptor != attachment)
  {
    depth_descriptor = attachments->_depth_descriptor;
    self->_private.attachments->_depth_descriptor = [attachment copy];
  }
}

- (MTLRenderPassStencilAttachmentDescriptor)stencilAttachment
{
  if (!self->_private.attachments->_stencil_descriptor)
  {
    v3 = objc_alloc_init(MTLRenderPassStencilAttachmentDescriptorInternal);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_private.attachments->_stencil_descriptor, &v4, v3);
    if (v4)
    {
    }

    else
    {
      self->_private.attachments->_stencil_descriptor = v3;
    }
  }

  return &self->_private.attachments->_stencil_descriptor->super;
}

- (void)setStencilAttachment:(id)attachment
{
  if (attachment)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTL4RenderPassDescriptor *)isKindOfClass setStencilAttachment:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  attachments = self->_private.attachments;
  if (attachments->_stencil_descriptor != attachment)
  {
    stencil_descriptor = attachments->_stencil_descriptor;
    self->_private.attachments->_stencil_descriptor = [attachment copy];
  }
}

- (BOOL)validate:(id)validate width:(unint64_t *)width height:(unint64_t *)height
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  _MTLMessageContextBegin_(v13, "[MTL4RenderPassDescriptor validate:width:height:]", 548, validate, 11, "Render Pass Descriptor Validation");
  _MTLValidateRenderPassDescriptorCommon(v13, &self->_private.attachments, validate, width, height, v9, v10, v11);
  _MTLMessageContextEnd(v13);
  return 1;
}

@end