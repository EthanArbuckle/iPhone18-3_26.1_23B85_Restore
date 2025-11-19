@interface ARDualGuidedFilter
- (ARDualGuidedFilter)initWithDevice:(id)a3 useSmoothing:(BOOL)a4;
- (id)encodeBoxBlurToCommandBuffer:(id)a3 input:(id)a4 intermediate:(id)a5 output:(id)a6;
- (void)encodeDualCoefficients:(id)a3 guide:(id)a4 stencil:(id)a5 coefficientsTextureFG:(id)a6 coefficientsTextureBG:(id)a7;
- (void)setUncertaintyRadius:(unint64_t)a3;
- (void)setupBuffersWithWidth:(unsigned int)a3 andHeight:(unsigned int)a4;
@end

@implementation ARDualGuidedFilter

- (ARDualGuidedFilter)initWithDevice:(id)a3 useSmoothing:(BOOL)a4
{
  v7 = a3;
  v47.receiver = self;
  v47.super_class = ARDualGuidedFilter;
  v8 = [(ARDualGuidedFilter *)&v47 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v10 = ARKitCoreBundle();
    v11 = [v10 URLForResource:@"default" withExtension:@"metallib"];

    v12 = [(MTLDevice *)v9->_device newLibraryWithURL:v11 error:0];
    mattingLibrary = v9->_mattingLibrary;
    v9->_mattingLibrary = v12;

    v14 = a4 || [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.matting.useTemporalSmoothing"];
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
      v38 = v7;
      v39 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"confidence_k"];
      v40 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v39 error:0];
      getConfidence = v9->_getConfidence;
      v9->_getConfidence = v40;

      v42 = [(MTLLibrary *)v9->_mattingLibrary newFunctionWithName:@"combineFGBG_k"];
      v43 = [(MTLDevice *)v9->_device newComputePipelineStateWithFunction:v42 error:0];
      combineFGBGStencil = v9->_combineFGBGStencil;
      v9->_combineFGBGStencil = v43;

      v7 = v38;
      v11 = v46;
    }
  }

  return v9;
}

