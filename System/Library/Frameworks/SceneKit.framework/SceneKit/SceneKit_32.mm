uint64_t C3D::AuthoringPass::execute(uint64_t a1, SCNMTLRenderCommandEncoder **a2)
{
  v5 = a1 + 4096;
  Scene = C3DEngineContextGetScene(*(a1 + 16));
  EnginePipeline = C3DSceneGetEnginePipeline(Scene);
  RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline);
  [(*a2)->var24[1] pushDebugGroup:@"Authoring"];
  if ((*(v5 + 1288) & 1) != 0 || *(v5 + 1289) == 1)
  {
    [(*a2)->var24[1] setDepthStencilState:{C3D::SmartPtr<SCNMTLRenderPipeline *, C3D::detail::NSRetainFct, C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 64)}];
    v9 = *a2;
    v10 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 24) :"state" detail:? :?NSRetainFct];
    if (v9->var23 != v10)
    {
      v9->var23 = v10;
      [v9->var24[1] setRenderPipelineState:v10];
    }

    v11 = *a2;
    v12 = C3D::Pass::inputTextureAtIndex(a1, 0);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v11, v12, 0);
    SCNMTLRenderCommandEncoder::drawFullScreenTriangle(*a2);
  }

  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(*(a1 + 16), 1);
  if (C3DAuthoringEnvironmentShouldDisplayConstraints(AuthoringEnvironment))
  {
    ControllerManager = C3DSceneGetControllerManager(Scene);
    C3DConstraintManagerAppendAuthoringInfo(ControllerManager, AuthoringEnvironment);
  }

  CullingContext = C3D::DrawNodesPass::getCullingContext(*(a1 + 5360));
  v16 = *(CullingContext + 4920);
  if (v16)
  {
    v17 = *(CullingContext + 4912);
    do
    {
      v18 = *v17++;
      v2 = v2 & 0xFFFFFFFF00000000 | v18;
      Element = C3DRendererElementStoreGetElement(RendererElementStore, v2);
      Node = C3DRendererElementGetNode(Element);
      if (Node)
      {
        C3DAuthoringEnvironmentAppendDebugNode(AuthoringEnvironment, Node, Element);
      }

      --v16;
    }

    while (v16);
  }

  RootNode = C3DSceneGetRootNode(Scene);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZN3C3D13AuthoringPass7executeERKNS_10RenderArgsE_block_invoke;
  v29[3] = &__block_descriptor_40_e20_q16__0____C3DNode__8l;
  v29[4] = AuthoringEnvironment;
  C3DNodeApplyHierarchy(RootNode, v29);
  C3DAuthoringEnvironmentDrawZbufferDependant(AuthoringEnvironment);
  C3DAuthoringEnvironmentDrawPending(AuthoringEnvironment);
  [(*a2)->var24[1] setDepthStencilState:{C3D::SmartPtr<SCNMTLRenderPipeline *, C3D::detail::NSRetainFct, C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 64)}];
  C3DAuthoringEnvironmentDrawZbufferIndependant(AuthoringEnvironment, v22);
  C3DAuthoringEnvironmentDrawPending(AuthoringEnvironment);
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16));
  v24 = C3DRasterizerStatesDefault();
  v25 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v26 = [(SCNMTLRenderContext *)RenderContext reverseZ];
  [(*a2)->var24[1] setDepthStencilState:{-[SCNMTLResourceManager renderResourceForRasterizerState:reverseZ:](v25, v24, v26)}];
  [SCNMTLRenderContext setRasterizerStates:?];
  if (AuthoringEnvironment && ([AuthoringEnvironment authoringDisplayMask] & 0x200) != 0)
  {
    C3D::AuthoringPass::drawReflectionProbes(a1, a2);
  }

  if (([(SCNMTLRenderContext *)RenderContext features]& 0x1000) != 0)
  {
    v27 = *a2;
    if ((*a2)->var4 != 1)
    {
      v27->var4 = 1;
      v27->var8 = 1;
    }
  }

  C3D::DrawNodesPass::execute(a1, a2);
  C3DAuthoringEnvironmentEndFrame(AuthoringEnvironment);
  return [(*a2)->var24[1] popDebugGroup];
}

uint64_t ___ZN3C3D13AuthoringPass7executeERKNS_10RenderArgsE_block_invoke(uint64_t a1, float32x4_t *a2)
{
  if (C3DNodeIsHiddenOrTransparent(a2))
  {
    return 1;
  }

  C3DAuthoringEnvironmentAppendDebugNodeAttributes(*(a1 + 32), a2);
  return 0;
}

uint64_t C3D::AuthoringPass::drawReflectionProbes(uint64_t a1, uint64_t *a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16));
  result = [(SCNMTLRenderContext *)RenderContext _clusterInfo];
  v6 = *(result + 104);
  v7 = HIDWORD(v6);
  if (HIDWORD(v6))
  {
    v8 = result;
    v16 = *(result + 104);
    result = [(SCNMTLRenderContext *)RenderContext _reflectionProbeArrayTexture];
    if (result)
    {
      v9 = result;
      v10 = [(SCNMTLRenderContext *)RenderContext features];
      v11 = v10;
      v12 = *a2;
      if ((*(*a2 + 73) & 1) == 0 && *(v12 + 16) != 2)
      {
        *(v12 + 16) = 2;
        *(v12 + 41) = 1;
      }

      if ((v10 & 0x1000) != 0 && *(v12 + 32) != 1)
      {
        *(v12 + 32) = 1;
        *(v12 + 43) = 1;
      }

      v13 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 32) :"state" detail:? :?NSRetainFct];
      if (*(v12 + 3376) != v13)
      {
        *(v12 + 3376) = v13;
        [*(v12 + 3392) setRenderPipelineState:v13];
      }

      SCNMTLRenderCommandEncoder::setFragmentTexture(*a2, v9, 0);
      [(SCNMTLRenderContext *)RenderContext _setSceneBufferAtVertexIndex:-1 fragmentIndex:?];
      SCNMTLRenderCommandEncoder::setVertexBuffer(*a2, *(v8 + 120), *(v8 + 128) + (v16 << 8), 1);
      C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 40);
      [SCNMTLRenderContext _setMeshBuffers:?];
      v14 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 48);
      result = [(SCNMTLRenderContext *)RenderContext _drawMeshElement:v14 instanceCount:v7];
      if ((v11 & 0x1000) != 0)
      {
        v15 = *a2;
        if (*(*a2 + 32))
        {
          *(v15 + 32) = 0;
          *(v15 + 43) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t C3D::AuthoringPass::setColorInput(C3D::AuthoringPass *this, const C3D::PassIODescriptor *a2)
{
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  v5 = C3D::PassDescriptor::inputAtIndex((this + 32), 1u);
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  result = [(SCNMTLRenderContext *)RenderContext sampleCount];
  if (result < 2)
  {
    *(v6 + 31) = 0;
    *(v6 + 24) = 2;
    *(v5 + 31) = 0;
    *(v5 + 24) = 2;
  }

  else
  {
    v10 = this + 4096;
    v11 = *(a2 + 31);
    *(v6 + 31) = [(SCNMTLRenderContext *)RenderContext sampleCount];
    *(v6 + 24) = 4;
    result = [(SCNMTLRenderContext *)RenderContext sampleCount];
    *(v5 + 31) = result;
    *(v5 + 24) = 4;
    if ((v10[1288] & 1) == 0 && v11 <= 1)
    {
      v12 = *(a2 + 1);
      v13 = *(a2 + 2);
      v14 = *(a2 + 3);
      *(v4 + 64) = *(a2 + 4);
      v15 = *a2;
      *(v4 + 32) = v13;
      *(v4 + 48) = v14;
      *v4 = v15;
      *(v4 + 16) = v12;
      *(v4 + 66) &= ~0x80u;
      *(v6 + 66) &= 0xFFFCu;
      v10[1289] = 1;
    }
  }

  if ((*(v4 + 66) & 0x80) != 0)
  {
    *(v4 + 31) = *(v6 + 31);
    *(v4 + 24) = *(v6 + 24);
  }

  *(v7 + 31) = *(v5 + 31);
  *(v7 + 24) = *(v5 + 24);
  return result;
}

uint64_t ___ZZN3C3D31AdaptCullingContextForAuthoringEP18__C3DEngineContextRKNS_13DrawNodesPass10ParametersER19__C3DCullingContexthENK3__0cvU13block_pointerF18C3DNodeApplyStatusP9__C3DNodeEEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (C3DNodeGetGeometry(a2))
  {
    C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(*(a1 + 32), &v4);
  }

  return 0;
}

void C3D::AuthoringPassResource::~AuthoringPassResource(C3D::AuthoringPassResource *this)
{
  C3D::AuthoringPassResource::~AuthoringPassResource(this);

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DC89E0;
  v2 = *(this + 8);
  if (v2)
  {
  }

  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
  }

  v5 = *(this + 5);
  if (v5)
  {
  }

  v6 = *(this + 4);
  if (v6)
  {
  }

  v7 = *(this + 3);
  if (v7)
  {
  }

  v8 = *(this + 2);
  if (v8)
  {
  }
}

void C3DShaderAddStandardUniform(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (CFDictionaryGetValue(a1, a2))
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DShaderAddStandardUniform_cold_1(a2, v12);
    }
  }

  v13 = C3DMalloc(0x20uLL);
  v13[1] = a4;
  v13[2] = a5;
  *v13 = a3;
  *(v13 + 6) = a6;
  CFDictionarySetValue(a1, a2, v13);
}

uint64_t C3DShaderGetStandardUniforms()
{
  if (C3DShaderGetStandardUniforms_onceToken != -1)
  {
    C3DShaderGetStandardUniforms_cold_1();
  }

  return C3DShaderGetStandardUniforms_s_standardUniforms;
}

void __C3DShaderGetStandardUniforms_block_invoke()
{
  C3DShaderGetStandardUniforms_s_standardUniforms = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 20, MEMORY[0x277CBF138], 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_time", @"float", 0, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseResolution", @"vec2", 1, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_modelTransform", @"mat4", 2, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseModelTransform", @"mat4", 3, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_modelViewTransform", @"mat4", 4, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseModelViewTransform", @"mat4", 5, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_normalTransform", @"mat4", 6, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_modelViewProjectionTransform", @"mat4", 7, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseModelViewProjectionTransform", @"mat4", 8, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_boundingBox", @"mat2x3", 10, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_worldBoundingBox", @"mat2x3", 11, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_viewTransform", @"mat4", 12, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseViewTransform", @"mat4", 13, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_projectionTransform", @"mat4", 14, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseProjectionTransform", @"mat4", 15, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_cameraPosition", @"vec3", 17, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_viewToCubeWorld", @"mat4", 16, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.time", @"float", 0, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.invScreenPixelSize", @"float2", 1, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.modelTransform", @"float4x4", 2, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.inverseModelTransform", @"float4x4", 3, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.modelViewTransform", @"float4x4", 4, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.inverseModelViewTransform", @"float4x4", 5, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.normalTransform", @"float4x4", 6, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.modelViewProjectionTransform", @"float4x4", 7, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.inverseModelViewProjectionTransform", @"float4x4", 8, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.boundingBox", @"float2x3", 10, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.worldBoundingBox", @"float2x3", 11, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.viewTransform", @"float4x4", 12, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.inverseViewTransform", @"float4x4", 13, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.projectionTransform", @"float4x4", 14, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.inverseProjectionTransform", @"float4x4", 15, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.cameraPosition", @"float3", 17, 0, 0);
  v0 = C3DShaderGetStandardUniforms_s_standardUniforms;

  C3DShaderAddStandardUniform(v0, @"scn_frame.viewToCubeWorld", @"float4x4", 16, 0, 0);
}

void C3DShaderFeedStandardUniformsToIndex(void *context)
{
  if (C3DShaderGetStandardUniforms_onceToken != -1)
  {
    C3DShaderGetStandardUniforms_cold_1();
  }

  v2 = C3DShaderGetStandardUniforms_s_standardUniforms;

  CFDictionaryApplyFunction(v2, __DeclareSymbolToIndexMapping, context);
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, uint64_t a2)
{

  return [(SCNMTLMesh *)a2 elements];
}

void OUTLINED_FUNCTION_1_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 8u);
}

void *btCollisionAlgorithm::btCollisionAlgorithm(void *result, uint64_t *a2)
{
  v2 = *a2;
  *result = &unk_282DC8A20;
  result[1] = v2;
  return result;
}

void btDbvt::btDbvt(btDbvt *this)
{
  *(this + 36) = 0;
  *(this + 68) = 0;
  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 88) = 1;
  *(this + 10) = 0;
  *this = 0u;
  *(this + 2) = 0xFFFFFFFFLL;
  *(this + 6) = 0;
}

void btDbvt::~btDbvt(void ***this)
{
  btDbvt::clear(this);
  v2 = this[10];
  if (v2 && *(this + 88) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 88) = 1;
  this[10] = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  v3 = this[6];
  if (v3 && *(this + 56) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 56) = 1;
  this[6] = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
}

void btDbvt::clear(btDbvt *this)
{
  if (*this)
  {
    recursedeletenode(this, *this);
  }

  btAlignedFreeInternal(*(this + 1));
  *(this + 1) = 0;
  *(this + 4) = -1;
  v2 = *(this + 6);
  if (v2 && *(this + 56) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
}

void recursedeletenode(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    recursedeletenode(a1, *(a2 + 40));
    recursedeletenode(a1, *(a2 + 48));
  }

  if (*a1 == a2)
  {
    *a1 = 0;
  }

  btAlignedFreeInternal(*(a1 + 8));
  *(a1 + 8) = a2;
}

uint64_t btDbvt::optimizeIncremental(uint64_t this, int a2)
{
  v2 = a2;
  v3 = this;
  if (a2 < 0)
  {
    v2 = *(this + 20);
  }

  if (*this)
  {
    v4 = v2 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    do
    {
      v5 = *v3;
      v6 = *v3 + 48;
      if (*v6)
      {
        v7 = 0;
        do
        {
          v8 = v5[4];
          if (v8 <= v5)
          {
            v8 = v5;
          }

          else
          {
            v9 = v8[6];
            v10 = v8[4];
            v11 = v3;
            if (v10)
            {
              v11 = &v10[(v10[6] == v8) + 5];
            }

            v12 = v8[(v9 != v5) + 5];
            *v11 = v5;
            v12[4] = v5;
            v8[4] = v5;
            v5[4] = v10;
            v8[5] = v5[5];
            v8[6] = *v6;
            *(v5[5] + 4) = v8;
            *(*v6 + 32) = v8;
            v5[(v9 == v5) + 5] = v8;
            v5[(v9 != v5) + 5] = v12;
            v13 = *v8;
            v14 = *(v8 + 1);
            *v8 = *v5;
            *(v8 + 1) = *(v5 + 1);
            *v5 = v13;
            *(v5 + 1) = v14;
          }

          v15 = &v8[(*(v3 + 24) >> v7) & 1];
          v7 = (v7 + 1) & 0x1F;
          v5 = v15[5];
          v6 = (v5 + 6);
        }

        while (v5[6]);
      }

      this = btDbvt::update(v3, v5, -1);
      ++*(v3 + 24);
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t btDbvt::update(void ***a1, float32x4_t *a2, int a3)
{
  v6 = removeleaf(a1, a2);
  if (v6)
  {
    if (a3 < 0)
    {
      v6 = *a1;
    }

    else
    {
      for (; a3; --a3)
      {
        if (!v6[4])
        {
          break;
        }

        v6 = v6[4];
      }
    }
  }

  return insertleaf(a1, v6, a2);
}

uint64_t btDbvt::insert(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v6 = btAlignedAllocInternal(64, 16);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
  }

  *(v6 + 32) = 0;
  *(v6 + 40) = a3;
  *(v6 + 48) = 0;
  *v6 = *a2;
  *(v6 + 16) = a2[1];
  insertleaf(a1, *a1, v6);
  ++*(a1 + 20);
  return v6;
}

uint64_t insertleaf(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  v4 = result;
  if (*result)
  {
    v5 = a2;
    v6 = *(a2 + 48);
    if (v6)
    {
      v7 = vaddq_f32(*a3, a3[1]);
      do
      {
        v8 = vsubq_f32(v7, vaddq_f32(**(v5 + 40), *(*(v5 + 40) + 16)));
        v9 = vabs_f32(*v8.i8);
        v10 = vsubq_f32(v7, vaddq_f32(*v6, v6[1]));
        v11 = vabs_f32(*v10.i8);
        *v8.i8 = vadd_f32(vabs_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v10, v10, 8uLL))), vadd_f32(vzip1_s32(v9, v11), vzip2_s32(v9, v11)));
        v5 = *(v5 + 40 + 8 * (*&vmvn_s8(vcgt_f32(vdup_lane_s32(*v8.i8, 1), *v8.i8)) & 1));
        v6 = *(v5 + 48);
      }

      while (v6);
    }

    v12 = *(v5 + 32);
    result = *(result + 8);
    if (result)
    {
      v4[1] = 0;
    }

    else
    {
      result = btAlignedAllocInternal(64, 16);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
    }

    v13 = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = v12;
    do
    {
      v14 = a3->f32[v13 / 4];
      v15 = v5 + v13;
      if (v14 >= *(v5 + v13))
      {
        v14 = *(v5 + v13);
      }

      *(result + v13) = v14;
      v16 = a3[1].f32[v13 / 4];
      if (v16 <= *(v15 + 16))
      {
        v16 = *(v15 + 16);
      }

      *(result + v13 + 16) = v16;
      v13 += 4;
    }

    while (v13 != 12);
    if (v12)
    {
      *(v12 + 8 * (*(*(v5 + 32) + 48) == v5) + 40) = result;
      *(result + 40) = v5;
      *(v5 + 32) = result;
      *(result + 48) = a3;
      a3[2].i64[0] = result;
      do
      {
        v17 = v12;
        if (*v12 <= *result && *(v12 + 4) <= *(result + 4) && *(v12 + 8) <= *(result + 8) && *(v12 + 16) >= *(result + 16) && *(v12 + 20) >= *(result + 20) && *(v12 + 24) >= *(result + 24))
        {
          break;
        }

        v18 = 0;
        v19 = *(v12 + 40) + 16;
        v20 = *(v12 + 48) + 16;
        do
        {
          v21 = (v19 + v18);
          v22 = *(v19 + v18 - 16);
          v23 = (v20 + v18);
          if (v22 >= *(v20 + v18 - 16))
          {
            v22 = *(v20 + v18 - 16);
          }

          *(v12 + v18) = v22;
          v24 = *v21;
          if (*v21 <= *v23)
          {
            v24 = *v23;
          }

          *(v12 + v18 + 16) = v24;
          v18 += 4;
        }

        while (v18 != 12);
        v12 = *(v12 + 32);
        result = v17;
      }

      while (v12);
    }

    else
    {
      *(result + 40) = v5;
      *(v5 + 32) = result;
      *(result + 48) = a3;
      a3[2].i64[0] = result;
      *v4 = result;
    }
  }

  else
  {
    *result = a3;
    a3[2].i64[0] = 0;
  }

  return result;
}

void **removeleaf(void ***a1, uint64_t a2)
{
  if (*a1 == a2)
  {
    v4 = 0;
    *a1 = 0;
  }

  else
  {
    v3 = *(a2 + 32);
    v4 = *(v3 + 32);
    v5 = *(v3 + 8 * (*(v3 + 48) != a2) + 40);
    if (v4)
    {
      *(v4 + (*(v4 + 6) == v3) + 5) = v5;
      *(v5 + 32) = v4;
      btAlignedFreeInternal(a1[1]);
      a1[1] = v3;
      while (1)
      {
        v6 = 0;
        v8 = *v4;
        v7 = v4[1];
        v9 = *(v4 + 5) + 16;
        v10 = *(v4 + 6) + 16;
        do
        {
          v11 = (v9 + v6);
          v12 = *(v9 + v6 - 16);
          v13 = (v10 + v6);
          if (v12 >= *(v10 + v6 - 16))
          {
            v12 = *(v10 + v6 - 16);
          }

          *(v4 + v6) = v12;
          v14 = *v11;
          if (*v11 <= *v13)
          {
            v14 = *v13;
          }

          *(v4 + v6 + 16) = v14;
          v6 += 4;
        }

        while (v6 != 12);
        if (*&v8 == *v4 && *(&v8 + 1) == *(v4 + 1) && *(&v8 + 2) == *(v4 + 2) && *&v7 == *(v4 + 4) && *(&v7 + 1) == *(v4 + 5) && *(&v7 + 2) == *(v4 + 6))
        {
          break;
        }

        v4 = *(v4 + 4);
        if (!v4)
        {
          return *a1;
        }
      }
    }

    else
    {
      *a1 = v5;
      *(v5 + 32) = 0;
      btAlignedFreeInternal(a1[1]);
      a1[1] = v3;
      return *a1;
    }
  }

  return v4;
}

uint64_t btDbvt::update(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = removeleaf(a1, a2);
  if (v6)
  {
    v7 = *(a1 + 16);
    if (v7 < 0)
    {
      v6 = *a1;
    }

    else
    {
      for (; v7; --v7)
      {
        if (!v6[4])
        {
          break;
        }

        v6 = v6[4];
      }
    }
  }

  *a2 = *a3;
  *(a2 + 16) = a3[1];

  return insertleaf(a1, v6, a2);
}

uint64_t btDbvt::update(uint64_t a1, float *a2, float32x4_t *a3, uint64_t a4, int32x2_t a5, double a6, double a7, float32x4_t a8)
{
  if (*a2 <= a3->f32[0] && a2[1] <= a3->f32[1] && a2[2] <= a3->f32[2] && a2[4] >= a3[1].f32[0] && a2[5] >= a3[1].f32[1] && a2[6] >= a3[1].f32[2])
  {
    return 0;
  }

  v8 = vdupq_lane_s32(a5, 0);
  v8.i32[3] = 0;
  v9 = a3[1];
  v10 = vsubq_f32(*a3, v8);
  v12 = vaddq_f32(v8, v9);
  *a3 = v10;
  a3[1] = v12;
  v9.i32[0] = *a4;
  a8.i64[0] = 0;
  v11 = *vbslq_s8(vcgtq_f32(v9, a8), v12, v10).i32;
  v12.i32[0] = v12.i32[2];
  a3[*a4 > 0.0].f32[0] = *a4 + v11;
  v13 = *(a4 + 4);
  v14 = 1;
  if (v13 <= 0.0)
  {
    v15 = *&v10.i32[1];
  }

  else
  {
    v14 = 5;
    v15 = *&v12.i32[1];
  }

  a3->f32[v14] = v13 + v15;
  v16 = *(a4 + 8);
  v17 = 2;
  if (v16 <= 0.0)
  {
    v12.i32[0] = v10.i32[2];
  }

  else
  {
    v17 = 6;
  }

  a3->f32[v17] = v16 + *v12.i32;
  btDbvt::update(a1, a2, a3);
  return 1;
}

void btDbvt::remove(uint64_t a1, uint64_t a2)
{
  removeleaf(a1, a2);
  btAlignedFreeInternal(*(a1 + 8));
  *(a1 + 8) = a2;
  --*(a1 + 20);
}

uint64_t btDbvtBroadphase::btDbvtBroadphase(uint64_t a1, btHashedOverlappingPairCache *a2)
{
  *a1 = &unk_282DC8A58;
  for (i = 8; i != 200; i += 96)
  {
    btDbvt::btDbvt((a1 + i));
  }

  *(a1 + 285) = 256;
  *(a1 + 284) = a2 == 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = xmmword_21C2A3FC0;
  *(a1 + 252) = xmmword_21C2816A0;
  *(a1 + 268) = 0;
  if (!a2)
  {
    a2 = btAlignedAllocInternal(128, 16);
    btHashedOverlappingPairCache::btHashedOverlappingPairCache(a2);
  }

  *(a1 + 280) = 0;
  *(a1 + 272) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  return a1;
}

void btDbvtBroadphase::~btDbvtBroadphase(btDbvtBroadphase *this)
{
  *this = &unk_282DC8A58;
  if (*(this + 284) == 1)
  {
    (***(this + 28))(*(this + 28));
    btAlignedFreeInternal(*(this + 28));
  }

  for (i = 104; i != -88; i -= 96)
  {
    btDbvt::~btDbvt((this + i));
  }
}

{
  btDbvtBroadphase::~btDbvtBroadphase(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btDbvtBroadphase::createProxy(uint64_t a1, _OWORD *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = btAlignedAllocInternal(112, 16);
  *v15 = a5;
  *(v15 + 8) = a6;
  *(v15 + 16) = a7;
  *(v15 + 24) = a8;
  *(v15 + 48) = *a2;
  *(v15 + 64) = *a3;
  *(v15 + 32) = 0;
  *(v15 + 88) = 0;
  *(v15 + 96) = 0;
  v16 = *a3;
  v23[0] = *a2;
  v23[1] = v16;
  *(v15 + 104) = *(a1 + 236);
  v17 = *(a1 + 280) + 1;
  *(a1 + 280) = v17;
  *(v15 + 40) = v17;
  v18 = btDbvt::insert(a1 + 8, v23, v15);
  v19 = *(a1 + 236);
  *(v15 + 80) = v18;
  *(v15 + 88) = 0;
  v20 = *(a1 + 200 + 8 * v19);
  *(v15 + 96) = v20;
  if (v20)
  {
    *(v20 + 88) = v15;
  }

  *(a1 + 200 + 8 * v19) = v15;
  if ((*(a1 + 285) & 1) == 0)
  {
    v22[0] = &unk_282DC8AD8;
    v22[1] = a1;
    v22[2] = v15;
    btDbvt::collideTV(a1 + 8, *(a1 + 8), v23, v22);
    btDbvt::collideTV(a1 + 104, *(a1 + 104), v23, v22);
  }

  return v15;
}

void btDbvt::collideTV(uint64_t a1, void *a2, __int128 *a3, uint64_t a4)
{
  if (a2)
  {
    v23 = a3[1];
    v24 = *a3;
    v6 = btAlignedAllocInternal(512, 16);
    v8 = *&v23;
    v7 = *&v24;
    v9 = v6;
    *v6 = a2;
    v10 = 1;
    v11 = 64;
    do
    {
      v12 = v10 - 1;
      v13 = v9[v10 - 1];
      if (*v13 <= v8 && v13[4] >= v7 && v13[1] <= *(&v23 + 1) && v13[5] >= *(&v24 + 1) && v13[2] <= *(&v23 + 2) && v13[6] >= *(&v24 + 2))
      {
        if (*(v13 + 6))
        {
          if (v12 == v11 && (!v11 ? (v14 = 1) : (v14 = 2 * v11), v11 < v14))
          {
            v15 = btAlignedAllocInternal(8 * v14, 16);
            v16 = v15;
            if (v10 >= 2)
            {
              v17 = v11;
              v18 = v15;
              v19 = v9;
              do
              {
                v20 = *v19++;
                *v18++ = v20;
                --v17;
              }

              while (v17);
            }

            btAlignedFreeInternal(v9);
            v11 = v14;
            v8 = *&v23;
            v7 = *&v24;
          }

          else
          {
            v16 = v9;
          }

          v16[v12] = *(v13 + 5);
          if (v10 == v11)
          {
            v11 = 2 * v10;
            v21 = btAlignedAllocInternal(16 * v10, 16);
            v9 = v21;
            v22 = 0;
            do
            {
              *(v21 + 8 * v22) = v16[v22];
              ++v22;
            }

            while (v10 != v22);
            btAlignedFreeInternal(v16);
            v8 = *&v23;
            v7 = *&v24;
          }

          else
          {
            v9 = v16;
          }

          v9[v10] = *(v13 + 6);
          v12 = v10 + 1;
        }

        else
        {
          (*(*a4 + 24))(a4, v9[v12]);
          v8 = *&v23;
          v7 = *&v24;
        }
      }

      v10 = v12;
    }

    while (v12 > 0);

    btAlignedFreeInternal(v9);
  }
}

void btDbvtBroadphase::destroyProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 104);
  v7 = *(a2 + 80);
  v8 = v6 == 2;
  v9 = 8;
  if (v8)
  {
    v9 = 104;
  }

  btDbvt::remove(a1 + v9, v7);
  v10 = (a1 + 8 * *(a2 + 104) + 200);
  v12 = *(a2 + 88);
  v11 = *(a2 + 96);
  if (v12)
  {
    v10 = (v12 + 96);
  }

  *v10 = v11;
  if (v11)
  {
    *(v11 + 88) = *(a2 + 88);
  }

  (*(**(a1 + 224) + 32))(*(a1 + 224), a2, a3);
  btAlignedFreeInternal(a2);
  *(a1 + 286) = 1;
}

__n128 btDbvtBroadphase::getAabb(uint64_t a1, uint64_t a2, _OWORD *a3, __n128 *a4)
{
  *a3 = *(a2 + 48);
  result = *(a2 + 64);
  *a4 = result;
  return result;
}

void btDbvtBroadphase::rayTest(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6)
{
  v12[0] = &unk_282DC8B20;
  v12[1] = a4;
  btDbvt::rayTestInternal(a1 + 8, *(a1 + 8), a2, *(a4 + 44), a3, (a4 + 16), (a4 + 32), a5, a6, v12);
  btDbvt::rayTestInternal(a1 + 104, *(a1 + 104), a2, *(a4 + 44), a3, (a4 + 16), (a4 + 32), a5, a6, v12);
}

void btDbvt::rayTestInternal(uint64_t a1, uint64_t a2, float *a3, float a4, uint64_t a5, float *a6, unsigned int *a7, float32x4_t *a8, float32x4_t *a9, uint64_t a10)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v10 = a9;
    v17 = *(a1 + 68);
    if (v17 <= 127)
    {
      if (*(a1 + 72) <= 127)
      {
        v18 = a8;
        v19 = btAlignedAllocInternal(1024, 16);
        v20 = v19;
        v21 = *(a1 + 68);
        if (v21 >= 1)
        {
          v22 = 0;
          v23 = 8 * v21;
          do
          {
            *(v19 + v22) = *(*(a1 + 80) + v22);
            v22 += 8;
          }

          while (v23 != v22);
        }

        v24 = *(a1 + 80);
        a8 = v18;
        if (v24 && *(a1 + 88) == 1)
        {
          btAlignedFreeInternal(v24);
          a8 = v18;
        }

        *(a1 + 88) = 1;
        *(a1 + 80) = v20;
        *(a1 + 72) = 128;
        v10 = a9;
      }

      v25 = 8 * v17;
      v26 = 128 - v17;
      do
      {
        *(*(a1 + 80) + v25) = 0;
        v25 += 8;
        --v26;
      }

      while (v26);
    }

    *(a1 + 68) = 128;
    **(a1 + 80) = a2;
    v27 = 126;
    LODWORD(v28) = 1;
    while (1)
    {
      v29 = v28;
      v28 = v28 - 1;
      v30 = *(a1 + 80);
      v31 = *(v30 + 8 * v28);
      v32 = vsubq_f32(*v31, *v10);
      v32.i32[3] = 0;
      v33 = vsubq_f32(v31[1], *a8);
      v33.i32[3] = 0;
      v64[0] = v32;
      v64[1] = v33;
      v34 = *a7;
      v35 = a7[1];
      v36 = a3[1];
      v37 = a6[1];
      v38 = (*&v64[v34] - *a3) * *a6;
      v39 = *a6 * (*&v64[(1 - v34)] - *a3);
      v40 = (*(&v64[v35] + 1) - v36) * v37;
      v41 = v37 * (*(&v64[(1 - v35)] + 1) - v36);
      if (v38 > v41 || v40 > v39)
      {
        goto LABEL_45;
      }

      if (v40 > v38)
      {
        v38 = v40;
      }

      if (v41 < v39)
      {
        v39 = v41;
      }

      v43 = a7[2];
      v44 = a3[2];
      v45 = a6[2];
      v46 = (*(&v64[v43] + 2) - v44) * v45;
      v47 = v45 * (*(&v64[(1 - v43)] + 2) - v44);
      if (v38 > v47 || v46 > v39)
      {
        goto LABEL_45;
      }

      if (v46 <= v38)
      {
        v46 = v38;
      }

      v49 = v47 >= v39 ? v39 : v47;
      if (v46 >= a4 || v49 <= 0.0)
      {
        goto LABEL_45;
      }

      if (v31[3].i64[0])
      {
        if (v28 > v27)
        {
          v50 = *(a1 + 68);
          v51 = 2 * v50;
          if (v50 < 2 * v50)
          {
            if (*(a1 + 72) < v51)
            {
              v62 = a8;
              if (v50)
              {
                v52 = btAlignedAllocInternal(16 * v50, 16);
                v53 = v52;
                v54 = *(a1 + 68);
                if (v54 >= 1)
                {
                  v55 = 0;
                  v56 = 8 * v54;
                  do
                  {
                    *(v52 + v55) = *(*(a1 + 80) + v55);
                    v55 += 8;
                  }

                  while (v56 != v55);
                }

                v51 = 2 * v50;
                a8 = v62;
              }

              else
              {
                v53 = 0;
              }

              v60 = *(a1 + 80);
              if (v60 && *(a1 + 88) == 1)
              {
                v61 = v53;
                btAlignedFreeInternal(v60);
                v53 = v61;
                v51 = 2 * v50;
                a8 = v62;
              }

              *(a1 + 88) = 1;
              *(a1 + 80) = v53;
              *(a1 + 72) = v51;
            }

            do
            {
              *(*(a1 + 80) + 8 * v50++) = 0;
            }

            while (v51 != v50);
            v30 = *(a1 + 80);
          }

          *(a1 + 68) = v51;
          v27 = (v51 - 2);
          v10 = a9;
        }

        *(v30 + 8 * v28) = v31[2].i64[1];
        LODWORD(v28) = v29 + 1;
        *(*(a1 + 80) + 8 * v29) = v31[3].i64[0];
        if (v29 == -1)
        {
          return;
        }
      }

      else
      {
        v57 = v31;
        v58 = a8;
        v59 = v27;
        (*(*a10 + 24))(a10, v57);
        v27 = v59;
        a8 = v58;
LABEL_45:
        if (!v28)
        {
          return;
        }
      }
    }
  }
}

void btDbvtBroadphase::aabbTest(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v7[0] = &unk_282DC8B68;
  v7[1] = a4;
  v5 = *a3;
  v6[0] = *a2;
  v6[1] = v5;
  btDbvt::collideTV(a1 + 8, *(a1 + 8), v6, v7);
  btDbvt::collideTV(a1 + 104, *(a1 + 104), v6, v7);
}

