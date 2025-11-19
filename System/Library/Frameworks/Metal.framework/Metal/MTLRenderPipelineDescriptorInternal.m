@interface MTLRenderPipelineDescriptorInternal
- (BOOL)isEqual:(id)a3;
- (BOOL)validateWithDevice:(id)a3 error:(id *)a4;
- (MTLRenderPipelineDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (id)fragmentLinkedFunctions;
- (id)meshLinkedFunctions;
- (id)newSerializedMeshDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newSerializedObjectDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newSerializedVertexDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)objectLinkedFunctions;
- (id)vertexDescriptor;
- (id)vertexLinkedFunctions;
- (uint64_t)fastBlendDescriptorAtIndex:(uint64_t)a3;
- (uint64_t)internalPipeline;
- (uint64_t)setInternalPipeline:(uint64_t)result;
- (uint64_t)setTextureWriteFPRoundingMode:(uint64_t)result;
- (uint64_t)textureWriteFPRoundingMode;
- (unint64_t)hash;
- (void)attachVertexDescriptor:(id)a3;
- (void)dealloc;
- (void)reset;
- (void)setAlphaTestEnabled:(BOOL)a3;
- (void)setAlphaToOneEnabled:(BOOL)a3;
- (void)setBinaryArchives:(id)a3;
- (void)setDepthStencilWriteDisabled:(BOOL)a3;
- (void)setDriverCompilerOptions:(id)a3;
- (void)setForceResourceIndex:(BOOL)a3;
- (void)setForceSoftwareVertexFetch:(BOOL)a3;
- (void)setFragmentFunction:(id)a3;
- (void)setFragmentLinkedFunctions:(id)a3;
- (void)setFragmentPreloadedLibraries:(id)a3;
- (void)setGpuCompilerSPIOptions:(id)a3;
- (void)setInputPrimitiveTopology:(unint64_t)a3;
- (void)setInsertFragmentLibraries:(id)a3;
- (void)setInsertMeshLibraries:(id)a3;
- (void)setInsertObjectLibraries:(id)a3;
- (void)setInsertVertexLibraries:(id)a3;
- (void)setLabel:(id)a3;
- (void)setLogicOperationEnabled:(BOOL)a3;
- (void)setMaxPipelineChildren:(id *)a3;
- (void)setMaxTessellationFactor:(unint64_t)a3;
- (void)setMeshFunction:(id)a3;
- (void)setMeshLinkedFunctions:(id)a3;
- (void)setMeshPreloadedLibraries:(id)a3;
- (void)setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)a3;
- (void)setMeshThreadsPerThreadgroup:(id *)a3;
- (void)setName:(id)a3;
- (void)setObjectFunction:(id)a3;
- (void)setObjectLinkedFunctions:(id)a3;
- (void)setObjectPreloadedLibraries:(id)a3;
- (void)setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)a3;
- (void)setObjectThreadsPerThreadgroup:(id *)a3;
- (void)setOpenGLModeEnabled:(BOOL)a3;
- (void)setPipelineLibrary:(id)a3;
- (void)setPluginData:(id)a3;
- (void)setPointCoordLowerLeft:(BOOL)a3;
- (void)setPointSizeOutputVS:(BOOL)a3;
- (void)setPointSmoothEnabled:(BOOL)a3;
- (void)setProfileControl:(id)a3;
- (void)setRasterizationEnabled:(BOOL)a3;
- (void)setRequiredThreadsPerMeshThreadgroup:(id *)a3;
- (void)setRequiredThreadsPerObjectThreadgroup:(id *)a3;
- (void)setSampleCoverageInvert:(BOOL)a3;
- (void)setTessellationControlPointIndexType:(unint64_t)a3;
- (void)setTessellationFactorFormat:(unint64_t)a3;
- (void)setTessellationFactorStepFunction:(unint64_t)a3;
- (void)setTessellationOutputWindingOrder:(unint64_t)a3;
- (void)setTessellationPartitionMode:(unint64_t)a3;
- (void)setTwoSideEnabled:(BOOL)a3;
- (void)setVertexAmplificationMode:(unint64_t)a3;
- (void)setVertexDescriptor:(id)a3;
- (void)setVertexFunction:(id)a3;
- (void)setVertexLinkedFunctions:(id)a3;
- (void)setVertexPreloadedLibraries:(id)a3;
- (void)validateWithDevice:(id)a3;
@end

@implementation MTLRenderPipelineDescriptorInternal

- (MTLRenderPipelineDescriptorInternal)init
{
  v7.receiver = self;
  v7.super_class = MTLRenderPipelineDescriptorInternal;
  v2 = [(MTLRenderPipelineDescriptorInternal *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_private.var2 = 0;
    v2->_private.attachments = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptorArrayInternal);
    v3->_private.depthAttachmentPixelFormat = 0;
    v3->_private.stencilAttachmentPixelFormat = 0;
    v3->_private.tessellationPartitionMode = 0;
    v3->_private.maxTessellationFactor = 16;
    v3->_private.tessellationFactorScaleEnabled = 0;
    *&v3->_private.tessellationFactorFormat = 0u;
    *&v3->_private.tessellationFactorStepFunction = 0u;
    v3->_private.postVertexDumpBufferIndex = 0;
    *&v3->_private.var0.sampleCount = xmmword_185DE3760;
    v3->_private.var1.sampleCoverageHash = 1065353216;
    v4 = *&v3->_private.var2 | 0x1FE0010;
    v3->_private.colorSampleCount = 0;
    v3->_private.var2 = v4;
    v3->_private.vertexBuffers = objc_alloc_init(MTLPipelineBufferDescriptorArrayInternal);
    v3->_private.fragmentBuffers = objc_alloc_init(MTLPipelineBufferDescriptorArrayInternal);
    v3->_private.supportIndirectCommandBuffers = 0;
    var2 = v3->_private.var2;
    v3->_private.resourceIndex = 0;
    v3->_private.explicitVisibilityGroupID = -1;
    v3->_private.textureWriteRoundingMode = 0;
    v3->_private.maxVertexAmplificationCount = 1;
    v3->_private.var2 = (*&var2 & 0xFFFFFF9FFFFFFFFFLL);
    v3->_private.objectBuffers = objc_alloc_init(MTLPipelineBufferDescriptorArrayInternal);
    v3->_private.meshBuffers = objc_alloc_init(MTLPipelineBufferDescriptorArrayInternal);
    *&v3->_private.supportAddingVertexBinaryFunctions = 0;
    *&v3->_private.vertexLinkedFunctions = 0u;
    *&v3->_private.objectLinkedFunctions = 0u;
    v3->_private.maxVertexStackCallDepth = 1;
    v3->_private.maxFragmentStackCallDepth = 1;
    *&v3->_private.supportAddingMeshBinaryFunctions = 0;
    *&v3->_private.maxMeshStackCallDepth = vdupq_n_s64(1uLL);
    v3->_private.vertexPreloadedLibraries = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v3->_private.fragmentPreloadedLibraries = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v3->_private.objectPreloadedLibraries = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v3->_private.meshPreloadedLibraries = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v3->_private.profileControl = 0;
    v3->_private.maxAccelerationStructureTraversalDepth = 0;
    v3->_private.shaderValidation = 0;
    v3->_private.shaderValidationState = 0;
  }

  return v3;
}

- (id)vertexLinkedFunctions
{
  p_private = &self->_private;
  result = self->_private.vertexLinkedFunctions;
  if (!result)
  {
    result = objc_alloc_init(MTLLinkedFunctions);
    v4 = 0;
    atomic_compare_exchange_strong(&p_private->vertexLinkedFunctions, &v4, result);
    if (v4)
    {

      return p_private->vertexLinkedFunctions;
    }

    else
    {
      p_private->vertexLinkedFunctions = result;
    }
  }

  return result;
}

- (id)fragmentLinkedFunctions
{
  p_private = &self->_private;
  result = self->_private.fragmentLinkedFunctions;
  if (!result)
  {
    result = objc_alloc_init(MTLLinkedFunctions);
    v4 = 0;
    atomic_compare_exchange_strong(&p_private->fragmentLinkedFunctions, &v4, result);
    if (v4)
    {

      return p_private->fragmentLinkedFunctions;
    }

    else
    {
      p_private->fragmentLinkedFunctions = result;
    }
  }

  return result;
}

