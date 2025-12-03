@interface NTKParameciumCompositeQuad
+ (id)confettiFontDescriptor;
+ (id)renderNumbersWithColors:(id)colors size:(double)size weight:(double)weight inBounds:(CGRect)bounds baselineRadius:(double)radius;
+ (id)renderPipelineStateWithVertexShader:(id)shader fragmentShader:(id)fragmentShader library:(id)library device:(id)device pixelFormat:(unint64_t)format;
- (NTKParameciumCompositeQuad)initWithDevice:(id)device;
- (double)createMatrixForTextureWithSize:(float32x2_t)size translation:(double)translation scale:(int32x2_t)scale rotate:(float)rotate offset:(__n128)offset;
- (id)_confettiHiddenBehindTicksBuffer:(id)buffer capsuleSize:(CGSize)size;
- (id)_generateNoiseTextureInRect:(CGRect)rect device:(id)device;
- (id)confettiOriginsBuffer:(id)buffer capsuleSize:(CGSize)size;
- (void)_initializeColors;
- (void)_updateHandAngles;
- (void)handleTouchAt:(CGPoint)at at:(double)a4;
- (void)performOffscreenPassesWithCommandBuffer:(id)buffer;
- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setConfettiRotation:(double)rotation;
- (void)setFromDate:(id)date;
- (void)setToDate:(id)date;
- (void)setupForQuadView:(id)view;
- (void)updateConfettiColors:(id)colors;
@end

@implementation NTKParameciumCompositeQuad

- (NTKParameciumCompositeQuad)initWithDevice:(id)device
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKParameciumCompositeQuad;
  v6 = [(NTKParameciumCompositeQuad *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    [deviceCopy screenBounds];
    v21 = v8;
    [deviceCopy screenScale];
    v20 = v9;
    [deviceCopy screenBounds];
    v19 = v10;
    [deviceCopy screenScale];
    v11.f64[0] = v20;
    v11.f64[1] = v12;
    v13.f64[0] = v21;
    v13.f64[1] = v19;
    *v7->_targetSize = vcvt_f32_f64(vmulq_f64(v11, v13));
    v14 = +[NSCalendar autoupdatingCurrentCalendar];
    calendar = v7->_calendar;
    v7->_calendar = v14;

    v7->_tritiumProgress = 1.0;
    v7->_dateFraction = 1.0;
    v7->_secondFraction = 1.0;
    v7->_currentTime = 0.0;
    v16 = objc_alloc_init(NTKParameciumTouchHandler);
    touchHandler = v7->_touchHandler;
    v7->_touchHandler = v16;

    [(NTKParameciumCompositeQuad *)v7 _initializeColors];
  }

  return v7;
}

- (void)setFromDate:(id)date
{
  objc_storeStrong(&self->_fromDate, date);
  dateCopy = date;
  calendar = self->_calendar;
  NTKHourMinuteSecondAnglesForTime();

  self->_fromHourAngle = -0.0;
  self->_fromMinuteAngle = -0.0;
  self->_fromSecondAngle = -0.0;
  [(NTKParameciumCompositeQuad *)self _updateHandAngles];
}

- (void)setToDate:(id)date
{
  objc_storeStrong(&self->_toDate, date);
  dateCopy = date;
  calendar = self->_calendar;
  NTKHourMinuteSecondAnglesForTime();

  self->_toHourAngle = -0.0;
  self->_toMinuteAngle = -0.0;
  self->_toSecondAngle = -0.0;
  [(NTKParameciumCompositeQuad *)self _updateHandAngles];
}

- (void)_updateHandAngles
{
  fromHourAngle = self->_fromHourAngle;
  toHourAngle = self->_toHourAngle;
  dateFraction = self->_dateFraction;
  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  self->_hourAngle = v6;
  fromMinuteAngle = self->_fromMinuteAngle;
  toMinuteAngle = self->_toMinuteAngle;
  v9 = self->_dateFraction;
  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  self->_minuteAngle = v10;
  fromSecondAngle = self->_fromSecondAngle;
  toSecondAngle = self->_toSecondAngle;
  secondFraction = self->_secondFraction;
  CLKInterpolateShortestPathBetweenAnglesUnclipped();
  self->_secondAngle = v14;
}

- (void)setConfettiRotation:(double)rotation
{
  v5 = self->_confettiRotation - rotation;
  *&v5 = v5;
  *&v5 = -*&v5;
  [(NTKParameciumTouchHandler *)self->_touchHandler rotateTouchesByAngle:v5];
  self->_confettiRotation = rotation;
}