void btDbvtBroadphase::setAabb(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, double a7, float32x4_t a8)
{
  v12 = *a3;
  v13 = *a4;
  v28[0] = *a3;
  v28[1] = v13;
  if (*(a2 + 104) == 2)
  {
    btDbvt::remove(a1 + 104, *(a2 + 80));
    *(a2 + 80) = btDbvt::insert(a1 + 8, v28, a2);
LABEL_10:
    v15 = 1;
    goto LABEL_11;
  }

  ++*(a1 + 260);
  v14 = *(a2 + 80);
  if (*v14 > v13.f32[0] || *(v14 + 16) < v12.f32[0] || *(v14 + 4) > v13.f32[1] || (a8.i32[0] = *(v14 + 20), a8.f32[0] < v12.f32[1]) || *(v14 + 8) > v13.f32[2] || *(v14 + 24) < v12.f32[2])
  {
    btDbvt::update(a1 + 8, v14, v28);
    ++*(a1 + 264);
    goto LABEL_10;
  }

  v22 = *(a2 + 48);
  v23 = vsubq_f32(*a3, v22);
  v24 = vsubq_f32(*(a2 + 64), v22);
  v24.i32[3] = 0;
  v25.i64[0] = 0x3F0000003F000000;
  v25.i64[1] = 0x3F0000003F000000;
  v26 = vmulq_n_f32(vmulq_f32(v24, v25), *(a1 + 232));
  v26.i32[3] = 0;
  v27 = v26;
  if (v23.f32[0] < 0.0)
  {
    v27.f32[0] = -v26.f32[0];
  }

  v25.i32[0] = v23.i32[1];
  if (v23.f32[1] < 0.0)
  {
    v25.f32[0] = -v26.f32[1];
    v27.f32[1] = -v26.f32[1];
  }

  if (v23.f32[2] < 0.0)
  {
    v27.f32[2] = -v26.f32[2];
  }

  v23.i32[0] = 1028443341;
  v15 = btDbvt::update(a1 + 8, v14, v28, &v27, *v23.f32, *v26.i64, *v25.i64, a8);
  if (v15)
  {
    ++*(a1 + 264);
  }

LABEL_11:
  v16 = a1 + 200;
  v17 = (a1 + 200 + 8 * *(a2 + 104));
  v19 = *(a2 + 88);
  v18 = *(a2 + 96);
  if (v19)
  {
    v17 = (v19 + 96);
  }

  *v17 = v18;
  if (v18)
  {
    *(v18 + 88) = *(a2 + 88);
  }

  *(a2 + 48) = *a3;
  *(a2 + 64) = *a4;
  v20 = *(a1 + 236);
  *(a2 + 104) = v20;
  *(a2 + 88) = 0;
  v21 = *(v16 + 8 * v20);
  *(a2 + 96) = v21;
  if (v21)
  {
    *(v21 + 88) = a2;
  }

  *(v16 + 8 * v20) = a2;
  if (v15)
  {
    *(a1 + 286) = 1;
    if ((*(a1 + 285) & 1) == 0)
    {
      v27.i64[0] = &unk_282DC8AD8;
      v27.i64[1] = a1;
      btDbvt::collideTTpersistentStack(a1 + 104, *(a1 + 104), *(a2 + 80), &v27);
      btDbvt::collideTTpersistentStack(a1 + 8, *(a1 + 8), *(a2 + 80), &v27);
    }
  }
}

void btDbvt::collideTTpersistentStack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (*(a1 + 36) <= 127 && *(a1 + 40) <= 127)
    {
      v8 = btAlignedAllocInternal(2048, 16);
      v9 = v8;
      v10 = *(a1 + 36);
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = 16 * v10;
        do
        {
          *(v8 + v11) = *(*(a1 + 48) + v11);
          v11 += 16;
        }

        while (v12 != v11);
      }

      v13 = *(a1 + 48);
      if (v13 && *(a1 + 56) == 1)
      {
        btAlignedFreeInternal(v13);
      }

      *(a1 + 56) = 1;
      *(a1 + 48) = v9;
      *(a1 + 40) = 128;
    }

    *(a1 + 36) = 128;
    v14 = *(a1 + 48);
    *v14 = a2;
    v14[1] = a3;
    v15 = 124;
    LODWORD(v16) = 1;
    do
    {
      v17 = v16;
      v16 = v16 - 1;
      v18 = (*(a1 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      if (v16 > v15)
      {
        v21 = *(a1 + 36);
        v22 = 2 * v21;
        if (v21 < 2 * v21 && *(a1 + 40) < v22)
        {
          if (v21)
          {
            v23 = btAlignedAllocInternal(32 * v21, 16);
            v24 = v23;
            v25 = *(a1 + 36);
            if (v25 >= 1)
            {
              v26 = 0;
              v27 = 16 * v25;
              do
              {
                *(v23 + v26) = *(*(a1 + 48) + v26);
                v26 += 16;
              }

              while (v27 != v26);
            }
          }

          else
          {
            v24 = 0;
          }

          v28 = *(a1 + 48);
          if (v28 && *(a1 + 56) == 1)
          {
            btAlignedFreeInternal(v28);
          }

          *(a1 + 56) = 1;
          *(a1 + 48) = v24;
          *(a1 + 40) = v22;
        }

        *(a1 + 36) = v22;
        v15 = v22 - 4;
      }

      if (v19 == v20)
      {
        if (*(v19 + 48))
        {
          v39 = (v19 + 40);
          v40 = vld1q_dup_f64(v39);
          *(*(a1 + 48) + 16 * v16) = v40;
          v41 = (v19 + 48);
          v42 = vld1q_dup_f64(v41);
          *(*(a1 + 48) + 16 * v17) = v42;
          LODWORD(v16) = v17 + 2;
          *(*(a1 + 48) + 16 * v17 + 16) = *(v19 + 40);
        }
      }

      else if (*v19 <= *(v20 + 16) && *(v19 + 16) >= *v20 && *(v19 + 4) <= *(v20 + 20) && *(v19 + 20) >= *(v20 + 4) && *(v19 + 8) <= *(v20 + 24) && *(v19 + 24) >= *(v20 + 8))
      {
        v29 = *(v20 + 48);
        if (*(v19 + 48))
        {
          v30 = *(v19 + 40);
          if (v29)
          {
            v31 = *(v20 + 40);
            v32 = (*(a1 + 48) + 16 * v16);
            *v32 = v30;
            v32[1] = v31;
            v33 = *(v20 + 40);
            v34 = (*(a1 + 48) + 16 * v17);
            *v34 = *(v19 + 48);
            v34[1] = v33;
            v35 = *(v20 + 48);
            v36 = *(a1 + 48) + 16 * v17;
            *(v36 + 16) = *(v19 + 40);
            *(v36 + 24) = v35;
            v37 = *(v20 + 48);
            LODWORD(v16) = v17 + 3;
            v38 = *(a1 + 48) + 16 * v17;
            *(v38 + 32) = *(v19 + 48);
            *(v38 + 40) = v37;
          }

          else
          {
            v47 = (*(a1 + 48) + 16 * v16);
            *v47 = v30;
            v47[1] = v20;
            LODWORD(v16) = v17 + 1;
            v48 = (*(a1 + 48) + 16 * v17);
            *v48 = *(v19 + 48);
            v48[1] = v20;
          }
        }

        else if (v29)
        {
          v43 = *(v20 + 40);
          v44 = (*(a1 + 48) + 16 * v16);
          *v44 = v19;
          v44[1] = v43;
          v45 = *(v20 + 48);
          LODWORD(v16) = v17 + 1;
          v46 = (*(a1 + 48) + 16 * v17);
          *v46 = v19;
          v46[1] = v45;
        }

        else
        {
          (*(*a4 + 16))(a4, v19, v20);
        }
      }
    }

    while (v16);
  }
}

void btDbvtBroadphase::calculateOverlappingPairs(uint64_t a1, uint64_t a2)
{
  btDbvtBroadphase::collide(a1);

  btDbvtBroadphase::performDeferredRemoval(a1, a2);
}

uint32x2_t btDbvtBroadphase::collide(uint64_t a1)
{
  v2 = 1374389535 * *(a1 + 244) * *(a1 + 28);
  btDbvt::optimizeIncremental(a1 + 8, (v2 >> 37) + (v2 >> 63) + 1);
  if (*(a1 + 256))
  {
    v3 = 1374389535 * *(a1 + 240) * *(a1 + 124);
    v4 = (v3 >> 37) + (v3 >> 63) + 1;
    btDbvt::optimizeIncremental(a1 + 104, v4);
    *(a1 + 256) = (*(a1 + 256) - v4) & ~((*(a1 + 256) - v4) >> 31);
  }

  v5 = *(a1 + 236);
  v6 = __OFADD__(v5++, 1);
  v7 = (v5 < 0) ^ v6;
  v8 = v5 & 1;
  if (v7)
  {
    v8 = -v8;
  }

  *(a1 + 236) = v8;
  v9 = *(a1 + 200 + 8 * v8);
  if (v9)
  {
    v32 = &unk_282DC8AD8;
    v33 = a1;
    do
    {
      v10 = (a1 + 200 + 8 * *(v9 + 104));
      v11 = *(v9 + 88);
      v12 = *(v9 + 96);
      if (v11)
      {
        v10 = (v11 + 96);
      }

      *v10 = v12;
      if (v12)
      {
        *(v12 + 88) = *(v9 + 88);
      }

      *(v9 + 88) = 0;
      v13 = *(a1 + 216);
      *(v9 + 96) = v13;
      if (v13)
      {
        *(v13 + 88) = v9;
      }

      *(a1 + 216) = v9;
      btDbvt::remove(a1 + 8, *(v9 + 80));
      v14 = *(v9 + 64);
      v31[0] = *(v9 + 48);
      v31[1] = v14;
      *(v9 + 80) = btDbvt::insert(a1 + 104, v31, v9);
      *(v9 + 104) = 2;
      v9 = v12;
    }

    while (v12);
    *(a1 + 256) = *(a1 + 124);
    *(a1 + 286) = 1;
  }

  *&v31[0] = &unk_282DC8AD8;
  *(&v31[0] + 1) = a1;
  if (*(a1 + 285) == 1)
  {
    btDbvt::collideTTpersistentStack(a1 + 8, *(a1 + 8), *(a1 + 104), v31);
    if (*(a1 + 285))
    {
      btDbvt::collideTTpersistentStack(a1 + 8, *(a1 + 8), *(a1 + 8), v31);
    }
  }

  if (*(a1 + 286) == 1)
  {
    v15 = (*(**(a1 + 224) + 56))(*(a1 + 224));
    v17 = *(v15 + 4);
    if (v17 >= 1)
    {
      v18 = 1374389535 * *(a1 + 248) * v17;
      v19 = (v18 >> 37) + (v18 >> 63);
      if (*(a1 + 252) > v19)
      {
        v19 = *(a1 + 252);
      }

      if (v17 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = *(v15 + 4);
      }

      if (v19 < 1)
      {
        goto LABEL_36;
      }

      v21 = v15;
      v22 = 0;
      do
      {
        v23 = (*(v21 + 16) + 32 * ((*(a1 + 276) + v22) % *(v21 + 4)));
        v24 = v23[1];
        v25 = *(*v23 + 80);
        v26 = *(v24 + 80);
        v16.n128_u32[0] = *v25;
        if (*v25 > v26[4] || (v16.n128_u32[0] = v25[4], v16.n128_f32[0] < *v26) || (v16.n128_u32[0] = v25[1], v16.n128_f32[0] > v26[5]) || (v16.n128_u32[0] = v25[5], v16.n128_f32[0] < v26[1]) || (v16.n128_u32[0] = v25[2], v16.n128_f32[0] > v26[6]) || (v16.n128_u32[0] = v25[6], v16.n128_f32[0] < v26[2]))
        {
          (*(**(a1 + 224) + 24))(*(a1 + 224), v16);
          --v20;
          --v22;
        }

        ++v22;
      }

      while (v22 < v20);
      v17 = *(v21 + 4);
      if (v17 <= 0)
      {
        *(a1 + 276) = 0;
      }

      else
      {
LABEL_36:
        *(a1 + 276) = (*(a1 + 276) + v20) % v17;
      }
    }
  }

  ++*(a1 + 272);
  *(a1 + 252) = 1;
  *(a1 + 286) = 0;
  v27 = *(a1 + 260);
  if (v27.i32[0])
  {
    v28 = vcvt_f32_u32(v27);
    v29 = vdiv_f32(vdup_lane_s32(v28, 1), v28).u32[0];
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 268) = v29;
  result = vshr_n_u32(v27, 1uLL);
  *(a1 + 260) = result;
  return result;
}

void btDbvtBroadphase::performDeferredRemoval(uint64_t a1, uint64_t a2)
{
  if ((*(**(a1 + 224) + 112))(*(a1 + 224)))
  {
    v4 = (*(**(a1 + 224) + 56))(*(a1 + 224));
    v6 = v4;
    v7 = *(v4 + 4);
    v8 = (v7 - 1);
    if (v7 > 1)
    {
      btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(v4, &v34, 0, v8);
      v7 = *(v6 + 4);
    }

    if (v7 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = v13;
        v15 = v12;
        v16 = *(v6 + 16);
        v17 = (v16 + v9);
        v12 = *(v16 + v9);
        v13 = *(v16 + v9 + 8);
        v18 = v12 == v15 && v13 == v14;
        if (v18 || (v19 = *(v12 + 80), v20 = *(v13 + 80), v5.n128_u32[0] = *v19, *v19 > v20[4]) || (v5.n128_u32[0] = v19[4], v5.n128_f32[0] < *v20) || (v5.n128_u32[0] = v19[1], v5.n128_f32[0] > v20[5]) || (v5.n128_u32[0] = v19[5], v5.n128_f32[0] < v20[1]) || (v5.n128_u32[0] = v19[2], v5.n128_f32[0] > v20[6]) || (v5.n128_u32[0] = v19[6], v5.n128_f32[0] < v20[2]))
        {
          (*(**(a1 + 224) + 64))(*(a1 + 224), v16 + v9, a2, v8, v5);
          ++v11;
          *v17 = 0;
          v17[1] = 0;
          v7 = *(v6 + 4);
        }

        ++v10;
        v9 += 32;
      }

      while (v10 < v7);
      if (v7 >= 2)
      {
        btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(v6, &v33, 0, (v7 - 1));
        v7 = *(v6 + 4);
      }

      v21 = v7 - v11;
      if (v11 < 0)
      {
        if (*(v6 + 8) < v21)
        {
          if (v7 == v11)
          {
            v22 = 0;
          }

          else
          {
            v23 = btAlignedAllocInternal(32 * v21, 16);
            v22 = v23;
            v24 = *(v6 + 4);
            if (v24 >= 1)
            {
              v25 = 0;
              v26 = 32 * v24;
              do
              {
                v27 = v23 + v25;
                v28 = *(v6 + 16) + v25;
                *v27 = *v28;
                *(v27 + 16) = *(v28 + 16);
                *(v27 + 24) = *(v28 + 24);
                v25 += 32;
              }

              while (v26 != v25);
            }
          }

          v29 = *(v6 + 16);
          if (v29 && *(v6 + 24) == 1)
          {
            btAlignedFreeInternal(v29);
          }

          *(v6 + 24) = 1;
          *(v6 + 16) = v22;
          *(v6 + 8) = v21;
        }

        v30 = v7;
        v31 = 32 * v7;
        do
        {
          v32 = (*(v6 + 16) + v31);
          ++v30;
          *v32 = 0uLL;
          v32[1] = 0uLL;
          v31 += 32;
        }

        while (v30 < v21);
      }

      v7 -= v11;
    }

    *(v6 + 4) = v7;
  }
}

uint64_t btDbvtBroadphase::getOverlappingPairCache(btDbvtBroadphase *this)
{
  return *(this + 28);
}

{
  return *(this + 28);
}

uint64_t btDbvtBroadphase::getBroadphaseAabb(uint64_t this, btVector3 *a2, btVector3 *a3)
{
  v3 = *(this + 8);
  v4 = *(this + 104);
  if (v3)
  {
    if (v4)
    {
      v5 = 0;
      var0 = v3[1].var0.var0;
      v7 = v4[1].var0.var0;
      do
      {
        v8 = (var0 + v5);
        v9 = *(var0 + v5 - 16);
        v10 = (v7 + v5);
        if (v9 >= *(v7 + v5 - 16))
        {
          v9 = *(v7 + v5 - 16);
        }

        *(v14 + v5) = v9;
        v11 = *v8;
        if (*v8 <= *v10)
        {
          v11 = *v10;
        }

        *(&v14[1] + v5) = v11;
        v5 += 4;
      }

      while (v5 != 12);
      v13 = v14[0];
      v12 = v14[1];
    }

    else
    {
      v13 = *v3;
      v12 = v3[1];
    }
  }

  else if (v4)
  {
    v13 = *v4;
    v12 = v4[1];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a2 = v13;
  *a3 = v12;
  return this;
}

double btDbvtBroadphase::resetPool(uint64_t a1)
{
  if (!(*(a1 + 28) + *(a1 + 124)))
  {
    btDbvt::clear((a1 + 8));
    btDbvt::clear((a1 + 104));
    *(a1 + 285) = 256;
    *(a1 + 236) = xmmword_21C2A3FC0;
    *&result = 1;
    *(a1 + 252) = 1;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = 0;
    *(a1 + 268) = 0;
    *(a1 + 276) = 0;
    *(a1 + 260) = 0;
  }

  return result;
}

uint64_t btDbvtTreeCollider::Process(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = result;
    result = (*(**(*(result + 8) + 224) + 16))(*(*(result + 8) + 224), *(a2 + 40), *(a3 + 40));
    ++*(*(v3 + 8) + 252);
  }

  return result;
}

uint64_t btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16) + 32 * ((a4 + a3 + ((a4 + a3) >> 31)) >> 1);
  v24 = *v8;
  v25 = *(v8 + 16);
  v26 = *(v8 + 24);
  LODWORD(v9) = a3;
  LODWORD(v10) = a4;
  do
  {
    v11 = v9 - 1;
    v12 = 32 * v9;
    do
    {
      v13 = btBroadphasePairSortPredicate::operator()(a2, (*(a1 + 16) + v12), &v24);
      ++v11;
      v9 = (v9 + 1);
      v12 += 32;
    }

    while (v13);
    v14 = v10 + 1;
    v15 = 32 * v10;
    do
    {
      result = btBroadphasePairSortPredicate::operator()(a2, &v24, (*(a1 + 16) + v15));
      --v14;
      v10 = (v10 - 1);
      v15 -= 32;
    }

    while ((result & 1) != 0);
    if (v11 <= v14)
    {
      v17 = *(a1 + 16);
      v18 = v17 + v12;
      v19 = v17 + v15;
      v20 = *(v18 - 32);
      v21 = *(v18 - 16);
      v22 = *(v19 + 48);
      *(v18 - 32) = *(v19 + 32);
      *(v18 - 16) = v22;
      v23 = *(a1 + 16) + v15;
      *(v23 + 32) = v20;
      *(v23 + 48) = v21;
    }

    else
    {
      v9 = (v9 - 1);
      v10 = (v10 + 1);
    }
  }

  while (v9 <= v10);
  if (v10 > a3)
  {
    result = btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(a1, a2, a3, v10);
  }

  if (v9 < a4)
  {
    return btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(a1, a2, v9, a4);
  }

  return result;
}

BOOL btBroadphasePairSortPredicate::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v4 = -1;
  }

  v5 = *a3;
  if (*a3)
  {
    v6 = *(v5 + 40);
  }

  else
  {
    v6 = -1;
  }

  v7 = a2[1];
  if (v7)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = -1;
  }

  v9 = a3[1];
  if (v9)
  {
    v10 = *(v9 + 40);
  }

  else
  {
    v10 = -1;
  }

  if (v4 > v6)
  {
    return 1;
  }

  result = v8 > v10 && v3 == v5;
  if (v3 == v5 && v8 <= v10)
  {
    return v7 == v9 && a2[2] > a3[2];
  }

  return result;
}

void btHashedOverlappingPairCache::btHashedOverlappingPairCache(btHashedOverlappingPairCache *this)
{
  *this = &unk_282DC8BB0;
  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 80) = 1;
  *(this + 9) = 0;
  *(this + 60) = 0;
  *(this + 112) = 1;
  *(this + 13) = 0;
  *(this + 92) = 0;
  *(this + 15) = 0;
  v2 = btAlignedAllocInternal(64, 16);
  v3 = v2;
  v4 = *(this + 3);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 32 * v4;
    do
    {
      v7 = v2 + v5;
      v8 = *(this + 3) + v5;
      *v7 = *v8;
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 24) = *(v8 + 24);
      v5 += 32;
    }

    while (v6 != v5);
  }

  v9 = *(this + 3);
  if (v9 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v9);
  }

  *(this + 32) = 1;
  *(this + 3) = v3;
  *(this + 4) = 2;
  btHashedOverlappingPairCache::growTables(this);
}

void btHashedOverlappingPairCache::growTables(btHashedOverlappingPairCache *this)
{
  v1 = *(this + 4);
  v2 = *(this + 15);
  if (v2 >= v1)
  {
    return;
  }

  if (*(this + 16) < v1)
  {
    if (v1)
    {
      v4 = btAlignedAllocInternal(4 * v1, 16);
      LODWORD(v5) = *(this + 15);
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = *(this + 15);
    }

    v6 = *(this + 9);
    if (v5 < 1)
    {
      if (!v6)
      {
LABEL_14:
        *(this + 80) = 1;
        *(this + 9) = v4;
        *(this + 16) = v1;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v5;
      v7 = v4;
      v8 = *(this + 9);
      do
      {
        v9 = *v8++;
        *v7++ = v9;
        --v5;
      }

      while (v5);
    }

    if (*(this + 80) == 1)
    {
      btAlignedFreeInternal(v6);
    }

    *(this + 9) = 0;
    goto LABEL_14;
  }

LABEL_15:
  bzero((*(this + 9) + 4 * v2), 4 * (v1 + ~v2) + 4);
  *(this + 15) = v1;
  v10 = *(this + 23);
  if (v10 < v1)
  {
    if (*(this + 24) >= v1)
    {
LABEL_28:
      bzero((*(this + 13) + 4 * v10), 4 * (v1 + ~v10) + 4);
      goto LABEL_29;
    }

    if (v1)
    {
      v11 = btAlignedAllocInternal(4 * v1, 16);
    }

    else
    {
      v11 = 0;
    }

    LODWORD(v12) = *(this + 23);
    v13 = *(this + 13);
    if (v12 < 1)
    {
      if (!v13)
      {
LABEL_27:
        *(this + 112) = 1;
        *(this + 13) = v11;
        *(this + 24) = v1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v12;
      v14 = v11;
      v15 = *(this + 13);
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v12;
      }

      while (v12);
    }

    if (*(this + 112) == 1)
    {
      btAlignedFreeInternal(v13);
    }

    goto LABEL_27;
  }

LABEL_29:
  *(this + 23) = v1;
  if (v1 >= 1)
  {
    memset(*(this + 9), 255, 4 * v1);
    memset(*(this + 13), 255, 4 * v1);
  }

  if (v2 >= 1)
  {
    v17 = 0;
    v18 = *(this + 9);
    v19 = *(this + 13);
    v20 = *(this + 3) + 8;
    do
    {
      v21 = *(*(v20 - 8) + 40) | (*(*v20 + 40) << 16);
      v22 = ~(v21 << 15) + v21;
      v23 = (9 * (v22 ^ (v22 >> 10))) ^ ((9 * (v22 ^ (v22 >> 10))) >> 6);
      LODWORD(v23) = (*(this + 4) - 1) & (((v23 + ~(v23 << 11)) >> 16) ^ (v23 + ~(v23 << 11)));
      *(v19 + 4 * v17) = *(v18 + 4 * v23);
      *(v18 + 4 * v23) = v17++;
      v20 += 32;
    }

    while (v2 != v17);
  }
}

void btHashedOverlappingPairCache::~btHashedOverlappingPairCache(btHashedOverlappingPairCache *this)
{
  *this = &unk_282DC8BB0;
  v2 = *(this + 13);
  if (v2 && *(this + 112) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 112) = 1;
  *(this + 13) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v3 = *(this + 9);
  if (v3 && *(this + 80) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 80) = 1;
  *(this + 9) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v4 = *(this + 3);
  if (v4 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

{
  btHashedOverlappingPairCache::~btHashedOverlappingPairCache(this);

  JUMPOUT(0x21CF07610);
}

void (***btHashedOverlappingPairCache::cleanOverlappingPair(uint64_t a1, uint64_t a2, uint64_t a3))(void)
{
  result = *(a2 + 16);
  if (result)
  {
    (**result)(result);
    result = (*(*a3 + 120))(a3, *(a2 + 16));
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t btHashedOverlappingPairCache::cleanProxyFromPairs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = &unk_282DC8C48;
  v4[1] = a2;
  v4[2] = a1;
  v4[3] = a3;
  return (*(*a1 + 96))(a1, v4);
}

uint64_t btHashedOverlappingPairCache::removeOverlappingPairsContainingProxy(uint64_t a1, uint64_t a2)
{
  v3[0] = &unk_282DC8C70;
  v3[1] = a2;
  return (*(*a1 + 96))(a1, v3);
}

void *btHashedOverlappingPairCache::findPair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  v4 = *(a3 + 40);
  v5 = v3 <= v4;
  if (v3 <= v4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  if (v5)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v6 + 40);
  v9 = *(v7 + 40);
  v10 = ~((v8 | (v9 << 16)) << 15) + (v8 | (v9 << 16));
  v11 = (9 * (v10 ^ (v10 >> 10))) ^ ((9 * (v10 ^ (v10 >> 10))) >> 6);
  v12 = (*(a1 + 16) - 1) & (((v11 + ~(v11 << 11)) >> 16) ^ (v11 + ~(v11 << 11)));
  if (v12 >= *(a1 + 60))
  {
    return 0;
  }

  v13 = *(*(a1 + 72) + 4 * v12);
  if (v13 == -1)
  {
    return 0;
  }

  while (1)
  {
    v14 = v13;
    v15 = (*(a1 + 24) + 32 * v13);
    if (*(*v15 + 40) == v8 && *(v15[1] + 40) == v9)
    {
      break;
    }

    v13 = *(*(a1 + 104) + 4 * v14);
    if (v13 == -1)
    {
      return 0;
    }
  }

  return v15;
}

void *btHashedOverlappingPairCache::internalAddPair(btHashedOverlappingPairCache *this, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 40);
  v5 = *(a3 + 40);
  if (v4 <= v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  if (v4 <= v5)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v6 + 40);
  v9 = *(v7 + 40);
  v10 = ~((v8 | (v9 << 16)) << 15) + (v8 | (v9 << 16));
  v11 = (9 * (v10 ^ (v10 >> 10))) ^ ((9 * (v10 ^ (v10 >> 10))) >> 6);
  v12 = ((v11 + ~(v11 << 11)) >> 16) ^ (v11 + ~(v11 << 11));
  v13 = *(this + 4);
  LODWORD(v14) = (v13 - 1) & v12;
  v15 = *(*(this + 9) + 4 * v14);
  if (v15 == -1)
  {
LABEL_11:
    v17 = *(this + 3);
    if (v17 == v13)
    {
      if (v13)
      {
        v18 = 2 * v13;
      }

      else
      {
        v18 = 1;
      }

      if (v13 >= v18)
      {
        v18 = *(this + 4);
        v21 = v18;
      }

      else
      {
        if (v18)
        {
          v19 = btAlignedAllocInternal(32 * v18, 16);
          v20 = *(this + 3);
        }

        else
        {
          v19 = 0;
          v20 = *(this + 4);
        }

        if (v20 >= 1)
        {
          v22 = 0;
          v23 = 32 * v20;
          do
          {
            v24 = v19 + v22;
            v25 = *(this + 3) + v22;
            *v24 = *v25;
            *(v24 + 16) = *(v25 + 16);
            *(v24 + 24) = *(v25 + 24);
            v22 += 32;
          }

          while (v23 != v22);
        }

        v26 = *(this + 3);
        if (v26 && *(this + 32) == 1)
        {
          btAlignedFreeInternal(v26);
        }

        *(this + 32) = 1;
        *(this + 3) = v19;
        *(this + 4) = v18;
        v21 = *(this + 3);
      }
    }

    else
    {
      v18 = *(this + 4);
      v21 = *(this + 3);
    }

    v14 = v14;
    *(this + 3) = v21 + 1;
    v16 = (*(this + 3) + 32 * v17);
    v27 = *(this + 15);
    if (v27)
    {
      (*(*v27 + 16))(v27, v6, v7);
      v18 = *(this + 4);
    }

    if (v13 < v18)
    {
      btHashedOverlappingPairCache::growTables(this);
      v14 = (*(this + 4) - 1) & v12;
    }

    v28 = *(v6 + 40);
    v29 = *(v7 + 40);
    v30 = v28 < v29;
    if (v28 >= v29)
    {
      v31 = v7;
    }

    else
    {
      v31 = v6;
    }

    if (v30)
    {
      v32 = v7;
    }

    else
    {
      v32 = v6;
    }

    v16[2] = 0;
    v16[3] = 0;
    v33 = *(this + 9);
    v34 = *(v33 + 4 * v14);
    *v16 = v31;
    v16[1] = v32;
    *(*(this + 13) + 4 * v17) = v34;
    *(v33 + 4 * v14) = v17;
  }

  else
  {
    while (1)
    {
      v16 = (*(this + 3) + 32 * v15);
      if (*(*v16 + 40) == v8 && *(v16[1] + 40) == v9)
      {
        break;
      }

      v15 = *(*(this + 13) + 4 * v15);
      if (v15 == -1)
      {
        goto LABEL_11;
      }
    }
  }

  return v16;
}

uint64_t btHashedOverlappingPairCache::removeOverlappingPair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  v5 = *(a3 + 40);
  if (v4 <= v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  if (v4 <= v5)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v6 + 40);
  v9 = *(v7 + 40);
  v10 = ~((v8 | (v9 << 16)) << 15) + (v8 | (v9 << 16));
  v11 = (9 * (v10 ^ (v10 >> 10))) ^ ((9 * (v10 ^ (v10 >> 10))) >> 6);
  v12 = (*(a1 + 16) - 1) & (((v11 + ~(v11 << 11)) >> 16) ^ (v11 + ~(v11 << 11)));
  v13 = *(*(a1 + 72) + 4 * v12);
  if (v13 == -1)
  {
    return 0;
  }

  while (1)
  {
    v16 = *(a1 + 24);
    v17 = (v16 + 32 * v13);
    if (*(*v17 + 40) == v8 && *(v17[1] + 40) == v9)
    {
      break;
    }

    v13 = *(*(a1 + 104) + 4 * v13);
    if (v13 == -1)
    {
      return 0;
    }
  }

  (*(*a1 + 64))(a1, v16 + 32 * v13, a4);
  v18 = v17[3];
  v19 = v17 - *(a1 + 24);
  v20 = v19 >> 5;
  v21 = *(a1 + 72);
  v22 = *(v21 + 4 * v12);
  if (v22 == (v19 >> 5))
  {
    goto LABEL_16;
  }

  do
  {
    v23 = v22;
    v22 = *(*(a1 + 104) + 4 * v22);
  }

  while (v22 != v20);
  if (v23 == -1)
  {
LABEL_16:
    *(v21 + 4 * v12) = *(*(a1 + 104) + 4 * v20);
  }

  else
  {
    *(*(a1 + 104) + 4 * v23) = *(*(a1 + 104) + 4 * v20);
  }

  v24 = *(a1 + 12) - 1;
  v25 = *(a1 + 120);
  if (v25)
  {
    (*(*v25 + 24))(v25, v6, v7, a4);
  }

  if (v24 != v20)
  {
    v26 = *(a1 + 24);
    v27 = v26 + 32 * v24;
    v28 = *(*v27 + 40) | (*(*(v27 + 8) + 40) << 16);
    v29 = ~(v28 << 15) + v28;
    v30 = (9 * (v29 ^ (v29 >> 10))) ^ ((9 * (v29 ^ (v29 >> 10))) >> 6);
    v31 = (*(a1 + 16) - 1) & (((v30 + ~(v30 << 11)) >> 16) ^ (v30 + ~(v30 << 11)));
    v32 = *(a1 + 72);
    v33 = *(v32 + 4 * v31);
    if (v33 == v24)
    {
      goto LABEL_24;
    }

    do
    {
      v34 = v33;
      v33 = *(*(a1 + 104) + 4 * v33);
    }

    while (v33 != v24);
    if (v34 == -1)
    {
LABEL_24:
      *(v32 + 4 * v31) = *(*(a1 + 104) + 4 * v24);
    }

    else
    {
      *(*(a1 + 104) + 4 * v34) = *(*(a1 + 104) + 4 * v24);
    }

    v35 = (v26 + 32 * (v19 >> 5));
    v36 = *(v27 + 16);
    *v35 = *v27;
    v35[1] = v36;
    v37 = *(a1 + 72);
    *(*(a1 + 104) + 4 * v20) = *(v37 + 4 * v31);
    *(v37 + 4 * v31) = v20;
  }

  --*(a1 + 12);
  return v18;
}

uint64_t btHashedOverlappingPairCache::processAllOverlappingPairs(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 12) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = (*(v5 + 24) + 32 * v6);
      result = (*(*a2 + 16))(a2, v7);
      if (result)
      {
        result = (*(*v5 + 24))(v5, *v7, v7[1], a3);
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < *(v5 + 12));
  }

  return result;
}

void btHashedOverlappingPairCache::sortOverlappingPairs(uint64_t a1, uint64_t a2)
{
  v30 = 1;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  if (*(a1 + 12) < 1)
  {
    LODWORD(v6) = 0;
    goto LABEL_25;
  }

  v4 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  do
  {
    v8 = *(a1 + 24);
    if (v6 != v5 || (!v5 ? (v9 = 1) : (v9 = (2 * v5)), v5 >= v9))
    {
      v9 = v5;
      goto LABEL_19;
    }

    if (v9)
    {
      v10 = btAlignedAllocInternal(32 * v9, 16);
    }

    else
    {
      v10 = 0;
    }

    if (v5 >= 1)
    {
      v11 = v5;
      v12 = (v4 + 3);
      v13 = v10 + 3;
      do
      {
        *(v13 - 3) = *(v12 - 3);
        *(v13 - 1) = *(v12 - 1);
        v14 = *v12;
        v12 += 4;
        *v13 = v14;
        v13 += 4;
        --v11;
      }

      while (v11);
LABEL_17:
      btAlignedFreeInternal(v4);
      goto LABEL_18;
    }

    if (v4)
    {
      goto LABEL_17;
    }

LABEL_18:
    v30 = 1;
    v29 = v10;
    v4 = v10;
    v28 = v9;
LABEL_19:
    v15 = v8 + 32 * v7;
    v16 = &v4[4 * v6];
    *v16 = *v15;
    v16[2] = *(v15 + 16);
    v16[3] = *(v15 + 24);
    v17 = v27;
    v6 = ++v27;
    ++v7;
    v5 = v9;
  }

  while (v7 < *(a1 + 12));
  if ((v17 & 0x80000000) == 0)
  {
    v18 = v4 + 1;
    v19 = v6;
    do
    {
      (*(*a1 + 24))(a1, *(v18 - 1), *v18, a2);
      v18 += 4;
      --v19;
    }

    while (v19);
  }

LABEL_25:
  if (*(a1 + 92) >= 1)
  {
    v20 = 0;
    v21 = *(a1 + 104);
    do
    {
      *(v21 + 4 * v20++) = -1;
    }

    while (v20 < *(a1 + 92));
  }

  v22 = (v6 - 1);
  if (v6 > 1)
  {
    btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(v26, &v25, 0, v22);
    LODWORD(v6) = v27;
  }

  if (v6 >= 1)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      (*(*a1 + 16))(a1, *(v29 + v23), *(v29 + v23 + 8), v22);
      ++v24;
      v23 += 32;
    }

    while (v24 < v27);
  }

  if (v29)
  {
    if (v30 == 1)
    {
      btAlignedFreeInternal(v29);
    }
  }
}

