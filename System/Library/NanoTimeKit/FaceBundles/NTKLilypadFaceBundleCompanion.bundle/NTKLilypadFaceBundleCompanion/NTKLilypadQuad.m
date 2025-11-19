@interface NTKLilypadQuad
- (BOOL)prepareForTime:(double)a3;
- (LilypadNoiseConfig)noiseConfigForPosition:(double)a3 atTime:;
- (NTKLilypadPhysicsBodies)_bodiesForTime:(NTKLilypadTime *)a3;
- (NTKLilypadQuad)initWithDevice:(id)a3;
- (double)createMatrixForTextureWithSize:(float32x2_t)a1 translation:(double)a2 scale:(float)a3 rotate:(float)a4 xOffset:(float)a5;
- (float)textureOriginForDigit:(unsigned int)a3;
- (float)textureSizeForDigit:(unsigned int)a3;
- (id)_generateNoiseTextureInRect:(CGRect)a3 device:(id)a4;
- (id)_wallBodies;
- (void)_createPhysicsWorld;
- (void)_resetTimeBodiesToDefaultPositions;
- (void)_updateTimeBodiesFromTime:(NTKLilypadTime *)a3 toTime:(NTKLilypadTime *)a4;
- (void)loadTextures;
- (void)performOffscreenPassesWithCommandBuffer:(id)a3;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)renderTimeToRenderEncoder:(id)a3;
- (void)setDeviceMotion:(id)a3;
- (void)setThreadVibrations:(NTKLilypadThreadVibrations *)a3;
- (void)setTime:(NTKLilypadTime *)a3;
- (void)setupForQuadView:(id)a3;
@end

@implementation NTKLilypadQuad

- (NTKLilypadQuad)initWithDevice:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NTKLilypadQuad;
  v6 = [(NTKLilypadQuad *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v8 = dispatch_semaphore_create(3);
    renderSemaphore = v7->_renderSemaphore;
    v7->_renderSemaphore = v8;

    v7->_currentBufferIndex = 0;
    v7->_tritiumProgress = 1.0;
    v7->_currentMotionAmount = 0.0;
    v10 = +[CLKUIMetalResourceManager sharedDevice];
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = v10;

    v7->_startTime = CACurrentMediaTime();
  }

  return v7;
}

