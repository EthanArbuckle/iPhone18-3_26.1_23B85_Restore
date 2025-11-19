@interface MTLTileRenderPipelineDescriptorInternal
- (BOOL)isEqual:(id)a3;
- (BOOL)validateWithDevice:(id)a3 error:(id *)a4;
- (MTLTileRenderPipelineDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (id)linkedFunctions;
- (id)newSerializedTileDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5;
- (uint64_t)setTextureWriteFPRoundingMode:(uint64_t)result;
- (uint64_t)textureWriteFPRoundingMode;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
- (void)setBinaryArchives:(id)a3;
- (void)setGpuCompilerSPIOptions:(id)a3;
- (void)setInsertLibraries:(id)a3;
- (void)setLabel:(id)a3;
- (void)setLinkedFunctions:(id)a3;
- (void)setMaxTotalThreadsPerThreadgroup:(unint64_t)a3;
- (void)setName:(id)a3;
- (void)setPluginData:(id)a3;
- (void)setPreloadedLibraries:(id)a3;
- (void)setProfileControl:(id)a3;
- (void)setRequiredThreadsPerThreadgroup:(id *)a3;
- (void)setTileFunction:(id)a3;
- (void)validateWithDevice:(id)a3;
@end

@implementation MTLTileRenderPipelineDescriptorInternal

- (MTLTileRenderPipelineDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLTileRenderPipelineDescriptorInternal;
  v2 = [(MTLTileRenderPipelineDescriptorInternal *)&v4 init];
  if (v2)
  {
    v2->_private.attachments = objc_alloc_init(MTLTileRenderPipelineColorAttachmentDescriptorArrayInternal);
    v2->_private.var0.sampleCount = 1;
    v2->_private.threadgroupSizeMatchesTileSize = 0;
    v2->_private.colorSampleCount = 0;
    v2->_private.tileBuffers = objc_alloc_init(MTLPipelineBufferDescriptorArrayInternal);
    v2->_private.maxTotalThreadsPerThreadgroup = 0;
    v2->_private.textureWriteRoundingMode = 0;
    v2->_private.linkedFunctions = 0;
    v2->_private.supportAddingBinaryFunctions = 0;
    v2->_private.maxStackCallDepth = 1;
    v2->_private.profileControl = 0;
    v2->_private.preloadedLibraries = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_private.maxAccelerationStructureTraversalDepth = 0;
    v2->_private.shaderValidation = 0;
    v2->_private.shaderValidationState = 0;
    v2->_private.requiredThreadsPerThreadgroup.height = 0;
    v2->_private.requiredThreadsPerThreadgroup.depth = 0;
    v2->_private.requiredThreadsPerThreadgroup.width = 0;
  }

  return v2;
}

- (void)dealloc
{
  p_private = &self->_private;

  v4.receiver = self;
  v4.super_class = MTLTileRenderPipelineDescriptorInternal;
  [(MTLTileRenderPipelineDescriptorInternal *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    p_private = &self->_private;
    v9 = (v5 + 56);
    do
    {
      *(*v9 + 8 + v7 * 8) = [(MTLTileRenderPipelineColorAttachmentDescriptorInternal *)p_private->attachments->_descriptors[v7] copyWithZone:a3];
      ++v7;
    }

    while (v7 != 8);
    *(v6 + 64) = p_private->var0.sampleCount;
    *(v6 + 104) = p_private->colorSampleCount;
    *(v6 + 72) = [(NSString *)p_private->label copyWithZone:a3];
    *(v6 + 248) = [(NSString *)p_private->name copyWithZone:a3];
    v10 = 0;
    *(v6 + 80) = p_private->tileFunction;
    *(v6 + 88) = p_private->threadgroupSizeMatchesTileSize;
    do
    {
      *(*(v6 + 112) + 8 + v10 * 8) = [(MTLPipelineBufferDescriptorInternal *)p_private->tileBuffers->_descriptors[v10] copyWithZone:a3];
      ++v10;
    }

    while (v10 != 31);
    *(v6 + 120) = p_private->maxTotalThreadsPerThreadgroup;
    pluginData = p_private->pluginData;
    *(v6 + 128) = p_private->textureWriteRoundingMode;
    *(v6 + 136) = pluginData;
    *(v6 + 144) = [(NSArray *)p_private->binaryArchives copy];
    *(v6 + 152) = [(MTLLinkedFunctions *)p_private->linkedFunctions copy];
    v12 = [(NSArray *)p_private->preloadedLibraries copy];
    maxStackCallDepth = p_private->maxStackCallDepth;
    *(v6 + 160) = v12;
    *(v6 + 168) = maxStackCallDepth;
    *(v6 + 176) = p_private->supportAddingBinaryFunctions;
    v14 = [(MTLProfileControl *)p_private->profileControl copy];
    maxAccelerationStructureTraversalDepth = p_private->maxAccelerationStructureTraversalDepth;
    gpuCompilerSPIOptions = p_private->gpuCompilerSPIOptions;
    *(v6 + 184) = v14;
    *(v6 + 192) = maxAccelerationStructureTraversalDepth;
    *(v6 + 200) = [(NSDictionary *)gpuCompilerSPIOptions copy];
    *(v6 + 208) = *&p_private->shaderValidation;
    depth = p_private->requiredThreadsPerThreadgroup.depth;
    *(v6 + 224) = *&p_private->requiredThreadsPerThreadgroup.width;
    *(v6 + 240) = depth;
  }

  return v6;
}

- (id)formattedDescription:(unint64_t)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  [@"\n" stringByPaddingToLength:a3 + 8 withString:@" " startingAtIndex:0];
  v31 = 0;
  v29 = self;
  p_private = &self->_private;
  requiredThreadsPerThreadgroup = self->_private.requiredThreadsPerThreadgroup;
  MTLSizeToNSArray(&requiredThreadsPerThreadgroup, &v31);
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  v40[0] = v5;
  v40[1] = @"label =";
  name = @"<none>";
  sampleCount = self->_private.var0.sampleCount;
  label = self->_private.label;
  if (!label)
  {
    label = @"<none>";
  }

  v40[2] = label;
  v40[3] = v5;
  if (self->_private.name)
  {
    name = self->_private.name;
  }

  v40[4] = @"name =";
  v40[5] = name;
  v40[6] = v5;
  v40[7] = @"Raster Sample Count =";
  v40[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:sampleCount];
  v40[9] = v5;
  v40[10] = @"Tile Function =";
  tileFunction = self->_private.tileFunction;
  if (tileFunction)
  {
    v12 = [(MTLFunction *)tileFunction formattedDescription:a3 + 8];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v40[11] = v12;
  v40[12] = v5;
  v13 = @"false";
  if (self->_private.threadgroupSizeMatchesTileSize)
  {
    v13 = @"true";
  }

  v40[13] = @"threadgroupSizeMatchesTileSize =";
  v40[14] = v13;
  v40[15] = v5;
  v40[16] = @"colorSampleCount =";
  v40[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.colorSampleCount];
  v40[18] = v5;
  v40[19] = @"maxTotalThreadsPerThreadgroup =";
  v40[20] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_private.maxTotalThreadsPerThreadgroup];
  v40[21] = v5;
  v40[22] = @"textureWriteRoundingMode =";
  v40[23] = MTLRoundingModeString(self->_private.textureWriteRoundingMode);
  v40[24] = v5;
  v40[25] = @"requiredThreadsPerThreadgroup =";
  v40[26] = v31;
  v14 = 0x1E695D000uLL;
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v40, 27)}];
  for (i = 0; i != 8; ++i)
  {
    if (p_private->attachments->_descriptors[i])
    {
      v39[0] = v5;
      v39[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Color Attachment %u:", i];
      v39[2] = tileColorAttachmentFormattedDescription(a3 + 8, &p_private->attachments->_descriptors[i]->super);
      v20 = v39;
    }

    else
    {
      v38[0] = v5;
      v38[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Color Attachment %u:", i];
      requiredThreadsPerThreadgroup.width = [@"\n" stringByPaddingToLength:a3 + 12 withString:@" " startingAtIndex:0];
      requiredThreadsPerThreadgroup.height = @"pixelFormat =";
      v16 = v14;
      v17 = MEMORY[0x1E696AEC0];
      v18 = MTLPixelFormatGetName(0);
      v19 = v17;
      v14 = v16;
      requiredThreadsPerThreadgroup.depth = [v19 stringWithUTF8String:v18];
      v38[2] = [objc_msgSend(*(v16 + 3784) arrayWithObjects:&requiredThreadsPerThreadgroup count:{3), "componentsJoinedByString:", @" "}];
      v20 = v38;
    }

    [v7 addObjectsFromArray:{objc_msgSend(*(v14 + 3784), "arrayWithObjects:count:", v20, 3)}];
  }

  for (j = 0; j != 31; ++j)
  {
    [v7 addObject:v5];
    [v7 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Buffer %u:", j)}];
    v22 = p_private->tileBuffers->_descriptors[j];
    if (v22)
    {
      v23 = pipelineBufferFormattedDescription(a3 + 8, v22);
    }

    else
    {
      v23 = pipelineBufferDefaultFormattedDescription(a3 + 8);
    }

    [v7 addObject:v23];
  }

  v37[0] = v5;
  v37[1] = @"linkedFunction =:";
  linkedFunctions = p_private->linkedFunctions;
  if (linkedFunctions)
  {
    v25 = [(MTLLinkedFunctions *)linkedFunctions formattedDescription:a3 + 8];
  }

  else
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v37[2] = v25;
  [v7 addObjectsFromArray:{objc_msgSend(*(v14 + 3784), "arrayWithObjects:count:", v37, 3)}];
  v36[0] = v5;
  v36[1] = @"supportAddingBinaryFunctions =";
  if (p_private->supportAddingBinaryFunctions)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  v36[2] = v26;
  [v7 addObjectsFromArray:{objc_msgSend(*(v14 + 3784), "arrayWithObjects:count:", v36, 3)}];
  v35[0] = v5;
  v35[1] = @"maxCallStackDepth =";
  v35[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_private->maxStackCallDepth];
  [v7 addObjectsFromArray:{objc_msgSend(*(v14 + 3784), "arrayWithObjects:count:", v35, 3)}];
  v34[0] = v5;
  v34[1] = @"maxAccelerationStructureTraversalDepth =";
  v34[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_private->maxAccelerationStructureTraversalDepth];
  [v7 addObjectsFromArray:{objc_msgSend(*(v14 + 3784), "arrayWithObjects:count:", v34, 3)}];
  v33[0] = v5;
  v33[1] = @"shaderValidation =";
  v33[2] = [MEMORY[0x1E696AD98] numberWithInteger:p_private->shaderValidation];
  [v7 addObjectsFromArray:{objc_msgSend(*(v14 + 3784), "arrayWithObjects:count:", v33, 3)}];
  v32[0] = v5;
  v32[1] = @"shaderValidationState =";
  v32[2] = [MEMORY[0x1E696AD98] numberWithInteger:p_private->shaderValidationState];
  [v7 addObjectsFromArray:{objc_msgSend(*(v14 + 3784), "arrayWithObjects:count:", v32, 3)}];
  v30.receiver = v29;
  v30.super_class = MTLTileRenderPipelineDescriptorInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLTileRenderPipelineDescriptorInternal description](&v30, sel_description), objc_msgSend(v7, "componentsJoinedByString:", @" "];
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPluginData:(id)a3
{
  p_private = &self->_private;
  pluginData = self->_private.pluginData;
  if (pluginData != a3)
  {

    p_private->pluginData = a3;
  }
}

- (void)setProfileControl:(id)a3
{
  p_private = &self->_private;
  profileControl = self->_private.profileControl;
  if (profileControl != a3)
  {

    p_private->profileControl = [a3 copy];
  }
}

- (void)reset
{
  v2 = 0;
  p_private = &self->_private;
  do
  {

    p_private->attachments->_descriptors[v2++] = 0;
  }

  while (v2 != 8);
  p_private->threadgroupSizeMatchesTileSize = 0;
  p_private->var0.sampleCount = 1;
  p_private->colorSampleCount = 0;

  p_private->label = 0;
  v4 = 0;
  p_private->tileFunction = 0;
  do
  {
  }

  while (v4 != 31);
  p_private->maxTotalThreadsPerThreadgroup = 0;
  p_private->textureWriteRoundingMode = 0;

  p_private->pluginData = 0;
  p_private->binaryArchives = 0;

  p_private->linkedFunctions = 0;
  p_private->supportAddingBinaryFunctions = 0;
  p_private->preloadedLibraries = 0;
  p_private->maxStackCallDepth = 1;

  p_private->profileControl = 0;
  p_private->maxAccelerationStructureTraversalDepth = 0;
  p_private->shaderValidation = 0;
  p_private->shaderValidationState = 0;
  p_private->requiredThreadsPerThreadgroup.height = 0;
  p_private->requiredThreadsPerThreadgroup.depth = 0;
  p_private->requiredThreadsPerThreadgroup.width = 0;
}

- (void)setLabel:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLTileRenderPipelineDescriptorInternal *)isKindOfClass setLabel:v11, v12, v13, v14, v15, v16, v17, v20];
    }
  }

  else
  {
    [(MTLTileRenderPipelineDescriptorInternal *)self setLabel:a2, 0, v3, v4, v5, v6, v7, v20];
  }

  p_private = &self->_private;
  label = p_private->label;
  if (label != a3)
  {

    p_private->label = [a3 copy];
  }
}