void *btHashedOverlappingPairCache::addOverlappingPair(btHashedOverlappingPairCache *a1, void *a2, void *a3)
{
  v6 = *(a1 + 5);
  if (v6)
  {
    if (((*(*v6 + 16))(v6, a2, a3) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = a2[1];
    v9 = a3[1];
    v10 = (a3[2] & v8) != 0 && (a2[2] & v9) != 0;
    if ((v9 & a2[3]) == 0)
    {
      v11 = (a3[3] & v8) != 0 || v10;
      if (v11 != 1)
      {
        return 0;
      }
    }
  }

  return btHashedOverlappingPairCache::internalAddPair(a1, a2, a3);
}

uint64_t btHashedOverlappingPairCache::getOverlappingPairArrayPtr(btHashedOverlappingPairCache *this)
{
  return *(this + 3);
}

{
  return *(this + 3);
}

uint64_t btHashedOverlappingPairCache::cleanProxyFromPairs(btBroadphaseProxy *,btDispatcher *)::CleanPairCallback::processOverlap(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (*a2 == v2 || a2[1] == v2)
  {
    (*(**(a1 + 16) + 64))(*(a1 + 16));
  }

  return 0;
}

void btQuantizedBvh::btQuantizedBvh(btQuantizedBvh *this)
{
  *this = &unk_282DC8C98;
  *(this + 16) = 281;
  *(this + 72) = 0;
  *(this + 104) = 1;
  *(this + 12) = 0;
  *(this + 84) = 0;
  *(this + 136) = 1;
  *(this + 16) = 0;
  *(this + 116) = 0;
  *(this + 168) = 1;
  *(this + 20) = 0;
  *(this + 148) = 0;
  *(this + 200) = 1;
  *(this + 24) = 0;
  *(this + 180) = 0;
  *(this + 52) = 0;
  *(this + 240) = 1;
  *(this + 29) = 0;
  *(this + 220) = 0;
  *(this + 62) = 0;
  *(this + 1) = xmmword_21C2A26A0;
  *(this + 2) = xmmword_21C2A2690;
}

void btQuantizedBvh::buildTree(btQuantizedBvh *this, int a2, int a3, double a4, double a5, float32x4_t a6, double a7, float32x4_t a8, float32x4_t a9, float a10, float32x4_t a11)
{
  v13 = a3 - a2;
  v14 = *(this + 17);
  if (a3 - a2 != 1)
  {
    v16 = btQuantizedBvh::calcSplittingAxis(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    v24 = btQuantizedBvh::sortAndCalcSplittingIndex(this, a2, a3, v16, v17, v18, v19, v20, v21, v22, v23);
    v25 = *(this + 17);
    btQuantizedBvh::setInternalNodeAabbMin(this, v25, this + 2);
    v26 = btQuantizedBvh::setInternalNodeAabbMax(this, *(this + 17), this + 1);
    if (a3 > a2)
    {
      v29 = 16 * a2;
      v30 = (a2 << 6) | 0x10;
      do
      {
        if (*(this + 72) == 1)
        {
          v31 = (*(this + 20) + v29);
          v26.i16[0] = *v31;
          v32 = *(this + 12);
          v33 = *(this + 13);
          LOWORD(v27) = v31[1];
          LOWORD(v28) = v31[2];
          v34 = *(this + 14);
          v49.var0.var0[0] = v26.u32[0] / v32;
          v49.var0.var0[1] = v27 / v33;
          *&v49.var0.var0[2] = COERCE_UNSIGNED_INT(v28 / v34);
          v35 = *(this + 1);
          v36 = vaddq_f32(v49, v35);
          v49 = v36;
          v36.i16[0] = v31[3];
          v36.f32[0] = v36.u32[0] / v32;
          LOWORD(v32) = v31[4];
          *&v37 = LODWORD(v32) / v33;
          LOWORD(v33) = v31[5];
          v48.i64[0] = __PAIR64__(v37, v36.u32[0]);
          v48.i64[1] = COERCE_UNSIGNED_INT(LODWORD(v33) / v34);
          v38 = vaddq_f32(v48, v35);
        }

        else
        {
          v39 = (*(this + 12) + v30);
          v49 = v39[-1];
          v38 = *v39;
        }

        v40 = *(this + 17);
        v48 = v38;
        v26 = btQuantizedBvh::mergeInternalNodeAabb(this, v40, &v49, &v48);
        v29 += 16;
        v30 += 64;
        --v13;
      }

      while (v13);
    }

    v41 = v25;
    v42 = *(this + 17) + 1;
    *(this + 17) = v42;
    btQuantizedBvh::buildTree(this, a2, v24);
    v43 = *(this + 17);
    btQuantizedBvh::buildTree(this, v24, a3);
    v44 = *(this + 17) - v14;
    if (*(this + 72) == 1 && v44 >= 129)
    {
      btQuantizedBvh::updateSubtreeHeaders(this, v42, v43);
      if ((*(this + 72) & 1) == 0)
      {
LABEL_13:
        *(*(this + 16) + (v41 << 6) + 32) = v44;
        return;
      }
    }

    else if (!*(this + 72))
    {
      goto LABEL_13;
    }

    *(*(this + 24) + 16 * v41 + 12) = -v44;
    return;
  }

  if (*(this + 72) == 1)
  {
    *(*(this + 24) + 16 * v14) = *(*(this + 20) + 16 * a2);
  }

  else
  {
    v45 = (*(this + 12) + (a2 << 6));
    v46 = (*(this + 16) + (v14 << 6));
    *v46 = *v45;
    v46[1] = v45[1];
    v47 = v45[3];
    v46[2] = v45[2];
    v46[3] = v47;
  }

  ++*(this + 17);
}

float32x4_t btQuantizedBvh::setQuantizationValues(float32x4_t *this, float32x4_t *a2, float32x4_t *a3, int32x2_t a4)
{
  v4 = vdupq_lane_s32(a4, 0);
  v4.i32[3] = 0;
  v5 = vsubq_f32(*a2, v4);
  v6 = v5;
  v6.i32[3] = 0;
  this[1] = v6;
  v7 = vaddq_f32(v4, *a3);
  v8 = vsubq_f32(v7, v5);
  v8.i32[3] = 0;
  v9 = vrecpeq_f32(v8);
  v10 = vmulq_f32(v9, vrecpsq_f32(v8, v9));
  v11 = vmulq_f32(vrecpsq_f32(v8, v10), vmulq_f32(v10, xmmword_21C2A3FD0));
  _Q6 = vmulq_f32(vsubq_f32(v6, v6), v11);
  *_Q6.f32 = vdiv_f32(vcvt_f32_u32((*&vcvt_s32_f32(*_Q6.f32) & 0xFFFFFFFEFFFFFFFELL)), *v11.f32);
  _Q6.f32[2] = (_Q6.f32[2] & 0xFFFE) / v11.f32[2];
  v13 = vsubq_f32(vaddq_f32(_Q6, v5), v4);
  v13.i32[3] = 0;
  v14 = vminq_f32(v6, v13);
  v15 = vmulq_f32(vsubq_f32(v7, v14), v11);
  __asm { FMOV            V6.2S, #1.0 }

  *v15.f32 = vdiv_f32(vcvt_f32_u32((*&vcvt_s32_f32(vadd_f32(*v15.f32, *_Q6.f32)) | 0x100000001)), *v11.f32);
  v15.f32[2] = ((v15.f32[2] + 1.0) | 1u) / v11.f32[2];
  this[4].i8[8] = 1;
  v15.i32[3] = 0;
  v20 = vmaxq_f32(v7, vaddq_f32(v4, vaddq_f32(v14, v15)));
  this[1] = v14;
  this[2] = v20;
  v21 = vsubq_f32(v20, v14);
  v21.i32[3] = 0;
  v22 = vrecpeq_f32(v21);
  v23 = vmulq_f32(v22, vrecpsq_f32(v21, v22));
  result = vmulq_f32(vrecpsq_f32(v21, v23), vmulq_f32(v23, xmmword_21C2A3FD0));
  this[3] = result;
  return result;
}

void btQuantizedBvh::~btQuantizedBvh(btQuantizedBvh *this)
{
  *this = &unk_282DC8C98;
  v2 = *(this + 29);
  if (v2 && *(this + 240) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 240) = 1;
  *(this + 29) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  v3 = *(this + 24);
  if (v3 && *(this + 200) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 200) = 1;
  *(this + 24) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  v4 = *(this + 20);
  if (v4 && *(this + 168) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 168) = 1;
  *(this + 20) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  v5 = *(this + 16);
  if (v5 && *(this + 136) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 136) = 1;
  *(this + 16) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  v6 = *(this + 12);
  if (v6 && *(this + 104) == 1)
  {
    btAlignedFreeInternal(v6);
  }

  *(this + 104) = 1;
  *(this + 12) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
}

{
  btQuantizedBvh::~btQuantizedBvh(this);

  btAlignedFreeInternal(v1);
}

uint64_t btQuantizedBvh::calcSplittingAxis(__n128 *this, int a2, int a3, double a4, double a5, float32x4_t a6, double a7, float32x4_t a8, float32x4_t a9, float a10, float32x4_t a11)
{
  v12 = a3 - a2;
  if (a3 <= a2)
  {
    v29 = v12;
    v34 = 0uLL;
  }

  else
  {
    v13 = (a2 << 6) | 0x10;
    v14 = 16 * a2;
    v15 = 0uLL;
    v16.i64[0] = 0x3F0000003F000000;
    v16.i64[1] = 0x3F0000003F000000;
    v17 = a3 - a2;
    do
    {
      if (this[4].n128_u8[8])
      {
        v18 = (this[10].n128_u64[0] + v14);
        a6.i16[0] = v18[3];
        v19 = this[3].n128_f32[0];
        v20 = this[3].n128_f32[1];
        a9.i16[0] = v18[4];
        LOWORD(a10) = v18[5];
        *&v21 = LODWORD(a10);
        a11.i32[0] = this[3].n128_i32[2];
        v22.i32[3] = 0;
        v22.f32[0] = a6.u32[0] / v19;
        v22.f32[1] = a9.u32[0] / v20;
        v22.f32[2] = *&v21 / a11.f32[0];
        a9 = this[1];
        v23 = vaddq_f32(a9, v22);
        LOWORD(v21) = *v18;
        *&v24 = v21;
        *&v25 = *&v24 / v19;
        LOWORD(v24) = v18[1];
        *&v26 = v24;
        a8.f32[0] = *&v26 / v20;
        LOWORD(v26) = v18[2];
        a10 = v26;
        v11.i32[3] = 0;
        v11.i64[0] = __PAIR64__(a8.u32[0], v25);
        v11.f32[2] = a10 / a11.f32[0];
        v27 = vaddq_f32(a9, v11);
      }

      else
      {
        v28 = (this[6].n128_u64[0] + v13);
        v27 = v28[-1];
        v23 = *v28;
      }

      a6 = vmulq_f32(vaddq_f32(v23, v27), v16);
      a6.i32[3] = 0;
      v15 = vaddq_f32(v15, a6);
      v13 += 64;
      v14 += 16;
      --v17;
    }

    while (v17);
    v29 = v12;
    v30 = vmulq_n_f32(v15, 1.0 / v12);
    v31 = (a2 << 6) | 0x10;
    v32 = 16 * a2;
    v33 = a3 - a2;
    v34 = 0uLL;
    v35.i64[0] = 0x3F0000003F000000;
    v35.i64[1] = 0x3F0000003F000000;
    do
    {
      if (this[4].n128_u8[8])
      {
        v36 = (this[10].n128_u64[0] + v32);
        a8.i16[0] = v36[3];
        v37 = this[3].n128_f32[0];
        v38 = this[3].n128_f32[1];
        a11.i16[0] = v36[4];
        v11.i16[0] = v36[5];
        *&v39 = v11.u32[0];
        v40 = this[3].n128_f32[2];
        v41.i32[3] = 0;
        v41.f32[0] = a8.u32[0] / v37;
        v41.f32[1] = a11.u32[0] / v38;
        v41.f32[2] = *&v39 / v40;
        a11 = this[1];
        v42 = vaddq_f32(a11, v41);
        LOWORD(v39) = *v36;
        *&v43 = v39;
        *&v44 = *&v43 / v37;
        LOWORD(v43) = v36[1];
        *&v45 = v43;
        *&v46 = *&v45 / v38;
        LOWORD(v45) = v36[2];
        v11.f32[0] = v45;
        v41.i32[3] = 0;
        v41.i64[0] = __PAIR64__(v46, v44);
        v41.f32[2] = v11.f32[0] / v40;
        v47 = vaddq_f32(a11, v41);
      }

      else
      {
        v48 = (this[6].n128_u64[0] + v31);
        v47 = v48[-1];
        v42 = *v48;
      }

      v49 = vsubq_f32(vmulq_f32(vaddq_f32(v42, v47), v35), v30);
      v49.i32[3] = 0;
      a8 = vmulq_f32(v49, v49);
      v34 = vaddq_f32(v34, a8);
      v31 += 64;
      v32 += 16;
      --v33;
    }

    while (v33);
  }

  v50 = vmulq_n_f32(v34, 1.0 / (v29 + -1.0));
  v51 = v50.f32[0] < v50.f32[1];
  if (v50.f32[0] < v50.f32[1])
  {
    v50.f32[0] = v50.f32[1];
  }

  if (v50.f32[0] >= v50.f32[2])
  {
    return v51;
  }

  else
  {
    return 2;
  }
}

uint64_t btQuantizedBvh::sortAndCalcSplittingIndex(__n128 *this, int a2, int a3, int a4, double a5, double a6, float32x4_t a7, double a8, float a9, float32x4_t a10, float a11)
{
  v57 = 0uLL;
  v12 = a2;
  v13 = a3 - a2;
  if (a3 > a2)
  {
    v15 = v57;
    v16 = (a2 << 6) | 0x10;
    v17 = 16 * a2;
    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    v19 = a3 - a2;
    do
    {
      if (this[4].n128_u8[8])
      {
        v20 = (this[10].n128_u64[0] + v17);
        a7.i16[0] = v20[3];
        v21 = this[3].n128_f32[0];
        v22 = this[3].n128_f32[1];
        a10.i16[0] = v20[4];
        LOWORD(a11) = v20[5];
        *&v23 = LODWORD(a11);
        v24 = this[3].n128_f32[2];
        v25.i32[3] = 0;
        v25.f32[0] = a7.u32[0] / v21;
        v25.f32[1] = a10.u32[0] / v22;
        v25.f32[2] = *&v23 / v24;
        a10 = this[1];
        v26 = vaddq_f32(a10, v25);
        LOWORD(v23) = *v20;
        *&v27 = v23;
        *&v28 = *&v27 / v21;
        LOWORD(v27) = v20[1];
        *&v29 = v27;
        a9 = *&v29 / v22;
        LOWORD(v29) = v20[2];
        a11 = v29;
        v25.i32[3] = 0;
        v25.i64[0] = __PAIR64__(LODWORD(a9), v28);
        v25.f32[2] = a11 / v24;
        v30 = vaddq_f32(a10, v25);
      }

      else
      {
        v31 = (this[6].n128_u64[0] + v16);
        v30 = v31[-1];
        v26 = *v31;
      }

      a7 = vmulq_f32(vaddq_f32(v26, v30), v18);
      a7.i32[3] = 0;
      v15 = vaddq_f32(v15, a7);
      v16 += 64;
      v17 += 16;
      --v19;
    }

    while (v19);
    v32 = vmulq_n_f32(v15, 1.0 / v13);
    v57 = v32;
    v33 = a4;
    v34 = v57.f32[a4];
    v35 = (a2 << 6) | 0x10;
    v36 = 16 * a2;
    v37 = a3 - a2;
    v38.i64[0] = 0x3F0000003F000000;
    v38.i64[1] = 0x3F0000003F000000;
    v39 = a2;
    v12 = a2;
    do
    {
      if (this[4].n128_u8[8] == 1)
      {
        v40 = (this[10].n128_u64[0] + v36);
        v32.i16[0] = v40[3];
        v41 = this[3].n128_f32[0];
        v42 = this[3].n128_f32[1];
        v30.i16[0] = v40[4];
        LOWORD(a9) = v40[5];
        *&v43 = LODWORD(a9);
        v44 = this[3].n128_f32[2];
        v45.i32[3] = 0;
        v45.f32[0] = v32.u32[0] / v41;
        v45.f32[1] = v30.u32[0] / v42;
        v45.f32[2] = *&v43 / v44;
        v30 = this[1];
        v46 = vaddq_f32(v30, v45);
        LOWORD(v43) = *v40;
        *&v47 = v43;
        *&v48 = *&v47 / v41;
        LOWORD(v47) = v40[1];
        *&v49 = v47;
        *&v50 = *&v49 / v42;
        LOWORD(v49) = v40[2];
        a9 = v49;
        v45.i32[3] = 0;
        v45.i64[0] = __PAIR64__(v50, v48);
        v45.f32[2] = a9 / v44;
        v51 = vaddq_f32(v30, v45);
      }

      else
      {
        v52 = (this[6].n128_u64[0] + v35);
        v51 = v52[-1];
        v46 = *v52;
      }

      v32 = vmulq_f32(vaddq_f32(v46, v51), v38);
      v32.i32[3] = 0;
      v56 = v32;
      v32.i32[0] = v56.i32[v33];
      if (v32.f32[0] > v34)
      {
        v32.i64[0] = btQuantizedBvh::swapLeafNodes(this, v39, v12).n128_u64[0];
        v38.i64[0] = 0x3F0000003F000000;
        v38.i64[1] = 0x3F0000003F000000;
        ++v12;
      }

      ++v39;
      v35 += 64;
      v36 += 16;
      --v37;
    }

    while (v37);
  }

  if (v12 >= ~(v13 / 3) + a3 || v12 <= v13 / 3 + a2)
  {
    return (a2 + (v13 >> 1));
  }

  else
  {
    return v12;
  }
}

float32x4_t btQuantizedBvh::setInternalNodeAabbMin(float32x4_t *this, int a2, float32x4_t *a3)
{
  if (this[4].i8[8] == 1)
  {
    v3 = (this[12].i64[0] + 16 * a2);
    result = vmulq_f32(this[3], vsubq_f32(*a3, this[1]));
    *v3 = result.f32[0] & 0xFFFE;
    v3[1] = result.f32[1] & 0xFFFE;
    result.i32[0] = result.i32[2];
    v3[2] = result.f32[2] & 0xFFFE;
  }

  else
  {
    result = *a3;
    *(this[8].i64[0] + (a2 << 6)) = *a3;
  }

  return result;
}

float32x4_t btQuantizedBvh::setInternalNodeAabbMax(float32x4_t *this, int a2, float32x4_t *a3)
{
  if (this[4].i8[8] == 1)
  {
    v3 = (this[12].i64[0] + 16 * a2);
    result = vmulq_f32(this[3], vsubq_f32(*a3, this[1]));
    v3[3] = (result.f32[0] + 1.0) | 1;
    v3[4] = (result.f32[1] + 1.0) | 1;
    result.f32[0] = result.f32[2] + 1.0;
    v3[5] = (result.f32[2] + 1.0) | 1;
  }

  else
  {
    result = *a3;
    *(this[8].i64[0] + (a2 << 6) + 16) = *a3;
  }

  return result;
}

float32x4_t btQuantizedBvh::mergeInternalNodeAabb(float32x4_t *this, int a2, float32x4_t *a3, float32x4_t *a4)
{
  if (this[4].i8[8] == 1)
  {
    v4 = 0;
    v5 = this[1];
    v6 = this[3];
    v7 = vmulq_f32(v6, vsubq_f32(*a3, v5));
    v14[0] = v7.f32[0] & 0xFFFE;
    v14[1] = v7.f32[1] & 0xFFFE;
    v14[2] = v7.f32[2] & 0xFFFE;
    result = vmulq_f32(v6, vsubq_f32(*a4, v5));
    v13[0] = (result.f32[0] + 1.0) | 1;
    v13[1] = (result.f32[1] + 1.0) | 1;
    result.f32[0] = result.f32[2] + 1.0;
    v13[2] = (result.f32[2] + 1.0) | 1;
    v9 = this[12].i64[0] + 16 * a2;
    do
    {
      v10 = v14[v4];
      if (*(v9 + v4 * 2) > v10)
      {
        *(v9 + v4 * 2) = v10;
      }

      v11 = v13[v4];
      if (*(v9 + v4 * 2 + 6) < v11)
      {
        *(v9 + v4 * 2 + 6) = v11;
      }

      ++v4;
    }

    while (v4 != 3);
  }

  else
  {
    *(this[8].i64[0] + (a2 << 6)) = vminq_f32(*(this[8].i64[0] + (a2 << 6)), *a3);
    v12 = (this[8].i64[0] + (a2 << 6));
    result = vmaxq_f32(v12[1], *a4);
    v12[1] = result;
  }

  return result;
}

void btQuantizedBvh::updateSubtreeHeaders(btQuantizedBvh *this, int a2, int a3)
{
  v5 = *(this + 24);
  v6 = v5 + 16 * a2;
  v7 = *(v6 + 12);
  if (v7 < 0)
  {
    v8 = -v7;
  }

  else
  {
    v8 = 1;
  }

  v9 = v5 + 16 * a3;
  v10 = *(v9 + 12);
  if (v10 < 0)
  {
    v11 = -v10;
  }

  else
  {
    v11 = 1;
  }

  if (v8 <= 0x80)
  {
    v13 = *(this + 55);
    v14 = v13;
    if (v13 == *(this + 56))
    {
      v15 = v13 ? 2 * v13 : 1;
      if (v13 < v15)
      {
        if (v15)
        {
          v16 = btAlignedAllocInternal(32 * v15, 16);
          v13 = *(this + 55);
        }

        else
        {
          v16 = 0;
        }

        if (v13 >= 1)
        {
          v17 = 0;
          v18 = 32 * v13;
          do
          {
            v19 = (v16 + v17);
            v20 = (*(this + 29) + v17);
            v21 = v20[1];
            *v19 = *v20;
            v19[1] = v21;
            v17 += 32;
          }

          while (v18 != v17);
        }

        v22 = *(this + 29);
        if (v22 && *(this + 240) == 1)
        {
          btAlignedFreeInternal(v22);
        }

        *(this + 240) = 1;
        *(this + 29) = v16;
        *(this + 56) = v15;
        v13 = *(this + 55);
      }
    }

    *(this + 55) = v13 + 1;
    v23 = *(this + 29) + 32 * v14;
    *v23 = *v6;
    *(v23 + 2) = *(v6 + 2);
    *(v23 + 4) = *(v6 + 4);
    *(v23 + 6) = *(v6 + 6);
    *(v23 + 8) = *(v6 + 8);
    *(v23 + 10) = *(v6 + 10);
    *(v23 + 12) = a2;
    *(v23 + 16) = v8;
  }

  if (v11 <= 128)
  {
    v24 = *(this + 55);
    v25 = v24;
    if (v24 == *(this + 56))
    {
      v26 = v24 ? 2 * v24 : 1;
      if (v24 < v26)
      {
        if (v26)
        {
          v27 = btAlignedAllocInternal(32 * v26, 16);
          v24 = *(this + 55);
        }

        else
        {
          v27 = 0;
        }

        if (v24 >= 1)
        {
          v28 = 0;
          v29 = 32 * v24;
          do
          {
            v30 = (v27 + v28);
            v31 = (*(this + 29) + v28);
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            v28 += 32;
          }

          while (v29 != v28);
        }

        v33 = *(this + 29);
        if (v33 && *(this + 240) == 1)
        {
          btAlignedFreeInternal(v33);
        }

        *(this + 240) = 1;
        *(this + 29) = v27;
        *(this + 56) = v26;
        v24 = *(this + 55);
      }
    }

    *(this + 55) = v24 + 1;
    v34 = *(this + 29) + 32 * v25;
    *v34 = *v9;
    *(v34 + 2) = *(v9 + 2);
    *(v34 + 4) = *(v9 + 4);
    *(v34 + 6) = *(v9 + 6);
    *(v34 + 8) = *(v9 + 8);
    *(v34 + 10) = *(v9 + 10);
    *(v34 + 12) = a3;
    *(v34 + 16) = v11;
  }

  *(this + 62) = *(this + 55);
}

__n128 btQuantizedBvh::swapLeafNodes(btQuantizedBvh *this, int a2, int a3)
{
  if (*(this + 72) == 1)
  {
    v3 = *(this + 20);
    result = *(v3 + 16 * a2);
    *(v3 + 16 * a2) = *(v3 + 16 * a3);
    *(*(this + 20) + 16 * a3) = result;
  }

  else
  {
    v5 = *(this + 12);
    v6 = (v5 + (a2 << 6));
    v7 = *v6;
    v8 = v6[1];
    v13 = v6[2];
    v14 = v6[3];
    v9 = (v5 + (a3 << 6));
    v10 = v9[1];
    *v6 = *v9;
    v6[1] = v10;
    v11 = v9[3];
    v6[2] = v9[2];
    v6[3] = v11;
    v12 = (*(this + 12) + (a3 << 6));
    *v12 = v7;
    v12[1] = v8;
    result = v13;
    v12[2] = v13;
    v12[3] = v14;
  }

  return result;
}

uint64_t btQuantizedBvh::reportAabbOverlappingNodex(uint64_t result, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  if (*(result + 72) == 1)
  {
    v14 = v4;
    v15 = v5;
    v6 = *(result + 16);
    v7 = *(result + 32);
    v8 = *(result + 48);
    v9 = vmulq_f32(v8, vsubq_f32(vminq_f32(vmaxq_f32(*a3, v6), v7), v6));
    v13[0] = v9.f32[0] & 0xFFFE;
    v13[1] = v9.f32[1] & 0xFFFE;
    v13[2] = v9.f32[2] & 0xFFFE;
    v10 = vmulq_f32(v8, vsubq_f32(vminq_f32(vmaxq_f32(*a4, v6), v7), v6));
    v12[0] = (v10.f32[0] + 1.0) | 1;
    v12[1] = (v10.f32[1] + 1.0) | 1;
    v12[2] = (v10.f32[2] + 1.0) | 1;
    v11 = *(result + 208);
    switch(v11)
    {
      case 2:
        return btQuantizedBvh::walkRecursiveQuantizedTreeAgainstQueryAabb(result, *(result + 192), a2, v13, v12);
      case 1:
        return btQuantizedBvh::walkStacklessQuantizedTreeCacheFriendly(result, a2, v13, v12);
      case 0:
        return btQuantizedBvh::walkStacklessQuantizedTree(result, a2, v13, v12, 0, *(result + 68));
    }
  }

  else
  {

    return btQuantizedBvh::walkStacklessTree(result, a2, a3->f32, a4->f32);
  }

  return result;
}

uint64_t btQuantizedBvh::walkStacklessQuantizedTree(uint64_t result, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, int a5, int a6)
{
  if (a5 < a6)
  {
    v7 = a5;
    v11 = 0;
    v12 = (*(result + 192) + 16 * a5);
    while (1)
    {
      v18 = *a3 <= v12[3] && a3[2] <= v12[5] && *a4 >= *v12 && a4[2] >= v12[2] && a3[1] <= v12[4] && a4[1] >= v12[1];
      v19 = *(v12 + 3);
      if (v19 < 0 || !v18)
      {
        if (((v19 < 0) & ~v18) != 0)
        {
          v12 += 8 * -v19;
          v7 -= v19;
          goto LABEL_27;
        }
      }

      else
      {
        result = (*(*a2 + 16))(a2, v19 >> 21, v19 & 0x1FFFFF);
      }

      v12 += 8;
      ++v7;
LABEL_27:
      ++v11;
      if (v7 >= a6)
      {
        goto LABEL_30;
      }
    }
  }

  v11 = 0;
LABEL_30:
  if (maxIterations < v11)
  {
    maxIterations = v11;
  }

  return result;
}

uint64_t btQuantizedBvh::walkStacklessQuantizedTreeCacheFriendly(uint64_t result, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *(result + 220);
  if (v4 >= 1)
  {
    v8 = result;
    v9 = 0;
    for (i = 0; i < v4; ++i)
    {
      v11 = (*(v8 + 232) + v9);
      result = a3[1];
      if (*a3 <= v11[3] && *a4 >= *v11 && a3[2] <= v11[5] && a4[2] >= v11[2] && result <= v11[4] && a4[1] >= v11[1])
      {
        result = btQuantizedBvh::walkStacklessQuantizedTree(v8, a2, a3, a4, *(v11 + 3), *(v11 + 4) + *(v11 + 3));
        v4 = *(v8 + 220);
      }

      v9 += 32;
    }
  }

  return result;
}

uint64_t btQuantizedBvh::walkRecursiveQuantizedTreeAgainstQueryAabb(uint64_t result, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  v9 = result;
  while (*a4 <= a2[3] && *a5 >= *a2 && a4[2] <= a2[5] && a5[2] >= a2[2] && a4[1] <= a2[4] && a5[1] >= a2[1])
  {
    v10 = *(a2 + 3);
    if ((v10 & 0x80000000) == 0)
    {
      v12 = *(*a3 + 16);

      return v12(a3, v10 >> 21, v10 & 0x1FFFFF);
    }

    result = btQuantizedBvh::walkRecursiveQuantizedTreeAgainstQueryAabb(v9, a2 + 8, a3, a4, a5);
    v11 = *(a2 + 7);
    if (v11 >= 0)
    {
      a2 += 16;
    }

    else
    {
      a2 += 8 * -v11 + 8;
    }
  }

  return result;
}

uint64_t btQuantizedBvh::walkStacklessTree(uint64_t result, uint64_t a2, float *a3, float *a4)
{
  if (*(result + 68) >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = *(result + 128);
    while (1)
    {
      v11 = *a3 <= *(v10 + 16) && *a4 >= *v10;
      if (a3[2] <= *(v10 + 24))
      {
        if (a4[2] < *(v10 + 8))
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      if (a3[1] <= *(v10 + 20) && a4[1] >= *(v10 + 4))
      {
        v14 = *(v10 + 32);
        v15 = v14 == -1;
        v12 = v14 == -1;
        if (v15 && v11)
        {
          result = (*(*a2 + 16))(a2, *(v10 + 36), *(v10 + 40));
LABEL_21:
          v10 += 64;
          ++v9;
          goto LABEL_22;
        }
      }

      else
      {
        v11 = 0;
        v12 = *(v10 + 32) == -1;
      }

      if (v12 || v11)
      {
        goto LABEL_21;
      }

      v13 = *(v10 + 32);
      v10 += v13 << 6;
      v9 += v13;
LABEL_22:
      ++v8;
      if (v9 >= *(v7 + 68))
      {
        goto LABEL_25;
      }
    }
  }

  v8 = 0;
LABEL_25:
  if (maxIterations < v8)
  {
    maxIterations = v8;
  }

  return result;
}

uint64_t btQuantizedBvh::walkStacklessTreeAgainstRay(uint64_t result, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, double a7, double a8, double a9, double a10, double a11, double a12, __n128 a13, __n128 a14)
{
  v68 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = *a4;
  v16 = vsubq_f32(*a4, *a3);
  v16.i32[3] = 0;
  v17 = vmulq_f32(v16, v16);
  v18 = vmulq_n_f32(v16, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL)).f32[0]));
  if (v18.f32[2] == 0.0)
  {
    v19 = 1.0e18;
  }

  else
  {
    v19 = 1.0 / v18.f32[2];
  }

  if (*(result + 68) >= 1)
  {
    v23 = result;
    v24 = 0;
    v25 = 0;
    __asm { FMOV            V4.2S, #1.0 }

    a13.n128_u64[0] = vbsl_s8(vceqz_f32(*v18.f32), vdup_n_s32(0x5D5E0B6Bu), vdiv_f32(_D4, *v18.f32));
    v30 = &v67[a13.n128_f32[1] < 0.0] + 1;
    v31 = &v67[a13.n128_f32[1] >= 0.0] + 1;
    v32 = *(result + 128);
    v33 = vmulq_f32(v18, v16);
    a14.n128_u64[0] = vadd_f32(vpadd_f32(*v33.i8, *v33.i8), *&vextq_s8(v33, v33, 8uLL));
    v34 = vaddq_f32(vmaxq_f32(v14, v15), *a6);
    v35 = &v67[a13.n128_f32[0] < 0.0];
    v36 = vaddq_f32(vminq_f32(v14, v15), *a5);
    v37 = &v67[a13.n128_f32[0] >= 0.0];
    v38 = v36.f32[2];
    v39 = v34.f32[2];
    v40 = v36.f32[1];
    v41 = v34.f32[1];
    v42 = &v67[v19 >= 0.0] + 2;
    while (1)
    {
      v43 = vsubq_f32(v32[1], *a5);
      v67[0] = vsubq_f32(*v32, *a6);
      v67[1] = v43;
      v44 = v36.f32[0] > v32[1].f32[0] || v34.f32[0] < v32->f32[0];
      if (v38 <= v32[1].f32[2])
      {
        if (v39 < v32->f32[2])
        {
          v44 = 1;
        }
      }

      else
      {
        v44 = 1;
      }

      if (v40 > v32[1].f32[1])
      {
        goto LABEL_30;
      }

      if (v41 < v32->f32[1])
      {
        v44 = 1;
      }

      if (v44)
      {
        goto LABEL_30;
      }

      v45.i32[0] = *v35;
      v46.i32[0] = *v37;
      v46.i32[1] = *v30;
      v47 = vmul_f32(a13.n128_u64[0], vsub_f32(v46, *a3->f32));
      v45.i32[1] = *v31;
      v48 = vmul_f32(a13.n128_u64[0], vsub_f32(v45, *a3->f32));
      if (v48.f32[0] > v48.f32[1] || v47.f32[1] > v47.f32[0])
      {
        goto LABEL_30;
      }

      if (v47.f32[1] > v48.f32[0])
      {
        v48.f32[0] = v47.f32[1];
      }

      if (v48.f32[1] < v47.f32[0])
      {
        v47.f32[0] = v48.f32[1];
      }

      v50 = a3->f32[2];
      v51 = v19 * (*(&v67[v19 < 0.0] + 2) - v50);
      v52 = v19 * (*v42 - v50);
      if (v48.f32[0] <= v52 && v51 <= v47.f32[0])
      {
        if (v51 > v48.f32[0])
        {
          v48.f32[0] = v51;
        }

        if (v52 < v47.f32[0])
        {
          v47.f32[0] = v52;
        }

        v54 = v47.f32[0] > 0.0 && v48.f32[0] < a14.n128_f32[0];
        v58 = v32[2].i32[0];
        _ZF = v58 == -1;
        v55 = v58 == -1;
        if (_ZF && v54)
        {
          v65 = a3;
          v60 = a2;
          v61 = v37;
          v66 = a13;
          v63 = v34;
          v64 = a14;
          v62 = v36;
          v59 = v42;
          result = (*(*a2 + 16))(a2, v32[2].u32[1], v32[2].u32[2]);
          v42 = v59;
          a2 = v60;
          v37 = v61;
          v36 = v62;
          v34 = v63;
          a14 = v64;
          a3 = v65;
          a13 = v66;
LABEL_48:
          v32 += 4;
          ++v25;
          goto LABEL_49;
        }
      }

      else
      {
LABEL_30:
        v54 = 0;
        v55 = v32[2].i32[0] == -1;
      }

      if (v55 || v54)
      {
        goto LABEL_48;
      }

      v56 = v32[2].i32[0];
      v32 += 4 * v56;
      v25 += v56;
LABEL_49:
      ++v24;
      if (v25 >= *(v23 + 68))
      {
        goto LABEL_52;
      }
    }
  }

  v24 = 0;
LABEL_52:
  if (maxIterations < v24)
  {
    maxIterations = v24;
  }

  return result;
}

float32x4_t *btQuantizedBvh::walkStacklessQuantizedTreeAgainstRay(float32x4_t *result, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, int a7, uint64_t a8)
{
  v8 = a7;
  v91 = *MEMORY[0x277D85DE8];
  v9 = *a4;
  v10 = *a3;
  v11 = vsubq_f32(*a4, *a3);
  v11.i32[3] = 0;
  v12 = vmulq_f32(v11, v11);
  v13 = vmulq_n_f32(v11, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)).f32[0]));
  if (v13.f32[2] == 0.0)
  {
    v14 = 1.0e18;
  }

  else
  {
    v14 = 1.0 / v13.f32[2];
  }

  if (a7 < a8)
  {
    v16 = result;
    v17 = 0;
    v18 = vmulq_f32(v13, v11);
    LODWORD(v19) = vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).u32[0];
    __asm { FMOV            V5.2S, #1.0 }

    v23 = vbsl_s8(vceqz_f32(*v13.f32), vdup_n_s32(0x5D5E0B6Bu), vdiv_f32(_D5, *v13.f32));
    v24 = vminq_f32(v10, v9);
    v25 = vmaxq_f32(v10, v9);
    v26 = vaddq_f32(v24, *a5);
    v27 = result[1];
    v28 = result[2];
    v29 = result[3];
    v30 = vmulq_f32(v29, vsubq_f32(vminq_f32(vmaxq_f32(v26, v27), v28), v27));
    result = (v30.f32[0] & 0xFFFE);
    v31 = v30.f32[1] & 0xFFFE;
    v32 = v30.f32[2] & 0xFFFE;
    v33 = vmulq_f32(v29, vsubq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v25, *a6), v27), v28), v27));
    v34 = (v33.f32[0] + 1.0) | 1;
    v35 = (v16[12].i64[0] + 16 * v8);
    v36 = &v90[v23.f32[0] < 0.0];
    v37 = &v90[v23.f32[0] >= 0.0];
    v38 = &v90[v23.f32[1] < 0.0].i32[1];
    v39 = (v33.f32[1] + 1.0) | 1;
    v40 = (v33.f32[2] + 1.0) | 1;
    v41 = &v90[v23.f32[1] >= 0.0].u32[1];
    v42 = &v90[v14 < 0.0].f32[2];
    v43 = &v90[v14 >= 0.0].f32[2];
    v89 = a3;
    v87 = v23;
    v88 = v19;
    v85 = v30.f32[0] & 0xFFFE;
    v86 = v31;
    v84 = v36;
    v83 = v34;
    v82 = v38;
    v80 = v40;
    v81 = v39;
    v79 = v41;
    while (1)
    {
      v44 = *v35;
      v45 = v35[2];
      v46 = v35[1];
      v47 = *(v35 + 3);
      if (result > v35[3] || v34 < v44 || v32 > v35[5] || v40 < v45 || v31 > v35[4] || v39 < v46)
      {
        goto LABEL_22;
      }

      v55 = v16[3].f32[0];
      v56 = v16[3].f32[1];
      v57 = v16[3].f32[2];
      *&v58 = v45 / v57;
      v59.i32[3] = 0;
      v59.f32[0] = v44 / v55;
      v59.f32[1] = v46 / v56;
      v59.f32[2] = *&v58;
      v60 = v16[1];
      v90[0] = vaddq_f32(v60, v59);
      LOWORD(v58) = v35[3];
      *&v61 = v58;
      *&v62 = *&v61 / v55;
      LOWORD(v61) = v35[4];
      *&v63 = v61;
      *&v64 = *&v63 / v56;
      LOWORD(v63) = v35[5];
      v59.i32[3] = 0;
      v59.i64[0] = __PAIR64__(v64, v62);
      v59.f32[2] = v63 / v57;
      v65 = vsubq_f32(vaddq_f32(v60, v59), *a5);
      v90[0] = vsubq_f32(v90[0], *a6);
      v90[1] = v65;
      v65.n128_u32[0] = v36->i32[0];
      v65.n128_u32[1] = *v41;
      v65.n128_u64[0] = vmul_f32(v23, vsub_f32(v65.n128_u64[0], *a3->f32));
      v66 = v65.n128_f32[1];
      if (v65.n128_f32[0] > v65.n128_f32[1])
      {
        goto LABEL_22;
      }

      v67.i32[0] = v37->i32[0];
      v67.i32[1] = *v38;
      v68 = vmul_f32(v23, vsub_f32(v67, *a3->f32));
      if (v68.f32[1] > v68.f32[0])
      {
        goto LABEL_22;
      }

      if (v68.f32[1] > v65.n128_f32[0])
      {
        v65.n128_f32[0] = v68.f32[1];
      }

      if (v65.n128_f32[1] >= v68.f32[0])
      {
        v66 = v68.f32[0];
      }

      v69 = a3->f32[2];
      v70 = v14 * (*v43 - v69);
      if (v65.n128_f32[0] <= v70 && (v71 = v14 * (*v42 - v69), v71 <= v66))
      {
        if (v71 > v65.n128_f32[0])
        {
          v65.n128_f32[0] = v71;
        }

        if (v70 < v66)
        {
          v66 = v70;
        }

        v53 = v66 > 0.0 && v65.n128_f32[0] < v19;
        if ((v47 & 0x80000000) == 0 && v53)
        {
          v73 = a8;
          v74 = a6;
          v75 = a5;
          v76 = a2;
          v77 = v32;
          v78 = v37;
          (*(*a2 + 16))(a2, (*(v35 + 3) >> 21), *(v35 + 3) & 0x1FFFFF, v65);
          v38 = v82;
          v37 = v78;
          v36 = v84;
          v32 = v77;
          v34 = v83;
          result = v85;
          v31 = v86;
          v23 = v87;
          v19 = v88;
          a2 = v76;
          v40 = v80;
          v39 = v81;
          a3 = v89;
          a5 = v75;
          a6 = v74;
          v43 = &v90[v14 >= 0.0].f32[2];
          a8 = v73;
          v42 = &v90[v14 < 0.0].f32[2];
          v41 = v79;
LABEL_47:
          v35 += 8;
          ++v8;
          goto LABEL_48;
        }
      }

      else
      {
LABEL_22:
        v53 = 0;
      }

      if (v53 || (v47 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      v54 = *(v35 + 3);
      v35 -= 8 * v54;
      v8 -= v54;
LABEL_48:
      ++v17;
      if (v8 >= a8)
      {
        goto LABEL_51;
      }
    }
  }

  v17 = 0;
LABEL_51:
  if (maxIterations < v17)
  {
    maxIterations = v17;
  }

  return result;
}

