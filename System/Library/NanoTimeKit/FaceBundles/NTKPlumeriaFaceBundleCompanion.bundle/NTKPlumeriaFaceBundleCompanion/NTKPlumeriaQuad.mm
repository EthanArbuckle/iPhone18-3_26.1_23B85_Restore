@interface NTKPlumeriaQuad
+ (float)generateZdepthForLayer:(int)layer numLayers:(int)layers;
- (BOOL)initDigitStructs;
- (NTKPlumeriaQuad)initWithDevice:(id)device;
- (id)_loadMetalBinaryArchives;
- (id)_loadTextureResource:(id)resource;
- (void)initBloomPipeline:(id)pipeline;
- (void)initLayerAndInstanceStructs;
- (void)initPlumeriaPipeline:(id)pipeline;
- (void)morphBetweenColorways:(float)colorways index1:(int)index1 index2:(int)index2;
- (void)performBlending:(float)blending input1:(id *)input1 input2:(id *)input2 output:(id *)output;
- (void)performBloomBlending:(float)blending input1:(id *)input1 input2:(id *)input2 output:(id *)output;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setAnimatingOverrideDate:(BOOL)date;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setupForQuadView:(id)view;
@end

@implementation NTKPlumeriaQuad

- (NTKPlumeriaQuad)initWithDevice:(id)device
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = NTKPlumeriaQuad;
  v6 = [(NTKPlumeriaQuad *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    +[NTKPlumeriaQuad getDesiredFPS];
    v7->_fps = v8;
    v9 = +[CLKUIMetalResourceManager sharedDevice];
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = v9;

    v11 = v7->_mtlDevice;
    v12 = sub_42B0();
    v13 = [(MTLDevice *)v11 newDefaultLibraryWithBundle:v12 error:0];
    library = v7->_library;
    v7->_library = v13;

    [deviceCopy screenScale];
    v7->_screenScale = v15;
    v7->_tritiumProgress = 0.0;
    *v7->_anon_1270 = xmmword_9180;
    *v7->_deviceAccel = 0u;
    NTKPlumeriaSettingsResetToDefaults(&v7->_settings);
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    NTKPlumeriaSettingsLoadFromPlistResource(v16, @"PlumeriaSettings", &v7->_settings);
    v7->_currentSettings = &v7->_settings.normal[0].overallScale;
    v7->_currentTritiumSettings = &v7->_anon_15a0[1840];
    v7->_firstSettings = &v7->_settings.normal[0].overallScale;
  }

  return v7;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  overrideDate = self->_overrideDate;
  v10 = dateCopy;
  if ((NTKEqualObjects() & 1) == 0)
  {
    if (duration > 0.0)
    {
      [(NTKPlumeriaQuad *)self setAnimatingOverrideDate:1];
    }

    objc_storeStrong(&self->_overrideDate, date);
    v9 = CACurrentMediaTime();
    self->_startOverrideTime = v9;
    self->_endOverrideTime = v9 + duration;
  }
}

- (void)setAnimatingOverrideDate:(BOOL)date
{
  if (self->_animatingOverrideDate != date)
  {
    self->_animatingOverrideDate = date;
  }
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  screenScale = self->_screenScale;
  self->_renderSize.width = v6 * screenScale;
  self->_renderSize.height = v7 * screenScale;
  superview = [viewCopy superview];
  [superview safeAreaInsets];
  v10 = v9;
  superview2 = [viewCopy superview];
  [superview2 safeAreaInsets];
  v13 = v10 - v12;

  v14 = -v13;
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  v15 = self->_screenScale * v14;
  self->_renderSize.height = self->_renderSize.height + v15;
  colorPixelFormat = [viewCopy colorPixelFormat];

  self->_pixelFormat = colorPixelFormat;
  [(NTKPlumeriaQuad *)self initDigitStructs];
  [(NTKPlumeriaQuad *)self initLayerAndInstanceStructs];
  _loadMetalBinaryArchives = [(NTKPlumeriaQuad *)self _loadMetalBinaryArchives];
  [(NTKPlumeriaQuad *)self initBloomPipeline:_loadMetalBinaryArchives];
  [(NTKPlumeriaQuad *)self initPlumeriaPipeline:_loadMetalBinaryArchives];
  if (!self->_fontHelper)
  {
    v17 = objc_alloc_init(NTKPlumeriaFontHelper);
    fontHelper = self->_fontHelper;
    self->_fontHelper = v17;

    [(NTKPlumeriaFontHelper *)self->_fontHelper setFontToSFRoundedNumericSemibold10Point];
  }
}

- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  v8 = +[MTLRenderPassDescriptor renderPassDescriptor];
  tempRenderTargetTexture = self->_tempRenderTargetTexture;
  colorAttachments = [v8 colorAttachments];
  v11 = [colorAttachments objectAtIndexedSubscript:0];
  [v11 setTexture:tempRenderTargetTexture];

  colorAttachments2 = [v8 colorAttachments];
  v13 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v13 setLoadAction:2];

  v14 = [bufferCopy renderCommandEncoderWithDescriptor:v8];
  [(NTKPlumeriaQuad *)self renderForDisplayWithEncoder:v14];
  [v14 endEncoding];
  [(NTKPlumeriaBloomEffect *)self->_bloomEffect setMaxIterations:self->_currentSettings->var22];
  v15 = [(NTKPlumeriaBloomEffect *)self->_bloomEffect bloom:self->_tempRenderTargetTexture commandBuffer:bufferCopy];
  v16 = [bufferCopy renderCommandEncoderWithDescriptor:descriptorCopy];

  p_overallScale = &self->_settings.normal[0].overallScale;
  if (self->_editingColors)
  {
    editingIndex1 = self->_editingIndex1;
    v20 = &p_overallScale[64 * self->_editingIndex2];
    *&tritiumProgress = self->_editingFraction;
  }

  else
  {
    editingIndex1 = self->_currentIndex;
    v20 = &self->_anon_15a0[512 * editingIndex1 + 1840];
    tritiumProgress = self->_tritiumProgress;
    *&tritiumProgress = tritiumProgress;
  }

  memset(v22, 0, sizeof(v22));
  v23 = 0;
  [(NTKPlumeriaQuad *)self performBloomBlending:&p_overallScale[64 * editingIndex1] input1:v20 input2:v22 output:tritiumProgress];
  v21 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:v22 length:28 options:1];
  [v16 setFragmentBuffer:v21 offset:0 atIndex:0];
  [v16 setRenderPipelineState:self->_bloomPipelineState];
  [v16 setFragmentTexture:self->_tempRenderTargetTexture atIndex:0];
  [v16 setFragmentTexture:v15 atIndex:1];
  [v16 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v16 endEncoding];
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  [encoderCopy setLabel:@"Plumeria Render Encoder"];
  v98 = 0;
  v97 = 0;
  renderSize = self->_renderSize;
  v100 = xmmword_9190;
  [encoderCopy setViewport:&v97];
  [encoderCopy setRenderPipelineState:self->_plumeriaPipelineState];
  [encoderCopy setCullMode:0];
  [(NTKPlumeriaQuad *)self springStep];
  self->_springPosition = *&tritiumProgress;
  HIDWORD(tritiumProgress) = 0;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  memset(v74, 0, sizeof(v74));
  p_overallScale = &self->_settings.normal[0].overallScale;
  if (self->_editingColors)
  {
    editingIndex1 = self->_editingIndex1;
    v8 = &p_overallScale[64 * self->_editingIndex2];
    *&tritiumProgress = self->_editingFraction;
  }

  else
  {
    editingIndex1 = self->_currentIndex;
    v8 = &self->_anon_15a0[512 * editingIndex1 + 1840];
    tritiumProgress = self->_tritiumProgress;
    *&tritiumProgress = tritiumProgress;
  }

  [(NTKPlumeriaQuad *)self performBlending:&p_overallScale[64 * editingIndex1] input1:v8 input2:v74 output:tritiumProgress];
  if (*(&v75 + 2) < 1.0)
  {
    *&v75 = *(&v75 + 2) * *&v75;
  }

  [(CLKDevice *)self->_device screenBounds];
  v10 = v9;
  [(CLKDevice *)self->_device screenBounds];
  v12 = v10 / v11;
  *v74 = v12;
  v13 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:v74 length:416 options:1];
  [encoderCopy setVertexBuffer:v13 offset:0 atIndex:1];
  v65 = v13;
  [encoderCopy setFragmentBuffer:v13 offset:0 atIndex:0];
  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    v15 = overrideDate;
  }

  else
  {
    v15 = +[NTKDate faceDate];
  }

  v16 = v15;
  v63 = +[NSCalendar currentCalendar];
  v17 = [v63 components:96 fromDate:v16];
  hour = [v17 hour];
  v62 = v17;
  minute = [v17 minute];
  v61 = +[NSLocale currentLocale];
  if ((CLKLocaleIs24HourMode() & 1) == 0)
  {
    if (hour)
    {
      if (hour > 12)
      {
        hour -= 12;
      }
    }

    else
    {
      hour = 12;
    }
  }

  var1 = self->_currentSettings->var1;
  v64 = v16;
  if (var1 >= 1)
  {
    hour = var1 / 0x64uLL;
    minute = var1 % 0x64u;
  }

  v21 = 0;
  v104[0] = hour / 10;
  v104[1] = hour % 10;
  v104[2] = minute / 10;
  v104[3] = minute % 10;
  v22 = &self->_layerStructs[2];
  v23 = v103;
  do
  {
    v24 = *&v22->layer;
    v22 += 6;
    *v23 = v24;
    [NTKPlumeriaQuad generateZdepthForLayer:v21 numLayers:20];
    *(v23 + 2) = v25;
    ++v21;
    v23 += 16;
  }

  while (v21 != 20);
  v66 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:v103 length:320 options:1];
  [encoderCopy setVertexBuffer:? offset:? atIndex:?];
  [(NTKPlumeriaFontHelper *)self->_fontHelper generateLayout:hour minute:minute layout:v101];
  v26 = 0;
  digitStructs = self->_digitStructs;
  v28 = v102;
  do
  {
    [NTKPlumeriaFontHelper generateTransformFromRect:v28 toRect:v28 + 16 transformX:*&digitStructs[2 * v104[v26] + 1].digit transformY:v101[2 * v26]];
    ++v26;
    v28 += 32;
  }

  while (v26 != 4);
  v70 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:v102 length:128 options:1];
  v29 = 0;
  LODWORD(v30) = DWORD2(v75);
  v31 = *(&v75 + 1);
  v32 = &v98;
  p_segmentPos = &self->_instanceStructs[0].segmentPos;
  do
  {
    v34 = *(p_segmentPos - 1);
    v35 = *p_segmentPos;
    *(v32 - 2) = *(p_segmentPos - 2) * *&v30;
    *(v32 - 1) = v35;
    *v32 = v34;
    *(v32 + 1) = v29 >> 2;
    v36 = v35 + (v34 * v31);
    *p_segmentPos = v36;
    v37 = -1.0;
    if (v36 > 1.0 || v36 < 0.0 && (v37 = 1.0, v34 < 0.0))
    {
      *p_segmentPos = v36 + v37;
    }

    ++v29;
    v32 += 4;
    p_segmentPos += 6;
  }

  while (v29 != 144);
  LODWORD(v30) = HIDWORD(v75);
  if (*(&v75 + 3) > 1.0)
  {
    v38 = *(v8 + 8);
    *(&v97 + 16 * v38) = *(&v75 + 3) * *(&v97 + 16 * v38);
    v39 = (&v97 + 8 * v38);
    v39[4] = *&v30 * v39[4];
    v39[8] = *&v30 * v39[8];
    *&v30 = *&v30 * v39[12];
    v39[12] = *&v30;
  }

  v68 = self->_digitStructs;
  v69 = [(MTLDevice *)self->_mtlDevice newBufferWithBytes:&v97 length:2304 options:1, v30];
  v40 = 19;
  do
  {
    v41 = v40;
    [encoderCopy setVertexBuffer:v66 offset:16 * v40 atIndex:2];
    v42 = 0;
    v67 = v41;
    v71 = v41 << 6;
    do
    {
      v43 = digitStructs[2 * v104[v42]].mesh;
      vertexBuffers = [(MTKMesh *)v43 vertexBuffers];
      v45 = [vertexBuffers objectAtIndexedSubscript:0];

      buffer = [v45 buffer];
      v72 = v45;
      [encoderCopy setVertexBuffer:buffer offset:objc_msgSend(v45 atIndex:{"offset"), 0}];

      [encoderCopy setFragmentBuffer:v69 offset:v71 + 16 * v42 atIndex:1];
      v73 = v42;
      [encoderCopy setVertexBuffer:v70 offset:32 * v42 atIndex:3];
      [encoderCopy setVertexBuffer:v69 offset:v71 + 16 * v42 atIndex:4];
      submeshes = [(MTKMesh *)v43 submeshes];
      v48 = [submeshes count];

      v49 = encoderCopy;
      if (v48)
      {
        v50 = 0;
        do
        {
          submeshes2 = [(MTKMesh *)v43 submeshes];
          v52 = [submeshes2 objectAtIndexedSubscript:v50];

          primitiveType = [v52 primitiveType];
          indexCount = [v52 indexCount];
          indexType = [v52 indexType];
          indexBuffer = [v52 indexBuffer];
          buffer2 = [indexBuffer buffer];
          indexBuffer2 = [v52 indexBuffer];
          [v49 drawIndexedPrimitives:primitiveType indexCount:indexCount indexType:indexType indexBuffer:buffer2 indexBufferOffset:{objc_msgSend(indexBuffer2, "offset")}];

          ++v50;
          submeshes3 = [(MTKMesh *)v43 submeshes];
          v60 = [submeshes3 count];
        }

        while (v60 > v50);
      }

      v42 = v73 + 1;
      encoderCopy = v49;
      digitStructs = v68;
    }

    while (v73 != 3);
    v40 = v67 - 1;
  }

  while (v67);
}