- (void)setupForQuadView:(id)a3
{
  v4 = a3;
  [(CLKDevice *)self->_device screenBounds];
  v6 = v5;
  [(CLKDevice *)self->_device screenScale];
  self->_screenWidth = (v6 * v7);
  [(CLKDevice *)self->_device screenBounds];
  v9 = v8;
  [(CLKDevice *)self->_device screenScale];
  v11 = v9 * v10;
  v12 = v11;
  self->_screenHeight = v11;
  LOWORD(v11) = self->_screenWidth;
  *&v13 = LODWORD(v11);
  *(&v13 + 1) = v12;
  *self->_targetSize = v13;
  self->_digitScale = (LODWORD(v11) * 1.8) / 396.0;
  [(NTKLilypadQuad *)self _createPhysicsWorld];
  v14 = +[CLKUIMetalResourceManager sharedDevice];
  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v14 newDefaultLibraryWithBundle:v15 error:0];

  v17 = [v16 newFunctionWithName:@"lilypad_vertex_shader"];
  v18 = [v16 newFunctionWithName:@"lilypad_fragment_shader"];
  v19 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v19 setLabel:@"LilypadTimePipeline"];
  [v19 setVertexFunction:v17];
  [v19 setFragmentFunction:v18];
  v98 = v4;
  v20 = [v4 colorPixelFormat];
  v21 = [v19 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript:0];
  [v22 setPixelFormat:v20];

  v23 = [v19 colorAttachments];
  v24 = [v23 objectAtIndexedSubscript:0];
  [v24 setBlendingEnabled:1];

  v25 = [v19 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript:0];
  [v26 setRgbBlendOperation:0];

  v27 = [v19 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript:0];
  [v28 setAlphaBlendOperation:0];

  v29 = [v19 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript:0];
  [v30 setSourceRGBBlendFactor:4];

  v31 = [v19 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript:0];
  [v32 setSourceAlphaBlendFactor:4];

  v33 = [v19 colorAttachments];
  v34 = [v33 objectAtIndexedSubscript:0];
  [v34 setDestinationRGBBlendFactor:5];

  v35 = [v19 colorAttachments];
  v36 = [v35 objectAtIndexedSubscript:0];
  [v36 setDestinationAlphaBlendFactor:5];

  v101 = 0;
  v37 = [v14 newRenderPipelineStateWithDescriptor:v19 error:&v101];
  v38 = v101;
  timeRenderPipelineState = self->_timeRenderPipelineState;
  self->_timeRenderPipelineState = v37;

  if (v38)
  {
    v40 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_63D0(v38);
    }
  }

  v41 = [v16 newFunctionWithName:@"lilypad_strand_compute_shader"];
  v100 = 0;
  v42 = [v14 newComputePipelineStateWithFunction:v41 error:&v100];
  v43 = v100;
  strandsComputePipelineState = self->_strandsComputePipelineState;
  self->_strandsComputePipelineState = v42;

  if (v43)
  {
    v45 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_6458(v43);
    }
  }

  v46 = [v16 newFunctionWithName:@"lilypad_strand_vertex_shader"];
  v47 = [v16 newFunctionWithName:@"lilypad_strand_fragment_shader"];
  v48 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v48 setLabel:@"LilypadStrandPipeline"];
  [v48 setVertexFunction:v46];
  [v48 setFragmentFunction:v47];
  v49 = [v98 colorPixelFormat];
  v50 = [v48 colorAttachments];
  v51 = [v50 objectAtIndexedSubscript:0];
  [v51 setPixelFormat:v49];

  v52 = [v48 colorAttachments];
  v53 = [v52 objectAtIndexedSubscript:0];
  [v53 setBlendingEnabled:1];

  v54 = [v48 colorAttachments];
  v55 = [v54 objectAtIndexedSubscript:0];
  [v55 setRgbBlendOperation:0];

  v56 = [v48 colorAttachments];
  v57 = [v56 objectAtIndexedSubscript:0];
  [v57 setAlphaBlendOperation:0];

  v58 = [v48 colorAttachments];
  v59 = [v58 objectAtIndexedSubscript:0];
  [v59 setSourceRGBBlendFactor:4];

  v60 = [v48 colorAttachments];
  v61 = [v60 objectAtIndexedSubscript:0];
  [v61 setSourceAlphaBlendFactor:0];

  v62 = [v48 colorAttachments];
  v63 = [v62 objectAtIndexedSubscript:0];
  [v63 setDestinationRGBBlendFactor:5];

  v64 = [v48 colorAttachments];
  v65 = [v64 objectAtIndexedSubscript:0];
  [v65 setDestinationAlphaBlendFactor:1];

  v99 = 0;
  v66 = [v14 newRenderPipelineStateWithDescriptor:v48 error:&v99];
  v67 = v99;
  strandsRenderPipelineState = self->_strandsRenderPipelineState;
  self->_strandsRenderPipelineState = v66;

  if (v67)
  {
    v69 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      sub_64E0(v67);
    }
  }

  v97 = v16;

  v70 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:10 width:self->_screenWidth / 3u height:self->_screenHeight / 3u mipmapped:0];
  [v70 setUsage:5];
  v71 = sub_6274([v70 setStorageMode:2], self->_device);
  v72 = v71;
  v73 = 0;
  v74 = 4 * v71 * HIDWORD(v71);
  do
  {
    v75 = [v14 newTextureWithDescriptor:v70];
    v76 = self->_timeBuffer[v73];
    self->_timeBuffer[v73] = v75;

    v77 = [v14 newBufferWithLength:v74 options:32];
    v78 = self->_strandBuffer[v73];
    self->_strandBuffer[v73] = v77;

    ++v73;
  }

  while (v73 != 3);
  v79 = +[MTLRenderPassDescriptor renderPassDescriptor];
  v80 = [v79 colorAttachments];
  v81 = [v80 objectAtIndexedSubscript:0];

  [v81 setLoadAction:2];
  [v81 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  [v81 setStoreAction:1];
  objc_storeStrong(&self->_timePassDescriptor, v79);
  v82 = [v14 newBufferWithLength:16 * v72 options:0];
  lightColors = self->_lightColors;
  self->_lightColors = v82;

  v84 = [v14 newBufferWithLength:16 * v72 options:0];
  darkColors = self->_darkColors;
  self->_darkColors = v84;

  v86 = [(MTLBuffer *)self->_lightColors contents];
  v87 = [(MTLBuffer *)self->_darkColors contents];
  if (v72 >= 1)
  {
    v88 = v87;
    v89 = &xmmword_8A20;
    v90 = v72 & 0x7FFFFFFF;
    v91 = &xmmword_8920;
    do
    {
      v92 = *v91++;
      CLKUIConvertToRGBfFromSRGBf_fast();
      *v86++ = v93;
      v94 = *v89++;
      CLKUIConvertToRGBfFromSRGBf_fast();
      *v88++ = v95;
      --v90;
    }

    while (v90);
  }

  for (i = 0; i != 16; ++i)
  {
    *&self->_noiseOrigins[i * 8] = qword_8B20[i];
    *&self->_noiseDirections[i * 8] = qword_8BA0[i];
  }

  [(NTKLilypadQuad *)self loadTextures];
}