- (void)dealloc
{
  p_private = &self->_private;

  v4.receiver = self;
  v4.super_class = MTLRenderPipelineDescriptorInternal;
  [(MTLRenderPipelineDescriptorInternal *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    p_private = &self->_private;
    v9 = (v5 + 48);
    do
    {
      *(*v9 + 8 + v7 * 8) = [(MTLRenderPipelineColorAttachmentDescriptorInternal *)p_private->attachments->_descriptors[v7] copyWithZone:a3];
      ++v7;
    }

    while (v7 != 8);
    *(v6 + 728) = p_private->colorAttachmentMappingState;
    *(v6 + 120) = *&p_private->depthAttachmentPixelFormat;
    *(v6 + 136) = *&p_private->tessellationPartitionMode;
    *(v6 + 152) = p_private->tessellationFactorScaleEnabled;
    *(v6 + 160) = *&p_private->tessellationFactorFormat;
    *(v6 + 176) = *&p_private->tessellationFactorStepFunction;
    *(v6 + 200) = p_private->supportIndirectCommandBuffers;
    *(v6 + 224) = p_private->textureWriteRoundingMode;
    *(v6 + 272) = *(v6 + 272) & 0xFFFFFFDFFFFFFFFFLL | (((*&p_private->var2 >> 37) & 1) << 37);
    *(v6 + 288) = p_private->resourceIndex;
    *(v6 + 192) = p_private->postVertexDumpBufferIndex;
    *(v6 + 280) = *&p_private->vertexDepthCompareClampMask;
    *(v6 + 520) = p_private->needsCustomBorderColorSamplers;
    *(v6 + 232) = p_private->var0.sampleCount;
    *(v6 + 240) = p_private->sampleMask;
    *(v6 + 248) = p_private->var1.sampleCoverageHash;
    *(v6 + 264) = p_private->colorSampleCount;
    *(v6 + 272) = p_private->var2.miscHash[0];
    *(v6 + 276) = p_private->var2.miscHash[1];
    *(v6 + 296) = [(NSString *)p_private->label copyWithZone:a3];
    *(v6 + 720) = [(NSString *)p_private->name copyWithZone:a3];
    *(v6 + 488) = p_private->pipelineLibrary;
    *(v6 + 320) = [(MTLVertexDescriptorInternal *)p_private->vertexDescriptor copyWithZone:a3];
    *(v6 + 304) = p_private->vertexFunction;
    v10 = 0;
    *(v6 + 312) = p_private->fragmentFunction;
    do
    {
      *(*(v6 + 456) + 8 + v10 * 8) = [(MTLPipelineBufferDescriptorInternal *)p_private->vertexBuffers->_descriptors[v10] copyWithZone:a3];
      ++v10;
    }

    while (v10 != 31);
    for (i = 0; i != 31; ++i)
    {
      *(*(v6 + 464) + 8 + i * 8) = [(MTLPipelineBufferDescriptorInternal *)p_private->fragmentBuffers->_descriptors[i] copyWithZone:a3];
    }

    *(v6 + 472) = [(NSDictionary *)p_private->driverCompilerOptions copy];
    *(v6 + 480) = [(NSDictionary *)p_private->gpuCompilerSPIOptions copy];
    *(v6 + 524) = p_private->maxVertexAmplificationCount;
    *(v6 + 512) = p_private->pluginData;
    *(v6 + 528) = [(NSArray *)p_private->binaryArchives copy];
    *(v6 + 328) = p_private->objectFunction;
    v12 = 0;
    *(v6 + 336) = p_private->meshFunction;
    depth = p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth;
    *(v6 + 344) = *&p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width;
    *(v6 + 360) = depth;
    v14 = *&p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width;
    *(v6 + 384) = p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth;
    *(v6 + 368) = v14;
    maxTotalThreadsPerMeshThreadgroup = p_private->maxTotalThreadsPerMeshThreadgroup;
    *(v6 + 440) = p_private->maxTotalThreadsPerObjectThreadgroup;
    *(v6 + 448) = maxTotalThreadsPerMeshThreadgroup;
    v16 = *&p_private->maxPipelineChildren.width;
    *(v6 + 408) = p_private->maxPipelineChildren.depth;
    *(v6 + 392) = v16;
    *(v6 + 416) = p_private->pipelineMemoryLength;
    do
    {
      *(*(v6 + 424) + 8 + v12 * 8) = [(MTLPipelineBufferDescriptorInternal *)p_private->objectBuffers->_descriptors[v12] copyWithZone:a3];
      ++v12;
    }

    while (v12 != 31);
    for (j = 0; j != 31; ++j)
    {
      *(*(v6 + 432) + 8 + j * 8) = [(MTLPipelineBufferDescriptorInternal *)p_private->meshBuffers->_descriptors[j] copyWithZone:a3];
    }

    *(v6 + 536) = [(MTLLinkedFunctions *)p_private->vertexLinkedFunctions copy];
    *(v6 + 544) = [(MTLLinkedFunctions *)p_private->fragmentLinkedFunctions copy];
    *(v6 + 552) = [(MTLLinkedFunctions *)p_private->objectLinkedFunctions copy];
    *(v6 + 560) = [(MTLLinkedFunctions *)p_private->meshLinkedFunctions copy];
    *(v6 + 568) = [(NSArray *)p_private->vertexPreloadedLibraries copy];
    *(v6 + 576) = [(NSArray *)p_private->fragmentPreloadedLibraries copy];
    *(v6 + 584) = [(NSArray *)p_private->objectPreloadedLibraries copy];
    *(v6 + 592) = [(NSArray *)p_private->meshPreloadedLibraries copy];
    *(v6 + 600) = p_private->maxVertexStackCallDepth;
    *(v6 + 608) = p_private->maxFragmentStackCallDepth;
    *(v6 + 616) = *&p_private->supportAddingVertexBinaryFunctions;
    *(v6 + 624) = *&p_private->maxMeshStackCallDepth;
    *(v6 + 640) = *&p_private->supportAddingMeshBinaryFunctions;
    *(v6 + 648) = [(MTLProfileControl *)p_private->profileControl copy];
    *(v6 + 656) = p_private->explicitVisibilityGroupID;
    *(v6 + 664) = p_private->maxAccelerationStructureTraversalDepth;
    *(v6 + 208) = *&p_private->shaderValidation;
    *(v6 + 272) = *(v6 + 272) & 0xFFFFFDFFFFFFFFFFLL | (((*&p_private->var2 >> 41) & 1) << 41);
    v18 = *&p_private->requiredThreadsPerObjectThreadgroup.width;
    *(v6 + 688) = p_private->requiredThreadsPerObjectThreadgroup.depth;
    *(v6 + 672) = v18;
    v19 = p_private->requiredThreadsPerMeshThreadgroup.depth;
    *(v6 + 696) = *&p_private->requiredThreadsPerMeshThreadgroup.width;
    *(v6 + 712) = v19;
  }

  return v6;
}

- (id)formattedDescription:(unint64_t)a3
{
  v58[98] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  [@"\n" stringByPaddingToLength:a3 + 8 withString:@" " startingAtIndex:0];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  v58[0] = v5;
  v58[1] = @"label =";
  v45 = self;
  p_private = &self->_private;
  label = self->_private.label;
  name = @"<none>";
  if (!label)
  {
    label = @"<none>";
  }

  v58[2] = label;
  v58[3] = v5;
  if (self->_private.name)
  {
    name = self->_private.name;
  }

  v58[4] = @"name =";
  v58[5] = name;
  v58[6] = v5;
  v58[7] = @"Alpha to Coverage =";
  v58[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_private.var2.miscHash[0] & 3];
  v58[9] = v5;
  v58[10] = @"Alpha to One =";
  v58[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(self->_private.var2.miscHash[0] >> 2) & 3];
  v58[12] = v5;
  v58[13] = @"Rasterization Enabled =";
  v58[14] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(self->_private.var2.miscHash[0] >> 4) & 1];
  v58[15] = v5;
  v58[16] = @"Sample Coverage =";
  LODWORD(v10) = self->_private.var1.sampleCoverageHash;
  v58[17] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v58[18] = v5;
  v58[19] = @"Sample Mask =";
  v58[20] = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%lx", self->_private.sampleMask];
  v58[21] = v5;
  v58[22] = @"Raster Sample Count =";
  v58[23] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.var0.sampleCount];
  v58[24] = v5;
  v58[25] = @"Input Primitive Topology =";
  v58[26] = inputPrimitiveTopologyName(((*&self->_private.var2 >> 5) & 3));
  v58[27] = v5;
  v58[28] = @"Depth Attachment Format =";
  v58[29] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(self->_private.depthAttachmentPixelFormat)];
  v58[30] = v5;
  v58[31] = @"Stencil Attachment Format =";
  v58[32] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(self->_private.stencilAttachmentPixelFormat)];
  v58[33] = v5;
  v58[34] = @"tessellationPartitionMode =";
  tessellationPartitionMode = self->_private.tessellationPartitionMode;
  v12 = @"Unknown";
  v13 = @"Unknown";
  if (tessellationPartitionMode <= 3)
  {
    v13 = off_1E6EECF48[tessellationPartitionMode];
  }

  v58[35] = v13;
  v58[36] = v5;
  v58[37] = @"maxTessellationFactor =";
  v58[38] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_private->maxTessellationFactor];
  v58[39] = v5;
  v58[40] = @"tessellationFactorScaleEnabled =";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:p_private->tessellationFactorScaleEnabled];
  v15 = @"MTLTessellationFactorFormatFloat_SPI";
  v58[41] = v14;
  v58[42] = v5;
  tessellationFactorFormat = p_private->tessellationFactorFormat;
  tessellationControlPointIndexType = p_private->tessellationControlPointIndexType;
  if (tessellationFactorFormat != 1)
  {
    v15 = @"Unknown";
  }

  if (!tessellationFactorFormat)
  {
    v15 = @"MTLTessellationFactorFormatHalf";
  }

  v58[43] = @"tessellationFactorFormat =";
  v58[44] = v15;
  v58[45] = v5;
  v58[46] = @"tessellationControlPointIndexType =";
  if (tessellationControlPointIndexType <= 2)
  {
    v12 = off_1E6EECF68[tessellationControlPointIndexType];
  }

  v58[47] = v12;
  v58[48] = v5;
  v58[49] = @"tessellationFactorStepFunction =";
  tessellationFactorStepFunction = p_private->tessellationFactorStepFunction;
  v19 = @"Unknown";
  v20 = @"Unknown";
  if (tessellationFactorStepFunction <= 3)
  {
    v20 = off_1E6EECF80[tessellationFactorStepFunction];
  }

  tessellationOutputWindingOrder = p_private->tessellationOutputWindingOrder;
  if (tessellationOutputWindingOrder == 1)
  {
    v19 = @"MTLWindingCounterClockwise";
  }

  v58[50] = v20;
  v58[51] = v5;
  if (!tessellationOutputWindingOrder)
  {
    v19 = @"MTLWindingClockwise";
  }

  v58[52] = @"tessellationOutputWindingOrder =";
  v58[53] = v19;
  v58[54] = v5;
  v58[55] = @"Vertex Function =";
  vertexFunction = p_private->vertexFunction;
  if (vertexFunction)
  {
    v23 = [(MTLFunction *)vertexFunction formattedDescription:a3 + 8];
  }

  else
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v58[56] = v23;
  v58[57] = v5;
  v58[58] = @"Fragment Function =";
  fragmentFunction = p_private->fragmentFunction;
  if (fragmentFunction)
  {
    v25 = [(MTLFunction *)fragmentFunction formattedDescription:a3 + 8];
  }

  else
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v58[59] = v25;
  v58[60] = v5;
  v58[61] = @"Vertex Array:";
  v26 = MTLVertexDescriptorDescription(p_private->vertexDescriptor, a3 + 8);
  if (!v26)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v58[62] = v26;
  v58[63] = v5;
  v58[64] = @"Vertex Amplification Mode =";
  v27 = @"MTLVertexAmplificationModeMask";
  if ((*&p_private->var2 & 0x1000) == 0)
  {
    v27 = @"MTLVertexAmplificationModeCount";
  }

  v58[65] = v27;
  v58[66] = v5;
  v58[67] = @"Max Vertex Amplification Count =";
  v58[68] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:p_private->maxVertexAmplificationCount];
  v58[69] = v5;
  v58[70] = @"supportIndirectCommandBuffers =";
  v58[71] = [MEMORY[0x1E696AD98] numberWithBool:p_private->supportIndirectCommandBuffers];
  v58[72] = v5;
  v58[73] = @"shaderValidation =";
  v58[74] = [MEMORY[0x1E696AD98] numberWithInteger:p_private->shaderValidation];
  v58[75] = v5;
  v58[76] = @"shaderValidationState =";
  v58[77] = [MEMORY[0x1E696AD98] numberWithInteger:p_private->shaderValidationState];
  v58[78] = v5;
  v58[79] = @"textureWriteRoundingMode =";
  v58[80] = MTLRoundingModeString(p_private->textureWriteRoundingMode);
  v58[81] = v5;
  v58[82] = @"forceResourceIndex =";
  v58[83] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*&p_private->var2 >> 37) & 1];
  v58[84] = v5;
  v58[85] = @"resourceIndex =";
  v58[86] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:p_private->resourceIndex];
  v58[87] = v5;
  v58[88] = @"Vertex   Depth Compare Clamp Mask =";
  v58[89] = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", p_private->vertexDepthCompareClampMask];
  v58[90] = v5;
  v58[91] = @"Fragment Depth Compare Clamp Mask =";
  v58[92] = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", p_private->fragmentDepthCompareClampMask];
  v58[93] = v5;
  v58[94] = @"Needs custom border color samplers = ";
  v58[95] = [MEMORY[0x1E696AD98] numberWithBool:p_private->needsCustomBorderColorSamplers];
  v58[96] = v5;
  v58[97] = @"Color Attachments:";
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v58, 98)}];
  for (i = 0; i != 8; ++i)
  {
    if (p_private->attachments->_descriptors[i])
    {
      v57[0] = v5;
      v57[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Color Attachment %u:", i];
      v57[2] = pipelineColorAttachmentFormattedDescription(a3 + 8, p_private->attachments->_descriptors[i]);
      v29 = v57;
    }

    else
    {
      v56[0] = v5;
      v56[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Color Attachment %u:", i];
      v56[2] = pipelineColorAttachmentDefaultFormattedDescription(a3 + 8);
      v29 = v56;
    }

    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v29, 3)}];
  }

  pipelineLibrary = p_private->pipelineLibrary;
  if (pipelineLibrary)
  {
    v55[0] = v5;
    v55[1] = @"Pipeline Library:";
    v55[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", pipelineLibrary];
    [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v55, 3)}];
  }

  for (j = 0; j != 31; ++j)
  {
    [v6 addObject:v5];
    [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Vertex Buffer %u:", j)}];
    v32 = p_private->vertexBuffers->_descriptors[j];
    if (v32)
    {
      v33 = pipelineBufferFormattedDescription(a3 + 8, v32);
    }

    else
    {
      v33 = pipelineBufferDefaultFormattedDescription(a3 + 8);
    }

    [v6 addObject:v33];
  }

  for (k = 0; k != 31; ++k)
  {
    [v6 addObject:v5];
    [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Fragment Buffer %u:", k)}];
    v35 = p_private->fragmentBuffers->_descriptors[k];
    if (v35)
    {
      v36 = pipelineBufferFormattedDescription(a3 + 8, v35);
    }

    else
    {
      v36 = pipelineBufferDefaultFormattedDescription(a3 + 8);
    }

    [v6 addObject:v36];
  }

  v54[0] = v5;
  v54[1] = @"vertexLinkedFunctions =";
  vertexLinkedFunctions = p_private->vertexLinkedFunctions;
  if (vertexLinkedFunctions)
  {
    v38 = [(MTLLinkedFunctions *)vertexLinkedFunctions formattedDescription:a3 + 8];
  }

  else
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v54[2] = v38;
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v54, 3)}];
  v53[0] = v5;
  v53[1] = @"fragmentLinkedFunctions =";
  fragmentLinkedFunctions = p_private->fragmentLinkedFunctions;
  if (fragmentLinkedFunctions)
  {
    v40 = [(MTLLinkedFunctions *)fragmentLinkedFunctions formattedDescription:a3 + 8];
  }

  else
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v53[2] = v40;
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v53, 3)}];
  v52[0] = v5;
  v52[1] = @"supportAddingVertexBinaryFunctions =";
  if (p_private->supportAddingVertexBinaryFunctions)
  {
    v41 = @"YES";
  }

  else
  {
    v41 = @"NO";
  }

  v52[2] = v41;
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v52, 3)}];
  v51[0] = v5;
  v51[1] = @"maxVertexCallStackDepth =";
  v51[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_private->maxVertexStackCallDepth];
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v51, 3)}];
  v50[0] = v5;
  v50[1] = @"supportAddingFragmentBinaryFunctions =";
  if (p_private->supportAddingFragmentBinaryFunctions)
  {
    v42 = @"YES";
  }

  else
  {
    v42 = @"NO";
  }

  v50[2] = v42;
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v50, 3)}];
  v49[0] = v5;
  v49[1] = @"maxFragmentCallStackDepth =";
  v49[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_private->maxFragmentStackCallDepth];
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v49, 3)}];
  v48[0] = v5;
  v48[1] = @"explicitVisibilityGroupID =";
  v48[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:p_private->explicitVisibilityGroupID];
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v48, 3)}];
  v47[0] = v5;
  v47[1] = @"maxAccelerationStructureTraversalDepth =";
  v47[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_private->maxAccelerationStructureTraversalDepth];
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v47, 3)}];
  v46.receiver = v45;
  v46.super_class = MTLRenderPipelineDescriptorInternal;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLRenderPipelineDescriptorInternal description](&v46, sel_description), objc_msgSend(v6, "componentsJoinedByString:", @" "];
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setForceSoftwareVertexFetch:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setTessellationPartitionMode:(unint64_t)a3
{
  if (a3 >= 4)
  {
    MTLReportFailure(0, "validateMTLTessellationPartitionMode", 2669, @"tessellationPartitionMode is not a valid MTLTessellationPartitionMode.", v3, v4, v5, v6, v9);
  }

  self->_private.tessellationPartitionMode = a3;
}

