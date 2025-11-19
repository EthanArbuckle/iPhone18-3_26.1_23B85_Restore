@interface AVTARMaskRenderer
- (AVTARMaskRenderer)init;
- (AVTARMaskRenderer)initWithOwner:(id)a3 presentationConfiguration:(id)a4 techniqueDidChangeHandler:(id)a5;
- (BOOL)techniqueUsesSpecificMainPassClearColorForRenderer:(id)a3 clearColor:;
- (id)_renderCommandEncoderWithCommandBuffer:(id)a3 renderTarget:(id)a4;
- (id)_renderCommandEncoderWithCommandBuffer:(id)a3 renderTarget:(id)a4 shouldClear:(BOOL)a5 clearColor:(id)a6;
- (void)_updateMaskParametersWithRootJointPivotPosition:(AVTARMaskRenderer *)self;
- (void)allocateTexturesIfNeededWithDestinationPixelFormat:(unint64_t)a3 framebufferSize:;
- (void)dealloc;
- (void)encodeCompositePassWithEncoder:(id)a3 sceneColorTexture:(id)a4 sceneOnTopTexture:(id)a5 helper:(id)a6;
- (void)encodeIntermediatePassesWithCommandBuffer:(id)a3 sceneColorTexture:(id)a4 sceneOnTopTexture:(id)a5 generatedMasksTexture:(id)a6 debugARFrameDepthTexture:(id)a7;
- (void)encodeTechniqueCommandsForRenderer:(id)a3 atTime:(double)a4 helper:(id)a5;
- (void)initPipelineKindSpecificResourcesIfNeededWithDestinationPixelFormat:(unint64_t)a3;
- (void)initSharedResourcesIfNeededWithDestinationPixelFormat:(unint64_t)a3;
- (void)setCapturedDepth:(id)a3;
- (void)setClearWithCamera:(BOOL)a3 antialiasingMode:(unint64_t)a4;
- (void)setFlipDepth:(BOOL)a3;
- (void)setPresentationConfiguration:(id)a3;
- (void)updateMaskParametersAtTime:(double)a3;
- (void)updateMaskParametersWithRootJointNode:(id)a3;
- (void)updateMaskParametersWithRootJointNodes:(id)a3;
- (void)updateWithARFrame:(id)a3 fallBackDepthData:(id)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 mirroredDepthData:(BOOL)a7;
- (void)updateWithDepthTexture:(id)a3 captureOrientation:(int64_t)a4 interfaceOrientation:(int64_t)a5 mirroredDepthData:(BOOL)a6;
@end

@implementation AVTARMaskRenderer

- (AVTARMaskRenderer)initWithOwner:(id)a3 presentationConfiguration:(id)a4 techniqueDidChangeHandler:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = AVTARMaskRenderer;
  v11 = [(AVTARMaskRenderer *)&v22 init];
  if (v11)
  {
    if (([v9 usesAR] & 1) == 0)
    {
      v12 = avt_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [AVTARMaskRenderer initWithOwner:presentationConfiguration:techniqueDidChangeHandler:];
      }
    }

    objc_storeStrong(&v11->_presentationConfiguration, a4);
    v11->_lock._os_unfair_lock_opaque = 0;
    v11->_pipelineKind = 0;
    objc_storeWeak(&v11->_owner, v8);
    objc_opt_class();
    v11->_ownerIsView = objc_opt_isKindOfClass() & 1;
    v13 = [v10 copy];
    techniqueDidChangeHandler = v11->_techniqueDidChangeHandler;
    v11->_techniqueDidChangeHandler = v13;

    if (AVTDebugARMask_onceToken != -1)
    {
      [AVTARMaskRenderer initWithOwner:presentationConfiguration:techniqueDidChangeHandler:];
    }

    v11->_debugMode = AVTDebugARMask_debugMode;
    *&v11->_writeID = 256;
    v11->_depthSmoothingFactor = 0.5;
    v11->_depthDataIsMirrored = 0;
    v11->_interfaceOrientation = 1;
    WeakRetained = objc_loadWeakRetained(&v11->_owner);
    v16 = [WeakRetained device];

    if (!v16)
    {
      v17 = avt_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [AVTARMaskRenderer initWithOwner:v17 presentationConfiguration:? techniqueDidChangeHandler:?];
      }
    }

    v23 = *MEMORY[0x1E6966010];
    v24[0] = &unk_1F39D93B0;
    CVMetalTextureCacheCreate(0, 0, v16, [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1], &v11->_textureCache);
    v18 = [AVTMetalHelper helperForDevice:v16];
    metalHelper = v11->_metalHelper;
    v11->_metalHelper = v18;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

