@interface SCNMTLRenderContext
+ (uint64_t)registerBindings;
- (BOOL)forceAsyncShaderCompilation;
- (__n128)setScreenTransform:(uint64_t)transform;
- (const)createVolatileMeshElementOfType:(int)type primitiveCount:(uint64_t)count bytesPerIndex:;
- (double)contentScaleFactor;
- (double)processRendererElements:(int)elements count:(uint64_t)count engineIterationContext:;
- (double)renderTime;
- (double)screenTransform;
- (double)stopProcessingRendererElements:(uint64_t)elements;
- (float)_zFarForSkyboxRenderingProjectionMatrix:(const C3DMatrix4x4 *)matrix defaultZFar:;
- (float)setPreferredFramesPerSecond:(uint64_t)second;
- (id).cxx_construct;
- (id)_newMTLBufferFromPoolWithLength:(unint64_t)length;
- (id)commandBufferStatusMonitor;
- (id)resourceManagerMonitor;
- (id)setCommandBufferStatusMonitor:(id)result;
- (id)setResourceManagerMonitor:(id)result;
- (os_unfair_lock_s)endFrameWaitingUntilCompleted:(void *)completed status:(void *)status error:;
- (uint64_t)_allowGPUBackgroundExecution;
- (uint64_t)_clusterInfo;
- (uint64_t)_createResourceCommandBufferIfNeeded;
- (uint64_t)_drawFullScreenTexture:(unsigned int)texture over:;
- (uint64_t)_drawMeshElement:(uint64_t)element instanceCount:;
- (uint64_t)_drawPatchForMeshElement:(uint64_t)element instanceCount:;
- (uint64_t)_reflectionProbeArrayTexture;
- (uint64_t)_setMeshBuffers:(uint64_t)result;
- (uint64_t)_setReflectionProbeArrayTexture:(uint64_t)result;
- (uint64_t)_setSceneBufferAtVertexIndex:(uint64_t)index fragmentIndex:;
- (uint64_t)authoring_drawDeformersForNode:(uint64_t)node authoringEnvironment:;
- (uint64_t)clientCommandBuffer;
- (uint64_t)clientRenderCommandEncoder;
- (uint64_t)clientRenderPassDescriptor;
- (uint64_t)collectsCompilationErrors;
- (uint64_t)commandQueue;
- (uint64_t)compilationErrors;
- (uint64_t)cubeArrayTypeIfSupported;
- (uint64_t)currentCommandBuffer;
- (uint64_t)currentRenderCommandEncoder;
- (uint64_t)currentRenderPassDescriptor;
- (uint64_t)device;
- (uint64_t)disableLinearRendering;
- (uint64_t)drawFullScreenQuadForPass:(uint64_t)result;
- (uint64_t)drawWireframeOverlayForElements:(unsigned int)elements range:(int)range store:(uint64_t)store passInstance:(unsigned __int8 *)instance;
- (uint64_t)enableARMode;
- (uint64_t)engineContext;
- (uint64_t)features;
- (uint64_t)frameConstantBufferPool;
- (uint64_t)frameTexturePool;
- (uint64_t)generatedTexturePath;
- (uint64_t)getCurrentPassHash;
- (uint64_t)getCurrentPassMaterial;
- (uint64_t)layerTarget;
- (uint64_t)mapVolatileMesh:(uint64_t)mesh verticesCount:;
- (uint64_t)popDebugGroup;
- (uint64_t)profile;
- (uint64_t)pushDebugGroup:(uint64_t)result;
- (uint64_t)radianceTextureForEffectSlot:(uint64_t)slot;
- (uint64_t)renderEncoder;
- (uint64_t)resourceBlitEncoder;
- (uint64_t)resourceCommandBuffer;
- (uint64_t)resourceComputeEncoder;
- (uint64_t)resourceManager;
- (uint64_t)resourceQueue;
- (uint64_t)reverseZ;
- (uint64_t)sampleCount;
- (uint64_t)setContentScaleFactor:(uint64_t)result;
- (uint64_t)setCurrentPassHash:(uint64_t)result;
- (uint64_t)setCurrentPassMaterial:(uint64_t)result;
- (uint64_t)setDebugOptions:(uint64_t)result;
- (uint64_t)setEnableARMode:(uint64_t)result;
- (uint64_t)setForceAsyncShaderCompilation:(uint64_t)result;
- (uint64_t)setSampleCount:(uint64_t)result;
- (uint64_t)setShouldDelegateARCompositing:(uint64_t)result;
- (uint64_t)setShouldPresentAfterMinimumDuration:(uint64_t)result;
- (uint64_t)setShowsAuthoringEnvironment:(uint64_t)result;
- (uint64_t)shouldDelegateARCompositing;
- (uint64_t)showsAuthoringEnvironment;
- (uint64_t)textureForEffectSlot:(uint64_t)result;
- (uint64_t)textureTarget;
- (uint64_t)unmapVolatileMeshElement:(uint64_t)result;
- (uint64_t)wantsWideGamut;
- (void)_SCNSceneRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder:(uint64_t)encoder commandBuffer:(uint64_t)buffer renderPassDescriptor:;
- (void)_clearUnusedBindingPoints;
- (void)_commitResourceCommandBufferIfNeeded;
- (void)_createResourceCommandBufferIfNeeded;
- (void)_drawPBRTextures;
- (void)_drawShadowMaps;
- (void)_executeDrawCommand:(id *)command;
- (void)_finalRenderTexture;
- (void)_logLightingInformation;
- (void)_prepareMaterialTextures:(__C3DMaterial *)textures;
- (void)_recycleMTLBufferToPool:(id)pool;
- (void)_updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:(C3DMatrix4x4 *)needed;
- (void)addCommandBufferCompletedHandler:(uint64_t)handler;
- (void)addCommandBufferScheduledHandler:(uint64_t)handler;
- (void)addDrawablePresentedHandler:(uint64_t)handler;
- (void)authoring_drawPrimitives:(int)primitives vertexCount:(int)count instanceCount:(int)instanceCount vertexBuffers:(int)buffers offsets:(int)offsets range:(int)range vertexDescriptor:(uint64_t)descriptor withProgram:(uint64_t)self0 uniforms:(int)self1 uniformsLength:(int)self2 rasterizerStates:(uint64_t)self3 blendStates:(uint64_t)self4;
- (void)beginFrame:(uint64_t)frame;
- (void)beginRenderPass:(uint64_t)pass renderEncoder:(uint64_t)encoder parameters:;
- (void)dealloc;
- (void)discardPendingCommandBufferCompletedHandlers;
- (void)discardPendingCommandBufferScheduledHandlers;
- (void)discardPendingDrawablePresentedHandlers;
- (void)drawRenderElement:(uint64_t)element withPass:(uint64_t)pass;
- (void)endFrameSceneSpecifics;
- (void)endRenderPass;
- (void)initWithDevice:(uint64_t)device engineContext:;
- (void)irradianceTextureForEffectSlot:(void *)result;
- (void)renderBackground:(uint64_t)background engineContext:(float32x4_t *)context passInstance:;
- (void)renderSKSceneWithRenderer:overlay:atTime:;
- (void)renderVideoBackground:(__n128 *)background engineContext:(uint64_t)context slot:;
- (void)resetVolatileMeshElements;
- (void)resetVolatileMeshes;
- (void)setClientCommandBuffer:(void *)buffer;
- (void)setClientCommandQueue:(void *)queue;
- (void)setClientRenderCommandEncoder:(void *)encoder;
- (void)setClientRenderPassDescriptor:(void *)descriptor;
- (void)setCollectsCompilationErrors:(uint64_t)errors;
- (void)setDisableLinearRendering:(uint64_t)rendering;
- (void)setGeneratedTexturePath:(void *)path;
- (void)setIsOpaque:(uint64_t)opaque;
- (void)setRasterizerStates:(uint64_t)states;
- (void)setReverseZ:(uint64_t)z;
- (void)setWantsWideGamut:(uint64_t)gamut;
- (void)startProcessingRendererElementsWithEngineIterationContext:(uint64_t)context;
- (void)unmapVolatileMesh:(uint64_t)mesh modifiedVerticesCount:;
- (void)writeBytes:(const void *)bytes length:(unint64_t)length;
@end

@implementation SCNMTLRenderContext

- (id).cxx_construct
{
  self->_resourceBlitEncoder._encoder = 0;
  self->_resourceBlitEncoder._commandBuffer = 0;
  self->_resourceComputeEncoder._encoder = 0;
  self->_resourceComputeEncoder._bufferPool = 0;
  v3 = -4224;
  do
  {
    v4 = (self + v3);
    v4[449] = 0uLL;
    v4[448] = 0uLL;
    v4[447] = 0uLL;
    v4[446] = 0uLL;
    v4[407] = 0uLL;
    v4[408] = 0uLL;
    v4[409] = 0uLL;
    v4[410] = 0uLL;
    v4[411] = 0uLL;
    v4[412] = 0uLL;
    v4[413] = 0uLL;
    v4[414] = 0uLL;
    v4[415] = 0uLL;
    v4[416] = 0uLL;
    v4[417] = 0uLL;
    v4[418] = 0uLL;
    v4[419] = 0uLL;
    v4[420] = 0uLL;
    v4[421] = 0uLL;
    v4[422] = 0uLL;
    v4[423] = 0uLL;
    v4[424] = 0uLL;
    v4[425] = 0uLL;
    v4[426] = 0uLL;
    v4[427] = 0uLL;
    v4[428] = 0uLL;
    v4[429] = 0uLL;
    v4[430] = 0uLL;
    v4[443] = 0uLL;
    v4[442] = 0uLL;
    v4[441] = 0uLL;
    v4[440] = 0uLL;
    v4[439] = 0uLL;
    v4[438] = 0uLL;
    v4[437] = 0uLL;
    v4[436] = 0uLL;
    v3 += 704;
  }

  while (v3);
  bzero(&self->_nodeUniforms, 0x540uLL);
  self->_lighting.frameLightingSetDatas.__table_.__bucket_list_ = 0u;
  *&self->_lighting.frameLightingSetDatas.__table_.__first_node_.__next_ = 0u;
  self->_lighting.frameLightingSetDatas.__table_.__max_load_factor_ = 1.0;
  SCNMTLClusterSystem::SCNMTLClusterSystem(&self->_anon_3848[136]);
  return self;
}

+ (uint64_t)registerBindings
{
  objc_opt_self();
  [SCNMTLShaderBindingsGenerator registerSemantic:@"modelTransform" withBlock:&__block_literal_global_40];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"inverseModelTransform" withBlock:&__block_literal_global_133];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"modelViewTransform" withBlock:&__block_literal_global_138];
  if (C3DStandardShadersUseFunctionConstants())
  {
    [SCNMTLShaderBindingsGenerator registerSemantic:@"lightIndices" withBlock:&__block_literal_global_143];
  }

  [SCNMTLShaderBindingsGenerator registerSemantic:@"inverseModelViewTransform" withBlock:&__block_literal_global_150];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"normalTransform" withBlock:&__block_literal_global_156];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"modelViewProjectionTransform" withBlock:&__block_literal_global_162];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"lastFrameModelTransform" withBlock:&__block_literal_global_168];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"motionBlurIntensity" withBlock:&__block_literal_global_173];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"inverseModelViewProjectionTransform" withBlock:&__block_literal_global_178];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"boundingBox" withBlock:&__block_literal_global_183];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"worldBoundingBox" withBlock:&__block_literal_global_188];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"nodeOpacity" withBlock:&__block_literal_global_193];
  [SCNMTLShaderBindingsGenerator registerSemantic:@"shCoefficients" withBlock:&__block_literal_global_198_0];
  [SCNMTLShaderBindingsGenerator registerShadableArgumentBindingBlockForBuffers:&__block_literal_global_203 textures:&__block_literal_global_206 samplers:&__block_literal_global_212];
  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_lights" frequency:0 needsRenderResource:1 block:&__block_literal_global_218];
  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_lights_count" frequency:0 needsRenderResource:1 block:&__block_literal_global_224];
  if (C3DStandardShadersUseFunctionConstants())
  {
    [SCNMTLShaderBindingsGenerator registerArgument:@"scn_shCoefficients" frequency:1 block:&__block_literal_global_230];
  }

  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_commonprofile" frequency:2 needsRenderResource:1 block:&__block_literal_global_203];
  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_pointSize" frequency:2 block:&__block_literal_global_240];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_clusterTexture" frequency:0 block:&__block_literal_global_246];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_lightIndicesTexture" frequency:0 block:&__block_literal_global_252];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_areaLightBakedDataTexture" frequency:0 block:&__block_literal_global_258];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_shadowKernel" frequency:0 block:&__block_literal_global_264];
  v41 = 0;
  v0 = C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end();
  if (v0)
  {
    v1 = v0;
    v2 = 0;
    do
    {
      if (v2 != 8)
      {
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"u_%@Texture", __stringForProperty()];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_275;
        v39[3] = &unk_2782FD518;
        v40 = v2;
        v39[4] = &__block_literal_global_268;
        [SCNMTLShaderBindingsGenerator registerArgument:v3 frequency:2 block:v39];
      }

      ++v2;
    }

    while (v2 != v1);
  }

  if (C3DStandardShadersUseFunctionConstants())
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_2_279;
    v38[3] = &unk_2782FD540;
    v38[4] = &__block_literal_global_268;
    [SCNMTLShaderBindingsGenerator registerArgument:@"u_reflectiveCubeTexture" frequency:2 block:v38];
  }

  for (i = 0; i != 8; ++i)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"u_shadowTexture%d", i];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_3_283;
    v37[3] = &__block_descriptor_40_e55_v24__0__SCNMTLResourceBinding_8__SCNMTLRenderContext_16l;
    v37[4] = i;
    [SCNMTLShaderBindingsGenerator registerArgument:v5 frequency:1 block:v37];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_4_285;
    v36[3] = &__block_descriptor_40_e55_v24__0__SCNMTLResourceBinding_8__SCNMTLRenderContext_16l;
    v36[4] = i;
    +[SCNMTLShaderBindingsGenerator registerArgument:frequency:block:](SCNMTLShaderBindingsGenerator, "registerArgument:frequency:block:", [MEMORY[0x277CCACA8] stringWithFormat:@"u_goboTexture%d", i], 1, v36);
    +[SCNMTLShaderBindingsGenerator registerArgument:frequency:block:](SCNMTLShaderBindingsGenerator, "registerArgument:frequency:block:", [MEMORY[0x277CCACA8] stringWithFormat:@"u_iesTexture%d", i], 1, v36);
    +[SCNMTLShaderBindingsGenerator registerArgument:frequency:block:](SCNMTLShaderBindingsGenerator, "registerArgument:frequency:block:", [MEMORY[0x277CCACA8] stringWithFormat:@"u_iesCubeTexture%d", i], 1, v36);
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"color%d", i];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_301;
    v35[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v35[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v6 withBlock:v35];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"position%d", i];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_2_306;
    v34[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v34[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v7 withBlock:v34];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"direction%d", i];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_3_310;
    v33[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v33[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v8 withBlock:v33];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"right%d", i];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_4_314;
    v32[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v32[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v9 withBlock:v32];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"up%d", i];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_5_318;
    v31[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v31[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v10 withBlock:v31];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"iesMatrix%d", i];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_6_322;
    v30[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v30[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v11 withBlock:v30];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"attenuation%d", i];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_7_326;
    v29[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v29[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v12 withBlock:v29];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"spotAttenuation%d", i];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_8_330;
    v28[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v28[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v13 withBlock:v28];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"shadowMatrix%d", i];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_9_334;
    v27[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v27[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v14 withBlock:v27];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"shadowRadius%d", i];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_339;
    v26[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v26[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v15 withBlock:v26];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"shadowColor%d", i];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_2_343;
    v25[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v25[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v16 withBlock:v25];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"goboMatrix%d", i];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_3_347;
    v24[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v24[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v17 withBlock:v24];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"projectorColor%d", i];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_4_351;
    v23[3] = &__block_descriptor_40_e42_v36__0_v8I16__SCNMTLRenderContext_20I28I32l;
    v23[4] = i;
    [SCNMTLShaderBindingsGenerator registerSemantic:v18 withBlock:v23];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"u_areaPolygonPositions%d", i];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_5_355;
    v22[3] = &__block_descriptor_40_e55_v24__0__SCNMTLResourceBinding_8__SCNMTLRenderContext_16l;
    v22[4] = i;
    [SCNMTLShaderBindingsGenerator registerArgument:v19 frequency:1 block:v22];
  }

  [SCNMTLShaderBindingsGenerator registerArgument:@"u_specularDFGDiffuseHammonTexture" frequency:0 block:&__block_literal_global_362];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_radianceTexture" frequency:0 block:&__block_literal_global_368];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_irradianceTexture" frequency:0 block:&__block_literal_global_374];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_reflectionProbeTexture" frequency:0 block:&__block_literal_global_380];
  [SCNMTLShaderBindingsGenerator registerArgument:@"u_ssaoTexture" frequency:0 block:&__block_literal_global_386];
  v20 = _Block_copy(&__block_literal_global_395);
  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_bezier_curve_data" frequency:1 needsRenderResource:0 block:v20];
  [SCNMTLShaderBindingsGenerator registerArgument:@"scn_bezier_curve_controlPoints" frequency:1 needsRenderResource:0 block:v20];
  _Block_release(v20);
  return [SCNMTLShaderBindingsGenerator registerUserBlockTrampoline:&__block_literal_global_408];
}

- (uint64_t)resourceManager
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)reverseZ
{
  if (result)
  {
    return (*(result + 152) >> 6) & 1;
  }

  return result;
}

- (uint64_t)features
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (void)initWithDevice:(uint64_t)device engineContext:
{
  if (!self)
  {
    return 0;
  }

  if (!a2)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLRenderContext initWithDevice:engineContext:];
    }

    return 0;
  }

  v13.receiver = self;
  v13.super_class = SCNMTLRenderContext;
  v5 = objc_msgSendSuper2(&v13, sel_init);
  v6 = v5;
  if (v5)
  {
    v5[15] = a2;
    if (C3DUseOneCommandQueuePerDevice())
    {
      goto LABEL_7;
    }

    newCommandQueue = [a2 newCommandQueue];
    v6[20] = newCommandQueue;
    if (newCommandQueue)
    {
      [newCommandQueue setLabel:@"com.apple.SceneKit"];
LABEL_7:
      *(v6 + 128) = MTLValidationEnabled();
      v6[1944] = 0x3FF0000000000000;
      v6[3] = 0x3FF0000000000000;
      *(v6 + 4) = SCNMatrix4Identity;
      *(v6 + 104) = 0;
      *(v6 + 33) = 0;
      v6[18] = device;
      if (C3DStandardShadersUseFunctionConstants())
      {
        v8 = 32;
      }

      else
      {
        v8 = 0;
      }

      *(v6 + 152) = v6[19] & 0xDF | v8;
      if (C3DReverseZIsSupported())
      {
        v9 = 64;
      }

      else
      {
        v9 = 0;
      }

      *(v6 + 152) = v6[19] & 0xBF | v9;
      *(v6 + 34) |= 3u;
      if (SCNMTLDeviceSupportsDepthResolve(v6[15]))
      {
        *(v6 + 34) |= 4u;
      }

      if (SCNMTLDeviceSupportsStencilResolve(v6[15]))
      {
        *(v6 + 34) |= 0x4000u;
      }

      if (SCNMTLDeviceSupportsNonUniformThreadgroupSize(v6[15]))
      {
        *(v6 + 34) |= 0x40u;
      }

      if (SCNMTLDeviceSupportsDepth24UnormStencil8())
      {
        *(v6 + 34) |= 8u;
      }

      if (SCNMTLDeviceSupportsLayeredRendering(v6[15]))
      {
        *(v6 + 34) |= 0x20u;
      }

      if (SCNMTLDeviceSupportsMultipleViewports(v6[15]))
      {
        *(v6 + 34) |= 0x80u;
      }

      if (SCNMTLDeviceSupportsVertexAmplification(v6[15]))
      {
        *(v6 + 34) |= 0x2000u;
      }

      if (SCNMTLDeviceSupportsTessellation(v6[15]))
      {
        *(v6 + 34) |= 0x10u;
      }

      if (SCNMTLDeviceSupportsCubeMapTextureArrays(v6[15]))
      {
        *(v6 + 34) |= 0x100u;
      }

      if (SCNMTLDeviceSupportsCubeMapWrite(v6[15]))
      {
        *(v6 + 34) |= 0x200u;
      }

      if (SCNMTLDeviceSupportsBaseInstance(v6[15]))
      {
        *(v6 + 34) |= 0x400u;
      }

      if (SCNMTLDeviceSupportsProgrammableBlending(v6[15]))
      {
        *(v6 + 34) |= 0x800u;
      }

      if (SCNMTLDeviceSupportsDepthClipMode(v6[15]))
      {
        *(v6 + 34) |= 0x1000u;
      }

      if (SCNMTLDeviceSupportsTextureSwizzle(v6[15]))
      {
        *(v6 + 34) |= 0x8000u;
      }

      v6[14] = [SCNMTLResourceManager resourceManagerForDevice:a2];
      v6[275] = dispatch_queue_create("com.apple.scenekit.resourceCPUQueue", 0);
      v6[2] = malloc_type_calloc(0x358uLL, 1uLL, 0x100004048B25B04uLL);
      v6[21] = dispatch_semaphore_create(3);
      *(v6 + 999) = -1;
      operator new();
    }

    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLRenderContext initWithDevice:engineContext:];
    }

    return 0;
  }

  return v6;
}

- (void)dealloc
{
  [*self count];
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

- (double)screenTransform
{
  if (self)
  {
    v2 = self[3];
    *a2 = self[2];
    a2[1] = v2;
    v3 = self[4];
    v4 = self[5];
    a2[2] = v3;
    a2[3] = v4;
  }

  else
  {
    *&v3 = 0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return *&v3;
}

- (void)_clearUnusedBindingPoints
{
  renderPipeline = self->_cache.renderPipeline;
  if (renderPipeline)
  {
    [self->_renderEncoder->var24[1] pushDebugGroup:@"Clear binding points"];
    v4 = 0;
    for (i = 0; i != 31; ++i)
    {
      renderEncoder = self->_renderEncoder;
      if ((renderPipeline->_buffersUsageMask[1] & (1 << i)) != 0)
      {
        v7 = 65280;
      }

      else
      {
        v7 = v4;
      }

      if ((renderPipeline->_buffersUsageMask[0] & (1 << i)) == 0)
      {
        SCNMTLRenderCommandEncoder::setVertexBuffer(self->_renderEncoder, 0, 0, i);
      }

      if (v7 != 65280)
      {
        SCNMTLRenderCommandEncoder::setFragmentBuffer(renderEncoder, 0, 0, v7 >> 8);
      }

      v4 += 256;
    }

    v8 = 0;
    for (j = 0; j != 31; ++j)
    {
      v10 = self->_renderEncoder;
      if ((renderPipeline->_texturesUsageMask[1] & (1 << j)) != 0)
      {
        v11 = 65280;
      }

      else
      {
        v11 = v8;
      }

      if ((renderPipeline->_texturesUsageMask[0] & (1 << j)) == 0)
      {
        v12 = &v10->var0 + 8 * j;
        if (*(v12 + 72))
        {
          *(v12 + 72) = 0;
          v10->var25[(j >> 6) + 1] |= 1 << j;
        }
      }

      if (v11 != 65280 && *(&v10->var18[3] + (v11 >> 5)))
      {
        v13 = v11 << 48;
        v14 = v11 >> 8;
        v10->var18[v14 + 3] = 0;
        *(&v10[1].var1 + (v14 >> 6)) |= 1 << SHIBYTE(v13);
      }

      v8 += 256;
    }

    v15 = self->_renderEncoder->var24[1];

    [v15 popDebugGroup];
  }
}

- (void)beginFrame:(uint64_t)frame
{
  if (frame)
  {
    ++*(frame + 8);
    *(frame + 15440) = 0u;
    [*(frame + 112) reloadPipelinesIfNeeded];
    dispatch_semaphore_wait(*(frame + 168), 0xFFFFFFFFFFFFFFFFLL);
    atomic_fetch_add((frame + 176), 1u);

    *(frame + 184) = 0;
    *(frame + 192) = 0;
    *(frame + 213) = 0;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = a2;
    if (isKindOfClass)
    {
      *(frame + 192) = v5;
      *(frame + 213) = [v5 presentsWithTransaction];
    }

    else
    {
      *(frame + 184) = v5;
    }

    v6 = *(frame + 8 * (*(frame + 8) % 3) + 2064);
    *(frame + 2088) = v6;
    SCNMTLBufferPool::reset(v6);
    v7 = *(frame + 8 * (*(frame + 8) % 3) + 2000);
    *(frame + 2024) = v7;
    SCNMTLBufferPool::reset(v7);
    SCNMTLTexturePool::reset(*(frame + 2096));
    commandBuffer = *(frame + 15536);
    if (!commandBuffer)
    {
      os_variant_has_internal_diagnostics();
      commandBuffer = [-[SCNMTLRenderContext commandQueue](frame) commandBuffer];
    }

    *(frame + 240) = commandBuffer;
    if (*(frame + 15424) == 1)
    {
      [*(frame + 15432) removeAllObjects];
      commandBuffer = *(frame + 240);
    }

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3052000000;
    v11[3] = __Block_byref_object_copy__3;
    v9 = *(frame + 168);
    v11[4] = __Block_byref_object_dispose__3;
    v11[5] = v9;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__SCNMTLRenderContext_beginFrame___block_invoke;
    v10[3] = &unk_2782FD3D0;
    v10[4] = frame;
    v10[5] = v11;
    [commandBuffer addCompletedHandler:v10];
    _Block_object_dispose(v11, 8);
  }
}

intptr_t __34__SCNMTLRenderContext_beginFrame___block_invoke(uint64_t a1, void *a2)
{
  [a2 GPUEndTime];
  v5 = v4;
  [a2 GPUStartTime];
  *(*(*(a1 + 32) + 16) + 200) = v5 - v6;
  if ([a2 status] != 4)
  {
    [*(*(a1 + 32) + 112) commandBufferDidCompleteWithError:a2];
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __34__SCNMTLRenderContext_beginFrame___block_invoke_cold_1(a2);
    }

    [objc_loadWeak((*(a1 + 32) + 15480)) renderContext:*(a1 + 32) commandBufferDidCompleteWithError:a2];
  }

  result = dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
  atomic_fetch_add((*(a1 + 32) + 176), 0xFFFFFFFF);
  return result;
}

uint64_t __66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    v8 = v3[2];

    return v8(v3);
  }

  return result;
}

uint64_t __66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    v8 = v3[2];

    return v8(v3);
  }

  return result;
}

uint64_t __66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v3 = *(a1 + 32);
  if (isKindOfClass)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v9 + 1) + 8 * v7++) + 16))();
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  else
  {
    v8 = v3[2];

    return v8(v3);
  }

  return result;
}

- (uint64_t)_clusterInfo
{
  if (self)
  {
    return self + 14736;
  }

  else
  {
    return 0;
  }
}

- (void)_createResourceCommandBufferIfNeeded
{
  if (!self->_resourceCommandBuffer)
  {
    v4[5] = v2;
    v4[6] = v3;
    [(SCNMTLRenderContext *)self _createResourceCommandBufferIfNeeded];
  }
}

uint64_t __59__SCNMTLRenderContext__createResourceCommandBufferIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 status];
  if (result != 4)
  {
    [*(*(a1 + 32) + 112) commandBufferDidCompleteWithError:a2];
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__SCNMTLRenderContext__createResourceCommandBufferIfNeeded__block_invoke_cold_1(a2);
    }

    return [objc_loadWeak((*(a1 + 32) + 15480)) renderContext:*(a1 + 32) commandBufferDidCompleteWithError:a2];
  }

  return result;
}

double __54__SCNMTLRenderContext_irradianceTextureForEffectSlot___block_invoke(uint64_t a1, void *a2, double result)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = [a2 contents];
    v6 = [a2 length];

    *&result = C3DLightProbesSetGlobalSH3(v3, v5, v6, v7).n128_u64[0];
  }

  return result;
}

- (void)_logLightingInformation
{
  if ((*(self + 152) & 0x20) == 0)
  {
    NSLog(&cfstr_LightingsetUpl.isa, a2, self->_lighting.frameLightingSetDatas.__table_.__size_);
    next = self->_lighting.frameLightingSetDatas.__table_.__first_node_.__next_;
    if (next)
    {
      LODWORD(v4) = 0;
      do
      {
        v4 = (v4 + next[10]);
        next = *next;
      }

      while (next);
    }

    else
    {
      v4 = 0;
    }

    NSLog(&cfstr_LightingsetUpl_0.isa, v4);
  }
}