- (void)loadTextures
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [UIImage imageNamed:@"DigitSprites" inBundle:v3 withConfiguration:0];

  v4 = CLKUIConvertUIImageToMTLTexture();
  blitDigits = self->_blitDigits;
  self->_blitDigits = v4;

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [UIImage imageNamed:@"CurveFunction-75" inBundle:v6 withConfiguration:0];

  v8 = CLKUIConvertUIImageToMTLTexture();
  blitFunction = self->_blitFunction;
  self->_blitFunction = v8;

  v10 = [(NTKLilypadQuad *)self _generateNoiseTextureInRect:self->_mtlDevice device:0.0, 0.0, 15.0, 15.0];
  blitNoise = self->_blitNoise;
  self->_blitNoise = v10;
}

- (float)textureOriginForDigit:(unsigned int)a3
{
  if (a3 >= 0xA)
  {
    sub_6568();
  }

  return dword_8C20[a3];
}

- (float)textureSizeForDigit:(unsigned int)a3
{
  if (a3 >= 0xA)
  {
    sub_6594();
  }

  return (dword_8C20[a3 + 1] + ~dword_8C20[a3]);
}

- (void)setTime:(NTKLilypadTime *)a3
{
  p_time = &self->_time;
  time = self->_time;
  v6 = *a3;
  [(NTKLilypadQuad *)self _updateTimeBodiesFromTime:&time toTime:&v6];
  v5 = *&a3->fromHour;
  p_time->fraction = a3->fraction;
  *&p_time->fromHour = v5;
}

- (void)setThreadVibrations:(NTKLilypadThreadVibrations *)a3
{
  v3 = *&a3->vibrations[12];
  v5 = *a3->vibrations;
  v4 = *&a3->vibrations[4];
  *&self->_vibrations.vibrations[8] = *&a3->vibrations[8];
  *&self->_vibrations.vibrations[12] = v3;
  *self->_vibrations.vibrations = v5;
  *&self->_vibrations.vibrations[4] = v4;
}

- (void)setDeviceMotion:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (v4)
  {
    [v4 userAcceleration];
    v6.f64[1] = v5;
    v11 = v6;
    [v12 gravity];
    v8.f64[1] = v7;
    *self->_motionForce = vneg_f32(vcvt_f32_f64(vmlaq_f64(v11, vdupq_n_s64(0x3F747AE147AE147BuLL), v8)));
    [v12 rotationRate];
    v10 = v9;
    self->_motionTorque = v10;
  }

  else
  {
    [(NTKLilypadQuad *)self _resetTimeBodiesToDefaultPositions];
  }
}

