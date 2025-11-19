@interface CVAFilterHybridResampling
+ (void)prewarmScaler:(id)a3 device:(id)a4 commandBuffer:(id)a5;
- (CVAFilterHybridResampling)initWithFigMetalContext:(id)a3 commandQueue:(id)a4 error:(id *)a5;
- (void)encodeBilinearScalingToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 mode:(int64_t)a6;
- (void)encodeHybridDownsamplingToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
@end

@implementation CVAFilterHybridResampling

- (void)encodeBilinearScalingToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 mode:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 width];
  v14 = [v12 height];
  v15 = [v10 computeCommandEncoder];
  switch(a6)
  {
    case 2:
      if ([v11 pixelFormat] == 125 || objc_msgSend(v11, "pixelFormat") == 115)
      {
        [v15 setLabel:@"_linearResampler"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__linearResampler;
      }

      else
      {
        [v15 setLabel:@"_linearResamplerOneComponent"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__linearResamplerOneComponent;
      }

      goto LABEL_16;
    case 1:
      if ([v11 pixelFormat] == 125 || objc_msgSend(v11, "pixelFormat") == 115)
      {
        [v15 setLabel:@"_halfDownSampler"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__halfDownSampler;
      }

      else
      {
        [v15 setLabel:@"_halfDownSamplerOneComponent"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__halfDownSamplerOneComponent;
      }

      goto LABEL_16;
    case 0:
      if ([v11 pixelFormat] == 125 || objc_msgSend(v11, "pixelFormat") == 115)
      {
        [v15 setLabel:@"_doubleUpsampler"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__doubleUpsampler;
      }

      else
      {
        [v15 setLabel:@"_doubleUpsamplerOneComponent"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__doubleUpsamplerOneComponent;
      }

LABEL_16:
      [v15 setComputePipelineState:*(&self->super.super.isa + *v16)];
      break;
  }

  [v15 setTexture:v11 atIndex:0];
  [v15 setTexture:v12 atIndex:1];
  v19[0] = (v13 + 15) >> 4;
  v19[1] = (v14 + 15) >> 4;
  v19[2] = 1;
  v17 = xmmword_1DED747F0;
  v18 = 1;
  [v15 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v15 endEncoding];
}

- (void)encodeHybridDownsamplingToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v26 = a3;
  v8 = a4;
  v9 = a5;
  p_hybridDownsamplingIntermediateR32Texture = &self->_hybridDownsamplingIntermediateR32Texture;
  if (!self->_hybridDownsamplingIntermediateR32Texture)
  {
    v11 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:objc_msgSend(v8 height:"width") >> 1 mipmapped:objc_msgSend(v8, "height") >> 1, 0];
    [v11 setUsage:3];
    v12 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v11];

    v13 = *p_hybridDownsamplingIntermediateR32Texture;
    *p_hybridDownsamplingIntermediateR32Texture = v12;

    v14 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:objc_msgSend(v8 height:"width") >> 1 mipmapped:objc_msgSend(v8, "height") >> 1, 0];
    [v14 setUsage:3];
    v15 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14];

    hybridDownsamplingIntermediateR16Texture = self->_hybridDownsamplingIntermediateR16Texture;
    self->_hybridDownsamplingIntermediateR16Texture = v15;

    v17 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:objc_msgSend(v8 height:"width") >> 1 mipmapped:objc_msgSend(v8, "height") >> 1, 0];
    [v17 setUsage:3];
    v18 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17];

    hybridDownsamplingIntermediateR8Texture = self->_hybridDownsamplingIntermediateR8Texture;
    self->_hybridDownsamplingIntermediateR8Texture = v18;

    v20 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:objc_msgSend(v8 height:"width") >> 1 mipmapped:objc_msgSend(v8, "height") >> 1, 0];
    [v20 setUsage:3];
    v21 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v20];

    hybridDownsamplingIntermediateTexture = self->_hybridDownsamplingIntermediateTexture;
    self->_hybridDownsamplingIntermediateTexture = v21;
  }

  if ([v8 pixelFormat] != 55)
  {
    if ([v8 pixelFormat] == 25)
    {
      v23 = &OBJC_IVAR___CVAFilterHybridResampling__hybridDownsamplingIntermediateR16Texture;
    }

    else
    {
      v24 = [v8 pixelFormat];
      v23 = &OBJC_IVAR___CVAFilterHybridResampling__hybridDownsamplingIntermediateTexture;
      if (v24 == 10)
      {
        v23 = &OBJC_IVAR___CVAFilterHybridResampling__hybridDownsamplingIntermediateR8Texture;
      }
    }

    p_hybridDownsamplingIntermediateR32Texture = (&self->super.super.isa + *v23);
  }

  v25 = *p_hybridDownsamplingIntermediateR32Texture;
  [(CVAFilterHybridResampling *)self encodeBilinearScalingToCommandBuffer:v26 source:v8 destination:v25 mode:1];
  [(MPSImageLanczosScale *)self->_scaler encodeToCommandBuffer:v26 sourceTexture:v25 destinationTexture:v9];
}