- (void)_updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:(C3DMatrix4x4 *)needed
{
  if (needed->components[11] == 0.0)
  {
    v42 = v8;
    v43 = v7;
    v44 = v6;
    v45 = v5;
    v46 = v3;
    v47 = v4;
    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(self->_engineContext);
    v16.i32[0] = LODWORD(needed->components[10]);
    v12 = needed->components[11];
    v13 = v16.f32[0];
    v14 = needed->components[14];
    v15 = v14;
    v16.f32[0] = v14 / v16.f32[0];
    v17 = v14 / (v13 + 1.0);
    v18 = v14 / (v13 + -1.0);
    *&v18 = v18;
    if (v14 >= -2.0)
    {
      v18 = *&v16;
    }

    v19 = v14 < -1.0;
    v20 = (v15 + -1.0) / v13;
    v21 = (v15 + 1.0) / v13;
    *&v21 = v21;
    v22 = -(1.0 - v15) / v13;
    if (v19)
    {
      *&v16 = v21;
    }

    else
    {
      v22 = v20;
    }

    v23 = v12 == 0.0;
    if (v12 == 0.0)
    {
      v24 = v22;
    }

    else
    {
      v24 = v17;
    }

    if (!v23)
    {
      *&v16 = v18;
    }

    *&v24 = v24;
    v39 = vbsl_s8(vdup_lane_s32(vcgt_f32(v16, *&v24), 0), vrev64_s32(__PAIR64__(LODWORD(v24), v16.u32[0])), __PAIR64__(LODWORD(v24), v16.u32[0]));
    Viewport = C3DEngineContextGetViewport(self->_engineContext);
    if (Viewport.n128_f32[3] == 0.0)
    {
      v26 = 1.0;
    }

    else
    {
      v26 = Viewport.n128_f32[2] / Viewport.n128_f32[3];
    }

    v27 = *v39.i32;
    if (*&v39.i32[1] > *v39.i32)
    {
      v28 = *&v39.i32[1];
    }

    else
    {
      v28 = *v39.i32 + 1.0;
    }

    v29 = __tanpi(0.166666667);
    if (v29 == 0.0)
    {
      v30 = 1.0;
    }

    else
    {
      v30 = 1.0 / v29;
    }

    v31 = v30;
    v32 = LODWORD(v31);
    *&v33 = v28 / (v27 - v28);
    *&v34 = 0;
    *(&v34 + 1) = __PAIR64__(-1.0, v33);
    LODWORD(v37) = 0;
    *(&v37 + 1) = 0;
    *&v35 = v28 * v27 / (v27 - v28);
    *&v36 = 0;
    *(&v36 + 1) = v35;
    *(&v37 + 1) = v26 * v31;
    if ((CoordinatesSystemOptions & 8) != 0)
    {
      v38 = 0;
      v40[0] = LODWORD(v31);
      v40[1] = v37;
      v40[2] = v34;
      v40[3] = v36;
      do
      {
        v41[v38] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(v40[v38])), xmmword_21C27F8C0, *&v40[v38], 1), xmmword_21C27F900, v40[v38], 2), xmmword_21C27FDD0, v40[v38], 3);
        ++v38;
      }

      while (v38 != 4);
      v32 = v41[0];
      v37 = v41[1];
      v34 = v41[2];
      v36 = v41[3];
    }

    *needed->components = v32;
    *&needed->components[4] = v37;
    *&needed->components[8] = v34;
    *&needed->components[12] = v36;
  }
}

- (float)_zFarForSkyboxRenderingProjectionMatrix:(const C3DMatrix4x4 *)matrix defaultZFar:
{
  if (result <= 0.0)
  {
    return 1.0;
  }

  return result;
}

- (uint64_t)authoring_drawDeformersForNode:(uint64_t)node authoringEnvironment:
{
  if (result)
  {
    if (a2)
    {
      v5 = result;
      result = C3DNodeGetDeformerStack(a2);
      if (result)
      {
        v6 = result;
        result = C3DDeformerStackWantsGPU(result);
        if (result)
        {
          BaseGeometry = C3DDeformerStackGetBaseGeometry(v6);
          if (BaseGeometry)
          {
            EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(BaseGeometry);
          }

          else
          {
            EffectiveDataKindForRendering = 1;
          }

          v9 = [*(v5 + 112) renderResourceForDeformerStack:v6 node:a2 dataKind:EffectiveDataKindForRendering];

          return [(SCNMTLDeformerStack *)v9 drawAuthoringEnvironment:node context:v5];
        }
      }
    }
  }

  return result;
}

- (void)startProcessingRendererElementsWithEngineIterationContext:(uint64_t)context
{
  v119 = *MEMORY[0x277D85DE8];
  if (!context)
  {
    return;
  }

  v2 = a2;
  v4 = *(a2 + 16);
  *(context + 2216) = v4;
  if (!v4)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLRenderContext *)v5 startProcessingRendererElementsWithEngineIterationContext:v6, v7, v8, v9, v10, v11, v12];
      v2 = a2;
    }
  }

  Scene = C3DEngineContextGetScene(*(v2 + 8));
  if (*(v2 + 8) != *(context + 144))
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLRenderContext *)v13 startProcessingRendererElementsWithEngineIterationContext:v14, v15, v16, v17, v18, v19, v20];
    }
  }

  *(context + 2224) = C3DSceneGetLightingSystem(Scene);
  *(context + 2264) = C3DSceneGetTransformTree(Scene);
  *(context + 2232) = C3DSceneGetDynamicBatchingSystem(Scene);
  *(context + 2240) = C3DFXPassInstanceGetPass(*(context + 2216));
  *(context + 2248) = *(a2 + 24);
  *(context + 2256) = *(a2 + 40);
  AmbientLighting = C3DLightingSystemGetAmbientLighting(*(context + 2224));
  v22 = *(context + 144);
  *(context + 2680) = v23;
  *(context + 2672) = AmbientLighting;
  EyeMatrix4x4 = C3DEngineContextGetEyeMatrix4x4(v22, 0, 0);
  v104 = *(EyeMatrix4x4 + 48);
  v106 = *(EyeMatrix4x4 + 32);
  PointOfViewScale = C3DEngineContextGetPointOfViewScale(*(context + 144));
  *(context + 2688) = *C3DSceneGetFogColor(Scene);
  if (*(&v106 + 3) == 0.0 && (C3DIsRunningInXcode() & 1) != 0)
  {
    v26 = xmmword_21C27F600;
  }

  else
  {
    *&v26 = C3DSceneComputeFogParameters(Scene, PointOfViewScale);
  }

  *(context + 2704) = v26;
  __asm { FMOV            V1.2S, #1.0 }

  *(context + 2720) = vdiv_f32(_D1, *(context + 232));
  LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
  v33 = LightingEnvironmentEffectSlot;
  Intensity = 1.0;
  if (LightingEnvironmentEffectSlot && (C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot) || C3DEffectSlotHasPrecomputedLightingEnvironment(v33)))
  {
    Intensity = C3DEffectSlotGetIntensity(v33);
  }

  *(context + 2748) = Intensity;
  if (*(context + 2192) == 0.0)
  {
    *(context + 2192) = C3DEngineContextGetSystemTime(*(context + 144));
  }

  v35 = C3DEngineContextGetSystemTime(*(context + 144)) - *(context + 2192);
  *(context + 2728) = v35;
  *(context + 2732) = __sincosf_stret(v35);
  v37 = 214013 * *(context + 2272) + 2531011;
  *(context + 2272) = v37;
  *(context + 2740) = HIWORD(v37) * 0.000015259;
  v38 = *(&v106 + 2);
  v39 = *(&v104 + 2);
  if (*(&v106 + 3) == 0.0)
  {
    v40 = (v39 + -1.0) / v38;
    v41 = (v39 + 1.0) / v38;
    *&v41 = v41;
    v42 = -(1.0 - v39) / v38;
    if (*(&v104 + 2) < -1.0)
    {
      v43 = v42;
    }

    else
    {
      v43 = v40;
    }

    *&v42 = *(&v104 + 2) / *(&v106 + 2);
    if (*(&v104 + 2) < -1.0)
    {
      v42 = v41;
    }
  }

  else
  {
    v44 = v39 / (v38 + 1.0);
    v42 = v39 / (v38 + -1.0);
    *&v42 = v42;
    v43 = v44;
    if (*(&v104 + 2) >= -2.0)
    {
      *&v36 = *(&v104 + 2) / *(&v106 + 2);
      v42 = v36;
    }
  }

  *&v36 = v43;
  *(context + 2880) = vbsl_s8(vdup_lane_s32(vcgt_f32(*&v42, *&v36), 0), vrev64_s32(__PAIR64__(LODWORD(v36), LODWORD(v42))), __PAIR64__(LODWORD(v36), LODWORD(v42)));
  if (*(context + 2256) == 1)
  {
    SCNMTLClusterSystem::compute(context + 14544);
    memcpy((context + 14736), __src, 0x1A0uLL);
    *(context + 2976) = *(context + 14800);
  }

  v45 = (context + 2288);
  if (!*(context + 1994))
  {
    v46 = 1;
    goto LABEL_32;
  }

  v46 = *(context + 1993);
  if (*(context + 1993))
  {
LABEL_32:
    v48 = 0;
    v107 = v4 + 3168;
    v105 = v4 + 2784;
    v49 = v4 + 3552;
    v50 = v4 + 3936;
    v102 = v4 + 4320;
    __asm { FMOV            V0.4S, #1.0 }

    v103 = _Q0;
    contextCopy = context;
    v53 = v46;
    while (1)
    {
      v54 = *(context + 1992);
      if (v48)
      {
        memcpy((contextCopy + 2288), v45, 0x2C0uLL);
      }

      v55 = v48 + v54;
      v56 = (v107 + ((v48 + v54) << 6));
      __src[0] = *v56;
      __src[1] = v56[1];
      __src[2] = v56[2];
      __src[3] = v56[3];
      v57 = v56[1];
      v58 = v56[2];
      v59 = v56[3];
      *(contextCopy + 2288) = *v56;
      *(contextCopy + 2304) = v57;
      *(contextCopy + 2320) = v58;
      *(contextCopy + 2336) = v59;
      v60 = (v105 + ((v48 + v54) << 6));
      v61 = v60[1];
      v62 = v60[2];
      v63 = v60[3];
      *(contextCopy + 2352) = *v60;
      *(contextCopy + 2368) = v61;
      *(contextCopy + 2384) = v62;
      *(contextCopy + 2400) = v63;
      v114 = __src[0];
      v115 = __src[1];
      v116 = __src[2];
      v117 = __src[3];
      C3DSceneComputeViewToCubemapMatrix(Scene, &v114);
      v64 = v115;
      v65 = v116;
      v66 = v117;
      *(contextCopy + 2544) = v114;
      *(contextCopy + 2560) = v64;
      *(contextCopy + 2576) = v65;
      *(contextCopy + 2592) = v66;
      v67 = (v49 + ((v48 + v54) << 6));
      v68 = v67[1];
      v69 = v67[2];
      v70 = v67[3];
      *(contextCopy + 2416) = *v67;
      *(contextCopy + 2432) = v68;
      *(contextCopy + 2448) = v69;
      *(contextCopy + 2464) = v70;
      v71 = (v50 + ((v48 + v54) << 6));
      v72 = v71[1];
      v73 = v71[2];
      v74 = v71[3];
      *(contextCopy + 2480) = *v71;
      *(contextCopy + 2496) = v72;
      *(contextCopy + 2512) = v73;
      *(contextCopy + 2528) = v74;
      v75 = *(contextCopy + 2288);
      v76 = *(contextCopy + 2304);
      v77 = *(contextCopy + 2320);
      v78 = *(contextCopy + 2336);
      v79 = vmulq_f32(v75, v75);
      v80 = vmulq_f32(v76, v76);
      v81 = vmulq_f32(v77, v77);
      v82 = vzip2q_s32(v79, v81);
      v83 = vzip1q_s32(vzip1q_s32(v79, v81), v80);
      v84 = vtrn2q_s32(v79, v80);
      v84.i32[2] = v81.i32[1];
      v85 = vdivq_f32(v103, vaddq_f32(vzip1q_s32(v82, vdupq_laneq_s32(v80, 2)), vaddq_f32(v83, v84)));
      *(contextCopy + 2912) = vmulq_n_f32(v75, v85.f32[0]);
      *(contextCopy + 2928) = vmulq_lane_f32(v76, *v85.f32, 1);
      *(contextCopy + 2944) = vmulq_laneq_f32(v77, v85, 2);
      *(contextCopy + 2960) = v78;
      PointOfView = C3DEngineContextGetPointOfView(*(a2 + 8));
      if (!PointOfView)
      {
        break;
      }

      Camera = C3DNodeGetCamera(PointOfView);
      IsTemporalAntialiasingEnabled = C3DEngineContextIsTemporalAntialiasingEnabled(*(context + 144));
      if (!Camera)
      {
        goto LABEL_40;
      }

      v89 = C3DCameraGetMotionBlurIntensity(Camera) > 0.0;
      if (v89)
      {
        goto LABEL_42;
      }

LABEL_41:
      if (IsTemporalAntialiasingEnabled)
      {
LABEL_42:
        v90 = (v102 + (v55 << 6));
        v91 = v90[1];
        v92 = v90[2];
        v93 = v90[3];
        *(contextCopy + 2608) = *v90;
        *(contextCopy + 2624) = v91;
        *(contextCopy + 2640) = v92;
        *(contextCopy + 2656) = v93;
        v94 = 0.5;
        if (v89)
        {
          v94 = C3DCameraGetMotionBlurIntensity(Camera) * 0.5;
        }

        *(contextCopy + 2744) = v94;
      }

      v95 = &v45[704 * v55];
      *(contextCopy + 2752) = __invert_f4(v95[2]);
      *(contextCopy + 2816) = __invert_f4(v95[3]);
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(context + 144), v48);
      *(contextCopy + 2896) = vextq_s8(ViewportAtIndex, ViewportAtIndex, 8uLL);
      ++v48;
      contextCopy += 704;
      if (v53 == v48)
      {
        v47 = (704 * v53);
        goto LABEL_47;
      }
    }

    IsTemporalAntialiasingEnabled = C3DEngineContextIsTemporalAntialiasingEnabled(*(context + 144));
    Camera = 0;
LABEL_40:
    v89 = 0;
    goto LABEL_41;
  }

  v47 = 0;
LABEL_47:
  v114 = 0uLL;
  *&v115 = 0;
  SCNMTLBufferPool::allocateAndCopy(*(context + 2088), v45, v47, &v114);
  v97 = v115;
  *(context + 6512) = *(&v114 + 1);
  *(context + 6520) = v97;
  if ((*(context + 152) & 0x20) != 0)
  {
    ActiveNonAmbientLightCount = C3DLightingSystemGetActiveNonAmbientLightCount(*(context + 2224));
    if (ActiveNonAmbientLightCount)
    {
      v99 = 208 * ActiveNonAmbientLightCount;
      *(context + 6544) = v99;
      v111 = 0;
      v112 = 0;
      v113 = 0;
      SCNMTLBufferPool::allocate(*(context + 2088), v99, &v111);
      v100 = v111;
      *(context + 6528) = v112;
      *(context + 6536) = v113;
      *&__src[0] = 0;
      *(&__src[0] + 1) = __src;
      *&__src[1] = 0x2020000000;
      DWORD2(__src[1]) = 0;
      v101 = *(context + 2224);
      v110[0] = MEMORY[0x277D85DD0];
      v110[1] = 3221225472;
      v110[2] = __81__SCNMTLRenderContext_startProcessingRendererElementsWithEngineIterationContext___block_invoke;
      v110[3] = &unk_2782FD468;
      v110[4] = context;
      v110[5] = __src;
      v110[6] = v100;
      C3DLightingSystemApplyActiveNonAmbientLights(v101, v110);
      _Block_object_dispose(__src, 8);
    }

    else
    {
      *(context + 6544) = 0;
      *(context + 6528) = 0u;
    }
  }
}

float __81__SCNMTLRenderContext_startProcessingRendererElementsWithEngineIterationContext___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 400);
  *(a1[4] + 8 * *(*(a1[5] + 8) + 24) + 6552) = v6;
  if (*(a3 + 416))
  {
    v6 = *(a3 + 416);
  }

  *(a1[4] + 8 * *(*(a1[5] + 8) + 24) + 8600) = v6;
  if (*(a3 + 424) || *(a3 + 408))
  {
    *(a1[4] + 8 * *(*(a1[5] + 8) + 24) + 10648) = [SCNMTLResourceManager renderResourceForSampler:?];
  }

  Light = C3DNodeGetLight(a2);
  v8 = a1[6];
  v9 = *(a1[5] + 8);
  v10 = *(v9 + 24);
  *(v9 + 24) = v10 + 1;
  v11 = v8 + 208 * v10;
  v12 = *a3;
  *v11 = *a3;
  v12.i32[3] = *(a3 + 396);
  *v11 = v12;
  Type = C3DLightGetType(Light);
  v14.i32[0] = 1;
  v15.i32[0] = Type;
  *(v11 + 16) = vmulq_f32(*a3, vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v15, v14), 0), vdupq_n_s32(0x40490FDBu), vdupq_n_s32(0x447A0000u)));
  *(v11 + 32) = *(a3 + 16);
  *(v11 + 48) = *(a3 + 32);
  *(v11 + 80) = *(a3 + 64);
  *(v11 + 64) = *(a3 + 48);
  *(v11 + 96) = *(a3 + 80);
  *(v11 + 112) = *(a3 + 96);
  v16 = *(a3 + 144);
  v17 = *(a3 + 160);
  v18 = *(a3 + 176);
  *(v11 + 144) = *(a3 + 128);
  *(v11 + 160) = v16;
  *(v11 + 176) = v17;
  *(v11 + 192) = v18;
  result = *(a3 + 116);
  *(v11 + 128) = result;
  return result;
}

- (void)_prepareMaterialTextures:(__C3DMaterial *)textures
{
  CommonProfile = C3DMaterialGetCommonProfile(textures);
  if (CommonProfile)
  {
    v5 = CommonProfile;
    LightingModel = C3DEffectCommonProfileGetLightingModel(CommonProfile);
    if (LightingModel == 5)
    {
      [(SCNMTLResourceManager *)self->_resourceManager specularDFGDiffuseHammonTextureWithRenderContext:self];
    }

    v7 = C3DEnumIterator<C3DEffectProperty,(signed char)0,(signed char)15>::end();
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      do
      {
        if (C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel(LightingModel, v9))
        {
          EffectSlot = C3DEffectCommonProfileGetEffectSlot(v5, v9, 0);
          if (self)
          {
            if (EffectSlot)
            {
              [(SCNMTLResourceManager *)self->_resourceManager renderResourceForEffectSlot:EffectSlot withEngineContext:self->_engineContext didFallbackToDefaultTexture:0];
            }
          }
        }

        ++v9;
      }

      while (v9 != v8);
    }
  }
}

- (void)_executeDrawCommand:(id *)command
{
  v459 = *MEMORY[0x277D85DE8];
  var0 = command->var0;
  var1 = command->var1;
  var2 = command->var2;
  var3 = command->var3;
  var4 = command->var4;
  var5 = command->var5;
  var8 = command->var8;
  v384.i64[0] = command->var7;
  v377 = var8;
  v383.i32[0] = command->var9;
  commandCopy = command;
  LODWORD(lightBufferBindings) = command->var10;
  if (var2 && C3DGeometryGetWantsHardwareTessellation(var2) && (self->_features & 0x10) != 0)
  {
    v382.i32[0] = (commandCopy[9].i8[5] & 7) != 0;
    v10 = 1;
    if (var0)
    {
LABEL_5:
      if (!var2)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v382.i32[0] = 0;
    if (var0)
    {
      goto LABEL_5;
    }
  }

  if (([SCNMTLRenderContext _executeDrawCommand:]::done & 1) == 0)
  {
    [SCNMTLRenderContext _executeDrawCommand:]::done = 1;
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLRenderContext _executeDrawCommand:];
    }
  }

  var0 = [(SCNMTLResourceManager *)self->_resourceManager defaultProgramUsingTessellation:v10];
  if (!var2)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (C3DEntityGetShaderModifiers(var2) || C3DGeometryGetOverrideMaterial(var2))
  {
    v373 = var2;
    goto LABEL_16;
  }

LABEL_15:
  v373 = 0;
LABEL_16:
  v12 = var0;
  v13 = CFGetTypeID(var0);
  v17 = v13 == C3DFXMetalProgramGetTypeID();
  v14 = v12;
  if (!v17)
  {
    v14 = [(SCNMTLResourceManager *)self->_resourceManager defaultProgramUsingTessellation:v10];
  }

  v366 = v10;
  v380 = &self->_lightsData.samplerStates[205];
  program = self->_cache.program;
  self->_cache.program = v14;
  mesh = self->_cache.mesh;
  v369 = program;
  v17 = mesh == var4 && program == v14;
  v18 = !v17;
  if (var2)
  {
    LODWORD(v376) = C3DGeometryGetEffectiveDataKindForRendering(var2);
  }

  else
  {
    LODWORD(v376) = 1;
  }

  v365 = (v380 + 361);
  v375 = var3;
  v367 = v14;
  if (!var3)
  {
    if (self->_cache.deformerStack)
    {
      v21 = 1;
    }

    else
    {
      v21 = v18;
    }

    self->_cache.deformerStack = 0;
    if (v21)
    {
      v374 = 0;
      v20 = 0;
      v22 = 0;
      EffectiveCalculationMode = -1;
      v23 = v366;
      goto LABEL_45;
    }

    HIDWORD(v363) = 0;
    v374 = 0;
    v20 = 0;
    v28 = 0;
    LOBYTE(v22) = 0;
    EffectiveCalculationMode = -1;
    v23 = v366;
    if ((v366 & 1) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_122;
  }

  C3DNodeGetMorpher(var3);
  Skinner = C3DNodeGetSkinner(var3);
  v20 = Skinner != 0;
  v374 = Skinner;
  if (Skinner)
  {
    EffectiveCalculationMode = C3DSkinnerGetEffectiveCalculationMode(Skinner, var2);
  }

  else
  {
    EffectiveCalculationMode = -1;
  }

  DeformerStack = C3DNodeGetDeformerStack(var3);
  if (self->_cache.deformerStack == DeformerStack)
  {
    v25 = v18;
  }

  else
  {
    v25 = 1;
  }

  self->_cache.deformerStack = DeformerStack;
  if (!DeformerStack || (v26 = DeformerStack, !C3DDeformerStackWantsGPU(DeformerStack)))
  {
    v23 = v366;
    if (v25)
    {
      v22 = 0;
      goto LABEL_45;
    }

    HIDWORD(v363) = 0;
    v28 = 0;
    LOBYTE(v22) = 0;
    if ((v366 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_122:
    geometry = v28;
    v134 = var4;
    v135 = v20;
    v136 = var5;
    v137 = *&self->_anon_31b8[504];
    v428 = *&self->_anon_31b8[488];
    v429 = v137;
    v138 = *&self->_anon_31b8[536];
    v430 = *&self->_anon_31b8[520];
    v431 = v138;
    v139 = *&self->_anon_31b8[888];
    v432 = *&self->_anon_31b8[872];
    v433 = v139;
    v140 = *&self->_anon_31b8[920];
    v434 = *&self->_anon_31b8[904];
    v435 = v140;
    v141 = *&self->_anon_8f0[128];
    v142 = *&self->_anon_8f0[144];
    v143 = *&self->_anon_8f0[160];
    v439 = *&self->_anon_8f0[176];
    v438 = v143;
    v437 = v142;
    v436 = v141;
    metalMesh = self->_cache.metalMesh;
    currentFrameIndex = self->_currentFrameIndex;
    v146 = [SCNMTLResourceManager renderResourceForTessellatedGeometry:?];
    v447.i64[0] = metalMesh;
    v447.i64[1] = self;
    v448.i64[0] = &v428;
    v448.i32[2] = currentFrameIndex;
    v448.i8[12] = v22;
    *(&v448.i16[6] + 1) = 0;
    v448.i8[15] = 0;
    [(SCNMTLTessellator *)v146 update:&v447];
    metalMeshElement = self->_cache.metalMeshElement;
    v148 = commandCopy[9].i8[5] & 7;
    v364 = v146;
    v149 = [(SCNMTLTessellator *)v146 pipelineStateHashForMeshElement:metalMeshElement patchType:v148];
    v133 = *(v380 + 3000) == v149;
    v381.i32[0] = v149;
    *(v380 + 3000) = v149;
    if (v382.i32[0])
    {
      var5 = v136;
      self->_cache.meshElement = v136;
      self->_cache.metalMeshElement = 0;
      v150 = 1;
      v23 = v366;
      v151 = v375;
      v20 = v135;
      if (!var5)
      {
        goto LABEL_154;
      }

      goto LABEL_143;
    }

    v23 = v366;
    var5 = v136;
    v20 = v135;
    var4 = v134;
    v28 = geometry;
    if (!geometry)
    {
      goto LABEL_134;
    }

    goto LABEL_126;
  }

  v381.i64[0] = var5;
  v27 = (commandCopy[9].i8[2] & 1) != 0 || C3DGeometryNeedsTexTangent(var2, 0);
  v62 = [(SCNMTLResourceManager *)self->_resourceManager renderResourceForDeformerStack:v26 node:var3 dataKind:v376];
  if (([(SCNMTLDeformerStack *)v62 computeDeformedMeshReliesOnTransforms]& 1) != 0 || *(v380 + 3128) == 1)
  {
    if ([(SCNMTLDeformerStack *)v62 computeDeformedMeshReliesOnTransforms])
    {
      v428.i64[0] = 0;
      C3DDynamicBatchingSystemGetCurrentBatchNodes(self->_processingContext.dynamicBatchingSystem, &v428);
      if (v428.i64[0] >= 2)
      {
        v63 = scn_default_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
        {
          [(SCNMTLRenderContext *)v63 _executeDrawCommand:v64, v65, v66, v67, v68, v69, v70];
        }
      }
    }

    WorldTransformPtr = C3DTransformTreeGetWorldTransformPtr(self->_processingContext.transformTree, *(var3 + 22));
    v72 = *WorldTransformPtr;
    v73 = WorldTransformPtr[1];
    v74 = WorldTransformPtr[2];
    v75 = WorldTransformPtr[3];
    *&self->_nodeUniforms.instanceNode = *WorldTransformPtr;
    *&self->_nodeUniforms.probeCacheIndex = v73;
    *&self->_anon_31b8[8] = v74;
    *&self->_anon_31b8[24] = v75;
    if (v374)
    {
      *v72.i64 = C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode(v374, EffectiveCalculationMode, v72, v73, v74, v75);
      *&self->_nodeUniforms.instanceNode = v72;
      *&self->_nodeUniforms.probeCacheIndex = v73;
      *&self->_anon_31b8[8] = v74;
      *&self->_anon_31b8[24] = v75;
    }

    eyeCount = self->_renderPassParameters.eyeCount;
    *&self->_anon_31b8[1328] = 2;
    if (eyeCount)
    {
      v77 = 0;
      anon_8f0 = self->_anon_8f0;
      do
      {
        v79 = 0;
        v80 = &anon_8f0[704 * v77];
        v81 = *v80;
        v82 = v80[1];
        v83 = v80[2];
        v84 = v80[3];
        v447 = v72;
        v448 = v73;
        v449 = v74;
        v450 = v75;
        do
        {
          *(&v428 + v79) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v81, COERCE_FLOAT(*(&v447 + v79))), v82, *&v447.f32[v79 / 4], 1), v83, *(&v447 + v79), 2), v84, *(&v447 + v79), 3);
          v79 += 16;
        }

        while (v79 != 64);
        v85 = v429;
        v86 = v430;
        v87 = v431;
        v88 = &self->_anon_31b8[64 * v77 + 488];
        *v88 = v428;
        *(v88 + 1) = v85;
        *(v88 + 2) = v86;
        *(v88 + 3) = v87;
        ++v77;
      }

      while (v77 != eyeCount);
      v89 = *&self->_anon_31b8[1328];
      if ((v89 & 4) == 0)
      {
        v90 = 0;
        *&self->_anon_31b8[1328] = v89 | 4;
        do
        {
          v91 = 0;
          v92 = &anon_8f0[704 * v90];
          v93 = v92[12];
          v94 = v92[13];
          v95 = v92[14];
          v96 = v92[15];
          v447 = v72;
          v448 = v73;
          v449 = v74;
          v450 = v75;
          do
          {
            *(&v428 + v91) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v447 + v91))), v94, *&v447.f32[v91 / 4], 1), v95, *(&v447 + v91), 2), v96, *(&v447 + v91), 3);
            v91 += 16;
          }

          while (v91 != 64);
          v97 = v429;
          v98 = v430;
          v99 = v431;
          v100 = &self->_anon_31b8[64 * v90 + 872];
          *v100 = v428;
          *(v100 + 1) = v97;
          *(v100 + 2) = v98;
          *(v100 + 3) = v99;
          ++v90;
        }

        while (v90 != eyeCount);
      }
    }

    else
    {
      *&self->_anon_31b8[1328] = 6;
    }

    v101 = *&self->_anon_31b8[504];
    v447 = *&self->_anon_31b8[488];
    v448 = v101;
    v102 = *&self->_anon_31b8[536];
    v449 = *&self->_anon_31b8[520];
    v450 = v102;
    v103 = *&self->_anon_31b8[888];
    v451 = *&self->_anon_31b8[872];
    v452 = v103;
    v104 = *&self->_anon_31b8[920];
    v453 = *&self->_anon_31b8[904];
    v454 = v104;
    v105 = *&self->_anon_8f0[128];
    v106 = *&self->_anon_8f0[144];
    v107 = *&self->_anon_8f0[160];
    v439 = *&self->_anon_8f0[176];
    v438 = v107;
    v437 = v106;
    v436 = v105;
    v431 = v450;
    v429 = v448;
    v430 = v449;
    v428 = v447;
    v435 = v454;
    v434 = v453;
    v433 = v452;
    v432 = v451;
  }

  if ([(SCNMTLDeformerStack *)v62 computeDeformedMeshReliesOnFrustum])
  {
    v108 = 0;
    v426.i64[0] = *self->_renderSize;
    v109 = *&self->_anon_31b8[872];
    v110 = *&self->_anon_31b8[888];
    v111 = *&self->_anon_31b8[904];
    v112 = *&self->_anon_31b8[920];
    do
    {
      v113 = 0;
      v385 = v109;
      v114 = *(&v385 & 0xFFFFFFFFFFFFFFF3 | (4 * (v108 & 3)));
      v115 = (&v386 & 0xFFFFFFFFFFFFFFF3 | (4 * (v108 & 3)));
      v386 = v110;
      v116 = *(&v110 + 3) - *v115;
      v117 = *(&v110 + 3) + *v115;
      v387 = v111;
      v118 = *(&v387 & 0xFFFFFFFFFFFFFFF3 | (4 * (v108 & 3)));
      v388 = v112;
      v119 = *(&v388 & 0xFFFFFFFFFFFFFFF3 | (4 * (v108 & 3)));
      v120 = *(&v111 + 3) - v118;
      v121 = *(&v111 + 3) + v118;
      v122 = 1;
      do
      {
        v123 = v122 & 1;
        if (v122)
        {
          v124 = v114;
        }

        else
        {
          v124 = -v114;
        }

        v125 = v113 | (2 * v108);
        v126 = v427[v125];
        v126.f32[0] = *(&v109 + 3) + v124;
        if (v122)
        {
          v127 = v117;
        }

        else
        {
          v127 = v116;
        }

        if (v122)
        {
          v128 = v121;
        }

        else
        {
          v128 = v120;
        }

        if (v122)
        {
          v129 = v119;
        }

        else
        {
          v129 = -v119;
        }

        v126.f32[1] = v127;
        v126.f32[2] = v128;
        v130 = vmulq_f32(v126, v126);
        v126.f32[3] = *(&v112 + 3) + v129;
        v427[v125] = vmulq_n_f32(v126, sqrtf(v130.f32[2] + vaddv_f32(*v130.f32)));
        v113 = 1;
        v122 = 0;
      }

      while (v123);
      ++v108;
    }

    while (v108 != 3);
  }

  v131 = CACurrentMediaTime();
  v444[0] = 0;
  v455 = v436;
  v456 = v437;
  v457 = v438;
  v458 = v439;
  v451 = v432;
  v452 = v433;
  v453 = v434;
  v454 = v435;
  v447 = v428;
  v448 = v429;
  v449 = v430;
  v450 = v431;
  v425[4] = v427[3];
  v425[5] = v427[4];
  v425[6] = v427[5];
  v425[0] = v426;
  v425[1] = v427[0];
  v425[2] = v427[1];
  v425[3] = v427[2];
  v28 = [(SCNMTLDeformerStack *)v62 computeDeformedMeshForContext:v27 programHashCodeRequirements:&v447 transforms:v425 frustumInfo:v444 status:?];
  self->__engineStats->mrphTime = CACurrentMediaTime() - v131 + self->__engineStats->mrphTime;
  if (*(v380 + 3128) == 1)
  {
    AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(self->_engineContext, 0);
    v455 = v436;
    v456 = v437;
    v457 = v438;
    v458 = v439;
    v451 = v432;
    v452 = v433;
    v453 = v434;
    v454 = v435;
    v447 = v428;
    v448 = v429;
    v449 = v430;
    v450 = v431;
    [(SCNMTLDeformerStack *)v62 updateDataForAuthoringEnvironment:&v447 transforms:self context:?];
  }

  v22 = v444[0];
  var5 = v381.i64[0];
  if (v25)
  {
    v23 = v366;
    if (v28)
    {
      *v365 = var4;
      v29 = v28;
      goto LABEL_56;
    }

LABEL_45:
    if (commandCopy[9].i8[2] == 1 && (v23 & v382.i32[0] & 1) == 0)
    {
      C3DMeshCreateTangentsIfNeeded(var4, v376);
    }

    *v365 = var4;
    if (var4)
    {
      v28 = [(SCNMTLResourceManager *)self->_resourceManager renderResourceForMesh:v376 dataKind:?];
    }

    else
    {
      v28 = 0;
    }

    v29 = 0;
LABEL_56:
    self->_cache.metalMesh = v28;
    HIDWORD(v363) = 1;
    v28 = v29;
    if (v23)
    {
      goto LABEL_57;
    }

    goto LABEL_117;
  }

  HIDWORD(v363) = 0;
  v23 = v366;
  if (v366)
  {
LABEL_57:
    if (!v22)
    {
      goto LABEL_122;
    }

    v30 = self->_renderPassParameters.eyeCount;
    v31 = *&self->_anon_31b8[1328];
    if ((v31 & 2) == 0)
    {
      *&self->_anon_31b8[1328] = v31 | 2;
      if (!v30)
      {
        if ((v31 & 4) == 0)
        {
          *&self->_anon_31b8[1328] = v31 | 6;
        }

        goto LABEL_121;
      }

      v32 = 0;
      v33 = *&self->_nodeUniforms.instanceNode;
      v34 = *&self->_nodeUniforms.probeCacheIndex;
      v35 = *&self->_anon_31b8[8];
      v36 = *&self->_anon_31b8[24];
      do
      {
        v37 = 0;
        v38 = &self->_anon_8f0[704 * v32];
        v39 = *v38;
        v40 = *(v38 + 1);
        v41 = *(v38 + 2);
        v42 = *(v38 + 3);
        v447 = v33;
        v448 = v34;
        v449 = v35;
        v450 = v36;
        do
        {
          *(&v428 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*(&v447 + v37))), v40, *&v447.f32[v37 / 4], 1), v41, *(&v447 + v37), 2), v42, *(&v447 + v37), 3);
          v37 += 16;
        }

        while (v37 != 64);
        v43 = v429;
        v44 = v430;
        v45 = v431;
        v46 = &self->_anon_31b8[64 * v32 + 488];
        *v46 = v428;
        *(v46 + 1) = v43;
        *(v46 + 2) = v44;
        *(v46 + 3) = v45;
        ++v32;
      }

      while (v32 != v30);
      v31 = *&self->_anon_31b8[1328];
    }

    if ((v31 & 4) == 0)
    {
      *&self->_anon_31b8[1328] = v31 | 4;
      if (v30)
      {
        v47 = 0;
        v48 = *&self->_nodeUniforms.instanceNode;
        v49 = *&self->_nodeUniforms.probeCacheIndex;
        v50 = *&self->_anon_31b8[8];
        v51 = *&self->_anon_31b8[24];
        do
        {
          v52 = 0;
          v53 = &self->_anon_8f0[704 * v47];
          v54 = *(v53 + 12);
          v55 = *(v53 + 13);
          v56 = *(v53 + 14);
          v57 = *(v53 + 15);
          v447 = v48;
          v448 = v49;
          v449 = v50;
          v450 = v51;
          do
          {
            *(&v428 + v52) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, COERCE_FLOAT(*(&v447 + v52))), v55, *&v447.f32[v52 / 4], 1), v56, *(&v447 + v52), 2), v57, *(&v447 + v52), 3);
            v52 += 16;
          }

          while (v52 != 64);
          v58 = v429;
          v59 = v430;
          v60 = v431;
          v61 = &self->_anon_31b8[64 * v47 + 872];
          *v61 = v428;
          *(v61 + 1) = v58;
          *(v61 + 2) = v59;
          *(v61 + 3) = v60;
          ++v47;
        }

        while (v47 != v30);
      }
    }

