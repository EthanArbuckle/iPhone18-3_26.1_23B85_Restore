@interface MTLMeshRenderPipelineDescriptor
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)maxThreadgroupsPerMeshGrid;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateWithDevice:(id)a3 error:(id *)a4;
- (MTLLinkedFunctions)fragmentLinkedFunctions;
- (MTLLinkedFunctions)meshLinkedFunctions;
- (MTLLinkedFunctions)objectLinkedFunctions;
- (MTLMeshRenderPipelineDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)formattedDescription:(unint64_t)a3;
- (id)newRenderPipelineDescriptorWithDevice:(id)a3 error:(id *)a4;
- (id)newSerializedFragmentDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newSerializedMeshDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)newSerializedObjectDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5;
- (unint64_t)hash;
- (void)_initMembers;
- (void)_releaseMembers;
- (void)dealloc;
- (void)reset;
- (void)setAlphaTestEnabled:(BOOL)a3;
- (void)setAlphaToOneEnabled:(BOOL)alphaToOneEnabled;
- (void)setBinaryArchives:(id)a3;
- (void)setDepthStencilWriteDisabled:(BOOL)a3;
- (void)setDriverCompilerOptions:(id)a3;
- (void)setForceResourceIndex:(BOOL)a3;
- (void)setFragmentFunction:(id)fragmentFunction;
- (void)setFragmentLinkedFunctions:(MTLLinkedFunctions *)fragmentLinkedFunctions;
- (void)setFragmentPreloadedLibraries:(id)a3;
- (void)setGpuCompilerSPIOptions:(id)a3;
- (void)setInsertFragmentLibraries:(id)a3;
- (void)setInsertMeshLibraries:(id)a3;
- (void)setInsertObjectLibraries:(id)a3;
- (void)setLabel:(NSString *)label;
- (void)setLogicOperationEnabled:(BOOL)a3;
- (void)setMeshFunction:(id)meshFunction;
- (void)setMeshLinkedFunctions:(MTLLinkedFunctions *)meshLinkedFunctions;
- (void)setMeshPreloadedLibraries:(id)a3;
- (void)setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)meshThreadgroupSizeIsMultipleOfThreadExecutionWidth;
- (void)setName:(id)a3;
- (void)setNeedsCustomBorderColorSamplers:(BOOL)a3;
- (void)setObjectFunction:(id)objectFunction;
- (void)setObjectLinkedFunctions:(MTLLinkedFunctions *)objectLinkedFunctions;
- (void)setObjectPreloadedLibraries:(id)a3;
- (void)setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)objectThreadgroupSizeIsMultipleOfThreadExecutionWidth;
- (void)setOpenGLModeEnabled:(BOOL)a3;
- (void)setPipelineLibrary:(id)a3;
- (void)setPluginData:(id)a3;
- (void)setPointCoordLowerLeft:(BOOL)a3;
- (void)setPointSizeOutputVS:(BOOL)a3;
- (void)setPointSmoothEnabled:(BOOL)a3;
- (void)setProfileControl:(id)a3;
- (void)setRasterizationEnabled:(BOOL)rasterizationEnabled;
- (void)setRequiredThreadsPerMeshThreadgroup:(id *)a3;
- (void)setRequiredThreadsPerObjectThreadgroup:(id *)a3;
- (void)setSampleCoverageInvert:(BOOL)a3;
- (void)setSupportAddingFragmentBinaryFunctions:(BOOL)a3;
- (void)setSupportAddingMeshBinaryFunctions:(BOOL)a3;
- (void)setSupportAddingObjectBinaryFunctions:(BOOL)a3;
- (void)setSupportIndirectCommandBuffers:(BOOL)supportIndirectCommandBuffers;
- (void)setTwoSideEnabled:(BOOL)a3;
- (void)setVertexAmplificationMode:(unint64_t)a3;
@end

@implementation MTLMeshRenderPipelineDescriptor

- (void)_initMembers
{
  self->_private.attachments = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptorArrayInternal);
  self->_private.rasterSampleCount = 1;
  self->_private.sampleMask = -1;
  self->_private.var0.sampleCoverageHash = 1065353216;
  *&self->_private.var1 |= 0x3FC010uLL;
  self->_private.objectBuffers = objc_alloc_init(MTLPipelineBufferDescriptorArrayInternal);
  self->_private.meshBuffers = objc_alloc_init(MTLPipelineBufferDescriptorArrayInternal);
  self->_private.fragmentBuffers = objc_alloc_init(MTLPipelineBufferDescriptorArrayInternal);
  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFE1FFFFFFFFFLL | 0x2000000000);
  self->_private.maxObjectStackCallDepth = 1;
  *&self->_private.maxMeshStackCallDepth = vdupq_n_s64(1uLL);
  self->_private.objectPreloadedLibraries = objc_alloc_init(MEMORY[0x1E695DEC8]);
  self->_private.meshPreloadedLibraries = objc_alloc_init(MEMORY[0x1E695DEC8]);
  self->_private.fragmentPreloadedLibraries = objc_alloc_init(MEMORY[0x1E695DEC8]);
  self->_private.explicitVisibilityGroupID = -1;
  self->_private.profileControl = 0;
  self->_private.colorAttachmentMappingState = 0;
  self->_private.shaderValidation = 0;
  self->_private.shaderValidationState = 0;
  self->_private.maxAccelerationStructureTraversalDepth = 0;
}

- (void)_releaseMembers
{
  profileControl = self->_private.profileControl;
}

- (void)reset
{
  [(MTLMeshRenderPipelineDescriptor *)self _releaseMembers];
  *&self->_private.meshPreloadedLibraries = 0u;
  *&self->_private.fragmentLinkedFunctions = 0u;
  *&self->_private.objectLinkedFunctions = 0u;
  *&self->_private.binaryArchives = 0u;
  *&self->_private.gpuCompilerSPIOptions = 0u;
  *&self->_private.fragmentBuffers = 0u;
  *&self->_private.objectBuffers = 0u;
  *&self->_private.maxTotalThreadgroupsPerMeshGrid = 0u;
  *&self->_private.maxTotalThreadsPerObjectThreadgroup = 0u;
  *&self->_private.meshFunction = 0u;
  *&self->_private.label = 0u;
  *(&self->_private.var1.var0 + 4) = 0u;
  *&self->_private.sampleMask = 0u;
  *&self->_private.rasterSampleCount = 0u;
  *&self->_private.stencilAttachmentPixelFormat = 0u;
  *&self->_private.attachments = 0u;
  *&self->_private.requiredThreadsPerMeshThreadgroup.height = 0u;
  *&self->_private.name = 0u;
  *&self->_private.requiredThreadsPerObjectThreadgroup.width = 0u;
  *&self->_private.requiredThreadsPerObjectThreadgroup.depth = 0u;
  *&self->_private.explicitVisibilityGroupID = 0u;
  *&self->_private.shaderValidation = 0u;
  *&self->_private.maxObjectStackCallDepth = 0u;
  *&self->_private.maxFragmentStackCallDepth = 0u;

  [(MTLMeshRenderPipelineDescriptor *)self _initMembers];
}

- (MTLMeshRenderPipelineDescriptor)init
{
  v5.receiver = self;
  v5.super_class = MTLMeshRenderPipelineDescriptor;
  v2 = [(MTLMeshRenderPipelineDescriptor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MTLMeshRenderPipelineDescriptor *)v2 _initMembers];
  }

  return v3;
}

