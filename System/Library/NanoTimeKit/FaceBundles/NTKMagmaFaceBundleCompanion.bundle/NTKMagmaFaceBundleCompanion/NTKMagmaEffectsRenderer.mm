@interface NTKMagmaEffectsRenderer
- (BOOL)prepareForTime:(double)time;
- (NTKMagmaEffectsRenderer)initWithDevice:(id)device library:(id)library width:(int)width height:(int)height screenScale:(float)scale colorPixelFormat:(unint64_t)format;
- (NTKMagmaEffectsRendererDelegate)delegate;
- (id)_binaryArchives;
- (id)_setupBackgroundRenderPipelineWithBinaryArchives:(id)archives;
- (id)_setupForegroundRenderPipelineWithBinaryArchives:(id)archives;
- (id)_setupPhysicsPipelineWithBinaryArchives:(id)archives;
- (id)dequeueAndPreparePhysicsInputBuffer;
- (id)meshForRect:(CGRect)rect maxPitch:(double)pitch;
- (void)_createBackgroundQuad;
- (void)_createMesh;
- (void)_createMeshBackgroundIndices;
- (void)_createMeshIndicesWithBounds:(id)bounds into:;
- (void)_createMeshVertices;
- (void)_createPhysicsBuffers;
- (void)_loadCollisionTexture;
- (void)_unsafe_updateSimInput;
- (void)applySpringImpulseWithBlock:(id)block;
- (void)performOffscreenPassesWithCommandBuffer:(id)buffer;
- (void)renderForDisplayWithEncoder:(id)encoder;
- (void)resetSprings;
- (void)setScreenBoundRect:(CGRect)rect;
- (void)updateBackgroundTextureWithImage:(id)image;
- (void)updateLogoTextureWithImage:(id)image origin:(CGPoint)origin;
- (void)updateTimeTextureWithImage:(id)image tritiumImage:(id)tritiumImage origin:(CGPoint)origin;
@end

@implementation NTKMagmaEffectsRenderer

