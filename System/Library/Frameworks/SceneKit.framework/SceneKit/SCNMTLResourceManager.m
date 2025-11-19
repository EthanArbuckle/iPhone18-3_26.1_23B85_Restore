@interface SCNMTLResourceManager
+ (SCNMTLResourceManager)resourceManagerForDevice:(uint64_t)a1;
+ (void)_fillVertexDescriptor:(id)a3 withSemantic:(char)a4 inputSet:(int64_t)a5 bufferIndex:(int64_t)a6 vertexFormat:(unint64_t)a7 offset:(unint64_t)a8 stride:(unint64_t)a9;
+ (void)unregisterManagerForDevice:(id)a3;
- (BOOL)_copyImage:(__C3DImage *)a3 toTexture:(id)a4 desc:(id)a5 textureOptions:(int)a6 needsMipMapGeneration:(BOOL)a7;
- (SCNMTLMesh)renderResourceForMesh:(int)a3 dataKind:;
- (SCNMTLMeshElement)renderResourceForMeshElement:(uint64_t)a1;
- (SCNMTLResourceManager)initWithDevice:(id)a3;
- (SCNMTLShadable)renderResourceForMaterial:(__C3DGeometry *)a3 geometry:(SCNMTLRenderPipeline *)a4 renderPipeline:(uint64_t)a5 engineContext:;
- (SCNMTLTessellator)renderResourceForTessellatedGeometry:(uint64_t)a1;
- (SCNMetalWireframeResource)wireframeResourceForRendererElement:(uint64_t)a3 engineContext:(unsigned __int8 *)a4 passInstance:(uint64_t)a5 hashPass:;
- (__C3DFXMetalProgram)defaultProgramUsingTessellation:(BOOL)a3;
- (id)_bufferForData:(__CFData *)a3 bytesPerIndex:(unint64_t)a4;
- (id)_bufferForMTLBuffer:(void *)a3;
- (id)_computePipelineStateForKernel:(id)a3 constants:(id)a4 constantsHash:(id)a5 threadGroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)a6;
- (id)_newComputeDescriptorForPipelineDesc:(id *)a3 library:(id)a4;
- (id)_textureDescriptorFromImage:(__C3DImage *)a3 needsMipMap:(BOOL)a4 textureOptions:(int)a5;
- (id)areaLightPrecomputedDataTexture;
- (id)colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:(unsigned int)a3 pixelBufferYCbCrMatrix:(id)a4 pixelBufferColorPrimaries:(id)a5 pixelBufferTransferFunction:(id)a6 sourceColorSpace:(CGColorSpace *)a7 destinationColorSpace:(CGColorSpace *)a8 renderContext:(id)a9;
- (id)computeEvaluatorWithContext:(MTLContext *)a3 srcDesc:(const BufferDescriptor *)a4 dstDesc:(const BufferDescriptor *)a5 duDesc:(const BufferDescriptor *)a6 dvDesc:(const BufferDescriptor *)a7;
- (id)computePipelineStateForKernel:(id)a3 withStageDescriptor:(id)a4 stageDescriptorUpdateBlock:(id)a5 constants:(id)a6 constantsHash:(id)a7;
- (id)copyTextureByConvertingToCubeMapIfApplicable:(id)a3 engineContext:(__C3DEngineContext *)a4 needsMipmap:(BOOL)a5;
- (id)defaultCubeTexture;
- (id)defaultLightingEnvironmentIrradianceTexture;
- (id)defaultLightingEnvironmentRadianceTexture;
- (id)defaultTexture;
- (id)defaultTexture3D;
- (id)getUniqueStageDescriptor:(id)a3;
- (id)iesTextureForProfile:(id)a3 renderContext:(id)a4;
- (id)irradianceTextureForEnvironmentTexture:(id)a3 renderContext:(id)a4 applySH:(id)a5;
- (id)irradianceTextureForPrecomputedLightingEnvironment:(id)a3;
- (id)latlongTextureForCubemap:(id)a3 pixelFormat:(unint64_t)a4 renderContext:(id)a5 needsMipmap:(BOOL)a6;
- (id)lazyMTKTextureLoader;
- (id)newComputePipelineStateForDesc:(id *)a3 library:(id)a4;
- (id)newComputePipelineStateWithFunctionName:(id)a3;
- (id)newComputePipelineStateWithFunctionName:(id)a3 constantValues:(id)a4;
- (id)newComputePipelineStateWithFunctionName:(id)a3 library:(id)a4 constantValues:(id)a5;
- (id)newCubemapTextureForLatlongTexture:(id)a3 pixelFormat:(unint64_t)a4 engineContext:(__C3DEngineContext *)a5 needsMipmap:(BOOL)a6;
- (id)newRadianceTextureForEnvironmentTexture:(id)a3 engineContext:(__C3DEngineContext *)a4 cpuAccessible:(BOOL)a5 commandBuffer:(id)a6;
- (id)newRenderPipelineStateWithDesc:(id *)a3;
- (id)newTextureUsingMTKTextureLoaderWithData:(id)a3 options:(id)a4;
- (id)newTextureUsingMTKTextureLoaderWithURL:(id)a3 options:(id)a4;
- (id)newTextureWithDescriptor:(id)a3;
- (id)radianceTextureForEnvironmentTexture:(id)a3 engineContext:(__C3DEngineContext *)a4 commandBuffer:(id)a5;
- (id)radianceTextureForPrecomputedLightingEnvironment:(id)a3;
- (id)renderResourceForDeformerStack:(__C3DDeformerStack *)a3 node:(__C3DNode *)a4 dataKind:(unsigned __int8)a5;
- (id)renderResourceForEffectSlot:(__C3DEffectSlot *)a3 withEngineContext:(__C3DEngineContext *)a4 didFallbackToDefaultTexture:(BOOL *)a5;
- (id)renderResourceForImage:(__C3DImage *)a3 sampler:(__C3DTextureSampler *)a4 options:(int)a5 engineContext:(__C3DEngineContext *)a6 didFallbackToDefaultTexture:(BOOL *)a7;
- (id)renderResourceForImageProxy:(__C3DImageProxy *)a3 sampler:(__C3DTextureSampler *)a4 engineContext:(__C3DEngineContext *)a5 didFallbackToDefaultTexture:(BOOL *)a6;
- (id)renderResourceForMorpher:(__C3DMorpher *)a3 baseMesh:(__C3DMesh *)a4 dataKind:(unsigned __int8)a5 provider:(id)a6;
- (id)renderResourceForProgramDesc:(id *)a3 renderPassDescriptor:(id)a4;
- (id)renderResourceForSkinner:(__C3DSkinner *)a3 baseMesh:(__C3DMesh *)a4 dataKind:(unsigned __int8)a5 provider:(id)a6;
- (id)shFromCPU:(id)a3 commandBuffer:(id)a4;
- (id)specularDFGDiffuseHammonTextureWithRenderContext:(id)a3;
- (id)sphericalHarmonicsForEnvironmentTexture:(id)a3 order:(unint64_t)a4 commandBuffer:(id)a5;
- (id)unstageTexture:(id)a3 commandBuffer:(id)a4;
- (uint64_t)commandQueue;
- (uint64_t)depthAndStencilStateWithReadWriteDepthDisabled;
- (uint64_t)dispatchForCubemap:(uint64_t)a3 computeEncoder:(void *)a4 pipelineState:;
- (uint64_t)dispatchForTexture:(uint64_t)a3 computeEncoder:(void *)a4 pipelineState:;
- (uint64_t)libraryManager;
- (uint64_t)newConstantBufferWithLength:(uint64_t)result options:(int)a2;
- (uint64_t)newPrivateBufferWithBytes:(uint64_t)a3 length:(void *)a4 blitEncoder:;
- (uint64_t)stats;
- (void)__updateMutableMesh:(__C3DMesh *)a3 withMetalMesh:(id)a4;
- (void)_bakeSphericalHamonicsBasedIrradianceTexture:(id)a3 forEnvironmentTexture:(id)a4 renderContext:(id)a5 applySH:(id)a6;
- (void)_bakeStochasticIrradianceTexture:(id)a3 forEnvironmentTexture:(id)a4 mipmapLevelForSampling:(unint64_t)a5 renderContext:(id)a6;
- (void)_configureComputePipeline:(id)a3 withDescriptor:(id)a4;
- (void)_createPipelineStateWithDescriptor:(id)a3 desc:(id *)a4 pipeline:(id)a5;
- (void)_deformerStackDidChange:(id)a3;
- (void)_deformerStackWillDie:(id)a3;
- (void)_enqueueCopyFromTexture:(id)a3 toTexture:(id)a4 blitEncoder:(SCNMTLBlitCommandEncoder *)a5 generateMipMaps:(BOOL)a6;
- (void)_geometryWillDie:(id)a3;
- (void)_imageProxyWillDie:(id)a3;
- (void)_imageWillDie:(id)a3;
- (void)_materialWillDie:(id)a3;
- (void)_meshElementWillDie:(id)a3;
- (void)_meshSourceWillDie:(id)a3;
- (void)_meshWillDie:(id)a3;
- (void)_morphWillDie:(id)a3;
- (void)_passWillDie:(id)a3;
- (void)_precomputedLightingEnvironmentWillDie:(id)a3;
- (void)_programHashCodeWillDie:(id)a3;
- (void)_programWillDie:(id)a3;
- (void)_removeMatchingProgram:(__C3DFXMetalProgram *)a3 pass:(__C3DFXPass *)a4;
- (void)_skinWillDie:(id)a3;
- (void)colorMatchBiPlanarPixelBufferWithFormatType:(unsigned int)a3 pixelBufferYCbCrMatrix:(id)a4 pixelBufferColorPrimaries:(id)a5 pixelBufferTransferFunction:(id)a6 sourceTextureY:(id)a7 sourceTextureCbCr:(id)a8 sourceColorSpace:(CGColorSpace *)a9 destinationColorSpace:(CGColorSpace *)a10 destinationTexture:(id)a11 renderContext:(id)a12;
- (void)colorMatchSourceTexture:(id)a3 sourceColorSpace:(CGColorSpace *)a4 destinationColorSpace:(CGColorSpace *)a5 destinationTexture:(id)a6 renderContext:(id)a7;
- (void)commandBufferDidCompleteWithError:(id)a3;
- (void)dealloc;
- (void)newBufferWithBytes:(uint64_t)a1 length:options:;
- (void)newBufferWithLength:(uint64_t)a1 options:;
- (void)removeAllShaders;
- (void)renderResourceForMeshSource:(uint64_t)a1;
- (void)renderResourceForRasterizerState:(uint64_t)a3 reverseZ:;
- (void)renderResourceForSampler:(uint64_t)a1;
- (void)resetRasterizerStates;
@end

@implementation SCNMTLResourceManager

- (uint64_t)commandQueue
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (id)computeEvaluatorWithContext:(MTLContext *)a3 srcDesc:(const BufferDescriptor *)a4 dstDesc:(const BufferDescriptor *)a5 duDesc:(const BufferDescriptor *)a6 dvDesc:(const BufferDescriptor *)a7
{
  v12 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *&a4->var1) ^ ((0xC6A4A7935BD1E995 * *&a4->var1) >> 47))) ^ 0x4FB7DAE84DD6F2FCLL)) ^ a5->var2);
  v13 = (0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v12 ^ (v12 >> 47))) >> 47);
  p_availableOpenSubdivComputeEvaluators = &self->_availableOpenSubdivComputeEvaluators;
  os_unfair_lock_lock(&self->_availableOpenSubdivComputeEvaluators.lock);
  registry = p_availableOpenSubdivComputeEvaluators->registry;
  if (!p_availableOpenSubdivComputeEvaluators->registry)
  {
    SCNResourceRegistrySetup(p_availableOpenSubdivComputeEvaluators, 0);
    registry = p_availableOpenSubdivComputeEvaluators->registry;
  }

  v16 = [(NSMapTable *)registry objectForKey:v13];
  if (!v16)
  {
    v17 = objc_alloc_init(SCNMTLOpenSubdivComputeEvaluator);
    OpenSubdiv::v3_1_1::Osd::MTLComputeEvaluator::Create(a4, a5, a6, a7, a3, v18);
  }

  os_unfair_lock_unlock(&p_availableOpenSubdivComputeEvaluators->lock);
  return v16;
}

+ (SCNMTLResourceManager)resourceManagerForDevice:(uint64_t)a1
{
  objc_opt_self();
  if (+[SCNMTLResourceManager resourceManagerForDevice:]::onceToken != -1)
  {
    +[SCNMTLResourceManager resourceManagerForDevice:];
  }

  os_unfair_lock_lock(&__resourceManagersLock);
  v3 = [__resourceManagers objectForKey:a2];
  if (!v3)
  {
    v3 = [[SCNMTLResourceManager alloc] initWithDevice:a2];
    [__resourceManagers setObject:v3 forKey:a2];
  }

  os_unfair_lock_unlock(&__resourceManagersLock);
  return v3;
}

uint64_t __50__SCNMTLResourceManager_resourceManagerForDevice___block_invoke()
{
  __resourceManagersLock = 0;
  __resourceManagers = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  +[SCNMTLShaderBindingsGenerator allocateRegistry];

  return +[SCNMTLRenderContext registerBindings];
}

+ (void)unregisterManagerForDevice:(id)a3
{
  os_unfair_lock_lock(&__resourceManagersLock);
  [__resourceManagers removeObjectForKey:a3];

  os_unfair_lock_unlock(&__resourceManagersLock);
}

- (SCNMTLResourceManager)initWithDevice:(id)a3
{
  v12.receiver = self;
  v12.super_class = SCNMTLResourceManager;
  v4 = [(SCNMTLResourceManager *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_device = a3;
    if (!C3DUseOneCommandQueuePerDevice())
    {
LABEL_5:
      v5->_libraryManager = [[SCNMTLLibraryManager alloc] initWithDevice:v5->_device];
      v7 = malloc_type_calloc(0x358uLL, 1uLL, 0x100004048B25B04uLL);
      v5->__engineStats = v7;
      [(SCNMTLLibraryManager *)v5->_libraryManager _setEngineStats:v7];
      v5->_bindingsGenerator = objc_alloc_init(SCNMTLShaderBindingsGenerator);
      v5->_commonProfileBuffersAllocator = [[SCNMTLBufferAllocator alloc] initWithDevice:v5->_device fixedSizeElement:256 buffersize:0x40000 name:@"SCNMaterialData"];
      v5->_availablePipelineStates = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
      v5->_availablePipelineStatesLock._os_unfair_lock_opaque = 0;
      v5->_availableLightingSystemReflectionProbeTextures.lock._os_unfair_lock_opaque = 0;
      v5->_availableIrradianceTextures.lock._os_unfair_lock_opaque = 0;
      v5->_availableRadianceTextures.lock._os_unfair_lock_opaque = 0;
      v5->_availableIESTextures.lock._os_unfair_lock_opaque = 0;
      v5->_availableImages.lock._os_unfair_lock_opaque = 0;
      v5->_availableImageProxy.lock._os_unfair_lock_opaque = 0;
      v5->_availableSamplers.lock._os_unfair_lock_opaque = 0;
      v5->_availableMeshes.lock._os_unfair_lock_opaque = 0;
      v5->_availableDeformerStacks.lock._os_unfair_lock_opaque = 0;
      v5->_availableSkinDeformerReadOnlyBuffers.lock._os_unfair_lock_opaque = 0;
      v5->_availableMorphDeformerReadOnlyBuffers.lock._os_unfair_lock_opaque = 0;
      v5->_availableTessellators.lock._os_unfair_lock_opaque = 0;
      v5->_availableComputePipelines.lock._os_unfair_lock_opaque = 0;
      v5->_availableComputePipelinesWithStageDescriptor.lock._os_unfair_lock_opaque = 0;
      v5->_availableColorMatchingComputePipelines.lock._os_unfair_lock_opaque = 0;
      v5->_availableBuffers.lock._os_unfair_lock_opaque = 0;
      v5->_availableMeshSources.lock._os_unfair_lock_opaque = 0;
      v5->_availableMeshElements.lock._os_unfair_lock_opaque = 0;
      v5->_availableRasterizerStates.lock._os_unfair_lock_opaque = 0;
      v5->_availableWireframeMaterials.lock._os_unfair_lock_opaque = 0;
      v5->_availableOpenSubdivComputeEvaluators.lock._os_unfair_lock_opaque = 0;
      v5->_availableShadables.lock._os_unfair_lock_opaque = 0;
      v5->_availableShadablesSearchKey = objc_alloc_init(SCNMTLShadableKey);
      v5->_availableStageDescriptors = objc_alloc_init(MEMORY[0x277CBEB18]);
      v5->_stageDescriptorsLock._os_unfair_lock_opaque = 0;
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 addObserver:v5 selector:sel__meshSourceWillDie_ name:@"kC3DNotificationMeshSourceWillDie" object:0];
      [v8 addObserver:v5 selector:sel__meshElementWillDie_ name:@"kC3DNotificationMeshElementWillDie" object:0];
      [v8 addObserver:v5 selector:sel__meshWillDie_ name:@"kC3DNotificationMeshWillDie" object:0];
      [v8 addObserver:v5 selector:sel__imageWillDie_ name:@"kC3DNotificationImageWillDie" object:0];
      [v8 addObserver:v5 selector:sel__imageProxyWillDie_ name:@"kC3DNotificationImageProxyWillDie" object:0];
      [v8 addObserver:v5 selector:sel__programWillDie_ name:@"kC3DNotificationProgramWillDie" object:0];
      [v8 addObserver:v5 selector:sel__passWillDie_ name:@"kC3DNotificationPassWillDie" object:0];
      [v8 addObserver:v5 selector:sel__materialWillDie_ name:@"kC3DNotificationMaterialWillDie" object:0];
      [v8 addObserver:v5 selector:sel__geometryWillDie_ name:@"kC3DNotificationGeometryWillDie" object:0];
      [v8 addObserver:v5 selector:sel__morphWillDie_ name:@"kC3DNotificationMorphWillDie" object:0];
      [v8 addObserver:v5 selector:sel__skinWillDie_ name:@"kC3DNotificationSkinWillDie" object:0];
      [v8 addObserver:v5 selector:sel__deformerStackWillDie_ name:@"kC3DNotificationDeformerStackWillDie" object:0];
      [v8 addObserver:v5 selector:sel__deformerStackDidChange_ name:@"kC3DNotificationDeformerStackDidChange" object:0];
      [v8 addObserver:v5 selector:sel__programHashCodeWillDie_ name:@"kC3DNotificationProgramHashCodeWillDie" object:0];
      [v8 addObserver:v5 selector:sel__precomputedLightingEnvironmentWillDie_ name:@"kC3DNotificationPrecomputedLightingEnvironmentWillDie" object:0];
      v5->_defaultProgram = C3DFXMetalProgramCreateFromDefaultLibrary(@"debug_vert", @"debug_frag");
      v5->_defaultProgramForTessellation = C3DFXMetalProgramCreateFromDefaultLibrary(@"debug_post_tessellation_vert", @"debug_frag");
      v5->_isolateProgram = C3DFXMetalProgramCreateFromDefaultLibrary(@"debug_vert", @"debug_isolate_frag");
      SharedInstance = C3DNotificationCenterGetSharedInstance();
      C3DNotificationCenterAddObserver(SharedInstance, v5, _rasterizerStateDidDie, @"kC3DNotificationRasterizerStatesDidDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      return v5;
    }

    v6 = [a3 newCommandQueue];
    if (v6)
    {
      v5->_commandQueue = v6;
      [(MTLCommandQueue *)v6 setLabel:@"com.apple.SceneKit"];
      goto LABEL_5;
    }

    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager initWithDevice:v11];
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  self->_availableLightingSystemReflectionProbeTextures.registry = 0;
  self->_availableIrradianceTextures.registry = 0;

  self->_availableRadianceTextures.registry = 0;
  self->_availableIESTextures.registry = 0;

  self->_availableImages.registry = 0;
  self->_availableImageProxy.registry = 0;

  self->_availableSamplers.registry = 0;
  self->_availableMeshes.registry = 0;

  self->_availableDeformerStacks.registry = 0;
  self->_availableSkinDeformerReadOnlyBuffers.registry = 0;

  self->_availableMorphDeformerReadOnlyBuffers.registry = 0;
  self->_availableTessellators.registry = 0;

  self->_availableComputePipelines.registry = 0;
  self->_availableComputePipelinesWithStageDescriptor.registry = 0;

  self->_availableColorMatchingComputePipelines.registry = 0;
  self->_availableBuffers.registry = 0;

  self->_availableMeshSources.registry = 0;
  self->_availableMeshElements.registry = 0;

  self->_availableRasterizerStates.registry = 0;
  self->_availableWireframeMaterials.registry = 0;

  self->_availableOpenSubdivComputeEvaluators.registry = 0;
  self->_availableShadables.registry = 0;
  CFRelease(self->_availablePipelineStates);

  defaultProgram = self->_defaultProgram;
  if (defaultProgram)
  {
    CFRelease(defaultProgram);
    self->_defaultProgram = 0;
  }

  defaultProgramForTessellation = self->_defaultProgramForTessellation;
  if (defaultProgramForTessellation)
  {
    CFRelease(defaultProgramForTessellation);
    self->_defaultProgramForTessellation = 0;
  }

  isolateProgram = self->_isolateProgram;
  if (isolateProgram)
  {
    CFRelease(isolateProgram);
    self->_isolateProgram = 0;
  }

  free(self->__engineStats);
  self->__engineStats = 0;

  [SCNMTLResourceManager unregisterManagerForDevice:self->_device];
  v6.receiver = self;
  v6.super_class = SCNMTLResourceManager;
  [(SCNMTLResourceManager *)&v6 dealloc];
}

- (void)_meshSourceWillDie:(id)a3
{
  v4 = [a3 object];
  if (C3DGenericSourceIsPrimary(v4))
  {
    Data = C3DMeshSourceGetData(v4);
    if (Data)
    {
      v6 = Data;
      if (CFDataGetLength(Data))
      {
        os_unfair_lock_lock(&self->_availableMeshSources.lock);
        [(NSMapTable *)self->_availableMeshSources.registry removeObjectForKey:v6];

        os_unfair_lock_unlock(&self->_availableMeshSources.lock);
      }
    }
  }
}

- (void)_meshElementWillDie:(id)a3
{
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableMeshElements.lock);
  v5 = [(NSMapTable *)self->_availableMeshElements.registry objectForKey:v4];
  if (![-[SCNMTLMeshElement indexBuffer](v5) decrementUsedCount])
  {
    os_unfair_lock_lock(&self->_availableBuffers.lock);
    -[NSMapTable removeObjectForKey:](self->_availableBuffers.registry, "removeObjectForKey:", [-[SCNMTLMeshElement indexBuffer](v5) dataSource]);
    os_unfair_lock_unlock(&self->_availableBuffers.lock);
  }

  [(NSMapTable *)self->_availableMeshElements.registry removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_availableMeshElements.lock);
}

- (void)_meshWillDie:(id)a3
{
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableMeshes.lock);
  [(NSMapTable *)self->_availableMeshes.registry removeObjectForKey:v4];
  [(NSMapTable *)self->_availableMeshes.registry removeObjectForKey:v4 | 1];
  os_unfair_lock_unlock(&self->_availableMeshes.lock);
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  registry = self->_availableSkinDeformerReadOnlyBuffers.registry;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SCNMTLResourceManager__meshWillDie___block_invoke;
  v8[3] = &__block_descriptor_40_e27_v32__0_8__NSMapTable_16_B24l;
  v8[4] = v4;
  [(NSMapTable *)registry scn_enumerateKeysAndValuesUsingBlock:v8];
  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  v6 = self->_availableMorphDeformerReadOnlyBuffers.registry;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__SCNMTLResourceManager__meshWillDie___block_invoke_2;
  v7[3] = &__block_descriptor_40_e27_v32__0_8__NSMapTable_16_B24l;
  v7[4] = v4;
  [(NSMapTable *)v6 scn_enumerateKeysAndValuesUsingBlock:v7];
  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
}