- (void)dealloc
{
  [(MTLMeshRenderPipelineDescriptor *)self _releaseMembers];
  v3.receiver = self;
  v3.super_class = MTLMeshRenderPipelineDescriptor;
  [(MTLMeshRenderPipelineDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[MTLMeshRenderPipelineDescriptor allocWithZone:](MTLMeshRenderPipelineDescriptor init];
  if (v5)
  {
    for (i = 0; i != 8; ++i)
    {
      v5->_private.attachments->_descriptors[i] = [(MTLRenderPipelineColorAttachmentDescriptorInternal *)self->_private.attachments->_descriptors[i] copyWithZone:a3];
    }

    *&v5->_private.depthAttachmentPixelFormat = *&self->_private.depthAttachmentPixelFormat;
    v5->_private.resourceIndex = self->_private.resourceIndex;
    v5->_private.explicitVisibilityGroupID = self->_private.explicitVisibilityGroupID;
    v5->_private.fragmentDepthCompareClampMask = self->_private.fragmentDepthCompareClampMask;
    rasterSampleCount = self->_private.rasterSampleCount;
    v5->_private.textureWriteRoundingMode = self->_private.textureWriteRoundingMode;
    v5->_private.rasterSampleCount = rasterSampleCount;
    v5->_private.sampleMask = self->_private.sampleMask;
    v5->_private.var0.sampleCoverageHash = self->_private.var0.sampleCoverageHash;
    v5->_private.colorSampleCount = self->_private.colorSampleCount;
    v5->_private.var1.miscHash[0] = self->_private.var1.miscHash[0];
    v5->_private.var1.miscHash[1] = self->_private.var1.miscHash[1];
    v5->_private.label = [(NSString *)self->_private.label copyWithZone:a3];
    v5->_private.name = [(NSString *)self->_private.name copyWithZone:a3];
    v5->_private.pipelineLibrary = self->_private.pipelineLibrary;
    v5->_private.objectFunction = self->_private.objectFunction;
    v5->_private.meshFunction = self->_private.meshFunction;
    v8 = 0;
    v5->_private.fragmentFunction = self->_private.fragmentFunction;
    do
    {
      v5->_private.objectBuffers->_descriptors[v8] = [(MTLPipelineBufferDescriptorInternal *)self->_private.objectBuffers->_descriptors[v8] copyWithZone:a3];
      ++v8;
    }

    while (v8 != 31);
    for (j = 0; j != 31; ++j)
    {
      v5->_private.meshBuffers->_descriptors[j] = [(MTLPipelineBufferDescriptorInternal *)self->_private.meshBuffers->_descriptors[j] copyWithZone:a3];
    }

    for (k = 0; k != 31; ++k)
    {
      v5->_private.fragmentBuffers->_descriptors[k] = [(MTLPipelineBufferDescriptorInternal *)self->_private.fragmentBuffers->_descriptors[k] copyWithZone:a3];
    }

    v5->_private.driverCompilerOptions = [(NSDictionary *)self->_private.driverCompilerOptions copy];
    v5->_private.gpuCompilerSPIOptions = [(NSDictionary *)self->_private.gpuCompilerSPIOptions copy];
    v5->_private.pluginData = self->_private.pluginData;
    v5->_private.binaryArchives = [(NSArray *)self->_private.binaryArchives copy];
    *&v5->_private.maxTotalThreadsPerObjectThreadgroup = *&self->_private.maxTotalThreadsPerObjectThreadgroup;
    *&v5->_private.maxTotalThreadgroupsPerMeshGrid = *&self->_private.maxTotalThreadgroupsPerMeshGrid;
    v5->_private.objectLinkedFunctions = [(MTLLinkedFunctions *)self->_private.objectLinkedFunctions copy];
    v5->_private.meshLinkedFunctions = [(MTLLinkedFunctions *)self->_private.meshLinkedFunctions copy];
    v5->_private.fragmentLinkedFunctions = [(MTLLinkedFunctions *)self->_private.fragmentLinkedFunctions copy];
    v5->_private.objectPreloadedLibraries = [(NSArray *)self->_private.objectPreloadedLibraries copy];
    v5->_private.meshPreloadedLibraries = [(NSArray *)self->_private.meshPreloadedLibraries copy];
    v11 = [(NSArray *)self->_private.fragmentPreloadedLibraries copy];
    maxObjectStackCallDepth = self->_private.maxObjectStackCallDepth;
    v5->_private.fragmentPreloadedLibraries = v11;
    v5->_private.maxObjectStackCallDepth = maxObjectStackCallDepth;
    *&v5->_private.maxMeshStackCallDepth = *&self->_private.maxMeshStackCallDepth;
    v5->_private.profileControl = [(MTLProfileControl *)self->_private.profileControl copy];
    *&v5->_private.maxAccelerationStructureTraversalDepth = *&self->_private.maxAccelerationStructureTraversalDepth;
    v5->_private.shaderValidationState = self->_private.shaderValidationState;
    v13 = *&self->_private.requiredThreadsPerObjectThreadgroup.width;
    v5->_private.requiredThreadsPerObjectThreadgroup.depth = self->_private.requiredThreadsPerObjectThreadgroup.depth;
    *&v5->_private.requiredThreadsPerObjectThreadgroup.width = v13;
    v14 = *&self->_private.requiredThreadsPerMeshThreadgroup.width;
    v5->_private.requiredThreadsPerMeshThreadgroup.depth = self->_private.requiredThreadsPerMeshThreadgroup.depth;
    *&v5->_private.requiredThreadsPerMeshThreadgroup.width = v14;
    v5->_private.colorAttachmentMappingState = self->_private.colorAttachmentMappingState;
  }

  return v5;
}

- (unint64_t)hash
{
  bzero(v21, 0x458uLL);
  v3 = 0;
  descriptors = self->_private.attachments->_descriptors;
  do
  {
    v5 = descriptors[v3 / 2];
    if (v5)
    {
      p_private = &v5->_private;
    }

    else
    {
      p_private = &_MTLDefaultRenderPipelineAttachmentPrivate;
    }

    *&v21[v3] = *p_private;
    v3 += 2;
  }

  while (v3 != 16);
  label = self->_private.label;
  resourceIndex = self->_private.resourceIndex;
  explicitVisibilityGroupID = self->_private.explicitVisibilityGroupID;
  rasterSampleCount = self->_private.rasterSampleCount;
  textureWriteRoundingMode = self->_private.textureWriteRoundingMode;
  sampleMask = self->_private.sampleMask;
  colorSampleCount = self->_private.colorSampleCount;
  fragmentDepthCompareClampMask = self->_private.fragmentDepthCompareClampMask;
  v49 = rasterSampleCount;
  v48 = sampleMask;
  sampleCoverageHash = self->_private.var0.sampleCoverageHash;
  v42 = vmovn_s64(*&self->_private.depthAttachmentPixelFormat);
  var1 = self->_private.var1;
  v38 = [(NSString *)label hash];
  v39 = [(MTLFunction *)self->_private.objectFunction hash];
  v40 = [(MTLFunction *)self->_private.meshFunction hash];
  v41 = [(MTLFunction *)self->_private.fragmentFunction hash];
  v10 = self->_private.objectBuffers->_descriptors;
  for (i = 9; i != 40; ++i)
  {
    if (*v10)
    {
      v12 = &(*v10)->_private;
    }

    else
    {
      v12 = &_MTLDefaultPipelineBufferPrivate;
    }

    *&v21[2 * i] = *v12;
    ++v10;
  }

  v13 = self->_private.meshBuffers->_descriptors;
  do
  {
    if (*v13)
    {
      v14 = &(*v13)->_private;
    }

    else
    {
      v14 = &_MTLDefaultPipelineBufferPrivate;
    }

    *&v21[2 * i++] = *v14;
    ++v13;
  }

  while (i != 71);
  v15 = self->_private.fragmentBuffers->_descriptors;
  for (j = 71; j != 102; ++j)
  {
    if (*v15)
    {
      v17 = &(*v15)->_private;
    }

    else
    {
      v17 = &_MTLDefaultPipelineBufferPrivate;
    }

    *&v21[2 * j] = *v17;
    ++v15;
  }

  v23 = [(NSDictionary *)self->_private.driverCompilerOptions hash];
  v24 = [(NSDictionary *)self->_private.gpuCompilerSPIOptions hash];
  v27 = [(NSDictionary *)self->_private.pluginData hash];
  v28 = MTLHashArray(self->_private.binaryArchives, 1, 0);
  v25 = *&self->_private.maxTotalThreadsPerObjectThreadgroup;
  pipelineMemoryLength = self->_private.pipelineMemoryLength;
  maxTotalThreadgroupsPerMeshGrid = self->_private.maxTotalThreadgroupsPerMeshGrid;
  v29 = pipelineMemoryLength;
  v30 = [(MTLLinkedFunctions *)self->_private.objectLinkedFunctions hash];
  v31 = [(MTLLinkedFunctions *)self->_private.meshLinkedFunctions hash];
  v32 = [(MTLLinkedFunctions *)self->_private.fragmentLinkedFunctions hash];
  v33 = MTLHashArray(self->_private.objectPreloadedLibraries, 1, 1);
  v34 = MTLHashArray(self->_private.meshPreloadedLibraries, 1, 1);
  v35 = MTLHashArray(self->_private.fragmentPreloadedLibraries, 1, 1);
  v36 = *&self->_private.maxObjectStackCallDepth;
  profileControl = self->_private.profileControl;
  maxFragmentStackCallDepth = self->_private.maxFragmentStackCallDepth;
  v51 = [(MTLProfileControl *)profileControl hash];
  v52 = *&self->_private.maxAccelerationStructureTraversalDepth;
  shaderValidationState = self->_private.shaderValidationState;
  v54 = *&self->_private.requiredThreadsPerObjectThreadgroup.width;
  depth = self->_private.requiredThreadsPerObjectThreadgroup.depth;
  v56 = *&self->_private.requiredThreadsPerMeshThreadgroup.width;
  v57 = self->_private.requiredThreadsPerMeshThreadgroup.depth;
  colorAttachmentMappingState = self->_private.colorAttachmentMappingState;
  return _MTLHashState(v21, 0x458uLL);
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
      while (1)
      {
        v8 = self->_private.attachments->_descriptors[v7];
        v9 = *(*(a3 + 1) + 8 + v7 * 8);
        if (v8 != v9)
        {
          v10 = !v8 || v9 == 0;
          if (v10 || v8->_private.var0.var1.var0 != v9->_private.var0.var1.var0)
          {
            break;
          }
        }

        if (++v7 == 8)
        {
          v11 = 0;
          while (1)
          {
            v12 = self->_private.objectBuffers->_descriptors[v11];
            v13 = *(*(a3 + 19) + 8 + v11 * 8);
            if (v12 != v13)
            {
              v14 = !v12 || v13 == 0;
              if (v14 || v12->_private.var0.var1.var0 != v13->_private.var0.var1.var0)
              {
                goto LABEL_3;
              }
            }

            if (++v11 == 31)
            {
              v15 = 0;
              while (1)
              {
                v16 = self->_private.meshBuffers->_descriptors[v15];
                v17 = *(*(a3 + 20) + 8 + v15 * 8);
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
                  v19 = 0;
                  while (1)
                  {
                    v20 = self->_private.fragmentBuffers->_descriptors[v19];
                    v21 = *(*(a3 + 21) + 8 + v19 * 8);
                    if (v20 != v21)
                    {
                      v22 = !v20 || v21 == 0;
                      if (v22 || v20->_private.var0.var1.var0 != v21->_private.var0.var1.var0)
                      {
                        goto LABEL_3;
                      }
                    }

                    if (++v19 == 31)
                    {
                      if (self->_private.depthAttachmentPixelFormat != *(a3 + 2) || self->_private.stencilAttachmentPixelFormat != *(a3 + 3) || self->_private.textureWriteRoundingMode != *(a3 + 4) || self->_private.resourceIndex != *(a3 + 10) || self->_private.explicitVisibilityGroupID != *(a3 + 74) || self->_private.fragmentDepthCompareClampMask != *(a3 + 19) || self->_private.rasterSampleCount != *(a3 + 5) || self->_private.sampleMask != *(a3 + 7) || self->_private.var0.sampleCoverage != *(a3 + 16) || self->_private.colorSampleCount != *(a3 + 6) || self->_private.var1.miscHash[0] != *(a3 + 17) || self->_private.var1.miscHash[1] != *(a3 + 18))
                      {
                        goto LABEL_3;
                      }

                      label = self->_private.label;
                      if (label == *(a3 + 11) || (v6 = [(NSString *)label isEqual:?]) != 0)
                      {
                        objectFunction = self->_private.objectFunction;
                        if (objectFunction == *(a3 + 12) || (v6 = [(MTLFunction *)objectFunction isEqual:?]) != 0)
                        {
                          meshFunction = self->_private.meshFunction;
                          if (meshFunction == *(a3 + 13) || (v6 = [(MTLFunction *)meshFunction isEqual:?]) != 0)
                          {
                            fragmentFunction = self->_private.fragmentFunction;
                            if (fragmentFunction == *(a3 + 14) || (v6 = [(MTLFunction *)fragmentFunction isEqual:?]) != 0)
                            {
                              driverCompilerOptions = self->_private.driverCompilerOptions;
                              if (driverCompilerOptions == *(a3 + 22) || (v6 = [(NSDictionary *)driverCompilerOptions isEqual:?]) != 0)
                              {
                                gpuCompilerSPIOptions = self->_private.gpuCompilerSPIOptions;
                                if (gpuCompilerSPIOptions == *(a3 + 23) || (v6 = [(NSDictionary *)gpuCompilerSPIOptions isEqual:?]) != 0)
                                {
                                  pluginData = self->_private.pluginData;
                                  if (pluginData == *(a3 + 24) || (v6 = [(NSDictionary *)pluginData isEqual:?]) != 0)
                                  {
                                    v6 = MTLCompareArray(self->_private.binaryArchives, *(a3 + 25), 1, 0);
                                    if (v6)
                                    {
                                      if (self->_private.pipelineMemoryLength == *(a3 + 18) && self->_private.maxTotalThreadsPerObjectThreadgroup == *(a3 + 15) && self->_private.maxTotalThreadsPerMeshThreadgroup == *(a3 + 16) && self->_private.maxTotalThreadgroupsPerMeshGrid == *(a3 + 17))
                                      {
                                        v6 = MTLCompareFunctionList(self->_private.objectLinkedFunctions, *(a3 + 27));
                                        if (!v6)
                                        {
                                          return v6;
                                        }

                                        v6 = MTLCompareFunctionList(self->_private.meshLinkedFunctions, *(a3 + 28));
                                        if (!v6)
                                        {
                                          return v6;
                                        }

                                        v6 = MTLCompareFunctionList(self->_private.fragmentLinkedFunctions, *(a3 + 29));
                                        if (!v6)
                                        {
                                          return v6;
                                        }

                                        v6 = MTLCompareArray(self->_private.objectPreloadedLibraries, *(a3 + 30), 1, 1);
                                        if (!v6)
                                        {
                                          return v6;
                                        }

                                        v6 = MTLCompareArray(self->_private.meshPreloadedLibraries, *(a3 + 31), 1, 1);
                                        if (!v6)
                                        {
                                          return v6;
                                        }

                                        v6 = MTLCompareArray(self->_private.fragmentPreloadedLibraries, *(a3 + 32), 1, 1);
                                        if (!v6)
                                        {
                                          return v6;
                                        }

                                        if (self->_private.maxObjectStackCallDepth == *(a3 + 33) && self->_private.maxMeshStackCallDepth == *(a3 + 34) && self->_private.maxFragmentStackCallDepth == *(a3 + 35))
                                        {
                                          profileControl = self->_private.profileControl;
                                          if (profileControl != *(a3 + 36))
                                          {
                                            v6 = [(MTLProfileControl *)profileControl isEqual:?];
                                            if (!v6)
                                            {
                                              return v6;
                                            }
                                          }

                                          if (self->_private.maxAccelerationStructureTraversalDepth == *(a3 + 38) && self->_private.shaderValidation == *(a3 + 39) && self->_private.shaderValidationState == *(a3 + 40) && self->_private.requiredThreadsPerObjectThreadgroup.width == *(a3 + 41) && self->_private.requiredThreadsPerObjectThreadgroup.height == *(a3 + 42) && self->_private.requiredThreadsPerObjectThreadgroup.depth == *(a3 + 43) && self->_private.requiredThreadsPerMeshThreadgroup.width == *(a3 + 44) && self->_private.requiredThreadsPerMeshThreadgroup.height == *(a3 + 45) && self->_private.requiredThreadsPerMeshThreadgroup.depth == *(a3 + 46) && [(NSString *)self->_private.name compare:*(a3 + 47)]== NSOrderedSame)
                                          {
                                            LOBYTE(v6) = self->_private.colorAttachmentMappingState == *(a3 + 48);
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
                  }
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

- (id)formattedDescription:(unint64_t)a3
{
  v44[66] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  [@"\n" stringByPaddingToLength:a3 + 8 withString:@" " startingAtIndex:0];
  v37 = 0;
  v38 = 0;
  requiredThreadsPerObjectThreadgroup = self->_private.requiredThreadsPerObjectThreadgroup;
  MTLSizeToNSArray(&requiredThreadsPerObjectThreadgroup, &v38);
  requiredThreadsPerObjectThreadgroup = self->_private.requiredThreadsPerMeshThreadgroup;
  MTLSizeToNSArray(&requiredThreadsPerObjectThreadgroup, &v37);
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:128];
  v44[0] = v5;
  v44[1] = @"label =";
  label = self->_private.label;
  objectFunction = self->_private.objectFunction;
  if (!label)
  {
    label = @"<none>";
  }

  v44[2] = label;
  v44[3] = v5;
  name = self->_private.name;
  if (!name)
  {
    name = @"<none>";
  }

  v44[4] = @"name =";
  v44[5] = name;
  v44[6] = v5;
  v44[7] = @"objectFunction =";
  if (objectFunction)
  {
    v10 = [(MTLFunction *)objectFunction formattedDescription:a3 + 8];
  }

  else
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v44[8] = v10;
  v44[9] = v5;
  v44[10] = @"meshFunction =";
  meshFunction = self->_private.meshFunction;
  if (meshFunction)
  {
    v12 = [(MTLFunction *)meshFunction formattedDescription:a3 + 8];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v44[11] = v12;
  v44[12] = v5;
  v44[13] = @"fragmentFunction =";
  fragmentFunction = self->_private.fragmentFunction;
  if (fragmentFunction)
  {
    v14 = [(MTLFunction *)fragmentFunction formattedDescription:a3 + 8];
  }

  else
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v44[14] = v14;
  v44[15] = v5;
  v44[16] = @"maxTotalThreadsPerObjectThreadgroup =";
  v44[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.maxTotalThreadsPerObjectThreadgroup];
  v44[18] = v5;
  v44[19] = @"maxTotalThreadsPerMeshThreadgroup =";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.maxTotalThreadsPerMeshThreadgroup];
  var1 = self->_private.var1;
  if ((*&var1 & 0x20000000000) != 0)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v44[22] = @"objectThreadgroupSizeIsMultipleOfThreadExecutionWidth =";
  v44[23] = v17;
  v44[20] = v15;
  v44[21] = v5;
  v44[24] = v5;
  v44[25] = @"meshThreadgroupSizeIsMultipleOfThreadExecutionWidth =";
  if ((*&var1 & 0x40000000000) != 0)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v44[26] = v18;
  v44[27] = v5;
  v44[28] = @"payloadMemoryLength =";
  v44[29] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.pipelineMemoryLength];
  v44[30] = v5;
  v44[31] = @"maxTotalThreadgroupsPerMeshGrid =";
  v44[32] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.maxTotalThreadgroupsPerMeshGrid];
  v44[33] = v5;
  v44[34] = @"rasterSampleCount =";
  v44[35] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.rasterSampleCount];
  v44[36] = v5;
  v44[37] = @"alphaToCoverageEnabled =";
  v44[38] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_private.var1.miscHash[0] & 3];
  v44[39] = v5;
  v44[40] = @"alphaToOneEnabled =";
  v44[41] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(self->_private.var1.miscHash[0] >> 2) & 3];
  v44[42] = v5;
  v44[43] = @"rasterizationEnabled =";
  v44[44] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(self->_private.var1.miscHash[0] >> 4) & 1];
  v44[45] = v5;
  v44[46] = @"maxVertexAmplificationCount =";
  v44[47] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*&self->_private.var1 >> 37) & 0xFLL];
  v44[48] = v5;
  v44[49] = @"supportIndirectCommandBuffers =";
  v44[50] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(*&self->_private.var1 >> 33) & 1];
  v44[51] = v5;
  v44[52] = @"maxAccelerationStructureTraversalDepth =";
  v44[53] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_private.maxAccelerationStructureTraversalDepth];
  v44[54] = v5;
  v44[55] = @"shaderValidation =";
  v44[56] = [MEMORY[0x1E696AD98] numberWithInteger:self->_private.shaderValidation];
  v44[57] = v5;
  v44[58] = @"shaderValidationState =";
  v44[59] = [MEMORY[0x1E696AD98] numberWithInteger:self->_private.shaderValidationState];
  v44[60] = v5;
  v44[61] = @"requiredThreadsPerObjectThreadgroup =";
  v44[62] = v38;
  v44[63] = v5;
  v44[64] = @"requiredThreadsPerMeshThreadgroup =";
  v44[65] = v37;
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v44, 66)}];
  v43[0] = v5;
  v43[1] = @"objectLinkedFunctions =";
  objectLinkedFunctions = self->_private.objectLinkedFunctions;
  if (objectLinkedFunctions)
  {
    v20 = [(MTLLinkedFunctions *)objectLinkedFunctions formattedDescription:a3 + 8];
  }

  else
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v43[2] = v20;
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v43, 3)}];
  v42[0] = v5;
  v42[1] = @"meshLinkedFunctions =";
  meshLinkedFunctions = self->_private.meshLinkedFunctions;
  if (meshLinkedFunctions)
  {
    v22 = [(MTLLinkedFunctions *)meshLinkedFunctions formattedDescription:a3 + 8];
  }

  else
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v42[2] = v22;
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v42, 3)}];
  v41[0] = v5;
  v41[1] = @"fragmentLinkedFunctions =";
  fragmentLinkedFunctions = self->_private.fragmentLinkedFunctions;
  if (fragmentLinkedFunctions)
  {
    v24 = [(MTLLinkedFunctions *)fragmentLinkedFunctions formattedDescription:a3 + 8];
  }

  else
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v41[2] = v24;
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v41, 3)}];
  v40[0] = v5;
  v40[1] = @"depthAttachmentPixelFormat =";
  v40[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(self->_private.depthAttachmentPixelFormat)];
  v40[3] = v5;
  v40[4] = @"stencilAttachmentPixelFormat =";
  v40[5] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(self->_private.stencilAttachmentPixelFormat)];
  [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v40, 6)}];
  for (i = 0; i != 8; ++i)
  {
    v26 = self->_private.attachments->_descriptors[i];
    if (v26 && v26->_private.var0.var1.var0 >> 42)
    {
      v39[0] = v5;
      v39[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Color Attachment %u:", i];
      v39[2] = pipelineColorAttachmentFormattedDescription(a3 + 8, v26);
      [v6 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v39, 3)}];
    }
  }

  for (j = 0; j != 31; ++j)
  {
    v28 = self->_private.objectBuffers->_descriptors[j];
    if (v28 && (*&v28->_private.var0.var0 & 3) != 0)
    {
      [v6 addObject:v5];
      [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Object Buffer %u:", j)}];
      [v6 addObject:{pipelineBufferFormattedDescription(a3 + 8, v28)}];
    }
  }

  for (k = 0; k != 31; ++k)
  {
    v30 = self->_private.meshBuffers->_descriptors[k];
    if (v30 && (*&v30->_private.var0.var0 & 3) != 0)
    {
      [v6 addObject:v5];
      [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Mesh Buffer %u:", k)}];
      [v6 addObject:{pipelineBufferFormattedDescription(a3 + 8, v30)}];
    }
  }

  for (m = 0; m != 31; ++m)
  {
    v32 = self->_private.fragmentBuffers->_descriptors[m];
    if (v32 && (*&v32->_private.var0.var0 & 3) != 0)
    {
      [v6 addObject:v5];
      [v6 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Fragment Buffer %u:", m)}];
      [v6 addObject:{pipelineBufferFormattedDescription(a3 + 8, v32)}];
    }
  }

  v35.receiver = self;
  v35.super_class = MTLMeshRenderPipelineDescriptor;
  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", -[MTLMeshRenderPipelineDescriptor description](&v35, sel_description), objc_msgSend(v6, "componentsJoinedByString:", @" "];
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setSupportIndirectCommandBuffers:(BOOL)supportIndirectCommandBuffers
{
  v3 = 0x200000000;
  if (!supportIndirectCommandBuffers)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setForceResourceIndex:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setAlphaToOneEnabled:(BOOL)alphaToOneEnabled
{
  v3 = 4;
  if (!alphaToOneEnabled)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFFFF3 | v3);
}

- (void)setRasterizationEnabled:(BOOL)rasterizationEnabled
{
  v3 = 16;
  if (!rasterizationEnabled)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setVertexAmplificationMode:(unint64_t)a3
{
  if (!isVertexAmplificationModeValid(a3))
  {
    [(MTLMeshRenderPipelineDescriptor *)a3 setVertexAmplificationMode:v5, v6, v7, v8, v9, v10, v11];
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFFDFFLL | ((a3 & 1) << 9));
}

- (void)setLogicOperationEnabled:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setAlphaTestEnabled:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setPointSmoothEnabled:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setPointCoordLowerLeft:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setPointSizeOutputVS:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setTwoSideEnabled:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setPluginData:(id)a3
{
  pluginData = self->_private.pluginData;
  if (pluginData != a3)
  {

    self->_private.pluginData = a3;
  }
}

- (void)setOpenGLModeEnabled:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setNeedsCustomBorderColorSamplers:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setSampleCoverageInvert:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setDepthStencilWriteDisabled:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setBinaryArchives:(id)a3
{
  binaryArchives = self->_private.binaryArchives;
  if (binaryArchives != a3)
  {

    self->_private.binaryArchives = [a3 copy];
  }
}

- (MTLLinkedFunctions)objectLinkedFunctions
{
  result = self->_private.objectLinkedFunctions;
  if (!result)
  {
    result = objc_alloc_init(MTLLinkedFunctions);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_private.objectLinkedFunctions, &v4, result);
    if (v4)
    {

      return self->_private.objectLinkedFunctions;
    }

    else
    {
      self->_private.objectLinkedFunctions = result;
    }
  }

  return result;
}

- (void)setObjectLinkedFunctions:(MTLLinkedFunctions *)objectLinkedFunctions
{
  if (objectLinkedFunctions)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLMeshRenderPipelineDescriptor *)isKindOfClass setObjectLinkedFunctions:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_private.objectLinkedFunctions != objectLinkedFunctions)
  {
    v14 = self->_private.objectLinkedFunctions;
    self->_private.objectLinkedFunctions = [(MTLLinkedFunctions *)objectLinkedFunctions copy];
  }
}

- (MTLLinkedFunctions)meshLinkedFunctions
{
  result = self->_private.meshLinkedFunctions;
  if (!result)
  {
    result = objc_alloc_init(MTLLinkedFunctions);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_private.meshLinkedFunctions, &v4, result);
    if (v4)
    {

      return self->_private.meshLinkedFunctions;
    }

    else
    {
      self->_private.meshLinkedFunctions = result;
    }
  }

  return result;
}