- (NTKMagmaEffectsRenderer)initWithDevice:(id)device library:(id)library width:(int)width height:(int)height screenScale:(float)scale colorPixelFormat:(unint64_t)format
{
  deviceCopy = device;
  libraryCopy = library;
  v27.receiver = self;
  v27.super_class = NTKMagmaEffectsRenderer;
  v17 = [(NTKMagmaEffectsRenderer *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_device, device);
    objc_storeStrong(&v18->_library, library);
    v18->_width = width;
    v18->_height = height;
    v18->_screenScale = scale;
    v18->_pixelFormat = format;
    _binaryArchives = [(NTKMagmaEffectsRenderer *)v18 _binaryArchives];
    v20 = [(NTKMagmaEffectsRenderer *)v18 _setupBackgroundRenderPipelineWithBinaryArchives:_binaryArchives];
    backgroundRenderPipelineState = v18->_backgroundRenderPipelineState;
    v18->_backgroundRenderPipelineState = v20;

    v22 = [(NTKMagmaEffectsRenderer *)v18 _setupForegroundRenderPipelineWithBinaryArchives:_binaryArchives];
    foregroundRenderPipelineState = v18->_foregroundRenderPipelineState;
    v18->_foregroundRenderPipelineState = v22;

    v24 = [(NTKMagmaEffectsRenderer *)v18 _setupPhysicsPipelineWithBinaryArchives:_binaryArchives];
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

- (BOOL)prepareForTime:(double)time
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
  delegate = [(NTKMagmaEffectsRenderer *)self delegate];
  [delegate magmaRendererPrepareForFrameWithTime:time];

  return 1;
}

- (void)performOffscreenPassesWithCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  timeTextureBlock = self->_timeTextureBlock;
  if (timeTextureBlock)
  {
    v6 = timeTextureBlock[2](timeTextureBlock, bufferCopy);
    primaryTexture = self->_primaryTexture;
    self->_primaryTexture = v6;

    v8 = self->_timeTextureBlock;
    self->_timeTextureBlock = 0;
  }

  tritiumTimeTextureBlock = self->_tritiumTimeTextureBlock;
  if (tritiumTimeTextureBlock)
  {
    v10 = tritiumTimeTextureBlock[2](tritiumTimeTextureBlock, bufferCopy);
    tritiumTimeTexture = self->_tritiumTimeTexture;
    self->_tritiumTimeTexture = v10;

    v12 = self->_tritiumTimeTextureBlock;
    self->_tritiumTimeTextureBlock = 0;
  }

  logoTextureBlock = self->_logoTextureBlock;
  if (logoTextureBlock)
  {
    v14 = logoTextureBlock[2](logoTextureBlock, bufferCopy);
    swooshTexture = self->_swooshTexture;
    self->_swooshTexture = v14;

    v16 = self->_logoTextureBlock;
    self->_logoTextureBlock = 0;
  }

  backgroundTextureBlock = self->_backgroundTextureBlock;
  if (backgroundTextureBlock)
  {
    v18 = backgroundTextureBlock[2](backgroundTextureBlock, bufferCopy);
    backgroundTexture = self->_backgroundTexture;
    self->_backgroundTexture = v18;

    v20 = self->_backgroundTextureBlock;
    self->_backgroundTextureBlock = 0;
  }

  v21 = [(CLKUIMetalResourcePool *)self->_springOffsetTexturePool dequeueReusableResourceForUseOnCommandBuffer:bufferCopy];
  springOffsetTexture = self->_springOffsetTexture;
  self->_springOffsetTexture = v21;

  v23 = [(CLKUIMetalResourcePool *)self->_meshOffsetTexturePool dequeueReusableResourceForUseOnCommandBuffer:bufferCopy];
  meshOffsetTexture = self->_meshOffsetTexture;
  self->_meshOffsetTexture = v23;

  if (LOBYTE(self->_springStiffness) == 1)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
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
    [computeCommandEncoder setComputePipelineState:self->_computePipelineState];
    [computeCommandEncoder setBuffer:self->_springBuffers[v27] offset:0 atIndex:0];
    [computeCommandEncoder setBuffer:self->_springBuffers[bufferIndex] offset:0 atIndex:1];
    [computeCommandEncoder setBuffer:self->_simUniforms offset:0 atIndex:3];
    [computeCommandEncoder setBuffer:self->_simInput offset:0 atIndex:2];
    [computeCommandEncoder setTexture:self->_correctionTexture atIndex:4];
    [computeCommandEncoder setTexture:self->_springOffsetTexture atIndex:5];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelineState threadExecutionWidth];
    v29 = [(MTLComputePipelineState *)self->_computePipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth * threadExecutionWidth;
    if (v29 >= 0x140)
    {
      v29 = 320;
    }

    location = ((v29 + 319) / v29);
    v43 = vdupq_n_s64(1uLL);
    v40 = v29;
    v41 = v43;
    [computeCommandEncoder dispatchThreadgroups:&location threadsPerThreadgroup:&v40];
    v30 = self->_simInput;
    objc_initWeak(&location, self);
    v34 = _NSConcreteStackBlock;
    v35 = 3221225472;
    v36 = sub_3EE4;
    v37 = &unk_145E0;
    objc_copyWeak(&v39, &location);
    v31 = v30;
    v38 = v31;
    [bufferCopy addCompletedHandler:&v34];
    v32 = [(NTKMagmaEffectsRenderer *)self dequeueAndPreparePhysicsInputBuffer:v34];
    simInput = self->_simInput;
    self->_simInput = v32;

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);

    os_unfair_lock_unlock(&self->_inputLock);
    [computeCommandEncoder endEncoding];
  }
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  [encoderCopy setLabel:@"Magma Encoder"];
  v34 = 0uLL;
  v5 = *&self->_width;
  v6.i64[0] = v5;
  v6.i64[1] = SHIDWORD(v5);
  v35 = vcvtq_f64_s64(v6);
  v36 = xmmword_12230;
  [encoderCopy setViewport:&v34];
  [encoderCopy setCullMode:0];
  if (LOBYTE(self->_springStiffness) == 1)
  {
    NTKMagmaGetTuningWithDefault(@"MagmaBackgroundFactor", 0.7);
  }

  v36 = 0uLL;
  v7 = *&self->_backgroundBottomColor[8];
  v34 = *&self->_backgroundTopColor[8];
  v35 = v7;
  *&v36 = self->_tritiumFraction;
  [encoderCopy setRenderPipelineState:self->_backgroundRenderPipelineState];
  [encoderCopy setFragmentBytes:&v34 length:48 atIndex:0];
  [encoderCopy setFragmentTexture:self->_backgroundTexture atIndex:1];
  vertices = [(NTKMagmaMesh *)self->_backgroundMesh vertices];
  v8Vertices = [vertices vertices];
  [encoderCopy setVertexBuffer:v8Vertices offset:0 atIndex:0];

  indices = [(NTKMagmaMesh *)self->_backgroundMesh indices];
  indexCt = [indices indexCt];
  indices2 = [(NTKMagmaMesh *)self->_backgroundMesh indices];
  v12Indices = [indices2 indices];
  [encoderCopy drawIndexedPrimitives:4 indexCount:indexCt indexType:0 indexBuffer:v12Indices indexBufferOffset:0];

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
    [encoderCopy setRenderPipelineState:self->_foregroundRenderPipelineState];
    [encoderCopy setVertexBytes:&v32 length:8 atIndex:1];
    vertices2 = [(NTKMagmaMesh *)self->_timeMesh vertices];
    v17Vertices = [vertices2 vertices];
    [encoderCopy setVertexBuffer:v17Vertices offset:0 atIndex:0];

    [encoderCopy setVertexTexture:self->_springOffsetTexture atIndex:2];
    [encoderCopy setFragmentTexture:self->_primaryTexture atIndex:0];
    [encoderCopy setFragmentTexture:self->_tritiumTimeTexture atIndex:1];
    [encoderCopy setFragmentTexture:self->_backgroundTexture atIndex:2];
    [encoderCopy setFragmentBytes:&v34 length:48 atIndex:0];
    indices3 = [(NTKMagmaMesh *)self->_timeMesh indices];
    indexCt2 = [indices3 indexCt];
    indices4 = [(NTKMagmaMesh *)self->_timeMesh indices];
    v21Indices = [indices4 indices];
    [encoderCopy drawIndexedPrimitives:3 indexCount:indexCt2 indexType:0 indexBuffer:v21Indices indexBufferOffset:0];
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
    [encoderCopy setRenderPipelineState:self->_foregroundRenderPipelineState];
    [encoderCopy setVertexBytes:&v32 length:8 atIndex:1];
    vertices3 = [(NTKMagmaMesh *)self->_logoMesh vertices];
    v26Vertices = [vertices3 vertices];
    [encoderCopy setVertexBuffer:v26Vertices offset:0 atIndex:0];

    [encoderCopy setVertexTexture:self->_springOffsetTexture atIndex:2];
    [encoderCopy setFragmentTexture:self->_swooshTexture atIndex:0];
    [encoderCopy setFragmentBytes:&v34 length:48 atIndex:0];
    [encoderCopy setFragmentTexture:self->_backgroundTexture atIndex:2];
    indices5 = [(NTKMagmaMesh *)self->_logoMesh indices];
    indexCt3 = [indices5 indexCt];
    indices6 = [(NTKMagmaMesh *)self->_logoMesh indices];
    v30Indices = [indices6 indices];
    [encoderCopy drawIndexedPrimitives:3 indexCount:indexCt3 indexType:0 indexBuffer:v30Indices indexBufferOffset:0];
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

