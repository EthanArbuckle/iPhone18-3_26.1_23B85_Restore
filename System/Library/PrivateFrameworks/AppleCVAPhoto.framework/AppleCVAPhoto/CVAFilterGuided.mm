@interface CVAFilterGuided
- (CVAFilterGuided)initWithFigMetalContext:(id)a3 commandQueue:(id)a4 textureSize:(id *)a5 alphaSize:(id *)a6 kernelSize:(int)a7 infConvolutionDownsampling:(int)a8 laplacianLimitingDownsampling:(int)a9 laplacianLimitingBlurSize:(int)a10 error:(id *)a11;
- (void)encodeFilterApplyToBuffer:(id)a3 coeff:(id)a4 source:(id)a5 destination:(id)a6;
- (void)encodeHybridUpSamplingToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5;
- (void)encodePostProcessAlphaToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 alphaMaxLaplacian:(float)a6 infConvOrientation:(float)a7 infConvMajorRadius:(float)a8 infConvMinorRadius:(float)a9 gammaExponent:(float)a10 enableInfConvolution:(BOOL)a11;
- (void)encodeReconstructToCommandBuffer:(id)a3 inGuidancePixelBuffer:(__CVBuffer *)a4 inCoeffTexture:(id)a5 outFilteredTexture:(id)a6;
- (void)encodeRegressionToCommandBuffer:(id)a3 inSourceTexture:(id)a4 inGuidanceTexture:(id)a5 inWeightTexture:(id)a6 outCoeffTexture:(id)a7 epsilon:(float)a8;
- (void)initSourceTexture:(__CVBuffer *)a3;
@end

@implementation CVAFilterGuided

- (void)encodeHybridUpSamplingToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5
{
  v18 = a2;
  v19 = self;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 pixelFormat] == 55 || objc_msgSend(v8, "pixelFormat") == 25)
  {
    v10 = v19;
    v11 = 200;
    hybridUpscalingIntermediateR32Texture = v19->_hybridUpscalingIntermediateR32Texture;
    if (!hybridUpscalingIntermediateR32Texture)
    {
      v13 = sub_1DED47644(&v17, 55, [v9 width] >> 1, objc_msgSend(v9, "height") >> 1);
LABEL_7:
      v14 = *(&v19->super.super.isa + v11);
      *(&v19->super.super.isa + v11) = v13;

      v10 = v19;
      hybridUpscalingIntermediateR32Texture = *(&v19->super.super.isa + v11);
    }
  }

  else
  {
    v10 = v19;
    v11 = 192;
    hybridUpscalingIntermediateR32Texture = v19->_hybridUpscalingIntermediateTexture;
    if (!hybridUpscalingIntermediateR32Texture)
    {
      v13 = sub_1DED47644(&v17, 115, [v9 width] >> 1, objc_msgSend(v9, "height") >> 1);
      goto LABEL_7;
    }
  }

  v15 = hybridUpscalingIntermediateR32Texture;
  v16 = [(CVAFilterHybridResampling *)v10->_hybridResampler scaler];
  [v16 encodeToCommandBuffer:v7 sourceTexture:v8 destinationTexture:v15];

  [(CVAFilterHybridResampling *)v19->_hybridResampler encodeBilinearScalingToCommandBuffer:v7 source:v15 destination:v9 mode:0];
}

