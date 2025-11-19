@interface NTKMagmaEffectsRenderer
- (BOOL)prepareForTime:(double)a3;
- (NTKMagmaEffectsRenderer)initWithDevice:(id)a3 library:(id)a4 width:(int)a5 height:(int)a6 screenScale:(float)a7 colorPixelFormat:(unint64_t)a8;
- (NTKMagmaEffectsRendererDelegate)delegate;
- (id)_binaryArchives;
- (id)_setupBackgroundRenderPipelineWithBinaryArchives:(id)a3;
- (id)_setupForegroundRenderPipelineWithBinaryArchives:(id)a3;
- (id)_setupPhysicsPipelineWithBinaryArchives:(id)a3;
- (id)dequeueAndPreparePhysicsInputBuffer;
- (id)meshForRect:(CGRect)a3 maxPitch:(double)a4;
- (void)_createBackgroundQuad;
- (void)_createMesh;
- (void)_createMeshBackgroundIndices;
- (void)_createMeshIndicesWithBounds:(id)a3 into:;
- (void)_createMeshVertices;
- (void)_createPhysicsBuffers;
- (void)_loadCollisionTexture;
- (void)_unsafe_updateSimInput;
- (void)applySpringImpulseWithBlock:(id)a3;
- (void)performOffscreenPassesWithCommandBuffer:(id)a3;
- (void)renderForDisplayWithEncoder:(id)a3;
- (void)resetSprings;
- (void)setScreenBoundRect:(CGRect)a3;
- (void)updateBackgroundTextureWithImage:(id)a3;
- (void)updateLogoTextureWithImage:(id)a3 origin:(CGPoint)a4;
- (void)updateTimeTextureWithImage:(id)a3 tritiumImage:(id)a4 origin:(CGPoint)a5;
@end

@implementation NTKMagmaEffectsRenderer

- (NTKMagmaEffectsRenderer)initWithDevice:(id)a3 library:(id)a4 width:(int)a5 height:(int)a6 screenScale:(float)a7 colorPixelFormat:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v27.receiver = self;
  v27.super_class = NTKMagmaEffectsRenderer;
  v17 = [(NTKMagmaEffectsRenderer *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_device, a3);
    objc_storeStrong(&v18->_library, a4);
    v18->_width = a5;
    v18->_height = a6;
    v18->_screenScale = a7;
    v18->_pixelFormat = a8;
    v19 = [(NTKMagmaEffectsRenderer *)v18 _binaryArchives];
    v20 = [(NTKMagmaEffectsRenderer *)v18 _setupBackgroundRenderPipelineWithBinaryArchives:v19];
    backgroundRenderPipelineState = v18->_backgroundRenderPipelineState;
    v18->_backgroundRenderPipelineState = v20;

    v22 = [(NTKMagmaEffectsRenderer *)v18 _setupForegroundRenderPipelineWithBinaryArchives:v19];
    foregroundRenderPipelineState = v18->_foregroundRenderPipelineState;
    v18->_foregroundRenderPipelineState = v22;

    v24 = [(NTKMagmaEffectsRenderer *)v18 _setupPhysicsPipelineWithBinaryArchives:v19];
    computePipelineState = v18->_computePipelineState;
    v18->_computePipelineState = v24;

    *&v18->_distortionMultiplier = xmmword_12210;
    v18->_inputLock._os_unfair_lock_opaque = 0;
    *v18->_fixedBounds = xmmword_12220;
    v18->_fixedBoundsDirty = 1;
    *&v18->_meshDim[7] = 0x6400000064;
    [(NTKMagmaEffectsRenderer *)v18 _createPhysicsBuffers];
    [(NTKMagmaEffectsRenderer *)v18 _createMesh];
    [(NTKMagmaEffectsRenderer *)v18 _createBackgroundQuad];
    [(NTKMagmaEffectsRenderer *)v18 _loadCollisionTexture];
  }

  return v18;
}

- (BOOL)prepareForTime:(double)a3
{
  bufferIndex = self->_bufferIndex;
  v5 = __OFADD__(bufferIndex++, 1);
  v6 = (bufferIndex < 0) ^ v5;
  v7 = bufferIndex & 1;
  if (v6)
  {
    v7 = -v7;
  }

  self->_bufferIndex = v7;
  v8 = [(NTKMagmaEffectsRenderer *)self delegate];
  [v8 magmaRendererPrepareForFrameWithTime:a3];

  return 1;
}

