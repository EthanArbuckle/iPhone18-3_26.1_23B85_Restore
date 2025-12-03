@interface CVAFilterGuided
- (CVAFilterGuided)initWithFigMetalContext:(id)context commandQueue:(id)queue textureSize:(id *)size alphaSize:(id *)alphaSize kernelSize:(int)kernelSize infConvolutionDownsampling:(int)downsampling laplacianLimitingDownsampling:(int)limitingDownsampling laplacianLimitingBlurSize:(int)self0 error:(id *)self1;
- (void)encodeFilterApplyToBuffer:(id)buffer coeff:(id)coeff source:(id)source destination:(id)destination;
- (void)encodeHybridUpSamplingToCommandBuffer:(id)buffer source:(id)source destination:(id)destination;
- (void)encodePostProcessAlphaToCommandBuffer:(id)buffer source:(id)source destination:(id)destination alphaMaxLaplacian:(float)laplacian infConvOrientation:(float)orientation infConvMajorRadius:(float)radius infConvMinorRadius:(float)minorRadius gammaExponent:(float)self0 enableInfConvolution:(BOOL)self1;
- (void)encodeReconstructToCommandBuffer:(id)buffer inGuidancePixelBuffer:(__CVBuffer *)pixelBuffer inCoeffTexture:(id)texture outFilteredTexture:(id)filteredTexture;
- (void)encodeRegressionToCommandBuffer:(id)buffer inSourceTexture:(id)texture inGuidanceTexture:(id)guidanceTexture inWeightTexture:(id)weightTexture outCoeffTexture:(id)coeffTexture epsilon:(float)epsilon;
- (void)initSourceTexture:(__CVBuffer *)texture;
@end

@implementation CVAFilterGuided

- (void)encodeHybridUpSamplingToCommandBuffer:(id)buffer source:(id)source destination:(id)destination
{
  v18 = a2;
  selfCopy = self;
  bufferCopy = buffer;
  sourceCopy = source;
  destinationCopy = destination;
  if ([sourceCopy pixelFormat] == 55 || objc_msgSend(sourceCopy, "pixelFormat") == 25)
  {
    v10 = selfCopy;
    v11 = 200;
    hybridUpscalingIntermediateR32Texture = selfCopy->_hybridUpscalingIntermediateR32Texture;
    if (!hybridUpscalingIntermediateR32Texture)
    {
      v13 = sub_1DED47644(&v17, 55, [destinationCopy width] >> 1, objc_msgSend(destinationCopy, "height") >> 1);
LABEL_7:
      v14 = *(&selfCopy->super.super.isa + v11);
      *(&selfCopy->super.super.isa + v11) = v13;

      v10 = selfCopy;
      hybridUpscalingIntermediateR32Texture = *(&selfCopy->super.super.isa + v11);
    }
  }

  else
  {
    v10 = selfCopy;
    v11 = 192;
    hybridUpscalingIntermediateR32Texture = selfCopy->_hybridUpscalingIntermediateTexture;
    if (!hybridUpscalingIntermediateR32Texture)
    {
      v13 = sub_1DED47644(&v17, 115, [destinationCopy width] >> 1, objc_msgSend(destinationCopy, "height") >> 1);
      goto LABEL_7;
    }
  }

  v15 = hybridUpscalingIntermediateR32Texture;
  scaler = [(CVAFilterHybridResampling *)v10->_hybridResampler scaler];
  [scaler encodeToCommandBuffer:bufferCopy sourceTexture:sourceCopy destinationTexture:v15];

  [(CVAFilterHybridResampling *)selfCopy->_hybridResampler encodeBilinearScalingToCommandBuffer:bufferCopy source:v15 destination:destinationCopy mode:0];
}

