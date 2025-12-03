@interface AAUIMetalBadgeRenderer
- (AAUIMetalBadgeRenderer)initWithCAMetalLayer:(id)layer useEarnedShader:(BOOL)shader;
- (id)snapshot;
- (void)_drawBadgeFrameCallback;
- (void)_drawBadgeModel:(id)model intoRenderEncoder:(id)encoder withBackTexture:(BOOL)texture;
- (void)_drawFrameWithDrawable:(id)drawable;
- (void)_drawIntoRenderEncoder:(id)encoder;
- (void)_loadBadgeModelWithConfiguration:(id)configuration;
- (void)_setupAttributes;
- (void)_setupCommonBindingsForRenderEncoder:(id)encoder pipelineState:(id)state verticesBuffer:(id)buffer;
- (void)_setupRenderPipeline;
- (void)_setupTextures;
- (void)_updateModelTransformForBadge:(id)badge;
- (void)cleanupAfterSnapshot;
- (void)dealloc;
- (void)resizeBadgeForCurrentViewSize;
- (void)setBackTextureImage:(id)image;
- (void)setConfiguration:(id)configuration;
- (void)setPaused:(BOOL)paused;
- (void)snapshot;
@end

@implementation AAUIMetalBadgeRenderer

- (void)resizeBadgeForCurrentViewSize
{
  [(CAMetalLayer *)self->_metalLayer bounds];
  v5.f64[0] = v3;
  v5.f64[1] = v4;
  v6 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_n_f64(v5, self->_rasterScaleFactor))));
  if (v6.i32[0])
  {
    v7 = v6.i32[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v33 = v4;
    v34 = v3;
    v32 = v6;
    [(CAMetalLayer *)self->_metalLayer setDrawableSize:v6.u32[0], v6.u32[1]];
    v8 = vceq_s32(*self->_attachmentRasterSize, v32);
    if ((v8.i32[0] & v8.i32[1] & 1) == 0)
    {
      *self->_attachmentRasterSize = v32;
      if (v33 == 0.0)
      {
        v10 = 1.0;
      }

      else
      {
        v9 = v34 / v33;
        v10 = v9;
      }

      v11 = -25.0;
      v12 = v33 / v34;
      v13 = v12 * -25.0;
      if (v34 != 0.0)
      {
        v11 = v13;
      }

      v35 = v11;
      v14 = tanf(0.15708);
      v15 = 0;
      v16 = 1.0 / v14;
      v17.i32[1] = 0;
      v17.i64[1] = 0;
      v17.f32[0] = (1.0 / v14) / v10;
      v18.i32[0] = 0;
      v18.i64[1] = 0;
      v18.f32[1] = v16;
      *&v19 = 0;
      *(&v19 + 1) = __PAIR64__(1.0, LODWORD(v35));
      v37[0] = xmmword_23E4DF910;
      v37[1] = xmmword_23E4DF920;
      v37[2] = xmmword_23E4DF950;
      v37[3] = v19;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      do
      {
        *(&v38 + v15 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(v37[v15])), v18, *&v37[v15], 1), xmmword_23E4DF960, v37[v15], 2), xmmword_23E4DF970, v37[v15], 3);
        ++v15;
      }

      while (v15 != 4);
      v20 = v39;
      v21 = v40;
      v22 = v41;
      *self->_anon_60 = v38;
      *&self->_anon_60[16] = v20;
      *&self->_anon_60[32] = v21;
      *&self->_anon_60[48] = v22;
      v36 = objc_alloc_init(MEMORY[0x277CD7058]);
      [v36 setWidth:*self->_attachmentRasterSize];
      [v36 setHeight:*&self->_attachmentRasterSize[4]];
      [v36 setMipmapLevelCount:1];
      [v36 setUsage:4];
      [v36 setStorageMode:3];
      [v36 setTextureType:4];
      [v36 setSampleCount:4];
      [v36 setPixelFormat:252];
      v23 = [(MTLDevice *)self->_device newTextureWithDescriptor:v36];
      depthAttachmentMSAA = self->_depthAttachmentMSAA;
      self->_depthAttachmentMSAA = v23;

      [v36 setPixelFormat:-[CAMetalLayer pixelFormat](self->_metalLayer, "pixelFormat")];
      v25 = [(MTLDevice *)self->_device newTextureWithDescriptor:v36];
      colorAttachmentMSAA = self->_colorAttachmentMSAA;
      self->_colorAttachmentMSAA = v25;

      renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
      renderPassDesc = self->_renderPassDesc;
      self->_renderPassDesc = renderPassDescriptor;

      colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDesc colorAttachments];
      v30 = [colorAttachments objectAtIndexedSubscript:0];

      [v30 setLoadAction:2];
      [v30 setStoreAction:2];
      [v30 setClearColor:{0.0, 0.0, 0.0, 0.0}];
      [v30 setTexture:self->_colorAttachmentMSAA];
      depthAttachment = [(MTLRenderPassDescriptor *)self->_renderPassDesc depthAttachment];
      [depthAttachment setLoadAction:2];
      [depthAttachment setStoreAction:0];
      [depthAttachment setTexture:self->_depthAttachmentMSAA];
      [depthAttachment setResolveTexture:0];
    }
  }
}

