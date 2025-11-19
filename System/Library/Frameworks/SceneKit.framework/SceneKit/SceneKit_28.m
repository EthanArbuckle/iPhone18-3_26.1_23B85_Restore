uint64_t C3DAvoidOccluderConstraintDelegateShouldAvoidOccluder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAvoidOccluderConstraintDelegateShouldAvoidOccluder_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    return v14(*(a1 + 16), a2, a3);
  }

  else
  {
    return 1;
  }
}

void C3DAvoidOccluderConstraintDelegateDidAvoidOccluder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DAvoidOccluderConstraintDelegateShouldAvoidOccluder_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v14(*(a1 + 16), a2, a3);
  }
}

C3D::RenderPass *C3D::CompositePass::CompositePass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  result = C3D::RenderPass::RenderPass(a1, a2, a3);
  *result = &unk_282DC7788;
  *(result + 30) = a4;
  return result;
}

void C3D::CompositePass::setup(C3D::CompositePass *this)
{
  C3D::Pass::setInputCount(this, *(*(this + 30) + 10) + *(*(this + 30) + 12) + *(*(this + 30) + 8) + 1);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 66) |= 4u;
  *(this + 248) = 0;
  v3 = *(this + 30);
  v4 = 1;
  if (v3[10] == 1)
  {
    *(C3D::PassDescriptor::inputAtIndex((this + 32), 1u) + 8) = "Bloom";
    *(this + 249) = 1;
    v3 = *(this + 30);
    v4 = 2;
  }

  if (v3[12] == 1)
  {
    *(C3D::PassDescriptor::inputAtIndex((this + 32), v4) + 8) = "DOF-Final";
    *(this + 253) = v4++;
    v3 = *(this + 30);
  }

  if (v3[8] == 1)
  {
    *C3D::PassDescriptor::inputAtIndex((this + 32), v4) = 1;
    *(C3D::PassDescriptor::inputAtIndex((this + 32), v4) + 8) = "AverageLuminance";
    *(this + 252) = v4;
  }

  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 8) = "COLOR";
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 65) = 0;
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v5 + 66) &= 0xFFFCu;
  v6 = this;
  do
  {
    v7 = v6;
    v6 = *(v6 + 1);
  }

  while (v6);
  C3D::Pass::parentColorDesc(v7, &v10);
  v8 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v8 + 16) = v10;
  *(v8 + 32) = v11;
  C3D::Pass::parentColorDesc(this, &v10);
  if (BYTE8(v10) == 5)
  {
    *(this + 19) = 6;
  }

  else if (C3DEngineContextGetEyeCount(*(this + 2)) >= 2)
  {
    *(this + 19) = C3DEngineContextGetEyeCount(*(this + 2));
    *(this + 120) = 1;
    v9 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
    *(v9 + 66) = *(v9 + 66) & 0xFFFC | 1;
  }
}

uint64_t C3D::CompositePass::compile(C3D::CompositePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = *(this + 30);
  v4 = v3[10] | (2 * v3[20]) | (4 * v3[16]) | (8 * v3[17]) | (16 * v3[14]) | (32 * v3[15]) | (v3[13] << 6) | (v3[8] << 7) | (v3[9] << 8) | (v3[12] << 9);
  v5 = v4 | (*(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28) << 10) | (v3[18] << 26) | (v3[19] << 27) | (v3[22] << 28);
  v6 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))));
  v7 = *(*(this + 3) + 128);
  result = C3D::RenderGraphResourceManager::get(v7, (0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) >> 47));
  *(this + 32) = result;
  if (!result)
  {
    operator new();
  }

  if (*(*(this + 30) + 18) == 1)
  {
    v9 = [-[SCNMTLRenderContext commandQueue](RenderContext) commandBuffer];
    *(this + 33) = C3D::getGrainNoise256(v9, RenderContext, v7);
    return [v9 commit];
  }

  return result;
}

void C3D::CompositePass::execute(uint64_t *a1, uint64_t a2)
{
  v4 = *a2;
  RenderContext = C3DEngineContextGetRenderContext(a1[2]);
  v6 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  PointOfView = C3DEngineContextGetPointOfView(a1[2]);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView);
    if (Camera)
    {
      if (*(a1[30] + 17) == 1 && (ColorGradingEffectSlot = C3DCameraGetColorGradingEffectSlot(Camera, 0)) != 0 && (v10 = ColorGradingEffectSlot, C3DEffectSlotHasImageOrTexture(ColorGradingEffectSlot)))
      {
        v11 = [v6 renderResourceForEffectSlot:v10 withEngineContext:a1[2] didFallbackToDefaultTexture:0];
      }

      else
      {
        v11 = 0;
      }

      v13 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a1[32] + 16) :"state" detail:? :?NSRetainFct];
      if (*(v4 + 3376) != v13)
      {
        *(v4 + 3376) = v13;
        [*(v4 + 3392) setRenderPipelineState:v13];
      }

      v23 = xmmword_21C281190;
      if (C3DEngineContextGetEyeCount(a1[2]) >= 2)
      {
        ViewportAtIndex = C3DEngineContextGetViewportAtIndex(a1[2], *(a2 + 16));
        v22 = vextq_s8(ViewportAtIndex, ViewportAtIndex, 8uLL);
        v21 = vextq_s8(v22, v22, 8uLL).u64[0];
        v24.val[0] = vdiv_f32(vzip1_s32(*v22.i8, v21), vdup_laneq_s32(*(*(*a1 + 88))(a1), 2));
        v24.val[1] = vdiv_f32(vzip2_s32(*v22.i8, v21), vdup_laneq_s32(*(*(*a1 + 88))(a1), 3));
        v15 = &v23;
        vst2_f32(v15, v24);
      }

      SCNMTLRenderCommandEncoder::setVertexBytes(v4, &v23, 0x10uLL, 0);
      SCNMTLRenderCommandEncoder::setFragmentBuffer(v4, *(a1[30] + 40), *(a1[30] + 48), 0);
      SCNMTLRenderCommandEncoder::setFragmentBuffer(v4, *(a1[30] + 56), 0, 1);
      v16 = C3D::Pass::inputTextureAtIndex(a1, *(a1 + 248));
      SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v16, 0);
      if (*(a1[30] + 10) == 1)
      {
        v17 = C3D::Pass::inputTextureAtIndex(a1, *(a1 + 249));
        SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v17, 1uLL);
      }

      SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v11, 2uLL);
      v18 = a1[30];
      if (*(v18 + 12) == 1)
      {
        v19 = C3D::Pass::inputTextureAtIndex(a1, *(a1 + 253));
        SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v19, 5uLL);
        v18 = a1[30];
      }

      if (*(v18 + 18) == 1)
      {
        SCNMTLRenderCommandEncoder::setFragmentTexture(v4, a1[33], 6uLL);
      }

      SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4);
    }

    else if ((C3D::CompositePass::execute(C3D::RenderArgs const&)::done & 1) == 0)
    {
      C3D::CompositePass::execute(C3D::RenderArgs const&)::done = 1;
      v20 = scn_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        C3D::SSAOUpSamplePass::execute(v20);
      }
    }
  }

  else if ((C3D::CompositePass::execute(C3D::RenderArgs const&)::done & 1) == 0)
  {
    C3D::CompositePass::execute(C3D::RenderArgs const&)::done = 1;
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      C3D::SSAOUpSamplePass::execute(v12);
    }
  }
}

void C3D::CompositePassResource::~CompositePassResource(C3D::CompositePassResource *this)
{
  *this = &unk_282DC77F8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC77F8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t kSCNTextureSourceCallbackGetMetalTexture(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = INFINITY;
  v5 = [a2 metalTextureWithEngineContext:a1 textureSampler:a3 nextFrameTime:&v7 status:a4];
  C3DEngineContextSetNextFrameTime(a1, v7);
  return v5;
}

void kSCNTextureSourceCallbackRender(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = INFINITY;
  [a2 renderWithEngineContext:a1 textureSampler:a3 nextFrameTime:&v4];
  C3DEngineContextSetNextFrameTime(a1, v4);
}

uint64_t kSCNImageSourceCallbackCreateTextureProxy(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 textureSource];
  if (v4)
  {
    v5 = v4;
    v8[0] = xmmword_282DC7868;
    v8[1] = *off_282DC7878;
    v6 = C3DTextureProxyCreate();
    C3DTextureProxySetCallbacks(v6, v8);
    C3DTextureProxySetSource(v6, v5);
  }

  else
  {
    C3DEngineContextSetNextFrameTimeToAsap(a1);
    return 0;
  }

  return v6;
}

uint64_t _removeSKRendererLinkToSource(uint64_t a1, void *a2)
{
  __SKSceneClass();
  result = objc_opt_class();
  if (result)
  {
    __SKSceneClass();
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {

      return [a2 setScene:0];
    }
  }

  return result;
}

void __C3DTextureSourceGetSharedRendererContext_block_invoke()
{
  C3DTextureSourceGetSharedRendererContext_rendererContext = C3DRendererContextCreateWithOptions();
  v0 = objc_alloc(MEMORY[0x277CD9388]);
  v1 = [v0 initWithAPI:3 properties:MEMORY[0x277CBEC10]];
  v2 = C3DTextureSourceGetSharedRendererContext_rendererContext;

  C3DRendererContextSetGLContext(v2, v1);
}

uint64_t kSCNTextureSourceCallbackGetOpenGLTexture(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = INFINITY;
  v4 = [a2 textureWithEngineContext:a1 textureSampler:a3 nextFrameTime:&v6];
  C3DEngineContextSetNextFrameTime(a1, v6);
  return v4;
}

void sub_21C1662AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_21C167624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    operator delete(a37);
  }

  vmesh::DisplacedSubdivisionMesh::~DisplacedSubdivisionMesh(&a43);
  _Block_object_dispose(&STACK[0x320], 8);
  v45 = STACK[0x340];
  if (STACK[0x340])
  {
    STACK[0x348] = v45;
    operator delete(v45);
  }

  v46 = *(v43 - 248);
  if (v46)
  {
    *(v43 - 240) = v46;
    operator delete(v46);
  }

  v47 = *(v43 - 224);
  if (v47)
  {
    *(v43 - 216) = v47;
    operator delete(v47);
  }

  v48 = *(v43 - 200);
  if (v48)
  {
    *(v43 - 192) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

uint64_t newUInt32BufferFromUInt16Buffer(void *a1, unsigned int a2, uint64_t a3)
{
  v6 = [a1 contents];
  memset(&v24, 0, sizeof(v24));
  v7 = a2;
  std::vector<unsigned int>::reserve(&v24, a2);
  if (a2)
  {
    end = v24.__end_;
    do
    {
      v10 = *v6++;
      v9 = v10;
      if (end >= v24.__end_cap_.__value_)
      {
        begin = v24.__begin_;
        v12 = end - v24.__begin_;
        v13 = end - v24.__begin_;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v15 = v24.__end_cap_.__value_ - v24.__begin_;
        if ((v24.__end_cap_.__value_ - v24.__begin_) >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&v24, v16);
        }

        v17 = end - v24.__begin_;
        v18 = (4 * v13);
        v19 = (4 * v13 - 4 * v17);
        *v18 = v9;
        end = v18 + 1;
        memcpy(v19, begin, v12);
        v20 = v24.__begin_;
        v24.__begin_ = v19;
        v24.__end_ = end;
        v24.__end_cap_.__value_ = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *end++ = v9;
      }

      v24.__end_ = end;
      --v7;
    }

    while (v7);
  }

  [a1 resourceOptions];
  [SCNMTLResourceManager newBufferWithBytes:a3 length:? options:?];
  v22 = v21;
  if (v24.__begin_)
  {
    v24.__end_ = v24.__begin_;
    operator delete(v24.__begin_);
  }

  return v22;
}

void sub_21C1679CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getTotalTriangleCount(__C3DMesh *a1)
{
  if (C3DMeshGetElementsCount(a1) < 1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = 0;
  do
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(a1, v3, 1);
    v2 = v2 + C3DMeshElementGetPrimitiveCount(ElementAtIndex);
    ++v3;
  }

  while (v3 < C3DMeshGetElementsCount(a1));
  return v2;
}

uint64_t vmesh::DisplacedSubdivisionMesh::loadBaseMeshFromVectors(uint64_t a1, uint64_t *a2, void *a3, void *a4, void *a5)
{
  std::vector<unsigned int>::vector[abi:nn200100](__p, a5);
  BaseMeshFromVectors = vmesh::TriangleMesh::loadBaseMeshFromVectors(a1 + 32, a2, a3, a4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return BaseMeshFromVectors;
}

void sub_21C167D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vmesh::DisplacedSubdivisionMesh::~DisplacedSubdivisionMesh(vmesh::DisplacedSubdivisionMesh *this)
{
  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(this + 392);
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  vmesh::TriangleMesh::~TriangleMesh(this + 25);
  vmesh::TriangleMesh::~TriangleMesh(this + 4);
  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

void vmesh::TriangleMesh::~TriangleMesh(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[12];
  if (v3)
  {
    this[13] = v3;
    operator delete(v3);
  }

  v4 = this[9];
  if (v4)
  {
    this[10] = v4;
    operator delete(v4);
  }

  v5 = this[6];
  if (v5)
  {
    this[7] = v5;
    operator delete(v5);
  }

  v6 = this[3];
  if (v6)
  {
    this[4] = v6;
    operator delete(v6);
  }

  v7 = *this;
  if (*this)
  {
    this[1] = v7;
    operator delete(v7);
  }
}

void *std::vector<unsigned int>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<float>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

void *OUTLINED_FUNCTION_0_13(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{

  return SCNMTLComputeCommandEncoder::setBytes(v11, &a11, 4uLL, 0xCuLL);
}

double OUTLINED_FUNCTION_2_15()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return [v2 countByEnumeratingWithState:va objects:v3 - 200 count:16];
}

void _C3DGlyphCFFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      CFRelease(v2);
    }

    C3DShapeFinalize(a1);
  }
}

CFStringRef _C3DGlyphCFCopyDebugDescription(uint64_t a1)
{
  v2 = CTFontCopyGraphicsFont(*(a1 + 56), 0);
  v3 = CGFontCopyFullName(v2);
  v4 = CGFontCopyGlyphNameForGlyph(v2, *(a1 + 64));
  v5 = CFGetAllocator(a1);
  v6 = CFStringCreateWithFormat(v5, 0, @"<C3DGlyph '%@' in '%@'>", v4, v3);
  CFRelease(v4);
  CFRelease(v3);
  CGFontRelease(v2);
  return v6;
}

uint64_t __C3DGlyphGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DGlyphGetTypeID_typeID = result;
  return result;
}

uint64_t C3DGlyphCreate(const __CTFont *a1, CGGlyph a2, uint64_t a3)
{
  if (C3DGlyphGetTypeID_onceToken != -1)
  {
    C3DGlyphCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DGlyphGetTypeID_typeID, 56);
  PathForGlyph = CTFontCreatePathForGlyph(a1, a2, 0);
  if (*(a3 + 24))
  {
    C3DGlyphCreate_cold_2();
  }

  v8 = PathForGlyph;
  *(a3 + 24) = PathForGlyph;
  v9 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v9;
  v11[2] = *(a3 + 32);
  v12 = *(a3 + 48);
  C3DShapeInit(Instance, v11);
  CGPathRelease(v8);
  *(Instance + 56) = CFRetain(a1);
  *(Instance + 64) = a2;
  return Instance;
}

uint64_t C3DCreateProgram(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4, __CFString *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  Program = glCreateProgram();
  ++*(a1 + 400);
  v27 = 0;
  if (a2)
  {
    v10 = _create_compile_and_attach_shader(a1, a2, &v27, 0, Program, a5);
    v11 = v10;
    v26 = 0;
    if (!a3)
    {
      if (!v10)
      {
        goto LABEL_10;
      }

LABEL_9:
      glLinkProgram(Program);
      goto LABEL_10;
    }
  }

  else
  {
    v26 = 0;
    if (!a3)
    {
      goto LABEL_9;
    }

    v11 = 1;
  }

  v12 = _create_compile_and_attach_shader(a1, a3, &v26, 1u, Program, a5);
  if (v11 && v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  params = 0;
  glGetProgramiv(Program, 0x8B82u, &params);
  if (!params)
  {
    v24 = 0;
    glGetProgramiv(Program, 0x8B84u, &v24);
    MEMORY[0x28223BE20]();
    v14 = &v23 - ((v13 + 15) & 0x1FFFFFFF0);
    *v14 = 0;
    glGetProgramInfoLog(Program, v24, 0, v14);
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      C3DCreateProgram_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
      if (!a5)
      {
        goto LABEL_14;
      }
    }

    else if (!a5)
    {
LABEL_14:
      glDeleteProgram(Program);
      return 0;
    }

    CFStringAppendFormat(a5, 0, @"%s\n", v14);
    goto LABEL_14;
  }

  return Program;
}

BOOL _create_compile_and_attach_shader(uint64_t a1, const __CFString *a2, GLuint *a3, unsigned int a4, GLuint a5, __CFString *a6)
{
  v8 = _create_and_compile_shader(a1, a2, a3, a4, a6);
  if (v8)
  {
    glAttachShader(a5, *a3);
    glDeleteShader(*a3);
  }

  return v8;
}

BOOL _create_and_compile_shader(uint64_t a1, const __CFString *a2, GLuint *a3, unsigned int a4, __CFString *a5)
{
  string[2] = *MEMORY[0x277D85DE8];
  Shader = glCreateShader(*(a1 + 4 * a4 + 1152));
  *a3 = Shader;
  if (!Shader)
  {
    return 0;
  }

  v10 = C3DCreateCStringFromString(a2);
  if (v10)
  {
    v11 = v10;
    string[1] = 0;
    C3DRendererContextGetProfile(a1);
    string[0] = v11;
    params = 0;
    glShaderSource(*a3, 1, string, 0);
    glCompileShader(*a3);
    glGetShaderiv(*a3, 0x8B81u, &params);
    v12 = params != 0;
    if (params)
    {
      free(v11);
      return v12;
    }

    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a2, @"\n");
    if (CFArrayGetCount(ArrayBySeparatingStrings) >= 1)
    {
      v22 = 0;
      *&v21 = 67109378;
      v36 = v21;
      while (1)
      {
        v23 = scn_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          break;
        }

        if (a5)
        {
          goto LABEL_13;
        }

LABEL_14:
        if (++v22 >= CFArrayGetCount(ArrayBySeparatingStrings))
        {
          goto LABEL_18;
        }
      }

      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v22);
      *buf = v36;
      v39 = v22 + 1;
      v40 = 2112;
      v41 = ValueAtIndex;
      _os_log_error_impl(&dword_21BEF7000, v23, OS_LOG_TYPE_ERROR, "Error: %3d: %@", buf, 0x12u);
      if (!a5)
      {
        goto LABEL_14;
      }

LABEL_13:
      v24 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v22);
      CFStringAppendFormat(a5, 0, @"%@\n", v24);
      goto LABEL_14;
    }

LABEL_18:
    CFRelease(ArrayBySeparatingStrings);
    *buf = 0;
    glGetShaderiv(*a3, 0x8B84u, buf);
    MEMORY[0x28223BE20]();
    v27 = &v36 - ((v26 + 15) & 0x1FFFFFFF0);
    *v27 = 0;
    glGetShaderInfoLog(*a3, *buf, 0, v27);
    v28 = scn_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      _create_and_compile_shader_cold_1(v27, v28, v29, v30, v31, v32, v33, v34);
      if (!a5)
      {
        goto LABEL_21;
      }
    }

    else if (!a5)
    {
LABEL_21:
      glDeleteShader(*a3);
      *a3 = 0;
      free(v11);
      return v12;
    }

    CFStringAppendFormat(a5, 0, @"%s\n", v27);
    goto LABEL_21;
  }

  v13 = scn_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    _create_and_compile_shader_cold_2(a2, v13, v14, v15, v16, v17, v18, v19);
  }

  glDeleteShader(*a3);
  v12 = 0;
  *a3 = 0;
  return v12;
}

CFMutableDictionaryRef C3DTextFrameRebuildSharedGlyphs(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 32) = result;
  return result;
}

const void *C3DTextFrameGetCachedGlyph(uint64_t a1, unsigned int a2, void *key, uint64_t a4)
{
  Value = CFDictionaryGetValue(*(a1 + 32), key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    CFDictionaryAddValue(*(a1 + 32), key, Value);
    CFRelease(Value);
  }

  v9 = CFDictionaryGetValue(Value, a2);
  if (!v9)
  {
    v10 = *(a4 + 16);
    v12[0] = *a4;
    v12[1] = v10;
    v12[2] = *(a4 + 32);
    v13 = *(a4 + 48);
    v9 = C3DGlyphCreate(key, a2, v12);
    CFDictionaryAddValue(Value, a2, v9);
    CFRelease(v9);
  }

  return v9;
}

void _C3DTextFrameCFFinalize(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[3];

    CFRelease(v4);
  }
}

CFStringRef _C3DTextFrameCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextFrame>");
}

CFStringRef _C3DTextFrameCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextFrame>");
}

uint64_t __C3DTextFrameGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTextFrameGetTypeID_typeID = result;
  return result;
}

uint64_t C3DTextFrameCreate(const void *a1, uint64_t a2)
{
  if (C3DTextFrameGetTypeID_onceToken != -1)
  {
    C3DTextFrameCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTextFrameGetTypeID_typeID, 24);
  *(Instance + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a1)
  {
    v5 = CFRetain(a1);
    *(Instance + 16) = v5;
    if (v5)
    {
      C3DTextFrameRebuildSharedGlyphs(Instance);
      Lines = CTFrameGetLines(a1);
      if (CFArrayGetCount(Lines) >= 1)
      {
        v7 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Lines, v7);
          v9 = *(a2 + 16);
          v12[0] = *a2;
          v12[1] = v9;
          v12[2] = *(a2 + 32);
          v13 = *(a2 + 48);
          v10 = C3DTextLineCreateWithTextFrame(ValueAtIndex, v12, Instance);
          CFArrayAppendValue(*(Instance + 24), v10);
          CFRelease(v10);
          ++v7;
        }

        while (v7 < CFArrayGetCount(Lines));
      }
    }
  }

  else
  {
    *(Instance + 16) = 0;
  }

  return Instance;
}

void C3D::HDRAverageLuminancePass::HDRAverageLuminancePass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC78D8;
  v5[15] = a4;
}

uint64_t C3D::HDRAverageLuminancePass::setup(C3D::HDRAverageLuminancePass *this)
{
  if (*(*(this + 15) + 9) == 1)
  {
    C3D::Pass::setInputCount(this, 1u);
    *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "FrameLuminance";
  }

  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 8) = "AverageLuminance";
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 66) |= 0x100u;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 24) = 0;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 16) = 240;
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 28) = 25;
  return result;
}

void C3D::HDRAverageLuminancePass::compile(C3D::HDRAverageLuminancePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = (*(*this + 64))(this);
  v4 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v3);
  *(this + 14) = v4;
  if (!v4)
  {
    operator new();
  }

  v5 = C3D::Pass::resource(this);
  v6 = *(this + 3);
  v7 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(this + 14) + 40);
  PersistentResource = C3D::RenderGraph::createPersistentResource(v6, v7);
  C3D::PassResource::setOutputAtIndex(v5, PersistentResource, 0);
}

uint64_t C3D::HDRAverageLuminancePass::execute(C3D::Pass *a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 14) + 48);
  v5 = *(a1 + 15);
  *(v5 + 56) = v4;
  v6 = *(v5 + 9);
  v8 = *(v5 + 40);
  v7 = *(v5 + 48);
  v9 = v3->_buffers[0];
  if (v6 != 1)
  {
    if (v9 == v8)
    {
      if (v3->_offsets[0] == v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3->_buffers[0] = v8;
      v4 = *(*(a1 + 15) + 56);
    }

    v3->_offsets[0] = v7;
    v3->_buffersToBind[0] |= 1uLL;
LABEL_12:
    if (v3->_buffers[1] == v4)
    {
      if (!v3->_offsets[1])
      {
LABEL_23:
        v14 = 16;
        goto LABEL_24;
      }
    }

    else
    {
      v3->_buffers[1] = v4;
    }

    v3->_offsets[1] = 0;
    v3->_buffersToBind[0] |= 2uLL;
    goto LABEL_23;
  }

  if (v9 == v8)
  {
    if (v3->_offsets[0] == v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3->_buffers[0] = v8;
    v4 = *(*(a1 + 15) + 56);
  }

  v3->_offsets[0] = v7;
  v3->_buffersToBind[0] |= 1uLL;
LABEL_8:
  if (v3->_buffers[1] != v4)
  {
    v3->_buffers[1] = v4;
LABEL_15:
    v3->_offsets[1] = 0;
    v3->_buffersToBind[0] |= 2uLL;
    goto LABEL_16;
  }

  if (v3->_offsets[1])
  {
    goto LABEL_15;
  }

LABEL_16:
  v10 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 14) + 40);
  if (v3->_textures[0] != v10)
  {
    v3->_textures[0] = v10;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v11 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v3->_textures[1] != v11)
  {
    v3->_textures[1] = v11;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v12 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 24);
  v13 = [(SCNMTLOpenSubdivComputeEvaluator *)v12 computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOne(v3, v13);
  v14 = 32;
LABEL_24:
  v15 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + v14);
  v16 = [(SCNMTLOpenSubdivComputeEvaluator *)v15 computeEvaluator];

  return SCNMTLComputeCommandEncoder::dispatchOne(v3, v16);
}

void C3D::HDRAverageLuminancePassResource::~HDRAverageLuminancePassResource(C3D::HDRAverageLuminancePassResource *this)
{
  *this = &unk_282DC7948;
  v2 = *(this + 6);
  if (v2)
  {
  }

  v3 = *(this + 5);
  if (v3)
  {
  }

  v4 = *(this + 4);
  if (v4)
  {
  }

  v5 = *(this + 3);
  if (v5)
  {
  }

  v6 = *(this + 2);
  if (v6)
  {
  }
}

{
  *this = &unk_282DC7948;
  v2 = *(this + 6);
  if (v2)
  {
  }

  v3 = *(this + 5);
  if (v3)
  {
  }

  v4 = *(this + 4);
  if (v4)
  {
  }

  v5 = *(this + 3);
  if (v5)
  {
  }

  v6 = *(this + 2);
  if (v6)
  {
  }

  JUMPOUT(0x21CF07610);
}

void C3D::SSAOBlurPass::SSAOBlurPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4, char a5)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v7 = &unk_282DC7968;
  *(v7 + 108) = a5;
  *(v7 + 120) = a4;
}

