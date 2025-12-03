@interface MTLComputePipelineDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (BOOL)validateWithDevice:(id)device error:(id *)error;
- (MTLComputePipelineDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (id)linkedFunctions;
- (id)newSerializedComputeDataWithFlags:(unint64_t)flags options:(unint64_t)options;
- (id)stageInputDescriptor;
- (unint64_t)hash;
- (void)dealloc;
- (void)reset;
- (void)setBinaryArchives:(id)archives;
- (void)setComputeFunction:(id)function;
- (void)setDriverCompilerOptions:(id)options;
- (void)setFunctionPointers:(id)pointers;
- (void)setGpuCompilerSPIOptions:(id)options;
- (void)setInsertLibraries:(id)libraries;
- (void)setInternalPipeline:(BOOL)pipeline;
- (void)setLabel:(id)label;
- (void)setLinkedFunctions:(id)functions;
- (void)setMaxTotalThreadsPerThreadgroup:(unint64_t)threadgroup;
- (void)setName:(id)name;
- (void)setOpenCLModeEnabled:(BOOL)enabled;
- (void)setPipelineLibrary:(id)library;
- (void)setPluginData:(id)data;
- (void)setPreloadedLibraries:(id)libraries;
- (void)setProfileControl:(id)control;
- (void)setRequiredThreadsPerThreadgroup:(id *)threadgroup;
- (void)setStageInputDescriptor:(id)descriptor;
- (void)validateWithDevice:(id)device;
@end

@implementation MTLComputePipelineDescriptorInternal

- (MTLComputePipelineDescriptorInternal)init
{
  v4.receiver = self;
  v4.super_class = MTLComputePipelineDescriptorInternal;
  v2 = [(MTLComputePipelineDescriptorInternal *)&v4 init];
  if (v2)
  {
    v2->_private.buffers = objc_alloc_init(MTLPipelineBufferDescriptorArrayInternal);
    v2->_private.supportAddingBinaryFunctions = 0;
    v2->_private.functionPointers = 0;
    v2->_private.linkedFunctions = 0;
    v2->_private.maxStackCallDepth = 1;
    v2->_private.var0.preloadedLibraries = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_private.name = 0;
    v2->_private.shaderValidation = 0;
    v2->_private.shaderValidationState = 0;
    v2->_private.profileControl = 0;
    v2->_private.maxAccelerationStructureTraversalDepth = 0;
  }

  return v2;
}

- (id)linkedFunctions
{
  p_private = &self->_private;
  result = self->_private.linkedFunctions;
  if (!result)
  {
    result = objc_alloc_init(MTLLinkedFunctionsInternal);
    p_private->linkedFunctions = result;
  }

  return result;
}

- (void)dealloc
{
  p_private = &self->_private;

  v4.receiver = self;
  v4.super_class = MTLComputePipelineDescriptorInternal;
  [(MTLComputePipelineDescriptorInternal *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    p_private = &self->_private;
    *(v5 + 16) = [(NSString *)p_private->label copyWithZone:zone];
    *(v6 + 232) = [(NSString *)p_private->name copyWithZone:zone];
    *(v6 + 24) = p_private->computeFunction;
    *(v6 + 48) = [(NSDictionary *)p_private->driverCompilerOptions copy];
    *(v6 + 56) = [(NSDictionary *)p_private->gpuCompilerSPIOptions copy];
    *(v6 + 160) = [(NSArray *)p_private->functionPointers copy];
    v8 = [(MTLLinkedFunctions *)p_private->linkedFunctions copy];
    maxStackCallDepth = p_private->maxStackCallDepth;
    *(v6 + 168) = v8;
    *(v6 + 176) = maxStackCallDepth;
    *(v6 + 184) = p_private->supportAddingBinaryFunctions;
    *(v6 + 40) = [(MTLStageInputOutputDescriptor *)p_private->stageInputDescriptor copyWithZone:zone];
    *(v6 + 72) = [(NSArray *)p_private->binaryArchives copy];
    *(v6 + 80) = [(NSArray *)p_private->var0.preloadedLibraries copy];
    v10 = 0;
    *(v6 + 88) = p_private->pipelineLibrary;
    *(v6 + 32) = p_private->threadGroupSizeIsMultipleOfThreadExecutionWidth;
    *(v6 + 34) = p_private->maxTotalThreadsPerThreadgroup;
    do
    {
      *(*(v6 + 64) + 8 + v10 * 8) = [(MTLPipelineBufferDescriptorInternal *)p_private->buffers->_descriptors[v10] copyWithZone:zone];
      ++v10;
    }

    while (v10 != 31);
    *(v6 + 96) = p_private->supportIndirectCommandBuffers;
    *(v6 + 120) = p_private->textureWriteRoundingMode;
    *(v6 + 128) = p_private->forceResourceIndex;
    *(v6 + 136) = p_private->resourceIndex;
    v11 = *(v6 + 153) & 0xFE | *(p_private + 137) & 1;
    *(v6 + 153) = v11;
    *(v6 + 153) = v11 & 0xFD | *(p_private + 137) & 2;
    *(v6 + 144) = p_private->pluginData;
    *(v6 + 152) = p_private->needsCustomBorderColorSamplers;
    v12 = [(MTLProfileControl *)p_private->profileControl copy];
    maxAccelerationStructureTraversalDepth = p_private->maxAccelerationStructureTraversalDepth;
    *(v6 + 192) = v12;
    *(v6 + 200) = maxAccelerationStructureTraversalDepth;
    *(v6 + 104) = *&p_private->shaderValidation;
    *(v6 + 153) = *(v6 + 153) & 0xFB | *(p_private + 137) & 4;
    v14 = *&p_private->requiredThreadsPerThreadgroup.width;
    *(v6 + 224) = p_private->requiredThreadsPerThreadgroup.depth;
    *(v6 + 208) = v14;
  }

  return v6;
}

- (id)formattedDescription:(unint64_t)description
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  [@"\n" stringByPaddingToLength:description + 8 withString:@" " startingAtIndex:0];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:31];
  v7 = 0;
  selfCopy = self;
  p_private = &self->_private;
  do
  {
    v9 = self->_private.buffers->_descriptors[v7];
    if (v9)
    {
      v10 = MTLPipelineBufferDescriptorDescription(v9);
    }

    else
    {
      v10 = MTLPipelineBufferDescriptorDefaultDescription();
    }

    [v6 addObject:v10];
    ++v7;
  }

  while (v7 != 31);
  v39 = v6;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  preloadedLibraries = self->_private.var0.preloadedLibraries;
  v12 = [(NSArray *)p_private->var0.preloadedLibraries countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v51;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(preloadedLibraries);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        if (v14)
        {
          [v14 appendString:v5];
        }

        else
        {
          v14 = objc_opt_new();
        }

        [v14 appendString:{objc_msgSend(v17, "formattedDescription:", description + 8)}];
      }

      v13 = [(NSArray *)preloadedLibraries countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v40 = p_private;
  binaryArchives = p_private->binaryArchives;
  v19 = [(NSArray *)binaryArchives countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v19)
  {
    v20 = v19;
    null4 = 0;
    v22 = *v47;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v47 != v22)
        {
          objc_enumerationMutation(binaryArchives);
        }

        v24 = *(*(&v46 + 1) + 8 * j);
        if (null4)
        {
          [null4 appendString:v5];
        }

        else
        {
          null4 = objc_opt_new();
        }

        [null4 appendString:{objc_msgSend(v24, "formattedDescription:", description + 8)}];
      }

      v20 = [(NSArray *)binaryArchives countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v20);
  }

  else
  {
    null4 = 0;
  }

  v43 = *&v40->requiredThreadsPerThreadgroup.width;
  depth = v40->requiredThreadsPerThreadgroup.depth;
  v45 = 0;
  MTLSizeToNSArray(&v43, &v45);
  v25 = MEMORY[0x1E695DF70];
  v54[0] = v5;
  v54[1] = @"label =";
  label = v40->label;
  computeFunction = v40->computeFunction;
  if (!v40->label)
  {
    label = @"<none>";
  }

  v54[2] = label;
  v54[3] = v5;
  name = v40->name;
  if (!name)
  {
    name = @"<none>";
  }

  v54[4] = @"name =";
  v54[5] = name;
  v54[6] = v5;
  v54[7] = @"computeFunction =";
  null = [(MTLFunction *)computeFunction formattedDescription:description + 8];
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v54[8] = null;
  v54[9] = v5;
  v54[10] = @"threadGroupSizeIsMultipleOfThreadExecutionWidth =";
  v54[11] = [MEMORY[0x1E696AD98] numberWithBool:v40->threadGroupSizeIsMultipleOfThreadExecutionWidth];
  v54[12] = v5;
  v54[13] = @"maxTotalThreadsPerThreadgroup =";
  v54[14] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v40->maxTotalThreadsPerThreadgroup];
  v54[15] = v5;
  v54[16] = @"supportIndirectCommandBuffers =";
  v54[17] = [MEMORY[0x1E696AD98] numberWithBool:v40->supportIndirectCommandBuffers];
  v54[18] = v5;
  v54[19] = @"textureWriteRoundingMode =";
  v54[20] = MTLRoundingModeString(v40->textureWriteRoundingMode);
  v54[21] = v5;
  v54[22] = @"stageInputDescriptor =";
  null2 = [(MTLStageInputOutputDescriptor *)v40->stageInputDescriptor formattedDescription:description + 8];
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v54[23] = null2;
  v54[24] = v5;
  v54[25] = @"linkedFunctions =";
  linkedFunctions = v40->linkedFunctions;
  if (linkedFunctions)
  {
    null3 = [(MTLLinkedFunctions *)linkedFunctions formattedDescription:description + 8];
  }

  else
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v54[26] = null3;
  v54[27] = v5;
  v33 = @"YES";
  if (!v40->supportAddingBinaryFunctions)
  {
    v33 = @"NO";
  }

  v54[28] = @"supportAddingBinaryFunctions =";
  v54[29] = v33;
  v54[30] = v5;
  v54[31] = @"maxCallStackDepth =";
  v54[32] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v40->maxStackCallDepth];
  v54[33] = v5;
  v54[34] = @"pipelineLibrary =";
  pipelineLibrary = v40->pipelineLibrary;
  if (!pipelineLibrary)
  {
    pipelineLibrary = [MEMORY[0x1E695DFB0] null];
  }

  v54[35] = pipelineLibrary;
  v54[36] = v5;
  v35 = MEMORY[0x1E695E0F0];
  if (v14)
  {
    v35 = v14;
  }

  v54[37] = @"preloadedLibraries =";
  v54[38] = v35;
  v54[39] = v5;
  v54[40] = @"binaryArchives =";
  if (!null4)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v54[41] = null4;
  v54[42] = v5;
  v54[43] = @"Needs custom border color samplers = ";
  v54[44] = [MEMORY[0x1E696AD98] numberWithBool:v40->needsCustomBorderColorSamplers];
  v54[45] = v5;
  v54[46] = @"buffers = ";
  v54[47] = v39;
  v54[48] = v5;
  v54[49] = @"forceResourceIndex =";
  v54[50] = [MEMORY[0x1E696AD98] numberWithBool:v40->forceResourceIndex];
  v54[51] = v5;
  v54[52] = @"resourceIndex =";
  v54[53] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v40->resourceIndex];
  v54[54] = v5;
  v54[55] = @"maxAccelerationStructureTraversalDepth =";
  v54[56] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v40->maxAccelerationStructureTraversalDepth];
  v54[57] = v5;
  v54[58] = @"shaderValidation =";
  v54[59] = [MEMORY[0x1E696AD98] numberWithInteger:v40->shaderValidation];
  v54[60] = v5;
  v54[61] = @"shaderValidationState =";
  v54[62] = [MEMORY[0x1E696AD98] numberWithInteger:v40->shaderValidationState];
  v54[63] = v5;
  v54[64] = @"requiredThreadsPerThreadgroup =";
  v54[65] = v45;
  v36 = [v25 arrayWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v54, 66)}];
  v42.receiver = selfCopy;
  v42.super_class = MTLComputePipelineDescriptorInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLComputePipelineDescriptorInternal description](&v42, sel_description), objc_msgSend(v36, "componentsJoinedByString:", @" "];
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)reset
{
  p_private = &self->_private;

  p_private->label = 0;
  v3 = 0;
  p_private->name = 0;
  p_private->supportIndirectCommandBuffers = 0;
  p_private->textureWriteRoundingMode = 0;
  do
  {

    p_private->buffers->_descriptors[v3++] = 0;
  }

  while (v3 != 31);
  *(p_private + 137) &= 0xFCu;
  p_private->needsCustomBorderColorSamplers = 0;

  p_private->binaryArchives = 0;
  p_private->var0.preloadedLibraries = 0;

  p_private->linkedFunctions = 0;
  p_private->forceResourceIndex = 0;
  p_private->resourceIndex = 0;

  p_private->pluginData = 0;
  p_private->supportAddingBinaryFunctions = 0;
  p_private->maxStackCallDepth = 1;

  p_private->shaderValidation = 0;
  p_private->shaderValidationState = 0;
  p_private->profileControl = 0;
  p_private->maxAccelerationStructureTraversalDepth = 0;
}