- (void)_setupAttributes
{
  if (self->_useEarnedShader)
  {
    v26 = v2;
    v27 = v3;
    *v5.f32 = _matrix4x4_rotation(-1.4137, xmmword_23E4DF910);
    v19 = v6;
    v20 = v5;
    v17 = v8;
    v18 = v7;
    *&v9 = _matrix4x4_rotation(-3.1416, xmmword_23E4DF920);
    v10 = 0;
    v21[0] = v9;
    v21[1] = v11;
    v21[2] = v12;
    v21[3] = v13;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    do
    {
      *(&v22 + v10 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(v21[v10])), v19, *&v21[v10], 1), v18, v21[v10], 2), v17, v21[v10], 3);
      ++v10;
    }

    while (v10 != 4);
    v14 = v23;
    v15 = v24;
    v16 = v25;
    *self->_anon_e0 = v22;
    *&self->_anon_e0[16] = v14;
    *&self->_anon_e0[32] = v15;
    *&self->_anon_e0[48] = v16;
    *self->_cameraPosition = xmmword_23E4DF930;
  }
}

- (void)_setupTextures
{
  v29[3] = *MEMORY[0x277D85DE8];
  if (self->_useEarnedShader)
  {
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v22 URLForResource:@"cubes_combined" withExtension:@"png"];
    v20 = [v22 URLForResource:@"flecks" withExtension:@"png"];
    v3 = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:self->_device];
    v5 = *MEMORY[0x277CD71A8];
    v27[0] = *MEMORY[0x277CD71A0];
    v4 = v27[0];
    v27[1] = v5;
    v6 = *MEMORY[0x277CD71C8];
    v29[0] = MEMORY[0x277CBEC38];
    v29[1] = v6;
    v28 = *MEMORY[0x277CD71B0];
    v7 = v28;
    v8 = MEMORY[0x277CBEC28];
    v29[2] = MEMORY[0x277CBEC28];
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v27 count:3];
    v24 = 0;
    v10 = [v3 newTextureWithContentsOfURL:v20 options:v9 error:&v24];
    v11 = v24;
    fleckNormalTexture = self->_fleckNormalTexture;
    self->_fleckNormalTexture = v10;

    v13 = *MEMORY[0x277CD7190];
    v25[0] = *MEMORY[0x277CD7198];
    v25[1] = v4;
    v26[0] = v13;
    v26[1] = v8;
    v25[2] = v7;
    v25[3] = v5;
    v26[2] = v8;
    v26[3] = v6;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

    v23 = v11;
    v15 = [v3 newTextureWithContentsOfURL:v21 options:v14 error:&v23];
    v16 = v23;

    environmentTexture = self->_environmentTexture;
    self->_environmentTexture = v15;
  }

  else
  {
    v18 = self->_fleckNormalTexture;
    self->_fleckNormalTexture = 0;

    v19 = self->_environmentTexture;
    self->_environmentTexture = 0;
  }
}