uint64_t __38__SCNMTLResourceManager__meshWillDie___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 removeObjectForKey:*(a1 + 32)];
  v5 = *(a1 + 32) | 1;

  return [a3 removeObjectForKey:v5];
}

uint64_t __38__SCNMTLResourceManager__meshWillDie___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 removeObjectForKey:*(a1 + 32)];
  v5 = *(a1 + 32) | 1;

  return [a3 removeObjectForKey:v5];
}

- (void)_morphWillDie:(id)a3
{
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  [(NSMapTable *)self->_availableMorphDeformerReadOnlyBuffers.registry removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
}

- (void)_programHashCodeWillDie:(id)a3
{
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableWireframeMaterials.lock);
  [(NSMapTable *)self->_availableWireframeMaterials.registry removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_availableWireframeMaterials.lock);
}

- (void)_skinWillDie:(id)a3
{
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  [(NSMapTable *)self->_availableSkinDeformerReadOnlyBuffers.registry removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
}

- (void)_deformerStackWillDie:(id)a3
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  v5 = [a3 object];
  [(NSMapTable *)self->_availableDeformerStacks.registry removeObjectForKey:v5];
  [(NSMapTable *)self->_availableDeformerStacks.registry removeObjectForKey:v5 | 1];

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (void)_deformerStackDidChange:(id)a3
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  v5 = [a3 object];
  v6 = C3DDeformerStackWantsGPU(v5);
  registry = self->_availableDeformerStacks.registry;
  if (v6)
  {
    v8 = [(NSMapTable *)registry objectForKey:v5];
    v9 = [(NSMapTable *)self->_availableDeformerStacks.registry objectForKey:v5 | 1];
    [(SCNMTLDeformerStack *)v8 invalidate];
    [(SCNMTLDeformerStack *)v9 invalidate];
  }

  else
  {
    [(NSMapTable *)registry removeObjectForKey:v5];
    [(NSMapTable *)self->_availableDeformerStacks.registry removeObjectForKey:v5 | 1];
  }

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (void)_imageWillDie:(id)a3
{
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableImages.lock);
  for (i = 0; i != 16; ++i)
  {
    v6 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (i ^ v4 ^ 0x1A929E4D6F47A654)) ^ ((0xC6A4A7935BD1E995 * (i ^ v4 ^ 0x1A929E4D6F47A654)) >> 47));
    v7 = v6 ^ (v6 >> 47);
    v8 = [(NSMapTable *)self->_availableImages.registry objectForKey:v7];
    if (v8)
    {
      v9 = v8;
      os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
      [(NSMapTable *)self->_availableIrradianceTextures.registry removeObjectForKey:v9];
      os_unfair_lock_unlock(&self->_availableIrradianceTextures.lock);
      os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
      [(NSMapTable *)self->_availableRadianceTextures.registry removeObjectForKey:v9];
      os_unfair_lock_unlock(&self->_availableRadianceTextures.lock);
      [(NSMapTable *)self->_availableImages.registry removeObjectForKey:v7];
    }
  }

  os_unfair_lock_unlock(&self->_availableImages.lock);
}

- (void)_imageProxyWillDie:(id)a3
{
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableImageProxy.lock);
  [(NSMapTable *)self->_availableImageProxy.registry removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_availableImageProxy.lock);
}

- (void)_precomputedLightingEnvironmentWillDie:(id)a3
{
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  [(NSMapTable *)self->_availableIrradianceTextures.registry removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_availableIrradianceTextures.lock);
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  [(NSMapTable *)self->_availableRadianceTextures.registry removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_availableRadianceTextures.lock);
}

- (void)_removeMatchingProgram:(__C3DFXMetalProgram *)a3 pass:(__C3DFXPass *)a4
{
  context[0] = a3;
  context[1] = a4;
  theArray = 0;
  os_unfair_lock_lock(&self->_availablePipelineStatesLock);
  CFDictionaryApplyFunction(self->_availablePipelineStates, __removeMatchingProgram, context);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v9 = CFDictionaryGetValue(self->_availablePipelineStates, ValueAtIndex);
        CFDictionaryRemoveValue(self->_availablePipelineStates, ValueAtIndex);
      }
    }

    CFRelease(theArray);
  }

  os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
}

- (void)_programWillDie:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  registry = self->_availableShadables.registry;
  v6 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(registry);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (*(*(v11 + 24) + 16) == v4)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMapTable *)self->_availableShadables.registry removeObjectForKey:*(*(&v16 + 1) + 8 * j)];
          }

          v13 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  [(SCNMTLResourceManager *)self _removeMatchingProgram:v4 pass:0];
}

- (void)_passWillDie:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  registry = self->_availableShadables.registry;
  v6 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(registry);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (*(*(v11 + 24) + 24) == v4)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMapTable *)self->_availableShadables.registry removeObjectForKey:*(*(&v16 + 1) + 8 * j)];
          }

          v13 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  [(SCNMTLResourceManager *)self _removeMatchingProgram:0 pass:v4];
}

- (void)_materialWillDie:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  registry = self->_availableShadables.registry;
  v6 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(registry);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (*(v11 + 8) == v4)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMapTable *)self->_availableShadables.registry removeObjectForKey:*(*(&v16 + 1) + 8 * j)];
          }

          v13 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
}

- (void)_geometryWillDie:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_availableShadables.lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  registry = self->_availableShadables.registry;
  v6 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(registry);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (*(v11 + 16) == v4)
        {
          if (!v8)
          {
            v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v8 addObject:v11];
        }
      }

      v7 = [(NSMapTable *)registry countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
    if (v8)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v12 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          for (j = 0; j != v13; ++j)
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMapTable *)self->_availableShadables.registry removeObjectForKey:*(*(&v16 + 1) + 8 * j)];
          }

          v13 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v13);
      }
    }
  }

  os_unfair_lock_unlock(&self->_availableShadables.lock);
  os_unfair_lock_lock(&self->_availableTessellators.lock);
  [(NSMapTable *)self->_availableTessellators.registry removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_availableTessellators.lock);
}

- (id)_bufferForMTLBuffer:(void *)a3
{
  os_unfair_lock_lock(&self->_availableBuffers.lock);
  registry = self->_availableBuffers.registry;
  if (!registry)
  {
    registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    self->_availableBuffers.registry = registry;
  }

  v6 = [(NSMapTable *)registry objectForKey:a3];
  if (v6)
  {
    v7 = v6;
    [(SCNMTLBuffer *)v6 incrementUsedCount];
  }

  else
  {
    v7 = objc_alloc_init(SCNMTLBuffer);
    [(SCNMTLBuffer *)v7 setBuffer:a3];
    [(SCNMTLBuffer *)v7 setDataSource:a3];
    [(SCNMTLBuffer *)v7 incrementUsedCount];
    [(NSMapTable *)self->_availableBuffers.registry setObject:v7 forKey:a3];
  }

  os_unfair_lock_unlock(&self->_availableBuffers.lock);
  return v7;
}

- (id)_bufferForData:(__CFData *)a3 bytesPerIndex:(unint64_t)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_availableBuffers.lock);
  registry = self->_availableBuffers.registry;
  if (!registry)
  {
    registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    self->_availableBuffers.registry = registry;
  }

  v8 = [(NSMapTable *)registry objectForKey:a3];
  if (v8)
  {
    v9 = v8;
    [(SCNMTLBuffer *)v8 incrementUsedCount];
  }

  else
  {
    v9 = objc_alloc_init(SCNMTLBuffer);
    BytePtr = CFDataGetBytePtr(a3);
    Length = CFDataGetLength(a3);
    if (BytePtr)
    {
      v12 = Length;
      if (a4 == 1)
      {
        v13 = 2 * Length;
        MEMORY[0x28223BE20](Length);
        if (v12)
        {
          v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
          do
          {
            v15 = *BytePtr++;
            *v14++ = v15;
            --v12;
          }

          while (v12);
        }

        BytePtr = [MTLDevice newBufferWithBytes:"newBufferWithBytes:length:options:" length:? options:?];
        engineStats = self->__engineStats;
        ++engineStats->iboCount;
        engineStats->iboMemory += v13;
        [(SCNMTLBuffer *)v9 setOffset:0];
      }

      else
      {
        BytePtr = [(MTLDevice *)self->_device newBufferWithBytes:BytePtr length:Length options:0];
        v17 = self->__engineStats;
        ++v17->iboCount;
        v17->iboMemory += v12;
        [(SCNMTLBuffer *)v9 setOffset:0];
      }
    }

    [(SCNMTLBuffer *)v9 setBuffer:BytePtr];

    [(SCNMTLBuffer *)v9 setDataSource:a3];
    [(SCNMTLBuffer *)v9 incrementUsedCount];
    [(NSMapTable *)self->_availableBuffers.registry setObject:v9 forKey:a3];
  }

  os_unfair_lock_unlock(&self->_availableBuffers.lock);
  return v9;
}

+ (void)_fillVertexDescriptor:(id)a3 withSemantic:(char)a4 inputSet:(int64_t)a5 bufferIndex:(int64_t)a6 vertexFormat:(unint64_t)a7 offset:(unint64_t)a8 stride:(unint64_t)a9
{
  if (a4 > 3)
  {
    switch(a4)
    {
      case 4:
        v13 = 2;
        goto LABEL_20;
      case 5:
        v13 = 4;
        goto LABEL_20;
      case 6:
        v13 = 5;
        goto LABEL_20;
    }
  }

  else
  {
    if (a4 < 2)
    {
      v13 = a4;
      goto LABEL_20;
    }

    if (a4 == 2)
    {
      v13 = 3;
      goto LABEL_20;
    }

    if (a4 == 3)
    {
      if (a5 == -1)
      {
        v13 = 6;
        goto LABEL_20;
      }

      v13 = a5 + 6;
      if ((a5 + 6) != 14)
      {
        goto LABEL_20;
      }
    }
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    _fillVertexDescriptor();
  }

  v13 = 14;
LABEL_20:
  [objc_msgSend(objc_msgSend(a3 "attributes")];
  [objc_msgSend(objc_msgSend(a3 "attributes")];
  [objc_msgSend(objc_msgSend(a3 "attributes")];
  [objc_msgSend(objc_msgSend(a3 "layouts")];
  [objc_msgSend(objc_msgSend(a3 "layouts")];
}

- (void)__updateMutableMesh:(__C3DMesh *)a3 withMetalMesh:(id)a4
{
  MutabilityTimeStamp = C3DMeshGetMutabilityTimeStamp(a3);
  if (MutabilityTimeStamp != [(SCNMTLOpenSubdivComputeEvaluator *)a4 computeEvaluator])
  {
    [(SCNMTLMesh *)a4 setMutabilityTimestamp:?];
    os_unfair_lock_lock(&self->_availableMeshSources.lock);
    if (!self->_availableMeshSources.registry)
    {
      self->_availableMeshSources.registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke;
    v8[3] = &unk_2782FC7D8;
    v8[4] = self;
    v8[5] = a4;
    C3DMeshApplySources(a3, 1, v8);
    os_unfair_lock_unlock(&self->_availableMeshSources.lock);
  }
}

void *__59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke(uint64_t a1, uint64_t a2)
{
  result = C3DMeshSourceIsMutable(a2);
  if (result)
  {
    result = C3DMeshSourceGetMTLBuffer(a2);
    if (!result)
    {
      Data = C3DMeshSourceGetData(a2);
      v6 = [*(*(a1 + 32) + 216) objectForKey:Data];
      if ([-[SCNMTLMesh buffers](*(a1 + 40)) indexOfObject:v6] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = scn_default_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          __59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke_cold_1();
        }
      }

      BytePtr = CFDataGetBytePtr(Data);
      Length = CFDataGetLength(Data);
      if (Length != [v6 length])
      {
        v10 = scn_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          __59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke_cold_2(Length, v6, v10);
        }
      }

      return memcpy([v6 contents], BytePtr, Length);
    }
  }

  return result;
}

- (SCNMTLMesh)renderResourceForMesh:(int)a3 dataKind:
{
  *(&v29[1] + 4) = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v6 = a3 == 0;
  os_unfair_lock_lock((a1 + 208));
  v7 = *(a1 + 200);
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    *(a1 + 200) = v7;
  }

  v8 = [v7 objectForKey:v6 | a2];
  if (v8)
  {
    v9 = v8;
    if (C3DMeshIsMutable(a2))
    {
      [a1 __updateMutableMesh:a2 withMetalMesh:v9];
    }
  }

  else
  {
    v9 = objc_alloc_init(SCNMTLMesh);
    C3DEntityGetName(a2);
    v10 = [MEMORY[0x277CD7090] vertexDescriptor];
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:C3DMeshGetSourcesCount(a2)];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke;
    v21[3] = &unk_2782FC800;
    v22 = a3;
    v21[7] = v10;
    v21[8] = &v24;
    v23 = a3 == 0;
    v21[4] = v9;
    v21[5] = a1;
    v21[6] = v11;
    C3DMeshApplySources(a2, a3, v21);
    if (a3 == 1)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke_2;
      v20[3] = &unk_2782FC828;
      v20[5] = v11;
      v20[6] = &v24;
      v20[4] = v10;
      C3DMeshApplySources(a2, 1, v20);
    }

    [(SCNMTLMesh *)v9 setVertexDescriptor:v10];
    [(SCNMTLMesh *)v9 setBuffers:v11];
    [(SCNMTLMesh *)v9 setVolatileStride:?];

    ElementsCount = C3DMeshGetElementsCount(a2);
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:ElementsCount];
    if (ElementsCount >= 1)
    {
      for (i = 0; i != ElementsCount; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(a2, i, a3);
        if (ElementAtIndex)
        {
          Type = C3DMeshElementGetType(ElementAtIndex);
          if (C3DMeshElementTypeMapsToMTLPrimitiveType(Type))
          {
            [v13 addObject:-[SCNMTLResourceManager renderResourceForMeshElement:](a1)];
          }

          else if (a3)
          {
            v17 = scn_default_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              [(SCNMTLResourceManager *)v28 renderResourceForMesh:v29 dataKind:v17];
            }
          }
        }
      }
    }

    [(SCNMTLMesh *)v9 setElements:v13];

    [*(a1 + 200) setObject:v9 forKey:v6 | a2];
    _Block_object_dispose(&v24, 8);
  }

  v18 = v9;
  os_unfair_lock_unlock((a1 + 208));
  return v9;
}