- (void)_createPhysicsWorld
{
  v3 = objc_alloc_init(PKPhysicsWorld);
  time = self->_time;
  v4 = [(NTKLilypadQuad *)self _bodiesForTime:&time];
  v6 = v5;
  v7 = [(NTKLilypadQuad *)self _wallBodies];
  [v3 addBody:v4];
  [v3 addBody:v6];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [v3 addBody:{*(*(&v12 + 1) + 8 * v11), v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  [v3 setGravity:{0.0, 0.0}];
  objc_storeStrong(&self->_world, v3);
  objc_storeStrong(&self->_minuteBody, v4);
  objc_storeStrong(&self->_hourBody, v6);
  [(NTKLilypadQuad *)self _resetTimeBodiesToDefaultPositions];
}

- (void)_updateTimeBodiesFromTime:(NTKLilypadTime *)a3 toTime:(NTKLilypadTime *)a4
{
  if (*&a3->fromHour != *&a4->fromHour)
  {
    v8 = *a4;
    v5 = [(NTKLilypadQuad *)self _bodiesForTime:&v8];
    v7 = v6;
    [(PKPhysicsBody *)self->_hourBody position];
    [v7 setPosition:?];
    [(PKPhysicsBody *)self->_hourBody velocity];
    [v7 setVelocity:?];
    [(PKPhysicsBody *)self->_hourBody rotation];
    [v7 setRotation:?];
    [(PKPhysicsBody *)self->_hourBody angularVelocity];
    [v7 setAngularVelocity:?];
    [(PKPhysicsBody *)self->_minuteBody position];
    [v5 setPosition:?];
    [(PKPhysicsBody *)self->_minuteBody velocity];
    [v5 setVelocity:?];
    [(PKPhysicsBody *)self->_minuteBody rotation];
    [v5 setRotation:?];
    [(PKPhysicsBody *)self->_minuteBody angularVelocity];
    [v5 setAngularVelocity:?];
    [(PKPhysicsWorld *)self->_world removeBody:self->_hourBody];
    [(PKPhysicsWorld *)self->_world removeBody:self->_minuteBody];
    objc_storeStrong(&self->_hourBody, v7);
    objc_storeStrong(&self->_minuteBody, v5);
    [(PKPhysicsWorld *)self->_world addBody:self->_hourBody];
    [(PKPhysicsWorld *)self->_world addBody:self->_minuteBody];
  }
}

- (NTKLilypadPhysicsBodies)_bodiesForTime:(NTKLilypadTime *)a3
{
  v4 = 0;
  v5 = 0;
  fromHour = a3->fromHour;
  fromMinute = a3->fromMinute;
  v36[0] = fromMinute % 10;
  v36[1] = fromMinute / 10;
  v30 = fromHour;
  v36[2] = fromHour % 10;
  v36[3] = fromHour / 10;
  v34 = 0u;
  v35 = 0u;
  do
  {
    v8 = v36[v5];
    [(NTKLilypadQuad *)self textureSizeForDigit:v8];
    v10 = *&v9;
    *&v11 = self->_digitScale;
    *&v12 = ((1 - (v4 & 2)) * flt_8C4C[v8]) + 0.0;
    [(NTKLilypadQuad *)self createMatrixForTextureWithSize:v9 translation:0.0 scale:v11 rotate:0.0 xOffset:v12];
    v13 = vmla_f32(0x41B0000041700000, 0, v10);
    v17 = *self->_targetSize;
    v18 = vdiv_f32(vadd_f32(v16, *&vmlaq_lane_f32(vmulq_n_f32(v14, v13.f32[0]), v15, v13, 1)), v17);
    v19 = vadd_f32(v10, 0xC1B00000C1700000);
    *v14.f32 = vdiv_f32(vadd_f32(v16, *&vmlaq_lane_f32(vmulq_n_f32(v14, v19.f32[0]), v15, v19, 1)), v17);
    v20 = [PKPhysicsBody bodyWithRectangleOfSize:vcvtq_f64_f32(vsub_f32(*v14.f32 center:v18)), vcvtq_f64_f32(vmul_f32(vadd_f32(v18, *v14.f32), 0x3F0000003F000000))];
    [v20 setCategoryBitMask:1];
    [v20 setCollisionBitMask:1];
    v21 = *(&v34 + v5);
    *(&v34 + v5) = v20;

    ++v5;
    v4 += 2;
  }

  while (v5 != 4);
  if (self->_is24hour || (v30 - 10) < 0xFFFFFFED)
  {
    v32 = v35;
    v22 = [NSArray arrayWithObjects:&v32 count:2];
    v23 = [PKPhysicsBody bodyWithBodies:v22];
  }

  else
  {
    v33 = v35;
    v22 = [NSArray arrayWithObjects:&v33 count:1];
    v23 = [PKPhysicsBody bodyWithBodies:v22];
  }

  v24 = v23;

  v31 = v34;
  v25 = [NSArray arrayWithObjects:&v31 count:2];
  v26 = [PKPhysicsBody bodyWithBodies:v25];

  [v24 setDynamic:1];
  [v24 setMass:10.0];
  [v24 setCategoryBitMask:1];
  [v24 setCollisionBitMask:1];
  [v24 setLinearDamping:0.400000006];
  [v24 setAngularDamping:0.25];
  [v26 setDynamic:1];
  [v26 setMass:10.0];
  [v26 setCategoryBitMask:1];
  [v26 setCollisionBitMask:1];
  [v26 setLinearDamping:0.400000006];
  [v26 setAngularDamping:0.25];
  for (i = 24; i != -8; i -= 8)
  {
  }

  v28 = v26;
  v29 = v24;
  result.var1 = v29;
  result.var0 = v28;
  return result;
}

- (void)_resetTimeBodiesToDefaultPositions
{
  [(PKPhysicsBody *)self->_hourBody setPosition:0.550000012, 0.720000029];
  [(PKPhysicsBody *)self->_hourBody setRotation:-0.17453292];
  [(PKPhysicsBody *)self->_hourBody setVelocity:0.0, 0.0];
  [(PKPhysicsBody *)self->_hourBody setAngularVelocity:0.0];
  [(PKPhysicsBody *)self->_minuteBody setPosition:0.449999988, 0.270000011];
  [(PKPhysicsBody *)self->_minuteBody setRotation:-0.17453292];
  [(PKPhysicsBody *)self->_minuteBody setVelocity:0.0, 0.0];
  minuteBody = self->_minuteBody;

  [(PKPhysicsBody *)minuteBody setAngularVelocity:0.0];
}

- (id)_wallBodies
{
  v2 = [PKPhysicsBody bodyWithRectangleOfSize:1.0 center:1.0, -0.5, 0.5];
  v3 = [PKPhysicsBody bodyWithRectangleOfSize:1.0 center:1.0, 1.5, 0.5];
  v4 = [PKPhysicsBody bodyWithRectangleOfSize:1.0 center:1.0, 0.5, 1.5];
  v5 = [PKPhysicsBody bodyWithRectangleOfSize:1.0 center:1.0, 0.5, -0.5];
  v18[0] = v2;
  v18[1] = v3;
  v18[2] = v4;
  v18[3] = v5;
  [NSArray arrayWithObjects:v18 count:4];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 setDynamic:{0, v13}];
        [v11 setPinned:1];
        [v11 setMass:100.0];
        [v11 setCollisionBitMask:1];
        [v11 setCategoryBitMask:1];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)_generateNoiseTextureInRect:(CGRect)a3 device:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v9 = objc_opt_new();
  [v9 setPixelFormat:10];
  [v9 setWidth:128];
  [v9 setHeight:128];
  [v9 setMipmapLevelCount:1];
  [v9 setTextureType:2];
  [v9 setUsage:1];
  [v9 setStorageMode:2];
  v10 = [v8 newTextureWithDescriptor:v9];
  v11 = [v8 newBufferWithLength:0x4000 options:0];

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_4DE8;
  v23 = &unk_C4C0;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  v29 = width;
  v30 = height;
  v28 = [v11 contents];
  NTKHighPriorityApply();
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4EA0;
  v17[3] = &unk_C4E8;
  v18 = v11;
  v19 = v10;
  v12 = v10;
  v13 = v11;
  v14 = objc_retainBlock(v17);
  v15 = objc_retainBlock(v14);

  return v15;
}