LABEL_121:
    LOBYTE(v22) = 1;
    goto LABEL_122;
  }

LABEL_117:
  v381.i32[0] = 0;
  v364 = 0;
  v133 = *(v380 + 3000) == 0;
  *(v380 + 3000) = 0;
  if (!v28)
  {
    goto LABEL_134;
  }

LABEL_126:
  if (C3DGeometryUsesDeformerBasedDynamicMesh(var2))
  {
    if (var5)
    {
      v152 = scn_default_log();
      if (os_log_type_enabled(v152, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLRenderContext *)v152 _executeDrawCommand:v153, v154, v155, v156, v157, v158, v159];
      }
    }

    if (C3DGeometryGetMeshElementCountForDeformerBasedDynamicMesh(var2) != 1)
    {
      v160 = scn_default_log();
      if (os_log_type_enabled(v160, OS_LOG_TYPE_FAULT))
      {
        [(SCNMTLRenderContext *)v160 _executeDrawCommand:v161, v162, v163, v164, v165, v166, v167];
      }
    }

    v168 = [-[SCNMTLMesh elements](v28) objectAtIndexedSubscript:0];
    v150 = 0;
    self->_cache.meshElement = 0;
    self->_cache.metalMeshElement = v168;
LABEL_142:
    v151 = v375;
    if (!var5)
    {
      goto LABEL_154;
    }

    goto LABEL_143;
  }

LABEL_134:
  if (self->_cache.meshElement == var5)
  {
    goto LABEL_141;
  }

  if (!((v28 == 0) | v382.i8[0] & 1))
  {
    IndexOfElement = C3DMeshGetIndexOfElement(var4, var5, v376);
    if (IndexOfElement != -1)
    {
      v172 = [-[SCNMTLMesh elements](v28) objectAtIndexedSubscript:IndexOfElement];
      self->_cache.meshElement = var5;
      self->_cache.metalMeshElement = v172;
      if (![(SCNMTLMesh *)v172 buffers])
      {
        PrimitiveRange = C3DMeshElementGetPrimitiveRange(var5);
        [(SCNMTLMeshElement *)v172 setPrimitiveRange:v295];
        v151 = v375;
        if (![(SCNMTLMesh *)v172 volatileBuffer])
        {
          return;
        }

        goto LABEL_300;
      }
    }

LABEL_141:
    v150 = 0;
    goto LABEL_142;
  }

  self->_cache.meshElement = var5;
  if (var5)
  {
    v169 = [SCNMTLResourceManager renderResourceForMeshElement:?];
    p_metalMeshElement = &self->_cache.metalMeshElement;
    self->_cache.metalMeshElement = v169;
    v151 = v375;
    if (v169)
    {
      goto LABEL_298;
    }
  }

  else
  {
    p_metalMeshElement = &self->_cache.metalMeshElement;
    self->_cache.metalMeshElement = 0;
    v151 = v375;
  }

  v262 = scn_default_log();
  if (!os_log_type_enabled(v262, OS_LOG_TYPE_FAULT))
  {
    if (!var5)
    {
      goto LABEL_299;
    }

    goto LABEL_298;
  }

  [(SCNMTLRenderContext *)v262 _executeDrawCommand:v263, v264, v265, v266, v267, v268, v269];
  if (var5)
  {
LABEL_298:
    v270 = C3DMeshElementGetPrimitiveRange(var5);
    [(SCNMTLMeshElement *)*p_metalMeshElement setPrimitiveRange:v270, v271];
  }

LABEL_299:
  volatileBuffer = [(SCNMTLMesh *)*p_metalMeshElement volatileBuffer];
  v23 = v366;
  if (!volatileBuffer)
  {
    return;
  }

LABEL_300:
  v150 = 0;
  if (!var5)
  {
    goto LABEL_154;
  }

LABEL_143:
  Type = C3DMeshElementGetType(var5);
  LODWORD(var5) = 0;
  if (Type <= 2u)
  {
    if (Type >= 2u)
    {
      if (Type == 2)
      {
        LODWORD(var5) = 2;
      }

      goto LABEL_154;
    }

LABEL_153:
    LODWORD(var5) = 3;
    goto LABEL_154;
  }

  if (Type == 3)
  {
    LODWORD(var5) = 1;
    goto LABEL_154;
  }

  if (Type != 4)
  {
    if (Type != 5)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

  if (v150)
  {
    goto LABEL_153;
  }

  v293 = scn_default_log();
  if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
  {
    [SCNMTLRenderContext _executeDrawCommand:];
  }

  LODWORD(var5) = 0;
LABEL_154:
  CommonProfile = var1;
  v175 = *(v380 + 2969);
  *(v380 + 2969) = var5;
  v176 = v367;
  v178 = self->_cache.material != CommonProfile || v369 != v367;
  LODWORD(v376) = v178;
  self->_cache.material = CommonProfile;
  if (CommonProfile)
  {
    CommonProfile = C3DMaterialGetCommonProfile(CommonProfile);
  }

  self->_cache.commonProfile = CommonProfile;
  geometry = self->_cache.geometry;
  self->_cache.geometry = var2;
  Count = C3DSourceAccessorGetCount(self->_processingContext.dynamicBatchingSystem);
  v180 = self->_cache.node == v151 && v369 == v176;
  v181 = v20 && EffectiveCalculationMode == 3;
  if (!v180)
  {
    v181 = 1;
  }

  if (Count > 1)
  {
    v181 = 1;
  }

  LODWORD(v363) = v181;
  self->_cache.node = v151;
  v182 = self->_cache.metalMesh;
  if (v23)
  {
    tessellationVertexDescriptorHash = [(SCNMTLMesh *)v182 tessellationVertexDescriptorHash];
  }

  else
  {
    tessellationVertexDescriptorHash = [(SCNMTLMesh *)v182 vertexDescriptorHash];
  }

  v184 = tessellationVertexDescriptorHash;
  BlendStates = v384.i64[0];
  vertexDescriptorHash = self->_cache.vertexDescriptorHash;
  self->_cache.vertexDescriptorHash = tessellationVertexDescriptorHash;
  v187 = 1.0;
  if (v151 && !v383.i32[0])
  {
    C3DNodeGetWorldAlpha(v151);
    v187 = v188;
  }

  v425[0] = 0uLL;
  if (BlendStates)
  {
    BlendStates = C3DFXPassGetBlendStates(BlendStates);
  }

  v189 = var1;
  if (var1 && !BlendStates)
  {
    BlendStates = C3DMaterialGetBlendStates(var1, v383.i32[0], lightBufferBindings, (*(self + 152) >> 3) & 1, v425[0].f32, v187);
  }

  if (BlendStates && C3DBlendStatesNeedsConstantColor(BlendStates) && (renderEncoder = self->_renderEncoder, v193 = v425[0], v194 = vmvnq_s8(vceqq_f32(*&renderEncoder->var10, v425[0])), (vmaxvq_u32(v194) & 0x80000000) != 0))
  {
    *&renderEncoder->var10 = v425[0];
    v194.i32[0] = v193.i32[1];
    LODWORD(v191) = v193.i32[3];
    LODWORD(v190) = v193.i32[2];
    [renderEncoder->var24[1] setBlendColorRed:*v193.i64 green:*v194.i64 blue:v190 alpha:v191];
    if (v189)
    {
      goto LABEL_184;
    }
  }

  else if (var1)
  {
LABEL_184:
    v195 = C3DMaterialGetColorBufferWriteMask(v189);
    goto LABEL_187;
  }

  v195 = 15;
LABEL_187:
  v196 = v367;
  if (commandCopy[9].i8[4])
  {
    v197 = 0;
  }

  else
  {
    v197 = v195;
  }

  v198 = *(v380 + 2968);
  *(v380 + 2968) = v197;
  v199 = self->_cache.blendStates;
  self->_cache.blendStates = BlendStates;
  if (v369 == v196 && vertexDescriptorHash == v184 && v199 == BlendStates && v198 == v197 && v133 && v175 == var5)
  {
    goto LABEL_216;
  }

  if (v23)
  {
    v200 = [(SCNMTLTessellator *)v364 newPipelineStateConfiguratorForMeshElement:self->_cache.metalMeshElement patchType:commandCopy[9].i8[5] & 7 device:self->_device];
  }

  else
  {
    v200 = 0;
  }

  IsWarmUp = C3DEngineContextIsWarmUp(self->_engineContext);
  v202 = IsWarmUp;
  if (*(self + 152) < 0)
  {
    v203 = 2;
  }

  else
  {
    v203 = IsWarmUp;
  }

  if (self->_renderPassParameters.multiVertexOutputStreamGenerator == 2)
  {
    v204 = 2;
  }

  else
  {
    v204 = 1;
  }

  v205 = self->_cache.metalMesh;
  if (v381.i32[0])
  {
    tessellationVertexDescriptorHash2 = [(SCNMTLMesh *)v205 tessellationVertexDescriptorHash];
    tessellationVertexDescriptor = [(SCNMTLMesh *)&self->_cache.metalMesh->super.isa tessellationVertexDescriptor];
  }

  else
  {
    tessellationVertexDescriptorHash2 = [(SCNMTLMesh *)v205 vertexDescriptorHash];
    tessellationVertexDescriptor = [(SCNMTLResourceManager *)self->_cache.metalMesh commandQueue];
  }

  v208 = self->_renderPassParameters.eyeCount;
  renderMode = self->_renderPassParameters.renderMode;
  if (*(v380 + 3136) == 1)
  {
    errors = self->_compilationIssues.errors;
  }

  else
  {
    errors = 0;
  }

  resourceManager = self->_resourceManager;
  v428.i64[0] = v367;
  v428.i64[1] = var1;
  v429.i64[0] = v373;
  v429.i64[1] = v384.i64[0];
  v430.i64[0] = v384.i64[0];
  v430.i64[1] = BlendStates;
  v431.i64[0] = v375;
  v431.i8[8] = v197;
  v431.i8[9] = var5;
  v431.i8[10] = v208;
  v431.i8[11] = v204;
  v431.i32[3] = 0;
  *&v432 = tessellationVertexDescriptor;
  *(&v432 + 1) = tessellationVertexDescriptorHash2;
  LOBYTE(v433) = renderMode;
  BYTE1(v433) = v203;
  *(&v433 + 2) = 0;
  WORD3(v433) = 0;
  *(&v433 + 1) = errors;
  LOBYTE(v434) = v381.i8[0];
  DWORD1(v434) = 0;
  *(&v434 + 1) = 0;
  *(&v434 + 1) = v200;
  *&v435 = 0;
  renderPipeline = [(SCNMTLResourceManager *)resourceManager renderResourceForProgramDesc:&v428 renderPassDescriptor:self->_currentRenderPassDescriptor, v363];
  self->_cache.renderPipeline = renderPipeline;
  if (v200)
  {
    _Block_release(v200);
    renderPipeline = self->_cache.renderPipeline;
  }

  if ([(SCNMTLRenderPipeline *)renderPipeline state])
  {
    state = [(SCNMTLRenderPipeline *)self->_cache.renderPipeline state];
    v214 = self->_renderEncoder;
    if (v214->var23 != state)
    {
      v214->var23 = state;
      [v214->var24[1] setRenderPipelineState:state];
    }

LABEL_216:
    v424 = 1;
    v215 = self->_cache.renderPipeline;
    if (!v215 || ![(SCNMTLRenderPipeline *)v215 state])
    {
      return;
    }

    v422 = 0u;
    v423 = 0u;
    v420 = 0u;
    v421 = 0u;
    frameBufferBindings = [(SCNMTLRenderPipeline *)self->_cache.renderPipeline frameBufferBindings];
    v217 = [(NSArray *)frameBufferBindings countByEnumeratingWithState:&v420 objects:v446 count:16];
    if (v217)
    {
      v218 = v217;
      v219 = *v421;
      do
      {
        for (i = 0; i != v218; ++i)
        {
          if (*v421 != v219)
          {
            objc_enumerationMutation(frameBufferBindings);
          }

          v221 = *(*(&v420 + 1) + 8 * i);
          bindBlock = [v221 bindBlock];
          (*(bindBlock + 16))(bindBlock, v221, self);
        }

        v218 = [(NSArray *)frameBufferBindings countByEnumeratingWithState:&v420 objects:v446 count:16];
      }

      while (v218);
    }

    if ([(SCNMTLRenderPipeline *)self->_cache.renderPipeline passBufferBindings])
    {
      Storage = C3DFXPassGetStorage(v384.i64[0]);
      v416 = 0u;
      v417 = 0u;
      v418 = 0u;
      v419 = 0u;
      v381.i64[0] = [(SCNMTLRenderPipeline *)self->_cache.renderPipeline passBufferBindings];
      v384.i64[0] = [v381.i64[0] countByEnumeratingWithState:&v416 objects:v445 count:16];
      if (v384.i64[0])
      {
        v383.i64[0] = *v417;
        do
        {
          v224 = 0;
          do
          {
            if (*v417 != v383.i64[0])
            {
              objc_enumerationMutation(v381.i64[0]);
            }

            v225 = *(*(&v416 + 1) + 8 * v224);
            if ([v225 type])
            {
              if ([v225 type] != 2)
              {
                goto LABEL_281;
              }

              Weak = objc_loadWeak(&self->_resourceManagerMonitor);
              v227 = Weak;
              v228 = *(v225 + 56);
              if (*(v228 + 16) == 1)
              {
                RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
                TextureSampler = *(v228 + 64);
                if (!TextureSampler)
                {
                  TextureSampler = *(v228 + 56);
                }

                TextureNamed = C3D::Pass::inputTextureNamed(self->_processingContext.renderGraphPass, [TextureSampler UTF8String]);
                if (!TextureNamed)
                {
                  TextureNamed = C3DRenderGraphGetTextureNamed(RenderGraph, [TextureSampler UTF8String]);
                  if (!TextureNamed)
                  {
                    if (v227)
                    {
                      renderGraph = [MEMORY[0x277CCACA8] stringWithFormat:@"No registered texture for binding %@ and symbol %@ in pass or render graph.\nPass: %s (%p)\nRender graph: %p", v225, TextureSampler, (**self->_processingContext.renderGraphPass)(self->_processingContext.renderGraphPass), self->_processingContext.renderGraphPass, RenderGraph];
                      goto LABEL_272;
                    }

LABEL_275:
                    TextureNamed = [(SCNMTLResourceManager *)self->_resourceManager defaultTexture];
                  }
                }

                defaultTexture = TextureNamed;
LABEL_277:
                v257 = self->_renderEncoder;
                v258 = *(v225 + 9);
                if (v258 != 0xFF)
                {
                  SCNMTLRenderCommandEncoder::setVertexTexture(self->_renderEncoder, defaultTexture, v258);
                }

                if ((~v258 & 0xFF00) != 0)
                {
                  SCNMTLRenderCommandEncoder::setFragmentTexture(v257, defaultTexture, v258 >> 8);
                }

                goto LABEL_281;
              }

              if (Storage)
              {
                v238 = *(v228 + 88);
                v239 = *(Storage + v238);
                if (v239)
                {
                  TextureSampler = C3DFXSamplerGetTextureSampler(*(Storage + v238));
                  Texture = C3DFXSamplerGetTexture(v239);
                  if (Texture || (Image = C3DFXSamplerGetImage(v239)) != 0 && (Texture = [(SCNMTLResourceManager *)self->_resourceManager renderResourceForImage:Image sampler:TextureSampler options:0 engineContext:self->_engineContext didFallbackToDefaultTexture:0]) != 0)
                  {
                    defaultTexture = Texture;
                    if (*(v225 + 12) != 255 || *(v225 + 11) != 255)
                    {
                      v242 = [SCNMTLResourceManager renderResourceForSampler:?];
                      v243 = v242;
                      v244 = self->_renderEncoder;
                      v245 = *(v225 + 9);
                      if (*(v225 + 9) != 0xFF && v244->var16[v245 + 3] != v242)
                      {
                        v244->var16[v245 + 3] = v242;
                        [v244->var24[1] setVertexSamplerState:v242 atIndex:?];
                      }

                      if ((~v245 & 0xFF00) != 0)
                      {
                        v246 = v245 >> 8;
                        if (v244->var19[v246 + 3] != v243)
                        {
                          v244->var19[v246 + 3] = v243;
                          [v244->var24[1] setFragmentSamplerState:v243 atIndex:?];
                        }
                      }
                    }

                    goto LABEL_277;
                  }

                  if (!v227)
                  {
                    goto LABEL_275;
                  }

                  v255 = MEMORY[0x277CCACA8];
                  v256 = C3DFXSamplerGetTexture(v239);
                  renderGraph = [v255 stringWithFormat:@"No texture or image provided for binding %@ by sampler %@.\nTexture: %@\nImage: %@", v225, TextureSampler, v256, C3DFXSamplerGetImage(v239)];
LABEL_272:
                  v253 = renderGraph;
                  goto LABEL_273;
                }

                if (!Weak)
                {
                  goto LABEL_275;
                }

                v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"No sampler found for binding %@ and input %@", v225, v228];
              }

              else
              {
                v251 = scn_default_log();
                if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
                {
                  [(SCNMTLRenderContext *)v444 _executeDrawCommand:v225, (v444 + 4)];
                  if (!v227)
                  {
                    goto LABEL_275;
                  }
                }

                else if (!v227)
                {
                  goto LABEL_275;
                }

                v228 = [MEMORY[0x277CCACA8] stringWithFormat:@"No pass storage for binding %@", v225, v362];
              }

              v253 = v228;
              TextureSampler = v225;
LABEL_273:
              defaultTexture = [(SCNMTLResourceManager *)self->_resourceManager defaultTexture];
              [v227 renderContext:self didFallbackToDefaultTextureForSource:TextureSampler message:v253];
              goto LABEL_277;
            }

            bufferSize = [v225 bufferSize];
            v382.i64[0] = &v363;
            MEMORY[0x28223BE20](bufferSize);
            v235 = &v363 - v234;
            if (Storage)
            {
              if ([v225 inputsCount] >= 1)
              {
                v236 = 0;
                v237 = 0;
                do
                {
                  memcpy(&v235[*(*(v225 + 48) + v236 + 8)], (Storage + *(*(*(v225 + 48) + v236) + 88)), *(*(v225 + 48) + v236 + 12));
                  ++v237;
                  v236 += 16;
                }

                while (v237 < [v225 inputsCount]);
              }
            }

            else
            {
              bzero(&v363 - v234, bufferSize);
            }

            v247 = *(v225 + 9);
            v248 = self->_renderEncoder;
            v428 = 0uLL;
            v429.i64[0] = 0;
            SCNMTLBufferPool::allocateAndCopy(v248->var25[0], v235, bufferSize, &v428);
            v249 = v428.i64[1];
            v250 = v429.i64[0];
            if (v247 != 0xFF)
            {
              SCNMTLRenderCommandEncoder::setVertexBuffer(v248, v428.i64[1], v429.i64[0], v247);
            }

            if ((~v247 & 0xFF00) != 0)
            {
              SCNMTLRenderCommandEncoder::setFragmentBuffer(v248, v249, v250, v247 >> 8);
            }

LABEL_281:
            ++v224;
          }

          while (v224 != v384.i64[0]);
          v384.i64[0] = [v381.i64[0] countByEnumeratingWithState:&v416 objects:v445 count:16];
        }

        while (v384.i64[0]);
      }
    }

    v259 = v376;
    if (geometry != v373)
    {
      v259 = 1;
    }

    if ((v259 & 1) != 0 || v369 != v367)
    {
      v260 = self->_cache.material ? [(SCNMTLResourceManager *)self->_resourceManager renderResourceForMaterial:v373 geometry:self->_cache.renderPipeline renderPipeline:self->_engineContext engineContext:?]: 0;
      self->_cache.metalShadable = v260;
      v412 = 0u;
      v413 = 0u;
      v414 = 0u;
      v415 = 0u;
      shadableBufferBindings = [(SCNMTLRenderPipeline *)self->_cache.renderPipeline shadableBufferBindings];
      v274 = [(NSArray *)shadableBufferBindings countByEnumeratingWithState:&v412 objects:v443 count:16];
      if (v274)
      {
        v275 = v274;
        v276 = *v413;
        do
        {
          for (j = 0; j != v275; ++j)
          {
            if (*v413 != v276)
            {
              objc_enumerationMutation(shadableBufferBindings);
            }

            v278 = *(*(&v412 + 1) + 8 * j);
            bindBlock2 = [v278 bindBlock];
            if (bindBlock2)
            {
              (*(bindBlock2 + 16))(bindBlock2, v278, self);
            }
          }

          v275 = [(NSArray *)shadableBufferBindings countByEnumeratingWithState:&v412 objects:v443 count:16];
        }

        while (v275);
      }
    }

    v280 = v374;
    if (commandCopy[9].i8[3] == 1)
    {
      if ((*(self + 152) & 0x20) != 0)
      {
        self->_lighting.currentLightingSet = vadd_s8(commandCopy[6], -1);
      }

      else
      {
        passInstance = self->_processingContext.passInstance;
        v460 = __invert_f4(*(passInstance + 3168));
        v383 = v460.columns[1];
        v384 = v460.columns[0];
        v381 = v460.columns[3];
        v382 = v460.columns[2];
        v282 = &commandCopy[6];
        v283 = self->_cache.renderPipeline;
        v284 = *&commandCopy[6] ^ v283 ^ self->_renderPassParameters.eyeCount ^ self->_renderPassParameters.renderMode;
        v411 = v284;
        if (self->_lighting.currentLightingHashKey != v284)
        {
          self->_lighting.currentLightingHashKey = v284;
          lightBufferBindings = [(SCNMTLRenderPipeline *)v283 lightBufferBindings];
          if (lightBufferBindings)
          {
            C3DLightingSystemGetLightingSetDesc(self->_processingContext.lightingSystem, v282, &self->_lighting.currentLightingDesc);
            v428.i64[0] = &v411;
            v376 = std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_lighting.frameLightingSetDatas.__table_.__bucket_list_.__ptr_, &v411);
            if (v376[3])
            {
              v405 = 0u;
              v406 = 0u;
              v403 = 0u;
              v404 = 0u;
              v285 = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v403 objects:v441 count:16];
              if (v285)
              {
                v286 = v285;
                v287 = *v404;
                do
                {
                  for (k = 0; k != v286; ++k)
                  {
                    if (*v404 != v287)
                    {
                      objc_enumerationMutation(lightBufferBindings);
                    }

                    v289 = self->_renderEncoder;
                    v290 = v376[3];
                    v291 = v376[4];
                    v292 = *(*(*(&v403 + 1) + 8 * k) + 9);
                    if (*(*(*(&v403 + 1) + 8 * k) + 9) != 0xFF)
                    {
                      SCNMTLRenderCommandEncoder::setVertexBuffer(self->_renderEncoder, v376[3], v376[4], v292);
                    }

                    if ((~v292 & 0xFF00) != 0)
                    {
                      SCNMTLRenderCommandEncoder::setFragmentBuffer(v289, v290, v291, v292 >> 8);
                    }
                  }

                  v286 = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v403 objects:v441 count:16];
                }

                while (v286);
              }
            }

            else
            {
              v409 = 0u;
              v410 = 0u;
              v407 = 0u;
              v408 = 0u;
              geometry = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v407 objects:v442 count:16];
              if (geometry)
              {
                var1 = (passInstance + 3168);
                v370 = *v408;
                do
                {
                  v296 = 0;
                  do
                  {
                    if (*v408 != v370)
                    {
                      objc_enumerationMutation(lightBufferBindings);
                    }

                    v373 = v296;
                    v297 = *(*(&v407 + 1) + 8 * v296);
                    if ([v297 semanticsCount] >= 1)
                    {
                      v298 = [v297 bufferSize] * self->_renderPassParameters.eyeCount;
                      v299 = v376;
                      v376[5] = v298;
                      v426 = 0uLL;
                      *&v427[0] = 0;
                      SCNMTLBufferPool::allocate(self->_frameConstantBufferPool, v298, &v426);
                      v300 = *&v427[0];
                      v299[3] = v426.i64[1];
                      v299[4] = v300;
                      if (self->_renderPassParameters.eyeCount)
                      {
                        v301 = 0;
                        do
                        {
                          v302 = 0;
                          v303 = (var1 + 64 * v301);
                          v304 = *v303;
                          v305 = v303[1];
                          v306 = v303[2];
                          v307 = v303[3];
                          v447 = v384;
                          v448 = v383;
                          v449 = v382;
                          v450 = v381;
                          do
                          {
                            *(&v428 + v302) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v304, COERCE_FLOAT(*(&v447 + v302))), v305, *&v447.f32[v302 / 4], 1), v306, *(&v447 + v302), 2), v307, *(&v447 + v302), 3);
                            v302 += 16;
                          }

                          while (v302 != 64);
                          v308 = 0;
                          v309 = v429;
                          v310 = v430;
                          v311 = v431;
                          *&self->_lighting.needLightingSpaceTransformation = v428;
                          *&self->_anon_3848[8] = v309;
                          *&self->_anon_3848[24] = v310;
                          *&self->_anon_3848[40] = v311;
                          v447 = v384;
                          v448 = v383;
                          v449 = v382;
                          v450 = v381;
                          do
                          {
                            *(&v428 + v308) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v304, COERCE_FLOAT(*(&v447 + v308))), v305, *&v447.f32[v308 / 4], 1), v306, *(&v447 + v308), 2), v307, *(&v447 + v308), 3);
                            v308 += 16;
                          }

                          while (v308 != 64);
                          v312 = v429;
                          v313 = v430;
                          v314 = v431;
                          *&self->_anon_3848[56] = v428;
                          *&self->_anon_3848[72] = v312;
                          *&self->_anon_3848[88] = v313;
                          *&self->_anon_3848[104] = v314;
                          *(v380 + 2240) = 1;
                          if ([v297 semanticsCount] >= 1)
                          {
                            v315 = 0;
                            v316 = 0;
                            do
                            {
                              (*(*(*(v297 + 48) + v315) + 16))();
                              ++v316;
                              v315 += 16;
                            }

                            while (v316 < [v297 semanticsCount]);
                          }

                          bufferSize2 = [v297 bufferSize];
                          v426.i64[0] += bufferSize2;
                          ++v301;
                        }

                        while (v301 < self->_renderPassParameters.eyeCount);
                      }
                    }

                    v318 = self->_renderEncoder;
                    v319 = v376[3];
                    v320 = v376[4];
                    v321 = *(v297 + 9);
                    if (v321 != 0xFF)
                    {
                      SCNMTLRenderCommandEncoder::setVertexBuffer(self->_renderEncoder, v376[3], v376[4], v321);
                    }

                    if ((~v321 & 0xFF00) != 0)
                    {
                      SCNMTLRenderCommandEncoder::setFragmentBuffer(v318, v319, v320, v321 >> 8);
                    }

                    v296 = (&v373->var0.var0.var0 + 1);
                  }

                  while ((&v373->var0.var0.var0 + 1) != geometry);
                  geometry = [(NSArray *)lightBufferBindings countByEnumeratingWithState:&v407 objects:v442 count:16];
                }

                while (geometry);
              }
            }
          }
        }

        v280 = v374;
      }
    }

    if (v363)
    {
      if ((*(self + 152) & 0x20) != 0)
      {
        *&self->_anon_31b8[1336] = v377;
      }

      v401 = 0u;
      v402 = 0u;
      v399 = 0u;
      v400 = 0u;
      v384.i64[0] = [(SCNMTLRenderPipeline *)self->_cache.renderPipeline nodeBufferBindings];
      v322 = [v384.i64[0] countByEnumeratingWithState:&v399 objects:v440 count:16];
      if (v322)
      {
        v323 = v322;
        v324 = *v400;
        v382.i64[0] = *v400;
        do
        {
          v325 = 0;
          v383.i64[0] = v323;
          do
          {
            if (*v400 != v324)
            {
              objc_enumerationMutation(v384.i64[0]);
            }

            v326 = *(*(&v399 + 1) + 8 * v325);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v326 semanticsCount] < 1)
              {
                v340 = scn_default_log();
                if (os_log_type_enabled(v340, OS_LOG_TYPE_ERROR))
                {
                  [(SCNMTLRenderContext *)&v426 _executeDrawCommand:v340];
                }
              }

              else
              {
                bufferSize3 = [v326 bufferSize];
                v328 = self->_renderPassParameters.eyeCount;
                v389[0] = MEMORY[0x277D85DD0];
                v389[1] = 3221225472;
                v390 = __43__SCNMTLRenderContext__executeDrawCommand___block_invoke;
                v391 = &unk_2782FD490;
                v394 = v280;
                v395 = v377;
                v397 = EffectiveCalculationMode;
                v398 = v328;
                v396 = bufferSize3;
                selfCopy = self;
                v393 = v326;
                CurrentBatchNodes = C3DDynamicBatchingSystemGetCurrentBatchNodes(self->_processingContext.dynamicBatchingSystem, &v424);
                v330 = bufferSize3 * v328;
                if (v424 < 2)
                {
                  MEMORY[0x28223BE20](CurrentBatchNodes);
                  (v390)(v389, v375, &v363 - ((v330 + 15) & 0xFFFFFFFFFFFFFFF0));
                  v341 = *(v326 + 9);
                  v342 = self->_renderEncoder;
                  v428 = 0uLL;
                  v429.i64[0] = 0;
                  SCNMTLBufferPool::allocateAndCopy(v342->var25[0], &v363 - ((v330 + 15) & 0xFFFFFFFFFFFFFFF0), v330, &v428);
                  v343 = v428.i64[1];
                  v344 = v429.i64[0];
                  if (v341 != 0xFF)
                  {
                    SCNMTLRenderCommandEncoder::setVertexBuffer(v342, v428.i64[1], v429.i64[0], v341);
                  }

                  if ((~v341 & 0xFF00) != 0)
                  {
                    SCNMTLRenderCommandEncoder::setFragmentBuffer(v342, v343, v344, v341 >> 8);
                  }

                  v280 = v374;
                  v324 = v382.i64[0];
                  v323 = v383.i64[0];
                }

                else
                {
                  v331 = CurrentBatchNodes;
                  v428 = 0uLL;
                  v429.i64[0] = 0;
                  SCNMTLBufferPool::allocate(self->_frameConstantBufferPool, v424 * v330, &v428);
                  if (v424 >= 1)
                  {
                    v332 = 0;
                    v333 = v428.i64[0];
                    do
                    {
                      (v390)(v389, *(v331 + 8 * v332), v333);
                      v333 += v330;
                      ++v332;
                    }

                    while (v332 < v424);
                  }

                  v334 = self->_renderEncoder;
                  v335 = v428.i64[1];
                  v336 = v429.i64[0];
                  v337 = *(v326 + 9);
                  if (v337 != 0xFF)
                  {
                    SCNMTLRenderCommandEncoder::setVertexBuffer(self->_renderEncoder, v428.i64[1], v429.i64[0], v337);
                  }

                  if ((~v337 & 0xFF00) != 0)
                  {
                    SCNMTLRenderCommandEncoder::setFragmentBuffer(v334, v335, v336, v337 >> 8);
                  }

                  v324 = v382.i64[0];
                  v323 = v383.i64[0];
                }
              }
            }

            else
            {
              if (![v326 bindBlock])
              {
                v338 = scn_default_log();
                if (os_log_type_enabled(v338, OS_LOG_TYPE_FAULT))
                {
                  [(SCNMTLRenderContext *)&v447 _executeDrawCommand:v338];
                }
              }

              bindBlock3 = [v326 bindBlock];
              (*(bindBlock3 + 16))(bindBlock3, v326, self);
            }

            ++v325;
          }

          while (v325 != v323);
          v323 = [v384.i64[0] countByEnumeratingWithState:&v399 objects:v440 count:16];
        }

        while (v323);
      }
    }

    v345 = v375;
    if (v369 != v367)
    {
      v346 = self->_renderEncoder;
      buffer = self->_sceneUniforms.buffer;
      offset = self->_sceneUniforms.offset;
      sceneBuffer = self->_cache.renderPipeline->_sceneBuffer;
      if (sceneBuffer.vertexIndex != -1)
      {
        SCNMTLRenderCommandEncoder::setVertexBuffer(self->_renderEncoder, self->_sceneUniforms.buffer, self->_sceneUniforms.offset, sceneBuffer.vertexIndex);
      }

      if ((~*&sceneBuffer & 0xFF00) != 0)
      {
        SCNMTLRenderCommandEncoder::setFragmentBuffer(v346, buffer, offset, *&sceneBuffer >> 8);
      }
    }

    stats = v424;
    if (v345 && v424 <= 1)
    {
      v351 = *&self->_nodeUniforms.probeCacheIndex;
      v352 = *&self->_anon_31b8[8];
      v353 = vmulq_f32(*&self->_nodeUniforms.instanceNode, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v352, v352, 0xCuLL), v352, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v351, v351), v351, 0xCuLL))), vextq_s8(vuzp1q_s32(v352, v352), v352, 0xCuLL), vextq_s8(vextq_s8(v351, v351, 0xCuLL), v351, 8uLL)));
      v354 = (v353.f32[2] + vaddv_f32(*v353.f32)) > 0.0;
      v355 = self->_renderEncoder;
      v356 = v366;
      v357 = HIDWORD(v363);
      if (v355->var0)
      {
        v354 = *(&xmmword_21C2816A0 + v354);
      }

      if (v355->var1 == v354)
      {
        goto LABEL_403;
      }
    }

    else
    {
      v355 = self->_renderEncoder;
      v354 = !v355->var0;
      v356 = v366;
      v357 = HIDWORD(v363);
      if (v355->var1 == v354)
      {
LABEL_403:
        if (v357)
        {
          [SCNMTLRenderContext _setMeshBuffers:?];
          stats = v424;
        }

        if (stats <= 1)
        {
          stats = [(SCNMTLResourceManager *)self->_cache.metalMeshElement stats];
        }

        if (v356)
        {
          if (stats <= 1)
          {
            v358 = 1;
          }

          else
          {
            v358 = stats;
          }

          v359 = commandCopy[9].i8[5] & 7;
          v360 = self->_renderEncoder;
          v361 = *v365;
          v383 = *(v380 + 363);
          v384 = v361;
          SCNMTLRenderCommandEncoder::_bindPendingTextures(v360);
          SCNMTLRenderCommandEncoder::applyChangedStates(v360);
          v428 = v384;
          v429 = v383;
          v430.i64[0] = v358;
          v430.i64[1] = self;
          v431.i8[0] = v359;
          *(v431.i32 + 1) = 0;
          v431.i32[1] = 0;
          [(SCNMTLTessellator *)v364 draw:&v428];
        }

        else
        {
          [(SCNMTLRenderContext *)self _drawMeshElement:stats instanceCount:?];
        }

        return;
      }
    }

    v355->var1 = v354;
    v355->var5 = 1;
    goto LABEL_403;
  }

  self->_cache.renderPipeline = 0;
  self->_cache.program = 0;
  if (v202)
  {
    if (var1)
    {
      [(SCNMTLRenderContext *)self _prepareMaterialTextures:?];
    }
  }

  else if (([SCNMTLRenderContext _executeDrawCommand:]::done & 1) == 0)
  {
    [SCNMTLRenderContext _executeDrawCommand:]::done = 1;
    v261 = scn_default_log();
    if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
    {
      [SCNMTLRenderContext _executeDrawCommand:];
    }
  }
}