- (void)encodePostProcessAlphaToCommandBuffer:(id)buffer source:(id)source destination:(id)destination alphaMaxLaplacian:(float)laplacian infConvOrientation:(float)orientation infConvMajorRadius:(float)radius infConvMinorRadius:(float)minorRadius gammaExponent:(float)self0 enableInfConvolution:(BOOL)self1
{
  convolutionCopy = convolution;
  bufferCopy = buffer;
  sourceCopy = source;
  destinationCopy = destination;
  *v40 = exponent;
  *&v40[1] = laplacian;
  v22 = convolutionCopy;
  if ((atomic_load_explicit(&qword_1ECDE1398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1398))
  {
    v33 = +[CVAPreferenceManager defaults];
    v34 = [v33 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE1396 = v34;
    __cxa_guard_release(&qword_1ECDE1398);
  }

  [(CVAFilterHybridResampling *)self->_hybridResampler encodeHybridDownsamplingToCommandBuffer:bufferCopy source:sourceCopy destination:self->_inputAlphaDownsampled];
  if (byte_1ECDE1396 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.laplacianLimDownsampling = %lu", objc_msgSend(sourceCopy, "width") / -[MTLTexture width](self->_inputAlphaDownsampled, "width")];
  }

  if (self->_inputAlphaBlurred)
  {
    [(MPSImageBox *)self->_mpsBox encodeToCommandBuffer:bufferCopy sourceTexture:self->_inputAlphaDownsampled destinationTexture:?];
    if (byte_1ECDE1396 == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.laplacianLimBlurSize = %lu", -[MPSImageBox kernelWidth](self->_mpsBox, "kernelWidth")];
    }
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_postProcessAlphaKernel"];
  [computeCommandEncoder setComputePipelineState:self->_postProcessAlphaKernel];
  [computeCommandEncoder setTexture:sourceCopy atIndex:0];
  gammaMatteTexture = destinationCopy;
  if (v22)
  {
    gammaMatteTexture = self->_gammaMatteTexture;
  }

  [computeCommandEncoder setTexture:gammaMatteTexture atIndex:1];
  inputAlphaBlurred = self->_inputAlphaBlurred;
  if (!inputAlphaBlurred)
  {
    inputAlphaBlurred = self->_inputAlphaDownsampled;
  }

  [computeCommandEncoder setTexture:inputAlphaBlurred atIndex:2];
  [computeCommandEncoder setSamplerState:self->_inputAlphaBlurredSampler atIndex:0];
  [computeCommandEncoder setBytes:v40 length:8 atIndex:0];
  *&__p = (([sourceCopy width] >> 1) + 15) >> 4;
  *(&__p + 1) = (([sourceCopy height] >> 1) + 15) >> 4;
  v39 = 1;
  v36 = xmmword_1DED747F0;
  v37 = 1;
  [computeCommandEncoder dispatchThreadgroups:&__p threadsPerThreadgroup:&v36];
  [computeCommandEncoder endEncoding];
  if (byte_1ECDE1396 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.InfimumConvolution = %d", v22];
  }

  if (v22)
  {
    if (byte_1ECDE1396 == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.infConvMinorRadius = %.2f", minorRadius];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.infConvMajorRadius = %.2f", radius];
    }

    [(CVAFilterHybridResampling *)self->_hybridResampler encodeHybridDownsamplingToCommandBuffer:bufferCopy source:self->_gammaMatteTexture destination:self->_lowResGammaMatte];
    if ((atomic_load_explicit(&qword_1ECDE13A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE13A8))
    {
      qword_1ECDE13A0 = [MEMORY[0x1E696AD98] numberWithInt:5];
      __cxa_guard_release(&qword_1ECDE13A8);
    }

    if ((byte_1ECDE13B0 & 1) == 0)
    {
      HIBYTE(v39) = 12;
      strcpy(&__p, "infConvIters");
      sub_1DED2C8A0(&qword_1ECDE13A0, &__p);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      byte_1ECDE13B0 = 1;
    }

    infConvolution = self->_infConvolution;
    v27 = self->_gammaMatteTexture;
    lowResGammaMatte = self->_lowResGammaMatte;
    intValue = [qword_1ECDE13A0 intValue];
    *&v30 = orientation;
    *&v31 = radius;
    *&v32 = minorRadius;
    [(CVAFilterInfimumConvolution *)infConvolution encodeToCommandBuffer:bufferCopy sourceTexture:v27 smallSourceTexture:lowResGammaMatte destinationTexture:destinationCopy orientation:intValue majorRadius:v30 minorRadius:v31 iterations:v32];
  }
}

- (void)encodeFilterApplyToBuffer:(id)buffer coeff:(id)coeff source:(id)source destination:(id)destination
{
  coeffCopy = coeff;
  sourceCopy = source;
  destinationCopy = destination;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_guidedFilterApplyRGBAKernel"];
  [computeCommandEncoder setComputePipelineState:self->_guidedFilterApplyRGBAKernel];
  [computeCommandEncoder setTexture:coeffCopy atIndex:0];
  [computeCommandEncoder setTexture:sourceCopy atIndex:1];
  [computeCommandEncoder setTexture:destinationCopy atIndex:2];
  v16[0] = (([destinationCopy width] >> 1) + 15) >> 4;
  v16[1] = (([destinationCopy height] >> 1) + 15) >> 4;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x10uLL);
  v15 = 1;
  [computeCommandEncoder dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [computeCommandEncoder endEncoding];
}

- (void)initSourceTexture:(__CVBuffer *)texture
{
  Width = CVPixelBufferGetWidth(texture);
  Height = CVPixelBufferGetHeight(texture);
  PixelFormatType = CVPixelBufferGetPixelFormatType(texture);
  v13 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v9 = [v13 containsObject:v8];

  if (v9)
  {
    v10 = 500;
  }

  else
  {
    v10 = 70;
  }

  v14 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v10 width:Width height:Height mipmapped:0];
  [v14 setStorageMode:0];
  v11 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14 iosurface:CVPixelBufferGetIOSurface(texture) plane:0];
  srcTexture = self->_srcTexture;
  self->_srcTexture = v11;
}

- (void)encodeReconstructToCommandBuffer:(id)buffer inGuidancePixelBuffer:(__CVBuffer *)pixelBuffer inCoeffTexture:(id)texture outFilteredTexture:(id)filteredTexture
{
  bufferCopy = buffer;
  textureCopy = texture;
  filteredTextureCopy = filteredTexture;
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:bufferCopy inTexture:textureCopy outTexture:self->_convolutedCoeff radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:2];
  [(CVAFilterGuided *)self encodeHybridUpSamplingToCommandBuffer:bufferCopy source:self->_convolutedCoeff destination:self->_upscaledCoeff];
  [(CVAFilterGuided *)self initSourceTexture:pixelBuffer];
  [(CVAFilterGuided *)self encodeFilterApplyToBuffer:bufferCopy coeff:self->_upscaledCoeff source:self->_srcTexture destination:filteredTextureCopy];
}