float32x4_t *btQuantizedBvh::reportRayOverlappingNodex(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, __n128 a12)
{
  v14 = 0uLL;
  v13 = 0uLL;
  return btQuantizedBvh::reportBoxCastOverlappingNodex(a1, a2, a3, a4, &v14, &v13, a5, a6, a7, a8, a9, a10, a11, a12);
}

float32x4_t *btQuantizedBvh::reportBoxCastOverlappingNodex(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, double a7, double a8, double a9, double a10, double a11, double a12, __n128 a13, __n128 a14)
{
  if (a1[4].i8[8] == 1)
  {
    return btQuantizedBvh::walkStacklessQuantizedTreeAgainstRay(a1, a2, a3, a4, a5, a6, 0, a1[4].u32[1]);
  }

  else
  {
    return btQuantizedBvh::walkStacklessTreeAgainstRay(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t btQuantizedBvh::serialize(btQuantizedBvh *this, btQuantizedBvh *a2, unsigned int a3, int a4)
{
  *(this + 62) = *(this + 55);
  btQuantizedBvh::btQuantizedBvh(a2);
  v7 = *(this + 17);
  if (a4)
  {
    *(a2 + 17) = bswap32(v7);
    v8 = a2 + 19;
    v9 = this + 19;
    v10 = 4;
    do
    {
      *(v8 - 3) = *v9;
      *(v8 - 2) = *(v9 - 1);
      *(v8 - 1) = *(v9 - 2);
      *v8 = *(v9 - 3);
      v8 += 4;
      v9 += 4;
      --v10;
    }

    while (v10);
    v11 = a2 + 35;
    v12 = this + 35;
    v13 = 4;
    do
    {
      *(v11 - 3) = *v12;
      *(v11 - 2) = *(v12 - 1);
      *(v11 - 1) = *(v12 - 2);
      *v11 = *(v12 - 3);
      v11 += 4;
      v12 += 4;
      --v13;
    }

    while (v13);
    v14 = a2 + 51;
    v15 = this + 51;
    v16 = 4;
    do
    {
      *(v14 - 3) = *v15;
      *(v14 - 2) = *(v15 - 1);
      *(v14 - 1) = *(v15 - 2);
      *v14 = *(v15 - 3);
      v14 += 4;
      v15 += 4;
      --v16;
    }

    while (v16);
    *(a2 + 52) = bswap32(*(this + 52));
    v17 = bswap32(*(this + 62));
  }

  else
  {
    *(a2 + 17) = v7;
    *(a2 + 1) = *(this + 1);
    *(a2 + 2) = *(this + 2);
    *(a2 + 3) = *(this + 3);
    *(a2 + 52) = *(this + 52);
    v17 = *(this + 62);
  }

  *(a2 + 62) = v17;
  v18 = *(this + 72);
  *(a2 + 72) = v18;
  v19 = a2 + 256;
  v20 = *(this + 17);
  v21 = v20;
  if (v18 == 1)
  {
    v23 = a2 + 192;
    v22 = *(a2 + 24);
    if (v22 && *(a2 + 200) == 1)
    {
      btAlignedFreeInternal(v22);
    }

    v24 = a2 + 180;
    v25 = a2 + 200;
    v26 = a2 + 184;
    *(a2 + 24) = v19;
    if (a4)
    {
      if (v20 >= 1)
      {
        v27 = (a2 + 268);
        v28 = (*(this + 24) + 6);
        do
        {
          *(v27 - 6) = bswap32(*(v28 - 3)) >> 16;
          *(v27 - 5) = bswap32(*(v28 - 2)) >> 16;
          *(v27 - 4) = bswap32(*(v28 - 1)) >> 16;
          *(v27 - 3) = bswap32(*v28) >> 16;
          *(v27 - 2) = bswap32(v28[1]) >> 16;
          *(v27 - 1) = bswap32(v28[2]) >> 16;
          *v27 = bswap32(*(v28 + 3));
          v27 += 4;
          v28 += 8;
          --v20;
        }

        while (v20);
      }
    }

    else if (v20 >= 1)
    {
      v43 = (a2 + 268);
      v44 = *(this + 24) + 6;
      do
      {
        *(v43 - 6) = *(v44 - 6);
        *(v43 - 5) = *(v44 - 4);
        *(v43 - 4) = *(v44 - 2);
        *(v43 - 3) = *v44;
        *(v43 - 2) = *(v44 + 2);
        *(v43 - 1) = *(v44 + 4);
        *v43 = *(v44 + 6);
        v43 += 4;
        v44 += 16;
        --v20;
      }

      while (v20);
    }

    v45 = 16 * v21;
    goto LABEL_42;
  }

  v23 = a2 + 128;
  v29 = *(a2 + 16);
  if (v29 && *(a2 + 136) == 1)
  {
    btAlignedFreeInternal(v29);
  }

  *(a2 + 29) = v20;
  v24 = a2 + 116;
  *(a2 + 136) = 0;
  v25 = a2 + 136;
  *(a2 + 30) = v20;
  v26 = a2 + 120;
  *(a2 + 16) = v19;
  if ((a4 & 1) == 0)
  {
    if (v20 >= 1)
    {
      v46 = 0;
      v47 = *(this + 16);
      v34 = (a2 + 256);
      do
      {
        *&v34[v46 / 8] = *(v47 + v46);
        *(*v23 + v46 + 16) = *(*(this + 16) + v46 + 16);
        v47 = *(this + 16);
        v34 = *v23;
        v48 = *v23 + v46;
        *(v48 + 32) = *(v47 + v46 + 32);
        *(v48 + 40) = *(v47 + v46 + 40);
        v46 += 64;
      }

      while (v20 << 6 != v46);
      goto LABEL_40;
    }

LABEL_39:
    v34 = (a2 + 256);
    goto LABEL_40;
  }

  if (v20 < 1)
  {
    goto LABEL_39;
  }

  v30 = 0;
  v31 = *(this + 16);
  v32 = 3;
  v33 = 19;
  v34 = (a2 + 256);
  do
  {
    v35 = v34 + v32;
    v36 = (v31 + v32);
    v37 = 4;
    do
    {
      *(v35 - 3) = *v36;
      *(v35 - 2) = *(v36 - 1);
      *(v35 - 1) = *(v36 - 2);
      *v35 = *(v36 - 3);
      v35 += 4;
      v36 += 4;
      --v37;
    }

    while (v37);
    v38 = (*v23 + v33);
    v39 = (*(this + 16) + v33);
    v40 = 4;
    do
    {
      *(v38 - 3) = *v39;
      *(v38 - 2) = *(v39 - 1);
      *(v38 - 1) = *(v39 - 2);
      *v38 = *(v39 - 3);
      v38 += 4;
      v39 += 4;
      --v40;
    }

    while (v40);
    v31 = *(this + 16);
    v41 = (v31 + (v30 << 6));
    v34 = *v23;
    v42 = (*v23 + (v30 << 6));
    v42[4] = vrev32_s8(v41[4]);
    v42[5].i32[0] = bswap32(v41[5].u32[0]);
    ++v30;
    v32 += 64;
    v33 += 64;
  }

  while (v30 != v20);
LABEL_40:
  v45 = v20 << 6;
  if (*v25 == 1)
  {
    btAlignedFreeInternal(v34);
  }

LABEL_42:
  *v25 = 0;
  *v23 = 0;
  *v24 = 0;
  *v26 = 0;
  v49 = &v19[v45];
  v50 = *(a2 + 29);
  if (v50 && *(a2 + 240) == 1)
  {
    btAlignedFreeInternal(v50);
  }

  *(a2 + 29) = v49;
  v51 = *(this + 62);
  if (a4)
  {
    if (v51 >= 1)
    {
      v52 = (a2 + v45 + 268);
      v53 = (*(this + 29) + 6);
      do
      {
        v52[-2].i16[2] = bswap32(*(v53 - 3)) >> 16;
        v52[-2].i16[3] = bswap32(*(v53 - 2)) >> 16;
        v52[-1].i16[0] = bswap32(*(v53 - 1)) >> 16;
        v52[-1].i16[1] = bswap32(*v53) >> 16;
        v52[-1].i16[2] = bswap32(v53[1]) >> 16;
        v52[-1].i16[3] = bswap32(v53[2]) >> 16;
        *v52 = vrev32_s8(*(v53 + 3));
        v52 += 4;
        v53 += 16;
        --v51;
      }

      while (v51);
    }
  }

  else if (v51 >= 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = *(this + 29);
    v57 = a2 + v45;
    do
    {
      v58 = &v57[v54];
      *(v58 + 128) = *(v56 + v54);
      *(v58 + 129) = *(v56 + v54 + 2);
      *(v58 + 130) = *(v56 + v54 + 4);
      *(v58 + 131) = *(v56 + v54 + 6);
      *(v58 + 132) = *(v56 + v54 + 8);
      *(v58 + 133) = *(v56 + v54 + 10);
      *&v57[v54 + 268] = *(v56 + v54 + 12);
      *(v58 + 69) = 0;
      *(v58 + 35) = 0;
      ++v55;
      v54 += 32;
    }

    while (v55 < *(this + 62));
  }

  *(a2 + 240) = 0;
  *(a2 + 29) = 0;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  *a2 = 0;
  return 1;
}

double btQuantizedBvh::deSerializeFloat(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 16; i += 4)
  {
    *(a1 + 32 + i) = *(a2 + 16 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a1 + 16 + j) = *(a2 + j);
  }

  for (k = 0; k != 16; k += 4)
  {
    LODWORD(v7) = *(a2 + 32 + k);
    *(a1 + 48 + k) = v7;
  }

  v8 = *(a2 + 52);
  *(a1 + 68) = *(a2 + 48);
  *(a1 + 72) = v8 != 0;
  v9 = *(a2 + 56);
  v10 = *(a1 + 116);
  if (v10 < v9)
  {
    v11 = v10;
    if (*(a1 + 120) < v9)
    {
      if (v9)
      {
        v12 = btAlignedAllocInternal(v9 << 6, 16);
        v10 = *(a1 + 116);
      }

      else
      {
        v12 = 0;
      }

      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10 << 6;
        do
        {
          v15 = (v12 + v13);
          v16 = (*(a1 + 128) + v13);
          *v15 = *v16;
          v15[1] = v16[1];
          v17 = v16[3];
          v15[2] = v16[2];
          v15[3] = v17;
          v13 += 64;
        }

        while (v14 != v13);
      }

      v18 = *(a1 + 128);
      if (v18 && *(a1 + 136) == 1)
      {
        btAlignedFreeInternal(v18);
      }

      *(a1 + 136) = 1;
      *(a1 + 128) = v12;
      *(a1 + 120) = v9;
    }

    v19 = v11 << 6;
    v20 = v9 - v11;
    v7 = 0uLL;
    do
    {
      v21 = (*(a1 + 128) + v19);
      v21[2] = 0uLL;
      v21[3] = 0uLL;
      *v21 = 0uLL;
      v21[1] = 0uLL;
      v19 += 64;
      --v20;
    }

    while (v20);
  }

  *(a1 + 116) = v9;
  if (v9 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = *(a2 + 64);
    v25 = *(a1 + 128);
    do
    {
      v26 = v25 + v22;
      for (m = 16; m != 32; m += 4)
      {
        *(v26 + m) = *(v24 + m);
      }

      v28 = 0;
      v29 = *(a1 + 128) + v22;
      do
      {
        *(v29 + v28) = *(v24 + v28);
        v28 += 4;
      }

      while (v28 != 16);
      v25 = *(a1 + 128);
      v30 = v25 + (v23 << 6);
      *&v7 = *(v24 + 32);
      *(v30 + 32) = v7;
      *(v30 + 40) = *(v24 + 40);
      ++v23;
      v24 += 48;
      v22 += 64;
    }

    while (v23 != v9);
  }

  v31 = *(a2 + 60);
  v32 = *(a1 + 180);
  if (v32 < v31)
  {
    v33 = v32;
    if (*(a1 + 184) < v31)
    {
      if (v31)
      {
        v34 = btAlignedAllocInternal(16 * v31, 16);
        v32 = *(a1 + 180);
      }

      else
      {
        v34 = 0;
      }

      if (v32 >= 1)
      {
        v35 = 0;
        v36 = 16 * v32;
        do
        {
          v7 = *(*(a1 + 192) + v35);
          *(v34 + v35) = v7;
          v35 += 16;
        }

        while (v36 != v35);
      }

      v37 = *(a1 + 192);
      if (v37 && *(a1 + 200) == 1)
      {
        btAlignedFreeInternal(v37);
      }

      *(a1 + 200) = 1;
      *(a1 + 192) = v34;
      *(a1 + 184) = v31;
    }

    v38 = 16 * v33;
    v39 = v31 - v33;
    do
    {
      v40 = (*(a1 + 192) + v38);
      *v40 = 0;
      v40[1] = 0;
      v38 += 16;
      --v39;
    }

    while (v39);
  }

  *(a1 + 180) = v31;
  if (v31 >= 1)
  {
    v41 = *(a2 + 72) + 6;
    v42 = *(a1 + 192) + 6;
    do
    {
      *(v42 + 6) = *(v41 + 6);
      *v42 = *v41;
      *(v42 + 2) = *(v41 + 2);
      *(v42 + 4) = *(v41 + 4);
      *(v42 - 6) = *(v41 - 6);
      *(v42 - 4) = *(v41 - 4);
      *(v42 - 2) = *(v41 - 2);
      v41 += 16;
      v42 += 16;
      --v31;
    }

    while (v31);
  }

  v43 = *(a2 + 92);
  *(a1 + 208) = *(a2 + 88);
  v44 = *(a1 + 220);
  if (v44 < v43 && *(a1 + 224) < v43)
  {
    if (v43)
    {
      v45 = btAlignedAllocInternal(32 * v43, 16);
      v44 = *(a1 + 220);
    }

    else
    {
      v45 = 0;
    }

    if (v44 >= 1)
    {
      v46 = 0;
      v47 = 32 * v44;
      do
      {
        v48 = (v45 + v46);
        v49 = (*(a1 + 232) + v46);
        v7 = *v49;
        v50 = v49[1];
        *v48 = *v49;
        v48[1] = v50;
        v46 += 32;
      }

      while (v47 != v46);
    }

    v51 = *(a1 + 232);
    if (v51 && *(a1 + 240) == 1)
    {
      btAlignedFreeInternal(v51);
    }

    *(a1 + 240) = 1;
    *(a1 + 232) = v45;
    *(a1 + 224) = v43;
  }

  *(a1 + 220) = v43;
  if (v43 >= 1)
  {
    v52 = *(a1 + 232) + 6;
    v53 = (*(a2 + 80) + 10);
    do
    {
      *v52 = v53[2];
      *(v52 + 2) = v53[3];
      *(v52 + 4) = v53[4];
      *(v52 - 6) = *(v53 - 1);
      *(v52 - 4) = *v53;
      *(v52 - 2) = v53[1];
      *&v7 = *(v53 - 5);
      *(v52 + 6) = v7;
      v52 += 32;
      v53 += 10;
      --v43;
    }

    while (v43);
  }

  return *&v7;
}

double btQuantizedBvh::deSerializeDouble(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v5 = *(a2 + 32 + 8 * i);
    *(a1 + 32 + 4 * i) = v5;
  }

  for (j = 0; j != 4; ++j)
  {
    v7 = *(a2 + 8 * j);
    *(a1 + 16 + 4 * j) = v7;
  }

  for (k = 0; k != 4; ++k)
  {
    *&v9 = *(a2 + 64 + 8 * k);
    *&v9 = *&v9;
    *(a1 + 48 + 4 * k) = v9;
  }

  v10 = *(a2 + 100);
  *(a1 + 68) = *(a2 + 96);
  *(a1 + 72) = v10 != 0;
  v11 = *(a2 + 104);
  v12 = *(a1 + 116);
  if (v12 < v11)
  {
    v13 = v12;
    if (*(a1 + 120) < v11)
    {
      if (v11)
      {
        v14 = btAlignedAllocInternal(v11 << 6, 16);
        v12 = *(a1 + 116);
      }

      else
      {
        v14 = 0;
      }

      if (v12 >= 1)
      {
        v15 = 0;
        v16 = v12 << 6;
        do
        {
          v17 = (v14 + v15);
          v18 = (*(a1 + 128) + v15);
          *v17 = *v18;
          v17[1] = v18[1];
          v19 = v18[3];
          v17[2] = v18[2];
          v17[3] = v19;
          v15 += 64;
        }

        while (v16 != v15);
      }

      v20 = *(a1 + 128);
      if (v20 && *(a1 + 136) == 1)
      {
        btAlignedFreeInternal(v20);
      }

      *(a1 + 136) = 1;
      *(a1 + 128) = v14;
      *(a1 + 120) = v11;
    }

    v21 = v13 << 6;
    v22 = v11 - v13;
    v9 = 0uLL;
    do
    {
      v23 = (*(a1 + 128) + v21);
      v23[2] = 0uLL;
      v23[3] = 0uLL;
      *v23 = 0uLL;
      v23[1] = 0uLL;
      v21 += 64;
      --v22;
    }

    while (v22);
  }

  *(a1 + 116) = v11;
  if (v11 >= 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = *(a2 + 112);
    v27 = *(a1 + 128);
    do
    {
      v28 = v27 + v24;
      for (m = 4; m != 8; ++m)
      {
        v30 = *(v26 + 8 * m);
        *(v28 + 4 * m) = v30;
      }

      v31 = 0;
      v32 = *(a1 + 128) + v24;
      do
      {
        v33 = *(v26 + 8 * v31);
        *(v32 + 4 * v31++) = v33;
      }

      while (v31 != 4);
      v27 = *(a1 + 128);
      v34 = v27 + (v25 << 6);
      *&v9 = *(v26 + 64);
      *(v34 + 32) = v9;
      *(v34 + 40) = *(v26 + 72);
      ++v25;
      v26 += 80;
      v24 += 64;
    }

    while (v25 != v11);
  }

  v35 = *(a2 + 108);
  v36 = *(a1 + 180);
  if (v36 < v35)
  {
    v37 = v36;
    if (*(a1 + 184) < v35)
    {
      if (v35)
      {
        v38 = btAlignedAllocInternal(16 * v35, 16);
        v36 = *(a1 + 180);
      }

      else
      {
        v38 = 0;
      }

      if (v36 >= 1)
      {
        v39 = 0;
        v40 = 16 * v36;
        do
        {
          v9 = *(*(a1 + 192) + v39);
          *(v38 + v39) = v9;
          v39 += 16;
        }

        while (v40 != v39);
      }

      v41 = *(a1 + 192);
      if (v41 && *(a1 + 200) == 1)
      {
        btAlignedFreeInternal(v41);
      }

      *(a1 + 200) = 1;
      *(a1 + 192) = v38;
      *(a1 + 184) = v35;
    }

    v42 = 16 * v37;
    v43 = v35 - v37;
    do
    {
      v44 = (*(a1 + 192) + v42);
      *v44 = 0;
      v44[1] = 0;
      v42 += 16;
      --v43;
    }

    while (v43);
  }

  *(a1 + 180) = v35;
  if (v35 >= 1)
  {
    v45 = *(a2 + 120) + 6;
    v46 = *(a1 + 192) + 6;
    do
    {
      *(v46 + 6) = *(v45 + 6);
      *v46 = *v45;
      *(v46 + 2) = *(v45 + 2);
      *(v46 + 4) = *(v45 + 4);
      *(v46 - 6) = *(v45 - 6);
      *(v46 - 4) = *(v45 - 4);
      *(v46 - 2) = *(v45 - 2);
      v45 += 16;
      v46 += 16;
      --v35;
    }

    while (v35);
  }

  v47 = *(a2 + 132);
  *(a1 + 208) = *(a2 + 128);
  v48 = *(a1 + 220);
  if (v48 < v47 && *(a1 + 224) < v47)
  {
    if (v47)
    {
      v49 = btAlignedAllocInternal(32 * v47, 16);
      v48 = *(a1 + 220);
    }

    else
    {
      v49 = 0;
    }

    if (v48 >= 1)
    {
      v50 = 0;
      v51 = 32 * v48;
      do
      {
        v52 = (v49 + v50);
        v53 = (*(a1 + 232) + v50);
        v9 = *v53;
        v54 = v53[1];
        *v52 = *v53;
        v52[1] = v54;
        v50 += 32;
      }

      while (v51 != v50);
    }

    v55 = *(a1 + 232);
    if (v55 && *(a1 + 240) == 1)
    {
      btAlignedFreeInternal(v55);
    }

    *(a1 + 240) = 1;
    *(a1 + 232) = v49;
    *(a1 + 224) = v47;
  }

  *(a1 + 220) = v47;
  if (v47 >= 1)
  {
    v56 = *(a1 + 232) + 6;
    v57 = (*(a2 + 136) + 10);
    do
    {
      *v56 = v57[2];
      *(v56 + 2) = v57[3];
      *(v56 + 4) = v57[4];
      *(v56 - 6) = *(v57 - 1);
      *(v56 - 4) = *v57;
      *(v56 - 2) = v57[1];
      *&v9 = *(v57 - 5);
      *(v56 + 6) = v9;
      v56 += 32;
      v57 += 10;
      --v47;
    }

    while (v47);
  }

  return *&v9;
}

const char *btQuantizedBvh::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 16 + i) = *(a1 + 32 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + j) = *(a1 + 16 + j);
  }

  for (k = 0; k != 16; k += 4)
  {
    *(a2 + 32 + k) = *(a1 + 48 + k);
  }

  v9 = *(a1 + 72);
  *(a2 + 48) = *(a1 + 68);
  *(a2 + 52) = v9;
  v10 = *(a1 + 116);
  *(a2 + 56) = v10;
  if (v10)
  {
    v11 = (*(*a3 + 56))(a3, *(a1 + 128));
    *(a2 + 64) = v11;
    if (v11)
    {
      v12 = *(a1 + 116);
      v13 = (*(*a3 + 32))(a3, 48, v12);
      v14 = *(a1 + 128);
      if (v12 >= 1)
      {
        v15 = 0;
        v16 = *(v13 + 8);
        v17 = *(a1 + 128);
        do
        {
          v18 = v14 + (v15 << 6);
          for (m = 16; m != 32; m += 4)
          {
            *(v16 + m) = *(v17 + m);
          }

          for (n = 0; n != 16; n += 4)
          {
            *(v16 + n) = *(v17 + n);
          }

          *(v16 + 32) = *(v18 + 32);
          *(v16 + 40) = *(v18 + 40);
          ++v15;
          v16 += 48;
          v17 += 64;
        }

        while (v15 != v12);
      }

      (*(*a3 + 40))(a3, v13, "btOptimizedBvhNodeData", 1497453121, v14);
    }
  }

  else
  {
    *(a2 + 64) = 0;
  }

  v21 = *(a1 + 180);
  *(a2 + 60) = v21;
  if (v21)
  {
    v22 = (*(*a3 + 56))(a3, *(a1 + 192));
    *(a2 + 72) = v22;
    if (v22)
    {
      v23 = *(a1 + 180);
      v24 = (*(*a3 + 32))(a3, 16, v23);
      v25 = *(a1 + 192);
      if (v23 >= 1)
      {
        v26 = *(v24 + 8) + 6;
        v27 = v25 + 6;
        do
        {
          *(v26 + 6) = *(v27 + 6);
          *v26 = *v27;
          *(v26 + 2) = *(v27 + 2);
          *(v26 + 4) = *(v27 + 4);
          *(v26 - 6) = *(v27 - 6);
          *(v26 - 4) = *(v27 - 4);
          *(v26 - 2) = *(v27 - 2);
          v26 += 16;
          v27 += 16;
          --v23;
        }

        while (v23);
      }

      (*(*a3 + 40))(a3, v24, "btQuantizedBvhNodeData", 1497453121, v25);
    }
  }

  else
  {
    *(a2 + 72) = 0;
  }

  v28 = *(a1 + 220);
  *(a2 + 88) = *(a1 + 208);
  *(a2 + 92) = v28;
  if (v28)
  {
    v29 = (*(*a3 + 56))(a3, *(a1 + 232));
    *(a2 + 80) = v29;
    if (v29)
    {
      v30 = *(a1 + 220);
      v31 = (*(*a3 + 32))(a3, 20, v30);
      v32 = *(a1 + 232);
      if (v30 >= 1)
      {
        v33 = v32 + 6;
        v34 = (*(v31 + 8) + 10);
        do
        {
          v34[2] = *v33;
          v34[3] = *(v33 + 2);
          v34[4] = *(v33 + 4);
          *(v34 - 1) = *(v33 - 6);
          *v34 = *(v33 - 4);
          v34[1] = *(v33 - 2);
          *(v34 - 5) = *(v33 + 6);
          v33 += 32;
          v34 += 10;
          --v30;
        }

        while (v30);
      }

      (*(*a3 + 40))(a3, v31, "btBvhSubtreeInfoData", 1497453121, v32);
    }
  }

  else
  {
    *(a2 + 80) = 0;
  }

  return "btQuantizedBvhFloatData";
}