- (AVTARMaskRenderer)init
{
  [(AVTARMaskRenderer *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setPresentationConfiguration:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_presentationConfiguration != v5)
  {
    if (![(AVTPresentationConfiguration *)v5 usesAR])
    {
      v7 = avt_default_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [AVTARMaskRenderer initWithOwner:presentationConfiguration:techniqueDidChangeHandler:];
      }
    }

    objc_storeStrong(&self->_presentationConfiguration, a3);
    [(AVTARMaskRenderer *)self reloadTechnique];
  }
}

- (void)dealloc
{
  (*(self->_techniqueDidChangeHandler + 2))();
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  v4.receiver = self;
  v4.super_class = AVTARMaskRenderer;
  [(AVTARMaskRenderer *)&v4 dealloc];
}

- (void)updateMaskParametersAtTime:(double)a3
{
  if (self->_pipelineKind == 1 && [(AVTPresentationConfiguration *)self->_presentationConfiguration internalStyle]== 3)
  {
    [(AVTPresentationConfiguration *)self->_presentationConfiguration shadableKeyColorComponents];
    if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(*&self->_anon_138[8], v4))) & 0x80000000) != 0)
    {
      *&self->_anon_138[8] = v4;
    }
  }
}

- (void)updateMaskParametersWithRootJointNode:(id)a3
{
  [a3 worldPosition];

  [(AVTARMaskRenderer *)self _updateMaskParametersWithRootJointPivotPosition:?];
}

- (void)updateMaskParametersWithRootJointNodes:(id)a3
{
  v4 = [a3 firstObject];
  [v4 worldPosition];
  v6 = v5;

  [(AVTARMaskRenderer *)self _updateMaskParametersWithRootJointPivotPosition:v6];
}

- (void)_updateMaskParametersWithRootJointPivotPosition:(AVTARMaskRenderer *)self
{
  if (self->_uniforms.headZ != (*(&v3 + 2) / -100.0))
  {
    self->_uniforms.headZ = *(&v3 + 2) / -100.0;
    *v22 = v3;
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    [WeakRetained avt_simdProjectPoint:*v22];
    v21 = v6;

    v7 = objc_loadWeakRetained(&self->_owner);
    [v7 avt_simdProjectPoint:{*vaddq_f32(*v22, xmmword_1BB4F0790).i64}];
    v20 = v8;

    v9 = objc_loadWeakRetained(&self->_owner);
    [v9 avt_simdProjectPoint:{*vaddq_f32(*v22, xmmword_1BB4F07A0).i64}];
    *v23 = v10;

    p_shadowUVOffset = &self->_uniforms.shadowUVOffset;
    *&self->_uniforms.shadowUVOffset = vsub_f32(vext_s8(v20, v23[0], 4uLL), vrev64_s32(*v21.f32));
    LODWORD(self->_uniforms.shadowMaskSizeV) = vsubq_f32(*v23, v21).i32[1];
    *&self->_uniforms.neckU = v21.i64[0];
    ownerIsView = self->_ownerIsView;
    v13 = objc_loadWeakRetained(&self->_owner);
    v24 = v13;
    if (ownerIsView)
    {
      [v13 avt_simdViewport];
      v15.i64[1] = v14.i64[1];
      v15.i64[0] = v14.i64[1];
      *p_shadowUVOffset = vdivq_f32(*p_shadowUVOffset, vextq_s8(v14, v15, 0xCuLL));
      v16 = self->_uniforms.neckV / *&v14.i32[3];
    }

    else
    {
      [v13 _backingSize];
      v18 = self->_uniforms.neckV / v17.f64[0];
      v17.f64[1] = v19;
      *p_shadowUVOffset = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*p_shadowUVOffset->f32), v17)), vdivq_f64(vcvt_hight_f64_f32(*p_shadowUVOffset), v17));
      v16 = v18;
    }

    self->_uniforms.neckV = v16;
  }
}