+ (id)renderPipelineStateWithVertexShader:(id)shader fragmentShader:(id)fragmentShader library:(id)library device:(id)device pixelFormat:(unint64_t)format
{
  shaderCopy = shader;
  fragmentShaderCopy = fragmentShader;
  deviceCopy = device;
  libraryCopy = library;
  v15 = [libraryCopy newFunctionWithName:shaderCopy];
  v16 = [libraryCopy newFunctionWithName:fragmentShaderCopy];

  v17 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v17 setLabel:@"ParameciumPipeline"];
  [v17 setVertexFunction:v15];
  [v17 setFragmentFunction:v16];
  colorAttachments = [v17 colorAttachments];
  v19 = [colorAttachments objectAtIndexedSubscript:0];
  [v19 setPixelFormat:format];

  colorAttachments2 = [v17 colorAttachments];
  v21 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v21 setBlendingEnabled:0];

  v26 = 0;
  v22 = [deviceCopy newRenderPipelineStateWithDescriptor:v17 error:&v26];

  v23 = v26;
  if (v23)
  {
    v24 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_8EC4(fragmentShaderCopy, v23, v24);
    }
  }

  return v22;
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  [viewCopy setOpaque:0];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = +[CLKUIMetalResourceManager sharedDevice];
  objc_storeStrong(&self->_mtlDevice, v5);
  v6 = [v5 newDefaultLibraryWithBundle:v4 error:0];
  v144 = [v6 newFunctionWithName:@"paramecium_move_confetti"];
  v7 = [v5 newComputePipelineStateWithFunction:? error:?];
  computeConfettiPipelineState = self->_computeConfettiPipelineState;
  self->_computeConfettiPipelineState = v7;

  v9 = +[NTKParameciumCompositeQuad renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:](NTKParameciumCompositeQuad, "renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:", @"paramecium_sprite_vertex_shader", @"paramecium_sprite_fragment_shader", v6, v5, [viewCopy colorPixelFormat]);
  spritePipelineState = self->_spritePipelineState;
  self->_spritePipelineState = v9;

  v11 = +[NTKParameciumCompositeQuad renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:](NTKParameciumCompositeQuad, "renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:", @"paramecium_sprite_vertex_shader", @"paramecium_sprite_multiply_fragment_shader", v6, v5, [viewCopy colorPixelFormat]);
  spriteMultiplyPipelineState = self->_spriteMultiplyPipelineState;
  self->_spriteMultiplyPipelineState = v11;

  v13 = +[NTKParameciumCompositeQuad renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:](NTKParameciumCompositeQuad, "renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:", @"paramecium_sprite_vertex_shader", @"paramecium_tinted_sprite_fragment_shader", v6, v5, [viewCopy colorPixelFormat]);
  tintedSpritePipelineState = self->_tintedSpritePipelineState;
  self->_tintedSpritePipelineState = v13;

  v15 = +[NTKParameciumCompositeQuad renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:](NTKParameciumCompositeQuad, "renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:", @"paramecium_sprite_vertex_shader", @"paramecium_hour_minute_fragment_shader", v6, v5, [viewCopy colorPixelFormat]);
  handPipelineState = self->_handPipelineState;
  self->_handPipelineState = v15;

  v17 = +[NTKParameciumCompositeQuad renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:](NTKParameciumCompositeQuad, "renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:", @"paramecium_sprite_vertex_shader", @"paramecium_hour_minute_inlay_fragment_shader", v6, v5, [viewCopy colorPixelFormat]);
  inlayPipelineState = self->_inlayPipelineState;
  self->_inlayPipelineState = v17;

  v19 = +[NTKParameciumCompositeQuad renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:](NTKParameciumCompositeQuad, "renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:", @"paramecium_capsule_vertex_shader", @"paramecium_capsule_fragment_shader", v6, v5, [viewCopy colorPixelFormat]);
  capsulePipelineState = self->_capsulePipelineState;
  self->_capsulePipelineState = v19;

  v145 = v6;
  v133 = v5;
  v21 = +[NTKParameciumCompositeQuad renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:](NTKParameciumCompositeQuad, "renderPipelineStateWithVertexShader:fragmentShader:library:device:pixelFormat:", @"paramecium_blur_vertex_shader", @"paramecium_blur_fragment_shader", v6, v5, [viewCopy colorPixelFormat]);
  blurPipelineState = self->_blurPipelineState;
  self->_blurPipelineState = v21;

  v23 = +[MTLRenderPassDescriptor renderPassDescriptor];
  compositePassDescriptor = self->_compositePassDescriptor;
  self->_compositePassDescriptor = v23;

  colorAttachments = [(MTLRenderPassDescriptor *)self->_compositePassDescriptor colorAttachments];
  v26 = [colorAttachments objectAtIndexedSubscript:0];

  [v26 setLoadAction:1];
  v143 = v26;
  [v26 setStoreAction:1];
  v27 = +[MTLRenderPassDescriptor renderPassDescriptor];
  blurPassDescriptor = self->_blurPassDescriptor;
  self->_blurPassDescriptor = v27;

  colorAttachments2 = [(MTLRenderPassDescriptor *)self->_blurPassDescriptor colorAttachments];
  v30 = [colorAttachments2 objectAtIndexedSubscript:0];

  [v30 setLoadAction:2];
  [v30 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  v142 = v30;
  [v30 setStoreAction:1];
  v141 = [v4 URLForResource:@"gradient" withExtension:@"png"];
  v140 = [NSData dataWithContentsOfURL:?];
  v139 = [UIImage imageWithData:?];
  v31 = [[NTKParameciumSprite alloc] initWithImage:v139];
  gradientSprite = self->_gradientSprite;
  self->_gradientSprite = v31;

  v146 = v4;
  v138 = [v4 URLForResource:@"gradient_shadow" withExtension:@"png"];
  v137 = [NSData dataWithContentsOfURL:?];
  v136 = [UIImage imageWithData:?];
  v33 = [[NTKParameciumSprite alloc] initWithImage:v136];
  shadowGradientSprite = self->_shadowGradientSprite;
  self->_shadowGradientSprite = v33;

  v35 = [CLKUIAnalogHandConfiguration defaultHourConfigurationForDevice:self->_device];
  hourConfiguration = self->_hourConfiguration;
  self->_hourConfiguration = v35;

  [(CLKUIAnalogHandConfiguration *)self->_hourConfiguration setRadialShadowRadius:25.0];
  [(CLKUIAnalogHandConfiguration *)self->_hourConfiguration setRadialShadowOpacity:0.6];
  v37 = [CLKUIAnalogHandConfiguration defaultMinuteConfigurationForDevice:self->_device];
  minuteConfiguration = self->_minuteConfiguration;
  self->_minuteConfiguration = v37;

  [(CLKUIAnalogHandConfiguration *)self->_minuteConfiguration setRadialShadowRadius:25.0];
  [(CLKUIAnalogHandConfiguration *)self->_minuteConfiguration setRadialShadowOpacity:0.5];
  v39 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:self->_device];
  secondConfiguration = self->_secondConfiguration;
  self->_secondConfiguration = v39;

  v41 = self->_secondConfiguration;
  [(CLKUIAnalogHandConfiguration *)v41 handWidth];
  [(CLKUIAnalogHandConfiguration *)v41 setHandWidth:v42 * 1.75];
  v43 = self->_secondConfiguration;
  [(CLKUIAnalogHandConfiguration *)v43 handLength];
  [(CLKUIAnalogHandConfiguration *)v43 setHandLength:v44 * 0.85];
  [(CLKUIAnalogHandConfiguration *)self->_secondConfiguration setRadialShadowRadius:9.0];
  [(CLKUIAnalogHandConfiguration *)self->_secondConfiguration setRadialShadowOpacity:0.2];
  [(CLKUIAnalogHandConfiguration *)self->_hourConfiguration anchorPoint];
  v147 = v45;
  [(CLKUIAnalogHandConfiguration *)self->_hourConfiguration anchorPoint];
  v46.f64[0] = v147;
  v46.f64[1] = v47;
  *self->_hourAnchor = vcvt_f32_f64(v46);
  [(CLKUIAnalogHandConfiguration *)self->_minuteConfiguration anchorPoint];
  v148 = v48;
  [(CLKUIAnalogHandConfiguration *)self->_minuteConfiguration anchorPoint];
  v49.f64[0] = v148;
  v49.f64[1] = v50;
  *self->_minuteAnchor = vcvt_f32_f64(v49);
  [(CLKUIAnalogHandConfiguration *)self->_secondConfiguration anchorPoint];
  v149 = v51;
  [(CLKUIAnalogHandConfiguration *)self->_secondConfiguration anchorPoint];
  v52.f64[0] = v149;
  v52.f64[1] = v53;
  *self->_secondAnchor = vcvt_f32_f64(v52);
  v54 = [CLKUIAnalogHandFactory getAssets:38 forConfiguration:self->_hourConfiguration];
  v55 = [CLKUIAnalogHandFactory getAssets:38 forConfiguration:self->_minuteConfiguration];
  v56 = [CLKUIAnalogHandFactory getAssets:6 forConfiguration:self->_secondConfiguration];
  v150 = [v54 objectForKey:&off_14D48];
  v57 = [v54 objectForKey:&off_14D60];
  v135 = v54;
  v58 = [v54 objectForKey:&off_14D78];
  v59 = [v55 objectForKey:&off_14D48];
  v60 = [v55 objectForKey:&off_14D60];
  v134 = v55;
  v61 = [v55 objectForKey:&off_14D78];
  v125 = [v56 objectForKey:&off_14D48];
  v62 = [v56 objectForKey:&off_14D78];
  v63 = [NTKParameciumSprite spriteWithImage:v150];
  hourSprite = self->_hourSprite;
  self->_hourSprite = v63;

  v132 = v57;
  v65 = [NTKParameciumSprite spriteWithImage:v57];
  hourInlaySprite = self->_hourInlaySprite;
  self->_hourInlaySprite = v65;

  v131 = v58;
  v67 = [NTKParameciumSprite spriteWithImage:v58];
  hourShadowSprite = self->_hourShadowSprite;
  self->_hourShadowSprite = v67;

  v130 = v59;
  v69 = [NTKParameciumSprite spriteWithImage:v59];
  minuteSprite = self->_minuteSprite;
  self->_minuteSprite = v69;

  v129 = v60;
  v71 = [NTKParameciumSprite spriteWithImage:v60];
  minuteInlaySprite = self->_minuteInlaySprite;
  self->_minuteInlaySprite = v71;

  v73 = [NTKParameciumSprite spriteWithImage:v61];
  minuteShadowSprite = self->_minuteShadowSprite;
  self->_minuteShadowSprite = v73;

  v75 = [NTKParameciumSprite spriteWithImage:v125];
  secondSprite = self->_secondSprite;
  self->_secondSprite = v75;

  v128 = v62;
  v77 = [NTKParameciumSprite spriteWithImage:v62];
  secondShadowSprite = self->_secondShadowSprite;
  self->_secondShadowSprite = v77;

  v80 = sub_8034(v79, self->_device) * 0.5 + -17.75;
  v81 = [NTKParameciumCompositeQuad renderNumbersWithColors:self->_numberColors size:50.0 weight:10.0 inBounds:0.0 baselineRadius:0.0, COERCE_FLOAT(*self->_targetSize), COERCE_FLOAT(HIDWORD(*self->_targetSize)), v80];
  v82 = [NTKParameciumCompositeQuad renderNumbersWithColors:self->_tritiumNumberColors size:50.0 weight:10.0 inBounds:0.0 baselineRadius:0.0, COERCE_FLOAT(*self->_targetSize), COERCE_FLOAT(HIDWORD(*self->_targetSize)), v80];
  v127 = v81;
  v83 = [NTKParameciumSprite spriteWithImage:v81 format:70];
  backgroundWhiteNumbersSprite = self->_backgroundWhiteNumbersSprite;
  self->_backgroundWhiteNumbersSprite = v83;

  v126 = v82;
  v85 = [NTKParameciumSprite spriteWithImage:v82 format:70];
  backgroundBlackNumbersSprite = self->_backgroundBlackNumbersSprite;
  self->_backgroundBlackNumbersSprite = v85;

  v87 = [(NTKParameciumCompositeQuad *)self _generateNoiseTextureInRect:self->_mtlDevice device:0.0, 0.0, 15.0, 15.0];
  noiseSprite = self->_noiseSprite;
  self->_noiseSprite = v87;

  v89 = [(NTKParameciumCompositeQuad *)self confettiOriginsBuffer:self->_mtlDevice capsuleSize:148.0, 46.0];
  confettiOriginsBuffer = self->_confettiOriginsBuffer;
  self->_confettiOriginsBuffer = v89;

  v91 = [(NTKParameciumCompositeQuad *)self _confettiHiddenBehindTicksBuffer:self->_mtlDevice capsuleSize:148.0, 46.0];
  confettiHiddenBuffer = self->_confettiHiddenBuffer;
  self->_confettiHiddenBuffer = v91;

  metalLayer = [viewCopy metalLayer];
  pixelFormat = [metalLayer pixelFormat];
  [v125 size];
  v96 = v95;
  [v125 scale];
  v98 = (v96 * v97);
  [v125 size];
  v100 = v99;
  [v125 scale];
  v102 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:pixelFormat width:v98 height:(v100 * v101) mipmapped:0];

  [v102 setUsage:7];
  [v102 setStorageMode:2];
  v103 = [CLKUIMetalResourcePool texturePoolWithDescriptor:v102 expectedCountPerFrame:1];
  secondHandBlurTexturePool = self->_secondHandBlurTexturePool;
  self->_secondHandBlurTexturePool = v103;

  v105 = [CLKUIMetalResourcePool bufferPoolWithLength:6720 andOptions:0 expectedCountPerFrame:1];
  confettiDefinitionsPool = self->_confettiDefinitionsPool;
  self->_confettiDefinitionsPool = v105;

  [(CLKDevice *)self->_device screenBounds];
  v108 = v107;
  [(CLKDevice *)self->_device screenScale];
  v110 = (v108 * v109);
  [(CLKDevice *)self->_device screenBounds];
  v112 = v111;
  [(CLKDevice *)self->_device screenScale];
  v114 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:v110 height:(v112 * v113) mipmapped:0];
  [v114 setUsage:7];
  [v114 setStorageMode:2];
  v115 = objc_opt_new();
  v116 = objc_opt_new();
  v117 = 3;
  do
  {
    v118 = [(MTLDevice *)self->_mtlDevice newBufferWithLength:80 options:0];
    [v115 addObject:v118];

    v119 = [(MTLDevice *)self->_mtlDevice newBufferWithLength:40 options:0];
    [v116 addObject:v119];

    --v117;
  }

  while (v117);
  objc_storeStrong(&self->_touchLocationBuffers, v115);
  objc_storeStrong(&self->_touchTimeBuffers, v116);
  v120 = [v133 newBufferWithLength:1176 options:0];
  v121 = 0;
  v122 = &xmmword_BF20;
  do
  {
    v123 = *v122++;
    *([v120 contents] + v121) = v123;
    *([v120 contents] + v121 + 2) = WORD2(v123);
    *([v120 contents] + v121 + 4) = v152;
    v121 += 6;
  }

  while (v121 != 1176);
  confettiIndexBuffer = self->_confettiIndexBuffer;
  self->_confettiIndexBuffer = v120;
}