uint64_t __43__SCNMTLRenderContext__executeDrawCommand___block_invoke(uint64_t result, float32x4_t *a2)
{
  v2 = result;
  *(*(result + 32) + 14048) = a2;
  if (a2)
  {
    WorldTransformPtr = C3DTransformTreeGetWorldTransformPtr(*(*(result + 32) + 2264), a2[5].i32[2]);
    v5 = WorldTransformPtr[1];
    v6 = WorldTransformPtr[2];
    v7 = WorldTransformPtr[3];
    v8 = *(v2 + 32);
    v8[794] = *WorldTransformPtr;
    v8[795] = v5;
    v8[796] = v6;
    v8[797] = v7;
    v9 = *(v2 + 48);
    if (v9)
    {
      *&v10 = C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode(v9, *(v2 + 72), *(*(v2 + 32) + 12704), *(*(v2 + 32) + 12720), *(*(v2 + 32) + 12736), *(*(v2 + 32) + 12752));
      v11 = *(v2 + 32);
      v11[794] = v10;
      v11[795] = v12;
      v11[796] = v13;
      v11[797] = v14;
    }

    result = C3DNodeGetLastFrameWorldMatrix(a2);
    v15 = *(result + 16);
    v16 = *(result + 32);
    v17 = *(result + 48);
    v18 = *(v2 + 32);
    v18[798] = *result;
    v18[799] = v15;
    v18[800] = v16;
    v18[801] = v17;
  }

  else
  {
    v19 = *(MEMORY[0x277D860B8] + 16);
    v20 = *(MEMORY[0x277D860B8] + 32);
    v21 = *(MEMORY[0x277D860B8] + 48);
    v22 = *(result + 32);
    v22[794] = *MEMORY[0x277D860B8];
    v22[795] = v19;
    v22[796] = v20;
    v22[797] = v21;
    v23 = *(result + 32);
    v23[801] = v23[797];
    v23[800] = v23[796];
    v23[799] = v23[795];
    v23[798] = v23[794];
  }

  *(*(v2 + 32) + 14056) = 0;
  *(*(v2 + 32) + 14064) = *(v2 + 56);
  if (*(v2 + 76))
  {
    v24 = 0;
    do
    {
      result = [*(v2 + 40) semanticsCount];
      if (result >= 1)
      {
        v25 = 0;
        for (i = 0; i < result; ++i)
        {
          (*(*(*(*(v2 + 40) + 48) + v25) + 16))();
          result = [*(v2 + 40) semanticsCount];
          v25 += 16;
        }
      }

      ++v24;
    }

    while (v24 < *(v2 + 76));
  }

  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 12704);
  v5 = *(a4 + 12720);
  v6 = *(a4 + 12752);
  *(a2 + 32) = *(a4 + 12736);
  *(a2 + 48) = v6;
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 2) == 0)
  {
    *(a4 + 14056) = v6 | 2;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v26[0] = v8;
        v26[1] = v9;
        v26[2] = v10;
        v26[3] = v11;
        do
        {
          v27[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v26[v12])), v15, *&v26[v12], 1), v16, v26[v12], 2), v17, v26[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v27[1];
        v19 = v27[2];
        v20 = v27[3];
        v21 = (a4 + 13216 + (v7 << 6));
        *v21 = v27[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  v22 = a4 + (a5 << 6);
  result = *(v22 + 13216);
  v24 = *(v22 + 13232);
  v25 = *(v22 + 13264);
  *(a2 + 32) = *(v22 + 13248);
  *(a2 + 48) = v25;
  *a2 = result;
  *(a2 + 16) = v24;
  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  if (a3 != 8)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_4_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *a2 = *(a4 + 14080);
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_148(uint64_t a1, simd_float4x4 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 2) == 0)
  {
    *(a4 + 14056) = v6 | 2;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v22[0] = v8;
        v22[1] = v9;
        v22[2] = v10;
        v22[3] = v11;
        do
        {
          v23[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v22[v12])), v15, *&v22[v12], 1), v16, v22[v12], 2), v17, v22[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v23[1];
        v19 = v23[2];
        v20 = v23[3];
        v21 = (a4 + 13216 + (v7 << 6));
        *v21 = v23[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  *a2 = __invert_f4(*(a4 + (a5 << 6) + 13216));
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_2_154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 1) == 0)
  {
    *(a4 + 14056) = v6 | 1;
    if ((v6 & 2) == 0)
    {
      *(a4 + 14056) = v6 | 3;
      if (!a6)
      {
        goto LABEL_11;
      }

      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v44[0] = v8;
        v44[1] = v9;
        v44[2] = v10;
        v44[3] = v11;
        do
        {
          v45[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v44[v12])), v15, *&v44[v12], 1), v16, v44[v12], 2), v17, v44[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v45[1];
        v19 = v45[2];
        v20 = v45[3];
        v21 = (a4 + 13216 + (v7 << 6));
        *v21 = v45[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }

    if (a6)
    {
      v22 = a4 + 12832;
      v23 = a6;
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        v29 = *(v22 + 384);
        v30 = *(v22 + 400);
        v31 = *(v22 + 416);
        v32 = *(v22 + 432);
        v33 = vmulq_f32(v29, v29);
        v34 = vmulq_f32(v30, v30);
        v35 = vmulq_f32(v31, v31);
        v36 = vzip2q_s32(v33, v35);
        v37 = vzip1q_s32(vzip1q_s32(v33, v35), v34);
        v38 = vtrn2q_s32(v33, v34);
        v38.i32[2] = v35.i32[1];
        v39 = vdivq_f32(_Q0, vaddq_f32(vzip1q_s32(v36, vdupq_laneq_s32(v34, 2)), vaddq_f32(v37, v38)));
        *v22 = vmulq_n_f32(v29, v39.f32[0]);
        *(v22 + 16) = vmulq_lane_f32(v30, *v39.f32, 1);
        *(v22 + 32) = vmulq_laneq_f32(v31, v39, 2);
        *(v22 + 48) = v32;
        v22 += 64;
        --v23;
      }

      while (v23);
    }
  }

LABEL_11:
  v40 = a4 + (a5 << 6);
  result = *(v40 + 12832);
  v42 = *(v40 + 12848);
  v43 = *(v40 + 12880);
  *(a2 + 32) = *(v40 + 12864);
  *(a2 + 48) = v43;
  *a2 = result;
  *(a2 + 16) = v42;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_3_160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 4) == 0)
  {
    *(a4 + 14056) = v6 | 4;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = v13[12];
        v15 = v13[13];
        v16 = v13[14];
        v17 = v13[15];
        v26[0] = v8;
        v26[1] = v9;
        v26[2] = v10;
        v26[3] = v11;
        do
        {
          v27[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v26[v12])), v15, *&v26[v12], 1), v16, v26[v12], 2), v17, v26[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v27[1];
        v19 = v27[2];
        v20 = v27[3];
        v21 = (a4 + 13600 + (v7 << 6));
        *v21 = v27[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  v22 = a4 + (a5 << 6);
  result = *(v22 + 13600);
  v24 = *(v22 + 13616);
  v25 = *(v22 + 13648);
  *(a2 + 32) = *(v22 + 13632);
  *(a2 + 48) = v25;
  *a2 = result;
  *(a2 + 16) = v24;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_4_166(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 12768);
  v5 = *(a4 + 12784);
  v6 = *(a4 + 12816);
  *(a2 + 32) = *(a4 + 12800);
  *(a2 + 48) = v6;
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

float __39__SCNMTLRenderContext_registerBindings__block_invoke_5(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 2744);
  *a2 = result;
  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_6(uint64_t a1, simd_float4x4 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 14056);
  if ((v6 & 4) == 0)
  {
    *(a4 + 14056) = v6 | 4;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 12704);
      v9 = *(a4 + 12720);
      v10 = *(a4 + 12736);
      v11 = *(a4 + 12752);
      do
      {
        v12 = 0;
        v13 = (a4 + 2288 + 704 * v7);
        v14 = v13[12];
        v15 = v13[13];
        v16 = v13[14];
        v17 = v13[15];
        v22[0] = v8;
        v22[1] = v9;
        v22[2] = v10;
        v22[3] = v11;
        do
        {
          v23[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v22[v12])), v15, *&v22[v12], 1), v16, v22[v12], 2), v17, v22[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v23[1];
        v19 = v23[2];
        v20 = v23[3];
        v21 = (a4 + 13600 + (v7 << 6));
        *v21 = v23[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  *a2 = __invert_f4(*(a4 + (a5 << 6) + 13600));
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  C3DNodeGetLocalBoundingBox(a4[878].i64[0], &v8);
  v6 = vaddq_f32(v8, v9);
  a4[874] = vsubq_f32(v8, v9);
  a4[875] = v6;
  result = a4[875];
  *a2 = a4[874];
  *(a2 + 16) = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  C3DNodeGetLocalBoundingBox(a4[878].i64[0], &v13);
  v6 = a4[794];
  v7 = a4[795];
  v8 = a4[796];
  v9 = v14;
  v9.i32[1] = v14.i32[0];
  v10 = vaddq_f32(a4[797], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v7, *v13.f32, 1), v6, v13.f32[0]), v8, v13, 2));
  v9.i32[2] = v14.i32[0];
  v11 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v6, v9)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v14.i8, 1), v14), v7))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v14, v14), v14), v8)));
  a4[876] = vsubq_f32(v10, v11);
  a4[877] = vaddq_f32(v10, v11);
  result = a4[877];
  *a2 = a4[876];
  *(a2 + 16) = result;
  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_9(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 14048);
  if (v5)
  {
    C3DNodeGetWorldAlpha(v5);
  }

  else
  {
    v6 = 1.0;
  }

  *a2 = v6;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LightProbesSystem = C3DLightingSystemGetLightProbesSystem(*(a4 + 2224));
  SphericalHarmonicsOrder = C3DLightProbesSystemGetSphericalHarmonicsOrder(LightProbesSystem);
  if (SphericalHarmonicsOrder == 3)
  {
    if (C3DNodeGetMovability(*(a4 + 14048)) || !C3DNodeGetLocalBoundingBox(*(a4 + 14048), &v34))
    {
      C3DLightProbesQuerySH3(LightProbesSystem, *(a4 + 14064), &v36, *(a4 + 12752));
    }

    else
    {
      v19 = *(a4 + 12704);
      v20 = *(a4 + 12720);
      v21 = *(a4 + 12736);
      v22 = vaddq_f32(*(a4 + 12752), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v20, *v34.f32, 1), v19, v34.f32[0]), v21, v34, 2));
      v22.i32[3] = 1.0;
      v23 = v35;
      v23.i32[1] = v35.i32[0];
      v23.i32[2] = v35.i32[0];
      C3DLightProbesQueryBoxSH3(LightProbesSystem, *(a4 + 14064), &v36, v22, vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v19, v23)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v35.i8, 1), v35), v20))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v35, v35), v35), v21))));
    }

    if (a3 != 112)
    {
      v24 = scn_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        __39__SCNMTLRenderContext_registerBindings__block_invoke_10_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
      }
    }

    v32 = v41;
    *(a2 + 64) = v40;
    *(a2 + 80) = v32;
    *(a2 + 96) = v42;
    v33 = v37;
    *a2 = v36;
    *(a2 + 16) = v33;
    result = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = result;
  }

  else if (SphericalHarmonicsOrder == 2)
  {
    C3DLightProbesQuerySH2(LightProbesSystem, *(a4 + 14064), &v36, *(a4 + 12752));
    if (a3 != 48)
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        __39__SCNMTLRenderContext_registerBindings__block_invoke_10_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    v18 = v37;
    *a2 = v36;
    *(a2 + 16) = v18;
    result.n128_u64[0] = v38;
    *(a2 + 32) = v38;
  }

  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 9);
  v6 = *(a2 + 10);
  v7 = [*(a3 + 15232) bufferAtIndices:*(a2 + 9)];
  if ([v7 buffer])
  {
    v8 = *(a2 + 16);
    if (v8)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v26 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(a3 + 248) + 3392) useResource:*(*(&v26 + 1) + 8 * i) usage:4];
          }

          v10 = [v8 countByEnumeratingWithState:&v26 objects:v33 count:16];
        }

        while (v10);
      }
    }

    v13 = *(a3 + 248);
    v14 = [v7 buffer];
    v15 = [v7 offset];
    v16 = *(a2 + 9);
    if (v16 != 0xFF)
    {
      SCNMTLRenderCommandEncoder::setVertexBuffer(v13, v14, v15, v16);
    }

    if ((~v16 & 0xFF00) != 0)
    {
      v17 = v16 >> 8;
      v18 = v13;
      v19 = v14;
      v20 = v15;
LABEL_14:
      SCNMTLRenderCommandEncoder::setFragmentBuffer(v18, v19, v20, v17);
    }
  }

  else if (v5 != -1 && (v21 = *(a3 + 248), !*(v21 + 16 * v5 + 80)) || v6 != -1 && (v21 = *(a3 + 248), !*(v21 + 16 * v6 + 1728)))
  {
    v22 = [objc_msgSend(a2 "argument")];
    v23 = *(a2 + 9);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    SCNMTLBufferPool::allocate(*(v21 + 3400), v22, &v30);
    bzero(v30, v22);
    v24 = v31;
    v25 = v32;
    if (v23 != 0xFF)
    {
      SCNMTLRenderCommandEncoder::setVertexBuffer(v21, v31, v32, v23);
    }

    if ((~v23 & 0xFF00) != 0)
    {
      v17 = v23 >> 8;
      v18 = v21;
      v19 = v24;
      v20 = v25;
      goto LABEL_14;
    }
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_2_204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a3 + 15232) textureAtIndices:*(a2 + 9)];
  if (!v5)
  {
    v5 = [*(a3 + 112) defaultTexture];
    Weak = objc_loadWeak((a3 + 15472));
    if (Weak)
    {
      [Weak renderContext:a3 didFallbackToDefaultTextureForSource:a2 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find texture for binding %@ and shadable %@", a2, *(a3 + 15232))}];
    }
  }

  v7 = *(a3 + 248);
  v8 = *(a2 + 9);
  if (v8 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(*(a3 + 248), v5, v8);
  }

  if ((~v8 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v5, v8 >> 8);
  }

  v9 = *(a2 + 11);
  v10 = *(a2 + 12);
  if (v10 != 255 || v9 != 255)
  {
    v11 = [*(a3 + 15232) samplerAtIndices:v9 | (v10 << 8)];
    v12 = v11;
    v13 = *(a3 + 248);
    if (v9 != 255 && *(v13 + 1600 + 8 * v9) != v11)
    {
      *(v13 + 1600 + 8 * v9) = v11;
      [*(v13 + 3392) setVertexSamplerState:v11 atIndex:?];
    }

    if (v10 != 255 && *(v13 + 3248 + 8 * v10) != v12)
    {
      *(v13 + 3248 + 8 * v10) = v12;
      v14 = *(v13 + 3392);

      [v14 setFragmentSamplerState:v12 atIndex:?];
    }
  }
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_3_210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a3 + 15232) samplerAtIndices:*(a2 + 9)];
  v6 = result;
  v7 = *(a3 + 248);
  v8 = *(a2 + 9);
  if (v8 != 0xFF && *(v7 + 1600 + 8 * v8) != result)
  {
    *(v7 + 1600 + 8 * v8) = result;
    result = [*(v7 + 3392) setVertexSamplerState:result atIndex:?];
  }

  if ((~v8 & 0xFF00) != 0)
  {
    v9 = v8 >> 8;
    if (*(v7 + 3248 + 8 * v9) != v6)
    {
      *(v7 + 3248 + 8 * v9) = v6;
      v10 = *(v7 + 3392);

      return [v10 setFragmentSamplerState:v6 atIndex:?];
    }
  }

  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4_216(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[31];
  v4 = a3[1857];
  v5 = a3[1858];
  v6 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(a3[31], a3[1857], a3[1858], v6);
  }

  if ((~v6 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentBuffer(v3, v4, v5, v6 >> 8);
  }
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_5_222(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 14872);
  v3 = *(a2 + 9);
  v4 = *(a3 + 248);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = SCNMTLBufferPool::allocateAndCopy(*(v4 + 3400), &v8, 4uLL, &v9);
  v6 = v10;
  v7 = v11;
  if (v3 != 0xFF)
  {
    result = SCNMTLRenderCommandEncoder::setVertexBuffer(v4, v10, v11, v3);
  }

  if ((~v3 & 0xFF00) != 0)
  {
    return SCNMTLRenderCommandEncoder::setFragmentBuffer(v4, v6, v7, v3 >> 8);
  }

  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_6_228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LightProbesSystem = C3DLightingSystemGetLightProbesSystem(*(a3 + 2224));
  if (C3DLightProbesSystemGetSphericalHarmonicsOrder(LightProbesSystem) != 3)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_6_228_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  SCNMTLBufferPool::allocate(*(a3 + 2088), 112, &v18);
  C3DLightProbesQuerySH3(LightProbesSystem, *(a3 + 14064), v18, *(a3 + 12752));
  v14 = *(a3 + 248);
  v15 = v19;
  v16 = v20;
  v17 = *(a2 + 9);
  if (v17 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(v14, v19, v20, v17);
  }

  if ((~v17 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentBuffer(v14, v15, v16, v17 >> 8);
  }
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { FMOV            V0.4S, #1.0 }

  v22 = _Q0;
  v10 = *(a3 + 15192);
  if (v10)
  {
    v11 = *(a3 + 2900) * *(a3 + 2436);
    *&v18 = C3DMeshElementGetPointSize(v10) * v11;
    MinimumPointScreenRadius = C3DMeshElementGetMinimumPointScreenRadius(*(a3 + 15192));
    DWORD2(v22) = C3DMeshElementGetMaximumPointScreenRadius(*(a3 + 15192));
    *&v22 = __PAIR64__(LODWORD(MinimumPointScreenRadius), v18);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  result = SCNMTLBufferPool::allocateAndCopy(*(a3 + 2088), &v22, 0x10uLL, &v19);
  v13 = *(a3 + 248);
  v14 = v20;
  v15 = v21;
  v16 = *(a2 + 9);
  if (v16 != 0xFF)
  {
    result = SCNMTLRenderCommandEncoder::setVertexBuffer(v13, v20, v21, v16);
  }

  if ((~v16 & 0xFF00) != 0)
  {
    return SCNMTLRenderCommandEncoder::setFragmentBuffer(v13, v14, v15, v16 >> 8);
  }

  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_2_244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  v4 = *(a3 + 14760);
  v5 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v3, v4, v5);
  }

  if ((~v5 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v4, v5 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_3_250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  v4 = *(a3 + 14768);
  v5 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v3, v4, v5);
  }

  if ((~v5 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v4, v5 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4_256(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a3 + 112) areaLightPrecomputedDataTexture];
  v6 = *(a3 + 248);
  v7 = *(a2 + 9);
  if (v7 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v6, v5, v7);
  }

  if ((~v7 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v6, v5, v7 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_5_262(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 2208);
  if (!v5)
  {
    if ((*(a3 + 152) & 0x40) != 0)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = -1.0;
    }

    C3DSetupHaltonFilterKernelConic(v9, 32, 1.0, 1.0, v6);
    v5 = [*(a3 + 120) newBufferWithBytes:v9 length:512 options:0];
    *(a3 + 2208) = v5;
  }

  v7 = *(a3 + 248);
  v8 = *(a2 + 9);
  if (v8 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(v7, v5, 0, v8);
  }

  if ((~v8 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentBuffer(v7, v5, 0, v8 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_6_265(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(*(a4 + 15240), a2, 0);
  if (EffectSlot)
  {
    v7 = [*(a4 + 112) renderResourceForEffectSlot:EffectSlot withEngineContext:*(a4 + 144) didFallbackToDefaultTexture:0];
    v29 = v7;
    TextureSampler = C3DEffectSlotGetTextureSampler(EffectSlot);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    TextureSampler = 0;
  }

  v7 = [*(a4 + 112) defaultTexture];
  v29 = v7;
  if (!v7)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  Weak = objc_loadWeak((a4 + 15472));
  if (Weak)
  {
    [Weak renderContext:a4 didFallbackToDefaultTextureForSource:a3 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find texture for binding %@ and effect slot %@", a3, EffectSlot)}];
  }

LABEL_10:
  if (!TextureSampler)
  {
    C3DTextureSamplerGetDefault();
  }

  v18 = *(a3 + 11);
  v19 = *(a3 + 12);
  if ([v7 pixelFormat] == 520 || objc_msgSend(v7, "pixelFormat") == 500)
  {
    v20 = [SCNMTLResourceManager renderResourceForSampler:?];
    v21 = *(*(a4 + 248) + 3392);
    if (*(a3 + 9) != 255)
    {
      v22 = scn_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __39__SCNMTLRenderContext_registerBindings__block_invoke_6_265_cold_2();
      }
    }

    if (*(a3 + 10) != 255)
    {
      SCNMTLEnsureIOSurfaceBackingBufferValidity(*(a4 + 240), &v29, 1u);
      [v21 setFragmentTexture:v29 atTextureIndex:*(a3 + 10) samplerState:v20 atSamplerIndex:v19];
    }
  }

  else
  {
    v23 = *(a4 + 248);
    v24 = *(a3 + 9);
    if (v24 != 0xFF)
    {
      SCNMTLRenderCommandEncoder::setVertexTexture(*(a4 + 248), v7, v24);
    }

    if ((~v24 & 0xFF00) != 0)
    {
      SCNMTLRenderCommandEncoder::setFragmentTexture(v23, v7, v24 >> 8);
    }

    if (v19 != -1 || v18 != -1)
    {
      v26 = [SCNMTLResourceManager renderResourceForSampler:?];
      v27 = v26;
      v28 = *(a4 + 248);
      if (v18 != -1 && *(v28 + 1600 + 8 * v18) != v26)
      {
        *(v28 + 1600 + 8 * v18) = v26;
        [*(v28 + 3392) setVertexSamplerState:v26 atIndex:v18];
      }

      if (v19 != -1 && *(v28 + 3248 + 8 * v19) != v27)
      {
        *(v28 + 3248 + 8 * v19) = v27;
        [*(v28 + 3392) setFragmentSamplerState:v27 atIndex:v19];
      }
    }
  }
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_275(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 1)
  {
    C3DEffectCommonProfileIsUsingAmbientOcclusion(*(a3 + 15240));
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_3_283(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if ((*(a3 + 152) & 0x20) != 0)
  {
    v4 = a3 + 8 * *(a3 + v3 + 14080);
    v5 = 6552;
  }

  else
  {
    v4 = a3 + 8 * v3;
    v5 = 14880;
  }

  v6 = *(v4 + v5);
  if (v6)
  {
    v7 = *(a3 + 248);
    v8 = *(a2 + 9);
    if (*(a2 + 9) != 0xFF)
    {
      SCNMTLRenderCommandEncoder::setVertexTexture(v7, v6, v8);
    }

    if ((~v8 & 0xFF00) != 0)
    {

      SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v6, v8 >> 8);
    }
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4_285(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if ((*(a3 + 152) & 0x20) != 0)
  {
    v9 = a3 + 8 * *(a3 + v5 + 14080);
    v7 = *(v9 + 8600);
    v8 = *(v9 + 10648);
  }

  else
  {
    v6 = a3 + 8 * v5;
    v7 = *(v6 + 14944);
    if (v7)
    {
      v8 = *(v6 + 15008);
      goto LABEL_9;
    }

    v7 = [*(a3 + 112) defaultTexture];
    v23 = *(a3 + 112);
    C3DTextureSamplerGetDefault();
    v8 = [SCNMTLResourceManager renderResourceForSampler:v23];
    Weak = objc_loadWeak((a3 + 15472));
    if (Weak)
    {
      [Weak renderContext:a3 didFallbackToDefaultTextureForSource:a2 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find IES or gobo texture for binding %@", a2)}];
    }
  }

  if (!v7)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v7 = 0;
  }

LABEL_9:
  v18 = *(a3 + 248);
  v19 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(*(a3 + 248), v7, v19);
  }

  if ((~v19 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentTexture(v18, v7, v19 >> 8);
  }

  v20 = *(a2 + 11);
  v21 = *(a2 + 12);
  if (v21 != -1 || v20 != 255)
  {
    v22 = *(a3 + 248);
    if (v20 != -1 && *(v22 + 1600 + 8 * v20) != v8)
    {
      *(v22 + 1600 + 8 * v20) = v8;
      [*(v22 + 3392) setVertexSamplerState:v8 atIndex:?];
    }

    if (v21 != -1 && *(v22 + 3248 + 8 * v21) != v8)
    {
      *(v22 + 3248 + 8 * v21) = v8;
      [*(v22 + 3392) setFragmentSamplerState:v8 atIndex:v21];
    }
  }
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_301(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8 * *(a1 + 32) + 14336);
  result = *v4;
  *a2 = *v4;
  return result;
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_2_306(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  if (a4[908].i8[0] == 1)
  {
    v4 = *(a4[896].i64[*(result + 32)] + 16);
    v5 = vaddq_f32(a4[903], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[900], v4.f32[0]), a4[901], *v4.f32, 1), a4[902], v4, 2));
  }

  else
  {
    v5 = *(a4[896].i64[*(result + 32)] + 16);
  }

  *a2 = v5;
  return result;
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_3_310(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  if (a4[908].i8[0] == 1)
  {
    v4 = *(a4[896].i64[*(result + 32)] + 32);
    v5 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[900], v4.f32[0]), a4[901], *v4.f32, 1), a4[902], v4, 2), 0, a4[903]);
  }

  else
  {
    v5 = *(a4[896].i64[*(result + 32)] + 32);
  }

  *a2 = v5;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_4_314(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 64);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_5_318(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 48);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_6_322(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8 * *(a1 + 32) + 14336);
  result = *(v4 + 128);
  v6 = *(v4 + 144);
  v7 = *(v4 + 160);
  v8 = *(v4 + 176);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_7_326(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 80);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_8_330(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 96);
  *a2 = result;
  return result;
}

void *__39__SCNMTLRenderContext_registerBindings__block_invoke_9_334(uint64_t a1, void *a2, unsigned int a3, simd_float4x4 *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (a3 >= 0x101)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_9_334_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (a4[227].columns[0].i8[0] == 1)
  {
    for (i = 0; i != 4; ++i)
    {
      v17 = (a4[224].columns[0].i64[*(a1 + 32)] + (i << 6));
      v27 = v17[8];
      v28 = v17[9];
      v25 = v17[11];
      v26 = v17[10];
      v33 = __invert_f4(a4[225]);
      v18 = 0;
      v29 = v33;
      do
      {
        v30[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v29.columns[v18])), v28, *v29.columns[v18].f32, 1), v26, v29.columns[v18], 2), v25, v29.columns[v18], 3);
        ++v18;
      }

      while (v18 != 4);
      v19 = v30[1];
      v20 = v30[2];
      v21 = v30[3];
      v22 = &v31[64 * i];
      *v22 = v30[0];
      v22[1] = v19;
      v22[2] = v20;
      v22[3] = v21;
    }

    v23 = v31;
  }

  else
  {
    v23 = (a4[224].columns[0].i64[*(a1 + 32)] + 128);
  }

  return memcpy(a2, v23, v7);
}