const char *C3D::SSAOBlurPass::name(C3D::SSAOBlurPass *this)
{
  if (*(this + 108))
  {
    return "SSAOBlurPass-Y";
  }

  else
  {
    return "SSAOBlurPass-X";
  }
}

uint64_t C3D::SSAOBlurPass::setup(C3D::SSAOBlurPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 28) = 115;
  v2 = C3D::Pass::descriptor(**(this + 15));
  v3 = *(C3D::PassDescriptor::outputAtIndex(v2, 0) + 16) / *(*(this + 15) + 12);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 16) = v3;
  v4 = C3D::Pass::descriptor(**(this + 15));
  v5 = *(C3D::PassDescriptor::outputAtIndex(v4, 0) + 18) / *(*(this + 15) + 12);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 18) = v5;
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v6 + 28) = 115;
  v7 = C3D::Pass::descriptor(**(this + 15));
  *(v6 + 16) = *(C3D::PassDescriptor::outputAtIndex(v7, 0) + 16) / *(*(this + 15) + 12);
  v8 = C3D::Pass::descriptor(**(this + 15));
  *(v6 + 18) = *(C3D::PassDescriptor::outputAtIndex(v8, 0) + 18) / *(*(this + 15) + 12);
  if (*(v6 + 24) == 5)
  {
    result = 6;
  }

  else
  {
    result = C3DEngineContextGetEyeCount(*(this + 2));
  }

  *(this + 19) = result;
  return result;
}

uint64_t C3D::SSAOBlurPass::compile(C3D::SSAOBlurPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = *(*(this + 15) + 16) | (2 * *(*(this + 15) + 17)) | (4 * *(*(this + 15) + 12)) | (*(*(this + 15) + 8) << 6) | (*(this + 108) << 10);
  v4 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47));
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

void C3D::SSAOBlurPass::execute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  PointOfView = C3DEngineContextGetPointOfView(*(a1 + 16));
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView);
    if (Camera)
    {
      v7 = Camera;
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(a1 + 16), *(a2 + 8));
      SuperSamplingFactor = C3DEngineContextGetSuperSamplingFactor(*(a1 + 16));
      v9.i32[1] = ViewportAtIndex.n128_i32[1];
      *v9.i32 = *(*(a1 + 120) + 12);
      v22 = vdivq_f32(vmulq_n_f32(ViewportAtIndex, SuperSamplingFactor), vdupq_lane_s32(v9, 0));
      v29 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionDepthThreshold(v7), 0.0);
      v30 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionNormalThreshold(v7), 0.0);
      v28 = fmaxf(C3DCameraGetScreenSpaceAmbientOcclusionBias(v7), 0.0);
      v27 = 1140457472;
      v10 = v22;
      v10.u64[1] = vadd_f32(*v22.f32, *&vextq_s8(v10, v10, 8uLL));
      v26 = v10;
      if (*(a1 + 108))
      {
        v11 = v22.f32[2];
      }

      else
      {
        v11 = ((v22.f32[2] + 256.0) + -1.0) * 0.0039062;
      }

      if (*(a1 + 108))
      {
        v12 = ((v22.f32[3] + 256.0) + -1.0) * 0.0039062;
      }

      else
      {
        v12 = v22.f32[3];
      }

      if (*(a1 + 108))
      {
        v13 = 1;
      }

      else
      {
        v13 = 256;
      }

      if (*(a1 + 108))
      {
        v14 = 256;
      }

      else
      {
        v14 = 1;
      }

      v15 = C3D::Pass::inputTextureAtIndex(a1, 0);
      if (v4->_textures[0] != v15)
      {
        v4->_textures[0] = v15;
        v4->_texturesToBind[0] |= 1uLL;
      }

      v16 = C3D::Pass::outputTextureAtIndex(a1, 0);
      if (v4->_textures[1] != v16)
      {
        v4->_textures[1] = v16;
        v4->_texturesToBind[0] |= 2uLL;
      }

      SCNMTLComputeCommandEncoder::setBytes(v4, v25, 0x40uLL, 0);
      v17 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 112) + 16);
      v18 = [(SCNMTLOpenSubdivComputeEvaluator *)v17 computeEvaluator];
      v24.width = v11;
      v24.height = v12;
      v24.depth = 1;
      v23.width = v13;
      v23.height = v14;
      v23.depth = 1;
      SCNMTLComputeCommandEncoder::dispatch(v4, v18, &v24, &v23);
    }

    else if ((C3D::SSAOBlurPass::execute(C3D::ComputeArgs const&)::done & 1) == 0)
    {
      C3D::SSAOBlurPass::execute(C3D::ComputeArgs const&)::done = 1;
      v20 = scn_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        C3D::SSAOUpSamplePass::execute(v20);
      }
    }
  }

  else if ((C3D::SSAOBlurPass::execute(C3D::ComputeArgs const&)::done & 1) == 0)
  {
    C3D::SSAOBlurPass::execute(C3D::ComputeArgs const&)::done = 1;
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      C3D::SSAOUpSamplePass::execute(v19);
    }
  }
}

void C3D::SSAOBlurPassResource::~SSAOBlurPassResource(C3D::SSAOBlurPassResource *this)
{
  *this = &unk_282DC79D8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC79D8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

void _C3DRasterizerStatesCFFinalize(_BYTE *a1)
{
  if (a1[44] == 1)
  {
    if (os_unfair_lock_trylock(&s_RasterizerStatesRegistryLock))
    {
      v2 = scn_default_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
      {
        _C3DRasterizerStatesCFFinalize_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    if (!CFSetContainsValue(s_RasterizerStatesRegistry, a1))
    {
      v10 = scn_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        _C3DRasterizerStatesCFFinalize_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    CFSetRemoveValue(s_RasterizerStatesRegistry, a1);
    SharedInstance = C3DNotificationCenterGetSharedInstance();
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationRasterizerStatesDidDie", a1, 0, 1u);
  }
}

void C3DRasterizerStatesRelease(CFTypeRef cf)
{
  if (cf)
  {
    if (*(cf + 44) == 1)
    {
      os_unfair_lock_lock(&s_RasterizerStatesRegistryLock);
      CFRelease(cf);

      os_unfair_lock_unlock(&s_RasterizerStatesRegistryLock);
    }

    else
    {

      CFRelease(cf);
    }
  }
}

__n128 C3DRasterizerStatesGetDesc@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRasterizerStatesGetDesc_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *a2 = *(a1 + 16);
  result = *(a1 + 28);
  *(a2 + 12) = result;
  return result;
}

uint64_t C3DRasterizerStatesDefault()
{
  result = kDefaultStates;
  if (!kDefaultStates)
  {
    v1[0] = kDefaultRasterizerStatesDesc;
    *(v1 + 12) = *(&kDefaultRasterizerStatesDesc + 12);
    result = C3DRasterizerStatesCreate(v1);
    kDefaultStates = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1)
{
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;

  return C3DMeshElementGetContent(a1, v1, v3 - 192);
}

__n128 OUTLINED_FUNCTION_3_5()
{
  v1 = *(v0 + 112);
  *v0 = *(v0 + 96);
  *(v0 + 16) = v1;
  result = *(v0 + 128);
  v3 = *(v0 + 144);
  *(v0 + 32) = result;
  *(v0 + 48) = v3;
  return result;
}

void *OUTLINED_FUNCTION_4_8(size_t a1)
{

  return malloc_type_malloc(a1, 0x100004052888210uLL);
}

void sub_21C16BA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t C3DShapeBoundariesSort(uint64_t result, unsigned int a2)
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v17 = __C3DShapeBoundariesSort_block_invoke_3;
  v18 = &unk_278300B60;
  v19 = &__block_literal_global_119;
  v20 = &__block_literal_global_4_6;
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    v3 = result;
    v4 = a2 - 1;
    v5 = (a2 >> 1) + 1;
    do
    {
      result = v17(v16, v3, v5 - 2, v4);
      --v5;
    }

    while (v5 > 1);
    if (v4 >= 1)
    {
      v6 = v4 + 1;
      v7 = 56 * v4;
      do
      {
        v8 = v3 + v7;
        v9 = *(v3 + 48);
        v11 = *(v3 + 16);
        v10 = *(v3 + 32);
        v12 = *v3;
        v14 = *(v3 + v7 + 16);
        v13 = *(v3 + v7 + 32);
        v15 = *(v3 + v7);
        *(v3 + 48) = *(v3 + v7 + 48);
        *(v3 + 16) = v14;
        *(v3 + 32) = v13;
        *v3 = v15;
        *v8 = v12;
        *(v8 + 16) = v11;
        *(v8 + 32) = v10;
        *(v8 + 48) = v9;
        result = v17(v16, v3, 0, v2);
        --v6;
        v2 = (v2 - 1);
        v7 -= 56;
      }

      while (v6 > 1);
    }
  }

  return result;
}

uint64_t __C3DShapeBoundariesSort_block_invoke_3(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = 2 * a3;
  if (2 * a3 < a4)
  {
    v6 = a3;
    v7 = result;
    do
    {
      v8 = v4;
      v9 = v4 | 1;
      result = (*(*(v7 + 32) + 16))();
      if (result)
      {
        v10 = v9;
      }

      else
      {
        v10 = v6;
      }

      if (v9 < a4)
      {
        v11 = v8 + 2;
        result = (*(*(v7 + 32) + 16))();
        if (result)
        {
          v10 = v11;
        }
      }

      if (v10 == v6)
      {
        break;
      }

      result = (*(*(v7 + 40) + 16))();
      v4 = 2 * v10;
      v6 = v10;
    }

    while (2 * v10 < a4);
  }

  return result;
}

uint64_t C3DShapeBoundarySelfIntersects(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  v5 = *a1 + 8;
  v6 = 2;
  v7 = 3;
  v28 = v5;
  while (2)
  {
    v8 = v3;
    v9 = v6;
    v10 = (v5 + 80 * v6);
    v11 = (v4 + 80 * v3);
    v12 = *v11;
    v13 = v11[1];
    v14 = ++v3;
    if (v3 == v1)
    {
      v14 = 0;
    }

    v15 = (v4 + 80 * v14);
    v16 = *v15;
    v17 = v15[1];
    if (v8)
    {
      v18 = -1;
    }

    else
    {
      v18 = -2;
    }

    v19 = (v18 + v1);
    v20 = v7;
    v21 = v9;
    while (v21 <= v19)
    {
      v22 = *(v10 - 1);
      v23 = *v10;
      if (v16 != v22 || v17 != v23)
      {
        v25 = (v4 + 80 * (v20 % v1));
        v26 = v25[1];
        if (*v25 != v12 || v26 != v13)
        {
          v10 += 10;
          ++v20;
          ++v21;
          if (!C3DSegmentIntersectsSegment(v12, v13, v16, v17, v22, v23, *v25, v26))
          {
            continue;
          }
        }
      }

      return 1;
    }

    result = 0;
    v6 = v9 + 1;
    ++v7;
    v5 = v28;
    if (v3 != v1)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t C3DSegmentIntersectsSegment(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if ((a3 - a1) * (a6 - a2) - (a4 - a2) * (a5 - a1) > 0.0 != (a3 - a1) * (a8 - a2) - (a4 - a2) * (a7 - a1) <= 0.0)
  {
    return 0;
  }

  else
  {
    return ((a7 - a5) * (a2 - a6) - (a8 - a6) * (a1 - a5) > 0.0) ^ ((a7 - a5) * (a4 - a6) - (a8 - a6) * (a3 - a5) > 0.0);
  }
}

uint64_t C3DShapeBoundaryGetOrientation(unsigned int *a1)
{
  v1 = a1[12];
  if (!v1)
  {
    v2 = a1[2];
    if (v2)
    {
      v3 = (*a1 + 8);
      v4 = -v2;
      v5 = 0.0;
      v6 = 1;
      do
      {
        if (v4 + v6)
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v5 = v5 + *(v3 - 1) * *(*a1 + 80 * v7 + 8) - *(*a1 + 80 * v7) * *v3;
        v3 += 10;
        ++v6;
      }

      while (v4 + v6 != 1);
      if (v5 < 0.0)
      {
        v1 = 1;
      }

      else
      {
        v1 = 2;
      }
    }

    else
    {
      v1 = 2;
    }

    a1[12] = v1;
  }

  return v1;
}

_DWORD *C3DShapeBoundaryReverse(_DWORD *result)
{
  LODWORD(v1) = result[2];
  if (v1)
  {
    v2 = (*result + 72);
    v3 = result[2];
    do
    {
      v4 = *(v2 - 56);
      v5 = v4;
      if (*v2 == 1)
      {
        v5 = *(v2 - 40);
      }

      *(v2 - 56) = vnegq_f64(v5);
      *(v2 - 40) = vnegq_f64(v4);
      v2 += 80;
      --v3;
    }

    while (v3);
    if (v1 != 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = -1;
      do
      {
        v9 = (*result + v6);
        v19 = v9[2];
        v20 = v9[3];
        v21 = v9[4];
        v17 = *v9;
        v18 = v9[1];
        v10 = (*result + 80 * (v1 + v8));
        *v9 = *v10;
        v11 = v10[4];
        v13 = v10[1];
        v12 = v10[2];
        v9[3] = v10[3];
        v9[4] = v11;
        v9[1] = v13;
        v9[2] = v12;
        v14 = (*result + 80 * (v8 + result[2]));
        v14[2] = v19;
        v14[3] = v20;
        v14[4] = v21;
        *v14 = v17;
        v14[1] = v18;
        ++v7;
        v1 = result[2];
        v6 += 80;
        --v8;
      }

      while (v7 < v1 >> 1);
    }
  }

  v15 = result[12];
  if (v15 == 1)
  {
    v16 = 2;
  }

  else
  {
    if (v15 != 2)
    {
      return result;
    }

    v16 = 1;
  }

  result[12] = v16;
  return result;
}

BOOL C3DIsPathSuperpathOfPath(double *a1, uint64_t *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v3 = *(a1 + 2);
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = *a2;
      v7 = a1[2] + -100.0;
      v8 = *a1;
      v9 = *a1 + 8;
      do
      {
        v10 = 0;
        v11 = (v6 + 80 * v5);
        v12 = *v11;
        v13 = v11[1];
        v14 = v7 - *v11;
        v15 = 1;
        v16 = v9;
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;
          if (v15 == v3)
          {
            v19 = 0;
          }

          else
          {
            v19 = v15;
          }

          v20 = (*&v8 + 80 * v19);
          v21 = v20[1];
          if ((*v20 - v17) * (v13 - v18) - (v21 - v18) * (v12 - v17) >= 0.0 == (*v20 - v17) * (v13 - v18) - (v21 - v18) * (v7 - v17) < 0.0)
          {
            v10 += ((v17 - v12) * -(v13 - v13) + v14 * (v18 - v13) >= 0.0) ^ ((*v20 - v12) * -(v13 - v13) + v14 * (v21 - v13) >= 0.0);
          }

          v16 += 10;
          ++v15;
        }

        while (v15 - v3 != 1);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 = ++v5 >= v2;
      }

      while (v5 != v2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v4;
}

uint64_t C3DShapeResolveSelfIntersectingBoundaries(uint64_t result, _DWORD *a2)
{
  LODWORD(v2) = *a2;
  if (*a2)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = C3DShapeBoundarySelfIntersects((v4 + 56 * v5));
      if (result)
      {
        LODWORD(v2) = v2 - 1;
        if (v5 < v2)
        {
          v6 = v5;
          v7 = v4 + 56 * v5;
          do
          {
            ++v6;
            v8 = *(v7 + 72);
            *v7 = *(v7 + 56);
            *(v7 + 16) = v8;
            *(v7 + 32) = *(v7 + 88);
            *(v7 + 48) = *(v7 + 104);
            v7 += 56;
            v2 = (*a2 - 1);
          }

          while (v6 < v2);
        }

        *a2 = v2;
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v2);
  }

  return result;
}

void C3DShapeBuildConnectedComponents(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(&v101[1] + 4) = *MEMORY[0x277D85DE8];
  v99 = 0;
  v4 = C3DShapeBoundaryMakeWithCGPath(*(a2 + 24), &v99, *(a2 + 4), *(a2 + 20));
  C3DShapeResolveSelfIntersectingBoundaries(v4, &v99);
  v5 = v99;
  if (v99)
  {
    v6 = 0;
    do
    {
      v7 = &v4[56 * v6];
      if (*(v7 + 2) > 1u)
      {
        ++v6;
      }

      else
      {
        free(*v7);
        v8 = v99;
        v9 = v99 - 1;
        if (v6 < v9)
        {
          v10 = &v4[56 * v6];
          v11 = v9 - v6;
          do
          {
            v12 = *(v10 + 72);
            *v10 = *(v10 + 56);
            *(v10 + 1) = v12;
            *(v10 + 2) = *(v10 + 88);
            *(v10 + 6) = *(v10 + 13);
            v10 += 56;
            --v11;
          }

          while (v11);
        }

        if (v8 <= 1)
        {
          v13 = scn_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            C3DShapeBuildConnectedComponents_cold_1(buf, v101, v13);
          }
        }

        v4 = malloc_type_realloc(v4, 56 * --v99, 0x10200403357C6A3uLL);
        v5 = v99;
      }
    }

    while (v6 < v5);
  }

  C3DShapeBoundariesSort(v4, v5);
  if (!v99)
  {
    v14 = 0;
LABEL_36:
    *(a1 + 48) = 0;
    v35 = (a1 + 48);
LABEL_37:
    *(a1 + 40) = 0;
    v39 = (a1 + 40);
    goto LABEL_38;
  }

  v14 = malloc_type_calloc(v99, 0x10uLL, 0x1020040D5A9D86FuLL);
  v15 = v99;
  if (!v99)
  {
    goto LABEL_36;
  }

  v16 = 0;
  v17 = 2;
  do
  {
    *&v14[v17] = malloc_type_calloc(v15, 0x40uLL, 0x1020040D485E09BuLL);
    ++v16;
    v15 = v99;
    v17 += 4;
  }

  while (v16 < v99);
  if (!v99)
  {
    goto LABEL_36;
  }

  for (i = 0; i < v99; ++i)
  {
    v98 = 0;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    v19 = &v4[56 * i];
    v20 = *v19;
    v21 = *(v19 + 1);
    v22 = *(v19 + 2);
    v98 = *(v19 + 6);
    v96 = v21;
    v97 = v22;
    v95 = v20;
    v23 = v15 - 2;
    if ((v15 - 2) < 0)
    {
LABEL_26:
      v30 = *(v14 + 1);
      v31 = *v14;
      *v14 = v31 + 1;
      v32 = v30 + (v31 << 6);
      *(v32 + 8) = v95;
      *(v32 + 24) = v96;
      *(v32 + 40) = v97;
      *(v32 + 56) = v98;
    }

    else
    {
      while (1)
      {
        v24 = &v14[4 * v23];
        v25 = *v24;
        if (v25)
        {
          break;
        }

LABEL_24:
        if (v23-- <= 0)
        {
          goto LABEL_26;
        }
      }

      v26 = 0;
      v27 = *(v24 + 1);
      while (1)
      {
        v28 = *(v27 + 24);
        v93[0] = *(v27 + 8);
        v93[1] = v28;
        v93[2] = *(v27 + 40);
        v94 = *(v27 + 56);
        if (C3DIsPathSuperpathOfPath(v93, &v95))
        {
          break;
        }

        ++v26;
        v27 += 64;
        if (v26 >= v25)
        {
          goto LABEL_24;
        }
      }

      v33 = &v14[4 * (v23 + 1)];
      v34 = *(v33 + 1) + (*v33 << 6);
      *v34 = v27;
      *(v34 + 8) = v95;
      *(v34 + 24) = v96;
      *(v34 + 40) = v97;
      *(v34 + 56) = v98;
      ++*v33;
    }

    v15 = v99;
  }

  *(a1 + 48) = 0;
  v35 = (a1 + 48);
  if (!v15)
  {
    goto LABEL_37;
  }

  LODWORD(v36) = 0;
  for (j = 0; j < v15; j += 2)
  {
    v36 = v36 + v14[4 * j];
  }

  *v35 = v36;
  if (v36)
  {
    v38 = malloc_type_calloc(v36, 0x20uLL, 0x10300409C64945DuLL);
    v15 = v99;
    *(a1 + 40) = v38;
    v39 = (a1 + 40);
    if (!v15)
    {
      goto LABEL_38;
    }

    v40 = v38;
    v89 = v35;
    v90 = v4;
    v91 = v2;
  }

  else
  {
    v89 = (a1 + 48);
    v90 = v4;
    v91 = v2;
    v40 = 0;
    *(a1 + 40) = 0;
    v39 = (a1 + 40);
  }

  v63 = 0;
  v92 = v14;
  do
  {
    v64 = v14;
    v65 = &v14[4 * v63];
    if (*v65)
    {
      v66 = 0;
      v67 = v63 | 1;
      v68 = &v64[4 * (v63 | 1)];
      do
      {
        if (v67 < v15 && (v69 = *v68, v69))
        {
          v70 = 0;
          v71 = *(v68 + 1);
          do
          {
            v72 = *v71;
            v71 += 8;
            if (v72 == *(v65 + 1) + (v66 << 6))
            {
              ++v70;
            }

            --v69;
          }

          while (v69);
        }

        else
        {
          v70 = 0;
        }

        v73 = v70 + 1;
        v40[2] = v73;
        v74 = malloc_type_calloc(v73, 0x38uLL, 0x10200403357C6A3uLL);
        *v40 = v74;
        v75 = *(v65 + 1) + (v66 << 6);
        v76 = *(v75 + 40);
        v77 = *(v75 + 24);
        v78 = *(v75 + 8);
        v74[6] = *(v75 + 56);
        *v74 = v78;
        *(v74 + 1) = v77;
        *(v74 + 2) = v76;
        v15 = v99;
        if (v67 < v99 && *v68)
        {
          v79 = 0;
          v80 = 0;
          do
          {
            v81 = *(v68 + 1);
            if (*(v81 + v79) == *(v65 + 1) + (v66 << 6))
            {
              v82 = *v40 + 56 * v70--;
              v83 = v81 + v79;
              v84 = *(v83 + 8);
              v85 = *(v83 + 24);
              v86 = *(v83 + 40);
              *(v82 + 48) = *(v83 + 56);
              *(v82 + 16) = v85;
              *(v82 + 32) = v86;
              *v82 = v84;
            }

            ++v80;
            v79 += 64;
          }

          while (v80 < *v68);
        }

        v40 += 8;
        ++v66;
      }

      while (v66 < *v65);
    }

    v63 += 2;
    v14 = v92;
  }

  while (v63 < v15);
  if (v15)
  {
    v87 = 0;
    v88 = 2;
    v4 = v90;
    v2 = v91;
    v35 = v89;
    do
    {
      free(*&v92[v88]);
      ++v87;
      v88 += 4;
    }

    while (v87 < v99);
  }

  else
  {
    v4 = v90;
    v2 = v91;
    v35 = v89;
  }

LABEL_38:
  free(v14);
  free(v4);
  v41 = *v35;
  if (v41)
  {
    v42 = 0;
    v43 = *v39;
    do
    {
      v44 = v43 + 32 * v42;
      if (*(v44 + 8))
      {
        v45 = 0;
        v46 = 0;
        do
        {
          Orientation = C3DShapeBoundaryGetOrientation((*v44 + v45));
          if (v46)
          {
            v48 = 2;
          }

          else
          {
            v48 = 1;
          }

          if (Orientation != v48)
          {
            C3DShapeBoundaryReverse((*(*v39 + 32 * v42) + v45));
          }

          ++v46;
          v43 = *v39;
          v44 = *v39 + 32 * v42;
          v45 += 56;
        }

        while (v46 < *(v44 + 8));
        v41 = *v35;
      }

      ++v42;
    }

    while (v42 < v41);
    if (v41)
    {
      v49 = 0;
      v50 = *v39;
      do
      {
        v51 = *(v50 + 32 * v49 + 8);
        if (v51)
        {
          v52 = 0;
          v53 = *(v50 + 32 * v49);
          do
          {
            v54 = (v53 + 56 * v52);
            v55 = v54[2];
            if (v55)
            {
              v56 = (*v54 + 72);
              do
              {
                if (*v56 == 1 && *(v56 - 7) == *(v56 - 5) && *(v56 - 6) == *(v56 - 4))
                {
                  *v56 = 0;
                  --*(v53 + 56 * v52 + 12);
                }

                v56 += 10;
                --v55;
              }

              while (v55);
            }

            ++v52;
          }

          while (v52 != v51);
        }

        ++v49;
      }

      while (v49 != v41);
      v58 = 0;
      v59 = 0;
      do
      {
        v60 = (*v39 + v58);
        v61 = *(v2 + 12);
        v62 = v60[1];
        v95 = *v60;
        v96 = v62;
        C3DShapeConnectedComponentSkeletonize(&v95, v61);
        ++v59;
        v58 += 32;
      }

      while (v59 < *v35);
    }
  }
}

void *C3DShapeBoundaryMakeWithCGPath(const CGPath *a1, _DWORD *a2, double a3, double a4)
{
  *a2 = 0;
  CGPathApply(a1, a2, C3DSubpathsCounterFunc);
  v8 = *a2;
  if (!v8)
  {
    return 0;
  }

  v9 = malloc_type_calloc(v8, 0x38uLL, 0x10200403357C6A3uLL);
  info[3] = 0;
  info[4] = 0;
  *info = a3;
  *&info[1] = a4;
  info[2] = v9;
  CGPathApply(a1, info, C3DDiscretizerFunc);
  return v9;
}

void C3DShapeBuildDelaunayTriangulation(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0;
    while (1)
    {
      v16 = 0;
      v3 = *(a1 + 40) + 32 * v2;
      v4 = *(v3 + 16);
      v15[0] = *v3;
      v15[1] = v4;
      v5 = C3DShapeConnectedComponentTriangulate(v15, &v16);
      v6 = v5;
      if (v16)
      {
        break;
      }

      if (v5)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (++v2 >= *(a1 + 48))
      {
        return;
      }
    }

    v7 = 0;
    v8 = v5 + 2;
    do
    {
      v9 = *(v3 + 24) + 1;
      *(v3 + 24) = v9;
      v10 = malloc_type_realloc(*(v3 + 16), 4 * v9, 0x100004052888210uLL);
      *(v3 + 16) = v10;
      v11 = *(a1 + 24);
      v10[*(v3 + 24) - 1] = v11;
      v11 += 3;
      *(a1 + 24) = v11;
      v12 = malloc_type_realloc(*(a1 + 32), 8 * v11, 0x2004093837F09uLL);
      *(a1 + 32) = v12;
      v13 = *(a1 + 24);
      v12[v13 - 3] = *(v8 - 2);
      *(*(a1 + 32) + 8 * (v13 - 2)) = *(v8 - 1);
      v14 = *v8;
      v8 += 7;
      *(*(a1 + 32) + 8 * (v13 - 1)) = v14;
      ++v7;
    }

    while (v7 < v16);
LABEL_8:
    free(v6);
    goto LABEL_9;
  }
}

void C3DAppendPointToPath(uint64_t a1, int a2, double a3, double a4, long double a5, long double a6)
{
  v10 = *(a1 + 8);
  v11 = *a1;
  if (!v10 || (v12 = v10 - 1, v13 = hypot(v11[10 * v12] - a3, v11[10 * v12 + 1] - a4), v14 = hypot(*v11 - a3, v11[1] - a4), v13 >= 0.01) && v14 >= 0.01)
  {
    v15 = malloc_type_realloc(v11, 80 * (v10 + 1), 0x1000040392EC4B1uLL);
    *a1 = v15;
    v16 = &v15[80 * *(a1 + 8)];
    v16[6] = a3;
    v16[7] = a4;
    *v16 = *(v16 + 3);
    *(v16 + 19) = a2;
    *(v16 + 72) = a2 != 3;
    v16[8] = 0.0;
    v17 = *(a1 + 8);
    if (v17)
    {
      v18.f64[1] = *(a1 + 24);
      v18.f64[0] = a3;
      v19.f64[0] = *(a1 + 16);
      v19.f64[1] = a3;
      v20 = vbslq_s8(vcgtq_f64(v19, v18), vdupq_lane_s64(*&a3, 0), *(a1 + 16));
      v18.f64[1] = *(a1 + 40);
      v18.f64[0] = a4;
      v19.f64[0] = *(a1 + 32);
      v19.f64[1] = a4;
      v21 = vbslq_s8(vcgtq_f64(v19, v18), vdupq_lane_s64(*&a4, 0), *(a1 + 32));
      *(a1 + 16) = v20;
      *(a1 + 32) = v21;
      v22 = *a1;
      if (a2)
      {
        if (a2 == 1)
        {
          C3DAppendPointToPath_cold_1();
        }

        v23 = hypot(a5, a6);
        v16[2] = a5 / v23;
        v16[3] = a6 / v23;
        if (a2 == 3)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v25 = &v22[10 * (v17 - 1)];
        v26 = v25[1] - a4;
        v27 = a3 - *v25;
        v28 = hypot(v26, v27);
        v29 = v26 / v28;
        v30 = v27 / v28;
        v25[4] = v29;
        v25[5] = v30;
        v16[2] = v29;
        v16[3] = v30;
      }

      v31 = a4 - v22[1];
      v32 = *v22 - a3;
      v33 = hypot(v31, v32);
      v22[2] = v31 / v33;
      v22[3] = v32 / v33;
      *(v16 + 2) = *(v22 + 1);
      v17 = *(a1 + 8);
    }

    else
    {
      *(a1 + 16) = a3;
      *(a1 + 24) = a3;
      *(a1 + 32) = a4;
      *(a1 + 40) = a4;
    }

LABEL_15:
    if (a2 == 3)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }

    v35 = v34 + *(a1 + 12);
    *(a1 + 8) = v17 + 1;
    *(a1 + 12) = v35;
    return;
  }

  if (a2 == 1)
  {
    v36 = &v11[10 * v12];
    v37 = hypot(a5, a6);
    v36[4] = a5 / v37;
    v36[5] = a6 / v37;
  }

  else if (a2 == 2)
  {
    v24 = hypot(a5, a6);
    v11[2] = a5 / v24;
    v11[3] = a6 / v24;
  }
}