uint64_t __56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    v7 = result;
    result = [(SCNMTLMesh *)*(result + 32) verticesCount];
    if (!result)
    {
      Count = C3DMeshSourceGetCount(a2);
      result = [(SCNMTLMesh *)*(v7 + 32) setVerticesCount:?];
    }

    if ((a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
    {
      if (*(v7 + 72) == 1 && (result = C3DMeshSourceIsVolatile(a2), result))
      {
        Accessor = C3DMeshSourceGetAccessor(a2);
        C3DSourceAccessorSetOffset(Accessor, *(*(*(v7 + 64) + 8) + 24));
        result = C3DSceneSourceGetLibrary(Accessor);
        *(*(*(v7 + 64) + 8) + 24) += result;
      }

      else if (!a3 || (*(v7 + 73) & 1) == 0)
      {
        return __56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke_cold_1(v7, a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t __56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = C3DMeshSourceIsVolatile(a2);
  if (result)
  {
    Accessor = C3DMeshSourceGetAccessor(a2);
    C3DSourceAccessorSetStride(Accessor, *(*(*(a1 + 48) + 8) + 24));
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) count];

    return _fillVertexDescriptor(v10, a2, a3, a4, v11);
  }

  return result;
}

- (id)renderResourceForDeformerStack:(__C3DDeformerStack *)a3 node:(__C3DNode *)a4 dataKind:(unsigned __int8)a5
{
  v9 = a5 == 0;
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  registry = self->_availableDeformerStacks.registry;
  if (!registry)
  {
    registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
    self->_availableDeformerStacks.registry = registry;
  }

  v11 = [(NSMapTable *)registry objectForKey:v9 | a3];
  if (!v11)
  {
    v11 = [[SCNMTLDeformerStack alloc] initWithDeformerStack:a3 node:a4 dataKind:a5 resourceManager:self];
    [(NSMapTable *)self->_availableDeformerStacks.registry setObject:v11 forKey:v9 | a3];
  }

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
  return v11;
}

- (id)renderResourceForSkinner:(__C3DSkinner *)a3 baseMesh:(__C3DMesh *)a4 dataKind:(unsigned __int8)a5 provider:(id)a6
{
  v7 = a5;
  os_unfair_lock_lock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  if (!self->_availableSkinDeformerReadOnlyBuffers.registry)
  {
    self->_availableSkinDeformerReadOnlyBuffers.registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(a3);
  v12 = [(NSMapTable *)self->_availableSkinDeformerReadOnlyBuffers.registry objectForKey:OverrideMaterial];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:1];
    [(NSMapTable *)self->_availableSkinDeformerReadOnlyBuffers.registry setObject:v12 forKey:OverrideMaterial];
  }

  v13 = (v7 == 0) | a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = [v12 objectForKey:v13];
  if (!v20[5])
  {
    registry = self->_availableSkinDeformerReadOnlyBuffers.registry;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__SCNMTLResourceManager_renderResourceForSkinner_baseMesh_dataKind_provider___block_invoke;
    v18[3] = &unk_2782FC850;
    v18[6] = &v19;
    v18[7] = OverrideMaterial;
    v18[4] = v12;
    v18[5] = v13;
    [(NSMapTable *)registry scn_enumerateKeysAndValuesUsingBlock:v18];
    v15 = v20[5];
    if (!v15)
    {
      v15 = (*(a6 + 2))(a6);
      v20[5] = v15;
    }

    [v12 setObject:v15 forKey:v13];
  }

  os_unfair_lock_unlock(&self->_availableSkinDeformerReadOnlyBuffers.lock);
  v16 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v16;
}

uint64_t __77__SCNMTLResourceManager_renderResourceForSkinner_baseMesh_dataKind_provider___block_invoke(uint64_t result, void *a2, void *a3, _BYTE *a4)
{
  if (*(result + 32) != a3)
  {
    v6 = result;
    result = [SCNMTLSkinDeformer canSkin:a2 reuseRenderResourceForSkin:?];
    if (result)
    {
      result = [a3 objectForKey:*(v6 + 40)];
      *(*(*(v6 + 48) + 8) + 40) = result;
      if (*(*(*(v6 + 48) + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

- (id)renderResourceForMorpher:(__C3DMorpher *)a3 baseMesh:(__C3DMesh *)a4 dataKind:(unsigned __int8)a5 provider:(id)a6
{
  v7 = a5;
  os_unfair_lock_lock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  if (!self->_availableMorphDeformerReadOnlyBuffers.registry)
  {
    self->_availableMorphDeformerReadOnlyBuffers.registry = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:100];
  }

  OverrideMaterial = C3DGeometryGetOverrideMaterial(a3);
  v12 = [(NSMapTable *)self->_availableMorphDeformerReadOnlyBuffers.registry objectForKey:OverrideMaterial];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:1];
    [(NSMapTable *)self->_availableMorphDeformerReadOnlyBuffers.registry setObject:v12 forKey:OverrideMaterial];
  }

  v13 = (v7 == 0) | a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = [v12 objectForKey:v13];
  if (!v20[5])
  {
    registry = self->_availableMorphDeformerReadOnlyBuffers.registry;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __77__SCNMTLResourceManager_renderResourceForMorpher_baseMesh_dataKind_provider___block_invoke;
    v18[3] = &unk_2782FC850;
    v18[6] = &v19;
    v18[7] = OverrideMaterial;
    v18[4] = v12;
    v18[5] = v13;
    [(NSMapTable *)registry scn_enumerateKeysAndValuesUsingBlock:v18];
    v15 = v20[5];
    if (!v15)
    {
      v15 = (*(a6 + 2))(a6);
      v20[5] = v15;
    }

    [v12 setObject:v15 forKey:v13];
  }

  os_unfair_lock_unlock(&self->_availableMorphDeformerReadOnlyBuffers.lock);
  v16 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v16;
}

uint64_t __77__SCNMTLResourceManager_renderResourceForMorpher_baseMesh_dataKind_provider___block_invoke(uint64_t result, uint64_t a2, void *a3, _BYTE *a4)
{
  if (*(result + 32) != a3)
  {
    v6 = result;
    result = +[SCNMTLMorphDeformer canMorph:reuseRenderResourceForMorph:];
    if (result)
    {
      result = [a3 objectForKey:*(v6 + 40)];
      *(*(*(v6 + 48) + 8) + 40) = result;
      if (*(*(*(v6 + 48) + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

- (SCNMTLShadable)renderResourceForMaterial:(__C3DGeometry *)a3 geometry:(SCNMTLRenderPipeline *)a4 renderPipeline:(uint64_t)a5 engineContext:
{
  v194 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:];
    }
  }

  if (!a4)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:];
    }
  }

  v155 = a2;
  ValueStorageModificationCount = C3DEntityGetValueStorageModificationCount(a2);
  v9 = a3;
  if (a3)
  {
    v10 = C3DEntityGetValueStorageModificationCount(a3);
    v9 = a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a1;
  os_unfair_lock_lock((a1 + 416));
  if (!*(a1 + 408))
  {
    v11 = a1;
    *(a1 + 408) = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:100];
    v9 = a3;
  }

  *(*(v11 + 424) + 8) = v155;
  *(*(v11 + 424) + 16) = v9;
  *(*(v11 + 424) + 24) = a4;
  v145 = [*(v11 + 408) objectForKey:*(v11 + 424)];
  if (!v145 || ValueStorageModificationCount != [(SCNMTLShadable *)v145 materialModificationCount]|| v10 != [(SCNMTLShadable *)v145 geometryModificationCount])
  {
    v145 = objc_alloc_init(SCNMTLShadable);
    [(SCNMTLShadable *)v145 setMaterialModificationCount:ValueStorageModificationCount];
    [(SCNMTLShadable *)v145 setGeometryModificationCount:v10];
    CommonProfileIfNoTechnique = C3DMaterialGetCommonProfileIfNoTechnique(v155);
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    obj = [(SCNMTLRenderPipeline *)a4 shadableBufferBindings];
    v150 = [(NSArray *)obj countByEnumeratingWithState:&v168 objects:v193 count:16];
    if (!v150)
    {
      goto LABEL_149;
    }

    v149 = *v169;
    while (1)
    {
      v152 = 0;
      do
      {
        if (*v169 != v149)
        {
          objc_enumerationMutation(obj);
        }

        v153 = *(*(&v168 + 1) + 8 * v152);
        if ([v153 needsRenderResource])
        {
          v12 = [v153 name];
          v13 = [v153 type];
          if (v13 != 3)
          {
            if (v13 != 2)
            {
              if (v13)
              {
                goto LABEL_144;
              }

              if (CommonProfileIfNoTechnique && [v12 isEqualToString:@"scn_commonprofile"])
              {
                DWORD2(v187) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 2);
                HIDWORD(v187) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 3);
                DWORD1(v190) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 12);
                DWORD2(v190) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 13);
                HIDWORD(v190) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 14);
                LODWORD(v188) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 7);
                LODWORD(v189) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 4);
                DWORD1(v189) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 6);
                DWORD2(v189) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 5);
                HIDWORD(v189) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 10);
                LODWORD(v190) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 11);
                LODWORD(v191) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 15);
                *buf = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 2);
                *&buf[8] = v14;
                *&buf[16] = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 3);
                *&buf[24] = v15;
                LODWORD(v185) = C3DEffectCommonProfileGetColorLuminanceModulatedByIntensity(CommonProfileIfNoTechnique, 12);
                DWORD1(v185) = C3DEffectCommonProfileGetColorLuminanceModulatedByIntensity(CommonProfileIfNoTechnique, 13);
                *&v182 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 4);
                *(&v182 + 1) = v16;
                *&v183 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 6);
                *(&v183 + 1) = v17;
                *&v184 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 5);
                *(&v184 + 1) = v18;
                LODWORD(v187) = C3DEffectCommonProfileGetColorLuminanceModulatedByIntensity(CommonProfileIfNoTechnique, 10);
                DWORD1(v187) = C3DEffectCommonProfileGetColorLuminanceModulatedByIntensity(CommonProfileIfNoTechnique, 11);
                if (C3DEffectCommonProfileIsUsingAmbientOcclusion(CommonProfileIfNoTechnique))
                {
                  v19 = 8;
                }

                else
                {
                  v19 = 1;
                }

                *&v179 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, v19);
                *(&v179 + 1) = v20;
                DWORD1(v188) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, v19);
                *&v181 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 9);
                *(&v181 + 1) = v21;
                HIDWORD(v188) = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 9);
                if (C3DWasLinkedBeforeMajorOSYear2017() && C3DEffectCommonProfileIsUsingSelfIllumination(CommonProfileIfNoTechnique))
                {
                  Intensity = 0.0;
                  v180 = 0uLL;
                }

                else
                {
                  *&v180 = C3DEffectCommonProfileGetColorModulatedByIntensity(CommonProfileIfNoTechnique, 0);
                  *(&v180 + 1) = v54;
                  Intensity = C3DEffectCommonProfileGetIntensity(CommonProfileIfNoTechnique, 0);
                }

                *(&v188 + 2) = Intensity;
                *(&v191 + 1) = C3DEffectCommonProfileGetFloatProperty(CommonProfileIfNoTechnique, 16) * 128.0;
                DWORD2(v191) = C3DEffectCommonProfileGetSelfIlluminationOcclusion(CommonProfileIfNoTechnique);
                HIDWORD(v191) = C3DEffectCommonProfileGetFloatProperty(CommonProfileIfNoTechnique, 18);
                FloatProperty = C3DEffectCommonProfileGetFloatProperty(CommonProfileIfNoTechnique, 19);
                v56 = C3DEffectCommonProfileGetFloatProperty(CommonProfileIfNoTechnique, 20);
                v57 = 0;
                *&v58 = ((1.0 - FloatProperty) * (1.0 - FloatProperty)) / ((FloatProperty + 1.0) * (FloatProperty + 1.0));
                *(&v58 + 1) = 1.0 - *&v58;
                *(&v58 + 2) = v56;
                v192 = v58;
                memset(v177, 0, sizeof(v177));
                v164 = 0;
                v165 = &v164;
                v166 = 0x2020000000;
                v167 = 0;
                do
                {
                  EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfileIfNoTechnique, v57, 0);
                  v60 = EffectSlot;
                  if (EffectSlot && C3DEffectSlotHasImageOrTexture(EffectSlot) && C3DKeyframeControllerHasInterpolationModesPerKey(v60))
                  {
                    ImageTransform = C3DEffectSlotGetImageTransform(v60);
                    v62 = v165[3];
                    v165[3] = v62 + 1;
                    *(v177 + v62) = ImageTransform;
                  }

                  ++v57;
                }

                while (v57 != 16);
                v163[0] = MEMORY[0x277D85DD0];
                v163[1] = 3221225472;
                v163[2] = __89__SCNMTLResourceManager_renderResourceForMaterial_geometry_renderPipeline_engineContext___block_invoke;
                v163[3] = &unk_2782FC878;
                v163[5] = v177;
                v163[4] = &v164;
                C3DEntityEnumerateKeyValuesWithBlock(v155, v163);
                if (a3)
                {
                  C3DEntityEnumerateKeyValuesWithBlock(a3, v163);
                }

                if (v165[3] < 1)
                {
                  if ([v153 argumentEncoder])
                  {
                    v148 = objc_alloc_init(SCNMTLBuffer);
                    v87 = [*(a1 + 8) newBufferWithLength:objc_msgSend(objc_msgSend(v153 options:{"argumentEncoder"), "encodedLength"), 0}];
                    [(SCNMTLBuffer *)v148 setBuffer:v87];

                    [objc_msgSend(v153 "argumentEncoder")];
                    v162 = 0;
                    v88 = C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end();
                    if (v88)
                    {
                      v89 = 0;
                      v90 = 26;
                      v91 = 27;
                      do
                      {
                        if (v89 != 8)
                        {
                          v92 = v89;
                          if (v89 == 1)
                          {
                            if (C3DEffectCommonProfileIsUsingAmbientOcclusion(CommonProfileIfNoTechnique))
                            {
                              v92 = 8;
                            }

                            else
                            {
                              v92 = 1;
                            }
                          }

                          v93 = C3DEffectCommonProfileGetEffectSlot(CommonProfileIfNoTechnique, v92, 0);
                          if (v93)
                          {
                            v94 = [a1 renderResourceForEffectSlot:v93 withEngineContext:a5 didFallbackToDefaultTexture:0];
                            TextureSampler = C3DEffectSlotGetTextureSampler(v93);
                            if (v94)
                            {
                              v96 = TextureSampler;
                              [objc_msgSend(v153 "argumentEncoder")];
                              [objc_msgSend(v153 "usedResources")];
                              if (!v96)
                              {
                                C3DTextureSamplerGetDefault();
                              }

                              [objc_msgSend(v153 "argumentEncoder")];
                            }
                          }

                          v90 += 2;
                          v91 += 2;
                        }

                        ++v89;
                      }

                      while (v89 != v88);
                    }

                    v97 = [objc_msgSend(v153 "argumentEncoder")];
                    v98 = *buf;
                    v99 = *&buf[16];
                    v100 = v180;
                    v97[2] = v179;
                    v97[3] = v100;
                    *v97 = v98;
                    v97[1] = v99;
                    v101 = v181;
                    v102 = v182;
                    v103 = v184;
                    v97[6] = v183;
                    v97[7] = v103;
                    v97[4] = v101;
                    v97[5] = v102;
                    v104 = v185;
                    v105 = v186;
                    v106 = v188;
                    v97[10] = v187;
                    v97[11] = v106;
                    v97[8] = v104;
                    v97[9] = v105;
                    v107 = v189;
                    v108 = v190;
                    v109 = v192;
                    v97[14] = v191;
                    v97[15] = v109;
                    v97[12] = v107;
                    v97[13] = v108;
                  }

                  else
                  {
                    v148 = [*(a1 + 64) newSubBufferWithBytes:buf length:256 renderContext:C3DEngineContextGetRenderContext(a5)];
                  }

                  v115 = *(a1 + 24);
                  ++*(v115 + 240);
                  *(v115 + 264) += 256;
                }

                else
                {
                  v148 = objc_alloc_init(SCNMTLBuffer);
                  v63 = v165[3] << 6;
                  v64 = v63 + 256;
                  v65 = [*(a1 + 8) newBufferWithLength:v63 + 256 options:0];
                  v66 = *(a1 + 24);
                  ++*(v66 + 240);
                  *(v66 + 264) += v64;
                  v67 = [v65 contents];
                  v68 = *buf;
                  v69 = *&buf[16];
                  v70 = v180;
                  v67[2] = v179;
                  v67[3] = v70;
                  *v67 = v68;
                  v67[1] = v69;
                  v71 = v181;
                  v72 = v182;
                  v73 = v184;
                  v67[6] = v183;
                  v67[7] = v73;
                  v67[4] = v71;
                  v67[5] = v72;
                  v74 = v185;
                  v75 = v186;
                  v76 = v188;
                  v67[10] = v187;
                  v67[11] = v76;
                  v67[8] = v74;
                  v67[9] = v75;
                  v77 = v189;
                  v78 = v190;
                  v79 = v192;
                  v67[14] = v191;
                  v67[15] = v79;
                  v67[12] = v77;
                  v67[13] = v78;
                  if (v165[3] >= 1)
                  {
                    v80 = 0;
                    v81 = v67 + 19;
                    do
                    {
                      v82 = *(v177 + v80);
                      if (!v82)
                      {
                        v83 = scn_default_log();
                        if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
                        {
                          [SCNMTLResourceManager renderResourceForMaterial:v175 geometry:&v176 renderPipeline:v83 engineContext:?];
                        }
                      }

                      v84 = v82[1];
                      v85 = v82[2];
                      v86 = v82[3];
                      *(v81 - 3) = *v82;
                      *(v81 - 2) = v84;
                      *(v81 - 1) = v85;
                      *v81 = v86;
                      ++v80;
                      v81 += 4;
                    }

                    while (v80 < v165[3]);
                  }

                  [(SCNMTLBuffer *)v148 setBuffer:v65];
                }

                _Block_object_dispose(&v164, 8);
LABEL_143:
                v130 = [v153 type];
                v143 = v143 & 0xFFFFFFFFFFFF0000 | *(v153 + 9);
                [(SCNMTLShadable *)v145 setResource:v148 ofType:v130 atIndices:?];

                goto LABEL_144;
              }

              v148 = objc_alloc_init(SCNMTLBuffer);
              ValueForKey = C3DEntityGetValueForKey(v155, v12);
              v31 = a3 == 0;
              if (ValueForKey)
              {
                v31 = 1;
              }

              if (!v31)
              {
                ValueForKey = C3DEntityGetValueForKey(a3, v12);
              }

              if (!ValueForKey && ([SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:]::done & 1) == 0)
              {
                [SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:]::done = 1;
                v32 = scn_default_log();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  v131 = [v153 name];
                  v132 = *(v153 + 9);
                  v133 = *(v153 + 10);
                  *buf = 138412802;
                  *&buf[4] = v131;
                  *&buf[12] = 1024;
                  *&buf[14] = v132;
                  *&buf[18] = 1024;
                  *&buf[20] = v133;
                  _os_log_error_impl(&dword_21BEF7000, v32, OS_LOG_TYPE_ERROR, "Error: missing value for attachment %@ [vertex: %d fragment: %d]", buf, 0x18u);
                }
              }

              v33 = [objc_msgSend(v153 "argument")];
              if ([(__CFDictionary *)ValueForKey conformsToProtocol:&unk_282E56C78])
              {
                if ([(__CFDictionary *)ValueForKey length]>= v33)
                {
                  [(SCNMTLBuffer *)v148 setBuffer:ValueForKey];
                }

                else
                {
                  if (([SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:]::done & 1) == 0)
                  {
                    [SCNMTLResourceManager renderResourceForMaterial:geometry:renderPipeline:engineContext:]::done = 1;
                    v34 = scn_default_log();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      v134 = *(v153 + 9);
                      v135 = *(v153 + 10);
                      v136 = [(__CFDictionary *)ValueForKey length];
                      *buf = 67109888;
                      *&buf[4] = v134;
                      *&buf[8] = 1024;
                      *&buf[10] = v135;
                      *&buf[14] = 1024;
                      *&buf[16] = v33;
                      *&buf[20] = 1024;
                      *&buf[22] = v136;
                      _os_log_error_impl(&dword_21BEF7000, v34, OS_LOG_TYPE_ERROR, "Error: incorrect buffer size  for attachments vertex [%d] fragments [%d]. Expected:%d Provided:%d", buf, 0x1Au);
                    }
                  }

                  v35 = [*(a1 + 8) newBufferWithLength:v33 options:0];
                  [(SCNMTLBuffer *)v148 setBuffer:v35];

                  [(SCNMTLBuffer *)v148 setOffset:0];
                }

                goto LABEL_143;
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                v40 = [(__CFDictionary *)ValueForKey length];
                if (v40 > v33)
                {
                  v33 = v40;
                }
              }

              v41 = [*(a1 + 8) newBufferWithLength:v33 options:0];
              [(SCNMTLBuffer *)v148 setBuffer:v41];

              [(SCNMTLBuffer *)v148 setOffset:0];
              v42 = [(SCNMTLBuffer *)v148 contents];
              v43 = v42;
              if (ValueForKey)
              {
                v44 = CFGetTypeID(ValueForKey);
                if (v44 == C3DValueGetTypeID())
                {
                  if (!C3DValueWriteToMTLData(ValueForKey, [objc_msgSend(v153 "argument")], v43))
                  {
                    v45 = scn_default_log();
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      *&buf[4] = v12;
                      *&buf[12] = 2112;
                      *&buf[14] = ValueForKey;
                      v46 = v45;
                      v47 = "Error: Argument '%@' : failed to write value to Metal buffer (%@)";
                      v48 = 22;
                      goto LABEL_147;
                    }
                  }
                }

                else if (isKindOfClass)
                {
                  v110 = [(__CFDictionary *)ValueForKey bytes];
                  v111 = [(__CFDictionary *)ValueForKey length];
                  if (v33 == v111)
                  {
                    memcpy(v43, v110, v33);
                  }

                  else
                  {
                    v116 = scn_default_log();
                    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      *&buf[4] = v12;
                      *&buf[12] = 2048;
                      *&buf[14] = v111;
                      *&buf[22] = 2048;
                      *&buf[24] = v33;
                      v46 = v116;
                      v47 = "Error: Argument '%@' : mismatch between the NSData and the buffer size %ld != %ld";
                      v48 = 32;
LABEL_147:
                      _os_log_error_impl(&dword_21BEF7000, v46, OS_LOG_TYPE_ERROR, v47, buf, v48);
                    }
                  }
                }

                else
                {
                  v112 = CFGetTypeID(ValueForKey);
                  v113 = CFCopyTypeIDDescription(v112);
                  v114 = scn_default_log();
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *&buf[4] = v12;
                    *&buf[12] = 2112;
                    *&buf[14] = v113;
                    _os_log_error_impl(&dword_21BEF7000, v114, OS_LOG_TYPE_ERROR, "Error: Argument '%@' : only NSData and NSValue are supported for shadable value storage (found '%@'). Please make sure that your custom shader modifier uniform types match the custom properties of the shadable object", buf, 0x16u);
                  }

                  CFRelease(v113);
                }
              }

              else
              {
                bzero(v42, v33);
              }

              if ([objc_msgSend(v153 "argument")] == 1)
              {
                v117 = [(SCNMTLBuffer *)v148 contents];
                v118 = [objc_msgSend(objc_msgSend(v153 "argument")];
                v119 = [objc_msgSend(objc_msgSend(v153 "argument")];
                v160 = 0u;
                v161 = 0u;
                v158 = 0u;
                v159 = 0u;
                v120 = [v119 countByEnumeratingWithState:&v158 objects:v174 count:16];
                if (v120)
                {
                  v121 = *v159;
                  if (a3)
                  {
                    v122 = ValueForKey == 0;
                  }

                  else
                  {
                    v122 = 0;
                  }

                  v123 = v122;
                  do
                  {
                    for (i = 0; i != v120; ++i)
                    {
                      if (*v159 != v121)
                      {
                        objc_enumerationMutation(v119);
                      }

                      v125 = *(*(&v158 + 1) + 8 * i);
                      v126 = [v118 stringByAppendingString:{objc_msgSend(v125, "name")}];
                      v127 = C3DEntityGetValueForKey(v155, v126);
                      if (v123)
                      {
                        v127 = C3DEntityGetValueForKey(a3, v126);
                      }

                      if (v127)
                      {
                        v128 = CFGetTypeID(v127);
                        if (v128 == C3DValueGetTypeID())
                        {
                          C3DValueWriteToStructMember(v127, v125, v117);
                        }

                        else
                        {
                          v129 = scn_default_log();
                          if (os_log_type_enabled(v129, OS_LOG_TYPE_FAULT))
                          {
                            [SCNMTLResourceManager renderResourceForMaterial:v172 geometry:&v173 renderPipeline:v129 engineContext:?];
                          }
                        }
                      }
                    }

                    v120 = [v119 countByEnumeratingWithState:&v158 objects:v174 count:16];
                  }

                  while (v120);
                }
              }

              goto LABEL_143;
            }

            v23 = C3DEntityGetValueForKey(v155, v12);
            v24 = a3 == 0;
            if (v23)
            {
              v24 = 1;
            }

            if (!v24)
            {
              v23 = C3DEntityGetValueForKey(a3, v12);
            }

            if (v23)
            {
              v25 = CFGetTypeID(v23);
              if (v25 == C3DEffectSlotGetTypeID())
              {
                v26 = [a1 renderResourceForEffectSlot:v23 withEngineContext:a5 didFallbackToDefaultTexture:0];
                v27 = v23;
                v28 = a1;
                if (v26)
                {
                  v27 = v23;
LABEL_72:
                  v51 = [v153 type];
                  v144 = v144 & 0xFFFFFFFFFFFF0000 | *(v153 + 9);
                  [(SCNMTLShadable *)v145 setResource:v26 ofType:v51 atIndices:?];
                  v52 = *(v153 + 11);
                  v53 = *(v153 + 12);
                  if (v53 != 255 || v52 != 255)
                  {
                    if (!v27 || !C3DEffectSlotGetTextureSampler(v27))
                    {
                      C3DTextureSamplerGetDefault();
                    }

                    v141 = v141 & 0xFFFFFFFFFFFF0000 | v52 | (v53 << 8);
                    [(SCNMTLShadable *)v145 setResource:[SCNMTLResourceManager renderResourceForSampler:a1] ofType:3 atIndices:?];
                  }

                  goto LABEL_144;
                }

LABEL_71:
                v26 = *(v28 + 496);
                RenderContext = C3DEngineContextGetRenderContext(a5);
                [-[SCNMTLRenderContext resourceManagerMonitor](RenderContext) renderContext:RenderContext didFallbackToDefaultTextureForSource:v153 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find texture for binding %@ (%@, material=%@)"), v153, v12, v27, v23, a3, v155)}];
                goto LABEL_72;
              }

              v49 = scn_default_log();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                *&buf[4] = v12;
                *&buf[12] = 2048;
                *&buf[14] = v155;
                *&buf[22] = 2048;
                *&buf[24] = a3;
                v37 = v49;
                v38 = "Warning: Missing effect slot for binding %@ (material: %p, geometry: %p)";
LABEL_69:
                _os_log_impl(&dword_21BEF7000, v37, OS_LOG_TYPE_DEFAULT, v38, buf, 0x20u);
              }
            }

            else
            {
              v36 = scn_default_log();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                *&buf[4] = v12;
                *&buf[12] = 2048;
                *&buf[14] = v155;
                *&buf[22] = 2048;
                *&buf[24] = a3;
                v37 = v36;
                v38 = "Warning: Missing shadable value for binding %@ (material: %p, geometry: %p)";
                goto LABEL_69;
              }
            }

            v27 = 0;
            v28 = a1;
            goto LABEL_71;
          }

          v29 = scn_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            [SCNMTLResourceManager renderResourceForMaterial:v157 geometry:v29 renderPipeline:? engineContext:?];
          }
        }

LABEL_144:
        ++v152;
      }

      while (v152 != v150);
      v137 = [(NSArray *)obj countByEnumeratingWithState:&v168 objects:v193 count:16];
      v150 = v137;
      if (!v137)
      {
LABEL_149:
        v138 = objc_alloc_init(SCNMTLShadableKey);
        v138->_material = v155;
        v138->_geometry = a3;
        v138->_pipeline = a4;
        [*(a1 + 408) setObject:v145 forKey:v138];

        break;
      }
    }
  }

  os_unfair_lock_unlock((a1 + 416));
  return v145;
}

uint64_t __89__SCNMTLResourceManager_renderResourceForMaterial_geometry_renderPipeline_engineContext___block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  v5 = CFGetTypeID(cf);
  result = C3DEffectSlotGetTypeID();
  if (cf && v5 == result)
  {
    result = C3DKeyframeControllerHasInterpolationModesPerKey(cf);
    if (result)
    {
      result = C3DEffectSlotGetImageTransform(cf);
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 24);
      *(v8 + 24) = v9 + 1;
      *(v7 + 8 * v9) = result;
    }
  }

  return result;
}

void __71__SCNMTLResourceManager_depthAndStencilStateWithReadWriteDepthDisabled__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D60]);
  [v2 setDepthCompareFunction:7];
  [v2 setDepthWriteEnabled:0];
  *(*(a1 + 32) + 488) = [*(*(a1 + 32) + 8) newDepthStencilStateWithDescriptor:v2];
}

- (void)commandBufferDidCompleteWithError:(id)a3
{
  os_unfair_lock_lock(&self->_availableDeformerStacks.lock);
  [(NSMapTable *)self->_availableDeformerStacks.registry scn_enumerateKeysAndValuesUsingBlock:&__block_literal_global_231];

  os_unfair_lock_unlock(&self->_availableDeformerStacks.lock);
}

- (id)copyTextureByConvertingToCubeMapIfApplicable:(id)a3 engineContext:(__C3DEngineContext *)a4 needsMipmap:(BOOL)a5
{
  v5 = a5;
  v8 = [a3 width];
  if (v8 == 2 * [a3 height])
  {
    v9 = [a3 pixelFormat];
    if (v9 == 115 || v9 == 125)
    {
      v11 = 115;
    }

    else
    {
      v11 = 70;
    }

    return [(SCNMTLResourceManager *)self newCubemapTextureForLatlongTexture:a3 pixelFormat:v11 engineContext:a4 needsMipmap:v5];
  }

  else
  {

    return a3;
  }
}

- (id)newTextureWithDescriptor:(id)a3
{
  if ([a3 pixelFormat])
  {
    v5 = [(MTLDevice *)self->_device newTextureWithDescriptor:a3];
    if (v5)
    {
      ++self->__engineStats->texCount;
      v6 = [a3 width];
      v7 = [a3 height] * v6;
      v8 = v7 * [a3 depth];
      [a3 pixelFormat];
      self->__engineStats->texMemory += (v8 * SCNMTLPixelFormatGetBitSize()) >> 3;
    }
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SCNMTLResourceManager(Textures) *)v9 newTextureWithDescriptor:v10, v11, v12, v13, v14, v15, v16];
    }

    return 0;
  }

  return v5;
}

- (id)newTextureUsingMTKTextureLoaderWithURL:(id)a3 options:(id)a4
{
  v6 = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](self)];
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Textures) *)v7 newTextureUsingMTKTextureLoaderWithURL:v8 options:v9, v10, v11, v12, v13, v14];
    }
  }

  v18 = 0;
  v15 = [v6 newTextureWithContentsOfURL:a3 options:a4 error:&v18];

  if (v18)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Textures) newTextureUsingMTKTextureLoaderWithURL:? options:?];
    }

    return 0;
  }

  return v15;
}

- (id)newTextureUsingMTKTextureLoaderWithData:(id)a3 options:(id)a4
{
  v6 = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](self)];
  if (!v6)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Textures) *)v7 newTextureUsingMTKTextureLoaderWithURL:v8 options:v9, v10, v11, v12, v13, v14];
    }
  }

  v18 = 0;
  v15 = [v6 newTextureWithData:a3 options:a4 error:&v18];

  if (v18)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Textures) newTextureUsingMTKTextureLoaderWithURL:? options:?];
    }

    return 0;
  }

  return v15;
}