- (void)setMaxTessellationFactor:(unint64_t)a3
{
  if (a3 - 65 <= 0xFFFFFFFFFFFFFFBFLL)
  {
    [(MTLRenderPipelineDescriptorInternal *)self setMaxTessellationFactor:a2, a3, v3, v4, v5, v6, v7, v10];
  }

  self->_private.maxTessellationFactor = a3;
}

- (void)setTessellationFactorFormat:(unint64_t)a3
{
  if (a3 >= 2)
  {
    MTLReportFailure(0, "validateMTLTessellationFactorFormat", 2739, @"tessellationFactorFormat is not a valid MTLTessellationFactorFormat.", v3, v4, v5, v6, v9);
  }

  self->_private.tessellationFactorFormat = a3;
}

- (void)setTessellationControlPointIndexType:(unint64_t)a3
{
  if (a3 >= 3)
  {
    MTLReportFailure(0, "validateMTLTessellationControlPointIndexType", 2771, @"tessellationControlPointIndexType is not a valid MTLTessellationControlPointIndexType.", v3, v4, v5, v6, v9);
  }

  self->_private.tessellationControlPointIndexType = a3;
}

- (void)setTessellationFactorStepFunction:(unint64_t)a3
{
  if (a3 >= 4)
  {
    MTLReportFailure(0, "validateMTLTessellationFactorStepFunction", 2802, @"tessellationFactorStepFunction is not a valid MTLTessellationFactorStepFunction.", v3, v4, v5, v6, v9);
  }

  self->_private.tessellationFactorStepFunction = a3;
}