uint64_t SphereTriangleDetector::SphereTriangleDetector(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *result = &unk_282DC8CE0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

uint64_t SphereTriangleDetector::getClosestPoints(float *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, int a5, float *a6)
{
  v39 = 0.0;
  v9 = a2[2];
  v10 = a2[6];
  v11 = vsubq_f32(a2[3], a2[7]);
  v12 = *a2;
  v13 = a2[1];
  v12.i32[3] = 0;
  v13.i32[3] = 0;
  v9.i32[3] = 0;
  v14 = a2[4];
  v15 = a2[5];
  v11.i32[3] = 0;
  v16 = vmlaq_laneq_f32(vmulq_laneq_f32(v12, v14, 2), v13, v15, 2);
  v14.i32[3] = 0;
  v15.i32[3] = 0;
  v17 = vmlaq_laneq_f32(v16, v9, v10, 2);
  v10.i32[3] = 0;
  v37[1] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v12, v14.f32[0]), v13, v15.f32[0]), v9, v10.f32[0]);
  v37[2] = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v12, *v14.f32, 1), v13, *v15.f32, 1), v9, *v10.f32, 1);
  v37[3] = v17;
  v38 = vaddq_f32(vaddq_f32(vmulq_n_f32(v14, v11.f32[0]), vmulq_lane_f32(v15, *v11.f32, 1)), vmulq_laneq_f32(v10, v11, 2));
  result = SphereTriangleDetector::collide(a1, &v38, &v41, &v40, &v39, a6, a1[6]);
  if (result)
  {
    v19 = a2[4];
    v20 = a2[5];
    v21 = vmulq_f32(v19, v40);
    v22 = vmulq_f32(v40, v20);
    v23 = a2[6];
    if (a5)
    {
      v24 = vmulq_f32(v40, v23);
      v24.i32[3] = 0;
      *v25.f32 = vadd_f32(vpadd_f32(*v21.i8, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
      *&v25.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
      v26 = vmulq_f32(v19, v41);
      v27 = vmulq_f32(v20, v41);
      v28 = vmulq_f32(v23, v41);
      v28.i32[3] = 0;
      *v26.f32 = vadd_f32(vpadd_f32(*v26.f32, *v27.i8), vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)));
      *&v26.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
      v29 = vmulq_n_f32(v25, v39);
      v29.i32[3] = 0;
      v36 = vaddq_f32(vaddq_f32(a2[7], v26), v29);
      v37[0] = vnegq_f32(v25);
    }

    else
    {
      v30 = a2[7];
      v31 = vmulq_f32(v40, v23);
      v31.i32[3] = 0;
      *&v32 = vadd_f32(vpadd_f32(*v21.i8, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
      *(&v32 + 1) = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
      v37[0] = v32;
      v33 = vmulq_f32(v19, v41);
      v34 = vmulq_f32(v20, v41);
      v35 = vmulq_f32(v23, v41);
      v35.i32[3] = 0;
      *v33.f32 = vadd_f32(vpadd_f32(*v33.f32, *v34.i8), vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v34, v34, 8uLL)));
      *&v33.u32[2] = vpadd_f32(vpadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL)), 0);
      v36 = vaddq_f32(v30, v33);
    }

    return (*(*a3 + 32))(a3, v37, &v36);
  }

  return result;
}

uint64_t SphereTriangleDetector::collide(SphereTriangleDetector *this, float32x4_t *a2, btVector3 *a3, btVector3 *a4, float *a5, float *a6, float a7)
{
  v12 = *(this + 2);
  v13 = v12[7].f32[3];
  if (v12[6].f32[3] == v13 && v12[6].f32[2] == v12[7].f32[2] && v12[6].f32[1] == v12[7].f32[1] && v12[6].f32[0] == v12[7].f32[0] || v12[5].f32[3] == v13 && v12[5].f32[2] == v12[7].f32[2] && v12[5].f32[1] == v12[7].f32[1] && v12[5].f32[0] == v12[7].f32[0])
  {
    return 0;
  }

  v14 = *(*(this + 1) + 48) * *(*(this + 1) + 32);
  v15 = v14 + a7;
  v16 = v12[5];
  v17 = vsubq_f32(v12[6], v16);
  v17.i32[3] = 0;
  v18 = vsubq_f32(v12[7], v16);
  v18.i32[3] = 0;
  v19 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), v17), vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), v18));
  v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v20.i32[3] = 0;
  v21 = vmulq_f32(v20, v20);
  v22 = vpadd_f32(*v21.i8, *v21.i8);
  v23 = vextq_s8(v21, v21, 8uLL);
  v23.f32[0] = vadd_f32(v22, *v23.f32).f32[0];
  if (v23.f32[0] >= 1.4211e-14)
  {
    v24 = vmulq_n_f32(v20, 1.0 / sqrtf(v23.f32[0]));
  }

  else
  {
    v24 = xmmword_21C27F910;
  }

  v25 = *a2;
  v26 = vsubq_f32(*a2, v16);
  v26.i32[3] = 0;
  v27 = vmulq_f32(v24, v26);
  *v23.f32 = vpadd_f32(*v27.i8, *v27.i8);
  v28 = vextq_s8(v27, v27, 8uLL);
  *v28.f32 = vadd_f32(*v23.f32, *v28.f32);
  v23.f32[0] = -v28.f32[0];
  if (v28.f32[0] >= 0.0)
  {
    v23.f32[0] = v28.f32[0];
  }

  if (v23.f32[0] >= v15)
  {
    return 0;
  }

  v54 = v23.f32[0];
  v56 = *a2;
  v23.i64[0] = 0;
  v57 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v23, v28), 0), vnegq_f32(v24), v24);
  v58 = v25;
  v53 = v57;
  if (SphereTriangleDetector::pointInTriangle(this, v12 + 5, &v57, &v58))
  {
    v29 = v53;
    v30 = v56;
    v31 = vsubq_f32(v56, vmulq_n_f32(v53, v54));
    v31.i32[3] = 0;
    v32 = v15 * v15;
  }

  else
  {
    if ((*(v12->i64[0] + 200))(v12) < 1)
    {
      return 0;
    }

    v34 = 0;
    v35 = 0;
    v33.f32[0] = v15 * v15;
    v55 = v33;
    do
    {
      (*(**(this + 2) + 208))(*(this + 2), v35, &v58, &v57);
      v36 = vsubq_f32(*a2, v58);
      v36.i32[3] = 0;
      v37 = vsubq_f32(v57, v58);
      v37.i32[3] = 0;
      v38 = vmulq_f32(v36, v37);
      v39 = vadd_f32(vpadd_f32(*v38.i8, *v38.i8), *&vextq_s8(v38, v38, 8uLL));
      v40 = 0.0;
      if (v39.f32[0] > 0.0)
      {
        v41 = vmulq_f32(v37, v37);
        v42 = vadd_f32(*&vextq_s8(v41, v41, 8uLL), vpadd_f32(*v41.i8, *v41.i8));
        if (vcgt_f32(v42, v39).u32[0])
        {
          LODWORD(v40) = vdiv_f32(v39, v42).u32[0];
          v43 = vmulq_n_f32(v37, v40);
          v43.i32[3] = 0;
          v36 = vsubq_f32(v36, v43);
        }

        else
        {
          v36 = vsubq_f32(v36, v37);
          v40 = 1.0;
        }
      }

      v44 = vmulq_n_f32(v37, v40);
      v44.i32[3] = 0;
      v45 = vaddq_f32(v58, v44);
      v46 = vmulq_f32(v36, v36);
      *v44.f32 = vpadd_f32(*v46.i8, *v46.i8);
      v47 = vextq_s8(v46, v46, 8uLL);
      *v47.f32 = vadd_f32(*v44.f32, *v47.f32);
      v56 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v55, v47), 0), v45, v56);
      v34 |= v47.f32[0] < v55.f32[0];
      v35 = (v35 + 1);
    }

    while (v35 < (*(**(this + 2) + 200))(*(this + 2)));
    if ((v34 & 1) == 0)
    {
      return 0;
    }

    v30 = *a2;
    v29 = v53;
    v32 = v55.f32[0];
    v31 = v56;
  }

  v48 = vsubq_f32(v30, v31);
  v48.i32[3] = 0;
  v49 = vmulq_f32(v48, v48);
  v50 = vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL)).f32[0];
  if (v50 >= v32)
  {
    return 0;
  }

  if (v50 > 0.00000011921)
  {
    v52 = sqrtf(v50);
    v29 = vmulq_n_f32(v48, 1.0 / v52);
    v14 = v14 - v52;
  }

  *a4 = v29;
  *a3 = v31;
  *a5 = -v14;
  return 1;
}

uint64_t SphereTriangleDetector::pointInTriangle(SphereTriangleDetector *this, float32x4_t *a2, int8x16_t *a3, float32x4_t *a4)
{
  v4 = a2[1];
  v5 = vsubq_f32(v4, *a2);
  v5.i32[3] = 0;
  v6 = a2[2];
  v7 = vsubq_f32(v6, v4);
  v7.i32[3] = 0;
  v8 = vsubq_f32(*a2, v6);
  v8.i32[3] = 0;
  v9 = vsubq_f32(*a4, *a2);
  v9.i32[3] = 0;
  v10 = vsubq_f32(*a4, v4);
  v10.i32[3] = 0;
  v11 = vsubq_f32(*a4, v6);
  v11.i32[3] = 0;
  v12 = vextq_s8(vextq_s8(*a3, *a3, 0xCuLL), *a3, 8uLL);
  v13 = vsubq_f32(vmulq_f32(v12, v5), vmulq_f32(*a3, vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL)));
  v14 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
  v14.i32[3] = 0;
  v15 = vsubq_f32(vmulq_f32(v12, v7), vmulq_f32(*a3, vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL)));
  v16 = vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL);
  v16.i32[3] = 0;
  v17 = vsubq_f32(vmulq_f32(v12, v8), vmulq_f32(*a3, vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v18.i32[3] = 0;
  v19 = vmulq_f32(v9, v14);
  v20 = vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0];
  v21 = vmulq_f32(v10, v16);
  LODWORD(v22) = vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL)).u32[0];
  v23 = vmulq_f32(v11, v18);
  LODWORD(v24) = vadd_f32(vpadd_f32(*v23.i8, *v23.i8), *&vextq_s8(v23, v23, 8uLL)).u32[0];
  if (v20 > 0.0 && v22 > 0.0 && v24 > 0.0)
  {
    return 1;
  }

  v27 = v22 <= 0.0 && v20 <= 0.0;
  return v27 & (v24 <= 0.0);
}

void *btActivatingCollisionAlgorithm::btActivatingCollisionAlgorithm(void *a1, uint64_t *a2)
{
  result = btCollisionAlgorithm::btCollisionAlgorithm(a1, a2);
  *result = &unk_282DC8D08;
  return result;
}

uint64_t btBoxBoxCollisionAlgorithm::btBoxBoxCollisionAlgorithm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = btActivatingCollisionAlgorithm::btActivatingCollisionAlgorithm(a1, a3);
  *v9 = &unk_282DC8D40;
  *(v9 + 16) = 0;
  v9[3] = a2;
  if (!a2 && (*(**(a1 + 8) + 48))(*(a1 + 8), *(a4 + 16), *(a5 + 16)))
  {
    *(a1 + 24) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a4 + 16), *(a5 + 16));
    *(a1 + 16) = 1;
  }

  return a1;
}

void btBoxBoxCollisionAlgorithm::~btBoxBoxCollisionAlgorithm(btBoxBoxCollisionAlgorithm *this)
{
  *this = &unk_282DC8D40;
  if (*(this + 16) == 1 && *(this + 3))
  {
    (*(**(this + 1) + 32))(*(this + 1));
  }

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btBoxBoxCollisionAlgorithm::~btBoxBoxCollisionAlgorithm(this);

  JUMPOUT(0x21CF07610);
}

btPersistentManifold *btBoxBoxCollisionAlgorithm::processCollision(btPersistentManifold *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *result->var1[0].var1.var0.var0;
  if (v5)
  {
    v7 = result;
    v8 = *(a2 + 8);
    v9 = *(a3 + 8);
    a5[1] = v5;
    v20 = 1566444395;
    v10 = *(a2 + 24);
    v11 = v10[1];
    v19[0] = *v10;
    v19[1] = v11;
    v12 = v10[3];
    v19[2] = v10[2];
    v19[3] = v12;
    v13 = *(a3 + 24);
    v19[4] = *v13;
    v19[5] = v13[1];
    v19[6] = v13[2];
    v19[7] = v13[3];
    btBoxBoxDetector::btBoxBoxDetector(v18, v8, v9);
    result = btBoxBoxDetector::getClosestPoints(v18, v19, a5);
    if (LOBYTE(v7->var1[0].var0.var0.var0[2]) == 1)
    {
      result = a5[1];
      if (LODWORD(result->var6))
      {
        var3 = result->var3;
        v15 = *(a5[2] + 16);
        v16 = var3 == v15;
        if (var3 == v15)
        {
          v17 = *(a5[3] + 16);
        }

        else
        {
          v17 = *(a5[2] + 16);
        }

        if (!v16)
        {
          v15 = *(a5[3] + 16);
        }

        return btPersistentManifold::refreshContactPoints(result, (v15 + 16), (v17 + 16));
      }
    }
  }

  return result;
}

void btBoxBoxCollisionAlgorithm::getAllContactManifolds(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 && *(a1 + 16) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = btAlignedAllocInternal(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            btAlignedFreeInternal(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(a1 + 24);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

void *btBoxBoxDetector::btBoxBoxDetector(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_282DC8D78;
  result[1] = a2;
  result[2] = a3;
  return result;
}

float *dLineClosestApproach(float *result, const btVector3 *a2, const btVector3 *a3, const btVector3 *a4, float *a5, float *a6)
{
  v6 = a2->var0.var0[1];
  v7 = a4->var0.var0[1];
  v8 = a2->var0.var0[2];
  v9 = a4->var0.var0[2];
  v10 = ((v6 * v7) + (a2->var0.var0[0] * a4->var0.var0[0])) + (v8 * v9);
  v11 = 1.0 - (v10 * v10);
  v12 = 0.0;
  v13 = 0.0;
  if (v11 > 0.0001)
  {
    v14 = a3->var0.var0[2] - result[2];
    v15 = a3->var0.var0[0] - *result;
    v16 = a3->var0.var0[1] - result[1];
    v17 = ((v7 * v16) + (a4->var0.var0[0] * v15)) + (v9 * v14);
    v18 = ((v6 * v16) + (a2->var0.var0[0] * v15)) + (v8 * v14);
    v12 = (1.0 / v11) * (v18 - (v10 * v17));
    v13 = (1.0 / v11) * -(v17 - (v10 * v18));
  }

  *a5 = v12;
  *a6 = v13;
  return result;
}

void cullPoints2(int a1, float32x2_t *a2, int a3, int a4, int *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = (a1 - 1);
  if (a1 == 1)
  {
    v10 = *a2;
  }

  else if (a1 == 2)
  {
    v10 = vmul_f32(vadd_f32(*a2, a2[1]), 0x3F0000003F000000);
  }

  else
  {
    if (a1 < 2)
    {
      v12 = 0;
      v13 = 0.0;
    }

    else
    {
      v11 = a2 + 1;
      v12 = 0;
      v13 = 0.0;
      do
      {
        v14 = v11[-1];
        v15 = vmuls_lane_f32(-COERCE_FLOAT(*v11), v14, 1) + (v14.f32[0] * COERCE_FLOAT(HIDWORD(*v11)));
        v13 = v13 + v15;
        v12 = vmla_n_f32(v12, vadd_f32(v14, *v11++), v15);
        --v9;
      }

      while (v9);
    }

    v16 = a2[a1 - 1];
    v17 = vmuls_lane_f32(-COERCE_FLOAT(*a2), v16, 1) + (v16.f32[0] * COERCE_FLOAT(HIDWORD(*a2)));
    v18 = v13 + v17;
    if (fabsf(v18) <= 0.00000011921)
    {
      v19 = 1.0e18;
    }

    else
    {
      v19 = 1.0 / (v18 * 3.0);
    }

    if (a1 <= 0)
    {
      v24 = 0;
      goto LABEL_18;
    }

    v10 = vmul_n_f32(vmla_n_f32(v12, vadd_f32(v16, *a2), v17), v19);
  }

  v20 = v10;
  v21 = a2 + 1;
  v22 = v34;
  v23 = a1;
  do
  {
    *v22++ = atan2f(*v21 - v20.f32[1], *(v21 - 1) - v20.f32[0]);
    v21 += 2;
    --v23;
  }

  while (v23);
  memset_pattern16(__b, &unk_21C2A3FF0, 4 * a1);
  v24 = 1;
LABEL_18:
  __b[a4] = 0;
  *a5 = a4;
  if (a3 >= 2)
  {
    v25 = v34[a4];
    v26 = 1;
    do
    {
      a5[1] = a4;
      ++a5;
      v27 = v25 + (v26 * (6.2832 / a3));
      if (v27 > 3.1416)
      {
        v27 = v27 + -6.2832;
      }

      v28 = a4;
      if (v24)
      {
        v29 = 0;
        v30 = a4;
        v31 = 1000000000.0;
        do
        {
          if (__b[v29])
          {
            v32 = vabds_f32(v34[v29], v27);
            if (v32 > 3.1416)
            {
              v32 = 6.2832 - v32;
            }

            if (v32 < v31)
            {
              *a5 = v29;
              v30 = v29;
              v31 = v32;
            }
          }

          ++v29;
        }

        while (a1 != v29);
        v28 = v30;
      }

      __b[v28] = 0;
      ++v26;
    }

    while (v26 != a3);
  }
}

uint64_t dBoxBox2(float32x4_t *a1, float *a2, float32x2_t *a3, float32x4_t *a4, float *a5, float32x2_t *a6, float32x4_t *a7, float *a8, unsigned int *a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v304 = *MEMORY[0x277D85DE8];
  _Q23 = vsubq_f32(*a4, *a1);
  v14 = *a2;
  v15 = a2[4];
  v16 = a2[5];
  v17 = a2[1];
  _S5 = a2[8];
  _S9 = a2[9];
  v20 = a2 + 2;
  v21 = a2[2];
  __asm { FMLA            S21, S5, V23.S[2] }

  v27 = a2[6];
  _S28 = a2[10];
  v29 = vmul_f32(*a3, 0x3F0000003F000000);
  v302 = v29;
  v30 = a3[1].f32[0] * 0.5;
  v303 = v30;
  _D4 = vmul_f32(*a6, 0x3F0000003F000000);
  v300 = _D4;
  v32 = a6[1].f32[0] * 0.5;
  v301 = v32;
  v33 = *a5;
  v35 = a5[4];
  v34 = a5[5];
  v37 = a5[8];
  v36 = a5[9];
  v38 = ((v15 * v35) + (v14 * *a5)) + (_S5 * v37);
  v39 = a5[1];
  v40 = ((v15 * v34) + (v14 * v39)) + (_S5 * v36);
  v41 = a5 + 2;
  v42 = a5[2];
  v43 = a5[6];
  v44 = a5[10];
  v45 = ((v15 * v43) + (v14 * v42)) + (_S5 * v44);
  v46 = fabsf(v38);
  _S25 = fabsf(v40);
  v48 = fabsf(v45);
  __asm { FMLA            S5, S25, V4.S[1] }

  v50 = fabsf(_S21) - (_S5 + (v32 * v48));
  if (v50 > 0.0)
  {
    return 0;
  }

  v272 = v40;
  __asm { FMLA            S7, S9, V23.S[2] }

  v277 = ((v16 * v35) + (v17 * v33)) + (_S9 * v37);
  v52 = fabsf(v277);
  v276 = ((v16 * v34) + (v17 * v39)) + (_S9 * v36);
  v53 = fabsf(v276);
  v274 = ((v16 * v43) + (v17 * v42)) + (_S9 * v44);
  v54 = fabsf(v274);
  v55 = _S21 < 0.0;
  v56 = v50 <= -3.4028e38;
  if (v50 > -3.4028e38)
  {
    v57 = 1;
  }

  else
  {
    v50 = -3.4028e38;
    v55 = 0;
    v57 = 0;
  }

  v58 = v56 ? 0 : a2;
  v59 = fabsf(_S7) - (((v29.f32[1] + (_D4.f32[0] * v52)) + (_D4.f32[1] * v53)) + (v32 * v54));
  if (v59 > 0.0)
  {
    return 0;
  }

  v266 = v17;
  v267 = v21;
  v268 = v45;
  __asm { FMLA            S14, S28, V23.S[2] }

  v61 = ((v27 * v35) + (v21 * v33)) + (_S28 * v37);
  v273 = _S7;
  v62 = ((v27 * v34) + (v21 * v39)) + (_S28 * v36);
  v63 = ((v27 * v43) + (v21 * v42)) + (_S28 * v44);
  v270 = v62;
  v271 = v61;
  v64 = fabsf(v61);
  v65 = fabsf(v62);
  v269 = v63;
  v66 = fabsf(v63);
  if (v59 > v50)
  {
    v67 = v59;
  }

  else
  {
    v67 = v50;
  }

  if (v59 > v50)
  {
    v55 = v273 < 0.0;
    v57 = 2;
    v58 = a2 + 1;
  }

  v68 = fabsf(_S14) - (((v30 + (_D4.f32[0] * v64)) + (_D4.f32[1] * v65)) + (v32 * v66));
  if (v68 > 0.0)
  {
    return 0;
  }

  v69 = _S14 < 0.0;
  v70 = v68 <= v67;
  if (v68 <= v67)
  {
    v69 = v55;
  }

  else
  {
    v67 = v68;
  }

  if (v70)
  {
    v71 = v57;
  }

  else
  {
    v71 = 3;
  }

  if (v70)
  {
    v20 = v58;
  }

  v72 = ((_Q23.f32[1] * v35) + (v33 * _Q23.f32[0])) + (v37 * _Q23.f32[2]);
  v73 = fabsf(v72) - (_D4.f32[0] + (((v29.f32[1] * v52) + (v29.f32[0] * v46)) + (v30 * v64)));
  if (v73 > 0.0)
  {
    return 0;
  }

  v74 = v73 <= v67;
  if (v73 > v67)
  {
    v69 = v72 < 0.0;
  }

  else
  {
    v73 = v67;
  }

  if (!v74)
  {
    v71 = 4;
    v20 = a5;
  }

  v75 = ((_Q23.f32[1] * v34) + (v39 * _Q23.f32[0])) + (v36 * _Q23.f32[2]);
  v76 = fabsf(v75) - (_D4.f32[1] + (((v29.f32[1] * v53) + (v29.f32[0] * _S25)) + (v30 * v65)));
  if (v76 > 0.0)
  {
    return 0;
  }

  v77 = v75 < 0.0;
  if (v76 > v73)
  {
    v78 = v76;
  }

  else
  {
    v78 = v73;
  }

  if (v76 > v73)
  {
    v69 = v77;
    v71 = 5;
    v20 = a5 + 1;
  }

  v79 = ((_Q23.f32[1] * v43) + (v42 * _Q23.f32[0])) + (v44 * _Q23.f32[2]);
  v80 = fabsf(v79) - (v32 + (((v29.f32[1] * v54) + (v29.f32[0] * v48)) + (v30 * v66)));
  if (v80 > 0.0)
  {
    return 0;
  }

  v81 = v79 < 0.0;
  if (v80 > v78)
  {
    v82 = v80;
  }

  else
  {
    v82 = v78;
  }

  if (v80 > v78)
  {
    v83 = 6;
  }

  else
  {
    v81 = v69;
    v83 = v71;
  }

  if (v80 <= v78)
  {
    v41 = v20;
  }

  v84 = _S25 + 0.00001;
  v85 = v48 + 0.00001;
  v86 = v52 + 0.00001;
  v87 = v64 + 0.00001;
  v88 = (_S14 * v277) - (v273 * v271);
  v89 = fabsf(v88) - ((((v30 * (v52 + 0.00001)) + (v29.f32[1] * (v64 + 0.00001))) + (_D4.f32[1] * v85)) + (v32 * v84));
  if (v89 > 0.00000011921)
  {
    return 0;
  }

  v91 = a1;
  v92 = v46 + 0.00001;
  v93 = v53 + 0.00001;
  v94 = v65 + 0.00001;
  v95 = -v273;
  v96 = 0.0;
  v97 = (v271 * v271) + 0.0;
  v98 = sqrtf(v97 + (v277 * v277));
  if (v98 <= 0.00000011921)
  {
    v100 = 0.0;
    v101 = 0.0;
    v102 = v276;
    v103 = v62;
  }

  else
  {
    v99 = v89 / v98;
    v100 = 0.0;
    v101 = 0.0;
    v102 = v276;
    v103 = v62;
    if ((v99 * 1.05) > v82)
    {
      v41 = 0;
      v96 = 0.0 / v98;
      v100 = -v271 / v98;
      v81 = v88 < 0.0;
      v83 = 7;
      v82 = v99;
      v101 = v277 / v98;
    }
  }

  v104 = (v103 * v95) + (_S14 * v102);
  v105 = fabsf(v104) - ((((v30 * v93) + (v29.f32[1] * v94)) + (_D4.f32[0] * v85)) + (v32 * v92));
  if (v105 > 0.00000011921)
  {
    return 0;
  }

  v106 = v103;
  v107 = v54 + 0.00001;
  v265 = v66 + 0.00001;
  v108 = (v106 * v106) + 0.0;
  v109 = sqrtf(v108 + (v102 * v102));
  if (v109 > 0.00000011921 && ((v105 / v109) * 1.05) > v82)
  {
    v41 = 0;
    v96 = 0.0 / v109;
    v100 = -v270 / v109;
    v81 = v104 < 0.0;
    v83 = 8;
    v82 = v105 / v109;
    v101 = v102 / v109;
  }

  v264 = v101;
  v110 = (v269 * v95) + (_S14 * v274);
  v111 = fabsf(v110) - ((((v30 * v107) + (v29.f32[1] * v265)) + (_D4.f32[0] * v84)) + (_D4.f32[1] * v92));
  if (v111 > 0.00000011921)
  {
    return 0;
  }

  v112 = (v269 * v269) + 0.0;
  v113 = sqrtf(v112 + (v274 * v274));
  if (v113 > 0.00000011921)
  {
    v114 = v111 / v113;
    if ((v114 * 1.05) > v82)
    {
      v41 = 0;
      v96 = 0.0 / v113;
      v100 = -v269 / v113;
      v81 = v110 < 0.0;
      v83 = 9;
      v82 = v114;
      v264 = v274 / v113;
    }
  }

  v115 = (_S21 * v271) - (_S14 * v38);
  v116 = fabsf(v115) - ((((v30 * v92) + (v29.f32[0] * v87)) + (_D4.f32[1] * v107)) + (v32 * v93));
  if (v116 > 0.00000011921)
  {
    return 0;
  }

  v263 = v94;
  v117 = -_S14;
  v118 = sqrtf(v97 + (v38 * v38));
  if (v118 <= 0.00000011921)
  {
    v120 = v268;
    v121 = v272;
  }

  else
  {
    v119 = v116 / v118;
    v120 = v268;
    v121 = v272;
    if ((v119 * 1.05) > v82)
    {
      v41 = 0;
      v96 = v271 / v118;
      v100 = 0.0 / v118;
      v81 = v115 < 0.0;
      v83 = 10;
      v82 = v119;
      v264 = -v38 / v118;
    }
  }

  v122 = (v121 * v117) + (_S21 * v270);
  v123 = fabsf(v122) - ((((v30 * v84) + (v29.f32[0] * v263)) + (_D4.f32[0] * v107)) + (v32 * v86));
  if (v123 > 0.00000011921)
  {
    return 0;
  }

  v124 = sqrtf(v108 + (v121 * v121));
  if (v124 > 0.00000011921)
  {
    v125 = v123 / v124;
    if ((v125 * 1.05) > v82)
    {
      v41 = 0;
      v96 = v270 / v124;
      v100 = 0.0 / v124;
      v81 = v122 < 0.0;
      v83 = 11;
      v82 = v125;
      v264 = -v121 / v124;
    }
  }

  v126 = (v120 * v117) + (_S21 * v269);
  v127 = fabsf(v126) - ((((v30 * v85) + (v29.f32[0] * v265)) + (_D4.f32[0] * v93)) + (_D4.f32[1] * v86));
  if (v127 > 0.00000011921)
  {
    return 0;
  }

  v128 = sqrtf(v112 + (v120 * v120));
  if (v128 > 0.00000011921)
  {
    v129 = v127 / v128;
    if ((v129 * 1.05) > v82)
    {
      v41 = 0;
      v96 = v269 / v128;
      v100 = 0.0 / v128;
      v81 = v126 < 0.0;
      v83 = 12;
      v82 = v129;
      v264 = -v120 / v128;
    }
  }

  v130 = (v273 * v38) - (_S21 * v277);
  v131 = fabsf(v130) - ((((v29.f32[1] * v92) + (v29.f32[0] * v86)) + (_D4.f32[1] * v265)) + (v32 * v263));
  if (v131 > 0.00000011921)
  {
    return 0;
  }

  v132 = -_S21;
  v133 = sqrtf((v38 * v38) + (v277 * v277));
  if (v133 > 0.00000011921)
  {
    v134 = v131 / v133;
    if ((v134 * 1.05) > v82)
    {
      v41 = 0;
      v96 = -v277 / v133;
      v100 = v38 / v133;
      v81 = v130 < 0.0;
      v83 = 13;
      v82 = v134;
      v264 = 0.0 / v133;
    }
  }

  v135 = (v102 * v132) + (v273 * v121);
  v136 = fabsf(v135) - ((((v29.f32[1] * v84) + (v29.f32[0] * v93)) + (_D4.f32[0] * v265)) + (v32 * v87));
  if (v136 > 0.00000011921)
  {
    return 0;
  }

  v137 = v100;
  v278 = v82;
  v138 = sqrtf((v121 * v121) + (v102 * v102));
  if (v138 > 0.00000011921)
  {
    v139 = v136 / v138;
    if ((v139 * 1.05) > v82)
    {
      v41 = 0;
      v96 = -v276 / v138;
      v137 = v272 / v138;
      v81 = v135 < 0.0;
      v83 = 14;
      v278 = v139;
      v264 = 0.0 / v138;
    }
  }

  v140 = (v274 * v132) + (v273 * v268);
  v141 = fabsf(v140) - ((((v29.f32[1] * v85) + (v29.f32[0] * v107)) + (_D4.f32[0] * v263)) + (_D4.f32[1] * v87));
  if (v141 > 0.00000011921)
  {
    return 0;
  }

  v142 = sqrtf((v268 * v268) + (v274 * v274));
  if (v142 > 0.00000011921)
  {
    v143 = v141 / v142;
    if ((v143 * 1.05) > v278)
    {
      v96 = -v274 / v142;
      v137 = v268 / v142;
      v81 = v140 < 0.0;
      v83 = 15;
      v278 = v143;
      v264 = 0.0 / v142;
LABEL_86:
      v144 = ((v266 * v137) + (v14 * v96)) + (v267 * v264);
      a7->f32[0] = v144;
      v145 = ((v137 * a2[5]) + (a2[4] * v96)) + (a2[6] * v264);
      a7->f32[1] = v145;
      v146 = ((v137 * a2[9]) + (a2[8] * v96)) + (a2[10] * v264);
      goto LABEL_87;
    }
  }

  if (!v83)
  {
    return 0;
  }

  if (!v41)
  {
    goto LABEL_86;
  }

  v144 = *v41;
  a7->f32[0] = *v41;
  v145 = v41[4];
  a7->f32[1] = v145;
  v146 = v41[8];
LABEL_87:
  a7->f32[2] = v146;
  if (v81)
  {
    a7->f32[0] = -v144;
    a7->f32[1] = -v145;
    a7->f32[2] = -v146;
  }

  *a8 = -v278;
  if (v83 < 7)
  {
    v280 = a7->f32[0];
    if (v83 > 3)
    {
      v280 = -a7->f32[0];
      v279 = -a7->f32[1];
      v168 = &v300;
      v169 = &v302;
      v275 = -a7->f32[2];
      v170 = a1;
      v91 = a4;
      v171 = a2;
      a2 = a5;
    }

    else
    {
      v279 = a7->f32[1];
      v275 = a7->f32[2];
      v168 = &v302;
      v169 = &v300;
      v170 = a4;
      v171 = a5;
    }

    v288 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v171[2], v279), *v171, v280), v171[4], v275);
    v289 = ((v279 * v171[3].f32[0]) + (v171[1].f32[0] * v280)) + (v171[5].f32[0] * v275);
    v172 = vabs_f32(v288);
    v173 = fabsf(v289);
    if (v172.f32[1] <= v172.f32[0])
    {
      v175 = v172.f32[0] <= v173;
      v174 = v172.f32[0] > v173;
      v177 = 2 * (v172.f32[0] <= v173);
      v176 = 2;
    }

    else
    {
      v174 = 0;
      v175 = v172.f32[1] <= v173;
      v176 = 2;
      if (v172.f32[1] > v173)
      {
        v177 = 1;
      }

      else
      {
        v177 = 2;
      }
    }

    if (v175)
    {
      v176 = 1;
    }

    v178 = *(&v288 | (4 * v177));
    v179 = v169[v177];
    v180 = v171 + 4 * v177;
    v181 = 0;
    if (v178 >= 0.0)
    {
      v182 = -v179;
      do
      {
        *(&v285 + v181 * 4) = (v170->f32[v181] - v91->f32[v181]) + (v182 * *&v180[1 * v181]);
        ++v181;
      }

      while (v181 != 3);
    }

    else
    {
      do
      {
        *(&v285 + v181 * 4) = (v170->f32[v181] - v91->f32[v181]) + (v179 * *&v180[1 * v181]);
        ++v181;
      }

      while (v181 != 3);
    }

    if (v83 < 4)
    {
      v183 = -1;
    }

    else
    {
      v183 = -4;
    }

    v184 = v183 + v83;
    if (v183 + v83)
    {
      v185 = 1;
      v186 = 0;
      if (v184 == 1)
      {
        v185 = 2;
      }
    }

    else
    {
      v185 = 2;
      v186 = 1;
    }

    v187 = &a2[v186];
    v188 = *v187;
    v189 = v187[4];
    v190 = v187[8];
    v191 = ((v286 * v189) + (v285 * *v187)) + (v287 * v190);
    v192 = &a2[v185];
    v193 = *v192;
    v194 = v192[4];
    v195 = v192[8];
    v196 = ((v286 * v194) + (v285 * *v192)) + (v287 * v195);
    v197 = v171 + v174;
    v198 = v197[4];
    v199 = v197;
    v200 = v197[8];
    v201 = ((v189 * v198) + (v188 * *v197)) + (v190 * v200);
    v202 = v171 + v176;
    v203 = v202[4];
    v204 = (v189 * v203) + (v188 * *v202);
    v205 = v202;
    v206 = v202[8];
    v207 = v204 + (v190 * v206);
    v208 = ((v194 * v198) + (v193 * *v197)) + (v195 * v200);
    v209 = ((v194 * v203) + (v193 * *v202)) + (v195 * v206);
    v210 = v169[v174];
    v211 = v201 * v210;
    v212 = v208 * v210;
    v213 = v169[v176];
    v214 = v207 * v213;
    v215 = v209 * v213;
    v295.var0.var0[0] = (v191 - v211) - v214;
    v295.var0.var0[1] = (v196 - v212) - v215;
    v295.var0.var0[2] = (v191 - v211) + v214;
    v295.var0.var0[3] = (v196 - v212) + v215;
    v216 = v191 + v211;
    v217 = v196 + v212;
    v296 = v216 + v214;
    v297 = v217 + v215;
    v298 = v216 - v214;
    v299 = v217 - v215;
    v218 = v168[v185];
    v294[0] = v168[v186];
    v294[1] = v218;
    v219 = intersectRectQuad2(v294, v295.var0.var0, v293.var0.var0);
    if (v219 < 1)
    {
      return 0;
    }

    v220 = 0;
    v221 = 0;
    LODWORD(v222) = a10;
    v223 = 1.0 / ((v201 * v209) - (v207 * v208));
    v224 = v201 * v223;
    v225 = v209 * v223;
    v226 = -(v207 * v223);
    v227 = -(v208 * v223);
    v228 = v168[v184];
    v229 = v219;
    do
    {
      v230 = 0;
      v231 = &v293.var0.var0[2 * v220];
      v232 = *v231;
      v233 = v231[1];
      v234 = *v231 - v191;
      v235 = (v226 * (v233 - v196)) + (v225 * v234);
      v236 = (v224 * (v233 - v196)) + (v227 * v234);
      v237 = &v292.var0.var0[3 * v221];
      do
      {
        v237[v230] = (*(&v285 + v230 * 4) + (v235 * v199[v230 * 4])) + (v236 * v205[v230 * 4]);
        ++v230;
      }

      while (v230 != 3);
      v238 = v228 - (((v279 * v237[1]) + (v280 * *v237)) + (v275 * v237[2]));
      v291.var0.var0[v221] = v238;
      if (v238 >= 0.0)
      {
        v293.var0.var0[2 * v221] = v232;
        v293.var0.var0[2 * v221 + 1] = v233;
        v221 = (v221 + 1);
      }

      ++v220;
    }

    while (v220 != v229);
    if (v221 < 1)
    {
      return 0;
    }

    v239 = v221;
    v240 = v221;
    if (v221 < a10)
    {
      LODWORD(v222) = v221;
    }

    if (v222 <= 1)
    {
      v222 = 1;
    }

    else
    {
      v222 = v222;
    }

    v281 = v222;
    if (v221 <= v222)
    {
      if (v83 >= 4)
      {
        v258 = 0;
        v259 = &v292;
        do
        {
          v260 = 0;
          v261 = v291.var0.var0[v258];
          do
          {
            *&v290.i32[v260] = (v259->var0.var0[v260] + v91->f32[v260]) - (a7->f32[v260] * v261);
            ++v260;
          }

          while (v260 != 3);
          v262.i64[0] = 0x8000000080000000;
          v262.i64[1] = 0x8000000080000000;
          v284 = veorq_s8(*a7, v262);
          (*(*a13 + 32))(a13, &v284, &v290, -v261);
          ++v258;
          v259 = (v259 + 12);
        }

        while (v258 != v240);
      }

      else
      {
        v253 = 0;
        v254 = &v292;
        do
        {
          for (i = 0; i != 3; ++i)
          {
            *&v290.i32[i] = v254->var0.var0[i] + v91->f32[i];
          }

          v256.i64[0] = 0x8000000080000000;
          v256.i64[1] = 0x8000000080000000;
          v257 = veorq_s8(*a7, v256);
          v256.i32[0] = LODWORD(v291.var0.var0[v253]);
          v284 = v257;
          (*(*a13 + 32))(a13, &v284, &v290, -*v256.i32);
          ++v253;
          v254 = (v254 + 12);
        }

        while (v253 != v240);
      }

      v281 = v239;
    }

    else
    {
      v241 = 0;
      v242 = v291.var0.var0[0];
      v243 = 1;
      do
      {
        if (v291.var0.var0[v243] > v242)
        {
          v241 = v243;
          v242 = v291.var0.var0[v243];
        }

        ++v243;
      }

      while (v221 != v243);
      cullPoints2(v221, &v293, v281, v241, v290.i32);
      for (j = 0; j != v281; ++j)
      {
        v245 = 0;
        v246 = v290.i32[j];
        do
        {
          v284.f32[v245] = v292.var0.var0[3 * v246 + v245] + v91->f32[v245];
          ++v245;
        }

        while (v245 != 3);
        v247.i64[0] = 0x8000000080000000;
        v247.i64[1] = 0x8000000080000000;
        if (v83 > 3)
        {
          v250 = veorq_s8(*a7, v247);
          v251 = v291.var0.var0[v246];
          v252 = vsubq_f32(v284, vmulq_n_f32(*a7, v251));
          v252.n128_u32[3] = 0;
          v282 = v252;
          v283 = v250;
          v252.n128_f32[0] = -v251;
          (*(*a13 + 32))(a13, &v283, &v282, v252);
        }

        else
        {
          v248 = veorq_s8(*a7, v247);
          v249 = v291.var0.var0[v246];
          v283 = v248;
          v248.n128_f32[0] = -v249;
          (*(*a13 + 32))(a13, &v283, &v284, v248);
        }
      }
    }

    *a9 = v83;
    return v281;
  }

  else
  {
    v148 = 0;
    *v292.var0.var0 = a1->i64[0];
    LODWORD(v292.var0.var0[2]) = a1->i32[2];
    v150 = a7->f32[0];
    v149 = a7->f32[1];
    v151 = a7->f32[2];
    v152 = a2;
    do
    {
      v153 = 0;
      if ((((v149 * a2[v148 + 4]) + (v150 * a2[v148])) + (v151 * a2[v148 + 8])) <= 0.0)
      {
        v154 = -v302.f32[v148];
      }

      else
      {
        v154 = v302.f32[v148];
      }

      do
      {
        v292.var0.var0[v153] = v292.var0.var0[v153] + (v154 * v152[v153 * 4]);
        ++v153;
      }

      while (v153 != 3);
      ++v148;
      ++v152;
    }

    while (v148 != 3);
    v155 = 0;
    *v293.var0.var0 = a4->i64[0];
    LODWORD(v293.var0.var0[2]) = a4->i32[2];
    v156 = a7->f32[0];
    v157 = a5;
    do
    {
      v158 = 0;
      if ((((v149 * a5[v155 + 4]) + (v156 * a5[v155])) + (v151 * a5[v155 + 8])) <= 0.0)
      {
        v159 = v300.f32[v155];
      }

      else
      {
        v159 = -v300.f32[v155];
      }

      do
      {
        v293.var0.var0[v158] = v293.var0.var0[v158] + (v159 * v157[v158 * 4]);
        ++v158;
      }

      while (v158 != 3);
      ++v155;
      ++v157;
    }

    while (v155 != 3);
    v160 = 0;
    v161 = &a2[(v83 - 7) / 3uLL];
    v288.i32[0] = 0;
    v285 = 0.0;
    v162 = v161[4];
    v295.var0.var0[0] = *v161;
    v295.var0.var0[1] = v162;
    v295.var0.var0[2] = v161[8];
    do
    {
      v291.var0.var0[v160] = a5[v83 - 7 + v160 * 4 + -3 * (((v83 - 7) * 0x5555555555555556uLL) >> 64)];
      ++v160;
    }

    while (v160 != 3);
    dLineClosestApproach(v292.var0.var0, &v295, &v293, &v291, &v288, &v285);
    v163 = 0;
    v164 = v288.f32[0];
    do
    {
      v292.var0.var0[v163] = v292.var0.var0[v163] + (v295.var0.var0[v163] * v164);
      ++v163;
    }

    while (v163 != 3);
    v165 = 0;
    v166 = v285;
    do
    {
      v293.var0.var0[v165] = v293.var0.var0[v165] + (v291.var0.var0[v165] * v166);
      ++v165;
    }

    while (v165 != 3);
    v167.i64[0] = 0x8000000080000000;
    v167.i64[1] = 0x8000000080000000;
    v290 = veorq_s8(*a7, v167);
    (*(*a13 + 32))(a13, &v290, &v293, v278);
    *a9 = v83;
    return 1;
  }
}

