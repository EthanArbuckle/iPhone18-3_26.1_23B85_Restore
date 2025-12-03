@interface ARDualGuidedFilter
- (ARDualGuidedFilter)initWithDevice:(id)device useSmoothing:(BOOL)smoothing;
- (id)encodeBoxBlurToCommandBuffer:(id)buffer input:(id)input intermediate:(id)intermediate output:(id)output;
- (void)encodeDualCoefficients:(id)coefficients guide:(id)guide stencil:(id)stencil coefficientsTextureFG:(id)g coefficientsTextureBG:(id)bG;
- (void)setUncertaintyRadius:(unint64_t)radius;
- (void)setupBuffersWithWidth:(unsigned int)width andHeight:(unsigned int)height;
@end

@implementation ARDualGuidedFilter

- (ARDualGuidedFilter)initWithDevice:(id)device useSmoothing:(BOOL)smoothing
{
  deviceCopy = device;
  v47.receiver = self;
  v47.super_class = ARDualGuidedFilter;
  v8 = [(ARDualGuidedFilter *)&v47 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v10 = ARKitCoreBundle();
    v11 = [v10 URLForResource:@"default" withExtension:@"metallib"];

    v12 = [(MTLDevice *)v9->_device newLibraryWithURL:v11 error:0];
    mattingLibrary = v9->_mattingLibrary;
    v9->_mattingLibrary = v12;

    v14 = smoothing || [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.matting.useTemporalSmoothing"];
    v9->_usingSmoothing = v14;
    v9->_useSoftGuidedFilter = ![ARKitUserDefaults BOOLForKey:@"com.apple.arkit.matting.disableSoftEdges"];
    v15 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.matting.doubleMLResolutionForIPad"];
    v9->_enableDoubleMLResolutionMatting = v15;
    if (v15)
    {
      v16 = ARDeviceIsiPad();
    }

    else
    {
      v16 = 0;
    }

    v9->_enableDoubleMLResolutionMatting = v16;
    v9->_uncertaintyRadius = [ARKitUserDefaults integerForKey:@"com.apple.arkit.matting.uncertaintyRadius"]<< v16;
    v17 = [objc_alloc(MEMORY[0x1E69745D0]) initWithDevice:v9->_device kernelDiameter:(2 * v9->_uncertaintyRadius) | 1];
    guidedFilter = v9->_guidedFilter;
    v9->_guidedFilter = v17;

    [ARKitUserDefaults floatForKey:@"com.apple.arkit.matting.epsilon"];
    [(MPSImageGuidedFilter *)v9->_guidedFilter setEpsilon:?];
    LODWORD(v19) = 1.0;
    [(MPSImageGuidedFilter *)v9->_guidedFilter setReconstructScale:v19];
    [(MPSImageGuidedFilter *)v9->_guidedFilter setReconstructOffset:0.0];
    [(MPSImageGuidedFilter *)v9->_guidedFilter setLabel:@"com.apple.arkit.guidedfilter"];
    v9->_erodeRadius = [ARKitUserDefaults integerForKey:@"com.apple.arkit.matting.erosionRadius"]<< v16;
    v20 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"invert_k"];
    v21 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v20 error:0];
    invertPSO = v9->_invertPSO;
    v9->_invertPSO = v21;

    v23 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"boxblur_vertical_k"];
    v24 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v23 error:0];
    boxblurVPSO = v9->_boxblurVPSO;
    v9->_boxblurVPSO = v24;

    v26 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"boxblur_horizontal_k"];
    v27 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v26 error:0];
    boxblurHPSO = v9->_boxblurHPSO;
    v9->_boxblurHPSO = v27;

    v29 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"erode_binary_vertical_k"];
    v30 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v29 error:0];
    erodeVPSO = v9->_erodeVPSO;
    v9->_erodeVPSO = v30;

    v32 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"erode_binary_horizontal_k"];
    v33 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v32 error:0];
    erodeHPSO = v9->_erodeHPSO;
    v9->_erodeHPSO = v33;

    v35 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"coeficients_smooth_k"];
    v36 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v35 error:0];
    smoothCoeficients = v9->_smoothCoeficients;
    v9->_smoothCoeficients = v36;

    if (v9->_useSoftGuidedFilter)
    {
      v46 = v11;
      v38 = deviceCopy;
      v39 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"confidence_k"];
      v40 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v39 error:0];
      getConfidence = v9->_getConfidence;
      v9->_getConfidence = v40;

      v42 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"combineFGBG_k"];
      v43 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v42 error:0];
      combineFGBGStencil = v9->_combineFGBGStencil;
      v9->_combineFGBGStencil = v43;

      deviceCopy = v38;
      v11 = v46;
    }
  }

  return v9;
}