- (void)setLabel:(id)label
{
  if (label)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLComputePipelineDescriptorInternal *)isKindOfClass setLabel:v11, v12, v13, v14, v15, v16, v17, v19];
    }
  }

  else
  {
    [(MTLComputePipelineDescriptorInternal *)self setLabel:a2, 0, v3, v4, v5, v6, v7, v19];
  }

  label = self->_private.label;
  if (label != label)
  {

    self->_private.label = [label copy];
  }
}

- (void)setName:(id)name
{
  if (name)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLComputePipelineDescriptorInternal *)isKindOfClass setName:v11, v12, v13, v14, v15, v16, v17, v20];
    }
  }

  else
  {
    [(MTLComputePipelineDescriptorInternal *)self setName:a2, 0, v3, v4, v5, v6, v7, v20];
  }

  p_private = &self->_private;
  name = p_private->name;
  if (name != name)
  {

    p_private->name = [name copy];
  }
}

- (void)setComputeFunction:(id)function
{
  if (function)
  {
    v10 = MTLFunctionTypeString(3);
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(MTLComputePipelineDescriptorInternal *)function setComputeFunction:v11, v12, v13, v14, v15, v16, v17, v27];
    }

    if ([function functionType] != 3)
    {
      [(MTLComputePipelineDescriptorInternal *)v10 setComputeFunction:v18, v19, v20, v21, v22, v23, v24];
    }
  }

  else
  {
    [(MTLComputePipelineDescriptorInternal *)self setComputeFunction:a2, 0, v3, v4, v5, v6, v7, v27];
  }

  functionCopy = function;
  p_private = &self->_private;

  p_private->computeFunction = function;
}