- (void)setTessellationOutputWindingOrder:(unint64_t)a3
{
  if (a3 >= 2)
  {
    MTLReportFailure(0, "validateMTLWinding", 2832, @"tessellationOutputWindingOrder is not a valid MTLWinding.", v3, v4, v5, v6, v9);
  }

  self->_private.tessellationOutputWindingOrder = a3;
}

- (void)setForceResourceIndex:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setAlphaToOneEnabled:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFFFFF3 | v3);
}

- (void)setRasterizationEnabled:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setVertexAmplificationMode:(unint64_t)a3
{
  v8 = a3;
  if (a3 >= 2)
  {
    [(MTLRenderPipelineDescriptorInternal *)a3 setVertexAmplificationMode:a2, a3, v3, v4, v5, v6, v7];
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFFEFFFLL | ((v8 & 1) << 12));
}

- (void)setLogicOperationEnabled:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setAlphaTestEnabled:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setPointSmoothEnabled:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setPointCoordLowerLeft:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setPointSizeOutputVS:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setTwoSideEnabled:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFFDFFFLL | v3);
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

- (void)setOpenGLModeEnabled:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setSampleCoverageInvert:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setDepthStencilWriteDisabled:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setInputPrimitiveTopology:(unint64_t)a3
{
  v8 = a3;
  if (a3 >= 4)
  {
    [(MTLRenderPipelineDescriptorInternal *)a3 setInputPrimitiveTopology:a2, a3, v3, v4, v5, v6, v7];
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFFFFFFFFFF9FLL | (32 * (v8 & 3)));
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

- (void)setVertexLinkedFunctions:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPipelineDescriptorInternal *)isKindOfClass setVertexLinkedFunctions:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  p_private = &self->_private;
  if (p_private->vertexLinkedFunctions != a3)
  {
    vertexLinkedFunctions = p_private->vertexLinkedFunctions;
    p_private->vertexLinkedFunctions = [a3 copy];
  }
}

- (void)setFragmentLinkedFunctions:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPipelineDescriptorInternal *)isKindOfClass setFragmentLinkedFunctions:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  p_private = &self->_private;
  if (p_private->fragmentLinkedFunctions != a3)
  {
    fragmentLinkedFunctions = p_private->fragmentLinkedFunctions;
    p_private->fragmentLinkedFunctions = [a3 copy];
  }
}

- (id)objectLinkedFunctions
{
  p_private = &self->_private;
  result = self->_private.objectLinkedFunctions;
  if (!result)
  {
    result = objc_alloc_init(MTLLinkedFunctions);
    v4 = 0;
    atomic_compare_exchange_strong(&p_private->objectLinkedFunctions, &v4, result);
    if (v4)
    {

      return p_private->objectLinkedFunctions;
    }

    else
    {
      p_private->objectLinkedFunctions = result;
    }
  }

  return result;
}

- (void)setObjectLinkedFunctions:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPipelineDescriptorInternal *)isKindOfClass setObjectLinkedFunctions:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  p_private = &self->_private;
  if (p_private->objectLinkedFunctions != a3)
  {
    objectLinkedFunctions = p_private->objectLinkedFunctions;
    p_private->objectLinkedFunctions = [a3 copy];
  }
}

- (id)meshLinkedFunctions
{
  p_private = &self->_private;
  result = self->_private.meshLinkedFunctions;
  if (!result)
  {
    result = objc_alloc_init(MTLLinkedFunctions);
    v4 = 0;
    atomic_compare_exchange_strong(&p_private->meshLinkedFunctions, &v4, result);
    if (v4)
    {

      return p_private->meshLinkedFunctions;
    }

    else
    {
      p_private->meshLinkedFunctions = result;
    }
  }

  return result;
}

- (void)setMeshLinkedFunctions:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPipelineDescriptorInternal *)isKindOfClass setMeshLinkedFunctions:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  p_private = &self->_private;
  if (p_private->meshLinkedFunctions != a3)
  {
    meshLinkedFunctions = p_private->meshLinkedFunctions;
    p_private->meshLinkedFunctions = [a3 copy];
  }
}

- (void)setVertexPreloadedLibraries:(id)a3
{
  p_private = &self->_private;
  vertexPreloadedLibraries = self->_private.vertexPreloadedLibraries;
  if (vertexPreloadedLibraries != a3)
  {

    p_private->vertexPreloadedLibraries = [a3 copy];
  }
}

- (void)setFragmentPreloadedLibraries:(id)a3
{
  p_private = &self->_private;
  fragmentPreloadedLibraries = self->_private.fragmentPreloadedLibraries;
  if (fragmentPreloadedLibraries != a3)
  {

    p_private->fragmentPreloadedLibraries = [a3 copy];
  }
}

- (void)setObjectPreloadedLibraries:(id)a3
{
  p_private = &self->_private;
  objectPreloadedLibraries = self->_private.objectPreloadedLibraries;
  if (objectPreloadedLibraries != a3)
  {

    p_private->objectPreloadedLibraries = [a3 copy];
  }
}

- (void)setMeshPreloadedLibraries:(id)a3
{
  p_private = &self->_private;
  meshPreloadedLibraries = self->_private.meshPreloadedLibraries;
  if (meshPreloadedLibraries != a3)
  {

    p_private->meshPreloadedLibraries = [a3 copy];
  }
}

- (void)setInsertVertexLibraries:(id)a3
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  [(MTLRenderPipelineDescriptorInternal *)self setVertexPreloadedLibraries:a3];
}

- (void)setInsertFragmentLibraries:(id)a3
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  [(MTLRenderPipelineDescriptorInternal *)self setFragmentPreloadedLibraries:a3];
}

- (void)setInsertObjectLibraries:(id)a3
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  [(MTLRenderPipelineDescriptorInternal *)self setObjectPreloadedLibraries:a3];
}

