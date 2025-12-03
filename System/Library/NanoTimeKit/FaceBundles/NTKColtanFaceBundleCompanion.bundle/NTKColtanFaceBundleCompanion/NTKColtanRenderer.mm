@interface NTKColtanRenderer
- (CGSize)size;
- (NTKColtanRenderer)initWithSize:(CGSize)size;
- (NTKColtanResourceManager)resourceManager;
- (void)_downsampleTexture:(id)texture inEncoder:(id)encoder desiredMipLevels:(int)levels;
- (void)drawWithRenderEncoder:(id)encoder forQuad:(id)quad;
- (void)updateWithCommandBuffer:(id)buffer forQuad:(id)quad;
@end

@implementation NTKColtanRenderer

- (NTKColtanRenderer)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v38.receiver = self;
  v38.super_class = NTKColtanRenderer;
  v5 = [(NTKColtanRenderer *)&v38 init];
  v6 = v5;
  if (v5)
  {
    v5->_size.width = width;
    v5->_size.height = height;
    v5->_shadowTexturesQuality = 0;
    v7 = MTLCreateSystemDefaultDevice();
    device = v6->_device;
    v6->_device = v7;

    newCommandQueue = [(MTLDevice *)v6->_device newCommandQueue];
    commandQueue = v6->_commandQueue;
    v6->_commandQueue = newCommandQueue;

    v11 = [(MTLDevice *)v6->_device newBufferWithLength:64 options:32];
    lightsBuffer = v6->_lightsBuffer;
    v6->_lightsBuffer = v11;

    v6->_shouldUseAccumulationForNextFrame = 0;
    v13 = vandq_s8(vaddq_s64(vcvtq_u64_f64(vmulq_f64(v6->_size, vdupq_n_s64(0x3FE3333333333333uLL))), vdupq_n_s64(0xFuLL)), vdupq_n_s64(0xFFFFFFFFFFFFFFE0));
    *&v6->_shadowTargetWidth = v13;
    v14 = 1;
    v15 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:*&v13 height:1 mipmapped:?];
    [v15 setUsage:3];
    [v15 setStorageMode:2];
    v16 = 0;
    shadowTexturesHq = v6->_shadowTexturesHq;
    do
    {
      v18 = v14;
      v19 = [(MTLDevice *)v6->_device newTextureWithDescriptor:v15];
      if (!v19)
      {

        goto LABEL_18;
      }

      v20 = v19;
      v21 = [NSString stringWithFormat:@"shadows high-quality %d", v16];
      [v20 setLabel:v21];

      v22 = shadowTexturesHq[v16];
      shadowTexturesHq[v16] = v20;

      v14 = 0;
      v16 = 1;
    }

    while ((v18 & 1) != 0);
    shadowTargetWidth = v6->_shadowTargetWidth;
    shadowTargetHeight = v6->_shadowTargetHeight;
    if (shadowTargetWidth <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = shadowTargetWidth >> 1;
    }

    if (shadowTargetHeight <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = shadowTargetHeight >> 1;
    }

    v27 = 1;
    v28 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:v25 height:v26 mipmapped:1];

    [v28 setUsage:3];
    [v28 setStorageMode:2];
    v29 = 0;
    shadowTexturesLq = v6->_shadowTexturesLq;
    while (1)
    {
      v31 = v27;
      v32 = [(MTLDevice *)v6->_device newTextureWithDescriptor:v28];
      if (!v32)
      {
        break;
      }

      v33 = v32;
      v34 = [NSString stringWithFormat:@"shadows low-quality %d", v29];
      [v33 setLabel:v34];

      v35 = shadowTexturesLq[v29];
      shadowTexturesLq[v29] = v33;

      v27 = 0;
      v29 = 1;
      if ((v31 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

LABEL_18:
    v36 = 0;
  }

  else
  {
LABEL_15:
    v36 = v6;
  }

  return v36;
}

- (void)updateWithCommandBuffer:(id)buffer forQuad:(id)quad
{
  bufferCopy = buffer;
  quadCopy = quad;
  WeakRetained = objc_loadWeakRetained(&self->_resourceManager);

  if (!WeakRetained)
  {
    goto LABEL_34;
  }

  shadowTexturesQuality = self->_shadowTexturesQuality;
  quality = [quadCopy quality];
  if (quality != &dword_0 + 1 || shadowTexturesQuality)
  {
    if (quality || shadowTexturesQuality != 1)
    {
      goto LABEL_25;
    }

    self->_shadowTexturesQuality = 0;
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    v49 = self->_shadowTexturesLq[self->_currentShadowTextureIndex];
    v48 = self->_shadowTexturesLq[1 - self->_currentShadowTextureIndex];
    v12 = self->_shadowTexturesHq[self->_currentShadowTextureIndex];
    v13 = self->_shadowTexturesHq[1 - self->_currentShadowTextureIndex];
    v24 = 0;
    v25 = *&self->_shadowTargetWidth;
    v26 = vshrq_n_u64(v25, 1uLL);
    v27 = vcgtq_u64(v25, vdupq_n_s64(1uLL));
    v28 = vsubq_s64(vandq_s8(v26, v27), vmvnq_s8(v27));
    v29 = 1;
    do
    {
      v47 = v28;
      v30 = v29;
      v54 = 0uLL;
      *&v55[0] = 0;
      v58 = v28;
      v59 = 1;
      v56 = 0uLL;
      v57 = 0;
      [blitCommandEncoder copyFromTexture:v49 sourceSlice:0 sourceLevel:v24 sourceOrigin:&v54 sourceSize:&v58 toTexture:v12 destinationSlice:0 destinationLevel:v24 + 1 destinationOrigin:&v56];
      v54 = 0uLL;
      *&v55[0] = 0;
      v58 = v47;
      v59 = 1;
      v56 = 0uLL;
      v57 = 0;
      [blitCommandEncoder copyFromTexture:v48 sourceSlice:0 sourceLevel:v24 sourceOrigin:&v54 sourceSize:&v58 toTexture:v13 destinationSlice:0 destinationLevel:v24 + 1 destinationOrigin:&v56];
      v29 = 0;
      v31 = vcgtq_u64(v47, vdupq_n_s64(1uLL));
      v28 = vsubq_s64(vandq_s8(vshrq_n_u64(v47, 1uLL), v31), vmvnq_s8(v31));
      v24 = 1;
    }

    while ((v30 & 1) != 0);
    [blitCommandEncoder endEncoding];
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder pushDebugGroup:@"transfer upsample"];
    v32 = objc_loadWeakRetained(&self->_resourceManager);
    blurUpsamplePipelineState = [v32 blurUpsamplePipelineState];

    [computeCommandEncoder setComputePipelineState:blurUpsamplePipelineState];
    memset(v55, 0, sizeof(v55));
    v54 = 0u;
    sub_4234(blurUpsamplePipelineState, self->_shadowTargetWidth, self->_shadowTargetHeight, &v54);
    [computeCommandEncoder setTexture:v49 atIndex:0];
    [computeCommandEncoder setTexture:v12 atIndex:1];
    v58 = *(v55 + 8);
    v59 = *(&v55[1] + 1);
    v56 = v54;
    v57 = *&v55[0];
    [computeCommandEncoder dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
    [computeCommandEncoder setTexture:v48 atIndex:0];
    [computeCommandEncoder setTexture:v13 atIndex:1];
    v58 = *(v55 + 8);
    v59 = *(&v55[1] + 1);
    v56 = v54;
    v57 = *&v55[0];
    [computeCommandEncoder dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
    [computeCommandEncoder popDebugGroup];
  }

  else
  {
    v46 = quadCopy;
    self->_shadowTexturesQuality = 1;
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    v49 = self->_shadowTexturesLq[self->_currentShadowTextureIndex];
    v48 = self->_shadowTexturesLq[1 - self->_currentShadowTextureIndex];
    v12 = self->_shadowTexturesHq[self->_currentShadowTextureIndex];
    v13 = self->_shadowTexturesHq[1 - self->_currentShadowTextureIndex];
    v14 = 0;
    shadowTargetWidth = self->_shadowTargetWidth;
    shadowTargetHeight = self->_shadowTargetHeight;
    selfCopy = self;
    if (shadowTargetWidth <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = shadowTargetWidth >> 1;
    }

    if (shadowTargetHeight <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = shadowTargetHeight >> 1;
    }

    v19 = 1;
    do
    {
      v20 = v19;
      v54 = 0uLL;
      *&v55[0] = 0;
      v58.i64[0] = v17;
      v58.i64[1] = v18;
      v59 = 1;
      v56 = 0uLL;
      v57 = 0;
      [blitCommandEncoder copyFromTexture:v12 sourceSlice:0 sourceLevel:v14 + 1 sourceOrigin:&v54 sourceSize:&v58 toTexture:v49 destinationSlice:0 destinationLevel:v14 destinationOrigin:&v56];
      v54 = 0uLL;
      *&v55[0] = 0;
      v58.i64[0] = v17;
      v58.i64[1] = v18;
      v59 = 1;
      v56 = 0uLL;
      v57 = 0;
      [blitCommandEncoder copyFromTexture:v13 sourceSlice:0 sourceLevel:v14 + 1 sourceOrigin:&v54 sourceSize:&v58 toTexture:v48 destinationSlice:0 destinationLevel:v14 destinationOrigin:&v56];
      v19 = 0;
      if (v17 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 >>= 1;
      }

      if (v18 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 >>= 1;
      }

      LODWORD(v52) = v14 + 1;
      v14 = 1;
    }

    while ((v20 & 1) != 0);
    [blitCommandEncoder endEncoding];
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder pushDebugGroup:@"transfer downsample"];
    self = selfCopy;
    v22 = objc_loadWeakRetained(&selfCopy->_resourceManager);
    blurDownsamplePipelineState = [v22 blurDownsamplePipelineState];

    [computeCommandEncoder setComputePipelineState:blurDownsamplePipelineState];
    [computeCommandEncoder setBytes:&v52 length:4 atIndex:0];
    [computeCommandEncoder setTexture:v49 atIndex:0];
    [computeCommandEncoder setTexture:v49 atIndex:1];
    memset(v55, 0, sizeof(v55));
    v54 = 0u;
    sub_4234(blurDownsamplePipelineState, v17, v18, &v54);
    v58 = *(v55 + 8);
    v59 = *(&v55[1] + 1);
    v56 = v54;
    v57 = *&v55[0];
    [computeCommandEncoder dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
    [computeCommandEncoder setTexture:v48 atIndex:0];
    [computeCommandEncoder setTexture:v48 atIndex:1];
    v58 = *(v55 + 8);
    v59 = *(&v55[1] + 1);
    v56 = v54;
    v57 = *&v55[0];
    [computeCommandEncoder dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
    [computeCommandEncoder popDebugGroup];

    quadCopy = v46;
  }

  if (!computeCommandEncoder)
  {
LABEL_25:
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
  }

  v52 = *&self->_hourAngle;
  secondAngle = self->_secondAngle;
  [computeCommandEncoder pushDebugGroup:@"prepare shadow state"];
  v34 = objc_loadWeakRetained(&self->_resourceManager);
  scenePreparationComputePipelineState = [v34 scenePreparationComputePipelineState];
  [computeCommandEncoder setComputePipelineState:scenePreparationComputePipelineState];

  [computeCommandEncoder setBytes:&v52 length:12 atIndex:0];
  [computeCommandEncoder setBuffer:self->_lightsBuffer offset:0 atIndex:1];
  v54 = vdupq_n_s64(1uLL);
  *&v55[0] = 1;
  v58 = v54;
  v59 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v54 threadsPerThreadgroup:&v58];
  [computeCommandEncoder popDebugGroup];
  v36 = 48;
  if (self->_shadowTexturesQuality == 1)
  {
    v36 = 32;
  }

  v37 = self + v36;
  v38 = *(&self->super.isa + 8 * self->_currentShadowTextureIndex + v36);
  v39 = *&v37[8 * (1 - self->_currentShadowTextureIndex)];
  self->_currentShadowTextureIndex = 1 - self->_currentShadowTextureIndex;
  [computeCommandEncoder pushDebugGroup:@"shadow"];
  v40 = 2 * ([quadCopy role] == 0);
  v41 = objc_loadWeakRetained(&self->_resourceManager);
  v42 = [v41 shadowComputePipelineForConfig:v40];

  [computeCommandEncoder setComputePipelineState:v42];
  [computeCommandEncoder setTexture:v38 atIndex:0];
  [computeCommandEncoder setTexture:v39 atIndex:1];
  v51 = 0;
  if ([quadCopy density] == &dword_0 + 1)
  {
    v43 = 12;
  }

  else
  {
    v43 = 0;
  }

  LOWORD(v51) = v43;
  v50[0] = arc4random();
  v44 = 0.8;
  if (!self->_shouldUseAccumulationForNextFrame)
  {
    v44 = 0.0;
  }

  *&v50[1] = v44;
  self->_shouldUseAccumulationForNextFrame = 1;
  [computeCommandEncoder setBytes:v50 length:12 atIndex:0];
  memset(v55, 0, sizeof(v55));
  v54 = 0u;
  sub_4234(v42, [v38 width], objc_msgSend(v38, "height"), &v54);
  v58 = *(v55 + 8);
  v59 = *(&v55[1] + 1);
  v56 = v54;
  v57 = *&v55[0];
  [computeCommandEncoder dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];

  [computeCommandEncoder popDebugGroup];
  [(NTKColtanRenderer *)self _downsampleTexture:v38 inEncoder:computeCommandEncoder desiredMipLevels:2];

  [computeCommandEncoder endEncoding];
LABEL_34:
}

- (void)_downsampleTexture:(id)texture inEncoder:(id)encoder desiredMipLevels:(int)levels
{
  textureCopy = texture;
  encoderCopy = encoder;
  WeakRetained = objc_loadWeakRetained(&self->_resourceManager);

  if (WeakRetained)
  {
    [encoderCopy pushDebugGroup:@"downsample"];
    v11 = objc_loadWeakRetained(&self->_resourceManager);
    blurDownsamplePipelineState = [v11 blurDownsamplePipelineState];

    [encoderCopy setComputePipelineState:blurDownsamplePipelineState];
    [encoderCopy setTexture:textureCopy atIndex:0];
    [encoderCopy setTexture:textureCopy atIndex:1];
    if (levels >= 1)
    {
      v13 = 1;
      do
      {
        v24 = v13;
        width = [textureCopy width];
        v15 = width >> v24;
        height = [textureCopy height];
        v17 = height >> v24;
        if (v15)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          break;
        }

        [encoderCopy setBytes:&v24 length:4 atIndex:0];
        memset(v23, 0, sizeof(v23));
        sub_4234(blurDownsamplePipelineState, v15, v17, v23);
        v21 = *(&v23[1] + 8);
        v22 = *(&v23[2] + 1);
        v19 = v23[0];
        v20 = *&v23[1];
        [encoderCopy dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
        ++v13;
        --levels;
      }

      while (levels);
    }

    [encoderCopy popDebugGroup];
  }
}

- (void)drawWithRenderEncoder:(id)encoder forQuad:(id)quad
{
  encoderCopy = encoder;
  quadCopy = quad;
  WeakRetained = objc_loadWeakRetained(&self->_resourceManager);

  if (WeakRetained)
  {
    [encoderCopy pushDebugGroup:@"light"];
    [quadCopy opacity];
    v10 = v9;
    v11 = 2 * ([quadCopy role] == 0);
    if ([quadCopy isMasking])
    {
      [quadCopy maskRadius];
      v13 = v12;
      v11 |= 1uLL;
    }

    else
    {
      v13 = 0;
    }

    if (v10 >= 1.0)
    {
      v14 = v11;
    }

    else
    {
      v14 = v11 | 4;
    }

    v15 = 48;
    if (self->_shadowTexturesQuality == 1)
    {
      v15 = 32;
    }

    v16 = *(&self->super.isa + 8 * (1 - self->_currentShadowTextureIndex) + v15);
    v17 = objc_loadWeakRetained(&self->_resourceManager);
    v18 = [v17 renderPipelineForConfig:v14];
    [encoderCopy setRenderPipelineState:v18];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    *(&v41 + 1) = vmul_f32(vcvt_f32_f64(self->_size), 0xBF000000BF000000);
    *&v33 = *&self->_hourAngle;
    DWORD2(v33) = LODWORD(self->_secondAngle);
    if ([quadCopy density] == &dword_0 + 1)
    {
      v19 = 12;
    }

    else
    {
      v19 = 0;
    }

    WORD6(v33) = v19;
    *&v20 = self->_size.height / self->_size.width;
    *&v40 = __PAIR64__(v13, v20);
    [quadCopy opacity];
    DWORD2(v40) = v21;
    [quadCopy tickOpacity];
    HIDWORD(v40) = v22;
    [quadCopy hourHandInnerColor];
    v34 = v23;
    [quadCopy hourHandOuterColor];
    v35 = v24;
    [quadCopy minuteHandInnerColor];
    v36 = v25;
    [quadCopy minuteHandOuterColor];
    v37 = v26;
    [quadCopy centerGlowColor];
    v38 = v27;
    [quadCopy secondHandColor];
    v39 = v28;
    [quadCopy tickColoration];
    LODWORD(v41) = v29;
    [encoderCopy setVertexBytes:&v33 length:144 atIndex:0];
    [encoderCopy setFragmentBytes:&v33 length:144 atIndex:0];
    [encoderCopy setFragmentTexture:v16 atIndex:0];
    v30 = objc_loadWeakRetained(&self->_resourceManager);
    handLightTexture = [v30 handLightTexture];
    atlas = [handLightTexture atlas];
    [atlas bind:encoderCopy slot:1];

    [encoderCopy drawPrimitives:3 vertexStart:0 vertexCount:3];
    [encoderCopy popDebugGroup];
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (NTKColtanResourceManager)resourceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_resourceManager);

  return WeakRetained;
}

@end