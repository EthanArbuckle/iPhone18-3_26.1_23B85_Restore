@interface MTLRenderPassDescriptorInternal
+ (id)renderPassDescriptor;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id)validate width:(unint64_t *)width height:(unint64_t *)height;
- (MTLRenderPassDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)depthAttachment;
- (id)formattedDescription:(unint64_t)description;
- (id)stencilAttachment;
- (unint64_t)getSamplePositions:(id *)positions count:(unint64_t)count;
- (unint64_t)hash;
- (void)dealloc;
- (void)setDepthAttachment:(id)attachment;
- (void)setRasterizationRateMap:(id)map;
- (void)setSamplePositions:(id *)positions count:(unint64_t)count;
- (void)setStencilAttachment:(id)attachment;
- (void)setVisibilityResultBuffer:(id)buffer;
@end

@implementation MTLRenderPassDescriptorInternal

- (MTLRenderPassDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLRenderPassDescriptorInternal;
  v2 = [(MTLRenderPassDescriptorInternal *)&v4 init];
  if (v2)
  {
    v2->_private.attachments = objc_alloc_init(MTLRenderPassColorAttachmentDescriptorArrayInternal);
    v2->_private.renderTargetHeight = 0;
    v2->_private.defaultColorSampleCount = 0;
    v2->_private.renderTargetWidth = 0;
    *&v2->_private.renderTargetArrayLength = 0u;
    *&v2->_private.tileHeight = 0u;
    *&v2->_private.imageBlockSampleLength = 0u;
    *&v2->_private.customSamplePositions[0].x = 0u;
    *&v2->_private.customSamplePositions[2].x = 0u;
    *&v2->_private.customSamplePositions[4].x = 0u;
    *&v2->_private.customSamplePositions[6].x = 0u;
    v2->_private.numCustomSamplePositions = 0;
    v2->_private.sampleBufferAttachments = objc_alloc_init(MTLRenderPassSampleBufferAttachmentDescriptorArrayInternal);
    v2->_private.visibilityResultType = 0;
    v2->_private.supportColorAttachmentMapping = 0;
  }

  return v2;
}

- (id)depthAttachment
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

  return self->_private.attachments->_depth_descriptor;
}

- (id)stencilAttachment
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

  return self->_private.attachments->_stencil_descriptor;
}

- (void)dealloc
{
  p_private = &self->_private;

  v4.receiver = self;
  v4.super_class = MTLRenderPassDescriptorInternal;
  [(MTLRenderPassDescriptorInternal *)&v4 dealloc];
}

+ (id)renderPassDescriptor
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)setDepthAttachment:(id)attachment
{
  if (attachment)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPassDescriptorInternal *)isKindOfClass setDepthAttachment:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  attachments = self->_private.attachments;
  if (attachments->_depth_descriptor != attachment)
  {
    depth_descriptor = attachments->_depth_descriptor;
    self->_private.attachments->_depth_descriptor = [attachment copy];
  }
}

- (void)setStencilAttachment:(id)attachment
{
  if (attachment)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPassDescriptorInternal *)isKindOfClass setStencilAttachment:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  attachments = self->_private.attachments;
  if (attachments->_stencil_descriptor != attachment)
  {
    stencil_descriptor = attachments->_stencil_descriptor;
    self->_private.attachments->_stencil_descriptor = [attachment copy];
  }
}