- (void)updateWithARFrame:(id)a3 fallBackDepthData:(id)a4 captureOrientation:(int64_t)a5 interfaceOrientation:(int64_t)a6 mirroredDepthData:(BOOL)a7
{
  v7 = a7;
  v26 = a3;
  v12 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (self->_arFrame == v26)
  {
    goto LABEL_23;
  }

  objc_storeStrong(&self->_arFrame, a3);
  arMatteTexture = self->_arMatteTexture;
  self->_arMatteTexture = 0;

  if (self->_depthDataIsMirrored != v7 || self->_interfaceOrientation != a6)
  {
    self->_depthDataIsMirrored = v7;
    self->_interfaceOrientation = a6;
    self->_isFirstFrame = 1;
  }

  v14 = [(ARFrame *)v26 capturedImage];
  v15 = [(ARFrame *)v26 capturedDepthData];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v12;
  }

  v18 = v17;

  if (v18)
  {
    textureCache = self->_textureCache;
    v20 = [v18 depthDataByConvertingToDepthDataType:1717855600];
    v21 = AVTGetPixelBufferTexture([v20 depthDataMap], textureCache, MTLPixelFormatR32Float);

    if (v21)
    {
      objc_storeStrong(&self->_lastCapturedDepth, v21);
      v22 = [v21 width];
      Height = [v21 height];
      if (self->_capturedDataWidth == v22 && self->_capturedDataHeight == Height)
      {
        goto LABEL_20;
      }

      self->_capturedDataWidth = v22;
      goto LABEL_19;
    }
  }

  v21 = 0;
  if (self->_lastCapturedDepth || !v14)
  {
    goto LABEL_20;
  }

  Width = CVPixelBufferGetWidth(v14);
  Height = CVPixelBufferGetHeight(v14);
  if (self->_capturedDataWidth != Width || self->_capturedDataHeight != Height)
  {
    v21 = 0;
    self->_capturedDataWidth = Width;
LABEL_19:
    self->_capturedDataHeight = Height;
    self->_isFirstFrame = 1;
    goto LABEL_20;
  }

  v21 = 0;
LABEL_20:
  v25 = [(ARFrame *)v26 segmentationBuffer]!= 0;
  if (self->_pipelineKind != v25)
  {
    self->_pipelineKind = v25;
    [(AVTARMaskRenderer *)self reloadTechnique];
  }