- (void)setUncertaintyRadius:(unint64_t)radius
{
  if (radius <= 1)
  {
    radiusCopy = 1;
  }

  else
  {
    radiusCopy = radius;
  }

  self->_uncertaintyRadius = radiusCopy;
  v5 = [objc_alloc(MEMORY[0x1E69745D0]) initWithDevice:self->_device kernelDiameter:(2 * self->_uncertaintyRadius) | 1];
  guidedFilter = self->_guidedFilter;
  self->_guidedFilter = v5;

  [ARKitUserDefaults floatForKey:@"com.apple.arkit.matting.epsilon"];
  [(MPSImageGuidedFilter *)self->_guidedFilter setEpsilon:?];
  LODWORD(v7) = 1.0;
  [(MPSImageGuidedFilter *)self->_guidedFilter setReconstructScale:v7];
  [(MPSImageGuidedFilter *)self->_guidedFilter setReconstructOffset:0.0];
  v8 = self->_guidedFilter;

  [(MPSImageGuidedFilter *)v8 setLabel:@"com.apple.arkit.guidedfilter"];
}

- (id)encodeBoxBlurToCommandBuffer:(id)buffer input:(id)input intermediate:(id)intermediate output:(id)output
{
  v40[2] = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  inputCopy = input;
  intermediateCopy = intermediate;
  outputCopy = output;
  v30 = bufferCopy;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setLabel:@"Compute box blur"];
  width = [inputCopy width];
  height = [inputCopy height];
  v17 = inputCopy;
  v40[0] = v17;
  v18 = intermediateCopy;
  uncertaintyRadius = self->_uncertaintyRadius;
  v40[1] = v18;
  v37[0] = uncertaintyRadius;
  *&v37[1] = 1.0 / ((2 * uncertaintyRadius) | 1);
  __asm { FMOV            V1.2S, #1.0 }

  v38 = vdiv_f32(_D1, vcvt_f32_u32(__PAIR64__(height, width)));
  [computeCommandEncoder setComputePipelineState:self->_boxblurVPSO];
  [computeCommandEncoder setTextures:v40 withRange:{0, 2}];
  [computeCommandEncoder setBytes:v37 length:16 atIndex:0];
  v34 = (width + 15) >> 4;
  v35 = (height + 15) >> 4;
  v36 = 1;
  v31 = vdupq_n_s64(0x10uLL);
  v32 = v31;
  v33 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
  v25 = v18;
  v39[0] = v25;
  v26 = outputCopy;
  v39[1] = v26;
  [computeCommandEncoder setComputePipelineState:self->_boxblurHPSO];
  [computeCommandEncoder setTextures:v39 withRange:{0, 2}];
  [computeCommandEncoder setBytes:v37 length:16 atIndex:0];
  v34 = (width + 15) >> 4;
  v35 = (height + 15) >> 4;
  v36 = 1;
  v32 = v31;
  v33 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
  [computeCommandEncoder endEncoding];
  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v30;
}

