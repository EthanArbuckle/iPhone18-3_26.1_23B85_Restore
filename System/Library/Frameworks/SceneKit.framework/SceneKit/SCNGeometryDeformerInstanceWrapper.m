@interface SCNGeometryDeformerInstanceWrapper
- (MTLComputeCommandEncoder)currentComputeEncoder;
- (__n128)_currentFrustumInfo;
- (__n128)_currentTransforms;
- (unint64_t)_currentFrameHash;
- (void)configureStageInputOutputDescriptor:(id)a3 withDeformerFunction:(id)a4;
- (void)dealloc;
- (void)initWithWrappedInstanceForStack:(void *)a3 deformer:(uint64_t)a4 node:(uint64_t)a5 outputs:(uint64_t)a6 computeVertexCount:(const void *)a7 stageInputOutputDescriptors:;
- (void)setStageInputOutputBuffersToComputeEncoder:(SCNMTLComputeCommandEncoder *)a3;
- (void)setStageInputOutputBuffersToCurrentComputeEncoder;
@end

@implementation SCNGeometryDeformerInstanceWrapper

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNGeometryDeformerInstanceWrapper;
  [(SCNGeometryDeformerInstanceWrapper *)&v3 dealloc];
}

- (void)configureStageInputOutputDescriptor:(id)a3 withDeformerFunction:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [a4 stageInputAttributes];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 attributeIndex])
        {
          if ([v11 attributeIndex] == 3)
          {
            v12 = *&self->_stageInputOutputDescriptors.dstPositions.bufferAttributeOffset;
            v20 = *&self->_stageInputOutputDescriptors.dstPositions.isActive;
            v21 = v12;
            v13 = a3;
            v14 = 3;
          }

          else if ([v11 attributeIndex] == 1)
          {
            v16 = *&self->_stageInputOutputDescriptors.srcNormals.bufferAttributeOffset;
            v20 = *&self->_stageInputOutputDescriptors.srcNormals.isActive;
            v21 = v16;
            v13 = a3;
            v14 = 1;
          }

          else if ([v11 attributeIndex] == 4)
          {
            v17 = *&self->_stageInputOutputDescriptors.dstNormals.bufferAttributeOffset;
            v20 = *&self->_stageInputOutputDescriptors.dstNormals.isActive;
            v21 = v17;
            v13 = a3;
            v14 = 4;
          }

          else if ([v11 attributeIndex] == 2)
          {
            v18 = *&self->_stageInputOutputDescriptors.srcTangents.bufferAttributeOffset;
            v20 = *&self->_stageInputOutputDescriptors.srcTangents.isActive;
            v21 = v18;
            v13 = a3;
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
            v13 = a3;
            v14 = 5;
          }
        }

        else
        {
          v15 = *&self->_stageInputOutputDescriptors.srcPositions.bufferAttributeOffset;
          v20 = *&self->_stageInputOutputDescriptors.srcPositions.isActive;
          v21 = v15;
          v13 = a3;
          v14 = 0;
        }

        _configureStageInputOutputDescriptorWithDeformerFunction(v13, v14, &v20);
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }
}

- (unint64_t)_currentFrameHash
{
  currentUpdateRenderContext = self->_stack->_currentUpdateRenderContext;
  v3 = [(SCNMTLRenderContext *)currentUpdateRenderContext engineContext];
  SystemTime = C3DEngineContextGetSystemTime(v3);
  v5 = [(SCNMTLOpenSubdivComputeEvaluator *)currentUpdateRenderContext computeEvaluator];
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ currentUpdateRenderContext)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ currentUpdateRenderContext)));
  v7 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&SystemTime) ^ ((0xC6A4A7935BD1E995 * *&SystemTime) >> 47))) ^ 0x35253C9ADE8F4CA8 ^ (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))));
  return (0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v7 ^ (v7 >> 47))) >> 47);
}