- (void)_setupRenderPipeline
{
  v3 = objc_opt_new();
  [v3 setDepthCompareFunction:1];
  [v3 setDepthWriteEnabled:1];
  v71 = v3;
  v4 = [(MTLDevice *)self->_device newDepthStencilStateWithDescriptor:v3];
  depthStencilState = self->_depthStencilState;
  self->_depthStencilState = v4;

  v6 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v6 setLabel:@"Metal Badge Pipeline"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  device = self->_device;
  v76[1] = 0;
  v70 = v7;
  v9 = [MTLDevice newDefaultLibraryWithBundle:"newDefaultLibraryWithBundle:error:" error:?];
  v10 = 0;
  v11 = objc_alloc_init(MEMORY[0x277CD7090]);
  attributes = [v11 attributes];
  v13 = [attributes objectAtIndexedSubscript:0];
  [v13 setFormat:30];

  attributes2 = [v11 attributes];
  v15 = [attributes2 objectAtIndexedSubscript:0];
  [v15 setOffset:0];

  attributes3 = [v11 attributes];
  v17 = [attributes3 objectAtIndexedSubscript:0];
  [v17 setBufferIndex:5];

  attributes4 = [v11 attributes];
  v19 = [attributes4 objectAtIndexedSubscript:2];
  [v19 setFormat:30];

  attributes5 = [v11 attributes];
  v21 = [attributes5 objectAtIndexedSubscript:2];
  [v21 setOffset:12];

  attributes6 = [v11 attributes];
  v23 = [attributes6 objectAtIndexedSubscript:2];
  [v23 setBufferIndex:5];

  attributes7 = [v11 attributes];
  v25 = [attributes7 objectAtIndexedSubscript:1];
  [v25 setFormat:29];

  attributes8 = [v11 attributes];
  v27 = [attributes8 objectAtIndexedSubscript:1];
  [v27 setOffset:24];

  attributes9 = [v11 attributes];
  v29 = [attributes9 objectAtIndexedSubscript:1];
  [v29 setBufferIndex:5];

  layouts = [v11 layouts];
  v31 = [layouts objectAtIndexedSubscript:5];
  [v31 setStride:32];

  layouts2 = [v11 layouts];
  v33 = [layouts2 objectAtIndexedSubscript:5];
  [v33 setStepRate:1];

  layouts3 = [v11 layouts];
  v35 = [layouts3 objectAtIndexedSubscript:5];
  [v35 setStepFunction:1];

  [v6 setVertexDescriptor:v11];
  pixelFormat = [(CAMetalLayer *)self->_metalLayer pixelFormat];
  colorAttachments = [v6 colorAttachments];
  v38 = [colorAttachments objectAtIndexedSubscript:0];
  [v38 setPixelFormat:pixelFormat];

  [v6 setDepthAttachmentPixelFormat:252];
  [v6 setRasterSampleCount:4];
  v69 = v9;
  if (self->_useEarnedShader)
  {
    v39 = [v9 newFunctionWithName:@"earnedBadgeVertexShader"];
    v40 = [v9 newFunctionWithName:@"earnedBadgeFragmentShader"];
    v41 = [v9 newFunctionWithName:@"earnedBadgeFaceFragmentShader"];
    v42 = [v9 newFunctionWithName:@"earnedBadgeFaceInlayFragmentShader"];
    v43 = [v9 newFunctionWithName:@"earnedBadgeFaceTriColorFragmentShader"];
    v44 = v9;
    v45 = v40;
    v46 = [v44 newFunctionWithName:@"earnedBadgeFaceInlayTriColorFragmentShader"];
  }

  else
  {
    v39 = [v9 newFunctionWithName:@"unearnedBadgeVertexShader"];
    v45 = [v9 newFunctionWithName:@"unearnedBadgeFragmentShader"];
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v46 = 0;
  }

  v68 = v39;
  [v6 setVertexFunction:v39];
  v67 = v45;
  [v6 setFragmentFunction:v45];
  v47 = self->_device;
  v76[0] = v10;
  v48 = [(MTLDevice *)v47 newRenderPipelineStateWithDescriptor:v6 error:v76];
  v49 = v76[0];

  shaderRenderPipeline = self->_shaderRenderPipeline;
  self->_shaderRenderPipeline = v48;

  if (v41)
  {
    [v6 setFragmentFunction:v41];
    v51 = self->_device;
    v75 = v49;
    v52 = [(MTLDevice *)v51 newRenderPipelineStateWithDescriptor:v6 error:&v75];
    v53 = v75;

    shaderFaceRenderPipeline = self->_shaderFaceRenderPipeline;
    self->_shaderFaceRenderPipeline = v52;

    v49 = v53;
  }

  if (v42)
  {
    [v6 setFragmentFunction:v42];
    v55 = self->_device;
    v74 = v49;
    v56 = [(MTLDevice *)v55 newRenderPipelineStateWithDescriptor:v6 error:&v74];
    v57 = v74;

    shaderFaceInlayRenderPipeline = self->_shaderFaceInlayRenderPipeline;
    self->_shaderFaceInlayRenderPipeline = v56;

    v49 = v57;
  }

  if (v43)
  {
    [v6 setFragmentFunction:v43];
    v59 = self->_device;
    v73 = v49;
    v60 = [(MTLDevice *)v59 newRenderPipelineStateWithDescriptor:v6 error:&v73];
    v61 = v73;

    shaderFaceTriColorRenderPipeline = self->_shaderFaceTriColorRenderPipeline;
    self->_shaderFaceTriColorRenderPipeline = v60;

    v49 = v61;
  }

  if (v46)
  {
    [v6 setFragmentFunction:v46];
    v63 = self->_device;
    v72 = v49;
    v64 = [(MTLDevice *)v63 newRenderPipelineStateWithDescriptor:v6 error:&v72];
    v65 = v72;

    shaderFaceInlayTriColorsPipeline = self->_shaderFaceInlayTriColorsPipeline;
    self->_shaderFaceInlayTriColorsPipeline = v64;

    v49 = v65;
  }
}

- (AAUIMetalBadgeRenderer)initWithCAMetalLayer:(id)layer useEarnedShader:(BOOL)shader
{
  layerCopy = layer;
  v25.receiver = self;
  v25.super_class = AAUIMetalBadgeRenderer;
  v8 = [(AAUIMetalBadgeRenderer *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_useEarnedShader = shader;
    v10 = +[AAUICommandQueueTransaction sharedDevice];
    device = v9->_device;
    v9->_device = v10;

    objc_storeStrong(&v9->_metalLayer, layer);
    [(CAMetalLayer *)v9->_metalLayer setDevice:v9->_device];
    [(CAMetalLayer *)v9->_metalLayer setPixelFormat:80];
    [(CAMetalLayer *)v9->_metalLayer setFramebufferOnly:1];
    [(CAMetalLayer *)v9->_metalLayer setFenceEnabled:1];
    [(CAMetalLayer *)v9->_metalLayer setPresentsWithTransaction:0];
    [(CAMetalLayer *)v9->_metalLayer setDrawsAsynchronously:1];
    [(CAMetalLayer *)v9->_metalLayer setOpaque:0];
    [objc_opt_class() screenScaleMultiple];
    v13 = v12;
    [objc_opt_class() screenScaleMaximum];
    v15 = v14;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v18 = v13 * v17;

    if (v18 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v18;
    }

    v20 = v19;
    v9->_rasterScaleFactor = v20;
    v21 = objc_alloc_init(AAUICommandQueueTransaction);
    transaction = v9->_transaction;
    v9->_transaction = v21;

    [(AAUIMetalBadgeRenderer *)v9 resizeBadgeForCurrentViewSize];
    [(AAUIMetalBadgeRenderer *)v9 _setupAttributes];
    [(AAUIMetalBadgeRenderer *)v9 _setupTextures];
    [(AAUIMetalBadgeRenderer *)v9 _setupRenderPipeline];
    displayLink = v9->_displayLink;
    v9->_displayLink = 0;
  }

  return v9;
}

- (void)dealloc
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }

  [(AAUIMetalBadgeRenderer *)self _cleanupConfiguration];
  transaction = self->_transaction;
  self->_transaction = 0;

  v6.receiver = self;
  v6.super_class = AAUIMetalBadgeRenderer;
  [(AAUIMetalBadgeRenderer *)&v6 dealloc];
}