- (id)_loadMetalBinaryArchives
{
  if (_os_feature_enabled_impl())
  {
    v3 = sub_42B0();
    v4 = [v3 URLForResource:@"plumeria" withExtension:@"metallib"];
    v5 = objc_opt_new();
    [v5 setUrl:v4];
    mtlDevice = self->_mtlDevice;
    v12 = 0;
    v7 = [(MTLDevice *)mtlDevice newBinaryArchiveWithDescriptor:v5 error:&v12];
    v8 = v12;
    if (v7)
    {
      v13 = v7;
      v9 = [NSArray arrayWithObjects:&v13 count:1];
    }

    else
    {
      v10 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_6EE0();
      }

      v9 = &__NSArray0__struct;
    }
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (void)initPlumeriaPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  v5 = [(MTLLibrary *)self->_library newFunctionWithName:@"plumeriaVertexShader"];
  v6 = [(MTLLibrary *)self->_library newFunctionWithName:@"plumeriaFragmentShader"];
  if (!v6)
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_6F48(self, v7);
    }
  }

  v8 = objc_alloc_init(MTLRenderPipelineDescriptor);
  v9 = v8;
  if (pipelineCopy)
  {
    [v8 setBinaryArchives:pipelineCopy];
  }

  [v9 setVertexFunction:v5];
  [v9 setFragmentFunction:v6];
  [v9 setLabel:@"Plumeria Render Pipeline"];
  colorAttachments = [v9 colorAttachments];
  v11 = [colorAttachments objectAtIndexedSubscript:0];

  [v11 setPixelFormat:self->_pixelFormat];
  [v11 setBlendingEnabled:0];
  plumeriaPipelineState = self->_plumeriaPipelineState;
  self->_plumeriaPipelineState = 0;

  if (pipelineCopy)
  {
    mtlDevice = self->_mtlDevice;
    v24 = 0;
    v14 = [(MTLDevice *)mtlDevice newRenderPipelineStateWithDescriptor:v9 options:4 reflection:0 error:&v24];
    v15 = v24;
    v16 = self->_plumeriaPipelineState;
    self->_plumeriaPipelineState = v14;

    if (self->_plumeriaPipelineState && !v15)
    {
      v17 = 0;
      goto LABEL_22;
    }

    v18 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_6FE0();
    }
  }

  else
  {
    v15 = 0;
  }

  if (self->_plumeriaPipelineState)
  {
    v17 = v15;
  }

  else
  {
    v19 = self->_mtlDevice;
    v23 = v15;
    v20 = [(MTLDevice *)v19 newRenderPipelineStateWithDescriptor:v9 error:&v23];
    v17 = v23;

    v21 = self->_plumeriaPipelineState;
    self->_plumeriaPipelineState = v20;

    if (!self->_plumeriaPipelineState || v17)
    {
      v22 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_7048();
      }
    }
  }