- (void)setName:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLTileRenderPipelineDescriptorInternal *)isKindOfClass setName:v11, v12, v13, v14, v15, v16, v17, v20];
    }
  }

  else
  {
    [(MTLTileRenderPipelineDescriptorInternal *)self setName:a2, 0, v3, v4, v5, v6, v7, v20];
  }

  p_private = &self->_private;
  name = p_private->name;
  if (name != a3)
  {

    p_private->name = [a3 copy];
  }
}

- (void)setTileFunction:(id)a3
{
  if (a3 && MTLFailureTypeGetEnabled(1uLL))
  {
    [(MTLTileRenderPipelineDescriptorInternal *)a3 setTileFunction:v5, v6, v7, v8, v9, v10, v11, v14];
  }

  v12 = a3;
  p_private = &self->_private;

  p_private->tileFunction = a3;
}

- (void)setMaxTotalThreadsPerThreadgroup:(unint64_t)a3
{
  v8 = a3;
  if (a3 >= 0x10000)
  {
    [(MTLTileRenderPipelineDescriptorInternal *)self setMaxTotalThreadsPerThreadgroup:a2, a3, v3, v4, v5, v6, v7];
  }

  self->_private.maxTotalThreadsPerThreadgroup = v8;
}

- (void)setRequiredThreadsPerThreadgroup:(id *)a3
{
  var2 = a3->var2;
  *&self->_private.requiredThreadsPerThreadgroup.width = *&a3->var0;
  self->_private.requiredThreadsPerThreadgroup.depth = var2;
}

