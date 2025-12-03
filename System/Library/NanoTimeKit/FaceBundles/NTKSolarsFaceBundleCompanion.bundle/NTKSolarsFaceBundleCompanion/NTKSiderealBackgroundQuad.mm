@interface NTKSiderealBackgroundQuad
- (BOOL)prepareForTime:(double)time;
- (NTKSiderealBackgroundQuad)initWithDevice:(id)device orbitDiameter:(double)diameter timeOrbitRadius:(double)radius timeRadius:(double)timeRadius dialImage:(id)image waypointImage:(id)waypointImage gnomonImage:(id)gnomonImage dayGnomonImage:(id)self0 dayDiskBloomImage:(id)self1 dayDiscImage:(id)self2 nightGnomonImage:(id)self3 nightDiscImage:(id)self4 nightRingImage:(id)self5 initialData:(id)self6 useXR:(BOOL)self7;
- (int)numSlicesForAngle:(double)angle;
- (void)loadGradientTexture;
- (void)performOffscreenPassesWithCommandBuffer:(id)buffer;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)setSectors:(id)sectors;
- (void)setupForQuadView:(id)view;
- (void)siderealDataChanged:(id)changed;
@end

@implementation NTKSiderealBackgroundQuad

- (NTKSiderealBackgroundQuad)initWithDevice:(id)device orbitDiameter:(double)diameter timeOrbitRadius:(double)radius timeRadius:(double)timeRadius dialImage:(id)image waypointImage:(id)waypointImage gnomonImage:(id)gnomonImage dayGnomonImage:(id)self0 dayDiskBloomImage:(id)self1 dayDiscImage:(id)self2 nightGnomonImage:(id)self3 nightDiscImage:(id)self4 nightRingImage:(id)self5 initialData:(id)self6 useXR:(BOOL)self7
{
  deviceCopy = device;
  imageCopy = image;
  waypointImageCopy = waypointImage;
  gnomonImageCopy = gnomonImage;
  dayGnomonImageCopy = dayGnomonImage;
  bloomImageCopy = bloomImage;
  discImageCopy = discImage;
  nightGnomonImageCopy = nightGnomonImage;
  nightDiscImageCopy = nightDiscImage;
  ringImageCopy = ringImage;
  dataCopy = data;
  v54.receiver = self;
  v54.super_class = NTKSiderealBackgroundQuad;
  v25 = [(NTKSiderealBackgroundQuad *)&v54 init];
  v26 = v25;
  if (v25)
  {
    v25->_useXR = r;
    diameterCopy = diameter;
    v25->_diameter = diameterCopy;
    objc_storeStrong(&v25->_clkDevice, device);
    v26->_isConstantSun = 0;
    objc_storeStrong(&v26->_currentData, data);
    v26->_litProgress = 1.0;
    v26->_backgroundDimming = 1.0;
    v26->_blurScale = 1.0;
    v26->_sunsetFilter = 0.0;
    objc_storeStrong(&v26->_dialTex, image);
    objc_storeStrong(&v26->_waypointTex, waypointImage);
    objc_storeStrong(&v26->_gnomonTexture, gnomonImage);
    objc_storeStrong(&v26->_dayGnomonTexture, dayGnomonImage);
    objc_storeStrong(&v26->_dayDiskBloomTexture, bloomImage);
    objc_storeStrong(&v26->_dayDiskTexture, discImage);
    objc_storeStrong(&v26->_nightGnomonTexture, nightGnomonImage);
    objc_storeStrong(&v26->_nightDiskTexture, nightDiscImage);
    objc_storeStrong(&v26->_nightRingTexture, ringImage);
    v26->_glowStartAngle = 0.0;
    v26->_glowEndAngle = 0.0;
    timeRadiusCopy = timeRadius;
    v26->_blurRadius = timeRadiusCopy;
    radiusCopy = radius;
    v26->_blurOrbitRadius = radiusCopy;
    v30 = +[MTLRenderPassDescriptor renderPassDescriptor];
    colorAttachments = [(MTLRenderPassDescriptor *)v30 colorAttachments];
    v32 = [colorAttachments objectAtIndexedSubscript:0];

    [v32 setLoadAction:2];
    [v32 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    [v32 setStoreAction:1];
    objc_storeStrong(&v26->_offscreenPassDescriptor, v30);
    v33 = +[MTLRenderPassDescriptor renderPassDescriptor];
    colorAttachments2 = [v33 colorAttachments];
    v35 = [colorAttachments2 objectAtIndexedSubscript:0];

    [v35 setLoadAction:2];
    [v35 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    [v35 setStoreAction:1];
    objc_storeStrong(&v26->_verticalBlurPassDescriptor, v30);
    v36 = +[MTLRenderPassDescriptor renderPassDescriptor];
    colorAttachments3 = [v36 colorAttachments];
    v38 = [colorAttachments3 objectAtIndexedSubscript:0];

    [v38 setLoadAction:2];
    [v38 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    [v38 setStoreAction:1];
    horizontalBlurPassDescriptor = v26->_horizontalBlurPassDescriptor;
    v26->_horizontalBlurPassDescriptor = v30;
  }

  return v26;
}

- (void)siderealDataChanged:(id)changed
{
  objc_storeStrong(&self->_currentData, changed);
  changedCopy = changed;
  [(NTKSiderealBackgroundQuad *)self loadGradientTexture];
  isConstantSunUpOrDown = [changedCopy isConstantSunUpOrDown];

  self->_isConstantSun = isConstantSunUpOrDown;
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v6.f64[1] = v5;
  v7 = vaddq_f64(v6, v6);
  self->_size = v7;
  v8 = self->_diameter / v7.width;
  [(CLKDevice *)self->_clkDevice screenScale];
  *&v9 = v8 * v9;
  self->_orbitDiameter = *&v9;
  v10 = +[CLKUIMetalResourceManager sharedDevice];
  device = self->_device;
  self->_device = v10;

  v159[0] = 1;
  v12 = self->_device;
  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [(MTLDevice *)v12 newDefaultLibraryWithBundle:v13 error:0];

  v15 = [v14 newFunctionWithName:@"sidereal_fragment_solid_shader"];
  v121 = [v14 newFunctionWithName:@"sidereal_fragment_gradient_shader"];
  v16 = [v14 newFunctionWithName:@"sidereal_vertex_shader"];
  v17 = objc_opt_new();
  [v17 setConstantValue:v159 type:53 atIndex:0];
  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = self->_device;
  v108 = v18;
  v20 = [CLKUIMetalBinaryArchive archiveWithName:"archiveWithName:bundle:device:" bundle:@"sidereal" device:?];
  v21 = +[MTLFunctionDescriptor functionDescriptor];
  v109 = v17;
  [v21 setConstantValues:v17];
  [v21 setName:@"sidereal_fragment_glow_shader"];
  v22 = [v20 newFunctionInLibrary:v14 withDescriptor:v21];
  [v21 setName:@"sidereal_fragment_sprite_shader"];
  v107 = v21;
  v119 = [v20 newFunctionInLibrary:v14 withDescriptor:v21];
  v117 = [v14 newFunctionWithName:@"sidereal_vertex_sprite_shader"];
  v115 = [v14 newFunctionWithName:@"sidereal_fragment_blur_shader"];
  v113 = [v14 newFunctionWithName:@"sidereal_vertex_blur_shader"];
  v112 = [v14 newFunctionWithName:@"sidereal_fragment_composite_shader"];
  v110 = v14;
  v111 = [v14 newFunctionWithName:@"sidereal_vertex_composite_shader"];
  objc_initWeak(&location, self);
  v155[0] = _NSConcreteStackBlock;
  v155[1] = 3221225472;
  v155[2] = sub_1768C;
  v155[3] = &unk_2CD28;
  objc_copyWeak(&v157, &location);
  v106 = v20;
  v156 = v106;
  v23 = objc_retainBlock(v155);
  v150[0] = _NSConcreteStackBlock;
  v150[1] = 3221225472;
  v150[2] = sub_1770C;
  v150[3] = &unk_2CD50;
  v24 = v16;
  v151 = v24;
  v105 = v15;
  v152 = v105;
  v25 = viewCopy;
  v153 = v25;
  v26 = v23;
  v154 = v26;
  v27 = [NTKPromise metalPipelinePromiseNamed:@"Sidereal Solid Pipeline" withBlock:v150];
  mtlSolidPipelineState = self->_mtlSolidPipelineState;
  self->_mtlSolidPipelineState = v27;

  v145[0] = _NSConcreteStackBlock;
  v145[1] = 3221225472;
  v145[2] = sub_177FC;
  v145[3] = &unk_2CD50;
  v29 = v24;
  v146 = v29;
  v122 = v121;
  v147 = v122;
  v30 = v25;
  v148 = v30;
  v31 = v26;
  v149 = v31;
  v32 = [NTKPromise metalPipelinePromiseNamed:@"Sidereal Gradient Pipeline" withBlock:v145];
  mtlGradientPipelineState = self->_mtlGradientPipelineState;
  self->_mtlGradientPipelineState = v32;

  v139[0] = _NSConcreteStackBlock;
  v139[1] = 3221225472;
  v139[2] = sub_178EC;
  v139[3] = &unk_2CD78;
  v104 = v29;
  v140 = v104;
  v103 = v22;
  v141 = v103;
  v34 = v30;
  v142 = v34;
  v144 = v159[0];
  v35 = v31;
  v143 = v35;
  v36 = [NTKPromise metalPipelinePromiseNamed:@"Sidereal Glow Pipeline" withBlock:v139];
  mtlGlowPipelineState = self->_mtlGlowPipelineState;
  self->_mtlGlowPipelineState = v36;

  v133[0] = _NSConcreteStackBlock;
  v133[1] = 3221225472;
  v133[2] = sub_17AB4;
  v133[3] = &unk_2CD78;
  v38 = v117;
  v134 = v38;
  v120 = v119;
  v135 = v120;
  v39 = v34;
  v136 = v39;
  v138 = v159[0];
  v40 = v35;
  v137 = v40;
  v41 = [NTKPromise metalPipelinePromiseNamed:@"Sidereal Sprite Pipeline" withBlock:v133];
  mtlSpritePipelineState = self->_mtlSpritePipelineState;
  self->_mtlSpritePipelineState = v41;

  v128[0] = _NSConcreteStackBlock;
  v128[1] = 3221225472;
  v128[2] = sub_17C7C;
  v128[3] = &unk_2CD50;
  v118 = v113;
  v129 = v118;
  v116 = v115;
  v130 = v116;
  v43 = v39;
  v131 = v43;
  v44 = v40;
  v132 = v44;
  v45 = [NTKPromise metalPipelinePromiseNamed:@"Sidereal Blur Pipeline" withBlock:v128];
  mtlBlurPipelineState = self->_mtlBlurPipelineState;
  self->_mtlBlurPipelineState = v45;

  v123[0] = _NSConcreteStackBlock;
  v123[1] = 3221225472;
  v123[2] = sub_17D9C;
  v123[3] = &unk_2CD50;
  v47 = v111;
  v124 = v47;
  v114 = v112;
  v125 = v114;
  v48 = v43;
  v126 = v48;
  v49 = v44;
  v127 = v49;
  v50 = [NTKPromise metalPipelinePromiseNamed:@"Sidereal Composite Pipeline" withBlock:v123];
  mtlCompositePipelineState = self->_mtlCompositePipelineState;
  self->_mtlCompositePipelineState = v50;

  for (i = 0; i != 3; ++i)
  {
    v53 = [(MTLDevice *)self->_device newBufferWithLength:1728 options:0];
    v54 = self->_mtlSectorDescriptorBuffers[i];
    self->_mtlSectorDescriptorBuffers[i] = v53;
  }

  v55 = [(MTLDevice *)self->_device newBufferWithLength:512 options:0];
  mtlIndexBuffer = self->_mtlIndexBuffer;
  self->_mtlIndexBuffer = v55;

  contents = [(MTLBuffer *)self->_mtlIndexBuffer contents];
  v58 = 0;
  v59 = xmmword_21220;
  v60 = xmmword_21230;
  v61 = xmmword_21240;
  v62 = xmmword_21250;
  v63 = xmmword_21260;
  v64 = vdupq_n_s64(1uLL);
  v65 = vdupq_n_s64(8uLL);
  v66.i64[0] = 0x8000800080008;
  v66.i64[1] = 0x8000800080008;
  do
  {
    *&contents[v58] = vbicq_s8(v63, vuzp1q_s16(vuzp1q_s32(vceqzq_s64(vandq_s8(v62, v64)), vceqzq_s64(vandq_s8(v61, v64))), vuzp1q_s32(vceqzq_s64(vandq_s8(v60, v64)), vceqzq_s64(vandq_s8(v59, v64)))));
    v60 = vaddq_s64(v60, v65);
    v61 = vaddq_s64(v61, v65);
    v62 = vaddq_s64(v62, v65);
    v59 = vaddq_s64(v59, v65);
    v63 = vaddq_s16(v63, v66);
    v58 += 16;
  }

  while (v58 != 512);
  CLKUIConvertToRGBfFromSRGBf_fast();
  *self->_ticksColor_dim = vsqrtq_f32(v67);
  CLKUIConvertToRGBfFromSRGBf_fast();
  *self->_ticksColor_bright = vsqrtq_f32(v68);
  CLKUIConvertToRGBfFromSRGBf_fast();
  *self->_waypointsColor = vsqrtq_f32(v69);
  v70 = +[NTKSiderealColorManager sharedInstance];
  v71 = v70;
  if (self->_useXR)
  {
    civilTwilightCurveP3 = [v70 civilTwilightCurveP3];
    civilTwilightCurve = self->_civilTwilightCurve;
    self->_civilTwilightCurve = civilTwilightCurveP3;

    nauticalTwilightCurveP3 = [v71 nauticalTwilightCurveP3];
    nauticalTwilightCurve = self->_nauticalTwilightCurve;
    self->_nauticalTwilightCurve = nauticalTwilightCurveP3;

    astronomicalTwilightCurveP3 = [v71 astronomicalTwilightCurveP3];
    astronomicalTwilightCurve = self->_astronomicalTwilightCurve;
    self->_astronomicalTwilightCurve = astronomicalTwilightCurveP3;

    [v71 dialBackgroundCurveP3];
  }

  else
  {
    civilTwilightColorCurve = [v70 civilTwilightColorCurve];
    v80 = self->_civilTwilightCurve;
    self->_civilTwilightCurve = civilTwilightColorCurve;

    nauticalTwilightColorCurve = [v71 nauticalTwilightColorCurve];
    v82 = self->_nauticalTwilightCurve;
    self->_nauticalTwilightCurve = nauticalTwilightColorCurve;

    astronomicalTwilightColorCurve = [v71 astronomicalTwilightColorCurve];
    v84 = self->_astronomicalTwilightCurve;
    self->_astronomicalTwilightCurve = astronomicalTwilightColorCurve;

    [v71 dialBackgroundColorCurve];
  }
  v78 = ;
  nightColorCurve = self->_nightColorCurve;
  self->_nightColorCurve = v78;

  dayDiskBloomColorCurve = [v71 dayDiskBloomColorCurve];
  v87 = v38;
  bloomColorCurve = self->_bloomColorCurve;
  self->_bloomColorCurve = dayDiskBloomColorCurve;

  height = self->_size.height;
  width = self->_size.width;
  self->_renderingMode = 0;
  self->_shouldDrawGlowPath = 0;
  if (self->_useXR)
  {
    v91 = 555;
  }

  else
  {
    v91 = 81;
  }

  v92 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:v91 width:width height:height mipmapped:0];
  [v92 setUsage:5];
  v93 = +[CLKUIMetalResourceManager sharedDevice];
  v94 = [v93 newTextureWithDescriptor:v92];
  offscreenBuffer = self->_offscreenBuffer;
  self->_offscreenBuffer = v94;

  v96 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:v91 width:(self->_size.width * 0.125) height:(self->_size.height * 0.125) mipmapped:0];
  [v96 setUsage:5];
  v97 = +[CLKUIMetalResourceManager sharedDevice];
  v98 = [v97 newTextureWithDescriptor:v96];
  verticalBlurBuffer = self->_verticalBlurBuffer;
  self->_verticalBlurBuffer = v98;

  v100 = +[CLKUIMetalResourceManager sharedDevice];
  v101 = [v100 newTextureWithDescriptor:v96];
  horizontalBlurBuffer = self->_horizontalBlurBuffer;
  self->_horizontalBlurBuffer = v101;

  [(NTKSiderealBackgroundQuad *)self siderealDataChanged:self->_currentData];
  objc_destroyWeak(&v157);
  objc_destroyWeak(&location);
}

- (void)loadGradientTexture
{
  gradientData = [(NTKSiderealData *)self->_currentData gradientData];
  v4 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", [gradientData bytes], objc_msgSend(gradientData, "length"), 0);
  v5 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:110 width:128 height:64 mipmapped:0];
  [v5 setStorageMode:2];
  [v5 setUsage:1];
  v6 = [(MTLDevice *)self->_device newTextureWithDescriptor:v5];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1804C;
  v16 = &unk_2CDA0;
  v17 = v4;
  v18 = v6;
  v7 = v6;
  v8 = v4;
  v9 = objc_retainBlock(&v13);
  v10 = [NTKSiderealUncachedMTLTexture alloc];
  v11 = [(NTKSiderealUncachedMTLTexture *)v10 initWithTextureGenerationBlock:v9, v13, v14, v15, v16];
  gradientTex = self->_gradientTex;
  self->_gradientTex = v11;
}