- (void)setMeshLinkedFunctions:(MTLLinkedFunctions *)meshLinkedFunctions
{
  if (meshLinkedFunctions)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLMeshRenderPipelineDescriptor *)isKindOfClass setMeshLinkedFunctions:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_private.meshLinkedFunctions != meshLinkedFunctions)
  {
    v14 = self->_private.meshLinkedFunctions;
    self->_private.meshLinkedFunctions = [(MTLLinkedFunctions *)meshLinkedFunctions copy];
  }
}

- (MTLLinkedFunctions)fragmentLinkedFunctions
{
  result = self->_private.fragmentLinkedFunctions;
  if (!result)
  {
    result = objc_alloc_init(MTLLinkedFunctions);
    v4 = 0;
    atomic_compare_exchange_strong(&self->_private.fragmentLinkedFunctions, &v4, result);
    if (v4)
    {

      return self->_private.fragmentLinkedFunctions;
    }

    else
    {
      self->_private.fragmentLinkedFunctions = result;
    }
  }

  return result;
}

- (void)setFragmentLinkedFunctions:(MTLLinkedFunctions *)fragmentLinkedFunctions
{
  if (fragmentLinkedFunctions)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLMeshRenderPipelineDescriptor *)isKindOfClass setFragmentLinkedFunctions:v6, v7, v8, v9, v10, v11, v12, v13];
    }
  }

  if (self->_private.fragmentLinkedFunctions != fragmentLinkedFunctions)
  {
    v14 = self->_private.fragmentLinkedFunctions;
    self->_private.fragmentLinkedFunctions = [(MTLLinkedFunctions *)fragmentLinkedFunctions copy];
  }
}