- (void)encodePostProcessAlphaToCommandBuffer:(id)a3 source:(id)a4 destination:(id)a5 alphaMaxLaplacian:(float)a6 infConvOrientation:(float)a7 infConvMajorRadius:(float)a8 infConvMinorRadius:(float)a9 gammaExponent:(float)a10 enableInfConvolution:(BOOL)a11
{
  v11 = a11;
  v20 = a3;
  v21 = a4;
  v35 = a5;
  *v40 = a10;
  *&v40[1] = a6;
  v22 = v11;
  if ((atomic_load_explicit(&qword_1ECDE1398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1398))
  {
    v33 = +[CVAPreferenceManager defaults];
    v34 = [v33 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE1396 = v34;
    __cxa_guard_release(&qword_1ECDE1398);
  }

  [(CVAFilterHybridResampling *)self->_hybridResampler encodeHybridDownsamplingToCommandBuffer:v20 source:v21 destination:self->_inputAlphaDownsampled];
  if (byte_1ECDE1396 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.laplacianLimDownsampling = %lu", objc_msgSend(v21, "width") / -[MTLTexture width](self->_inputAlphaDownsampled, "width")];
  }

  if (self->_inputAlphaBlurred)
  {
    [(MPSImageBox *)self->_mpsBox encodeToCommandBuffer:v20 sourceTexture:self->_inputAlphaDownsampled destinationTexture:?];
    if (byte_1ECDE1396 == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.laplacianLimBlurSize = %lu", -[MPSImageBox kernelWidth](self->_mpsBox, "kernelWidth")];
    }
  }

  v23 = [v20 computeCommandEncoder];
  [v23 setLabel:@"_postProcessAlphaKernel"];
  [v23 setComputePipelineState:self->_postProcessAlphaKernel];
  [v23 setTexture:v21 atIndex:0];
  gammaMatteTexture = v35;
  if (v22)
  {
    gammaMatteTexture = self->_gammaMatteTexture;
  }

  [v23 setTexture:gammaMatteTexture atIndex:1];
  inputAlphaBlurred = self->_inputAlphaBlurred;
  if (!inputAlphaBlurred)
  {
    inputAlphaBlurred = self->_inputAlphaDownsampled;
  }

  [v23 setTexture:inputAlphaBlurred atIndex:2];
  [v23 setSamplerState:self->_inputAlphaBlurredSampler atIndex:0];
  [v23 setBytes:v40 length:8 atIndex:0];
  *&__p = (([v21 width] >> 1) + 15) >> 4;
  *(&__p + 1) = (([v21 height] >> 1) + 15) >> 4;
  v39 = 1;
  v36 = xmmword_1DED747F0;
  v37 = 1;
  [v23 dispatchThreadgroups:&__p threadsPerThreadgroup:&v36];
  [v23 endEncoding];
  if (byte_1ECDE1396 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.InfimumConvolution = %d", v22];
  }

  if (v22)
  {
    if (byte_1ECDE1396 == 1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.infConvMinorRadius = %.2f", a9];

      [MEMORY[0x1E696AEC0] stringWithFormat:@"AP.infConvMajorRadius = %.2f", a8];
    }

    [(CVAFilterHybridResampling *)self->_hybridResampler encodeHybridDownsamplingToCommandBuffer:v20 source:self->_gammaMatteTexture destination:self->_lowResGammaMatte];
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
    v29 = [qword_1ECDE13A0 intValue];
    *&v30 = a7;
    *&v31 = a8;
    *&v32 = a9;
    [(CVAFilterInfimumConvolution *)infConvolution encodeToCommandBuffer:v20 sourceTexture:v27 smallSourceTexture:lowResGammaMatte destinationTexture:v35 orientation:v29 majorRadius:v30 minorRadius:v31 iterations:v32];
  }
}

- (void)encodeFilterApplyToBuffer:(id)a3 coeff:(id)a4 source:(id)a5 destination:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 computeCommandEncoder];
  [v13 setLabel:@"_guidedFilterApplyRGBAKernel"];
  [v13 setComputePipelineState:self->_guidedFilterApplyRGBAKernel];
  [v13 setTexture:v10 atIndex:0];
  [v13 setTexture:v11 atIndex:1];
  [v13 setTexture:v12 atIndex:2];
  v16[0] = (([v12 width] >> 1) + 15) >> 4;
  v16[1] = (([v12 height] >> 1) + 15) >> 4;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x10uLL);
  v15 = 1;
  [v13 dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [v13 endEncoding];
}

- (void)initSourceTexture:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
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
  v11 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14 iosurface:CVPixelBufferGetIOSurface(a3) plane:0];
  srcTexture = self->_srcTexture;
  self->_srcTexture = v11;
}