- (void)performOffscreenPassesWithCommandBuffer:(id)a3
{
  v4 = a3;
  timeTextureBlock = self->_timeTextureBlock;
  if (timeTextureBlock)
  {
    v6 = timeTextureBlock[2](timeTextureBlock, v4);
    primaryTexture = self->_primaryTexture;
    self->_primaryTexture = v6;

    v8 = self->_timeTextureBlock;
    self->_timeTextureBlock = 0;
  }

  tritiumTimeTextureBlock = self->_tritiumTimeTextureBlock;
  if (tritiumTimeTextureBlock)
  {
    v10 = tritiumTimeTextureBlock[2](tritiumTimeTextureBlock, v4);
    tritiumTimeTexture = self->_tritiumTimeTexture;
    self->_tritiumTimeTexture = v10;

    v12 = self->_tritiumTimeTextureBlock;
    self->_tritiumTimeTextureBlock = 0;
  }

  logoTextureBlock = self->_logoTextureBlock;
  if (logoTextureBlock)
  {
    v14 = logoTextureBlock[2](logoTextureBlock, v4);
    swooshTexture = self->_swooshTexture;
    self->_swooshTexture = v14;

    v16 = self->_logoTextureBlock;
    self->_logoTextureBlock = 0;
  }

  backgroundTextureBlock = self->_backgroundTextureBlock;
  if (backgroundTextureBlock)
  {
    v18 = backgroundTextureBlock[2](backgroundTextureBlock, v4);
    backgroundTexture = self->_backgroundTexture;
    self->_backgroundTexture = v18;

    v20 = self->_backgroundTextureBlock;
    self->_backgroundTextureBlock = 0;
  }

  v21 = [(CLKUIMetalResourcePool *)self->_springOffsetTexturePool dequeueReusableResourceForUseOnCommandBuffer:v4];
  springOffsetTexture = self->_springOffsetTexture;
  self->_springOffsetTexture = v21;

  v23 = [(CLKUIMetalResourcePool *)self->_meshOffsetTexturePool dequeueReusableResourceForUseOnCommandBuffer:v4];
  meshOffsetTexture = self->_meshOffsetTexture;
  self->_meshOffsetTexture = v23;

  if (LOBYTE(self->_springStiffness) == 1)
  {
    v25 = [v4 computeCommandEncoder];
    os_unfair_lock_lock(&self->_inputLock);
    bufferIndex = self->_bufferIndex;
    if (bufferIndex >= -1)
    {
      v27 = (bufferIndex + 1) & 1;
    }

    else
    {
      v27 = -((bufferIndex + 1) & 1);
    }

    [(NTKMagmaEffectsRenderer *)self _unsafe_updateSimInput];
    [v25 setComputePipelineState:self->_computePipelineState];
    [v25 setBuffer:self->_springBuffers[v27] offset:0 atIndex:0];
    [v25 setBuffer:self->_springBuffers[bufferIndex] offset:0 atIndex:1];
    [v25 setBuffer:self->_simUniforms offset:0 atIndex:3];
    [v25 setBuffer:self->_simInput offset:0 atIndex:2];
    [v25 setTexture:self->_correctionTexture atIndex:4];
    [v25 setTexture:self->_springOffsetTexture atIndex:5];
    v28 = [(MTLComputePipelineState *)self->_computePipelineState threadExecutionWidth];
    v29 = [(MTLComputePipelineState *)self->_computePipelineState maxTotalThreadsPerThreadgroup]/ v28 * v28;
    if (v29 >= 0x140)
    {
      v29 = 320;
    }

    location = ((v29 + 319) / v29);
    v43 = vdupq_n_s64(1uLL);
    v40 = v29;
    v41 = v43;
    [v25 dispatchThreadgroups:&location threadsPerThreadgroup:&v40];
    v30 = self->_simInput;
    objc_initWeak(&location, self);
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_3EE4;
    v37 = &unk_145E0;
    objc_copyWeak(&v39, &location);
    v31 = v30;
    v38 = v31;
    [v4 addCompletedHandler:&v34];
    v32 = [(NTKMagmaEffectsRenderer *)self dequeueAndPreparePhysicsInputBuffer:v34];
    simInput = self->_simInput;
    self->_simInput = v32;

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);

    os_unfair_lock_unlock(&self->_inputLock);
    [v25 endEncoding];
  }
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  v4 = a3;
  [v4 setLabel:@"Magma Encoder"];
  v34 = 0uLL;
  v5 = *&self->_width;
  v6.i64[0] = v5;
  v6.i64[1] = SHIDWORD(v5);
  v35 = vcvtq_f64_s64(v6);
  v36 = xmmword_12230;
  [v4 setViewport:&v34];
  [v4 setCullMode:0];
  if (LOBYTE(self->_springStiffness) == 1)
  {
    NTKMagmaGetTuningWithDefault(@"MagmaBackgroundFactor", 0.7);
  }

  v36 = 0uLL;
  v7 = *&self->_backgroundBottomColor[8];
  v34 = *&self->_backgroundTopColor[8];
  v35 = v7;
  *&v36 = self->_tritiumFraction;
  [v4 setRenderPipelineState:self->_backgroundRenderPipelineState];
  [v4 setFragmentBytes:&v34 length:48 atIndex:0];
  [v4 setFragmentTexture:self->_backgroundTexture atIndex:1];
  v8 = [(NTKMagmaMesh *)self->_backgroundMesh vertices];
  v9 = [v8 vertices];
  [v4 setVertexBuffer:v9 offset:0 atIndex:0];

  v10 = [(NTKMagmaMesh *)self->_backgroundMesh indices];
  v11 = [v10 indexCt];
  v12 = [(NTKMagmaMesh *)self->_backgroundMesh indices];
  v13 = [v12 indices];
  [v4 drawIndexedPrimitives:4 indexCount:v11 indexType:0 indexBuffer:v13 indexBufferOffset:0];

  if (self->_timeMesh)
  {
    backgroundTextureAlpha = 0.0;
    if (LOBYTE(self->_springStiffness) == 1)
    {
      backgroundTextureAlpha = self->_backgroundTextureAlpha;
    }

    v15 = self->_width / self->_height;
    v32 = backgroundTextureAlpha;
    v33 = v15;
    *&v36 = 0;
    v16 = *&self->_timeOutlineColor[8];
    v34 = *&self->_timeFillColor[8];
    v35 = v16;
    *(&v36 + 1) = self->_springsWidth;
    [v4 setRenderPipelineState:self->_foregroundRenderPipelineState];
    [v4 setVertexBytes:&v32 length:8 atIndex:1];
    v17 = [(NTKMagmaMesh *)self->_timeMesh vertices];
    v18 = [v17 vertices];
    [v4 setVertexBuffer:v18 offset:0 atIndex:0];

    [v4 setVertexTexture:self->_springOffsetTexture atIndex:2];
    [v4 setFragmentTexture:self->_primaryTexture atIndex:0];
    [v4 setFragmentTexture:self->_tritiumTimeTexture atIndex:1];
    [v4 setFragmentTexture:self->_backgroundTexture atIndex:2];
    [v4 setFragmentBytes:&v34 length:48 atIndex:0];
    v19 = [(NTKMagmaMesh *)self->_timeMesh indices];
    v20 = [v19 indexCt];
    v21 = [(NTKMagmaMesh *)self->_timeMesh indices];
    v22 = [v21 indices];
    [v4 drawIndexedPrimitives:3 indexCount:v20 indexType:0 indexBuffer:v22 indexBufferOffset:0];
  }

  if (self->_logoMesh)
  {
    v23 = 0.0;
    if (LOBYTE(self->_springStiffness) == 1)
    {
      v24 = self->_backgroundTextureAlpha;
      v23 = NTKMagmaGetTuningWithDefault(@"MagmaBackgroundFactor", 0.35) * v24;
    }

    v25 = self->_width / self->_height;
    v32 = v23;
    v33 = v25;
    v36 = 0uLL;
    v34 = *&self->_logoColor[8];
    v35 = 0uLL;
    [v4 setRenderPipelineState:self->_foregroundRenderPipelineState];
    [v4 setVertexBytes:&v32 length:8 atIndex:1];
    v26 = [(NTKMagmaMesh *)self->_logoMesh vertices];
    v27 = [v26 vertices];
    [v4 setVertexBuffer:v27 offset:0 atIndex:0];

    [v4 setVertexTexture:self->_springOffsetTexture atIndex:2];
    [v4 setFragmentTexture:self->_swooshTexture atIndex:0];
    [v4 setFragmentBytes:&v34 length:48 atIndex:0];
    [v4 setFragmentTexture:self->_backgroundTexture atIndex:2];
    v28 = [(NTKMagmaMesh *)self->_logoMesh indices];
    v29 = [v28 indexCt];
    v30 = [(NTKMagmaMesh *)self->_logoMesh indices];
    v31 = [v30 indices];
    [v4 drawIndexedPrimitives:3 indexCount:v29 indexType:0 indexBuffer:v31 indexBufferOffset:0];
  }
}