- (void)encodeRegressionToCommandBuffer:(id)buffer inSourceTexture:(id)texture inGuidanceTexture:(id)guidanceTexture inWeightTexture:(id)weightTexture outCoeffTexture:(id)coeffTexture epsilon:(float)epsilon
{
  bufferCopy = buffer;
  textureCopy = texture;
  guidanceTextureCopy = guidanceTexture;
  weightTextureCopy = weightTexture;
  coeffTextureCopy = coeffTexture;
  v38 = guidanceTextureCopy;
  v37 = textureCopy;
  v39 = weightTextureCopy;
  width = [weightTextureCopy width];
  height = [weightTextureCopy height];
  v35 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:width height:height mipmapped:0];
  [v35 setUsage:1];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:bufferCopy inTexture:weightTextureCopy outTexture:self->_gfMeanWeight radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"_guidedFilterInvertKernel"];
  [computeCommandEncoder setComputePipelineState:self->_guidedFilterInvertKernel];
  [computeCommandEncoder setTexture:self->_gfMeanWeight atIndex:0];
  [computeCommandEncoder setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  v21 = (width + 15) >> 4;
  v22 = (height + 15) >> 4;
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder endEncoding];
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder2 setLabel:@"_guidedFilterEmbedGuideKernel"];
  [computeCommandEncoder2 setComputePipelineState:self->_guidedFilterEmbedGuideKernel];
  [computeCommandEncoder2 setTexture:v38 atIndex:0];
  [computeCommandEncoder2 setTexture:v37 atIndex:1];
  [computeCommandEncoder2 setTexture:self->_gfSrcWithGuide atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder2 endEncoding];
  computeCommandEncoder3 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder3 setLabel:@"_guidedFilterMultiplyKernel"];
  [computeCommandEncoder3 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [computeCommandEncoder3 setTexture:self->_gfSrcWithGuide atIndex:0];
  [computeCommandEncoder3 setTexture:v39 atIndex:1];
  [computeCommandEncoder3 setTexture:self->_gfTmp atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder3 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder3 endEncoding];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:bufferCopy inTexture:self->_gfTmp outTexture:self->_gfTmp2 radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  computeCommandEncoder4 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder4 setLabel:@"_guidedFilterMultiplyKernel"];
  [computeCommandEncoder4 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [computeCommandEncoder4 setTexture:self->_gfTmp2 atIndex:0];
  [computeCommandEncoder4 setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  [computeCommandEncoder4 setTexture:self->_gfMeanSrcWithGuide atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder4 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder4 endEncoding];
  computeCommandEncoder5 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder5 setLabel:@"_guidedFilterPremultiplyKernel"];
  [computeCommandEncoder5 setComputePipelineState:self->_guidedFilterPremultiplyKernel];
  [computeCommandEncoder5 setTexture:self->_gfSrcWithGuide atIndex:0];
  [computeCommandEncoder5 setTexture:self->_gfSrcGuide atIndex:1];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder5 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder5 endEncoding];
  computeCommandEncoder6 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder6 setLabel:@"_guidedFilterMultiplyKernel"];
  [computeCommandEncoder6 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [computeCommandEncoder6 setTexture:self->_gfSrcGuide atIndex:0];
  [computeCommandEncoder6 setTexture:v39 atIndex:1];
  [computeCommandEncoder6 setTexture:self->_gfTmp atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder6 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder6 endEncoding];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:bufferCopy inTexture:self->_gfTmp outTexture:self->_gfTmp2 radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  computeCommandEncoder7 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder7 setLabel:@"_guidedFilterMultiplyKernel"];
  [computeCommandEncoder7 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [computeCommandEncoder7 setTexture:self->_gfTmp2 atIndex:0];
  [computeCommandEncoder7 setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  [computeCommandEncoder7 setTexture:self->_gfMeanSrcGuide atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder7 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder7 endEncoding];
  computeCommandEncoder8 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder8 setLabel:@"_guidedFilterSecondOrderProductsKernel"];
  [computeCommandEncoder8 setComputePipelineState:self->_guidedFilterSecondOrderProductsKernel];
  [computeCommandEncoder8 setTexture:self->_gfSrcWithGuide atIndex:0];
  [computeCommandEncoder8 setTexture:self->_gfRRRGRB atIndex:1];
  [computeCommandEncoder8 setTexture:self->_gfGGGBBB atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder8 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder8 endEncoding];
  computeCommandEncoder9 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder9 setLabel:@"_guidedFilterMultiplyKernel"];
  [computeCommandEncoder9 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [computeCommandEncoder9 setTexture:self->_gfRRRGRB atIndex:0];
  [computeCommandEncoder9 setTexture:v39 atIndex:1];
  [computeCommandEncoder9 setTexture:self->_gfTmp atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder9 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder9 endEncoding];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:bufferCopy inTexture:self->_gfTmp outTexture:self->_gfTmp2 radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  computeCommandEncoder10 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder10 setLabel:@"_guidedFilterMultiplyKernel"];
  [computeCommandEncoder10 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [computeCommandEncoder10 setTexture:self->_gfTmp2 atIndex:0];
  [computeCommandEncoder10 setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  [computeCommandEncoder10 setTexture:self->_gfMeanRRRGRB atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder10 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder10 endEncoding];
  computeCommandEncoder11 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder11 setLabel:@"_guidedFilterMultiplyKernel"];
  [computeCommandEncoder11 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [computeCommandEncoder11 setTexture:self->_gfGGGBBB atIndex:0];
  [computeCommandEncoder11 setTexture:v39 atIndex:1];
  [computeCommandEncoder11 setTexture:self->_gfTmp atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder11 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder11 endEncoding];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:bufferCopy inTexture:self->_gfTmp outTexture:self->_gfTmp2 radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  computeCommandEncoder12 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder12 setLabel:@"_guidedFilterMultiplyKernel"];
  [computeCommandEncoder12 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [computeCommandEncoder12 setTexture:self->_gfTmp2 atIndex:0];
  [computeCommandEncoder12 setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  [computeCommandEncoder12 setTexture:self->_gfMeanGGGBBB atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder12 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder12 endEncoding];
  epsilonCopy = epsilon;
  computeCommandEncoder13 = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder13 setLabel:@"_guidedFilterRegressionKernel"];
  [computeCommandEncoder13 setComputePipelineState:self->_guidedFilterRegressionKernel];
  [computeCommandEncoder13 setTexture:self->_gfMeanSrcWithGuide atIndex:0];
  [computeCommandEncoder13 setTexture:self->_gfMeanSrcGuide atIndex:1];
  [computeCommandEncoder13 setTexture:self->_gfMeanRRRGRB atIndex:2];
  [computeCommandEncoder13 setTexture:self->_gfMeanGGGBBB atIndex:3];
  [computeCommandEncoder13 setTexture:coeffTextureCopy atIndex:4];
  [computeCommandEncoder13 setBytes:&epsilonCopy length:4 atIndex:0];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [computeCommandEncoder13 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [computeCommandEncoder13 endEncoding];
}

- (CVAFilterGuided)initWithFigMetalContext:(id)context commandQueue:(id)queue textureSize:(id *)size alphaSize:(id *)alphaSize kernelSize:(int)kernelSize infConvolutionDownsampling:(int)downsampling laplacianLimitingDownsampling:(int)limitingDownsampling laplacianLimitingBlurSize:(int)self0 error:(id *)self1
{
  contextCopy = context;
  queueCopy = queue;
  v30.receiver = self;
  v30.super_class = CVAFilterGuided;
  v19 = [(ImageSaverRegistrator *)&v30 init];
  if (v19)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    label = v19->_label;
    v19->_label = v21;

    objc_storeStrong(&v19->_figMetalContext, context);
    device = [contextCopy device];
    device = v19->_device;
    v19->_device = device;

    v19->_smallGuidedFilterKernelSize = kernelSize;
    var0 = size->var0;
    var1 = size->var1;
    v28 = alphaSize->var0;
    v27 = alphaSize->var1;
    operator new();
  }

  return 0;
}

@end