- (void)setupBuffersWithWidth:(unsigned int)width andHeight:(unsigned int)height
{
  if (self->_width != width || self->_height != height)
  {
    self->_width = width;
    self->_height = height;
    v26 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:width height:height mipmapped:0];
    [v26 setUsage:3];
    [v26 setStorageMode:0];
    v5 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
    erodeIntermediate = self->_erodeIntermediate;
    self->_erodeIntermediate = v5;

    [v26 setUsage:7];
    v7 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
    overlayStencilDownsampled = self->_overlayStencilDownsampled;
    self->_overlayStencilDownsampled = v7;

    v9 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
    overlayStencilDownsampledBG = self->_overlayStencilDownsampledBG;
    self->_overlayStencilDownsampledBG = v9;

    if (self->_useSoftGuidedFilter)
    {
      v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
      confidenceMap = self->_confidenceMap;
      self->_confidenceMap = v11;

      pixelFormat = [v26 pixelFormat];
      [v26 setPixelFormat:12];
      v14 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
      combinedFGBG = self->_combinedFGBG;
      self->_combinedFGBG = v14;

      [v26 setPixelFormat:pixelFormat];
    }

    [v26 setUsage:3];
    [v26 setPixelFormat:115];
    v16 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
    blurIntermediate = self->_blurIntermediate;
    self->_blurIntermediate = v16;

    v18 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
    overlayCoefficentsNonBlurred = self->_overlayCoefficentsNonBlurred;
    self->_overlayCoefficentsNonBlurred = v18;

    v20 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
    overlayCoefficentsNonBlurredBG = self->_overlayCoefficentsNonBlurredBG;
    self->_overlayCoefficentsNonBlurredBG = v20;

    if (self->_usingSmoothing)
    {
      v22 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
      smoothedCoefficientsTextureFG = self->_smoothedCoefficientsTextureFG;
      self->_smoothedCoefficientsTextureFG = v22;

      v24 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
      smoothedCoefficientsTextureBG = self->_smoothedCoefficientsTextureBG;
      self->_smoothedCoefficientsTextureBG = v24;
    }
  }
}