- (id)_binaryArchives
{
  if (_os_feature_enabled_impl())
  {
    v3 = sub_44B4();
    v4 = [v3 URLForResource:@"magma" withExtension:@"metallib"];

    v5 = objc_opt_new();
    [v5 setUrl:v4];
    device = self->_device;
    v11 = 0;
    v7 = [(MTLDevice *)device newBinaryArchiveWithDescriptor:v5 error:&v11];
    v8 = v11;
    if (v7)
    {
      v12 = v7;
      v9 = [NSArray arrayWithObjects:&v12 count:1];
    }

    else
    {
      v9 = &__NSArray0__struct;
    }
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  return v9;
}

- (id)_setupBackgroundRenderPipelineWithBinaryArchives:(id)a3
{
  library = self->_library;
  v5 = a3;
  v6 = [(MTLLibrary *)library newFunctionWithName:@"magmaBackgroundVertexShader"];
  v7 = [(MTLLibrary *)self->_library newFunctionWithName:@"magmaBackgroundFragmentShader"];
  v8 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v8 setLabel:@"Magma Background Pipeline"];
  [v8 setVertexFunction:v6];
  [v8 setFragmentFunction:v7];
  [v8 setBinaryArchives:v5];

  v9 = [v8 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];

  [v10 setPixelFormat:self->_pixelFormat];
  [v10 setBlendingEnabled:1];
  [v10 setRgbBlendOperation:0];
  [v10 setAlphaBlendOperation:0];
  [v10 setSourceRGBBlendFactor:1];
  [v10 setSourceAlphaBlendFactor:1];
  [v10 setDestinationRGBBlendFactor:5];
  [v10 setDestinationAlphaBlendFactor:5];
  device = self->_device;
  v22 = 0;
  v12 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v8 options:4 reflection:0 error:&v22];
  v13 = v22;
  v14 = v13;
  if (!v12 || v13)
  {
    if (_os_feature_enabled_impl())
    {
      v17 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_A540();
      }
    }

    v18 = self->_device;
    v21 = v14;
    v16 = [(MTLDevice *)v18 newRenderPipelineStateWithDescriptor:v8 error:&v21];
    v15 = v21;

    if (!v16)
    {
      v19 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_A5A8();
      }

      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = v12;
  }

  return v16;
}