- (void)setStageInputDescriptor:(id)descriptor
{
  if (descriptor)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLComputePipelineDescriptorInternal *)isKindOfClass setStageInputDescriptor:v6, v7, v8, v9, v10, v11, v12, v15];
    }
  }

  p_private = &self->_private;
  stageInputDescriptor = p_private->stageInputDescriptor;
  if (stageInputDescriptor != descriptor)
  {

    p_private->stageInputDescriptor = [descriptor copy];
  }
}

- (id)stageInputDescriptor
{
  p_private = &self->_private;
  result = self->_private.stageInputDescriptor;
  if (!result)
  {
    result = objc_alloc_init(MTLStageInputOutputDescriptorInternal);
    p_private->stageInputDescriptor = result;
  }

  return result;
}

- (void)setDriverCompilerOptions:(id)options
{
  p_private = &self->_private;
  driverCompilerOptions = self->_private.driverCompilerOptions;
  if (driverCompilerOptions != options)
  {

    p_private->driverCompilerOptions = [options copy];
  }
}

- (void)setGpuCompilerSPIOptions:(id)options
{
  p_private = &self->_private;
  gpuCompilerSPIOptions = self->_private.gpuCompilerSPIOptions;
  if (gpuCompilerSPIOptions != options)
  {

    p_private->gpuCompilerSPIOptions = [options copy];
  }
}