LABEL_22:
}

- (id)_loadTextureResource:(id)resource
{
  v11[0] = MTKTextureLoaderOptionTextureUsage;
  v11[1] = MTKTextureLoaderOptionTextureStorageMode;
  v12[0] = &off_10F48;
  v12[1] = &off_10F60;
  resourceCopy = resource;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v6 = [[MTKTextureLoader alloc] initWithDevice:self->_mtlDevice];
  v7 = sub_42B0();
  v10 = 0;
  v8 = [v6 newTextureWithName:resourceCopy scaleFactor:v7 bundle:v5 options:&v10 error:1.0];

  return v8;
}

- (void)performBloomBlending:(float)blending input1:(id *)input1 input2:(id *)input2 output:(id *)output
{
  v7 = blending < 0.0;
  blendingCopy = 0.0;
  if (!v7)
  {
    blendingCopy = blending;
  }

  if (blendingCopy > 1.0)
  {
    blendingCopy = 1.0;
  }

  v9 = (blendingCopy * blendingCopy);
  *&v9 = (blendingCopy * -2.0 + 3.0) * v9;
  v10 = *&input1->var15;
  v11 = *&input2->var15;
  *&output->var0 = vmlaq_n_f32(v10, vsubq_f32(v11, v10), *&v9);
  *&output->var4 = vmla_f32(*&input1->var19, vsub_f32(*&input2->var19, *&input1->var19), *&vdupq_lane_s32(*&v9, 0));
  var21 = input1->var21;
  v13 = input2->var21;
  output->var6 = var21 + (*&v9 * (v13 - var21));
  if (self->_state == 2)
  {
    var2 = input2[1].var2;
    if (*&var2 > 0.0)
    {
      output->var1 = splineInterpolation(v10.f32[1], *&var2, *(&var2 + 1), v11.f32[1], blending);
    }

    var3 = input2[1].var3;
    if (*&var3 > 0.0)
    {
      output->var6 = splineInterpolation(var21, *&var3, *(&var3 + 1), v13, blending);
    }
  }
}