- (CVAFilterHybridResampling)initWithFigMetalContext:(id)a3 commandQueue:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = CVAFilterHybridResampling;
  v9 = [(ImageSaverRegistrator *)&v20 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    label = v9->_label;
    v9->_label = v11;

    v13 = [v7 device];
    device = v9->_device;
    v9->_device = v13;

    sub_1DED422A0(&v9->_doubleUpsampler, v7, @"doubleUpsample", 0);
    sub_1DED422A0(&v9->_halfDownSampler, v7, @"halfDownsample", 0);
    sub_1DED422A0(&v9->_linearResampler, v7, @"linearResample", 0);
    sub_1DED422A0(&v9->_doubleUpsamplerOneComponent, v7, @"doubleUpsampleOneComponent", 0);
    sub_1DED422A0(&v9->_halfDownSamplerOneComponent, v7, @"halfDownsampleOneComponent", 0);
    sub_1DED422A0(&v9->_linearResamplerOneComponent, v7, @"linearResampleOneComponent", 0);
    if (!sub_1DED5D1F8(@"harvesting.enabled", @"com.apple.coremedia", 0))
    {
      v15 = [objc_alloc(MEMORY[0x1E69745F0]) initWithDevice:{v9->_device, &v9->_doubleUpsampler, @"doubleUpsample", 0, &v9->_halfDownSampler, @"halfDownsample", 0, &v9->_linearResampler, @"linearResample", 0, &v9->_doubleUpsamplerOneComponent, @"doubleUpsampleOneComponent", 0, &v9->_halfDownSamplerOneComponent, @"halfDownsampleOneComponent", 0, &v9->_linearResamplerOneComponent, @"linearResampleOneComponent", 0}];
      scaler = v9->_scaler;
      v9->_scaler = v15;

      [(MPSImageLanczosScale *)v9->_scaler setEdgeMode:1];
      v17 = [v8 commandBuffer];
      [v17 setLabel:@"MPSImageLanczosScale"];
      [CVAFilterHybridResampling prewarmScaler:v9->_scaler device:v9->_device commandBuffer:v17];
      [v17 commit];
    }

    v18 = v9;
  }

  return v9;
}

+ (void)prewarmScaler:(id)a3 device:(id)a4 commandBuffer:(id)a5
{
  v25 = a3;
  v7 = a4;
  v24 = a5;
  v23 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:72 height:54 mipmapped:0];
  v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:36 height:27 mipmapped:0];
  v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:16 height:12 mipmapped:0];
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:8 height:6 mipmapped:0];
  v11 = [v7 newTextureWithDescriptor:v23];
  v12 = [v7 newTextureWithDescriptor:v8];
  [v9 setUsage:3];
  v13 = [v7 newTextureWithDescriptor:v9];
  [v10 setUsage:3];
  v14 = [v7 newTextureWithDescriptor:v10];
  [v25 encodeToCommandBuffer:v24 sourceTexture:v11 destinationTexture:v13];
  [v25 encodeToCommandBuffer:v24 sourceTexture:v12 destinationTexture:v14];

  v15 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:16 height:12 mipmapped:0];
  v16 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:36 height:27 mipmapped:0];
  [v16 setUsage:3];
  v17 = [v7 newTextureWithDescriptor:v15];
  v18 = [v7 newTextureWithDescriptor:v16];
  [v25 encodeToCommandBuffer:v24 sourceTexture:v17 destinationTexture:v18];

  v19 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:16 height:12 mipmapped:0];
  v20 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:36 height:27 mipmapped:0];
  [v20 setUsage:3];
  v21 = [v7 newTextureWithDescriptor:v19];
  v22 = [v7 newTextureWithDescriptor:v20];
  [v25 encodeToCommandBuffer:v24 sourceTexture:v21 destinationTexture:v22];
}

@end