LABEL_23:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateWithDepthTexture:(id)a3 captureOrientation:(int64_t)a4 interfaceOrientation:(int64_t)a5 mirroredDepthData:(BOOL)a6
{
  v6 = a6;
  v14 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (v14 && self->_lastCapturedDepth != v14)
  {
    arFrame = self->_arFrame;
    self->_arFrame = 0;

    arMatteTexture = self->_arMatteTexture;
    self->_arMatteTexture = 0;

    if (self->_pipelineKind)
    {
      self->_pipelineKind = 0;
      [(AVTARMaskRenderer *)self reloadTechnique];
    }

    if (self->_depthDataIsMirrored != v6 || self->_interfaceOrientation != a5)
    {
      self->_depthDataIsMirrored = v6;
      self->_interfaceOrientation = a5;
      self->_isFirstFrame = 1;
    }

    objc_storeStrong(&self->_lastCapturedDepth, a3);
    v12 = [(MTLTexture *)v14 width];
    v13 = [(MTLTexture *)v14 height];
    if (self->_capturedDataWidth != v12 || self->_capturedDataHeight != v13)
    {
      self->_capturedDataWidth = v12;
      self->_capturedDataHeight = v13;
      self->_isFirstFrame = 1;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCapturedDepth:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lastCapturedDepth != v7)
  {
    objc_storeStrong(&self->_lastCapturedDepth, a3);
    v5 = [(MTLTexture *)v7 width];
    v6 = [(MTLTexture *)v7 height];
    if (self->_capturedDataWidth != v5 || self->_capturedDataHeight != v6)
    {
      self->_capturedDataWidth = v5;
      self->_capturedDataHeight = v6;
      self->_isFirstFrame = 1;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setFlipDepth:(BOOL)a3
{
  if (self->_depthDataIsMirrored != a3)
  {
    self->_depthDataIsMirrored = a3;
    self->_isFirstFrame = 1;
  }
}

- (void)initSharedResourcesIfNeededWithDestinationPixelFormat:(unint64_t)a3
{
  if (!self->_currentRenderPassDescriptor)
  {
    v59 = v3;
    v60 = v4;
    v7 = objc_alloc_init(MEMORY[0x1E6974130]);
    currentRenderPassDescriptor = self->_currentRenderPassDescriptor;
    self->_currentRenderPassDescriptor = v7;

    metalHelper = self->_metalHelper;
    v52 = unk_1BB4F0C20;
    v53 = unk_1BB4F0C30;
    v54 = unk_1BB4F0C40;
    v55 = unk_1BB4F0C50;
    v51 = 115;
    v56 = @"avt_fullscreen_quad_vertex";
    v57 = @"avt_blurMaskX_high_fragment";
    v58 = 1;
    if (metalHelper)
    {
      metalHelper = [(AVTMetalHelper *)metalHelper renderPipelineStateWithDescriptor:?];
    }

    horizontalBlurPipelineState = self->_horizontalBlurPipelineState;
    self->_horizontalBlurPipelineState = metalHelper;

    v11 = self->_metalHelper;
    v44 = unk_1BB4F0C20;
    v45 = unk_1BB4F0C30;
    v46 = unk_1BB4F0C40;
    v47 = unk_1BB4F0C50;
    v43 = 115;
    v48 = @"avt_fullscreen_quad_vertex";
    v49 = @"avt_blurMaskY_high_fragment";
    v50 = 1;
    if (v11)
    {
      v11 = [(AVTMetalHelper *)v11 renderPipelineStateWithDescriptor:?];
    }

    verticalBlurPipelineState = self->_verticalBlurPipelineState;
    self->_verticalBlurPipelineState = v11;

    v13 = self->_metalHelper;
    v36 = unk_1BB4F0C20;
    v37 = unk_1BB4F0C30;
    v38 = unk_1BB4F0C40;
    v39 = unk_1BB4F0C50;
    v35 = 115;
    v40 = @"avt_fullscreen_quad_orientation_vertex";
    v41 = @"avt_generate_masks_fragment";
    v42 = 1;
    if (v13)
    {
      v13 = [(AVTMetalHelper *)v13 renderPipelineStateWithDescriptor:?];
    }

    generateMasksPipelineState = self->_generateMasksPipelineState;
    self->_generateMasksPipelineState = v13;

    if (self->_debugMode)
    {
      v15 = self->_metalHelper;
      v27 = 25;
      v28 = unk_1BB4F0C20;
      v29 = unk_1BB4F0C30;
      v30 = unk_1BB4F0C40;
      v31 = unk_1BB4F0C50;
      v32 = @"avt_fullscreen_quad_vertex";
      v33 = @"avt_convert_depth_to_debug_color_fragment";
      v34 = 1;
      if (v15)
      {
        v15 = [(AVTMetalHelper *)v15 renderPipelineStateWithDescriptor:?];
      }

      debugConvertDepthPipelineState = self->_debugConvertDepthPipelineState;
      self->_debugConvertDepthPipelineState = v15;

      v17 = self->_metalHelper;
      v19 = a3;
      v20 = unk_1BB4F0C20;
      v21 = unk_1BB4F0C30;
      v22 = unk_1BB4F0C40;
      v23 = unk_1BB4F0C50;
      v24 = @"avt_fullscreen_quad_vertex";
      v25 = @"avt_composite_debug_fragment";
      v26 = 1;
      if (v17)
      {
        v17 = [(AVTMetalHelper *)v17 renderPipelineStateWithDescriptor:?];
      }

      debugVisualizationPipelineState = self->_debugVisualizationPipelineState;
      self->_debugVisualizationPipelineState = v17;
    }
  }
}

- (void)initPipelineKindSpecificResourcesIfNeededWithDestinationPixelFormat:(unint64_t)a3
{
  v5 = 0;
  v6 = 0;
  if (self->_pipelineKind == 1)
  {
    if ([(AVTPresentationConfiguration *)self->_presentationConfiguration internalStyle]== 3)
    {
      if (!self->_compositeMatteWithChromaKeyPipelineState)
      {

        metalHelper = self->_metalHelper;
        v28 = unk_1BB4F0C80;
        v29 = unk_1BB4F0C90;
        v30 = unk_1BB4F0CA0;
        v31 = unk_1BB4F0CB0;
        v27 = a3;
        v32 = @"avt_fullscreen_quad_orientation_vertex";
        v33 = @"avt_composite_fragment_matte_chroma_key";
        v34 = 1;
        if (metalHelper)
        {
          metalHelper = [(AVTMetalHelper *)metalHelper renderPipelineStateWithDescriptor:?];
        }

        compositeMatteWithChromaKeyPipelineState = self->_compositeMatteWithChromaKeyPipelineState;
        self->_compositeMatteWithChromaKeyPipelineState = metalHelper;
        v6 = @"avt_composite_fragment_matte_chroma_key";
LABEL_15:

        v5 = @"avt_fullscreen_quad_orientation_vertex";
      }
    }

    else if (!self->_compositeMattePipelineState)
    {

      v10 = self->_metalHelper;
      v19 = a3;
      v20 = unk_1BB4F0C80;
      v21 = unk_1BB4F0C90;
      v22 = unk_1BB4F0CA0;
      v23 = unk_1BB4F0CB0;
      v24 = @"avt_fullscreen_quad_orientation_vertex";
      v25 = @"avt_composite_fragment_matte";
      v26 = 1;
      if (v10)
      {
        v10 = [(AVTMetalHelper *)v10 renderPipelineStateWithDescriptor:?];
      }

      compositeMatteWithChromaKeyPipelineState = self->_compositeMattePipelineState;
      self->_compositeMattePipelineState = v10;
      v6 = @"avt_composite_fragment_matte";
      goto LABEL_15;
    }
  }

  else if (!self->_compositeLegacyPipelineState)
  {

    v9 = self->_metalHelper;
    v11 = a3;
    v12 = unk_1BB4F0C80;
    v13 = unk_1BB4F0C90;
    v14 = unk_1BB4F0CA0;
    v15 = unk_1BB4F0CB0;
    v16 = @"avt_fullscreen_quad_orientation_vertex";
    v17 = @"avt_composite_fragment_legacy";
    v18 = 1;
    if (v9)
    {
      v9 = [(AVTMetalHelper *)v9 renderPipelineStateWithDescriptor:?];
    }

    compositeMatteWithChromaKeyPipelineState = self->_compositeLegacyPipelineState;
    self->_compositeLegacyPipelineState = v9;
    v6 = @"avt_composite_fragment_legacy";
    goto LABEL_15;
  }
}

- (void)allocateTexturesIfNeededWithDestinationPixelFormat:(unint64_t)a3 framebufferSize:
{
  v5 = vmvn_s8(vceq_s32(*self->_framebufferSize, v4));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    *self->_framebufferSize = v4;
    v8 = v4.u32[0];
    v9 = ((v4.i32[0] + 3) >> 2);
    v10 = v4.u32[1];
    self->_isFirstFrame = 1;
    v11 = ((v4.i32[1] + 3) >> 2);
    v25 = [(AVTMetalHelper *)&self->_metalHelper->super.isa device];
    v12 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:115 width:v9 height:v11 mipmapped:0];
    [v12 setUsage:5];
    [v12 setResourceOptions:32];
    v13 = [v25 newTextureWithDescriptor:v12];
    v14 = self->_rawMaskTexture[0];
    self->_rawMaskTexture[0] = v13;

    v15 = [v25 newTextureWithDescriptor:v12];
    v16 = self->_rawMaskTexture[1];
    self->_rawMaskTexture[1] = v15;

    v17 = [v25 newTextureWithDescriptor:v12];
    tmpMaskBlurTexture = self->_tmpMaskBlurTexture;
    self->_tmpMaskBlurTexture = v17;

    v19 = [v25 newTextureWithDescriptor:v12];
    generatedMasksTexture = self->_generatedMasksTexture;
    self->_generatedMasksTexture = v19;

    if (self->_debugMode)
    {
      [v12 setPixelFormat:a3];
      [v12 setWidth:v8];
      [v12 setHeight:v10];
      v21 = [v25 newTextureWithDescriptor:v12];
      debugIntermediateTexture = self->_debugIntermediateTexture;
      self->_debugIntermediateTexture = v21;

      [v12 setPixelFormat:25];
      [v12 setWidth:v8 >> 1];
      [v12 setHeight:v10 >> 1];
      v23 = [v25 newTextureWithDescriptor:v12];
      debugARFrameDepthTexture = self->_debugARFrameDepthTexture;
      self->_debugARFrameDepthTexture = v23;
    }
  }
}

- (id)_renderCommandEncoderWithCommandBuffer:(id)a3 renderTarget:(id)a4
{
  currentRenderPassDescriptor = self->_currentRenderPassDescriptor;
  v7 = a4;
  v8 = a3;
  v9 = [(MTLRenderPassDescriptor *)currentRenderPassDescriptor colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];

  [v10 setLoadAction:0];
  [v10 setTexture:v7];

  v11 = [v8 renderCommandEncoderWithDescriptor:self->_currentRenderPassDescriptor];

  return v11;
}

- (id)_renderCommandEncoderWithCommandBuffer:(id)a3 renderTarget:(id)a4 shouldClear:(BOOL)a5 clearColor:(id)a6
{
  var3 = a6.var3;
  var2 = a6.var2;
  var1 = a6.var1;
  var0 = a6.var0;
  v10 = a5;
  currentRenderPassDescriptor = self->_currentRenderPassDescriptor;
  v14 = a4;
  v15 = a3;
  v16 = [(MTLRenderPassDescriptor *)currentRenderPassDescriptor colorAttachments];
  v17 = [v16 objectAtIndexedSubscript:0];

  if (v10)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  [v17 setLoadAction:v18];
  [v17 setClearColor:{var0, var1, var2, var3}];
  [v17 setTexture:v14];

  v19 = [v15 renderCommandEncoderWithDescriptor:self->_currentRenderPassDescriptor];

  return v19;
}

- (void)encodeIntermediatePassesWithCommandBuffer:(id)a3 sceneColorTexture:(id)a4 sceneOnTopTexture:(id)a5 generatedMasksTexture:(id)a6 debugARFrameDepthTexture:(id)a7
{
  v12 = a3;
  v13 = a7;
  capturedDataWidth = self->_capturedDataWidth;
  capturedDataHeight = self->_capturedDataHeight;
  interfaceOrientation = self->_interfaceOrientation;
  v17 = a6;
  v18 = a5;
  v19 = AVTSceneKitTextureCoordinatesForCaptureDeviceTexture(a4, capturedDataWidth, capturedDataHeight, interfaceOrientation).n128_u64[0];
  *&self->_anon_138[24] = v19;
  *&self->_anon_138[32] = v20;
  *&self->_anon_138[40] = v21;
  *&self->_anon_138[48] = v22;
  if (self->_depthDataIsMirrored)
  {
    *(&v19 + 1) = 1.0 - *(&v19 + 1);
    *(&v20 + 1) = 1.0 - *(&v20 + 1);
    *&self->_anon_138[24] = v19;
    *&self->_anon_138[32] = v20;
    *(&v21 + 1) = 1.0 - *(&v21 + 1);
    *(&v22 + 1) = 1.0 - *(&v22 + 1);
    *&self->_anon_138[40] = v21;
    *&self->_anon_138[48] = v22;
  }

  v23 = [(ARFrame *)self->_arFrame capturedImage];
  v24 = [(ARFrame *)self->_arFrame segmentationBuffer];
  if (self->_pipelineKind == 1)
  {
    Width = CVPixelBufferGetWidth(v23);
    if (Width == CVPixelBufferGetWidth(v24))
    {
      Height = CVPixelBufferGetHeight(v23);
      if (Height == CVPixelBufferGetHeight(v24))
      {
        v27 = AVTGetCapturedColorTexture(v24, self->_textureCache);
        arMatteTexture = self->_arMatteTexture;
        self->_arMatteTexture = v27;

        v29 = 1;
        goto LABEL_11;
      }
    }

    if (!self->_arMatteGenerator)
    {
      v30 = objc_alloc(MEMORY[0x1E6986490]);
      v31 = [(AVTMetalHelper *)&self->_metalHelper->super.isa device];
      v32 = [v30 initWithDevice:v31 matteResolution:1 useSmoothing:1];
      arMatteGenerator = self->_arMatteGenerator;
      self->_arMatteGenerator = v32;
    }

    [v12 pushDebugGroup:@"[AvatarKit] AVTARMaskRenderer - Matte generation"];
    v34 = [(ARMatteGenerator *)self->_arMatteGenerator generateMatteFromFrame:self->_arFrame commandBuffer:v12];
    v35 = self->_arMatteTexture;
    self->_arMatteTexture = v34;

    [v12 popDebugGroup];
  }

  v29 = 0;
LABEL_11:
  if (self->_debugMode)
  {
    v36 = AVTGetCapturedColorTexture(v23, self->_textureCache);
    debugARFrameColorTexture = self->_debugARFrameColorTexture;
    self->_debugARFrameColorTexture = v36;

    if (v24)
    {
      v38 = v29;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = AVTGetCapturedColorTexture(v24, self->_textureCache);
    }

    debugARFrameSegmentationBufferTexture = self->_debugARFrameSegmentationBufferTexture;
    self->_debugARFrameSegmentationBufferTexture = v39;
  }

  v41 = [(MTLRenderPassDescriptor *)self->_currentRenderPassDescriptor colorAttachments];
  v42 = [v41 objectAtIndexedSubscript:0];

  [v42 setLoadAction:0];
  [v42 setStoreAction:1];
  [v12 pushDebugGroup:@"[AvatarKit] AVTARMaskRenderer - Generate masks"];
  v43 = [(AVTARMaskRenderer *)self _renderCommandEncoderWithCommandBuffer:v12 renderTarget:self->_rawMaskTexture[self->_writeID]];
  [v43 setRenderPipelineState:self->_generateMasksPipelineState];
  [v43 setVertexBytes:&self->_anon_138[24] length:32 atIndex:0];
  [v43 setFragmentTexture:self->_lastCapturedDepth atIndex:0];
  [v43 setFragmentTexture:self->_rawMaskTexture[!self->_writeID] atIndex:1];
  [v43 setFragmentTexture:v18 atIndex:2];

  if (self->_pipelineKind == 1)
  {
    [v43 setFragmentTexture:self->_arMatteTexture atIndex:3];
  }

  depthSmoothingFactor = 0.0;
  if (!self->_isFirstFrame)
  {
    depthSmoothingFactor = self->_depthSmoothingFactor;
  }

  v48 = depthSmoothingFactor;
  [v43 setFragmentBytes:&self->_uniforms length:4 atIndex:0];
  [v43 setFragmentBytes:&v48 length:4 atIndex:1];
  [v43 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v43 endEncoding];

  [v12 popDebugGroup];
  [v12 pushDebugGroup:@"[AvatarKit] AVTARMaskRenderer - Blur masks"];
  v45 = [(AVTARMaskRenderer *)self _renderCommandEncoderWithCommandBuffer:v12 renderTarget:self->_tmpMaskBlurTexture];
  [v45 setRenderPipelineState:self->_horizontalBlurPipelineState];
  [v45 setFragmentTexture:self->_rawMaskTexture[self->_writeID] atIndex:0];
  [v45 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v45 endEncoding];
  v46 = [(AVTARMaskRenderer *)self _renderCommandEncoderWithCommandBuffer:v12 renderTarget:v17];

  [v46 setRenderPipelineState:self->_verticalBlurPipelineState];
  [v46 setFragmentTexture:self->_tmpMaskBlurTexture atIndex:0];
  [v46 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v46 endEncoding];

  [v12 popDebugGroup];
  if (self->_debugMode)
  {
    [v12 pushDebugGroup:@"[AvatarKit] AVTARMaskRenderer - Convert depth texture"];
    v47 = [(AVTARMaskRenderer *)self _renderCommandEncoderWithCommandBuffer:v12 renderTarget:v13];
    [v47 setRenderPipelineState:self->_debugConvertDepthPipelineState];
    [v47 setFragmentTexture:self->_lastCapturedDepth atIndex:0];
    [v47 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v47 endEncoding];

    [v12 popDebugGroup];
  }

  self->_writeID ^= 1u;
  self->_isFirstFrame = 0;
}

- (void)encodeCompositePassWithEncoder:(id)a3 sceneColorTexture:(id)a4 sceneOnTopTexture:(id)a5 helper:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_pipelineKind == 1)
  {
    v14 = [(AVTPresentationConfiguration *)self->_presentationConfiguration internalStyle];
    v15 = 264;
    if (v14 == 3)
    {
      v15 = 272;
    }
  }

  else
  {
    v15 = 256;
  }

  [v10 setRenderPipelineState:*(&self->super.isa + v15)];
  if ([(AVTPresentationConfiguration *)self->_presentationConfiguration internalStyle]== 3)
  {
    v23 = 0;
    v24 = 0;
    *&v16 = *&self->_uniforms.neckU;
    DWORD2(v16) = LODWORD(self->_uniforms.headZ);
    HIDWORD(v16) = LODWORD(self->_uniforms.shadowMaskSizeU);
    v22 = v16;
    shadowUVOffset = self->_uniforms.shadowUVOffset;
    *&v23 = self->_uniforms.shadowMaskSizeV;
    *(&v23 + 1) = shadowUVOffset;
    v25 = *&self->_anon_138[8];
    v18 = v10;
    v19 = 48;
  }

  else
  {
    *&v20 = *&self->_uniforms.neckU;
    DWORD2(v20) = LODWORD(self->_uniforms.headZ);
    HIDWORD(v20) = LODWORD(self->_uniforms.shadowMaskSizeU);
    v22 = v20;
    v21 = self->_uniforms.shadowUVOffset;
    *&v23 = self->_uniforms.shadowMaskSizeV;
    *(&v23 + 1) = v21;
    v18 = v10;
    v19 = 24;
  }

  [v18 setFragmentBytes:&v22 length:v19 atIndex:{0, v22, v23, v24, v25}];
  [v10 setVertexBytes:&self->_anon_138[24] length:32 atIndex:0];
  [v10 setFragmentTexture:v11 atIndex:0];
  [v10 setFragmentTexture:v12 atIndex:1];
  [v10 setFragmentTexture:self->_generatedMasksTexture atIndex:2];
  [v10 drawPrimitives:4 vertexStart:0 vertexCount:4];
}