- (void)performBlending:(float)blending input1:(id *)input1 input2:(id *)input2 output:(id *)output
{
  _NF = blending < 0.0;
  blendingCopy = 0.0;
  if (!_NF)
  {
    blendingCopy = blending;
  }

  if (blendingCopy > 1.0)
  {
    blendingCopy = 1.0;
  }

  *v6.i32 = (blendingCopy * -2.0 + 3.0) * (blendingCopy * blendingCopy);
  v14.f64[0] = input1->var2;
  v15.f64[0] = input2->var2;
  v16 = *&input1->var3;
  v17 = *&input2->var3;
  var6 = input1->var6;
  v19 = input2->var6;
  output[1].var5 = var6 + (*v6.i32 * (v19 - var6));
  v14.f64[1] = input1->var7;
  v20 = vcvt_hight_f32_f64(vcvt_f32_f64(v16), v14);
  v15.f64[1] = input2->var7;
  *&output->var9 = vmlaq_n_f32(v20, vsubq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v17), v15), v20), *v6.i32);
  v17.f64[0] = input1->var10;
  v21.f64[0] = input2->var10;
  v17.f64[1] = input1->var12;
  v22 = vcvt_hight_f32_f64(vcvt_f32_f64(*&input1->var8), v17);
  v21.f64[1] = input2->var12;
  v46 = v6;
  *&output->var13 = vmlaq_n_f32(v22, vsubq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(*&input2->var8), v21), v22), *v6.i32);
  *v22.f32 = vcvt_f32_f64(*&input1->var13);
  *&output[1].var3 = vmla_f32(*v22.f32, vsub_f32(vcvt_f32_f64(*&input2->var13), *v22.f32), *&vdupq_lane_s32(v6, 0));
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v24 = IsReduceMotionEnabled;
  if (self->_state == 2 && !IsReduceMotionEnabled)
  {
    var7 = input1->var7;
    v26 = input2->var7;
    output->var12 = splineInterpolation(var7, COERCE_FLOAT(*&input2->var23), COERCE_FLOAT(HIDWORD(*&input2->var23)), v26, blending);
    var8 = input1->var8;
    v28 = input2->var8;
    *&output->var13 = splineInterpolation(var8, COERCE_FLOAT(*&input2->var23), COERCE_FLOAT(HIDWORD(*&input2->var23)), v28, blending);
    var9 = input1->var9;
    v30 = input2->var9;
    output[1].var0 = splineInterpolation(var9, COERCE_FLOAT(*&input2[1].var0), COERCE_FLOAT(HIDWORD(*&input2[1].var0)), v30, blending);
    var2 = input1->var2;
    v32 = input2->var2;
    output->var11 = splineInterpolation(var2, COERCE_FLOAT(*&input2[1].var4), COERCE_FLOAT(HIDWORD(*&input2[1].var4)), v32, blending);
  }

  v33 = 0;
  _S4 = v46.i32[0];
  v35 = vdupq_lane_s32(v46, 0);
  do
  {
    v36 = *(&input1[1].var6 + v33);
    _Q2 = vsubq_f32(*(&input2[1].var6 + v33), v36);
    __asm { FMLA            S3, S4, V2.S[2] }

    v42 = vmlaq_f32(v36, _Q2, v35);
    v42.i32[2] = _S3;
    *(&output[1].var10 + v33) = v42;
    v33 += 16;
  }

  while (v33 != 320);
  if (v24 || (state = self->_state, state == 3))
  {
    *&self->_deviceAccel[8] = 0;
    *self->_deviceAccel = 0;
    state = self->_state;
  }

  if ((state - 4) < 2)
  {
    v44 = 0uLL;
  }

  else if ((state - 1) > 1)
  {
    v44 = *self->_deviceAccel;
  }

  else
  {
    v44 = vmlaq_n_f32(*self->_deviceAccel, vsubq_f32(0, *self->_deviceAccel), *v46.i32);
    v44.f32[2] = COERCE_FLOAT(*&self->_deviceAccel[8]) + (*v46.i32 * (0.0 - COERCE_FLOAT(*&self->_deviceAccel[8])));
  }

  *&output->var4 = v44;
  springPosition = self->_springPosition;
  if ((self->_state - 1) < 2)
  {
    springPosition = springPosition + (*v46.i32 * (0.0 - springPosition));
  }

  output->var8 = springPosition;
}