- (void)setUncertaintyRadius:(unint64_t)a3
{
  if (a3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  self->_uncertaintyRadius = v4;
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

- (id)encodeBoxBlurToCommandBuffer:(id)a3 input:(id)a4 intermediate:(id)a5 output:(id)a6
{
  v40[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30 = v10;
  v14 = [v10 computeCommandEncoder];
  [v14 setLabel:@"Compute box blur"];
  v15 = [v11 width];
  v16 = [v11 height];
  v17 = v11;
  v40[0] = v17;
  v18 = v12;
  uncertaintyRadius = self->_uncertaintyRadius;
  v40[1] = v18;
  v37[0] = uncertaintyRadius;
  *&v37[1] = 1.0 / ((2 * uncertaintyRadius) | 1);
  __asm { FMOV            V1.2S, #1.0 }

  v38 = vdiv_f32(_D1, vcvt_f32_u32(__PAIR64__(v16, v15)));
  [v14 setComputePipelineState:self->_boxblurVPSO];
  [v14 setTextures:v40 withRange:{0, 2}];
  [v14 setBytes:v37 length:16 atIndex:0];
  v34 = (v15 + 15) >> 4;
  v35 = (v16 + 15) >> 4;
  v36 = 1;
  v31 = vdupq_n_s64(0x10uLL);
  v32 = v31;
  v33 = 1;
  [v14 dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
  v25 = v18;
  v39[0] = v25;
  v26 = v13;
  v39[1] = v26;
  [v14 setComputePipelineState:self->_boxblurHPSO];
  [v14 setTextures:v39 withRange:{0, 2}];
  [v14 setBytes:v37 length:16 atIndex:0];
  v34 = (v15 + 15) >> 4;
  v35 = (v16 + 15) >> 4;
  v36 = 1;
  v32 = v31;
  v33 = 1;
  [v14 dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
  [v14 endEncoding];
  for (i = 1; i != -1; --i)
  {
  }

  for (j = 1; j != -1; --j)
  {
  }

  return v30;
}

- (void)setupBuffersWithWidth:(unsigned int)a3 andHeight:(unsigned int)a4
{
  if (self->_width != a3 || self->_height != a4)
  {
    self->_width = a3;
    self->_height = a4;
    v26 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:a3 height:a4 mipmapped:0];
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

      v13 = [v26 pixelFormat];
      [v26 setPixelFormat:12];
      v14 = [(MTLDevice *)self->_device newTextureWithDescriptor:v26];
      combinedFGBG = self->_combinedFGBG;
      self->_combinedFGBG = v14;

      [v26 setPixelFormat:v13];
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

- (void)encodeDualCoefficients:(id)a3 guide:(id)a4 stencil:(id)a5 coefficientsTextureFG:(id)a6 coefficientsTextureBG:(id)a7
{
  v12 = a3;
  v13 = a4;
  v46 = a6;
  v45 = a7;
  v42 = a5;
  -[ARDualGuidedFilter setupBuffersWithWidth:andHeight:](self, "setupBuffersWithWidth:andHeight:", [v13 width], objc_msgSend(v13, "height"));
  v14 = [v12 computeCommandEncoder];
  v58[0] = self->_erodeRadius;
  v15 = [v13 width];
  v47 = v13;
  v16 = [v13 height];
  [v14 setComputePipelineState:self->_erodeVPSO];
  [v14 setTexture:v42 atIndex:0];
  [v14 setTexture:self->_erodeIntermediate atIndex:1];
  [v14 setBytes:v58 length:4 atIndex:0];
  v17 = [(MTLComputePipelineState *)self->_erodeVPSO threadExecutionWidth];
  v18 = [(MTLComputePipelineState *)self->_erodeVPSO maxTotalThreadsPerThreadgroup];
  v19 = v18 / [(MTLComputePipelineState *)self->_erodeVPSO threadExecutionWidth];
  v44 = v15;
  v41 = v15 - 1;
  v43 = v16;
  v40 = v16 - 1;
  v55 = (v41 + v17) / v17;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = v17;
  v53 = v19;
  v54 = 1;
  [v14 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [v14 setComputePipelineState:self->_erodeHPSO];
  [v14 setTexture:self->_erodeIntermediate atIndex:0];
  p_overlayStencilDownsampled = &self->_overlayStencilDownsampled;
  [v14 setTexture:self->_overlayStencilDownsampled atIndex:1];
  [v14 setBytes:v58 length:4 atIndex:0];
  v55 = (v41 + v17) / v17;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = v17;
  v53 = v19;
  v54 = 1;
  [v14 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [v14 endEncoding];
  v21 = [v12 computeCommandEncoder];

  [v21 setComputePipelineState:self->_invertPSO];
  [v21 setTexture:v42 atIndex:0];

  p_overlayStencilDownsampledBG = &self->_overlayStencilDownsampledBG;
  [v21 setTexture:self->_overlayStencilDownsampledBG atIndex:1];
  v55 = (v41 + v17) / v17;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = v17;
  v53 = v19;
  v54 = 1;
  [v21 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [v21 endEncoding];
  v23 = [v12 computeCommandEncoder];

  [v23 setComputePipelineState:self->_erodeVPSO];
  [v23 setTexture:self->_overlayStencilDownsampledBG atIndex:0];
  [v23 setTexture:self->_erodeIntermediate atIndex:1];
  [v23 setBytes:v58 length:4 atIndex:0];
  v55 = (v41 + v17) / v17;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = v17;
  v53 = v19;
  v54 = 1;
  [v23 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [v23 setComputePipelineState:self->_erodeHPSO];
  [v23 setTexture:self->_erodeIntermediate atIndex:0];
  [v23 setTexture:self->_overlayStencilDownsampledBG atIndex:1];
  [v23 setBytes:v58 length:4 atIndex:0];
  v55 = (v41 + v17) / v17;
  v56 = (v40 + v19) / v19;
  v57 = 1;
  v52 = v17;
  v53 = v19;
  v54 = 1;
  [v23 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
  [v23 endEncoding];
  if (self->_useSoftGuidedFilter)
  {
    [v12 computeCommandEncoder];
    v25 = v24 = v12;

    [v25 setComputePipelineState:self->_getConfidence];
    [v25 setTexture:self->_overlayStencilDownsampled atIndex:0];
    [v25 setTexture:self->_overlayStencilDownsampledBG atIndex:1];
    p_overlayStencilDownsampledBG = &self->_confidenceMap;
    [v25 setTexture:self->_confidenceMap atIndex:2];
    v55 = (v41 + v17) / v17;
    v56 = (v40 + v19) / v19;
    v57 = 1;
    v52 = v17;
    v53 = v19;
    v54 = 1;
    [v25 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
    [v25 setComputePipelineState:self->_combineFGBGStencil];
    [v25 setTexture:self->_overlayStencilDownsampled atIndex:0];
    [v25 setTexture:self->_overlayStencilDownsampledBG atIndex:1];
    p_overlayStencilDownsampled = &self->_combinedFGBG;
    [v25 setTexture:self->_combinedFGBG atIndex:2];
    v55 = (v41 + v17) / v17;
    v56 = (v40 + v19) / v19;
    v57 = 1;
    v52 = v17;
    v53 = v19;
    v54 = 1;
    [v25 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
    [v25 endEncoding];
    v23 = v25;
    v12 = v24;
  }

  [(MPSImageGuidedFilter *)self->_guidedFilter encodeRegressionToCommandBuffer:v12 sourceTexture:*p_overlayStencilDownsampled guidanceTexture:v47 weightsTexture:0 destinationCoefficientsTexture:self->_overlayCoefficentsNonBlurred];
  v26 = v46;
  v27 = [(ARDualGuidedFilter *)self encodeBoxBlurToCommandBuffer:v12 input:self->_overlayCoefficentsNonBlurred intermediate:self->_blurIntermediate output:v46];
  [(MPSImageGuidedFilter *)self->_guidedFilter encodeRegressionToCommandBuffer:v12 sourceTexture:*p_overlayStencilDownsampledBG guidanceTexture:v47 weightsTexture:0 destinationCoefficientsTexture:self->_overlayCoefficentsNonBlurred];
  v28 = v45;
  v29 = [(ARDualGuidedFilter *)self encodeBoxBlurToCommandBuffer:v12 input:self->_overlayCoefficentsNonBlurred intermediate:self->_blurIntermediate output:v45];
  if (self->_usingSmoothing)
  {
    v51 = 1045220557;
    v30 = [v12 computeCommandEncoder];
    [v30 setComputePipelineState:self->_smoothCoeficients];
    [v30 setTexture:v46 atIndex:0];
    [v30 setTexture:self->_smoothedCoefficientsTextureFG atIndex:1];
    [v30 setBytes:&v51 length:4 atIndex:0];
    v31 = v12;
    v32 = [(MTLComputePipelineState *)self->_erodeVPSO threadExecutionWidth];
    v33 = [(MTLComputePipelineState *)self->_erodeVPSO maxTotalThreadsPerThreadgroup];
    v34 = v33 / [(MTLComputePipelineState *)self->_erodeVPSO threadExecutionWidth];
    v55 = (v41 + v32) / v32;
    v56 = (v40 + v34) / v34;
    v57 = 1;
    v52 = v32;
    v53 = v34;
    v54 = 1;
    [v30 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
    [v30 endEncoding];
    v35 = [v31 blitCommandEncoder];
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
    [v35 copyFromTexture:smoothedCoefficientsTextureFG sourceSlice:0 sourceLevel:0 sourceOrigin:&v55 sourceSize:&v52 toTexture:v46 destinationSlice:0 destinationLevel:0 destinationOrigin:&v48];
    [v35 endEncoding];
    v37 = [v31 computeCommandEncoder];

    v28 = v45;
    [v37 setComputePipelineState:self->_smoothCoeficients];
    [v37 setTexture:v45 atIndex:0];
    [v37 setTexture:self->_smoothedCoefficientsTextureBG atIndex:1];
    [v37 setBytes:&v51 length:4 atIndex:0];
    v55 = (v41 + v32) / v32;
    v56 = (v40 + v34) / v34;
    v57 = 1;
    v52 = v32;
    v53 = v34;
    v12 = v31;
    v54 = 1;
    [v37 dispatchThreadgroups:&v55 threadsPerThreadgroup:&v52];
    [v37 endEncoding];
    v38 = [v31 blitCommandEncoder];

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
    [v38 copyFromTexture:smoothedCoefficientsTextureBG sourceSlice:0 sourceLevel:0 sourceOrigin:&v55 sourceSize:&v52 toTexture:v45 destinationSlice:0 destinationLevel:0 destinationOrigin:&v48];
    [v38 endEncoding];

    v26 = v46;
  }
}

@end