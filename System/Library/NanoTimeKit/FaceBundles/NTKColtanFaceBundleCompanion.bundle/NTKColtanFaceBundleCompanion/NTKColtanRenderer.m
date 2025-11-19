@interface NTKColtanRenderer
- (CGSize)size;
- (NTKColtanRenderer)initWithSize:(CGSize)a3;
- (NTKColtanResourceManager)resourceManager;
- (void)_downsampleTexture:(id)a3 inEncoder:(id)a4 desiredMipLevels:(int)a5;
- (void)drawWithRenderEncoder:(id)a3 forQuad:(id)a4;
- (void)updateWithCommandBuffer:(id)a3 forQuad:(id)a4;
@end

@implementation NTKColtanRenderer

- (NTKColtanRenderer)initWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

    v9 = [(MTLDevice *)v6->_device newCommandQueue];
    commandQueue = v6->_commandQueue;
    v6->_commandQueue = v9;

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

- (void)updateWithCommandBuffer:(id)a3 forQuad:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_resourceManager);

  if (!WeakRetained)
  {
    goto LABEL_34;
  }

  shadowTexturesQuality = self->_shadowTexturesQuality;
  v10 = [v7 quality];
  if (v10 != &dword_0 + 1 || shadowTexturesQuality)
  {
    if (v10 || shadowTexturesQuality != 1)
    {
      goto LABEL_25;
    }

    self->_shadowTexturesQuality = 0;
    v11 = [v6 blitCommandEncoder];
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
      [v11 copyFromTexture:v49 sourceSlice:0 sourceLevel:v24 sourceOrigin:&v54 sourceSize:&v58 toTexture:v12 destinationSlice:0 destinationLevel:v24 + 1 destinationOrigin:&v56];
      v54 = 0uLL;
      *&v55[0] = 0;
      v58 = v47;
      v59 = 1;
      v56 = 0uLL;
      v57 = 0;
      [v11 copyFromTexture:v48 sourceSlice:0 sourceLevel:v24 sourceOrigin:&v54 sourceSize:&v58 toTexture:v13 destinationSlice:0 destinationLevel:v24 + 1 destinationOrigin:&v56];
      v29 = 0;
      v31 = vcgtq_u64(v47, vdupq_n_s64(1uLL));
      v28 = vsubq_s64(vandq_s8(vshrq_n_u64(v47, 1uLL), v31), vmvnq_s8(v31));
      v24 = 1;
    }

    while ((v30 & 1) != 0);
    [v11 endEncoding];
    v21 = [v6 computeCommandEncoder];
    [v21 pushDebugGroup:@"transfer upsample"];
    v32 = objc_loadWeakRetained(&self->_resourceManager);
    v33 = [v32 blurUpsamplePipelineState];

    [v21 setComputePipelineState:v33];
    memset(v55, 0, sizeof(v55));
    v54 = 0u;
    sub_4234(v33, self->_shadowTargetWidth, self->_shadowTargetHeight, &v54);
    [v21 setTexture:v49 atIndex:0];
    [v21 setTexture:v12 atIndex:1];
    v58 = *(v55 + 8);
    v59 = *(&v55[1] + 1);
    v56 = v54;
    v57 = *&v55[0];
    [v21 dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
    [v21 setTexture:v48 atIndex:0];
    [v21 setTexture:v13 atIndex:1];
    v58 = *(v55 + 8);
    v59 = *(&v55[1] + 1);
    v56 = v54;
    v57 = *&v55[0];
    [v21 dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
    [v21 popDebugGroup];
  }

  else
  {
    v46 = v7;
    self->_shadowTexturesQuality = 1;
    v11 = [v6 blitCommandEncoder];
    v49 = self->_shadowTexturesLq[self->_currentShadowTextureIndex];
    v48 = self->_shadowTexturesLq[1 - self->_currentShadowTextureIndex];
    v12 = self->_shadowTexturesHq[self->_currentShadowTextureIndex];
    v13 = self->_shadowTexturesHq[1 - self->_currentShadowTextureIndex];
    v14 = 0;
    shadowTargetWidth = self->_shadowTargetWidth;
    shadowTargetHeight = self->_shadowTargetHeight;
    v45 = self;
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
      [v11 copyFromTexture:v12 sourceSlice:0 sourceLevel:v14 + 1 sourceOrigin:&v54 sourceSize:&v58 toTexture:v49 destinationSlice:0 destinationLevel:v14 destinationOrigin:&v56];
      v54 = 0uLL;
      *&v55[0] = 0;
      v58.i64[0] = v17;
      v58.i64[1] = v18;
      v59 = 1;
      v56 = 0uLL;
      v57 = 0;
      [v11 copyFromTexture:v13 sourceSlice:0 sourceLevel:v14 + 1 sourceOrigin:&v54 sourceSize:&v58 toTexture:v48 destinationSlice:0 destinationLevel:v14 destinationOrigin:&v56];
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
    [v11 endEncoding];
    v21 = [v6 computeCommandEncoder];
    [v21 pushDebugGroup:@"transfer downsample"];
    self = v45;
    v22 = objc_loadWeakRetained(&v45->_resourceManager);
    v23 = [v22 blurDownsamplePipelineState];

    [v21 setComputePipelineState:v23];
    [v21 setBytes:&v52 length:4 atIndex:0];
    [v21 setTexture:v49 atIndex:0];
    [v21 setTexture:v49 atIndex:1];
    memset(v55, 0, sizeof(v55));
    v54 = 0u;
    sub_4234(v23, v17, v18, &v54);
    v58 = *(v55 + 8);
    v59 = *(&v55[1] + 1);
    v56 = v54;
    v57 = *&v55[0];
    [v21 dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
    [v21 setTexture:v48 atIndex:0];
    [v21 setTexture:v48 atIndex:1];
    v58 = *(v55 + 8);
    v59 = *(&v55[1] + 1);
    v56 = v54;
    v57 = *&v55[0];
    [v21 dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];
    [v21 popDebugGroup];

    v7 = v46;
  }

  if (!v21)
  {
LABEL_25:
    v21 = [v6 computeCommandEncoder];
  }

  v52 = *&self->_hourAngle;
  secondAngle = self->_secondAngle;
  [v21 pushDebugGroup:@"prepare shadow state"];
  v34 = objc_loadWeakRetained(&self->_resourceManager);
  v35 = [v34 scenePreparationComputePipelineState];
  [v21 setComputePipelineState:v35];

  [v21 setBytes:&v52 length:12 atIndex:0];
  [v21 setBuffer:self->_lightsBuffer offset:0 atIndex:1];
  v54 = vdupq_n_s64(1uLL);
  *&v55[0] = 1;
  v58 = v54;
  v59 = 1;
  [v21 dispatchThreadgroups:&v54 threadsPerThreadgroup:&v58];
  [v21 popDebugGroup];
  v36 = 48;
  if (self->_shadowTexturesQuality == 1)
  {
    v36 = 32;
  }

  v37 = self + v36;
  v38 = *(&self->super.isa + 8 * self->_currentShadowTextureIndex + v36);
  v39 = *&v37[8 * (1 - self->_currentShadowTextureIndex)];
  self->_currentShadowTextureIndex = 1 - self->_currentShadowTextureIndex;
  [v21 pushDebugGroup:@"shadow"];
  v40 = 2 * ([v7 role] == 0);
  v41 = objc_loadWeakRetained(&self->_resourceManager);
  v42 = [v41 shadowComputePipelineForConfig:v40];

  [v21 setComputePipelineState:v42];
  [v21 setTexture:v38 atIndex:0];
  [v21 setTexture:v39 atIndex:1];
  v51 = 0;
  if ([v7 density] == &dword_0 + 1)
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
  [v21 setBytes:v50 length:12 atIndex:0];
  memset(v55, 0, sizeof(v55));
  v54 = 0u;
  sub_4234(v42, [v38 width], objc_msgSend(v38, "height"), &v54);
  v58 = *(v55 + 8);
  v59 = *(&v55[1] + 1);
  v56 = v54;
  v57 = *&v55[0];
  [v21 dispatchThreadgroups:&v58 threadsPerThreadgroup:&v56];

  [v21 popDebugGroup];
  [(NTKColtanRenderer *)self _downsampleTexture:v38 inEncoder:v21 desiredMipLevels:2];

  [v21 endEncoding];
LABEL_34:
}

- (void)_downsampleTexture:(id)a3 inEncoder:(id)a4 desiredMipLevels:(int)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_resourceManager);

  if (WeakRetained)
  {
    [v9 pushDebugGroup:@"downsample"];
    v11 = objc_loadWeakRetained(&self->_resourceManager);
    v12 = [v11 blurDownsamplePipelineState];

    [v9 setComputePipelineState:v12];
    [v9 setTexture:v8 atIndex:0];
    [v9 setTexture:v8 atIndex:1];
    if (a5 >= 1)
    {
      v13 = 1;
      do
      {
        v24 = v13;
        v14 = [v8 width];
        v15 = v14 >> v24;
        v16 = [v8 height];
        v17 = v16 >> v24;
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

        [v9 setBytes:&v24 length:4 atIndex:0];
        memset(v23, 0, sizeof(v23));
        sub_4234(v12, v15, v17, v23);
        v21 = *(&v23[1] + 8);
        v22 = *(&v23[2] + 1);
        v19 = v23[0];
        v20 = *&v23[1];
        [v9 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
        ++v13;
        --a5;
      }

      while (a5);
    }

    [v9 popDebugGroup];
  }
}

