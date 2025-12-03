@interface CVAFilterHybridResampling
+ (void)prewarmScaler:(id)scaler device:(id)device commandBuffer:(id)buffer;
- (CVAFilterHybridResampling)initWithFigMetalContext:(id)context commandQueue:(id)queue error:(id *)error;
- (void)encodeBilinearScalingToCommandBuffer:(id)buffer source:(id)source destination:(id)destination mode:(int64_t)mode;
- (void)encodeHybridDownsamplingToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
@end

@implementation CVAFilterHybridResampling

- (void)encodeBilinearScalingToCommandBuffer:(id)buffer source:(id)source destination:(id)destination mode:(int64_t)mode
{
  bufferCopy = buffer;
  sourceCopy = source;
  destinationCopy = destination;
  width = [destinationCopy width];
  height = [destinationCopy height];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  switch(mode)
  {
    case 2:
      if ([sourceCopy pixelFormat] == 125 || objc_msgSend(sourceCopy, "pixelFormat") == 115)
      {
        [computeCommandEncoder setLabel:@"_linearResampler"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__linearResampler;
      }

      else
      {
        [computeCommandEncoder setLabel:@"_linearResamplerOneComponent"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__linearResamplerOneComponent;
      }

      goto LABEL_16;
    case 1:
      if ([sourceCopy pixelFormat] == 125 || objc_msgSend(sourceCopy, "pixelFormat") == 115)
      {
        [computeCommandEncoder setLabel:@"_halfDownSampler"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__halfDownSampler;
      }

      else
      {
        [computeCommandEncoder setLabel:@"_halfDownSamplerOneComponent"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__halfDownSamplerOneComponent;
      }

      goto LABEL_16;
    case 0:
      if ([sourceCopy pixelFormat] == 125 || objc_msgSend(sourceCopy, "pixelFormat") == 115)
      {
        [computeCommandEncoder setLabel:@"_doubleUpsampler"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__doubleUpsampler;
      }

      else
      {
        [computeCommandEncoder setLabel:@"_doubleUpsamplerOneComponent"];
        v16 = &OBJC_IVAR___CVAFilterHybridResampling__doubleUpsamplerOneComponent;
      }

LABEL_16:
      [computeCommandEncoder setComputePipelineState:*(&self->super.super.isa + *v16)];
      break;
  }

  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  [computeCommandEncoder setTexture:destinationCopy atIndex:1];
  v19[0] = (width + 15) >> 4;
  v19[1] = (height + 15) >> 4;
  v19[2] = 1;
  v17 = xmmword_1DED747F0;
  v18 = 1;
  [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

- (void)encodeHybridDownsamplingToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  bufferCopy = buffer;
  sourceCopy = source;
  destinationCopy = destination;
  p_hybridDownsamplingIntermediateR32Texture = &self->_hybridDownsamplingIntermediateR32Texture;
  if (!self->_hybridDownsamplingIntermediateR32Texture)
  {
    v11 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:objc_msgSend(sourceCopy height:"width") >> 1 mipmapped:objc_msgSend(sourceCopy, "height") >> 1, 0];
    [v11 setUsage:3];
    v12 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v11];

    v13 = *p_hybridDownsamplingIntermediateR32Texture;
    *p_hybridDownsamplingIntermediateR32Texture = v12;

    v14 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:objc_msgSend(sourceCopy height:"width") >> 1 mipmapped:objc_msgSend(sourceCopy, "height") >> 1, 0];
    [v14 setUsage:3];
    v15 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14];

    hybridDownsamplingIntermediateR16Texture = self->_hybridDownsamplingIntermediateR16Texture;
    self->_hybridDownsamplingIntermediateR16Texture = v15;

    v17 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:objc_msgSend(sourceCopy height:"width") >> 1 mipmapped:objc_msgSend(sourceCopy, "height") >> 1, 0];
    [v17 setUsage:3];
    v18 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17];

    hybridDownsamplingIntermediateR8Texture = self->_hybridDownsamplingIntermediateR8Texture;
    self->_hybridDownsamplingIntermediateR8Texture = v18;

    v20 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:objc_msgSend(sourceCopy height:"width") >> 1 mipmapped:objc_msgSend(sourceCopy, "height") >> 1, 0];
    [v20 setUsage:3];
    v21 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v20];

    hybridDownsamplingIntermediateTexture = self->_hybridDownsamplingIntermediateTexture;
    self->_hybridDownsamplingIntermediateTexture = v21;
  }

  if ([sourceCopy pixelFormat] != 55)
  {
    if ([sourceCopy pixelFormat] == 25)
    {
      v23 = &OBJC_IVAR___CVAFilterHybridResampling__hybridDownsamplingIntermediateR16Texture;
    }

    else
    {
      pixelFormat = [sourceCopy pixelFormat];
      v23 = &OBJC_IVAR___CVAFilterHybridResampling__hybridDownsamplingIntermediateTexture;
      if (pixelFormat == 10)
      {
        v23 = &OBJC_IVAR___CVAFilterHybridResampling__hybridDownsamplingIntermediateR8Texture;
      }
    }

    p_hybridDownsamplingIntermediateR32Texture = (&self->super.super.isa + *v23);
  }

  v25 = *p_hybridDownsamplingIntermediateR32Texture;
  [(CVAFilterHybridResampling *)self encodeBilinearScalingToCommandBuffer:bufferCopy source:sourceCopy destination:v25 mode:1];
  [(MPSImageLanczosScale *)self->_scaler encodeToCommandBuffer:bufferCopy sourceTexture:v25 destinationTexture:destinationCopy];
}