- (void)_enqueueCopyFromTexture:(id)a3 toTexture:(id)a4 blitEncoder:(SCNMTLBlitCommandEncoder *)a5 generateMipMaps:(BOOL)a6
{
  v6 = a6;
  v10 = [a3 width];
  if (v10 == [a4 width])
  {
    v11 = [a3 height];
    if (v11 == [a4 height])
    {
      v12 = [a3 depth];
      if (v12 == [a4 depth])
      {
        SCNMTLBlitCommandEncoder::copyTextureToTexture(&a5->_encoder, a3, 0, a4, 0);
        if (v6)
        {

          SCNMTLBlitCommandEncoder::generateMipmapsForTexture(&a5->_encoder, a4);
        }
      }
    }
  }
}

- (id)_textureDescriptorFromImage:(__C3DImage *)a3 needsMipMap:(BOOL)a4 textureOptions:(int)a5
{
  v5 = a5;
  v6 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CD7058]);
  ImageType = C3DImageGetImageType(a3);
  [v9 setTextureType:C3DImageTypeToMTLTextureType(ImageType)];
  v11 = 1;
  [v9 setUsage:1];
  [v9 setStorageMode:0];
  TextureSize = C3DImageGetTextureSize(a3);
  if (*TextureSize.i32 >= 1.0)
  {
    v14 = *TextureSize.i32;
  }

  else
  {
    v14 = 1.0;
  }

  [v9 setWidth:{v14, *&TextureSize, *&v13}];
  v15 = v27;
  if (v27 < 1.0)
  {
    v15 = 1.0;
  }

  [v9 setHeight:v15];
  [v9 setDepth:C3DImageGetDepth(a3)];
  if (v6)
  {
    v16 = fmax([v9 width], objc_msgSend(v9, "height"));
    v11 = (floorf(log2f(v16)) + 1.0);
  }

  [v9 setMipmapLevelCount:v11];
  if ([v9 mipmapLevelCount] >= 2 && objc_msgSend(v9, "textureType") == 5)
  {
    [v9 setUsage:{objc_msgSend(v9, "usage") | 0x10}];
  }

  TextureRawData = C3DImageGetTextureRawData(a3);
  if (TextureRawData)
  {
    v18 = TextureRawData;
    if (C3DLinearRenderingIsEnabled() && (*(v18 + 10) & 1) == 0)
    {
      [v9 setMipmapLevelCount:{C3DImageGetTextureRawDataMipmapLevelCount(a3, 0)}];
      if ((v5 & 1) == 0)
      {
        v19 = SCNMTLPixelFormatSRGBVariant(*(v18 + 36));
        goto LABEL_16;
      }
    }

    else
    {
      [v9 setMipmapLevelCount:{C3DImageGetTextureRawDataMipmapLevelCount(a3, 0)}];
    }

    v19 = SCNMTLPixelFormatNonSRGBVariant(*(v18 + 36));
LABEL_16:
    [v9 setPixelFormat:v19];
    return v9;
  }

  v20 = C3DImageCopyBitmap(a3, 1);
  if (v20)
  {
    v21 = v20;
    BitsPerComponent = CGBitmapContextGetBitsPerComponent(v20);
    BitsPerPixel = CGBitmapContextGetBitsPerPixel(v21);
    v24 = BitsPerPixel / BitsPerComponent;
    [v9 setPixelFormat:SCNMTLPixelFormatFromBitmapContextDescription(BitsPerPixel / BitsPerComponent, BitsPerComponent, v21, v5)];
    if (v24 == 1 && SCNMTLDeviceSupportsTextureSwizzle(self->_device))
    {
      [v9 setSwizzle:16908802];
    }

    CGContextRelease(v21);
  }

  else
  {
    v25 = scn_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Textures) _textureDescriptorFromImage:a3 needsMipMap:? textureOptions:?];
    }

    return 0;
  }

  return v9;
}

- (BOOL)_copyImage:(__C3DImage *)a3 toTexture:(id)a4 desc:(id)a5 textureOptions:(int)a6 needsMipMapGeneration:(BOOL)a7
{
  v10 = a3;
  ImageType = C3DImageGetImageType(a3);
  TextureRawData = C3DImageGetTextureRawData(v10);
  if (!TextureRawData)
  {
    v46 = C3DImageCopyBitmap(v10, 1);
    if (!v46)
    {
      v47 = scn_default_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLResourceManager(Textures) _copyImage:v10 toTexture:? desc:? textureOptions:? needsMipMapGeneration:?];
      }
    }

    v48 = v10;
    Data = CGBitmapContextGetData(v46);
    if (!Data)
    {
      v49 = scn_default_log();
      if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        if (!v46)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      [(SCNMTLResourceManager(Textures) *)v49 _copyImage:v50 toTexture:v51 desc:v52 textureOptions:v53 needsMipMapGeneration:v54, v55, v56];
      if (v46)
      {
LABEL_20:
        CFRelease(v46);
        v46 = 0;
      }
    }

LABEL_21:
    BytesPerRow = CGBitmapContextGetBytesPerRow(v46);
    BitsPerComponent = CGBitmapContextGetBitsPerComponent(v46);
    v59 = (CGBitmapContextGetBitsPerPixel(v46) / BitsPerComponent * BitsPerComponent) >> 3;
    v60 = v59 * [a5 width];
    v61 = [a5 width];
    v62 = [a5 height];
    if (ImageType == 2)
    {
      v63 = [a5 width];
      v64 = [a5 depth];
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_4;
      v89[3] = &unk_2782FCC90;
      v89[4] = a5;
      v89[5] = a4;
      v89[6] = v60;
      C3DImageEnumerateTexture3DSlicePixelBuffers(2, v63, v64, BytesPerRow, v60, v59, Data, v89);
      if (!v46)
      {
        return a7;
      }
    }

    else
    {
      v73 = v62;
      if (C3DImageIsCubeMap(v48))
      {
        v74 = [a5 width];
        v88[0] = MEMORY[0x277D85DD0];
        v88[1] = 3221225472;
        v88[2] = __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_2_5;
        v88[3] = &unk_2782FCC68;
        memset(&v88[6], 0, 24);
        v88[9] = v61;
        v88[10] = v73;
        v88[11] = 1;
        v88[12] = v60;
        v88[4] = a4;
        v88[5] = a5;
        C3DImageEnumerateCubeMapFacePixelBuffers(ImageType, v74, BytesPerRow, v60, v59, Data, v88);
        if (!v46)
        {
          return a7;
        }
      }

      else
      {
        memset(v87, 0, 24);
        v87[3] = v61;
        v87[4] = v73;
        v87[5] = 1;
        [a4 replaceRegion:v87 mipmapLevel:0 slice:0 withBytes:Data bytesPerRow:v60 bytesPerImage:{objc_msgSend(a5, "height") * v60}];
        if (!v46)
        {
          return a7;
        }
      }
    }

    CFRelease(v46);
    return a7;
  }

  v12 = TextureRawData;
  IsCubeMap = C3DImageIsCubeMap(v10);
  HasCubeMapComplexLayout = C3DImageHasCubeMapComplexLayout(v10);
  LOBYTE(v87[0]) = 0;
  TextureRawDataMipmapLevelCount = C3DImageGetTextureRawDataMipmapLevelCount(v10, v87);
  if (TextureRawDataMipmapLevelCount > [a5 mipmapLevelCount])
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Textures) *)v15 _copyImage:v16 toTexture:v17 desc:v18 textureOptions:v19 needsMipMapGeneration:v20, v21, v22];
    }
  }

  v81 = a7;
  if (IsCubeMap)
  {
    if (HasCubeMapComplexLayout)
    {
      if (TextureRawDataMipmapLevelCount)
      {
        for (i = 0; i != TextureRawDataMipmapLevelCount; ++i)
        {
          v24 = [a5 width];
          v25 = [a5 height];
          ValueAtIndex = CFArrayGetValueAtIndex(*(v12 + 40), i);
          Length = CFDataGetLength(ValueAtIndex);
          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          Size = C3DImageGetSize(v10);
          v31 = Length;
          if (*(v12 + 7) < 2u)
          {
            v43 = *(v12 + 4) >> 3;
            v83 = *&Size;
            v84 = BytePtr;
            v44 = v10;
            v45 = [a5 width] * v43;
            v36 = [a5 width];
            v90[0] = MEMORY[0x277D85DD0];
            v90[1] = 3221225472;
            v90[2] = __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_2;
            v90[3] = &unk_2782FCC68;
            memset(&v90[6], 0, 24);
            v90[9] = v24;
            v90[10] = v25;
            v90[11] = 1;
            v90[12] = v45;
            v90[4] = a4;
            v90[5] = a5;
            v38 = v90;
            v39 = ImageType;
            v40 = (v31 / v83);
            v37 = v45;
            v10 = v44;
            v41 = v43;
            v42 = v84;
          }

          else
          {
            LOBYTE(v30) = *(v12 + 8);
            v32 = ((v31 / *(&Size + 1)) * v30);
            v33 = *(v12 + 4) >> 3;
            LODWORD(v33) = [a5 width] / *(v12 + 7) * v33;
            v34 = [a5 height];
            v35 = *(v12 + 8);
            v91[0] = MEMORY[0x277D85DD0];
            v91[1] = 3221225472;
            v91[2] = __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke;
            v91[3] = &unk_2782FCC40;
            memset(&v91[5], 0, 24);
            v91[4] = a4;
            v91[8] = v24;
            v91[9] = v25;
            v36 = v34 / v35;
            v37 = v33;
            v92 = v33;
            v91[10] = 1;
            v91[11] = v34 / v35;
            v38 = v91;
            v39 = ImageType;
            v40 = v32;
            v41 = 0;
            v42 = BytePtr;
          }

          C3DImageEnumerateCubeMapFacePixelBuffers(v39, v36, v40, v37, v41, v42, v38);
        }
      }
    }

    else if (v87[0])
    {
      if (TextureRawDataMipmapLevelCount)
      {
        for (j = 0; j < TextureRawDataMipmapLevelCount; ++j)
        {
          for (k = 0; k != 6; ++k)
          {
            v77 = CFArrayGetValueAtIndex(*(v12 + 40), 6 * j + k);
            replaceSlice(a4, a5, k, j, v77, v12);
          }
        }
      }
    }

    else
    {
      for (m = 0; m != 6; ++m)
      {
        v80 = CFArrayGetValueAtIndex(*(v12 + 40), m);
        replaceRegion(a4, a5, m, v80, v12);
      }
    }
  }

  else
  {
    replaceRegion(a4, a5, 0, *(v12 + 40), v12);
  }

  a7 = TextureRawDataMipmapLevelCount < 2 && v81;
  if (!a4)
  {
    v65 = scn_default_log();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      [(SCNMTLResourceManager(Textures) *)v65 _copyImage:v66 toTexture:v67 desc:v68 textureOptions:v69 needsMipMapGeneration:v70, v71, v72];
    }
  }

  return a7;
}

uint64_t __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  v6[2] = *(a1 + 72);
  return [v3 replaceRegion:v6 mipmapLevel:0 slice:a2 withBytes:a3 bytesPerRow:*(a1 + 96) bytesPerImage:*(a1 + 88) * *(a1 + 96)];
}

uint64_t __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  v6 = *(a1 + 80);
  return [*(a1 + 32) replaceRegion:v5 mipmapLevel:0 slice:a2 withBytes:a3 bytesPerRow:*(a1 + 96) bytesPerImage:{*(a1 + 96) * objc_msgSend(*(a1 + 40), "height", v5[0], v3, v6)}];
}

uint64_t __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) width];
  v7 = [*(a1 + 32) height];
  v9[0] = 0;
  v9[1] = 0;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = 1;
  return [*(a1 + 40) replaceRegion:v9 mipmapLevel:0 slice:0 withBytes:a3 bytesPerRow:*(a1 + 48) bytesPerImage:{*(a1 + 48) * objc_msgSend(*(a1 + 32), "height", 0, 0, v5, v6, v7, 1)}];
}

uint64_t __98__SCNMTLResourceManager_Textures___copyImage_toTexture_desc_textureOptions_needsMipMapGeneration___block_invoke_2_5(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  v6 = *(a1 + 80);
  return [*(a1 + 32) replaceRegion:v5 mipmapLevel:0 slice:a2 withBytes:a3 bytesPerRow:*(a1 + 96) bytesPerImage:{*(a1 + 96) * objc_msgSend(*(a1 + 40), "height", v5[0], v3, v6)}];
}

- (id)newCubemapTextureForLatlongTexture:(id)a3 pixelFormat:(unint64_t)a4 engineContext:(__C3DEngineContext *)a5 needsMipmap:(BOOL)a6
{
  v6 = a6;
  v25 = *MEMORY[0x277D85DE8];
  v11 = [a3 width];
  if (v11 >> 1 >= 0x800)
  {
    v12 = 2048;
  }

  else
  {
    v12 = v11 >> 1;
  }

  v13 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:a4 size:v12 mipmapped:v6];
  [v13 setUsage:19];
  [v13 setStorageMode:2];
  v14 = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v13];
  RenderContext = C3DEngineContextGetRenderContext(a5);
  HasFeatures = C3DEngineContextHasFeatures(a5, 512);
  v17 = HasFeatures;
  if (HasFeatures)
  {
    v18 = @"compute_cube_from_equi";
  }

  else
  {
    v18 = @"compute_cube_from_equi_views";
  }

  v19 = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:v18] computeEvaluator];
  v20 = [(SCNMTLRenderContext *)RenderContext resourceComputeEncoder];
  bzero(v20, 0x678uLL);
  v21 = v20[207];
  [v21 setComputePipelineState:v19];
  [v21 setTexture:a3 atIndex:0];
  if (v17)
  {
    [v21 setTexture:v14 atIndex:1];
  }

  else
  {
    _fillViewsFromCubeMap(v14, 0, v24);
    [v21 setTextures:v24 withRange:{1, 6}];
  }

  [(SCNMTLResourceManager *)self dispatchForCubemap:v14 computeEncoder:v21 pipelineState:v19];
  if (v6)
  {
    v22 = [(SCNMTLRenderContext *)RenderContext resourceBlitEncoder];
    SCNMTLBlitCommandEncoder::generateMipmapsForTexture(v22, v14);
  }

  return v14;
}

- (id)latlongTextureForCubemap:(id)a3 pixelFormat:(unint64_t)a4 renderContext:(id)a5 needsMipmap:(BOOL)a6
{
  v6 = a6;
  v10 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a4 width:2 * objc_msgSend(a3 height:"width") mipmapped:objc_msgSend(a3, "height"), a6];
  [v10 setUsage:3];
  [v10 setStorageMode:2];
  v11 = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v10];
  v12 = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:@"compute_equi_from_cube"] computeEvaluator];
  v13 = [(SCNMTLRenderContext *)a5 resourceComputeEncoder];
  bzero(v13, 0x678uLL);
  v14 = v13[207];
  [v14 setComputePipelineState:v12];
  [v14 setTexture:a3 atIndex:0];
  [v14 setTexture:v11 atIndex:1];
  v19[0] = [v10 width];
  v19[1] = [v10 height];
  v19[2] = 1;
  v17 = vdupq_n_s64(1uLL);
  v18 = 1;
  [v14 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  if (v6)
  {
    v15 = [(SCNMTLRenderContext *)a5 resourceBlitEncoder];
    SCNMTLBlitCommandEncoder::generateMipmapsForTexture(v15, v11);
  }

  return v11;
}

- (id)unstageTexture:(id)a3 commandBuffer:(id)a4
{
  v5 = a3;
  if ([a3 storageMode] == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v7 setTextureType:{objc_msgSend(v5, "textureType")}];
    [v7 setPixelFormat:objc_msgSend(v5, "pixelFormat")];
    [v7 setWidth:{objc_msgSend(v5, "width")}];
    [v7 setHeight:{objc_msgSend(v5, "height")}];
    [v7 setDepth:{objc_msgSend(v5, "depth")}];
    [v7 setMipmapLevelCount:{objc_msgSend(v5, "mipmapLevelCount")}];
    [v7 setUsage:0];
    [v7 setStorageMode:0];
    v8 = [(MTLDevice *)self->_device newTextureWithDescriptor:v7];
    v10._encoder = 0;
    v10._commandBuffer = 0;
    SCNMTLBlitCommandEncoder::beginEncoding(&v10, a4, 0);
    SCNMTLBlitCommandEncoder::copyTextureToTexture(&v10._encoder, v5, v8);
    SCNMTLBlitCommandEncoder::endEncoding(&v10);
    return v8;
  }

  return v5;
}

- (id)renderResourceForEffectSlot:(__C3DEffectSlot *)a3 withEngineContext:(__C3DEngineContext *)a4 didFallbackToDefaultTexture:(BOOL *)a5
{
  if (a5)
  {
    *a5 = 1;
    result = C3DEffectSlotGetMTLTexture(a3);
    if (result)
    {
      *a5 = 0;
      return result;
    }
  }

  else
  {
    result = C3DEffectSlotGetMTLTexture(a3);
    if (result)
    {
      return result;
    }
  }

  ImageProxy = C3DEffectSlotGetImageProxy(a3);
  if (!ImageProxy)
  {
    goto LABEL_9;
  }

  v11 = ImageProxy;
  TextureSampler = C3DEffectSlotGetTextureSampler(a3);
  if (!TextureSampler)
  {
    TextureSampler = C3DTextureSamplerGetDefault();
  }

  result = [(SCNMTLResourceManager *)self renderResourceForImageProxy:v11 sampler:TextureSampler engineContext:a4 didFallbackToDefaultTexture:a5];
  if (!result)
  {
LABEL_9:
    result = C3DEffectSlotGetImage(a3);
    if (result)
    {
      v13 = result;
      v14 = C3DEffectSlotGetTextureSampler(a3);
      TextureOptions = C3DEffectSlotGetTextureOptions(a3);

      return [(SCNMTLResourceManager *)self renderResourceForImage:v13 sampler:v14 options:TextureOptions engineContext:a4 didFallbackToDefaultTexture:a5];
    }
  }

  return result;
}

- (id)renderResourceForImageProxy:(__C3DImageProxy *)a3 sampler:(__C3DTextureSampler *)a4 engineContext:(__C3DEngineContext *)a5 didFallbackToDefaultTexture:(BOOL *)a6
{
  if (!a3)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Textures) *)v11 renderResourceForImageProxy:v12 sampler:v13 engineContext:v14 didFallbackToDefaultTexture:v15, v16, v17, v18];
    }
  }

  p_availableImageProxy = &self->_availableImageProxy;
  os_unfair_lock_lock(&p_availableImageProxy->lock);
  registry = p_availableImageProxy->registry;
  if (!p_availableImageProxy->registry)
  {
    SCNResourceRegistrySetup(p_availableImageProxy, 0);
    registry = p_availableImageProxy->registry;
  }

  v21 = [(NSMapTable *)registry objectForKey:a3];
  if (!v21)
  {
    TextureProxy = C3DImageProxyCreateTextureProxy(a3, a4, a5);
    if (!TextureProxy)
    {
      os_unfair_lock_unlock(&p_availableImageProxy->lock);
      MetalTexture = 0;
      goto LABEL_18;
    }

    v21 = TextureProxy;
    *(TextureProxy + 40) = a3;
    [(NSMapTable *)p_availableImageProxy->registry setObject:TextureProxy forKey:a3];
    CFRelease(v21);
  }

  v28 = 257;
  MetalTexture = C3DTextureProxyGetMetalTexture(v21, a5, a4, &v28);
  os_unfair_lock_unlock(&p_availableImageProxy->lock);
  if (MetalTexture)
  {
    if (v28 == 1 && a4 && (v28 & 0x100) != 0 && C3DTextureSamplerGetMipFilter(a4))
    {
      RenderContext = C3DEngineContextGetRenderContext(a5);
      v25 = [(SCNMTLRenderContext *)RenderContext resourceBlitEncoder];
      SCNMTLBlitCommandEncoder::generateMipmapsForTexture(v25, MetalTexture);
    }

    if (a6)
    {
      v26 = 0;
LABEL_20:
      *a6 = v26;
      return MetalTexture;
    }

    return MetalTexture;
  }

LABEL_18:
  if (a6)
  {
    v26 = 1;
    goto LABEL_20;
  }

  return MetalTexture;
}

- (id)lazyMTKTextureLoader
{
  result = self->_mtkTextureLoader;
  if (!result)
  {
    result = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:self->_device];
    self->_mtkTextureLoader = result;
  }

  return result;
}

- (id)renderResourceForImage:(__C3DImage *)a3 sampler:(__C3DTextureSampler *)a4 options:(int)a5 engineContext:(__C3DEngineContext *)a6 didFallbackToDefaultTexture:(BOOL *)a7
{
  if (!a3 && (v13 = scn_default_log(), os_log_type_enabled(v13, OS_LOG_TYPE_FAULT)))
  {
    [(SCNMTLResourceManager(Textures) *)v13 renderResourceForImageProxy:v14 sampler:v15 engineContext:v16 didFallbackToDefaultTexture:v17, v18, v19, v20];
    if (a4)
    {
LABEL_4:
      if (C3DTextureSamplerGetMipFilter(a4))
      {
        goto LABEL_7;
      }
    }
  }

  else if (a4)
  {
    goto LABEL_4;
  }

  if ((a5 & 4) == 0)
  {
    v21 = 0;
    v22 = a5;
    goto LABEL_8;
  }

LABEL_7:
  v22 = a5 | 4;
  v21 = 1;
LABEL_8:
  v23 = a5 & 0xFFFFFF00;
  v24 = 0xC6A4A7935BD1E995 * (a3 ^ v22 ^ 0x1A929E4D6F47A654 ^ v23);
  v25 = (0xC6A4A7935BD1E995 * (v24 ^ (v24 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v24 ^ (v24 >> 47))) >> 47);
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.lock);
  registry = self->_availableImages.registry;
  if (!registry)
  {
    SCNResourceRegistrySetup(&self->_availableImages, 0);
    registry = p_availableImages->registry;
  }

  v28 = [(NSMapTable *)registry objectForKey:v25];
  if (v28)
  {
    defaultTexture = v28;
    goto LABEL_29;
  }

  RenderContext = C3DEngineContextGetRenderContext(a6);
  C3DImageGetName(a3);
  if (!C3DImageIsCatalogTexture(a3))
  {
    if ((v22 & 2) != 0 && C3DImageIsConvertibleToCubeMap(a3))
    {
      v35 = [(SCNMTLResourceManager *)self _textureDescriptorFromImage:a3 needsMipMap:0 textureOptions:v23 | v22];
      if (v35)
      {
        v36 = v35;
        v37 = [(MTLDevice *)self->_device newTextureWithDescriptor:v35];
        v38 = v23 | v22;
        v39 = v37;
        [(SCNMTLResourceManager *)self _copyImage:a3 toTexture:v37 desc:v36 textureOptions:v38 needsMipMapGeneration:0];
        defaultTexture = [(SCNMTLResourceManager *)self copyTextureByConvertingToCubeMapIfApplicable:v39 engineContext:a6 needsMipmap:v21];
        v40 = defaultTexture;

LABEL_22:
        C3DImageReleaseBitmapCache(a3);
        goto LABEL_23;
      }
    }

    else
    {
      v41 = [(SCNMTLResourceManager *)self _textureDescriptorFromImage:a3 needsMipMap:v21 textureOptions:v23 | v22];
      if (v41)
      {
        v42 = v41;
        defaultTexture = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v41];
        v43 = defaultTexture;
        LODWORD(v21) = [(SCNMTLResourceManager *)self _copyImage:a3 toTexture:defaultTexture desc:v42 textureOptions:v23 | v22 needsMipMapGeneration:v21];
        goto LABEL_22;
      }
    }