- (id)_setupForegroundRenderPipelineWithBinaryArchives:(id)a3
{
  library = self->_library;
  v5 = a3;
  v6 = [(MTLLibrary *)library newFunctionWithName:@"magmaVertexShader"];
  v7 = [(MTLLibrary *)self->_library newFunctionWithName:@"magmaForegroundFragmentShader"];
  v8 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v8 setLabel:@"Magma Foreground Pipeline"];
  [v8 setVertexFunction:v6];
  [v8 setFragmentFunction:v7];
  [v8 setBinaryArchives:v5];

  v9 = [v8 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];

  [v10 setPixelFormat:self->_pixelFormat];
  [v10 setBlendingEnabled:1];
  [v10 setRgbBlendOperation:0];
  [v10 setAlphaBlendOperation:0];
  [v10 setSourceRGBBlendFactor:1];
  [v10 setSourceAlphaBlendFactor:1];
  [v10 setDestinationRGBBlendFactor:5];
  [v10 setDestinationAlphaBlendFactor:5];
  device = self->_device;
  v22 = 0;
  v12 = [(MTLDevice *)device newRenderPipelineStateWithDescriptor:v8 options:4 reflection:0 error:&v22];
  v13 = v22;
  v14 = v13;
  if (!v12 || v13)
  {
    if (_os_feature_enabled_impl())
    {
      v17 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_A540();
      }
    }

    v18 = self->_device;
    v21 = v14;
    v16 = [(MTLDevice *)v18 newRenderPipelineStateWithDescriptor:v8 error:&v21];
    v15 = v21;

    if (!v16)
    {
      v19 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_A5A8();
      }

      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = v12;
  }

  return v16;
}

- (id)_setupPhysicsPipelineWithBinaryArchives:(id)a3
{
  library = self->_library;
  v5 = a3;
  v6 = [(MTLLibrary *)library newFunctionWithName:@"computeSpringPhysics"];
  v7 = objc_opt_new();
  [v7 setComputeFunction:v6];
  [v7 setBinaryArchives:v5];

  device = self->_device;
  v20 = 0;
  v9 = [(MTLDevice *)device newComputePipelineStateWithDescriptor:v7 options:4 reflection:0 error:&v20];
  v10 = v20;
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v16 = 0;
    v15 = v9;
  }

  else
  {
    v12 = v10;
    if (_os_feature_enabled_impl())
    {
      v13 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        sub_A540();
      }
    }

    v14 = self->_device;
    v19 = v12;
    v15 = [(MTLDevice *)v14 newComputePipelineStateWithDescriptor:v7 options:0 reflection:0 error:&v19];
    v16 = v19;

    if (!v15)
    {
      v17 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_A61C();
      }

      v15 = 0;
    }
  }

  return v15;
}