void C3DAppendSegmentToPath(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v7 = *a1;
  v8 = (*a1 + 80 * (*(a1 + 8) - 1));
  v9 = *v8;
  v10 = v8[1];
  if (a2)
  {
    v12 = *v7;
    v11 = v7[1];
    v13 = 1;
  }

  else
  {
    v11 = a4;
    v12 = a3;
    v14 = v7[1];
    v15 = a3 == *v7;
    v13 = v11 == v14 && v15;
  }

  v16 = v11 - v10;
  v17 = hypot(v12 - v9, v11 - v10);
  if (v17 <= a5)
  {
    if ((v13 & 1) == 0)
    {
      v25 = *MEMORY[0x277CBF348];
      v26 = *(MEMORY[0x277CBF348] + 8);

      C3DAppendPointToPath(a1, 0, v12, v11, v25, v26);
    }
  }

  else
  {
    v18 = vcvtpd_u64_f64(v17 / a5);
    v19 = v18 - v13;
    if (v19)
    {
      v20 = (v12 - v9) / v18;
      v21 = *MEMORY[0x277CBF348];
      v22 = *(MEMORY[0x277CBF348] + 8);
      v23 = 1;
      v24 = v16 / v18;
      do
      {
        C3DAppendPointToPath(a1, 0, v9 + v23 * v20, v10 + v23 * v24, v21, v22);
        ++v23;
      }

      while (v23 <= v19);
    }
  }
}

void C3DAppendCubicBezierCurveToPath(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = (*a1 + 80 * (*(a1 + 8) - 1));
  v10 = *v9;
  v11 = v9[1];
  v12 = a2 - *v9;
  v13 = a4 - a2 - v12;
  v14 = a6 - a4 - (a4 - a2);
  v15 = v14 - v13;
  v16 = a5 - a3 - (a3 - v11);
  v17 = a7 - a5 - (a5 - a3);
  v18 = v17 - v16;
  v19 = v17 * v17 + v14 * v14;
  if (v16 * v16 + v13 * v13 > v19)
  {
    v19 = v16 * v16 + v13 * v13;
  }

  v20 = v15 * 6.0;
  v21 = (v13 + v15) * 6.0;
  v22 = v15 + (v12 + v13) * 3.0;
  v23 = v18 * 6.0;
  v24 = (v16 + v18) * 6.0;
  v25 = v18 + (a3 - v11 + v16) * 3.0;
  v26 = (a6 + v10 - a2 - a4) * 3.0;
  v27 = v11 - a3;
  v28 = (a7 + v11 - a3 - a5) * 3.0;
  v29 = v19 * 9.0 * 0.0625;
  v44 = a6 - a4;
  if (v29 <= a8 * a8)
  {
    v35 = v26;
    v36 = v25;
    v37 = 0;
    v50 = v23;
    v51 = v15 * 6.0;
    v48 = v23;
    v49 = v15 * 6.0;
  }

  else
  {
    v30 = 1;
    v31 = v23;
    v32 = v15 * 6.0;
    do
    {
      v20 = v20 * 0.125;
      v21 = v21 * 0.25 - v20;
      v22 = v22 * 0.5 - v21 * 0.5;
      v23 = v23 * 0.125;
      v24 = v24 * 0.25 - v23;
      v25 = v25 * 0.5 - v24 * 0.5;
      v32 = v32 * 0.25;
      v26 = v26 * 0.5 - v32 * 0.5;
      v31 = v31 * 0.25;
      v28 = v28 * 0.5 - v31 * 0.5;
      v33 = 2 * v30;
      v29 = v29 * 0.0625;
      if (v29 <= a8 * a8)
      {
        break;
      }

      v34 = v30 > 0x8000;
      v30 *= 2;
    }

    while (!v34);
    v48 = v31;
    v49 = v32;
    v35 = v26;
    v36 = v25;
    v50 = v23;
    v51 = v20;
    v37 = v33 - 1;
  }

  v52 = v12 * 3.0;
  v53 = v27 * 3.0;
  C3DAppendPointToPath(a1, 1, v10, v11, v27 * 3.0, v12 * 3.0);
  v39 = v50;
  v38 = v51;
  v40 = v48;
  for (i = v49; v37; --v37)
  {
    v10 = v22 + v10;
    v42 = v53 - v28;
    v28 = v40 + v28;
    v22 = v21 + v22;
    v21 = v38 + v21;
    v11 = v36 + v11;
    v43 = v35 + v52;
    v35 = i + v35;
    v36 = v36 + v24;
    v24 = v39 + v24;
    v52 = v43;
    v53 = v42;
    C3DAppendPointToPath(a1, 3, v10, v11, v42, v43);
    v40 = v48;
    i = v49;
    v39 = v50;
    v38 = v51;
  }

  C3DAppendPointToPath(a1, 2, a6, a7, (a5 - a7) * 3.0, v44 * 3.0);
}

void C3DAppendQuadBezierCurveToPath(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = (*a1 + 80 * (*(a1 + 8) - 1));
  v9 = *v7;
  v8 = v7[1];
  v10 = v8 - a3;
  v11 = ((a5 + v8 - a3 - a3) * (a5 + v8 - a3 - a3) + (a4 + *v7 - a2 - a2) * (a4 + *v7 - a2 - a2)) * 27.0 * 0.015625;
  v12 = a6 * a6;
  v13 = a4 + v9 + a2 * -2.0 + a4 + v9 + a2 * -2.0;
  v14 = a4 - *v7;
  v15 = a5 + v8 + a3 * -2.0;
  v16 = v15 + v15;
  v17 = a5 - v8;
  if (v11 <= v12)
  {
    v23 = 0;
    v32 = v15 + v15;
    v33 = a4 + v9 + a2 * -2.0 + a4 + v9 + a2 * -2.0;
    v20 = v33;
    v19 = v15 + v15;
  }

  else
  {
    v18 = 1;
    v19 = v15 + v15;
    v20 = a4 + v9 + a2 * -2.0 + a4 + v9 + a2 * -2.0;
    do
    {
      v13 = v13 * 0.25;
      v14 = v14 * 0.5 - v13 * 0.5;
      v16 = v16 * 0.25;
      v17 = v17 * 0.5 - v16 * 0.5;
      v20 = v20 * 0.5;
      v19 = v19 * 0.5;
      v11 = v11 * 0.03125;
      v21 = 2 * v18;
      if (v11 <= v12)
      {
        break;
      }

      v22 = v18 > 0x8000;
      v18 *= 2;
    }

    while (!v22);
    v32 = v16;
    v33 = v13;
    v23 = v21 - 1;
  }

  v24 = v10 + v10;
  v25 = a2 - v9 + a2 - v9;
  C3DAppendPointToPath(a1, 1, v9, v8, v10 + v10, v25);
  v27 = v32;
  for (i = v33; v23; --v23)
  {
    v9 = v14 + v9;
    v24 = v24 - v19;
    v8 = v17 + v8;
    v25 = v20 + v25;
    v38 = i + v14;
    v39 = v27 + v17;
    v28 = v20;
    v29 = v19;
    v30 = i;
    v31 = v27;
    C3DAppendPointToPath(a1, 3, v9, v8, v24, v25);
    v27 = v31;
    i = v30;
    v19 = v29;
    v20 = v28;
    v14 = v38;
    v17 = v39;
  }

  C3DAppendPointToPath(a1, 2, a4, a5, a3 - a5 + a3 - a5, a4 - a2 + a4 - a2);
}

_DWORD *C3DSubpathsCounterFunc(_DWORD *result, _DWORD *a2)
{
  if (!*a2)
  {
    ++*result;
  }

  return result;
}

void C3DDiscretizerFunc(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        C3DAppendSegmentToPath(*(a1 + 24), 0, **(a2 + 8), *(*(a2 + 8) + 8), *(a1 + 8));
      }
    }

    else
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 32);
      *(a1 + 32) = v5 + 1;
      v6 = v4 + 56 * v5;
      *(a1 + 24) = v6;
      C3DAppendPointToPath(v6, 0, **(a2 + 8), *(*(a2 + 8) + 8), *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        C3DAppendQuadBezierCurveToPath(*(a1 + 24), **(a2 + 8), *(*(a2 + 8) + 8), *(*(a2 + 8) + 16), *(*(a2 + 8) + 24), *a1);
        break;
      case 3:
        v3 = *(a2 + 8);
        C3DAppendCubicBezierCurveToPath(*(a1 + 24), *v3, v3[1], v3[2], v3[3], v3[4], v3[5], *a1);
        break;
      case 4:
        C3DAppendSegmentToPath(*(a1 + 24), 1, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), *(a1 + 8));
        break;
    }
  }
}

void C3DShapeBoundaryDestroy(void **a1)
{
  v1 = *a1;
  if (v1)
  {
    free(v1);
  }
}

void C3DParticleModifier_PhysicsField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    a4 = *(a1 + 1056);
  }

  Aether = C3DPhysicsWorldGetAether(a4);
  if (Aether)
  {
    v8 = Aether;
    v20 = *(a1 + 256);
    v9 = *(a1 + 304);
    v10 = *(a1 + 352);
    ParticleMass = C3DParticleSystemGetParticleMass(*(a1 + 1040));
    ParticleCharge = C3DParticleSystemGetParticleCharge(*(a1 + 1040));
    v31 = 1.0 / ParticleMass;
    v12 = *(a1 + 1072);
    if (v12)
    {
      CategoryBitMask = C3DNodeGetCategoryBitMask(v12);
    }

    else
    {
      CategoryBitMask = -1;
    }

    v15 = *(a1 + 1028);
    v16 = &v31;
    v17 = *(a1 + 1036);
    if (v9)
    {
      v16 = v9;
    }

    v18 = *(a1 + 1104);
    p_ParticleCharge = &ParticleCharge;
    if (v10)
    {
      p_ParticleCharge = v10;
    }

    v29 = *(a1 + 1088);
    v30 = v18;
    v21 = v20;
    v22 = v16;
    v23 = 4 * (v9 != 0);
    v24 = p_ParticleCharge;
    v25 = 4 * (v10 != 0);
    v26 = CategoryBitMask;
    v27 = v15;
    v28 = v17;
    c3dAether::evalForcesBatch(v8, &v21, a2, a3);
  }

  else if ((C3DParticleModifier_PhysicsField::done & 1) == 0)
  {
    C3DParticleModifier_PhysicsField::done = 1;
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      C3DParticleModifier_PhysicsField_cold_1(v14);
    }
  }
}

CFMutableDictionaryRef C3DTextLineRebuildSharedGlyphs(CFMutableDictionaryRef result)
{
  if (!*(result + 2))
  {
    v1 = result;
    v2 = *(result + 4);
    if (v2)
    {
      CFRelease(v2);
    }

    result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v1 + 4) = result;
  }

  return result;
}

const void *C3DTextLineGetCachedGlyph(uint64_t a1, unsigned int a2, void *key, __int128 *a4)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a4[1];
    v14 = *a4;
    v15 = v9;
    v16 = a4[2];
    v17 = *(a4 + 6);
    return C3DTextFrameGetCachedGlyph(v8, a2, key, &v14);
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 32), key);
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
      CFDictionaryAddValue(*(a1 + 32), key, Value);
      CFRelease(Value);
    }

    v10 = CFDictionaryGetValue(Value, a2);
    if (!v10)
    {
      v12 = a4[1];
      v14 = *a4;
      v15 = v12;
      v16 = a4[2];
      v17 = *(a4 + 6);
      v10 = C3DGlyphCreate(key, a2, &v14);
      CFDictionaryAddValue(Value, a2, v10);
      CFRelease(v10);
    }
  }

  return v10;
}

CFIndex C3DTextLineBuildGlyphs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 40) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  result = *(a1 + 24);
  if (result)
  {
    GlyphRuns = CTLineGetGlyphRuns(result);
    result = CFArrayGetCount(GlyphRuns);
    if (result >= 1)
    {
      v7 = 0;
      v8 = *MEMORY[0x277CC4838];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v7);
        GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
        Attributes = CTRunGetAttributes(ValueAtIndex);
        Value = CFDictionaryGetValue(Attributes, v8);
        if (GlyphCount >= 1)
        {
          v13 = Value;
          for (i = 0; i != GlyphCount; ++i)
          {
            buffer = 0;
            v20.location = i;
            v20.length = 1;
            CTRunGetGlyphs(ValueAtIndex, v20, &buffer);
            v15 = *(a2 + 16);
            v17[0] = *a2;
            v17[1] = v15;
            v17[2] = *(a2 + 32);
            v18 = *(a2 + 48);
            CachedGlyph = C3DTextLineGetCachedGlyph(a1, buffer, v13, v17);
            CFArrayAppendValue(*(a1 + 40), CachedGlyph);
          }
        }

        ++v7;
        result = CFArrayGetCount(GlyphRuns);
      }

      while (v7 < result);
    }
  }

  return result;
}

double C3DTextLineGetAdvances(uint64_t a1, uint64_t a2, unsigned int a3, double result)
{
  if (a1)
  {
    GlyphRuns = CTLineGetGlyphRuns(*(a1 + 24));
    Count = CFArrayGetCount(GlyphRuns);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, i);
        GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
        v13 = GlyphCount;
        v14 = a3 - v9;
        if (a3 > v9)
        {
          if (v14 >= GlyphCount)
          {
            v15.length = GlyphCount;
          }

          else
          {
            v15.length = v14;
          }

          v15.location = 0;
          CTRunGetAdvances(ValueAtIndex, v15, (a2 + 16 * v9));
        }

        v9 += v13;
      }
    }

    if (a3)
    {
      v16 = a3;
      v17 = (a2 + 8);
      result = 0.0;
      do
      {
        v18 = *(v17 - 1);
        v19 = -*v17;
        *(v17 - 1) = result;
        *v17 = v19;
        result = result + v18;
        v17 += 2;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

CFIndex C3DTextLineGetGlyphCount(CFIndex result)
{
  if (result)
  {
    return CFArrayGetCount(*(result + 40));
  }

  return result;
}

CFArrayRef *C3DTextLineGetGlyphAtIndex(CFArrayRef *result, CFIndex idx)
{
  if (result)
  {
    return CFArrayGetValueAtIndex(result[5], idx);
  }

  return result;
}

void _C3DTextLineCFFinalize(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[5];
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

CFStringRef _C3DTextLineCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextLine>");
}

CFStringRef _C3DTextLineCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextLine>");
}

uint64_t __C3DTextLineGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTextLineGetTypeID_typeID = result;
  return result;
}

__CFDictionary *C3DTextLineCreateWithTextFrame(const void *a1, uint64_t a2, uint64_t a3)
{
  if (C3DTextLineGetTypeID_onceToken != -1)
  {
    C3DTextLineCreateWithTextFrame_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTextLineGetTypeID_typeID, 32);
  if (a1)
  {
    v7 = CFRetain(a1);
  }

  else
  {
    v7 = 0;
  }

  *(Instance + 4) = 0;
  *(Instance + 5) = 0;
  *(Instance + 2) = a3;
  *(Instance + 3) = v7;
  C3DTextLineRebuildSharedGlyphs(Instance);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  C3DTextLineBuildGlyphs(Instance, v10);
  return Instance;
}

void C3D::GenerateMipmapPass::GenerateMipmapPass(C3D::GenerateMipmapPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, Parameters a4)
{
  var0 = a4.var0;
  C3D::BlitPass::BlitPass(this, a2, a3);
  *v5 = &unk_282DC7A98;
  *(v5 + 108) = var0;
}

void C3D::GenerateMipmapPass::setup(C3D::GenerateMipmapPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  if ((*(this + 108) & 1) == 0)
  {
    v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
    *(v2 + 66) |= 4u;
    v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
    *(v3 + 66) |= 0x80u;
  }
}

unint64_t C3D::GenerateMipmapPass::execute(C3D::Pass *a1, void ***a2)
{
  v3 = *a2;
  v4 = C3D::Pass::outputTextureAtIndex(a1, 0);
  if (*(a1 + 108) == 1)
  {
    v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
    SCNMTLBlitCommandEncoder::copyTextureToTexture(v3, v5, v4);
  }

  return SCNMTLBlitCommandEncoder::generateMipmapsForTexture(v3, v4);
}