- (unint64_t)hash
{
  v2 = 0;
  v3 = 0;
  p_private = &self->_private;
  do
  {
    v5 = p_private->attachments->_color_descriptors[v2];
    if (v5)
    {
      v3 ^= _MTLHashState(&v5->_private, 0xB0uLL) << v2;
    }

    ++v2;
  }

  while (v2 != 8);
  attachments = p_private->attachments;
  depth_descriptor = p_private->attachments->_depth_descriptor;
  if (depth_descriptor)
  {
    v3 ^= _MTLHashState(&depth_descriptor->_private, 0xB0uLL) << 8;
    attachments = p_private->attachments;
  }

  stencil_descriptor = attachments->_stencil_descriptor;
  if (stencil_descriptor)
  {
    v3 ^= _MTLHashState(&stencil_descriptor->_private, 0xB0uLL) << 8;
  }

  v9 = [(MTLBuffer *)p_private->visibilityResultBuffer hash];
  v10 = veorq_s8(veorq_s8(*&p_private->renderTargetHeight, *&p_private->renderTargetArrayLength), veorq_s8(*&p_private->tileHeight, *&p_private->imageBlockSampleLength));
  v11 = *&veor_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) ^ p_private->renderTargetWidth ^ (p_private->fineGrainedBackgroundVisibilityEnabled ^ p_private->skipEmptyTilesOnClearEnabled) & 1 ^ v3 ^ p_private->pointCoordYFlipEnabled ^ (p_private->ditherEnabled ^ p_private->openGLModeEnabled) & 1 ^ v9;
  rasterizationRateMap = p_private->rasterizationRateMap;
  if (rasterizationRateMap)
  {
    v11 ^= [(MTLRasterizationRateMap *)rasterizationRateMap hash];
  }

  numCustomSamplePositions = p_private->numCustomSamplePositions;
  if (numCustomSamplePositions)
  {
    v11 ^= _MTLHashState(p_private->customSamplePositions, 8 * numCustomSamplePositions);
  }

  for (i = 0; i != 4; ++i)
  {
    v15 = p_private->sampleBufferAttachments->_sampleDescriptors[i];
    if (v15)
    {
      v11 ^= _MTLHashState(&v15->_private, 0x28uLL) << i;
    }
  }

  return p_private->visibilityResultType ^ p_private->supportColorAttachmentMapping ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(equal))
  {
    goto LABEL_3;
  }

  v7 = 0;
  selfCopy = self;
  p_private = &self->_private;
  v9 = equal + 48;
  do
  {
    v10 = p_private->attachments->_color_descriptors[v7];
    v11 = *(*v9 + 8 + v7 * 8);
    if (v10 == v11)
    {
      goto LABEL_24;
    }

    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v14 = objc_alloc_init(MTLRenderPassColorAttachmentDescriptorInternal);
      v15 = (equal + 48);
      v11 = v14;
    }

    else
    {
      if (v10)
      {
        v13 = 1;
      }

      else
      {
        v13 = v11 == 0;
      }

      if (v13)
      {
        goto LABEL_19;
      }

      v14 = objc_alloc_init(MTLRenderPassColorAttachmentDescriptorInternal);
      v15 = p_private;
      v10 = v14;
    }

    v15->attachments->_color_descriptors[v7] = v14;
LABEL_19:
    if (v11)
    {
      v16 = v10 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_3;
    }

    v6 = equalAttachmentPrivate(&v10->_private, &v11->_private);
    if (!v6)
    {
      return v6;
    }