- (CVAFilterHybridResampling)initWithFigMetalContext:(id)context commandQueue:(id)queue error:(id *)error
{
  contextCopy = context;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = CVAFilterHybridResampling;
  v9 = [(ImageSaverRegistrator *)&v20 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    label = v9->_label;
    v9->_label = v11;

    device = [contextCopy device];
    device = v9->_device;
    v9->_device = device;

    sub_1DED422A0(&v9->_doubleUpsampler, contextCopy, @"doubleUpsample", 0);
    sub_1DED422A0(&v9->_halfDownSampler, contextCopy, @"halfDownsample", 0);
    sub_1DED422A0(&v9->_linearResampler, contextCopy, @"linearResample", 0);
    sub_1DED422A0(&v9->_doubleUpsamplerOneComponent, contextCopy, @"doubleUpsampleOneComponent", 0);
    sub_1DED422A0(&v9->_halfDownSamplerOneComponent, contextCopy, @"halfDownsampleOneComponent", 0);
    sub_1DED422A0(&v9->_linearResamplerOneComponent, contextCopy, @"linearResampleOneComponent", 0);
    if (!sub_1DED5D1F8(@"harvesting.enabled", @"com.apple.coremedia", 0))
    {
      v15 = [objc_alloc(MEMORY[0x1E69745F0]) initWithDevice:{v9->_device, &v9->_doubleUpsampler, @"doubleUpsample", 0, &v9->_halfDownSampler, @"halfDownsample", 0, &v9->_linearResampler, @"linearResample", 0, &v9->_doubleUpsamplerOneComponent, @"doubleUpsampleOneComponent", 0, &v9->_halfDownSamplerOneComponent, @"halfDownsampleOneComponent", 0, &v9->_linearResamplerOneComponent, @"linearResampleOneComponent", 0}];
      scaler = v9->_scaler;
      v9->_scaler = v15;

      [(MPSImageLanczosScale *)v9->_scaler setEdgeMode:1];
      commandBuffer = [queueCopy commandBuffer];
      [commandBuffer setLabel:@"MPSImageLanczosScale"];
      [CVAFilterHybridResampling prewarmScaler:v9->_scaler device:v9->_device commandBuffer:commandBuffer];
      [commandBuffer commit];
    }

    v18 = v9;
  }

  return v9;
}

+ (void)prewarmScaler:(id)scaler device:(id)device commandBuffer:(id)buffer
{
  scalerCopy = scaler;
  deviceCopy = device;
  bufferCopy = buffer;
  v23 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:72 height:54 mipmapped:0];
  v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:36 height:27 mipmapped:0];
  v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:16 height:12 mipmapped:0];
  v10 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:8 height:6 mipmapped:0];
  v11 = [deviceCopy newTextureWithDescriptor:v23];
  v12 = [deviceCopy newTextureWithDescriptor:v8];
  [v9 setUsage:3];
  v13 = [deviceCopy newTextureWithDescriptor:v9];
  [v10 setUsage:3];
  v14 = [deviceCopy newTextureWithDescriptor:v10];
  [scalerCopy encodeToCommandBuffer:bufferCopy sourceTexture:v11 destinationTexture:v13];
  [scalerCopy encodeToCommandBuffer:bufferCopy sourceTexture:v12 destinationTexture:v14];

  v15 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:16 height:12 mipmapped:0];
  v16 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:115 width:36 height:27 mipmapped:0];
  [v16 setUsage:3];
  v17 = [deviceCopy newTextureWithDescriptor:v15];
  v18 = [deviceCopy newTextureWithDescriptor:v16];
  [scalerCopy encodeToCommandBuffer:bufferCopy sourceTexture:v17 destinationTexture:v18];

  v19 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:16 height:12 mipmapped:0];
  v20 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:36 height:27 mipmapped:0];
  [v20 setUsage:3];
  v21 = [deviceCopy newTextureWithDescriptor:v19];
  v22 = [deviceCopy newTextureWithDescriptor:v20];
  [scalerCopy encodeToCommandBuffer:bufferCopy sourceTexture:v21 destinationTexture:v22];
}

@end