uint64_t _mayBeASTC(uint64_t a1)
{
  if (C3DImageGetData(a1))
  {
    return 1;
  }

  v3 = copyPathExtension(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v2 = CFEqual(v3, @"ast") || CFEqual(v4, @"astc");
  CFRelease(v4);
  return v2;
}

uint64_t _MTLPixelFormatForASTCBlockSize(int a1, int a2, int a3)
{
  if (a1 <= 7)
  {
    if (a1 != 4)
    {
      v3 = 205;
      if (a3)
      {
        v3 = 187;
      }

      v4 = 206;
      if (a3)
      {
        v4 = 188;
      }

      if (a2 != 5)
      {
        v4 = 0;
      }

      if (a2 != 4)
      {
        v3 = v4;
      }

      v5 = 207;
      if (a3)
      {
        v5 = 189;
      }

      v6 = 208;
      if (a3)
      {
        v6 = 190;
      }

      if (a2 != 6)
      {
        v6 = 0;
      }

      if (a2 != 5)
      {
        v5 = v6;
      }

      if (a1 != 6)
      {
        v5 = 0;
      }

      v7 = a1 == 5;
LABEL_50:
      if (v7)
      {
        return v3;
      }

      else
      {
        return v5;
      }
    }

    v8 = 204;
    if (a3)
    {
      v8 = 186;
    }

    v10 = a2 == 4;
    goto LABEL_36;
  }

  if (a1 == 8)
  {
    v3 = 210;
    if (a3)
    {
      v3 = 192;
    }

    v5 = 211;
    if (a3)
    {
      v5 = 193;
    }

    v12 = 212;
    if (a3)
    {
      v12 = 194;
    }

    if (a2 != 8)
    {
      v12 = 0;
    }

    if (a2 != 6)
    {
      v5 = v12;
    }

    v7 = a2 == 5;
    goto LABEL_50;
  }

  if (a1 != 10)
  {
    v8 = 217;
    if (a3)
    {
      v8 = 199;
    }

    v9 = 218;
    if (a3)
    {
      v9 = 200;
    }

    if (a2 != 12)
    {
      v9 = 0;
    }

    if (a2 != 10)
    {
      v8 = v9;
    }

    v10 = a1 == 12;
LABEL_36:
    if (v10)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  v13 = 215;
  if (a3)
  {
    v13 = 197;
  }

  v14 = 216;
  if (a3)
  {
    v14 = 198;
  }

  if (a2 != 10)
  {
    v14 = 0;
  }

  if (a2 != 8)
  {
    v13 = v14;
  }

  v15 = 213;
  if (a3)
  {
    v15 = 195;
  }

  v16 = 214;
  if (a3)
  {
    v16 = 196;
  }

  if (a2 != 6)
  {
    v16 = 0;
  }

  if (a2 != 5)
  {
    v15 = v16;
  }

  if (a2 <= 7)
  {
    return v15;
  }

  else
  {
    return v13;
  }
}

uint64_t _loadASTC(uint64_t a1)
{
  kdebug_trace();
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _applyCIFilter_cold_2(v2);
    }
  }

  Data = C3DImageGetData(a1);
  if (Data)
  {
    v4 = Data;
    CFRetain(Data);
  }

  else
  {
    URL = C3DImageGetURL(a1);
    if (!URL || (v4 = C3DCreateDataWithContentOfURL(URL, 0)) == 0)
    {
      v16 = 0;
      goto LABEL_14;
    }
  }

  if (CFDataGetLength(v4) >= 16 && (BytePtr = CFDataGetBytePtr(v4), *BytePtr == 1554098963))
  {
    v6 = BytePtr;
    _C3DImageDeleteTextureRawDataIfNeeded(a1);
    v7 = (v6[9] << 16) | (v6[8] << 8) | v6[7];
    v8 = (v6[12] << 16) | (v6[11] << 8) | v6[10];
    v9 = (v6[15] << 16) | (v6[14] << 8) | v6[13];
    *&v10 = v7;
    *(&v10 + 1) = v8;
    _C3DImageCreateTextureRawData(a1, 2, 0, v10);
    TextureRawData = C3DImageGetTextureRawData(a1);
    v12 = v6[4];
    *(TextureRawData + 7) = v12;
    v13 = v6[5];
    *(TextureRawData + 8) = v13;
    v14 = v6[6];
    *(TextureRawData + 9) = v14;
    *(TextureRawData + 4) = 0x80;
    *(TextureRawData + 36) = _MTLPixelFormatForASTCBlockSize(v12, v13, 0);
    v15 = CFDataCreate(0, v6 + 16, 16 * (v7 + v12 - 1) / v12 * ((v8 + v13 - 1) / v13) * ((v9 + v14 - 1) / v14));
    CFArrayAppendValue(*(TextureRawData + 40), v15);
    CFRelease(v15);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  CFRelease(v4);
LABEL_14:
  kdebug_trace();
  return v16;
}

void SCNCActionScale::SCNCActionScale(SCNCActionScale *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC7B08;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
}

void SCNCActionScale::~SCNCActionScale(SCNCActionScale *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

void SCNCActionScale::cpp_updateWithTargetForTime(SCNCActionScale *this, SCNNode *a2, double a3)
{
  v6.n128_f64[0] = SCNCAction::cpp_ratioForTime(this, a3, a2);
  v9 = v6.n128_f64[0];
  if (this->var25)
  {
    [(SCNNode *)a2 scale];
    v11.i32[1] = v10;
    v11.i32[2] = v12;
    *&v13 = (this->var23 * v9) + 1.0;
    v19 = v13;
    v14 = vmulq_n_f32(v11, *&v13);
    p_var22 = &this->var22;
    v16 = vld1q_dup_f32(p_var22);
    v17 = vdivq_f32(v14, v16);
    v16.i32[0] = v17.i32[1];
    LODWORD(v18) = v17.i32[2];
    [(SCNNode *)a2 setScale:*v17.i64, *v16.i64, v18];
    v6.n128_u64[1] = *(&v19 + 1);
    LODWORD(this->var22) = v19;
  }

  else if (!this->var24)
  {
    v6.n128_f32[0] = (this->var19 * v9) + (this->var23 * (1.0 - v9));
    *&v7 = v6.n128_f32[0];
    *&v8 = v6.n128_f32[0];
    [(SCNNode *)a2 setScale:v6.n128_f64[0], v7, v8];
  }

  this->var21 = v9;
  if ((COERCE_UNSIGNED_INT(v9 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;

    SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

SCNCAction *SCNCActionScale::cpp_willStartWithTargetAtTime(SCNCActionScale *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var21 = 0.0;
  if (this->var25)
  {
    this->var22 = 1.0;
    v6 = this->var19 + -1.0;
  }

  else
  {
    result = [(SCNNode *)a2 scale];
  }

  this->var23 = v6;
  return result;
}

void SCNCActionGroup::SCNCActionGroup(SCNCActionGroup *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v4 = &unk_282DC7BA0;
  v4 += 18;
  *(this + 18) = v4;
  *(this + 19) = v4;
  *(this + 20) = 0;
  *(this + 7) = *&a2->var7;
  *(this + 40) = *&a2->var5;
  *(this + 40) = *&a2->var10;
  *(this + 8) = *&a2->var8;
  *(this + 13) = a2->var14;
  v5[0] = v5;
  v5[1] = v5;
  v5[2] = 0;
  std::list<SCNCAction *>::__move_assign(v4, v5);
  std::__list_imp<SCNCAction *>::clear(v5);
  *(this + 32) = 1;
}

void SCNCActionGroup::~SCNCActionGroup(SCNCAction *this)
{
  SCNCActionGroup::~SCNCActionGroup(this);

  JUMPOUT(0x21CF07610);
}

{
  this->var0 = &unk_282DC7BA0;
  v2 = this + 1;
  std::__list_imp<SCNCAction *>::clear(&this[1].var0);
  std::__list_imp<SCNCAction *>::clear(v2);

  SCNCAction::~SCNCAction(this);
}

void SCNCActionGroup::setBaseSpeed(SCNCAction *this, double a2)
{
  SCNCAction::setBaseSpeed(this, a2);
  var1 = this[1].var1;
  if (*&var1 != &this[1])
  {
    v4 = this->var16 * this->var17;
    do
    {
      (*(**(*&var1 + 16) + 40))(*(*&var1 + 16), v4);
      var1 = *(*&var1 + 8);
    }

    while (*&var1 != &this[1]);
  }
}

void SCNCActionGroup::setSpeed(SCNCAction *this, double a2)
{
  SCNCAction::setSpeed(this, a2);
  var1 = this[1].var1;
  if (*&var1 != &this[1])
  {
    v4 = this->var16 * this->var17;
    do
    {
      (*(**(*&var1 + 16) + 40))(*(*&var1 + 16), v4);
      var1 = *(*&var1 + 8);
    }

    while (*&var1 != &this[1]);
  }
}

uint64_t SCNCActionGroup::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v6.n128_f64[0] = SCNCAction::cpp_timeByApplyingTimingfunction(this, a3, a2);
  var1 = this[1].var1;
  if (*&var1 == &this[1])
  {
    goto LABEL_16;
  }

  v8 = v6.n128_f64[0];
  v9 = 1;
  do
  {
    v10 = *(*&var1 + 16);
    if (C3DIsRunningInEditor())
    {
LABEL_4:
      SCNCAction::updateWithTargetForTime(v10, a2, v8);
      goto LABEL_5;
    }

    if (v10->var4)
    {
      if (!v10->var10)
      {
        goto LABEL_4;
      }
    }

    else if (([v10->var3 finished] & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_5:
    if (v10->var4)
    {
      result = v10->var10;
    }

    else
    {
      result = [v10->var3 finished];
    }

    v9 &= result;
    var1 = *(*&var1 + 8);
  }

  while (*&var1 != &this[1]);
  if (v9)
  {
LABEL_16:
    v6.n128_f64[0] = a3;

    return SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }

  return result;
}

SCNCAction *SCNCActionGroup::cpp_wasAddedToTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_wasAddedToTargetAtTime(this, a2, a3);
  v7 = &this[1];
  for (i = this[1].var1; *&i != v7; i = *(*&i + 8))
  {
    result = SCNCAction::wasAddedToTargetAtTime(*(*&i + 16), a2, a3);
  }

  return result;
}

SCNCAction *SCNCActionGroup::cpp_wasRemovedFromTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  v7 = &this[1];
  for (i = this[1].var1; *&i != v7; i = *(*&i + 8))
  {
    result = SCNCAction::wasRemovedFromTargetAtTime(*(*&i + 16), a2, a3);
  }

  return result;
}

SCNCAction *SCNCActionGroup::cpp_willStartWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  v7 = &this[1];
  for (i = this[1].var1; *&i != v7; i = *(*&i + 8))
  {
    result = SCNCAction::willStartWithTargetAtTime(*(*&i + 16), a2, a3);
  }

  return result;
}

SCNCAction *SCNCActionGroup::cpp_wasPausedWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  v7 = &this[1];
  for (i = this[1].var1; *&i != v7; i = *(*&i + 8))
  {
    result = SCNCAction::wasPausedWithTargetAtTime(*(*&i + 16), a2, a3);
  }

  return result;
}

void SCNCActionGroup::cpp_willResumeWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  v6 = &this[1];
  for (i = this[1].var1; *&i != v6; i = *(*&i + 8))
  {
    SCNCAction::willResumeWithTargetAtTime(*(*&i + 16), a2, a3);
  }
}

void SCNCActionGroup::cpp_timeJumpWithTarget(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_timeJumpWithTarget(this, a2, a3);
  v6 = &this[1];
  for (i = this[1].var1; *&i != v6; i = *(*&i + 8))
  {
    SCNCAction::timeJumpWithTarget(*(*&i + 16), a2, a3);
  }
}

SCNCAction *SCNCActionGroup::cpp_reset(SCNCAction *this)
{
  result = SCNCAction::cpp_reset(this);
  v3 = &this[1];
  for (i = this[1].var1; *&i != v3; i = *(*&i + 8))
  {
    result = (*(**(*&i + 16) + 120))(*(*&i + 16));
  }

  return result;
}

void *std::list<SCNCAction *>::__move_assign(uint64_t *a1, void *a2)
{
  result = std::__list_imp<SCNCAction *>::clear(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

void *std::__list_imp<SCNCAction *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void **C3DShapeTriangulationListInsert(void **result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  if (*result == *(result + 1))
  {
    v7 = 2 * v6;
    *(result + 1) = v7;
    result[1] = malloc_type_realloc(result[1], 8 * v7, 0x2004093837F09uLL);
    result = malloc_type_realloc(v5[2], 8 * *(v5 + 1), 0x2004093837F09uLL);
    v5[2] = result;
    v6 = *v5;
  }

  *(v5[1] + v6) = a2;
  *(v5[2] + v6) = a3;
  *v5 = v6 + 1;
  return result;
}

void *C3DShapeTriangulationStackPush(int *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (v5 == *a1)
  {
    a1[1] = 2 * v5;
    result = malloc_type_realloc(*(a1 + 1), 8 * (2 * v5), 0x2004093837F09uLL);
    *(a1 + 1) = result;
    v4 = *a1;
  }

  else
  {
    result = *(a1 + 1);
  }

  *a1 = v4 + 1;
  result[v4] = a2;
  return result;
}

uint64_t C3DShapeTriangulationGetNewTriangle(uint64_t a1)
{
  if (*(a1 + 32) >= *(a1 + 36))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShapeTriangulationGetNewTriangle_cold_1(v2);
    }
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a1 + 32) = v4 + 1;
  result = v3 + 56 * v4;
  *(result + 51) = 0;
  return result;
}

uint64_t C3DShapeTriangulationTriangleContainingVertex(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = (v2 - 1);
  if (v2 - 1 < 0)
  {
    return 2;
  }

  v4 = *(a2 + 16);
  v5 = v3 + 1;
  for (i = (v4 + 56 * v3); ; i -= 7)
  {
    if (v4)
    {
      v7 = v4 + 56 * v3;
      if (*i == a1 || i[1] == a1)
      {
        return v7;
      }

      if (i[2] == a1)
      {
        break;
      }
    }

    --v3;
    if (v5-- <= 1)
    {
      return 2;
    }
  }

  return i;
}

uint64_t C3DShapeTriangulationTriangleContainingPoint(float64x2_t *a1, double **i, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a3 + 32);
  while (v4)
  {
    if (!i)
    {
      C3DShapeTriangulationTriangleContainingPoint_cold_2();
    }

    v5 = 0;
    v6 = 0;
    --v4;
    v7 = *a1;
    do
    {
      if (v5 == 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = v5 + 1;
      }

      v9 = vsubq_f64(*i[v5], v7);
      v10 = vmulq_f64(vsubq_f64(*i[v8], v7), vextq_s8(v9, v9, 8uLL));
      if (vmovn_s64(vcgtq_f64(v10, vdupq_laneq_s64(v10, 1))).u8[0])
      {
        i = i[v5 + 3];
        if (!i)
        {
          C3DShapeTriangulationTriangleContainingPoint_cold_1();
        }

        v6 = 1;
      }

      ++v5;
    }

    while (v5 != 3);
    if ((v6 & 1) == 0)
    {
      return i;
    }
  }

  if (!v3)
  {
    return 2;
  }

  for (i = *(a3 + 16); ; i += 7)
  {
    v14 = i[1];
    v15 = i[2];
    v16 = **i;
    v17 = (*i)[1];
    v18 = v14[1];
    v19 = v15[1];
    v11 = a1->f64[0];
    v12 = a1->f64[1];
    v13 = -a1->f64[0];
    if (vabdd_f64(fabs(*v14 * v19 + v16 * v18 + *v15 * v17 - v16 * v19 - *v15 * v18 - *v14 * v17) * 0.5 - fabs(v17 * *v15 + v11 * v19 + v16 * v12 + v13 * v17 - v16 * v19 - *v15 * v12) * 0.5 - fabs(*v14 * v19 + v11 * v18 + *v15 * v12 + v13 * v19 - *v15 * v18 - *v14 * v12) * 0.5, fabs(v16 * v18 + v11 * v17 + *v14 * v12 + v13 * v18 - *v14 * v17 - v16 * v12) * 0.5) < 0.001)
    {
      break;
    }

    if (!--v3)
    {
      return 2;
    }
  }

  return i;
}

uint64_t C3DEdgeCrossingSegment(uint64_t a1, double *a2, double *a3, double ***a4)
{
  v8 = *a1;
  if (*a1 == a3 || (v9 = *(a1 + 8), v9 == a3) || *(a1 + 16) == a3)
  {
    v12 = *(a1 + 24);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }

    v12 = *(a1 + 32);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }

    v12 = *(a1 + 40);
    if (v12 && (*v12 == a2 || v12[1] == a2 || v12[2] == a2) && (*v12 == a3 || v12[1] == a3 || v12[2] == a3))
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = v8 == a2 || v9 == a2;
    if (!v10 && (C3DSegmentIntersectsSegment(*a2, a2[1], *a3, a3[1], *v8, v8[1], *v9, v9[1]) & 1) != 0)
    {
      v11 = 24;
LABEL_40:
      v12 = *(a1 + v11);
LABEL_41:
      *a4 = v12;
      return 1;
    }

    v13 = *(a1 + 8);
    if (v13 != a2)
    {
      v14 = *(a1 + 16);
      if (v14 != a2 && (C3DSegmentIntersectsSegment(*a2, a2[1], *a3, a3[1], *v13, v13[1], *v14, v14[1]) & 1) != 0)
      {
        v11 = 32;
        goto LABEL_40;
      }
    }

    v15 = *(a1 + 16);
    if (v15 != a2 && *a1 != a2)
    {
      result = C3DSegmentIntersectsSegment(*a2, a2[1], *a3, a3[1], *v15, v15[1], **a1, *(*a1 + 8));
      if (!result)
      {
        return result;
      }

      v11 = 40;
      goto LABEL_40;
    }
  }

  return 0;
}

BOOL C3DCircumcircleContainsPoint(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a1[1];
  v5 = a2[1];
  v6 = a3[1];
  v7 = v4 * v4 + *a1 * *a1;
  v8 = v5 * v5 + *a2 * *a2;
  v9 = v6 * v6 + *a3 * *a3;
  v10 = v5 - v6;
  v11 = *a2 * (v6 - v4) + *a1 * (v5 - v6);
  v12 = v4 - v5;
  v13 = v11 + *a3 * v12 + v11 + *a3 * v12;
  v14 = (v8 * (v6 - v4) + v7 * v10 + v9 * v12) / v13;
  v15 = *a2 - *a3;
  v16 = *a1 - *a2;
  v17 = -(v8 * (*a3 - *a1) + v7 * v15 + v9 * v16) / v13;
  v18 = sqrt(((v4 - v6) * (v4 - v6) + (*a1 - *a3) * (*a1 - *a3)) * ((v12 * v12 + v16 * v16) * (v10 * v10 + v15 * v15)));
  v19 = fabs(v13);
  return (v17 - a4[1]) * (v17 - a4[1]) + (v14 - *a4) * (v14 - *a4) < v18 / v19 * (v18 / v19);
}

uint64_t C3DPointFallsOnTriangleEdgeAndLinks(uint64_t a1, double *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(*a1 + 8);
  v7 = v4[1];
  v8 = *a2;
  v9 = a2[1];
  if ((*v4 - v5) * (v9 - v6) - (v7 - v6) * (*a2 - v5) == 0.0)
  {
    v10 = 0;
    *a3 = 0;
    while (*(*(a1 + 24) + 24 + 8 * v10) != a1)
    {
      if (++v10 == 3)
      {
        C3DPointFallsOnTriangleEdgeAndLinks_cold_1();
      }
    }
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = v11[1];
    if ((*v11 - *v4) * (v9 - v7) - (v12 - v7) * (v8 - *v4) == 0.0)
    {
      v10 = 0;
      *a3 = 1;
      while (*(*(a1 + 32) + 24 + 8 * v10) != a1)
      {
        if (++v10 == 3)
        {
          C3DPointFallsOnTriangleEdgeAndLinks_cold_1();
        }
      }
    }

    else
    {
      if ((v5 - *v11) * (v9 - v12) - (v6 - v12) * (v8 - *v11) != 0.0)
      {
        return 0;
      }

      v10 = 0;
      *a3 = 2;
      while (*(*(a1 + 40) + 24 + 8 * v10) != a1)
      {
        if (++v10 == 3)
        {
          C3DPointFallsOnTriangleEdgeAndLinks_cold_1();
        }
      }
    }
  }

  *a4 = v10;
  return 1;
}

uint64_t C3DVertexNotSharedByTriangles(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    C3DVertexNotSharedByTriangles_cold_3();
  }

  if (!a2)
  {
    C3DVertexNotSharedByTriangles_cold_2();
  }

  v2 = (a1 + 24);
  v3 = 1;
  while (*v2 != a2)
  {
    --v3;
    ++v2;
    if (v3 == -2)
    {
      C3DVertexNotSharedByTriangles_cold_1();
    }
  }

  if (v3 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = -v3;
  }

  return *(a1 + 8 * v4);
}

uint64_t C3DShapeConnectedComponentTriangulatePseudopolygon(int *a1, double *a2, double *a3, unsigned int *a4, int a5)
{
  v5 = *a1;
  v6 = (*a1 - 1);
  if (*a1 <= 1)
  {
    C3DShapeConnectedComponentTriangulatePseudopolygon_cold_2();
  }

  v7 = a4;
  v11 = *(a1 + 1);
  v12 = *v11;
  if (v6 <= 1)
  {
    v13 = 0;
    v17 = *(a1 + 2);
    v18 = *v17;
    v19 = *a4;
  }

  else
  {
    v121 = *a1;
    v123 = a5;
    v13 = 0;
    v14 = 1;
    v15 = *v11;
    do
    {
      v16 = v11[v14];
      if (C3DCircumcircleContainsPoint(a2, a3, v15, v16))
      {
        v15 = v16;
        v13 = v14;
      }

      ++v14;
    }

    while (v6 != v14);
    v17 = *(a1 + 2);
    v18 = *v17;
    v7 = a4;
    v19 = *a4;
    if (v13 >= 1)
    {
      v20 = 1;
      a5 = v123;
      while (1)
      {
        v21 = *(*(a4 + 1) + 8 * --v19);
        if (v123)
        {
          v22 = v11[v20];
          *v21 = v22;
          v23 = 1;
        }

        else
        {
          *v21 = v12;
          v22 = v12;
          v12 = *(*(a1 + 1) + v20 * 8);
          v23 = v18;
          v18 = 1;
        }

        *(v21 + 8) = v12;
        *(v21 + 16) = a2;
        v24 = *(*(a1 + 2) + v20 * 8);
        *(v21 + 24) = v24;
        *(v21 + 32) = v18;
        *(v21 + 40) = v23;
        if (v123)
        {
          if (v18)
          {
            v26 = *v18;
            v25 = *(v18 + 8);
            if (*v18 == a2 && v25 == v12)
            {
              v27 = 0;
            }

            else
            {
              v31 = *(v18 + 16);
              if (v25 == a2 && v31 == v12)
              {
                v27 = 1;
              }

              else if (v31 == a2 && v26 == v12)
              {
                v27 = 2;
              }

              else
              {
                v27 = -1;
              }
            }
          }

          else
          {
            v27 = -1;
          }

          if (!v24)
          {
            goto LABEL_181;
          }

          v34 = v24[1];
          if (*v24 == v12 && v34 == v22)
          {
            v40 = 0;
          }

          else
          {
            v36 = v24[2];
            v37 = v36 == v12 && *v24 == v22;
            v38 = v37 ? 2 : -1;
            v39 = v34 == v12 && v36 == v22;
            v40 = v39 ? 1 : v38;
          }

          if (v27 == -1 || v40 == -1)
          {
            goto LABEL_181;
          }

          v24[v40 + 3] = v21;
          *(*(v21 + 32) + 8 * v27 + 24) = v21;
          v41 = *(v21 + 24);
          *(v21 + 49) = *(*(v21 + 32) + v27 + 48);
          *(v21 + 48) = *(v41 + v40 + 48);
          *(v21 + 50) = 0;
        }

        else
        {
          if (v23)
          {
            v29 = *v23;
            v28 = *(v23 + 8);
            if (*v23 == v22 && v28 == a2)
            {
              v30 = 0;
            }

            else
            {
              v32 = *(v23 + 16);
              if (v28 == v22 && v32 == a2)
              {
                v30 = 1;
              }

              else if (v32 == v22 && v29 == a2)
              {
                v30 = 2;
              }

              else
              {
                v30 = -1;
              }
            }
          }

          else
          {
            v30 = -1;
          }

          if (!v24 || ((v43 = v24[1], *v24 == v12) ? (v44 = v43 == v22) : (v44 = 0), v44 ? (v48 = 0) : ((v45 = v24[2], v43 == v12) ? (v46 = v45 == v22) : (v46 = 0), v46 ? (v48 = 1) : (v45 == v12 ? (v47 = *v24 == v22) : (v47 = 0), !v47 ? (v48 = -1) : (v48 = 2))), v30 == -1 || v48 == -1))
          {
LABEL_181:
            *v7 = v19;
            return 2;
          }

          v24[v48 + 3] = v21;
          *(*(v21 + 40) + 8 * v30 + 24) = v21;
          *(v21 + 50) = *(*(v21 + 40) + v30 + 48);
          *(v21 + 48) = *(*(v21 + 24) + v48 + 48);
        }

        v11 = *(a1 + 1);
        v12 = v11[v20++];
        v18 = v21;
        if (v13 + 1 == v20)
        {
          *a4 = v19;
          v17 = *(a1 + 2);
          v12 = v15;
          v18 = v21;
          goto LABEL_86;
        }
      }
    }

    v12 = v15;
    a5 = v123;
LABEL_86:
    v5 = v121;
  }

  v49 = v17[v6];
  v50 = v5 - 3;
  if ((v5 - 3) >= v13)
  {
    v52 = 0;
    v53 = 8 * v50;
    v54 = v50 + 1;
    v55 = v19 - 1;
    v56 = v53;
    v57 = &v11[v5 - 2];
    while (1)
    {
      v58 = *v57;
      --v19;
      v51 = *(*(v7 + 1) + 8 * (v55 + v52));
      *v51 = a3;
      if (a5)
      {
        v51[1] = v58;
        v59 = *(*(a1 + 1) + v53 + 8 * v52);
        v51[2] = v59;
        v51[3] = v49;
        v60 = *(*(a1 + 2) + v53 + 8 * v52 + 8);
        v51[4] = v60;
        v51[5] = 1;
        if (v49)
        {
          v61 = *v49;
          v62 = v49[1];
          if (*v49 == v58 && v62 == a3)
          {
            v63 = 0;
          }

          else
          {
            v69 = v49[2];
            if (v62 == v58 && v69 == a3)
            {
              v63 = 1;
            }

            else if (v69 == v58 && v61 == a3)
            {
              v63 = 2;
            }

            else
            {
              v63 = -1;
            }
          }
        }

        else
        {
          v63 = -1;
        }

        if (!v60)
        {
          goto LABEL_181;
        }

        v72 = *(v60 + 1);
        if (*v60 == v59 && v72 == v58)
        {
          v78 = 0;
        }

        else
        {
          v74 = *(v60 + 2);
          v75 = v74 == v59 && *v60 == v58;
          v76 = v75 ? 2 : -1;
          v77 = v72 == v59 && v74 == v58;
          v78 = v77 ? 1 : v76;
        }

        if (v63 == -1 || v78 == -1)
        {
          goto LABEL_181;
        }

        *&v60[v78 + 3] = v51;
        *&v51[3][v63 + 3] = v51;
        v79 = v51[4];
        *(v51 + 48) = *(v51[3] + v63 + 48);
        *(v51 + 49) = *(v79 + v78 + 48);
      }

      else
      {
        v64 = *(*(a1 + 1) + v53 + 8 * v52);
        v51[1] = v64;
        v51[2] = v58;
        v51[3] = 1;
        v65 = *(*(a1 + 2) + v53 + 8 * v52 + 8);
        v51[4] = v65;
        v51[5] = v49;
        if (v49)
        {
          v66 = *v49;
          v67 = v49[1];
          if (*v49 == a3 && v67 == v58)
          {
            v68 = 0;
          }

          else
          {
            v70 = v49[2];
            if (v67 == a3 && v70 == v58)
            {
              v68 = 1;
            }

            else if (v70 == a3 && v66 == v58)
            {
              v68 = 2;
            }

            else
            {
              v68 = -1;
            }
          }
        }

        else
        {
          v68 = -1;
        }

        if (!v65)
        {
          goto LABEL_181;
        }

        v81 = *(v65 + 1);
        if (*v65 == v58 && v81 == v64)
        {
          v86 = 0;
        }

        else
        {
          v83 = *(v65 + 2);
          if (v81 == v58 && v83 == v64)
          {
            v86 = 1;
          }

          else
          {
            v85 = v83 == v58 && *v65 == v64;
            v86 = v85 ? 2 : -1;
          }
        }

        if (v68 == -1 || v86 == -1)
        {
          goto LABEL_181;
        }

        *&v65[v86 + 3] = v51;
        *&v51[5][v68 + 3] = v51;
        v87 = v51[4];
        *(v51 + 50) = *(v51[5] + v68 + 48);
        *(v51 + 49) = *(v87 + v86 + 48);
        *(v51 + 48) = 0;
      }

      v57 = (*(a1 + 1) + v56);
      v56 -= 8;
      --v52;
      v49 = v51;
      if (v54 + v52 <= v13)
      {
        goto LABEL_161;
      }
    }
  }

  v51 = v49;
LABEL_161:
  v88 = *(v7 + 1);
  v89 = v19 - 1;
  *v7 = v89;
  v90 = *(v88 + 8 * v89);
  *v90 = a2;
  if (a5)
  {
    *(v90 + 8) = a3;
    *(v90 + 16) = v12;
    if (v18)
    {
      v91 = *(v18 + 8);
      if (*v18 == a2 && v91 == v12)
      {
        v97 = 0;
        if (!v51)
        {
          goto LABEL_243;
        }
      }

      else
      {
        v93 = *(v18 + 16);
        if (v93 == a2 && *v18 == v12)
        {
          v95 = 2;
        }

        else
        {
          v95 = -1;
        }

        if (v91 == a2 && v93 == v12)
        {
          v97 = 1;
        }

        else
        {
          v97 = v95;
        }

        if (!v51)
        {
          goto LABEL_243;
        }
      }
    }

    else
    {
      v97 = -1;
      if (!v51)
      {
        goto LABEL_243;
      }
    }

    v105 = v51[1];
    if (*v51 == v12 && v105 == a3)
    {
      v111 = 0;
    }

    else
    {
      v107 = v51[2];
      if (v107 == v12 && *v51 == a3)
      {
        v109 = 2;
      }

      else
      {
        v109 = -1;
      }

      if (v105 == v12 && v107 == a3)
      {
        v111 = 1;
      }

      else
      {
        v111 = v109;
      }
    }

    if (v97 != -1 && v111 != -1)
    {
      *(v18 + 8 * v97 + 24) = v90;
      v51[v111 + 3] = v90;
      *(v90 + 24) = 1;
      *(v90 + 32) = v51;
      *(v90 + 40) = v18;
      *(v90 + 48) = 1;
      *(v90 + 49) = *(v51 + v111 + 48);
      *(v90 + 50) = *(v18 + v97 + 48);
      return v90;
    }

LABEL_243:
    *(v90 + 24) = 1;
    *(v90 + 32) = 1;
    *(v90 + 40) = 1;
    return v90;
  }

  *(v90 + 8) = v12;
  *(v90 + 16) = a3;
  if (!v18)
  {
    v104 = -1;
    if (!v51)
    {
      goto LABEL_248;
    }

LABEL_223:
    v112 = v51[1];
    if (*v51 == a3 && v112 == v12)
    {
      v118 = 0;
    }

    else
    {
      v114 = v51[2];
      if (v114 == a3 && *v51 == v12)
      {
        v116 = 2;
      }

      else
      {
        v116 = -1;
      }

      if (v112 == a3 && v114 == v12)
      {
        v118 = 1;
      }

      else
      {
        v118 = v116;
      }
    }

    if (v104 <= 2 && v118 < 3)
    {
      *(v18 + 8 * v104 + 24) = v90;
      v51[v118 + 3] = v90;
      *(v90 + 24) = v18;
      *(v90 + 32) = v51;
      *(v90 + 40) = 1;
      *(v90 + 48) = *(v18 + v104 + 48);
      *(v90 + 49) = *(v51 + v118 + 48);
      *(v90 + 50) = 1;
      return v90;
    }

    goto LABEL_248;
  }

  v98 = *(v18 + 8);
  if (*v18 == v12 && v98 == a2)
  {
    v104 = 0;
    if (!v51)
    {
      goto LABEL_248;
    }

    goto LABEL_223;
  }

  v100 = *(v18 + 16);
  if (v100 == v12 && *v18 == a2)
  {
    v102 = 2;
  }

  else
  {
    v102 = -1;
  }

  if (v98 == v12 && v100 == a2)
  {
    v104 = 1;
  }

  else
  {
    v104 = v102;
  }

  if (v51)
  {
    goto LABEL_223;
  }

LABEL_248:
  v119 = scn_default_log();
  if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
  {
    C3DShapeConnectedComponentTriangulatePseudopolygon_cold_1(v119);
  }

  return v90;
}