- (void)setObjectPreloadedLibraries:(id)a3
{
  objectPreloadedLibraries = self->_private.objectPreloadedLibraries;
  if (objectPreloadedLibraries != a3)
  {

    self->_private.objectPreloadedLibraries = [a3 copy];
  }
}

- (void)setMeshPreloadedLibraries:(id)a3
{
  meshPreloadedLibraries = self->_private.meshPreloadedLibraries;
  if (meshPreloadedLibraries != a3)
  {

    self->_private.meshPreloadedLibraries = [a3 copy];
  }
}

- (void)setFragmentPreloadedLibraries:(id)a3
{
  fragmentPreloadedLibraries = self->_private.fragmentPreloadedLibraries;
  if (fragmentPreloadedLibraries != a3)
  {

    self->_private.fragmentPreloadedLibraries = [a3 copy];
  }
}

- (void)setInsertObjectLibraries:(id)a3
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  [(MTLMeshRenderPipelineDescriptor *)self setObjectPreloadedLibraries:a3];
}

- (void)setInsertMeshLibraries:(id)a3
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  [(MTLMeshRenderPipelineDescriptor *)self setMeshPreloadedLibraries:a3];
}

- (void)setInsertFragmentLibraries:(id)a3
{
  if (!a3)
  {
    a3 = MEMORY[0x1E695E0F0];
  }

  [(MTLMeshRenderPipelineDescriptor *)self setFragmentPreloadedLibraries:a3];
}