- (void)setPaused:(BOOL)paused
{
  displayLink = self->_displayLink;
  if (paused)
  {
    [(CADisplayLink *)displayLink setPaused:1];
    [(CADisplayLink *)self->_displayLink invalidate];
    v5 = self->_displayLink;
    self->_displayLink = 0;
  }

  else
  {
    if (displayLink)
    {
      return;
    }

    v10 = [[AAUIMetalBadgeRendererDisplayLinkTarget alloc] _initWithTarget:self];
    v6 = [MEMORY[0x277CD9E48] displayLinkWithTarget:v10 selector:sel__drawBadgeFrameCallback];
    v7 = self->_displayLink;
    self->_displayLink = v6;

    v8 = self->_displayLink;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v8 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:60];
    [(CADisplayLink *)self->_displayLink setPaused:0];
    v5 = v10;
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_configuration != configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_configuration, configuration);
    [(AAUIMetalBadgeRenderer *)self _loadBadgeModelWithConfiguration:self->_configuration];
    configurationCopy = v6;
  }
}

- (void)_loadBadgeModelWithConfiguration:(id)configuration
{
  v90[2] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  badgeTexturePaths = [configurationCopy badgeTexturePaths];

  if (!badgeTexturePaths)
  {
    v23 = ACHLogDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [AAUIMetalBadgeRenderer _loadBadgeModelWithConfiguration:configurationCopy];
    }

    goto LABEL_50;
  }

  badgeModelPaths = [configurationCopy badgeModelPaths];

  if (badgeModelPaths)
  {
    metalColor = [configurationCopy metalColor];
    *self->_anon_130 = AAUIColorVectorFromColor(metalColor);

    useFullColorEnamel = [configurationCopy useFullColorEnamel];
    self->_anon_130[90] = useFullColorEnamel;
    if ((useFullColorEnamel & 1) == 0)
    {
      modelEnamelColor = [configurationCopy modelEnamelColor];
      *&self->_anon_130[16] = AAUIColorVectorFromColor(modelEnamelColor);
    }

    enamelTriColors = [configurationCopy enamelTriColors];
    v11 = enamelTriColors;
    if (enamelTriColors)
    {
      v12 = [enamelTriColors objectAtIndexedSubscript:0];
      *&self->_anon_130[32] = AAUIColorVectorFromColor(v12);

      v13 = [v11 objectAtIndexedSubscript:1];
      *&self->_anon_130[48] = AAUIColorVectorFromColor(v13);

      v14 = [v11 objectAtIndexedSubscript:2];
      *&self->_anon_130[64] = AAUIColorVectorFromColor(v14);
    }

    if (!self->_useEarnedShader)
    {
      self->_anon_130[88] = [configurationCopy unearnedUsesTwoToneEnamel];
      self->_anon_130[89] = useFullColorEnamel;
      *&self->_anon_130[80] = 0;
    }

    v15 = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:self->_device];
    v16 = *MEMORY[0x277CD71B0];
    v89[0] = *MEMORY[0x277CD71A0];
    v89[1] = v16;
    v90[0] = MEMORY[0x277CBEC38];
    v90[1] = MEMORY[0x277CBEC28];
    v79 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
    badgeTexturePaths2 = [configurationCopy badgeTexturePaths];
    v18 = [badgeTexturePaths2 count];

    if (v18)
    {
      v19 = objc_alloc(MEMORY[0x277D755B8]);
      badgeTexturePaths3 = [configurationCopy badgeTexturePaths];
      v21 = [badgeTexturePaths3 objectAtIndexedSubscript:0];
      v22 = [v19 initWithContentsOfFile:v21];
    }

    else
    {
      v22 = 0;
    }

    badgeTexturePaths4 = [configurationCopy badgeTexturePaths];
    v25 = [badgeTexturePaths4 count];

    v76 = v11;
    if (v25 >= 2)
    {
      badgeTexturePaths5 = [configurationCopy badgeTexturePaths];
      v27 = [badgeTexturePaths5 count];

      if (v27 >= 2)
      {
        v28 = 1;
        do
        {
          badgeTexturePaths6 = [configurationCopy badgeTexturePaths];
          v30 = [badgeTexturePaths6 objectAtIndexedSubscript:v28];

          v31 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:v30];
          if (v31)
          {
            [v22 size];
            width = v91.width;
            height = v91.height;
            UIGraphicsBeginImageContext(v91);
            [v22 drawInRect:{0.0, 0.0, width, height}];
            [v31 drawInRect:2 blendMode:0.0 alpha:{0.0, width, height, 1.0}];
            v34 = UIGraphicsGetImageFromCurrentImageContext();

            UIGraphicsEndImageContext();
            v22 = v34;
          }

          ++v28;
          badgeTexturePaths7 = [configurationCopy badgeTexturePaths];
          v36 = [badgeTexturePaths7 count];
        }

        while (v36 > v28);
      }
    }

    self->_anon_130[92] = [configurationCopy faceHasMetalInlay];
    v78 = v22;
    if (v22)
    {
      glyphTexturePath = [configurationCopy glyphTexturePath];

      if (glyphTexturePath)
      {
        self->_anon_130[91] = 1;
        v38 = MEMORY[0x277CBEBC0];
        glyphTexturePath2 = [configurationCopy glyphTexturePath];
        v40 = [v38 fileURLWithPath:glyphTexturePath2];

        v41 = objc_alloc(MEMORY[0x277D755B8]);
        path = [v40 path];
        v43 = [v41 initWithContentsOfFile:path];

        [v22 size];
        v46 = v44;
        v47 = v45;
        if (v43)
        {
          UIGraphicsBeginImageContext(*&v44);
          CurrentContext = UIGraphicsGetCurrentContext();
          blueColor = [MEMORY[0x277D75348] blueColor];
          CGContextSetFillColorWithColor(CurrentContext, [blueColor CGColor]);

          v93.origin.x = 0.0;
          v93.origin.y = 0.0;
          v93.size.width = v46;
          v93.size.height = v47;
          CGContextFillRect(CurrentContext, v93);
          [v43 drawInRect:1 blendMode:0.0 alpha:{0.0, v46, v47, 1.0}];
          v50 = UIGraphicsGetImageFromCurrentImageContext();

          UIGraphicsEndImageContext();
        }

        else
        {
          v53 = ACHLogDefault();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            [(AAUIMetalBadgeRenderer *)v40 _loadBadgeModelWithConfiguration:v53];
          }

          v50 = 0;
        }

        v92.width = v46;
        v92.height = v47;
        UIGraphicsBeginImageContext(v92);
        [v78 drawInRect:{0.0, 0.0, v46, v47}];
        if (v50)
        {
          [configurationCopy glyphPositionOffset];
          v55 = v54;
          v57 = v56;
          [configurationCopy glyphTextureScale];
          [v50 drawInRect:2 blendMode:v55 alpha:{v57, v46 * v58, v47 * v58, 1.0}];
        }

        v59 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v85 = 0;
        v60 = [v15 newTextureWithCGImage:objc_msgSend(v59 options:"CGImage") error:{v79, &v85}];
        v51 = v85;
        colorTexture = self->_colorTexture;
        self->_colorTexture = v60;
      }

      else
      {
        self->_anon_130[91] = 0;
        v84 = 0;
        v52 = [v15 newTextureWithCGImage:objc_msgSend(v22 options:"CGImage") error:{v79, &v84}];
        v51 = v84;
        v40 = self->_colorTexture;
        self->_colorTexture = v52;
      }
    }

    else
    {
      v51 = 0;
    }

    v75 = v15;
    if (!self->_colorTexture)
    {
      v62 = ACHLogDefault();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
      {
        [AAUIMetalBadgeRenderer _loadBadgeModelWithConfiguration:configurationCopy];
      }
    }

    v74 = v51;
    selfCopy = self;
    [(AAUIMetalBadgeRenderer *)self _cleanupConfiguration];
    badgeModelPaths2 = [configurationCopy badgeModelPaths];
    v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v65 = badgeModelPaths2;
    v66 = [v65 countByEnumeratingWithState:&v80 objects:v88 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v81;
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v81 != v68)
          {
            objc_enumerationMutation(v65);
          }

          v70 = *(*(&v80 + 1) + 8 * i);
          v71 = [[AAUIBadgeModel alloc] initWithPath:v70];
          if ([(AAUIBadgeModel *)v71 groupCount])
          {
            [(NSArray *)v64 addObject:v71];
          }

          else
          {
            v72 = ACHLogUI();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v87 = v70;
              _os_log_impl(&dword_23E4A3000, v72, OS_LOG_TYPE_DEFAULT, "Failed to load ‘%@’ from path", buf, 0xCu);
            }
          }
        }

        v67 = [v65 countByEnumeratingWithState:&v80 objects:v88 count:16];
      }

      while (v67);
    }

    badgeModels = selfCopy->_badgeModels;
    selfCopy->_badgeModels = v64;

    v23 = v76;
