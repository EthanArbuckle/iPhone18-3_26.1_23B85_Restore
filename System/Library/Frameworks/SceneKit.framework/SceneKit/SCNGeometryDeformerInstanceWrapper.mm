@interface SCNGeometryDeformerInstanceWrapper
- (MTLComputeCommandEncoder)currentComputeEncoder;
- (__n128)_currentFrustumInfo;
- (__n128)_currentTransforms;
- (unint64_t)_currentFrameHash;
- (void)configureStageInputOutputDescriptor:(id)descriptor withDeformerFunction:(id)function;
- (void)dealloc;
- (void)initWithWrappedInstanceForStack:(void *)stack deformer:(uint64_t)deformer node:(uint64_t)node outputs:(uint64_t)outputs computeVertexCount:(const void *)count stageInputOutputDescriptors:;
- (void)setStageInputOutputBuffersToComputeEncoder:(SCNMTLComputeCommandEncoder *)encoder;
- (void)setStageInputOutputBuffersToCurrentComputeEncoder;
@end

@implementation SCNGeometryDeformerInstanceWrapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNGeometryDeformerInstanceWrapper;
  [(SCNGeometryDeformerInstanceWrapper *)&v3 dealloc];
}

- (void)configureStageInputOutputDescriptor:(id)descriptor withDeformerFunction:(id)function
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  stageInputAttributes = [function stageInputAttributes];
  v7 = [stageInputAttributes countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(stageInputAttributes);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 attributeIndex])
        {
          if ([v11 attributeIndex] == 3)
          {
            v12 = *&self->_stageInputOutputDescriptors.dstPositions.bufferAttributeOffset;
            v20 = *&self->_stageInputOutputDescriptors.dstPositions.isActive;
            v21 = v12;
            descriptorCopy6 = descriptor;
            v14 = 3;
          }

          else if ([v11 attributeIndex] == 1)
          {
            v16 = *&self->_stageInputOutputDescriptors.srcNormals.bufferAttributeOffset;
            v20 = *&self->_stageInputOutputDescriptors.srcNormals.isActive;
            v21 = v16;
            descriptorCopy6 = descriptor;
            v14 = 1;
          }

          else if ([v11 attributeIndex] == 4)
          {
            v17 = *&self->_stageInputOutputDescriptors.dstNormals.bufferAttributeOffset;
            v20 = *&self->_stageInputOutputDescriptors.dstNormals.isActive;
            v21 = v17;
            descriptorCopy6 = descriptor;
            v14 = 4;
          }

          else if ([v11 attributeIndex] == 2)
          {
            v18 = *&self->_stageInputOutputDescriptors.srcTangents.bufferAttributeOffset;
            v20 = *&self->_stageInputOutputDescriptors.srcTangents.isActive;
            v21 = v18;
            descriptorCopy6 = descriptor;
            v14 = 2;
          }

          else
          {
            if ([v11 attributeIndex] != 5)
            {
              continue;
            }

            v19 = *&self->_stageInputOutputDescriptors.dstTangents.bufferAttributeOffset;
            v20 = *&self->_stageInputOutputDescriptors.dstTangents.isActive;
            v21 = v19;
            descriptorCopy6 = descriptor;
            v14 = 5;
          }
        }

        else
        {
          v15 = *&self->_stageInputOutputDescriptors.srcPositions.bufferAttributeOffset;
          v20 = *&self->_stageInputOutputDescriptors.srcPositions.isActive;
          v21 = v15;
          descriptorCopy6 = descriptor;
          v14 = 0;
        }

        _configureStageInputOutputDescriptorWithDeformerFunction(descriptorCopy6, v14, &v20);
      }

      v8 = [stageInputAttributes countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }
}