- (void)setSupportAddingObjectBinaryFunctions:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setSupportAddingMeshBinaryFunctions:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setSupportAddingFragmentBinaryFunctions:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setLabel:(NSString *)label
{
  if (label)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(MTLMeshRenderPipelineDescriptor *)isKindOfClass setLabel:v6, v7, v8, v9, v10, v11, v12, v14];
    }
  }

  v13 = self->_private.label;
  if (v13 != label)
  {

    self->_private.label = [(NSString *)label copy];
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
      [(MTLMeshRenderPipelineDescriptor *)isKindOfClass setName:v11, v12, v13, v14, v15, v16, v17, v19];
    }
  }

  else
  {
    [(MTLMeshRenderPipelineDescriptor *)self setName:a2, 0, v3, v4, v5, v6, v7, v19];
  }

  name = self->_private.name;
  if (name != a3)
  {

    self->_private.name = [a3 copy];
  }
}

- (void)setObjectFunction:(id)objectFunction
{
  if (objectFunction)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(MTLMeshRenderPipelineDescriptor *)objectFunction setObjectFunction:v5, v6, v7, v8, v9, v10, v11, v21];
    }

    v12 = [objectFunction functionType];
    if (v12 != 8)
    {
      [(MTLMeshRenderPipelineDescriptor *)v12 setObjectFunction:v13, v14, v15, v16, v17, v18, v19, v21];
    }
  }

  v20 = objectFunction;

  self->_private.objectFunction = objectFunction;
}