void C3DShapeTriangulationAddEdge(uint64_t a1, double *a2, double *a3)
{
  v3 = a3;
  v4 = a1;
  if (*a2 > *a3 || *a2 == *a3 && a2[1] < a3[1])
  {
    v5 = a2;
  }

  else
  {
    v5 = a3;
    v3 = a2;
  }

  v6 = C3DShapeTriangulationTriangleContainingVertex(v3, a1);
  if (v6 == 2)
  {
    v16 = 6;
    goto LABEL_42;
  }

  v7 = v6;
  v8 = *(v4 + 32);
  v72 = 0;
  if (C3DEdgeCrossingSegment(v6, v3, v5, &v72))
  {
LABEL_17:
    if (v7 && (*v7 == v5 || *(v7 + 8) == v5 || *(v7 + 16) == v5))
    {
      v17 = 0;
      while (*(v7 + 8 * v17 + 24) != v72)
      {
        if (++v17 == 3)
        {
          v17 = 0xFFFFFFFFLL;
          break;
        }
      }

      v18 = 0;
      while (v72[v18 + 3] != v7)
      {
        if (++v18 == 3)
        {
          v18 = 0xFFFFFFFFLL;
          break;
        }
      }

      *(v72 + v18 + 48) = 1;
      *(v7 + v17 + 48) = 1;
      return;
    }

    v70 = 0x1000000000;
    v71 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
    v67 = 0x400000000;
    v68 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v69 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v64 = 0x400000000;
    v65 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v10 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v66 = v10;
    do
    {
      v14 = *(v7 + v11);
      if (v14 != v3)
      {
        if ((*v5 - *v3) * (v14[1] - v3[1]) - (v5[1] - v3[1]) * (*v14 - *v3) <= 0.0)
        {
          v12 = *(v7 + v11);
        }

        else
        {
          v13 = *(v7 + v11);
        }
      }

      v11 += 8;
    }

    while (v11 != 24);
    if (*v7 == v12)
    {
      v19 = 32;
    }

    else if (*(v7 + 8) == v12)
    {
      v19 = 40;
    }

    else
    {
      if (*(v7 + 16) != v12)
      {
        v15 = 0;
        goto LABEL_47;
      }

      v19 = 24;
    }

    v15 = *(v7 + v19);
LABEL_47:
    C3DShapeTriangulationListInsert(&v67, v13, v15);
    if (*v7 == v13)
    {
      v21 = 32;
    }

    else if (*(v7 + 8) == v13)
    {
      v21 = 40;
    }

    else
    {
      if (*(v7 + 16) != v13)
      {
        v20 = 0;
LABEL_55:
        C3DShapeTriangulationListInsert(&v64, v12, v20);
        v22 = 0;
        v23 = v70;
        if (v13 != v5 && v12 != v5)
        {
          v24 = v12;
          v58 = 0;
          v59 = 0;
          v25 = v71;
          v57 = v4;
          v60 = HIDWORD(v70);
          v26 = *(v4 + 32) - 1;
          v27 = v3;
          while (1)
          {
            if (!v26)
            {
              v47 = 3;
LABEL_104:
              v4 = v57;
LABEL_122:
              *(v4 + 40) = v47;
              goto LABEL_123;
            }

            v28 = (v7 + 16);
            v29 = *(v7 + 8);
            if (*v7 == v27)
            {
              v31 = 32;
            }

            else
            {
              v30 = *v28;
              if (v29 == v27)
              {
                v29 = v30;
                v28 = v7;
                v31 = 40;
              }

              else
              {
                if (v30 != v27)
                {
                  goto LABEL_102;
                }

                v29 = *v7;
                v28 = (v7 + 8);
                v31 = 24;
              }
            }

            v32 = *(v7 + v31);
            if (!v32)
            {
LABEL_102:
              v47 = 4;
              goto LABEL_104;
            }

            ptr = v25;
            v63 = v24;
            v33 = *v28;
            v34 = C3DVertexNotSharedByTriangles(v32, v7);
            v35 = (*v5 - *v3) * (v34[1] - v3[1]) - (v5[1] - v3[1]) * (*v34 - *v3);
            v36 = *v32;
            v61 = v33;
            if (v35 <= 0.0)
            {
              if (v36 == v13)
              {
                v40 = 4;
              }

              else if (v32[1] == v13)
              {
                v40 = 5;
              }

              else
              {
                if (v32[2] != v13)
                {
                  v38 = 0;
LABEL_84:
                  C3DShapeTriangulationListInsert(&v64, v34, v38);
                  v41 = v13;
                  v58 = v63;
                  goto LABEL_85;
                }

                v40 = 3;
              }

              v38 = v32[v40];
              goto LABEL_84;
            }

            if (v36 == v63)
            {
              break;
            }

            if (v32[1] == v63)
            {
              v39 = 5;
              goto LABEL_80;
            }

            if (v32[2] == v63)
            {
              v39 = 3;
              goto LABEL_80;
            }

            v37 = 0;
LABEL_81:
            C3DShapeTriangulationListInsert(&v67, v34, v37);
            v41 = v34;
            v59 = v13;
            v34 = v63;
LABEL_85:
            v25 = ptr;
            if (v23 == v60)
            {
              v60 *= 2;
              v25 = malloc_type_realloc(ptr, 8 * v60, 0x2004093837F09uLL);
              v71 = v25;
            }

            v42 = v23 + 1;
            *(v25 + v23) = v7;
            v27 = v61;
            if (v35 > 0.0 == (*v5 - *v3) * (v29[1] - v3[1]) - (v5[1] - v3[1]) * (*v29 - *v3) > 0.0)
            {
              v27 = v29;
            }

            if (v41 != v5)
            {
              --v26;
              v7 = v32;
              v24 = v34;
              v13 = v41;
              ++v23;
              if (v34 != v5)
              {
                continue;
              }
            }

            v22 = v59;
            HIDWORD(v70) = v60;
            v4 = v57;
            v43 = v58;
            goto LABEL_93;
          }

          v39 = 4;
LABEL_80:
          v37 = v32[v39];
          goto LABEL_81;
        }

        v42 = v70;
        v41 = v13;
        v43 = 0;
        v32 = v7;
LABEL_93:
        v44 = *v32;
        if (v41 != v5)
        {
          if (v44 == v43)
          {
            v45 = v42;
            v48 = 4;
          }

          else if (v32[1] == v43)
          {
            v45 = v42;
            v48 = 5;
          }

          else
          {
            v45 = v42;
            if (v32[2] != v43)
            {
              v46 = 0;
LABEL_110:
              v50 = &v67;
              goto LABEL_115;
            }

            v48 = 3;
          }

          v46 = v32[v48];
          goto LABEL_110;
        }

        if (v44 == v22)
        {
          v45 = v42;
          v49 = 4;
        }

        else if (v32[1] == v22)
        {
          v45 = v42;
          v49 = 5;
        }

        else
        {
          v45 = v42;
          if (v32[2] != v22)
          {
            v46 = 0;
LABEL_114:
            v50 = &v64;
LABEL_115:
            C3DShapeTriangulationListInsert(v50, v5, v46);
            if (HIDWORD(v70) == v45)
            {
              HIDWORD(v70) = 2 * v45;
              v51 = malloc_type_realloc(v71, 16 * v45, 0x2004093837F09uLL);
              v71 = v51;
            }

            else
            {
              v51 = v71;
            }

            LODWORD(v70) = v45 + 1;
            *(v51 + v45) = v32;
            v47 = 1;
            v52 = C3DShapeConnectedComponentTriangulatePseudopolygon(&v67, v3, v5, &v70, 1);
            if (v52 == 2)
            {
              goto LABEL_122;
            }

            v53 = v52;
            v54 = C3DShapeConnectedComponentTriangulatePseudopolygon(&v64, v3, v5, &v70, 0);
            if (v54 == 2)
            {
              goto LABEL_122;
            }

            *(v53 + 24) = v54;
            *(v54 + 40) = v53;
            if (v70)
            {
              C3DShapeTriangulationAddEdge_cold_1();
            }

LABEL_123:
            free(v71);
            v55 = v69;
            free(v68);
            free(v55);
            v56 = v66;
            free(v65);
            free(v56);
            return;
          }

          v49 = 3;
        }

        v46 = v32[v49];
        goto LABEL_114;
      }

      v21 = 24;
    }

    v20 = *(v7 + v21);
    goto LABEL_55;
  }

  while (--v8)
  {
    if (*v7 == v3)
    {
      v9 = 24;
      goto LABEL_15;
    }

    if (*(v7 + 8) == v3)
    {
      v9 = 32;
      goto LABEL_15;
    }

    if (*(v7 + 16) == v3)
    {
      v9 = 40;
LABEL_15:
      v7 = *(v7 + v9);
    }

    if (C3DEdgeCrossingSegment(v7, v3, v5, &v72))
    {
      goto LABEL_17;
    }
  }

  v16 = 2;
LABEL_42:
  *(v4 + 40) = v16;
}

void *C3DShapeTriangulationResolveSwaps(void *result, double *a2)
{
  v2 = *result;
  if (!*result)
  {
    return result;
  }

  v4 = result;
  while (2)
  {
    if (v2 > *(v4 + 8))
    {
      v26 = 9;
LABEL_37:
      *(v4 + 10) = v26;
      return result;
    }

    v5 = v4[1];
    v6 = v2 - 1;
    *v4 = v6;
    v7 = *(v5 + 8 * v6);
    v8 = *(v7 + 32);
    if (!v8)
    {
      v26 = 10;
      goto LABEL_37;
    }

    v9 = 0;
    v10 = v8 + 24;
    v11 = 24;
    while (*(v8 + v11) != v7)
    {
      --v9;
      v11 += 8;
      if (v9 == -3)
      {
        goto LABEL_36;
      }
    }

    if (v9)
    {
      v12 = ~v9;
    }

    else
    {
      v12 = 2;
    }

    if (v12 == -1)
    {
      goto LABEL_36;
    }

    if ((*(v7 + 49) & 1) == 0)
    {
      v13 = v8 + v11;
      v14 = *(v13 - 24);
      v15 = *(v8 + 8 * v12);
      v16 = v9 == -2 ? 0 : 1 - v9;
      result = C3DCircumcircleContainsPoint(*(v13 - 24), *(v8 + 8 * v16), *(v8 + 8 * v12), a2);
      if (result)
      {
        v17 = *(v10 + 8 * v16);
        v18 = *(v10 + 8 * v12);
        v19 = *(v7 + 40);
        v20 = *(v8 + 48 + v12);
        v21 = *(v7 + 50);
        *(v7 + 49) = *(v8 + 48 + v16);
        *(v8 + 48) = 0;
        *(v8 + 49) = v20;
        *(v8 + 50) = v21;
        *(v7 + 16) = v15;
        *(v7 + 32) = v17;
        *(v7 + 40) = v8;
        *v8 = a2;
        *(v8 + 8) = v15;
        *(v8 + 16) = v14;
        *(v8 + 24) = v7;
        *(v8 + 32) = v18;
        *(v8 + 40) = v19;
        if (v17)
        {
          v22 = (v17 + 24);
          v23 = 3;
          while (*v22 != v8)
          {
            ++v22;
            if (!--v23)
            {
              goto LABEL_36;
            }
          }

          if (v22 == 3)
          {
            goto LABEL_36;
          }

          *v22 = v7;
          result = C3DShapeTriangulationStackPush(v4, v7);
        }

        if (v18)
        {
          result = C3DShapeTriangulationStackPush(v4, v8);
        }

        if (v19)
        {
          v24 = (v19 + 24);
          v25 = 3;
          while (*v24 != v7)
          {
            ++v24;
            if (!--v25)
            {
              goto LABEL_36;
            }
          }

          if (v24 != 3)
          {
            *v24 = v8;
            goto LABEL_34;
          }

LABEL_36:
          v26 = 5;
          goto LABEL_37;
        }
      }
    }

LABEL_34:
    v2 = *v4;
    if (*v4)
    {
      continue;
    }

    return result;
  }
}

void *C3DShapeTriangulationTriangleSplitInside(int *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 32);
  v18 = *(a2 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  *a2 = a3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  NewTriangle = C3DShapeTriangulationGetNewTriangle(a1);
  result = C3DShapeTriangulationGetNewTriangle(a1);
  v13 = result;
  *(a2 + 24) = NewTriangle;
  *(a2 + 32) = v10;
  *(a2 + 40) = result;
  *NewTriangle = a3;
  *(NewTriangle + 8) = v9;
  *(NewTriangle + 16) = v7;
  *(NewTriangle + 24) = result;
  *(NewTriangle + 32) = v18;
  *(NewTriangle + 40) = a2;
  *result = a3;
  result[1] = v8;
  result[2] = v9;
  result[3] = a2;
  result[4] = v6;
  result[5] = NewTriangle;
  *(NewTriangle + 48) = 0;
  *(NewTriangle + 49) = *(a2 + 50);
  *(NewTriangle + 50) = 0;
  *(result + 48) = 0;
  *(result + 49) = *(a2 + 49);
  *(result + 50) = 0;
  *(a2 + 49) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  if (v10)
  {
    result = C3DShapeTriangulationStackPush(a1, a2);
  }

  if (v6)
  {
    v14 = v6 + 24;
    v15 = 3;
    while (*v14 != a2)
    {
      v14 += 8;
      if (!--v15)
      {
        v14 = 3;
        break;
      }
    }

    *v14 = v13;
    result = C3DShapeTriangulationStackPush(a1, v13);
  }

  if (v18)
  {
    v16 = v18 + 24;
    v17 = 3;
    while (*v16 != a2)
    {
      v16 += 8;
      if (!--v17)
      {
        v16 = 3;
        break;
      }
    }

    *v16 = NewTriangle;

    return C3DShapeTriangulationStackPush(a1, NewTriangle);
  }

  return result;
}

void *C3DShapeTriangulationTriangleSplitOnEdge(int *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v8 = *(a2 + 24 + 8 * a4);
  v9 = (a5 + 1) % 3;
  v33 = *(v8 + 24 + 8 * v9);
  v10 = (a5 + 2) % 3;
  v31 = *(v8 + 24 + 8 * v10);
  v11 = (a4 + 1) % 3;
  v12 = *(a2 + 24 + 8 * v11);
  v13 = (a4 + 2) % 3;
  v28 = *(a2 + 24 + 8 * v13);
  v32 = *(v8 + 48 + v9);
  v29 = *(v8 + 48 + v10);
  v25 = *(a2 + 48 + v11);
  v30 = *(a2 + 48 + v13);
  v14 = *(v8 + 48 + a5);
  v27 = *(a2 + 8 * a4);
  v15 = *(v8 + 8 * a5);
  v16 = *(a2 + 8 * v13);
  v17 = *(v8 + 8 * v10);
  NewTriangle = C3DShapeTriangulationGetNewTriangle(a1);
  result = C3DShapeTriangulationGetNewTriangle(a1);
  v20 = result;
  *a2 = a3;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v8;
  *(a2 + 32) = v12;
  *(a2 + 40) = NewTriangle;
  *(a2 + 48) = v14;
  *(a2 + 49) = v25;
  *(a2 + 50) = 0;
  *v8 = a3;
  *(v8 + 8) = v17;
  *(v8 + 16) = v15;
  *(v8 + 24) = result;
  *(v8 + 32) = v31;
  *(v8 + 40) = a2;
  *(v8 + 48) = 0;
  *(v8 + 49) = v29;
  *(v8 + 50) = v14;
  *NewTriangle = a3;
  *(NewTriangle + 8) = v16;
  *(NewTriangle + 16) = v27;
  *(NewTriangle + 24) = a2;
  *(NewTriangle + 32) = v28;
  *(NewTriangle + 40) = result;
  *(NewTriangle + 48) = 0;
  *(NewTriangle + 49) = v30;
  *(NewTriangle + 50) = v14;
  *result = a3;
  result[1] = v27;
  result[2] = v17;
  result[3] = NewTriangle;
  result[4] = v33;
  result[5] = v8;
  *(result + 48) = v14;
  *(result + 49) = v32;
  *(result + 50) = 0;
  if (v31)
  {
    result = C3DShapeTriangulationStackPush(a1, v8);
  }

  if (v12)
  {
    result = C3DShapeTriangulationStackPush(a1, a2);
  }

  if (v28)
  {
    v21 = v28 + 24;
    v22 = 3;
    while (*v21 != a2)
    {
      v21 += 8;
      if (!--v22)
      {
        v21 = 3;
        break;
      }
    }

    *v21 = NewTriangle;
    result = C3DShapeTriangulationStackPush(a1, NewTriangle);
  }

  if (v33)
  {
    v23 = v33 + 24;
    v24 = 3;
    while (*v23 != v8)
    {
      v23 += 8;
      if (!--v24)
      {
        v23 = 3;
        break;
      }
    }

    *v23 = v20;

    return C3DShapeTriangulationStackPush(a1, v20);
  }

  return result;
}

void *C3DShapeTriangulationAddPoint(uint64_t a1, float64x2_t *a2)
{
  result = C3DShapeTriangulationTriangleContainingPoint(a2, (*(a1 + 16) + 56 * (*(a1 + 32) - 1)), a1);
  if (result == 2)
  {
    *(a1 + 40) = 8;
  }

  else
  {
    v5 = result;
    v6 = 0;
    if (C3DPointFallsOnTriangleEdgeAndLinks(result, a2->f64, &v6 + 1, &v6))
    {
      C3DShapeTriangulationTriangleSplitOnEdge(a1, v5, a2, HIDWORD(v6), v6);
    }

    else
    {
      C3DShapeTriangulationTriangleSplitInside(a1, v5, a2);
    }

    return C3DShapeTriangulationResolveSwaps(a1, a2->f64);
  }

  return result;
}

__n128 C3DShapeTriangulationInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  NewTriangle = C3DShapeTriangulationGetNewTriangle(a1);
  *(a1 + 24) = NewTriangle;
  v11 = *(*a2 + 16);
  v12 = *(*a2 + 24);
  v13 = *(*a2 + 32);
  v14 = *(*a2 + 40);
  v15 = v12 - v11;
  v16 = v14 - v13;
  if (vabdd_f64(v12, v11) < 0.00001 || vabdd_f64(v14, v13) < 0.00001)
  {
    *(a1 + 40) = 7;
  }

  v17 = v13 + v16 * -100.0;
  *(NewTriangle + 24) = 0;
  *(NewTriangle + 32) = 0;
  *(NewTriangle + 47) = 0;
  *(NewTriangle + 40) = 0;
  *a3 = v11 + v15 * -100.0;
  *(a3 + 8) = v17;
  *(a3 + 48) = *a3;
  *a4 = v11 + v15 * 100.0;
  *(a4 + 8) = v17;
  *(a4 + 48) = *a4;
  *a5 = v11 + v15 * 0.0;
  *(a5 + 8) = v13 + v16 * 100.0;
  result = *a5;
  *(a5 + 48) = *a5;
  *NewTriangle = a3;
  *(NewTriangle + 8) = a4;
  *(NewTriangle + 16) = a5;
  return result;
}

uint64_t C3DShapeTriangulationTriangleMark(uint64_t a1, int a2, BOOL *a3)
{
  *(a1 + 51) = 1;
  *(a1 + 52) = a2;
  v6 = *(a1 + 24);
  if (v6 && (*(v6 + 51) & 1) == 0)
  {
    C3DShapeTriangulationTriangleMark();
  }

  v7 = *(a1 + 32);
  if (v7 && (*(v7 + 51) & 1) == 0)
  {
    C3DShapeTriangulationTriangleMark();
  }

  result = *(a1 + 40);
  if (result)
  {
    if ((*(result + 51) & 1) == 0)
    {
      result = C3DShapeTriangulationTriangleMark();
    }
  }

  if (*(a1 + 24))
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 40))
      {
        return result;
      }

      v9 = 50;
    }

    else
    {
      v9 = 49;
    }
  }

  else
  {
    v9 = 48;
  }

  *a3 = *(a1 + v9) != a2;
  return result;
}

void *C3DShapeTriangulationClean(uint64_t a1)
{
  v10 = 0;
  C3DShapeTriangulationTriangleMark(*(a1 + 16), 1, &v10);
  LODWORD(v2) = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = 0;
  v4 = v10;
  do
  {
    if (*(*(a1 + 16) + 56 * v3 + 52) == v4)
    {
      LODWORD(v2) = v2 - 1;
      *(a1 + 32) = v2;
      if (v3 < v2)
      {
        v5 = v3;
        v6 = 56 * v3;
        do
        {
          v7 = *(a1 + 16) + v6;
          ++v5;
          v8 = *(v7 + 72);
          *v7 = *(v7 + 56);
          *(v7 + 16) = v8;
          *(v7 + 32) = *(v7 + 88);
          *(v7 + 48) = *(v7 + 104);
          v2 = *(a1 + 32);
          v6 += 56;
        }

        while (v5 < v2);
      }
    }

    else
    {
      ++v3;
    }
  }

  while (v3 < v2);
  if (v2)
  {
    result = malloc_type_realloc(*(a1 + 16), 56 * v2, 0x1020040F7381AC9uLL);
  }

  else
  {
LABEL_12:
    free(*(a1 + 16));
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void *C3DShapeConnectedComponentTriangulate(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = 0;
    v6 = (*a1 + 8);
    do
    {
      v7 = *v6;
      v6 += 14;
      v5 += v7;
      --v4;
    }

    while (v4);
    v8 = 2 * v5 + 2;
  }

  else
  {
    v8 = 2;
  }

  v30 = 0;
  v27 = 0x1000000000;
  v28 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
  v29 = malloc_type_malloc(56 * v8, 0x1020040F7381AC9uLL);
  v31 = 0;
  v32 = v8;
  v33 = 0;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v9 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v9;
  memset(v24, 0, sizeof(v24));
  C3DShapeTriangulationInit(&v27, v23, v26, v25, v24);
  if (!v33)
  {
    v11 = *(a1 + 8);
    v12 = (v11 - 1);
    if (v11 - 1 < 0)
    {
LABEL_23:
      C3DShapeTriangulationClean(&v27);
      free(v28);
      *a2 = v31;
      return v29;
    }

    v22 = vdupq_n_s64(0x3EE4F8B588E368F1uLL);
    while (1)
    {
      v13 = *a1 + 56 * v12;
      v14 = *(v13 + 8);
      if (v14 >= 3)
      {
        break;
      }

LABEL_21:
      if (v12-- <= 0)
      {
        goto LABEL_23;
      }
    }

    v15 = *v13;
    C3DShapeTriangulationAddPoint(&v27, *v13);
    v16 = v22;
    if (!v33)
    {
      v17 = 80;
      v18 = 1;
      while (1)
      {
        v19 = 0;
        while (1)
        {
          v20 = vmovn_s64(vcgeq_f64(v16, vabdq_f64(v15[5 * v18], v15[v19 / 0x10])));
          if (v20.i32[0] & v20.i32[1])
          {
            break;
          }

          v19 += 80;
          if (v17 == v19)
          {
            C3DShapeTriangulationAddPoint(&v27, &v15[5 * v18]);
            if (v33)
            {
              goto LABEL_7;
            }

            break;
          }
        }

        C3DShapeTriangulationAddEdge(&v27, v15[5 * v18 - 5].f64, v15[5 * v18].f64);
        v16 = v22;
        if (v33)
        {
          break;
        }

        ++v18;
        v17 += 80;
        if (v18 == v14)
        {
          C3DShapeTriangulationAddEdge(&v27, v15[5 * (v14 - 1)].f64, v15->f64);
          if (v33)
          {
            break;
          }

          goto LABEL_21;
        }
      }
    }
  }

LABEL_7:
  free(v28);
  *a2 = 0;
  free(v29);
  return 0;
}

void C3DFaceDestroy(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 1);
      if (*(v4 + v2))
      {
        free(*(v4 + v2 + 8));
      }

      v5 = v4 + v2;
      *(v5 + 8) = 0;
      *v5 = 0;
      ++v3;
      v6 = *a1;
      v2 += 16;
    }

    while (v3 < v6);
    if (v6)
    {
      free(*(a1 + 1));
    }
  }

  *(a1 + 1) = 0;
  *a1 = 0;
}

double angle(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a5 - a3;
  v7 = a6 - a4;
  v8 = a1 - a3;
  v9 = a2 - a4;
  v10 = hypot(a5 - a3, a6 - a4);
  v11 = hypot(v8, v9);
  if (v10 == 0.0)
  {
    return 0.0;
  }

  v12 = v11;
  if (v12 == 0.0)
  {
    return 0.0;
  }

  v13 = (v9 * v7 + v6 * v8) / (v10 * v12);
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  if (v13 < -1.0)
  {
    v13 = -1.0;
  }

  *&result = acosf(v13);
  return result;
}

__n128 C3DSpokeListInsert(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    v5 = 2 * v4;
    a1[1] = v5;
    v6 = malloc_type_realloc(*(a1 + 1), 88 * v5, 0x1020040662E9E32uLL);
    *(a1 + 1) = v6;
    v4 = *a1;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  *a1 = v4 + 1;
  v7 = &v6[88 * v4];
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 1) = v8;
  result = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  *(v7 + 10) = *(a2 + 80);
  *(v7 + 3) = v10;
  *(v7 + 4) = v11;
  *(v7 + 2) = result;
  return result;
}

void C3DSpokeListListDestroy(unsigned int a1, void ***a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    do
    {
      v5 = *v4++;
      free(v5[1]);
      free(v5);
      --v3;
    }

    while (v3);
  }

  free(a2);
}

void *C3DSpokeListListInsert(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    v5 = 2 * v4;
    a1[1] = v5;
    result = malloc_type_realloc(*(a1 + 1), 8 * v5, 0x2004093837F09uLL);
    *(a1 + 1) = result;
    v4 = *a1;
  }

  else
  {
    result = *(a1 + 1);
  }

  *a1 = v4 + 1;
  result[v4] = a2;
  return result;
}