- (unint64_t)_currentFrameHash
{
  currentUpdateRenderContext = self->_stack->_currentUpdateRenderContext;
  engineContext = [(SCNMTLRenderContext *)currentUpdateRenderContext engineContext];
  SystemTime = C3DEngineContextGetSystemTime(engineContext);
  computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)currentUpdateRenderContext computeEvaluator];
  v6 = 0x9DDFEA08EB382D69 * (computeEvaluator ^ ((0x9DDFEA08EB382D69 * (computeEvaluator ^ currentUpdateRenderContext)) >> 47) ^ (0x9DDFEA08EB382D69 * (computeEvaluator ^ currentUpdateRenderContext)));
  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&SystemTime) ^ ((0xC6A4A7935BD1E995 * *&SystemTime) >> 47))) ^ 0x35253C9ADE8F4CA8 ^ (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))));
  return (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
}

- (__n128)_currentTransforms
{
  v2 = *(self + 8);
  v3 = *(v2 + 560);
  *(a2 + 128) = *(v2 + 544);
  *(a2 + 144) = v3;
  v4 = *(v2 + 592);
  *(a2 + 160) = *(v2 + 576);
  *(a2 + 176) = v4;
  v5 = *(v2 + 496);
  *(a2 + 64) = *(v2 + 480);
  *(a2 + 80) = v5;
  v6 = *(v2 + 528);
  *(a2 + 96) = *(v2 + 512);
  *(a2 + 112) = v6;
  v7 = *(v2 + 432);
  *a2 = *(v2 + 416);
  *(a2 + 16) = v7;
  result = *(v2 + 448);
  v9 = *(v2 + 464);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  return result;
}

- (__n128)_currentFrustumInfo
{
  v2 = *(self + 8);
  v3 = *(v2 + 688);
  *(a2 + 64) = *(v2 + 672);
  *(a2 + 80) = v3;
  *(a2 + 96) = *(v2 + 704);
  v4 = *(v2 + 624);
  *a2 = *(v2 + 608);
  *(a2 + 16) = v4;
  result = *(v2 + 656);
  *(a2 + 32) = *(v2 + 640);
  *(a2 + 48) = result;
  return result;
}

- (void)setStageInputOutputBuffersToComputeEncoder:(SCNMTLComputeCommandEncoder *)encoder
{
  if (self->_stageInputOutputDescriptors.srcPositions.isActive)
  {
    srcPositions = self->_currentUpdateBuffers.srcPositions;
    if (encoder->_buffers[10] == srcPositions)
    {
      if (!encoder->_offsets[10])
      {
        goto LABEL_6;
      }
    }

    else
    {
      encoder->_buffers[10] = srcPositions;
    }

    encoder->_offsets[10] = 0;
    encoder->_buffersToBind[0] |= 0x400uLL;
  }

LABEL_6:
  if (!self->_stageInputOutputDescriptors.dstPositions.isActive)
  {
    goto LABEL_11;
  }

  dstPositions = self->_currentUpdateBuffers.dstPositions;
  if (encoder->_buffers[13] == dstPositions)
  {
    if (!encoder->_offsets[13])
    {
      goto LABEL_11;
    }
  }

  else
  {
    encoder->_buffers[13] = dstPositions;
  }

  encoder->_offsets[13] = 0;
  encoder->_buffersToBind[0] |= 0x2000uLL;
LABEL_11:
  if (!self->_stageInputOutputDescriptors.srcNormals.isActive)
  {
    goto LABEL_16;
  }

  srcNormals = self->_currentUpdateBuffers.srcNormals;
  if (encoder->_buffers[11] == srcNormals)
  {
    if (!encoder->_offsets[11])
    {
      goto LABEL_16;
    }
  }

  else
  {
    encoder->_buffers[11] = srcNormals;
  }

  encoder->_offsets[11] = 0;
  encoder->_buffersToBind[0] |= 0x800uLL;
LABEL_16:
  if (!self->_stageInputOutputDescriptors.dstNormals.isActive)
  {
    goto LABEL_21;
  }

  dstNormals = self->_currentUpdateBuffers.dstNormals;
  if (encoder->_buffers[14] == dstNormals)
  {
    if (!encoder->_offsets[14])
    {
      goto LABEL_21;
    }
  }

  else
  {
    encoder->_buffers[14] = dstNormals;
  }

  encoder->_offsets[14] = 0;
  encoder->_buffersToBind[0] |= 0x4000uLL;
LABEL_21:
  if (!self->_stageInputOutputDescriptors.srcTangents.isActive)
  {
    goto LABEL_26;
  }

  srcTangents = self->_currentUpdateBuffers.srcTangents;
  if (encoder->_buffers[12] == srcTangents)
  {
    if (!encoder->_offsets[12])
    {
      goto LABEL_26;
    }
  }

  else
  {
    encoder->_buffers[12] = srcTangents;
  }

  encoder->_offsets[12] = 0;
  encoder->_buffersToBind[0] |= 0x1000uLL;
LABEL_26:
  if (!self->_stageInputOutputDescriptors.dstTangents.isActive)
  {
    return;
  }

  dstTangents = self->_currentUpdateBuffers.dstTangents;
  if (encoder->_buffers[15] == dstTangents)
  {
    if (!encoder->_offsets[15])
    {
      return;
    }
  }

  else
  {
    encoder->_buffers[15] = dstTangents;
  }

  encoder->_offsets[15] = 0;
  encoder->_buffersToBind[0] |= 0x8000uLL;
}