LABEL_50:
  }
}

- (void)setBackTextureImage:(id)image
{
  v26[3] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (self->_backTextureImage != imageCopy)
  {
    objc_storeStrong(&self->_backTextureImage, image);
    if (self->_backTextureImage)
    {
      v6 = [objc_alloc(MEMORY[0x277CD71F0]) initWithDevice:self->_device];
      v7 = *MEMORY[0x277CD71A8];
      v25[0] = *MEMORY[0x277CD71A0];
      v25[1] = v7;
      v8 = *MEMORY[0x277CD71D8];
      v26[0] = MEMORY[0x277CBEC38];
      v26[1] = v8;
      v25[2] = *MEMORY[0x277CD71B0];
      v26[2] = MEMORY[0x277CBEC28];
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
      cGImage = [(UIImage *)self->_backTextureImage CGImage];
      v24 = 0;
      v11 = [v6 newTextureWithCGImage:cGImage options:v9 error:&v24];
      v12 = v24;
      backTexture = self->_backTexture;
      self->_backTexture = v11;

      if ([(NSArray *)self->_badgeModels count]>= 2)
      {
        [(UIImage *)self->_backTextureImage size];
        UIGraphicsBeginImageContextWithOptions(v27, 0, 0.0);
        CurrentContext = UIGraphicsGetCurrentContext();
        [(UIImage *)self->_backTextureImage size];
        v16 = v15;
        [(UIImage *)self->_backTextureImage size];
        v28.size.height = v17;
        v28.origin.x = 0.0;
        v28.origin.y = 0.0;
        v28.size.width = v16;
        CGContextClearRect(CurrentContext, v28);
        v18 = UIGraphicsGetImageFromCurrentImageContext();
        v23 = v12;
        v19 = [v6 newTextureWithCGImage:objc_msgSend(v18 options:"CGImage") error:{v9, &v23}];
        v20 = v23;

        emptyBackTexture = self->_emptyBackTexture;
        self->_emptyBackTexture = v19;

        UIGraphicsEndImageContext();
        v12 = v20;
      }
    }

    else
    {
      v22 = self->_backTexture;
      self->_backTexture = 0;
    }
  }
}