LABEL_24:
    ++v7;
  }

  while (v7 != 8);
  attachments = p_private->attachments;
  depth_descriptor = p_private->attachments->_depth_descriptor;
  v19 = *v9;
  v20 = *(*v9 + 72);
  if (depth_descriptor != v20)
  {
    if (depth_descriptor)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v23 = objc_alloc_init(MTLRenderPassDepthAttachmentDescriptorInternal);
      v24 = (equal + 48);
      v20 = v23;
LABEL_36:
      v24->attachments->_depth_descriptor = v23;
    }

    else
    {
      if (depth_descriptor)
      {
        v22 = 1;
      }

      else
      {
        v22 = v20 == 0;
      }

      if (!v22)
      {
        v23 = objc_alloc_init(MTLRenderPassDepthAttachmentDescriptorInternal);
        v24 = p_private;
        depth_descriptor = v23;
        goto LABEL_36;
      }
    }

    if (v20)
    {
      v25 = depth_descriptor == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      goto LABEL_3;
    }

    v6 = equalAttachmentPrivate(&depth_descriptor->_private, &v20->_private);
    if (!v6)
    {
      return v6;
    }

    attachments = p_private->attachments;
    v19 = *v9;
  }

  stencil_descriptor = attachments->_stencil_descriptor;
  v27 = *(v19 + 80);
  if (stencil_descriptor != v27)
  {
    if (stencil_descriptor)
    {
      v28 = v27 == 0;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      v30 = objc_alloc_init(MTLRenderPassStencilAttachmentDescriptorInternal);
      v31 = (equal + 48);
      v27 = v30;
LABEL_54:
      v31->attachments->_stencil_descriptor = v30;
    }

    else
    {
      if (stencil_descriptor)
      {
        v29 = 1;
      }

      else
      {
        v29 = v27 == 0;
      }

      if (!v29)
      {
        v30 = objc_alloc_init(MTLRenderPassStencilAttachmentDescriptorInternal);
        v31 = p_private;
        stencil_descriptor = v30;
        goto LABEL_54;
      }
    }

    if (v27)
    {
      v32 = stencil_descriptor == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      goto LABEL_3;
    }

    v6 = equalAttachmentPrivate(&stencil_descriptor->_private, &v27->_private);
    if (!v6)
    {
      return v6;
    }
  }

  visibilityResultBuffer = p_private->visibilityResultBuffer;
  if (visibilityResultBuffer == *(equal + 7) || (v6 = [(MTLBuffer *)visibilityResultBuffer isEqual:?]) != 0)
  {
    if (p_private->ditherEnabled != *(equal + 90))
    {
      goto LABEL_3;
    }

    if (p_private->renderTargetWidth != *(equal + 8))
    {
      goto LABEL_3;
    }

    if (p_private->renderTargetHeight != *(equal + 9))
    {
      goto LABEL_3;
    }

    if (p_private->defaultColorSampleCount != *(equal + 10))
    {
      goto LABEL_3;
    }

    if (p_private->fineGrainedBackgroundVisibilityEnabled != *(equal + 88))
    {
      goto LABEL_3;
    }

    if (p_private->skipEmptyTilesOnClearEnabled != *(equal + 89))
    {
      goto LABEL_3;
    }

    if (p_private->openGLModeEnabled != *(equal + 91))
    {
      goto LABEL_3;
    }

    if (p_private->pointCoordYFlipEnabled != *(equal + 232))
    {
      goto LABEL_3;
    }

    if (p_private->renderTargetArrayLength != *(equal + 12))
    {
      goto LABEL_3;
    }

    if (p_private->tileWidth != *(equal + 13))
    {
      goto LABEL_3;
    }

    if (p_private->tileHeight != *(equal + 14))
    {
      goto LABEL_3;
    }

    if (p_private->imageBlockSampleLength != *(equal + 16))
    {
      goto LABEL_3;
    }

    if (p_private->threadgroupMemoryLength != *(equal + 17))
    {
      goto LABEL_3;
    }

    if (p_private->var0.defaultSampleCount != *(equal + 15))
    {
      goto LABEL_3;
    }

    numCustomSamplePositions = p_private->numCustomSamplePositions;
    if (numCustomSamplePositions != *(equal + 26))
    {
      goto LABEL_3;
    }

    if (numCustomSamplePositions)
    {
      v35 = (equal + 148);
      p_y = &selfCopy->_private.customSamplePositions[0].y;
      do
      {
        if (*(p_y - 1) != *(v35 - 1) || *p_y != *v35)
        {
          goto LABEL_3;
        }

        v35 += 2;
        p_y += 2;
        --numCustomSamplePositions;
      }

      while (numCustomSamplePositions);
    }

    rasterizationRateMap = p_private->rasterizationRateMap;
    if (rasterizationRateMap == *(equal + 27) || (v6 = [(MTLRasterizationRateMap *)rasterizationRateMap isEqual:?]) != 0)
    {
      v38 = 0;
      while (1)
      {
        v39 = p_private->sampleBufferAttachments->_sampleDescriptors[v38];
        v40 = *(*(equal + 28) + 8 + v38 * 8);
        if (v39 != v40)
        {
          break;
        }

LABEL_102:
        if (++v38 == 4)
        {
          if (p_private->visibilityResultType == *(equal + 30))
          {
            LOBYTE(v6) = p_private->supportColorAttachmentMapping == *(equal + 248);
            return v6;
          }

LABEL_3:
          LOBYTE(v6) = 0;
          return v6;
        }
      }

      if (v39)
      {
        v41 = v40 == 0;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        v43 = objc_alloc_init(MTLRenderPassSampleBufferAttachmentDescriptorInternal);
        p_sampleBufferAttachments = (equal + 224);
        v40 = v43;
LABEL_96:
        (*p_sampleBufferAttachments)->_sampleDescriptors[v38] = v43;
      }

      else
      {
        if (v39)
        {
          v42 = 1;
        }

        else
        {
          v42 = v40 == 0;
        }

        if (!v42)
        {
          v43 = objc_alloc_init(MTLRenderPassSampleBufferAttachmentDescriptorInternal);
          p_sampleBufferAttachments = &p_private->sampleBufferAttachments;
          v39 = v43;
          goto LABEL_96;
        }
      }

      if (v40)
      {
        v45 = v39 == 0;
      }

      else
      {
        v45 = 1;
      }

      if (v45)
      {
        goto LABEL_3;
      }

      v6 = equalSampleBufferPrivate(&v39->_private, &v40->_private);
      if (!v6)
      {
        return v6;
      }

      goto LABEL_102;
    }
  }

  return v6;
}