- (void)setInsertMeshLibraries:(id)a3
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  [(MTLRenderPipelineDescriptorInternal *)self setMeshPreloadedLibraries:a3];
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
  self->_private.var2 = 0;
  rtBlendDescHash = self->_private.rtBlendDescHash;
  do
  {

    p_private->attachments->_descriptors[v2] = 0;
    rtBlendDescHash[v2++] = 0;
  }

  while (v2 != 8);
  *&p_private->depthAttachmentPixelFormat = 0u;
  p_private->tessellationPartitionMode = 0;
  p_private->maxTessellationFactor = 16;
  p_private->tessellationFactorScaleEnabled = 0;
  p_private->supportIndirectCommandBuffers = 0;
  *&p_private->tessellationFactorFormat = 0u;
  *&p_private->tessellationFactorStepFunction = 0u;
  var2 = p_private->var2;
  *&p_private->vertexDepthCompareClampMask = 0;
  p_private->resourceIndex = 0;
  p_private->postVertexDumpBufferIndex = 0;
  *&p_private->textureWriteRoundingMode = xmmword_185DB7AF0;
  p_private->sampleMask = -1;
  p_private->var1.sampleCoverageHash = 1065353216;
  p_private->maxVertexAmplificationCount = 1;
  p_private->colorSampleCount = 0;
  p_private->var2 = (*&var2 & 0xFFFFFFD0F001FFEFLL | 0x20FFE0010);
  p_private->needsCustomBorderColorSamplers = 0;

  v6 = 0;
  p_private->label = 0;
  do
  {

    p_private->vertexBuffers->_descriptors[v6++] = 0;
  }

  while (v6 != 31);
  for (i = 0; i != 31; ++i)
  {

    p_private->fragmentBuffers->_descriptors[i] = 0;
  }

  p_private->vertexFunction = 0;
  p_private->fragmentFunction = 0;

  p_private->vertexDescriptor = 0;
  p_private->objectFunction = 0;

  v8 = 0;
  p_private->meshFunction = 0;
  p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width = 0;
  p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.height = 0;
  p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth = 0;
  p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width = 0;
  p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.height = 0;
  p_private->maxTotalThreadsPerObjectThreadgroup = 0;
  p_private->maxTotalThreadsPerMeshThreadgroup = 0;
  p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth = 0;
  p_private->maxPipelineChildren.width = 0;
  p_private->maxPipelineChildren.depth = 0;
  p_private->pipelineMemoryLength = 0;
  p_private->maxPipelineChildren.height = 0;
  do
  {

    p_private->objectBuffers->_descriptors[v8++] = 0;
  }

  while (v8 != 31);
  for (j = 0; j != 31; ++j)
  {

    p_private->meshBuffers->_descriptors[j] = 0;
  }

  p_private->pluginData = 0;
  p_private->binaryArchives = 0;

  p_private->vertexLinkedFunctions = 0;
  p_private->fragmentLinkedFunctions = 0;

  p_private->objectLinkedFunctions = 0;
  p_private->meshLinkedFunctions = 0;

  p_private->vertexPreloadedLibraries = 0;
  p_private->fragmentPreloadedLibraries = 0;

  p_private->objectPreloadedLibraries = 0;
  p_private->meshPreloadedLibraries = 0;
  *&p_private->supportAddingVertexBinaryFunctions = 0;
  p_private->maxVertexStackCallDepth = 1;
  p_private->maxFragmentStackCallDepth = 1;
  *&p_private->supportAddingMeshBinaryFunctions = 0;
  *&p_private->maxMeshStackCallDepth = vdupq_n_s64(1uLL);

  p_private->profileControl = 0;
  p_private->explicitVisibilityGroupID = -1;
  p_private->maxAccelerationStructureTraversalDepth = 0;
  *&p_private->shaderValidation = 0u;
  *&p_private->requiredThreadsPerObjectThreadgroup.width = 0u;
  p_private->requiredThreadsPerMeshThreadgroup.width = 0;
  p_private->requiredThreadsPerObjectThreadgroup.depth = 0;
  p_private->requiredThreadsPerMeshThreadgroup.depth = 0;
  p_private->requiredThreadsPerMeshThreadgroup.height = 0;
  p_private->colorAttachmentMappingState = 0;
}

- (void)setLabel:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPipelineDescriptorInternal *)isKindOfClass setLabel:v11, v12, v13, v14, v15, v16, v17, v20];
    }
  }

  else
  {
    [(MTLRenderPipelineDescriptorInternal *)self setLabel:a2, 0, v3, v4, v5, v6, v7, v20];
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
      [(MTLRenderPipelineDescriptorInternal *)isKindOfClass setName:v11, v12, v13, v14, v15, v16, v17, v20];
    }
  }

  else
  {
    [(MTLRenderPipelineDescriptorInternal *)self setName:a2, 0, v3, v4, v5, v6, v7, v20];
  }

  p_private = &self->_private;
  name = p_private->name;
  if (name != a3)
  {

    p_private->name = [a3 copy];
  }
}

- (void)setVertexFunction:(id)a3
{
  if (a3)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(MTLRenderPipelineDescriptorInternal *)a3 setVertexFunction:v5, v6, v7, v8, v9, v10, v11, v22];
    }

    v12 = [a3 functionType];
    if (v12 != 1)
    {
      [(MTLRenderPipelineDescriptorInternal *)v12 setVertexFunction:v13, v14, v15, v16, v17, v18, v19, v22];
    }
  }

  v20 = a3;
  p_private = &self->_private;

  p_private->vertexFunction = a3;
}

- (void)setFragmentFunction:(id)a3
{
  if (a3)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(MTLRenderPipelineDescriptorInternal *)a3 setFragmentFunction:v5, v6, v7, v8, v9, v10, v11, v22];
    }

    v12 = [a3 functionType];
    if (v12 != 2)
    {
      [(MTLRenderPipelineDescriptorInternal *)v12 setFragmentFunction:v13, v14, v15, v16, v17, v18, v19, v22];
    }
  }

  v20 = a3;
  p_private = &self->_private;

  p_private->fragmentFunction = a3;
}

- (void)setObjectFunction:(id)a3
{
  if (a3)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(MTLRenderPipelineDescriptorInternal *)a3 setObjectFunction:v5, v6, v7, v8, v9, v10, v11, v22];
    }

    v12 = [a3 functionType];
    if (v12 != 8)
    {
      [(MTLRenderPipelineDescriptorInternal *)v12 setObjectFunction:v13, v14, v15, v16, v17, v18, v19, v22];
    }
  }

  v20 = a3;
  p_private = &self->_private;

  p_private->objectFunction = a3;
}

- (void)setMeshFunction:(id)a3
{
  if (a3)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(MTLRenderPipelineDescriptorInternal *)a3 setMeshFunction:v5, v6, v7, v8, v9, v10, v11, v22];
    }

    v12 = [a3 functionType];
    if (v12 != 7)
    {
      [(MTLRenderPipelineDescriptorInternal *)v12 setMeshFunction:v13, v14, v15, v16, v17, v18, v19, v22];
    }
  }

  v20 = a3;
  p_private = &self->_private;

  p_private->meshFunction = a3;
}

- (void)setObjectThreadsPerThreadgroup:(id *)a3
{
  v3 = *&a3->var0;
  self->_private.objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth = a3->var2;
  *&self->_private.objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width = v3;
}

- (void)setMeshThreadsPerThreadgroup:(id *)a3
{
  var2 = a3->var2;
  *&self->_private.meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width = *&a3->var0;
  self->_private.meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth = var2;
}

- (void)setRequiredThreadsPerObjectThreadgroup:(id *)a3
{
  var2 = a3->var2;
  *&self->_private.requiredThreadsPerObjectThreadgroup.width = *&a3->var0;
  self->_private.requiredThreadsPerObjectThreadgroup.depth = var2;
}

- (void)setRequiredThreadsPerMeshThreadgroup:(id *)a3
{
  v3 = *&a3->var0;
  self->_private.requiredThreadsPerMeshThreadgroup.depth = a3->var2;
  *&self->_private.requiredThreadsPerMeshThreadgroup.width = v3;
}

- (void)setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var2 = (*&self->_private.var2 & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setMaxPipelineChildren:(id *)a3
{
  v3 = *&a3->var0;
  self->_private.maxPipelineChildren.depth = a3->var2;
  *&self->_private.maxPipelineChildren.width = v3;
}

- (void)setPipelineLibrary:(id)a3
{
  p_private = &self->_private;
  pipelineLibrary = self->_private.pipelineLibrary;
  if (pipelineLibrary != a3)
  {

    p_private->pipelineLibrary = a3;
  }
}

- (void)attachVertexDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPipelineDescriptorInternal *)isKindOfClass attachVertexDescriptor:v6, v7, v8, v9, v10, v11, v12, v15];
    }
  }

  p_private = &self->_private;
  vertexDescriptor = p_private->vertexDescriptor;
  if (vertexDescriptor != a3)
  {

    p_private->vertexDescriptor = a3;
  }
}