- (void)_updateModelTransformForBadge:(id)badge
{
  badgeCopy = badge;
  v4 = 0;
  v40 = xmmword_23E4DF950;
  v41 = xmmword_23E4DF980;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v38 = xmmword_23E4DF910;
  v39 = xmmword_23E4DF920;
  do
  {
    *(&v42 + v4) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23E4DF990, COERCE_FLOAT(*(&v38 + v4))), xmmword_23E4DF9A0, *(&v38 + v4), 1), xmmword_23E4DF9B0, *(&v38 + v4), 2), xmmword_23E4DF940, *(&v38 + v4), 3);
    v4 += 16;
  }

  while (v4 != 64);
  v35 = v43;
  v36 = v42;
  v33 = v45;
  v34 = v44;
  [badgeCopy rotationY];
  *&v5 = v5;
  *&v6 = _matrix4x4_rotation(*&v5, xmmword_23E4DF920);
  v31 = v7;
  v32 = v6;
  v29 = v9;
  v30 = v8;
  [badgeCopy rotationX];
  *&v10 = v10;
  *&v11 = _matrix4x4_rotation(*&v10, xmmword_23E4DF910);
  v15 = 0;
  v38 = v32;
  v39 = v31;
  v40 = v30;
  v41 = v29;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  do
  {
    *(&v42 + v15) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v38 + v15))), v35, *(&v38 + v15), 1), v34, *(&v38 + v15), 2), v33, *(&v38 + v15), 3);
    v15 += 16;
  }

  while (v15 != 64);
  v16 = 0;
  v17 = v42;
  v18 = v43;
  v19 = v44;
  v20 = v45;
  v38 = v11;
  v39 = v12;
  v40 = v13;
  v41 = v14;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  do
  {
    *(&v42 + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v38 + v16))), v18, *(&v38 + v16), 1), v19, *(&v38 + v16), 2), v20, *(&v38 + v16), 3);
    v16 += 16;
  }

  while (v16 != 64);
  v21 = 0;
  v22 = v42;
  v23 = v43;
  v24 = v44;
  v25 = v45;
  v38 = xmmword_23E4DF910;
  v39 = xmmword_23E4DF920;
  v40 = xmmword_23E4DF950;
  v41 = xmmword_23E4DF9C0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  do
  {
    *(&v42 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v38 + v21))), v23, *(&v38 + v21), 1), v24, *(&v38 + v21), 2), v25, *(&v38 + v21), 3);
    v21 += 16;
  }

  while (v21 != 64);
  v26 = v43;
  v27 = v44;
  v28 = v45;
  *self->_anon_a0 = v42;
  *&self->_anon_a0[16] = v26;
  *&self->_anon_a0[32] = v27;
  *&self->_anon_a0[48] = v28;
}

- (void)_drawBadgeFrameCallback
{
  if (([(CAMetalLayer *)self->_metalLayer isDrawableAvailable]& 1) != 0)
  {
    nextDrawable = [(CAMetalLayer *)self->_metalLayer nextDrawable];
    if (nextDrawable)
    {
      v8 = nextDrawable;
      texture = [nextDrawable texture];
      colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDesc colorAttachments];
      v6 = [colorAttachments objectAtIndexedSubscript:0];
      [v6 setResolveTexture:texture];

      [(AAUIMetalBadgeRenderer *)self _drawFrameWithDrawable:v8];
      nextDrawable = v8;
    }
  }

  else
  {
    v7 = ACHLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AAUIMetalBadgeRenderer *)v7 _drawBadgeFrameCallback];
    }
  }
}

- (void)_setupCommonBindingsForRenderEncoder:(id)encoder pipelineState:(id)state verticesBuffer:(id)buffer
{
  encoderCopy = encoder;
  bufferCopy = buffer;
  [encoderCopy setRenderPipelineState:state];
  [encoderCopy setDepthStencilState:self->_depthStencilState];
  [encoderCopy setCullMode:1];
  [encoderCopy setVertexBuffer:bufferCopy offset:0 atIndex:5];

  [encoderCopy setVertexBytes:self->_anon_60 length:64 atIndex:0];
  [encoderCopy setVertexBytes:self->_anon_a0 length:64 atIndex:1];
  if (self->_useEarnedShader)
  {
    [encoderCopy setVertexBytes:self->_anon_e0 length:64 atIndex:2];
    [encoderCopy setVertexBytes:self->_cameraPosition length:16 atIndex:3];
    [encoderCopy setFragmentTexture:self->_environmentTexture atIndex:0];
  }
}