- (void)setFunctionPointers:(id)pointers
{
  p_private = &self->_private;
  functionPointers = self->_private.functionPointers;
  if (functionPointers != pointers)
  {

    p_private->functionPointers = [pointers copy];
  }
}

- (void)setLinkedFunctions:(id)functions
{
  if (functions)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLComputePipelineDescriptorInternal *)isKindOfClass setLinkedFunctions:v6, v7, v8, v9, v10, v11, v12, v15];
    }
  }

  p_private = &self->_private;
  linkedFunctions = p_private->linkedFunctions;
  if (linkedFunctions != functions)
  {

    p_private->linkedFunctions = [functions copy];
  }
}

- (void)setBinaryArchives:(id)archives
{
  p_private = &self->_private;
  binaryArchives = self->_private.binaryArchives;
  if (binaryArchives != archives)
  {

    p_private->binaryArchives = [archives copy];
  }
}

- (void)setPreloadedLibraries:(id)libraries
{
  p_private = &self->_private;
  preloadedLibraries = self->_private.var0.preloadedLibraries;
  if (preloadedLibraries != libraries)
  {

    p_private->var0.preloadedLibraries = [libraries copy];
  }
}

- (void)setInsertLibraries:(id)libraries
{
  if (!libraries)
  {
    libraries = MEMORY[0x1E695E0F0];
  }

  [(MTLComputePipelineDescriptorInternal *)self setPreloadedLibraries:libraries];
}