- (void)setBinaryArchives:(id)a3
{
  p_private = &self->_private;
  binaryArchives = self->_private.binaryArchives;
  if (binaryArchives != a3)
  {

    p_private->binaryArchives = [a3 copy];
  }
}

- (id)linkedFunctions
{
  p_private = &self->_private;
  result = self->_private.linkedFunctions;
  if (!result)
  {
    result = objc_alloc_init(MTLLinkedFunctions);
    v4 = 0;
    atomic_compare_exchange_strong(&p_private->linkedFunctions, &v4, result);
    if (v4)
    {

      return p_private->linkedFunctions;
    }

    else
    {
      p_private->linkedFunctions = result;
    }
  }

  return result;
}

- (void)setLinkedFunctions:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLTileRenderPipelineDescriptorInternal *)isKindOfClass setLinkedFunctions:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  p_private = &self->_private;
  if (p_private->linkedFunctions != a3)
  {
    linkedFunctions = p_private->linkedFunctions;
    p_private->linkedFunctions = [a3 copy];
  }
}

- (void)setPreloadedLibraries:(id)a3
{
  p_private = &self->_private;
  preloadedLibraries = self->_private.preloadedLibraries;
  if (preloadedLibraries != a3)
  {

    p_private->preloadedLibraries = [a3 copy];
  }
}