- (void)_createMeshVertices
{
  v3 = *&self->_meshDim[7];
  v4 = HIDWORD(v3);
  v5 = v3;
  v6 = (v3 * HIDWORD(v3));
  v7 = malloc_type_malloc(24 * v6, 0x10000402C707793uLL);
  v8 = v7;
  v9 = (v4 - 1);
  if (v4 >= 1)
  {
    v10 = 0;
    v11 = v9;
    v12 = 24 * v5;
    v13 = v7;
    do
    {
      if (v5 >= 1)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          *&v17 = v15 / (v5 - 1);
          *&v18 = *&v17 + -0.5 + *&v17 + -0.5;
          v16 = ((v10 / v11) + -0.5) * -2.0;
          *(&v18 + 1) = v16;
          v19 = &v13[v14];
          *(v19 + 9) = v10;
          *(v19 + 8) = v15;
          if (v10)
          {
            v20 = v14 == 0;
          }

          else
          {
            v20 = 1;
          }

          v21 = v20 || 24 * (v5 - 1) == v14;
          *v19 = v18;
          *(&v17 + 1) = v10 / v11;
          *(v19 + 1) = v17;
          v23 = v21 || v10 == v9;
          v19[20] = v23;
          ++v15;
          v14 += 24;
        }

        while (v12 != v14);
      }

      ++v10;
      v13 += v12;
    }

    while (v10 != v4);
  }

  v24 = objc_opt_new();
  meshVertices = self->_meshVertices;
  self->_meshVertices = v24;

  v26 = [(MTLDevice *)self->_device newBufferWithBytes:v8 length:24 * v6 options:1];
  [(NTKMagmaMeshVertices *)self->_meshVertices setVertices:v26];

  [(NTKMagmaMeshVertices *)self->_meshVertices setVertexCount:v6];

  free(v8);
}

- (void)_createMeshBackgroundIndices
{
  v3 = (6 * *&self->_meshDim[7] - 6) * (HIDWORD(*&self->_meshDim[7]) - 1);
  v4 = objc_opt_new();
  meshBackgroundIndices = self->_meshBackgroundIndices;
  self->_meshBackgroundIndices = v4;

  v6 = [(MTLDevice *)self->_device newBufferWithLength:2 * v3 options:1];
  [(NTKMagmaMeshIndices *)self->_meshBackgroundIndices setIndices:v6];

  v7 = self->_meshBackgroundIndices;

  [(NTKMagmaEffectsRenderer *)self _createMeshIndicesWithBounds:v7 into:0.0];
}

- (void)_createMesh
{
  [(NTKMagmaEffectsRenderer *)self _createMeshVertices];
  [(NTKMagmaEffectsRenderer *)self _createMeshBackgroundIndices];
  v3 = 2 * ((6 * *&self->_meshDim[7] - 6) * (HIDWORD(*&self->_meshDim[7]) - 1));
  v4 = [CLKUIMetalResourcePool bufferPoolWithLength:v3 andOptions:1 expectedCountPerFrame:1];
  foregroundIndicesBufferPool = self->_foregroundIndicesBufferPool;
  self->_foregroundIndicesBufferPool = v4;

  v6 = objc_opt_new();
  meshForegroundIndices = self->_meshForegroundIndices;
  self->_meshForegroundIndices = v6;

  v8 = [(MTLDevice *)self->_device newBufferWithLength:v3 options:32];
  [(NTKMagmaMeshIndices *)self->_meshForegroundIndices setIndices:v8];

  [(NTKMagmaMeshIndices *)self->_meshForegroundIndices setIndexCt:0];
  v11 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:65 width:*&self->_meshDim[7] height:HIDWORD(*&self->_meshDim[7]) mipmapped:0];
  [v11 setUsage:3];
  [v11 setStorageMode:2];
  v9 = [CLKUIMetalResourcePool texturePoolWithDescriptor:v11 expectedCountPerFrame:1];
  meshOffsetTexturePool = self->_meshOffsetTexturePool;
  self->_meshOffsetTexturePool = v9;
}