float __39__SCNMTLRenderContext_registerBindings__block_invoke_339(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 116);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_2_343(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 384);
  *a2 = result;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_3_347(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8 * *(a1 + 32) + 14336);
  result = *(v4 + 128);
  v6 = *(v4 + 144);
  v7 = *(v4 + 160);
  v8 = *(v4 + 176);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

__n128 __39__SCNMTLRenderContext_registerBindings__block_invoke_4_351(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 14336) + 384);
  *a2 = result;
  return result;
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_5_355(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[1884];
  v6 = a3[1885];
  v7 = a3[*(a1 + 32) + 1886];
  if (!v5)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_5_355_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = a3[31];
  v17 = *(a2 + 9);
  if (v17 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(v16, v5, v7 + v6, v17);
  }

  if ((~v17 & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentBuffer(v16, v5, v7 + v6, v17 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a3 + 112) specularDFGDiffuseHammonTextureWithRenderContext:?];
  v6 = *(a3 + 248);
  v7 = *(a2 + 9);
  if (v7 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v6, v5, v7);
  }

  if ((~v7 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v6, v5, v7 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_2_366(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Scene = C3DEngineContextGetScene(*(a3 + 144));
  LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
  if (!LightingEnvironmentEffectSlot || (v7 = LightingEnvironmentEffectSlot, !C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot)) && !C3DEffectSlotHasPrecomputedLightingEnvironment(v7) || (v8 = [SCNMTLRenderContext radianceTextureForEffectSlot:a3]) == 0)
  {
    if (!C3DEngineContextGetAllowsDefaultLightingEnvironmentFallback(*(a3 + 144)) || (v8 = [*(a3 + 112) defaultLightingEnvironmentRadianceTexture]) == 0)
    {
      v8 = [*(a3 + 112) defaultCubeTexture];
    }
  }

  v9 = v8;
  v10 = *(a3 + 248);
  v11 = *(a2 + 9);
  if (v11 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v10, v8, v11);
  }

  if ((~v11 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v10, v9, v11 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_3_372(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Scene = C3DEngineContextGetScene(*(a3 + 144));
  LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
  if (!LightingEnvironmentEffectSlot || (v7 = LightingEnvironmentEffectSlot, !C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot)) && !C3DEffectSlotHasPrecomputedLightingEnvironment(v7) || (v8 = [SCNMTLRenderContext irradianceTextureForEffectSlot:a3]) == 0)
  {
    if (!C3DEngineContextGetAllowsDefaultLightingEnvironmentFallback(*(a3 + 144)) || (v8 = [*(a3 + 112) defaultLightingEnvironmentIrradianceTexture]) == 0)
    {
      v8 = [*(a3 + 112) defaultCubeTexture];
    }
  }

  v9 = v8;
  v10 = *(a3 + 248);
  v11 = *(a2 + 9);
  if (v11 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v10, v8, v11);
  }

  if ((~v11 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v10, v9, v11 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_4_378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 15152);
  v4 = *(a3 + 248);
  v5 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v4, v3, v5);
  }

  if ((~v5 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v3, v5 >> 8);
  }
}

void __39__SCNMTLRenderContext_registerBindings__block_invoke_5_384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TextureWithName = C3DEngineContextGetTextureWithName(*(a3 + 144), @"SSAO-Final");
  if (!TextureWithName)
  {
    TextureWithName = [*(a3 + 112) defaultTexture];
    Weak = objc_loadWeak((a3 + 15472));
    if (Weak)
    {
      [Weak renderContext:a3 didFallbackToDefaultTextureForSource:a2 message:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Unable to find SSAO-Final texture in render graph for binding %@", a2)}];
    }
  }

  v7 = *(a3 + 248);
  v8 = *(a2 + 9);
  if (v8 != 0xFF)
  {
    SCNMTLRenderCommandEncoder::setVertexTexture(v7, TextureWithName, v8);
  }

  if ((~v8 & 0xFF00) != 0)
  {

    SCNMTLRenderCommandEncoder::setFragmentTexture(v7, TextureWithName, v8 >> 8);
  }
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_6_393(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 15264);
  v6 = *(a3 + 15224);
  v7 = *(a3 + 15272);
  if (!v5 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryGetName_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!v7)
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      __39__SCNMTLRenderContext_registerBindings__block_invoke_6_393_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  v32 = [*(a3 + 112) renderResourceForDeformerStack:v7 node:v5 dataKind:C3DGeometryGetEffectiveDataKindForRendering(v6)];
  result = -[SCNMTLDeformerStack bufferForCommonProfileArgumentNamed:](v32, [a2 name]);
  v34 = result;
  v35 = *(a3 + 248);
  v36 = *(a2 + 9);
  if (v36 != 0xFF)
  {
    result = SCNMTLRenderCommandEncoder::setVertexBuffer(v35, result, 0, v36);
  }

  if ((~v36 & 0xFF00) != 0)
  {
    return SCNMTLRenderCommandEncoder::setFragmentBuffer(v35, v34, 0, v36 >> 8);
  }

  return result;
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_405(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = [a2 frequency];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__SCNMTLRenderContext_registerBindings__block_invoke_2_409;
  v9[3] = &unk_2782FD5C8;
  v9[4] = a2;
  return [a4 addResourceBindingsForArgument:a3 frequency:v7 needsRenderResource:0 block:v9];
}

uint64_t __39__SCNMTLRenderContext_registerBindings__block_invoke_2_409(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 1998) = *(a2 + 9);
  v5 = *(a3 + 15264);
  if (v5)
  {
    C3DEntityGetObjCWrapper(v5);
  }

  v6 = *(a3 + 15216);
  if (v6)
  {
    C3DEntityGetObjCWrapper(v6);
  }

  C3DEngineContextGetUserInfo(*(a3 + 144));
  v7 = *([*(a1 + 32) block] + 16);

  return v7();
}

void __53__SCNMTLRenderContext_mapVolatileMesh_verticesCount___block_invoke(uint64_t a1, uint64_t a2)
{
  if (C3DMeshSourceIsVolatile(a2))
  {
    Accessor = C3DMeshSourceGetAccessor(a2);
    C3DSourceAccessorSetCount(Accessor, *(a1 + 32));
    v5 = *(a1 + 40) + C3DSourceAccessorGetOffset(Accessor);

    C3DMeshSourceSetVolatileData(a2, v5);
  }
}

void __63__SCNMTLRenderContext_unmapVolatileMesh_modifiedVerticesCount___block_invoke(uint64_t a1, uint64_t a2)
{
  if (C3DMeshSourceIsVolatile(a2))
  {

    C3DMeshSourceSetVolatileData(a2, 0);
  }
}

- (void)resetVolatileMeshes
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  volatileMeshes = self->_volatileMeshes;
  v4 = [(NSMutableArray *)volatileMeshes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(volatileMeshes);
        }

        [(SCNMTLMesh *)*(*(&v8 + 1) + 8 * i) setVolatileBuffer:?];
      }

      v5 = [(NSMutableArray *)volatileMeshes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_volatileMeshes removeAllObjects];
}

- (id)_newMTLBufferFromPoolWithLength:(unint64_t)length
{
  lastObject = [(NSMutableArray *)self->_bufferPool lastObject];
  if (lastObject)
  {
    v6 = lastObject;
    v7 = lastObject;
    [(NSMutableArray *)self->_bufferPool removeLastObject];
  }

  else
  {
    v6 = objc_alloc_init(SCNMTLBuffer);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  SCNMTLBufferPool::allocate(self->_frameVolatileBufferPool, length, &v9);
  [(SCNMTLBuffer *)v6 setBuffer:v10];
  [(SCNMTLBuffer *)v6 setOffset:v11];
  if (![(SCNMTLBuffer *)v6 buffer])
  {

    return 0;
  }

  return v6;
}

- (void)_recycleMTLBufferToPool:(id)pool
{
  if (!pool)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SCNMTLRenderContext *)v5 _recycleMTLBufferToPool:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  [(NSMutableArray *)self->_bufferPool addObject:pool];
  [pool setUsedCount:0];
  [pool setBuffer:0];
  [pool setOffset:0];
  [pool setDataSource:0];
}

- (void)resetVolatileMeshElements
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  usedVolatileMeshElements = self->_usedVolatileMeshElements;
  v4 = [(NSMutableArray *)usedVolatileMeshElements countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(usedVolatileMeshElements);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [SCNMTLResourceManager renderResourceForMeshElement:?];
        [(SCNMTLRenderContext *)self _recycleMTLBufferToPool:[(SCNMTLMeshElement *)v9 indexBuffer]];
        [(SCNMTLMeshElement *)v9 setIndexBuffer:?];
        [(SCNMTLMeshElement *)v9 setSharedIndexBufferOffset:?];
        C3DMeshElementSetVolatileDataPtr(v8, 0);
      }

      v5 = [(NSMutableArray *)usedVolatileMeshElements countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_freeVolatileMeshElements addObjectsFromArray:self->_usedVolatileMeshElements];
  [(NSMutableArray *)self->_usedVolatileMeshElements removeAllObjects];
}

- (void)writeBytes:(const void *)bytes length:(unint64_t)length
{
  renderEncoder = self->_renderEncoder;
  currentStreamBufferIndices = self->_currentStreamBufferIndices;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  SCNMTLBufferPool::allocateAndCopy(renderEncoder->var25[0], bytes, length, &v8);
  v6 = v9;
  v7 = v10;
  if (currentStreamBufferIndices.vertexIndex != -1)
  {
    SCNMTLRenderCommandEncoder::setVertexBuffer(renderEncoder, v9, v10, currentStreamBufferIndices.vertexIndex);
  }

  if ((~*&currentStreamBufferIndices & 0xFF00) != 0)
  {
    SCNMTLRenderCommandEncoder::setFragmentBuffer(renderEncoder, v6, v7, *&currentStreamBufferIndices >> 8);
  }
}

- (void)setGeneratedTexturePath:(void *)path
{
  if (path)
  {
    objc_setProperty_nonatomic(path, newValue, newValue, 15568);
  }
}

- (void)setClientCommandBuffer:(void *)buffer
{
  if (buffer)
  {
    objc_setProperty_nonatomic(buffer, newValue, newValue, 15536);
  }
}

- (void)setClientRenderPassDescriptor:(void *)descriptor
{
  if (descriptor)
  {
    objc_setProperty_nonatomic(descriptor, newValue, newValue, 15520);
  }
}

- (void)setClientRenderCommandEncoder:(void *)encoder
{
  if (encoder)
  {
    objc_setProperty_nonatomic(encoder, newValue, newValue, 15528);
  }
}

- (void)setClientCommandQueue:(void *)queue
{
  if (queue)
  {
    objc_setProperty_nonatomic(queue, newValue, newValue, 15560);
  }
}

- (uint64_t)device
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (uint64_t)engineContext
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

- (uint64_t)commandQueue
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 15536))
  {
    return [*(self + 15536) commandQueue];
  }

  v2 = *(self + 15560);
  if (v2)
  {
    return v2;
  }

  v2 = *(self + 160);
  if (v2)
  {
    return v2;
  }

  return [(SCNMTLResourceManager *)*(self + 112) commandQueue];
}

- (float)setPreferredFramesPerSecond:(uint64_t)second
{
  if (second)
  {
    if (!a2)
    {
      a2 = [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
      if (!a2)
      {
        v3 = scn_default_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *v6 = 0;
          OUTLINED_FUNCTION_0_2(&dword_21BEF7000, v3, v4, "Unreachable code: setPreferredFramesPerSecond - no screen", v6);
        }

        a2 = 120;
      }
    }

    result = 1.0 / a2;
    *(second + 208) = result;
  }

  return result;
}

- (uint64_t)frameConstantBufferPool
{
  if (result)
  {
    return *(result + 2088);
  }

  return result;
}

- (__n128)setScreenTransform:(uint64_t)transform
{
  if (transform)
  {
    result = *a2;
    v3 = *(a2 + 16);
    v4 = *(a2 + 48);
    *(transform + 64) = *(a2 + 32);
    *(transform + 80) = v4;
    *(transform + 32) = result;
    *(transform + 48) = v3;
  }

  return result;
}

- (uint64_t)profile
{
  if (result)
  {
    return *(result + 132);
  }

  return result;
}

- (void)setWantsWideGamut:(uint64_t)gamut
{
  if (gamut)
  {
    v3 = *(gamut + 152);
    if ((v3 & 1) != a2)
    {
      *(gamut + 152) = v3 & 0xFE | a2;
      C3DEngineContextGetScene(*(gamut + 144));
      C3DNotificationCenterGetSharedInstance();
      OUTLINED_FUNCTION_22();

      C3DNotificationCenterPostNotification(v4, v5, v6, v7, v8);
    }
  }
}

- (uint64_t)wantsWideGamut
{
  if (result)
  {
    return *(result + 152) & 1;
  }

  return result;
}

- (void)setDisableLinearRendering:(uint64_t)rendering
{
  if (rendering)
  {
    v3 = *(rendering + 152);
    if (((((v3 & 4) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }

      *(rendering + 152) = v3 & 0xFB | v4;
      C3DEngineContextGetScene(*(rendering + 144));
      C3DNotificationCenterGetSharedInstance();
      OUTLINED_FUNCTION_22();

      C3DNotificationCenterPostNotification(v5, v6, v7, v8, v9);
    }
  }
}

- (uint64_t)disableLinearRendering
{
  if (result)
  {
    return (*(result + 152) >> 2) & 1;
  }

  return result;
}

- (uint64_t)setEnableARMode:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 152);
    if (((((v2 & 8) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v3 = 8;
      }

      else
      {
        v3 = 0;
      }

      *(result + 152) = v2 & 0xF7 | v3;
    }
  }

  return result;
}

- (uint64_t)enableARMode
{
  if (result)
  {
    return (*(result + 152) >> 3) & 1;
  }

  return result;
}

- (uint64_t)setShouldDelegateARCompositing:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 152);
    if (((((v2 & 0x10) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v3 = 16;
      }

      else
      {
        v3 = 0;
      }

      *(result + 152) = v2 & 0xEF | v3;
    }
  }

  return result;
}

- (uint64_t)shouldDelegateARCompositing
{
  if (result)
  {
    return (*(result + 152) >> 4) & 1;
  }

  return result;
}

- (void)setReverseZ:(uint64_t)z
{
  if (z)
  {
    if (a2)
    {
      if (C3DReverseZIsSupported())
      {
        v3 = 64;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }

    *(z + 152) = *(z + 152) & 0xBF | v3;
    C3DEngineContextSetCoordinatesSystemOptions(*(z + 144), 8, v3 != 0);
    v4 = *(z + 112);

    [(SCNMTLResourceManager *)v4 resetRasterizerStates];
  }
}

- (void)setIsOpaque:(uint64_t)opaque
{
  if (opaque)
  {
    v3 = *(opaque + 152);
    if (((((v3 & 2) == 0) ^ a2) & 1) == 0)
    {
      if (a2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      *(opaque + 152) = v3 & 0xFD | v4;
      C3DEngineContextGetScene(*(opaque + 144));
      C3DNotificationCenterGetSharedInstance();
      OUTLINED_FUNCTION_22();

      C3DNotificationCenterPostNotification(v5, v6, v7, v8, v9);
    }
  }
}

- (uint64_t)setSampleCount:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    result = SCNMTLDeviceSupportedSampleCountForSampleCount(*(result + 120), a2);
    *(v2 + 96) = result;
  }

  return result;
}

- (uint64_t)sampleCount
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)resourceQueue
{
  if (result)
  {
    return *(result + 2200);
  }

  return result;
}

- (void)endFrameSceneSpecifics
{
  if (result)
  {
    v1 = result;
    [result resetVolatileMeshes];

    return [v1 resetVolatileMeshElements];
  }

  return result;
}

- (void)_commitResourceCommandBufferIfNeeded
{
  if (self)
  {
    OUTLINED_FUNCTION_40();
    if (v2)
    {
      if (*(v1 + 264))
      {
        SCNMTLBlitCommandEncoder::endEncoding((v1 + 264));
      }

      if (*(v1 + 1936))
      {
        SCNMTLComputeCommandEncoder::endEncoding((v1 + 280));
      }

      [*(v1 + 256) commit];
      *(v1 + 256) = 0;
    }
  }
}

- (os_unfair_lock_s)endFrameWaitingUntilCompleted:(void *)completed status:(void *)status error:
{
  if (result)
  {
    v7 = result;
    os_unfair_lock_lock(result + 3872);
    v8 = *(v7 + 15496);
    if (v8)
    {
      v9 = *(v7 + 240);
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke;
      v32[3] = &unk_2782FD3F8;
      v32[4] = v8;
      [v9 addScheduledHandler:v32];

      *(v7 + 15496) = 0;
    }

    v10 = *(v7 + 15504);
    if (v10)
    {
      v11 = *(v7 + 240);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke_2;
      v31[3] = &unk_2782FD3F8;
      v31[4] = v10;
      [v11 addCompletedHandler:v31];

      *(v7 + 15504) = 0;
    }

    os_unfair_lock_unlock((v7 + 15488));
    if (*(v7 + 200))
    {
      os_unfair_lock_lock((v7 + 15488));
      if (*(v7 + 15512))
      {
        OUTLINED_FUNCTION_4_1();
        v27 = 3221225472;
        v28 = __66__SCNMTLRenderContext_endFrameWaitingUntilCompleted_status_error___block_invoke_3;
        v29 = &unk_2782FD420;
        v30 = v12;
        [*(v7 + 200) addPresentedHandler:v26];

        *(v7 + 15512) = 0;
      }

      os_unfair_lock_unlock((v7 + 15488));
      if (*(v7 + 213) == 1)
      {
        [MEMORY[0x277CD9FF0] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x277CD9FF0] activateBackground:1];
        }
      }

      if (*(v7 + 212) == 1 && [*(v7 + 192) maximumDrawableCount] == 3)
      {
        [*(v7 + 240) presentDrawable:*(v7 + 200) afterMinimumDuration:*(v7 + 208)];
      }

      else
      {
        [*(v7 + 240) presentDrawable:*(v7 + 200)];
      }

      if (*(v7 + 213) == 1)
      {
        [MEMORY[0x277CD9FF0] commit];
      }

      *(v7 + 200) = 0;
    }

    [(SCNMTLRenderContext *)v7 _commitResourceCommandBufferIfNeeded];
    v13 = *(v7 + 15536);
    if (v13)
    {
      if (a2)
      {
        [v13 waitUntilCompleted];
        if (completed)
        {
          *completed = [*(v7 + 15536) status];
        }

        if (status)
        {
          *status = 0;
        }
      }

      v14 = OUTLINED_FUNCTION_34();
      objc_setProperty_nonatomic(v14, v15, v16, 15536);
    }

    else
    {
      [*(v7 + 240) commit];
      if (a2)
      {
        [*(v7 + 240) waitUntilCompleted];
        if (completed)
        {
          *completed = [*(v7 + 240) status];
        }

        if (status)
        {
          *status = [*(v7 + 240) error];
        }
      }
    }

    v17 = OUTLINED_FUNCTION_34();
    objc_setProperty_nonatomic(v17, v18, v19, 15528);
    v20 = OUTLINED_FUNCTION_34();
    objc_setProperty_nonatomic(v20, v21, v22, 15520);
    v23 = OUTLINED_FUNCTION_34();
    objc_setProperty_nonatomic(v23, v24, v25, 15560);
    *(v7 + 240) = 0;
    *(v7 + 15152) = 0;

    *(v7 + 184) = 0;
    *(v7 + 192) = 0;

    *(v7 + 200) = 0;
    return [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
  }

  return result;
}

- (uint64_t)textureTarget
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

- (uint64_t)layerTarget
{
  if (result)
  {
    return *(result + 192);
  }

  return result;
}

- (void)_finalRenderTexture
{
  if (result)
  {
    v1 = result;
    if (result[24])
    {
      v2 = result[25];
      if (!v2)
      {
        v3 = CACurrentMediaTime();
        v4 = objc_alloc_init(MEMORY[0x277CCA8B0]);
        C3DEngineContextGetFrameIndex(v1[18]);
        v5 = -3;
        do
        {
          v6 = v5;
          OUTLINED_FUNCTION_47();
          v7 = CACurrentMediaTime();
          nextDrawable = [v1[24] nextDrawable];
          *(v1[2] + 176) = CACurrentMediaTime() - v7 + *(v1[2] + 176);
          OUTLINED_FUNCTION_47();
          if (nextDrawable)
          {
            break;
          }

          v5 = v6 + 1;
        }

        while (v6);
        if (!nextDrawable)
        {
          v9 = scn_default_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v10 = 0;
            _os_log_impl(&dword_21BEF7000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Failed getting a valid drawable. Skipping this frame.", v10, 2u);
          }
        }

        *(v1[2] + 192) = CACurrentMediaTime() - v3 + *(v1[2] + 192);
        v1[25] = nextDrawable;

        v2 = v1[25];
      }

      return [v2 texture];
    }

    else
    {
      return result[23];
    }
  }

  return result;
}