- (void)setInsertLibraries:(id)a3
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  [(MTLTileRenderPipelineDescriptorInternal *)self setPreloadedLibraries:a3];
}

- (unint64_t)hash
{
  p_private = &self->_private;
  bzero(v19, 0x1C8uLL);
  v3 = 0;
  descriptors = p_private->attachments->_descriptors;
  v5 = _MTLDefaultRenderPipelineAttachmentPrivate;
  do
  {
    v6 = *(descriptors + v3 * 4);
    v7 = v5;
    if (v6)
    {
      v7 = *(v6 + 8);
    }

    *&v19[v3] = v7;
    v3 += 2;
  }

  while (v3 != 16);
  colorSampleCount = p_private->colorSampleCount;
  v21 = LOBYTE(p_private->var0.sampleCount) | (p_private->threadgroupSizeMatchesTileSize << 8);
  v22 = [(NSString *)p_private->label hash];
  v23 = [(MTLFunction *)p_private->tileFunction hash];
  v8 = p_private->tileBuffers->_descriptors;
  for (i = 11; i != 42; ++i)
  {
    if (*v8)
    {
      v10 = &(*v8)->_private;
    }

    else
    {
      v10 = &_MTLDefaultPipelineBufferPrivate;
    }

    *&v19[2 * i] = *v10;
    ++v8;
  }

  maxTotalThreadsPerThreadgroup = p_private->maxTotalThreadsPerThreadgroup;
  pluginData = p_private->pluginData;
  textureWriteRoundingMode = p_private->textureWriteRoundingMode;
  v26 = [(NSDictionary *)pluginData hash];
  v27 = MTLHashArray(p_private->binaryArchives, 1, 0);
  v28 = [(MTLLinkedFunctions *)p_private->linkedFunctions hash];
  v12 = MTLHashArray(p_private->preloadedLibraries, 1, 1);
  v13 = -p_private->supportAddingBinaryFunctions;
  v29 = v12;
  v30 = v13;
  maxStackCallDepth = p_private->maxStackCallDepth;
  v14 = [(MTLProfileControl *)p_private->profileControl hash];
  maxAccelerationStructureTraversalDepth = p_private->maxAccelerationStructureTraversalDepth;
  gpuCompilerSPIOptions = p_private->gpuCompilerSPIOptions;
  v32 = v14;
  v33 = maxAccelerationStructureTraversalDepth;
  v34 = [(NSDictionary *)gpuCompilerSPIOptions hash];
  v17 = *&p_private->requiredThreadsPerThreadgroup.width;
  v35 = *&p_private->shaderValidation;
  v36 = v17;
  depth = p_private->requiredThreadsPerThreadgroup.depth;
  return _MTLHashState(v19, 0x1C8uLL);
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      v7 = 0;
      p_private = &self->_private;
      v9 = a3 + 56;
      while (1)
      {
        v10 = p_private->attachments->_descriptors[v7];
        v11 = *(*v9 + 8 + v7 * 8);
        if (v10 != v11)
        {
          v12 = !v10 || v11 == 0;
          if (v12 || v10->_private.var0.var0.pixelFormat != v11->_private.var0.var0.pixelFormat)
          {
            break;
          }
        }

        if (++v7 == 8)
        {
          if (p_private->threadgroupSizeMatchesTileSize != v9[32] || p_private->var0.sampleCount != *(v9 + 1) || p_private->colorSampleCount != *(v9 + 6))
          {
            break;
          }

          label = p_private->label;
          if (label == *(v9 + 2) || (v6 = [(NSString *)label isEqual:?]) != 0)
          {
            tileFunction = p_private->tileFunction;
            if (tileFunction == *(v9 + 3) || (v6 = [(MTLFunction *)tileFunction isEqual:?]) != 0)
            {
              v15 = 0;
              while (1)
              {
                v16 = p_private->tileBuffers->_descriptors[v15];
                v17 = *(*(v9 + 7) + 8 + v15 * 8);
                if (v16 != v17)
                {
                  v18 = !v16 || v17 == 0;
                  if (v18 || v16->_private.var0.var1.var0 != v17->_private.var0.var1.var0)
                  {
                    goto LABEL_3;
                  }
                }

                if (++v15 == 31)
                {
                  if (p_private->maxTotalThreadsPerThreadgroup != *(v9 + 32) || p_private->textureWriteRoundingMode != *(v9 + 9))
                  {
                    goto LABEL_3;
                  }

                  pluginData = p_private->pluginData;
                  if (pluginData == *(v9 + 10) || (v6 = [(NSDictionary *)pluginData isEqual:?]) != 0)
                  {
                    v6 = MTLCompareArray(p_private->binaryArchives, *(v9 + 11), 1, 0);
                    if (v6)
                    {
                      v6 = MTLCompareFunctionList(p_private->linkedFunctions, *(v9 + 12));
                      if (v6)
                      {
                        v6 = MTLCompareArray(p_private->preloadedLibraries, *(v9 + 13), 1, 1);
                        if (v6)
                        {
                          if (p_private->supportAddingBinaryFunctions != v9[120] || p_private->maxStackCallDepth != *(v9 + 14))
                          {
                            goto LABEL_3;
                          }

                          profileControl = p_private->profileControl;
                          if (profileControl == *(v9 + 16) || (v6 = [(MTLProfileControl *)profileControl isEqual:?]) != 0)
                          {
                            if (p_private->maxAccelerationStructureTraversalDepth != *(v9 + 17))
                            {
                              goto LABEL_3;
                            }

                            gpuCompilerSPIOptions = p_private->gpuCompilerSPIOptions;
                            if (gpuCompilerSPIOptions == *(v9 + 18) || (v6 = [(NSDictionary *)gpuCompilerSPIOptions isEqual:?]) != 0)
                            {
                              if (p_private->shaderValidation == *(v9 + 19) && p_private->shaderValidationState == *(v9 + 20) && p_private->requiredThreadsPerThreadgroup.width == *(v9 + 21) && p_private->requiredThreadsPerThreadgroup.height == *(v9 + 22) && p_private->requiredThreadsPerThreadgroup.depth == *(v9 + 23))
                              {
                                LOBYTE(v6) = 1;
                                return v6;
                              }

                              goto LABEL_3;
                            }
                          }
                        }
                      }
                    }
                  }

                  return v6;
                }
              }
            }
          }

          return v6;
        }
      }
    }