LABEL_28:
    defaultTexture = self->_defaultTexture;
    [-[SCNMTLRenderContext resourceManagerMonitor](RenderContext) renderContext:RenderContext didFallbackToDefaultTextureForSource:a3 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find texture for source %@", a3)}];
    [(NSMapTable *)p_availableImages->registry setObject:defaultTexture forKey:v25];
    goto LABEL_29;
  }

  CatalogTextureName = C3DImageGetCatalogTextureName(a3);
  v31 = SCNGetResourceBundle();
  v47 = 0;
  v32 = [(SCNMTLResourceManager *)self lazyMTKTextureLoader];
  defaultTexture = [v32 newTextureWithName:CatalogTextureName scaleFactor:v31 bundle:MEMORY[0x277CBEC10] options:&v47 error:1.0];
  v33 = defaultTexture;
  if (!defaultTexture)
  {
    v34 = scn_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Textures) renderResourceForImage:sampler:options:engineContext:didFallbackToDefaultTexture:];
    }
  }

LABEL_23:
  if (!defaultTexture)
  {
    goto LABEL_28;
  }

  [(NSMapTable *)p_availableImages->registry setObject:defaultTexture forKey:v25];
  if (v21 && C3DImageGetTextureRawDataMipmapLevelCount(a3, 0) <= 1 && SCNMTLPixelFormatSupportsMipmapGeneration([(MTLTexture *)defaultTexture pixelFormat]))
  {
    v44 = [(SCNMTLRenderContext *)RenderContext resourceBlitEncoder];
    SCNMTLBlitCommandEncoder::generateMipmapsForTexture(v44, defaultTexture);
  }

LABEL_29:
  os_unfair_lock_unlock(&self->_availableImages.lock);
  if (a7)
  {
    *a7 = self->_defaultTexture == defaultTexture;
  }

  return defaultTexture;
}

- (id)defaultTexture
{
  v14[6] = *MEMORY[0x277D85DE8];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.lock);
  if (!*p_availableImages)
  {
    SCNResourceRegistrySetup(p_availableImages, 0);
  }

  v13 = p_availableImages;
  if (!self->_defaultTexture)
  {
    v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:4 height:4 mipmapped:1, v13];
    [v5 setUsage:1];
    [v5 setStorageMode:0];
    self->_defaultTexture = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v5];
    v6 = [v5 mipmapLevelCount];
    if (v6)
    {
      v7 = 4;
      v8 = 1;
      do
      {
        MEMORY[0x28223BE20](v6);
        v10 = &v14[-1] - v9;
        memset(&v14[-1] - v9, 255, 4 * v7 * v7);
        defaultTexture = self->_defaultTexture;
        memset(v14, 0, 24);
        v14[3] = v7;
        v14[4] = v7;
        v14[5] = 1;
        [(MTLTexture *)defaultTexture replaceRegion:v14 mipmapLevel:v8 - 1 slice:0 withBytes:v10 bytesPerRow:4 * v7 bytesPerImage:4 * v7 * v7];
        v6 = [v5 mipmapLevelCount];
        if (v8 >= v6)
        {
          break;
        }

        ++v8;
        v12 = v7 > 1;
        v7 >>= 1;
      }

      while (v12);
    }
  }

  os_unfair_lock_unlock(v13 + 2);
  return self->_defaultTexture;
}

- (id)defaultCubeTexture
{
  v16[6] = *MEMORY[0x277D85DE8];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.lock);
  if (!*p_availableImages)
  {
    SCNResourceRegistrySetup(p_availableImages, 0);
  }

  v14 = p_availableImages;
  if (!self->_defaultCubeTexture)
  {
    v4 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:70 size:4 mipmapped:1];
    [v4 setUsage:1];
    [v4 setStorageMode:0];
    self->_defaultCubeTexture = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v4];
    v15 = v4;
    v5 = [v4 mipmapLevelCount];
    if (v5)
    {
      v6 = 0;
      v7 = 4;
      do
      {
        MEMORY[0x28223BE20](v5);
        v9 = &v13 - v8;
        bzero(&v13 - v8, 4 * v7 * v7);
        for (i = 0; i != 6; ++i)
        {
          defaultCubeTexture = self->_defaultCubeTexture;
          memset(v16, 0, 24);
          v16[3] = v7;
          v16[4] = v7;
          v16[5] = 1;
          [(MTLTexture *)defaultCubeTexture replaceRegion:v16 mipmapLevel:v6 slice:i withBytes:v9 bytesPerRow:4 * v7 bytesPerImage:4 * v7 * v7];
        }

        ++v6;
        v7 >>= 1;
        v5 = [v15 mipmapLevelCount];
      }

      while (v6 < v5);
    }
  }

  os_unfair_lock_unlock(v14 + 2);
  return self->_defaultCubeTexture;
}

- (id)defaultTexture3D
{
  v2 = self;
  v33[6] = *MEMORY[0x277D85DE8];
  p_availableImages = &self->_availableImages;
  os_unfair_lock_lock(&self->_availableImages.lock);
  if (!p_availableImages->registry)
  {
    SCNResourceRegistrySetup(p_availableImages, 0);
  }

  v4 = 504;
  if (!v2->_defaultTexture3D)
  {
    v26 = p_availableImages;
    v5 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v5 setPixelFormat:70];
    [v5 setWidth:16];
    [v5 setHeight:16];
    [v5 setDepth:16];
    [v5 setTextureType:7];
    [v5 setMipmapLevelCount:1];
    [v5 setStorageMode:0];
    [v5 setUsage:1];
    v2->_defaultTexture3D = [(SCNMTLResourceManager *)v2 newTextureWithDescriptor:v5];
    v6 = 4 * [v5 width];
    v7 = [v5 height];
    v25[1] = v25;
    v30 = v6 * v7;
    MEMORY[0x28223BE20](v7);
    v31 = v25 - v8;
    if ([v5 depth])
    {
      v32 = 0;
      v27 = v31 + 3;
      v28 = 504;
      v29 = v2;
      do
      {
        v9 = [v5 depth];
        if ([v5 height])
        {
          v10 = 0;
          v11 = v27;
          v12 = 255 * v32 / (v9 - 1);
          do
          {
            v13 = [v5 height];
            if ([v5 width])
            {
              v14 = 0;
              v15 = 0;
              v16 = v13 - 1;
              v17 = v11;
              v18 = 255 * v10 / v16;
              do
              {
                *(v17 - 3) = v14 / ([v5 width] - 1);
                *(v17 - 2) = v18;
                *(v17 - 1) = v12;
                *v17 = -1;
                v17 += 4;
                ++v15;
                v14 += 255;
              }

              while (v15 < [v5 width]);
            }

            ++v10;
            v11 += v6;
          }

          while (v10 < [v5 height]);
        }

        v4 = v28;
        v2 = v29;
        v19 = *(&v29->super.isa + v28);
        v20 = [v5 width];
        v21 = [v5 height];
        v33[0] = 0;
        v33[1] = 0;
        v22 = v32;
        v33[2] = v32;
        v33[3] = v20;
        v33[4] = v21;
        v33[5] = 1;
        [v19 replaceRegion:v33 mipmapLevel:0 slice:0 withBytes:v31 bytesPerRow:v6 bytesPerImage:v30];
        v23 = [v5 depth];
        v32 = v22 + 1;
      }

      while (v22 + 1 < v23);
    }

    p_availableImages = v26;
  }

  os_unfair_lock_unlock(&p_availableImages->lock);
  return *(&v2->super.isa + v4);
}

- (id)iesTextureForProfile:(id)a3 renderContext:(id)a4
{
  p_availableIESTextures = &self->_availableIESTextures;
  os_unfair_lock_lock(&self->_availableIESTextures.lock);
  registry = p_availableIESTextures->registry;
  if (!p_availableIESTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableIESTextures, 1);
    registry = p_availableIESTextures->registry;
  }

  v8 = [(NSMapTable *)registry objectForKey:a3];
  if (v8)
  {
    v9 = v8;
    os_unfair_lock_unlock(&p_availableIESTextures->lock);
  }

  else
  {
    if (C3DIESInfoLoad(a3, v20))
    {
      CACurrentMediaTime();
      BitSize = SCNMTLPixelFormatGetBitSize();
      v11 = BitSize >> 3 << 8;
      v12 = BitSize >> 3 << 12;
      v13 = malloc_type_malloc(v12, 0x7541B84FuLL);
      v14 = SCNMTLPixelFormatGetBitSize();
      C3DIESInfoGenerateTexture2D(v20, v13, 256, 0x10u, 1, v14 >> 3);
      v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:256 height:16 mipmapped:0];
      [v15 setStorageMode:0];
      [v15 setUsage:1];
      v9 = [(MTLDevice *)self->_device newTextureWithDescriptor:v15];
      memset(v17, 0, sizeof(v17));
      v18 = xmmword_21C281030;
      v19 = 1;
      [v9 replaceRegion:v17 mipmapLevel:0 slice:0 withBytes:v13 bytesPerRow:v11 bytesPerImage:v12];
      free(v13);
      [(NSMapTable *)p_availableIESTextures->registry setObject:v9 forKey:a3];
    }

    else
    {
      v9 = 0;
    }

    C3DIESInfoDestroy(v20);
    os_unfair_lock_unlock(&p_availableIESTextures->lock);
  }

  return v9;
}

- (void)colorMatchSourceTexture:(id)a3 sourceColorSpace:(CGColorSpace *)a4 destinationColorSpace:(CGColorSpace *)a5 destinationTexture:(id)a6 renderContext:(id)a7
{
  v10 = [(SCNMTLResourceManager *)self colorMatchingComputePipelineStateForSourceColorSpace:a4 destinationColorSpace:a5 renderContext:a7];
  v11 = [(SCNMTLRenderContext *)a7 resourceComputeEncoder];
  v12 = [(SCNMTLOpenSubdivComputeEvaluator *)v10 computeEvaluator];
  if (v11->_computePipelineState != v12)
  {
    v11->_computePipelineState = v12;
    [(MTLComputeCommandEncoder *)v11->_encoder setComputePipelineState:v12];
  }

  if (v11->_textures[0] != a3)
  {
    v11->_textures[0] = a3;
    v11->_texturesToBind[0] |= 1uLL;
  }

  if (v11->_textures[1] != a6)
  {
    v11->_textures[1] = a6;
    v11->_texturesToBind[0] |= 2uLL;
  }

  v13 = [a3 width];
  v14 = [a3 height];

  SCNMTLComputeCommandEncoder::dispatchOnGrid2D(v11, v13, v14);
}

- (void)colorMatchBiPlanarPixelBufferWithFormatType:(unsigned int)a3 pixelBufferYCbCrMatrix:(id)a4 pixelBufferColorPrimaries:(id)a5 pixelBufferTransferFunction:(id)a6 sourceTextureY:(id)a7 sourceTextureCbCr:(id)a8 sourceColorSpace:(CGColorSpace *)a9 destinationColorSpace:(CGColorSpace *)a10 destinationTexture:(id)a11 renderContext:(id)a12
{
  v14 = [(SCNMTLResourceManager *)self colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:*&a3 pixelBufferYCbCrMatrix:a4 pixelBufferColorPrimaries:a5 pixelBufferTransferFunction:a6 sourceColorSpace:a9 destinationColorSpace:a10 renderContext:a12];
  v15 = [(SCNMTLRenderContext *)a12 resourceComputeEncoder];
  v16 = [(SCNMTLOpenSubdivComputeEvaluator *)v14 computeEvaluator];
  if (v15->_computePipelineState != v16)
  {
    v15->_computePipelineState = v16;
    [(MTLComputeCommandEncoder *)v15->_encoder setComputePipelineState:v16];
  }

  if (v15->_textures[0] != a7)
  {
    v15->_textures[0] = a7;
    v15->_texturesToBind[0] |= 1uLL;
  }

  if (v15->_textures[1] != a8)
  {
    v15->_textures[1] = a8;
    v15->_texturesToBind[0] |= 2uLL;
  }

  if (v15->_textures[2] != a11)
  {
    v15->_textures[2] = a11;
    v15->_texturesToBind[0] |= 4uLL;
  }

  v17 = [a11 width];
  v18 = [a11 height];

  SCNMTLComputeCommandEncoder::dispatchOnGrid2D(v15, v17, v18);
}

- (id)defaultLightingEnvironmentIrradianceTexture
{
  v24[1] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (!self->_defaultLightingEnvironmentIrradianceTexture)
  {
    v3 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", @"SCNDefaultIrradiance", @"ktx"}];
    v23 = *MEMORY[0x277CD71B0];
    v24[0] = MEMORY[0x277CBEC28];
    v4 = -[SCNMTLResourceManager newTextureUsingMTKTextureLoaderWithURL:options:](self, "newTextureUsingMTKTextureLoaderWithURL:options:", v3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1]);
    self->_defaultLightingEnvironmentIrradianceTexture = v4;
    if ([(MTLTexture *)v4 textureType]!= 5)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v5 defaultLightingEnvironmentIrradianceTexture:v6];
      }
    }

    if ([(MTLTexture *)self->_defaultLightingEnvironmentIrradianceTexture pixelFormat]!= 115)
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v13 defaultLightingEnvironmentIrradianceTexture:v14];
      }
    }
  }

  defaultLightingEnvironmentIrradianceTexture = self->_defaultLightingEnvironmentIrradianceTexture;
  objc_sync_exit(self);
  return defaultLightingEnvironmentIrradianceTexture;
}

- (id)defaultLightingEnvironmentRadianceTexture
{
  v24[1] = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  if (!self->_defaultLightingEnvironmentRadianceTexture)
  {
    v3 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "URLForResource:withExtension:", @"SCNDefaultRadiance", @"ktx"}];
    v23 = *MEMORY[0x277CD71B0];
    v24[0] = MEMORY[0x277CBEC28];
    v4 = -[SCNMTLResourceManager newTextureUsingMTKTextureLoaderWithURL:options:](self, "newTextureUsingMTKTextureLoaderWithURL:options:", v3, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1]);
    self->_defaultLightingEnvironmentRadianceTexture = v4;
    if ([(MTLTexture *)v4 textureType]!= 5)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v5 defaultLightingEnvironmentRadianceTexture:v6];
      }
    }

    if ([(MTLTexture *)self->_defaultLightingEnvironmentRadianceTexture pixelFormat]!= 115)
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v13 defaultLightingEnvironmentRadianceTexture:v14];
      }
    }
  }

  defaultLightingEnvironmentRadianceTexture = self->_defaultLightingEnvironmentRadianceTexture;
  objc_sync_exit(self);
  return defaultLightingEnvironmentRadianceTexture;
}

- (id)irradianceTextureForPrecomputedLightingEnvironment:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  p_availableIrradianceTextures = &self->_availableIrradianceTextures;
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  registry = p_availableIrradianceTextures->registry;
  if (!p_availableIrradianceTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableIrradianceTextures, 0);
    registry = p_availableIrradianceTextures->registry;
  }

  v7 = [(NSMapTable *)registry objectForKey:a3];
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  else
  {
    v9 = [a3 irradianceData];
    v27 = *MEMORY[0x277CD71B0];
    v28[0] = MEMORY[0x277CBEC28];
    v8 = -[SCNMTLResourceManager newTextureUsingMTKTextureLoaderWithData:options:](self, "newTextureUsingMTKTextureLoaderWithData:options:", v9, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1]);
    if ([v8 textureType] != 5)
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v10 irradianceTextureForPrecomputedLightingEnvironment:v11, v12, v13, v14, v15, v16, v17];
      }
    }

    if ([v8 pixelFormat] != 115)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v18 irradianceTextureForPrecomputedLightingEnvironment:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    [(NSMapTable *)p_availableIrradianceTextures->registry setObject:v8 forKey:a3];
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  return v8;
}

- (id)radianceTextureForPrecomputedLightingEnvironment:(id)a3
{
  v28[1] = *MEMORY[0x277D85DE8];
  p_availableRadianceTextures = &self->_availableRadianceTextures;
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  registry = p_availableRadianceTextures->registry;
  if (!p_availableRadianceTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableRadianceTextures, 0);
    registry = p_availableRadianceTextures->registry;
  }

  v7 = [(NSMapTable *)registry objectForKey:a3];
  if (v7)
  {
    v8 = v7;
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  else
  {
    v9 = [a3 radianceData];
    v27 = *MEMORY[0x277CD71B0];
    v28[0] = MEMORY[0x277CBEC28];
    v8 = -[SCNMTLResourceManager newTextureUsingMTKTextureLoaderWithData:options:](self, "newTextureUsingMTKTextureLoaderWithData:options:", v9, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1]);
    if ([v8 textureType] != 5)
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v10 radianceTextureForPrecomputedLightingEnvironment:v11, v12, v13, v14, v15, v16, v17];
      }
    }

    if ([v8 pixelFormat] != 115)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLResourceManager(PBR) *)v18 radianceTextureForPrecomputedLightingEnvironment:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    [(NSMapTable *)p_availableRadianceTextures->registry setObject:v8 forKey:a3];
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  return v8;
}

- (id)irradianceTextureForEnvironmentTexture:(id)a3 renderContext:(id)a4 applySH:(id)a5
{
  p_availableIrradianceTextures = &self->_availableIrradianceTextures;
  os_unfair_lock_lock(&self->_availableIrradianceTextures.lock);
  registry = p_availableIrradianceTextures->registry;
  if (!p_availableIrradianceTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableIrradianceTextures, 0);
    registry = p_availableIrradianceTextures->registry;
  }

  v11 = [(NSMapTable *)registry objectForKey:a3];
  if (v11)
  {
    v12 = v11;
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);
  }

  else
  {
    v13 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:115 size:64 mipmapped:0];
    [v13 setUsage:1];
    [v13 setUsage:{objc_msgSend(v13, "usage") | 4}];
    [v13 setStorageMode:2];
    v12 = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v13];
    [(NSMapTable *)p_availableIrradianceTextures->registry setObject:v12 forKey:a3];
    os_unfair_lock_unlock(&p_availableIrradianceTextures->lock);

    [(SCNMTLResourceManager *)self _bakeSphericalHamonicsBasedIrradianceTexture:v12 forEnvironmentTexture:a3 renderContext:a4 applySH:a5];
  }

  return v12;
}

- (void)_bakeStochasticIrradianceTexture:(id)a3 forEnvironmentTexture:(id)a4 mipmapLevelForSampling:(unint64_t)a5 renderContext:(id)a6
{
  v7 = a5;
  v10 = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:@"compute_diffusePreIntegrated_texture2d"] computeEvaluator];
  v11 = [v10 threadExecutionWidth];
  v12 = [v10 maxTotalThreadsPerThreadgroup];
  v13 = vcvtms_u32_f32(sqrtf(v12));
  if (v11 * v11 <= v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v23 = a6;
  v15 = [(SCNMTLRenderContext *)a6 resourceComputeEncoder];
  bzero(v15, 0x678uLL);
  v16 = v15[207];
  [v16 setComputePipelineState:v10];
  v17 = 0;
  v18 = v14 - 1;
  do
  {
    v19 = [a3 newTextureViewWithPixelFormat:objc_msgSend(a3 textureType:"pixelFormat" levels:v23) slices:2, 0, 1, v17, 1];
    [v16 setTexture:v19 atIndex:0];
    [v16 setTexture:a4 atIndex:1];
    v26 = v17;
    v27 = v7;
    [v16 setBytes:&v27 length:4 atIndex:0];
    [v16 setBytes:&v26 length:4 atIndex:1];
    v20 = (v18 + [v19 width]) / v14;
    v21 = [v19 height];
    v25[0] = v20;
    v25[1] = (v18 + v21) / v14;
    v25[2] = 1;
    v24[0] = v14;
    v24[1] = v14;
    v24[2] = 1;
    [v16 dispatchThreadgroups:v25 threadsPerThreadgroup:v24];

    ++v17;
  }

  while (v17 != 6);
  if ([a3 mipmapLevelCount] > 1)
  {
    v22 = [(SCNMTLRenderContext *)v23 resourceBlitEncoder];
    SCNMTLBlitCommandEncoder::generateMipmapsForTexture(v22, a3);
  }
}

- (void)_bakeSphericalHamonicsBasedIrradianceTexture:(id)a3 forEnvironmentTexture:(id)a4 renderContext:(id)a5 applySH:(id)a6
{
  v11 = [(SCNMTLResourceManager *)self sphericalHarmonicsForEnvironmentTexture:a4 order:3 commandBuffer:[(SCNMTLRenderContext *)a5 resourceCommandBuffer]];
  if (a6)
  {
    v12 = [(SCNMTLRenderContext *)a5 resourceCommandBuffer];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __119__SCNMTLResourceManager_PBR___bakeSphericalHamonicsBasedIrradianceTexture_forEnvironmentTexture_renderContext_applySH___block_invoke;
    v22[3] = &unk_2782FD860;
    v22[4] = v11;
    v22[5] = a6;
    [v12 addCompletedHandler:v22];
  }

  *&v19 = [a3 pixelFormat];
  *(&v20 + 1) = @"scn_draw_fullscreen_quad_vertex";
  *&v21 = @"cubemap_from_sh";
  v13 = [(SCNMTLResourceManager *)self newRenderPipelineStateWithDesc:&v18];
  v14 = [(SCNMTLRenderContext *)a5 resourceCommandBuffer];
  for (i = 0; i != 6; ++i)
  {
    v16 = objc_alloc_init(MEMORY[0x277CD6F50]);
    [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
    [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
    [objc_msgSend(objc_msgSend(v16 "colorAttachments")];
    v17 = [v14 renderCommandEncoderWithDescriptor:v16];

    [v17 setRenderPipelineState:{objc_msgSend(v13, "state")}];
    [v17 setFragmentTexture:a4 atIndex:1];
    LODWORD(v18) = i;
    [v17 setFragmentBuffer:v11 offset:0 atIndex:{0, v18}];
    [v17 setFragmentBytes:&v18 length:4 atIndex:1];
    [v17 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v17 endEncoding];
  }
}

- (id)newRadianceTextureForEnvironmentTexture:(id)a3 engineContext:(__C3DEngineContext *)a4 cpuAccessible:(BOOL)a5 commandBuffer:(id)a6
{
  v7 = a5;
  v11 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:115 size:256 mipmapped:1];
  [v11 setUsage:1];
  [v11 setUsage:{objc_msgSend(v11, "usage") | 0x10}];
  [v11 setUsage:{objc_msgSend(v11, "usage") | 2}];
  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  [v11 setStorageMode:v12];
  v43 = [a3 mipmapLevelCount];
  v42 = [v11 mipmapLevelCount];
  [v11 setMipmapLevelCount:{objc_msgSend(v11, "mipmapLevelCount") - 4}];
  v13 = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v11];
  HasFeatures = C3DEngineContextHasFeatures(a4, 512);
  if (HasFeatures)
  {
    v15 = @"compute_specularPreIntegratedLD_texturecube";
  }

  else
  {
    v15 = @"compute_specularPreIntegratedLD_texture2d";
  }

  v16 = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:v15] computeEvaluator];
  v17 = [v16 threadExecutionWidth];
  v18 = [v16 maxTotalThreadsPerThreadgroup];
  do
  {
    v19 = v17;
    v20 = 6 * v17 * v17;
    v17 >>= 1;
  }

  while (v20 > v18);
  v21 = [a6 computeCommandEncoder];
  [v21 setComputePipelineState:v16];
  [v21 setTexture:a3 atIndex:1];
  if ([v13 mipmapLevelCount])
  {
    v22 = 0;
    v23 = 6;
    if (!HasFeatures)
    {
      v23 = 1;
    }

    v45 = v23;
    do
    {
      if (v43 < 2)
      {
        v44 = 0;
      }

      else
      {
        v24 = [a3 mipmapLevelCount];
        if (v24 < v42)
        {
          v25 = -1;
        }

        else
        {
          v25 = v24 - v42;
        }

        v44 = [a3 newTextureViewWithPixelFormat:objc_msgSend(a3 textureType:"pixelFormat") levels:5 slices:v22 + v25 + 1, 1, 0, 6];
        [v21 setTexture:? atIndex:?];
      }

      v26 = 0;
      do
      {
        if (HasFeatures)
        {
          v27 = v13;
          v28 = 5;
          v29 = v22;
          v30 = 0;
          v31 = 6;
        }

        else
        {
          LODWORD(v47[0]) = v26;
          [v21 setBytes:v47 length:4 atIndex:1];
          v27 = v13;
          v28 = 2;
          v29 = v22;
          v30 = v26;
          v31 = 1;
        }

        v32 = [v27 newTextureViewWithPixelFormat:115 textureType:v28 levels:v29 slices:1, v30, v31];
        [v21 setTexture:v32 atIndex:0];
        v33 = [v13 mipmapLevelCount];
        v34 = 0.0;
        if (v33 >= 2)
        {
          v34 = 1.0 / ([v13 mipmapLevelCount] - 1);
        }

        v48 = fminf(fmaxf(v34 * v22, 0.01), 1.0);
        [v21 setBytes:&v48 length:4 atIndex:0];
        v35 = [v32 width];
        if (v19 >= v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = v19;
        }

        v37 = (v36 - 1 + [v32 width]) / v36;
        v38 = [v32 height];
        v47[0] = v37;
        v47[1] = (v36 - 1 + v38) / v36;
        v47[2] = v45;
        v46[0] = v36;
        v46[1] = v36;
        v46[2] = 1;
        [v21 dispatchThreadgroups:v47 threadsPerThreadgroup:v46];

        v40 = v26++ > 4 || HasFeatures;
      }

      while ((v40 & 1) == 0);

      ++v22;
    }

    while (v22 < [v13 mipmapLevelCount]);
  }

  [v21 endEncoding];
  return v13;
}