- (uint64_t)_reflectionProbeArrayTexture
{
  if (result)
  {
    return *(result + 15152);
  }

  return result;
}

- (uint64_t)_setReflectionProbeArrayTexture:(uint64_t)result
{
  if (result)
  {
    *(result + 15152) = a2;
  }

  return result;
}

- (uint64_t)resourceCommandBuffer
{
  if (result)
  {
    OUTLINED_FUNCTION_40();
    if (!v2)
    {
      [v1 _createResourceCommandBufferIfNeeded];
    }

    if (*(v1 + 1936))
    {
      SCNMTLComputeCommandEncoder::endEncoding((v1 + 280));
    }

    if (*(v1 + 264))
    {
      SCNMTLBlitCommandEncoder::endEncoding((v1 + 264));
    }

    return *(v1 + 256);
  }

  return result;
}

- (uint64_t)resourceBlitEncoder
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40();
  if (!v2)
  {
    [v1 _createResourceCommandBufferIfNeeded];
  }

  if (*(v1 + 1936))
  {
    SCNMTLComputeCommandEncoder::endEncoding((v1 + 280));
  }

  v3 = v1 + 264;
  if (!*(v1 + 264))
  {
    SCNMTLBlitCommandEncoder::beginEncoding((v1 + 264), *(v1 + 256), 0);
  }

  return v3;
}

- (uint64_t)resourceComputeEncoder
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40();
  if (!v2)
  {
    [v1 _createResourceCommandBufferIfNeeded];
  }

  if (*(v1 + 264))
  {
    SCNMTLBlitCommandEncoder::endEncoding((v1 + 264));
  }

  v3 = v1 + 280;
  if (!*(v1 + 1936))
  {
    SCNMTLComputeCommandEncoder::beginEncoding((v1 + 280), *(v1 + 256), *(v1 + 136), @"ResourceComputeEncoder", *(v1 + 2088));
  }

  return v3;
}

- (void)beginRenderPass:(uint64_t)pass renderEncoder:(uint64_t)encoder parameters:
{
  if (self)
  {
    *(self + 248) = pass;
    v7 = [objc_msgSend(objc_msgSend(a2 "colorAttachments")];
    if (!v7)
    {
      v7 = [objc_msgSend(a2 "depthAttachment")];
    }

    *(self + 232) = [v7 width];
    *(self + 236) = [v7 height];
    bzero((self + 15168), 0x88uLL);
    v8 = *(self + 216);
    *(self + 216) = a2;
    *(self + 224) = v8;
    *(self + 1996) = WORD2(encoder);
    *(self + 1992) = encoder;
  }
}

- (void)endRenderPass
{
  if (self)
  {
    v2 = *(self + 248);
    v3 = *(v2 + 3392);
    if (v3 == *(self + 15528))
    {
      bzero(*(self + 248), 0xD70uLL);
    }

    else
    {
      v4 = *(v2 + 3384);
      v5 = *(v2 + 3400);
      bzero(*(self + 248), 0xD70uLL);
      *(v2 + 3384) = v4;
      *(v2 + 3392) = v3;
      *(v2 + 3400) = v5;
      *(v2 + 40) = 257;
      OUTLINED_FUNCTION_36(1);
    }

    *(v2 + 64) = 1;
    *(v2 + 72) = 1;
    *(self + 248) = 0;
    *(self + 216) = *(self + 224);
  }
}

- (uint64_t)textureForEffectSlot:(uint64_t)result
{
  if (result)
  {
    return [*(result + 112) renderResourceForEffectSlot:a2 withEngineContext:*(result + 144) didFallbackToDefaultTexture:0];
  }

  return result;
}

- (void)irradianceTextureForEffectSlot:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_5_1();
    PrecomputedLightingEnvironment = C3DEffectSlotGetPrecomputedLightingEnvironment(v3);
    v5 = v1[14];
    if (PrecomputedLightingEnvironment)
    {

      return [v5 irradianceTextureForPrecomputedLightingEnvironment:?];
    }

    else
    {
      result = [v5 renderResourceForEffectSlot:v2 withEngineContext:v1[18] didFallbackToDefaultTexture:0];
      if (result)
      {
        v6 = result;
        if ([result textureType] == 5)
        {
          v7 = v1[278];
          if (v7)
          {
            C3DLightingSystemGetLightProbesSystem(v7);
          }

          OUTLINED_FUNCTION_4_1();
          v11 = 3221225472;
          v12 = __54__SCNMTLRenderContext_irradianceTextureForEffectSlot___block_invoke;
          v13 = &__block_descriptor_40_e21_v16__0___MTLBuffer__8l;
          v14 = v8;
          return [v9 irradianceTextureForEnvironmentTexture:v6 renderContext:v1 applySH:v10];
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (uint64_t)radianceTextureForEffectSlot:(uint64_t)slot
{
  if (!slot)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  PrecomputedLightingEnvironment = C3DEffectSlotGetPrecomputedLightingEnvironment(v3);
  v5 = *(v1 + 112);
  if (PrecomputedLightingEnvironment)
  {

    return [v5 radianceTextureForPrecomputedLightingEnvironment:?];
  }

  v7 = [v5 renderResourceForEffectSlot:v2 withEngineContext:*(v1 + 144) didFallbackToDefaultTexture:0];
  if (!v7 || [v7 textureType] != 5)
  {
    return 0;
  }

  [(SCNMTLRenderContext *)v1 resourceCommandBuffer];
  v8 = OUTLINED_FUNCTION_38();

  return [v8 radianceTextureForEnvironmentTexture:? engineContext:? commandBuffer:?];
}

- (void)setRasterizerStates:(uint64_t)states
{
  v22 = *MEMORY[0x277D85DE8];
  if (states)
  {
    OUTLINED_FUNCTION_5_1();
    if (!v3)
    {
      v2 = C3DRasterizerStatesDefault();
    }

    if (*(v1 + 15168) != v2)
    {
      v15 = 0;
      v16 = 0;
      v18 = 0;
      v17 = 0;
      C3DRasterizerStatesGetDesc(v2, &v15);
      v4 = *(v1 + 15168);
      if (v4)
      {
        v19 = 0uLL;
        v21 = 0;
        v20 = 0;
        C3DRasterizerStatesGetDesc(v4, &v19);
        v5 = v15;
        if (v19 == v15)
        {
          v6 = 2;
        }

        else
        {
          v6 = 3;
        }

        if (DWORD1(v19) == HIDWORD(v15))
        {
          v7 = v19 != v15;
        }

        else
        {
          v7 = v6;
        }

        if (BYTE8(v19) == v16)
        {
          v8 = v7;
        }

        else
        {
          v8 = (v7 | 4u);
        }

        if (v16 == 1 && BYTE10(v19) != BYTE2(v16) || (BYTE8(v19) & 1) == 0)
        {
          v8 = (v8 | 8);
        }

        if (v16 && BYTE9(v19) != BYTE1(v16) || (BYTE8(v19) & 1) == 0)
        {
          v8 = (v8 | 0x10);
        }

        if ((v16 & 0x1000000) != 0 || BYTE11(v19) == 1)
        {
          LOBYTE(v8) = v8 | 0x20;
        }

        else if (!v8)
        {
          v13 = scn_default_log();
          if (OUTLINED_FUNCTION_33(v13))
          {
            LODWORD(v19) = 136315138;
            *(&v19 + 4) = "setMask";
            OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v8, v14, "Assertion '%s' failed. Null argument", &v19);
          }

          goto LABEL_38;
        }

        if ((v8 & 1) == 0)
        {
LABEL_32:
          if ((v8 & 2) != 0)
          {
            v11 = *(v1 + 248);
            v12 = C3DFillModeToMTLFillMode(HIDWORD(v15));
            if ((*(v11 + 74) & 1) == 0 && *(v11 + 24) != v12)
            {
              *(v11 + 24) = v12;
              *(v11 + 42) = 1;
            }
          }

          if ((v8 & 0x3C) != 0)
          {
            [(SCNMTLResourceManager *)*(v1 + 112) renderResourceForRasterizerState:v2 reverseZ:(*(v1 + 152) >> 6) & 1];
            [OUTLINED_FUNCTION_5_2() setDepthStencilState:?];
          }

LABEL_38:
          *(v1 + 15168) = v2;
          return;
        }
      }

      else
      {
        LOBYTE(v8) = -1;
        v5 = v15;
      }

      v9 = *(v1 + 248);
      v10 = C3DCullModeToMTLCullMode(v5);
      if ((*(v9 + 73) & 1) == 0 && *(v9 + 16) != v10)
      {
        *(v9 + 16) = v10;
        *(v9 + 41) = 1;
      }

      goto LABEL_32;
    }
  }
}

- (uint64_t)pushDebugGroup:(uint64_t)result
{
  if (result)
  {
    return [*(*(result + 248) + 3392) pushDebugGroup:a2];
  }

  return result;
}

- (uint64_t)popDebugGroup
{
  if (result)
  {
    return [*(*(result + 248) + 3392) popDebugGroup];
  }

  return result;
}

- (uint64_t)_setSceneBufferAtVertexIndex:(uint64_t)index fragmentIndex:
{
  if (result)
  {
    v4 = result;
    if (a2 != -1)
    {
      result = SCNMTLRenderCommandEncoder::setVertexBuffer(result[31], result[814], result[815], a2);
    }

    if (index != -1)
    {
      v5 = v4[31];
      v6 = v4[814];
      v7 = v4[815];

      return SCNMTLRenderCommandEncoder::setFragmentBuffer(v5, v6, v7, index);
    }
  }

  return result;
}

- (uint64_t)_setMeshBuffers:(uint64_t)result
{
  v8[14] = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_26();
    memset(v7, 0, sizeof(v7));
    v4 = [-[SCNMTLMesh buffers](v3) count];
    if (v4 >= 0xE)
    {
      v5 = 14;
    }

    else
    {
      v5 = v4;
    }

    [-[SCNMTLMesh buffers](v2) getObjects:v8 range:{0, v5}];
    if ([(SCNMTLMesh *)v2 volatileBuffer])
    {
      *(v7 + v5) = [(SCNMTLMesh *)v2 volatileOffset];
      v8[v5++] = [(SCNMTLMesh *)v2 volatileBuffer];
    }

    v6 = *(v1 + 248);
    if (v5 == 1)
    {
      return SCNMTLRenderCommandEncoder::setVertexBuffer(v6, v8[0], *&v7[0], 18);
    }

    else
    {
      return SCNMTLRenderCommandEncoder::setVertexBuffers(v6, v8, v7, 18, v5);
    }
  }

  return result;
}

- (uint64_t)_drawMeshElement:(uint64_t)element instanceCount:
{
  v37 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_26();
    ++*(*(v7 + 16) + 8);
    if (!v8)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v35 = 136315138;
        v36 = "element";
        OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v9, v10, "Assertion '%s' failed. Null argument", &v35);
      }
    }

    if ([(SCNMTLMesh *)v4 buffers])
    {
      v11 = *(v3 + 248);
      computeEvaluator = [(SCNMTLOpenSubdivComputeEvaluator *)v4 computeEvaluator];
      [(SCNMTLMesh *)v4 elements];
      v12 = OUTLINED_FUNCTION_25();
      buffer = [-[SCNMTLMeshElement indexBuffer](v12) buffer];
      effectiveIndexOffset = [(SCNMTLMeshElement *)v4 effectiveIndexOffset];
      offset = [-[SCNMTLMeshElement indexBuffer](v4) offset];
      elementCopy = element;
      element = effectiveIndexOffset + [(SCNMTLResourceManager *)v4 libraryManager];
      buffers = [(SCNMTLMesh *)v4 buffers];
      volatileOffset = [(SCNMTLMesh *)v4 volatileOffset];
      SCNMTLRenderCommandEncoder::_bindPendingTextures(v11);
      SCNMTLRenderCommandEncoder::applyChangedStates(v11);
      v19 = offset + element;
      LODWORD(element) = elementCopy;
      [*(v11 + 3392) drawIndexedPrimitives:computeEvaluator indexType:v5 indexBuffer:buffer indexBufferOffset:v19 indirectBuffer:buffers indirectBufferOffset:volatileOffset];
    }

    else
    {
      indexBuffer = [(SCNMTLMeshElement *)v4 indexBuffer];
      v21 = *(v3 + 248);
      computeEvaluator2 = [(SCNMTLOpenSubdivComputeEvaluator *)v4 computeEvaluator];
      if (indexBuffer)
      {
        [(SCNMTLMesh *)v4 volatileBuffer];
        v23 = OUTLINED_FUNCTION_25();
        elements = [(SCNMTLMesh *)v23 elements];
        buffer2 = [-[SCNMTLMeshElement indexBuffer](v4) buffer];
        effectiveIndexOffset2 = [(SCNMTLMeshElement *)v4 effectiveIndexOffset];
        offset2 = [-[SCNMTLMeshElement indexBuffer](v4) offset];
        libraryManager = [(SCNMTLResourceManager *)v4 libraryManager];
        SCNMTLRenderCommandEncoder::drawIndexedPrimitives(v21, computeEvaluator2, indexBuffer, elements, buffer2, offset2 + effectiveIndexOffset2 + libraryManager, element, 0);
      }

      else
      {
        [(SCNMTLMeshElement *)v4 effectiveIndexOffset];
        v29 = OUTLINED_FUNCTION_25();
        volatileBuffer = [(SCNMTLMesh *)v29 volatileBuffer];
        SCNMTLRenderCommandEncoder::drawPrimitives(v21, computeEvaluator2, 0, volatileBuffer, element, 0);
      }
    }

    effectivePrimitiveCount = [(SCNMTLMeshElement *)v4 effectivePrimitiveCount];
    result = OUTLINED_FUNCTION_28(effectivePrimitiveCount);
    if (result)
    {
      result = [(SCNMTLMesh *)result verticesCount];
      v33 = result * element;
      v32 = *(v3 + 16);
    }

    else
    {
      v33 = 0;
    }

    *v32 += v33;
  }

  return result;
}

- (uint64_t)_drawPatchForMeshElement:(uint64_t)element instanceCount:
{
  v22 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_26();
    if ([(SCNMTLMesh *)v7 elements]!= 1)
    {
      if ([(SCNMTLMesh *)v4 elements])
      {
        v8 = scn_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v20 = 136315138;
          v21 = "element.indexType == MTLIndexTypeUInt32 || element.indexType == MTLIndexTypeUInt16";
          OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v8, v9, "Assertion '%s' failed. Control point indices must be 16-bit or 32-bit", &v20);
        }
      }
    }

    if ([(SCNMTLOpenSubdivComputeEvaluator *)v4 computeEvaluator]!= 3)
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v20 = 136315138;
        v21 = "element.primitiveType == MTLPrimitiveTypeTriangle";
        OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v10, v11, "Assertion '%s' failed. Only triangle arrays are supported for tessellation", &v20);
      }
    }

    ++*(*(v3 + 16) + 8);
    v12 = *(v3 + 248);
    primitiveCount = [(SCNMTLMeshElement *)v4 primitiveCount];
    [-[SCNMTLMeshElement indexBuffer](v4) buffer];
    v14 = OUTLINED_FUNCTION_25();
    offset = [-[SCNMTLMeshElement indexBuffer](v14) offset];
    v16 = [(SCNMTLResourceManager *)v4 libraryManager]+ offset;
    SCNMTLRenderCommandEncoder::_bindPendingTextures(v12);
    SCNMTLRenderCommandEncoder::applyChangedStates(v12);
    [*(v12 + 3392) drawIndexedPatches:3 patchStart:0 patchCount:primitiveCount patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:v5 controlPointIndexBufferOffset:v16 instanceCount:*(v12 + 64) * element baseInstance:0];
    primitiveCount2 = [(SCNMTLMeshElement *)v4 primitiveCount];
    result = OUTLINED_FUNCTION_28(primitiveCount2);
    if (result)
    {
      result = [(SCNMTLMesh *)result verticesCount];
      v19 = result * element;
      v18 = *(v3 + 16);
    }

    else
    {
      v19 = 0;
    }

    *v18 += v19;
  }

  return result;
}

- (void)renderBackground:(uint64_t)background engineContext:(float32x4_t *)context passInstance:
{
  v101 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  OUTLINED_FUNCTION_26();
  v92 = 0;
  ImageProxy = C3DEffectSlotGetImageProxy(v8);
  Player = C3DAnimationNodeGetPlayer(background);
  TextureProxy = Player;
  if (Player && C3DTextureGetIOSurface(Player) != ImageProxy)
  {
    C3DEngineContextSetBackgroundTextureProxy(background, 0);
    TextureProxy = 0;
  }

  if (!ImageProxy)
  {
    MetalTexture = [*(v4 + 112) renderResourceForEffectSlot:v5 withEngineContext:*(v4 + 144) didFallbackToDefaultTexture:0];
    goto LABEL_13;
  }

  TextureSampler = C3DEffectSlotGetTextureSampler(v5);
  if (TextureSampler)
  {
    if (!TextureProxy)
    {
LABEL_11:
      TextureProxy = C3DImageProxyCreateTextureProxy(ImageProxy, TextureSampler, background);
      C3DEngineContextSetBackgroundTextureProxy(background, TextureProxy);
      CFRelease(TextureProxy);
      if (!TextureProxy)
      {
        return;
      }
    }
  }

  else
  {
    TextureSampler = C3DTextureSamplerGetDefault();
    if (!TextureProxy)
    {
      goto LABEL_11;
    }
  }

  MetalTexture = C3DTextureProxyGetMetalTexture(TextureProxy, background, TextureSampler, v93);
LABEL_13:
  v14 = MetalTexture;
  v92 = MetalTexture;
  if (MetalTexture)
  {
    Scene = C3DEngineContextGetScene(background);
    if ([v14 textureType] == 5)
    {
      EnvironmentCubeMesh = C3DEngineContextGetEnvironmentCubeMesh(background);
      v17 = *(v4 + 8 * *(v4 + 1994) + 2144);
      C3DEngineContextGetMatrix4x4(background, 1);
      v18 = OUTLINED_FUNCTION_25();
      if (C3DKeyframeControllerHasInterpolationModesPerKey(v18))
      {
        ImageTransform = C3DEffectSlotGetImageTransform(v5);
        C3DMatrix4x4Mult(ImageTransform, background, v93);
      }

      else
      {
        v24 = *background;
        v25 = *(background + 32);
        *&v93[16] = *(background + 16);
        *&v93[32] = v25;
        *v93 = v24;
      }

      v94 = xmmword_21C27F610;
      v26 = OUTLINED_FUNCTION_37();
      Matrix4x4 = C3DEngineContextGetMatrix4x4(v26, v27);
      v29 = Matrix4x4[3];
      v31 = *Matrix4x4;
      v30 = Matrix4x4[1];
      v86 = Matrix4x4[2];
      v87 = v29;
      v84 = v31;
      v85 = v30;
      [v4 _updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:&v84];
      C3DMatrix4x4Mult(v93, &v84, &v88);
    }

    else
    {
      EnvironmentCubeMesh = C3DEngineContextGetQuadMesh(background);
      v17 = *(v4 + 8 * *(v4 + 1994) + 2120);
      if (C3DKeyframeControllerHasInterpolationModesPerKey(v5))
      {
        v20 = C3DEffectSlotGetImageTransform(v5);
        v21 = v20[3];
        v23 = *v20;
        v22 = v20[1];
        v90 = v20[2];
        v91 = v21;
        v88 = v23;
        v89 = v22;
      }

      else
      {
        C3DMatrix4x4MakeIdentity(&v88);
      }
    }

    [OUTLINED_FUNCTION_5_2() pushDebugGroup:@"SceneKit - Draw scene background"];
    v81 = EnvironmentCubeMesh;
    v32 = [(SCNMTLResourceManager *)*(v4 + 112) renderResourceForMesh:1 dataKind:?];
    *(v100 + 7) = 0;
    *&v100[0] = 0;
    commandQueue = [(SCNMTLResourceManager *)v32 commandQueue];
    v79 = v32;
    vertexDescriptorHash = [(SCNMTLMesh *)v32 vertexDescriptorHash];
    [objc_msgSend(objc_msgSend(*(v4 + 216) "colorAttachments")];
    v36 = v35;
    if ((C3DEffectSlotIsOpaque(v5) & 1) != 0 || v36 == 0.0)
    {
      C3DBlendStatesDefaultReplace();
    }

    else
    {
      C3DBlendStatesDefaultOver();
    }

    OUTLINED_FUNCTION_21();
    if (v41)
    {
      v42 = v38 + 1;
    }

    else
    {
      v42 = v38;
    }

    *(&v100[1] + 7) = 0;
    *(v100 + 15) = 0;
    v43 = *(v4 + 112);
    memset(&v93[8], 0, 32);
    *v93 = v17;
    *&v93[40] = v37;
    *&v94 = 0;
    WORD4(v94) = 783;
    BYTE10(v94) = v39;
    BYTE11(v94) = v42;
    HIDWORD(v94) = 0;
    v95.n128_u64[0] = commandQueue;
    v95.n128_u64[1] = vertexDescriptorHash;
    v96[0] = v40;
    *&v96[16] = *(v100 + 15);
    *&v96[1] = v100[0];
    *&v97 = 0;
    v44 = [v43 renderResourceForProgramDesc:v93 renderPassDescriptor:{*(v4 + 216), v79}];
    v45 = *(v4 + 248);
    state = [v44 state];
    if (*(v45 + 3376) != state)
    {
      *(v45 + 3376) = state;
      [*(v45 + 3392) setRenderPipelineState:state];
    }

    [SCNMTLRenderContext setRasterizerStates:v4];
    Intensity = 1.0;
    if ((C3DWasLinkedBeforeMajorOSYear2020() & 1) == 0)
    {
      Intensity = C3DEffectSlotGetIntensity(v5);
    }

    v83 = Intensity;
    SCNMTLRenderCommandEncoder::setFragmentBytes(*(v4 + 248), &v83, 4uLL, 0);
    if (!C3DEffectSlotGetTextureSampler(v5))
    {
      C3DTextureSamplerGetDefault();
    }

    v48 = [SCNMTLResourceManager renderResourceForSampler:?];
    if ([v14 pixelFormat] == 520 || objc_msgSend(v14, "pixelFormat") == 500)
    {
      v49 = *(*(v4 + 248) + 3392);
      SCNMTLEnsureIOSurfaceBackingBufferValidity(*(v4 + 240), &v92, 1u);
      [v49 setFragmentTexture:v92 atTextureIndex:0 samplerState:v48 atSamplerIndex:0];
    }

    else
    {
      SCNMTLRenderCommandEncoder::setFragmentTexture(*(v4 + 248), v14, 0);
      v77 = *(v4 + 248);
      if (*(v77 + 3248) != v48)
      {
        OUTLINED_FUNCTION_45(v77);
      }
    }

    if (*(v4 + 1994))
    {
      v50 = v81;
      if (!context)
      {
        v51 = scn_default_log();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
        {
          *v93 = 136315138;
          *&v93[4] = "currentPassInstance";
          OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v51, v52, "Assertion '%s' failed. Null argument", v93);
        }
      }

      if (*(v4 + 1993))
      {
        v53 = 0;
        v54 = context + 198;
        v55 = v93;
        do
        {
          if (C3DKeyframeControllerHasInterpolationModesPerKey(v5))
          {
            v56 = C3DEffectSlotGetImageTransform(v5);
            C3DMatrix4x4Mult(v56, v54, &v84);
          }

          else
          {
            v57 = v54[1];
            v84 = *v54;
            v85 = v57;
            v86 = v54[2];
          }

          v87 = xmmword_21C27F610;
          v58 = v54[25];
          v82[0] = v54[24];
          v82[1] = v58;
          v59 = v54[27];
          v82[2] = v54[26];
          v82[3] = v59;
          [v4 _updateProjectionMatrixForOrthographicSkyboxRenderingIfNeeded:v82];
          C3DMatrix4x4Mult(&v84, v82, &v88);
          v60 = v89;
          v61 = v90;
          v62 = v91;
          *v55 = v88;
          *(v55 + 1) = v60;
          *(v55 + 2) = v61;
          *(v55 + 3) = v62;
          *(v55 + 24) = C3DSceneComputeWorldToCubemapMatrix(Scene);
          *(v55 + 25) = v63;
          *(v55 + 26) = v64;
          *(v55 + 27) = v65;
          ++v53;
          v54 += 4;
          v55 += 64;
        }

        while (v53 < *(v4 + 1993));
      }

      v66 = OUTLINED_FUNCTION_37();
      v68 = C3DEngineContextGetMatrix4x4(v66, v67);
      OUTLINED_FUNCTION_46(v68);
      v99 = v69;
      SCNMTLRenderCommandEncoder::setVertexBytes(*(v4 + 248), v93, 0x310uLL, 0);
    }

    else
    {
      *v93 = v88;
      *&v93[16] = v89;
      *&v93[32] = v90;
      v94 = v91;
      v95 = C3DSceneComputeWorldToCubemapMatrix(Scene);
      *v96 = v70;
      *&v96[16] = v71;
      v97 = v72;
      v73 = OUTLINED_FUNCTION_37();
      v75 = C3DEngineContextGetMatrix4x4(v73, v74);
      OUTLINED_FUNCTION_46(v75);
      v98 = v76;
      SCNMTLRenderCommandEncoder::setVertexBytes(*(v4 + 248), v93, 0x90uLL, 0);
      v50 = v81;
    }

    if (*(v4 + 15176) != v50)
    {
      *(v4 + 15176) = v50;
      [SCNMTLRenderContext _setMeshBuffers:v4];
    }

    if ([v92 textureType] == 5)
    {
      v78 = [-[SCNMTLMesh elements](v80) objectAtIndexedSubscript:0];
      [(SCNMTLRenderContext *)v4 _drawMeshElement:v78 instanceCount:1];
    }

    else
    {
      SCNMTLRenderCommandEncoder::drawFullScreenTriangle(*(v4 + 248));
    }

    [OUTLINED_FUNCTION_5_2() popDebugGroup];
  }
}

- (void)renderVideoBackground:(__n128 *)background engineContext:(uint64_t)context slot:
{
  v59 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    return result;
  }

  v7 = result;
  [*(result[31] + 3392) pushDebugGroup:@"SceneKit - Draw video background"];
  SourceType = C3DImageProxyGetSourceType(a2);
  Player = C3DAnimationNodeGetPlayer(background);
  if (!Player)
  {
    goto LABEL_5;
  }

  TextureProxy = Player;
  if (C3DTextureGetIOSurface(Player) != a2)
  {
    C3DEngineContextSetBackgroundTextureProxy(background, 0);
LABEL_5:
    Default = C3DTextureSamplerGetDefault();
    TextureProxy = C3DImageProxyCreateTextureProxy(a2, Default, background);
    C3DEngineContextSetBackgroundTextureProxy(background, TextureProxy);
    CFRelease(TextureProxy);
    goto LABEL_7;
  }

  Default = C3DTextureSamplerGetDefault();
LABEL_7:
  result = C3DTextureProxyGetMetalTexture(TextureProxy, background, Default, v56);
  v55 = result;
  if (result)
  {
    v12 = result;
    QuadMesh = C3DEngineContextGetQuadMesh(background);
    C3DMatrix4x4MakeIdentity(v54);
    v46 = [(SCNMTLResourceManager *)*(v7 + 112) renderResourceForMesh:1 dataKind:?];
    *&v57[7] = 0;
    *v57 = 0;
    PointOfView = C3DEngineContextGetPointOfView(*(v7 + 144));
    Camera = 0;
    if (PointOfView)
    {
      Camera = C3DNodeGetCamera(PointOfView);
    }

    v44 = QuadMesh;
    if ((*(v7 + 152) & 8) != 0 && *(v7 + 1996) == 1 && Camera && C3DCameraGetARGrainTexture(Camera))
    {
      v16 = 2176;
    }

    else
    {
      v16 = 2168;
    }

    v17 = *(v7 + v16);
    commandQueue = [(SCNMTLResourceManager *)v46 commandQueue];
    [(SCNMTLMesh *)v46 vertexDescriptorHash];
    OUTLINED_FUNCTION_21();
    if (_ZF)
    {
      v23 = v19 + 1;
    }

    else
    {
      v23 = v19;
    }

    v58 = 0;
    *&v57[15] = 0;
    v24 = *(v7 + 112);
    LOWORD(v51) = 783;
    BYTE2(v51) = v20;
    HIBYTE(v51) = v23;
    v52[0] = v21;
    *&v52[16] = 0;
    *&v52[1] = *v57;
    v25 = OUTLINED_FUNCTION_48(v24, commandQueue, v44, v46, v47, v17, 0, 0, 0, 0, 0, 0, v51, commandQueue, v18, *v52, *v57 >> 56, *&v52[16], 0, v53);
    v26 = *(v7 + 248);
    state = [v25 state];
    if (*(v26 + 3376) != state)
    {
      OUTLINED_FUNCTION_29(state);
    }

    [SCNMTLRenderContext setRasterizerStates:v7];
    v28 = [SCNMTLResourceManager renderResourceForSampler:?];
    if ([v12 pixelFormat] == 520 || objc_msgSend(v12, "pixelFormat") == 500)
    {
      v29 = *(*(v7 + 248) + 3392);
      SCNMTLEnsureIOSurfaceBackingBufferValidity(*(v7 + 240), &v55, 1u);
      [v29 setFragmentTexture:v55 atTextureIndex:0 samplerState:v28 atSamplerIndex:0];
      v30 = v45;
    }

    else
    {
      SCNMTLRenderCommandEncoder::setFragmentTexture(*(v7 + 248), v12, 0);
      v33 = *(v7 + 248);
      v30 = v45;
      if (*(v33 + 3248) != v28)
      {
        OUTLINED_FUNCTION_45(v33);
      }
    }

    switch(SourceType)
    {
      case 0:
        v31 = scn_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v48) = 0;
          OUTLINED_FUNCTION_0_2(&dword_21BEF7000, v31, v32, "Unreachable code: Cannot render video background with an unspecified source type.", &v48);
        }

        break;
      case 1:
        __asm { FMOV            V1.2S, #1.0 }

        v48 = 0x3F80000000000000;
        v49 = _D1;
        *&v50 = 1065353216;
        break;
      case 2:
        __textureCoordinatesForCaptureDeviceImageProxy(a2, background);
        goto LABEL_31;
      case 3:
LABEL_31:
        *&v34 = __textureCoordinatesForCaptureDeviceImageProxy(a2, background);
        v48 = v34;
        *&v49 = v35;
        *(&v49 + 1) = v36;
        *&v50 = v37;
        break;
      default:
        break;
    }

    SCNMTLRenderCommandEncoder::setVertexBytes(*(v7 + 248), &v48, 0x20uLL, 0);
    Intensity = 1.0;
    if ((C3DWasLinkedBeforeMajorOSYear2020() & 1) == 0)
    {
      Intensity = C3DEffectSlotGetIntensity(context);
    }

    *(&v47 + 1) = Intensity;
    SCNMTLRenderCommandEncoder::setFragmentBytes(*(v7 + 248), &v47 + 4, 4uLL, 0);
    if (*(v7 + 15176) != v30)
    {
      *(v7 + 15176) = v30;
      [SCNMTLRenderContext _setMeshBuffers:v7];
    }

    SCNMTLRenderCommandEncoder::drawFullScreenQuad(*(v7 + 248));
    return [OUTLINED_FUNCTION_5_2() popDebugGroup];
  }

  return result;
}