- (void)setMeshFunction:(id)meshFunction
{
  if (meshFunction)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(MTLMeshRenderPipelineDescriptor *)meshFunction setMeshFunction:v5, v6, v7, v8, v9, v10, v11, v21];
    }

    v12 = [meshFunction functionType];
    if (v12 != 7)
    {
      [(MTLMeshRenderPipelineDescriptor *)v12 setMeshFunction:v13, v14, v15, v16, v17, v18, v19, v21];
    }
  }

  v20 = meshFunction;

  self->_private.meshFunction = meshFunction;
}

- (void)setFragmentFunction:(id)fragmentFunction
{
  if (fragmentFunction)
  {
    if (MTLFailureTypeGetEnabled(1uLL))
    {
      [(MTLMeshRenderPipelineDescriptor *)fragmentFunction setFragmentFunction:v5, v6, v7, v8, v9, v10, v11, v21];
    }

    v12 = [fragmentFunction functionType];
    if (v12 != 2)
    {
      [(MTLMeshRenderPipelineDescriptor *)v12 setFragmentFunction:v13, v14, v15, v16, v17, v18, v19, v21];
    }
  }

  v20 = fragmentFunction;

  self->_private.fragmentFunction = fragmentFunction;
}

- (void)setRequiredThreadsPerObjectThreadgroup:(id *)a3
{
  v3 = *&a3->var0;
  self->_private.requiredThreadsPerObjectThreadgroup.depth = a3->var2;
  *&self->_private.requiredThreadsPerObjectThreadgroup.width = v3;
}

- (void)setRequiredThreadsPerMeshThreadgroup:(id *)a3
{
  v3 = *&a3->var0;
  self->_private.requiredThreadsPerMeshThreadgroup.depth = a3->var2;
  *&self->_private.requiredThreadsPerMeshThreadgroup.width = v3;
}