void C3DSpokeCreate(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  if (a5 == a7 && a6 == a8)
  {
    C3DSpokeCreate_cold_4();
  }

  if (a5 == a9 && a6 == a10)
  {
    C3DSpokeCreate_cold_3();
  }

  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a1;
  *(a4 + 24) = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 52) = -1;
  v18 = a5 - a7;
  v19 = a6 - a8;
  v20 = hypot(a5 - a7, a6 - a8);
  v21 = v18 / v20;
  v34 = a9;
  v35 = a10;
  v22 = a10 - a6;
  v23 = v19 / v20;
  v24 = hypot(a9 - a5, v22);
  v25 = (a9 - a5) / v24;
  v26 = v22 / v24;
  v27 = v23 + v26;
  v28 = hypot(v21 + v25, v27);
  if (v28 == 0.0)
  {
    v29 = *MEMORY[0x277CBF348];
    v30 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v29 = (v21 + v25) / v28;
    v30 = v27 / v28;
  }

  if (hypot(v29, v30) >= 0.00001)
  {
    *(a4 + 84) = v34 * a6 - a5 * v35 - v34 * a8 + a7 * v35 + a5 * a8 - a7 * a6 > 0.0;
    *(a4 + 64) = -v30;
    *(a4 + 72) = v29;
    v31 = angle(a7, a8, a5, a6, v34, v35);
    v32 = sin(*&v31 * 0.5);
    if (fabsf(v32) >= 0.00001)
    {
      *(a4 + 80) = 1.0 / v32;
    }
  }

  else
  {
    *(a4 + 64) = v25;
    *(a4 + 72) = v26;
  }
}

void intersectionForSpokeAndSpoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  if (fabs(hypot(v6, v7) + -1.0) >= 0.00001)
  {
    intersectionForSpokeAndSpoke_cold_2();
  }

  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  if (fabs(hypot(v8, v9) + -1.0) >= 0.00001)
  {
    intersectionForSpokeAndSpoke_cold_1();
  }

  v10 = v6 * v9 - v7 * v8;
  if (v10 == 0.0 || (v11 = *(a1 + 8), v12 = v11 - *(a2 + 8), v13 = *a1 - *a2, v14 = v10, v15 = (v8 * v12 - v9 * v13) / v10, v15 < 0.0) || (v16 = (v13 * -v7 + v6 * v12) / v14, v16 < 0.0))
  {
    *a3 = C3DOffsetEventNone;
    *(a3 + 16) = unk_21C2A3DB0;
    *(a3 + 32) = 0;
  }

  else
  {
    v17 = v15 / *(a1 + 80);
    v18 = v16 / *(a2 + 80);
    v19 = (1.0 - v15);
    v20 = v15;
    *(a3 + 8) = (v6 + *a1) * v20 + v19 * *a1;
    *(a3 + 16) = (v7 + v11) * v20 + v19 * v11;
    if (v17 <= v18)
    {
      v21 = v18;
    }

    else
    {
      v21 = v17;
    }

    *(a3 + 4) = v21;
    *a3 = 1;
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;
  }
}

void intersectionForSpokeAndEdge(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 == a2)
  {
    intersectionForSpokeAndEdge_cold_2();
  }

  if (a1 == a3)
  {
    intersectionForSpokeAndEdge_cold_1();
  }

  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *a3;
  v12 = *(a3 + 8);
  v14 = *a3 - *a2;
  v15 = hypot(v14, v12 - v11);
  v16 = v14 / v15;
  v17 = (v12 - v11) / v15;
  v18 = v9 - v10;
  v19 = v8 - v11;
  v20 = *(a2 + 80);
  v21 = *(a1 + 80);
  v22 = *(a1 + 64);
  v23 = *(a1 + 72);
  v24 = *(a2 + 64) * v20 - v22 * v21;
  v25 = *(a2 + 72) * v20 - v23 * v21;
  v26 = v16;
  v27 = v17;
  v28 = fabsf(v26);
  if (v28 <= 0.00001)
  {
    if (fabsf(v27) <= 0.00001)
    {
      goto LABEL_16;
    }

    v32 = (v26 * v25) / v27;
    if (vabds_f32(v24, v32) <= 0.00001)
    {
      goto LABEL_16;
    }

    v30 = (v18 - ((v19 * v26) / v27)) / (v24 - v32);
    v31 = (v19 - (v25 * v30)) / v27;
  }

  else
  {
    v29 = (v27 * v24) / v26;
    if (vabds_f32(v25, v29) <= 0.00001)
    {
      goto LABEL_16;
    }

    v30 = (v19 - ((v18 * v27) / v26)) / (v25 - v29);
    v31 = (v18 - (v24 * v30)) / v26;
  }

  if (v30 < 0.0 || v31 < 0.0)
  {
    goto LABEL_16;
  }

  v33 = *(a3 + 80);
  if (v28 > 0.00001)
  {
    v34 = -v26;
    v35 = *(a3 + 64) * v33 - v22 * v21;
    v36 = v9 - v13;
    goto LABEL_15;
  }

  if (fabsf(v27) <= 0.00001)
  {
LABEL_16:
    *a4 = C3DOffsetEventNone;
    *(a4 + 16) = unk_21C2A3DB0;
    *(a4 + 32) = 0;
    return;
  }

  v34 = -v27;
  v35 = *(a3 + 72) * v33 - v23 * v21;
  v36 = v8 - v12;
LABEL_15:
  v37 = v36;
  v38 = v35;
  if (((v37 - (v38 * v30)) / v34) < 0.0)
  {
    goto LABEL_16;
  }

  *a4 = 2;
  *(a4 + 4) = v30;
  *(a4 + 8) = v9 + v22 * v21 * v30;
  *(a4 + 16) = v8 + v23 * v21 * v30;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
}

double boundaryArea(unsigned int a1, uint64_t a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = (a2 + 8);
  LODWORD(result) = 0;
  v4 = 1;
  do
  {
    if (v4 == a1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    result = *(v2 - 1) * *(a2 + 24 * v5 + 8) - *v2 * *(a2 + 24 * v5) + *&result;
    *&result = result;
    v2 += 3;
    ++v4;
  }

  while (v4 - a1 != 1);
  *&result = *&result * 0.5;
  return result;
}

void C3DOffsetInitSpokes(int *a1, unsigned int a2, uint64_t a3)
{
  if (a2 >= 3 && fabsf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(boundaryArea(a2, a3)))) >= 0.0001)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    *v6 = 0x400000000;
    v7 = malloc_type_malloc(0x160uLL, 0x1020040662E9E32uLL);
    v8 = 0;
    *(v6 + 1) = v7;
    v9 = (a3 + 16);
    do
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v11 = v8 + 1;
      if (a2 - 1 == v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 + 1;
      }

      v10 = (a3 + 24 * ((a2 - 1 + v8) % a2));
      C3DSpokeCreate(*v9, v6, v8, &v15, *(v9 - 2), *(v9 - 1), *v10, v10[1], *(a3 + 24 * v12), *(a3 + 24 * v12 + 8));
      v13[2] = v17;
      v13[3] = v18;
      v13[4] = v19;
      v14 = v20;
      v13[0] = v15;
      v13[1] = v16;
      C3DSpokeListInsert(v6, v13);
      v9 += 3;
      v8 = v11;
    }

    while (a2 != v11);

    C3DSpokeListListInsert(a1, v6);
  }
}

void C3DOffsetCreate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *(a3 + 48) = 0;
  *(a3 + 52) = a4;
  v6 = malloc_type_malloc(0xE0uLL, 0x10A0040E17462F8uLL);
  *(a3 + 16) = 0x400000000;
  *(a3 + 24) = v6;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  v7 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
  *a3 = 0x400000000;
  *(a3 + 8) = v7;
  a1 = a1;
  if (a1)
  {
    v9 = (a2 + 8);
    do
    {
      C3DOffsetInitSpokes(a3, *(v9 - 1), *v9);
      v9 += 2;
      --a1;
    }

    while (a1);
  }
}

void C3DOffsetDestroy(uint64_t a1)
{
  C3DOffsetListDestroy(*(a1 + 16), *(a1 + 24));
  C3DSpokeListListDestroy(*a1, *(a1 + 8));

  C3DFaceDestroy((a1 + 32));
}

void C3DOffsetListDestroy(unsigned int a1, _OWORD *a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    do
    {
      v5 = v4[1];
      v6[0] = *v4;
      v6[1] = v5;
      v6[2] = v4[2];
      v7 = *(v4 + 6);
      C3DOffsetDestroy(v6);
      v4 = (v4 + 56);
      --v3;
    }

    while (v3);
  }

  free(a2);
}

__n128 C3DOffsetListInsert(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    v5 = 2 * v4;
    a1[1] = v5;
    v6 = malloc_type_realloc(*(a1 + 1), 56 * v5, 0x10A0040E17462F8uLL);
    *(a1 + 1) = v6;
    v4 = *a1;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  *a1 = v4 + 1;
  v7 = &v6[56 * v4];
  result = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  *(v7 + 6) = *(a2 + 48);
  *(v7 + 1) = v9;
  *(v7 + 2) = v10;
  *v7 = result;
  return result;
}

float nextEventsForOffsetAndSpoke(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0;
  intersectionForSpokeAndSpoke(a2, *(*(a2 + 40) + 8) + 88 * ((*(a2 + 48) + 1) % **(a2 + 40)), &v25);
  v8 = v26;
  *a3 = v25;
  *(a3 + 16) = v8;
  *(a3 + 32) = v27;
  if (*a3)
  {
    v9 = *(a3 + 4);
  }

  else
  {
    v9 = 3.4028e38;
  }

  if (*(a2 + 84) == 1)
  {
    v10 = *a1;
    if (v10)
    {
      for (i = 0; i < v10; ++i)
      {
        v12 = *(*(a1 + 1) + 8 * i);
        v13 = *v12;
        if (v13)
        {
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = *(v12 + 1);
            v17 = v16 + v14;
            if (v15 == v13)
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

            v19 = v16 + 88 * v18;
            if (v17 != a2 && v19 != a2)
            {
              v27 = 0;
              v25 = 0u;
              v26 = 0u;
              intersectionForSpokeAndEdge(a2, v17, v19, &v25);
              if (v25)
              {
                v21 = *(&v25 + 1);
                if (v9 + -0.00001 > *(&v25 + 1))
                {
                  *a3 = 0;
                  v22 = v26;
                  *a4 = v25;
                  *(a4 + 16) = v22;
                  *(a4 + 32) = v27;
                  v9 = v21;
                }
              }

              v13 = *v12;
            }

            v14 += 88;
          }

          while (v15++ < v13);
          v10 = *a1;
        }
      }
    }
  }

  return v9;
}

uint64_t boundaryAtBoundaryEnd(unsigned int *a1, int a2, float a3, float a4)
{
  LODWORD(v4) = *a1;
  if (*a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = a4;
    while (1)
    {
      v12 = *(a1 + 1);
      v13 = v12 + v7;
      v14 = vmlaq_n_f64(*(v12 + v7), *(v12 + v7 + 64), (*(v12 + v7 + 80) * a3));
      v15 = *(v12 + v7 + 16);
      if (v15)
      {
        v15[3] = v14;
        v15[4].f64[0] = v11;
      }

      *(v13 + 24) = v14;
      *(v13 + 52) = a2;
      v23 = v14;
      if (!v9)
      {
        break;
      }

      v16 = v9 - 1;
      v17 = v14.f64[1];
      if (hypot(v10[3 * v16] - v14.f64[0], v10[3 * v16 + 1] - v14.f64[1]) >= 1.0)
      {
        if (v8 != v4 - 1 || hypot(*v10 - v23.f64[0], v10[1] - v17) >= 1.0)
        {
          v19 = v9 + 1;
          v10 = malloc_type_realloc(v10, 24 * (v9 + 1), 0x10200403ED2C137uLL);
          v20 = &v10[3 * v9];
          *v20 = v23.f64[0];
          v20[1] = v17;
          v18 = (v20 + 2);
          goto LABEL_12;
        }

        v16 = 0;
      }

LABEL_13:
      *(v12 + v7 + 56) = v16;
      ++v8;
      v4 = *a1;
      v7 += 88;
      if (v8 >= v4)
      {
        return v9;
      }
    }

    v10 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
    *v10 = v23;
    v18 = (v10 + 2);
    v19 = 1;
LABEL_12:
    *v18 = v15;
    v16 = v9;
    v9 = v19;
    goto LABEL_13;
  }

  return 0;
}

uint64_t newFaceAtEnd(unsigned int *a1, float a2)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = boundaryAtBoundaryEnd(*(*(a1 + 1) + 8 * v4), v4, a2, *(a1 + 13) + a2);
    v9 = v7;
    v10 = v8;
    if (v7 < 3)
    {
      if (v7)
      {
        free(v8);
      }
    }

    else
    {
      v5 = malloc_type_realloc(v5, 16 * (v6 + 1), 0x1020040D5A9D86FuLL);
      v11 = &v5[16 * v6];
      *v11 = v9;
      v11[1] = v10;
      ++v6;
    }

    ++v4;
  }

  while (v4 < *a1);
  return v6;
}

uint64_t splitJoinFace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, unsigned int *a7, unsigned int *a8)
{
  if (*a4 != 2)
  {
    splitJoinFace_cold_1();
  }

  v8 = *(a4 + 24);
  v9 = *(v8 + 52);
  if (v9 == -1)
  {
    splitJoinFace_cold_5();
  }

  v10 = *(a4 + 32);
  if (*(v10 + 52) == -1)
  {
    splitJoinFace_cold_4();
  }

  *a5 = v9;
  v11 = *(v10 + 52);
  *a6 = v11;
  v12 = *(v8 + 56);
  if (v12 == -1)
  {
    splitJoinFace_cold_3();
  }

  v13 = *(v10 + 56);
  if (v13 == -1)
  {
    splitJoinFace_cold_2();
  }

  v16 = *(v8 + 52);
  v17 = (a3 + 16 * v16);
  v18 = (a3 + 16 * v11);
  v19 = *v17;
  v89 = *v18;
  v20 = (v13 + 1) % *v18;
  *a8 = 0;
  *a7 = 0;
  v21 = (v12 + 1) % v19;
  *(a8 + 1) = 0;
  *(a7 + 1) = 0;
  if (v16 != v11)
  {
    v88 = a3 + 16 * v16;
    v46 = 0;
    v47 = 0;
    for (i = 0; i <= v13; ++i)
    {
      v49 = (*(v18 + 1) + 24 * i);
      v50 = v49[2];
      v51 = *v49;
      v52 = v49[1];
      v47 = malloc_type_realloc(v47, 24 * (v46 + 1), 0x10200403ED2C137uLL);
      *(a7 + 1) = v47;
      v53 = *a7;
      v54 = &v47[24 * *a7];
      *v54 = v51;
      *(v54 + 1) = v52;
      *(v54 + 2) = v50;
      v46 = v53 + 1;
      *a7 = v53 + 1;
    }

    v55 = (*(v88 + 8) + 24 * v12);
    v56 = *v55;
    v57 = v55[1];
    v58 = malloc_type_realloc(v47, 24 * (v53 + 2), 0x10200403ED2C137uLL);
    *(a7 + 1) = v58;
    v59 = *a7;
    v60 = &v58[24 * *a7];
    *v60 = v56;
    *(v60 + 1) = v57;
    *(v60 + 2) = 0;
    v61 = v59 + 1;
    *a7 = v61;
    while (v21 != v12)
    {
      v62 = (*(v88 + 8) + 24 * v21);
      v63 = v62[2];
      v64 = *v62;
      v65 = v62[1];
      v58 = malloc_type_realloc(v58, 24 * (v61 + 1), 0x10200403ED2C137uLL);
      *(a7 + 1) = v58;
      v66 = *a7;
      v67 = &v58[24 * *a7];
      *v67 = v64;
      *(v67 + 1) = v65;
      *(v67 + 2) = v63;
      v61 = v66 + 1;
      *a7 = v61;
      if (v21 + 1 == v19)
      {
        v21 = 0;
      }

      else
      {
        ++v21;
      }
    }

    v68 = (*(v88 + 8) + 24 * v12);
    v69 = *v68;
    v70 = v68[1];
    v71 = malloc_type_realloc(v58, 24 * (v61 + 1), 0x10200403ED2C137uLL);
    *(a7 + 1) = v71;
    v72 = *a7;
    v73 = &v71[24 * *a7];
    *v73 = v69;
    *(v73 + 1) = v70;
    *(v73 + 2) = 0;
    v74 = v72 + 1;
    *a7 = v74;
    if (v20)
    {
      do
      {
        v75 = (*(v18 + 1) + 24 * v20);
        v76 = v75[2];
        v77 = *v75;
        v78 = v75[1];
        v71 = malloc_type_realloc(v71, 24 * (v74 + 1), 0x10200403ED2C137uLL);
        *(a7 + 1) = v71;
        v79 = *a7;
        v80 = &v71[24 * *a7];
        *v80 = v77;
        *(v80 + 1) = v78;
        *(v80 + 2) = v76;
        v74 = v79 + 1;
        *a7 = v74;
        ++v20;
      }

      while (v20 < v89);
    }

    if (*v88)
    {
      free(*(v88 + 8));
    }

    *(v88 + 8) = 0;
    *v88 = 0;
    v22 = 2;
    v17 = v18;
    if (!*v18)
    {
      goto LABEL_29;
    }

LABEL_28:
    free(v17[1]);
LABEL_29:
    v17[1] = 0;
    *v17 = 0;
    return v22;
  }

  v22 = 3;
  if (v12 != v13 && v12 != v20)
  {
    v23 = (v17[1] + 24 * v12);
    v24 = *v23;
    v25 = v23[1];
    *a7 = 1;
    v26 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
    *(a7 + 1) = v26;
    *v26 = v24;
    v26[1] = v25;
    v26[2] = 0;
    v27 = *a7;
    do
    {
      v28 = (v17[1] + 24 * v20);
      v29 = v12;
      v30 = v28[2];
      v31 = *v28;
      v32 = v28[1];
      v26 = malloc_type_realloc(v26, 24 * (v27 + 1), 0x10200403ED2C137uLL);
      *(a7 + 1) = v26;
      v33 = *a7;
      v34 = &v26[3 * *a7];
      *v34 = v31;
      v34[1] = v32;
      v34[2] = v30;
      v12 = v29;
      v27 = v33 + 1;
      *a7 = v27;
      LODWORD(v20) = (v20 + 1) % v19;
    }

    while (v20 != v29);
    v35 = (v17[1] + 24 * v29);
    v36 = *v35;
    v37 = v35[1];
    *a8 = 1;
    v38 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
    *(a8 + 1) = v38;
    *v38 = v36;
    v38[1] = v37;
    v38[2] = 0;
    v39 = *a8;
    while (v21 != v13)
    {
      v40 = (v17[1] + 24 * v21);
      v41 = v40[2];
      v42 = *v40;
      v43 = v40[1];
      v38 = malloc_type_realloc(v38, 24 * (v39 + 1), 0x10200403ED2C137uLL);
      *(a8 + 1) = v38;
      v44 = *a8;
      v45 = &v38[3 * *a8];
      *v45 = v42;
      v45[1] = v43;
      v45[2] = v41;
      v39 = v44 + 1;
      *a8 = v39;
      if (v21 + 1 == v19)
      {
        v21 = 0;
      }

      else
      {
        ++v21;
      }
    }

    v82 = (v17[1] + 24 * v13);
    v83 = *v82;
    v84 = v82[1];
    v85 = malloc_type_realloc(v38, 24 * (v39 + 1), 0x10200403ED2C137uLL);
    *(a8 + 1) = v85;
    v86 = *a8;
    v87 = &v85[24 * *a8];
    *v87 = v83;
    *(v87 + 1) = v84;
    *(v87 + 2) = 0;
    *a8 = v86 + 1;
    v22 = 1;
    if (!*v17)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  return v22;
}

void C3DOffsetBuild(unsigned int *a1, float a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 3.4028e38;
    do
    {
      v11 = *(*(a1 + 1) + 8 * v5);
      if (*v11)
      {
        v46 = v5;
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(v11 + 1);
          v49 = 0;
          v47 = 0u;
          v48 = 0u;
          v60 = 0;
          v58 = 0u;
          v59 = 0u;
          EventsForOffsetAndSpoke = nextEventsForOffsetAndSpoke(a1, v14 + v12, &v47, &v58);
          if (v10 + -0.00001 > EventsForOffsetAndSpoke)
          {
            if (v6)
            {
              free(v6);
            }

            if (v7)
            {
              free(v7);
              v9 = 0;
              v8 = 0;
              v7 = 0;
            }

            else
            {
              v9 = 0;
              v8 = 0;
            }

            v6 = 0;
            v10 = EventsForOffsetAndSpoke;
          }

          if (vabds_f32(EventsForOffsetAndSpoke, v10) < 0.00001)
          {
            if (v47)
            {
              v6 = malloc_type_realloc(v6, 40 * (v8 + 1), 0x1020040BD065CB0uLL);
              v16 = &v6[40 * v8];
              v17 = v48;
              *v16 = v47;
              *(v16 + 1) = v17;
              *(v16 + 4) = v49;
              ++v8;
            }

            if (v58)
            {
              v7 = malloc_type_realloc(v7, 40 * (v9 + 1), 0x1020040BD065CB0uLL);
              v18 = v7 + 40 * v9;
              v19 = v59;
              *v18 = v58;
              *(v18 + 1) = v19;
              *(v18 + 4) = v60;
              ++v9;
            }
          }

          ++v13;
          v12 += 88;
        }

        while (v13 < *v11);
        v4 = *a1;
        v5 = v46;
      }

      ++v5;
    }

    while (v5 < v4);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v10 = 3.4028e38;
  }

  if (fabsf(v10) >= 0.00001)
  {
    *(a1 + 12) = v10;
    v57 = 0;
    v55[1] = 0;
    v56 = 0uLL;
    v55[0] = 0;
    v54 = 0uLL;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    if (v10 <= a2)
    {
      v24 = newFaceAtEnd(a1, v10);
      v23 = v24;
      v22 = v25;
      *&v56 = v24;
      *(&v56 + 1) = v25;
      if (!v6 || v7)
      {
        if (v24)
        {
          if (!v7)
          {
            v33 = scn_default_log();
            v24 = os_log_type_enabled(v33, OS_LOG_TYPE_FAULT);
            if (v24)
            {
              C3DOffsetBuild_cold_1(v33);
            }
          }

          if (*(*(v7 + 3) + 52) < v23 && *(*(v7 + 4) + 52) < v23)
          {
            v34 = *v7;
            v35 = v7[1];
            v49 = *(v7 + 4);
            v47 = v34;
            v48 = v35;
            v36 = splitJoinFace(v24, v23, v22, &v47, &v57 + 1, &v57, &v52, &v50);
            if (v36 == 2 || v36 == 1)
            {
              if (v52)
              {
                free(v53);
              }

              v53 = 0;
              LODWORD(v52) = 0;
              if (v50)
              {
                free(v51);
              }

              v51 = 0;
              LODWORD(v50) = 0;
              v32 = &v56;
              goto LABEL_36;
            }
          }

LABEL_28:
          v26 = *(a1 + 12);
          v27 = v26 + *(a1 + 13);
          v28 = a2 - v26;
          v29.n128_u64[1] = *(&v56 + 1);
          v54 = v56;
          v29.n128_f64[0] = v28;
          if (v28 > 0.00001)
          {
            if (v54)
            {
              C3DOffsetCreate(v54, *(&v54 + 1), &v47, v27);
              C3DOffsetListInsert(a1 + 4, &v47);
            }

            if (a1[4])
            {
              v30 = 0;
              v31 = 0;
              do
              {
                C3DOffsetBuild(*(a1 + 3) + v30, v28, v29);
                ++v31;
                v30 += 56;
              }

              while (v31 < a1[4]);
            }

            goto LABEL_51;
          }

          C3DFaceDestroy(&v54);
          v32 = v55;
LABEL_36:
          C3DFaceDestroy(v32);
          goto LABEL_51;
        }

        goto LABEL_50;
      }
    }

    else
    {
      *(a1 + 12) = a2;
      v20 = newFaceAtEnd(a1, a2);
      v22 = v21;
      *&v56 = v20;
      *(&v56 + 1) = v21;
      LODWORD(v23) = v20;
    }

    if (v23)
    {
      goto LABEL_28;
    }

LABEL_50:
    if (v22)
    {
      C3DOffsetBuild_cold_2();
    }
  }

LABEL_51:
  if (v6)
  {
    free(v6);
  }

  if (v7)
  {
    free(v7);
  }

  if (outputArcs == 1 && *a1)
  {
    v37 = 0;
    v38 = arcs;
    do
    {
      v39 = *(*(a1 + 1) + 8 * v37);
      v38 = malloc_type_realloc(v38, 32 * (*v39 + arcCount), 0x1000040E0EAB150uLL);
      arcs = v38;
      v40 = *v39;
      if (v40)
      {
        v41 = arcCount;
        v42 = *(v39 + 1);
        do
        {
          v43 = v41++;
          v44 = *(v42 + 24);
          v45 = &v38[32 * v43];
          *v45 = *v42;
          *(v45 + 1) = v44;
          v42 = (v42 + 88);
          --v40;
        }

        while (v40);
        arcCount = v41;
      }

      ++v37;
    }

    while (v37 < *a1);
  }
}