- (void)authoring_drawPrimitives:(int)primitives vertexCount:(int)count instanceCount:(int)instanceCount vertexBuffers:(int)buffers offsets:(int)offsets range:(int)range vertexDescriptor:(uint64_t)descriptor withProgram:(uint64_t)self0 uniforms:(int)self1 uniformsLength:(int)self2 rasterizerStates:(uint64_t)self3 blendStates:(uint64_t)self4
{
  if (self)
  {
    OUTLINED_FUNCTION_43();
    a41 = v48;
    a42 = v57;
    v58 = v49;
    if (*(v49 + 216))
    {
      v60 = v56;
      v61 = v55;
      v62 = v54;
      v63 = v53;
      v64 = v52;
      v65 = v51;
      v66 = v50;
      v83 = a48;
      v84 = a45;
      v81 = a44;
      v67 = a43;
      *(v49 + 15176) = 0;
      if (*(v49 + 1995) == 2)
      {
        v68 = 2;
      }

      else
      {
        v68 = 1;
      }

      v82 = v68;
      HIWORD(a27) = 0;
      *(&a27 + 2) = 0;
      v69 = *(v49 + 1993);
      v70 = [v67 hash];
      v71 = *(v58 + 1994);
      v72 = *(v58 + 112);
      a16 = v81;
      a17 = 0u;
      a18 = 0u;
      a19 = v83;
      a20 = 0;
      a21 = 15;
      a22 = v69;
      a23 = v82;
      a24 = 0;
      a25 = v67;
      a26 = v70;
      LOWORD(a27) = v71;
      a28 = 0u;
      a29 = 0u;
      v73 = [v72 renderResourceForProgramDesc:&a16 renderPassDescriptor:*(v58 + 216)];
      v74 = *(v58 + 248);
      state = [v73 state];
      if (*(v74 + 3376) != state)
      {
        OUTLINED_FUNCTION_29(state);
      }

      [SCNMTLRenderContext setRasterizerStates:v58];
      if (v84)
      {
        SCNMTLRenderCommandEncoder::setVertexBytes(*(v58 + 248), v84, a46, 1);
      }

      SCNMTLRenderCommandEncoder::setVertexBuffers(*(v58 + 248), v63, v62, v61, v60);
      SCNMTLRenderCommandEncoder::drawPrimitives(*(v58 + 248), v66, 0, v65, v64, 0);
    }

    else if (([SCNMTLRenderContext authoring_drawPrimitives:vertexCount:instanceCount:vertexBuffers:offsets:range:vertexDescriptor:withProgram:uniforms:uniformsLength:rasterizerStates:blendStates:]::done & 1) == 0)
    {
      [SCNMTLRenderContext authoring_drawPrimitives:vertexCount:instanceCount:vertexBuffers:offsets:range:vertexDescriptor:withProgram:uniforms:uniformsLength:rasterizerStates:blendStates:]::done = 1;
      v59 = scn_default_log();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        LOWORD(a16) = 0;
        OUTLINED_FUNCTION_8_2();
        _os_log_error_impl(v76, v77, v78, v79, v80, 2u);
      }
    }

    OUTLINED_FUNCTION_42();
  }
}

- (double)processRendererElements:(int)elements count:(uint64_t)count engineIterationContext:
{
  v46 = *MEMORY[0x277D85DE8];
  if (self)
  {
    countCopy = count;
    LODWORD(v5) = elements;
    v8 = *(count + 8);
    C3DEngineContextGetFXContext(v8);
    v9 = countCopy[2];
    v43 = *(*countCopy + 6);
    WarmUpAbortHandler = C3DEngineContextGetWarmUpAbortHandler(v8);
    ProgramHashCodeStore = C3DEngineContextGetProgramHashCodeStore(v8);
    v11 = *(self + 15544);
    if ((v11 & 2) != 0)
    {
      v12 = *(self + 248);
      if ((*(v12 + 74) & 1) == 0 && *(v12 + 24) != 1)
      {
        *(v12 + 24) = 1;
        *(v12 + 42) = 1;
      }

      *(v12 + 74) = 1;
    }

    v13 = OUTLINED_FUNCTION_35();
    [(SCNMTLRenderContext *)v13 startProcessingRendererElementsWithEngineIterationContext:v14];
    MaxDrawingCommand = C3DEngineContextGetMaxDrawingCommand(v8);
    DynamicBatchingSystem = C3DSceneGetDynamicBatchingSystem(*(v9 + 4808));
    if (v5)
    {
      v36 = v11;
      v38 = countCopy;
      v15 = 0;
      v16 = 0;
      v37 = v5;
      v5 = v5;
      v39 = a2;
      while (1)
      {
        v17 = *a2++;
        v8 = v8 & 0xFFFFFFFF00000000 | v17;
        Element = C3DRendererElementStoreGetElement(v43, v8);
        v19 = *(self + 2248);
        if (v19)
        {
          v20 = (*(*v19 + 80))(v19);
        }

        else
        {
          v20 = 0;
        }

        Pass = C3DFXPassInstanceGetPass(v9);
        ProgramHashCodeForRenderElement = C3DProgramHashCodeStoreGetProgramHashCodeForRenderElement(ProgramHashCodeStore, Element, Pass, v20);
        v23 = ProgramHashCodeForRenderElement;
        if (!v15)
        {
          goto LABEL_25;
        }

        if (*(v15 + 16) != *(Element + 16) || *(v15 + 24) != *(Element + 24))
        {
          break;
        }

        v24 = v16 == ProgramHashCodeForRenderElement && *(v15 + 48) == *(Element + 48);
        if (!v24 || *(v15 + 56) != *(Element + 56) || !C3DDeformerStackAreDeformedNodesCompatibleWithInstancing(*(v15 + 8), *(Element + 8)) || !C3DDynamicBatchingSystemCurrentBatchAppend(DynamicBatchingSystem, *(Element + 8)))
        {
          break;
        }

        Element = v15;
LABEL_38:
        if (!--v5)
        {
LABEL_39:
          countCopy = v38;
          a2 = v39;
          LODWORD(v5) = v37;
          LOBYTE(v11) = v36;
          if (Element)
          {
            _processRendererElement(self, Element, v9);
            C3DDynamicBatchingSystemCurrentBatchReset(DynamicBatchingSystem);
          }

          goto LABEL_41;
        }
      }

      v25 = OUTLINED_FUNCTION_35();
      _processRendererElement(v25, v26, v9);
      C3DDynamicBatchingSystemCurrentBatchReset(DynamicBatchingSystem);
      v16 = 0;
LABEL_25:
      if (!MaxDrawingCommand && v23 && C3DProgramHashCodeUseDynamicBatching(v23) && (v27 = *(Element + 16)) != 0 && C3DGeometryIsDynamicBatchingEnabled(v27))
      {
        if ((C3DProgramHashCodeUseDynamicBatching(v23) & 1) == 0)
        {
          v28 = scn_default_log();
          if (OUTLINED_FUNCTION_33(v28))
          {
            *buf = 136315138;
            v45 = "!programHashCode || C3DProgramHashCodeUseDynamicBatching(programHashCode)";
            _os_log_fault_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. shader does not support batching!", buf, 0xCu);
          }
        }

        C3DDynamicBatchingSystemCurrentBatchAppend(DynamicBatchingSystem, *(Element + 8));
        v16 = v23;
        if (!WarmUpAbortHandler)
        {
          goto LABEL_37;
        }
      }

      else
      {
        _processRendererElement(self, Element, v9);
        Element = 0;
        if (!WarmUpAbortHandler)
        {
LABEL_37:
          ++*(*(self + 16) + 12);
          v15 = Element;
          goto LABEL_38;
        }
      }

      if ((*(WarmUpAbortHandler + 16))(WarmUpAbortHandler))
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

LABEL_41:
    RenderGraph = C3DEngineContextGetRenderGraph(*(self + 144));
    v30 = *(self + 2248);
    if (v30)
    {
      v31 = (*(*v30 + 64))(v30);
    }

    else
    {
      v31 = 0;
    }

    isMainPass = C3D::RenderGraph::isMainPass(RenderGraph, v31);
    v33 = isMainPass;
    if ((*(self + 15544) & 4) != 0 && isMainPass)
    {
      [(SCNMTLRenderContext *)self drawWireframeOverlayForElements:a2 range:0 store:v5 passInstance:v43, countCopy[2]];
    }

    if ((v11 & 2) != 0)
    {
      v34 = *(self + 248);
      *(v34 + 74) = 0;
      if (*(v34 + 24))
      {
        *(v34 + 24) = 0;
        *(v34 + 42) = 1;
      }
    }

    return [(SCNMTLRenderContext *)self stopProcessingRendererElements:v33];
  }

  return result;
}

- (uint64_t)drawWireframeOverlayForElements:(unsigned int)elements range:(int)range store:(uint64_t)store passInstance:(unsigned __int8 *)instance
{
  v36 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v10 = result;
    [*(*(result + 248) + 3392) pushDebugGroup:@"SceneKit - Draw wireframe"];
    v11 = OUTLINED_FUNCTION_5_2();
    LODWORD(v12) = -1138501878;
    LODWORD(v13) = -1194215657;
    LODWORD(v14) = -10.0;
    [v11 setDepthBias:v14 slopeScale:v12 clamp:v13];
    if (elements < elements + range)
    {
      v15 = (a2 + 4 * elements);
      v16 = elements + range - elements;
      do
      {
        v17 = *v15++;
        a2 = a2 & 0xFFFFFFFF00000000 | v17;
        Element = C3DRendererElementStoreGetElement(store, a2);
        Node = C3DRendererElementGetNode(Element);
        Geometry = C3DRendererElementGetGeometry(Element);
        Mesh = C3DRendererElementGetMesh(Element);
        MeshElement = C3DRendererElementGetMeshElement(Element);
        if (MeshElement)
        {
          v23 = MeshElement;
          v24 = v10[281];
          if (v24)
          {
            v25 = (*(*v24 + 80))(v24);
          }

          else
          {
            v25 = 0;
          }

          v26 = [(SCNMTLResourceManager *)v10[14] wireframeResourceForRendererElement:v10[18] engineContext:instance passInstance:v25 hashPass:?];
          if (v26)
          {
            material = v26->material;
            program = v26->program;
            C3DMeshSourceGetMTLVertexFormat(material);
            [SCNMTLRenderContext setRasterizerStates:v10];
            v27 = (Element[36] >> 11) & 7;
            v31[0] = program;
            v31[1] = material;
            v31[2] = Geometry;
            v31[3] = Node;
            v31[4] = Mesh;
            v31[5] = v23;
            memset(&v31[6], 0, 24);
            v32 = 257;
            v33 = 0;
            v34 = v27;
            v35 = 0;
            [v10 _executeDrawCommand:v31];
          }
        }

        --v16;
      }

      while (v16);
    }

    [OUTLINED_FUNCTION_5_2() setDepthBias:0.0 slopeScale:0.0 clamp:0.0];
    return [OUTLINED_FUNCTION_5_2() popDebugGroup];
  }

  return result;
}

- (double)stopProcessingRendererElements:(uint64_t)elements
{
  if (elements)
  {
    if (a2)
    {
      if (*(elements + 2256) == 1)
      {
        v3 = OUTLINED_FUNCTION_37();
        AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(v3, v4);
        if (AuthoringEnvironment)
        {
          if (C3DAuthoringEnvironmentShouldDisplayLightInfluences(AuthoringEnvironment))
          {
            v6 = *(elements + 2216);
            if (!*(v6 + 4760))
            {
              memcpy(v9, (v6 + 96), sizeof(v9));
              SCNMTLClusterSystem::displayInfoDebug(elements + 14544, *(elements + 248), *(elements + 144), v9, (elements + 14736));
            }
          }
        }
      }

      v7 = *(elements + 15544);
      if ((v7 & 0x10) != 0)
      {
        [elements _drawPBRTextures];
        v7 = *(elements + 15544);
      }

      if ((v7 & 8) != 0)
      {
        [elements _drawShadowMaps];
      }
    }

    *(elements + 2264) = 0;
    result = 0.0;
    *(elements + 2232) = 0u;
    *(elements + 2248) = 0u;
    *(elements + 2216) = 0u;
  }

  return result;
}

- (void)drawRenderElement:(uint64_t)element withPass:(uint64_t)pass
{
  OUTLINED_FUNCTION_43();
  a45 = v47;
  a46 = v51;
  a33 = *MEMORY[0x277D85DE8];
  if (!v48)
  {
    goto LABEL_53;
  }

  v52 = v50;
  v53 = v49;
  v54 = v48;
  if (!*(v48 + 144))
  {
    v55 = scn_default_log();
    if (OUTLINED_FUNCTION_33(v55))
    {
      LODWORD(a18) = 136315138;
      *(&a18 + 4) = "_engineContext";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v46, v56, "Assertion '%s' failed. Null argument", &a18);
    }
  }

  Node = C3DRendererElementGetNode(v53);
  Geometry = C3DRendererElementGetGeometry(v53);
  Mesh = C3DRendererElementGetMesh(v53);
  MeshElement = C3DRendererElementGetMeshElement(v53);
  a17 = 0uLL;
  a16 = 0;
  if (v52)
  {
    DrawInstruction = C3DFXPassGetDrawInstruction(v52);
    v62 = v52;
    if (DrawInstruction == 2)
    {
      v62 = v52;
      if ((*(Node + 221) & 0x10) != 0)
      {
        v62 = *(v54 + 2240);
      }
    }
  }

  else
  {
    v62 = 0;
  }

  C3DEnginePipelineGetRenderComponentsForRenderPass(v53, v62, *(v54 + 144), &a17 + 1, &a16, &a17, 0);
  IsOpaque = C3DRendererElementIsOpaque(v53);
  v64 = a16;
  if (!IsOpaque || !a16)
  {
    if (IsOpaque)
    {
      v110 = 0;
      v65 = 1;
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if ((C3DProgramHashCodeIsOpaque(a16) & 1) == 0)
  {
LABEL_16:
    if (Node)
    {
      C3DNodeGetWorldAlpha(Node);
      if (v66 <= 0.0)
      {
        goto LABEL_53;
      }
    }

    if (!a16)
    {
      HasConstantAlpha = 0;
      v115 = 0;
      v110 = 0;
      goto LABEL_30;
    }

    CommonProfile = C3DMaterialGetCommonProfile(*(&a17 + 1));
    if (CommonProfile)
    {
      v68 = CommonProfile;
      TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(CommonProfile);
      v110 = TransparencyMode;
      if (C3DProgramHashCodeHasShaderModifiers(a16))
      {
        v65 = 0;
      }

      else
      {
        ConstantAlpha = C3DEffectCommonProfileGetConstantAlpha(v68);
        v65 = 0;
        if (TransparencyMode != 1 && ConstantAlpha <= 0.0)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v65 = 0;
      v110 = 0;
    }

    goto LABEL_24;
  }

  v110 = 0;
  v65 = 1;
LABEL_24:
  v64 = a16;
LABEL_25:
  v115 = v65;
  if (v64)
  {
    HasConstantAlpha = C3DProgramHashCodeHasConstantAlpha(v64);
    if (a16)
    {
      v114 = C3DProgramHashCodeNeedTangents(a16);
      if (!v52)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    HasConstantAlpha = 0;
  }

LABEL_30:
  v114 = 0;
  if (!v52)
  {
    goto LABEL_32;
  }

LABEL_31:
  RasterizerStates = C3DFXPassGetRasterizerStates(v52);
  if (RasterizerStates)
  {
    RaterizerStates = RasterizerStates;
    goto LABEL_59;
  }

LABEL_32:
  RaterizerStates = C3DRendererElementGetRaterizerStates(v53);
  if (RaterizerStates)
  {
LABEL_59:
    [SCNMTLRenderContext setRasterizerStates:v54];
    v72 = 0;
    goto LABEL_34;
  }

  v72 = 1;
LABEL_34:
  v73 = v53 + 68;
  v74 = *(v53 + 72);
  if ((v74 & 0x40) != 0)
  {
    v76 = MeshElement;
    v77 = Node;
    v75 = v54;
    v78 = *(v54 + 2256);
  }

  else
  {
    v75 = v54;
    v76 = MeshElement;
    v77 = Node;
    v78 = 0;
  }

  v79 = a17;
  v80 = (v74 >> 14) & 1;
  v81 = *(v53 + 56);
  if (v115 & 1) != 0 || (*(*(v75 + 2216) + 4769))
  {
    goto LABEL_51;
  }

  if (v110 == 2)
  {
    a18 = a17;
    a19 = Geometry;
    a20 = v77;
    a21 = Mesh;
    a22 = v76;
    a23 = v81;
    a24 = v52;
    a25 = v73;
    a26 = v115;
    a27 = HasConstantAlpha;
    a28 = v114;
    a29 = v78 & 1;
    a30 = 1;
    OUTLINED_FUNCTION_23();
    v98 = v97;
    v116 = v99;
    v112 = v100;
    v107 = v102;
    v109 = v101;
    [v97 _executeDrawCommand:?];
    a18 = v79;
    a19 = Geometry;
    a20 = v77;
    a21 = Mesh;
    a22 = v76;
    a23 = v81;
    a24 = v52;
    a25 = v112;
    a26 = v116;
    a27 = HasConstantAlpha;
    a28 = v114;
    a29 = v107;
    a30 = 0;
    a31 = v109;
    a32 = 0;
    v96 = v98;
    goto LABEL_52;
  }

  if (v110 != 3)
  {
LABEL_51:
    OUTLINED_FUNCTION_10_2();
    a25 = v93;
    a26 = v94;
    OUTLINED_FUNCTION_24();
    a29 = v95;
    a30 = v80;
    OUTLINED_FUNCTION_23();
LABEL_52:
    [v96 _executeDrawCommand:?];
    goto LABEL_53;
  }

  v105 = v72;
  v82 = *(v75 + 248);
  if ((*(v82 + 73) & 1) == 0 && *(v82 + 16) != 1)
  {
    *(v82 + 16) = 1;
    *(v82 + 41) = 1;
  }

  OUTLINED_FUNCTION_10_2();
  v111 = v83;
  a25 = v83;
  a26 = v84;
  OUTLINED_FUNCTION_24();
  v106 = v86;
  v108 = v85;
  a29 = v86;
  a30 = v80;
  OUTLINED_FUNCTION_23();
  v104 = v87;
  [v87 _executeDrawCommand:?];
  v88 = v104[31];
  if ((*(v88 + 73) & 1) == 0 && *(v88 + 16) != 2)
  {
    *(v88 + 16) = 2;
    *(v88 + 41) = 1;
  }

  OUTLINED_FUNCTION_10_2();
  a25 = v111;
  a26 = v115;
  OUTLINED_FUNCTION_24();
  a29 = v106;
  a30 = v80;
  a31 = v108;
  a32 = 0;
  v90 = v89;
  [v89 _executeDrawCommand:&a18];
  if ((v105 & 1) == 0)
  {
    a18 = 0uLL;
    LODWORD(a20) = 0;
    a19 = 0;
    C3DRasterizerStatesGetDesc(RaterizerStates, &a18);
    v91 = v90[31];
    v92 = C3DCullModeToMTLCullMode(a18);
    if ((*(v91 + 73) & 1) == 0 && *(v91 + 16) != v92)
    {
      *(v91 + 16) = v92;
      *(v91 + 41) = 1;
    }
  }

LABEL_53:
  OUTLINED_FUNCTION_42();
}

- (uint64_t)showsAuthoringEnvironment
{
  if (self)
  {
    return OUTLINED_FUNCTION_30(*(self + 15416));
  }

  else
  {
    return OUTLINED_FUNCTION_30(0);
  }
}

- (uint64_t)setShowsAuthoringEnvironment:(uint64_t)result
{
  if (result)
  {
    *(result + 15416) = a2;
  }

  return result;
}

- (BOOL)forceAsyncShaderCompilation
{
  if (result)
  {
    return *(result + 152) < 0;
  }

  return result;
}

- (uint64_t)setForceAsyncShaderCompilation:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 0x80;
    }

    else
    {
      v2 = 0;
    }

    *(result + 152) = v2 & 0x80 | *(result + 152) & 0x7F;
  }

  return result;
}

- (uint64_t)collectsCompilationErrors
{
  if (self)
  {
    return OUTLINED_FUNCTION_30(*(self + 15424));
  }

  else
  {
    return OUTLINED_FUNCTION_30(0);
  }
}

- (void)setCollectsCompilationErrors:(uint64_t)errors
{
  if (errors)
  {
    *(errors + 15424) = a2;
    v3 = *(errors + 15432);
    if (a2)
    {
      if (!v3)
      {
        v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
        *(errors + 15432) = v3;
      }

      [v3 removeAllObjects];
    }

    else
    {

      *(errors + 15432) = 0;
    }
  }
}

- (uint64_t)compilationErrors
{
  if (result)
  {
    return *(result + 15432);
  }

  return result;
}

- (uint64_t)mapVolatileMesh:(uint64_t)mesh verticesCount:
{
  v18 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_1();
  if ((C3DMeshIsVolatile(v6) & 1) == 0)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v16) = 136315138;
      *(&v16 + 4) = "0";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v12, v13, "Assertion '%s' failed. You can only map volatile mesh", &v16);
    }

    return 0;
  }

  v7 = [(SCNMTLResourceManager *)*(v3 + 112) renderResourceForMesh:v4 dataKind:1];
  if (![(SCNMTLMesh *)v7 volatileStride])
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v16) = 136315138;
      *(&v16 + 4) = "metalMesh.volatileStride != 0";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v8, v9, "Assertion '%s' failed. Mesh should have volatile data to allocate", &v16);
    }
  }

  [(SCNMTLMesh *)v7 volatileBuffer];
  v10 = [(SCNMTLMesh *)v7 volatileStride]* mesh;
  v16 = 0uLL;
  v17 = 0;
  SCNMTLBufferPool::allocate(*(v3 + 2024), v10, &v16);
  [(SCNMTLMesh *)v7 setVolatileSize:v10];
  [(SCNMTLMesh *)v7 setVolatileBuffer:?];
  [(SCNMTLMesh *)v7 setVolatileOffset:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__SCNMTLRenderContext_mapVolatileMesh_verticesCount___block_invoke;
  v15[3] = &__block_descriptor_48_e201_v32__0____C3DMeshSource____C3DGenericSource____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DSourceAccessor________CFData__v_v_qb1b1b1_SCC_8c16q20C28l;
  v15[4] = mesh;
  v15[5] = v16;
  v11 = 1;
  C3DMeshApplySources(v4, 1, v15);
  [*(v3 + 2032) addObject:v7];
  return v11;
}

- (void)unmapVolatileMesh:(uint64_t)mesh modifiedVerticesCount:
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    if (C3DMeshIsVolatile(a2))
    {
      v6 = [(SCNMTLResourceManager *)*(self + 112) renderResourceForMesh:a2 dataKind:1];
      [(SCNMTLRenderContext *)v6 sampleCount];
      if ((mesh & 0x8000000000000000) == 0)
      {
        [(SCNMTLMesh *)v6 volatileStride];
      }

      volatileBuffer = [(SCNMTLMesh *)v6 volatileBuffer];
      [(SCNMTLMesh *)v6 volatileOffset];
      if (!volatileBuffer)
      {
        v8 = scn_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v12 = 136315138;
          v13 = "sub.buffer != nil";
          OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v8, v9, "Assertion '%s' failed. Mesh should be mapped", &v12);
        }
      }

      C3DMeshApplySources(a2, 1, &__block_literal_global_416);
    }

    else
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v12 = 136315138;
        v13 = "0";
        OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v10, v11, "Assertion '%s' failed. You can only map volatile mesh", &v12);
      }
    }
  }
}

- (const)createVolatileMeshElementOfType:(int)type primitiveCount:(uint64_t)count bytesPerIndex:
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  if ([*(self + 2056) count])
  {
    Volatile = [*(self + 2056) lastObject];
    [*(self + 2048) addObject:Volatile];
    [*(self + 2056) removeLastObject];
  }

  else
  {
    Volatile = C3DMeshElementCreateVolatile();
    [*(self + 2048) addObject:Volatile];
    CFRelease(Volatile);
  }

  if (!Volatile)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v18 = 136315138;
      v19 = "meshElement";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v9, v10, "Assertion '%s' failed. Null argument", &v18);
    }
  }

  C3DMeshElementSetType(Volatile, a2);
  C3DMeshElementSetPrimitives(Volatile, type, 0, count);
  v11 = [SCNMTLResourceManager renderResourceForMeshElement:?];
  if ([(SCNMTLMeshElement *)v11 indexBuffer])
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v18 = 136315138;
      v19 = "metalMeshElement.indexBuffer == nil";
      OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v12, v13, "Assertion '%s' failed. Mesh should not be already mapped", &v18);
    }
  }

  [(SCNMTLMeshElement *)v11 setupWithElement:?];
  v14 = [self _newMTLBufferFromPoolWithLength:-[SCNMTLResourceManager commandQueue](v11) * count];
  [(SCNMTLMeshElement *)v11 setIndexBuffer:v14];

  [objc_msgSend(v14 "buffer")];
  offset = [OUTLINED_FUNCTION_20() offset];
  libraryManager = [(SCNMTLResourceManager *)v11 libraryManager];
  C3DMeshElementSetVolatileDataPtr(Volatile, self + offset + libraryManager);
  return Volatile;
}

- (uint64_t)unmapVolatileMeshElement:(uint64_t)result
{
  if (result)
  {
    v3 = [SCNMTLResourceManager renderResourceForMeshElement:?];
    [-[SCNMTLMeshElement indexBuffer](v3) buffer];
    [-[SCNMTLMeshElement indexBuffer](v3) offset];
    C3DMeshElementGetBytesPerIndex(a2);

    return [(SCNMTLResourceManager *)v3 commandQueue];
  }

  return result;
}

- (uint64_t)drawFullScreenQuadForPass:(uint64_t)result
{
  v23 = *MEMORY[0x277D85DE8];
  if (result)
  {
    OUTLINED_FUNCTION_5_1();
    if (!*(v5 + 144))
    {
      v6 = scn_default_log();
      if (OUTLINED_FUNCTION_33(v6))
      {
        LODWORD(v12) = 136315138;
        *(&v12 + 4) = "_engineContext";
        OUTLINED_FUNCTION_0_0(&dword_21BEF7000, v3, v7, "Assertion '%s' failed. Null argument", &v12);
      }
    }

    C3DEngineContextGetQuadMesh(v1[18]);
    v8 = OUTLINED_FUNCTION_20();
    C3DFXPassGetProgram(v8);
    v9 = OUTLINED_FUNCTION_39();
    Material = C3DFXPassGetMaterial(v9);
    ElementAtIndex = C3DMeshGetElementAtIndex(v3, 0, 1);
    *&v12 = v4;
    *(&v12 + 1) = Material;
    v13 = 0;
    v14 = 0;
    v15 = v3;
    v16 = ElementAtIndex;
    v17 = 0;
    v18 = v2;
    v19 = 0;
    v20 = 257;
    v21 = 0;
    v22 = 0;
    return [v1 _executeDrawCommand:&v12];
  }

  return result;
}