- (id)_generateNoiseTextureInRect:(CGRect)rect device:(id)device
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  deviceCopy = device;
  v9 = objc_opt_new();
  [v9 setPixelFormat:70];
  [v9 setWidth:128];
  [v9 setHeight:128];
  [v9 setMipmapLevelCount:1];
  [v9 setTextureType:2];
  [v9 setUsage:1];
  [v9 setStorageMode:2];
  v10 = [deviceCopy newTextureWithDescriptor:v9];
  v11 = [deviceCopy newBufferWithLength:0x10000 options:0];

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_5438;
  v26 = &unk_145C0;
  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  v32 = width;
  v33 = height;
  contents = [v11 contents];
  NTKHighPriorityApply();
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_55B4;
  v20 = &unk_145E8;
  v21 = v11;
  v22 = v10;
  v12 = v10;
  v13 = v11;
  v14 = objc_retainBlock(&v17);
  v15 = [NTKParameciumSprite spriteWithBlitBlock:v14, v17, v18, v19, v20];

  return v15;
}

+ (id)confettiFontDescriptor
{
  if (qword_1A430 != -1)
  {
    sub_8F78();
  }

  v3 = qword_1A428;

  return v3;
}

+ (id)renderNumbersWithColors:(id)colors size:(double)size weight:(double)weight inBounds:(CGRect)bounds baselineRadius:(double)radius
{
  height = bounds.size.height;
  width = bounds.size.width;
  colorsCopy = colors;
  v11 = +[NTKParameciumCompositeQuad confettiFontDescriptor];
  v38 = [UIFont fontWithDescriptor:v11 size:size];

  v12 = 16 * width;
  v13 = malloc_type_malloc(v12 * height, 0x1000040451B5BE8uLL);
  bzero(v13, v12 * height);
  v14 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
  v35 = width;
  v36 = height;
  v15 = CGBitmapContextCreate(v13, v35, v36, 0x20uLL, v12, v14, 0x2101u);
  CGColorSpaceRelease(v14);
  CGContextScaleCTM(v15, 2.0, -2.0);
  v16 = width * 0.25;
  v17 = height * -0.25;
  v18 = -3;
  for (i = 1; i != 13; ++i)
  {
    v39[1] = NSForegroundColorAttributeName;
    v40[0] = v38;
    v39[0] = NSFontAttributeName;
    v20 = [colorsCopy objectAtIndexedSubscript:{i % objc_msgSend(colorsCopy, "count")}];
    v40[1] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];

    v22 = [NSAttributedString alloc];
    v23 = [NSString localizedStringWithFormat:@"%d", i];
    v24 = [v22 initWithString:v23 attributes:v21];

    CGContextSaveGState(v15);
    CGContextSetTextPosition(v15, 0.0, 0.0);
    v25 = CTLineCreateWithAttributedString(v24);
    TypographicBounds = CTLineGetTypographicBounds(v25, 0, 0, 0);
    ImageBounds = CTLineGetImageBounds(v25, v15);
    v27 = ImageBounds.size.height;
    CGContextTranslateCTM(v15, v16, v17);
    CGContextRotateCTM(v15, (v18 + 1) * 0.523598776);
    CGContextTranslateCTM(v15, 37.0 - v27 + radius, 0.0);
    CGContextRotateCTM(v15, 1.57079633);
    CGContextScaleCTM(v15, 1.0, -1.0);
    if (v18 <= 4)
    {
      CGContextScaleCTM(v15, -1.0, -1.0);
      CGContextTranslateCTM(v15, 0.0, 0.5 - v27);
    }

    CGContextTranslateCTM(v15, TypographicBounds * -0.5, 0.0);
    CTLineDraw(v25, v15);
    CFRelease(v25);
    CGContextRestoreGState(v15);

    ++v18;
  }

  v28 = (4 * v35);
  v29 = malloc_type_malloc((v28 * v36), 0x100004052888210uLL);
  v30 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  v31 = CGBitmapContextCreate(v29, v35, v36, 8uLL, v28, v30, 1u);
  CGColorSpaceRelease(v30);
  NTKHighPriorityApply();
  CGContextRelease(v15);
  free(v13);
  Image = CGBitmapContextCreateImage(v31);
  CGContextRelease(v31);
  free(v29);
  v33 = [UIImage imageWithCGImage:Image];
  CGImageRelease(Image);

  return v33;
}