- (void)encodeReconstructToCommandBuffer:(id)a3 inGuidancePixelBuffer:(__CVBuffer *)a4 inCoeffTexture:(id)a5 outFilteredTexture:(id)a6
{
  v12 = a3;
  v10 = a5;
  v11 = a6;
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:v12 inTexture:v10 outTexture:self->_convolutedCoeff radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:2];
  [(CVAFilterGuided *)self encodeHybridUpSamplingToCommandBuffer:v12 source:self->_convolutedCoeff destination:self->_upscaledCoeff];
  [(CVAFilterGuided *)self initSourceTexture:a4];
  [(CVAFilterGuided *)self encodeFilterApplyToBuffer:v12 coeff:self->_upscaledCoeff source:self->_srcTexture destination:v11];
}

- (void)encodeRegressionToCommandBuffer:(id)a3 inSourceTexture:(id)a4 inGuidanceTexture:(id)a5 inWeightTexture:(id)a6 outCoeffTexture:(id)a7 epsilon:(float)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v36 = a7;
  v38 = v16;
  v37 = v15;
  v39 = v17;
  v18 = [v17 width];
  v19 = [v17 height];
  v35 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v18 height:v19 mipmapped:0];
  [v35 setUsage:1];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:v14 inTexture:v17 outTexture:self->_gfMeanWeight radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  v20 = [v14 computeCommandEncoder];
  [v20 setLabel:@"_guidedFilterInvertKernel"];
  [v20 setComputePipelineState:self->_guidedFilterInvertKernel];
  [v20 setTexture:self->_gfMeanWeight atIndex:0];
  [v20 setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  v21 = (v18 + 15) >> 4;
  v22 = (v19 + 15) >> 4;
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v20 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v20 endEncoding];
  v23 = [v14 computeCommandEncoder];

  [v23 setLabel:@"_guidedFilterEmbedGuideKernel"];
  [v23 setComputePipelineState:self->_guidedFilterEmbedGuideKernel];
  [v23 setTexture:v38 atIndex:0];
  [v23 setTexture:v37 atIndex:1];
  [v23 setTexture:self->_gfSrcWithGuide atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v23 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v23 endEncoding];
  v24 = [v14 computeCommandEncoder];

  [v24 setLabel:@"_guidedFilterMultiplyKernel"];
  [v24 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [v24 setTexture:self->_gfSrcWithGuide atIndex:0];
  [v24 setTexture:v39 atIndex:1];
  [v24 setTexture:self->_gfTmp atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v24 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v24 endEncoding];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:v14 inTexture:self->_gfTmp outTexture:self->_gfTmp2 radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  v25 = [v14 computeCommandEncoder];

  [v25 setLabel:@"_guidedFilterMultiplyKernel"];
  [v25 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [v25 setTexture:self->_gfTmp2 atIndex:0];
  [v25 setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  [v25 setTexture:self->_gfMeanSrcWithGuide atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v25 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v25 endEncoding];
  v26 = [v14 computeCommandEncoder];

  [v26 setLabel:@"_guidedFilterPremultiplyKernel"];
  [v26 setComputePipelineState:self->_guidedFilterPremultiplyKernel];
  [v26 setTexture:self->_gfSrcWithGuide atIndex:0];
  [v26 setTexture:self->_gfSrcGuide atIndex:1];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v26 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v26 endEncoding];
  v27 = [v14 computeCommandEncoder];

  [v27 setLabel:@"_guidedFilterMultiplyKernel"];
  [v27 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [v27 setTexture:self->_gfSrcGuide atIndex:0];
  [v27 setTexture:v39 atIndex:1];
  [v27 setTexture:self->_gfTmp atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v27 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v27 endEncoding];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:v14 inTexture:self->_gfTmp outTexture:self->_gfTmp2 radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  v28 = [v14 computeCommandEncoder];

  [v28 setLabel:@"_guidedFilterMultiplyKernel"];
  [v28 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [v28 setTexture:self->_gfTmp2 atIndex:0];
  [v28 setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  [v28 setTexture:self->_gfMeanSrcGuide atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v28 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v28 endEncoding];
  v29 = [v14 computeCommandEncoder];

  [v29 setLabel:@"_guidedFilterSecondOrderProductsKernel"];
  [v29 setComputePipelineState:self->_guidedFilterSecondOrderProductsKernel];
  [v29 setTexture:self->_gfSrcWithGuide atIndex:0];
  [v29 setTexture:self->_gfRRRGRB atIndex:1];
  [v29 setTexture:self->_gfGGGBBB atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v29 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v29 endEncoding];
  v30 = [v14 computeCommandEncoder];

  [v30 setLabel:@"_guidedFilterMultiplyKernel"];
  [v30 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [v30 setTexture:self->_gfRRRGRB atIndex:0];
  [v30 setTexture:v39 atIndex:1];
  [v30 setTexture:self->_gfTmp atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v30 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v30 endEncoding];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:v14 inTexture:self->_gfTmp outTexture:self->_gfTmp2 radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  v31 = [v14 computeCommandEncoder];

  [v31 setLabel:@"_guidedFilterMultiplyKernel"];
  [v31 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [v31 setTexture:self->_gfTmp2 atIndex:0];
  [v31 setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  [v31 setTexture:self->_gfMeanRRRGRB atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v31 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v31 endEncoding];
  v32 = [v14 computeCommandEncoder];

  [v32 setLabel:@"_guidedFilterMultiplyKernel"];
  [v32 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [v32 setTexture:self->_gfGGGBBB atIndex:0];
  [v32 setTexture:v39 atIndex:1];
  [v32 setTexture:self->_gfTmp atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v32 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v32 endEncoding];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:v14 inTexture:self->_gfTmp outTexture:self->_gfTmp2 radius:(self->_smallGuidedFilterKernelSize + (self->_smallGuidedFilterKernelSize >> 31)) >> 1 normalize:0];
  v33 = [v14 computeCommandEncoder];

  [v33 setLabel:@"_guidedFilterMultiplyKernel"];
  [v33 setComputePipelineState:self->_guidedFilterMultiplyKernel];
  [v33 setTexture:self->_gfTmp2 atIndex:0];
  [v33 setTexture:self->_gfMeanNormalizationFactor atIndex:1];
  [v33 setTexture:self->_gfMeanGGGBBB atIndex:2];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v33 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v33 endEncoding];
  v40 = a8;
  v34 = [v14 computeCommandEncoder];

  [v34 setLabel:@"_guidedFilterRegressionKernel"];
  [v34 setComputePipelineState:self->_guidedFilterRegressionKernel];
  [v34 setTexture:self->_gfMeanSrcWithGuide atIndex:0];
  [v34 setTexture:self->_gfMeanSrcGuide atIndex:1];
  [v34 setTexture:self->_gfMeanRRRGRB atIndex:2];
  [v34 setTexture:self->_gfMeanGGGBBB atIndex:3];
  [v34 setTexture:v36 atIndex:4];
  [v34 setBytes:&v40 length:4 atIndex:0];
  v43 = v21;
  v44 = v22;
  v45 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v34 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  [v34 endEncoding];
}

- (CVAFilterGuided)initWithFigMetalContext:(id)a3 commandQueue:(id)a4 textureSize:(id *)a5 alphaSize:(id *)a6 kernelSize:(int)a7 infConvolutionDownsampling:(int)a8 laplacianLimitingDownsampling:(int)a9 laplacianLimitingBlurSize:(int)a10 error:(id *)a11
{
  v17 = a3;
  v18 = a4;
  v30.receiver = self;
  v30.super_class = CVAFilterGuided;
  v19 = [(ImageSaverRegistrator *)&v30 init];
  if (v19)
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    label = v19->_label;
    v19->_label = v21;

    objc_storeStrong(&v19->_figMetalContext, a3);
    v23 = [v17 device];
    device = v19->_device;
    v19->_device = v23;

    v19->_smallGuidedFilterKernelSize = a7;
    var0 = a5->var0;
    var1 = a5->var1;
    v28 = a6->var0;
    v27 = a6->var1;
    operator new();
  }

  return 0;
}

@end