- (id)formattedDescription:(unint64_t)description
{
  v34[5] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  for (i = 0; i != 8; ++i)
  {
    v32[0] = v4;
    v32[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Color Attachment %u", i];
    [v5 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v32, 2)}];
    v7 = self->_private.attachments->_color_descriptors[i];
    if (v7)
    {
      p_private = &v7->_private;
    }

    else
    {
      p_private = &defaultColorAttachmentPrivate;
    }

    [v5 addObject:{colorAttachmentFormattedDescription(description + 4, p_private)}];
  }

  v31[0] = v4;
  v31[1] = @"Depth Attachment:";
  depth_descriptor = self->_private.attachments->_depth_descriptor;
  if (depth_descriptor)
  {
    v10 = &depth_descriptor->_private;
  }

  else
  {
    v10 = &defaultDepthAttachmentPrivate;
  }

  v31[2] = depthAttachmentFormattedDescription(description + 4, v10);
  v31[3] = v4;
  v31[4] = @"Stencil Attachment:";
  stencil_descriptor = self->_private.attachments->_stencil_descriptor;
  if (stencil_descriptor)
  {
    v12 = &stencil_descriptor->_private;
  }

  else
  {
    v12 = &defaultStencilAttachmentPrivate;
  }

  v31[5] = stencilAttachmentFormattedDescription(description + 4, v12);
  v31[6] = v4;
  v31[7] = @"visibilityResultBuffer =";
  visibilityResultBuffer = self->_private.visibilityResultBuffer;
  if (visibilityResultBuffer)
  {
    v14 = [(MTLBuffer *)visibilityResultBuffer formattedDescription:description + 4];
  }

  else
  {
    v14 = @"<null>";
  }

  v31[8] = v14;
  v31[9] = v4;
  v31[10] = @"renderTargetArrayLength =";
  v31[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.renderTargetArrayLength];
  v31[12] = v4;
  v31[13] = @"renderTargetWidth =";
  v31[14] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.renderTargetWidth];
  v31[15] = v4;
  v31[16] = @"renderTargetHeight =";
  v31[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.renderTargetHeight];
  v31[18] = v4;
  v31[19] = @"rasterizationRateMap =";
  rasterizationRateMap = self->_private.rasterizationRateMap;
  if (rasterizationRateMap)
  {
    v16 = [(MTLRasterizationRateMap *)rasterizationRateMap formattedDescription:description + 4];
  }

  else
  {
    v16 = @"<null>";
  }

  v31[20] = v16;
  v31[21] = v4;
  v17 = @"Reset";
  if (self->_private.visibilityResultType)
  {
    v17 = @"Accumulate";
  }

  v31[22] = @"visibilityResultType =";
  v31[23] = v17;
  v31[24] = v4;
  v31[25] = @"supportColorAttachmentMapping =";
  if (self->_private.supportColorAttachmentMapping)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v31[26] = v18;
  [v5 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v31, 27)}];
  v19 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v20 = [@"\n" stringByPaddingToLength:description + 8 withString:@" " startingAtIndex:0];
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:69];
  v34[0] = v19;
  v34[1] = @"Custom Sample Positions:";
  v34[2] = v20;
  v34[3] = @"number of positions = ";
  v34[4] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.numCustomSamplePositions];
  [v21 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v34, 5)}];
  if (self->_private.numCustomSamplePositions)
  {
    v22 = 0;
    p_y = &self->_private.customSamplePositions[0].y;
    do
    {
      v33[0] = v20;
      v33[1] = @"sample ";
      v33[2] = [MEMORY[0x1E696AD98] numberWithInt:v22];
      v33[3] = @": <";
      *&v24 = *(p_y - 1);
      v33[4] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
      v33[5] = @",";
      v25 = *p_y;
      p_y += 2;
      LODWORD(v26) = v25;
      v33[6] = [MEMORY[0x1E696AD98] numberWithFloat:v26];
      v33[7] = @">";
      [v21 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v33, 8)}];
      ++v22;
    }

    while (self->_private.numCustomSamplePositions > v22);
  }

  [v5 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@\n", objc_msgSend(v21, "componentsJoinedByString:", &stru_1EF478240))}];
  v30.receiver = self;
  v30.super_class = MTLRenderPassDescriptorInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLRenderPassDescriptorInternal description](&v30, sel_description), objc_msgSend(v5, "componentsJoinedByString:", @" "];
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = 0;
  p_private = &self->_private;
  v8 = v5 + 48;
  do
  {
    v9 = p_private->attachments->_color_descriptors[v6];
    if (v9)
    {
      *(*v8 + 8 + v6 * 8) = [(MTLRenderPassColorAttachmentDescriptorInternal *)v9 copyWithZone:zone];
    }

    ++v6;
  }

  while (v6 != 8);
  attachments = p_private->attachments;
  depth_descriptor = p_private->attachments->_depth_descriptor;
  if (depth_descriptor)
  {
    *(*v8 + 72) = [(MTLRenderPassDepthAttachmentDescriptorInternal *)depth_descriptor copyWithZone:zone];
    attachments = p_private->attachments;
  }

  stencil_descriptor = attachments->_stencil_descriptor;
  if (stencil_descriptor)
  {
    *(*v8 + 80) = [(MTLRenderPassStencilAttachmentDescriptorInternal *)stencil_descriptor copyWithZone:zone];
  }

  *(v5 + 56) = p_private->visibilityResultBuffer;
  *(v5 + 64) = *&p_private->renderTargetWidth;
  *(v5 + 80) = p_private->defaultColorSampleCount;
  *(v5 + 88) = *&p_private->fineGrainedBackgroundVisibilityEnabled;
  *(v5 + 232) = p_private->pointCoordYFlipEnabled;
  *(v5 + 96) = *&p_private->renderTargetArrayLength;
  *(v5 + 112) = p_private->tileHeight;
  *(v5 + 128) = *&p_private->imageBlockSampleLength;
  *(v5 + 120) = p_private->var0.defaultSampleCount;
  numCustomSamplePositions = p_private->numCustomSamplePositions;
  *(v5 + 208) = numCustomSamplePositions;
  if (numCustomSamplePositions)
  {
    v14 = 0;
    do
    {
      *(v5 + 144 + 8 * v14) = p_private->customSamplePositions[v14];
      ++v14;
    }

    while (p_private->numCustomSamplePositions > v14);
  }

  for (i = 0; i != 4; ++i)
  {
    v16 = p_private->sampleBufferAttachments->_sampleDescriptors[i];
    if (v16)
    {
      *(*(v5 + 224) + 8 + i * 8) = [(MTLRenderPassSampleBufferAttachmentDescriptorInternal *)v16 copyWithZone:zone];
    }
  }

  *(v5 + 216) = p_private->rasterizationRateMap;
  *(v5 + 240) = p_private->visibilityResultType;
  *(v5 + 248) = p_private->supportColorAttachmentMapping;
  return v5;
}