- (void)_initializeColors
{
  v3 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
  obj = objc_opt_new();
  v4 = 0;
  selfCopy = self;
  do
  {
    v6 = [UIColor colorWithDisplayP3Red:COERCE_FLOAT(xmmword_CB60[v4]) green:COERCE_FLOAT(HIDWORD(*&xmmword_CB60[v4])) blue:COERCE_FLOAT(*(&xmmword_CB60[v4] + 1)) alpha:COERCE_FLOAT(HIDWORD(xmmword_CB60[v4]))];
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v3, kCGRenderingIntentDefault, [v6 CGColor], 0);
    Components = CGColorGetComponents(CopyByMatchingToColorSpace);
    *&v9 = vcvt_f32_f64(*Components);
    *&v10 = Components[1].f64[0];
    *(&v9 + 1) = __PAIR64__(1.0, v10);
    *selfCopy->_confettiColors = v9;
    [obj addObject:v6];
    CGColorRelease(CopyByMatchingToColorSpace);

    selfCopy = (selfCopy + 16);
    ++v4;
  }

  while (v4 != 12);
  objc_storeStrong(&self->_numberColors, obj);
  v11 = objc_opt_new();
  v12 = 0;
  selfCopy2 = self;
  do
  {
    v14 = [UIColor colorWithDisplayP3Red:COERCE_FLOAT(xmmword_CC20[v12]) green:COERCE_FLOAT(HIDWORD(*&xmmword_CC20[v12])) blue:COERCE_FLOAT(*(&xmmword_CC20[v12] + 1)) alpha:COERCE_FLOAT(HIDWORD(xmmword_CC20[v12]))];
    v15 = CGColorCreateCopyByMatchingToColorSpace(v3, kCGRenderingIntentDefault, [v14 CGColor], 0);
    v16 = CGColorGetComponents(v15);
    *&v17 = vcvt_f32_f64(*v16);
    *&v18 = v16[1].f64[0];
    *(&v17 + 1) = __PAIR64__(1.0, v18);
    *selfCopy2->_tritiumColors = v17;
    [(NSArray *)v11 addObject:v14];
    CGColorRelease(v15);

    selfCopy2 = (selfCopy2 + 16);
    ++v12;
  }

  while (v12 != 12);
  tritiumNumberColors = self->_tritiumNumberColors;
  self->_tritiumNumberColors = v11;

  CGColorSpaceRelease(v3);
}

- (void)updateConfettiColors:(id)colors
{
  colorsCopy = colors;
  contents = [colors contents];
  if (contents)
  {
    v7 = 0;
    v8 = 1.0 - self->_backgroundOn;
    *&v8 = fmin(self->_tritiumProgress, v8);
    v9 = vdupq_lane_s32(*&v8, 0);
    v10 = 1.0 - *&v8;
    v11 = contents + 1;
    do
    {
      v12 = (12 * (v7 / 0xCu) - v7 + 11);
      *v11 = vmlaq_f32(vmulq_n_f32(*&self->_tritiumColors[16 * v12], v10), *&self->_confettiColors[16 * v12], v9);
      v11 += 7;
      ++v7;
    }

    while (v7 != 60);
  }
}