void __C3DShapeConnectedComponentSkeletonize(uint64_t *a1, float a2)
{
  v4 = *(a1 + 2);
  v5 = malloc_type_malloc(16 * v4, 0x1020040D5A9D86FuLL);
  if (v4)
  {
    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = malloc_type_malloc(24 * *(v7 + 56 * v6 + 8), 0x10200403ED2C137uLL);
      v9 = &v5[16 * v6];
      *(v9 + 1) = v8;
      v7 = *a1;
      LODWORD(v10) = *(*a1 + 56 * v6 + 8);
      *v9 = v10;
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = v7 + 56 * v6;
        v14 = -1;
        do
        {
          v15 = (*v13 + 80 * (v10 + v14));
          v16 = *(v9 + 1) + v11;
          *(v16 + 16) = v15;
          *v16 = *v15;
          ++v12;
          v7 = *a1;
          v13 = *a1 + 56 * v6;
          v10 = *(v13 + 8);
          v11 += 24;
          --v14;
        }

        while (v12 < v10);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  C3DOffsetCreate(v4, v5, v17, 0.0);
  C3DOffsetBuild(v17, a2);
  C3DOffsetDestroy(v17);
}

float C3DShapeConnectedComponentSkeletonize(_OWORD *a1, double a2)
{
  outputArcs = 0;
  v2 = a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  __C3DShapeConnectedComponentSkeletonize(v5, v2);
  return result;
}

uint64_t C3DCreateDataWithContentOfURL(uint64_t a1, uint64_t a2)
{
  if (!_decryptionCallbacks || ((v4 = _decryptionCallbacks(a1, _userInfo), v5 = off_27CDDA808, v4) ? (v6 = off_27CDDA808 == 0) : (v6 = 1), v6))
  {
    v7 = objc_alloc(MEMORY[0x277CBEA90]);

    return [v7 initWithContentsOfURL:a1 options:0 error:a2];
  }

  else
  {
    v9 = _userInfo;

    return v5(a1, v9);
  }
}

CGImageSourceRef C3DCreateImageSourceWithURL(const __CFURL *a1)
{
  if (_decryptionCallbacks)
  {
    if (_decryptionCallbacks(a1, _userInfo) && off_27CDDA808 != 0)
    {
      v4 = off_27CDDA808(a1, _userInfo);
      if (v4)
      {
        v5 = v4;
        v6 = CGImageSourceCreateWithData(v4, 0);
        CFRelease(v5);
        return v6;
      }

      return 0;
    }
  }

  if (!C3DFileMayExistAtURL(a1))
  {
    return 0;
  }

  return CGImageSourceCreateWithURL(a1, 0);
}

_OWORD *C3DSetFileDecryptionCallbacks(_OWORD *result, uint64_t a2)
{
  _userInfo = a2;
  if (result)
  {
    *&_decryptionCallbacks = *result;
  }

  else
  {
    _decryptionCallbacks = 0;
  }

  return result;
}

BOOL __addJSValueExtension(NSString *a1, const char *a2, int a3)
{
  MetaClass = NSClassFromString(&cfstr_Jsvalue.isa);
  v7 = NSSelectorFromString(a1);
  v8 = objc_opt_class();
  if (a3)
  {
    InstanceMethod = class_getInstanceMethod(v8, v7);
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    ClassMethod = class_getClassMethod(v8, v7);
    Implementation = method_getImplementation(ClassMethod);
    MetaClass = objc_getMetaClass("JSValue");
  }

  return class_addMethod(MetaClass, v7, Implementation, a2);
}

Class _addJSValueExtension()
{
  v2 = *MEMORY[0x277D85DE8];
  result = NSClassFromString(&cfstr_Jsvalue.isa);
  if (result)
  {
    if ((_addJSValueExtension_done & 1) == 0)
    {
      _addJSValueExtension_done = 1;
      strcpy(v1, "{SCNVector4=ffff}");
      __strcat_chk();
      __addJSValueExtension(&cfstr_Tovector4.isa, v1, 1);
      strcpy(v1, "{SCNVector3=fff}");
      __strcat_chk();
      __addJSValueExtension(&cfstr_Tovector3.isa, v1, 1);
      strcpy(v1, "{SCNMatrix4=ffffffffffffffff}");
      __strcat_chk();
      __addJSValueExtension(&cfstr_Totransform3d.isa, v1, 1);
      strcpy(v1, "@@:");
      __strcat_chk();
      __strcat_chk();
      __addJSValueExtension(&cfstr_Valuewithvecto.isa, v1, 0);
      strcpy(v1, "@@:");
      __strcat_chk();
      __strcat_chk();
      __addJSValueExtension(&cfstr_Valuewithvecto_0.isa, v1, 0);
      strcpy(v1, "@@:");
      __strcat_chk();
      __strcat_chk();
      return __addJSValueExtension(&cfstr_Valuewithtrans.isa, v1, 0);
    }
  }

  return result;
}

void SCNExportJavaScriptModule(JSContext *context)
{
  v2 = [(JSContext *)context objectForKeyedSubscript:@"_SceneKitIsLoaded"];
  if (!v2 || ![(JSValue *)v2 toBool])
  {
    if (SCNExportJavaScriptModule_onceToken != -1)
    {
      SCNExportJavaScriptModule_cold_1();
    }

    v3 = objc_opt_class();
    _exposeClass(context, @"SCNMaterialProperty", v3);
    v4 = objc_opt_class();
    _exposeClass(context, @"SCNBoundingBox", v4);
    v5 = objc_opt_class();
    _exposeClass(context, @"SCNBoundingSphere", v5);
    v6 = objc_opt_class();
    _exposeClass(context, @"SCNTransaction", v6);
    v7 = objc_opt_class();
    _exposeClass(context, @"SCNColor", v7);
    v8 = objc_opt_class();
    _exposeClass(context, @"CAMediaTimingFunction", v8);
    v9 = objc_opt_class();
    _exposeClass(context, @"CABasicAnimation", v9);
    v10 = objc_opt_class();
    _exposeClass(context, @"CAAnimationGroup", v10);
    v11 = objc_opt_class();
    _exposeClass(context, @"CAKeyframeAnimation", v11);
    v12 = objc_opt_class();
    _exposeClass(context, @"CALayer", v12);
    v13 = objc_opt_class();
    _exposeClass(context, @"SCNImage", v13);
    v14 = objc_opt_class();
    _exposeClass(context, @"SCNValue", v14);
    v15 = objc_opt_class();
    _exposeClass(context, @"SCNView", v15);
    v16 = objc_opt_class();
    _exposeClass(context, @"SCNNode", v16);
    v17 = objc_opt_class();
    _exposeClass(context, @"SCNGeometry", v17);
    v18 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsWorld", v18);
    v19 = objc_opt_class();
    _exposeClass(context, @"SCNMaterialProperty", v19);
    v20 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsBody", v20);
    v21 = objc_opt_class();
    _exposeClass(context, @"SCNTransformConstraint", v21);
    v22 = objc_opt_class();
    _exposeClass(context, @"SCNLookAtConstraint", v22);
    v23 = objc_opt_class();
    _exposeClass(context, @"SCNLight", v23);
    v24 = objc_opt_class();
    _exposeClass(context, @"SCNCylinder", v24);
    v25 = objc_opt_class();
    _exposeClass(context, @"SCNGeometryElement", v25);
    v26 = objc_opt_class();
    _exposeClass(context, @"SCNIKConstraint", v26);
    v27 = objc_opt_class();
    _exposeClass(context, @"SCNRenderer", v27);
    v28 = objc_opt_class();
    _exposeClass(context, @"SCNTube", v28);
    v29 = objc_opt_class();
    _exposeClass(context, @"SCNParticleSystem", v29);
    v30 = objc_opt_class();
    _exposeClass(context, @"SCNMorpher", v30);
    v31 = objc_opt_class();
    _exposeClass(context, @"SCNBox", v31);
    v32 = objc_opt_class();
    _exposeClass(context, @"SCNCamera", v32);
    v33 = objc_opt_class();
    _exposeClass(context, @"SCNLevelOfDetail", v33);
    v34 = objc_opt_class();
    _exposeClass(context, @"SCNMaterial", v34);
    v35 = objc_opt_class();
    _exposeClass(context, @"SCNProgram", v35);
    v36 = objc_opt_class();
    _exposeClass(context, @"SCNParticlePropertyController", v36);
    v37 = objc_opt_class();
    _exposeClass(context, @"SCNConstraint", v37);
    v38 = objc_opt_class();
    _exposeClass(context, @"SCNPlane", v38);
    v39 = objc_opt_class();
    _exposeClass(context, @"SCNCone", v39);
    v40 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsBehavior", v40);
    v41 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsHingeJoint", v41);
    v42 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsField", v42);
    v43 = objc_opt_class();
    _exposeClass(context, @"SCNGeometrySource", v43);
    v44 = objc_opt_class();
    _exposeClass(context, @"SCNTorus", v44);
    v45 = objc_opt_class();
    _exposeClass(context, @"SCNScene", v45);
    v46 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsShape", v46);
    v47 = objc_opt_class();
    _exposeClass(context, @"SCNCapsule", v47);
    v48 = objc_opt_class();
    _exposeClass(context, @"SCNFloor", v48);
    v49 = objc_opt_class();
    _exposeClass(context, @"SCNShape", v49);
    v50 = objc_opt_class();
    _exposeClass(context, @"SCNText", v50);
    v51 = objc_opt_class();
    _exposeClass(context, @"SCNTechnique", v51);
    v52 = objc_opt_class();
    _exposeClass(context, @"SCNPyramid", v52);
    v53 = objc_opt_class();
    _exposeClass(context, @"SCNSceneSource", v53);
    v54 = objc_opt_class();
    _exposeClass(context, @"SCNSphere", v54);
    v55 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsBallSocketJoint", v55);
    v56 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsSliderJoint", v56);
    v57 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsContact", v57);
    v58 = objc_opt_class();
    _exposeClass(context, @"SCNHitTestResult", v58);
    v59 = objc_opt_class();
    _exposeClass(context, @"SCNAnimationEvent", v59);
    v60 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsVehicle", v60);
    v61 = objc_opt_class();
    _exposeClass(context, @"SCNPhysicsVehicleWheel", v61);
    v62 = objc_opt_class();
    _exposeClass(context, @"SCNAction", v62);
    v63 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v63, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNActionTimingModeLinear");
    v64 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v64, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNActionTimingModeEaseIn");
    v65 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v65, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNActionTimingModeEaseOut");
    v66 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v66, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNActionTimingModeEaseInEaseOut");
    v67 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v67, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNEditingLocalSpace");
    v68 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v68, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNEditingParentSpace");
    v69 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v69, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNEditingWorldSpace");
    v70 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v70, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNEditingScreenSpace");
    v71 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v71, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNManipulatorPositionCenter");
    v72 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v72, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNManipulatorPositionMin");
    v73 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v73, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNManipulatorPositionMax");
    v74 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v74, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNAuthoringDisplayBoundingBoxes");
    v75 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v75, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNAuthoringDisplayBoundingSpheres");
    v76 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v76, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNAuthoringDisplayCameraFrustum");
    v77 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v77, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:8], @"SCNAuthoringDisplayLightExtents");
    v78 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v78, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:16], @"SCNAuthoringDisplayCameraPosition");
    v79 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v79, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:32], @"SCNAuthoringDisplayLightPosition");
    v80 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v80, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:64], @"SCNAuthoringDisplayPhysics");
    v81 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v81, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:128], @"SCNAuthoringDisplayPhysicsFields");
    v82 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v82, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:256], @"SCNAuthoringDisplayGrid");
    v83 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v83, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:512], @"SCNAuthoringDisplayLightProbes");
    v84 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v84, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1024], @"SCNAuthoringDisplayWireframe");
    v85 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v85, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2048], @"SCNAuthoringDisplaySkeletons");
    v86 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v86, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0x2000], @"SCNAuthoringDisplayConstraints");
    v87 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v87, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0x4000], @"SCNAuthoringDisplayCreases");
    v88 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v88, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4096], @"SCNAuthoringDisplayLightInfluence");
    v89 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v89, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNAuthoringCameraPerspective");
    v90 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v90, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNAuthoringCameraTop");
    v91 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v91, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNAuthoringCameraBottom");
    v92 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v92, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNAuthoringCameraLeft");
    v93 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v93, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNAuthoringCameraRight");
    v94 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v94, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNAuthoringCameraFront");
    v95 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v95, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:6], @"SCNAuthoringCameraBack");
    v96 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v96, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCameraProjectionDirectionVertical");
    v97 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v97, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCameraProjectionDirectionHorizontal");
    v98 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v98, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNInteractionModeFly");
    v99 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v99, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNInteractionModeOrbitTurntable");
    v100 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v100, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNInteractionModeOrbitAngleMapping");
    v101 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v101, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNInteractionModeOrbitCenteredArcball");
    v102 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v102, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNInteractionModeOrbitArcball");
    v103 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v103, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNInteractionModePan");
    v104 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v104, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:6], @"SCNInteractionModeTruck");
    v105 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v105, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCameraFieldOfViewOrientationVertical");
    v106 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v106, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCameraFieldOfViewOrientationHorizontal");
    v107 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v107, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCameraExposureAdaptationModeFrameLuminance");
    v108 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v108, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCameraExposureAdaptationModeHistogramLuminance");
    v109 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v109, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCameraFillModeFill");
    v110 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v110, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCameraFillModeLetterbox");
    v111 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v111, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNGeometryPrimitiveTypeTriangles");
    v112 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v112, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNGeometryPrimitiveTypeTriangleStrip");
    v113 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v113, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNGeometryPrimitiveTypeLine");
    v114 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v114, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNGeometryPrimitiveTypePoint");
    v115 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v115, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNGeometryPrimitiveTypePolygon");
    v116 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v116, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNTessellationSmoothingModeNone");
    v117 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v117, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNTessellationSmoothingModePNTriangles");
    v118 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v118, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNTessellationSmoothingModePhong");
    v119 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v119, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNSubdivisionBoundaryInterpolationRuleNone");
    v120 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v120, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNSubdivisionBoundaryInterpolationRuleEdgeOnly");
    v121 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v121, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNSubdivisionBoundaryInterpolationRuleEdgeAndCorner");
    v122 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v122, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearNone");
    v123 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v123, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearCornersOnly");
    v124 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v124, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearCornersPlus1");
    v125 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v125, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearCornersPlus2");
    v126 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v126, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearBoundaries");
    v127 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v127, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNSubdivisionFaceVaryingInterpolationRuleLinearAll");
    v128 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v128, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNSubdivisionNormalSmoothingModeCrossTriangle");
    v129 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v129, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNSubdivisionNormalSmoothingModeCrossQuad");
    v130 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v130, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNSubdivisionNormalSmoothingModeLimit");
    v131 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v131, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNHitTestSearchModeClosest");
    v132 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v132, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNHitTestSearchModeAll");
    v133 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v133, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNHitTestSearchModeAny");
    v134 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v134, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNLevelOfDetailThresholdModeWorldSpaceDistance");
    v135 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v135, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNLevelOfDetailThresholdModeScreenSpaceRadius");
    v136 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v136, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNShadowModeForward");
    v137 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v137, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNShadowModeDeferred");
    v138 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v138, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNShadowModeModulated");
    v139 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v139, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNMorpherCalculationModeNormalized");
    v140 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v140, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNMorpherCalculationModeAdditive");
    v141 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v141, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNMovabilityHintFixed");
    v142 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v142, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNMovabilityHintMovable");
    v143 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v143, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNChamferModeBoth");
    v144 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v144, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNChamferModeFront");
    v145 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v145, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNChamferModeBack");
    v146 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v146, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleSortingModeNone");
    v147 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v147, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleSortingModeProjectedDepth");
    v148 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v148, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleSortingModeDistance");
    v149 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v149, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleSortingModeOldestFirst");
    v150 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v150, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNParticleSortingModeYoungestFirst");
    v151 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v151, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleBlendModeAdditive");
    v152 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v152, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleBlendModeSubtract");
    v153 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v153, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleBlendModeMultiply");
    v154 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v154, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleBlendModeScreen");
    v155 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v155, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNParticleBlendModeAlpha");
    v156 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v156, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNParticleBlendModeReplace");
    v157 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v157, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleOrientationModeBillboardScreenAligned");
    v158 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v158, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleOrientationModeBillboardViewAligned");
    v159 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v159, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleOrientationModeFree");
    v160 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v160, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleOrientationModeBillboardYAligned");
    v161 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v161, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleBirthLocationSurface");
    v162 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v162, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleBirthLocationVolume");
    v163 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v163, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleBirthLocationVertex");
    v164 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v164, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleBirthDirectionConstant");
    v165 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v165, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleBirthDirectionSurfaceNormal");
    v166 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v166, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleBirthDirectionRandom");
    v167 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v167, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleImageSequenceAnimationModeRepeat");
    v168 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v168, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleImageSequenceAnimationModeClamp");
    v169 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v169, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleImageSequenceAnimationModeAutoReverse");
    v170 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v170, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleInputModeOverLife");
    v171 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v171, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleInputModeOverDistance");
    v172 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v172, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleInputModeOverOtherProperty");
    v173 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v173, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleModifierStagePreDynamics");
    v174 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v174, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleModifierStagePostDynamics");
    v175 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v175, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleModifierStagePreCollision");
    v176 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v176, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleModifierStagePostCollision");
    v177 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v177, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleEventBirth");
    v178 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v178, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleEventDeath");
    v179 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v179, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleEventCollision");
    v180 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v180, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNParticleRenderingModeSprite");
    v181 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v181, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNParticleRenderingModePointSprite");
    v182 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v182, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNParticleRenderingModeTrail");
    v183 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v183, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNParticleRenderingModeBeam");
    v184 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v184, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNParticleRenderingModeGeometry");
    v185 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v185, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNReferenceLoadingPolicyImmediate");
    v186 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v186, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNReferenceLoadingPolicyOnDemand");
    v187 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v187, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNAntialiasingModeNone");
    v188 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v188, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNAntialiasingModeMultisampling2X");
    v189 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v189, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNAntialiasingModeMultisampling4X");
    v190 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v190, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNRenderingAPIMetal");
    v191 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v191, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNRenderingAPIOpenGLES2");
    v192 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v192, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNSceneSourceStatusParsing");
    v193 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v193, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:8], @"SCNSceneSourceStatusValidating");
    v194 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v194, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:12], @"SCNSceneSourceStatusProcessing");
    v195 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v195, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:16], @"SCNSceneSourceStatusComplete");
    v196 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v196, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL], @"SCNSceneSourceStatusError");
    v197 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v197, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCullBack");
    v198 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v198, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCullFront");
    v199 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v199, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNBufferFrequencyPerFrame");
    v200 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v200, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNBufferFrequencyPerNode");
    v201 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v201, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNBufferFrequencyPerShadable");
    v202 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v202, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNFillModeFill");
    v203 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v203, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNFillModeLines");
    v204 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v204, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNCullModeBack");
    v205 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v205, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNCullModeFront");
    v206 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v206, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNTransparencyModeAOne");
    v207 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v207, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNTransparencyModeRGBZero");
    v208 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v208, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNTransparencyModeSingleLayer");
    v209 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v209, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNTransparencyModeDualLayer");
    v210 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v210, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNTransparencyModeDefault");
    v211 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v211, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNBlendModeAlpha");
    v212 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v212, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNBlendModeAdd");
    v213 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v213, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNBlendModeSubtract");
    v214 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v214, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:3], @"SCNBlendModeMultiply");
    v215 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v215, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNBlendModeScreen");
    v216 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v216, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:5], @"SCNBlendModeReplace");
    v217 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v217, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:6], @"SCNBlendModeMax");
    v218 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v218, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNFilterModeNone");
    v219 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v219, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNFilterModeNearest");
    v220 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v220, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNFilterModeLinear");
    v221 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v221, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNWrapModeClamp");
    v222 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v222, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNWrapModeRepeat");
    v223 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v223, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:4], @"SCNWrapModeMirror");
    v224 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v224, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNPhysicsBodyTypeStatic");
    v225 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v225, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNPhysicsBodyTypeDynamic");
    v226 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v226, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:2], @"SCNPhysicsBodyTypeKinematic");
    v227 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v227, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:0], @"SCNPhysicsFieldScopeInsideExtent");
    v228 = [(JSContext *)context globalObject];
    -[JSValue setValue:forProperty:](v228, "setValue:forProperty:", [MEMORY[0x277CCABB0] numberWithInt:1], @"SCNPhysicsFieldScopeOutsideExtent");
    v229 = [(JSContext *)context globalObject];
    v230 = [MEMORY[0x277CCABB0] numberWithInt:1];

    [(JSValue *)v229 setValue:v230 forProperty:@"_SceneKitIsLoaded"];
  }
}

uint64_t _exposeClass(void *a1, void *a2, objc_class *a3)
{
  result = objc_opt_class();
  if (result != a3)
  {
    Superclass = class_getSuperclass(a3);
    if (Superclass)
    {
      v8 = Superclass;
      v9 = NSStringFromClass(Superclass);
      _exposeClass(a1, v9, v8);
    }

    result = [objc_msgSend(objc_msgSend(a1 "globalObject")];
    if (result)
    {
      if ([a2 hasPrefix:@"CA"])
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"SCNJS%@JSExport", objc_msgSend(a2, "substringFromIndex:", 2)];
      }

      else
      {
        v10 = ([a2 hasPrefix:@"NS"] ? objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"SCN%@JSExport", objc_msgSend(a2, "substringFromIndex:", 2)) : objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@JSExport", a2));
      }

      result = objc_getProtocol([v10 UTF8String]);
      if (result || (result = objc_opt_respondsToSelector(), (result & 1) != 0) && (result = [(objc_class *)a3 SCNJSExportProtocol]) != 0)
      {
        class_addProtocol(a3, result);
        v11 = [a1 globalObject];

        return [v11 setValue:a3 forProperty:a2];
      }
    }
  }

  return result;
}

uint64_t C3DRenderBufferGetSlotForOutputBufferType(int a1, unint64_t a2)
{
  switch(a1)
  {
    case 0:
      goto LABEL_5;
    case 5:
      LOBYTE(a2) = 5;
      return a2;
    case 1:
      if (a2 >= 4)
      {
LABEL_5:
        LOBYTE(a2) = 4;
      }

      break;
    default:
      v3 = scn_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        C3DRenderBufferGetSlotForOutputBufferType_cold_1(a1, v3);
      }

      LOBYTE(a2) = 7;
      break;
  }

  return a2;
}

uint64_t C3DRenderTargetDescriptionMake(unsigned int a1, int a2)
{
  v2 = 256;
  if (a2)
  {
    v2 = 16777472;
  }

  return v2 | a1;
}

void _C3DRenderTargetCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 56) = 0;
  }
}

uint64_t __C3DRenderTargetGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRenderTargetGetTypeID_typeID = result;
  return result;
}

uint64_t C3DRenderTargetCreate()
{
  if (C3DRenderTargetGetTypeID_onceToken != -1)
  {
    C3DRenderTargetCreate_cold_1();
  }

  v1 = C3DRenderTargetGetTypeID_typeID;

  return C3DTypeCreateInstance_(v1, 72);
}

uint64_t C3DRenderTargetGetDescription(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

void C3DRenderTargetSetDescription(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 16) = a2;
}

uint64_t C3DRenderTargetGetTexture(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

CFTypeRef C3DRenderTargetSetTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

void C3DRenderTargetSetRenderBuffer(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 32) = a2;
}

uint64_t C3DRenderTargetGetRenderBuffer(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerAddAnimationNode_cold_3(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

CFTypeRef C3DRenderTargetSetCIImage(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 56);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 56) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 56) = result;
  }

  return result;
}

const void *C3DGetTextResourceWithNameAllowingHotReload(void *key)
{
  __dst[102] = *MEMORY[0x277D85DE8];
  v2 = C3DGetTextResourceWithNameAllowingHotReload_s_builtInTextResources;
  if (!C3DGetTextResourceWithNameAllowingHotReload_s_builtInTextResources)
  {
    memcpy(__dst, off_278300BC0, 0x330uLL);
    memcpy(values, off_278300EF0, sizeof(values));
    v2 = CFDictionaryCreate(0, __dst, values, 101, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    C3DGetTextResourceWithNameAllowingHotReload_s_builtInTextResources = v2;
  }

  return CFDictionaryGetValue(v2, key);
}

void _C3DShaderModifierCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[4];
  if (v7)
  {
    CFRelease(v7);
    a1[4] = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
    a1[5] = 0;
  }

  v9 = a1[6];
  if (v9)
  {
    CFRelease(v9);
    a1[6] = 0;
  }
}

__CFString *_C3DShaderModifierCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (*(a1 + 100))
  {
    v4 = "GLSL";
  }

  else
  {
    v4 = "Metal";
  }

  CFStringAppendFormat(Mutable, 0, @"<C3DShaderModifier %p language:%s, entryPoint:%d flags:%x\n", a1, v4, *(a1 + 88), *(a1 + 92));
  if (*(a1 + 16))
  {
    CFStringAppendFormat(v3, 0, @"  declaration : %@\n", *(a1 + 16));
  }

  if (*(a1 + 56))
  {
    CFStringAppendFormat(v3, 0, @"  arguments : %@\n", *(a1 + 56));
  }

  if (*(a1 + 72))
  {
    CFStringAppendFormat(v3, 0, @"  varyings : %@\n", *(a1 + 72));
  }

  if (*(a1 + 24))
  {
    CFStringAppendFormat(v3, 0, @"  code : %@\n", *(a1 + 24));
  }

  CFStringAppend(v3, @">");
  return v3;
}

uint64_t __C3DShaderModifierGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DShaderModifierGetTypeID_typeID = result;
  return result;
}

void __C3DGetSurfacePropertiesToDefines_block_invoke()
{
  v38 = *MEMORY[0x277D85DE8];
  *keys = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  *values = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 100);
  for (i = 0; i != 31; ++i)
  {
    v3 = off_278301260[i];
    keys[i] = CFStringCreateWithFormat(v0, 0, @"_surface.%@", v3);
    CFStringReplaceAll(Mutable, v3);
    CFStringUppercase(Mutable, 0);
    values[i] = CFStringCreateWithFormat(v0, 0, @"USE_%@", Mutable);
  }

  CFRelease(Mutable);
  v4 = CFDictionaryCreate(v0, keys, values, 31, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 0;
  C3DGetSurfacePropertiesToDefines_s_dic = v4;
  do
  {
    CFRelease(keys[v5]);
    CFRelease(values[v5++]);
  }

  while (v5 != 31);
}

void __C3DGetTexturePropertiesToDefines_block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  *keys = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  *values = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 100);
  for (i = 0; i != 8; ++i)
  {
    v3 = off_278301378[i];
    keys[i] = CFStringCreateWithFormat(v0, 0, @"u_%@Texture", v3);
    CFStringReplaceAll(Mutable, v3);
    CFStringUppercase(Mutable, 0);
    values[i] = CFStringCreateWithFormat(v0, 0, @"USE_%@_MAP", Mutable);
  }

  CFRelease(Mutable);
  v4 = CFDictionaryCreate(v0, keys, values, 8, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = 0;
  C3DGetTexturePropertiesToDefines_s_dic = v4;
  do
  {
    CFRelease(keys[v5]);
    CFRelease(values[v5++]);
  }

  while (v5 != 8);
}

CFDictionaryRef __C3DGetGeometryPropertiesToDefines_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  *keys = xmmword_2783013D8;
  v4 = *&off_2783013E8;
  v6 = @"_geometry.clipDistance3";
  v5 = xmmword_2783013F8;
  v1[0] = xmmword_278301410;
  v1[1] = *&off_278301420;
  v1[2] = xmmword_278301430;
  v2 = @"USE_CLIP_DISTANCE3";
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, v1, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  C3DGetGeometryPropertiesToDefines_s_dic = result;
  return result;
}