- (void)setVisibilityResultBuffer:(id)buffer
{
  if (buffer && MTLFailureTypeGetEnabled(1uLL))
  {
    [(MTLRenderPassDescriptorInternal *)buffer setVisibilityResultBuffer:v5, v6, v7, v8, v9, v10, v11, v14];
  }

  p_private = &self->_private;
  if (p_private->visibilityResultBuffer != buffer)
  {
    bufferCopy = buffer;

    p_private->visibilityResultBuffer = bufferCopy;
  }
}

- (void)setRasterizationRateMap:(id)map
{
  p_private = &self->_private;
  rasterizationRateMap = self->_private.rasterizationRateMap;
  if (rasterizationRateMap != map)
  {
    v5 = rasterizationRateMap;
    p_private->rasterizationRateMap = map;
  }
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
    MTLReportFailure(0, "[MTLRenderPassDescriptorInternal setSamplePositions:count:]", 2363, @"count (%lu) is not a supported sample count for custom positions.", v4, v5, v6, v7, count);
    if (positionsCopy)
    {
      goto LABEL_5;
    }
  }

  if (count)
  {
    [(MTLRenderPassDescriptorInternal *)count setSamplePositions:a2 count:positions, count, v4, v5, v6, v7];
    return;
  }

LABEL_5:
  if (positionsCopy && count <= 8)
  {
    if (count)
    {
      v11 = 0;
      p_renderTargetArrayLength = &self->_private.renderTargetArrayLength;
      do
      {
        var0 = positionsCopy->var0;
        if (positionsCopy->var0 < 0.0 || var0 >= 1.0)
        {
          MTLReportFailure(0, "[MTLRenderPassDescriptorInternal setSamplePositions:count:]", 2374, @"Provided sample position x-coodinate (%f) at index %u is not within the range [0,1."), v4, v5, v6, v7, COERCE__INT64(var0));
        }

        var1 = positionsCopy->var1;
        if (var1 < 0.0 || var1 >= 1.0)
        {
          MTLReportFailure(0, "[MTLRenderPassDescriptorInternal setSamplePositions:count:]", 2375, @"Provided sample position y-coodinate (%f) at index %u is not within the range [0,1."), v4, v5, v6, v7, COERCE__INT64(var1));
        }

        v17 = *positionsCopy++;
        p_renderTargetArrayLength[6] = v17;
        ++v11;
        ++p_renderTargetArrayLength;
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
    [(MTLRenderPassDescriptorInternal *)count getSamplePositions:a2 count:0, count, v4, v5, v6, v7];
  }

  else if (!count)
  {
    goto LABEL_6;
  }

  if (self->_private.numCustomSamplePositions != count)
  {
    MTLReportFailure(0, "[MTLRenderPassDescriptorInternal getSamplePositions:count:]", 2385, @"Non-zero count (%lu) does not match the number of programmed custom sample positions (%lu).", v4, v5, v6, v7, count);
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

- (BOOL)validate:(id)validate width:(unint64_t *)width height:(unint64_t *)height
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  _MTLMessageContextBegin_(v13, "[MTLRenderPassDescriptorInternal validate:width:height:]", 2401, validate, 11, "Render Pass Descriptor Validation");
  _MTLValidateRenderPassDescriptorCommon(v13, &self->_private.attachments, validate, width, height, v9, v10, v11);
  _MTLMessageContextEnd(v13);
  return 1;
}

- (void)setVisibilityResultBuffer:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF5054C8] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLRenderPassDescriptorInternal setVisibilityResultBuffer:]", 2157, @"buffer is not a MTLBuffer.", v9, v10, v11, v12, a9);
  }
}

@end