+ (float)generateZdepthForLayer:(int)layer numLayers:(int)layers
{
  result = 1.0 / (layers - 1) * layer;
  if (result <= 0.0)
  {
    return 0.001;
  }

  if (result >= 1.0)
  {
    return 0.9999;
  }

  return result;
}

- (void)initLayerAndInstanceStructs
{
  randomSeed = self->_settings.randomSeed;
  srand(randomSeed);
  v4 = 0;
  dword_17590 = randomSeed;
  for (i = &self->_layerStructs[4]; ; i += 6)
  {
    i[-4].layer = v4;
    v6 = randomSeed ? rand() / 2147483650.0 : vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL);
    *&i[-2].layer = v6;
    v7 = dword_17590 ? rand() / 2147483650.0 : vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL);
    *&i[-1].layer = v7;
    [NTKPlumeriaQuad generateZdepthForLayer:v4 numLayers:36];
    i->layer = v8;
    if (v4 == 35)
    {
      break;
    }

    randomSeed = dword_17590;
    ++v4;
  }

  v9 = 0;
  *&self->_layerStructs[2].layer = 0x3F0000003F000000;
  p_segmentPos = &self->_instanceStructs[0].segmentPos;
  do
  {
    *(p_segmentPos - 5) = v9;
    *(p_segmentPos - 4) = v9 / 0x24u;
    *(p_segmentPos - 3) = v9 % 0x24u;
    if (dword_17590)
    {
      v11 = rand() / 2147483650.0;
    }

    else
    {
      v11 = vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL);
    }

    *(p_segmentPos - 2) = (v11 * 0.25) + 0.3;
    if (dword_17590)
    {
      v12 = rand() / 2147483650.0;
    }

    else
    {
      v12 = vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL);
    }

    *p_segmentPos = v12;
    fps = self->_fps;
    if (dword_17590)
    {
      v14 = rand() / 2147483650.0;
    }

    else
    {
      v14 = vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL);
    }

    v15 = 30.0 / fps;
    v16 = v15;
    v17 = v16 * 0.0015;
    *&v16 = v16 * 0.0024;
    *(p_segmentPos - 1) = v17 + (v14 * (*&v16 - v17));
    if (dword_17590)
    {
      v18 = rand() / 2147483650.0;
    }

    else
    {
      v18 = vcvts_n_f32_u32(arc4random_uniform(0xFFFFFFFF), 0x20uLL);
    }

    if (v18 > 0.66)
    {
      *(p_segmentPos - 1) = -*(p_segmentPos - 1);
    }

    ++v9;
    p_segmentPos += 6;
  }

  while (v9 != 144);
}