uint64_t intersectRectQuad2(float *a1, float *a2, float *__src)
{
  v3 = 0;
  v25 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 4;
  v5 = 1;
  v6 = __src;
  do
  {
    v7 = v5;
    v8 = -1;
    v9 = a2;
    do
    {
      a2 = v6;
      v10 = v8;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4 + 1;
        v13 = v10;
        v14 = v3 ^ 1;
        v15 = v3;
        v16 = a2;
        v4 = 0;
        do
        {
          v17 = v9[v15];
          v18 = v17 * v13;
          v19 = a1[v3];
          if ((v17 * v13) < v19)
          {
            *v16 = v9[v11];
            v16[1] = v9[v11 + 1];
            v4 = (v4 + 1);
            if ((v4 & 8) != 0)
            {
              goto LABEL_22;
            }

            v16 += 2;
            v17 = v9[v15];
            v19 = a1[v3];
            v18 = v17 * v13;
          }

          v20 = &v9[v11 + 2];
          if (v12 == 2)
          {
            v20 = v9;
          }

          v21 = v18 < v19;
          v22 = *(v20 + 4 * v3);
          if (v21 != (v22 * v13) < v19)
          {
            v16[v3 ^ 1] = v9[v14] + (((*(v20 + 4 * (v3 ^ 1)) - v9[v14]) / (v22 - v17)) * -(v17 - (v13 * v19)));
            v16[v3] = a1[v3] * v13;
            v4 = (v4 + 1);
            if ((v4 & 8) != 0)
            {
              goto LABEL_22;
            }

            v16 += 2;
          }

          --v12;
          v15 += 2;
          v14 += 2;
          v11 += 2;
        }

        while (v12 > 1);
      }

      else
      {
        v4 = 0;
      }

      if (a2 == __src)
      {
        v6 = &v24;
      }

      else
      {
        v6 = __src;
      }

      v8 = v10 + 2;
      v9 = a2;
    }

    while (v10 < 0);
    v5 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
LABEL_22:
  if (a2 != __src)
  {
    memcpy(__src, a2, 8 * v4);
  }

  return v4;
}

uint64_t btBoxBoxDetector::getClosestPoints(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  v6 = 0;
  v39 = *MEMORY[0x277D85DE8];
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  do
  {
    v7 = &v38[v6];
    v8 = &v37[v6];
    *v7 = a2[v6].i64[0];
    *v8 = a2[v6 + 4].i64[0];
    *(v7 + 2) = a2[v6].i32[2];
    *(v8 + 2) = a2[v6 + 4].i32[2];
    ++v6;
  }

  while (v6 != 3);
  v9 = *(a1 + 8);
  v30 = v9[3];
  v10 = (*(v9->i64[0] + 96))(v9);
  v28 = LODWORD(v10);
  v11 = (*(v9->i64[0] + 96))(v9);
  v26 = LODWORD(v11);
  *&v12 = (*(v9->i64[0] + 96))(v9);
  v13.i64[0] = __PAIR64__(v26, v28);
  v13.i64[1] = v12;
  v14 = vaddq_f32(v30, v13);
  v15 = vaddq_f32(v14, v14);
  v15.i32[3] = 0;
  v33 = v15;
  v16 = *(a1 + 16);
  v31 = v16[3];
  v17 = (*(v16->i64[0] + 96))(v16);
  v29 = LODWORD(v17);
  v18 = (*(v16->i64[0] + 96))(v16);
  v27 = LODWORD(v18);
  *&v19 = (*(v16->i64[0] + 96))(v16);
  v20.i64[0] = __PAIR64__(v27, v29);
  v20.i64[1] = v19;
  v21 = vaddq_f32(v31, v20);
  v22 = vaddq_f32(v21, v21);
  v22.i32[3] = 0;
  v32 = v22;
  return dBoxBox2(a2 + 3, v38, &v33, a2 + 7, v37, &v32, &v36, &v35, &v34, 4, v24, v25, a3);
}

uint64_t btCollisionDispatcher::btCollisionDispatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_282DC8DA0;
  *(a1 + 8) = 2;
  *(a1 + 40) = 1;
  *(a1 + 32) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = &unk_282DC97D8;
  *(a1 + 10488) = a2;
  *(a1 + 96) = btCollisionDispatcher::defaultNearCallback;
  *(a1 + 104) = (*(*a2 + 24))(a2);
  v4 = (*(*a2 + 16))(a2);
  v5 = 0;
  *(a1 + 112) = v4;
  v6 = a1 + 120;
  do
  {
    for (i = 0; i != 36; ++i)
    {
      *(v6 + 8 * i) = (*(**(a1 + 10488) + 32))(*(a1 + 10488), v5, i);
    }

    ++v5;
    v6 += 288;
  }

  while (v5 != 36);
  return a1;
}

void btCollisionDispatcher::defaultNearCallback(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = **a1;
  v7 = *a1[1];
  if ((*(*a2 + 48))(a2, v6, v7))
  {
    v8 = *(v6 + 208);
    v15[0] = 0;
    v15[1] = v8;
    v15[2] = v6;
    v15[3] = v6 + 16;
    v15[4] = -1;
    v9 = *(v7 + 208);
    v14[0] = 0;
    v14[1] = v9;
    v14[2] = v7;
    v14[3] = v7 + 16;
    v14[4] = -1;
    if (a1[2] || (v10 = (*(*a2 + 16))(a2, v15, v14, 0), (a1[2] = v10) != 0))
    {
      btManifoldResult::btManifoldResult(v13, v15, v14);
      v11 = *a1[2];
      if (*(a3 + 8) == 1)
      {
        (*(v11 + 16))();
      }

      else
      {
        v12 = (*(v11 + 24))();
        if (*(a3 + 12) > v12)
        {
          *(a3 + 12) = v12;
        }
      }
    }
  }
}

void btCollisionDispatcher::~btCollisionDispatcher(btCollisionDispatcher *this)
{
  *this = &unk_282DC8DA0;
  v2 = *(this + 4);
  if (v2 && *(this + 40) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 40) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  btCollisionDispatcher::~btCollisionDispatcher(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btCollisionDispatcher::getNewManifold(btCollisionDispatcher *this, const btCollisionObject *a2, const btCollisionObject *a3)
{
  v6 = &gContactBreakingThreshold;
  if ((*(this + 2) & 2) != 0)
  {
    v22 = (*(**(a2 + 26) + 40))(*(a2 + 26), *&gContactBreakingThreshold);
    v21 = (*(**(a3 + 26) + 40))(*(a3 + 26), *&gContactBreakingThreshold);
    if (v22 >= v21)
    {
      v6 = &v21;
    }

    else
    {
      v6 = &v22;
    }
  }

  v7 = *v6;
  if (*(a2 + 49) >= *(a3 + 49))
  {
    v8 = *(a3 + 49);
  }

  else
  {
    v8 = *(a2 + 49);
  }

  v9 = *(this + 14);
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = *(v9 + 16);
    *(v9 + 16) = *v11;
    *(v9 + 8) = v10 - 1;
  }

  else
  {
    if ((*(this + 8) & 4) != 0)
    {
      return 0;
    }

    v11 = btAlignedAllocInternal(832, 16);
  }

  v12 = 0;
  *v11 = 1025;
  do
  {
    v13 = v11 + v12;
    *(v13 + 128) = 0;
    *(v13 + 136) = 0;
    *(v13 + 140) = 0uLL;
    *(v13 + 156) = 0uLL;
    v12 += 192;
  }

  while (v12 != 768);
  *(v11 + 784) = a2;
  *(v11 + 792) = a3;
  *(v11 + 800) = 0;
  *(v11 + 804) = v7;
  *(v11 + 808) = v8;
  *(v11 + 824) = 0;
  v14 = *(this + 5);
  v15 = *(this + 6);
  *(v11 + 820) = v14;
  if (v14 == v15)
  {
    v16 = v14 ? 2 * v14 : 1;
    if (v14 < v16)
    {
      if (v16)
      {
        v17 = btAlignedAllocInternal(8 * v16, 16);
        v14 = *(this + 5);
      }

      else
      {
        v17 = 0;
      }

      if (v14 >= 1)
      {
        v18 = 0;
        do
        {
          *(v17 + v18) = *(*(this + 4) + v18);
          v18 += 8;
        }

        while (8 * v14 != v18);
      }

      v19 = *(this + 4);
      if (v19 && *(this + 40) == 1)
      {
        btAlignedFreeInternal(v19);
        v14 = *(this + 5);
      }

      *(this + 40) = 1;
      *(this + 4) = v17;
      *(this + 6) = v16;
    }
  }

  *(*(this + 4) + 8 * v14) = v11;
  *(this + 5) = v14 + 1;
  return v11;
}

btPersistentManifold *btCollisionDispatcher::clearManifold(btCollisionDispatcher *this, btPersistentManifold *a2)
{
  if (SLODWORD(a2->var6) >= 1)
  {
    v3 = 0;
    v4 = &a2->var1[0].var0.var0.var0[2];
    do
    {
      result = btPersistentManifold::clearUserCache(a2, v4);
      ++v3;
      ++v4;
    }

    while (v3 < SLODWORD(a2->var6));
  }

  a2->var6 = 0.0;
  return result;
}

void btCollisionDispatcher::releaseManifold(btCollisionDispatcher *this, btPersistentManifold *a2)
{
  (*(*this + 40))(this);
  var10_high = SHIDWORD(a2->var10);
  v5 = *(this + 5) - 1;
  v6 = *(this + 4);
  v7 = *(v6 + 8 * var10_high);
  *(v6 + 8 * var10_high) = *(v6 + 8 * v5);
  *(*(this + 4) + 8 * v5) = v7;
  *(*(*(this + 4) + 8 * var10_high) + 820) = var10_high;
  *(this + 5) = v5;
  v8 = *(this + 14);
  v9 = *(v8 + 3);
  if (v9 > a2 || v9 + *v8 * v8[1] <= a2)
  {

    btAlignedFreeInternal(a2);
  }

  else
  {
    *&a2->var0 = *(v8 + 2);
    *(v8 + 2) = a2;
    ++v8[2];
  }
}

uint64_t btCollisionDispatcher::findAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a4;
  v4 = *(a1 + 288 * *(*(a2 + 8) + 8) + 8 * *(*(a3 + 8) + 8) + 120);
  return (*(*v4 + 16))(v4, v6, a2, a3);
}

BOOL btCollisionDispatcher::needsResponse(btCollisionDispatcher *this, const btCollisionObject *a2, const btCollisionObject *a3)
{
  v3 = *(a2 + 58);
  if ((v3 & 4) != 0)
  {
    result = 0;
  }

  else
  {
    v4 = (v3 & 3) == 0 || (*(a3 + 58) & 3) == 0;
    result = (*(a3 + 58) & 4) == 0 && v4;
  }

  v6 = *(a2 + 25);
  v7 = *(a3 + 25);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = (*(v7 + 16) & *(v6 + 8)) != 0 && (*(v6 + 16) & *(v7 + 8)) != 0;
    return result && v9;
  }

  return result;
}

uint64_t btCollisionDispatcher::needsCollision(btCollisionDispatcher *this, const btCollisionObject *a2, const btCollisionObject *a3)
{
  v3 = *(a2 + 61);
  if (v3 == 5 || v3 == 2)
  {
    v5 = *(a3 + 61);
    if (v5 == 2 || v5 == 5)
    {
      return 0;
    }
  }

  if (*(a2 + 73))
  {
    return (**a2)(a2, a3);
  }

  return 1;
}

uint64_t btCollisionDispatcher::dispatchAllCollisionPairs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = &unk_282DC8E30;
  v5[1] = a3;
  v5[2] = a1;
  return (*(*a2 + 96))(a2, v5, a4);
}

void *btCollisionDispatcher::allocateCollisionAlgorithm(btCollisionDispatcher *this, int a2)
{
  v2 = *(this + 13);
  v3 = *(v2 + 8);
  if (!v3)
  {
    return btAlignedAllocInternal(a2, 16);
  }

  result = *(v2 + 16);
  *(v2 + 16) = *result;
  *(v2 + 8) = v3 - 1;
  return result;
}

void btCollisionDispatcher::freeCollisionAlgorithm(btCollisionDispatcher *this, void **a2)
{
  if (a2 && (v2 = *(this + 13), v3 = *(v2 + 3), v3 <= a2) && v3 + *v2 * v2[1] > a2)
  {
    *a2 = *(v2 + 2);
    *(v2 + 2) = a2;
    ++v2[2];
  }

  else
  {
    btAlignedFreeInternal(a2);
  }
}

void btCollisionObject::btCollisionObject(btCollisionObject *this)
{
  *this = &unk_282DC8E58;
  *(this + 11) = xmmword_21C280340;
  *(this + 24) = 0x5D5E0B6B00000000;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = xmmword_21C2A4000;
  *(this + 248) = xmmword_21C2A4010;
  *(this + 66) = 1;
  *(this + 34) = 0;
  *(this + 35) = 1065353216;
  *(this + 36) = 0;
  *(this + 1) = xmmword_21C27F910;
  *(this + 2) = xmmword_21C27F8C0;
  *(this + 3) = xmmword_21C27F600;
  *(this + 8) = 0;
  *(this + 9) = 0;
}

btCollisionObject *btCollisionObject::setActivationState(btCollisionObject *this, int a2)
{
  if ((*(this + 61) & 0xFFFFFFFE) != 4)
  {
    *(this + 61) = a2;
  }

  return this;
}

btCollisionObject *btCollisionObject::activate(btCollisionObject *this, char a2)
{
  if ((a2 & 1) != 0 || (*(this + 232) & 3) == 0)
  {
    if ((*(this + 61) & 0xFFFFFFFE) != 4)
    {
      *(this + 61) = 1;
    }

    *(this + 62) = 0;
  }

  return this;
}

const char *btCollisionObject::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  for (i = 0; i != 3; ++i)
  {
    v8 = 4;
    v9 = v6;
    do
    {
      *(a2 + v9 + 32) = *(a1 + v9 + 16);
      v9 += 4;
      --v8;
    }

    while (v8);
    v6 += 16;
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + j + 80) = *(a1 + j + 64);
  }

  v11 = 0;
  for (k = 0; k != 3; ++k)
  {
    v13 = 4;
    v14 = v11;
    do
    {
      *(a2 + v14 + 96) = *(a1 + v14 + 80);
      v14 += 4;
      --v13;
    }

    while (v13);
    v11 += 16;
  }

  for (m = 0; m != 16; m += 4)
  {
    *(a2 + m + 144) = *(a1 + m + 128);
  }

  for (n = 0; n != 16; n += 4)
  {
    *(a2 + n + 160) = *(a1 + n + 144);
  }

  for (ii = 0; ii != 16; ii += 4)
  {
    *(a2 + ii + 176) = *(a1 + ii + 160);
  }

  for (jj = 0; jj != 16; jj += 4)
  {
    *(a2 + jj + 192) = *(a1 + jj + 176);
  }

  *(a2 + 240) = *(a1 + 192);
  *(a2 + 208) = *(a1 + 196);
  *a2 = 0;
  *(a2 + 8) = (*(*a3 + 56))(a3, *(a1 + 208));
  *(a2 + 16) = 0;
  *(a2 + 244) = *(a1 + 232);
  v19 = vrev64q_s32(*(a1 + 248));
  v19.i64[0] = *(a1 + 248);
  *(a2 + 212) = v19;
  *(a2 + 260) = *(a1 + 264);
  v20 = (*(*a3 + 80))(a3, a1);
  v21 = (*(*a3 + 56))(a3, v20);
  *(a2 + 24) = v21;
  if (v21)
  {
    (*(*a3 + 96))(a3, v20);
  }

  *(a2 + 228) = *(a1 + 280);
  *(a2 + 236) = *(a1 + 288);
  *(a2 + 264) = *(a1 + 292);
  return "btCollisionObjectFloatData";
}

uint64_t btCollisionObject::serializeSingleObject(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  v5 = (*(*a2 + 32))(a2, v4, 1);
  v6 = (*(*a1 + 40))(a1, *(v5 + 8), a2);
  v7 = *(*a2 + 40);

  return v7(a2, v5, v6, 1245859651, a1);
}

btCollisionObject *btCollisionObject::setCollisionShape(btCollisionObject *this, btCollisionShape *a2)
{
  *(this + 26) = a2;
  *(this + 28) = a2;
  return this;
}

double btCollisionWorld::btCollisionWorld(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_282DC8EA0;
  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *&result = 0x100000000;
  *(a1 + 52) = 0x100000000;
  *(a1 + 60) = 1065353216;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 256;
  *(a1 + 82) = 1;
  *(a1 + 84) = 1025758986;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = a3;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  return result;
}

void btCollisionWorld::~btCollisionWorld(btCollisionWorld *this)
{
  *this = &unk_282DC8EA0;
  v2 = *(this + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 3) + 8 * i);
      v5 = *(v4 + 200);
      if (v5)
      {
        v6 = (*(**(this + 12) + 72))(*(this + 12));
        (*(*v6 + 80))(v6, v5, *(this + 5));
        (*(**(this + 12) + 24))(*(this + 12), v5, *(this + 5));
        *(v4 + 200) = 0;
        v2 = *(this + 3);
      }
    }
  }

  v7 = *(this + 3);
  if (v7 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v7);
  }

  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

{
  btCollisionWorld::~btCollisionWorld(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btCollisionWorld::addCollisionObject(btCollisionWorld *this, btCollisionObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(this + 3);
  if (v10 == *(this + 4))
  {
    v11 = v10 ? 2 * v10 : 1;
    if (v10 < v11)
    {
      if (v11)
      {
        v12 = btAlignedAllocInternal(8 * v11, 16);
        v10 = *(this + 3);
      }

      else
      {
        v12 = 0;
      }

      if (v10 >= 1)
      {
        v13 = 0;
        do
        {
          *(v12 + v13) = *(*(this + 3) + v13);
          v13 += 8;
        }

        while (8 * v10 != v13);
      }

      v14 = *(this + 3);
      if (v14 && *(this + 32) == 1)
      {
        btAlignedFreeInternal(v14);
        v10 = *(this + 3);
      }

      *(this + 32) = 1;
      *(this + 3) = v12;
      *(this + 4) = v11;
    }
  }

  *(*(this + 3) + 8 * v10) = a2;
  *(this + 3) = v10 + 1;
  v15 = *(a2 + 2);
  v20[0] = *(a2 + 1);
  v20[1] = v15;
  v16 = *(a2 + 4);
  v20[2] = *(a2 + 3);
  v20[3] = v16;
  (*(**(a2 + 26) + 16))(*(a2 + 26), v20, v19, v18);
  result = (*(**(this + 12) + 16))(*(this + 12), v19, v18, *(*(a2 + 26) + 8), a2, a3, a4, a5, *(this + 5), 0);
  *(a2 + 25) = result;
  return result;
}

btCollisionObject *btCollisionWorld::updateSingleAabb(btCollisionWorld *this, btCollisionObject *a2)
{
  (*(**(a2 + 26) + 16))(*(a2 + 26), a2 + 16, &v15, &v14);
  v4 = &gContactBreakingThreshold;
  v5 = vld1q_dup_f32(v4);
  v5.i32[3] = 0;
  v6 = vsubq_f32(v15, v5);
  v15 = v6;
  v7 = vaddq_f32(v14, v5);
  v14 = v7;
  if (*(this + 64) == 1 && *(a2 + 66) == 2 && (*(a2 + 232) & 3) == 0)
  {
    v11 = v5;
    (*(**(a2 + 26) + 16))(*(a2 + 26), a2 + 80, &v13, &v12);
    v6 = vminq_f32(v15, vsubq_f32(v13, v11));
    v15 = v6;
    v7 = vmaxq_f32(v14, vaddq_f32(v11, v12));
    v14 = v7;
  }

  if (*(a2 + 232))
  {
    return (*(**(this + 12) + 32))(*(this + 12), *(a2 + 25), &v15, &v14, *(this + 5));
  }

  v8 = vsubq_f32(v7, v6);
  v8.i32[3] = 0;
  v9 = vmulq_f32(v8, v8);
  if (vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)).f32[0] < 1.0e12)
  {
    return (*(**(this + 12) + 32))(*(this + 12), *(a2 + 25), &v15, &v14, *(this + 5));
  }

  result = btCollisionObject::setActivationState(a2, 5);
  if ((btCollisionWorld::updateSingleAabb(btCollisionObject *)::reportMe & 1) == 0)
  {
    result = *(this + 13);
    if (result)
    {
      btCollisionWorld::updateSingleAabb(btCollisionObject *)::reportMe = 1;
      (*(*result + 72))(result, "Overflow in AABB, object removed from simulation");
      (*(**(this + 13) + 72))(*(this + 13), "If you can reproduce this, please email bugs@continuousphysics.com\n");
      (*(**(this + 13) + 72))(*(this + 13), "Please include above information, your Platform, version of OS.\n");
      return (*(**(this + 13) + 72))(*(this + 13), "Thanks.\n");
    }
  }

  return result;
}

btCollisionObject *btCollisionWorld::updateAabbs(btCollisionObject *this)
{
  v1 = *(this + 3);
  if (v1 >= 1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      v4 = *(*(v2 + 24) + 8 * i);
      if ((*(v2 + 112) & 1) == 0)
      {
        v5 = *(v4 + 244);
        if (v5 == 2 || v5 == 5)
        {
          continue;
        }
      }

      this = btCollisionWorld::updateSingleAabb(v2, v4);
      v1 = *(v2 + 12);
    }
  }

  return this;
}

uint64_t btCollisionWorld::performDiscreteCollisionDetection(btCollisionWorld *this)
{
  (*(*this + 16))(this);
  result = (*(*this + 24))(this);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (*(**(this + 12) + 72))(*(this + 12));
    v5 = *(this + 5);
    v6 = *(*v3 + 64);

    return v6(v3, v4, this + 48, v5);
  }

  return result;
}

uint64_t btCollisionWorld::removeCollisionObject(btCollisionWorld *this, btCollisionObject *a2)
{
  v7 = a2;
  v3 = *(a2 + 25);
  if (v3)
  {
    v5 = (*(**(this + 12) + 72))(*(this + 12));
    (*(*v5 + 80))(v5, v3, *(this + 5));
    (*(**(this + 12) + 24))(*(this + 12), v3, *(this + 5));
    *(a2 + 25) = 0;
  }

  return btAlignedObjectArray<btCollisionObject *>::remove(this + 8, &v7);
}

uint64_t btAlignedObjectArray<btCollisionObject *>::remove(uint64_t result, void *a2)
{
  v2 = *(result + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 16);
    while (*(v4 + 8 * v3) != *a2)
    {
      if (v2 == ++v3)
      {
        return result;
      }
    }

    if (v2 > v3)
    {
      v5 = v2 - 1;
      v6 = *(v4 + 8 * v3);
      *(v4 + 8 * v3) = *(v4 + 8 * v5);
      *(*(result + 16) + 8 * v5) = v6;
      *(result + 4) = v5;
    }
  }

  return result;
}