- (id)radianceTextureForEnvironmentTexture:(id)a3 engineContext:(__C3DEngineContext *)a4 commandBuffer:(id)a5
{
  p_availableRadianceTextures = &self->_availableRadianceTextures;
  os_unfair_lock_lock(&self->_availableRadianceTextures.lock);
  registry = p_availableRadianceTextures->registry;
  if (!p_availableRadianceTextures->registry)
  {
    SCNResourceRegistrySetup(p_availableRadianceTextures, 0);
    registry = p_availableRadianceTextures->registry;
  }

  v11 = [(NSMapTable *)registry objectForKey:a3];
  if (v11)
  {
    v12 = v11;
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  else
  {
    v12 = [(SCNMTLResourceManager *)self newRadianceTextureForEnvironmentTexture:a3 engineContext:a4 cpuAccessible:0 commandBuffer:a5];
    [(NSMapTable *)p_availableRadianceTextures->registry setObject:v12 forKey:a3];
    os_unfair_lock_unlock(&p_availableRadianceTextures->lock);
  }

  return v12;
}

- (id)specularDFGDiffuseHammonTextureWithRenderContext:(id)a3
{
  objc_sync_enter(self);
  specularDFGDiffuseHammonTexture = self->_specularDFGDiffuseHammonTexture;
  if (!specularDFGDiffuseHammonTexture)
  {
    v6 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:128 height:128 mipmapped:0];
    [v6 setUsage:3];
    [v6 setStorageMode:2];
    self->_specularDFGDiffuseHammonTexture = [(SCNMTLResourceManager *)self newTextureWithDescriptor:v6];
    v7 = [(SCNMTLOpenSubdivComputeEvaluator *)[(SCNMTLResourceManager *)self computePipelineStateForKernel:@"compute_specularPreIntegratedDFG_diffuseHammon"] computeEvaluator];
    v8 = [(SCNMTLRenderContext *)a3 resourceComputeEncoder];
    bzero(v8, 0x678uLL);
    v9 = v8[207];
    [v9 setComputePipelineState:v7];
    [v9 setTexture:self->_specularDFGDiffuseHammonTexture atIndex:0];
    [(SCNMTLResourceManager *)self dispatchForTexture:v9 computeEncoder:v7 pipelineState:?];
    specularDFGDiffuseHammonTexture = self->_specularDFGDiffuseHammonTexture;
  }

  objc_sync_exit(self);
  return specularDFGDiffuseHammonTexture;
}

- (id)areaLightPrecomputedDataTexture
{
  objc_sync_enter(self);
  areaLightPrecomputedDataTexture = self->_areaLightPrecomputedDataTexture;
  if (!areaLightPrecomputedDataTexture)
  {
    v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:125 width:64 height:64 mipmapped:0];
    [v4 setStorageMode:0];
    [v4 setTextureType:3];
    [v4 setArrayLength:3];
    v5 = [(MTLDevice *)self->_device newTextureWithDescriptor:v4];
    self->_areaLightPrecomputedDataTexture = v5;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = vdupq_n_s64(0x40uLL);
    v13 = 1;
    [(MTLTexture *)v5 replaceRegion:&v9 mipmapLevel:0 slice:0 withBytes:&area_lights_pre_computed_tables bytesPerRow:1024 bytesPerImage:0x10000];
    v6 = self->_areaLightPrecomputedDataTexture;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = vdupq_n_s64(0x40uLL);
    v13 = 1;
    [(MTLTexture *)v6 replaceRegion:&v9 mipmapLevel:0 slice:1 withBytes:&unk_21C2916F0 bytesPerRow:1024 bytesPerImage:0x10000];
    v7 = self->_areaLightPrecomputedDataTexture;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = vdupq_n_s64(0x40uLL);
    v13 = 1;
    [(MTLTexture *)v7 replaceRegion:&v9 mipmapLevel:0 slice:2 withBytes:&unk_21C2916F0 bytesPerRow:1024 bytesPerImage:0x10000];
    areaLightPrecomputedDataTexture = self->_areaLightPrecomputedDataTexture;
  }

  objc_sync_exit(self);
  return areaLightPrecomputedDataTexture;
}

- (id)shFromCPU:(id)a3 commandBuffer:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = [(SCNMTLResourceManager *)self unstageTexture:a3 commandBuffer:a4];
  v5 = 0;
  memset(v31, 0, 108);
  while (1)
  {
    v6 = [v4 pixelFormat];
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0x46)
    {
      break;
    }

    v7 = 4 * [v4 width];
    v8 = v7 * [v4 height];
    v9 = malloc_type_calloc(v8, 1uLL, 0x100004052888210uLL);
    v10 = [v4 width];
    v11 = [v4 height];
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v10;
    v29 = v11;
    v30 = 1;
    [v4 getBytes:v9 bytesPerRow:v7 bytesPerImage:v8 fromRegion:&v25 mipmapLevel:0 slice:v5];
    v12 = malloc_type_calloc([v4 height] * objc_msgSend(v4, "width"), 0x10uLL, 0x1000040451B5BE8uLL);
    convert_rgba8unorm_to_rgbaf32(v12, 16 * [v4 width], v9, v7, objc_msgSend(v4, "width"), objc_msgSend(v4, "height"));
LABEL_7:
    free(v9);
LABEL_9:
    compute_sh(v12, [v4 width], v5, 3, v31);
    free(v12);
    if (++v5 == 6)
    {
      return [(MTLDevice *)self->_device newBufferWithBytes:v31 length:108 options:0];
    }
  }

  v13 = v6;
  if (v6 == 125)
  {
    v18 = 16 * [v4 width];
    v19 = v18 * [v4 height];
    v12 = malloc_type_calloc(v19, 1uLL, 0x60039EF2uLL);
    v20 = [v4 width];
    v21 = [v4 height];
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v20;
    v29 = v21;
    v30 = 1;
    [v4 getBytes:v12 bytesPerRow:v18 bytesPerImage:v19 fromRegion:&v25 mipmapLevel:0 slice:v5];
    goto LABEL_9;
  }

  if (v6 == 115)
  {
    v14 = 8 * [v4 width];
    v15 = v14 * [v4 height];
    v9 = malloc_type_calloc(v15, 1uLL, 0x100004052888210uLL);
    v16 = [v4 width];
    v17 = [v4 height];
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v16;
    v29 = v17;
    v30 = 1;
    [v4 getBytes:v9 bytesPerRow:v14 bytesPerImage:v15 fromRegion:&v25 mipmapLevel:0 slice:v5];
    v12 = malloc_type_calloc([v4 height] * objc_msgSend(v4, "width"), 0x10uLL, 0x1000040451B5BE8uLL);
    convert_rgba16f_to_rgbaf32(v12, 16 * [v4 width], v9, v14, objc_msgSend(v4, "width"), objc_msgSend(v4, "height"));
    goto LABEL_7;
  }

  v23 = scn_default_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLResourceManager(SH) shFromCPU:v13 commandBuffer:v23];
  }

  return 0;
}

- (id)sphericalHarmonicsForEnvironmentTexture:(id)a3 order:(unint64_t)a4 commandBuffer:(id)a5
{
  v9 = a4 * a4;
  v22 = [(MTLDevice *)self->_device newBufferWithLength:12 * a4 * a4 options:0];
  v10 = -[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](-[SCNMTLResourceManager computePipelineStateForKernel:](self, "computePipelineStateForKernel:", [MEMORY[0x277CCACA8] stringWithFormat:@"compute_sh%d_from_cubemap_threadgroup_mem", a4]));
  v11 = v10;
  if (!v10)
  {
    v11 = -[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](-[SCNMTLResourceManager computePipelineStateForKernel:](self, "computePipelineStateForKernel:", [MEMORY[0x277CCACA8] stringWithFormat:@"compute_sh%d_from_cubemap", a4]));
  }

  v12 = [a5 computeCommandEncoder];
  [v12 setComputePipelineState:v11];
  if ([a3 mipmapLevelCount] >= 0xA)
  {
    v13 = [a3 mipmapLevelCount];
    v14 = 9;
    if (v13 > 9)
    {
      v14 = v13;
    }

    a3 = [a3 newTextureViewWithPixelFormat:objc_msgSend(a3 textureType:"pixelFormat") levels:5 slices:v14 - 9, 1, 0, 6];
  }

  [v12 setTexture:a3 atIndex:0];
  if (v10)
  {
    v15 = [(MTLDevice *)self->_device newBufferWithLength:72 * v9 options:32];
    [v12 setBuffer:v15 offset:0 atIndex:1];
    v16 = (16 * v9);
    v17 = [v11 threadExecutionWidth];
    v18 = 0x7FFF / v16;
    if (v17 < v18)
    {
      v18 = v17;
    }

    if (v18 >= 0x40)
    {
      v19 = 64;
    }

    else
    {
      v19 = v18;
    }

    [v12 setThreadgroupMemoryLength:v19 * v16 atIndex:0];
    v24 = xmmword_21C2A1730;
    v25 = 1;
    *v23 = v19;
    *&v23[8] = vdupq_n_s64(1uLL);
    [v12 dispatchThreadgroups:&v24 threadsPerThreadgroup:v23];
    [v12 setComputePipelineState:{-[SCNMTLOpenSubdivComputeEvaluator computeEvaluator](-[SCNMTLResourceManager computePipelineStateForKernel:](self, "computePipelineStateForKernel:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"sum_sh%d", a4)))}];
    v20 = v22;
    [v12 setBuffer:v22 offset:0 atIndex:0];
    v24 = xmmword_21C2A1740;
    v25 = 1;
    *v23 = xmmword_21C2A1740;
    *&v23[16] = 1;
    [v12 dispatchThreadgroups:&v24 threadsPerThreadgroup:v23];
  }

  else
  {
    v20 = v22;
    [v12 setBuffer:v22 offset:0 atIndex:0];
    v24 = xmmword_21C2A1740;
    v25 = 1;
    *v23 = xmmword_21C2A1740;
    *&v23[16] = 1;
    [v12 dispatchThreadgroups:&v24 threadsPerThreadgroup:v23];
  }

  [v12 endEncoding];
  return v20;
}

- (id)renderResourceForProgramDesc:(id *)a3 renderPassDescriptor:(id)a4
{
  var0 = a3->var0;
  var3 = a3->var3;
  var5 = a3->var5;
  v10 = a3->var16.var0;
  var1 = a3->var16.var1;
  v88 = 0u;
  v89 = 0u;
  memset(v87, 0, sizeof(v87));
  v86 = 0u;
  v85[0] = a3->var12;
  if (!v85[0])
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Compilation) *)v11 renderResourceForProgramDesc:v12 renderPassDescriptor:v13, v14, v15, v16, v17, v18];
    }
  }

  v19 = 0;
  v85[1] = C3DFXMetalProgramGetHash(var0);
  *(&v86 + 1) = var3;
  LOBYTE(v87[0]) = v10;
  do
  {
    *(v87 + v19 + 1) = [objc_msgSend(objc_msgSend(objc_msgSend(a4 "colorAttachments")];
    ++v19;
  }

  while (v19 != 8);
  *(&v88 + 1) = [objc_msgSend(objc_msgSend(a4 "depthAttachment")];
  *&v89 = [objc_msgSend(objc_msgSend(a4 "stencilAttachment")];
  BYTE8(v89) = a3->var8;
  var10 = a3->var10;
  if (var10 <= 1)
  {
    LOBYTE(var10) = 1;
  }

  BYTE10(v89) = var10;
  v21 = [objc_msgSend(objc_msgSend(objc_msgSend(a4 "colorAttachments")];
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = [objc_msgSend(objc_msgSend(a4 "depthAttachment")];
  if (v22 <= v23)
  {
    v22 = v23;
  }

  v24 = [objc_msgSend(objc_msgSend(a4 "stencilAttachment")];
  v25 = v22;
  if (v22 <= v24)
  {
    v25 = v24;
  }

  BYTE9(v89) = v25;
  v26 = [objc_msgSend(objc_msgSend(objc_msgSend(a4 "colorAttachments")];
  v27 = var5;
  if (!v26)
  {
    v27 = C3DBlendStatesDefaultReplace();
  }

  v28 = 0;
  *&v86 = v27;
  BYTE11(v89) = a3->var7;
  v29 = 0x5253C9ADE8F4CA80;
  do
  {
    v30 = v85[v28++];
    v29 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v30) ^ ((0xC6A4A7935BD1E995 * v30) >> 47))) ^ v29);
  }

  while (v28 != 16);
  v31 = ((0xC6A4A7935BD1E995 * (v29 ^ (v29 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v29 ^ (v29 >> 47))) >> 47));
  os_unfair_lock_lock(&self->_availablePipelineStatesLock);
  Value = CFDictionaryGetValue(self->_availablePipelineStates, v31);
  if (Value)
  {
    v33 = Value;
    os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
    return v33;
  }

  TypeID = C3DFXMetalProgramGetTypeID();
  if (TypeID != CFGetTypeID(var0))
  {
    v54 = scn_default_log();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Compilation) renderResourceForProgramDesc:renderPassDescriptor:];
    }

    goto LABEL_32;
  }

  FunctionName = C3DFXMetalProgramGetFunctionName(var0, 0);
  if (!FunctionName)
  {
    if ((renderResourceForProgramDesc_renderPassDescriptor__done & 1) == 0)
    {
      renderResourceForProgramDesc_renderPassDescriptor__done = 1;
      v56 = scn_default_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLResourceManager(Compilation) renderResourceForProgramDesc:renderPassDescriptor:];
      }
    }

LABEL_32:
    os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
    return 0;
  }

  v60 = FunctionName;
  key = v31;
  v59 = C3DFXMetalProgramGetFunctionName(var0, 1);
  Constants = C3DFXMetalProgramGetConstants(var0);
  v79 = 0;
  v80 = &v79;
  v81 = 0x3052000000;
  v82 = __Block_byref_object_copy__12;
  v83 = __Block_byref_object_dispose__12;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3052000000;
  v76 = __Block_byref_object_copy__12;
  v77 = __Block_byref_object_dispose__12;
  v78 = 0;
  LinkedFunctionsFamilies = C3DFXMetalProgramGetLinkedFunctionsFamilies(var0);
  v68 = MEMORY[0x277D85DD0];
  v69 = 3221225472;
  v70 = __88__SCNMTLResourceManager_Compilation__renderResourceForProgramDesc_renderPassDescriptor___block_invoke;
  v71 = &unk_278301C00;
  v72 = &v79;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v65 = __88__SCNMTLResourceManager_Compilation__renderResourceForProgramDesc_renderPassDescriptor___block_invoke_2;
  v66 = &unk_278301C00;
  v67 = &v73;
  if (LinkedFunctionsFamilies)
  {
    v37 = 0;
    v38 = 1;
    do
    {
      v39 = v38;
      v40 = [-[SCNMTLLibraryManager frameworkLibrary](self->_libraryManager frameworkLibrary];
      v65(v64, v40);

      v38 = 0;
      v37 = 1;
    }

    while ((v39 & 1) != 0);
  }

  *&__src[22] = 0;
  memset(&__src[20], 0, 32);
  memset(&__src[18], 0, 32);
  v41 = *&a3->var13;
  __src[4] = *&a3->var11;
  __src[5] = v41;
  __src[6] = a3->var16;
  var17 = a3->var17;
  v43 = *&a3->var2;
  __src[0] = *&a3->var0;
  __src[1] = v43;
  v44 = *&a3->var6;
  __src[2] = *&a3->var4;
  __src[3] = v44;
  *(&__src[12] + 8) = 0u;
  *(&__src[11] + 8) = 0u;
  *(&__src[10] + 8) = 0u;
  *(&__src[9] + 8) = 0u;
  *(&__src[8] + 8) = 0u;
  *(&__src[7] + 8) = 0u;
  *&__src[7] = var17;
  *(&__src[13] + 1) = var5;
  *&__src[14] = a3->var7;
  *(&__src[14] + 1) = *&__src[14];
  *&__src[15] = *&__src[14];
  *(&__src[15] + 1) = *&__src[14];
  *&__src[16] = *&__src[14];
  *(&__src[16] + 1) = *&__src[14];
  __src[17] = 0uLL;
  LOBYTE(__src[18]) = a3->var8;
  var11 = a3->var11;
  *(&__src[18] + 1) = Constants;
  *&__src[19] = var11;
  *(&__src[19] + 1) = v60;
  *&__src[20] = v59;
  *(&__src[20] + 1) = v80[5];
  *&__src[21] = v74[5];
  *(&__src[21] + 1) = var1;
  LOBYTE(__src[22]) = a3->var14;
  WORD1(__src[22]) = 257;
  SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[8], a4);
  memcpy(__dst, __src, sizeof(__dst));
  v33 = [(SCNMTLResourceManager *)self newRenderPipelineStateWithDesc:__dst];
  if (!v33)
  {
    v46 = scn_default_log();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLResourceManager(Compilation) *)v46 renderResourceForProgramDesc:v47 renderPassDescriptor:v48, v49, v50, v51, v52, v53];
    }
  }

  CFDictionarySetValue(self->_availablePipelineStates, key, v33);

  os_unfair_lock_unlock(&self->_availablePipelineStatesLock);
  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);
  return v33;
}

uint64_t __88__SCNMTLResourceManager_Compilation__renderResourceForProgramDesc_renderPassDescriptor___block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    v5 = [objc_msgSend(v4 "privateFunctions")];
    v6 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 setPrivateFunctions:v5];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x277CD6EB8]);
    v8[0] = a2;
    return [*(*(*(a1 + 32) + 8) + 40) setPrivateFunctions:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)}];
  }
}

uint64_t __88__SCNMTLResourceManager_Compilation__renderResourceForProgramDesc_renderPassDescriptor___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 32) + 8) + 40);
  if (v4)
  {
    v5 = [objc_msgSend(v4 "privateFunctions")];
    v6 = *(*(*(a1 + 32) + 8) + 40);

    return [v6 setPrivateFunctions:v5];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 40) = objc_alloc_init(MEMORY[0x277CD6EB8]);
    v8[0] = a2;
    return [*(*(*(a1 + 32) + 8) + 40) setPrivateFunctions:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v8, 1)}];
  }
}

- (__C3DFXMetalProgram)defaultProgramUsingTessellation:(BOOL)a3
{
  v3 = &OBJC_IVAR___SCNMTLResourceManager__defaultProgram;
  if (a3)
  {
    v3 = &OBJC_IVAR___SCNMTLResourceManager__defaultProgramForTessellation;
  }

  return *(&self->super.isa + *v3);
}