- (void)setSectors:(id)sectors
{
  sectorsCopy = sectors;
  if ([sectorsCopy count])
  {
    v4 = [sectorsCopy count];
    if (v4 >= 0x12)
    {
      v5 = 18;
    }

    else
    {
      v5 = v4;
    }

    v6 = [NSIndexSet indexSetWithIndexesInRange:0, v5];
    v7 = [sectorsCopy objectsAtIndexes:v6];
    v8 = [NSOrderedSet orderedSetWithArray:v7];
    sectors = self->_sectors;
    self->_sectors = v8;
  }

  else
  {
    v10 = +[NSOrderedSet orderedSet];
    v6 = self->_sectors;
    self->_sectors = v10;
  }
}

- (int)numSlicesForAngle:(double)angle
{
  v3 = fabs(angle) * 50.0 / 3.14159265;
  if (v3 < 4.0)
  {
    return 4.0;
  }

  return v3;
}

- (BOOL)prepareForTime:(double)time
{
  v4 = [(NSOrderedSet *)self->_sectors count];
  if (v4)
  {
    self->_currentBufferIndex = self->_currentBufferIndex + 1 - 3 * ((1431655766 * (self->_currentBufferIndex + 1)) >> 32);
    _currentBuffer = [(NTKSiderealBackgroundQuad *)self _currentBuffer];
    contents = [_currentBuffer contents];
    [(NTKSiderealData *)self->_currentData altitudeForProgress:self->_dayProgress];
    [(NSOrderedSet *)self->_sectors count];
    NTKHighPriorityApply();
    [(NSOrderedSet *)self->_sectors count];
    [(NSOrderedSet *)self->_sectors count];
    NTKHighPriorityApply();
    glowStartAngle = self->_glowStartAngle;
    v8 = glowStartAngle;
    glowEndAngle = self->_glowEndAngle;
    v10 = glowEndAngle;
    glowStartAngle = [(NTKSiderealBackgroundQuad *)self numSlicesForAngle:glowEndAngle - glowStartAngle];
    contents[102] = xmmword_212B0;
    contents[103] = xmmword_212B0;
    contents[104] = xmmword_212B0;
    *(contents + 210) = 0;
    *(contents + 422) = v8;
    *(contents + 423) = v10;
    contents[106] = 0u;
    *(contents + 428) = 0;
    *(contents + 429) = glowStartAngle;
    *(contents + 215) = 0;
  }

  return v4 != 0;
}