uint64_t btCollisionWorld::rayTestSingleInternal(float32x4_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v111 = *MEMORY[0x277D85DE8];
  btConvexInternalShape::btConvexInternalShape(&v107);
  v107 = &unk_282DCA7E8;
  v108 = 8;
  v109 = 0;
  v110 = 0;
  v8 = a3[1];
  v9 = a3[3];
  v10 = *(v8 + 8);
  if (v10 == 28)
  {
    v11 = *(v9 + 16);
    v12 = *(v9 + 32);
    v13 = vtrn1q_s32(*v9, v11);
    v14 = vzip2_s32(*v12.i8, 0);
    v15 = vextq_s8(v12, v12, 8uLL).u32[0];
    v16.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
    v13.i64[1] = v12.u32[0];
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v17 = veorq_s8(*(v9 + 48), v12);
    v18 = vmulq_f32(v13, v17);
    *v19.f32 = vzip2_s32(*v9, *v11.i8);
    *&v19.u32[2] = v14;
    v20 = vmulq_f32(v19, v17);
    v16.i64[1] = v15;
    v21 = vmulq_f32(v16, v17);
    v21.i32[3] = 0;
    *v18.f32 = vadd_f32(vpadd_f32(*v18.f32, *v20.i8), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
    v22 = a1[3];
    v23 = vmulq_f32(v13, v22);
    v24 = vmulq_f32(v19, v22);
    v25 = vmulq_f32(v16, v22);
    v25.i32[3] = 0;
    *v23.f32 = vadd_f32(vpadd_f32(*v23.f32, *v24.i8), vzip1_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(v24, v24, 8uLL)));
    *&v23.u32[2] = vpadd_f32(vpadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL)), 0);
    *&v18.u32[2] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
    v26 = *(a2 + 48);
    v27 = vmulq_f32(v13, v26);
    v28 = vmulq_f32(v19, v26);
    v29 = vmulq_f32(v16, v26);
    v29.i32[3] = 0;
    *v28.f32 = vadd_f32(vpadd_f32(*v27.i8, *v28.f32), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
    *&v28.u32[2] = vpadd_f32(vpadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0);
    v30 = vaddq_f32(v18, v23);
    v31 = vsubq_f32(vaddq_f32(v18, v28), v30);
    v31.i32[3] = 0;
    v32 = vmulq_f32(v31, v31);
    v33 = sqrtf(vadd_f32(*&vextq_s8(v32, v32, 8uLL), vpadd_f32(*v32.i8, *v32.i8)).f32[0]);
    v34 = *(v8 + 64);
    v34.i32[3] = *(v8 + 80);
    v35 = vmulq_f32(v34, vmulq_n_f32(v31, 1.0 / v33));
    v36 = vadd_f32(vpadd_f32(*v35.i8, *v35.i8), *&vextq_s8(v35, v35, 8uLL)).f32[0];
    if (v36 != 0.0)
    {
      v37 = vmulq_f32(v30, v34);
      v38 = -(*(v8 + 80) + vadd_f32(*&vextq_s8(v37, v37, 8uLL), vpadd_f32(*v37.i8, *v37.i8)).f32[0]) / v36;
      if (v38 >= -0.00000011921 && v38 <= v33)
      {
        v40 = v38 / v33;
        if (v40 < *(a4 + 8))
        {
          v87 = a3[2];
          v88 = 0;
          v89 = v34;
          *&v90 = v40;
          (*(*a4 + 24))(a4, &v87, 0);
        }
      }
    }
  }

  else if (v10 > 19)
  {
    if ((v10 - 21) > 8)
    {
      if (v10 == 31)
      {
        v71 = *(v8 + 96);
        v72 = a3[2];
        v87 = &unk_282DC8FB0;
        v88 = v72;
        v89.i64[0] = v8;
        v89.i64[1] = v9;
        v90 = a1;
        v91 = a2;
        v92 = a4;
        if (v71)
        {
          v74 = *(v9 + 32);
          v73 = *(v9 + 48);
          v75 = vsubq_f32(a1[3], v73);
          v75.i32[3] = 0;
          v76 = *v9;
          v77 = *(v9 + 16);
          v76.i32[3] = 0;
          v77.i32[3] = 0;
          v74.i32[3] = 0;
          v102 = vaddq_f32(vaddq_f32(vmulq_n_f32(v76, v75.f32[0]), vmulq_lane_f32(v77, *v75.f32, 1)), vmulq_laneq_f32(v74, v75, 2));
          v78 = vsubq_f32(*(a2 + 48), v73);
          v78.i32[3] = 0;
          v84 = vaddq_f32(vaddq_f32(vmulq_n_f32(v76, v78.f32[0]), vmulq_lane_f32(v77, *v78.f32, 1)), vmulq_laneq_f32(v74, v78, 2));
          btDbvt::rayTest(*v71, &v102, &v84, &v87);
        }

        else
        {
          v80 = *(v8 + 28);
          if (v80 >= 1)
          {
            v81 = 0;
            do
            {
              btCollisionWorld::rayTestSingleInternal(btTransform const&,btTransform const&,btCollisionObjectWrapper const*,btCollisionWorld::RayResultCallback &)::RayTester::ProcessLeaf(&v87, v81);
              v81 = (v81 + 1);
            }

            while (v80 != v81);
          }
        }
      }
    }

    else
    {
      v45 = *(v9 + 16);
      v46 = *(v9 + 32);
      v47 = vzip2_s32(*v46.f32, 0);
      v48 = vextq_s8(v46, v46, 8uLL).u32[0];
      v49 = vtrn1q_s32(*v9, v45);
      v46.i64[0] = vextq_s8(v49, v49, 8uLL).u64[0];
      v49.i64[1] = *(v9 + 32);
      v50.i64[0] = 0x8000000080000000;
      v50.i64[1] = 0x8000000080000000;
      v51 = veorq_s8(*(v9 + 48), v50);
      v52 = vmulq_f32(v49, v51);
      *v45.f32 = vzip2_s32(*v9, *v45.f32);
      *&v45.u32[2] = v47;
      v53 = vmulq_f32(v45, v51);
      *v53.f32 = vadd_f32(vpadd_f32(*v52.i8, *v53.f32), vzip1_s32(*&vextq_s8(v52, v52, 8uLL), *&vextq_s8(v53, v53, 8uLL)));
      v46.i64[1] = v48;
      v54 = vmulq_f32(v46, v51);
      v54.i32[3] = 0;
      *&v53.u32[2] = vpadd_f32(vpadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL)), 0);
      v55 = a1[3];
      v56 = vmulq_f32(v49, v55);
      v57 = vmulq_f32(v45, v55);
      v58 = vmulq_f32(v46, v55);
      v58.i32[3] = 0;
      *v56.f32 = vadd_f32(vpadd_f32(*v56.f32, *v57.i8), vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v57, v57, 8uLL)));
      *&v56.u32[2] = vpadd_f32(vpadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL)), 0);
      v102 = vaddq_f32(v53, v56);
      v59 = *(a2 + 48);
      v60 = vmulq_f32(v49, v59);
      v61 = vmulq_f32(v45, v59);
      v62 = vmulq_f32(v46, v59);
      v62.i32[3] = 0;
      *v60.f32 = vadd_f32(vpadd_f32(*v60.f32, *v61.i8), vzip1_s32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v61, v61, 8uLL)));
      *&v60.u32[2] = vpadd_f32(vpadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL)), 0);
      v84 = vaddq_f32(v53, v60);
      v63 = a3[2];
      if (v10 == 21)
      {
        btTriangleRaycastCallback::btTriangleRaycastCallback(&v87, &v102, &v84, *(a4 + 48));
        v87 = &unk_282DC8F50;
        v93 = a4;
        v94 = v63;
        v95 = v8;
        v96 = *v9;
        v97 = *(v9 + 16);
        v98 = *(v9 + 32);
        v99 = *(v9 + 48);
        HIDWORD(v92) = *(a4 + 8);
        btBvhTriangleMeshShape::performRaycast(v8, &v87, &v102, &v84, COERCE_DOUBLE(__PAIR64__(DWORD1(v99), HIDWORD(v92))), v64, v65, v66, v67, v68, v69, v70);
      }

      else
      {
        btTriangleRaycastCallback::btTriangleRaycastCallback(&v87, &v102, &v84, *(a4 + 48));
        v87 = &unk_282DC8F80;
        v93 = a4;
        v94 = v63;
        v95 = v8;
        v96 = *v9;
        v97 = *(v9 + 16);
        v98 = *(v9 + 32);
        v99 = *(v9 + 48);
        HIDWORD(v92) = *(a4 + 8);
        v82 = vmaxq_f32(v102, v84);
        v83[0] = vminq_f32(v102, v84);
        (*(*v8 + 128))(v8, &v87, v83, &v82);
      }

      C3DSceneSourcePerformConsistencyCheck(&v87);
    }
  }

  else
  {
    *v102.var0.var0 = &unk_282DC8F18;
    v105 = 0;
    v106 = 0;
    v104 = *(a4 + 8);
    v100 = 953267991;
    v101 = 0;
    btSubsimplexConvexCast::btSubsimplexConvexCast(v83, &v107, v8, &v87);
    if (btSubsimplexConvexCast::calcTimeOfImpact(v83, a1, a2, v9, v9, &v102))
    {
      v41 = vmulq_f32(v103, v103);
      if (vadd_f32(vpadd_f32(*v41.i8, *v41.i8), *&vextq_s8(v41, v41, 8uLL)).f32[0] > 0.0001 && v104 < *(a4 + 8))
      {
        v42 = vmulq_f32(v103, *a1);
        v43 = vmulq_f32(v103, a1[1]);
        v44 = vmulq_f32(v103, a1[2]);
        v44.i32[3] = 0;
        *v43.f32 = vadd_f32(vpadd_f32(*v42.i8, *v43.f32), vzip1_s32(*&vextq_s8(v42, v42, 8uLL), *&vextq_s8(v43, v43, 8uLL)));
        *&v43.u32[2] = vpadd_f32(vpadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL)), 0);
        *v42.i8 = vmul_f32(*v43.f32, *v43.f32);
        v103 = vmulq_n_f32(v43, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v42.i8, *v42.i8), vmul_f32(*&v43.u32[2], *&v43.u32[2])).f32[0]));
        v84 = a3[2];
        v85 = v103;
        v86 = v104;
        (*(*a4 + 24))(a4, &v84, 1);
      }
    }

    C3DSceneSourcePerformConsistencyCheck(v83);
  }

  return C3DSceneSourcePerformConsistencyCheck(&v107);
}

void btDbvt::rayTest(void *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4)
{
  v64 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return;
  }

  v7 = vsubq_f32(*a3, *a2);
  v7.i32[3] = 0;
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_n_f32(v7, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]));
  v59 = *v9.f32;
  if (v9.f32[2] == 0.0)
  {
    v10 = 1.0e18;
  }

  else
  {
    v10 = 1.0 / v9.f32[2];
  }

  v11 = vmulq_f32(v9, v7);
  v62 = vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL)).u32[0];
  v12 = btAlignedAllocInternal(1024, 16);
  bzero(v12 + 1, 0x3F8uLL);
  v13 = *&v62;
  __asm { FMOV            V0.2S, #1.0 }

  v19 = vbsl_s8(vceqz_f32(v59), vdup_n_s32(0x5D5E0B6Bu), vdiv_f32(_D0, v59));
  v20 = &v63[v19.f32[0] < 0.0];
  v21 = &v63[v19.f32[0] >= 0.0];
  v22 = &v63[v10 < 0.0] + 2;
  v23 = &v63[v10 >= 0.0] + 2;
  LODWORD(v24) = 1;
  v25 = 126;
  *v12 = a1;
  v54 = 128;
  v26 = &v63[v19.f32[1] < 0.0] + 1;
  v27 = &v63[v19.f32[1] >= 0.0] + 1;
  v28 = 128;
  v56 = a4;
  v57 = v21;
  v58 = v19;
  do
  {
    while (1)
    {
      v29 = v24;
      v24 = v24 - 1;
      v30 = v12[v24];
      v31 = v30[1];
      v63[0] = *v30;
      v63[1] = v31;
      LODWORD(v31) = *v20;
      v32.i32[0] = *v21;
      v32.i32[1] = *v26;
      v33 = vmul_f32(v19, vsub_f32(v32, *a2->f32));
      DWORD1(v31) = *v27;
      v34 = vmul_f32(v19, vsub_f32(*&v31, *a2->f32));
      if (v34.f32[0] > v34.f32[1] || v33.f32[1] > v33.f32[0])
      {
        goto LABEL_31;
      }

      if (v33.f32[1] > v34.f32[0])
      {
        v34.f32[0] = v33.f32[1];
      }

      if (v34.f32[1] < v33.f32[0])
      {
        v33.f32[0] = v34.f32[1];
      }

      v36 = a2->f32[2];
      v37 = v10 * (*v22 - v36);
      v38 = v10 * (*v23 - v36);
      if (v34.f32[0] > v38 || v37 > v33.f32[0])
      {
        goto LABEL_31;
      }

      if (v37 > v34.f32[0])
      {
        v34.f32[0] = v37;
      }

      if (v38 < v33.f32[0])
      {
        v33.f32[0] = v38;
      }

      if (v34.f32[0] >= v13 || v33.f32[0] <= 0.0)
      {
        goto LABEL_31;
      }

      if (*(v30 + 6))
      {
        break;
      }

      v60 = v28;
      v42 = v30;
      v43 = v22;
      v44 = v23;
      v45 = v20;
      v46 = v25;
      (*(*a4 + 24))(a4, v42);
      v25 = v46;
      v20 = v45;
      v21 = v57;
      v28 = v60;
      v23 = v44;
      v22 = v43;
      v19 = v58;
      v13 = *&v62;
LABEL_31:
      if (!v24)
      {
        goto LABEL_47;
      }
    }

    if (v24 <= v25)
    {
      v40 = v28;
    }

    else
    {
      v40 = (2 * v28);
      if (v28 <= 2 * v28)
      {
        v47 = v54;
        v52 = (2 * v28);
        v53 = v22;
        if (v28 >= v40 || v54 >= v40)
        {
          v41 = v12;
        }

        else
        {
          v55 = v23;
          if (v28)
          {
            v48 = v28;
            v49 = btAlignedAllocInternal(8 * v40, 16);
            LODWORD(v28) = v48;
            v41 = v49;
          }

          else
          {
            v41 = 0;
          }

          v50 = 0;
          v61 = v28;
          do
          {
            v41[v50] = v12[v50];
            ++v50;
          }

          while (v28 != v50);
          btAlignedFreeInternal(v12);
          v40 = v52;
          v22 = v53;
          v47 = v52;
          v13 = *&v62;
          v19 = v58;
          v23 = v55;
          LODWORD(v28) = v61;
        }

        v54 = v47;
        if (v28 < v40)
        {
          v51 = v23;
          bzero(&v41[v28], 8 * (v28 - 1) + 8);
          v40 = v52;
          v22 = v53;
          v23 = v51;
          v19 = v58;
          v13 = *&v62;
        }
      }

      else
      {
        v41 = v12;
      }

      v25 = (v40 - 2);
      v12 = v41;
      a4 = v56;
    }

    v12[v24] = *(v30 + 5);
    LODWORD(v24) = v29 + 1;
    v12[v29] = *(v30 + 6);
    v28 = v40;
  }

  while (v29 != -1);
LABEL_47:

  btAlignedFreeInternal(v12);
}

uint64_t btCollisionWorld::rayTestSingleInternal(btTransform const&,btTransform const&,btCollisionObjectWrapper const*,btCollisionWorld::RayResultCallback &)::RayTester::ProcessLeaf(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(*(a1 + 16) + 40) + 96 * a2;
  v4 = *(v3 + 64);
  v5 = *v3;
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(a1 + 24);
  v10 = v9[1];
  v11 = v9[2];
  v12 = vmulq_f32(*v9, v8);
  v13 = vmulq_f32(v10, v8);
  *v12.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v12, v12, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vpadd_f32(*v12.f32, *v13.i8));
  v14 = vmulq_f32(v11, v8);
  v14.i32[3] = 0;
  *&v12.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  v7.i32[3] = 0;
  v6.i32[3] = 0;
  v15 = vaddq_f32(v9[3], v12);
  v5.i32[3] = 0;
  v29[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*v9)), v6, *v9->f32, 1), v7, *v9, 2);
  v29[1] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v10.f32[0]), v6, *v10.f32, 1), v7, v10, 2);
  v29[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v11.f32[0]), v6, *v11.f32, 1), v7, v11, 2);
  v29[3] = v15;
  v26[0] = 0;
  v26[1] = v4;
  v26[2] = v2;
  v26[3] = v29;
  v27 = -1;
  v28 = a2;
  v16 = *(a1 + 48);
  v20 = 0;
  v21 = xmmword_21C281170;
  v22 = 0;
  v18 = &unk_282DC8FF8;
  v24 = v16;
  v25 = a2;
  v19 = *(v16 + 8);
  v23 = *(v16 + 48);
  return btCollisionWorld::rayTestSingleInternal(*(a1 + 32), *(a1 + 40), v26, &v18);
}

const btConvexShape *btCollisionWorld::objectQuerySingle(const btConvexShape *a1, uint64_t a2, float32x4_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, float a8)
{
  v9[0] = 0;
  v9[1] = a5;
  v9[2] = a4;
  v9[3] = a6;
  v9[4] = -1;
  return btCollisionWorld::objectQuerySingleInternal(a1, a2, a3, v9, a7, a8);
}

const btConvexShape *btCollisionWorld::objectQuerySingleInternal(const btConvexShape *result, uint64_t a2, float32x4_t *a3, void *a4, float *a5, float a6)
{
  v11 = result;
  v131 = *MEMORY[0x277D85DE8];
  v12 = a4[1];
  v13 = a4[3];
  v14 = *(v12 + 8);
  if (v14 <= 19)
  {
    v121.i64[0] = &unk_282DC8F18;
    v129 = 0;
    v130 = a6;
    v128 = a5[2];
    v119 = 953267991;
    v120 = 0;
    v102.i64[0] = &unk_282DCAB50;
    btContinuousConvexCollision::btContinuousConvexCollision(v103, result, v12, v108, &v102);
    if ((*(v103[0].i64[0] + 16))(v103, a2, a3, v13, v13, &v121))
    {
      v15 = vmulq_f32(v126, v126);
      v16 = vadd_f32(vpadd_f32(*v15.i8, *v15.i8), *&vextq_s8(v15, v15, 8uLL)).f32[0];
      if (v16 > 0.0001 && v128 < a5[2])
      {
        v126 = vmulq_n_f32(v126, 1.0 / sqrtf(v16));
        v104 = a4[2];
        v105 = v126;
        v106 = v127;
        v107 = v128;
        (*(*a5 + 24))(a5, &v104, 1);
      }
    }

    v17 = v103;
    return C3DSceneSourcePerformConsistencyCheck(v17);
  }

  if ((v14 - 21) > 8)
  {
    if (v14 == 31 && *(v12 + 28) >= 1)
    {
      v53 = 0;
      v54 = 0;
      do
      {
        v55 = (*(v12 + 40) + v53);
        v57 = *v55;
        v56 = v55[1];
        v58 = v55[2];
        v59 = v55[3];
        v60 = v55[4].i64[0];
        v57.i32[3] = 0;
        v56.i32[3] = 0;
        v61 = v13[1];
        v58.i32[3] = 0;
        v62 = v13[2];
        v63 = v13[3];
        v64 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, v61.f32[0]), v56, *v61.f32, 1), v58, v61, 2);
        v65 = vmulq_f32(v59, *v13);
        v66 = vmulq_f32(v59, v61);
        v67 = vmulq_f32(v59, v62);
        v67.i32[3] = 0;
        *v66.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v65, v65, 8uLL), *&vextq_s8(v66, v66, 8uLL)), vpadd_f32(*v65.i8, *v66.f32));
        *&v66.u32[2] = vpadd_f32(vpadd_f32(*v67.i8, *&vextq_s8(v67, v67, 8uLL)), 0);
        v108[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, COERCE_FLOAT(*v13)), v56, *v13->f32, 1), v58, *v13, 2);
        v108[1] = v64;
        v108[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57, v62.f32[0]), v56, *v62.f32, 1), v58, v62, 2);
        v108[3] = vaddq_f32(v66, v63);
        v122 = xmmword_21C281170;
        v121.i64[0] = &unk_282DC9088;
        v123.i64[0] = 0;
        v123.i64[1] = a5;
        LODWORD(v124) = v54;
        v121.f32[2] = a5[2];
        v68 = a4[2];
        v104.i64[0] = a4;
        v104.i64[1] = v60;
        v105.i64[0] = v68;
        v105.i64[1] = v108;
        LODWORD(v106) = -1;
        DWORD1(v106) = v54;
        result = btCollisionWorld::objectQuerySingleInternal(v11, a2, a3, &v104, &v121, a6);
        ++v54;
        v53 += 96;
      }

      while (v54 < *(v12 + 28));
    }
  }

  else
  {
    if (v14 == 28)
    {
      *&v108[0] = &unk_282DC8F18;
      v112 = 0;
      v113 = a6;
      v111 = a5[2];
      btContinuousConvexCollision::btContinuousConvexCollision(&v104, result, v12);
      if ((*(v104.i64[0] + 16))(&v104, a2, a3, v13, v13, v108))
      {
        v69 = vmulq_f32(v109, v109);
        v70 = vadd_f32(vpadd_f32(*v69.i8, *v69.i8), *&vextq_s8(v69, v69, 8uLL)).f32[0];
        if (v70 > 0.0001 && v111 < a5[2])
        {
          v109 = vmulq_n_f32(v109, 1.0 / sqrtf(v70));
          v121 = a4[2];
          v122 = v109;
          v123 = v110;
          *&v124 = v111;
          (*(*a5 + 24))(a5, &v121, 1);
        }
      }

      v17 = &v104;
      return C3DSceneSourcePerformConsistencyCheck(v17);
    }

    if (v14 == 21)
    {
      v18 = v13[1];
      v19 = v13[2];
      v20 = vtrn1q_s32(*v13, v18);
      v21 = *a3;
      v22 = a3[1];
      v21.i32[3] = 0;
      v22.i32[3] = 0;
      v24 = a3[2];
      v23 = a3[3];
      v24.i32[3] = 0;
      v25 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v21, *v13->f32, 1), v22, *v18.f32, 1), v24, *v19.f32, 1);
      v26 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v21, COERCE_FLOAT(*v13)), v22, v18.f32[0]), v24, v19.f32[0]);
      v27.i64[0] = vextq_s8(v20, v20, 8uLL).u64[0];
      v20.i64[1] = v19.u32[0];
      v28.i64[0] = 0x8000000080000000;
      v28.i64[1] = 0x8000000080000000;
      v29 = veorq_s8(v13[3], v28);
      v30 = vmulq_f32(v20, v29);
      *v31.f32 = vzip2_s32(*v13->f32, *v18.f32);
      *&v31.u32[2] = vzip2_s32(*v19.f32, 0);
      v32 = vmulq_f32(v31, v29);
      *v32.f32 = vadd_f32(vpadd_f32(*v30.i8, *v32.f32), vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v32, v32, 8uLL)));
      v27.i64[1] = vextq_s8(v19, v19, 8uLL).u32[0];
      v33 = vmulq_f32(v27, v29);
      v33.i32[3] = 0;
      *&v32.u32[2] = vpadd_f32(vpadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL)), 0);
      v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v21, *v13, 2), v22, v18, 2), v24, v19, 2);
      v35 = *(a2 + 48);
      v36 = vmulq_f32(v20, v35);
      v37 = vmulq_f32(v31, v35);
      v38 = vmulq_f32(v27, v35);
      v38.i32[3] = 0;
      *v36.f32 = vadd_f32(vpadd_f32(*v36.f32, *v37.i8), vzip1_s32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(v37, v37, 8uLL)));
      *&v36.u32[2] = vpadd_f32(vpadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)), 0);
      v104 = vaddq_f32(v32, v36);
      v39 = vmulq_f32(v20, v23);
      v40 = vmulq_f32(v31, v23);
      v41 = vmulq_f32(v27, v23);
      v41.i32[3] = 0;
      *v39.f32 = vadd_f32(vpadd_f32(*v39.f32, *v40.i8), vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v40, v40, 8uLL)));
      *&v39.u32[2] = vpadd_f32(vpadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)), 0);
      v103[0] = vaddq_f32(v32, v39);
      v121 = v26;
      v122 = v25;
      v123 = v34;
      v125 = 0;
      v124 = 0;
      v42 = a4[2];
      v43 = (*(*v12 + 96))(v12);
      btTriangleConvexcastCallback::btTriangleConvexcastCallback(v108, v11, a2, a3, v13, v43);
      *&v108[0] = &unk_282DC9028;
      v116 = a5;
      v117 = v42;
      v118 = v12;
      v114 = *(a5 + 2);
      v115 = a6;
      v44 = (*(*v11 + 16))(v11, &v121, &v102, &v101);
      btBvhTriangleMeshShape::performConvexcast(v12, v108, &v104, v103, &v102, &v101, v44, v45, v46, v47, v48, v49, v50, v51);
    }

    else
    {
      v71 = v13[1];
      v72 = v13[2];
      v73 = vtrn1q_s32(*v13, v71);
      v74 = vzip2_s32(*v72.f32, 0);
      v75 = *a3;
      v76 = a3[1];
      v75.i32[3] = 0;
      v76.i32[3] = 0;
      v77 = vextq_s8(v72, v72, 8uLL).u32[0];
      v79 = a3[2];
      v78 = a3[3];
      v79.i32[3] = 0;
      v80 = vmlaq_laneq_f32(vmulq_laneq_f32(v75, *v13, 2), v76, v71, 2);
      v81 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v75, *v13->f32, 1), v76, *v71.f32, 1), v79, *v72.f32, 1);
      v82 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v75, COERCE_FLOAT(*v13)), v76, v71.f32[0]), v79, v72.f32[0]);
      v83 = vmlaq_laneq_f32(v80, v79, v72, 2);
      v76.i64[0] = vextq_s8(v73, v73, 8uLL).u64[0];
      v73.i64[1] = v72.u32[0];
      v72.i64[0] = 0x8000000080000000;
      v72.i64[1] = 0x8000000080000000;
      v84 = veorq_s8(v13[3], v72);
      v85 = vmulq_f32(v73, v84);
      *v86.f32 = vzip2_s32(*v13->f32, *v71.f32);
      *&v86.u32[2] = v74;
      v87 = vmulq_f32(v86, v84);
      v76.i64[1] = v77;
      v88 = vmulq_f32(v76, v84);
      v88.i32[3] = 0;
      v89 = *(a2 + 48);
      v90 = vmulq_f32(v73, v89);
      v91 = vmulq_f32(v86, v89);
      v92 = vmulq_f32(v76, v89);
      v92.i32[3] = 0;
      *v90.f32 = vadd_f32(vpadd_f32(*v90.f32, *v91.i8), vzip1_s32(*&vextq_s8(v90, v90, 8uLL), *&vextq_s8(v91, v91, 8uLL)));
      *&v90.u32[2] = vpadd_f32(vpadd_f32(*v92.i8, *&vextq_s8(v92, v92, 8uLL)), 0);
      v93 = vmulq_f32(v73, v78);
      v94 = vmulq_f32(v86, v78);
      v95 = vmulq_f32(v76, v78);
      v95.i32[3] = 0;
      *v94.f32 = vadd_f32(vpadd_f32(*v93.i8, *v94.f32), vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *&vextq_s8(v94, v94, 8uLL)));
      *&v94.u32[2] = vpadd_f32(vpadd_f32(*v95.i8, *&vextq_s8(v95, v95, 8uLL)), 0);
      *v96.f32 = vadd_f32(vpadd_f32(*v85.i8, *v87.i8), vzip1_s32(*&vextq_s8(v85, v85, 8uLL), *&vextq_s8(v87, v87, 8uLL)));
      *&v96.u32[2] = vpadd_f32(vpadd_f32(*v88.i8, *&vextq_s8(v88, v88, 8uLL)), 0);
      v99 = vaddq_f32(v96, v94);
      v100 = vaddq_f32(v96, v90);
      v121 = v82;
      v122 = v81;
      v123 = v83;
      v125 = 0;
      v124 = 0;
      v97 = a4[2];
      v98 = (*(*v12 + 96))(v12);
      btTriangleConvexcastCallback::btTriangleConvexcastCallback(v108, v11, a2, a3, v13, v98);
      *&v108[0] = &unk_282DC9058;
      v116 = a5;
      v117 = v97;
      v118 = v12;
      v114 = *(a5 + 2);
      v115 = a6;
      (*(*v11 + 16))(v11, &v121, &v104, v103);
      v101 = vaddq_f32(vmaxq_f32(v100, v99), v103[0]);
      v102 = vaddq_f32(vminq_f32(v100, v99), v104);
      (*(*v12 + 128))(v12, v108, &v102, &v101);
    }

    return C3DSceneSourcePerformConsistencyCheck(v108);
  }

  return result;
}

uint64_t btCollisionWorld::rayTest(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4)
{
  *&v7 = btSingleRayCallback::btSingleRayCallback(v12, a2, a3, a1, a4);
  v8 = *(a1 + 96);
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  return (*(*v8 + 48))(v8, a2, a3, v12, v11, v10, v7);
}

uint64_t btCollisionWorld::convexSweepTest(uint64_t a1, btCollisionShape *a2, uint64_t a3, uint64_t a4, float *a5, float a6)
{
  v12 = *(a3 + 16);
  v25.var0[0] = *a3;
  v25.var0[1] = v12;
  v13 = *(a3 + 48);
  v25.var0[2] = *(a3 + 32);
  v26 = v13;
  v14 = *(a4 + 16);
  v24.var0.var0[0] = *a4;
  v24.var0.var0[1] = v14;
  v15 = *(a4 + 48);
  v24.var0.var0[2] = *(a4 + 32);
  v24.var1 = v15;
  v23.var0.var0[0] = 0.0;
  btTransformUtil::calculateDiffAxisAngle(&v25, &v24, v19, &v23, a5);
  v16 = vmulq_n_f32(v19[0].var0.var0[0], v23.var0.var0[0]);
  v16.var0.var0[3] = 0.0;
  v21 = v16;
  v20 = 0;
  v19[0].var0.var0[0] = xmmword_21C27F910;
  v19[0].var0.var0[1] = xmmword_21C27F8C0;
  v19[0].var0.var0[2] = xmmword_21C27F600;
  v19[0].var1 = 0uLL;
  btMatrix3x3::getRotation(&v25, &v23);
  btMatrix3x3::setRotation(&v19[0].var0, &v23);
  btCollisionShape::calculateTemporalAabb(a2, v19, &v20, &v21, 1.0, &v23, &v22);
  *&v17 = btSingleSweepCallback::btSingleSweepCallback(v19, a2, a3, a4, a1, a5, a6);
  return (*(**(a1 + 96) + 48))(*(a1 + 96), &v26, &v24.var1, v19, &v23, &v22, v17);
}

uint64_t btCollisionWorld::contactTest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a2 + 208) + 16))(*(a2 + 208), a2 + 16, v9, v8);
  v7[0] = &unk_282DC9108;
  v7[1] = a2;
  v7[2] = a1;
  v7[3] = a3;
  return (*(**(a1 + 96) + 56))(*(a1 + 96), v9, v8, v7);
}

uint64_t btCollisionWorld::contactPairTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 208);
  v12[0] = 0;
  v12[1] = v6;
  v12[2] = a2;
  v12[3] = a2 + 16;
  v12[4] = -1;
  v7 = *(a3 + 208);
  v11[0] = 0;
  v11[1] = v7;
  v11[2] = a3;
  v11[3] = a3 + 16;
  v11[4] = -1;
  result = (*(**(a1 + 40) + 16))(*(a1 + 40), v12, v11, 0);
  if (result)
  {
    v9 = result;
    btManifoldResult::btManifoldResult(v10, v12, v11);
    v10[0] = &unk_282DC9130;
    v10[6] = a4;
    (*(*v9 + 16))(v9, v12, v11, a1 + 48, v10);
    (**v9)(v9);
    return (*(**(a1 + 40) + 120))(*(a1 + 40), v9);
  }

  return result;
}

uint64_t btCollisionWorld::debugDrawObject(btCollisionWorld *this, const btTransform *a2, const btCollisionShape *a3, const btVector3 *a4)
{
  v8 = (*(*this + 40))(this);
  result = (*(*v8 + 112))(v8, a2, 1.0);
  var1 = a3->var1;
  if (var1 > 10)
  {
    if (var1 <= 16)
    {
      if (var1 == 11)
      {
        var0_high = HIDWORD(a3[3].var0);
        v63 = a3[3].var1;
        v14 = *(*(*(*this + 40))(this) + 168);
        v15.n128_u32[0] = var0_high;
        v16.n128_u32[0] = v63;

        return v14(v15, v16);
      }

      if (var1 == 13)
      {
        var0_low = SLODWORD(a3[3].var0);
        v48 = (*(a3->var0 + 23))(a3);
        v172 = *&a3[2].var0;
        v49 = (*(a3->var0 + 12))(a3);
        v168 = LODWORD(v49);
        v50 = (*(a3->var0 + 12))(a3);
        v166 = LODWORD(v50);
        *&v51 = (*(a3->var0 + 12))(a3);
        v52.i64[0] = __PAIR64__(v166, v168);
        v52.i64[1] = v51;
        v178 = vaddq_f32(v172, v52);
        v53 = v178.i32[var0_low];
        v54 = *(*(*(*this + 40))(this) + 160);
        v55.n128_f32[0] = v48;
        v56.n128_u32[0] = v53;

        return v54(v55, v56);
      }
    }

    else
    {
      switch(var1)
      {
        case 17:
          goto LABEL_28;
        case 28:
          v80 = a3[3].var1;
          v81 = *(*(*(*this + 40))(this) + 176);
          v82.n128_u32[0] = v80;

          return v81(v82);
        case 31:
          v17 = HIDWORD(a3[1].var0);
          if (v17 >= 1)
          {
            v18 = v17 + 1;
            v19 = 96 * v17;
            do
            {
              v20 = (a3[1].var2 + v19);
              v21 = v20[-6];
              v22 = v20[-5];
              v23 = v20[-4];
              v24 = v20[-3];
              v21.i32[3] = 0;
              v25 = v20[-2].i64[0];
              v22.i32[3] = 0;
              v23.i32[3] = 0;
              v26 = a2->var0.var0[1];
              v27 = a2->var0.var0[2];
              v28 = vmlaq_lane_f32(vmulq_n_f32(v21, v27.f32[0]), v22, *v27.f32, 1);
              v29 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v26.f32[0]), v22, *v26.f32, 1), v23, v26, 2);
              v30 = vmulq_f32(v24, a2->var0.var0[0]);
              v31 = vmulq_f32(v24, v27);
              v31.i32[3] = 0;
              v32 = vmulq_f32(v24, v26);
              v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*a2->var0.var0)), v22, *a2->var0.var0[0].var0.var0, 1), v23, a2->var0.var0[0], 2);
              *v22.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vpadd_f32(*v30.i8, *v32.i8));
              *&v22.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
              v34 = vaddq_f32(v22, a2->var1);
              v178 = v33;
              v179 = v29;
              v180 = vmlaq_laneq_f32(v28, v23, v27, 2);
              v181 = v34;
              result = (*(*this + 56))(this, &v178, v25, a4);
              --v18;
              v19 -= 96;
            }

            while (v18 > 1);
          }

          return result;
      }
    }