CFDictionaryRef __C3DGetFramebufferPropertiesToDefines_block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = xmmword_278301478;
  *keys = xmmword_278301468;
  result = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &v1, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  C3DGetFramebufferPropertiesToDefines_s_dic = result;
  return result;
}

uint64_t __C3DShaderModifierCreate(const __CFString *a1, int a2, int a3, int a4, __int16 a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  C3DShaderSourceParserContextCreate(0, a3, &v50);
  C3DShaderSourceParserParseSource(a1, &v50, 0);
  v7 = v50;
  v8 = v51;
  if (a4)
  {
    v9 = *(&v51 + 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = v52;
  v11 = v53;
  v12 = v54;
  v13 = WORD4(v54);
  if (C3DShaderModifierGetTypeID_onceToken != -1)
  {
    __C3DShaderModifierCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DShaderModifierGetTypeID_typeID, 120);
  if (v7)
  {
    if (CFStringGetLength(v7))
    {
      v15 = *(Instance + 16);
      if (v15 != v7)
      {
        if (v15)
        {
          CFRelease(v15);
          *(Instance + 16) = 0;
        }

        *(Instance + 16) = CFRetain(v7);
      }
    }
  }

  if (v10)
  {
    if (CFDictionaryGetCount(v10))
    {
      v16 = *(Instance + 56);
      if (v16 != v10)
      {
        if (v16)
        {
          CFRelease(v16);
          *(Instance + 56) = 0;
        }

        *(Instance + 56) = CFRetain(v10);
      }
    }
  }

  if (*(&v10 + 1))
  {
    if (CFDictionaryGetCount(*(&v10 + 1)))
    {
      v17 = *(Instance + 64);
      if (v17 != *(&v10 + 1))
      {
        if (v17)
        {
          CFRelease(v17);
          *(Instance + 64) = 0;
        }

        *(Instance + 64) = CFRetain(*(&v10 + 1));
      }
    }
  }

  if (v11)
  {
    if (CFDictionaryGetCount(v11))
    {
      v18 = *(Instance + 72);
      if (v18 != v11)
      {
        if (v18)
        {
          CFRelease(v18);
          *(Instance + 72) = 0;
        }

        *(Instance + 72) = CFRetain(v11);
      }
    }
  }

  if (!*(&v7 + 1) || !CFStringGetLength(*(&v7 + 1)))
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __C3DShaderModifierCreate_cold_2(v20);
      if (!v8)
      {
        goto LABEL_44;
      }

      goto LABEL_39;
    }

LABEL_38:
    if (!v8)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  v19 = *(Instance + 24);
  if (v19 == *(&v7 + 1))
  {
    goto LABEL_38;
  }

  if (v19)
  {
    CFRelease(v19);
    *(Instance + 24) = 0;
  }

  *(Instance + 24) = CFRetain(*(&v7 + 1));
  if (v8)
  {
LABEL_39:
    if (CFDictionaryGetCount(v8))
    {
      v21 = *(Instance + 32);
      if (v21 != v8)
      {
        if (v21)
        {
          CFRelease(v21);
          *(Instance + 32) = 0;
        }

        *(Instance + 32) = CFRetain(v8);
      }
    }
  }

LABEL_44:
  if (v9)
  {
    if (CFDictionaryGetCount(v9))
    {
      v22 = *(Instance + 48);
      if (v22 != v9)
      {
        if (v22)
        {
          CFRelease(v22);
          *(Instance + 48) = 0;
        }

        *(Instance + 48) = CFRetain(v9);
      }
    }
  }

  if (v12)
  {
    if (CFDictionaryGetCount(v12))
    {
      v23 = *(Instance + 40);
      if (v23 != v12)
      {
        if (v23)
        {
          CFRelease(v23);
          *(Instance + 40) = 0;
        }

        *(Instance + 40) = CFRetain(v12);
      }
    }
  }

  v24 = v13 | a5;
  *(Instance + 88) = a2;
  *(Instance + 94) = 0;
  v25 = MEMORY[0x277CBECE8];
  if (*(Instance + 24))
  {
    v26 = *(Instance + 32);
    v27 = *MEMORY[0x277CBECE8];
    if (v26)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v26);
      Count = CFDictionaryGetCount(*(Instance + 32));
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      Count = 0;
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 0x40000000;
    v55[2] = ___C3DShaderModifierCreateWithComponents_block_invoke;
    v55[3] = &__block_descriptor_tmp_206;
    v55[4] = Instance;
    v55[5] = MutableCopy;
    if (C3DGetSurfacePropertiesToDefines_onceToken != -1)
    {
      __C3DShaderModifierCreate_cold_3();
    }

    C3DCFDictionaryApplyBlock(C3DGetSurfacePropertiesToDefines_s_dic, v55);
    if (C3DGetTexturePropertiesToDefines_onceToken != -1)
    {
      __C3DShaderModifierCreate_cold_4();
    }

    C3DCFDictionaryApplyBlock(C3DGetTexturePropertiesToDefines_s_dic, v55);
    if (C3DGetGeometryPropertiesToDefines_onceToken != -1)
    {
      __C3DShaderModifierCreate_cold_5();
    }

    C3DCFDictionaryApplyBlock(C3DGetGeometryPropertiesToDefines_s_dic, v55);
    if (C3DGetFramebufferPropertiesToDefines_onceToken != -1)
    {
      __C3DShaderModifierCreate_cold_6();
    }

    C3DCFDictionaryApplyBlock(C3DGetFramebufferPropertiesToDefines_s_dic, v55);
    if (CFDictionaryGetCount(MutableCopy) != Count)
    {
      Copy = CFDictionaryCreateCopy(v27, MutableCopy);
      if (!Copy)
      {
        v31 = scn_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          __C3DShaderModifierCreate_cold_7(v31, v32, v33, v34, v35, v36, v37, v38);
        }
      }

      v39 = *(Instance + 32);
      if (v39 != Copy)
      {
        if (v39)
        {
          CFRelease(v39);
          *(Instance + 32) = 0;
        }

        if (Copy)
        {
          v40 = CFRetain(Copy);
        }

        else
        {
          v40 = 0;
        }

        *(Instance + 32) = v40;
      }

      CFRelease(Copy);
    }

    CFRelease(MutableCopy);
  }

  v41 = *(Instance + 32);
  if (v41)
  {
    if (CFDictionaryGetCountOfKey(v41, @"USE_TANGENT") || CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_TANGENT"))
    {
      v24 |= 4u;
    }

    v42 = *(Instance + 32);
    *(Instance + 92) = v24;
    if (v42)
    {
      if (CFDictionaryGetCountOfKey(v42, @"USE_EMISSIVETEXCOORD"))
      {
        *(Instance + 94) |= 1u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_AMBIENTTEXCOORD"))
      {
        *(Instance + 94) |= 2u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_DIFFUSETEXCOORD"))
      {
        *(Instance + 94) |= 4u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_SPECULARTEXCOORD"))
      {
        *(Instance + 94) |= 8u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_REFLECTIVETEXCOORD"))
      {
        *(Instance + 94) |= 0x10u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_TRANSPARENTTEXCOORD"))
      {
        *(Instance + 94) |= 0x20u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_FILTERTEXCOORD"))
      {
        *(Instance + 94) |= 0x40u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_NORMALTEXCOORD"))
      {
        *(Instance + 94) |= 0x80u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_METALNESSTEXCOORD"))
      {
        *(Instance + 94) |= 0x400u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_ROUGHNESSTEXCOORD"))
      {
        *(Instance + 94) |= 0x800u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_CLEARCOATTEXCOORD"))
      {
        *(Instance + 94) |= 0x1000u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_CLEARCOATROUGHNESSTEXCOORD"))
      {
        *(Instance + 94) |= 0x2000u;
      }

      if (CFDictionaryGetCountOfKey(*(Instance + 32), @"USE_CLEARCOATNORMALTEXCOORD"))
      {
        *(Instance + 94) |= 0x4000u;
      }
    }
  }

  else
  {
    *(Instance + 92) = v24;
  }

  if (*(Instance + 24))
  {
    strcpy(&cStr, "_geometry.texcoords[x]");
    v43 = CFStringCreateWithCStringNoCopy(*v25, &cStr, 0x600u, *MEMORY[0x277CBED00]);
    for (i = 0; i != 8; ++i)
    {
      LOBYTE(cStr.hash[3]) = i | 0x30;
      if (CFStringFind(*(Instance + 24), v43, 0).location != -1)
      {
        *(Instance + 96) |= 1 << i;
      }
    }

    CFRelease(v43);
  }

  memset(&cStr, 0, sizeof(cStr));
  CC_SHA256_Init(&cStr);
  CC_SHA256_Update(&cStr, (Instance + 88), 4u);
  if (*(Instance + 24))
  {
    CFStringUpdateHash();
  }

  if (*(Instance + 16))
  {
    CFStringUpdateHash();
  }

  v45 = *(Instance + 32);
  if (v45)
  {
    CFDictionaryApplyFunction(v45, CFStringToStringDictionaryHash, &cStr);
  }

  CC_SHA256_Final((Instance + 104), &cStr);
  *(Instance + 100) = a3;
  C3DShaderSourceParserContextDestroy(&v50);
  return Instance;
}

uint64_t C3DShaderModifiersCreate(CFStringRef theString, int a2, CFDictionaryRef theDict, int a4, int a5, int a6)
{
  v26 = *MEMORY[0x277D85DE8];
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    v25 = a6;
    Count = CFDictionaryGetCount(theDict);
    v24[1] = v24;
    MEMORY[0x28223BE20](Count);
    v13 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = (v24 - v13);
    if ((8 * Count) >= 0x200)
    {
      v15 = 512;
    }

    else
    {
      v15 = 8 * Count;
    }

    bzero(v24 - v13, v15);
    MEMORY[0x28223BE20](v16);
    v17 = (v24 - v13);
    bzero(v24 - v13, v15);
    CFDictionaryGetKeysAndValues(theDict, (v24 - v13), (v24 - v13));
    Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    if (Count >= 1)
    {
      do
      {
        v20 = *v14++;
        v19 = v20;
        v21 = *v17++;
        CFStringAppendFormat(Mutable, 0, @"#define %@ %@\n", v19, v21);
        --Count;
      }

      while (Count);
    }

    CFStringAppend(Mutable, theString);
    LOWORD(a6) = v25;
  }

  else
  {
    Mutable = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theString);
  }

  v22 = __C3DShaderModifierCreate(Mutable, a2, a4, a5, a6);
  CFRelease(Mutable);
  return v22;
}

uint64_t C3DShaderModifierGetDeclaration(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16);
}

uint64_t C3DShaderModifierGetLanguage(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 100);
}

uint64_t C3DShaderModifierGetStandardUniformsUsed(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 40);
}

uint64_t C3DShaderModifierGetArguments(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 56);
}

uint64_t C3DShaderModifierGetVaryings(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

uint64_t C3DShaderModifierGetArgumentsDefaultValues(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

uint64_t C3DShaderModifierGetCode(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

uint64_t C3DShaderModifierGetDefines(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 32);
}

void C3DShaderModifierEnumeratePossibleDefinesUsingBlock(uint64_t a1)
{
  if (C3DGetSurfacePropertiesToDefines_onceToken != -1)
  {
    C3DShaderModifierEnumeratePossibleDefinesUsingBlock_cold_1();
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __C3DShaderModifierEnumeratePossibleDefinesUsingBlock_block_invoke;
  v5[3] = &unk_278301490;
  v5[4] = a1;
  C3DCFDictionaryApplyBlock(C3DGetSurfacePropertiesToDefines_s_dic, v5);
  if (C3DGetTexturePropertiesToDefines_onceToken != -1)
  {
    __C3DShaderModifierCreate_cold_4();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __C3DShaderModifierEnumeratePossibleDefinesUsingBlock_block_invoke_2;
  v4[3] = &unk_2783014B8;
  v4[4] = a1;
  C3DCFDictionaryApplyBlock(C3DGetTexturePropertiesToDefines_s_dic, v4);
  if (C3DGetGeometryPropertiesToDefines_onceToken != -1)
  {
    __C3DShaderModifierCreate_cold_5();
  }

  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 0x40000000;
  v3[2] = __C3DShaderModifierEnumeratePossibleDefinesUsingBlock_block_invoke_3;
  v3[3] = &unk_2783014E0;
  v3[4] = a1;
  C3DCFDictionaryApplyBlock(C3DGetGeometryPropertiesToDefines_s_dic, v3);
  if (C3DGetFramebufferPropertiesToDefines_onceToken != -1)
  {
    __C3DShaderModifierCreate_cold_6();
  }

  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = __C3DShaderModifierEnumeratePossibleDefinesUsingBlock_block_invoke_4;
  v2[3] = &unk_278301508;
  v2[4] = a1;
  C3DCFDictionaryApplyBlock(C3DGetFramebufferPropertiesToDefines_s_dic, v2);
}

uint64_t C3DShaderModifierGetFlags(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 92);
}

uint64_t C3DShaderModifierGetEffectPropertyMaskForTexcoordsUse(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 94);
}

uint64_t C3DShaderModifierGetMappingChannelyMaskForTexcoordsUse(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

uint64_t C3DShaderModifierGetEntryPoint(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 88);
}

CFIndex CFStringUpdateHash()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v10 = *MEMORY[0x277D85DE8];
  CStringPtr = CFStringGetCStringPtr(v0, 0x600u);
  result = CFStringGetLength(v3);
  v6 = result;
  if (CStringPtr)
  {

    return CC_SHA256_Update(v2, CStringPtr, result);
  }

  else
  {
    do
    {
      if (!v6)
      {
        break;
      }

      usedBufLen = 0;
      v12.location = CStringPtr;
      v12.length = v6;
      result = CFStringGetBytes(v3, v12, 0x8000100u, 0, 0, buffer, 0x8000, &usedBufLen);
      v7 = result;
      if (usedBufLen)
      {
        result = CC_SHA256_Update(v2, buffer, usedBufLen);
      }

      CStringPtr += v7;
      v6 -= v7;
    }

    while (v7);
  }

  return result;
}

CFIndex CFStringToStringDictionaryHash(uint64_t a1, uint64_t a2)
{
  result = CFStringUpdateHash();
  if (a2)
  {

    return CFStringUpdateHash();
  }

  return result;
}

uint64_t C3DShaderModifierBindUniforms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  RendererElementState = C3DEngineContextGetRendererElementState(a2);
  if (!a1)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DShaderModifierGetDeclaration_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if (!*(a1 + 48))
  {
    return 0;
  }

  v18[0] = C3DEngineContextGetRendererContextGL(a2);
  v18[1] = C3DEngineContextGetResourceManager(a2);
  v18[2] = C3DRendererElementStateGetCurrentProgramObject(RendererElementState);
  v18[3] = a3;
  v18[4] = a4;
  v19 = 0;
  CFDictionaryApplyFunction(*(a1 + 48), __bindUniform, v18);
  return v19;
}

void __bindUniform(void *key, __int16 a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(*(a3 + 16), key);
  if (UniformLocationOfSymbolNamed != -1)
  {
    v8 = UniformLocationOfSymbolNamed;
    if (v6 && (ValueForKey = C3DEntityGetValueForKey(v6, key)) != 0)
    {
      v10 = ValueForKey;
      v11 = CFGetTypeID(ValueForKey);
      if (v11 == C3DEffectSlotGetTypeID())
      {
        if (C3DKeyframeControllerHasInterpolationModesPerKey(v10))
        {
          v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"u_%@TextureMatrix", key);
          v13 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(*(a3 + 16), v12);
          CFRelease(v12);
        }

        else
        {
          v13 = -1;
        }

        if (C3DRendererContextBindEffectSlot(*a3, *(a3 + 8), v10, v8, *(a3 + 40) + *(a3 + 32), v13))
        {
          goto LABEL_17;
        }
      }

      else if (C3DValueGetTypeID() == v11)
      {
        v19 = *a3;

        C3DRendererContextSetValueUniformAtLocation(v19, v8, v10, a2, 1);
      }
    }

    else if (a2 == 5)
    {
      Default = C3DImageGetDefault();
      v15 = C3DTextureSamplerGetDefault();
      ImageResident = C3DResourceManagerMakeImageResident(*(a3 + 8), Default, v15, *a3);
      if (v15)
      {
        if (ImageResident)
        {
          v17 = *(a3 + 32);
          v18 = *(a3 + 40);
          C3DRendererContextBindTexture(*a3, ImageResident, v15, 0, v18 + v17);
          C3DRendererContextSetIntUniformAtLocation(*a3, v8, v18 + v17);
LABEL_17:
          ++*(a3 + 40);
        }
      }
    }
  }
}

uint64_t SCNObjCEncodedTypeToC3DBaseType(char *__s1)
{
  v2 = *__s1;
  if (v2 <= 0x62)
  {
    if (*__s1 <= 0x48u)
    {
      if (v2 == 66)
      {
        if (!__s1[1])
        {
          return 3;
        }

        goto LABEL_27;
      }

      if (v2 == 67)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    if (v2 != 73 && v2 != 81)
    {
      if (v2 == 83)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }

LABEL_18:
    if (!__s1[1])
    {
      return 2;
    }

    goto LABEL_27;
  }

  if (*__s1 <= 0x68u)
  {
    if (v2 != 99)
    {
      if (v2 == 100)
      {
        if (!__s1[1])
        {
          return 6;
        }
      }

      else if (v2 == 102 && !__s1[1])
      {
        return 1;
      }

      goto LABEL_27;
    }

LABEL_22:
    if (!__s1[1])
    {
      return 4;
    }

    goto LABEL_27;
  }

  if (v2 == 105 || v2 == 113)
  {
    goto LABEL_18;
  }

  if (v2 == 115)
  {
LABEL_16:
    if (!__s1[1])
    {
      return 14;
    }
  }

LABEL_27:
  if (!strcmp(__s1, "{SCNMatrix4=ffffffffffffffff}") || !strcmp(__s1, "{CATransform3D=dddddddddddddddd}"))
  {
    return 11;
  }

  if (!strcmp(__s1, "{CGPoint=dd}"))
  {
    return 8;
  }

  if (!strcmp(__s1, "{SCNVector4=ffff}") || !strcmp(__s1, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    return 10;
  }

  if (!strcmp(__s1, "{SCNVector3=fff}"))
  {
    return 9;
  }

  if (!strcmp(__s1, "{_SCNVector4=dddd}"))
  {
    return 10;
  }

  if (!strcmp(__s1, "{_SCNVector3=ddd}"))
  {
    return 9;
  }

  if (v2 == 64)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

const void *SCNCopyValueFromObjCValue(void *a1)
{
  v2 = SCNObjCEncodedTypeToC3DBaseType([a1 objCType]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = C3DValueCreate(v2, 1);
  Bytes = C3DValueGetBytes(v4);
  if ((SCNWriteValueToTypedBytes(a1, Bytes, v3) & 1) == 0)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SCNCopyValueFromObjCValue_cold_1(a1, v6);
    }

    CFRelease(v4);
    return 0;
  }

  return v4;
}

uint64_t SCNWriteValueToTypedBytes(void *a1, uint64_t a2, int a3)
{
  result = 0;
  switch(a3)
  {
    case 1:
    case 7:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      [a1 floatValue];
      *a2 = v6;
      return 1;
    case 2:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      *a2 = [a1 intValue];
      return 1;
    case 3:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      v18 = [a1 BOOLValue];
      goto LABEL_35;
    case 4:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v18 = [a1 charValue];
      goto LABEL_35;
    case 5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v13 = [a1 pointerValue];
      goto LABEL_39;
    case 6:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return 0;
        }
      }

      [a1 doubleValue];
      *a2 = v17;
      return 1;
    case 8:
    case 18:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = 0uLL;
        CFStringScanCGFloats(a1, &v20, 2);
        goto LABEL_26;
      }

      [a1 CGPointValue];
      *&v11 = v11;
      *&v12 = v12;
      *a2 = LODWORD(v11);
      *(a2 + 4) = LODWORD(v12);
      return 1;
    case 9:
    case 19:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = 0uLL;
        CFStringScanFloats(a1, &v20, 3);
        *a2 = v20;
        *(a2 + 8) = DWORD2(v20);
      }

      else
      {
        [a1 SCNVector3Value];
        *a2 = v14;
        *(a2 + 4) = v15;
        *(a2 + 8) = v16;
      }

      return 1;
    case 10:
    case 20:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_25;
      }

      [a1 SCNVector4Value];
      DWORD1(v10) = v7;
      *(&v10 + 1) = __PAIR64__(v9, v8);
      goto LABEL_27;
    case 11:
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      if (a1)
      {
        [a1 SCNMatrix4Value];
      }

      C3DMatrix4x4FromSCNMatrix4(a2, &v20);
      return 1;
    case 13:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_25:
        v20 = 0uLL;
        CFStringScanFloats(a1, &v20, 4);
LABEL_26:
        v10 = v20;
LABEL_27:
        *a2 = v10;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [a1 scn_C3DColorIgnoringColorSpace:0 success:0];
          *(a2 + 8) = v19;
LABEL_39:
          *a2 = v13;
        }
      }

      return 1;
    case 16:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return 0;
      }

      v18 = [a1 unsignedCharValue];
LABEL_35:
      *a2 = v18;
      return 1;
    default:
      return result;
  }
}

uint64_t SCNNSValueFromTypedBytes(float32x2_t *a1, int a2, double a3, double a4, double a5, double a6)
{
  result = 0;
  switch(a2)
  {
    case 1:
    case 7:
      v10 = MEMORY[0x277CCABB0];
      LODWORD(a3) = a1->i32[0];

      result = [v10 numberWithFloat:a3];
      break;
    case 2:
      v20 = MEMORY[0x277CCABB0];
      v21 = a1->i32[0];

      result = [v20 numberWithInteger:v21];
      break;
    case 3:
      v18 = MEMORY[0x277CCABB0];
      v19 = a1->u8[0];

      result = [v18 numberWithBool:v19];
      break;
    case 4:
      v11 = MEMORY[0x277CCABB0];
      v12 = a1->i8[0];

      result = [v11 numberWithChar:v12];
      break;
    case 5:
      v15 = MEMORY[0x277CCAE60];
      v16 = *a1;

      result = [v15 valueWithPointer:*&v16];
      break;
    case 6:
      v22 = MEMORY[0x277CCABB0];
      v23 = *a1;

      result = [v22 numberWithDouble:v23];
      break;
    case 8:
      v24 = vcvtq_f64_f32(*a1);
      v25 = MEMORY[0x277CCAE60];

      result = [v25 valueWithCGPoint:*&v24];
      break;
    case 9:
      v28 = *a1->f32;
      LODWORD(a4) = HIDWORD(*a1);
      LODWORD(a5) = a1[1];
      v29 = MEMORY[0x277CCAE60];

      result = [v29 valueWithSCNVector3:{*&v28, a4, a5}];
      break;
    case 10:
      v26 = *a1->f32;
      LODWORD(a4) = HIDWORD(*a1);
      LODWORD(a5) = a1[1];
      LODWORD(a6) = HIDWORD(*a1->f32);
      v27 = MEMORY[0x277CCAE60];

      result = [v27 valueWithSCNVector4:{*&v26, a4, a5, a6}];
      break;
    case 11:
      v35 = v6;
      v36 = v7;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      C3DMatrix4x4ToSCNMatrix4(a1, &v31);
      v30[0] = v31;
      v30[1] = v32;
      v30[2] = v33;
      v30[3] = v34;
      result = [MEMORY[0x277CCAE60] valueWithSCNMatrix4:v30];
      break;
    case 13:
      v17 = MEMORY[0x277D75348];

      result = [v17 scn_colorWithC3DColor:a1];
      break;
    case 16:
      v13 = MEMORY[0x277CCABB0];
      v14 = a1->u8[0];

      result = [v13 numberWithUnsignedChar:v14];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SCNDefaultValueWithBaseType(int a1, double a2, double a3, double a4, double a5)
{
  v19 = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 1:
    case 7:
    case 15:
      v7 = MEMORY[0x277CCABB0];

      result = [v7 numberWithFloat:0.0];
      break;
    case 2:
      v14 = MEMORY[0x277CCABB0];

      result = [v14 numberWithInteger:0];
      break;
    case 3:
      v13 = MEMORY[0x277CCABB0];

      result = [v13 numberWithBool:0];
      break;
    case 4:
    case 16:
    case 21:
    case 22:
      v5 = MEMORY[0x277CCABB0];

      result = [v5 numberWithUnsignedChar:0];
      break;
    case 5:
      v12 = MEMORY[0x277CCABB0];

      result = [v12 numberWithUnsignedLong:0];
      break;
    case 6:
      v15 = MEMORY[0x277CCABB0];

      result = [v15 numberWithDouble:0.0];
      break;
    case 8:
    case 18:
      v9 = MEMORY[0x277CCAE60];

      result = [v9 valueWithCGPoint:{0.0, 0.0}];
      break;
    case 9:
    case 19:
      v10 = MEMORY[0x277CCAE60];
      LODWORD(a2) = 0;
      LODWORD(a3) = 0;
      LODWORD(a4) = 0;

      result = [v10 valueWithSCNVector3:{a2, a3, a4}];
      break;
    case 10:
    case 13:
    case 20:
      v8 = MEMORY[0x277CCAE60];
      LODWORD(a2) = 0;
      LODWORD(a3) = 0;
      LODWORD(a4) = 0;
      LODWORD(a5) = 0;

      result = [v8 valueWithSCNVector4:{a2, a3, a4, a5}];
      break;
    case 11:
    case 12:
      v18 = SCNMatrix4Identity;
      result = [MEMORY[0x277CCAE60] valueWithSCNMatrix4:&v18];
      break;
    case 14:
    case 17:
      v11 = MEMORY[0x277CCABB0];

      result = [v11 numberWithUnsignedShort:0];
      break;
    default:
      v17 = scn_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18.m11 = 1.5047e-36;
        LODWORD(v18.m12) = a1;
        _os_log_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_DEFAULT, "Warning: SCNDefaultValueWithBaseType - unknwon base type %d", &v18, 8u);
      }

      result = 0;
      break;
  }

  return result;
}

objc_property *SCNBaseTypeOfObjCProperty(objc_class *a1, void *a2)
{
  result = class_getProperty(a1, [a2 UTF8String]);
  if (result)
  {
    v3 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8] stringWithUTF8String:{property_getAttributes(result)), "componentsSeparatedByString:", @", "), "objectAtIndex:", 0), "substringFromIndex:", 1), "UTF8String"}];

    return SCNObjCEncodedTypeToC3DBaseType(v3);
  }

  return result;
}