- (void)_createMeshIndicesWithBounds:(id)a3 into:
{
  v25 = v3;
  v27 = a3;
  v24 = *&self->_meshDim[7];
  v5 = vcvt_f32_s32(vadd_s32(*&self->_meshDim[7], -1));
  v6 = vrndm_f32(vmul_f32(*v25.i8, v5));
  v26 = vcvt_u32_f32(vbic_s8(v6, vcltz_f32(v6)));
  v7 = vrndp_f32(vmul_f32(*&vextq_s8(v25, v25, 8uLL), v5));
  v8 = vcvt_u32_f32(vbsl_s8(vcgt_f32(v5, v7), v7, v5));
  v9 = vsub_s32(v8, v26);
  v10 = v9.u32[0];
  v11 = v9.i32[1];
  v12 = (6 * v9.i32[0] * v9.i32[1]);
  v13 = [v27 indices];
  v14 = [v13 contents];

  [v27 setIndexCt:v12];
  v15 = vceq_s32(v8, v26);
  if ((v15.i8[4] & 1) == 0)
  {
    v16 = 0;
    v17 = v26.i16[0] + v26.i16[2] * v24;
    v18 = v26.i16[0] + v24 + v26.i16[2] * v24;
    v19 = 1;
    do
    {
      if ((v15.i8[0] & 1) == 0)
      {
        v20 = 0;
        v21 = v19;
        do
        {
          v22 = &v14[v21 - 1];
          *v22 = v17 + v20;
          v23 = v17 + v20 + 1;
          v14[v21] = v23;
          v22[2] = v18 + v20;
          v22[3] = v18 + v20;
          v22[4] = v23;
          v22[5] = v18 + v20++ + 1;
          v21 += 6;
        }

        while (v10 != v20);
      }

      ++v16;
      v19 += 6 * v10;
      v17 += v24;
      v18 += v24;
    }

    while (v16 != v11);
  }
}

- (void)_createBackgroundQuad
{
  v14[0] = xmmword_12280;
  v14[1] = unk_12290;
  v13 = 0x3000200010000;
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [(NTKMagmaMesh *)v3 setVertices:v4];

  v5 = objc_opt_new();
  [(NTKMagmaMesh *)v3 setIndices:v5];

  v6 = [(MTLDevice *)self->_device newBufferWithBytes:v14 length:32 options:1];
  v7 = [(NTKMagmaMesh *)v3 vertices];
  [v7 setVertices:v6];

  v8 = [(NTKMagmaMesh *)v3 vertices];
  [v8 setVertexCount:4];

  v9 = [(MTLDevice *)self->_device newBufferWithBytes:&v13 length:8 options:1];
  v10 = [(NTKMagmaMesh *)v3 indices];
  [v10 setIndices:v9];

  v11 = [(NTKMagmaMesh *)v3 indices];
  [v11 setIndexCt:4];

  backgroundMesh = self->_backgroundMesh;
  self->_backgroundMesh = v3;
}

- (void)_loadCollisionTexture
{
  v3 = [NSString stringWithFormat:@"correctionMap-%ih", self->_height];
  v4 = sub_44B4();
  v5 = [v4 pathForResource:v3 ofType:@"blob"];

  if (v5)
  {
    v25 = 0;
    v6 = [NSData dataWithContentsOfFile:v5 options:1 error:&v25];
    v7 = v25;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Loading Magma collision blob %@...", buf, 0xCu);
  }

  if (v7)
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_A684();
    }
  }

  else if (v6)
  {
    width = self->_width;
    height = self->_height;
    if ([v6 bytes])
    {
      v18 = (8 * height * width);
      if ([v6 length] == v18)
      {
        v10 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:110 width:self->_width height:self->_height mipmapped:0];
        v19 = [(MTLDevice *)self->_device newTextureWithDescriptor:v10];
        correctionTexture = self->_correctionTexture;
        self->_correctionTexture = v19;

        v21 = self->_correctionTexture;
        memset(buf, 0, sizeof(buf));
        v22 = *&self->_width;
        v23.i64[0] = v22;
        v23.i64[1] = SHIDWORD(v22);
        v28 = v23;
        v29 = 1;
        v14 = [v6 bytes];
        v15 = 8 * self->_width;
        v13 = v21;
        goto LABEL_10;
      }

      v9 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v24 = [v6 length];
        *buf = 138412802;
        *&buf[4] = v3;
        *&buf[12] = 1024;
        *&buf[14] = v18;
        *&buf[18] = 1024;
        *&buf[20] = v24;
        _os_log_fault_impl(&dword_0, v9, OS_LOG_TYPE_FAULT, "Magma Collision Texture Inconsistency: Magma collision texture (%@) is not expected size (%i expected, %i actual)", buf, 0x18u);
      }
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_A708();
      }
    }
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_A770();
    }
  }

  v10 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:110 width:1 height:1 mipmapped:0];
  v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:v10];
  v12 = self->_correctionTexture;
  self->_correctionTexture = v11;

  v26 = 0;
  memset(buf, 0, sizeof(buf));
  v13 = self->_correctionTexture;
  v28 = vdupq_n_s64(1uLL);
  v29 = 1;
  v14 = &v26;
  v15 = 8;
LABEL_10:
  [(MTLTexture *)v13 replaceRegion:buf mipmapLevel:0 withBytes:v14 bytesPerRow:v15];
}