- (void)setVertexDescriptor:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLRenderPipelineDescriptorInternal *)isKindOfClass setVertexDescriptor:v6, v7, v8, v9, v10, v11, v12, v15];
    }
  }

  p_private = &self->_private;
  vertexDescriptor = p_private->vertexDescriptor;
  if (vertexDescriptor != a3)
  {

    p_private->vertexDescriptor = [a3 copy];
  }
}

- (id)vertexDescriptor
{
  p_private = &self->_private;
  result = self->_private.vertexDescriptor;
  if (!result)
  {
    result = objc_alloc_init(MTLVertexDescriptorInternal);
    p_private->vertexDescriptor = result;
  }

  return result;
}

- (void)setDriverCompilerOptions:(id)a3
{
  p_private = &self->_private;
  driverCompilerOptions = self->_private.driverCompilerOptions;
  if (driverCompilerOptions != a3)
  {

    p_private->driverCompilerOptions = [a3 copy];
  }
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

- (unint64_t)hash
{
  if ([MTLRenderPipelineDescriptorInternal hash]::onceToken != -1)
  {
    [MTLRenderPipelineDescriptorInternal hash];
  }

  p_private = &self->_private;
  bzero(v30, 0x5F8uLL);
  v4 = 0;
  descriptors = p_private->attachments->_descriptors;
  do
  {
    v6 = *(descriptors + v4 * 4);
    if (v6)
    {
      v7 = (v6 + 8);
    }

    else
    {
      v7 = &_MTLDefaultRenderPipelineAttachmentPrivate;
    }

    *&v30[v4] = *v7;
    v4 += 2;
  }

  while (v4 != 16);
  v31 = vmovn_s64(*&p_private->depthAttachmentPixelFormat);
  maxTessellationFactor = p_private->maxTessellationFactor;
  tessellationPartitionMode = p_private->tessellationPartitionMode;
  v33 = maxTessellationFactor;
  tessellationFactorScaleEnabled = p_private->tessellationFactorScaleEnabled;
  v9 = *&p_private->tessellationFactorFormat;
  v10 = vmovn_s64(*&p_private->tessellationFactorStepFunction);
  *v9.i8 = vmovn_s64(v9);
  v9.i16[1] = v9.i16[2];
  v9.i16[2] = v10.i16[0];
  v9.i16[3] = v10.i16[2];
  v35 = vmovn_s16(v9).u32[0];
  supportIndirectCommandBuffers = p_private->supportIndirectCommandBuffers;
  label = p_private->label;
  resourceIndex = p_private->resourceIndex;
  textureWriteRoundingMode = p_private->textureWriteRoundingMode;
  postVertexDumpBufferIndex = p_private->postVertexDumpBufferIndex;
  needsCustomBorderColorSamplers = p_private->needsCustomBorderColorSamplers;
  var2 = p_private->var2;
  colorSampleCount = p_private->colorSampleCount;
  v42 = *&p_private->vertexDepthCompareClampMask;
  v43 = var2;
  v44 = (p_private->sampleMask << 8) | (p_private->var1.sampleCoverageHash << 32) | LOBYTE(p_private->var0.sampleCount);
  v45 = 0;
  v46 = [(NSString *)label hash];
  v47 = [(MTLFunction *)p_private->vertexFunction hash];
  v48 = [(MTLFunction *)p_private->fragmentFunction hash];
  vertexDescriptor = p_private->vertexDescriptor;
  if (vertexDescriptor)
  {
    v14 = [(MTLVertexDescriptorInternal *)vertexDescriptor hash];
  }

  else
  {
    v14 = [MTLRenderPipelineDescriptorInternal hash]::defaultVertexDescriptorHash;
  }

  v49 = v14;
  v15 = p_private->vertexBuffers->_descriptors;
  for (i = 20; i != 51; ++i)
  {
    if (*v15)
    {
      v17 = &(*v15)->_private;
    }

    else
    {
      v17 = &_MTLDefaultPipelineBufferPrivate;
    }

    *&v30[2 * i] = *v17;
    ++v15;
  }

  v18 = p_private->fragmentBuffers->_descriptors;
  for (j = 51; j != 82; ++j)
  {
    if (*v18)
    {
      v20 = &(*v18)->_private;
    }

    else
    {
      v20 = &_MTLDefaultPipelineBufferPrivate;
    }

    *&v30[2 * j] = *v20;
    ++v18;
  }

  v50 = [(NSDictionary *)p_private->driverCompilerOptions hash];
  v51 = [(NSDictionary *)p_private->gpuCompilerSPIOptions hash];
  maxVertexAmplificationCount = p_private->maxVertexAmplificationCount;
  v53 = [(NSDictionary *)p_private->pluginData hash];
  v54 = MTLHashArray(p_private->binaryArchives, 1, 0);
  v21 = p_private->objectBuffers->_descriptors;
  for (k = 87; k != 118; ++k)
  {
    if (*v21)
    {
      v23 = &(*v21)->_private;
    }

    else
    {
      v23 = &_MTLDefaultPipelineBufferPrivate;
    }

    *&v30[2 * k] = *v23;
    ++v21;
  }

  v24 = p_private->meshBuffers->_descriptors;
  for (m = 118; m != 149; ++m)
  {
    if (*v24)
    {
      v26 = &(*v24)->_private;
    }

    else
    {
      v26 = &_MTLDefaultPipelineBufferPrivate;
    }

    *&v30[2 * m] = *v26;
    ++v24;
  }

  v55 = [(MTLFunction *)p_private->objectFunction hash];
  v56 = [(MTLFunction *)p_private->meshFunction hash];
  v57 = *&p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width;
  depth = p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth;
  v59 = *&p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width;
  v60 = p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth;
  maxTotalThreadsPerMeshThreadgroup = p_private->maxTotalThreadsPerMeshThreadgroup;
  maxTotalThreadsPerObjectThreadgroup = p_private->maxTotalThreadsPerObjectThreadgroup;
  v65 = maxTotalThreadsPerMeshThreadgroup;
  v61 = *&p_private->maxPipelineChildren.width;
  pipelineMemoryLength = p_private->pipelineMemoryLength;
  v62 = p_private->maxPipelineChildren.depth;
  v63 = pipelineMemoryLength;
  v66 = [(MTLLinkedFunctions *)p_private->vertexLinkedFunctions hash];
  v67 = [(MTLLinkedFunctions *)p_private->fragmentLinkedFunctions hash];
  v68 = [(MTLLinkedFunctions *)p_private->objectLinkedFunctions hash];
  v69 = [(MTLLinkedFunctions *)p_private->meshLinkedFunctions hash];
  v70 = MTLHashArray(p_private->vertexPreloadedLibraries, 1, 1);
  v71 = MTLHashArray(p_private->fragmentPreloadedLibraries, 1, 1);
  v72 = MTLHashArray(p_private->objectPreloadedLibraries, 1, 1);
  v73 = MTLHashArray(p_private->meshPreloadedLibraries, 1, 1);
  v74 = -p_private->supportAddingVertexBinaryFunctions;
  v75 = -p_private->supportAddingFragmentBinaryFunctions;
  maxVertexStackCallDepth = p_private->maxVertexStackCallDepth;
  maxFragmentStackCallDepth = p_private->maxFragmentStackCallDepth;
  v78 = -p_private->supportAddingMeshBinaryFunctions;
  v79 = -p_private->supportAddingObjectBinaryFunctions;
  v80 = *&p_private->maxMeshStackCallDepth;
  v81 = [(MTLProfileControl *)p_private->profileControl hash];
  explicitVisibilityGroupID = p_private->explicitVisibilityGroupID;
  maxAccelerationStructureTraversalDepth = p_private->maxAccelerationStructureTraversalDepth;
  v84 = *&p_private->shaderValidation;
  v85 = v85 & 0xF8 | p_private->colorAttachmentMappingState & 7;
  return _MTLHashState(v30, 0x5F8uLL);
}

void __43__MTLRenderPipelineDescriptorInternal_hash__block_invoke()
{
  v0 = objc_alloc_init(MTLVertexDescriptor);
  [MTLRenderPipelineDescriptorInternal hash]::defaultVertexDescriptorHash = [(MTLVertexDescriptor *)v0 hash];
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
      v9 = a3 + 48;
      while (1)
      {
        v10 = p_private->attachments->_descriptors[v7];
        v11 = *(*v9 + 8 + v7 * 8);
        if (v10 != v11)
        {
          v12 = !v10 || v11 == 0;
          if (v12 || v10->_private.var0.var1.var0 != v11->_private.var0.var1.var0)
          {
            break;
          }
        }

        if (++v7 == 8)
        {
          v13 = 0;
          while (1)
          {
            v14 = p_private->vertexBuffers->_descriptors[v13];
            v15 = *(*(v9 + 51) + 8 + v13 * 8);
            if (v14 != v15)
            {
              v16 = !v14 || v15 == 0;
              if (v16 || v14->_private.var0.var1.var0 != v15->_private.var0.var1.var0)
              {
                goto LABEL_3;
              }
            }

            if (++v13 == 31)
            {
              v17 = 0;
              while (1)
              {
                v18 = p_private->fragmentBuffers->_descriptors[v17];
                v19 = *(*(v9 + 52) + 8 + v17 * 8);
                if (v18 != v19)
                {
                  v20 = !v18 || v19 == 0;
                  if (v20 || v18->_private.var0.var1.var0 != v19->_private.var0.var1.var0)
                  {
                    goto LABEL_3;
                  }
                }

                if (++v17 == 31)
                {
                  if (p_private->depthAttachmentPixelFormat != *(v9 + 9) || p_private->stencilAttachmentPixelFormat != *(v9 + 10) || p_private->tessellationPartitionMode != *(v9 + 11) || p_private->maxTessellationFactor != *(v9 + 12) || p_private->tessellationFactorScaleEnabled != v9[104] || p_private->tessellationFactorFormat != *(v9 + 14) || p_private->tessellationControlPointIndexType != *(v9 + 15) || p_private->tessellationFactorStepFunction != *(v9 + 16) || p_private->tessellationOutputWindingOrder != *(v9 + 17) || p_private->supportIndirectCommandBuffers != v9[152] || p_private->textureWriteRoundingMode != *(v9 + 22) || p_private->resourceIndex != *(v9 + 30) || p_private->postVertexDumpBufferIndex != *(v9 + 18) || p_private->vertexDepthCompareClampMask != *(v9 + 58) || p_private->fragmentDepthCompareClampMask != *(v9 + 59) || p_private->needsCustomBorderColorSamplers != v9[472] || p_private->var0.sampleCount != *(v9 + 23) || p_private->sampleMask != *(v9 + 24) || p_private->var1.sampleCoverage != *(v9 + 50) || p_private->colorSampleCount != *(v9 + 27) || p_private->var2.miscHash[0] != *(v9 + 56) || p_private->var2.miscHash[1] != *(v9 + 57))
                  {
                    goto LABEL_3;
                  }

                  label = p_private->label;
                  if (label == *(v9 + 31) || (v6 = [(NSString *)label isEqual:?]) != 0)
                  {
                    vertexFunction = p_private->vertexFunction;
                    if (vertexFunction == *(v9 + 32) || (v6 = [(MTLFunction *)vertexFunction isEqual:?]) != 0)
                    {
                      fragmentFunction = p_private->fragmentFunction;
                      if (fragmentFunction == *(v9 + 33) || (v6 = [(MTLFunction *)fragmentFunction isEqual:?]) != 0)
                      {
                        v6 = MTLVertexDescriptorEquivalent(p_private->vertexDescriptor, *(v9 + 34));
                        if (v6)
                        {
                          driverCompilerOptions = p_private->driverCompilerOptions;
                          if (driverCompilerOptions == *(v9 + 53) || (v6 = [(NSDictionary *)driverCompilerOptions isEqual:?]) != 0)
                          {
                            gpuCompilerSPIOptions = p_private->gpuCompilerSPIOptions;
                            if (gpuCompilerSPIOptions == *(v9 + 54) || (v6 = [(NSDictionary *)gpuCompilerSPIOptions isEqual:?]) != 0)
                            {
                              if (p_private->maxVertexAmplificationCount != *(v9 + 119))
                              {
                                goto LABEL_3;
                              }

                              pluginData = p_private->pluginData;
                              if (pluginData == *(v9 + 58) || (v6 = [(NSDictionary *)pluginData isEqual:?]) != 0)
                              {
                                v6 = MTLCompareArray(p_private->binaryArchives, *(v9 + 60), 1, 0);
                                if (v6)
                                {
                                  objectFunction = p_private->objectFunction;
                                  if (objectFunction == *(v9 + 35) || (v6 = [(MTLFunction *)objectFunction isEqual:?]) != 0)
                                  {
                                    meshFunction = p_private->meshFunction;
                                    if (meshFunction == *(v9 + 36) || (v6 = [(MTLFunction *)meshFunction isEqual:?]) != 0)
                                    {
                                      v29 = 0;
                                      while (1)
                                      {
                                        v30 = p_private->objectBuffers->_descriptors[v29];
                                        v31 = *(*(v9 + 47) + 8 + v29 * 8);
                                        if (v30 != v31)
                                        {
                                          v32 = !v30 || v31 == 0;
                                          if (v32 || v30->_private.var0.var1.var0 != v31->_private.var0.var1.var0)
                                          {
                                            goto LABEL_3;
                                          }
                                        }

                                        if (++v29 == 31)
                                        {
                                          v33 = 0;
                                          while (1)
                                          {
                                            v34 = p_private->meshBuffers->_descriptors[v33];
                                            v35 = *(*(v9 + 48) + 8 + v33 * 8);
                                            if (v34 != v35)
                                            {
                                              v36 = !v34 || v35 == 0;
                                              if (v36 || v34->_private.var0.var1.var0 != v35->_private.var0.var1.var0)
                                              {
                                                goto LABEL_3;
                                              }
                                            }

                                            if (++v33 == 31)
                                            {
                                              if (p_private->pipelineMemoryLength == *(v9 + 46) && p_private->maxTotalThreadsPerObjectThreadgroup == *(v9 + 49) && p_private->maxTotalThreadsPerMeshThreadgroup == *(v9 + 50))
                                              {
                                                v37 = p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width == *(v9 + 37) && p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.height == *(v9 + 38);
                                                if (v37 && p_private->objectThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth == *(v9 + 39))
                                                {
                                                  v39 = p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.width == *(v9 + 40) && p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.height == *(v9 + 41);
                                                  if (v39 && p_private->meshThreadsPerThreadgroup_DO_NOT_USE_WILL_BE_REMOVED.depth == *(v9 + 42))
                                                  {
                                                    v41 = p_private->maxPipelineChildren.width == *(v9 + 43) && p_private->maxPipelineChildren.height == *(v9 + 44);
                                                    if (v41 && p_private->maxPipelineChildren.depth == *(v9 + 45))
                                                    {
                                                      v6 = MTLCompareFunctionList(p_private->vertexLinkedFunctions, *(v9 + 61));
                                                      if (!v6)
                                                      {
                                                        return v6;
                                                      }

                                                      v6 = MTLCompareFunctionList(p_private->fragmentLinkedFunctions, *(v9 + 62));
                                                      if (!v6)
                                                      {
                                                        return v6;
                                                      }

                                                      v6 = MTLCompareFunctionList(p_private->objectLinkedFunctions, *(v9 + 63));
                                                      if (!v6)
                                                      {
                                                        return v6;
                                                      }

                                                      v6 = MTLCompareFunctionList(p_private->meshLinkedFunctions, *(v9 + 64));
                                                      if (!v6)
                                                      {
                                                        return v6;
                                                      }

                                                      v6 = MTLCompareArray(p_private->vertexPreloadedLibraries, *(v9 + 65), 1, 1);
                                                      if (!v6)
                                                      {
                                                        return v6;
                                                      }

                                                      v6 = MTLCompareArray(p_private->fragmentPreloadedLibraries, *(v9 + 66), 1, 1);
                                                      if (!v6)
                                                      {
                                                        return v6;
                                                      }

                                                      v6 = MTLCompareArray(p_private->objectPreloadedLibraries, *(v9 + 67), 1, 1);
                                                      if (!v6)
                                                      {
                                                        return v6;
                                                      }

                                                      v6 = MTLCompareArray(p_private->meshPreloadedLibraries, *(v9 + 68), 1, 1);
                                                      if (!v6)
                                                      {
                                                        return v6;
                                                      }

                                                      if (p_private->supportAddingVertexBinaryFunctions == v9[568] && p_private->supportAddingFragmentBinaryFunctions == v9[569] && p_private->maxVertexStackCallDepth == *(v9 + 69) && p_private->maxFragmentStackCallDepth == *(v9 + 70) && p_private->supportAddingMeshBinaryFunctions == v9[592] && p_private->supportAddingObjectBinaryFunctions == v9[593] && p_private->maxMeshStackCallDepth == *(v9 + 72) && p_private->maxObjectStackCallDepth == *(v9 + 73))
                                                      {
                                                        profileControl = p_private->profileControl;
                                                        if (profileControl != *(v9 + 75))
                                                        {
                                                          v6 = [(MTLProfileControl *)profileControl isEqual:?];
                                                          if (!v6)
                                                          {
                                                            return v6;
                                                          }
                                                        }

                                                        if (p_private->explicitVisibilityGroupID == *(v9 + 152) && p_private->maxAccelerationStructureTraversalDepth == *(v9 + 77) && p_private->shaderValidation == *(v9 + 20) && p_private->shaderValidationState == *(v9 + 21))
                                                        {
                                                          LOBYTE(v6) = p_private->colorAttachmentMappingState == *(v9 + 85);
                                                          return v6;
                                                        }
                                                      }
                                                    }
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
  v8 = [a3 supportsTextureSampleCount:self->_private.var0.sampleCount];
  if (v8)
  {
    if ((*(&p_private->var2.var0 + 5) & 2) == 0)
    {
      [a3 registerRenderPipelineDescriptor:self];
    }

    validateWithDevice(a3, p_private);
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rasterSampleCount (%lu) is not supported by device.", p_private->var0.sampleCount];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:v9 forKey:*MEMORY[0x1E696A578]];
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PipelineError" code:1 userInfo:v10];
  }

  return v8;
}

- (void)validateWithDevice:(id)a3
{
  [a3 registerRenderPipelineDescriptor:self];

  validateWithDevice(a3, &self->_private);
}

- (id)newSerializedVertexDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5
{
  v5 = a3;
  size_ptr = 0;
  buffer_ptr = 0;
  __src = 0;
  v40 = 0;
  v41 = 0;
  p_private = &self->_private;
  v7 = (a4 >> 14) & 0x400 | (((self->_private.var2.miscHash[0] >> 9) & 1) << 19) | (self->_private.var2.miscHash[0] >> 4) & 1;
  v8 = [(MTLFunction *)self->_private.vertexFunction patchType]== 0;
  v9 = v7 | v5 & 0x18;
  v10 = (v5 & 0x18) == 0 || v8;
  if ((v8 & (v5 >> 2)) != 0)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 4;
  }

  v13 = v12 | v9;
  var2 = p_private->var2;
  v15 = v9 | 4;
  if ((*&var2 & 0x4000000000) != 0)
  {
    v15 = v7 | 0x1C;
  }

  if ((*&var2 & 0x4000000200) != 0)
  {
    v13 = v15;
  }

  v16 = v13 & 0xFFF8049F | var2.miscHash[0] & 0x60 | ((p_private->tessellationControlPointIndexType & 3) << 8);
  postVertexDumpBufferIndex_low = LODWORD(p_private->postVertexDumpBufferIndex);
  v18 = v16 & 0xFFF807FF | (LODWORD(p_private->postVertexDumpBufferIndex) << 11);
  LODWORD(v40) = v18;
  vertexLinkedFunctions = p_private->vertexLinkedFunctions;
  if (vertexLinkedFunctions && ([(MTLLinkedFunctions *)vertexLinkedFunctions functions]&& [(NSArray *)[(MTLLinkedFunctions *)p_private->vertexLinkedFunctions functions] count]|| [(MTLLinkedFunctions *)p_private->vertexLinkedFunctions privateFunctions]&& [(NSArray *)[(MTLLinkedFunctions *)p_private->vertexLinkedFunctions privateFunctions] count]))
  {
    v18 |= 0x100000u;
    LODWORD(v40) = v18;
  }

  if ((v18 & 0x100000) != 0)
  {
    v20 = 20;
  }

  else
  {
    v20 = 12;
  }

  if ((v18 & 4) != 0 && (vertexDescriptor = p_private->vertexDescriptor) != 0 && (v22 = [(MTLVertexDescriptorInternal *)vertexDescriptor newSerializedDescriptor]) != 0)
  {
    v23 = v22;
    v18 |= 2u;
    LODWORD(v40) = v18;
    v24 = dispatch_data_create_map(v22, &buffer_ptr, &size_ptr);
    v25 = size_ptr + v20;
    dispatch_release(v23);
  }

  else
  {
    v24 = 0;
    v25 = v20;
  }

  v37 = 0;
  v38 = 0;
  fragmentFunction = p_private->fragmentFunction;
  if (fragmentFunction && (v27 = [(MTLFunction *)fragmentFunction functionInputs]) != 0)
  {
    v28 = dispatch_data_create_map(v27, &v38, &v37);
    v25 += v37;
    v18 |= 0x80u;
    LODWORD(v40) = v18;
  }

  else
  {
    v28 = 0;
  }

  v29 = [(MTLFunction *)p_private->vertexFunction device];
  if (!v29)
  {
    v29 = [(MTLFunction *)p_private->meshFunction device];
  }

  v30 = MTLSerializePluginDataDictionary([v29 pluginData], 0);
  v31 = v30;
  if (v30)
  {
    LODWORD(__src) = v25;
    v25 += v30;
  }

  v32 = MTLSerializePluginDataDictionary(p_private->pluginData, 0);
  v33 = v32;
  if (v32)
  {
    HIDWORD(__src) = v25;
    v25 += v32;
  }

  if ((v18 & 0x100000) != 0)
  {
    _MTLPopulateLinkedFunctionExtraData(p_private->vertexLinkedFunctions);
  }

  v34 = malloc_type_malloc(v25, 0x100004077774924uLL);
  memcpy(v34, &__src, v20);
  v35 = &v34[v20];
  if (v24)
  {
    memcpy(v35, buffer_ptr, size_ptr);
    v35 += size_ptr;
    dispatch_release(v24);
  }

  if (v28)
  {
    memcpy(v35, v38, v37);
    v35 += v37;
    dispatch_release(v28);
  }

  if (v31)
  {
    v35 += MTLSerializePluginDataDictionary([v29 pluginData], v35);
  }

  if (v33)
  {
    MTLSerializePluginDataDictionary(p_private->pluginData, v35);
  }

  if ((v40 & 0x100000) != 0)
  {
    memcpy(&v34[HIDWORD(v40)], MEMORY[0], v41);
    free(MEMORY[0]);
    MEMORY[0x1865FF210](0, 0x1010C40113C0ABBLL);
  }

  return dispatch_data_create(v34, v25, 0, *MEMORY[0x1E69E9648]);
}

- (id)newSerializedObjectDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5
{
  result = newMeshSerializedObjectOrMeshData(0, a3, a4, &self->_private);
  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

- (id)newSerializedMeshDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5
{
  result = newMeshSerializedObjectOrMeshData(0, a3, a4, &self->_private);
  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

- (uint64_t)setTextureWriteFPRoundingMode:(uint64_t)result
{
  if (result)
  {
    *(result + 224) = a2;
  }

  return result;
}

- (uint64_t)textureWriteFPRoundingMode
{
  if (result)
  {
    return *(result + 224);
  }

  return result;
}

- (uint64_t)internalPipeline
{
  if (result)
  {
    return (*(result + 277) >> 1) & 1;
  }

  return result;
}

- (uint64_t)setInternalPipeline:(uint64_t)result
{
  if (result)
  {
    v2 = 0x20000000000;
    if (!a2)
    {
      v2 = 0;
    }

    *(result + 272) = *(result + 272) & 0xFFFFFDFFFFFFFFFFLL | v2;
  }

  return result;
}

- (uint64_t)fastBlendDescriptorAtIndex:(uint64_t)a3
{
  if (result)
  {
    v9 = result;
    if (a2 >= 8)
    {
      MTLReportFailure(0, "[MTLRenderPipelineDescriptorInternal fastBlendDescriptorAtIndex:]", 3769, @"index must be < %lu.", a5, a6, a7, a8, 8);
    }

    return *(*(v9 + 48) + 8 + 8 * a2);
  }

  return result;
}

- (void)setVertexFunction:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF4F4B58] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLRenderPipelineDescriptorInternal setVertexFunction:]", 3816, @"vertexFunction is not a MTLFunction.", v9, v10, v11, v12, a9);
  }
}

- (void)setFragmentFunction:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF4F4B58] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLRenderPipelineDescriptorInternal setFragmentFunction:]", 3833, @"fragmentFunction is not a MTLFunction.", v9, v10, v11, v12, a9);
  }
}

- (void)setObjectFunction:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF4F4B58] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLRenderPipelineDescriptorInternal setObjectFunction:]", 3851, @"objectFunction is not a MTLFunction.", v9, v10, v11, v12, a9);
  }
}

- (void)setMeshFunction:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF4F4B58] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLRenderPipelineDescriptorInternal setMeshFunction:]", 3868, @"meshFunction is not a MTLFunction.", v9, v10, v11, v12, a9);
  }
}

@end