- (uint64_t)currentRenderCommandEncoder
{
  if (result)
  {
    v1 = *(result + 248);
    if (v1)
    {
      return *(v1 + 3392);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)currentRenderPassDescriptor
{
  if (result)
  {
    return *(C3DEngineContextGetRenderGraph(*(result + 144)) + 152);
  }

  return result;
}

- (uint64_t)currentCommandBuffer
{
  if (result)
  {
    return *(result + 240);
  }

  return result;
}

- (void)_drawPBRTextures
{
  OUTLINED_FUNCTION_44();
  v178 = v2;
  v179 = v4;
  v5 = v3;
  if (v3)
  {
    v3 = *(C3DEngineContextGetRenderGraph(v3[18]) + 152);
  }

  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v3 "colorAttachments")];
  if (v5)
  {
    v7 = *(C3DEngineContextGetRenderGraph(v5[18]) + 152);
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_msgSend(objc_msgSend(objc_msgSend(v7 "colorAttachments")];
  if (v6)
  {
    if (v5[1921] != v6 || v5[1922] != v8)
    {
      v5[1921] = v6;
      v5[1922] = v8;
      frameworkLibrary = [-[SCNMTLResourceManager libraryManager](v5[14]) frameworkLibrary];
      bzero(v171, 0x168uLL);
      v173 = frameworkLibrary;
      v175 = C3DBlendStatesDefaultOver();
      v176 = @"quad_vertex";
      v177 = @"quad_display_cube_equirectangular";
      RenderGraph = C3DEngineContextGetRenderGraph(v5[18]);
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&v174, *(RenderGraph + 152));

      v11 = v5[14];
      OUTLINED_FUNCTION_18(v12, v13, v14, v15, v16, v17, v18, v19, v112, *(&v112 + 1), v118.n128_i64[0], v118.n128_i64[1], v121, *(&v121 + 1), v124, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171[0]);
      v5[1923] = [v11 newRenderPipelineStateWithDesc:&v126];
      v175 = C3DBlendStatesDefaultReplace();
      v177 = @"quad_display_texture2D";

      v20 = v5[14];
      OUTLINED_FUNCTION_18(v21, v22, v23, v24, v25, v26, v27, v28, v113, v116, v119, v120, v122, v123, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171[0]);
      v5[1924] = [v20 newRenderPipelineStateWithDesc:&v126];
    }

    v29 = v5[31];
    if ((*(v29 + 73) & 1) == 0 && *(v29 + 16))
    {
      *(v29 + 16) = 0;
      *(v29 + 41) = 1;
    }

    [*(v29 + 3392) setDepthStencilState:-[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled](v5[14])];
    Scene = C3DEngineContextGetScene(v5[18]);
    v31 = v5[1894];
    if (v31)
    {
      arrayLength = [v31 arrayLength];
      mipmapLevelCount = [v5[1894] mipmapLevelCount];
      pixelFormat = [v5[1894] pixelFormat];
      Viewport = C3DEngineContextGetViewport(v5[18]);
      v35 = Viewport.n128_f32[2];
      v114 = Viewport;
      v36 = Viewport.n128_f32[3];
      Viewport.n128_f32[0] = Viewport.n128_f32[2] / Viewport.n128_f32[3];
      v38 = 1.0 / arrayLength;
      *&v39 = v38 + ((4.0 / Viewport.n128_f32[3]) * -2.0);
      v40 = *&v39 * 2.5;
      v121 = v39;
      if ((Viewport.n128_f32[2] / Viewport.n128_f32[3]) <= 1.0)
      {
        Viewport.n128_f32[0] = Viewport.n128_f32[0] * v40;
      }

      else
      {
        Viewport.n128_f32[0] = v40 / Viewport.n128_f32[0];
      }

      v118 = Viewport;
      IsCube = SCNMTLTextureTypeIsCube([v5[1894] textureType]);
      v59 = v5[31];
      if (IsCube)
      {
        state = [v5[1923] state];
        if (*(v59 + 3376) != state)
        {
          *(v59 + 3376) = state;
          [*(v59 + 3392) setRenderPipelineState:state];
        }

        if (arrayLength)
        {
          v62 = 0;
          v63 = -*(&v112 + 1) / v36;
          *&v61 = *&v112 / v35;
          v112 = v61;
          do
          {
            OUTLINED_FUNCTION_31([v5[1894] newTextureViewWithPixelFormat:pixelFormat textureType:5 levels:0 slices:mipmapLevelCount, v62, 6, v112]);
            v172 = __PAIR64__(v121, v118.n128_u32[0]);
            OUTLINED_FUNCTION_1_8(v64, v65, v66, v67, v68, v69, v70, v71, v115, v117, v118.n128_i64[0], v118.n128_i64[1], v121, *(&v121 + 1), v124, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v115);
            v72 = v5[31];
            SCNMTLRenderCommandEncoder::_bindPendingTextures(v72);
            SCNMTLRenderCommandEncoder::applyChangedStates(v72);
            OUTLINED_FUNCTION_6_1(*(v72 + 3392), v73);
            v63 = v38 + v63;
            v62 += 6;
            --arrayLength;
          }

          while (arrayLength);
        }
      }

      else
      {
        state2 = [v5[1924] state];
        if (*(v59 + 3376) != state2)
        {
          *(v59 + 3376) = state2;
          [*(v59 + 3392) setRenderPipelineState:state2];
        }

        if (arrayLength)
        {
          v75 = 0;
          v76 = 0.0;
          do
          {
            OUTLINED_FUNCTION_31([v5[1894] newTextureViewWithPixelFormat:pixelFormat textureType:2 levels:0 slices:mipmapLevelCount, v75, 1]);
            v172 = __PAIR64__(v121, v118.n128_u32[0]);
            OUTLINED_FUNCTION_1_8(v77, v78, v79, v80, v81, v82, v83, v84, v112, *(&v112 + 1), v118.n128_i64[0], v118.n128_i64[1], v121, *(&v121 + 1), v124, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, 0);
            v85 = v5[31];
            SCNMTLRenderCommandEncoder::_bindPendingTextures(v85);
            SCNMTLRenderCommandEncoder::applyChangedStates(v85);
            OUTLINED_FUNCTION_6_1(*(v85 + 3392), v86);
            ++v75;
            v76 = v38 + v76;
          }

          while (arrayLength != v75);
        }
      }
    }

    else
    {
      LightingEnvironmentEffectSlot = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
      if (LightingEnvironmentEffectSlot)
      {
        v42 = LightingEnvironmentEffectSlot;
        if (C3DEffectSlotHasImageOrTexture(LightingEnvironmentEffectSlot) || C3DEffectSlotHasPrecomputedLightingEnvironment(v42))
        {
          v43 = OUTLINED_FUNCTION_35();
          v44 = [SCNMTLRenderContext radianceTextureForEffectSlot:v43];
          if (v44)
          {
            v45 = v44;
            v46 = v5[31];
            state3 = [v5[1923] state];
            if (*(v46 + 3376) != state3)
            {
              *(v46 + 3376) = state3;
              [*(v46 + 3392) setRenderPipelineState:state3];
            }

            SCNMTLRenderCommandEncoder::setFragmentTexture(v5[31], v45, 0);
            v172 = 0x3F0000003F000000;
            OUTLINED_FUNCTION_1_8(v48, v49, v50, v51, v52, v53, v54, v55, v112, *(&v112 + 1), v118.n128_i64[0], v118.n128_i64[1], v121, *(&v121 + 1), v124, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, 0);
            v56 = v5[31];
            SCNMTLRenderCommandEncoder::_bindPendingTextures(v56);
            SCNMTLRenderCommandEncoder::applyChangedStates(v56);
            OUTLINED_FUNCTION_6_1(*(v56 + 3392), v57);
          }
        }
      }
    }

    v87 = C3DSceneGetLightingEnvironmentEffectSlot(Scene, 0);
    if (v87)
    {
      v88 = v87;
      if (C3DEffectSlotHasImageOrTexture(v87) || C3DEffectSlotHasPrecomputedLightingEnvironment(v88))
      {
        if ([SCNMTLRenderContext irradianceTextureForEffectSlot:v5])
        {
          [v5[1923] state];
          OUTLINED_FUNCTION_27();
          if (!v90)
          {
            OUTLINED_FUNCTION_12_0(v101);
          }

          OUTLINED_FUNCTION_19();
          v172 = 0x3F0000003F000000;
          OUTLINED_FUNCTION_1_8(v102, v103, v104, v105, v106, v107, v108, v109, v112, *(&v112 + 1), v118.n128_i64[0], v118.n128_i64[1], v121, *(&v121 + 1), v124, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, 0);
          v110 = v5[31];
          SCNMTLRenderCommandEncoder::_bindPendingTextures(v110);
          SCNMTLRenderCommandEncoder::applyChangedStates(v110);
          OUTLINED_FUNCTION_6_1(*(v110 + 3392), v111);
        }
      }
    }

    if ([v5[14] specularDFGDiffuseHammonTextureWithRenderContext:v5])
    {
      [v5[1924] state];
      OUTLINED_FUNCTION_27();
      if (!v90)
      {
        OUTLINED_FUNCTION_12_0(v89);
      }

      OUTLINED_FUNCTION_19();
      v172 = 0x3E0000003E000000;
      OUTLINED_FUNCTION_1_8(v91, v92, v93, v94, v95, v96, v97, v98, v112, *(&v112 + 1), v118.n128_i64[0], v118.n128_i64[1], v121, *(&v121 + 1), v124, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, 0);
      v99 = v5[31];
      SCNMTLRenderCommandEncoder::_bindPendingTextures(v99);
      SCNMTLRenderCommandEncoder::applyChangedStates(v99);
      OUTLINED_FUNCTION_6_1(*(v99 + 3392), v100);
    }
  }

  OUTLINED_FUNCTION_17();
}

- (void)_drawShadowMaps
{
  OUTLINED_FUNCTION_44();
  v134 = v4;
  v135 = v6;
  v7 = v5;
  if (v5)
  {
    v5 = *(C3DEngineContextGetRenderGraph(v5[18]) + 152);
  }

  v8 = [objc_msgSend(objc_msgSend(v5 "colorAttachments")];
  if (v8)
  {
    v9 = v8;
    [v8 pixelFormat];
    sampleCount = [OUTLINED_FUNCTION_20() sampleCount];
    if (v7[1921] != v2 || v7[1922] != sampleCount)
    {
      v7[1921] = v2;
      v7[1922] = sampleCount;
      frameworkLibrary = [-[SCNMTLResourceManager libraryManager](v7[14]) frameworkLibrary];
      v3 = v129;
      bzero(v129, 0x168uLL);
      v131 = frameworkLibrary;
      v132[23] = @"quad_vertex";
      v133 = @"quad_display_depth2D";
      RenderGraph = C3DEngineContextGetRenderGraph(v7[18]);
      SCNMTLRenderPipelineApplyRenderPassDescriptor(v132, *(RenderGraph + 152));

      v13 = v7[14];
      OUTLINED_FUNCTION_18(v14, v15, v16, v17, v18, v19, v20, v21, v67, *(&v67 + 1), v72, v75, v77, v80, v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0]);
      v7[1925] = [v13 newRenderPipelineStateWithDesc:&v84];
      v133 = @"quad_display_depth_cube";

      v22 = v7[14];
      OUTLINED_FUNCTION_18(v23, v24, v25, v26, v27, v28, v29, v30, v68, v70, v73, v76, v78, v81, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129[0]);
      v7[1926] = [v22 newRenderPipelineStateWithDesc:&v84];
    }

    v31 = v7[31];
    if ((*(v31 + 73) & 1) == 0 && *(v31 + 16))
    {
      *(v31 + 16) = 0;
      *(v31 + 41) = 1;
    }

    [*(v31 + 3392) setDepthStencilState:-[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled](v7[14])];
    height = [v9 height];
    v33 = 0;
    v34 = 0;
    *&v35 = (height / [v9 width]) * 0.125;
    LODWORD(v36) = 1008981770;
    v37 = v7 + 1860;
    v38 = *&v35 + 0.01;
    v74 = v36;
    v79 = v35;
    while (1)
    {
      v39 = v37[v34];
      if (v39)
      {
        break;
      }

LABEL_20:
      if (++v34 == 8)
      {
        goto LABEL_29;
      }
    }

    if ([v37[v34] textureType] == 5)
    {
      v40 = v7[1926];
    }

    else
    {
      if ([v39 textureType] != 2)
      {
        if ([v39 textureType] == 3)
        {
          [v7[1925] state];
          OUTLINED_FUNCTION_27();
          if (!v42)
          {
            OUTLINED_FUNCTION_12_0(v53);
          }

          if ([v39 arrayLength])
          {
            v55 = 0;
            *&v54 = (v33 * -0.135) + 0.865;
            v67 = v54;
            do
            {
              [v39 pixelFormat];
              v3 = [v39 newTextureViewWithPixelFormat:v3 textureType:2 levels:0 slices:objc_msgSend(OUTLINED_FUNCTION_39(), "mipmapLevelCount"), v55, 1];
              SCNMTLRenderCommandEncoder::setFragmentTexture(v7[31], v3, 0);
              v56 = *&v74 + (v55 * v38);
              v130 = v79 | 0x3E00000000000000;
              OUTLINED_FUNCTION_1_8(v57, v58, v59, v60, v61, v62, v63, v64, v69, v71, v74, *(&v74 + 1), v79, *(&v79 + 1), v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, SLOBYTE(v56));
              v65 = v7[31];
              SCNMTLRenderCommandEncoder::_bindPendingTextures(v65);
              SCNMTLRenderCommandEncoder::applyChangedStates(v65);
              OUTLINED_FUNCTION_6_1(*(v65 + 3392), v66);

              ++v55;
            }

            while (v55 < [v39 arrayLength]);
          }
        }

        goto LABEL_19;
      }

      v40 = v7[1925];
    }

    [v40 state];
    OUTLINED_FUNCTION_27();
    if (!v42)
    {
      OUTLINED_FUNCTION_12_0(v41);
    }

    OUTLINED_FUNCTION_19();
    v130 = __PAIR64__(0.125, v79);
    OUTLINED_FUNCTION_1_8(v43, v44, v45, v46, v47, v48, v49, v50, v67, *(&v67 + 1), v74, *(&v74 + 1), v79, *(&v79 + 1), v82, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v74);
    v51 = v7[31];
    SCNMTLRenderCommandEncoder::_bindPendingTextures(v51);
    SCNMTLRenderCommandEncoder::applyChangedStates(v51);
    OUTLINED_FUNCTION_6_1(*(v51 + 3392), v52);
LABEL_19:
    ++v33;
    goto LABEL_20;
  }

LABEL_29:
  OUTLINED_FUNCTION_17();
}

- (uint64_t)_drawFullScreenTexture:(unsigned int)texture over:
{
  if (result)
  {
    OUTLINED_FUNCTION_5_1();
    v6 = *(C3DEngineContextGetRenderGraph(*(v5 + 144)) + 152);
    v7 = [objc_msgSend(objc_msgSend(v6 "depthAttachment")];
    v8 = [objc_msgSend(objc_msgSend(v6 "stencilAttachment")];
    v9 = 0;
    v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v7)))) >> 47));
    do
    {
      v11 = [objc_msgSend(v6 "colorAttachments")];
      v12 = [objc_msgSend(v11 "texture")];
      v13 = [objc_msgSend(v11 "texture")];
      v14 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v12 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ v10)));
      v15 = 0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47));
      ++v9;
      v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v13)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v15 ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * (v15 ^ v13)))) >> 47));
    }

    while (v9 != 8);
    v16 = v3 + 16 * texture + 15304;
    if (*v16 != v10)
    {
      *v16 = v10;
      frameworkLibrary = [-[SCNMTLResourceManager libraryManager](*(v3 + 112)) frameworkLibrary];
      bzero(__src, 0x168uLL);
      __src[15] = frameworkLibrary;
      if (texture)
      {
        v18 = @"scn_draw_fullscreen_fragment_sk";
        v19 = C3DBlendStatesDefaultOver();
      }

      else
      {
        v19 = 0;
        v18 = @"scn_draw_fullscreen_gamma_fragment";
      }

      __src[27] = v19;
      __src[39] = @"scn_draw_fullscreen_triangle_vertex";
      __src[40] = v18;
      RenderGraph = C3DEngineContextGetRenderGraph(*(v3 + 144));
      SCNMTLRenderPipelineApplyRenderPassDescriptor(&__src[16], *(RenderGraph + 152));

      v21 = *(v3 + 112);
      memcpy(v25, __src, sizeof(v25));
      *(v16 + 8) = [v21 newRenderPipelineStateWithDesc:v25];
    }

    v22 = *(v3 + 248);
    if ((*(v22 + 73) & 1) == 0 && *(v22 + 16))
    {
      *(v22 + 16) = 0;
      *(v22 + 41) = 1;
    }

    [*(v22 + 3392) setDepthStencilState:-[SCNMTLResourceManager depthAndStencilStateWithReadWriteDepthDisabled](*(v3 + 112))];
    [*(v16 + 8) state];
    OUTLINED_FUNCTION_27();
    if (!v24)
    {
      OUTLINED_FUNCTION_12_0(v23);
    }

    OUTLINED_FUNCTION_19();
    return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(*(v3 + 248));
  }

  return result;
}

- (double)renderTime
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 2728);
  return result;
}

- (void)renderSKSceneWithRenderer:overlay:atTime:
{
  OUTLINED_FUNCTION_44();
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v2;
  OUTLINED_FUNCTION_5_1();
  [v5 updateAtTime:?];
  v6 = *(v0 + 216);
  if (C3DLinearRenderingIsEnabled())
  {
    commandBuffer = [-[SCNMTLRenderContext commandQueue](v0) commandBuffer];
    v8 = [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
    if (!v8)
    {
      v8 = [objc_msgSend(objc_msgSend(v6 "colorAttachments")];
      if (!v8)
      {
LABEL_5:
        OUTLINED_FUNCTION_17();
        return;
      }
    }

    v13 = v8;
    width = [v8 width];
    height = [v13 height];
    pixelFormat = [v13 pixelFormat];
    v17 = SCNMTLPixelFormatNonSRGBVariant(pixelFormat);
    if (pixelFormat == 555)
    {
      v18 = 552;
    }

    else
    {
      v18 = v17;
    }

    v19 = 0x277CD7000;
    if (v4)
    {
      v20 = (v0 + 15352);
      v21 = *(v0 + 15352);
      if (!v21)
      {
        goto LABEL_24;
      }

      [v21 width];
      v21 = OUTLINED_FUNCTION_41();
      if (v22 != width)
      {
        goto LABEL_24;
      }

      [v21 height];
      v21 = OUTLINED_FUNCTION_41();
      if (v23 != height)
      {
        goto LABEL_24;
      }

      if ([v21 pixelFormat] == v18)
      {
LABEL_25:
        v29 = *v20;
        width2 = [*v20 width];
        if (width2 == [*(v0 + 15360) width] && (v31 = objc_msgSend(v29, "height"), v31 == objc_msgSend(*(v0 + 15360), "height")))
        {
          v32 = *(v0 + 15360);
        }

        else
        {
          v33 = [*(v19 + 88) texture2DDescriptorWithPixelFormat:260 width:width height:height mipmapped:0];
          [v33 setStorageMode:2];
          [v33 setUsage:4];

          v32 = [*(v0 + 120) newTextureWithDescriptor:v33];
          *(v0 + 15360) = v32;
        }

        renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
        [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
        [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
        [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
        [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
        [objc_msgSend(renderPassDescriptor "depthAttachment")];
        CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(*(v0 + 144));
        depthAttachment = [renderPassDescriptor depthAttachment];
        v37 = 1.0;
        if ((CoordinatesSystemOptions & 8) != 0)
        {
          v37 = 0.0;
        }

        [depthAttachment setClearDepth:v37];
        [objc_msgSend(renderPassDescriptor "depthAttachment")];
        [objc_msgSend(renderPassDescriptor "depthAttachment")];
        [objc_msgSend(renderPassDescriptor "stencilAttachment")];
        [objc_msgSend(renderPassDescriptor "stencilAttachment")];
        [objc_msgSend(renderPassDescriptor "stencilAttachment")];
        v38 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
        [v1 renderWithEncoder:v38 pass:renderPassDescriptor commandQueue:-[SCNMTLRenderContext commandQueue](v0)];
        [v38 endEncoding];
        [commandBuffer commit];
        OUTLINED_FUNCTION_17();

        [(SCNMTLRenderContext *)v39 _drawFullScreenTexture:v40 over:v41];
        return;
      }
    }

    else
    {
      v20 = (v0 + 15344);
      v21 = *(v0 + 15344);
      if (!v21)
      {
LABEL_24:

        v28 = [*(v19 + 88) texture2DDescriptorWithPixelFormat:v18 width:width height:height mipmapped:0];
        [v28 setStorageMode:2];
        [v28 setUsage:21];
        *v20 = [*(v0 + 120) newTextureWithDescriptor:v28];
        goto LABEL_25;
      }

      width3 = [v21 width];
      [v13 width];
      v21 = OUTLINED_FUNCTION_41();
      if (width3 != v25 || (v26 = [v21 height], objc_msgSend(v13, "height"), v21 = OUTLINED_FUNCTION_41(), v26 != v27))
      {
        v19 = 0x277CD7000uLL;
        goto LABEL_24;
      }

      v19 = 0x277CD7000;
      if ([v21 pixelFormat] == v18)
      {
        goto LABEL_25;
      }
    }

    v21 = *v20;
    goto LABEL_24;
  }

  [OUTLINED_FUNCTION_5_2() pushDebugGroup:@"SpriteKit - NonLinear Encoding"];
  [v1 renderWithEncoder:*(*(v0 + 248) + 3392) pass:v6 commandQueue:-[SCNMTLRenderContext commandQueue](v0)];
  v9 = *(v0 + 248);
  v10 = *(v9 + 3400);
  v43 = *(v9 + 3384);
  bzero(v9, 0xD70uLL);
  *(v9 + 64) = 1;
  *(v9 + 72) = 1;
  *(v9 + 3384) = v43;
  *(v9 + 3400) = v10;
  *(v9 + 40) = 257;
  OUTLINED_FUNCTION_36(1);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_17();

  [v11 popDebugGroup];
}

- (uint64_t)setCurrentPassHash:(uint64_t)result
{
  if (result)
  {
    *(result + 15456) = a2;
  }

  return result;
}

- (uint64_t)setCurrentPassMaterial:(uint64_t)result
{
  if (result)
  {
    *(result + 15464) = a2;
  }

  return result;
}

- (uint64_t)getCurrentPassHash
{
  if (result)
  {
    return *(result + 15456);
  }

  return result;
}

- (uint64_t)getCurrentPassMaterial
{
  if (result)
  {
    return *(result + 15464);
  }

  return result;
}

- (uint64_t)cubeArrayTypeIfSupported
{
  if (result)
  {
    if (*(result + 137))
    {
      return 6;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (void)addCommandBufferScheduledHandler:(uint64_t)handler
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (handler)
  {
    OUTLINED_FUNCTION_5_1();
    os_unfair_lock_lock(v3 + 3872);
    v4 = [v2 copy];
    v5 = v4;
    if (*(v1 + 15496))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = *(v1 + 15496);
      if (isKindOfClass)
      {
        [OUTLINED_FUNCTION_38() addObject:?];
      }

      else
      {
        v8[0] = *(v1 + 15496);
        v8[1] = v5;
        *(v1 + 15496) = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:v8 count:2];
      }
    }

    else
    {
      *(v1 + 15496) = v4;
    }

    os_unfair_lock_unlock((v1 + 15488));
  }
}

- (void)addCommandBufferCompletedHandler:(uint64_t)handler
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (handler)
  {
    OUTLINED_FUNCTION_5_1();
    os_unfair_lock_lock(v3 + 3872);
    v4 = [v2 copy];
    v5 = v4;
    if (*(v1 + 15504))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = *(v1 + 15504);
      if (isKindOfClass)
      {
        [OUTLINED_FUNCTION_38() addObject:?];
      }

      else
      {
        v8[0] = *(v1 + 15504);
        v8[1] = v5;
        *(v1 + 15504) = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:v8 count:2];
      }
    }

    else
    {
      *(v1 + 15504) = v4;
    }

    os_unfair_lock_unlock((v1 + 15488));
  }
}

- (void)addDrawablePresentedHandler:(uint64_t)handler
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (handler)
  {
    OUTLINED_FUNCTION_5_1();
    os_unfair_lock_lock(v3 + 3872);
    v4 = [v2 copy];
    v5 = v4;
    if (*(v1 + 15512))
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v7 = *(v1 + 15512);
      if (isKindOfClass)
      {
        [OUTLINED_FUNCTION_38() addObject:?];
      }

      else
      {
        v8[0] = *(v1 + 15512);
        v8[1] = v5;
        *(v1 + 15512) = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:v8 count:2];
      }
    }

    else
    {
      *(v1 + 15512) = v4;
    }

    os_unfair_lock_unlock((v1 + 15488));
  }
}

- (void)discardPendingCommandBufferScheduledHandlers
{
  if (self)
  {
    OUTLINED_FUNCTION_32(self);

    *(v1 + 15496) = 0;

    os_unfair_lock_unlock((v1 + v2));
  }
}

- (void)discardPendingCommandBufferCompletedHandlers
{
  if (self)
  {
    OUTLINED_FUNCTION_32(self);

    *(v1 + 15504) = 0;

    os_unfair_lock_unlock((v1 + v2));
  }
}

- (void)discardPendingDrawablePresentedHandlers
{
  if (self)
  {
    OUTLINED_FUNCTION_32(self);

    *(v1 + 15512) = 0;

    os_unfair_lock_unlock((v1 + v2));
  }
}

- (uint64_t)_allowGPUBackgroundExecution
{
  if (result && !result[1942] && !result[1945])
  {
    v1 = result[20];
    if (v1)
    {
      commandQueue = result[20];
    }

    else
    {
      commandQueue = [(SCNMTLResourceManager *)result[14] commandQueue];
      v1 = commandQueue;
    }

    result = [commandQueue getBackgroundGPUPriority];
    if (result == 3)
    {

      return [v1 setBackgroundGPUPriority:2];
    }
  }

  return result;
}

- (void)_SCNSceneRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder:(uint64_t)encoder commandBuffer:(uint64_t)buffer renderPassDescriptor:
{
  if (self)
  {
    OUTLINED_FUNCTION_26();
    Scene = C3DEngineContextGetScene(*(v8 + 144));
    BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0);
    if (BackgroundEffectSlot)
    {
      v11 = BackgroundEffectSlot;
      v12 = v4[31];
      if (*(v12 + 3392) == v5)
      {
        v18 = v4[18];

        C3DEngineContextRenderBackgroundMap(v18, v11, 0);
      }

      else
      {
        v13 = v4[27];
        v4[31] = v20;
        v4[27] = buffer;
        SCNMTLRenderCommandEncoder::useCommandEncoder(v20, encoder, v5, v4[261]);
        v14 = v4[31];
        v15 = *(v14 + 3400);
        v19 = *(v14 + 3384);
        bzero(v14, 0xD70uLL);
        *(v14 + 64) = 1;
        *(v14 + 72) = 1;
        *(v14 + 3384) = v19;
        *(v14 + 3400) = v15;
        *(v14 + 40) = 257;
        *(v14 + 42) = 1;
        *(v14 + 8) = 0u;
        *(v14 + 24) = 0u;
        v16 = v4[31];
        v17 = *v16 ^ 1;
        if (*(v16 + 1) != v17)
        {
          *(v16 + 1) = v17;
          v16[40] = 1;
        }

        C3DEngineContextRenderBackgroundMap(v4[18], v11, 0);
        v4[31] = v12;
        v4[27] = v13;
      }
    }
  }
}

- (uint64_t)clientRenderPassDescriptor
{
  if (result)
  {
    return *(result + 15520);
  }

  return result;
}

- (uint64_t)clientRenderCommandEncoder
{
  if (result)
  {
    return *(result + 15528);
  }

  return result;
}

- (uint64_t)clientCommandBuffer
{
  if (result)
  {
    return *(result + 15536);
  }

  return result;
}

- (uint64_t)setDebugOptions:(uint64_t)result
{
  if (result)
  {
    *(result + 15544) = a2;
  }

  return result;
}

- (double)contentScaleFactor
{
  if (self)
  {
    return *(self + 15552);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setContentScaleFactor:(uint64_t)result
{
  if (result)
  {
    *(result + 15552) = a2;
  }

  return result;
}

- (uint64_t)frameTexturePool
{
  if (result)
  {
    return *(result + 2096);
  }

  return result;
}

- (uint64_t)setShouldPresentAfterMinimumDuration:(uint64_t)result
{
  if (result)
  {
    *(result + 212) = a2;
  }

  return result;
}

- (uint64_t)renderEncoder
{
  if (result)
  {
    return *(result + 248);
  }

  return result;
}

- (id)resourceManagerMonitor
{
  if (result)
  {
    return OUTLINED_FUNCTION_13_0(result, 15472);
  }

  return result;
}

- (id)setResourceManagerMonitor:(id)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_14(result, a2, 15472);
  }

  return result;
}

- (id)commandBufferStatusMonitor
{
  if (result)
  {
    return OUTLINED_FUNCTION_13_0(result, 15480);
  }

  return result;
}

- (id)setCommandBufferStatusMonitor:(id)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_14(result, a2, 15480);
  }

  return result;
}

- (uint64_t)generatedTexturePath
{
  if (result)
  {
    return *(result + 15568);
  }

  return result;
}

void __34__SCNMTLRenderContext_beginFrame___block_invoke_cold_1(void *a1)
{
  [a1 status];
  [OUTLINED_FUNCTION_20() error];
  [OUTLINED_FUNCTION_39() logs];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (uint64_t)_createResourceCommandBufferIfNeeded
{
  os_variant_has_internal_diagnostics();
  commandBuffer = [-[SCNMTLRenderContext commandQueue](self) commandBuffer];
  *a2 = commandBuffer;
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __59__SCNMTLRenderContext__createResourceCommandBufferIfNeeded__block_invoke;
  a3[3] = &unk_2782FD3F8;
  a3[4] = self;
  return [commandBuffer addCompletedHandler:a3];
}

void __59__SCNMTLRenderContext__createResourceCommandBufferIfNeeded__block_invoke_cold_1(void *a1)
{
  [a1 status];
  [OUTLINED_FUNCTION_20() error];
  [OUTLINED_FUNCTION_39() logs];
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_2_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

- (void)_executeDrawCommand:(uint64_t *)a3 .cold.7(uint8_t *a1, void *a2, uint64_t *a3)
{
  v5 = [a2 name];
  *a1 = 138412290;
  *a3 = v5;
  OUTLINED_FUNCTION_8_2();
  _os_log_error_impl(v6, v7, v8, v9, a1, 0xCu);
}

- (void)_executeDrawCommand:(NSObject *)a3 .cold.8(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "resourceBinding.bindBlock";
  OUTLINED_FUNCTION_0_0(&dword_21BEF7000, a3, a3, "Assertion '%s' failed. Null argument", a1);
}

- (void)_executeDrawCommand:(NSObject *)a3 .cold.9(uint8_t *a1, _BYTE *a2, NSObject *a3)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_0_2(&dword_21BEF7000, a3, a3, "Error: binding is broken : neither block or semantic", a1);
}

@end