- (void)setPipelineLibrary:(id)library
{
  p_private = &self->_private;
  pipelineLibrary = self->_private.pipelineLibrary;
  if (pipelineLibrary != library)
  {

    p_private->pipelineLibrary = library;
  }
}

- (void)setMaxTotalThreadsPerThreadgroup:(unint64_t)threadgroup
{
  threadgroupCopy = threadgroup;
  if (threadgroup >= 0x10000)
  {
    [(MTLComputePipelineDescriptorInternal *)self setMaxTotalThreadsPerThreadgroup:a2, threadgroup, v3, v4, v5, v6, v7];
  }

  self->_private.maxTotalThreadsPerThreadgroup = threadgroupCopy;
}

- (void)setRequiredThreadsPerThreadgroup:(id *)threadgroup
{
  var2 = threadgroup->var2;
  *&self->_private.requiredThreadsPerThreadgroup.width = *&threadgroup->var0;
  self->_private.requiredThreadsPerThreadgroup.depth = var2;
}

- (void)setOpenCLModeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_private + 137) = *(&self->_private + 137) & 0xFD | v3;
}

- (void)setInternalPipeline:(BOOL)pipeline
{
  if (pipeline)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_private + 137) = *(&self->_private + 137) & 0xFB | v3;
}

- (void)setProfileControl:(id)control
{
  p_private = &self->_private;
  profileControl = self->_private.profileControl;
  if (profileControl != control)
  {

    p_private->profileControl = [control copy];
  }
}

- (void)setPluginData:(id)data
{
  p_private = &self->_private;
  pluginData = self->_private.pluginData;
  if (pluginData != data)
  {

    p_private->pluginData = data;
  }
}