- (BOOL)initDigitStructs
{
  v34 = [NSBundle bundleForClass:objc_opt_class()];
  if (!v34)
  {
    goto LABEL_16;
  }

  v33 = [[MTKMeshBufferAllocator alloc] initWithDevice:self->_mtlDevice];
  if (!v33)
  {
    goto LABEL_16;
  }

  v3 = 0;
  v32 = 0;
  selfCopy = self;
  selfCopy2 = self;
  do
  {
    v5 = [NSString stringWithFormat:@"%d", v3];
    v6 = [v34 URLForResource:v5 withExtension:@"usdc"];
    if (v6)
    {
      v7 = objc_alloc_init(MDLVertexDescriptor);
      v8 = [NSMutableArray alloc];
      v9 = [[MDLVertexAttribute alloc] initWithName:MDLVertexAttributePosition format:786435 offset:0 bufferIndex:0];
      v10 = [[MDLVertexAttribute alloc] initWithName:MDLVertexAttributeNormal format:786435 offset:16 bufferIndex:0];
      v11 = [[MDLVertexAttribute alloc] initWithName:MDLVertexAttributeTextureCoordinate format:786434 offset:32 bufferIndex:0];
      v12 = [v8 initWithObjects:{v9, v10, v11, 0}];
      [v7 setAttributes:v12];

      v13 = [NSMutableArray alloc];
      v14 = [[MDLVertexBufferLayout alloc] initWithStride:48];
      v15 = [v13 initWithObjects:{v14, 0}];
      [v7 setLayouts:v15];

      v16 = [[MDLAsset alloc] initWithURL:v6 vertexDescriptor:v7 bufferAllocator:v33];
      if (v16)
      {
        v17 = [v16 childObjectsOfClass:objc_opt_class()];
        v18 = v17;
        if (v17 && [v17 count])
        {
          v19 = [v18 objectAtIndexedSubscript:0];
          v20 = [MTKMesh alloc];
          mtlDevice = selfCopy->_mtlDevice;
          v35 = 0;
          v22 = [v20 initWithMesh:v19 device:mtlDevice error:&v35];
          v23 = v35;
          v24 = v23;
          if (v22)
          {
            v31 = v23;
            selfCopy2->_digitStructs[0].digit = v3;
            objc_storeStrong(&selfCopy2->_digitStructs[0].mesh, v22);
            [v19 boundingBox];
            selfCopy2->_digitStructs[1] = vzip1q_s64(v26, v25);
            v24 = v31;
            ++v32;
          }
        }
      }
    }

    ++v3;
    selfCopy2 = (selfCopy2 + 32);
  }

  while (v3 != 10);

  if (v32 == 10)
  {
    v27 = 1;
  }

  else
  {
LABEL_16:
    v28 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_70B0(v28);
    }

    v27 = 0;
  }

  return v27;
}