- (void)encodeDualCoefficients:(id)coefficients guide:(id)guide stencil:(id)stencil coefficientsTextureFG:(id)g coefficientsTextureBG:(id)bG
{
  coefficientsCopy = coefficients;
  guideCopy = guide;
  gCopy = g;
  bGCopy = bG;
  stencilCopy = stencil;
  -[ARDualGuidedFilter setupBuffersWithWidth:andHeight:](self, "setupBuffersWithWidth:andHeight:", [guideCopy width], objc_msgSend(guideCopy, "height"));
  computeCommandEncoder = [coefficientsCopy computeCommandEncoder];
  v58[0] = self->_erodeRadius;
  width = [guideCopy width];
  v47 = guideCopy;
  height = [guideCopy height];
  [computeCommandEncoder setComputePipelineState:self->_erodeVPSO];
  [computeCommandEncoder setTexture:stencilCopy atIndex:0];
  [computeCommandEncoder setTexture:self->_erodeIntermediate atIndex:1];
  [computeCommandEncoder setBytes:v58 length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_erodeVPSO threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_erodeVPSO maxTotalThreadsPerThreadgroup];
  v19 = maxTotalThreadsPerThreadgroup / [(MTLComputePipelineState *)self->_erodeVPSO threadExecutionWidth];
  v44 = width;
  v41 = width - 1;
  v43 = height;
  v40 = height - 1;
  v55 = (v41 + threadExecutionWidth) / threadExecutionWidth;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = threadExecutionWidth;
  v53 = v19;
  v54 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [computeCommandEncoder setComputePipelineState:self->_erodeHPSO];
  [computeCommandEncoder setTexture:self->_erodeIntermediate atIndex:0];
  p_overlayStencilDownsampled = &self->_overlayStencilDownsampled;
  [computeCommandEncoder setTexture:self->_overlayStencilDownsampled atIndex:1];
  [computeCommandEncoder setBytes:v58 length:4 atIndex:0];
  v55 = (v41 + threadExecutionWidth) / threadExecutionWidth;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = threadExecutionWidth;
  v53 = v19;
  v54 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [computeCommandEncoder endEncoding];
  computeCommandEncoder2 = [coefficientsCopy computeCommandEncoder];

  [computeCommandEncoder2 setComputePipelineState:self->_invertPSO];
  [computeCommandEncoder2 setTexture:stencilCopy atIndex:0];

  p_overlayStencilDownsampledBG = &self->_overlayStencilDownsampledBG;
  [computeCommandEncoder2 setTexture:self->_overlayStencilDownsampledBG atIndex:1];
  v55 = (v41 + threadExecutionWidth) / threadExecutionWidth;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = threadExecutionWidth;
  v53 = v19;
  v54 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [computeCommandEncoder2 endEncoding];
  computeCommandEncoder3 = [coefficientsCopy computeCommandEncoder];

  [computeCommandEncoder3 setComputePipelineState:self->_erodeVPSO];
  [computeCommandEncoder3 setTexture:self->_overlayStencilDownsampledBG atIndex:0];
  [computeCommandEncoder3 setTexture:self->_erodeIntermediate atIndex:1];
  [computeCommandEncoder3 setBytes:v58 length:4 atIndex:0];
  v55 = (v41 + threadExecutionWidth) / threadExecutionWidth;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = threadExecutionWidth;
  v53 = v19;
  v54 = 1;
  [computeCommandEncoder3 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [computeCommandEncoder3 setComputePipelineState:self->_erodeHPSO];
  [computeCommandEncoder3 setTexture:self->_erodeIntermediate atIndex:0];
  [computeCommandEncoder3 setTexture:self->_overlayStencilDownsampledBG atIndex:1];
  [computeCommandEncoder3 setBytes:v58 length:4 atIndex:0];
  v55 = (v41 + threadExecutionWidth) / threadExecutionWidth;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = threadExecutionWidth;
  v53 = v19;
  v54 = 1;
  [computeCommandEncoder3 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [computeCommandEncoder3 endEncoding];
  if (self->_useSoftGuidedFilter)
  {
    [coefficientsCopy computeCommandEncoder];
    v25 = v24 = coefficientsCopy;

    [v25 setComputePipelineState:self->_getConfidence];
    [v25 setTexture:self->_overlayStencilDownsampled atIndex:0];
    [v25 setTexture:self->_overlayStencilDownsampledBG atIndex:1];
    p_overlayStencilDownsampledBG = &self->_confidenceMap;
    [v25 setTexture:self->_confidenceMap atIndex:2];
    v55 = (v41 + threadExecutionWidth) / threadExecutionWidth;
    v56 = (v40 + v19) / v19;
    v57 = 1;
    v52 = threadExecutionWidth;
    v53 = v19;
    v54 = 1;
    [v25 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
    [v25 setComputePipelineState:self->_combineFGBGStencil];
    [v25 setTexture:self->_overlayStencilDownsampled atIndex:0];
    [v25 setTexture:self->_overlayStencilDownsampledBG atIndex:1];
    p_overlayStencilDownsampled = &self->_combinedFGBG;
    [v25 setTexture:self->_combinedFGBG atIndex:2];
    v55 = (v41 + threadExecutionWidth) / threadExecutionWidth;
    v56 = (v40 + v19) / v19;
    v57 = 1;
    v52 = threadExecutionWidth;
    v53 = v19;
    v54 = 1;
    [v25 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
    [v25 endEncoding];
    computeCommandEncoder3 = v25;
    coefficientsCopy = v24;
  }

  [(MPSImageGuidedFilter *)self->_guidedFilter encodeRegressionToCommandBuffer:coefficientsCopy sourceTexture:*p_overlayStencilDownsampled guidanceTexture:v47 weightsTexture:0 destinationCoefficientsTexture:self->_overlayCoefficentsNonBlurred];
  v26 = gCopy;
  v27 = [(ARDualGuidedFilter *)self encodeBoxBlurToCommandBuffer:coefficientsCopy input:self->_overlayCoefficentsNonBlurred intermediate:self->_blurIntermediate output:gCopy];
  [(MPSImageGuidedFilter *)self->_guidedFilter encodeRegressionToCommandBuffer:coefficientsCopy sourceTexture:*p_overlayStencilDownsampledBG guidanceTexture:v47 weightsTexture:0 destinationCoefficientsTexture:self->_overlayCoefficentsNonBlurred];
  v28 = bGCopy;
  v29 = [(ARDualGuidedFilter *)self encodeBoxBlurToCommandBuffer:coefficientsCopy input:self->_overlayCoefficentsNonBlurred intermediate:self->_blurIntermediate output:bGCopy];
  if (self->_usingSmoothing)
  {
    v51 = 1045220557;
    computeCommandEncoder4 = [coefficientsCopy computeCommandEncoder];
    [computeCommandEncoder4 setComputePipelineState:self->_smoothCoeficients];
    [computeCommandEncoder4 setTexture:gCopy atIndex:0];
    [computeCommandEncoder4 setTexture:self->_smoothedCoefficientsTextureFG atIndex:1];
    [computeCommandEncoder4 setBytes:&v51 length:4 atIndex:0];
    v31 = coefficientsCopy;
    threadExecutionWidth2 = [(MTLComputePipelineState *)self->_erodeVPSO threadExecutionWidth];
    maxTotalThreadsPerThreadgroup2 = [(MTLComputePipelineState *)self->_erodeVPSO maxTotalThreadsPerThreadgroup];
    v34 = maxTotalThreadsPerThreadgroup2 / [(MTLComputePipelineState *)self->_erodeVPSO threadExecutionWidth];
    v55 = (v41 + threadExecutionWidth2) / threadExecutionWidth2;
    v56 = (v40 + v34) / v34;
    v57 = 1;
    v52 = threadExecutionWidth2;
    v53 = v34;
    v54 = 1;
    [computeCommandEncoder4 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
    [computeCommandEncoder4 endEncoding];
    blitCommandEncoder = [v31 blitCommandEncoder];
    smoothedCoefficientsTextureFG = self->_smoothedCoefficientsTextureFG;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v52 = v44;
    v53 = v43;
    v54 = 1;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    [blitCommandEncoder copyFromTexture:smoothedCoefficientsTextureFG sourceSlice:0 sourceLevel:0 sourceOrigin:&v55 sourceSize:&v52 toTexture:gCopy destinationSlice:0 destinationLevel:0 destinationOrigin:&v48];
    [blitCommandEncoder endEncoding];
    computeCommandEncoder5 = [v31 computeCommandEncoder];

    v28 = bGCopy;
    [computeCommandEncoder5 setComputePipelineState:self->_smoothCoeficients];
    [computeCommandEncoder5 setTexture:bGCopy atIndex:0];
    [computeCommandEncoder5 setTexture:self->_smoothedCoefficientsTextureBG atIndex:1];
    [computeCommandEncoder5 setBytes:&v51 length:4 atIndex:0];
    v55 = (v41 + threadExecutionWidth2) / threadExecutionWidth2;
    v56 = (v40 + v34) / v34;
    v57 = 1;
    v52 = threadExecutionWidth2;
    v53 = v34;
    coefficientsCopy = v31;
    v54 = 1;
    [computeCommandEncoder5 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
    [computeCommandEncoder5 endEncoding];
    blitCommandEncoder2 = [v31 blitCommandEncoder];

    smoothedCoefficientsTextureBG = self->_smoothedCoefficientsTextureBG;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v52 = v44;
    v53 = v43;
    v54 = 1;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    [blitCommandEncoder2 copyFromTexture:smoothedCoefficientsTextureBG sourceSlice:0 sourceLevel:0 sourceOrigin:&v55 sourceSize:&v52 toTexture:bGCopy destinationSlice:0 destinationLevel:0 destinationOrigin:&v48];
    [blitCommandEncoder2 endEncoding];

    v26 = gCopy;
  }
}

@end