- (void)setStageInputOutputBuffersToCurrentComputeEncoder
{
  currentUpdateComputeEncoder = self->_currentUpdateComputeEncoder;
  if (!currentUpdateComputeEncoder)
  {
    currentUpdateComputeEncoder = (*(self->_currentUpdateComputeEncoderProvider + 2))();
    self->_currentUpdateComputeEncoder = currentUpdateComputeEncoder;
  }

  if (self->_stageInputOutputDescriptors.srcPositions.isActive)
  {
    [(MTLComputeCommandEncoder *)currentUpdateComputeEncoder setBuffer:self->_currentUpdateBuffers.srcPositions offset:0 atIndex:10];
  }

  if (self->_stageInputOutputDescriptors.dstPositions.isActive)
  {
    [(MTLComputeCommandEncoder *)self->_currentUpdateComputeEncoder setBuffer:self->_currentUpdateBuffers.dstPositions offset:0 atIndex:13];
  }

  if (self->_stageInputOutputDescriptors.srcNormals.isActive)
  {
    [(MTLComputeCommandEncoder *)self->_currentUpdateComputeEncoder setBuffer:self->_currentUpdateBuffers.srcNormals offset:0 atIndex:11];
  }

  if (self->_stageInputOutputDescriptors.dstNormals.isActive)
  {
    [(MTLComputeCommandEncoder *)self->_currentUpdateComputeEncoder setBuffer:self->_currentUpdateBuffers.dstNormals offset:0 atIndex:14];
  }

  if (self->_stageInputOutputDescriptors.srcTangents.isActive)
  {
    [(MTLComputeCommandEncoder *)self->_currentUpdateComputeEncoder setBuffer:self->_currentUpdateBuffers.srcTangents offset:0 atIndex:12];
  }

  if (self->_stageInputOutputDescriptors.dstTangents.isActive)
  {
    v4 = self->_currentUpdateComputeEncoder;
    dstTangents = self->_currentUpdateBuffers.dstTangents;

    [(MTLComputeCommandEncoder *)v4 setBuffer:dstTangents offset:0 atIndex:15];
  }
}

- (MTLComputeCommandEncoder)currentComputeEncoder
{
  result = self->_currentUpdateComputeEncoder;
  if (!result)
  {
    result = (*(self->_currentUpdateComputeEncoderProvider + 2))();
    self->_currentUpdateComputeEncoder = result;
  }

  return result;
}

- (void)initWithWrappedInstanceForStack:(void *)stack deformer:(uint64_t)deformer node:(uint64_t)node outputs:(uint64_t)outputs computeVertexCount:(const void *)count stageInputOutputDescriptors:
{
  if (!self)
  {
    return 0;
  }

  v16.receiver = self;
  v16.super_class = SCNGeometryDeformerInstanceWrapper;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = v13;
  if (v13)
  {
    v13[1] = a2;
    v13[2] = stack;
    memcpy(v13 + 4, count, 0x180uLL);
    v14[3] = [stack newDeformerInstanceForNode:deformer outputs:node computeVertexCount:outputs context:v14];
  }

  return v14;
}

@end