- (void)_createPipelineStateWithDescriptor:(id)a3 desc:(id *)a4 pipeline:(id)a5
{
  memcpy(__dst, a4, sizeof(__dst));
  SCNMTLRenderPipelineDescRetain(__dst);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v20 = __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke;
  v21 = &unk_278301C38;
  memcpy(v24, a4, sizeof(v24));
  v22 = a5;
  v23 = a3;
  ++self->__engineStats->renderPipelineCount;
  v9 = CACurrentMediaTime();
  if (a4->var13 - 1 >= 2)
  {
    if (a4->var13)
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SCNMTLLibraryManager libraryForProgramDesc:completionHandler:];
      }
    }

    else
    {
      __dst[0] = 0;
      if (a4->var15)
      {
        v14 = 0;
        v12 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:a3 options:3 reflection:&v14 error:__dst];
        self->__engineStats->renderPipelineCompilationTime = CACurrentMediaTime() - v9 + self->__engineStats->renderPipelineCompilationTime;
        v20(v19, v12, __dst[0]);
        if (v12)
        {
          [(SCNMTLShaderBindingsGenerator *)self->_bindingsGenerator generateBindingsForPipeline:a5 withReflection:v14 program:a4->var0.var0 material:a4->var0.var1 geometry:a4->var0.var2 pass:a4->var0.var3];
        }
      }

      else
      {
        v12 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:a3 error:__dst];
        self->__engineStats->renderPipelineCompilationTime = CACurrentMediaTime() - v9 + self->__engineStats->renderPipelineCompilationTime;
        v20(v19, v12, __dst[0]);
      }
    }
  }

  else
  {
    v10 = [(SCNMTLLibraryManager *)self->_libraryManager shaderCompilationGroup];
    dispatch_group_enter(v10);
    device = self->_device;
    if (a4->var15)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_11;
      v16[3] = &unk_278301C88;
      memcpy(v17, a4, sizeof(v17));
      v18 = v9;
      v16[4] = self;
      v16[5] = a5;
      v16[6] = v10;
      v16[7] = v19;
      [(MTLDevice *)device newRenderPipelineStateWithDescriptor:a3 options:3 completionHandler:v16];
    }

    else
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_3;
      v15[3] = &unk_278301CB0;
      *&v15[7] = v9;
      v15[5] = v10;
      v15[6] = v19;
      v15[4] = self;
      [(MTLDevice *)device newRenderPipelineStateWithDescriptor:a3 completionHandler:v15];
    }
  }
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if (a3)
    {
      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_cold_1(a1, a3, v6);
      }
    }
  }

  [*(a1 + 32) setState:a2];
  v7 = *(a1 + 32) + 32;
  v9 = *(a1 + 224);
  v8 = *(a1 + 240);
  v10 = *(a1 + 208);
  *(v7 + 80) = *(a1 + 256);
  *(v7 + 48) = v9;
  *(v7 + 64) = v8;
  *(v7 + 32) = v10;
  v11 = *(a1 + 192);
  *v7 = *(a1 + 176);
  *(v7 + 16) = v11;
  [*(a1 + 32) setVertexDescriptor:{objc_msgSend(*(a1 + 40), "vertexDescriptor")}];
  [*(a1 + 32) setVertexFunction:{objc_msgSend(*(a1 + 40), "vertexFunction")}];
  [*(a1 + 32) setFragmentFunction:{objc_msgSend(*(a1 + 40), "fragmentFunction")}];
  *(*(a1 + 32) + 16) = *(a1 + 48);
  *(*(a1 + 32) + 24) = *(a1 + 72);
  memcpy(__dst, (a1 + 48), sizeof(__dst));
  SCNMTLRenderPipelineDescRelease(__dst);
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, (a1 + 64), sizeof(__dst));
  SCNMTLRenderPipelineDescRetain(__dst);
  v8 = [*(*(a1 + 32) + 32) deviceQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_2;
  v10[3] = &unk_278301C60;
  v12 = *(a1 + 424);
  v9 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v10[5] = a4;
  v10[6] = a2;
  v10[7] = v9;
  v10[8] = a3;
  memcpy(v13, (a1 + 64), sizeof(v13));
  v11 = *(a1 + 48);
  dispatch_async(v8, v10);
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 24) + 304) = CACurrentMediaTime() - *(a1 + 88) + *(*(*(a1 + 32) + 24) + 304);
  (*(*(a1 + 80) + 16))();
  if (*(a1 + 48))
  {
    [*(*(a1 + 32) + 40) generateBindingsForPipeline:*(a1 + 56) withReflection:*(a1 + 64) program:*(a1 + 96) material:*(a1 + 104) geometry:*(a1 + 112) pass:*(a1 + 120)];
    v2 = *(a1 + 48);
  }

  else
  {
    v2 = 0;
  }

  [*(a1 + 56) setState:v2];
  memcpy(__dst, (a1 + 96), sizeof(__dst));
  SCNMTLRenderPipelineDescRelease(__dst);
  dispatch_group_leave(*(a1 + 72));
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 32) + 24) + 304) = CACurrentMediaTime() - *(a1 + 56) + *(*(*(a1 + 32) + 24) + 304);
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (id)newRenderPipelineStateWithDesc:(id *)a3
{
  if (a3->var1)
  {
    memcpy(__dst, a3, 0x168uLL);
    v5 = _pipelineDescriptorForPipelineDesc(__dst);
    if (v5)
    {
      v6 = v5;
      v7 = objc_alloc_init(SCNMTLRenderPipeline);
      memcpy(__dst, a3, 0x168uLL);
      [(SCNMTLResourceManager *)self _createPipelineStateWithDescriptor:v6 desc:__dst pipeline:v7];
      ++self->__engineStats->prgCount;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = objc_alloc_init(SCNMTLRenderPipeline);
    memcpy(__dst, a3, 0x168uLL);
    SCNMTLRenderPipelineDescRetain(__dst);
    libraryManager = self->_libraryManager;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__SCNMTLResourceManager_Compilation__newRenderPipelineStateWithDesc___block_invoke;
    v13[3] = &unk_278301CD8;
    memcpy(v14, a3, sizeof(v14));
    v13[4] = self;
    v13[5] = v7;
    v9 = *&a3->var0.var13;
    __dst[4] = *&a3->var0.var11;
    __dst[5] = v9;
    __dst[6] = a3->var0.var16;
    *&__dst[7] = a3->var0.var17;
    v10 = *&a3->var0.var2;
    __dst[0] = *&a3->var0.var0;
    __dst[1] = v10;
    v11 = *&a3->var0.var6;
    __dst[2] = *&a3->var0.var4;
    __dst[3] = v11;
    [(SCNMTLLibraryManager *)libraryManager libraryForProgramDesc:__dst completionHandler:v13];
  }

  return v7;
}

void __69__SCNMTLResourceManager_Compilation__newRenderPipelineStateWithDesc___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 48);
  v4 = *(a1 + 48);
  v5 = *(a1 + 104);
  v6 = *(a1 + 136);
  v46 = *(a1 + 120);
  v47 = v6;
  v48 = *(a1 + 152);
  v7 = *(a1 + 72);
  v42 = *(a1 + 56);
  v43 = v7;
  v44 = *(a1 + 88);
  v45 = v5;
  v8 = *(a1 + 192);
  v36 = *(a1 + 176);
  v37 = v8;
  v9 = *(a1 + 208);
  v10 = *(a1 + 224);
  v11 = *(a1 + 240);
  v12 = *(a1 + 264);
  v41 = *(a1 + 256);
  v39 = v10;
  v40 = v11;
  v38 = v9;
  v13 = *(a1 + 272);
  v14 = *(a1 + 288);
  v15 = *(a1 + 304);
  v16 = *(a1 + 320);
  Constants = *(a1 + 344);
  v35 = *(a1 + 336);
  v33 = v15;
  v34 = v16;
  v31 = v13;
  v32 = v14;
  v19 = *(a1 + 352);
  FunctionName = *(a1 + 360);
  v20 = *(a1 + 368);
  v21 = *(a1 + 392);
  v29 = *(a1 + 376);
  v30 = v21;
  v22 = *(*(a1 + 32) + 32);
  if (a2)
  {
    v23 = a2;
    if ([v22 commonProfileCacheLibrary] == a2 && v4)
    {
      FunctionName = C3DFXMetalProgramGetFunctionName(v4, 0);
      v20 = C3DFXMetalProgramGetFunctionName(v4, 1);
    }
  }

  else
  {
    v23 = [v22 frameworkLibrary];
    v4 = [*(a1 + 32) defaultProgramUsingTessellation:*(a1 + 392) != 0];
    FunctionName = C3DFXMetalProgramGetFunctionName(v4, 0);
    v20 = C3DFXMetalProgramGetFunctionName(v4, 1);
    Constants = C3DFXMetalProgramGetConstants(v4);
    v12 = 0;
  }

  *__dst = v4;
  *&__dst[56] = v45;
  *&__dst[72] = v46;
  *&__dst[88] = v47;
  *&__dst[104] = v48;
  *&__dst[8] = v42;
  *&__dst[24] = v43;
  *&__dst[40] = v44;
  *&__dst[120] = v23;
  *&__dst[144] = v37;
  *&__dst[128] = v36;
  *&__dst[192] = v40;
  *&__dst[176] = v39;
  *&__dst[160] = v38;
  *&__dst[208] = v41;
  *&__dst[216] = v12;
  *&__dst[272] = v34;
  *&__dst[256] = v33;
  *&__dst[224] = v31;
  *&__dst[240] = v32;
  *&__dst[288] = v35;
  *&__dst[296] = Constants;
  *&__dst[304] = v19;
  *&__dst[312] = FunctionName;
  *&__dst[320] = v20;
  *&__dst[328] = v29;
  *&__dst[344] = v30;
  v24 = _pipelineDescriptorForPipelineDesc(__dst);
  if (v24)
  {
    v25 = v24;
    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    *__dst = v4;
    *&__dst[56] = v45;
    *&__dst[72] = v46;
    *&__dst[88] = v47;
    *&__dst[104] = v48;
    *&__dst[8] = v42;
    *&__dst[24] = v43;
    *&__dst[40] = v44;
    *&__dst[120] = v23;
    *&__dst[144] = v37;
    *&__dst[128] = v36;
    *&__dst[192] = v40;
    *&__dst[176] = v39;
    *&__dst[160] = v38;
    *&__dst[208] = v41;
    *&__dst[216] = v12;
    *&__dst[272] = v34;
    *&__dst[256] = v33;
    *&__dst[224] = v31;
    *&__dst[240] = v32;
    *&__dst[288] = v35;
    *&__dst[296] = Constants;
    *&__dst[304] = v19;
    *&__dst[312] = FunctionName;
    *&__dst[320] = v20;
    *&__dst[328] = v29;
    *&__dst[344] = v30;
    [v26 _createPipelineStateWithDescriptor:v25 desc:__dst pipeline:v27];
  }

  memcpy(__dst, v3, sizeof(__dst));
  SCNMTLRenderPipelineDescRelease(__dst);
}

- (id)_newComputeDescriptorForPipelineDesc:(id *)a3 library:(id)a4
{
  v6 = objc_alloc_init(MEMORY[0x277CD6D30]);
  var1 = a3->var1;
  if (!var1)
  {
    v9 = [a4 newFunctionWithName:a3->var0];
    if (v9)
    {
      goto LABEL_5;
    }

    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Compilation) _newComputeDescriptorForPipelineDesc:library:];
    }

LABEL_12:

    return 0;
  }

  v14 = 0;
  v8 = [a4 newFunctionWithName:a3->var0 constantValues:var1 error:&v14];
  if (!v8)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Compilation) _newComputeDescriptorForPipelineDesc:library:];
    }

    goto LABEL_12;
  }

  v9 = v8;
LABEL_5:
  [v6 setComputeFunction:v9];

  var3 = a3->var3;
  if (var3)
  {
    var3[2](var3, v9, a3->var2);
  }

  [v6 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:a3->var4];
  [v6 setStageInputDescriptor:a3->var2];
  return v6;
}

- (void)_configureComputePipeline:(id)a3 withDescriptor:(id)a4
{
  v10 = 0;
  ++self->__engineStats->computePipelineCount;
  v7 = CACurrentMediaTime();
  v8 = [(MTLDevice *)self->_device newComputePipelineStateWithDescriptor:a4 options:0 reflection:0 error:&v10];
  self->__engineStats->computePipelineCompilationTime = CACurrentMediaTime() - v7 + self->__engineStats->computePipelineCompilationTime;
  if (v8)
  {
    -[SCNMTLComputePipeline setComputeFunction:](a3, [a4 computeFunction]);
    [(SCNMTLComputePipeline *)a3 setState:v8];
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLResourceManager(Compilation) _configureComputePipeline:withDescriptor:];
    }
  }
}

- (id)newComputePipelineStateForDesc:(id *)a3 library:(id)a4
{
  v5 = *&a3->var2;
  v10[0] = *&a3->var0;
  v10[1] = v5;
  v11 = *&a3->var4;
  v6 = [(SCNMTLResourceManager *)self _newComputeDescriptorForPipelineDesc:v10 library:a4];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = objc_alloc_init(SCNMTLComputePipeline);
  [(SCNMTLResourceManager *)self _configureComputePipeline:v8 withDescriptor:v7];

  return v8;
}

- (id)_computePipelineStateForKernel:(id)a3 constants:(id)a4 constantsHash:(id)a5 threadGroupSizeIsMultipleOfThreadExecutionWidth:(BOOL)a6
{
  p_availableComputePipelines = &self->_availableComputePipelines;
  os_unfair_lock_lock(&self->_availableComputePipelines.lock);
  if (p_availableComputePipelines->registry)
  {
    if (!a4)
    {
LABEL_8:
      v20 = a3;
      if (a5)
      {
        v20 = [a3 stringByAppendingString:a5];
      }

      goto LABEL_10;
    }
  }

  else
  {
    SCNResourceRegistrySetup(p_availableComputePipelines, 1);
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if (a5)
  {
    goto LABEL_8;
  }

  v12 = scn_default_log();
  v20 = a3;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [(SCNMTLResourceManager(Compilation) *)v12 _computePipelineStateForKernel:v13 constants:v14 constantsHash:v15 threadGroupSizeIsMultipleOfThreadExecutionWidth:v16, v17, v18, v19];
    v20 = a3;
  }

LABEL_10:
  v21 = [(NSMapTable *)p_availableComputePipelines->registry objectForKey:v20];
  if (!v21)
  {
    v22 = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];
    v24[0] = a3;
    v24[1] = a4;
    v24[2] = 0;
    v24[3] = 0;
    v25 = a6;
    memset(v26, 0, sizeof(v26));
    v21 = [(SCNMTLResourceManager *)self newComputePipelineStateForDesc:v24 library:v22];
    if (v21)
    {
      [(NSMapTable *)p_availableComputePipelines->registry setObject:v21 forKey:v20];
    }
  }

  os_unfair_lock_unlock(&p_availableComputePipelines->lock);
  return v21;
}

- (id)computePipelineStateForKernel:(id)a3 withStageDescriptor:(id)a4 stageDescriptorUpdateBlock:(id)a5 constants:(id)a6 constantsHash:(id)a7
{
  p_availableComputePipelinesWithStageDescriptor = &self->_availableComputePipelinesWithStageDescriptor;
  os_unfair_lock_lock(&self->_availableComputePipelinesWithStageDescriptor.lock);
  if (p_availableComputePipelinesWithStageDescriptor->registry)
  {
    if (!a6)
    {
LABEL_8:
      v22 = a3;
      if (a7)
      {
        v22 = [a3 stringByAppendingString:a7];
      }

      goto LABEL_10;
    }
  }

  else
  {
    SCNResourceRegistrySetup(p_availableComputePipelinesWithStageDescriptor, 1);
    if (!a6)
    {
      goto LABEL_8;
    }
  }

  if (a7)
  {
    goto LABEL_8;
  }

  v14 = scn_default_log();
  v22 = a3;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    [(SCNMTLResourceManager(Compilation) *)v14 _computePipelineStateForKernel:v15 constants:v16 constantsHash:v17 threadGroupSizeIsMultipleOfThreadExecutionWidth:v18, v19, v20, v21];
    v22 = a3;
  }

LABEL_10:
  v23 = [(NSMapTable *)p_availableComputePipelinesWithStageDescriptor->registry objectForKey:v22];
  if (v23)
  {
    if (a4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:10];
    [(NSMapTable *)p_availableComputePipelinesWithStageDescriptor->registry setObject:v23 forKey:v22];
    if (a4)
    {
      goto LABEL_15;
    }
  }

  v24 = scn_default_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    [(SCNMTLResourceManager(Compilation) *)v24 computePipelineStateForKernel:v25 withStageDescriptor:v26 stageDescriptorUpdateBlock:v27 constants:v28 constantsHash:v29, v30, v31];
    if (!a5)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!a5)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (![v23 count])
  {
    v40 = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];
    v42 = a3;
    v43 = a6;
    v44 = a4;
    v45 = a5;
    v46 = 0;
    v35 = [(SCNMTLResourceManager *)self newComputePipelineStateForDesc:&v42 library:v40];
    if (!v35)
    {
      goto LABEL_25;
    }

    v39 = [(SCNMTLResourceManager *)self getUniqueStageDescriptor:a4];
    v37 = v23;
    v38 = v35;
    goto LABEL_24;
  }

  v32 = -[SCNMTLResourceManager commandQueue]([objc_msgSend(v23 "allValues")]);
  (*(a5 + 2))(a5, v32, a4);
LABEL_18:
  v33 = [(SCNMTLResourceManager *)self getUniqueStageDescriptor:a4];
  v34 = [v23 objectForKey:v33];
  if (!v34)
  {
    v36 = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];
    v42 = a3;
    v43 = a6;
    v45 = 0;
    v46 = 0;
    v44 = a4;
    v35 = [(SCNMTLResourceManager *)self newComputePipelineStateForDesc:&v42 library:v36];
    if (!v35)
    {
      goto LABEL_25;
    }

    v37 = v23;
    v38 = v35;
    v39 = v33;
LABEL_24:
    [v37 setObject:v38 forKey:v39];

    goto LABEL_25;
  }

  v35 = v34;
LABEL_25:
  os_unfair_lock_unlock(&p_availableComputePipelinesWithStageDescriptor->lock);
  return v35;
}