- (void)setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)objectThreadgroupSizeIsMultipleOfThreadExecutionWidth
{
  v3 = 0x20000000000;
  if (!objectThreadgroupSizeIsMultipleOfThreadExecutionWidth)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)meshThreadgroupSizeIsMultipleOfThreadExecutionWidth
{
  v3 = 0x40000000000;
  if (!meshThreadgroupSizeIsMultipleOfThreadExecutionWidth)
  {
    v3 = 0;
  }

  self->_private.var1 = (*&self->_private.var1 & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)maxThreadgroupsPerMeshGrid
{
  var2 = self[5].var2;
  v4 = var2 != 0;
  retstr->var0 = var2;
  retstr->var1 = v4;
  retstr->var2 = v4;
  return self;
}

- (void)setPipelineLibrary:(id)a3
{
  pipelineLibrary = self->_private.pipelineLibrary;
  if (pipelineLibrary != a3)
  {

    self->_private.pipelineLibrary = a3;
  }
}

- (void)setDriverCompilerOptions:(id)a3
{
  driverCompilerOptions = self->_private.driverCompilerOptions;
  if (driverCompilerOptions != a3)
  {

    self->_private.driverCompilerOptions = [a3 copy];
  }
}

- (void)setGpuCompilerSPIOptions:(id)a3
{
  gpuCompilerSPIOptions = self->_private.gpuCompilerSPIOptions;
  if (gpuCompilerSPIOptions != a3)
  {

    self->_private.gpuCompilerSPIOptions = [a3 copy];
  }
}

- (BOOL)validateWithDevice:(id)a3 error:(id *)a4
{
  v7 = [a3 supportsTextureSampleCount:self->_private.rasterSampleCount];
  if (v7)
  {
    [a3 registerMeshRenderPipelineDescriptor:self];
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    _MTLMessageContextBegin_(v51, "validateWithDevice", 1842, a3, 3, "Mesh Render Pipeline Descriptor Validation");
    if ((self->_private.var1.miscHash[0] & 0x10) != 0)
    {
      v11 = 0;
      while (1)
      {
        v12 = self->_private.attachments->_descriptors[v11];
        if (v12)
        {
          if (v12->_private.var0.var1.var0 >> 42)
          {
            break;
          }
        }

        if (++v11 == 8)
        {
          goto LABEL_7;
        }
      }

      v13 = 1;
    }

    else
    {
LABEL_7:
      v13 = 0;
    }

    validateFunction(v51, a3, self->_private.fragmentFunction, "fragmentFunction", v13, v8, v9, v10);
    validateFunction(v51, a3, self->_private.objectFunction, "objectFunction", 0, v14, v15, v16);
    validateFunction(v51, a3, self->_private.meshFunction, "meshFunction", 1, v17, v18, v19);
    validateMeshRenderPipelinePostMeshShader(v51, a3, &self->_private);
    if ([(NSArray *)[(MTLLinkedFunctions *)self->_private.objectLinkedFunctions binaryFunctions] count]|| [(NSArray *)[(MTLLinkedFunctions *)self->_private.meshLinkedFunctions binaryFunctions] count])
    {
      _MTLMessageContextPush_(v51, 4, @"Binary linked functions are not supported for object and mesh shaders", v20, v21, v22, v23, v24, v46);
    }

    if ((*(&self->_private.var1.var0 + 4) & 2) != 0 && ([a3 supportsMeshShadersInICB] & 1) == 0)
    {
      _MTLMessageContextPush_(v51, 4, @"Use of mesh shader pipelines in indirect command buffers is not supported by this device.", v25, v26, v27, v28, v29, v46);
    }

    maxAccelerationStructureTraversalDepth = self->_private.maxAccelerationStructureTraversalDepth;
    if (maxAccelerationStructureTraversalDepth > [a3 maxAccelerationStructureTraversalDepth])
    {
      v40 = self->_private.maxAccelerationStructureTraversalDepth;
      [a3 maxAccelerationStructureTraversalDepth];
      _MTLMessageContextPush_(v51, 4, @"maxAccelerationStructureTraversalDepth (%lu) must be less than or equal to %lu", v41, v42, v43, v44, v45, v40);
    }

    if (self->_private.objectFunction || ((width = self->_private.requiredThreadsPerObjectThreadgroup.width) != 0 || self->_private.requiredThreadsPerObjectThreadgroup.height || self->_private.requiredThreadsPerObjectThreadgroup.depth) && (height = self->_private.requiredThreadsPerObjectThreadgroup.height, v48 = self->_private.requiredThreadsPerObjectThreadgroup.depth, _MTLMessageContextPush_(v51, 4, @"If objectFunction is nil, requiredThreadsPerObjectThreadgroup must be [0, 0, 0] but is [%lu, %lu, %lu]", v31, v32, v33, v34, v35, width), self->_private.objectFunction))
    {
      v49 = *&self->_private.requiredThreadsPerObjectThreadgroup.width;
      depth = self->_private.requiredThreadsPerObjectThreadgroup.depth;
      validateRequiredThreadsPerThreadgroup(v51, 4, a3, &v49, self->_private.maxTotalThreadsPerObjectThreadgroup, "requiredThreadsPerObjectThreadgroup", v34, v35);
    }

    v49 = *&self->_private.requiredThreadsPerMeshThreadgroup.width;
    depth = self->_private.requiredThreadsPerMeshThreadgroup.depth;
    validateRequiredThreadsPerThreadgroup(v51, 4, a3, &v49, self->_private.maxTotalThreadsPerMeshThreadgroup, "requiredThreadsPerMeshThreadgroup", v34, v35);
    _MTLMessageContextEnd(v51);
  }

  else
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rasterSampleCount (%lu) is not supported by device.", self->_private.rasterSampleCount];
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObject:v36 forKey:*MEMORY[0x1E696A578]];
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PipelineError" code:1 userInfo:v37];
  }

  return v7;
}