- (void)_createPhysicsBuffers
{
  v3 = 0;
  springBuffers = self->_springBuffers;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = [(MTLDevice *)self->_device newBufferWithLength:7680 options:1];
    v8 = springBuffers[v3];
    springBuffers[v3] = v7;

    v9 = [(MTLBuffer *)springBuffers[v3] contents];
    v10 = 0;
    v11 = v9 + 1;
    do
    {
      v12.i32[0] = v10 & 0xF;
      v12.i32[1] = v10 >> 4;
      v13 = vdiv_f32(vcvt_f32_u32(v12), 0x4198000041700000);
      v11[-1] = v13;
      *v11 = v13;
      ++v10;
      v11 += 3;
    }

    while (v10 != 320);
    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  v14 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:65 width:16 height:20 mipmapped:0];
  [v14 setUsage:3];
  [v14 setStorageMode:32];
  v15 = [CLKUIMetalResourcePool texturePoolWithDescriptor:v14 expectedCountPerFrame:1];
  springOffsetTexturePool = self->_springOffsetTexturePool;
  self->_springOffsetTexturePool = v15;

  v27[0] = 1015580809;
  *&v27[1] = self->_height / self->_width;
  v17 = [(MTLDevice *)self->_device newBufferWithBytes:v27 length:8 options:1];
  simUniforms = self->_simUniforms;
  self->_simUniforms = v17;

  v19 = *&self->_meshDim[7];
  v26[1] = WORD2(v19);
  v26[0] = v19;
  v20 = [(MTLDevice *)self->_device newBufferWithBytes:v26 length:4 options:1];
  interpolationUniforms = self->_interpolationUniforms;
  self->_interpolationUniforms = v20;

  v22 = [CLKUIMetalResourcePool bufferPoolWithLength:2608 andOptions:1 expectedCountPerFrame:2];
  inputBufferPool = self->_inputBufferPool;
  self->_inputBufferPool = v22;

  v24 = [(NTKMagmaEffectsRenderer *)self dequeueAndPreparePhysicsInputBuffer];
  simInput = self->_simInput;
  self->_simInput = v24;
}

- (id)dequeueAndPreparePhysicsInputBuffer
{
  v2 = [(CLKUIMetalResourcePool *)self->_inputBufferPool dequeueReusableResource];
  v3 = [v2 contents];
  v3[2560] = 0;
  bzero(v3, 0xA00uLL);

  return v2;
}

- (void)updateTimeTextureWithImage:(id)a3 tritiumImage:(id)a4 origin:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_58A8;
  v14[3] = &unk_14608;
  v14[4] = self;
  v11 = v9;
  v15 = v11;
  v12 = v10;
  v16 = v12;
  v17 = x;
  v18 = y;
  v13 = objc_retainBlock(v14);
  if (+[NSThread isMainThread])
  {
    (v13[2])(v13);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v13);
  }
}

- (void)updateLogoTextureWithImage:(id)a3 origin:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_5A3C;
  v11 = &unk_14630;
  v12 = self;
  v6 = a3;
  v13 = v6;
  v14 = x;
  v15 = y;
  v7 = objc_retainBlock(&v8);
  if ([NSThread isMainThread:v8])
  {
    (v7[2])(v7);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v7);
  }
}

- (void)updateBackgroundTextureWithImage:(id)a3
{
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_5B9C;
  v8 = &unk_14658;
  v9 = self;
  v3 = a3;
  v10 = v3;
  v4 = objc_retainBlock(&v5);
  if ([NSThread isMainThread:v5])
  {
    (v4[2])(v4);
  }

  else
  {
    dispatch_sync(&_dispatch_main_q, v4);
  }
}