- (id)getUniqueStageDescriptor:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_stageDescriptorsLock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  availableStageDescriptors = self->_availableStageDescriptors;
  v6 = [(NSMutableArray *)availableStageDescriptors countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(availableStageDescriptors);
        }

        v10 = 0;
        v11 = *(*(&v22 + 1) + 8 * i);
        while (1)
        {
          v12 = [objc_msgSend(objc_msgSend(v11 "attributes")];
          if (v12 != [objc_msgSend(objc_msgSend(a3 "attributes")])
          {
            break;
          }

          v13 = [objc_msgSend(objc_msgSend(v11 "attributes")];
          if (v13 != [objc_msgSend(objc_msgSend(a3 "attributes")])
          {
            break;
          }

          v14 = [objc_msgSend(objc_msgSend(v11 "attributes")];
          if (v14 != [objc_msgSend(objc_msgSend(a3 "attributes")])
          {
            break;
          }

          if (++v10 == 31)
          {
            v15 = 0;
            while (1)
            {
              v16 = [objc_msgSend(objc_msgSend(v11 "layouts")];
              if (v16 != [objc_msgSend(objc_msgSend(a3 "layouts")])
              {
                goto LABEL_18;
              }

              v17 = [objc_msgSend(objc_msgSend(v11 "layouts")];
              if (v17 != [objc_msgSend(objc_msgSend(a3 "layouts")])
              {
                goto LABEL_18;
              }

              v18 = [objc_msgSend(objc_msgSend(v11 "layouts")];
              if (v18 != [objc_msgSend(objc_msgSend(a3 "layouts")])
              {
                goto LABEL_18;
              }

              if (++v15 == 31)
              {
                v19 = [v11 indexType];
                if (v19 != [a3 indexType])
                {
                  goto LABEL_18;
                }

                v20 = [v11 indexBufferIndex];
                if (v20 != [a3 indexBufferIndex])
                {
                  goto LABEL_18;
                }

                if (v11)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }
            }
          }
        }

LABEL_18:
        ;
      }

      v7 = [(NSMutableArray *)availableStageDescriptors countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

LABEL_22:
  v11 = [a3 copy];
  [(NSMutableArray *)self->_availableStageDescriptors addObject:v11];

LABEL_23:
  os_unfair_lock_unlock(&self->_stageDescriptorsLock);
  return v11;
}

- (id)newComputePipelineStateWithFunctionName:(id)a3
{
  v5 = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];

  return [(SCNMTLResourceManager *)self newComputePipelineStateWithFunctionName:a3 library:v5 constantValues:0];
}

- (id)newComputePipelineStateWithFunctionName:(id)a3 constantValues:(id)a4
{
  v7 = [(SCNMTLLibraryManager *)self->_libraryManager frameworkLibrary];

  return [(SCNMTLResourceManager *)self newComputePipelineStateWithFunctionName:a3 library:v7 constantValues:a4];
}

- (id)newComputePipelineStateWithFunctionName:(id)a3 library:(id)a4 constantValues:(id)a5
{
  v6[0] = a3;
  v6[1] = a5;
  v6[2] = 0;
  v7[0] = 0;
  *(v7 + 7) = 0;
  return [(SCNMTLResourceManager *)self newComputePipelineStateForDesc:v6 library:a4];
}

- (id)colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:(unsigned int)a3 pixelBufferYCbCrMatrix:(id)a4 pixelBufferColorPrimaries:(id)a5 pixelBufferTransferFunction:(id)a6 sourceColorSpace:(CGColorSpace *)a7 destinationColorSpace:(CGColorSpace *)a8 renderContext:(id)a9
{
  p_availableColorMatchingComputePipelines = &self->_availableColorMatchingComputePipelines;
  os_unfair_lock_lock(&self->_availableColorMatchingComputePipelines.lock);
  registry = p_availableColorMatchingComputePipelines->registry;
  if (!p_availableColorMatchingComputePipelines->registry)
  {
    SCNResourceRegistrySetup(p_availableColorMatchingComputePipelines, 1);
    registry = p_availableColorMatchingComputePipelines->registry;
  }

  v18 = [(NSMapTable *)registry objectForKey:a8];
  if (!v18)
  {
    v18 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    [(NSMapTable *)p_availableColorMatchingComputePipelines->registry setObject:v18 forKey:a8];
  }

  v19 = [v18 objectForKey:a7];
  if (!v19)
  {
    v19 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
    [v18 setObject:v19 forKey:a7];
  }

  v20 = [v19 objectForKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", a3 != -1)}];
  if (!v20)
  {
    if (a3 == -1)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      C3DGetColorMatchingComputeKernelParameters(a7, a8, &v36);
      v22 = objc_alloc_init(MEMORY[0x277CD6D70]);
      [v22 setConstantValue:&v36 type:53 withName:@"needsInputTRC"];
      [v22 setConstantValue:&v36 + 1 type:53 withName:@"needsColorMatrix"];
      [v22 setConstantValue:&v36 + 2 type:53 withName:@"needsOutputTRC"];
      [v22 setConstantValue:&v36 + 4 type:29 withName:@"inputTRC_type"];
      [v22 setConstantValue:&v36 + 8 type:3 withName:@"inputTRC_gamma"];
      [v22 setConstantValue:&v36 | 0xC type:3 withName:@"inputTRC_a"];
      [v22 setConstantValue:&v37 type:3 withName:@"inputTRC_b"];
      [v22 setConstantValue:&v37 + 4 type:3 withName:@"inputTRC_c"];
      [v22 setConstantValue:&v37 + 8 type:3 withName:@"inputTRC_d"];
      [v22 setConstantValue:&v37 + 12 type:3 withName:@"inputTRC_e"];
      [v22 setConstantValue:&v38 type:3 withName:@"inputTRC_f"];
      [v22 setConstantValue:&v39 type:5 withName:@"colorMatrixColumn0"];
      [v22 setConstantValue:&v40 type:5 withName:@"colorMatrixColumn1"];
      [v22 setConstantValue:&v41 type:5 withName:@"colorMatrixColumn2"];
      [v22 setConstantValue:&v42 type:29 withName:@"outputTRC_type"];
      [v22 setConstantValue:&v42 + 4 type:3 withName:@"outputTRC_gamma"];
      [v22 setConstantValue:&v42 + 8 type:3 withName:@"outputTRC_a"];
      [v22 setConstantValue:&v42 + 12 type:3 withName:@"outputTRC_b"];
      [v22 setConstantValue:&v43 type:3 withName:@"outputTRC_c"];
      [v22 setConstantValue:&v43 + 4 type:3 withName:@"outputTRC_d"];
      [v22 setConstantValue:&v43 + 8 type:3 withName:@"outputTRC_e"];
      [v22 setConstantValue:&v43 + 12 type:3 withName:@"outputTRC_f"];
      v23 = @"color_matching_kernel";
LABEL_48:
      v20 = [(SCNMTLResourceManager *)self newComputePipelineStateWithFunctionName:v23 constantValues:v22];

      [v19 setObject:v20 forKey:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", a3 != -1)}];
      goto LABEL_49;
    }

    if (a3 <= 875704949)
    {
      switch(a3)
      {
        case 0x34323066u:
          v24 = 1;
          v21 = 1;
          goto LABEL_28;
        case 0x34323076u:
          v21 = 0;
          v24 = 1;
          goto LABEL_28;
        case 0x34323266u:
          v21 = 1;
LABEL_21:
          v24 = 2;
          goto LABEL_28;
      }

      goto LABEL_22;
    }

    switch(a3)
    {
      case 0x34323276u:
        v21 = 0;
        goto LABEL_21;
      case 0x34343466u:
        v21 = 1;
        break;
      case 0x34343476u:
        v21 = 0;
        break;
      default:
LABEL_22:
        LOBYTE(v36) = HIBYTE(a3);
        BYTE1(v36) = BYTE2(a3);
        BYTE2(v36) = BYTE1(a3);
        *(&v36 + 3) = a3;
        v25 = scn_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [SCNMTLResourceManager(Compilation) colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:pixelBufferYCbCrMatrix:pixelBufferColorPrimaries:pixelBufferTransferFunction:sourceColorSpace:destinationColorSpace:renderContext:];
        }

        v24 = 0;
        v21 = 0;
LABEL_28:
        if ([a4 isEqualToString:*MEMORY[0x277CC4D28]])
        {
          v26 = v21 == 0;
          v27 = 3;
        }

        else if ([a4 isEqualToString:*MEMORY[0x277CC4D20]])
        {
          v26 = v21 == 0;
          v27 = 1;
        }

        else
        {
          if (![a4 isEqualToString:*MEMORY[0x277CC4D18]])
          {
            v33 = scn_default_log();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              [SCNMTLResourceManager(Compilation) colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:pixelBufferYCbCrMatrix:pixelBufferColorPrimaries:pixelBufferTransferFunction:sourceColorSpace:destinationColorSpace:renderContext:];
            }

            v28 = 0;
LABEL_37:
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            if ([a5 isEqualToString:*MEMORY[0x277CC4C20]] && (objc_msgSend(a6, "isEqualToString:", *MEMORY[0x277CC4CD8]) & 1) != 0)
            {
              v29 = MEMORY[0x277CBF488];
            }

            else
            {
              if (![a5 isEqualToString:*MEMORY[0x277CC4C30]] || !objc_msgSend(a6, "isEqualToString:", *MEMORY[0x277CC4CD8]))
              {
                goto LABEL_45;
              }

              v29 = MEMORY[0x277CBF3D8];
            }

            if (*v29)
            {
              v30 = CGColorSpaceCreateWithName(*v29);
              C3DGetColorMatchingComputeKernelParameters(v30, a8, &v36);
              CFRelease(v30);
LABEL_47:
              v22 = objc_alloc_init(MEMORY[0x277CD6D70]);
              [v22 setConstantValue:&v36 type:53 withName:@"needsInputTRC"];
              [v22 setConstantValue:&v36 + 1 type:53 withName:@"needsColorMatrix"];
              [v22 setConstantValue:&v36 + 2 type:53 withName:@"needsOutputTRC"];
              [v22 setConstantValue:&v36 + 4 type:29 withName:@"inputTRC_type"];
              [v22 setConstantValue:&v36 + 8 type:3 withName:@"inputTRC_gamma"];
              [v22 setConstantValue:&v36 | 0xC type:3 withName:@"inputTRC_a"];
              [v22 setConstantValue:&v37 type:3 withName:@"inputTRC_b"];
              [v22 setConstantValue:&v37 + 4 type:3 withName:@"inputTRC_c"];
              [v22 setConstantValue:&v37 + 8 type:3 withName:@"inputTRC_d"];
              [v22 setConstantValue:&v37 + 12 type:3 withName:@"inputTRC_e"];
              [v22 setConstantValue:&v38 type:3 withName:@"inputTRC_f"];
              [v22 setConstantValue:&v39 type:5 withName:@"colorMatrixColumn0"];
              [v22 setConstantValue:&v40 type:5 withName:@"colorMatrixColumn1"];
              [v22 setConstantValue:&v41 type:5 withName:@"colorMatrixColumn2"];
              [v22 setConstantValue:&v42 type:29 withName:@"outputTRC_type"];
              [v22 setConstantValue:&v42 + 4 type:3 withName:@"outputTRC_gamma"];
              [v22 setConstantValue:&v42 + 8 type:3 withName:@"outputTRC_a"];
              [v22 setConstantValue:&v42 + 12 type:3 withName:@"outputTRC_b"];
              [v22 setConstantValue:&v43 type:3 withName:@"outputTRC_c"];
              [v22 setConstantValue:&v43 + 4 type:3 withName:@"outputTRC_d"];
              [v22 setConstantValue:&v43 + 8 type:3 withName:@"outputTRC_e"];
              [v22 setConstantValue:&v43 + 12 type:3 withName:@"outputTRC_f"];
              v34 = v28;
              v35 = v24;
              [v22 setConstantValue:&v35 type:29 withName:@"biPlanarTextureChromaSubsampling"];
              [v22 setConstantValue:&v34 type:29 withName:@"biPlanarTextureYCbCrMatrix"];
              v23 = @"color_matching_kernel_biplanar";
              goto LABEL_48;
            }

LABEL_45:
            v31 = scn_default_log();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [SCNMTLResourceManager(Compilation) colorMatchingComputePipelineStateForBiPlanarPixelBufferWithFormatType:a5 pixelBufferYCbCrMatrix:a6 pixelBufferColorPrimaries:v31 pixelBufferTransferFunction:? sourceColorSpace:? destinationColorSpace:? renderContext:?];
            }

            goto LABEL_47;
          }

          v26 = v21 == 0;
          v27 = 5;
        }

        if (v26)
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 + 1;
        }

        goto LABEL_37;
    }

    v24 = 3;
    goto LABEL_28;
  }

LABEL_49:
  os_unfair_lock_unlock(&p_availableColorMatchingComputePipelines->lock);
  return v20;
}

- (void)removeAllShaders
{
  if (a1)
  {
    [*(a1 + 32) clearCompiledLibraries];
    v2 = *(a1 + 48);

    CFDictionaryRemoveAllValues(v2);
  }
}

- (void)resetRasterizerStates
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 256));

    *(a1 + 248) = 0;

    os_unfair_lock_unlock((a1 + 256));
  }
}

- (void)renderResourceForRasterizerState:(uint64_t)a3 reverseZ:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  os_unfair_lock_lock(v6 + 64);
  v7 = *(v3 + 248);
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CCAB00]);
    v7 = OUTLINED_FUNCTION_2_6(v8, v9);
    *(v3 + 248) = v7;
  }

  v10 = [v7 objectForKey:v4];
  if (!v10)
  {
    v16 = 0;
    v17 = 0;
    v19 = 0;
    v18 = 0;
    C3DRasterizerStatesGetDesc(v4, &v16);
    v11 = objc_alloc_init(MEMORY[0x277CD6D60]);
    if (v17 == 1)
    {
      if (a3)
      {
        v12 = C3DComparisonFuncToMTLCompareFunctionReverse(BYTE2(v17));
      }

      else
      {
        v12 = C3DComparisonFuncToMTLCompareFunction(BYTE2(v17));
      }

      v13 = v12;
    }

    else
    {
      v13 = 7;
    }

    [v11 setDepthCompareFunction:v13];
    [v11 setDepthWriteEnabled:BYTE1(v17)];
    if (BYTE3(v17) == 1)
    {
      C3DComparisonFuncToMTLCompareFunction(BYTE5(v17));
      [objc_msgSend(OUTLINED_FUNCTION_3() "frontFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE3(v18));
      [objc_msgSend(OUTLINED_FUNCTION_3() "frontFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE2(v18));
      [objc_msgSend(OUTLINED_FUNCTION_3() "frontFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE1(v18));
      [objc_msgSend(OUTLINED_FUNCTION_3() "frontFaceStencil")];
      [objc_msgSend(v11 "frontFaceStencil")];
      v14 = HIBYTE(v17);
      [objc_msgSend(v11 "frontFaceStencil")];
      C3DComparisonFuncToMTLCompareFunction(BYTE4(v18));
      [objc_msgSend(OUTLINED_FUNCTION_3() "backFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE2(v19));
      [objc_msgSend(OUTLINED_FUNCTION_3() "backFaceStencil")];
      C3DStencilOpToMTLStencilOperation(BYTE1(v19));
      [objc_msgSend(OUTLINED_FUNCTION_3() "backFaceStencil")];
      C3DStencilOpToMTLStencilOperation(v19);
      [objc_msgSend(OUTLINED_FUNCTION_3() "backFaceStencil")];
      [objc_msgSend(v11 "backFaceStencil")];
      [objc_msgSend(v11 "backFaceStencil")];
    }

    v10 = [*(v3 + 8) newDepthStencilStateWithDescriptor:v11];

    [*(v3 + 248) setObject:v10 forKey:v4];
  }

  os_unfair_lock_unlock((v3 + 256));
  return v10;
}

- (void)renderResourceForMeshSource:(uint64_t)a1
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  if (C3DMeshSourceIsVolatile(v3))
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v17 = 136315138;
      v18 = "C3DMeshSourceIsVolatile(meshSource) != true";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v4, v5, "Assertion '%s' failed. cannot use volatile meshSource", &v17);
    }
  }

  MTLBuffer = C3DMeshSourceGetMTLBuffer(v2);
  if (!MTLBuffer)
  {
    Data = C3DMeshSourceGetData(v2);
    if (Data)
    {
      v8 = Data;
      Length = CFDataGetLength(Data);
      if (Length)
      {
        v10 = Length;
        BytePtr = CFDataGetBytePtr(v8);
        os_unfair_lock_lock((v1 + 224));
        v12 = *(v1 + 216);
        if (!v12)
        {
          v13 = objc_alloc(MEMORY[0x277CCAB00]);
          v12 = OUTLINED_FUNCTION_2_6(v13, v14);
          *(v1 + 216) = v12;
        }

        MTLBuffer = [v12 objectForKey:v8];
        if (!MTLBuffer)
        {
          MTLBuffer = [*(v1 + 8) newBufferWithBytes:BytePtr length:v10 options:0];
          v15 = *(v1 + 24);
          ++*(v15 + 228);
          *(v15 + 256) += v10;
          [*(v1 + 216) setObject:MTLBuffer forKey:v8];
        }

        os_unfair_lock_unlock((v1 + 224));
        return MTLBuffer;
      }
    }

    return 0;
  }

  return MTLBuffer;
}

- (SCNMTLMeshElement)renderResourceForMeshElement:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  SharedMeshElement = C3DMeshElementGetSharedMeshElement(v3);
  if (SharedMeshElement == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(SCNMTLResourceManager *)v1 renderResourceForMeshElement:?];
  }

  os_unfair_lock_lock((v1 + 240));
  v6 = *(v1 + 232);
  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277CCAB00]);
    v6 = OUTLINED_FUNCTION_2_6(v7, v8);
    *(v1 + 232) = v6;
  }

  v9 = [v6 objectForKey:SharedMeshElement];
  if (!v9)
  {
    v10 = objc_alloc_init(SCNMTLMeshElement);
    [(SCNMTLMeshElement *)v10 setupWithElement:v2];
    if (SharedMeshElement == v2)
    {
      if (C3DMeshElementGetMTLBuffer(v2))
      {
        v12 = [v1 _bufferForMTLBuffer:C3DMeshElementGetMTLBuffer(v2)];
      }

      else
      {
        v18 = 0;
        Indexes = C3DMeshElementGetIndexes(v2, &v18);
        if (!Indexes)
        {
LABEL_20:
          [*(v1 + 232) setObject:v10 forKey:v2];

          goto LABEL_21;
        }

        v12 = [v1 _bufferForData:Indexes bytesPerIndex:v18];
      }
    }

    else
    {
      v12 = [(SCNMTLMeshElement *)v5 indexBuffer];
    }

    [(SCNMTLMeshElement *)v10 setIndexBuffer:v12];
    goto LABEL_20;
  }

  v10 = v9;
  if (SharedMeshElement != v2)
  {
    v11 = [(SCNMTLMeshElement *)v5 indexBuffer];
    [(SCNMTLMeshElement *)v10 setIndexBuffer:v11];
LABEL_12:
    IndexCount = C3DMeshElementGetIndexCount(v2);
    [(SCNMTLMeshElement *)v10 setIndexCount:?];
    SharedIndexBufferOffset = C3DMeshElementGetSharedIndexBufferOffset(v2);
    [(SCNMTLMeshElement *)v10 setSharedIndexBufferOffset:?];
    goto LABEL_13;
  }

  if (C3DMeshElementIsVolatile(v2))
  {
    goto LABEL_12;
  }

LABEL_13:
  InstanceCount = C3DMeshElementGetInstanceCount(v2);
  [(SCNMTLMeshElement *)v10 setInstanceCount:?];
LABEL_21:
  os_unfair_lock_unlock((v1 + 240));
  return v10;
}

- (SCNMTLTessellator)renderResourceForTessellatedGeometry:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  os_unfair_lock_lock(v3 + 92);
  v4 = *(v1 + 360);
  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x277CCAB00]);
    v4 = OUTLINED_FUNCTION_2_6(v5, v6);
    *(v1 + 360) = v4;
  }

  v7 = [v4 objectForKey:v2];
  if (!v7)
  {
    v7 = [[SCNMTLTessellator alloc] initWithGeometry:v2 resourceManager:v1];
    [*(v1 + 360) setObject:v7 forKey:v2];
  }

  os_unfair_lock_unlock((v1 + 368));
  return v7;
}

- (SCNMetalWireframeResource)wireframeResourceForRendererElement:(uint64_t)a3 engineContext:(unsigned __int8 *)a4 passInstance:(uint64_t)a5 hashPass:
{
  if (!a1)
  {
    return 0;
  }

  RenderContext = C3DEngineContextGetRenderContext(a3);
  ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(a3);
  ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(ProgramHashCodeStore, a2, 0, a5);
  if (!ProgramHashCodeForRenderElement)
  {
    return 0;
  }

  v13 = ProgramHashCodeForRenderElement;
  os_unfair_lock_lock((a1 + 384));
  v14 = *(a1 + 376);
  if (!v14)
  {
    v15 = objc_alloc(MEMORY[0x277CCAB00]);
    v14 = OUTLINED_FUNCTION_2_6(v15, v16);
    *(a1 + 376) = v14;
  }

  v17 = [v14 objectForKey:v13];
  if (!v17)
  {
    Node = C3DRendererElementGetNode(a2);
    Geometry = C3DRendererElementGetGeometry(a2);
    Mesh = C3DRendererElementGetMesh(a2);
    MeshElement = C3DRendererElementGetMeshElement(a2);
    Material = C3DRendererElementGetMaterial(a2);
    v19 = C3DMaterialCopyForFlatShading(Material);
    CommonProfileConditioners = C3DEngineContextGetCommonProfileConditioners(a3);
    v21 = a4[24];
    v22 = (8 * (a4[27] & 3)) & 0x9F | (a2[36] >> 11) & 7 | (32 * (a4[28] & 3));
    if ([(SCNMTLRenderContext *)RenderContext reverseZ])
    {
      v23 = 0x80;
    }

    else
    {
      v23 = 0;
    }

    v24 = C3DProgramHashCodeCreate(Node, Geometry, Mesh, MeshElement, 0, v19, (v21 << 16) & 0xFFFFFFFF00FFFFFFLL | ((v22 | v23) << 24) | CommonProfileConditioners);
    v25 = C3DEngineContextEvaluateProgramWithHashCode(a3, v24, Material, 0);
    v17 = objc_alloc_init(SCNMetalWireframeResource);
    v26 = v17->material;
    if (v26 != v19)
    {
      if (v26)
      {
        CFRelease(v26);
        v17->material = 0;
      }

      if (v19)
      {
        v27 = CFRetain(v19);
      }

      else
      {
        v27 = 0;
      }

      v17->material = v27;
    }

    program = v17->program;
    if (program != v25)
    {
      if (program)
      {
        CFRelease(program);
        v17->program = 0;
      }

      if (v25)
      {
        v29 = CFRetain(v25);
      }

      else
      {
        v29 = 0;
      }

      v17->program = v29;
    }

    programHashCode = v17->programHashCode;
    if (programHashCode != v24)
    {
      C3DProgramHashCodeRelease(programHashCode);
      if (v24)
      {
        v31 = CFRetain(v24);
      }

      else
      {
        v31 = 0;
      }

      v17->programHashCode = v31;
    }

    [*(a1 + 376) setObject:v17 forKey:{v13, MeshElement}];

    CFRelease(v19);
    C3DProgramHashCodeRelease(v24);
  }

  os_unfair_lock_unlock((a1 + 384));
  return v17;
}

- (uint64_t)newConstantBufferWithLength:(uint64_t)result options:(int)a2
{
  if (result)
  {
    result = [OUTLINED_FUNCTION_1_5(result) newBufferWithLength:? options:?];
    v4 = *(v2 + 24);
    ++*(v4 + 240);
    *(v4 + 264) += a2;
  }

  return result;
}

- (void)newBufferWithBytes:(uint64_t)a1 length:options:
{
  if (a1)
  {
    [OUTLINED_FUNCTION_1_5(a1) newBufferWithBytes:? length:? options:?];
    OUTLINED_FUNCTION_0_7(*(v1 + 24));
  }
}

- (uint64_t)newPrivateBufferWithBytes:(uint64_t)a3 length:(void *)a4 blitEncoder:
{
  if (!a1)
  {
    return 0;
  }

  v8 = [*(a1 + 8) newBufferWithLength:a3 options:32];
  v9 = [*(a1 + 8) newBufferWithBytes:a2 length:a3 options:0];
  [a4 copyFromBuffer:v9 sourceOffset:0 toBuffer:v8 destinationOffset:0 size:a3];

  OUTLINED_FUNCTION_0_7(*(a1 + 24));
  return v8;
}

- (void)newBufferWithLength:(uint64_t)a1 options:
{
  if (a1)
  {
    [OUTLINED_FUNCTION_1_5(a1) newBufferWithLength:? options:?];
    OUTLINED_FUNCTION_0_7(*(v1 + 24));
  }
}

- (void)renderResourceForSampler:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  if (!v3)
  {
    Default = C3DTextureSamplerGetDefault();
  }

  os_unfair_lock_lock((v1 + 160));
  if (!*(v1 + 152))
  {
    v4 = objc_alloc(MEMORY[0x277CCAB00]);
    *(v1 + 152) = OUTLINED_FUNCTION_2_6(v4, v5);
  }

  C3DMeshSourceGetMTLVertexFormat(Default);
  v6 = [OUTLINED_FUNCTION_4() objectForKey:?];
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD6FD0]);
    MinFilter = C3DTextureSamplerGetMinFilter(Default);
    C3DFilterModeToMTLFilter(MinFilter);
    [OUTLINED_FUNCTION_4() setMinFilter:?];
    MagFilter = C3DTextureSamplerGetMagFilter(Default);
    C3DFilterModeToMTLFilter(MagFilter);
    [OUTLINED_FUNCTION_4() setMagFilter:?];
    MipFilter = C3DTextureSamplerGetMipFilter(Default);
    C3DFilterModeToMTLMipFilter(MipFilter);
    [OUTLINED_FUNCTION_4() setMipFilter:?];
    WrapModeS = C3DTextureSamplerGetWrapModeS(Default);
    C3DWrapModeToMTLAddressMode(WrapModeS);
    [OUTLINED_FUNCTION_4() setSAddressMode:?];
    WrapModeT = C3DTextureSamplerGetWrapModeT(Default);
    C3DWrapModeToMTLAddressMode(WrapModeT);
    [OUTLINED_FUNCTION_4() setTAddressMode:?];
    WrapModeP = C3DTextureSamplerGetWrapModeP(Default);
    C3DWrapModeToMTLAddressMode(WrapModeP);
    [OUTLINED_FUNCTION_4() setRAddressMode:?];
    Anisotropy = C3DTextureSamplerGetAnisotropy(Default);
    if (Anisotropy < 1.0)
    {
      Anisotropy = 1.0;
    }

    [v7 setMaxAnisotropy:{fminf(Anisotropy, 16.0)}];
    v6 = [*(v1 + 8) newSamplerStateWithDescriptor:v7];

    [*(v1 + 152) setObject:v6 forKey:C3DMeshSourceGetMTLVertexFormat(Default)];
  }

  os_unfair_lock_unlock((v1 + 160));
  return v6;
}

- (uint64_t)dispatchForTexture:(uint64_t)a3 computeEncoder:(void *)a4 pipelineState:
{
  if (result)
  {
    v6 = OUTLINED_FUNCTION_10_1(result, a2, a3, a4);
    v7 = [v4 width];
    if (v6 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = [v4 height];
    if (v6 >= v9)
    {
      v6 = v9;
    }

    v10 = [v5 maxTotalThreadsPerThreadgroup];
    do
    {
      v11 = v6;
      v12 = v6 * v8;
      v6 >>= 1;
    }

    while (v12 > v10);
    v13 = (v8 + [v4 width] - 1) / v8;
    [v4 height];
    return OUTLINED_FUNCTION_9_1(1, v8, v11, v14, v13);
  }

  return result;
}

- (uint64_t)dispatchForCubemap:(uint64_t)a3 computeEncoder:(void *)a4 pipelineState:
{
  if (result)
  {
    v6 = OUTLINED_FUNCTION_10_1(result, a2, a3, a4);
    v7 = [v4 width];
    if (v6 >= v7)
    {
      v6 = v7;
    }

    v8 = [v5 maxTotalThreadsPerThreadgroup];
    v9 = v6;
    do
    {
      v10 = v9;
      v11 = v9 * v6;
      v9 >>= 1;
    }

    while (v11 > v8);
    v12 = (v6 + [v4 width] - 1) / v6;
    [v4 height];
    return OUTLINED_FUNCTION_9_1(1, v6, v10, v13, v12);
  }

  return result;
}

- (uint64_t)stats
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)depthAndStencilStateWithReadWriteDepthDisabled
{
  if (result)
  {
    v1 = result;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SCNMTLResourceManager_depthAndStencilStateWithReadWriteDepthDisabled__block_invoke;
    block[3] = &unk_2782FB608;
    block[4] = result;
    if ([SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled]::onceToken != -1)
    {
      dispatch_once(&[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled]::onceToken, block);
    }

    return *(v1 + 488);
  }

  return result;
}

- (uint64_t)libraryManager
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void __59__SCNMTLResourceManager___updateMutableMesh_withMetalMesh___block_invoke_cold_2(int a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "dataSize == buf.length";
  v6 = 1024;
  v7 = a1;
  v8 = 1024;
  v9 = [a2 length];
  _os_log_fault_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. size mismatch in mutable buffers %u!=%u", &v4, 0x18u);
}

- (void)renderResourceForMesh:(NSObject *)a3 dataKind:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "dataKind == kC3DMeshDataKindOriginal";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Only original data kind can have non 'GPU' primitive type", a1);
}

void *__56__SCNMTLResourceManager_renderResourceForMesh_dataKind___block_invoke_cold_1(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  result = [SCNMTLResourceManager renderResourceForMeshSource:?];
  if (result)
  {
    v9 = result;
    v10 = [*(a1 + 48) indexOfObject:result];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [*(a1 + 48) count];
      [*(a1 + 48) addObject:v9];
    }

    v11 = *(a1 + 56);

    return _fillVertexDescriptor(v11, a2, a3, a4, v10);
  }

  return result;
}

- (void)renderResourceForMaterial:(os_log_t)log geometry:renderPipeline:engineContext:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Unreachable code: Sampler are not yet implemented as separate bindings", buf, 2u);
}

- (void)renderResourceForMaterial:(NSObject *)a3 geometry:renderPipeline:engineContext:.cold.4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "textureMatrix";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Null argument", a1);
}

- (void)renderResourceForMaterial:(NSObject *)a3 geometry:renderPipeline:engineContext:.cold.5(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "0";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. only C3DValue are supported for partial struct storage", a1);
}

void __87__SCNMTLResourceManager_Compilation___createPipelineStateWithDescriptor_desc_pipeline___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 96);
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = [a2 description];
  _os_log_error_impl(&dword_21BEF7000, a3, OS_LOG_TYPE_ERROR, "Error: Compiler error while building render pipeline state for node %@:\n%@", &v5, 0x16u);
}

@end