- (LilypadNoiseConfig)noiseConfigForPosition:(double)a3 atTime:
{
  snoise4();
  snoise4();
  snoise4();
  return v3;
}

- (double)createMatrixForTextureWithSize:(float32x2_t)a1 translation:(double)a2 scale:(float)a3 rotate:(float)a4 xOffset:(float)a5
{
  __asm { FMOV            V0.4S, #1.0 }

  v30 = _Q0;
  *_Q0.i64 = a2;
  v27 = _Q0;
  v13 = __sincosf_stret(a4);
  *v12.i32 = v13.__cosval;
  *v11.i32 = v13.__sinval;
  v14 = 0;
  v15.i32[3] = 0;
  v15.i64[0] = LODWORD(v13.__cosval);
  *&v15.i32[2] = -v13.__sinval;
  v31 = vzip1q_s32(v15, v11);
  v32 = vzip2q_s32(v15, vdupq_lane_s32(v12, 0));
  v33 = xmmword_88F0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  do
  {
    *(&v34 + v14) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_8900, COERCE_FLOAT(*(&v31 + v14))), xmmword_8910, *&v31.i8[v14], 1), v27, *(&v31 + v14), 2);
    v14 += 16;
  }

  while (v14 != 48);
  v16 = 0;
  v17 = v34;
  v18 = v35;
  v19 = v36;
  LODWORD(v20) = 0;
  *(&v20 + 1) = a3;
  v31 = LODWORD(a3);
  v32 = v20;
  v33 = xmmword_88F0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  do
  {
    *(&v34 + v16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v31 + v16))), v18, *&v31.i8[v16], 1), v19, *(&v31 + v16), 2);
    v16 += 16;
  }

  while (v16 != 48);
  v21 = 0;
  v22 = v34;
  v23 = v35;
  v24.i64[0] = 1065353216;
  v24.u64[1] = vmla_f32(LODWORD(a5), 0xBF000000BF000000, a1);
  v25 = v36;
  *v19.f32 = vdup_lane_s32(v24.u64[1], 1);
  v31 = COERCE_UNSIGNED_INT(1.0);
  v32 = xmmword_8910;
  v33 = vzip1q_s32(vzip2q_s32(v24, v30), v19);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  do
  {
    *(&v34 + v21) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v31 + v21))), v23, *&v31.i8[v21], 1), v25, *(&v31 + v21), 2);
    v21 += 16;
  }

  while (v21 != 48);
  return *v34.i64;
}