- (id)meshForRect:(CGRect)a3 maxPitch:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = (ceil(a3.size.width / a4) + 1.0);
  v10 = (ceil(a3.size.height / a4) + 1.0);
  v11 = v9 * v10;
  v12 = malloc_type_malloc(24 * v11, 0x10000402C707793uLL);
  v13 = v12;
  if (v10)
  {
    v14 = 0;
    v15 = 0;
    v16 = v9 - 1;
    v17 = v10 - 1;
    __asm { FMOV            V3.2D, #-0.5 }

    do
    {
      if (v9)
      {
        v23 = 0;
        v24 = v15 / (v10 - 1);
        v25 = y + v24 * height;
        v26 = 1.0 - v24;
        do
        {
          v27.f32[0] = v23 / (v9 - 1);
          v28.f32[0] = x + v27.f32[0] * width;
          v28.f32[1] = v25;
          v27.f32[1] = v26;
          v29 = &v12[24 * (v14 + v23)];
          *v29 = vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(vdiv_f32(vmul_n_f32(v28, self->_screenScale), vcvt_f32_s32(*&self->_width))), _Q3), xmmword_12240));
          v29[1] = v27;
          v29[2].i8[4] = 0;
          ++v23;
        }

        while (v9 != v23);
      }

      ++v15;
      v14 += v9;
    }

    while (v15 != v10);
  }

  else
  {
    v16 = v9 - 1;
    v17 = -1;
  }

  v30 = 6 * v16 * v17;
  v31 = malloc_type_malloc(2 * v30, 0x1000040BDFB0063uLL);
  v32 = v31;
  if (v17)
  {
    v33 = 0;
    do
    {
      if (v16)
      {
        v34 = v33 * v9;
        v35 = v33 + 1;
        v36 = (v33 + 1) * v9;
        v37 = v16;
        v38 = 6 * v16 * v33;
        do
        {
          v39 = &v31[2 * v38];
          *v39 = v34++;
          *&v31[2 * v38 + 2] = v34;
          *(v39 + 2) = v36;
          *(v39 + 3) = v36;
          *(v39 + 4) = v34;
          *(v39 + 5) = ++v36;
          v38 += 6;
          --v37;
        }

        while (v37);
      }

      else
      {
        v35 = v33 + 1;
      }

      v33 = v35;
    }

    while (v35 != v17);
  }

  v40 = objc_opt_new();
  v41 = objc_opt_new();
  [v40 setVertices:v41];

  v42 = [(MTLDevice *)self->_device newBufferWithBytes:v13 length:24 * v11 options:1];
  v43 = [v40 vertices];
  [v43 setVertices:v42];

  v44 = [v40 vertices];
  [v44 setVertexCount:v11];

  v45 = objc_opt_new();
  [v40 setIndices:v45];

  v46 = [(MTLDevice *)self->_device newBufferWithBytes:v32 length:2 * v30 options:1];
  v47 = [v40 indices];
  [v47 setIndices:v46];

  v48 = [v40 indices];
  [v48 setIndexCt:v30];

  free(v13);
  free(v32);

  return v40;
}

- (void)resetSprings
{
  os_unfair_lock_lock(&self->_inputLock);
  v3 = [(MTLBuffer *)self->_simInput contents];
  v3[2560] = 1;
  bzero(v3, 0xA00uLL);

  os_unfair_lock_unlock(&self->_inputLock);
}

- (void)applySpringImpulseWithBlock:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock(&self->_inputLock);
  v4 = [(MTLBuffer *)self->_simInput contents];
  for (i = 0; i != 320; ++i)
  {
    v7.f32[0] = (i & 0xF);
    v5.n128_u32[0] = i & 0xF;
    v5.n128_u32[1] = i >> 4;
    v7.f32[1] = (i >> 4);
    v8 = vdiv_f32(v7, 0x4198000041700000);
    p_screenScale = &self->_screenScale;
    v10 = vld1_dup_f32(p_screenScale);
    v4[i] = vadd_f32(COERCE_FLOAT32X2_T(v11[2](v5, *&v8, COERCE_DOUBLE(vdiv_f32(vmul_f32(v8, vcvt_f32_s32(*&self->_width)), v10)))), v4[i]);
  }

  os_unfair_lock_unlock(&self->_inputLock);
}

- (void)_unsafe_updateSimInput
{
  v3 = [(MTLBuffer *)self->_simInput contents];
  TuningWithDefault = NTKMagmaGetTuningWithDefault(@"MagmaStiffness", 50.0);
  v3[641] = TuningWithDefault;
  v3[642] = sqrtf(TuningWithDefault);
  v5 = NTKMagmaGetTuningWithDefault(@"MagmaDamping", 0.283);
  v3[643] = v5;
  v6 = NTKMagmaGetTuningWithDefault(@"MagmaRestorative", 10.0);
  v3[644] = v6;
  *(v3 + 162) = *self->_fixedBounds;
}

- (void)setScreenBoundRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  x = a3.origin.x;
  y = a3.origin.y;
  os_unfair_lock_lock(&self->_inputLock);
  v6.f64[0] = x;
  v7.f64[0] = width + x;
  v8 = *&self->_width;
  v9.i64[0] = v8;
  v9.i64[1] = SHIDWORD(v8);
  v10 = vcvtq_f64_s64(v9);
  v7.f64[1] = height + y;
  v6.f64[1] = y;
  *self->_fixedBounds = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vdivq_f64(v6, v10), self->_screenScale)), vmulq_n_f64(vdivq_f64(v7, v10), self->_screenScale));
  self->_fixedBoundsDirty = 1;

  os_unfair_lock_unlock(&self->_inputLock);
}

- (NTKMagmaEffectsRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(self->_anon_188);

  return WeakRetained;
}

@end