- (id)newSerializedFragmentDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5
{
  result = newMeshSerializedFragmentData(a3, a4, &self->_private);
  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

- (id)newSerializedObjectDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5
{
  result = newMeshSerializedObjectOrMeshData<MTLMeshRenderPipelineDescriptorPrivate>(0, a3, a4, &self->_private);
  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

- (id)newSerializedMeshDataWithFlags:(unint64_t)a3 options:(unint64_t)a4 error:(id *)a5
{
  result = newMeshSerializedObjectOrMeshData<MTLMeshRenderPipelineDescriptorPrivate>(1, a3, a4, &self->_private);
  if (a5)
  {
    *a5 = 0;
  }

  return result;
}

- (id)newRenderPipelineDescriptorWithDevice:(id)a3 error:(id *)a4
{
  if (a3 && ![(MTLMeshRenderPipelineDescriptor *)self validateWithDevice:a3 error:a4])
  {
    return 0;
  }

  v5 = objc_opt_new();
  v6 = 0;
  descriptors = self->_private.objectBuffers->_descriptors;
  v8 = *(v5 + 424) + 8;
  do
  {
    v9 = descriptors[v6];
    if (v9)
    {
      var0 = v9->_private.var0.var1.var0;
      v11 = objc_opt_new();
      *(v8 + v6 * 8) = v11;
      *(v11 + 8) = var0;
    }

    ++v6;
  }

  while (v6 != 31);
  v12 = 0;
  v13 = self->_private.meshBuffers->_descriptors;
  v14 = *(v5 + 432) + 8;
  do
  {
    v15 = v13[v12];
    if (v15)
    {
      v16 = v15->_private.var0.var1.var0;
      v17 = objc_opt_new();
      *(v14 + v12 * 8) = v17;
      *(v17 + 8) = v16;
    }

    ++v12;
  }

  while (v12 != 31);
  v18 = 0;
  v19 = self->_private.fragmentBuffers->_descriptors;
  v20 = *(v5 + 464) + 8;
  do
  {
    v21 = v19[v18];
    if (v21)
    {
      v22 = v21->_private.var0.var1.var0;
      v23 = objc_opt_new();
      *(v20 + v18 * 8) = v23;
      *(v23 + 8) = v22;
    }

    ++v18;
  }

  while (v18 != 31);
  v24 = 0;
  v25 = self->_private.attachments->_descriptors;
  v26 = *(v5 + 48) + 8;
  do
  {
    v27 = v25[v24];
    if (v27)
    {
      v28 = v27->_private.var0.var1.var0;
      v29 = objc_alloc_init(MTLRenderPipelineColorAttachmentDescriptorInternal);
      *(v26 + v24 * 8) = v29;
      v29->_private.var0.var1.var0 = v28;
    }

    ++v24;
  }

  while (v24 != 8);
  *(v5 + 120) = *&self->_private.depthAttachmentPixelFormat;
  *(v5 + 224) = *&self->_private.textureWriteRoundingMode;
  sampleMask = self->_private.sampleMask;
  *(v5 + 264) = self->_private.colorSampleCount;
  *(v5 + 240) = sampleMask;
  *(v5 + 248) = self->_private.var0.sampleCoverageHash;
  v31 = *(v5 + 272) & 0xFFFFFFFFFFFFFFFCLL | *&self->_private.var1 & 3;
  *(v5 + 272) = v31;
  v32 = v31 & 0xFFFFFFFFFFFFFFF3 | (4 * ((*&self->_private.var1 >> 2) & 3));
  *(v5 + 272) = v32;
  v33 = v32 & 0xFFFFFFFFFFFFFFEFLL | (16 * ((*&self->_private.var1 >> 4) & 1));
  *(v5 + 272) = v33;
  v34 = v33 & 0xFFFFFFFFFFFFFEFFLL | (((*&self->_private.var1 >> 5) & 1) << 8);
  *(v5 + 272) = v34;
  v35 = v34 & 0xFFFFFFFFFFFFFDFFLL | (((*&self->_private.var1 >> 6) & 1) << 9);
  *(v5 + 272) = v35;
  v36 = v35 & 0xFFFFFFFFFFFFFBFFLL | (((*&self->_private.var1 >> 7) & 1) << 10);
  *(v5 + 272) = v36;
  v37 = v36 & 0xFFFFFFFFFFFFEFFFLL | (((*&self->_private.var1 >> 9) & 1) << 12);
  *(v5 + 272) = v37;
  v38 = v37 & 0xFFFFFFFFFFFFDFFFLL | (((*&self->_private.var1 >> 10) & 1) << 13);
  *(v5 + 272) = v38;
  v39 = v38 & 0xFFFFFFFFFFFFBFFFLL | (((*&self->_private.var1 >> 11) & 1) << 14);
  *(v5 + 272) = v39;
  v40 = v39 & 0xFFFFFFFFFFFF7FFFLL | (((*&self->_private.var1 >> 12) & 1) << 15);
  *(v5 + 272) = v40;
  v41 = v40 & 0xFFFFFFFFFFFEFFFFLL | (((*&self->_private.var1 >> 13) & 1) << 16);
  *(v5 + 272) = v41;
  v42 = v41 & 0xFFFFFFFFFE01FFFFLL | ((*&self->_private.var1 >> 14) << 17);
  *(v5 + 272) = v42;
  v43 = v42 & 0xFFFFFFFFF1FFFFFFLL | (((*&self->_private.var1 >> 22) & 7) << 25);
  *(v5 + 272) = v43;
  v44 = v43 & 0xFFFFFFFFEFFFFFFFLL | (((*&self->_private.var1 >> 25) & 1) << 28);
  *(v5 + 272) = v44;
  v45 = v44 & 0xFFFFFFF0FFFFFFFFLL | (((*&self->_private.var1 >> 26) & 0xFLL) << 32);
  *(v5 + 272) = v45;
  v46 = v45 & 0xFFFFFFEFFFFFFFFFLL | (((*&self->_private.var1 >> 30) & 1) << 36);
  *(v5 + 272) = v46;
  *(v5 + 272) = v46 & 0xFFFFFFDFFFFFFFFFLL | (((*&self->_private.var1 >> 31) & 1) << 37);
  *(v5 + 520) = *(&self->_private.var1.var0 + 4) & 1;
  *(v5 + 200) = (*&self->_private.var1 & 0x200000000) != 0;
  *(v5 + 524) = (*&self->_private.var1 >> 37) & 0xF;
  *(v5 + 284) = self->_private.fragmentDepthCompareClampMask;
  label = self->_private.label;
  *(v5 + 288) = self->_private.resourceIndex;
  *(v5 + 296) = [(NSString *)label copy];
  *(v5 + 328) = self->_private.objectFunction;
  *(v5 + 336) = self->_private.meshFunction;
  *(v5 + 312) = self->_private.fragmentFunction;
  *(v5 + 440) = *&self->_private.maxTotalThreadsPerObjectThreadgroup;
  v48 = *(v5 + 272) & 0xFFFFFF7FFFFFFFFFLL | (((*&self->_private.var1 >> 41) & 1) << 39);
  *(v5 + 272) = v48;
  *(v5 + 272) = v48 & 0xFFFFFEFFFFFFFFFFLL | (((*&self->_private.var1 >> 42) & 1) << 40);
  *(v5 + 392) = self->_private.maxTotalThreadgroupsPerMeshGrid;
  *(v5 + 400) = vdupq_n_s64(1uLL);
  *(v5 + 416) = self->_private.pipelineMemoryLength;
  *(v5 + 472) = [(NSDictionary *)self->_private.driverCompilerOptions copy];
  *(v5 + 480) = [(NSDictionary *)self->_private.gpuCompilerSPIOptions copy];
  *(v5 + 512) = [(NSDictionary *)self->_private.pluginData copy];
  *(v5 + 528) = [(NSArray *)self->_private.binaryArchives copy];
  *(v5 + 488) = self->_private.pipelineLibrary;
  *(v5 + 552) = [(MTLLinkedFunctions *)self->_private.objectLinkedFunctions copy];
  *(v5 + 560) = [(MTLLinkedFunctions *)self->_private.meshLinkedFunctions copy];
  *(v5 + 544) = [(MTLLinkedFunctions *)self->_private.fragmentLinkedFunctions copy];
  *(v5 + 584) = [(NSArray *)self->_private.objectPreloadedLibraries copy];
  *(v5 + 592) = [(NSArray *)self->_private.meshPreloadedLibraries copy];
  *(v5 + 576) = [(NSArray *)self->_private.fragmentPreloadedLibraries copy];
  *(v5 + 641) = (*&self->_private.var1 & 0x400000000) != 0;
  *(v5 + 640) = (*&self->_private.var1 & 0x800000000) != 0;
  *(v5 + 617) = (*&self->_private.var1 & 0x1000000000) != 0;
  maxMeshStackCallDepth = self->_private.maxMeshStackCallDepth;
  *(v5 + 632) = self->_private.maxObjectStackCallDepth;
  *(v5 + 624) = maxMeshStackCallDepth;
  profileControl = self->_private.profileControl;
  *(v5 + 608) = self->_private.maxFragmentStackCallDepth;
  *(v5 + 656) = self->_private.explicitVisibilityGroupID;
  *(v5 + 648) = [(MTLProfileControl *)profileControl copy];
  depth = self->_private.requiredThreadsPerObjectThreadgroup.depth;
  *(v5 + 672) = *&self->_private.requiredThreadsPerObjectThreadgroup.width;
  *(v5 + 688) = depth;
  v52 = *&self->_private.requiredThreadsPerMeshThreadgroup.width;
  *(v5 + 712) = self->_private.requiredThreadsPerMeshThreadgroup.depth;
  *(v5 + 696) = v52;
  return v5;
}

- (void)setProfileControl:(id)a3
{
  profileControl = self->_private.profileControl;
  if (profileControl != a3)
  {

    self->_private.profileControl = [a3 copy];
  }
}

- (void)setObjectFunction:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF4F4B58] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLMeshRenderPipelineDescriptor setObjectFunction:]", 1564, @"objectFunction is not a MTLFunction.", v9, v10, v11, v12, a9);
  }
}

- (void)setMeshFunction:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF4F4B58] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLMeshRenderPipelineDescriptor setMeshFunction:]", 1581, @"meshFunction is not a MTLFunction.", v9, v10, v11, v12, a9);
  }
}

- (void)setFragmentFunction:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (([a1 conformsToProtocol:&unk_1EF4F4B58] & 1) == 0)
  {

    MTLReportFailure(1, "[MTLMeshRenderPipelineDescriptor setFragmentFunction:]", 1598, @"fragmentFunction is not a MTLFunction.", v9, v10, v11, v12, a9);
  }
}

@end