- (id)confettiOriginsBuffer:(id)buffer capsuleSize:(CGSize)size
{
  width = size.width;
  height = size.height;
  v29 = [(MTLDevice *)self->_mtlDevice newBufferWithLength:6720 options:0];
  contents = [v29 contents];
  v6.f64[0] = width;
  v6.f64[1] = height;
  v30 = vcvt_f32_f64(v6);
  v31 = *self->_targetSize;
  v7 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
  v8 = sub_8034(v7, self->_device);
  v9 = 0;
  *&v8 = v11;
  v12 = vdup_lane_s32(*&v8, 0);
  v13 = contents + 32;
  do
  {
    v14 = v9 / 0xCu;
    confettiColors = self->_confettiColors;
    v15 = [UIColor colorWithDisplayP3Red:COERCE_FLOAT(*&confettiColors[16 * (11 - (v9 - 12 * v14))]) green:COERCE_FLOAT(HIDWORD(*&confettiColors[16 * (11 - (v9 - 12 * v14))])) blue:COERCE_FLOAT(*&confettiColors[16 * (11 - (v9 - 12 * v14)) + 8]) alpha:COERCE_FLOAT(HIDWORD(*&confettiColors[16 * (11 - (v9 - 12 * v14))]))];
    cGColor = [v15 CGColor];

    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v7, kCGRenderingIntentDefault, cGColor, 0);
    Components = CGColorGetComponents(CopyByMatchingToColorSpace);
    *&v19 = vcvt_f32_f64(*Components);
    *&v20 = Components[1].f64[0];
    *(&v19 + 1) = __PAIR64__(1.0, v20);
    v34 = v19;
    CGColorRelease(CopyByMatchingToColorSpace);
    v21 = (((v9 % 0xCu) / 12.0) + ((v9 % 0xCu) / 12.0)) * 3.14159265;
    v22 = (v14 / 5.0) * 0.523598776;
    v23 = vmul_f32(*self->_targetSize, 0x3F0000003F000000);
    v24 = v22 + v21;
    v25 = __sincosf_stret(v22 + v21);
    v26 = vmla_f32(v23, v12, vmul_n_f32(__PAIR64__(LODWORD(v25.__sinval), LODWORD(v25.__cosval)), (arc4random_uniform(0x78u) + 160)));
    v27 = fmod(v24 + 1.57079633, 6.28318531);
    *(v13 - 4) = v31;
    *(v13 - 3) = v30;
    *(v13 - 1) = v34;
    *v13 = v26;
    *(v13 + 1) = 0x3F0000003F000000;
    *(v13 + 2) = 0;
    *(v13 + 6) = v27;
    *(v13 + 28) = 0u;
    *(v13 + 44) = 0u;
    *(v13 + 60) = 0u;
    *(v13 + 19) = 0;
    ++v9;
    v13 += 112;
  }

  while (v9 != 60);
  CGColorSpaceRelease(v7);

  return v29;
}

- (id)_confettiHiddenBehindTicksBuffer:(id)buffer capsuleSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v29 = [(MTLDevice *)self->_mtlDevice newBufferWithLength:6720 options:0];
  contents = [v29 contents];
  v6 = *self->_targetSize;
  v7.f64[0] = width;
  v7.f64[1] = height;
  v8 = vcvt_f32_f64(v7);
  v9 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
  v10 = sub_8034(v9, self->_device);
  v11 = 0;
  *&v10 = v10;
  v13 = vdup_lane_s32(*&v10, 0);
  v14 = contents + 32;
  do
  {
    confettiColors = self->_confettiColors;
    v15 = [UIColor colorWithDisplayP3Red:COERCE_FLOAT(*&confettiColors[16 * (11 - v11 % 0xCu)]) green:COERCE_FLOAT(HIDWORD(*&confettiColors[16 * (11 - v11 % 0xCu)])) blue:COERCE_FLOAT(*&confettiColors[16 * (11 - v11 % 0xCu) + 8]) alpha:COERCE_FLOAT(HIDWORD(*&confettiColors[16 * (11 - v11 % 0xCu)]))];
    cGColor = [v15 CGColor];

    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v9, kCGRenderingIntentDefault, cGColor, 0);
    Components = CGColorGetComponents(CopyByMatchingToColorSpace);
    *&v19 = vcvt_f32_f64(*Components);
    *&v20 = Components[1].f64[0];
    *(&v19 + 1) = __PAIR64__(1.0, v20);
    v31 = v19;
    CGColorRelease(CopyByMatchingToColorSpace);
    v21 = (((v11 % 0xCu) | 0x10) - 12 * ((22 * ((v11 % 0xCu) | 0x10)) >> 8));
    v22 = ((v21 / 12.0) + (v21 / 12.0)) * 3.14159265;
    v23 = vmul_f32(*self->_targetSize, 0x3F0000003F000000);
    v24 = v22 + 0.0;
    v25 = __sincosf_stret(v22 + 0.0);
    v26 = fmod(v24, 6.28318531);
    *(v14 - 4) = v6;
    *(v14 - 3) = v8;
    *(v14 - 1) = v31;
    *v14 = vmla_f32(v23, v13, __PAIR64__(LODWORD(v25.__sinval), LODWORD(v25.__cosval)));
    *(v14 + 1) = 0x3F0000003F000000;
    *(v14 + 2) = 0;
    *(v14 + 6) = v26;
    *(v14 + 28) = 0u;
    *(v14 + 44) = 0u;
    *(v14 + 60) = 0u;
    *(v14 + 19) = 0;
    ++v11;
    v14 += 112;
  }

  while (v11 != 60);
  CGColorSpaceRelease(v9);

  return v29;
}

- (void)handleTouchAt:(CGPoint)at at:(double)a4
{
  *&at.x = at.x;
  *&at.y = at.y;
  [(NTKParameciumTouchHandler *)self->_touchHandler startWaveAtX:at.x y:at.y atTime:a4 + 0.25];
}

- (double)createMatrixForTextureWithSize:(float32x2_t)size translation:(double)translation scale:(int32x2_t)scale rotate:(float)rotate offset:(__n128)offset
{
  __asm { FMOV            V0.4S, #1.0 }

  v29 = _Q0;
  *_Q0.i64 = translation;
  v27 = _Q0;
  v13 = __sincosf_stret(rotate);
  *v12.i32 = v13.__cosval;
  *v11.i32 = v13.__sinval;
  v14 = 0;
  v15.i32[3] = 0;
  v15.i64[0] = LODWORD(v13.__cosval);
  *&v15.i32[2] = -v13.__sinval;
  v31 = vzip1q_s32(v15, v11);
  v32 = vzip2q_s32(v15, vdupq_lane_s32(v12, 0));
  v33 = xmmword_BEE0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  do
  {
    *(&v34 + v14) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_BEF0, COERCE_FLOAT(*(&v31 + v14))), xmmword_BF00, *&v31.i8[v14], 1), v27, *(&v31 + v14), 2);
    v14 += 16;
  }

  while (v14 != 48);
  v16 = 0;
  v17 = v34;
  v18 = v35;
  v19 = v36;
  v31 = scale.u32[0];
  v32 = vzip2q_s32(scale.u32[0], vdupq_lane_s32(scale, 1));
  v33 = vzip1q_s32(vzip2q_s32(scale.u32[0], v29), 0);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  do
  {
    *(&v34 + v16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v31 + v16))), v18, *&v31.i8[v16], 1), v19, *(&v31 + v16), 2);
    v16 += 16;
  }

  while (v16 != 48);
  v20 = 0;
  v21 = v34;
  v22 = v35;
  v23.i64[1] = offset.n128_i64[1];
  v24.i64[0] = 1065353216;
  v24.u64[1] = vmla_f32(offset.n128_u64[0], 0xBF000000BF000000, size);
  v25 = v36;
  *v23.i8 = vdup_lane_s32(v24.u64[1], 1);
  v31 = COERCE_UNSIGNED_INT(1.0);
  v32 = xmmword_BF00;
  v33 = vzip1q_s32(vzip2q_s32(v24, v29), v23);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  do
  {
    *(&v34 + v20) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v31 + v20))), v22, *&v31.i8[v20], 1), v25, *(&v31 + v20), 2);
    v20 += 16;
  }

  while (v20 != 48);
  return *v34.i64;
}