LABEL_42:
    if (var1 <= 6)
    {
      var0 = a3[3].var0;
      if (var0)
      {
        if (*(var0 + 11) >= 1)
        {
          v84 = 0;
          do
          {
            v85 = var0[7];
            v86 = &v85[6 * v84];
            v87 = *(v86 + 1);
            v170 = *(v86 + 1);
            if (v87 < 1)
            {
              v90 = 0uLL;
            }

            else
            {
              v88 = 0;
              v89 = *(*(v86 + 2) + 4 * v87 - 4);
              v90 = 0uLL;
              do
              {
                v91 = *(v85[6 * v84 + 2] + 4 * v88);
                v175 = vaddq_f32(v90, *(var0[3] + v91));
                v92 = (*(*this + 40))(this);
                v93 = var0[3];
                v94 = v93[v89];
                v95 = a2->var0.var0[0];
                v96 = a2->var0.var0[1];
                v97 = vmulq_f32(a2->var0.var0[0], v94);
                v98 = vmulq_f32(v94, v96);
                v99 = a2->var0.var0[2];
                v100 = a2->var1;
                v101 = vmulq_f32(v94, v99);
                v101.i32[3] = 0;
                *v97.f32 = vadd_f32(vpadd_f32(*v97.f32, *v98.i8), vzip1_s32(*&vextq_s8(v97, v97, 8uLL), *&vextq_s8(v98, v98, 8uLL)));
                *&v97.u32[2] = vpadd_f32(vpadd_f32(*v101.i8, *&vextq_s8(v101, v101, 8uLL)), 0);
                v178 = vaddq_f32(v97, v100);
                v102 = v93[v91];
                v103 = vmulq_f32(v95, v102);
                v104 = vmulq_f32(v96, v102);
                v105 = vmulq_f32(v99, v102);
                v105.i32[3] = 0;
                *v103.f32 = vadd_f32(vpadd_f32(*v103.f32, *v104.i8), vzip1_s32(*&vextq_s8(v103, v103, 8uLL), *&vextq_s8(v104, v104, 8uLL)));
                *&v103.u32[2] = vpadd_f32(vpadd_f32(*v105.i8, *&vextq_s8(v105, v105, 8uLL)), 0);
                v187[0] = vaddq_f32(v100, v103);
                (*(*v92 + 16))(v92, &v178, v187, a4);
                v90 = v175;
                ++v88;
                v85 = var0[7];
                v89 = v91;
              }

              while (v88 < SHIDWORD(v85[6 * v84]));
            }

            v176 = v90;
            v106 = (*(*this + 40))(this);
            result = (*(*v106 + 96))(v106);
            if ((result & 0x4000) != 0)
            {
              v178 = xmmword_21C281190;
              v107 = var0[7] + 48 * v84;
              v108.i64[0] = *(v107 + 32);
              v108.i64[1] = *(v107 + 40);
              v171 = vmulq_n_f32(v176, 1.0 / v170);
              v177 = v108;
              v109 = (*(*this + 40))(this);
              v110 = a2->var0.var0[0];
              v111 = a2->var0.var0[1];
              v112 = vmulq_f32(v171, a2->var0.var0[0]);
              v113 = vmulq_f32(v171, v111);
              v114 = a2->var0.var0[2];
              v115 = a2->var1;
              v116 = vmulq_f32(v171, v114);
              v116.i32[3] = 0;
              *v112.f32 = vadd_f32(vpadd_f32(*v112.f32, *v113.i8), vzip1_s32(*&vextq_s8(v112, v112, 8uLL), *&vextq_s8(v113, v113, 8uLL)));
              *&v112.u32[2] = vpadd_f32(vpadd_f32(*v116.i8, *&vextq_s8(v116, v116, 8uLL)), 0);
              v187[0] = vaddq_f32(v112, v115);
              v117 = vaddq_f32(v171, v177);
              v118 = vmulq_f32(v117, v110);
              v119 = vmulq_f32(v117, v111);
              v120 = vmulq_f32(v117, v114);
              v120.i32[3] = 0;
              *v118.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v118, v118, 8uLL), *&vextq_s8(v119, v119, 8uLL)), vpadd_f32(*v118.f32, *v119.i8));
              *&v118.u32[2] = vpadd_f32(vpadd_f32(*v120.i8, *&vextq_s8(v120, v120, 8uLL)), 0);
              v186 = vaddq_f32(v115, v118);
              result = (*(*v109 + 16))(v109, v187, &v186, &v178);
            }

            ++v84;
          }

          while (v84 < *(var0 + 11));
        }
      }

      else
      {
        result = (*(a3->var0 + 25))(a3);
        if (result >= 1)
        {
          v144 = 0;
          do
          {
            (*(a3->var0 + 26))(a3, v144, &v178, v187);
            v145 = a2->var0.var0[1];
            v146 = vmulq_f32(a2->var0.var0[0], v178);
            v147 = vmulq_f32(v178, v145);
            v148 = a2->var0.var0[2];
            v149 = a2->var1;
            v150 = vmulq_f32(v178, v148);
            v150.i32[3] = 0;
            *v146.f32 = vadd_f32(vpadd_f32(*v146.f32, *v147.i8), vzip1_s32(*&vextq_s8(v146, v146, 8uLL), *&vextq_s8(v147, v147, 8uLL)));
            *&v146.u32[2] = vpadd_f32(vpadd_f32(*v150.i8, *&vextq_s8(v150, v150, 8uLL)), 0);
            v151 = vmulq_f32(a2->var0.var0[0], v187[0]);
            v152 = vmulq_f32(v145, v187[0]);
            v153 = vmulq_f32(v148, v187[0]);
            v153.i32[3] = 0;
            *v151.f32 = vadd_f32(vpadd_f32(*v151.f32, *v152.i8), vzip1_s32(*&vextq_s8(v151, v151, 8uLL), *&vextq_s8(v152, v152, 8uLL)));
            *&v151.u32[2] = vpadd_f32(vpadd_f32(*v153.i8, *&vextq_s8(v153, v153, 8uLL)), 0);
            v185 = vaddq_f32(v149, v151);
            v186 = vaddq_f32(v146, v149);
            v154 = (*(*this + 40))(this);
            (*(*v154 + 16))(v154, &v186, &v185, a4);
            v144 = (v144 + 1);
            result = (*(a3->var0 + 25))(a3);
          }

          while (v144 < result);
        }
      }
    }

    v155 = a3->var1;
    if ((v155 - 21) <= 8)
    {
      v186 = xmmword_21C2A4040;
      v187[0] = xmmword_21C2A4030;
      v156 = (*(*this + 40))(this);
      v178.i64[0] = &unk_282DC9168;
      v157 = a2->var0.var0[0];
      v158 = a2->var0.var0[1];
      v180 = *a4;
      v181 = v157;
      v159 = a2->var0.var0[2];
      v160 = a2->var1;
      v182 = v158;
      v183 = v159;
      v178.i64[1] = &unk_282DC9198;
      v179.i64[0] = v156;
      v184 = v160;
      (*(a3->var0 + 16))(a3, &v178, &v186, v187);
      C3DSceneSourcePerformConsistencyCheck(&v178.u32[2]);
      result = C3DSceneSourcePerformConsistencyCheck(&v178);
      v155 = a3->var1;
    }

    if (v155 == 3)
    {
      v186 = xmmword_21C2A4040;
      v187[0] = xmmword_21C2A4030;
      v161 = (*(*this + 40))(this);
      v178.i64[0] = &unk_282DC9168;
      v162 = a2->var0.var0[0];
      v163 = a2->var0.var0[1];
      v180 = *a4;
      v181 = v162;
      v164 = a2->var0.var0[2];
      v165 = a2->var1;
      v182 = v163;
      v183 = v164;
      v178.i64[1] = &unk_282DC9198;
      v179.i64[0] = v161;
      v184 = v165;
      (*(*a3[5].var0 + 2))(a3[5].var0, &v178.u32[2], &v186, v187);
      C3DSceneSourcePerformConsistencyCheck(&v178.u32[2]);
      return C3DSceneSourcePerformConsistencyCheck(&v178);
    }

    return result;
  }

  if (var1 <= 7)
  {
    if (var1)
    {
      if (var1 == 4)
      {
        v35 = *(&a3[6].var1 + 1);
        if ((v35 + 2) > 4)
        {
          if (v35 >= 3)
          {
            v121 = (v35 / 3);
            v122 = a3[7].var0 + 1;
            do
            {
              var2 = a3[5].var2;
              v124 = *&a3[1].var1;
              v125 = vmulq_f32(var2[*(v122 - 2)], v124);
              v126 = vmulq_f32(v124, var2[*(v122 - 1)]);
              v127 = vmulq_f32(v124, var2[*v122]);
              v128 = a2->var0.var0[0];
              v129 = a2->var0.var0[1];
              v130 = vmulq_f32(v125, a2->var0.var0[0]);
              v131 = vmulq_f32(v125, v129);
              v132 = a2->var0.var0[2];
              v133 = a2->var1;
              v134 = vmulq_f32(v125, v132);
              v134.i32[3] = 0;
              *v130.f32 = vadd_f32(vpadd_f32(*v130.f32, *v131.i8), vzip1_s32(*&vextq_s8(v130, v130, 8uLL), *&vextq_s8(v131, v131, 8uLL)));
              *&v130.u32[2] = vpadd_f32(vpadd_f32(*v134.i8, *&vextq_s8(v134, v134, 8uLL)), 0);
              v135 = vmulq_f32(v126, a2->var0.var0[0]);
              v136 = vmulq_f32(v126, v129);
              v137 = vmulq_f32(v126, v132);
              v137.i32[3] = 0;
              *v135.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v135, v135, 8uLL), *&vextq_s8(v136, v136, 8uLL)), vpadd_f32(*v135.f32, *v136.i8));
              *&v135.u32[2] = vpadd_f32(vpadd_f32(*v137.i8, *&vextq_s8(v137, v137, 8uLL)), 0);
              v178 = vaddq_f32(v130, v133);
              v138 = vmulq_f32(v127, v128);
              v139 = vmulq_f32(v127, v129);
              v140 = vmulq_f32(v127, v132);
              v140.i32[3] = 0;
              *v138.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v138, v138, 8uLL), *&vextq_s8(v139, v139, 8uLL)), vpadd_f32(*v138.f32, *v139.i8));
              *&v138.u32[2] = vpadd_f32(vpadd_f32(*v140.i8, *&vextq_s8(v140, v140, 8uLL)), 0);
              v186 = vaddq_f32(v133, v138);
              v187[0] = vaddq_f32(v133, v135);
              v141 = (*(*this + 40))(this);
              (*(*v141 + 16))(v141, &v178, v187, a4);
              v142 = (*(*this + 40))(this);
              (*(*v142 + 16))(v142, &v178, &v186, a4);
              v143 = (*(*this + 40))(this);
              result = (*(*v143 + 16))(v143, v187, &v186, a4);
              v122 = (v122 + 12);
              --v121;
            }

            while (v121);
          }
        }

        else
        {
          result = (*(a3->var0 + 25))(a3);
          if (result >= 1)
          {
            v36 = 0;
            do
            {
              (*(a3->var0 + 26))(a3, v36, &v178, v187);
              v37 = a2->var0.var0[1];
              v38 = vmulq_f32(a2->var0.var0[0], v178);
              v39 = vmulq_f32(v178, v37);
              v40 = a2->var0.var0[2];
              v41 = a2->var1;
              v42 = vmulq_f32(v178, v40);
              v42.i32[3] = 0;
              *v38.f32 = vadd_f32(vpadd_f32(*v38.f32, *v39.i8), vzip1_s32(*&vextq_s8(v38, v38, 8uLL), *&vextq_s8(v39, v39, 8uLL)));
              *&v38.u32[2] = vpadd_f32(vpadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), 0);
              v43 = vmulq_f32(a2->var0.var0[0], v187[0]);
              v44 = vmulq_f32(v37, v187[0]);
              v45 = vmulq_f32(v40, v187[0]);
              v45.i32[3] = 0;
              *v43.f32 = vadd_f32(vpadd_f32(*v43.f32, *v44.i8), vzip1_s32(*&vextq_s8(v43, v43, 8uLL), *&vextq_s8(v44, v44, 8uLL)));
              *&v43.u32[2] = vpadd_f32(vpadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)), 0);
              v185 = vaddq_f32(v41, v43);
              v186 = vaddq_f32(v38, v41);
              v46 = (*(*this + 40))(this);
              (*(*v46 + 16))(v46, &v186, &v185, a4);
              v36 = (v36 + 1);
              result = (*(a3->var0 + 25))(a3);
            }

            while (v36 < result);
          }
        }

        return result;
      }

      goto LABEL_42;
    }

LABEL_28:
    v173 = *&a3[2].var0;
    v57 = (*(a3->var0 + 12))(a3);
    v169 = LODWORD(v57);
    v58 = (*(a3->var0 + 12))(a3);
    v167 = LODWORD(v58);
    *&v59 = (*(a3->var0 + 12))(a3);
    v60.i64[0] = __PAIR64__(v167, v169);
    v60.i64[1] = v59;
    v178 = vaddq_f32(v173, v60);
    v61 = (*(*this + 40))(this);
    v187[0] = vnegq_f32(v178);
    return (*(*v61 + 144))(v61, v187, &v178, a2, a4);
  }

  if (var1 == 8)
  {
    v64 = (*(a3->var0 + 12))(a3);
    v65 = *(*(*(*this + 40))(this) + 32);
    v66.n128_f32[0] = v64;

    return v65(v66);
  }

  else
  {
    if (var1 != 9)
    {
      v11 = SLODWORD(a3[3].var0);
      v12 = *(&a3[2].var0 + (v11 + 2) % 3);
      v13 = *(&a3[2].var0 + v11);
      v14 = *(*(*(*this + 40))(this) + 152);
      v15.n128_u32[0] = v12;
      v16.n128_u32[0] = v13;

      return v14(v15, v16);
    }

    v67 = HIDWORD(a3[5].var0);
    if (v67 >= 1)
    {
      v68 = v67 - 1;
      do
      {
        v174 = *(a3[5].var2 + v68);
        v69 = (*(*this + 40))(this);
        v70 = *(a3[7].var0 + v68);
        v71 = a2->var0.var0[1];
        v72 = a2->var0.var0[2];
        v73 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, v71.f32[0]), xmmword_21C27F8C0, *v71.f32, 1), xmmword_21C27F600, v71, 2);
        v74 = vmulq_f32(v174, a2->var0.var0[0]);
        v75 = vmulq_f32(v174, v71);
        v76 = vmulq_f32(v174, v72);
        v76.i32[3] = 0;
        *v77.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v74, v74, 8uLL), *&vextq_s8(v75, v75, 8uLL)), vpadd_f32(*v74.i8, *v75.i8));
        *&v77.u32[2] = vpadd_f32(vpadd_f32(*v76.i8, *&vextq_s8(v76, v76, 8uLL)), 0);
        v78 = vaddq_f32(v77, a2->var1);
        v178 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*a2->var0.var0)), xmmword_21C27F8C0, *a2->var0.var0[0].var0.var0, 1), xmmword_21C27F600, a2->var0.var0[0], 2);
        v179 = v73;
        v180 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, v72.f32[0]), xmmword_21C27F8C0, *v72.f32, 1), xmmword_21C27F600, v72, 2);
        v181 = v78;
        result = (*(*v69 + 32))(v69, &v178, a4, v70);
        v79 = v68-- + 1;
      }

      while (v79 > 1);
    }
  }

  return result;
}

void DebugDrawcallback::~DebugDrawcallback(DebugDrawcallback *this)
{
  C3DSceneSourcePerformConsistencyCheck(this + 8);

  C3DSceneSourcePerformConsistencyCheck(this);
}

{
  C3DSceneSourcePerformConsistencyCheck(this + 8);
  C3DSceneSourcePerformConsistencyCheck(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btCollisionWorld::debugDrawWorld(btCollisionWorld *this)
{
  if ((*(*this + 40))(this))
  {
    v2 = (*(*this + 40))(this);
    if (((*(*v2 + 96))(v2) & 8) != 0)
    {
      v3 = (*(**(this + 5) + 72))(*(this + 5));
      v27 = xmmword_21C281190;
      if (v3 >= 1)
      {
        v4 = v3;
        v5 = 0;
        do
        {
          v6 = (*(**(this + 5) + 80))(*(this + 5), v5);
          v7 = *(v6 + 800);
          if (v7 >= 1)
          {
            v8 = (v6 + 168);
            do
            {
              v9 = (*(*this + 40))(this);
              v10 = v8 - 30;
              v11 = v8 - 22;
              v12 = *(v8 - 18);
              v13 = *v8;
              v8 += 48;
              (*(*v9 + 64))(v9, v10, v11, LODWORD(v13), &v27, v12);
              --v7;
            }

            while (v7);
          }

          v5 = (v5 + 1);
        }

        while (v5 != v4);
      }
    }
  }

  result = (*(*this + 40))(this);
  if (result)
  {
    v15 = (*(*this + 40))(this);
    result = (*(*v15 + 96))(v15);
    if ((result & 3) != 0 && *(this + 3) >= 1)
    {
      v16 = 0;
      while (1)
      {
        v17 = *(*(this + 3) + 8 * v16);
        if ((*(v17 + 232) & 0x20) == 0)
        {
          break;
        }

LABEL_34:
        if (++v16 >= *(this + 3))
        {
          return result;
        }
      }

      if (!(*(*this + 40))(this) || (v18 = (*(*this + 40))(this), ((*(*v18 + 96))(v18) & 1) == 0))
      {
LABEL_27:
        result = *(this + 13);
        if (result)
        {
          result = (*(*result + 96))(result);
          if ((result & 2) != 0)
          {
            v25 = xmmword_21C27F910;
            (*(**(v17 + 208) + 16))(*(v17 + 208), v17 + 16, &v27, &v26);
            v21 = vld1q_dup_f32(&gContactBreakingThreshold);
            v21.i32[3] = 0;
            v26 = vaddq_f32(v26, v21);
            v27 = vsubq_f32(v27, v21);
            if (*(this + 64) == 1 && *(v17 + 264) == 2 && (*(v17 + 232) & 3) == 0)
            {
              v22 = v21;
              (*(**(v17 + 208) + 16))(*(v17 + 208), v17 + 80, &v24, &v23);
              v23 = vaddq_f32(v22, v23);
              v24 = vsubq_f32(v24, v22);
              v26 = vmaxq_f32(v26, v23);
              v27 = vminq_f32(v27, v24);
            }

            result = (*(**(this + 13) + 104))(*(this + 13), &v27, &v26, &v25);
          }
        }

        goto LABEL_34;
      }

      v19 = *(v17 + 244);
      if (v19 <= 2)
      {
        if (v19 == 1)
        {
          v20 = xmmword_21C27F8C0;
          goto LABEL_26;
        }

        if (v19 == 2)
        {
          v20 = xmmword_21C2A4060;
          goto LABEL_26;
        }
      }

      else
      {
        if (v19 == 3)
        {
          v20 = xmmword_21C2A4050;
          goto LABEL_26;
        }

        if (v19 == 5)
        {
          v20 = xmmword_21C281190;
LABEL_26:
          v27 = v20;
          (*(*this + 56))(this, v17 + 16, *(v17 + 208), &v27);
          goto LABEL_27;
        }
      }

      v20 = xmmword_21C27F910;
      goto LABEL_26;
    }
  }

  return result;
}

void btCollisionWorld::serializeCollisionObjects(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  if (v4 < 1)
  {
    v7 = 0;
  }

  else
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 24) + 8 * i);
      if (v6[66] == 1)
      {
        (*(*v6 + 48))(v6, a2);
        v4 = *(a1 + 12);
      }
    }

    v7 = v4 > 0;
  }

  v14 = 1;
  v13 = 0;
  v12 = 0;
  v17 = 1;
  v16 = 0;
  v15 = 0;
  v20 = 1;
  v19 = 0;
  v18 = 0;
  v23 = 1;
  v22 = 0;
  v21 = 0;
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(*(a1 + 24) + 8 * v8) + 208);
      v10 = v9;
      if (btHashMap<btHashPtr,btCollisionShape *>::findIndex(v11, &v9) == -1 || !v19)
      {
        v9 = v10;
        btHashMap<btHashPtr,btCollisionShape *>::insert(v11, &v9, &v10);
        (*(*v10 + 120))(v10, a2);
      }

      ++v8;
    }

    while (v8 < *(a1 + 12));
    if (v22 && v23 == 1)
    {
      btAlignedFreeInternal(v22);
    }
  }

  v23 = 1;
  v22 = 0;
  v21 = 0;
  if (v19 && v20 == 1)
  {
    btAlignedFreeInternal(v19);
  }

  v20 = 1;
  v19 = 0;
  v18 = 0;
  if (v16 && v17 == 1)
  {
    btAlignedFreeInternal(v16);
  }

  v17 = 1;
  v16 = 0;
  v15 = 0;
  if (v13)
  {
    if (v14 == 1)
    {
      btAlignedFreeInternal(v13);
    }
  }
}

void btHashMap<btHashPtr,btCollisionShape *>::insert(uint64_t a1, int *a2, void *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a1 + 72);
  Index = btHashMap<btHashPtr,btCollisionShape *>::findIndex(a1, a2);
  if (Index == -1)
  {
    v10 = 9 * ((v7 + v6 + ~((v7 + v6) << 15)) ^ ((v7 + v6 + ~((v7 + v6) << 15)) >> 10));
    v11 = ((v10 ^ (v10 >> 6)) + ~((v10 ^ (v10 >> 6)) << 11)) ^ (((v10 ^ (v10 >> 6)) + ~((v10 ^ (v10 >> 6)) << 11)) >> 16);
    v12 = v8 - 1;
    v13 = *(a1 + 68);
    v14 = *(a1 + 72);
    v15 = v13;
    if (v13 == v14)
    {
      v16 = v13 ? 2 * v13 : 1;
      v15 = *(a1 + 68);
      if (v13 < v16)
      {
        if (v16)
        {
          v17 = btAlignedAllocInternal(8 * v16, 16);
        }

        else
        {
          v17 = 0;
        }

        v15 = *(a1 + 68);
        if (v15 >= 1)
        {
          v18 = 0;
          do
          {
            *(v17 + v18) = *(*(a1 + 80) + v18);
            v18 += 8;
          }

          while (8 * v15 != v18);
        }

        v19 = *(a1 + 80);
        if (v19 && *(a1 + 88) == 1)
        {
          btAlignedFreeInternal(v19);
          v15 = *(a1 + 68);
        }

        *(a1 + 88) = 1;
        *(a1 + 80) = v17;
        *(a1 + 72) = v16;
      }
    }

    *(*(a1 + 80) + 8 * v15) = *a3;
    v20 = v11 & v12;
    *(a1 + 68) = v15 + 1;
    v21 = *(a1 + 100);
    if (v21 == *(a1 + 104))
    {
      v22 = v21 ? 2 * v21 : 1;
      if (v21 < v22)
      {
        if (v22)
        {
          v23 = btAlignedAllocInternal(8 * v22, 16);
          v21 = *(a1 + 100);
        }

        else
        {
          v23 = 0;
        }

        if (v21 >= 1)
        {
          v24 = 0;
          v25 = 8 * v21;
          do
          {
            *(v23 + v24) = *(*(a1 + 112) + v24);
            v24 += 8;
          }

          while (v25 != v24);
        }

        v26 = *(a1 + 112);
        if (v26 && *(a1 + 120) == 1)
        {
          btAlignedFreeInternal(v26);
        }

        *(a1 + 120) = 1;
        *(a1 + 112) = v23;
        *(a1 + 104) = v22;
        v21 = *(a1 + 100);
      }
    }

    *(*(a1 + 112) + 8 * v21) = *a2;
    ++*(a1 + 100);
    if (v14 < *(a1 + 72))
    {
      btHashMap<btHashPtr,btCollisionShape *>::growTables(a1);
      v27 = 9 * ((a2[1] + *a2 + ~((a2[1] + *a2) << 15)) ^ ((a2[1] + *a2 + ~((a2[1] + *a2) << 15)) >> 10));
      v28 = (v27 ^ (v27 >> 6)) + ~((v27 ^ (v27 >> 6)) << 11);
      v20 = (v28 ^ (v28 >> 16)) & (*(a1 + 72) - 1);
    }

    v29 = *(a1 + 16);
    *(*(a1 + 48) + 4 * v13) = *(v29 + 4 * v20);
    *(v29 + 4 * v20) = v13;
  }

  else
  {
    *(*(a1 + 80) + 8 * Index) = *a3;
  }
}

uint64_t btCollisionWorld::serialize(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 64))(a2);
  btCollisionWorld::serializeCollisionObjects(a1, a2);
  v4 = *(*a2 + 72);

  return v4(a2);
}

void btCollisionWorld::rayTestSingleInternal(btTransform const&,btTransform const&,btCollisionObjectWrapper const*,btCollisionWorld::RayResultCallback &)::BridgeTriangleRaycastCallback::~BridgeTriangleRaycastCallback(uint64_t a1)
{
  C3DSceneSourcePerformConsistencyCheck(a1);

  JUMPOUT(0x21CF07610);
}

{
  C3DSceneSourcePerformConsistencyCheck(a1);

  JUMPOUT(0x21CF07610);
}

uint64_t btCollisionWorld::rayTestSingleInternal(btTransform const&,btTransform const&,btCollisionObjectWrapper const*,btCollisionWorld::RayResultCallback &)::BridgeTriangleRaycastCallback::reportHit(float32x4_t *a1, float32x4_t *a2, int a3, int a4, float a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = vmulq_f32(a1[5], *a2);
  v6 = vmulq_f32(*a2, a1[6]);
  v7 = vmulq_f32(*a2, a1[7]);
  v7.i32[3] = 0;
  *v5.i8 = vadd_f32(vpadd_f32(*v5.i8, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
  v5.u64[1] = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
  v11[0] = a3;
  v11[1] = a4;
  v9 = &a1[3].i8[8];
  v8 = a1[3].i64[1];
  v12[0] = *(v9 + 1);
  v12[1] = v11;
  v13 = v5;
  v14 = a5;
  return (*(*v8 + 24))(v8, v12, 1);
}

{
  v15 = *MEMORY[0x277D85DE8];
  v5 = vmulq_f32(a1[5], *a2);
  v6 = vmulq_f32(*a2, a1[6]);
  v7 = vmulq_f32(*a2, a1[7]);
  v7.i32[3] = 0;
  *v5.i8 = vadd_f32(vpadd_f32(*v5.i8, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
  v5.u64[1] = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
  v11[0] = a3;
  v11[1] = a4;
  v9 = &a1[3].i8[8];
  v8 = a1[3].i64[1];
  v12[0] = *(v9 + 1);
  v12[1] = v11;
  v13 = v5;
  v14 = a5;
  return (*(*v8 + 24))(v8, v12, 1);
}

uint64_t btCollisionWorld::rayTestSingleInternal(btTransform const&,btTransform const&,btCollisionObjectWrapper const*,btCollisionWorld::RayResultCallback &)::LocalInfoAdder2::addSingleResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  v5[0] = -1;
  v5[1] = v3;
  if (!*(a2 + 8))
  {
    *(a2 + 8) = v5;
  }

  result = (*(**(a1 + 56) + 24))(*(a1 + 56));
  *(a1 + 8) = *(*(a1 + 56) + 8);
  return result;
}

void btCollisionWorld::objectQuerySingleInternal(btConvexShape const*,btTransform const&,btTransform const&,btCollisionObjectWrapper const*,btCollisionWorld::ConvexResultCallback &,float)::BridgeTriangleConvexcastCallback::~BridgeTriangleConvexcastCallback(uint64_t a1)
{
  C3DSceneSourcePerformConsistencyCheck(a1);

  JUMPOUT(0x21CF07610);
}

{
  C3DSceneSourcePerformConsistencyCheck(a1);

  JUMPOUT(0x21CF07610);
}

float *btCollisionWorld::objectQuerySingleInternal(btConvexShape const*,btTransform const&,btTransform const&,btCollisionObjectWrapper const*,btCollisionWorld::ConvexResultCallback &,float)::BridgeTriangleConvexcastCallback::reportHit(uint64_t a1, __int128 *a2, __int128 *a3, int a4, int a5, float a6)
{
  v14 = *MEMORY[0x277D85DE8];
  v9[0] = a4;
  v9[1] = a5;
  result = *(a1 + 224);
  if (result[2] >= a6)
  {
    v10[0] = *(a1 + 232);
    v10[1] = v9;
    v8 = *a3;
    v11 = *a2;
    v12 = v8;
    v13 = a6;
    return (*(*result + 24))(result, v10, 1);
  }

  return result;
}

{
  v14 = *MEMORY[0x277D85DE8];
  v9[0] = a4;
  v9[1] = a5;
  result = *(a1 + 224);
  if (result[2] >= a6)
  {
    v10[0] = *(a1 + 232);
    v10[1] = v9;
    v8 = *a3;
    v11 = *a2;
    v12 = v8;
    v13 = a6;
    return (*(*result + 24))(result, v10, 0);
  }

  return result;
}

uint64_t btCollisionWorld::objectQuerySingleInternal(btConvexShape const*,btTransform const&,btTransform const&,btCollisionObjectWrapper const*,btCollisionWorld::ConvexResultCallback &,float)::LocalInfoAdder::addSingleResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v5[0] = -1;
  v5[1] = v3;
  if (!*(a2 + 8))
  {
    *(a2 + 8) = v5;
  }

  result = (*(**(a1 + 40) + 24))(*(a1 + 40));
  *(a1 + 8) = *(*(a1 + 40) + 8);
  return result;
}

float32x2_t btSingleRayCallback::btSingleRayCallback(uint64_t a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_282DC90B8;
  v5 = *a2;
  *(a1 + 48) = *a2;
  v6 = *a3;
  *(a1 + 224) = a4;
  *(a1 + 232) = a5;
  *(a1 + 64) = v6;
  *(a1 + 80) = xmmword_21C27F910;
  *(a1 + 96) = xmmword_21C27F8C0;
  *(a1 + 112) = xmmword_21C27F600;
  *(a1 + 128) = v5;
  *(a1 + 144) = xmmword_21C27F910;
  *(a1 + 160) = xmmword_21C27F8C0;
  *(a1 + 176) = xmmword_21C27F600;
  *(a1 + 192) = v6;
  v7 = vsubq_f32(*a3, *a2);
  v7.i32[3] = 0;
  v8 = vmulq_f32(v7, v7);
  v9 = vmulq_n_f32(v7, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]));
  __asm { FMOV            V5.2S, #1.0 }

  v15 = vbsl_s8(vceqz_f32(*v9.f32), vdup_n_s32(0x5D5E0B6Bu), vdiv_f32(_D5, *v9.f32));
  *(a1 + 16) = v15;
  v16 = 1.0 / v9.f32[2];
  if (v9.f32[2] == 0.0)
  {
    v16 = 1.0e18;
  }

  *(a1 + 24) = v16;
  *(a1 + 32) = vand_s8(vcltz_f32(v15), 0x100000001);
  *(a1 + 40) = v16 < 0.0;
  v17 = vsubq_f32(v6, v5);
  v17.i32[3] = 0;
  v18 = vmulq_f32(v9, v17);
  result = vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL));
  *(a1 + 44) = result.i32[0];
  return result;
}

BOOL btSingleRayCallback::process(float32x4_t *a1, uint64_t *a2)
{
  v3 = a1[14].i64[1];
  v4 = v3[2];
  if (v4 != 0.0)
  {
    v5 = *a2;
    if ((*(*v3 + 16))(v3, *(*a2 + 200)))
    {
      v6 = *(v5 + 208);
      v7 = a1[14].i64[1];
      v9[0] = 0;
      v9[1] = v6;
      v9[2] = v5;
      v9[3] = v5 + 16;
      v9[4] = -1;
      btCollisionWorld::rayTestSingleInternal(a1 + 5, &a1[9], v9, v7);
    }
  }

  return v4 != 0.0;
}

void btTransformUtil::calculateDiffAxisAngle(float32x4_t *this, const btTransform *a2, const btTransform *a3, btVector3 *a4, float *a5)
{
  v7 = this[1].f32[1];
  _D7.i32[0] = this[1].i32[2];
  _S2 = this[1].f32[0];
  _Q1 = *this;
  v11 = *this[2].f32;
  v12 = vrev64_s32(v11);
  _S17 = v11.i32[1];
  v14.f32[0] = vmuls_lane_f32(-_D7.f32[0], v11, 1) + (v7 * this[2].f32[2]);
  v15 = vdup_lane_s32(*this->f32, 0);
  v15.f32[0] = v7;
  _Q22 = *this;
  _Q22.f32[0] = _S2;
  v17 = vmla_f32(vmul_f32(v11, vneg_f32(v15)), v12, *_Q22.f32);
  *_Q22.f32 = vdup_laneq_s32(*this, 2);
  _Q22.f32[0] = _S2;
  v12.i32[0] = this[2].i32[2];
  v18 = vmul_f32(v12, vneg_f32(*_Q22.f32));
  __asm { FMLA            S22, S7, V1.S[1] }

  _D7.i32[1] = this[2].i32[2];
  v23 = vmla_f32(v18, vzip1_s32(v11, *this->f32), _D7);
  v14.i32[1] = v23.i32[0];
  __asm { FMLA            S4, S17, V1.S[2] }

  v14.i64[1] = v17.u32[0];
  v25 = vmulq_f32(*this, v14);
  *v25.i32 = 1.0 / vadd_f32(vpadd_f32(*v25.i8, *v25.i8), *&vextq_s8(v25, v25, 8uLL)).f32[0];
  v26.f32[0] = v14.f32[0] * *v25.i32;
  *v27.f32 = vmul_n_f32(v23, *v25.i32);
  __asm { FMLA            S21, S2, V1.S[2] }

  *v29.f32 = vmul_n_f32(v17, *v25.i32);
  v26.f32[1] = _S4 * *v25.i32;
  v26.f32[2] = _Q22.f32[0] * *v25.i32;
  v27.f32[2] = _S21 * *v25.i32;
  v29.f32[2] = ((COERCE_FLOAT(*this) * v7) - (COERCE_FLOAT(HIDWORD(this->i64[0])) * _S2)) * *v25.i32;
  v26.i32[3] = 0;
  v27.i32[3] = 0;
  v29.i32[3] = 0;
  v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*&a2->var0.var0[1])), v27, *a2->var0.var0[1].var0.var0, 1), v29, a2->var0.var0[1], 2);
  v31 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*&a2->var0.var0[2])), v27, *a2->var0.var0[2].var0.var0, 1), v29, a2->var0.var0[2], 2);
  v43.var0[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*a2->var0.var0)), v27, *a2->var0.var0[0].var0.var0, 1), v29, a2->var0.var0[0], 2);
  v43.var0[1] = v30;
  v43.var0[2] = v31;
  btMatrix3x3::getRotation(&v43, &v42);
  v32 = vmulq_f32(v42, v42);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  v33 = vmulq_n_f32(v42, 1.0 / sqrtf(vpadd_f32(*v32.f32, *v32.f32).f32[0]));
  v41 = v33;
  v34 = v33.f32[3];
  if (v33.f32[3] < -1.0)
  {
    v34 = -1.0;
  }

  if (v34 > 1.0)
  {
    v34 = 1.0;
  }

  v35 = acosf(v34);
  a4->var0.var0[0] = v35 + v35;
  v36 = v41;
  v36.var0.var0[3] = 0.0;
  a3->var0.var0[0] = v36;
  a3->var0.var0[0].var0.var0[3] = 0.0;
  v37 = a3->var0.var0[0];
  v38 = vmulq_f32(v37, v37);
  v39 = vadd_f32(vpadd_f32(*v38.i8, *v38.i8), *&vextq_s8(v38, v38, 8uLL)).f32[0];
  if (v39 >= 1.4211e-14)
  {
    v40 = vmulq_n_f32(v37, 1.0 / sqrtf(v39));
  }

  else
  {
    v40 = xmmword_21C27F910;
  }

  a3->var0.var0[0] = v40;
}

float32x4_t btMatrix3x3::getRotation(btMatrix3x3 *this, btQuaternion *a2)
{
  v2 = this->var0[0].var0.var0[0];
  v3 = this->var0[1].var0.var0[1];
  v4 = this->var0[2].var0.var0[2];
  v5 = (this->var0[0].var0.var0[0] + v3) + v4;
  if (v5 <= 0.0)
  {
    v9 = v2 >= v4;
    v10 = 2 * (v2 < v4);
    v11 = 2;
    if (v2 < v4)
    {
      v11 = 1;
    }

    v12 = 2;
    if (v3 >= v4)
    {
      v12 = 1;
    }

    if (v2 < v3)
    {
      v10 = v12;
      v9 = 2 * (v3 >= v4);
      v11 = v3 < v4;
    }

    v13 = &this->var0[v10];
    v14 = &this->var0[v9];
    v15 = &this->var0[v11];
    v6 = ((v13->var0.var0[v10] - v14->var0.var0[v9]) - v15->var0.var0[v11]) + 1.0;
    v19.f32[3] = v15->var0.var0[v9] - v14->var0.var0[v11];
    v16 = v15->var0.var0[v10];
    v17 = v13->var0.var0[v11];
    *(&v19 | (4 * v9)) = v14->var0.var0[v10] + v13->var0.var0[v9];
    *(&v19 | (4 * v11)) = v16 + v17;
    *(&v19 | (4 * v10)) = v6;
  }

  else
  {
    v6 = v5 + 1.0;
    v7 = this->var0[0].var0.var0[1];
    v8 = this->var0[0].var0.var0[2] - this->var0[2].var0.var0[0];
    v19.f32[0] = this->var0[2].var0.var0[1] - this->var0[1].var0.var0[2];
    v19.f32[1] = v8;
    v19.f32[2] = this->var0[1].var0.var0[0] - v7;
    v19.f32[3] = v5 + 1.0;
  }

  result = vmulq_n_f32(v19, 0.5 / sqrtf(v6));
  *a2 = result;
  return result;
}