- (BOOL)prepareForTime:(double)a3
{
  renderSemaphore = self->_renderSemaphore;
  v5 = dispatch_time(0, 33333333);
  v6 = dispatch_semaphore_wait(renderSemaphore, v5);
  if (!v6)
  {
    v7 = self->_tritiumProgress * self->_motionSuppression;
    currentMotionAmount = self->_currentMotionAmount;
    if (currentMotionAmount <= v7)
    {
      v7 = v7 * 0.02 + currentMotionAmount * 0.98;
    }

    self->_currentMotionAmount = v7;
    v9 = CACurrentMediaTime();
    v10 = [(NTKLilypadQuad *)self noiseConfigForPosition:0.000371093919 atTime:v9 + 0.0];
    v12 = v11;
    v13 = [(NTKLilypadQuad *)self noiseConfigForPosition:0.000000195503304 atTime:v9 + -1.0];
    v15 = v14;
    v16 = vmul_f32(*self->_motionForce, vdup_n_s32(0x42960000u));
    v17 = vmul_f32(v16, v16);
    v17.f32[0] = sqrtf(vaddv_f32(v17));
    if (v17.f32[0] > 5.0 && v17.f32[0] > 0.0)
    {
      __asm { FMOV            V2.2S, #5.0 }

      v16 = vmul_f32(vdiv_f32(v16, vdup_lane_s32(v17, 0)), _D2);
    }

    v21 = vdup_n_s32(0x3EAA7EFAu);
    v38 = vmul_f32(v13, v21);
    v39 = vmul_f32(v10, v21);
    [(PKPhysicsBody *)self->_minuteBody position];
    v23.f64[1] = v22;
    __asm { FMOV            V14.2S, #17.0 }

    v37 = vmul_f32(vadd_f32(vcvt_f32_f64(v23), 0xBE8A3D71BEE66666), _D14);
    [(PKPhysicsBody *)self->_hourBody position];
    *&v26.f64[1] = v27.i64[0];
    *&v26.f64[0] = vadd_f32(vcvt_f32_f64(v26), 0xBF3851ECBF0CCCCDLL);
    v25 = vmul_f32(*&v26.f64[0], _D14);
    *v26.f64 = self->_motionTorque * -0.00001;
    v27.i32[1] = 0;
    _VF = fabsf(*v26.f64) <= 6.0 || *v26.f64 == 0.0;
    v27.i32[0] = 1.0;
    v30.i64[0] = 0x8000000080000000;
    v30.i64[1] = 0x8000000080000000;
    *v27.i32 = *vbslq_s8(v30, v27, v26).i32 * 6.0;
    if (_VF)
    {
      v31 = self->_motionTorque * -0.00001;
    }

    else
    {
      v31 = *v27.i32;
    }

    [(PKPhysicsBody *)self->_minuteBody rotation];
    v33 = (v32 + 0.17453292) * -0.0000999999975;
    [(PKPhysicsBody *)self->_hourBody rotation];
    *&v34 = (v34 + 0.17453292) * -0.0000999999975;
    v35 = ((v12 * 0.00001) + v31) + *&v34;
    [(PKPhysicsBody *)self->_minuteBody applyForce:vcvtq_f64_f32(vsub_f32(vadd_f32(v38, v16), v37))];
    [(PKPhysicsBody *)self->_minuteBody applyTorque:(((v15 * 0.00001) + v31) + v33)];
    [(PKPhysicsBody *)self->_hourBody applyForce:vcvtq_f64_f32(vsub_f32(vadd_f32(v39, v16), v25))];
    [(PKPhysicsBody *)self->_hourBody applyTorque:v35];
    [(PKPhysicsWorld *)self->_world stepWithTime:1 velocityIterations:1 positionIterations:0.0166666667];
  }

  return v6 == 0;
}

- (void)renderTimeToRenderEncoder:(id)a3
{
  v4 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_57AC;
  v14[3] = &unk_C510;
  v14[4] = self;
  v5 = objc_retainBlock(v14);
  [v4 setRenderPipelineState:self->_timeRenderPipelineState];
  [v4 setFragmentTexture:self->_digitsTex atIndex:0];
  fromHour = self->_time.fromHour;
  fromMinute = self->_time.fromMinute;
  v16 = fromMinute % 10;
  v17 = fromMinute / 10;
  v18 = fromHour % 10;
  v19 = fromHour / 10;
  (v5[2])(v5, v15, &v16, 1.0 - self->_time.fraction);
  v8 = 3;
  if (v19)
  {
    v8 = 4;
  }

  if (self->_is24hour)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  [v4 setVertexBytes:v15 length:384 atIndex:0];
  [v4 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:v9];
  if (self->_time.fraction != 0.0)
  {
    toHour = self->_time.toHour;
    toMinute = self->_time.toMinute;
    v16 = toMinute % 10;
    v17 = toMinute / 10;
    v18 = toHour % 10;
    v19 = toHour / 10;
    (v5[2])(v5, v15, &v16);
    v12 = 3;
    if (v19)
    {
      v12 = 4;
    }

    if (self->_is24hour)
    {
      v13 = 4;
    }

    else
    {
      v13 = v12;
    }

    [v4 setVertexBytes:v15 length:384 atIndex:0];
    [v4 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:v13];
  }
}

- (void)performOffscreenPassesWithCommandBuffer:(id)a3
{
  v4 = a3;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_5EA8;
  v46[3] = &unk_C538;
  v46[4] = self;
  [v4 addCompletedHandler:v46];
  blitDigits = self->_blitDigits;
  if (blitDigits)
  {
    v8 = blitDigits[2](blitDigits, v4);
    digitsTex = self->_digitsTex;
    self->_digitsTex = v8;

    v10 = self->_blitDigits;
    self->_blitDigits = 0;
  }

  blitFunction = self->_blitFunction;
  if (blitFunction)
  {
    v12 = blitFunction[2](blitFunction, v4);
    functionTex = self->_functionTex;
    self->_functionTex = v12;

    v14 = self->_blitFunction;
    self->_blitFunction = 0;
  }

  blitNoise = self->_blitNoise;
  if (blitNoise)
  {
    v16 = blitNoise[2](blitNoise, v4);
    noiseTex = self->_noiseTex;
    self->_noiseTex = v16;

    v18 = self->_blitNoise;
    self->_blitNoise = 0;
  }

  LOWORD(v5) = self->_screenWidth;
  *&v19 = v5;
  LOWORD(v5) = self->_screenHeight;
  *(&v19 + 1) = v5;
  v20 = self->_timeBuffer[self->_currentBufferIndex];
  v21 = [(MTLRenderPassDescriptor *)self->_timePassDescriptor colorAttachments:v19];
  v22 = [v21 objectAtIndexedSubscript:0];
  [v22 setTexture:v20];

  v23 = [v4 renderCommandEncoderWithDescriptor:self->_timePassDescriptor];
  [(NTKLilypadQuad *)self renderTimeToRenderEncoder:v23];
  v24 = sub_6274([v23 endEncoding], self->_device);
  v25 = v24;
  v27 = v26;
  v28 = HIDWORD(v24);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v29 = CACurrentMediaTime();
  v30 = 0;
  *&v29 = v29 - self->_startTime;
  LODWORD(v43) = LODWORD(v29);
  *(&v43 + 1) = v37;
  LOWORD(v44) = v28;
  BYTE2(v44) = v25;
  tritiumProgress = self->_tritiumProgress;
  *(&v44 + 1) = v27;
  *(&v44 + 2) = SHIDWORD(v27);
  *&v29 = self->_colorMode;
  *(&v44 + 3) = tritiumProgress;
  LODWORD(v45) = LODWORD(v29);
  memset(v42, 0, sizeof(v42));
  v32 = v42;
  motionSuppression_low = LODWORD(self->_motionSuppression);
  memset(v41, 0, sizeof(v41));
  do
  {
    *(v41 + v30) = self->_vibrations.vibrations[v30] * *&motionSuppression_low;
    *(v32 - 16) = *&self->_noiseOrigins[8 * v30];
    *v32++ = *&self->_noiseDirections[8 * v30++];
  }

  while (v30 != 16);
  v34 = [v4 computeCommandEncoder];
  [v34 setComputePipelineState:self->_strandsComputePipelineState];
  [v34 setTexture:self->_timeBuffer[self->_currentBufferIndex] atIndex:0];
  [v34 setTexture:self->_functionTex atIndex:1];
  [v34 setTexture:self->_noiseTex atIndex:2];
  [v34 setBytes:&v43 length:40 atIndex:0];
  [v34 setBuffer:self->_strandBuffer[self->_currentBufferIndex] offset:0 atIndex:2];
  [v34 setBytes:v41 length:320 atIndex:1];
  v35 = [(MTLComputePipelineState *)self->_strandsComputePipelineState threadExecutionWidth];
  v36 = [(MTLComputePipelineState *)self->_strandsComputePipelineState maxTotalThreadsPerThreadgroup];
  v38[2] = 1;
  v39 = (v35 + v25 * v28 - 1) / v35;
  v40 = vdupq_n_s64(1uLL);
  v38[0] = v35;
  v38[1] = v36 / v35;
  [v34 dispatchThreadgroups:&v39 threadsPerThreadgroup:v38];
  [v34 endEncoding];
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  LOWORD(v3) = self->_screenWidth;
  *&v5 = v3;
  LOWORD(v3) = self->_screenHeight;
  *(&v5 + 1) = v3;
  v13 = v5;
  device = self->_device;
  v7 = a3;
  v8 = sub_6274(v7, device);
  LODWORD(device) = v8;
  v9 = HIDWORD(v8);
  v14[0] = 0;
  v15 = 0u;
  *v16 = 0;
  v14[1] = v13;
  LOWORD(v15) = WORD2(v8);
  BYTE2(v15) = v8;
  *(&v15 + 1) = v10;
  *(&v15 + 2) = v11;
  colorMode = self->_colorMode;
  HIDWORD(v15) = LODWORD(self->_tritiumProgress);
  v16[0] = colorMode;
  [v7 setRenderPipelineState:self->_strandsRenderPipelineState];
  [v7 setVertexBytes:v14 length:40 atIndex:0];
  [v7 setVertexBuffer:self->_lightColors offset:0 atIndex:1];
  [v7 setVertexBuffer:self->_darkColors offset:0 atIndex:2];
  [v7 setVertexBuffer:self->_strandBuffer[self->_currentBufferIndex] offset:0 atIndex:3];
  [v7 drawPrimitives:4 vertexStart:0 vertexCount:2 * v9 instanceCount:device];

  self->_currentBufferIndex = (self->_currentBufferIndex + 1) % 3;
}

@end