- (void)_drawBadgeModel:(id)model intoRenderEncoder:(id)encoder withBackTexture:(BOOL)texture
{
  textureCopy = texture;
  modelCopy = model;
  encoderCopy = encoder;
  v10 = 32 * [modelCopy vertexCount];
  v11 = [(MTLDevice *)self->_device newBufferWithLength:v10 options:0];
  memcpy([v11 contents], objc_msgSend(modelCopy, "vertices"), v10);
  v12 = 4 * [modelCopy indexCount];
  v13 = [(MTLDevice *)self->_device newBufferWithLength:v12 options:0];
  memcpy([v13 contents], objc_msgSend(modelCopy, "indices"), v12);
  if ([modelCopy groupCount] >= 1)
  {
    v14 = 0;
    v15 = 0;
    p_colorTexture = &self->_colorTexture;
    v17 = 432;
    if (textureCopy)
    {
      v17 = 424;
    }

    v42 = (&self->super.isa + v17);
    v40 = v13;
    v41 = v11;
    do
    {
      v18 = *&self->_anon_130[48];
      v43[2] = *&self->_anon_130[32];
      v43[3] = v18;
      v19 = *&self->_anon_130[80];
      v43[4] = *&self->_anon_130[64];
      v44 = v19;
      v20 = *&self->_anon_130[16];
      v43[0] = *self->_anon_130;
      v43[1] = v20;
      v21 = self->_shaderRenderPipeline;
      v22 = *([modelCopy materials] + 4 * v14);
      if (v22)
      {
        if (v22 == 1)
        {
          LODWORD(v23) = 0;
          v24 = p_colorTexture;
        }

        else
        {
          LODWORD(v23) = 1.0;
          v24 = v42;
          if (v22 != 2)
          {
            [(AAUIMetalBadgeRenderer *)self _setupCommonBindingsForRenderEncoder:encoderCopy pipelineState:v21 verticesBuffer:v11, v23];
LABEL_13:
            v25 = 0;
            LODWORD(v44) = 0;
            goto LABEL_27;
          }
        }

        LODWORD(v44) = LODWORD(v23);
        DWORD1(v44) = LODWORD(v23);
        v25 = *v24;
      }

      else
      {
        *&v44 = 1065353216;
        v26 = self->_colorTexture;
        v25 = v26;
        if (self->_useEarnedShader && v26)
        {
          configuration = [(AAUIMetalBadgeRenderer *)self configuration];
          if ([configuration faceHasMetalInlay])
          {
            configuration2 = [(AAUIMetalBadgeRenderer *)self configuration];
            enamelTriColors = [configuration2 enamelTriColors];
            v39 = [enamelTriColors count];

            p_shaderFaceInlayTriColorsPipeline = &self->_shaderFaceInlayTriColorsPipeline;
            if (!v39)
            {
              goto LABEL_20;
            }
          }

          else
          {

LABEL_20:
            configuration3 = [(AAUIMetalBadgeRenderer *)self configuration];
            faceHasMetalInlay = [configuration3 faceHasMetalInlay];

            p_shaderFaceInlayTriColorsPipeline = &self->_shaderFaceInlayRenderPipeline;
            if ((faceHasMetalInlay & 1) == 0)
            {
              configuration4 = [(AAUIMetalBadgeRenderer *)self configuration];
              enamelTriColors2 = [configuration4 enamelTriColors];
              v35 = [enamelTriColors2 count];

              v36 = 80;
              if (!v35)
              {
                v36 = 56;
              }

              p_shaderFaceInlayTriColorsPipeline = (&self->super.isa + v36);
            }
          }

          v37 = *p_shaderFaceInlayTriColorsPipeline;

          v38 = self->_fleckNormalTexture;
          v11 = v41;
          [(AAUIMetalBadgeRenderer *)self _setupCommonBindingsForRenderEncoder:encoderCopy pipelineState:v37 verticesBuffer:v41];
          [encoderCopy setFragmentTexture:v25 atIndex:1];
          if (v38)
          {
            [encoderCopy setFragmentTexture:v38 atIndex:2];
          }

          v21 = v37;
          p_colorTexture = &self->_colorTexture;
          v13 = v40;
          goto LABEL_27;
        }
      }

      [(AAUIMetalBadgeRenderer *)self _setupCommonBindingsForRenderEncoder:encoderCopy pipelineState:v21 verticesBuffer:v11];
      if (!v25)
      {
        goto LABEL_13;
      }

      [encoderCopy setFragmentTexture:v25 atIndex:1];
LABEL_27:
      [encoderCopy setFragmentBytes:v43 length:96 atIndex:4];
      [encoderCopy drawIndexedPrimitives:3 indexCount:3 * *(objc_msgSend(modelCopy indexType:"groups") + 4 * v14) indexBuffer:1 indexBufferOffset:{v13, 4 * v15}];
      v15 += 3 * *([modelCopy groups] + 4 * v14);

      ++v14;
    }

    while (v14 < [modelCopy groupCount]);
  }
}