- (void)performOffscreenPassesWithCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  v5 = [(NTKSiderealCachedMTLTexture *)self->_dialTex loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:0];
  v6 = [(NTKSiderealCachedMTLTexture *)self->_waypointTex loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:v5];

  v7 = [(NTKSiderealCachedMTLTexture *)self->_gnomonTexture loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:v6];

  v8 = [(NTKSiderealCachedMTLTexture *)self->_dayGnomonTexture loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:v7];

  v9 = [(NTKSiderealCachedMTLTexture *)self->_dayDiskBloomTexture loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:v8];

  v10 = [(NTKSiderealCachedMTLTexture *)self->_dayDiskTexture loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:v9];

  v11 = [(NTKSiderealCachedMTLTexture *)self->_nightGnomonTexture loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:v10];

  v12 = [(NTKSiderealCachedMTLTexture *)self->_nightDiskTexture loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:v11];

  v13 = [(NTKSiderealCachedMTLTexture *)self->_nightRingTexture loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:v12];

  v14 = [(NTKSiderealUncachedMTLTexture *)self->_gradientTex loadTextureWithCommandBuffer:bufferCopy usingBlitEncoder:v13];

  if (v14)
  {
    [v14 endEncoding];
  }

  v96 = v14;
  colorAttachments = [(MTLRenderPassDescriptor *)self->_offscreenPassDescriptor colorAttachments];
  v16 = [colorAttachments objectAtIndexedSubscript:0];
  [v16 setTexture:self->_offscreenBuffer];

  v17 = [bufferCopy renderCommandEncoderWithDescriptor:self->_offscreenPassDescriptor];
  _currentBuffer = [(NTKSiderealBackgroundQuad *)self _currentBuffer];
  contents = [_currentBuffer contents];
  [v17 setLabel:@"Sidereal Encoder"];
  _currentBuffer2 = [(NTKSiderealBackgroundQuad *)self _currentBuffer];
  [v17 setVertexBuffer:_currentBuffer2 offset:0 atIndex:0];

  texture = [(NTKSiderealUncachedMTLTexture *)self->_gradientTex texture];
  [v17 setFragmentTexture:texture atIndex:0];

  texture2 = [(NTKSiderealCachedMTLTexture *)self->_dialTex texture];
  [v17 setFragmentTexture:texture2 atIndex:1];

  texture3 = [(NTKSiderealCachedMTLTexture *)self->_waypointTex texture];
  [v17 setFragmentTexture:texture3 atIndex:2];

  renderingMode = self->_renderingMode;
  if (renderingMode - 1 < 2)
  {
    v24 = 0uLL;
    backgroundDimming = 1.0;
    litProgress = 1.0;
LABEL_7:
    v27 = 0uLL;
    v28 = 0uLL;
    goto LABEL_9;
  }

  litProgress = self->_litProgress;
  backgroundDimming = self->_backgroundDimming;
  if (renderingMode == 3)
  {
    v24 = 0uLL;
    goto LABEL_7;
  }

  v28 = *self->_ticksColor_dim;
  v27 = *self->_ticksColor_bright;
  v24 = *self->_waypointsColor;