- (BOOL)techniqueUsesSpecificMainPassClearColorForRenderer:(id)a3 clearColor:
{
  *v3 = 0;
  v3[1] = 0;
  return 1;
}

- (void)encodeTechniqueCommandsForRenderer:(id)a3 atTime:(double)a4 helper:(id)a5
{
  v6 = a5;
  v7 = [v6 mainPassColorTextureAtIndex:0];
  v8 = [v6 mainPassColorTextureAtIndex:1];
  if ([v7 width] && objc_msgSend(v7, "height"))
  {
    v9 = [v7 width];
    v20 = COERCE_DOUBLE(__PAIR64__([v7 height], v9));
    v10 = [v6 commandBuffer];
    v11 = [v6 destinationTexture];
    v12 = [v11 pixelFormat];

    [(AVTARMaskRenderer *)self initSharedResourcesIfNeededWithDestinationPixelFormat:v12];
    [(AVTARMaskRenderer *)self initPipelineKindSpecificResourcesIfNeededWithDestinationPixelFormat:v12];
    [(AVTARMaskRenderer *)self allocateTexturesIfNeededWithDestinationPixelFormat:v12 framebufferSize:v20];
    os_unfair_lock_lock(&self->_lock);
    debugMode = self->_debugMode;
    v14 = [v10 commandQueue];
    v15 = [v14 commandBuffer];

    generatedMasksTexture = self->_generatedMasksTexture;
    if (debugMode)
    {
      [(AVTARMaskRenderer *)self encodeIntermediatePassesWithCommandBuffer:v15 sceneColorTexture:v7 sceneOnTopTexture:v8 generatedMasksTexture:generatedMasksTexture debugARFrameDepthTexture:self->_debugARFrameDepthTexture];
      [v15 pushDebugGroup:@"[AvatarKit] AVTARMaskRenderer - Composite"];
      v17 = [(AVTARMaskRenderer *)self _renderCommandEncoderWithCommandBuffer:v15 renderTarget:self->_debugIntermediateTexture shouldClear:!self->_clearWithCamera clearColor:0.0, 0.0, 0.0, 0.0];
      if (self->_clearWithCamera)
      {
        [v6 drawSceneBackgroundUsingEncoder:v17 commandBuffer:v15 renderPassDescriptor:self->_currentRenderPassDescriptor];
      }

      [(AVTARMaskRenderer *)self encodeCompositePassWithEncoder:v17 sceneColorTexture:v7 sceneOnTopTexture:v8 helper:v6];
      [v17 endEncoding];
      [v15 popDebugGroup];
      [v15 commit];

      v18 = CACurrentMediaTime();
      v21 = v18;
      v15 = [v6 renderCommandEncoder];
      [v15 pushDebugGroup:@"[AvatarKit] AVTARMaskRenderer - Debug view"];
      [v15 setRenderPipelineState:self->_debugVisualizationPipelineState];
      [v15 setFragmentTexture:self->_debugIntermediateTexture atIndex:0];
      [v15 setFragmentTexture:v7 atIndex:1];
      [v15 setFragmentTexture:v8 atIndex:2];
      [v15 setFragmentTexture:self->_generatedMasksTexture atIndex:3];
      [v15 setFragmentTexture:self->_debugARFrameColorTexture atIndex:4];
      [v15 setFragmentTexture:self->_debugARFrameDepthTexture atIndex:5];
      [v15 setFragmentTexture:self->_debugARFrameSegmentationBufferTexture atIndex:6];
      [v15 setFragmentTexture:self->_arMatteTexture atIndex:7];
      [v15 setFragmentBytes:&self->_anon_138[24] length:32 atIndex:0];
      [v15 setFragmentBytes:&v21 length:4 atIndex:1];
      [v15 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v15 popDebugGroup];
    }

    else
    {
      [(AVTARMaskRenderer *)self encodeIntermediatePassesWithCommandBuffer:v15 sceneColorTexture:v7 sceneOnTopTexture:v8 generatedMasksTexture:generatedMasksTexture debugARFrameDepthTexture:0];
      [v15 commit];
      v19 = [v6 renderCommandEncoder];
      [v19 pushDebugGroup:@"[AvatarKit] AVTARMaskRenderer - Composite"];
      if (self->_clearWithCamera)
      {
        [v6 drawSceneBackgroundUsingEncoder:v19 commandBuffer:0 renderPassDescriptor:0];
      }

      [(AVTARMaskRenderer *)self encodeCompositePassWithEncoder:v19 sceneColorTexture:v7 sceneOnTopTexture:v8 helper:v6];
      [v19 popDebugGroup];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setClearWithCamera:(BOOL)a3 antialiasingMode:(unint64_t)a4
{
  self->_clearWithCamera = a3;
  self->_antialiasingMode = a4;
  [(AVTARMaskRenderer *)self reloadTechnique];
}

- (void)initWithOwner:presentationConfiguration:techniqueDidChangeHandler:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_1BB472000, v0, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Invalid presentation configuration %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithOwner:(os_log_t)log presentationConfiguration:techniqueDidChangeHandler:.cold.3(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "device";
  v1 = *MEMORY[0x1E69E9840];
}

@end