- (void)_drawIntoRenderEncoder:(id)encoder
{
  v16 = *MEMORY[0x277D85DE8];
  encoderCopy = encoder;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_badgeModels;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    v9 = 1;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AAUIMetalBadgeRenderer *)self _drawBadgeModel:*(*(&v11 + 1) + 8 * v10) intoRenderEncoder:encoderCopy withBackTexture:v9 & 1, v11];
        v9 = 0;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v9 = 0;
    }

    while (v7);
  }
}

- (void)_drawFrameWithDrawable:(id)drawable
{
  drawableCopy = drawable;
  stateUpdateBlock = [(AAUIMetalBadgeRenderer *)self stateUpdateBlock];
  v6 = stateUpdateBlock[2]();
  [(AAUIMetalBadgeRenderer *)self _updateModelTransformForBadge:v6];
  commandQueue = [(AAUICommandQueueTransaction *)self->_transaction commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  [commandBuffer setLabel:@"Activity Badge Command Buffer"];
  v9 = [commandBuffer renderCommandEncoderWithDescriptor:self->_renderPassDesc];
  [v9 setLabel:@"Activity Badge Render Encoder"];
  [(AAUIMetalBadgeRenderer *)self _drawIntoRenderEncoder:v9];
  [v9 endEncoding];
  if (drawableCopy)
  {
    [commandBuffer presentDrawable:drawableCopy];
    [commandBuffer commit];
  }

  else
  {
    [commandBuffer commit];
    [commandBuffer waitUntilCompleted];
  }

  error = [commandBuffer error];

  if (error)
  {
    v11 = ACHLogDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(AAUIMetalBadgeRenderer *)commandBuffer _drawFrameWithDrawable:v11];
    }
  }
}

- (id)snapshot
{
  v2 = *self->_attachmentRasterSize;
  v3 = v2;
  v4 = HIDWORD(v2);
  if (v2)
  {
    v5 = HIDWORD(v2) == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CD7058]);
    [v8 setTextureType:2];
    [v8 setPixelFormat:80];
    [v8 setWidth:v3];
    [v8 setHeight:v4];
    [v8 setMipmapLevelCount:1];
    [v8 setUsage:4];
    [v8 setStorageMode:0];
    v9 = [(MTLDevice *)self->_device newTextureWithDescriptor:v8];
    colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDesc colorAttachments];
    v11 = [colorAttachments objectAtIndexedSubscript:0];
    [v11 setResolveTexture:v9];

    [(AAUIMetalBadgeRenderer *)self _drawFrameWithDrawable:0];
    v12 = 4 * v3;
    v13 = malloc_type_malloc(v12 * v4, 0xBFBC0EFCuLL);
    memset(v22, 0, 24);
    v22[3] = v3;
    v22[4] = v4;
    v22[5] = 1;
    [v9 getBytes:v13 bytesPerRow:v12 fromRegion:v22 mipmapLevel:0];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v15 = CGDataProviderCreateWithData(0, v13, v12 * v4, freeData);
    v16 = CGImageCreate(v3, v4, 8uLL, 0x20uLL, v12, DeviceRGB, 0x2002u, v15, 0, 0, kCGRenderingIntentDefault);
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0x277D755B8];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v6 = [v18 imageWithCGImage:v17 scale:0 orientation:?];

      CGImageRelease(v17);
    }

    else
    {
      v20 = ACHLogDefault();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(AAUIMetalBadgeRenderer *)v20 snapshot];
      }

      v6 = 0;
    }

    CGDataProviderRelease(v15);
    CGColorSpaceRelease(DeviceRGB);
  }

  return v6;
}

- (void)cleanupAfterSnapshot
{
  [(AAUIMetalBadgeRenderer *)self _cleanupConfiguration];
  colorTexture = self->_colorTexture;
  self->_colorTexture = 0;

  colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDesc colorAttachments];
  v4 = [colorAttachments objectAtIndexedSubscript:0];
  [v4 setResolveTexture:0];
}

- (void)_loadBadgeModelWithConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_23E4A3000, a2, OS_LOG_TYPE_ERROR, "Failed to load glyph texture image from URL:%{public}@", &v2, 0xCu);
}

- (void)_loadBadgeModelWithConfiguration:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 badgeTexturePaths];
  OUTLINED_FUNCTION_0(&dword_23E4A3000, v2, v3, "Failed to load color texture image from URL:%{public}@ error:%{public}@", v4, v5, v6, v7, 2u);
}

- (void)_loadBadgeModelWithConfiguration:(void *)a1 .cold.3(void *a1)
{
  v2 = [a1 badgeModelPaths];
  v9 = [a1 shapeName];
  OUTLINED_FUNCTION_0(&dword_23E4A3000, v3, v4, "Failed to load badge texture path for configuration badgeModelPath:%{public}@ shapeName:%{public}@", v5, v6, v7, v8, 2u);
}

- (void)_drawFrameWithDrawable:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_23E4A3000, a2, OS_LOG_TYPE_ERROR, "Failed to draw into command buffer. Error:%{public}@", &v4, 0xCu);
}

- (void)snapshot
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_23E4A3000, log, OS_LOG_TYPE_ERROR, "Failed to generate snapshot (imageRef: %@)", &v1, 0xCu);
}

@end