- (void)initBloomPipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  [(CLKDevice *)self->_device screenBounds];
  v6 = (v5 * self->_screenScale);
  [(CLKDevice *)self->_device screenBounds];
  v8 = (self->_screenScale * v7);
  v9 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:self->_pixelFormat width:v6 height:v8 mipmapped:0];
  [v9 setUsage:5];
  [v9 setStorageMode:2];
  v10 = [(MTLDevice *)self->_mtlDevice newTextureWithDescriptor:v9];
  tempRenderTargetTexture = self->_tempRenderTargetTexture;
  self->_tempRenderTargetTexture = v10;

  v12 = objc_alloc_init(NTKPlumeriaBloomEffect);
  bloomEffect = self->_bloomEffect;
  self->_bloomEffect = v12;

  [(NTKPlumeriaBloomEffect *)self->_bloomEffect initShader:self->_mtlDevice metalLibrary:self->_library width:vcvtd_n_f64_s32(v6 height:1uLL), vcvtd_n_f64_s32(v8, 1uLL)];
  v14 = [(MTLLibrary *)self->_library newFunctionWithName:@"screenTriangleVertex"];
  v15 = [(MTLLibrary *)self->_library newFunctionWithName:@"bloomCompositeFragment"];
  v16 = objc_alloc_init(MTLRenderPipelineDescriptor);
  v17 = v16;
  if (pipelineCopy)
  {
    [v16 setBinaryArchives:pipelineCopy];
  }

  v31 = v14;
  [v17 setVertexFunction:v14];
  [v17 setFragmentFunction:v15];
  [v17 setLabel:@"Plumeria Bloom Final Pass Pipeline"];
  colorAttachments = [v17 colorAttachments];
  v19 = [colorAttachments objectAtIndexedSubscript:0];

  [v19 setPixelFormat:self->_pixelFormat];
  [v19 setBlendingEnabled:0];
  bloomPipelineState = self->_bloomPipelineState;
  self->_bloomPipelineState = 0;

  if (pipelineCopy)
  {
    mtlDevice = self->_mtlDevice;
    v33 = 0;
    v22 = [(MTLDevice *)mtlDevice newRenderPipelineStateWithDescriptor:v17 options:4 reflection:0 error:&v33];
    v23 = v33;
    v24 = self->_bloomPipelineState;
    self->_bloomPipelineState = v22;

    if (self->_bloomPipelineState && !v23)
    {
      v25 = 0;
      goto LABEL_18;
    }

    v26 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_70F4();
    }
  }

  else
  {
    v23 = 0;
  }

  if (self->_bloomPipelineState)
  {
    v25 = v23;
  }

  else
  {
    v27 = self->_mtlDevice;
    v32 = v23;
    v28 = [(MTLDevice *)v27 newRenderPipelineStateWithDescriptor:v17 error:&v32];
    v25 = v32;

    v29 = self->_bloomPipelineState;
    self->_bloomPipelineState = v28;

    if (!self->_bloomPipelineState || v25)
    {
      v30 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_715C();
      }
    }
  }

LABEL_18:
}

- (void)morphBetweenColorways:(float)colorways index1:(int)index1 index2:(int)index2
{
  self->_editingColors = 1;
  self->_editingIndex1 = index1;
  self->_editingIndex2 = index2;
  self->_editingFraction = colorways;
  self->_state = 5;
  if (index1 == index2)
  {
    self->_editingColors = 0;
    self->_currentIndex = index1;
    v5 = &self->_settings + 512 * index1;
    self->_currentSettings = (v5 + 16);
    self->_currentTritiumSettings = (v5 + 2576);
    self->_state = 4;
  }
}

@end