- (void)drawWithRenderEncoder:(id)a3 forQuad:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_resourceManager);

  if (WeakRetained)
  {
    [v6 pushDebugGroup:@"light"];
    [v7 opacity];
    v10 = v9;
    v11 = 2 * ([v7 role] == 0);
    if ([v7 isMasking])
    {
      [v7 maskRadius];
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
    [v6 setRenderPipelineState:v18];

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
    if ([v7 density] == &dword_0 + 1)
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
    [v7 opacity];
    DWORD2(v40) = v21;
    [v7 tickOpacity];
    HIDWORD(v40) = v22;
    [v7 hourHandInnerColor];
    v34 = v23;
    [v7 hourHandOuterColor];
    v35 = v24;
    [v7 minuteHandInnerColor];
    v36 = v25;
    [v7 minuteHandOuterColor];
    v37 = v26;
    [v7 centerGlowColor];
    v38 = v27;
    [v7 secondHandColor];
    v39 = v28;
    [v7 tickColoration];
    LODWORD(v41) = v29;
    [v6 setVertexBytes:&v33 length:144 atIndex:0];
    [v6 setFragmentBytes:&v33 length:144 atIndex:0];
    [v6 setFragmentTexture:v16 atIndex:0];
    v30 = objc_loadWeakRetained(&self->_resourceManager);
    v31 = [v30 handLightTexture];
    v32 = [v31 atlas];
    [v32 bind:v6 slot:1];

    [v6 drawPrimitives:3 vertexStart:0 vertexCount:3];
    [v6 popDebugGroup];
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