- (__n128)_currentTransforms
{
  v2 = *(a1 + 8);
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
  v2 = *(a1 + 8);
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

- (void)setStageInputOutputBuffersToComputeEncoder:(SCNMTLComputeCommandEncoder *)a3
{
  if (self->_stageInputOutputDescriptors.srcPositions.isActive)
  {
    srcPositions = self->_currentUpdateBuffers.srcPositions;
    if (a3->_buffers[10] == srcPositions)
    {
      if (!a3->_offsets[10])
      {
        goto LABEL_6;
      }
    }

    else
    {
      a3->_buffers[10] = srcPositions;
    }

    a3->_offsets[10] = 0;
    a3->_buffersToBind[0] |= 0x400uLL;
  }

LABEL_6:
  if (!self->_stageInputOutputDescriptors.dstPositions.isActive)
  {
    goto LABEL_11;
  }

  dstPositions = self->_currentUpdateBuffers.dstPositions;
  if (a3->_buffers[13] == dstPositions)
  {
    if (!a3->_offsets[13])
    {
      goto LABEL_11;
    }
  }

  else
  {
    a3->_buffers[13] = dstPositions;
  }

  a3->_offsets[13] = 0;
  a3->_buffersToBind[0] |= 0x2000uLL;
LABEL_11:
  if (!self->_stageInputOutputDescriptors.srcNormals.isActive)
  {
    goto LABEL_16;
  }

  srcNormals = self->_currentUpdateBuffers.srcNormals;
  if (a3->_buffers[11] == srcNormals)
  {
    if (!a3->_offsets[11])
    {
      goto LABEL_16;
    }
  }

  else
  {
    a3->_buffers[11] = srcNormals;
  }

  a3->_offsets[11] = 0;
  a3->_buffersToBind[0] |= 0x800uLL;
LABEL_16:
  if (!self->_stageInputOutputDescriptors.dstNormals.isActive)
  {
    goto LABEL_21;
  }

  dstNormals = self->_currentUpdateBuffers.dstNormals;
  if (a3->_buffers[14] == dstNormals)
  {
    if (!a3->_offsets[14])
    {
      goto LABEL_21;
    }
  }

  else
  {
    a3->_buffers[14] = dstNormals;
  }

  a3->_offsets[14] = 0;
  a3->_buffersToBind[0] |= 0x4000uLL;
LABEL_21:
  if (!self->_stageInputOutputDescriptors.srcTangents.isActive)
  {
    goto LABEL_26;
  }

  srcTangents = self->_currentUpdateBuffers.srcTangents;
  if (a3->_buffers[12] == srcTangents)
  {
    if (!a3->_offsets[12])
    {
      goto LABEL_26;
    }
  }

  else
  {
    a3->_buffers[12] = srcTangents;
  }

  a3->_offsets[12] = 0;
  a3->_buffersToBind[0] |= 0x1000uLL;
LABEL_26:
  if (!self->_stageInputOutputDescriptors.dstTangents.isActive)
  {
    return;
  }

  dstTangents = self->_currentUpdateBuffers.dstTangents;
  if (a3->_buffers[15] == dstTangents)
  {
    if (!a3->_offsets[15])
    {
      return;
    }
  }

  else
  {
    a3->_buffers[15] = dstTangents;
  }

  a3->_offsets[15] = 0;
  a3->_buffersToBind[0] |= 0x8000uLL;
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

- (void)initWithWrappedInstanceForStack:(void *)a3 deformer:(uint64_t)a4 node:(uint64_t)a5 outputs:(uint64_t)a6 computeVertexCount:(const void *)a7 stageInputOutputDescriptors:
{
  if (!a1)
  {
    return 0;
  }

  v16.receiver = a1;
  v16.super_class = SCNGeometryDeformerInstanceWrapper;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = v13;
  if (v13)
  {
    v13[1] = a2;
    v13[2] = a3;
    memcpy(v13 + 4, a7, 0x180uLL);
    v14[3] = [a3 newDeformerInstanceForNode:a4 outputs:a5 computeVertexCount:a6 context:v14];
  }

  return v14;
}

@end