- (unint64_t)hash
{
  p_private = &self->_private;
  bzero(v12, 0x1C0uLL);
  v12[0] = [(NSString *)p_private->label hash];
  v12[1] = [(MTLFunction *)p_private->computeFunction hash];
  v13 = v13 & 0xFE | p_private->threadGroupSizeIsMultipleOfThreadExecutionWidth;
  maxTotalThreadsPerThreadgroup = p_private->maxTotalThreadsPerThreadgroup;
  supportIndirectCommandBuffers = p_private->supportIndirectCommandBuffers;
  textureWriteRoundingMode = p_private->textureWriteRoundingMode;
  v15 = [(MTLStageInputOutputDescriptor *)p_private->stageInputDescriptor hash];
  v16 = [(NSDictionary *)p_private->driverCompilerOptions hash];
  v17 = [(NSDictionary *)p_private->gpuCompilerSPIOptions hash];
  v18 = [(NSArray *)p_private->functionPointers hash];
  v3 = [(MTLLinkedFunctions *)p_private->linkedFunctions hash];
  v4 = -p_private->supportAddingBinaryFunctions;
  v19 = v3;
  v20 = v4;
  maxStackCallDepth = p_private->maxStackCallDepth;
  descriptors = p_private->buffers->_descriptors;
  for (i = 11; i != 42; ++i)
  {
    if (*descriptors)
    {
      v7 = &(*descriptors)->_private;
    }

    else
    {
      v7 = &_MTLDefaultPipelineBufferPrivate;
    }

    v12[i] = *v7;
    ++descriptors;
  }

  forceResourceIndex = p_private->forceResourceIndex;
  pluginData = p_private->pluginData;
  resourceIndex = p_private->resourceIndex;
  needsCustomBorderColorSamplers = p_private->needsCustomBorderColorSamplers;
  v27 = [(NSDictionary *)pluginData hash];
  v28 = MTLHashArray(p_private->var0.preloadedLibraries, 1, 1);
  v29 = MTLHashArray(p_private->binaryArchives, 1, 0);
  v9 = [(MTLProfileControl *)p_private->profileControl hash];
  maxAccelerationStructureTraversalDepth = p_private->maxAccelerationStructureTraversalDepth;
  v30 = v9;
  v31 = maxAccelerationStructureTraversalDepth;
  v32 = *&p_private->shaderValidation;
  v33 = *&p_private->requiredThreadsPerThreadgroup.width;
  depth = p_private->requiredThreadsPerThreadgroup.depth;
  return _MTLHashState(v12, 0x1C0uLL);
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
    if (Class != object_getClass(equal))
    {
LABEL_3:
      LOBYTE(v6) = 0;
      return v6;
    }

    p_private = &self->_private;
    v8 = (equal + 16);
    if (p_private->label == *v8 || (v6 = [(NSString *)p_private->label isEqual:?]) != 0)
    {
      computeFunction = p_private->computeFunction;
      if (computeFunction == v8[1] || (v6 = [(MTLFunction *)computeFunction isEqual:?]) != 0)
      {
        stageInputDescriptor = p_private->stageInputDescriptor;
        if (stageInputDescriptor == v8[3] || (v6 = [(MTLStageInputOutputDescriptor *)stageInputDescriptor isEqual:?]) != 0)
        {
          driverCompilerOptions = p_private->driverCompilerOptions;
          if (driverCompilerOptions == v8[4] || (v6 = [(NSDictionary *)driverCompilerOptions isEqual:?]) != 0)
          {
            gpuCompilerSPIOptions = p_private->gpuCompilerSPIOptions;
            if (gpuCompilerSPIOptions == v8[5] || (v6 = [(NSDictionary *)gpuCompilerSPIOptions isEqual:?]) != 0)
            {
              functionPointers = p_private->functionPointers;
              if (functionPointers == v8[18] || (v6 = [(NSArray *)functionPointers isEqual:?]) != 0)
              {
                v6 = MTLCompareFunctionList(p_private->linkedFunctions, v8[19]);
                if (v6)
                {
                  if (p_private->supportAddingBinaryFunctions == *(v8 + 168) && p_private->maxStackCallDepth == v8[20] && p_private->threadGroupSizeIsMultipleOfThreadExecutionWidth == *(v8 + 16) && p_private->maxTotalThreadsPerThreadgroup == *(v8 + 9) && p_private->supportIndirectCommandBuffers == *(v8 + 80) && p_private->textureWriteRoundingMode == v8[13])
                  {
                    v14 = 0;
                    while (1)
                    {
                      v15 = p_private->buffers->_descriptors[v14];
                      v16 = *(v8[6] + v14 * 8 + 8);
                      if (v15 != v16)
                      {
                        v17 = !v15 || v16 == 0;
                        if (v17 || v15->_private.var0.var1.var0 != v16->_private.var0.var1.var0)
                        {
                          break;
                        }
                      }

                      if (++v14 == 31)
                      {
                        if (p_private->forceResourceIndex != *(v8 + 112) || p_private->resourceIndex != v8[15] || p_private->needsCustomBorderColorSamplers != *(v8 + 136))
                        {
                          goto LABEL_3;
                        }

                        pluginData = p_private->pluginData;
                        if (pluginData == v8[16] || (v6 = [(NSDictionary *)pluginData isEqual:?]) != 0)
                        {
                          v6 = MTLCompareArray(p_private->var0.preloadedLibraries, v8[8], 1, 1);
                          if (v6)
                          {
                            v6 = MTLCompareArray(p_private->binaryArchives, v8[7], 1, 0);
                            if (v6)
                            {
                              profileControl = p_private->profileControl;
                              if (profileControl == v8[22] || (v6 = [(MTLProfileControl *)profileControl isEqual:?]) != 0)
                              {
                                if (p_private->maxAccelerationStructureTraversalDepth == v8[23] && p_private->shaderValidation == v8[11] && p_private->shaderValidationState == v8[12] && p_private->requiredThreadsPerThreadgroup.width == v8[24] && p_private->requiredThreadsPerThreadgroup.height == v8[25] && p_private->requiredThreadsPerThreadgroup.depth == v8[26])
                                {
                                  LOBYTE(v6) = 1;
                                  return v6;
                                }

                                goto LABEL_3;
                              }
                            }
                          }
                        }

                        return v6;
                      }
                    }
                  }

                  goto LABEL_3;
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

- (BOOL)validateWithDevice:(id)device error:(id *)error
{
  p_private = &self->_private;
  if ((*(&self->_private + 137) & 4) == 0)
  {
    [device registerComputePipelineDescriptor:{self, error}];
  }

  validateWithDevice(device, p_private);
  return 1;
}

- (void)validateWithDevice:(id)device
{
  [device registerComputePipelineDescriptor:self];

  validateWithDevice(device, &self->_private);
}

- (id)newSerializedComputeDataWithFlags:(unint64_t)flags options:(unint64_t)options
{
  buffer_ptr = 0;
  size_ptr = 0;
  __src = 0;
  v22 = 0;
  p_private = &self->_private;
  v5 = (options >> 23) & 2 | (flags >> 4) & 4 | (8 * (*(&self->_private + 137) & 1)) & 0xEF | (16 * ((*(&self->_private + 137) >> 1) & 1));
  v23 = 0;
  v22 = v5;
  functionPointers = self->_private.functionPointers;
  if (functionPointers && [(NSArray *)functionPointers count])
  {
    v5 |= 0x20u;
    LODWORD(v22) = v5;
  }

  linkedFunctions = p_private->linkedFunctions;
  if (linkedFunctions && ([(MTLLinkedFunctions *)linkedFunctions functions]&& [(NSArray *)[(MTLLinkedFunctions *)p_private->linkedFunctions functions] count]|| [(MTLLinkedFunctions *)p_private->linkedFunctions privateFunctions]&& [(NSArray *)[(MTLLinkedFunctions *)p_private->linkedFunctions privateFunctions] count]))
  {
    v5 |= 0x20u;
    LODWORD(v22) = v5;
  }

  if ((v5 & 0x20) != 0)
  {
    v8 = 20;
  }

  else
  {
    v8 = 12;
  }

  stageInputDescriptor = p_private->stageInputDescriptor;
  if (stageInputDescriptor && (v10 = [(MTLStageInputOutputDescriptor *)stageInputDescriptor newSerializedDescriptor]) != 0)
  {
    v11 = v10;
    v5 |= 1u;
    LODWORD(v22) = v5;
    v12 = dispatch_data_create_map(v10, &buffer_ptr, &size_ptr);
    v13 = size_ptr + v8;
    dispatch_release(v11);
  }

  else
  {
    v12 = 0;
    v13 = v8;
  }

  v14 = MTLSerializePluginDataDictionary([-[MTLFunction device](p_private->computeFunction "device")], 0);
  v15 = v14;
  if (v14)
  {
    LODWORD(__src) = v13;
    v16 = v13;
    v13 += v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = MTLSerializePluginDataDictionary(p_private->pluginData, 0);
  v18 = v17;
  if (v17)
  {
    HIDWORD(__src) = v13;
    v13 += v17;
  }

  if ((v5 & 0x20) != 0)
  {
    _MTLPopulateLinkedFunctionExtraData(p_private->linkedFunctions);
  }

  v19 = malloc_type_malloc(v13, 0x100004077774924uLL);
  memcpy(v19, &__src, v8);
  if (v12)
  {
    memcpy(&v19[v8], buffer_ptr, size_ptr);
    dispatch_release(v12);
  }

  if (v15)
  {
    MTLSerializePluginDataDictionary([-[MTLFunction device](p_private->computeFunction "device")], &v19[v16]);
  }

  if (v18)
  {
    MTLSerializePluginDataDictionary(p_private->pluginData, &v19[HIDWORD(__src)]);
  }

  return dispatch_data_create(v19, v13, 0, *MEMORY[0x1E69E9648]);
}

- (void)setComputeFunction:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF4F4B58] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLComputePipelineDescriptorInternal setComputeFunction:]", 861, @"computeFunction is not a MTLFunction.", v9, v10, v11, v12, a9);
  }
}

@end