LABEL_3:
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)validateWithDevice:(id)a3 error:(id *)a4
{
  p_private = &self->_private;
  if (self->_private.var0.sampleCount || ([a3 supportsTextureSampleCount:0] & 1) != 0)
  {
    [a3 registerTileRenderPipelineDescriptor:{self, a4}];
    validateWithDevice(a3, p_private);
    return 1;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rasterSampleCount (%lu) is not supported by device.", p_private->var0.sampleCount];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:v9 forKey:*MEMORY[0x1E696A578]];
    v11 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PipelineError" code:1 userInfo:v10];
    result = 0;
    *a4 = v11;
  }

  return result;
}

- (void)validateWithDevice:(id)a3
{
  [a3 registerTileRenderPipelineDescriptor:self];

  validateWithDevice(a3, &self->_private);
}

- (id)newSerializedTileDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5
{
  v5 = a4;
  p_private = &self->_private;
  v7 = [(MTLFunction *)self->_private.tileFunction functionType:a3];
  if (v7 == 3)
  {
    linkedFunctions = p_private->linkedFunctions;
    v38 = v5;
    if (linkedFunctions && ([(MTLLinkedFunctions *)linkedFunctions functions]&& [(NSArray *)[(MTLLinkedFunctions *)p_private->linkedFunctions functions] count]|| [(MTLLinkedFunctions *)p_private->linkedFunctions privateFunctions]&& [(NSArray *)[(MTLLinkedFunctions *)p_private->linkedFunctions privateFunctions] count]))
    {
      v11 = 1;
      v12 = 20;
    }

    else
    {
      v11 = 0;
      v12 = 12;
    }

    v22 = MTLSerializePluginDataDictionary([-[MTLFunction device](p_private->tileFunction "device")], 0);
    v23 = v22 + v12;
    v24 = MTLSerializePluginDataDictionary(p_private->pluginData, 0);
    v25 = v24;
    if (v11)
    {
      _MTLPopulateLinkedFunctionExtraData(p_private->linkedFunctions);
    }

    v21 = v24 + v23;
    v32 = malloc_type_calloc(1uLL, v24 + v23, 0x1000040A86A77D5uLL);
    v27 = v32;
    v32[2] = v32[2] & 0xFFFFFFFD | (2 * (HIBYTE(v38) & 1));
    if (v22)
    {
      v33 = v12;
    }

    else
    {
      v33 = 0;
    }

    if (v25)
    {
      v34 = v22 + v12;
    }

    else
    {
      v34 = 0;
    }

    *v32 = v33;
    v32[1] = v34;
    if (v22)
    {
      MTLSerializePluginDataDictionary([-[MTLFunction device](p_private->tileFunction "device")], &v32[v12 / 4]);
    }

    if (v25)
    {
      MTLSerializePluginDataDictionary(p_private->pluginData, v27 + v23);
    }
  }

  else
  {
    if (v7 != 2)
    {
      return 0;
    }

    v8 = p_private->linkedFunctions;
    v9 = v8 && ([(MTLLinkedFunctions *)v8 functions]&& [(NSArray *)[(MTLLinkedFunctions *)p_private->linkedFunctions functions] count]|| [(MTLLinkedFunctions *)p_private->linkedFunctions privateFunctions]&& [(NSArray *)[(MTLLinkedFunctions *)p_private->linkedFunctions privateFunctions] count]);
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = p_private->attachments->_descriptors[v14];
      if (v16 && v16->_private.var0.var0.pixelFormat)
      {
        ++v15;
      }

      ++v14;
    }

    while (v14 != 8);
    if (v9)
    {
      v17 = 6;
    }

    else
    {
      v17 = 4;
    }

    v18 = MTLSerializePluginDataDictionary([-[MTLFunction device](p_private->tileFunction "device")], 0);
    v36 = v17 * 4 + 2 * v15;
    v19 = v18 + v36;
    v20 = MTLSerializePluginDataDictionary(p_private->pluginData, 0);
    v21 = v20 + v18 + v36;
    v37 = v9;
    if (v9)
    {
      _MTLPopulateLinkedFunctionExtraData(p_private->linkedFunctions);
    }

    v26 = malloc_type_calloc(1uLL, v21, 0x1000040504FFAC1uLL);
    v27 = v26;
    v28 = 0;
    v29 = 0;
    v26[2] = (v5 << 6) & 0x40000000 | v15 | v26[2] & 0xBFFFFF00;
    do
    {
      v30 = p_private->attachments->_descriptors[v28];
      if (v30)
      {
        pixelFormat = v30->_private.var0.var0.pixelFormat;
        if (pixelFormat)
        {
          *(&v26[v17] + v29++) = v28 + 16 * pixelFormat;
        }
      }

      ++v28;
    }

    while (v28 != 8);
    if (v18)
    {
      *v26 = v36;
      MTLSerializePluginDataDictionary([-[MTLFunction device](p_private->tileFunction "device")], v26 + v36);
    }

    if (v20)
    {
      v27[1] = v19;
      MTLSerializePluginDataDictionary(p_private->pluginData, v27 + v19);
    }

    if (v37)
    {
      v27[2] |= 0x80000000;
      v27[4] = 0;
      v27[5] = 0;
      free(MEMORY[0]);
      MEMORY[0x1865FF210](0, 0x1010C40113C0ABBLL);
    }
  }

  v35 = *MEMORY[0x1E69E9648];

  return dispatch_data_create(v27, v21, 0, v35);
}

- (void)setGpuCompilerSPIOptions:(id)a3
{
  p_private = &self->_private;
  gpuCompilerSPIOptions = self->_private.gpuCompilerSPIOptions;
  if (gpuCompilerSPIOptions != a3)
  {

    p_private->gpuCompilerSPIOptions = [a3 copy];
  }
}

- (uint64_t)setTextureWriteFPRoundingMode:(uint64_t)result
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

- (uint64_t)textureWriteFPRoundingMode
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (void)setTileFunction:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF4F4B58] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLTileRenderPipelineDescriptorInternal setTileFunction:]", 732, @"tileFunction is not a MTLFunction.", v9, v10, v11, v12, a9);
  }
}

@end