- (id)_setupBackgroundRenderPipelineWithBinaryArchives:(id)archives
{
  library = self->_library;
  archivesCopy = archives;
  v6 = [(MTLLibrary *)library newFunctionWithName:@"magmaBackgroundVertexShader"];
  v7 = [(MTLLibrary *)self->_library newFunctionWithName:@"magmaBackgroundFragmentShader"];
  v8 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v8 setLabel:@"Magma Background Pipeline"];
  [v8 setVertexFunction:v6];
  [v8 setFragmentFunction:v7];
  [v8 setBinaryArchives:archivesCopy];

  colorAttachments = [v8 colorAttachments];
  v10 = [colorAttachments objectAtIndexedSubscript:0];

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

- (id)_setupForegroundRenderPipelineWithBinaryArchives:(id)archives
{
  library = self->_library;
  archivesCopy = archives;
  v6 = [(MTLLibrary *)library newFunctionWithName:@"magmaVertexShader"];
  v7 = [(MTLLibrary *)self->_library newFunctionWithName:@"magmaForegroundFragmentShader"];
  v8 = objc_alloc_init(MTLRenderPipelineDescriptor);
  [v8 setLabel:@"Magma Foreground Pipeline"];
  [v8 setVertexFunction:v6];
  [v8 setFragmentFunction:v7];
  [v8 setBinaryArchives:archivesCopy];

  colorAttachments = [v8 colorAttachments];
  v10 = [colorAttachments objectAtIndexedSubscript:0];

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

- (id)_setupPhysicsPipelineWithBinaryArchives:(id)archives
{
  library = self->_library;
  archivesCopy = archives;
  v6 = [(MTLLibrary *)library newFunctionWithName:@"computeSpringPhysics"];
  v7 = objc_opt_new();
  [v7 setComputeFunction:v6];
  [v7 setBinaryArchives:archivesCopy];

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

- (void)_createMeshIndicesWithBounds:(id)bounds into:
{
  v25 = v3;
  boundsCopy = bounds;
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
  indices = [boundsCopy indices];
  contents = [indices contents];

  [boundsCopy setIndexCt:v12];
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
          v22 = &contents[v21 - 1];
          *v22 = v17 + v20;
          v23 = v17 + v20 + 1;
          contents[v21] = v23;
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
  vertices = [(NTKMagmaMesh *)v3 vertices];
  [vertices setVertices:v6];

  vertices2 = [(NTKMagmaMesh *)v3 vertices];
  [vertices2 setVertexCount:4];

  v9 = [(MTLDevice *)self->_device newBufferWithBytes:&v13 length:8 options:1];
  indices = [(NTKMagmaMesh *)v3 indices];
  [indices setIndices:v9];

  indices2 = [(NTKMagmaMesh *)v3 indices];
  [indices2 setIndexCt:4];

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
        bytes = [v6 bytes];
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
  bytes = &v26;
  v15 = 8;
LABEL_10:
  [(MTLTexture *)v13 replaceRegion:buf mipmapLevel:0 withBytes:bytes bytesPerRow:v15];
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

    contents = [(MTLBuffer *)springBuffers[v3] contents];
    v10 = 0;
    v11 = contents + 1;
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

  dequeueAndPreparePhysicsInputBuffer = [(NTKMagmaEffectsRenderer *)self dequeueAndPreparePhysicsInputBuffer];
  simInput = self->_simInput;
  self->_simInput = dequeueAndPreparePhysicsInputBuffer;
}

- (id)dequeueAndPreparePhysicsInputBuffer
{
  dequeueReusableResource = [(CLKUIMetalResourcePool *)self->_inputBufferPool dequeueReusableResource];
  contents = [dequeueReusableResource contents];
  contents[2560] = 0;
  bzero(contents, 0xA00uLL);

  return dequeueReusableResource;
}

- (void)updateTimeTextureWithImage:(id)image tritiumImage:(id)tritiumImage origin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  imageCopy = image;
  tritiumImageCopy = tritiumImage;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_58A8;
  v14[3] = &unk_14608;
  v14[4] = self;
  v11 = imageCopy;
  v15 = v11;
  v12 = tritiumImageCopy;
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

- (void)updateLogoTextureWithImage:(id)image origin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_5A3C;
  v11 = &unk_14630;
  selfCopy = self;
  imageCopy = image;
  v13 = imageCopy;
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

- (void)updateBackgroundTextureWithImage:(id)image
{
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_5B9C;
  v8 = &unk_14658;
  selfCopy = self;
  imageCopy = image;
  v10 = imageCopy;
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

- (id)meshForRect:(CGRect)rect maxPitch:(double)pitch
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = (ceil(rect.size.width / pitch) + 1.0);
  v10 = (ceil(rect.size.height / pitch) + 1.0);
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
  vertices = [v40 vertices];
  [vertices setVertices:v42];

  vertices2 = [v40 vertices];
  [vertices2 setVertexCount:v11];

  v45 = objc_opt_new();
  [v40 setIndices:v45];

  v46 = [(MTLDevice *)self->_device newBufferWithBytes:v32 length:2 * v30 options:1];
  indices = [v40 indices];
  [indices setIndices:v46];

  indices2 = [v40 indices];
  [indices2 setIndexCt:v30];

  free(v13);
  free(v32);

  return v40;
}

- (void)resetSprings
{
  os_unfair_lock_lock(&self->_inputLock);
  contents = [(MTLBuffer *)self->_simInput contents];
  contents[2560] = 1;
  bzero(contents, 0xA00uLL);

  os_unfair_lock_unlock(&self->_inputLock);
}

- (void)applySpringImpulseWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_inputLock);
  contents = [(MTLBuffer *)self->_simInput contents];
  for (i = 0; i != 320; ++i)
  {
    v7.f32[0] = (i & 0xF);
    v5.n128_u32[0] = i & 0xF;
    v5.n128_u32[1] = i >> 4;
    v7.f32[1] = (i >> 4);
    v8 = vdiv_f32(v7, 0x4198000041700000);
    p_screenScale = &self->_screenScale;
    v10 = vld1_dup_f32(p_screenScale);
    contents[i] = vadd_f32(COERCE_FLOAT32X2_T(blockCopy[2](v5, *&v8, COERCE_DOUBLE(vdiv_f32(vmul_f32(v8, vcvt_f32_s32(*&self->_width)), v10)))), contents[i]);
  }

  os_unfair_lock_unlock(&self->_inputLock);
}

- (void)_unsafe_updateSimInput
{
  contents = [(MTLBuffer *)self->_simInput contents];
  TuningWithDefault = NTKMagmaGetTuningWithDefault(@"MagmaStiffness", 50.0);
  contents[641] = TuningWithDefault;
  contents[642] = sqrtf(TuningWithDefault);
  v5 = NTKMagmaGetTuningWithDefault(@"MagmaDamping", 0.283);
  contents[643] = v5;
  v6 = NTKMagmaGetTuningWithDefault(@"MagmaRestorative", 10.0);
  contents[644] = v6;
  *(contents + 162) = *self->_fixedBounds;
}

- (void)setScreenBoundRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
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