- (void)performOffscreenPassesWithCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(NTKParameciumSprite *)self->_gradientSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_shadowGradientSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_hourSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_hourInlaySprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_hourShadowSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_secondSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_secondShadowSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_minuteSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_minuteInlaySprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_minuteShadowSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_noiseSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_backgroundWhiteNumbersSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  [(NTKParameciumSprite *)self->_backgroundBlackNumbersSprite blitIfNecessaryWithCommandBuffer:bufferCopy];
  v5 = self->_confettiRotation + -1.57079633 + -0.261799388;
  *v27 = v5;
  v6 = fmod(self->_currentTime, 86400.0);
  showsConfetti = self->_showsConfetti;
  *&v6 = v6;
  v8 = ceil(showsConfetti);
  v27[1] = LODWORD(v6);
  *&v27[2] = v8;
  *&v6 = 1.0 - showsConfetti;
  *&showsConfetti = self->_confettiEntropy * self->_tritiumProgress;
  v27[3] = LODWORD(v6);
  v27[4] = LODWORD(showsConfetti);
  v9 = [(CLKUIMetalResourcePool *)self->_confettiDefinitionsPool dequeueReusableResourceForUseOnCommandBuffer:bufferCopy];
  currentFrameConfettiPositions = self->_currentFrameConfettiPositions;
  self->_currentFrameConfettiPositions = v9;

  [(NTKParameciumCompositeQuad *)self updateConfettiColors:self->_confettiHiddenBuffer];
  [(NTKParameciumCompositeQuad *)self updateConfettiColors:self->_confettiOriginsBuffer];
  [(NTKParameciumCompositeQuad *)self updateConfettiColors:self->_currentFrameConfettiPositions];
  if (self->_showsConfetti > 0.0)
  {
    v11 = [(NSArray *)self->_touchTimeBuffers objectAtIndex:self->_touchBufferIndex];
    v12 = [(NSArray *)self->_touchLocationBuffers objectAtIndex:self->_touchBufferIndex];
    self->_touchBufferIndex = (self->_touchBufferIndex + 1) % 3;
    touchHandler = self->_touchHandler;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_6AE4;
    v24[3] = &unk_14650;
    v25 = v11;
    v26 = v12;
    v14 = v12;
    v15 = v11;
    [(NTKParameciumTouchHandler *)touchHandler iterateTouchesWithBlock:v24];
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_computeConfettiPipelineState];
    [computeCommandEncoder setBuffer:self->_confettiOriginsBuffer offset:0 atIndex:0];
    texture = [(NTKParameciumSprite *)self->_noiseSprite texture];
    [computeCommandEncoder setTexture:texture atIndex:0];

    [computeCommandEncoder setBuffer:self->_currentFrameConfettiPositions offset:0 atIndex:1];
    [computeCommandEncoder setBytes:v27 length:20 atIndex:2];
    [computeCommandEncoder setBuffer:self->_confettiHiddenBuffer offset:0 atIndex:3];
    [computeCommandEncoder setBuffer:v14 offset:0 atIndex:4];
    [computeCommandEncoder setBuffer:v15 offset:0 atIndex:5];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_computeConfettiPipelineState threadExecutionWidth];
    maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_computeConfettiPipelineState maxTotalThreadsPerThreadgroup];
    v23 = 1;
    v20 = maxTotalThreadsPerThreadgroup / threadExecutionWidth * threadExecutionWidth;
    v21 = vdupq_n_s64(1uLL);
    v22 = xmmword_BF10;
    [computeCommandEncoder dispatchThreads:&v22 threadsPerThreadgroup:&v20];
    [computeCommandEncoder endEncoding];
  }
}

- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v6 = [bufferCopy renderCommandEncoderWithDescriptor:?];
  texture = [(NTKParameciumSprite *)self->_gradientSprite texture];
  texture2 = [(NTKParameciumSprite *)self->_shadowGradientSprite texture];
  v162 = texture2;
  if (self->_showsConfetti > 0.0)
  {
    [v6 setRenderPipelineState:self->_capsulePipelineState];
    [v6 setVertexBuffer:self->_currentFrameConfettiPositions offset:0 atIndex:0];
    texture2 = [v6 drawIndexedPrimitives:3 indexCount:588 indexType:0 indexBuffer:self->_confettiIndexBuffer indexBufferOffset:0 instanceCount:60];
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  *&v171 = *self->_targetSize;
  LODWORD(v176) = 1065353216;
  if (self->_showsNumbers > 0.0)
  {
    texture3 = [(NTKParameciumSprite *)self->_backgroundWhiteNumbersSprite texture];
    texture4 = [(NTKParameciumSprite *)self->_backgroundBlackNumbersSprite texture];
    v10 = fmin(self->_tritiumProgress, 1.0 - self->_backgroundOn);
    [v6 setRenderPipelineState:self->_spriteMultiplyPipelineState];
    width = [texture3 width];
    height = [texture3 height];
    *&v12 = width;
    *(&v12 + 1) = height;
    *(&v171 + 1) = v12;
    v172 = *&v12;
    __asm { FMOV            V2.2S, #1.0 }

    [(NTKParameciumCompositeQuad *)self createMatrixForTextureWithSize:v12 translation:COERCE_DOUBLE(vmul_f32(*self->_targetSize scale:0x3F0000003F000000)) rotate:_D2 offset:0.0, 0.0];
    DWORD2(v173) = v18;
    DWORD2(v174) = v19;
    *&v173 = v20;
    *&v174 = v21;
    DWORD2(v175) = v22;
    *&v175 = v23;
    v177[0] = 0.0;
    [v6 setVertexBytes:v177 length:4 atIndex:1];
    v24 = fmin(self->_showsNumbers + self->_showsNumbers, 1.0) * v10;
    *&v176 = v24;
    [v6 setVertexBytes:&v171 length:96 atIndex:0];
    [v6 setFragmentTexture:texture3 atIndex:0];
    [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];
    v25 = fmin(self->_showsNumbers + self->_showsNumbers, 1.0) * (1.0 - v10);
    *&v176 = v25;
    [v6 setVertexBytes:&v171 length:96 atIndex:0];
    [v6 setFragmentTexture:texture4 atIndex:0];
    [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];
  }

  if (self->_showsTicks > 0.0)
  {
    v26 = *self->_targetSize;
    v27 = sub_8034(texture2, self->_device);
    v29 = 0;
    v30 = 0;
    *&v27 = v27 + v27;
    *&v166 = LODWORD(v27);
    do
    {
      tickShadows = self->_tickShadows;
      *&v32 = 0;
      DWORD2(v32) = 0;
      *(&v32 + 3) = tickShadows;
      v164 = v32;
      v33 = COERCE_DOUBLE(vmul_f32(*self->_targetSize, 0x3F0000003F000000));
      v34 = v30 / 12.0 * 6.28318531 + 1.57079633;
      *&v28 = v34;
      [(NTKParameciumCompositeQuad *)self createMatrixForTextureWithSize:1.03079232e11 translation:v33 scale:0.0000305175853 rotate:v28 offset:v166];
      v35 = &v177[v29];
      *v35 = v26;
      *(v35 + 1) = 0x4238000043140000;
      HIDWORD(v28) = HIDWORD(v166);
      *(v35 + 1) = v164;
      *(v35 + 4) = v33;
      *(v35 + 5) = 0x3F0000003F000000;
      *(v35 + 6) = v166;
      v35[14] = v34;
      v35[15] = 0.0;
      v177[v29 + 18] = v36;
      *(v35 + 8) = v37;
      v177[v29 + 22] = v38;
      *(v35 + 10) = v39;
      v177[v29 + 26] = v40;
      ++v30;
      v29 += 28;
      *(v35 + 12) = v41;
    }

    while (v30 != 12);
    [v6 setRenderPipelineState:self->_capsulePipelineState];
    v42 = 1.0 - self->_backgroundOn;
    *&v42 = fmin(self->_tritiumProgress, v42);
    v43 = vdupq_lane_s32(*&v42, 0);
    v44 = 1.0 - *&v42;
    v45 = fmin(self->_showsTicks + self->_showsTicks, 1.0);
    v46 = 12;
    v47 = 4;
    do
    {
      if (v46 == 12)
      {
        v48 = 0;
      }

      else
      {
        v48 = v46;
      }

      v49 = vmlaq_f32(vmulq_n_f32(*&self->_tritiumColors[16 * v48], v44), *&self->_confettiColors[16 * v48], v43);
      v49.f32[3] = v45;
      *&v177[v47] = v49;
      v47 += 28;
      --v46;
    }

    while (v46);
    [v6 setVertexBytes:v177 length:1344 atIndex:0];
    [v6 drawIndexedPrimitives:3 indexCount:588 indexType:0 indexBuffer:self->_confettiIndexBuffer indexBufferOffset:0 instanceCount:12];
  }

  LODWORD(v176) = 1065353216;
  texture5 = [(NTKParameciumSprite *)self->_minuteShadowSprite texture];
  v51 = -self->_confettiRotation - self->_minuteAngle;
  v177[0] = v51;
  [v6 setRenderPipelineState:self->_tintedSpritePipelineState];
  width2 = [texture5 width];
  height2 = [texture5 height];
  v53.f32[0] = width2;
  v53.f32[1] = height2;
  v168 = v53;
  *(&v171 + 1) = v53;
  v172 = v53;
  v54 = vsub_f32(0x3F0000003F000000, *self->_minuteAnchor);
  [(CLKUIAnalogHandConfiguration *)self->_minuteConfiguration radialShadowRadius];
  *&v55 = v55;
  minuteAngle = self->_minuteAngle;
  *&minuteAngle = minuteAngle;
  v57 = COERCE_DOUBLE(vneg_f32(vmla_f32(vdup_lane_s32(*&v55, 0), v54, v168)));
  LODWORD(v57) = 0;
  __asm { FMOV            V8.2S, #1.0 }

  [(NTKParameciumCompositeQuad *)self createMatrixForTextureWithSize:*(&v171 + 1) translation:COERCE_DOUBLE(vadd_f32(vmul_f32(*self->_targetSize scale:0x3F0000003F000000) rotate:0xC0A0000000000000)) offset:_D8, minuteAngle, v57];
  DWORD2(v173) = v59;
  DWORD2(v174) = v60;
  *&v173 = v61;
  *&v174 = v62;
  DWORD2(v175) = v63;
  *&v175 = v64;
  [v6 setVertexBytes:v177 length:4 atIndex:1];
  [v6 setVertexBytes:&v171 length:96 atIndex:0];
  [v6 setFragmentTexture:texture5 atIndex:0];
  [v6 setFragmentTexture:v162 atIndex:1];
  [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];

  texture6 = [(NTKParameciumSprite *)self->_minuteSprite texture];
  texture7 = [(NTKParameciumSprite *)self->_minuteInlaySprite texture];
  v67 = -self->_confettiRotation - self->_minuteAngle;
  v177[0] = v67;
  [v6 setRenderPipelineState:self->_handPipelineState];
  v168.f32[0] = [texture6 width];
  height3 = [texture6 height];
  LODWORD(v69) = v168.i32[0];
  *(&v69 + 1) = height3;
  *(&v171 + 1) = v69;
  v172 = v69;
  v70 = vmul_f32(*self->_targetSize, 0x3F0000003F000000);
  v71 = self->_minuteAngle;
  v72 = -(height3 * (0.5 - *&self->_minuteAnchor[4]));
  [NTKParameciumCompositeQuad createMatrixForTextureWithSize:"createMatrixForTextureWithSize:translation:scale:rotate:offset:" translation:? scale:? rotate:? offset:?];
  DWORD2(v173) = v73;
  DWORD2(v174) = v74;
  *&v173 = v75;
  *&v174 = v76;
  DWORD2(v175) = v77;
  *&v175 = v78;
  [v6 setVertexBytes:v177 length:4 atIndex:1];
  [v6 setVertexBytes:&v171 length:96 atIndex:0];
  [v6 setFragmentTexture:texture6 atIndex:0];
  [v6 setFragmentTexture:texture atIndex:1];
  [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v6 setRenderPipelineState:self->_inlayPipelineState];
  [v6 setFragmentTexture:texture7 atIndex:0];
  [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];

  v79 = -self->_confettiRotation - self->_hourAngle;
  v177[0] = v79;
  texture8 = [(NTKParameciumSprite *)self->_hourShadowSprite texture];
  [v6 setRenderPipelineState:self->_tintedSpritePipelineState];
  v168.f32[0] = [texture8 width];
  height4 = [texture8 height];
  v82.i32[0] = v168.i32[0];
  v82.f32[1] = height4;
  v169 = v82;
  *(&v171 + 1) = v82;
  v172 = v82;
  v83 = vsub_f32(0x3F0000003F000000, *self->_hourAnchor);
  [(CLKUIAnalogHandConfiguration *)self->_hourConfiguration radialShadowRadius];
  *&v84 = v84;
  hourAngle = self->_hourAngle;
  *&hourAngle = hourAngle;
  v86 = COERCE_DOUBLE(vneg_f32(vmla_f32(vdup_lane_s32(*&v84, 0), v83, v169)));
  LODWORD(v86) = 0;
  [(NTKParameciumCompositeQuad *)self createMatrixForTextureWithSize:*(&v171 + 1) translation:COERCE_DOUBLE(vadd_f32(vmul_f32(*self->_targetSize scale:0x3F0000003F000000) rotate:0xC0A0000000000000)) offset:_D8, hourAngle, v86];
  DWORD2(v173) = v87;
  DWORD2(v174) = v88;
  *&v173 = v89;
  *&v174 = v90;
  DWORD2(v175) = v91;
  *&v175 = v92;
  [v6 setVertexBytes:v177 length:4 atIndex:1];
  [v6 setVertexBytes:&v171 length:96 atIndex:0];
  [v6 setFragmentTexture:texture8 atIndex:0];
  [v6 setFragmentTexture:v162 atIndex:1];
  [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];

  v93 = -self->_confettiRotation - self->_hourAngle;
  v177[0] = v93;
  texture9 = [(NTKParameciumSprite *)self->_hourSprite texture];
  texture10 = [(NTKParameciumSprite *)self->_hourInlaySprite texture];
  [v6 setRenderPipelineState:self->_handPipelineState];
  v169.f32[0] = [texture9 width];
  height5 = [texture9 height];
  LODWORD(v97) = v169.i32[0];
  *(&v97 + 1) = height5;
  *(&v171 + 1) = v97;
  v172 = v97;
  v98 = vmul_f32(*self->_targetSize, 0x3F0000003F000000);
  v99 = self->_hourAngle;
  v100 = -(height5 * (0.5 - *&self->_hourAnchor[4]));
  [NTKParameciumCompositeQuad createMatrixForTextureWithSize:"createMatrixForTextureWithSize:translation:scale:rotate:offset:" translation:? scale:? rotate:? offset:?];
  DWORD2(v173) = v101;
  DWORD2(v174) = v102;
  *&v173 = v103;
  *&v174 = v104;
  DWORD2(v175) = v105;
  *&v175 = v106;
  [v6 setVertexBytes:v177 length:4 atIndex:1];
  [v6 setVertexBytes:&v171 length:96 atIndex:0];
  [v6 setFragmentTexture:texture9 atIndex:0];
  [v6 setFragmentTexture:texture atIndex:1];
  [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v6 setRenderPipelineState:self->_inlayPipelineState];
  [v6 setFragmentTexture:texture10 atIndex:0];
  [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];

  confettiRotation = self->_confettiRotation;
  v177[0] = -confettiRotation;
  texture11 = [(NTKParameciumSprite *)self->_secondShadowSprite texture];
  [v6 setRenderPipelineState:self->_spritePipelineState];
  v169.f32[0] = [texture11 width];
  height6 = [texture11 height];
  v110.i32[0] = v169.i32[0];
  v110.f32[1] = height6;
  v170 = v110;
  *(&v171 + 1) = v110;
  v172 = v110;
  v111 = vsub_f32(0x3F0000003F000000, *self->_secondAnchor);
  [(CLKUIAnalogHandConfiguration *)self->_secondConfiguration radialShadowRadius];
  *&v112 = v112;
  secondAngle = self->_secondAngle;
  *&secondAngle = secondAngle;
  v114 = COERCE_DOUBLE(vneg_f32(vmla_f32(vdup_lane_s32(*&v112, 0), v111, v170)));
  LODWORD(v114) = 0;
  [(NTKParameciumCompositeQuad *)self createMatrixForTextureWithSize:*(&v171 + 1) translation:COERCE_DOUBLE(vadd_f32(vmul_f32(*self->_targetSize scale:0x3F0000003F000000) rotate:0xC0A0000000000000)) offset:_D8, secondAngle, v114];
  DWORD2(v173) = v115;
  DWORD2(v174) = v116;
  *&v173 = v117;
  *&v174 = v118;
  DWORD2(v175) = v119;
  *&v175 = v120;
  [v6 setVertexBytes:v177 length:4 atIndex:1];
  [v6 setVertexBytes:&v171 length:96 atIndex:0];
  [v6 setFragmentTexture:texture11 atIndex:0];
  [v6 drawPrimitives:4 vertexStart:0 vertexCount:4];

  [v6 endEncoding];
  v121 = [(CLKUIMetalResourcePool *)self->_secondHandBlurTexturePool dequeueReusableResourceForUseOnCommandBuffer:bufferCopy];
  colorAttachments = [(MTLRenderPassDescriptor *)self->_blurPassDescriptor colorAttachments];
  v123 = [colorAttachments objectAtIndexedSubscript:0];
  [v123 setTexture:v121];

  v124 = [bufferCopy renderCommandEncoderWithDescriptor:self->_blurPassDescriptor];
  texture12 = [(NTKParameciumSprite *)self->_secondSprite texture];
  [v124 setRenderPipelineState:self->_blurPipelineState];
  width3 = [v121 width];
  height7 = [v121 height];
  *&v127 = width3;
  *(&v127 + 1) = height7;
  *(&v171 + 1) = v127;
  v172 = v127;
  v128 = vmul_f32(*self->_targetSize, 0x3F0000003F000000);
  v129 = self->_secondAngle;
  v130 = -(height7 * (0.5 - *&self->_secondAnchor[4]));
  [NTKParameciumCompositeQuad createMatrixForTextureWithSize:"createMatrixForTextureWithSize:translation:scale:rotate:offset:" translation:? scale:? rotate:? offset:?];
  DWORD2(v173) = v131;
  DWORD2(v174) = v132;
  *&v173 = v133;
  *&v174 = v134;
  DWORD2(v175) = v135;
  *&v175 = v136;
  [v124 setVertexBytes:&v171 length:96 atIndex:0];
  colorAttachments2 = [descriptorCopy colorAttachments];
  v138 = [colorAttachments2 objectAtIndexedSubscript:0];
  texture13 = [v138 texture];
  [v124 setFragmentTexture:texture13 atIndex:0];

  [v124 setFragmentTexture:texture12 atIndex:1];
  v140 = fmin(self->_tritiumProgress, 1.0 - self->_backgroundOn);
  v177[0] = v140;
  [v124 setFragmentBytes:v177 length:4 atIndex:0];
  [v124 drawPrimitives:4 vertexStart:0 vertexCount:4];

  [v124 endEncoding];
  colorAttachments3 = [descriptorCopy colorAttachments];
  v142 = [colorAttachments3 objectAtIndexedSubscript:0];
  texture14 = [v142 texture];
  colorAttachments4 = [(MTLRenderPassDescriptor *)self->_compositePassDescriptor colorAttachments];
  v145 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v145 setTexture:texture14];

  v146 = [bufferCopy renderCommandEncoderWithDescriptor:self->_compositePassDescriptor];

  [v146 setRenderPipelineState:self->_spritePipelineState];
  width4 = [v121 width];
  height8 = [v121 height];
  *&v148 = width4;
  *(&v148 + 1) = height8;
  *(&v171 + 1) = v148;
  v172 = v148;
  v149 = vmul_f32(*self->_targetSize, 0x3F0000003F000000);
  v150 = self->_secondAngle;
  v151 = -(height8 * (0.5 - *&self->_secondAnchor[4]));
  [NTKParameciumCompositeQuad createMatrixForTextureWithSize:"createMatrixForTextureWithSize:translation:scale:rotate:offset:" translation:? scale:? rotate:? offset:?];
  DWORD2(v173) = v152;
  DWORD2(v174) = v153;
  DWORD2(v175) = v154;
  *&v173 = v155;
  *&v174 = v156;
  *&v175 = v157;
  *&v155 = self->_tritiumProgress;
  LODWORD(v176) = v155;
  [v146 setVertexBytes:&v171 length:96 atIndex:0];
  [v146 setFragmentTexture:v121 atIndex:0];
  [v146 drawPrimitives:4 vertexStart:0 vertexCount:4];
  [v146 endEncoding];
}

@end