LABEL_9:
  v114 = 0;
  v111[0] = v28;
  v111[1] = v27;
  v111[2] = v24;
  v112 = litProgress;
  v113 = backgroundDimming;
  *&v114 = self->_sunsetFilter;
  [v17 setFragmentBytes:v111 length:64 atIndex:0];
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_19438;
  v107[3] = &unk_2CE18;
  v29 = v17;
  selfCopy = self;
  v110 = contents;
  v108 = v29;
  v30 = objc_retainBlock(v107);
  object = [(NTKPromise *)self->_mtlSolidPipelineState object];
  [v29 setRenderPipelineState:object];

  if ([(NSOrderedSet *)self->_sectors count])
  {
    v32 = 0;
    do
    {
      v33 = [(NSOrderedSet *)self->_sectors objectAtIndexedSubscript:v32];
      type = [v33 type];

      if (type)
      {
        (v30[2])(v30, v32);
      }

      ++v32;
    }

    while ([(NSOrderedSet *)self->_sectors count]> v32);
  }

  v35 = self->_renderingMode;
  if (!v35 || v35 == 3)
  {
    object2 = [(NTKPromise *)self->_mtlGradientPipelineState object];
    [v29 setRenderPipelineState:object2];
  }

  if ([(NSOrderedSet *)self->_sectors count])
  {
    v37 = 0;
    do
    {
      v38 = [(NSOrderedSet *)self->_sectors objectAtIndexedSubscript:v37];
      type2 = [v38 type];

      if (!type2)
      {
        (v30[2])(v30, v37);
      }

      ++v37;
    }

    while ([(NSOrderedSet *)self->_sectors count]> v37);
  }

  if (!self->_renderingMode)
  {
    if (self->_shouldDrawGlowPath)
    {
      if (self->_glowStartAngle == self->_glowEndAngle || self->_litProgress <= 0.0)
      {
        v41 = 0;
      }

      else
      {
        object3 = [(NTKPromise *)self->_mtlGlowPipelineState object];
        [v29 setRenderPipelineState:object3];

        v41 = 1;
        [v29 setFragmentBytes:&self->_orbitDiameter length:4 atIndex:1];
        v42 = +[CLKDevice currentDevice];
        [v42 screenScale];
        v44 = 1.0 / v43 / self->_size.width;

        v97.f32[0] = v44;
        [v29 setFragmentBytes:&v97 length:4 atIndex:2];
        (v30[2])(v30, 17);
      }
    }

    else
    {
      v41 = 0;
    }

    object4 = [(NTKPromise *)self->_mtlSpritePipelineState object];
    [v29 setRenderPipelineState:object4];

    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_194B8;
    v105[3] = &unk_2CE40;
    v105[4] = self;
    v106 = v29;
    v46 = objc_retainBlock(v105);
    v47 = v46;
    if (v41)
    {
      __asm { FMOV            V1.4S, #1.0 }

      (v46[2])(v46, self->_gnomonTexture, 1, 1, self->_glowStartAngle + 1.57079633, _Q1);
    }

    [(NTKSiderealData *)self->_currentData altitudeForProgress:self->_dayProgress];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    [(NTKAltitudeColorCurve *)self->_nightColorCurve rgbfColorForAltitude:?];
    CLKUIConvertToXRSRGBfFromRGBf();
    v92 = v59;
    v59.n128_u32[0] = v54;
    LODWORD(v60) = v56;
    LODWORD(v61) = v58;
    [(NTKAltitudeColorCurve *)self->_bloomColorCurve rgbfColorForAltitude:v59.n128_f64[0], v60, v61];
    CLKUIConvertToXRSRGBfFromRGBf();
    v62.n128_u32[3] = 0.75;
    v91 = v62;
    v62.n128_f32[0] = self->_glowEndAngle + 1.57079633;
    v63 = v62.n128_f32[0];
    __asm { FMOV            V1.4S, #1.0 }

    v93 = _Q1;
    (v47)[2](v47, self->_dayGnomonTexture, 1, 0, v62.n128_f32[0]);
    (v47[2])(v47, self->_dayDiskBloomTexture, 1, 0, v63, v91);
    (v47[2])(v47, self->_nightGnomonTexture, 0, 0, v63, v93);
    (v47[2])(v47, self->_nightDiskTexture, 0, 0, v63, v92);
    (v47[2])(v47, self->_nightRingTexture, 0, 1, v63, v93);
    (v47[2])(v47, self->_dayDiskTexture, 1, 0, v63, v93);
  }

  [v29 endEncoding];
  if (!self->_renderingMode)
  {
    v65 = self->_dayProgress * -3.14159265 * 2.0 + 1.57079633;
    v66 = __sincosf_stret(v65);
    v67 = vmul_n_f32(__PAIR64__(LODWORD(v66.__sinval), LODWORD(v66.__cosval)), self->_blurOrbitRadius);
    [(CLKDevice *)self->_clkDevice screenScale];
    *&v68 = v68;
    v69 = self->_size.width * 0.5;
    *&v69 = v69;
    v70 = vmul_n_f32(vdiv_f32(vmul_n_f32(v67, *&v68), vdup_lane_s32(*&v69, 0)), self->_blurScale);
    v71 = self->_blurRadius + 26.5;
    [(CLKDevice *)self->_clkDevice screenScale];
    *v73.i32 = v71 * v72 / (self->_size.width * 0.5) * self->_blurScale;
    v94 = v73.i32[0];
    __asm { FMOV            V1.2S, #-1.0 }

    v75 = vmla_n_f32(v70, *&_D1, *v73.i32);
    __asm { FMOV            V2.2S, #1.0 }

    v77 = vmla_n_f32(v70, COERCE_FLOAT32X2_T(-_D2), *v73.i32);
    v78 = vmla_n_f32(v70, COERCE_FLOAT32X2_T(-_D1), *v73.i32);
    v79 = vadd_f32(v70, vdup_lane_s32(v73, 0));
    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_verticalBlurPassDescriptor colorAttachments];
    v81 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v81 setTexture:self->_verticalBlurBuffer];

    v82 = [bufferCopy renderCommandEncoderWithDescriptor:self->_verticalBlurPassDescriptor];
    object5 = [(NTKPromise *)self->_mtlBlurPipelineState object];
    [v82 setRenderPipelineState:object5];

    v97 = v75;
    v98 = v77;
    v99 = v78;
    v100 = v79;
    v103 = v94;
    v104 = 0;
    v84 = 2.0 / self->_size.width;
    LODWORD(v85) = 0;
    *(&v85 + 1) = v84;
    v101 = v70;
    v102 = v85;
    [v82 setVertexBytes:&v97 length:56 atIndex:2];
    [v82 setFragmentTexture:self->_offscreenBuffer atIndex:3];
    [v82 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v82 endEncoding];

    colorAttachments3 = [(MTLRenderPassDescriptor *)self->_horizontalBlurPassDescriptor colorAttachments];
    v87 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v87 setTexture:self->_horizontalBlurBuffer];

    v88 = [bufferCopy renderCommandEncoderWithDescriptor:self->_horizontalBlurPassDescriptor];
    object6 = [(NTKPromise *)self->_mtlBlurPipelineState object];
    [v88 setRenderPipelineState:object6];

    v97 = v75;
    v98 = v77;
    v99 = v78;
    v100 = v79;
    v103 = v94;
    v104 = 0;
    *&v90 = 2.0 / self->_size.width;
    v101 = v70;
    v102 = v90;
    [v88 setVertexBytes:&v97 length:56 atIndex:2];
    [v88 setFragmentTexture:self->_verticalBlurBuffer atIndex:3];
    [v88 drawPrimitives:4 vertexStart:0 vertexCount:4];
    [v88 endEncoding];
  }
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  object = [(NTKPromise *)self->_mtlCompositePipelineState object];
  [encoderCopy setRenderPipelineState:object];

  __asm
  {
    FMOV            V0.2S, #-1.0
    FMOV            V1.2S, #1.0
  }

  *v23 = _D0;
  *&v23[1] = -_D1;
  *&v23[2] = -_D0;
  *&v23[3] = _D1;
  *&_D0 = self->_dayProgress * -3.14159265 * 2.0 + 1.57079633;
  v12 = __sincosf_stret(*&_D0);
  v13 = vmul_n_f32(__PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)), self->_blurOrbitRadius);
  [(CLKDevice *)self->_clkDevice screenScale];
  *&v14 = v14;
  v15 = self->_size.width * 0.5;
  *&v15 = v15;
  v23[4] = vmul_n_f32(vdiv_f32(vmul_n_f32(v13, *&v14), vdup_lane_s32(*&v15, 0)), self->_blurScale);
  v16 = -1.0;
  if (!self->_renderingMode)
  {
    blurRadius = self->_blurRadius;
    [(CLKDevice *)self->_clkDevice screenScale];
    v16 = v18 * blurRadius / (self->_size.width * 0.5) * self->_blurScale;
  }

  v26 = 0;
  v24 = v16;
  litProgress = self->_litProgress;
  CLKInterpolateBetweenFloatsClipped();
  *&v20 = v20;
  v25 = LODWORD(v20);
  v21 = self->_litProgress;
  CLKInterpolateBetweenFloatsClipped();
  *&v22 = v22;
  LODWORD(v26) = LODWORD(v22);
  [encoderCopy setVertexBytes:v23 length:56 atIndex:3];
  [encoderCopy setFragmentTexture:self->_horizontalBlurBuffer atIndex:5];
  [encoderCopy setFragmentTexture:self->_offscreenBuffer atIndex:4];
  [encoderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
}

@end