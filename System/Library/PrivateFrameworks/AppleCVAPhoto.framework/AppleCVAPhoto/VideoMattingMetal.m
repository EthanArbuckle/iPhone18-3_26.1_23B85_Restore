@interface VideoMattingMetal
+ (id)textureFromCacheUsingPixelBuffer:(__CVBuffer *)a3 textureDescriptor:(id)a4 plane:(unint64_t)a5 textureCache:(__CVMetalTextureCache *)a6;
+ (void)decomposeYuvPixelBuffer:(__CVBuffer *)a3 yTexture:(id *)a4 uvTexture:(id *)a5 textureCache:(__CVMetalTextureCache *)a6;
+ (void)saveTexture:(id)a3 toFilename:(id)a4;
- (CGRect)primaryCaptureRect;
- (VideoMattingMetal)initWithStaticParams:(const VideoMattingStaticParams *)a3 renderingDisparityUpdateRate:(float)a4 renderingDisparityBlurRadius:(float)a5 renderingLensFocalLength_mm:(float)a6 useTemporalConfidence:(BOOL)a7 metalContext:(void *)a8 error:(id *)a9;
- (__CVBuffer)createCVBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5;
- (id)disparityPostprocessingWithCanonicalDisparity:(const __CVBuffer *)a3 color:(const __CVBuffer *)a4 postProcessedDisparity:(__CVBuffer *)a5 staticParams:(const VideoMattingStaticParams *)a6 dynamicParams:(const void *)a7 postProcessingParams:(const VideoPostprocessingParams *)a8 facesArray:(id)a9 faceModel:(id)a10 isFinalStage:(BOOL)a11 callbackQueue:(id)a12 callback:(id)a13;
- (id)getPTTextureFromLuma:(id)a3 chroma:(id)a4;
- (void)alphaMattingWithPostprocessedDisparity:(const __CVBuffer *)a3 source:(const __CVBuffer *)a4 inSegmentation:(__CVBuffer *)a5 alpha:(__CVBuffer *)a6 staticParams:(const VideoMattingStaticParams *)a7 dynamicParams:(const void *)a8 usePostprocessedDisparity:(BOOL)a9 isFinalStage:(BOOL)a10 dilateForegroundMask:(BOOL)a11 properties:(id)a12 callbackQueue:(id)a13 callback:(id)a14;
- (void)cropFrame:(const __CVBuffer *)a3 destination:(__CVBuffer *)a4 rect:(CGRect)a5;
- (void)dealloc;
- (void)downsampleWithHWScalerSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4;
- (void)encode420Bilinear2xDownsamplingToCommandBuffer:(id)a3 source:(__CVBuffer *)a4 destination:(__CVBuffer *)a5;
- (void)encode420HybridDownsamplingToCommandBuffer:(id)a3 source:(__CVBuffer *)a4 destination:(__CVBuffer *)a5;
- (void)encode420ScalingByMPSToCommandBuffer:(id)a3 source:(__CVBuffer *)a4 destination:(__CVBuffer *)a5;
- (void)encodeBackgroundFillToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputMask:(id)a5 outputDisparity:(id)a6;
- (void)encodeColorSimL1ToCommandBuffer:(id)a3 prevSource:(id)a4 currSource:(id)a5 destination:(id)a6;
- (void)encodeColorSimToCommandBuffer:(id)a3 prevSource:(id)a4 currSource:(id)a5 destination:(id)a6 similarityScaleFactor:(float)a7;
- (void)encodeConfidenceMaskToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputDisparityNoInvalid:(id)a5 outputConfidenceMask:(id)a6;
- (void)encodeCopyTextureToCommandBuffer:(id)a3 inTexture:(id)a4 outTexture:(id)a5;
- (void)encodeDiffusionMapToCommandBuffer:(id)a3 color:(id)a4 diffusionMap:(id)a5;
- (void)encodeDisparityCleanupToCommandBuffer:(id)a3 prevDisparity:(id)a4 currDisparity:(id)a5 colorSim:(id)a6 cleanDisparity:(id)a7;
- (void)encodeDisparityDecimateToCommandBuffer:(id)a3 canonicalDisparity:(__CVBuffer *)a4 disparityOut:(id)a5;
- (void)encodeDisparityMasksToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputSegmentation:(id)a5 useSegmentationOnly:(BOOL)a6 outputForegroundMask:(id)a7 outputIsForeground:(id)a8 disparityMin:(float)a9 focusDisparity:(float)a10 hardness:(float)a11 minDistToDeweight:(float)a12 unconfidentWeight:(float)a13;
- (void)encodeDisparitySmoothingToCommandBuffer:(id)a3 disparity:(id)a4;
- (void)encodeDisparityTemporalFilterToCommandBuffer:(id)a3 currentDisparity:(id)a4 previousDisparity:(id)a5 currConfidence:(id)a6 prevSmoothConfidence:(id)a7 colorSim:(id)a8 outPrevSmoothConfidence:(id)a9 outTemporallyFilteredDisparity:(id)a10 disparityFallbackToInvalid:(BOOL)a11 disparityFilterUpdateRate:(float)a12 minimumConfidenceToKeepDisparity:(float)a13 maximumSimilarityToKeepDisparity:(float)a14;
- (void)encodeDomainTransformToCommandBuffer:(id)a3 inputDiffusionMap:(id)a4 inputDistanceFromKnownDisparity:(id)a5 outputDomainTransformX:(id)a6 outputDomainTransformY:(id)a7;
- (void)encodeEdgeAwareFillToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputDomainTransformX:(id)a5 inputDomainTransformY:(id)a6 outputDisparity:(id)a7;
- (void)encodeFillAlphaToCommandBuffer:(id)a3 alpha:(id)a4;
- (void)encodeFillBackgroundDisparityToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputFacemask:(id)a5 outputDistanceFromKnownDisparity:(id)a6 outputDisparity:(id)a7 backgroundDisparityValue:(float)a8 minimumDistanceFromValidDisparity:(float)a9;
- (void)encodeFilterCoefficientToBuffer:(id)a3 inputCoeff:(id)a4 prevCoeff:(id)a5 outCoeff:(id)a6 inColorSim:(id)a7 updateRate:(float)a8;
- (void)encodeGuidedFilterWeightToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputSegmentation:(id)a5 useSegmentationOnly:(BOOL)a6 inputForegroundDistance:(id)a7 outputForegroundMask:(id)a8 outputWeight:(id)a9 minDistToDeweight:(float)a10 unconfidentWeight:(float)a11 dilateForegroundMask:(BOOL)a12 foregroundMaskDilationRadius:(float)a13;
- (void)encodeInvalidDisparityMaskToCommandBuffer:(id)a3 inputDisparity:(id)a4 outputMask:(id)a5;
- (void)encodeOutputDisparityToCommandBuffer:(id)a3 inputDisparity:(id)a4 outputDisparity:(id)a5;
- (void)encodeRotateAndFitIntoRectWithCommandBuffer:(id)a3 inTexture:(id)a4 outTexture:(id)a5 rotateClockwise:(BOOL)a6;
- (void)encodeScaleSourceToCommandBuffer:(id)a3 source:(__CVBuffer *)a4 targetWidth:(unint64_t)a5 targetHeight:(unint64_t)a6;
- (void)encodeSimpleConfidenceToCommandBuffer:(id)a3 disparity:(id)a4 outConfidence:(id)a5;
- (void)encodeUpdateConfidenceAndLastValidDisparityToCommandBuffer:(id)a3 disparity:(id)a4 prevSmoothConfidence:(id)a5 lastValidDisparityIn:(id)a6 lastValidDisparityOut:(id)a7 currConfidenceOut:(id)a8 useTemporalConfidence:(BOOL)a9;
- (void)initSourceTexture:(__CVBuffer *)a3;
- (void)prewarmGuidedFilter:(id)a3 device:(id)a4 commandBuffer:(id)a5 width:(int)a6 height:(int)a7 width2:(int)a8 height2:(int)a9;
- (void)renderContinuousWithSource:(const __CVBuffer *)a3 segmentationPixelBuffer:(const __CVBuffer *)a4 alpha:(const __CVBuffer *)a5 canonicalDisparity:(const __CVBuffer *)a6 disparityInFocus:(float)a7 focusCanonicalDisparity:(float)a8 fNumber:(float)a9 infConvolutionScale:(float)a10 noiseBits:(float)a11 disparityUpdateRate:(float)a12 focusThresholdHardness:(float)a13 cubeIntensity:(float)a14 usePostprocessedDisparity:(BOOL)a15 dstColor:(__CVBuffer *)a16 isFinalStage:(BOOL)a17 properties:(id)a18 callbackQueue:(id)a19 withCallback:(id)a20;
- (void)renderStageLightWithSource:(const __CVBuffer *)a3 alpha:(const __CVBuffer *)a4 canonicalDisparity:(const __CVBuffer *)a5 dstColor:(__CVBuffer *)a6 blackBackgroundIntensity:(float)a7 vignetteIntensity:(float)a8 isFinalStage:(BOOL)a9 callbackQueue:(id)a10 withCallback:(id)a11;
- (void)segmentationAverage:(__CVBuffer *)a3 callbackQueue:(id)a4 callback:(id)a5;
- (void)setAlphaLut:(float)a3 gammaExponent:(float)a4;
- (void)setBgLut:(id)a3;
- (void)setFgLut:(id)a3;
- (void)setPortraitForegroundCubeData:(id)a3 backgroundCubeData:(id)a4;
- (void)setStageLightProxyCubeData:(id)a3 cubeData:(id)a4;
- (void)updateRenderRequestwithPerFrameMetadata:(id)a3 properties:(id)a4;
@end

@implementation VideoMattingMetal

- (CGRect)primaryCaptureRect
{
  objc_copyStruct(v6, &self->_primaryCaptureRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)encodeFillAlphaToCommandBuffer:(id)a3 alpha:(id)a4
{
  v6 = a4;
  v7 = [a3 computeCommandEncoder];
  [v7 setLabel:@"_alphaFillKernel"];
  [v7 setComputePipelineState:self->_alphaFillKernel];
  [v7 setTexture:v6 atIndex:0];
  v10[0] = ([v6 width] + 15) >> 4;
  v10[1] = ([v6 height] + 15) >> 4;
  v10[2] = 1;
  v8 = vdupq_n_s64(0x10uLL);
  v9 = 1;
  [v7 dispatchThreadgroups:v10 threadsPerThreadgroup:&v8];
  [v7 endEncoding];
}

- (void)encode420ScalingByMPSToCommandBuffer:(id)a3 source:(__CVBuffer *)a4 destination:(__CVBuffer *)a5
{
  v28 = a3;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  v11 = CVPixelBufferGetWidth(a5);
  v12 = CVPixelBufferGetHeight(a5);
  v13 = v12;
  if (v11 <= 1)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3238 description:{@"targetWidth not in [2, inf"}]);

    if (v13 > 1)
    {
      goto LABEL_3;
    }
  }

  else if (v12 > 1)
  {
    goto LABEL_3;
  }

  v26 = [MEMORY[0x1E696AAA8] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3239 description:{@"targetHeight not in [2, inf"}]);

LABEL_3:
  IOSurface = CVPixelBufferGetIOSurface(a4);
  v15 = CVPixelBufferGetIOSurface(a5);
  v27 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];
  v16 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:Width >> 1 height:Height >> 1 mipmapped:0];
  v17 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v27 iosurface:IOSurface plane:0];
  v18 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v16 iosurface:IOSurface plane:1];
  v19 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v11 height:v13 mipmapped:0];
  v20 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:v11 >> 1 height:v13 >> 1 mipmapped:0];
  [v19 setUsage:3];
  [v20 setUsage:3];
  v21 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v19 iosurface:v15 plane:0];
  v22 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v20 iosurface:v15 plane:1];
  v23 = [(CVAFilterHybridResampling *)self->_hybridResampler scaler];
  [v23 encodeToCommandBuffer:v28 sourceTexture:v17 destinationTexture:v21];

  v24 = [(CVAFilterHybridResampling *)self->_hybridResampler scaler];
  [v24 encodeToCommandBuffer:v28 sourceTexture:v18 destinationTexture:v22];
}

- (void)encode420Bilinear2xDownsamplingToCommandBuffer:(id)a3 source:(__CVBuffer *)a4 destination:(__CVBuffer *)a5
{
  v26 = a3;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  IOSurface = CVPixelBufferGetIOSurface(a4);
  v11 = CVPixelBufferGetIOSurface(a5);
  [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];
  v12 = Width >> 1;
  v21 = v13 = Height >> 1;
  v25 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:Width >> 1 height:Height >> 1 mipmapped:0];
  v24 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v21 iosurface:IOSurface plane:0];
  v22 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v25 iosurface:IOSurface plane:1];
  v14 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width >> 1 height:Height >> 1 mipmapped:0];
  v15 = Width >> 2;
  v16 = Height >> 2;
  v17 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:v15 height:Height >> 2 mipmapped:0];
  [v14 setUsage:3];
  [v17 setUsage:3];
  v23 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v14 iosurface:v11 plane:0];
  v18 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17 iosurface:v11 plane:1];
  v19 = [v26 computeCommandEncoder];
  [v19 setLabel:@"_halfDownSampler"];
  [v19 setComputePipelineState:self->_halfDownSampler];
  [v19 setTexture:v24 atIndex:0];
  [v19 setTexture:v23 atIndex:1];
  v29 = (v12 + 15) >> 4;
  v30 = (v13 + 15) >> 4;
  v31 = 1;
  v27 = vdupq_n_s64(0x10uLL);
  v28 = 1;
  [v19 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [v19 endEncoding];
  v20 = [v26 computeCommandEncoder];

  [v20 setLabel:@"_halfDownSampler"];
  [v20 setComputePipelineState:self->_halfDownSampler];
  [v20 setTexture:v22 atIndex:0];
  [v20 setTexture:v18 atIndex:1];
  v29 = (v15 + 15) >> 4;
  v30 = (v16 + 15) >> 4;
  v31 = 1;
  v27 = vdupq_n_s64(0x10uLL);
  v28 = 1;
  [v20 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [v20 endEncoding];
}

- (void)cropFrame:(const __CVBuffer *)a3 destination:(__CVBuffer *)a4 rect:(CGRect)a5
{
  CVPixelBufferGetWidth(a4);
  CVPixelBufferGetHeight(a4);
  hwScaler = self->_hwScaler;
  CVPixelBufferGetIOSurface(a3);
  CVPixelBufferGetIOSurface(a4);
  IOSurfaceAcceleratorTransformSurface();
}

- (void)downsampleWithHWScalerSource:(__CVBuffer *)a3 destination:(__CVBuffer *)a4
{
  if (!self->_yuvSourceDownsampledBuffer)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3060 description:@"Relighting code should be rewritten to support different scale!"];

    v9 = CVPixelBufferGetWidth(a3) >> 2;
    v10 = CVPixelBufferGetHeight(a3) >> 2;
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    self->_yuvSourceDownsampledBuffer = [(VideoMattingMetal *)self createCVBufferWithWidth:v9 height:v10 format:PixelFormatType];
    if (PixelFormatType != 875704422)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3068 description:@"Unexpected source format in downsampleWithHWScalerSource()!"];
    }

    v12 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:500 width:v9 height:v10 mipmapped:0];
    [v12 setUsage:3];
    v13 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:self->_yuvSourceDownsampledBuffer textureDescriptor:v12 plane:0 textureCache:self->_textureCache];
    yuvSourceDownsampledTexture = self->_yuvSourceDownsampledTexture;
    self->_yuvSourceDownsampledTexture = v13;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v16 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69A85B8], *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69A8508], v16);
  hwScaler = self->_hwScaler;
  CVPixelBufferGetIOSurface(a3);
  CVPixelBufferGetIOSurface(self->_yuvSourceDownsampledBuffer);
  IOSurfaceAcceleratorTransformSurface();
  v18 = self->_hwScaler;
  CVPixelBufferGetIOSurface(self->_yuvSourceDownsampledBuffer);
  CVPixelBufferGetIOSurface(a4);
  IOSurfaceAcceleratorTransformSurface();
  CFRelease(Mutable);
}

- (void)encode420HybridDownsamplingToCommandBuffer:(id)a3 source:(__CVBuffer *)a4 destination:(__CVBuffer *)a5
{
  v9 = a3;
  yuvSourceDownsampledBuffer = self->_yuvSourceDownsampledBuffer;
  v23 = v9;
  if (!yuvSourceDownsampledBuffer)
  {
    Width = CVPixelBufferGetWidth(a4);
    Height = CVPixelBufferGetHeight(a4);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
    v14 = Width >> 1;
    v15 = Height >> 1;
    self->_yuvSourceDownsampledBuffer = [(VideoMattingMetal *)self createCVBufferWithWidth:v14 height:v15 format:PixelFormatType];
    v16 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
    v18 = [v16 containsObject:v17];

    if ((v18 & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:3018 description:@"Unexpected source format in encode420HybridDownsamplingToCommandBuffer()!"];
    }

    v19 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:500 width:v14 height:v15 mipmapped:0];
    [v19 setUsage:1];
    v20 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:self->_yuvSourceDownsampledBuffer textureDescriptor:v19 plane:0 textureCache:self->_textureCache];
    yuvSourceDownsampledTexture = self->_yuvSourceDownsampledTexture;
    self->_yuvSourceDownsampledTexture = v20;

    yuvSourceDownsampledBuffer = self->_yuvSourceDownsampledBuffer;
    v9 = v23;
  }

  [(VideoMattingMetal *)self encode420Bilinear2xDownsamplingToCommandBuffer:v9 source:a4 destination:yuvSourceDownsampledBuffer];
  [(VideoMattingMetal *)self encode420ScalingByMPSToCommandBuffer:v23 source:self->_yuvSourceDownsampledBuffer destination:a5];
}

- (void)renderStageLightWithSource:(const __CVBuffer *)a3 alpha:(const __CVBuffer *)a4 canonicalDisparity:(const __CVBuffer *)a5 dstColor:(__CVBuffer *)a6 blackBackgroundIntensity:(float)a7 vignetteIntensity:(float)a8 isFinalStage:(BOOL)a9 callbackQueue:(id)a10 withCallback:(id)a11
{
  v11 = a9;
  v32 = a10;
  v31 = a11;
  if (a7 < 0.0 || a7 > 1.0)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2881 description:{@"blackBackgroundIntensity not in [0, 1]"}];
  }

  v42[0] = 0;
  v41 = 0;
  v21 = sub_1DED6F954(a3);
  v22 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a3 textureDescriptor:v21 plane:0 textureCache:self->_textureCache];

  v23 = sub_1DED6F954(a4);
  v24 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a4 textureDescriptor:v23 plane:0 textureCache:self->_textureCache];

  CVPixelBufferRetain(a3);
  CVPixelBufferRetain(a4);
  CVPixelBufferRetain(a5);
  CVPixelBufferRetain(a6);
  [VideoMattingMetal decomposeYuvPixelBuffer:a6 yTexture:v42 uvTexture:&v41 textureCache:self->_textureCache];
  [v42[0] setLabel:@"dstColorTex_Y"];
  [v41 setLabel:@"dstColorTex_uv"];
  v25 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v25 setLabel:@"renderContinuousWithSource"];
  *&v26 = a7;
  *&v27 = a8;
  [(CVAFilterRenderStagelight *)self->_stagelightFilter encodeToCommandBuffer:v25 srcColorTex:v22 srcAlphaTex:v24 dstYTex:v42[0] dstUVTex:v41 stageLightProxyLut:self->_stageLightProxyLut stageLightLut:v26 blackBackgroundIntensity:v27 vignetteIntensity:self->_stageLightLut];
  dispatch_semaphore_wait(self->_renderingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1DED62EC4;
  v33[3] = &unk_1E869B040;
  v37 = a3;
  v38 = a4;
  v39 = a5;
  v28 = v32;
  v34 = v28;
  v35 = self;
  v29 = v31;
  v36 = v29;
  v40 = a6;
  [v25 addCompletedHandler:v33];
  [v25 commit];

  self->_lastCommittedCommand = 3;
  if (v11)
  {
    ++self->_frameIndex;
  }
}

- (void)renderContinuousWithSource:(const __CVBuffer *)a3 segmentationPixelBuffer:(const __CVBuffer *)a4 alpha:(const __CVBuffer *)a5 canonicalDisparity:(const __CVBuffer *)a6 disparityInFocus:(float)a7 focusCanonicalDisparity:(float)a8 fNumber:(float)a9 infConvolutionScale:(float)a10 noiseBits:(float)a11 disparityUpdateRate:(float)a12 focusThresholdHardness:(float)a13 cubeIntensity:(float)a14 usePostprocessedDisparity:(BOOL)a15 dstColor:(__CVBuffer *)a16 isFinalStage:(BOOL)a17 properties:(id)a18 callbackQueue:(id)a19 withCallback:(id)a20
{
  v128[5] = *MEMORY[0x1E69E9840];
  v107 = a18;
  v104 = a19;
  v105 = a20;
  v34 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v102 = a15;
  [v34 setLabel:@"renderContinuousWithSource"];
  v119 = 0;
  v120 = 0;
  [VideoMattingMetal decomposeYuvPixelBuffer:a16 yTexture:&v120 uvTexture:&v119 textureCache:self->_textureCache];
  [v120 setLabel:@"dstColorTextureY"];
  [v119 setLabel:@"dstColorTextureUV"];
  CVPixelBufferRetain(a3);
  CVPixelBufferRetain(a5);
  CVPixelBufferRetain(a6);
  CVPixelBufferRetain(a16);
  v106 = a6;
  pixelBuffer = a3;
  if (self->_sdofRenderingHasForegroundBlur)
  {
    if (!self->_renderStateIsConfigured)
    {
      v123 = 0;
      v124 = &v123;
      v125 = 0x2050000000;
      v35 = qword_1ECDE0FA0;
      v126 = qword_1ECDE0FA0;
      if (!qword_1ECDE0FA0)
      {
        *__p = MEMORY[0x1E69E9820];
        *&__p[8] = 3221225472;
        *&__p[16] = sub_1DED5B864;
        *&__p[24] = &unk_1E869AD70;
        v122 = &v123;
        sub_1DED5B864(__p);
        v35 = v124[3];
      }

      v36 = v35;
      _Block_object_dispose(&v123, 8);
      v37 = [[v36 alloc] initWithDevice:self->_device version:objc_msgSend(sub_1DED5B5F4() colorSize:"latestVersion") disparitySize:{self->_width, self->_height, -[MTLTexture width](self->_disparityInScreenAspectRatio, "width"), -[MTLTexture height](self->_disparityInScreenAspectRatio, "height")}];
      [v37 setVerbose:0];
      v127[0] = &unk_1F5A097D8;
      v127[1] = &unk_1F5A097F0;
      v128[0] = MEMORY[0x1E695E110];
      v128[1] = &unk_1F5A09F10;
      v127[2] = &unk_1F5A09808;
      v127[3] = &unk_1F5A09820;
      v128[2] = &unk_1F5A09F20;
      v128[3] = &unk_1F5A09F00;
      deadzoneInCinematic = self->_deadzoneInCinematic;
      v127[4] = &unk_1F5A09838;
      if (deadzoneInCinematic)
      {
        v39 = MEMORY[0x1E695E118];
      }

      else
      {
        v39 = MEMORY[0x1E695E110];
      }

      v128[4] = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:5];
      [v37 setOptions:v40];

      v41 = [objc_alloc(sub_1DED5B5F4()) initWithDescriptor:v37];
      ptRenderPipeline = self->_ptRenderPipeline;
      self->_ptRenderPipeline = v41;

      v43 = [(PTRenderPipeline *)self->_ptRenderPipeline createRenderStateWithQuality:0];
      ptRenderState = self->_ptRenderState;
      self->_ptRenderState = v43;

      v123 = 0;
      v124 = &v123;
      v125 = 0x2050000000;
      v45 = qword_1ECDE0F98;
      v126 = qword_1ECDE0F98;
      if (!qword_1ECDE0F98)
      {
        *__p = MEMORY[0x1E69E9820];
        *&__p[8] = 3221225472;
        *&__p[16] = sub_1DED5B79C;
        *&__p[24] = &unk_1E869AD70;
        v122 = &v123;
        sub_1DED5B79C(__p);
        v45 = v124[3];
      }

      v46 = v45;
      _Block_object_dispose(&v123, 8);
      v47 = [[v46 alloc] init];
      ptRenderRequest = self->_ptRenderRequest;
      self->_ptRenderRequest = v47;

      [(PTRenderState *)self->_ptRenderState setSourceColorBitDepth:8];
      v123 = 0;
      v124 = &v123;
      v125 = 0x2050000000;
      v49 = qword_1ECDE0F88;
      v126 = qword_1ECDE0F88;
      if (!qword_1ECDE0F88)
      {
        *__p = MEMORY[0x1E69E9820];
        *&__p[8] = 3221225472;
        *&__p[16] = sub_1DED5B92C;
        *&__p[24] = &unk_1E869AD70;
        v122 = &v123;
        sub_1DED5B92C(__p);
        v49 = v124[3];
      }

      v50 = v49;
      _Block_object_dispose(&v123, 8);
      v51 = v50;
      if (qword_1ECDE10A0 != -1)
      {
        dispatch_once(&qword_1ECDE10A0, &unk_1F59F9F90);
      }

      v52 = qword_1ECDE10A8;
      -[PTRenderState setHwModelID:](self->_ptRenderState, "setHwModelID:", [v50 hwModelIDFromFigModelSpecificName:qword_1ECDE10A8]);

      self->_renderStateIsConfigured = 1;
    }

    v109 = [(VideoMattingMetal *)self getPTTextureFromLuma:v120 chroma:v119];
    v123 = 0;
    v118 = 0;
    [VideoMattingMetal decomposeYuvPixelBuffer:a3 yTexture:&v123 uvTexture:&v118 textureCache:self->_textureCache];
    v53 = [v34 blitCommandEncoder];
    [v53 copyFromTexture:v123 toTexture:v120];
    [v53 copyFromTexture:v118 toTexture:v119];
    [v53 endEncoding];
    v54 = [(VideoMattingMetal *)self getPTTextureFromLuma:v123 chroma:v118];
    v55 = sub_1DED6F954(a6);
    v56 = a16;
    v57 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a6 textureDescriptor:v55 plane:0 textureCache:self->_textureCache];
    [(VideoMattingMetal *)self encodeRotateAndFitIntoRectWithCommandBuffer:v34 inTexture:v57 outTexture:self->_disparityInScreenAspectRatio rotateClockwise:0];
    origin = self->_primaryCaptureRect.origin;
    size = self->_primaryCaptureRect.size;
    [(VideoMattingMetal *)self updateRenderRequestwithPerFrameMetadata:self->_sbufMetadata properties:v107];
    [(PTRenderRequest *)self->_ptRenderRequest setRenderState:self->_ptRenderState];
    [(PTRenderRequest *)self->_ptRenderRequest setSourceColor:v54];
    [(PTRenderRequest *)self->_ptRenderRequest setSourceDisparity:self->_disparityInScreenAspectRatio];
    [(PTRenderRequest *)self->_ptRenderRequest setDestinationColor:v109];
    *&v58 = a9;
    [(PTRenderRequest *)self->_ptRenderRequest setFNumber:v58];
    *&v59 = a8;
    [(PTRenderRequest *)self->_ptRenderRequest setFocusDisparity:v59];
    v60 = self->_ptRenderRequest;
    *__p = vcvtq_u64_f64(origin);
    *&__p[16] = vcvtq_u64_f64(size);
    [(PTRenderRequest *)v60 setScissorRect:__p];
    [(PTRenderRequest *)self->_ptRenderRequest setColorCube:self->_fgColorLut];
    [(PTRenderPipeline *)self->_ptRenderPipeline encodeRenderTo:v34 withRenderRequest:self->_ptRenderRequest];

    goto LABEL_49;
  }

  if ((atomic_load_explicit(&qword_1ECDE1630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1630))
  {
    v97 = +[CVAPreferenceManager defaults];
    v98 = [v97 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE1628 = v98;
    __cxa_guard_release(&qword_1ECDE1630);
  }

  if (byte_1ECDE1628 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"fNumber = %f", a9];
  }

  self->_infConvolutionScale = a10;
  lastCommittedCommand = self->_lastCommittedCommand;
  if ((lastCommittedCommand - 3) > 0xFFFFFFFD)
  {
    if (lastCommittedCommand != 2)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v96 = [MEMORY[0x1E696AAA8] currentHandler];
  [v96 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2726 description:{@"renderContinuousWithSource called in the wrong state: %d not in {%d, %d}", self->_lastCommittedCommand, 1, 2}];

  if (self->_lastCommittedCommand == 2)
  {
LABEL_21:
    NSLog(&cfstr_Rendercontinuo_1.isa);
  }

LABEL_22:
  sub_1DED6FBF4(__p, a3, a5, self->_device);
  v62 = *&__p[8];
  v109 = *__p;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v65 = [(CVAPhotoMTLRingBuffer *)self->_disparityConfig advancedBuffer];
  v66 = v65;
  v67 = [v65 contents];

  *&v68 = a12;
  [(VideoMattingMetal *)self setRenderingDisparityUpdateRate:v68];
  *v67 = a8;
  *(v67 + 4) = a8 * 0.5;
  [(VideoMattingMetal *)self renderingDisparityUpdateRate];
  v101 = a16;
  *(v67 + 8) = v69;
  v70 = 1.0 / fmaxf(a8, 0.001);
  *(v67 + 20) = a7;
  *(v67 + 24) = v70;
  *(v67 + 28) = v70 + v70;
  *(v67 + 32) = self->_frameIndex == 0;
  v71 = 1.0 / fmaxf((a8 - a7) * a13, 0.001);
  *(v67 + 12) = v71;
  *(v67 + 16) = a8 - (1.0 / v71);
  if ((atomic_load_explicit(&qword_1ECDE1640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE1640))
  {
    qword_1ECDE1638 = [MEMORY[0x1E696AD98] numberWithBool:0];
    __cxa_guard_release(&qword_1ECDE1640);
  }

  if ((byte_1ECDE1648 & 1) == 0)
  {
    __p[23] = 21;
    strcpy(__p, "newCoCFormulaDisabled");
    sub_1DED2C8A0(&qword_1ECDE1638, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    byte_1ECDE1648 = 1;
  }

  if ([qword_1ECDE1638 BOOLValue])
  {
    v76 = 0;
  }

  else
  {
    v76 = (sub_1DED2E328([v107 videoPipelineDevice]) >> 48) & 1;
  }

  if (Width <= Height)
  {
    v77 = Height;
  }

  else
  {
    v77 = Width;
  }

  *&v75 = v77;
  *&v73 = a8;
  *&v74 = a9;
  *&v72 = self->_renderingLensFocalLength_mm;
  [(VideoMattingMetal *)self blurRadiusAndStdAtInfinityForFocalLength:v76 focusCanonicalDisparity:v72 fNumber:v73 xResolution:v74 useNewCoCFormula:v75];
  v79 = v78;
  v81 = v80;
  frameIndex = self->_frameIndex;
  v83 = (Height >> 1) - 1;
  if ((Height >> 1) <= 1)
  {
    NSLog(&cfstr_ErrorLargestco.isa);
    v83 = 0;
  }

  v84 = ceilf(a11);
  if (a11 < 0.0)
  {
    v85 = 4.0;
  }

  else
  {
    v85 = v84;
  }

  v86 = 1.0;
  if (a11 >= 0.0)
  {
    v86 = exp2f(a11 - v84);
  }

  [(CVAFilterColorAlphaToFgBg *)self->_colorAlphaToFgBg encodeToCommandBuffer:v34 srcColorTex:v109 srcAlphaTex:v62 dstForegroundTex:0 dstBackgroundTex:self->_bg];
  if (self->_renderingUsesPostprocessing && v102)
  {
    v87 = &OBJC_IVAR___VideoMattingMetal__smoothDisparity;
  }

  else
  {
    v87 = &OBJC_IVAR___VideoMattingMetal__disparity;
  }

  [(VideoMattingMetal *)self encodeDisparitySmoothingToCommandBuffer:v34 disparity:*(&self->super.super.isa + 8 * (self->_frameIndex & 1) + *v87)];
  if (self->_isBgColorLutBlack)
  {
    v89 = self->_bg;
  }

  else
  {
    LODWORD(v88) = v81;
    [(CVAFilterMaskedVariableBlur *)self->_maskedVariableBlur encodeToCommandBuffer:v34 source:self->_bg destination:self->_blurredBg mask:self->_coc maxBlurRadius:v88];
    v89 = self->_blurredBg;
  }

  v92 = v79 << 32;
  if (!v76)
  {
    v92 = 0;
  }

  LODWORD(v99) = v85;
  *&v90 = v86;
  *&v91 = a14;
  [(CVAFilterRenderComposite *)self->_renderComposite encodeToCommandBuffer:v34 srcForegroundTex:v109 srcBackgroundTex:v89 srcCocTex:self->_coc dstYTex:v120 dstUVTex:v119 fgColorLut:v90 bgColorLut:v91 frameNumber:self->_fgColorLut seedGeneratorFactor:self->_bgColorLut noiseBits:__PAIR64__(v83 noiseBitsFactor:frameIndex) cubeIntensity:v99 maxBlurRadius:v92 | v76];

  v56 = v101;
LABEL_49:

  dispatch_semaphore_wait(self->_renderingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v111[0] = MEMORY[0x1E69E9820];
  v111[1] = 3221225472;
  v111[2] = sub_1DED63F6C;
  v111[3] = &unk_1E869B040;
  v115 = a5;
  v116 = v106;
  v114 = pixelBuffer;
  v111[4] = self;
  v93 = v104;
  v112 = v93;
  v94 = v105;
  v113 = v94;
  v117 = v56;
  [v34 addCompletedHandler:v111];
  [v34 commit];

  self->_lastCommittedCommand = 3;
  if (a17)
  {
    ++self->_frameIndex;
  }

  v95 = *MEMORY[0x1E69E9840];
}

- (void)updateRenderRequestwithPerFrameMetadata:(id)a3 properties:(id)a4
{
  v39 = a3;
  v6 = a4;
  v7 = [v39 objectForKeyedSubscript:@"FinalCropRectFromSource"];

  if (v7)
  {
    v8 = [v39 objectForKeyedSubscript:@"FinalCropRectFromSource"];
    v9 = [v8 objectForKeyedSubscript:@"Width"];
    [v9 floatValue];
    v11 = v10;
    v12 = [v39 objectForKeyedSubscript:@"FinalCropRectFromSource"];
    v13 = [v12 objectForKeyedSubscript:@"Height"];
    [v13 floatValue];
    v15 = v14;

    sub_1DED2E328([v6 videoPipelineDevice]);
    *v16.i32 = 1.0 / v11;
    *&v16.i32[1] = 1.0 / v15;
    __asm { FMOV            V1.2S, #1.0 }

    if (v22)
    {
      v23 = -1;
    }

    else
    {
      v23 = 0;
    }

    v24 = vdup_n_s32(v23);
    _D8 = vbsl_s8(v24, _D1, v16);
    v26 = COERCE_DOUBLE(vbsl_s8(v24, v16, _D1));
  }

  else
  {
    __asm { FMOV            V8.2S, #1.0 }

    v26 = *&_D8;
  }

  width = self->_width;
  v29 = self->_primaryCaptureRect.size.width;
  height = self->_primaryCaptureRect.size.height;
  v30 = self->_height;
  [(PTRenderRequest *)self->_ptRenderRequest setVisCropFactor:v26];
  v31 = v29 / width;
  v32 = height / v30;
  [(PTRenderRequest *)self->_ptRenderRequest setVisCropFactorPreview:COERCE_DOUBLE(vmul_n_f32(_D8, sqrtf((v32 * v32) + (v31 * v31)) / 1.4142))];
  v33 = [v39 objectForKeyedSubscript:@"FocalLenIn35mmFilm"];
  [v33 floatValue];
  [(PTRenderRequest *)self->_ptRenderRequest setFocalLenIn35mmFilm:?];

  v34 = [v39 objectForKeyedSubscript:@"SensorID"];
  -[PTRenderRequest setSensorID:](self->_ptRenderRequest, "setSensorID:", [v34 intValue]);

  v35 = [v39 objectForKeyedSubscript:@"ConversionGain"];
  -[PTRenderRequest setConversionGain:](self->_ptRenderRequest, "setConversionGain:", [v35 intValue]);

  v36 = [v39 objectForKeyedSubscript:@"ReadNoise_1x"];
  -[PTRenderRequest setReadNoise_1x:](self->_ptRenderRequest, "setReadNoise_1x:", [v36 intValue]);

  v37 = [v39 objectForKeyedSubscript:@"ReadNoise_8x"];
  -[PTRenderRequest setReadNoise_8x:](self->_ptRenderRequest, "setReadNoise_8x:", [v37 intValue]);

  v38 = [v39 objectForKeyedSubscript:@"AGC"];
  -[PTRenderRequest setAGC:](self->_ptRenderRequest, "setAGC:", [v38 intValue]);
}

- (id)getPTTextureFromLuma:(id)a3 chroma:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = qword_1ECDE0F90;
  v15 = qword_1ECDE0F90;
  if (!qword_1ECDE0F90)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1DED5B52C;
    v11[3] = &unk_1E869AD70;
    v11[4] = &v12;
    sub_1DED5B52C(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = [v8 createYUV420:v5 chroma:v6];
  [v9 setColorPrimaries:*MEMORY[0x1E695FFD0]];
  [v9 setTransferFunction:*MEMORY[0x1E6965F50]];
  [v9 setYCbCrMatrix:*MEMORY[0x1E6965FC8]];
  [v9 setYCbCrColorDepth:8];
  [v9 setYCbCrFullRange:1];

  return v9;
}

- (void)encodeDisparitySmoothingToCommandBuffer:(id)a3 disparity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 computeCommandEncoder];
  [v8 setLabel:@"_renderingDisparityDeweightKernel"];
  [v8 setComputePipelineState:self->_renderingDisparityDeweightKernel];
  [v8 setTexture:v7 atIndex:0];
  [v8 setTexture:self->_deweightedDisparity atIndex:1];
  v9 = [(CVAPhotoMTLRingBuffer *)self->_disparityConfig currentBuffer];
  [v8 setBuffer:v9 offset:0 atIndex:0];

  v16 = ([v7 width] + 15) >> 4;
  v17 = ([v7 height] + 15) >> 4;
  v18 = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [v8 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
  [v8 endEncoding];
  [(MPSImageBox *)self->_disparityBlurBoxKernel encodeToCommandBuffer:v6 sourceTexture:self->_deweightedDisparity destinationTexture:self->_shift[self->_frameIndex & 1]];
  [(CVAFilterBox *)self->_boxFilter encodeToCommandBuffer:v6 inTexture:self->_colorSim outTexture:self->_colorSim radius:5 normalize:2];
  v10 = [v6 computeCommandEncoder];

  [v10 setLabel:@"_renderingDisparityFillAndFilterKernel"];
  [v10 setComputePipelineState:self->_renderingDisparityFillAndFilterKernel];
  [v10 setTexture:self->_shift[(self->_frameIndex & 1) == 0] atIndex:0];
  [v10 setTexture:self->_shift[self->_frameIndex & 1] atIndex:1];
  [v10 setTexture:self->_colorSim atIndex:2];
  [v10 setTexture:self->_shift[self->_frameIndex & 1] atIndex:3];
  [v10 setTexture:self->_coc atIndex:4];
  v11 = [(CVAPhotoMTLRingBuffer *)self->_disparityConfig currentBuffer];
  [v10 setBuffer:v11 offset:0 atIndex:0];

  v12 = [v7 width];
  v13 = [v7 height];
  v16 = (v12 + 15) >> 4;
  v17 = (v13 + 15) >> 4;
  v18 = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [v10 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
  [v10 endEncoding];
}

- (void)encodeDisparityDecimateToCommandBuffer:(id)a3 canonicalDisparity:(__CVBuffer *)a4 disparityOut:(id)a5
{
  v8 = a3;
  v9 = a5;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  v12 = [v9 width];
  v13 = [v9 height];
  if (CVPixelBufferGetPixelFormatType(a4) == 1751411059)
  {
    v14 = 25;
  }

  else
  {
    v14 = 55;
  }

  v15 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v14 width:Width height:Height mipmapped:0];
  v16 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a4 textureDescriptor:v15 plane:0 textureCache:self->_textureCache];
  if (self->_sdofRenderingHasForegroundBlur)
  {
    [(VideoMattingMetal *)self encodeRotateAndFitIntoRectWithCommandBuffer:v8 inTexture:v16 outTexture:v9 rotateClockwise:0];
  }

  else
  {
    v17 = [v8 computeCommandEncoder];
    [v17 setLabel:@"_disparityDecimateKernel"];
    [v17 setComputePipelineState:self->_disparityDecimateKernel];
    [v17 setTexture:v16 atIndex:0];
    [v17 setTexture:v9 atIndex:1];
    v20[0] = (v12 + 15) >> 4;
    v20[1] = (v13 + 15) >> 4;
    v20[2] = 1;
    v18 = xmmword_1DED747F0;
    v19 = 1;
    [v17 dispatchThreadgroups:v20 threadsPerThreadgroup:&v18];
    [v17 endEncoding];
  }
}

- (void)encodeRotateAndFitIntoRectWithCommandBuffer:(id)a3 inTexture:(id)a4 outTexture:(id)a5 rotateClockwise:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  v19 = a6;
  *v12.f32 = vcvt_f32_s32(*&self->_width);
  v12.i64[1] = v12.i64[0];
  v18 = vdivq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(self->_primaryCaptureRect.origin), self->_primaryCaptureRect.size), v12);
  v13 = [a3 computeCommandEncoder];
  [v13 setLabel:@"_rotateAndFitIntoRectKernel"];
  [v13 setComputePipelineState:self->_rotateAndFitIntoRectKernel];
  [v13 setTexture:v10 atIndex:0];
  [v13 setTexture:v11 atIndex:1];
  [v13 setBytes:&v18 length:16 atIndex:0];
  [v13 setBytes:&v19 length:1 atIndex:1];
  v14 = [(MTLComputePipelineState *)self->_rotateAndFitIntoRectKernel threadExecutionWidth];
  v15 = [(MTLComputePipelineState *)self->_rotateAndFitIntoRectKernel maxTotalThreadsPerThreadgroup];
  v17[0] = [v11 width];
  v17[1] = [v11 height];
  v17[2] = 1;
  v16[0] = v14;
  v16[1] = v15 / v14;
  v16[2] = 1;
  [v13 dispatchThreads:v17 threadsPerThreadgroup:v16];
  [v13 endEncoding];
}

- (void)encodeGuidedFilterWeightToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputSegmentation:(id)a5 useSegmentationOnly:(BOOL)a6 inputForegroundDistance:(id)a7 outputForegroundMask:(id)a8 outputWeight:(id)a9 minDistToDeweight:(float)a10 unconfidentWeight:(float)a11 dilateForegroundMask:(BOOL)a12 foregroundMaskDilationRadius:(float)a13
{
  _S8 = a13;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = [v26 width];
  if (v29 != [v24 width])
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2158 description:@"Precondition: inputForegroundDistance.width == disparity.width"];
  }

  v30 = [v26 height];
  if (v30 != [v24 height])
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2160 description:@"Precondition: inputForegroundDistance.height == disparity.height"];
  }

  v31 = [v28 width];
  if (v31 != [v24 width])
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2161 description:@"Precondition: outputWeight.width == disparity.width"];
  }

  v32 = [v28 height];
  if (v32 != [v24 height])
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:2162 description:@"Precondition: outputWeight.height == disparity.height"];
  }

  *v46 = a10;
  *&v46[1] = a11;
  v47 = a6;
  v49 = a12;
  __asm { FCVT            H0, S8 }

  v48 = _H0;
  v38 = [v23 computeCommandEncoder];
  [v38 setLabel:@"_guidedFilterWeightKernel"];
  [v38 setComputePipelineState:self->_guidedFilterWeightKernel];
  [v38 setTexture:v24 atIndex:0];
  [v38 setTexture:v26 atIndex:1];
  [v38 setTexture:v25 atIndex:2];
  [v38 setTexture:v28 atIndex:3];
  [v38 setTexture:v27 atIndex:4];
  [v38 setBytes:v46 length:16 atIndex:0];
  v45[0] = ([v24 width] + 15) >> 4;
  v45[1] = ([v24 height] + 15) >> 4;
  v45[2] = 1;
  v43 = xmmword_1DED747F0;
  v44 = 1;
  [v38 dispatchThreadgroups:v45 threadsPerThreadgroup:&v43];
  [v38 endEncoding];
}

- (void)encodeScaleSourceToCommandBuffer:(id)a3 source:(__CVBuffer *)a4 targetWidth:(unint64_t)a5 targetHeight:(unint64_t)a6
{
  v27 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
  v11 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = 500;
  }

  else
  {
    v14 = 70;
  }

  v15 = self->_frameIndex & 1;
  scaledSource = self->_scaledSource;
  if (!self->_scaledSource[v15])
  {
    if (v13)
    {
      v17 = PixelFormatType;
    }

    else
    {
      v17 = 1111970369;
    }

    self->_scaledSourceCV[v15] = [(VideoMattingMetal *)self createCVBufferWithWidth:a5 height:a6 format:v17];
    v18 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v14 width:a5 height:a6 mipmapped:0];
    [v18 setUsage:3];
    v19 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:self->_scaledSourceCV[v15] textureDescriptor:v18 plane:0 textureCache:self->_textureCache];
    v20 = scaledSource[v15];
    scaledSource[v15] = v19;
  }

  v21 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v23 = [v21 containsObject:v22];

  if (v23)
  {
    [(VideoMattingMetal *)self encode420HybridDownsamplingToCommandBuffer:v27 source:a4 destination:self->_scaledSourceCV[v15]];
  }

  else
  {
    Width = CVPixelBufferGetWidth(a4);
    v25 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v14 width:Width height:CVPixelBufferGetHeight(a4) mipmapped:0];
    v26 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a4 textureDescriptor:v25 plane:0 textureCache:self->_textureCache];
    [(CVAFilterHybridResampling *)self->_hybridResampler encodeHybridDownsamplingToCommandBuffer:v27 source:v26 destination:scaledSource[v15]];
  }
}

- (__CVBuffer)createCVBufferWithWidth:(unint64_t)a3 height:(unint64_t)a4 format:(unsigned int)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = *MEMORY[0x1E69660D8];
  v14[0] = MEMORY[0x1E695E0F8];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  CVPixelBufferCreate(*MEMORY[0x1E695E480], a3, a4, a5, v8, &v12);
  v9 = v12;

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeFilterCoefficientToBuffer:(id)a3 inputCoeff:(id)a4 prevCoeff:(id)a5 outCoeff:(id)a6 inColorSim:(id)a7 updateRate:(float)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [v15 width];
  v20 = [v15 height];
  v25[0] = self->_frameIndex != 0;
  v26 = 1.0 - a8;
  v21 = [v14 computeCommandEncoder];
  [v21 setLabel:@"_temporalCoefficientsFilterKernel"];
  [v21 setComputePipelineState:self->_temporalCoefficientsFilterKernel];
  [v21 setTexture:v15 atIndex:0];
  [v21 setTexture:v16 atIndex:1];
  [v21 setTexture:v17 atIndex:2];
  [v21 setTexture:v18 atIndex:3];
  [v21 setBytes:v25 length:12 atIndex:0];
  v24[0] = (v19 + 15) >> 4;
  v24[1] = (v20 + 15) >> 4;
  v24[2] = 1;
  v22 = vdupq_n_s64(0x10uLL);
  v23 = 1;
  [v21 dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
  [v21 endEncoding];
}

- (void)initSourceTexture:(__CVBuffer *)a3
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v10 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v8 = [v10 containsObject:v7];

  if (v8)
  {
    v9 = 500;
  }

  else
  {
    v9 = 70;
  }

  v11 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v9 width:Width height:Height mipmapped:0];
  [v11 setStorageMode:0];
}

- (void)alphaMattingWithPostprocessedDisparity:(const __CVBuffer *)a3 source:(const __CVBuffer *)a4 inSegmentation:(__CVBuffer *)a5 alpha:(__CVBuffer *)a6 staticParams:(const VideoMattingStaticParams *)a7 dynamicParams:(const void *)a8 usePostprocessedDisparity:(BOOL)a9 isFinalStage:(BOOL)a10 dilateForegroundMask:(BOOL)a11 properties:(id)a12 callbackQueue:(id)a13 callback:(id)a14
{
  v76 = a12;
  v72 = a13;
  v71 = a14;
  v19 = sub_1DED6F954(a4);
  v69 = a4;
  v20 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a4 textureDescriptor:v19 plane:0 textureCache:self->_textureCache];

  v73 = v20;
  if (a5)
  {
    v21 = sub_1DED6F954(a5);
    v75 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a5 textureDescriptor:v21 plane:0 textureCache:self->_textureCache];
  }

  else
  {
    v75 = 0;
  }

  v22 = sub_1DED6F954(a6);
  v23 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a6 textureDescriptor:v22 plane:0 textureCache:self->_textureCache];

  v24 = *(a8 + 4);
  v25 = *(a8 + 10);
  v70 = v23;
  if (sub_1DED573AC())
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"focusCanonicalDisparity = %5.3f", *(a8 + 4)];

    [MEMORY[0x1E696AEC0] stringWithFormat:@"alphaMatte.cutoffCanonicalDisparity = %5.3f", (*(a8 + 4) - *(a8 + 10))];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"alphaMatteDeltaCanonicalDisparity = %5.3f", *(a8 + 10)];

    v26 = *(a8 + 4);
    v27 = 1.0 / (v26 - *(a8 + 10));
    v28 = 1.0 / v26;
    v29 = v27 - v28;
    *&v27 = v27;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"alphaMatte.focus = %5.3fm delta = %5.3fm cutoff = %5.3fm", *&v28, v29, *&v27];
  }

  v30 = *(a8 + 2);
  v31 = *(a8 + 9);
  v32 = atan2f(*(a8 + 8), *(a8 + 7));
  v33 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v33 setLabel:@"alphaMattingWithPostprocessedDisparity"];
  *&v34 = 1.0 / ((((v30 / 255.0) * (v30 / 255.0)) + ((v30 / 255.0) * (v30 / 255.0))) * 3.0);
  [(VideoMattingMetal *)self encodeColorSimToCommandBuffer:v33 prevSource:self->_scaledSource[!(self->_frameIndex & 1)] currSource:self->_scaledSource[self->_frameIndex & 1] destination:self->_colorSim similarityScaleFactor:v34];
  if (self->_mattingUsesPostprocessing && a9)
  {
    v41 = &OBJC_IVAR___VideoMattingMetal__smoothDisparity;
  }

  else
  {
    v41 = &OBJC_IVAR___VideoMattingMetal__disparity;
  }

  v42 = *(&self->super.super.isa + 8 * (self->_frameIndex & 1) + *v41);
  if (v75)
  {
    isBgColorLutBlack = self->_isBgColorLutBlack;
  }

  gfWeight = self->_gfWeight;
  gfForegroundMask = self->_gfForegroundMask;
  LODWORD(v36) = *(a8 + 4);
  LODWORD(v37) = *(a8 + 6);
  *&v39 = a7->guidedFilterUnconfidentWeight;
  *&v38 = a7->guidedFilterMinDistToDeweight;
  *&v40 = a7->foregroundMaskDilationRadius;
  LOBYTE(v67) = *(a8 + 81);
  LOBYTE(v66) = a11;
  *&v35 = v24 - v25;
  [VideoMattingMetal encodeForegroundMaskToBuffer:"encodeForegroundMaskToBuffer:disparity:inSegmentation:useSegmentationOnly:weight:foregroundMask:erodedForegroundMask:disparityMin:focusDisparity:hardness:minDistToDeweight:unconfidentWeight:dilateForegroundMask:foregroundMaskDilationRadius:properties:applyRotation:" disparity:v33 inSegmentation:v42 useSegmentationOnly:v35 weight:v36 foregroundMask:v37 erodedForegroundMask:v38 disparityMin:v39 focusDisparity:v40 hardness:0 minDistToDeweight:v66 unconfidentWeight:v76 dilateForegroundMask:v67 foregroundMaskDilationRadius:? properties:? applyRotation:?];
  v46 = &qword_1ECDE1000;
  if ((atomic_load_explicit(&qword_1ECDE15E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE15E8))
  {
    LODWORD(v64) = 1008981770;
    qword_1ECDE15E0 = [MEMORY[0x1E696AD98] numberWithFloat:v64];
    __cxa_guard_release(&qword_1ECDE15E8);
  }

  if ((byte_1ECDE15F0 & 1) == 0)
  {
    HIBYTE(v83[2]) = 20;
    strcpy(v83, "alphaGuidedFilterEps");
    sub_1DED2C8A0(&qword_1ECDE15E0, v83);
    if (SHIBYTE(v83[2]) < 0)
    {
      operator delete(v83[0]);
    }

    byte_1ECDE15F0 = 1;
  }

  if ((atomic_load_explicit(&qword_1ECDE15F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ECDE15F8))
  {
    v65 = +[CVAPreferenceManager defaults];
    v68 = [v65 BOOLForKey:@"CVAPhotoDebugStyle"];

    byte_1ECDE15F1 = v68;
    __cxa_guard_release(&qword_1ECDE15F8);
    v46 = &qword_1ECDE1000;
  }

  if (byte_1ECDE15F1 == 1)
  {
    v47 = v46;
    v48 = MEMORY[0x1E696AEC0];
    v49 = v47;
    [v47[188] floatValue];
    [v48 stringWithFormat:@"alphaGuidedFilterEps = %f", v50];

    v46 = v49;
  }

  [v46[188] floatValue];
  [(MPSImageGuidedFilter *)self->_guidedFilter setEpsilon:?];
  [(MPSImageGuidedFilter *)self->_guidedFilter encodeRegressionToCommandBuffer:v33 sourceTexture:self->_gfForegroundMask guidanceTexture:self->_scaledSource[self->_frameIndex & 1] weightsTexture:self->_gfWeight destinationCoefficientsTexture:self->_coeff];
  v51 = self->_frameIndex & 1;
  v52 = self->_coeffHistory[v51];
  v53 = self->_coeffHistory[v51 ^ 1];
  LODWORD(v54) = *a8;
  [(VideoMattingMetal *)self encodeFilterCoefficientToBuffer:v33 inputCoeff:self->_coeff prevCoeff:v53 outCoeff:v52 inColorSim:self->_colorSim updateRate:v54];
  [(MPSImageGuidedFilter *)self->_guidedFilter encodeReconstructionToCommandBuffer:v33 guidanceTexture:v73 coefficientsTexture:v52 destinationTexture:self->_alphaNoPostprocessing];
  v55 = fabsf(*(a8 + 9));
  v56 = fmaxf(v55 * (v55 * (v55 * v55)), 0.1) * 0.5;
  infConvolutionScale = self->_infConvolutionScale;
  *&v58 = infConvolutionScale * (1.0 - v56);
  *&v59 = infConvolutionScale * v56;
  *&v60 = self->_gammaExponent;
  *&v61 = v32;
  [(CVAFilterGuided *)self->_cvaGuidedFilter encodePostProcessAlphaToCommandBuffer:v33 source:self->_alphaNoPostprocessing destination:v70 alphaMaxLaplacian:self->_enableInfConvolution infConvOrientation:COERCE_DOUBLE(LODWORD(a7->alphaMaxLaplacian)) infConvMajorRadius:v61 infConvMinorRadius:v58 gammaExponent:v59 enableInfConvolution:v60];
  CVPixelBufferRetain(v69);
  CVPixelBufferRetain(a6);
  CVPixelBufferRetain(a5);
  dispatch_semaphore_wait(self->_mattingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = sub_1DED66914;
  v77[3] = &unk_1E869AFF8;
  v80 = v69;
  v81 = a5;
  v77[4] = self;
  v62 = v72;
  v78 = v62;
  v63 = v71;
  v79 = v63;
  v82 = a6;
  [v33 addCompletedHandler:v77];
  [v33 commit];

  self->_lastCommittedCommand = 1;
  if (a10)
  {
    ++self->_frameIndex;
  }
}

- (id)disparityPostprocessingWithCanonicalDisparity:(const __CVBuffer *)a3 color:(const __CVBuffer *)a4 postProcessedDisparity:(__CVBuffer *)a5 staticParams:(const VideoMattingStaticParams *)a6 dynamicParams:(const void *)a7 postProcessingParams:(const VideoPostprocessingParams *)a8 facesArray:(id)a9 faceModel:(id)a10 isFinalStage:(BOOL)a11 callbackQueue:(id)a12 callback:(id)a13
{
  v101 = a12;
  v100 = a13;
  v104 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v104 setLabel:@"disparityPostprocessingWithCanonicalDisparity"];
  [(VideoMattingMetal *)self encodeScaleSourceToCommandBuffer:v104 source:a4 targetWidth:self->_width2 targetHeight:self->_height2];
  disparity = self->_disparity;
  [(VideoMattingMetal *)self encodeDisparityDecimateToCommandBuffer:v104 canonicalDisparity:a3 disparityOut:self->_disparity[self->_frameIndex & 1]];
  if (!self->_sdofRenderingHasForegroundBlur)
  {
    if (self->_doDisparityDiffusion && ![(VideoMattingMetal *)self bypassShiftCleanup]&& (*(a7 + 80) & 1) != 0)
    {
      if (self->_doDisparityDiffusion)
      {
        [(VideoMattingMetal *)self encodeDiffusionMapToCommandBuffer:v104 color:self->_scaledSource[self->_frameIndex & 1] diffusionMap:self->_diffusionMapTexture];
        frameIndex = self->_frameIndex;
        v48 = disparity[frameIndex & 1];
        if (a8->useTemporalRejection)
        {
          smoothConfidence = self->_smoothConfidence;
          v50 = !(frameIndex & 1);
          v51 = self->_smoothConfidence[v50];
          v52 = &self->_disparityLastValidValue[v50];
          if (frameIndex)
          {
            v53 = v52;
          }

          else
          {
            v53 = self->_disparity;
          }

          LOBYTE(v98) = self->_useTemporalConfidence;
          [(VideoMattingMetal *)self encodeUpdateConfidenceAndLastValidDisparityToCommandBuffer:v104 disparity:v48 prevSmoothConfidence:v51 lastValidDisparityIn:*v53 lastValidDisparityOut:self->_disparityLastValidValue[self->_frameIndex & 1] currConfidenceOut:self->_disparityConfidenceMaskTexture useTemporalConfidence:v98];
          v57 = self->_frameIndex;
          v58 = disparity[v57 & 1];
          if (v57)
          {
            v59 = !(v57 & 1);
            disparity = &self->_smoothDisparity[v59];
            disparityConfidenceMaskTexture = self->_disparityConfidenceMaskTexture;
            v61 = smoothConfidence[v59];
          }

          else
          {
            disparityConfidenceMaskTexture = self->_disparityConfidenceMaskTexture;
            v61 = disparityConfidenceMaskTexture;
          }

          *&v54 = a6->shiftFilterUpdateRate;
          *&v55 = a6->minimumConfidenceToKeepDisparity;
          *&v56 = a6->maximumSimilarityToKeepDisparity;
          LOBYTE(v99) = self->_isBgColorLutBlack;
          [(VideoMattingMetal *)self encodeDisparityTemporalFilterToCommandBuffer:v104 currentDisparity:v58 previousDisparity:*disparity currConfidence:disparityConfidenceMaskTexture prevSmoothConfidence:v61 colorSim:self->_colorSim outPrevSmoothConfidence:v54 outTemporallyFilteredDisparity:v55 disparityFallbackToInvalid:v56 disparityFilterUpdateRate:smoothConfidence[v57 & 1] minimumConfidenceToKeepDisparity:self->_temporallyFilteredDisparity maximumSimilarityToKeepDisparity:v99];
        }

        else
        {
          [(VideoMattingMetal *)self encodeCopyTextureToCommandBuffer:v104 inTexture:v48 outTexture:self->_temporallyFilteredDisparity];
          [(VideoMattingMetal *)self encodeSimpleConfidenceToCommandBuffer:v104 disparity:disparity[self->_frameIndex & 1] outConfidence:self->_disparityConfidenceMaskTexture];
        }

        facemaskDisparity = self->_facemaskDisparity;
        self->_facemaskDisparity = 0;
        temporallyFilteredDisparity = self->_temporallyFilteredDisparity;
        self->_temporallyFilteredDisparity = 0;
        v91 = self->_facemaskDisparity;
        self->_facemaskDisparity = temporallyFilteredDisparity;

        v92 = self->_temporallyFilteredDisparity;
        self->_temporallyFilteredDisparity = facemaskDisparity;

        facemaskRegionTexture = 0;
        if (a10 && self->_doFaceMask)
        {
          facemaskRegionTexture = self->_facemaskRegionTexture;
        }

        p_filledDisparityTexture = &self->_filledDisparityTexture;
        LODWORD(v93) = *(a7 + 5);
        *&v94 = a8->backgroundFillMarginFromValidDisparity_px;
        [(VideoMattingMetal *)self encodeFillBackgroundDisparityToCommandBuffer:v104 inputDisparity:self->_facemaskDisparity inputFacemask:facemaskRegionTexture outputDistanceFromKnownDisparity:self->_distanceFromKnownDisparityTexture outputDisparity:self->_filledDisparityTexture backgroundDisparityValue:v93 minimumDistanceFromValidDisparity:v94];
        [(VideoMattingMetal *)self encodeDomainTransformToCommandBuffer:v104 inputDiffusionMap:self->_diffusionMapTexture inputDistanceFromKnownDisparity:self->_distanceFromKnownDisparityTexture outputDomainTransformX:self->_domainTransformXTexture outputDomainTransformY:self->_domainTransformYTexture];
        if (!a8->fillLargeHolesWithBackground && !self->_isBgColorLutBlack)
        {
          p_filledDisparityTexture = &self->_facemaskDisparity;
        }

        [(VideoMattingMetal *)self encodeEdgeAwareFillToCommandBuffer:v104 inputDisparity:*p_filledDisparityTexture inputDomainTransformX:self->_domainTransformXTexture inputDomainTransformY:self->_domainTransformYTexture outputDisparity:self->_initDisparity];
        [(VideoMattingMetal *)self encodeInvalidDisparityMaskToCommandBuffer:v104 inputDisparity:self->_initDisparity outputMask:self->_invalidDisparityMaskTexture];
        [(VideoMattingMetal *)self encodeBackgroundFillToCommandBuffer:v104 inputDisparity:self->_initDisparity inputMask:self->_invalidDisparityMaskTexture outputDisparity:self->_initDisparity];
        LODWORD(v98) = 15;
        [(CVAFilterDiffusion *)self->_diffusion encodeToCommandBuffer:v104 priorTexture:self->_initDisparity sourceTexture:self->_initDisparity destinationTexture:self->_smoothDisparity[self->_frameIndex & 1] diffusionMapTexture:self->_diffusionMapTexture confidenceTexture:self->_disparityConfidenceMaskTexture iterations:v98];
      }
    }

    else
    {
      objc_storeStrong(&self->_smoothDisparity[self->_frameIndex & 1], disparity[self->_frameIndex & 1]);
    }

    objc_storeStrong(&self->_filteredBeforeSmoothDisparity, self->_smoothDisparity[self->_frameIndex & 1]);
    if (a5 && (*(a7 + 80) & 1) != 0)
    {
      Width = CVPixelBufferGetWidth(a5);
      Height = CVPixelBufferGetHeight(a5);
      if (CVPixelBufferGetPixelFormatType(a5) != 1751411059)
      {
        v97 = [MEMORY[0x1E696AAA8] currentHandler];
        [v97 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:1675 description:@"Postprocessed disparity buffer is not kCVPixelFormatType_DisparityFloat16"];
      }

      v64 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:Width height:Height mipmapped:0];
      [v64 setUsage:2];
      v65 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a5 textureDescriptor:v64 plane:0 textureCache:self->_textureCache];
      [(VideoMattingMetal *)self encodeOutputDisparityToCommandBuffer:v104 inputDisparity:self->_smoothDisparity[self->_frameIndex & 1] outputDisparity:v65];
    }

    goto LABEL_69;
  }

  if (self->_deadzoneInCinematic)
  {
    goto LABEL_69;
  }

  CVPixelBufferLockBaseAddress(a3, 1uLL);
  CVPixelBufferLockBaseAddress(a5, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  v20 = CVPixelBufferGetHeight(a3);
  v21 = CVPixelBufferGetWidth(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v23 = CVPixelBufferGetBaseAddress(a5);
  CVPixelBufferGetHeight(a5);
  CVPixelBufferGetWidth(a5);
  v24 = CVPixelBufferGetBytesPerRow(a5);
  v25 = sub_1DED5D1F8(@"CVAPhotoBackgroundDeadzoneInCentimeters", @"com.apple.coremedia", 10);
  v26 = sub_1DED5D1F8(@"CVAPhotoForegroundDeadzoneInCentimeters", @"com.apple.coremedia", 10);
  v27 = v25 / 100.0;
  v28 = v26 / 100.0;
  _S10 = *(a7 + 4);
  v30 = 1.0 / ((1.0 / _S10) + v27);
  v31 = 1.0 / fmax(1.0 / _S10 - v28, 0.05);
  v32 = _S10 - v30;
  v33 = fabsf(_S10 - v30);
  v107 = atan(3.14159265);
  v109 = v31;
  v106 = -(v31 - (_S10 * 2.0));
  v105 = _S10 - v106;
  __asm { FCVT            H14, S10 }

  if (fabsf(_S10 - v106) >= 0.01)
  {
    v66 = 0;
    v67 = v33;
    while (1)
    {
      v68 = 0;
      do
      {
        _H0 = *&BaseAddress[2 * v68];
        __asm { FCVT            S1, H0 }

        if (_S10 <= _S1 || v30 > _S1)
        {
          if (_S10 < _S1 && _S1 <= v31)
          {
            v73 = atan(((-(_S1 - (_S10 * 2.0)) - v106) / v105) * 3.14159265);
            v67 = v33;
            *&v73 = v73 / v107;
            _S0 = -(((*&v73 * v105) - (v31 - (_S10 * 2.0))) - (_S10 * 2.0));
LABEL_39:
            __asm { FCVT            H0, S0 }
          }
        }

        else
        {
          _H0 = _H14;
          if (v67 >= 0.01)
          {
            v75 = atan(((_S1 - v30) / v32) * 3.14159265);
            v67 = v33;
            *&v75 = v75 / v107;
            _S0 = v30 + (*&v75 * v32);
            goto LABEL_39;
          }
        }

        *&v23[2 * v68++] = _H0;
      }

      while (v21 >= v68);
      ++v66;
      v23 += v24;
      BaseAddress += BytesPerRow;
      if (v20 < v66)
      {
        goto LABEL_68;
      }
    }
  }

  _S0 = -(_S10 - (_S10 * 2.0));
  __asm { FCVT            H8, S0 }

  if (v33 >= 0.01)
  {
    v76 = 0;
    while (1)
    {
      v77 = 0;
      do
      {
        _H0 = *&BaseAddress[2 * v77];
        __asm { FCVT            S1, H0 }

        if (_S10 <= _S1 || v30 > _S1)
        {
          if (_S10 < _S1 && _S1 <= v109)
          {
            *&v23[2 * v77] = _H8;
            goto LABEL_56;
          }
        }

        else
        {
          v82 = atan(((_S1 - v30) / v32) * 3.14159265) / v107;
          _S0 = v30 + (v82 * v32);
          __asm { FCVT            H0, S0 }
        }

        *&v23[2 * v77] = _H0;
LABEL_56:
        ++v77;
      }

      while (v21 >= v77);
      ++v76;
      v23 += v24;
      BaseAddress += BytesPerRow;
      if (v20 < v76)
      {
        goto LABEL_68;
      }
    }
  }

  v41 = 0;
  do
  {
    v42 = 0;
    do
    {
      _H0 = *&BaseAddress[2 * v42];
      __asm { FCVT            S1, H0 }

      if (_S10 <= _S1 || v30 > _S1)
      {
        if (_S10 >= _S1 || _S1 > v109)
        {
          *&v23[2 * v42] = _H0;
        }

        else
        {
          *&v23[2 * v42] = _H8;
        }
      }

      else
      {
        *&v23[2 * v42] = _H14;
      }

      ++v42;
    }

    while (v21 >= v42);
    ++v41;
    v23 += v24;
    BaseAddress += BytesPerRow;
  }

  while (v20 >= v41);
LABEL_68:
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  CVPixelBufferUnlockBaseAddress(a5, 0);
LABEL_69:
  sub_1DED49608(*(self->_metalContext + 6), self->_device, self->_commandQueue);
  CVPixelBufferRetain(a4);
  CVPixelBufferRetain(a5);
  dispatch_semaphore_wait(self->_mattingCallbackSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = sub_1DED675B4;
  v110[3] = &unk_1E869AFD0;
  v113 = a4;
  v110[4] = self;
  v84 = v101;
  v111 = v84;
  v85 = v100;
  v112 = v85;
  v114 = a5;
  [v104 addCompletedHandler:v110];
  [v104 commit];

  if (a11)
  {
    ++self->_frameIndex;
  }

  yuvSourceDownsampledTexture = self->_yuvSourceDownsampledTexture;
  v87 = yuvSourceDownsampledTexture;

  return yuvSourceDownsampledTexture;
}

- (void)segmentationAverage:(__CVBuffer *)a3 callbackQueue:(id)a4 callback:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (!self->_foregroundRatioBuffer)
  {
    v10 = [(MTLDeviceSPI *)self->_device newBufferWithLength:4 options:0];
    foregroundRatioBuffer = self->_foregroundRatioBuffer;
    self->_foregroundRatioBuffer = v10;
  }

  v12 = sub_1DED6F954(a3);
  v13 = [VideoMattingMetal textureFromCacheUsingPixelBuffer:a3 textureDescriptor:v12 plane:0 textureCache:self->_textureCache];

  v14 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v14 setLabel:@"segmentationAverage"];
  [(GlobalReductionAverage *)self->_globalReductionAverage parallelReductionAverage:v14 inTexture:v13 outGlobalAverage:self->_foregroundRatioBuffer];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1DED6796C;
  v17[3] = &unk_1E869AF80;
  v17[4] = self;
  v15 = v8;
  v18 = v15;
  v16 = v9;
  v19 = v16;
  [v14 addCompletedHandler:v17];
  [v14 commit];
}

- (void)encodeOutputDisparityToCommandBuffer:(id)a3 inputDisparity:(id)a4 outputDisparity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v11 pixelFormat] != 25)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"VideoMattingMetal.mm" lineNumber:1461 description:{@"Output disparity texture should be MTLPixelFormatR16Float (%lu), but is %lu", 25, objc_msgSend(v11, "pixelFormat")}];
  }

  v12 = [v9 computeCommandEncoder];
  [v12 setLabel:@"_internalDisparityToCanonicalDisparityKernel"];
  [v12 setComputePipelineState:self->_internalDisparityToCanonicalDisparityKernel];
  [v12 setTexture:v10 atIndex:0];
  [v12 setTexture:self->_outputCanonicalDisparity atIndex:1];
  v13 = [(MTLTexture *)self->_outputCanonicalDisparity width];
  v14 = [(MTLTexture *)self->_outputCanonicalDisparity height];
  v18[0] = (v13 + 15) >> 4;
  v18[1] = (v14 + 15) >> 4;
  v18[2] = 1;
  v16 = xmmword_1DED747F0;
  v17 = 1;
  [v12 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [v12 endEncoding];
  [(CVAFilterHybridResampling *)self->_hybridResampler encodeBilinearScalingToCommandBuffer:v9 source:self->_outputCanonicalDisparity destination:v11 mode:2];
}

- (void)encodeConfidenceMaskToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputDisparityNoInvalid:(id)a5 outputConfidenceMask:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = 0x3F800000C59F6000;
  v13 = [a3 computeCommandEncoder];
  [v13 setLabel:@"_disparityConfidenceMaskKernel"];
  [v13 setComputePipelineState:self->_disparityConfidenceMaskKernel];
  [v13 setTexture:v10 atIndex:0];
  [v13 setTexture:v11 atIndex:1];
  [v13 setTexture:v12 atIndex:2];
  [v13 setBytes:&v17 length:8 atIndex:0];
  v16[0] = ([v12 width] + 15) >> 4;
  v16[1] = ([v12 height] + 15) >> 4;
  v16[2] = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [v13 dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [v13 endEncoding];
}

- (void)encodeFillBackgroundDisparityToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputFacemask:(id)a5 outputDistanceFromKnownDisparity:(id)a6 outputDisparity:(id)a7 backgroundDisparityValue:(float)a8 minimumDistanceFromValidDisparity:(float)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  *v31 = a9;
  *&v31[1] = a8;
  v21 = [v16 computeCommandEncoder];
  [v21 setLabel:@"_disparityIsValidKernel"];
  [v21 setComputePipelineState:self->_disparityIsValidKernel];
  [v21 setTexture:v17 atIndex:0];
  [v21 setTexture:self->_disparityIsValidTexture atIndex:1];
  v28 = ([v17 width] + 15) >> 4;
  v29 = ([v17 height] + 15) >> 4;
  v30 = 1;
  v26 = xmmword_1DED747F0;
  v27 = 1;
  [v21 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  [v21 endEncoding];
  [(CVAFilterDistanceTransform *)self->_distanceTransform encodeToCommandBuffer:v16 sourceTexture:self->_disparityIsValidTexture destinationTexture:v19];
  v22 = [v16 computeCommandEncoder];

  if (v18)
  {
    [v22 setLabel:@"_fillBackgroundDisparityKernel_faceMask"];
    v23 = &OBJC_IVAR___VideoMattingMetal__fillBackgroundDisparityKernel_faceMask;
  }

  else
  {
    [v22 setLabel:@"_fillBackgroundDisparityKernel"];
    v23 = &OBJC_IVAR___VideoMattingMetal__fillBackgroundDisparityKernel;
  }

  [v22 setComputePipelineState:*(&self->super.super.isa + *v23)];
  [v22 setTexture:v17 atIndex:0];
  [v22 setTexture:v18 atIndex:1];
  [v22 setTexture:v19 atIndex:2];
  [v22 setTexture:v20 atIndex:3];
  [v22 setBytes:v31 length:8 atIndex:0];
  v24 = [v20 width];
  v25 = [v20 height];
  v28 = (v24 + 15) >> 4;
  v29 = (v25 + 15) >> 4;
  v30 = 1;
  v26 = xmmword_1DED747F0;
  v27 = 1;
  [v22 dispatchThreadgroups:&v28 threadsPerThreadgroup:&v26];
  [v22 endEncoding];
}

- (void)encodeDisparityMasksToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputSegmentation:(id)a5 useSegmentationOnly:(BOOL)a6 outputForegroundMask:(id)a7 outputIsForeground:(id)a8 disparityMin:(float)a9 focusDisparity:(float)a10 hardness:(float)a11 minDistToDeweight:(float)a12 unconfidentWeight:(float)a13
{
  v24 = a4;
  v25 = a5;
  v26 = a7;
  v27 = a8;
  *v32 = a9;
  *&v32[1] = 1.0 / fmaxf((a10 - a9) * (1.0 - a11), 0.001);
  *&v32[2] = a10;
  *&v32[3] = a12;
  *&v32[4] = a13;
  v33 = a6;
  v28 = [a3 computeCommandEncoder];
  [v28 setLabel:@"_disparityMasksKernel"];
  [v28 setComputePipelineState:self->_disparityMasksKernel];
  [v28 setTexture:v24 atIndex:0];
  [v28 setTexture:v25 atIndex:1];
  [v28 setTexture:v26 atIndex:2];
  [v28 setTexture:v27 atIndex:3];
  [v28 setBytes:v32 length:24 atIndex:0];
  v31[0] = ([v24 width] + 15) >> 4;
  v31[1] = ([v24 height] + 15) >> 4;
  v31[2] = 1;
  v29 = xmmword_1DED747F0;
  v30 = 1;
  [v28 dispatchThreadgroups:v31 threadsPerThreadgroup:&v29];
  [v28 endEncoding];
}

- (void)encodeDiffusionMapToCommandBuffer:(id)a3 color:(id)a4 diffusionMap:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14 = 0xC1A000003A83126FLL;
  v10 = [a3 computeCommandEncoder];
  [v10 setLabel:@"_diffusionMapKernel"];
  [v10 setComputePipelineState:self->_diffusionMapKernel];
  [v10 setTexture:v8 atIndex:0];
  [v10 setTexture:v9 atIndex:1];
  [v10 setBytes:&v14 length:8 atIndex:0];
  v13[0] = ([v9 width] + 15) >> 4;
  v13[1] = ([v9 height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [v10 dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [v10 endEncoding];
}

- (void)encodeDisparityTemporalFilterToCommandBuffer:(id)a3 currentDisparity:(id)a4 previousDisparity:(id)a5 currConfidence:(id)a6 prevSmoothConfidence:(id)a7 colorSim:(id)a8 outPrevSmoothConfidence:(id)a9 outTemporallyFilteredDisparity:(id)a10 disparityFallbackToInvalid:(BOOL)a11 disparityFilterUpdateRate:(float)a12 minimumConfidenceToKeepDisparity:(float)a13 maximumSimilarityToKeepDisparity:(float)a14
{
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a9;
  v29 = a10;
  *v36 = a12;
  *&v36[1] = a13;
  *&v36[2] = a14;
  v30 = [a3 computeCommandEncoder];
  v31 = v30;
  if (a11)
  {
    [v30 setLabel:@"_temporalDisparityFilterKernel_fallbackToInvalid"];
    v32 = &OBJC_IVAR___VideoMattingMetal__temporalDisparityFilterKernel_fallbackToInvalid;
  }

  else
  {
    [v30 setLabel:@"_temporalDisparityFilterKernel"];
    v32 = &OBJC_IVAR___VideoMattingMetal__temporalDisparityFilterKernel;
  }

  [v31 setComputePipelineState:*(&self->super.super.isa + *v32)];
  [v31 setTexture:v23 atIndex:0];
  [v31 setTexture:v24 atIndex:1];
  [v31 setTexture:v25 atIndex:2];
  [v31 setTexture:v27 atIndex:3];
  [v31 setTexture:v26 atIndex:4];
  [v31 setTexture:v29 atIndex:5];
  [v31 setTexture:v28 atIndex:6];
  [v31 setBytes:v36 length:12 atIndex:0];
  v35[0] = ([v29 width] + 15) >> 4;
  v35[1] = ([v29 height] + 15) >> 4;
  v35[2] = 1;
  v33 = xmmword_1DED747F0;
  v34 = 1;
  [v31 dispatchThreadgroups:v35 threadsPerThreadgroup:&v33];
  [v31 endEncoding];
}

- (void)encodeUpdateConfidenceAndLastValidDisparityToCommandBuffer:(id)a3 disparity:(id)a4 prevSmoothConfidence:(id)a5 lastValidDisparityIn:(id)a6 lastValidDisparityOut:(id)a7 currConfidenceOut:(id)a8 useTemporalConfidence:(BOOL)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v26 = self->_frameIndex == 0;
  v20 = [a3 computeCommandEncoder];
  v21 = v20;
  if (a9)
  {
    [v20 setLabel:@"_updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence"];
    v22 = &OBJC_IVAR___VideoMattingMetal__updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence;
  }

  else
  {
    [v20 setLabel:@"_updateConfidenceAndLastValidDisparityKernel"];
    v22 = &OBJC_IVAR___VideoMattingMetal__updateConfidenceAndLastValidDisparityKernel;
  }

  [v21 setComputePipelineState:*(&self->super.super.isa + *v22)];
  [v21 setTexture:v15 atIndex:0];
  [v21 setTexture:v16 atIndex:1];
  [v21 setTexture:v17 atIndex:2];
  [v21 setTexture:v18 atIndex:3];
  [v21 setTexture:v19 atIndex:4];
  [v21 setBytes:&v26 length:1 atIndex:0];
  v25[0] = ([v15 width] + 15) >> 4;
  v25[1] = ([v15 height] + 15) >> 4;
  v25[2] = 1;
  v23 = xmmword_1DED747F0;
  v24 = 1;
  [v21 dispatchThreadgroups:v25 threadsPerThreadgroup:&v23];
  [v21 endEncoding];
}

- (void)encodeSimpleConfidenceToCommandBuffer:(id)a3 disparity:(id)a4 outConfidence:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  [v10 setLabel:@"_simpleConfidenceKernel"];
  [v10 setComputePipelineState:self->_simpleConfidenceKernel];
  [v10 setTexture:v8 atIndex:0];
  [v10 setTexture:v9 atIndex:1];
  v13[0] = ([v8 width] + 15) >> 4;
  v13[1] = ([v8 height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [v10 dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [v10 endEncoding];
}

- (void)encodeBackgroundFillToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputMask:(id)a5 outputDisparity:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 computeCommandEncoder];
  [v14 setLabel:@"_bgFillYKernel"];
  [v14 setComputePipelineState:self->_bgFillYKernel];
  [v14 setTexture:v11 atIndex:0];
  [v14 setTexture:v12 atIndex:1];
  [v14 setTexture:self->_bgFillTempTexture atIndex:2];
  v20 = vdupq_n_s64(1uLL);
  v17 = xmmword_1DED747D8;
  v18 = 1;
  v19 = ([v11 width] + 31) >> 5;
  [v14 dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
  [v14 endEncoding];
  v15 = [v10 computeCommandEncoder];

  [v15 setLabel:@"_bgFillXKernel"];
  [v15 setComputePipelineState:self->_bgFillXKernel];
  [v15 setTexture:self->_bgFillTempTexture atIndex:0];
  [v15 setTexture:v12 atIndex:1];
  [v15 setTexture:v13 atIndex:2];
  v16 = [v11 height];
  v19 = 1;
  v20.i64[0] = (v16 + 31) >> 5;
  v20.i64[1] = 1;
  v17 = xmmword_1DED747C0;
  v18 = 1;
  [v15 dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
  [v15 endEncoding];
}

- (void)encodeInvalidDisparityMaskToCommandBuffer:(id)a3 inputDisparity:(id)a4 outputMask:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  [v10 setLabel:@"_invalidDisparityMaskKernel"];
  [v10 setComputePipelineState:self->_invalidDisparityMaskKernel];
  [v10 setTexture:v8 atIndex:0];
  [v10 setTexture:v9 atIndex:1];
  v13[0] = ([v8 width] + 15) >> 4;
  v13[1] = ([v8 height] + 15) >> 4;
  v13[2] = 1;
  v11 = xmmword_1DED747F0;
  v12 = 1;
  [v10 dispatchThreadgroups:v13 threadsPerThreadgroup:&v11];
  [v10 endEncoding];
}

- (void)encodeEdgeAwareFillToCommandBuffer:(id)a3 inputDisparity:(id)a4 inputDomainTransformX:(id)a5 inputDomainTransformY:(id)a6 outputDisparity:(id)a7
{
  v12 = a3;
  v25 = a4;
  v13 = a5;
  v14 = a6;
  v26 = a7;
  v32 = 0x141700000;
  v15 = [v12 computeCommandEncoder];
  [v15 setLabel:@"_edgeAwareFillXKernel"];
  [v15 setComputePipelineState:self->_edgeAwareFillXKernel];
  [v15 setTexture:v25 atIndex:0];
  [v15 setTexture:v13 atIndex:1];
  [v15 setTexture:self->_edgeAwareFillTempTexture atIndex:2];
  [v15 setBytes:&v32 length:8 atIndex:0];
  v29 = (([v13 width] >> 1) + 15) >> 4;
  v30 = ([v13 height] + 15) >> 4;
  v31 = 1;
  v27 = xmmword_1DED747F0;
  v28 = 1;
  [v15 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [v15 endEncoding];
  v16 = [v12 computeCommandEncoder];

  [v16 setLabel:@"_edgeAwareFillYKernel"];
  [v16 setComputePipelineState:self->_edgeAwareFillYKernel];
  [v16 setTexture:self->_edgeAwareFillTempTexture atIndex:0];
  [v16 setTexture:v14 atIndex:1];
  [v16 setTexture:v26 atIndex:2];
  [v16 setBytes:&v32 length:8 atIndex:0];
  v17 = [v14 width];
  v18 = [v14 height];
  v29 = (v17 + 15) >> 4;
  v30 = ((v18 >> 1) + 15) >> 4;
  v31 = 1;
  v27 = xmmword_1DED747F0;
  v28 = 1;
  [v16 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [v16 endEncoding];
  v19 = [v12 computeCommandEncoder];

  [v19 setLabel:@"_edgeAwareFillXKernel"];
  [v19 setComputePipelineState:self->_edgeAwareFillXKernel];
  [v19 setTexture:v26 atIndex:0];
  [v19 setTexture:v13 atIndex:1];
  [v19 setTexture:self->_edgeAwareFillTempTexture atIndex:2];
  [v19 setBytes:&v32 length:8 atIndex:0];
  v20 = [v13 width];
  v21 = [v13 height];
  v29 = ((v20 >> 1) + 15) >> 4;
  v30 = (v21 + 15) >> 4;
  v31 = 1;
  v27 = xmmword_1DED747F0;
  v28 = 1;
  [v19 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [v19 endEncoding];
  v22 = [v12 computeCommandEncoder];

  [v22 setLabel:@"_edgeAwareFillYKernel"];
  [v22 setComputePipelineState:self->_edgeAwareFillYKernel];
  [v22 setTexture:self->_edgeAwareFillTempTexture atIndex:0];
  [v22 setTexture:v14 atIndex:1];
  [v22 setTexture:v26 atIndex:2];
  [v22 setBytes:&v32 length:8 atIndex:0];
  v23 = [v14 width];
  v24 = [v14 height];
  v29 = (v23 + 15) >> 4;
  v30 = ((v24 >> 1) + 15) >> 4;
  v31 = 1;
  v27 = xmmword_1DED747F0;
  v28 = 1;
  [v22 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  [v22 endEncoding];
}

- (void)encodeDomainTransformToCommandBuffer:(id)a3 inputDiffusionMap:(id)a4 inputDistanceFromKnownDisparity:(id)a5 outputDomainTransformX:(id)a6 outputDomainTransformY:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23 = 1087373312;
  v17 = [v12 computeCommandEncoder];
  [v17 setLabel:@"_domainTransformXKernel"];
  [v17 setComputePipelineState:self->_domainTransformXKernel];
  [v17 setTexture:v13 atIndex:0];
  [v17 setTexture:v14 atIndex:1];
  [v17 setTexture:v15 atIndex:2];
  [v17 setBytes:&v23 length:4 atIndex:0];
  v21 = 1;
  v22.i64[0] = ([v15 height] + 31) >> 5;
  v22.i64[1] = 1;
  v19 = xmmword_1DED747C0;
  v20 = 1;
  [v17 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [v17 endEncoding];
  v18 = [v12 computeCommandEncoder];

  [v18 setLabel:@"_domainTransformYKernel"];
  [v18 setComputePipelineState:self->_domainTransformYKernel];
  [v18 setTexture:v13 atIndex:0];
  [v18 setTexture:v14 atIndex:1];
  [v18 setTexture:v16 atIndex:2];
  [v18 setBytes:&v23 length:4 atIndex:0];
  v21 = ([v16 width] + 31) >> 5;
  v22 = vdupq_n_s64(1uLL);
  v19 = xmmword_1DED747D8;
  v20 = 1;
  [v18 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  [v18 endEncoding];
}

- (void)encodeDisparityCleanupToCommandBuffer:(id)a3 prevDisparity:(id)a4 currDisparity:(id)a5 colorSim:(id)a6 cleanDisparity:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22 = 0x3F0000003D4CCCCDLL;
  v16 = [a3 computeCommandEncoder];
  v17 = v16;
  if (self->_frameIndex)
  {
    [v16 setLabel:@"_disparityCleanupKernel"];
    v18 = &OBJC_IVAR___VideoMattingMetal__disparityCleanupKernel;
  }

  else
  {
    [v16 setLabel:@"_disparityCleanupKernel_firstFrame"];
    v18 = &OBJC_IVAR___VideoMattingMetal__disparityCleanupKernel_firstFrame;
  }

  [v17 setComputePipelineState:*(&self->super.super.isa + *v18)];
  [v17 setTexture:v12 atIndex:0];
  [v17 setTexture:v12 atIndex:1];
  [v17 setTexture:v13 atIndex:2];
  [v17 setTexture:v14 atIndex:3];
  [v17 setTexture:v15 atIndex:4];
  [v17 setBytes:&v22 length:8 atIndex:0];
  v21[0] = ([v15 width] + 15) >> 4;
  v21[1] = ([v15 height] + 15) >> 4;
  v21[2] = 1;
  v19 = xmmword_1DED747F0;
  v20 = 1;
  [v17 dispatchThreadgroups:v21 threadsPerThreadgroup:&v19];
  [v17 endEncoding];
}

- (void)encodeColorSimL1ToCommandBuffer:(id)a3 prevSource:(id)a4 currSource:(id)a5 destination:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v17 = 1084227584;
  v18 = v10 == 0;
  v13 = [a3 computeCommandEncoder];
  [v13 setLabel:@"_colorSimL1Kernel"];
  [v13 setComputePipelineState:self->_colorSimL1Kernel];
  [v13 setTexture:v10 atIndex:0];
  [v13 setTexture:v11 atIndex:1];
  [v13 setTexture:v12 atIndex:2];
  [v13 setBytes:&v17 length:8 atIndex:0];
  v16[0] = ([v12 width] + 15) >> 4;
  v16[1] = ([v12 height] + 15) >> 4;
  v16[2] = 1;
  v14 = xmmword_1DED747F0;
  v15 = 1;
  [v13 dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  [v13 endEncoding];
}

- (void)encodeColorSimToCommandBuffer:(id)a3 prevSource:(id)a4 currSource:(id)a5 destination:(id)a6 similarityScaleFactor:(float)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19 = a7;
  v20 = v12 == 0;
  v15 = [a3 computeCommandEncoder];
  [v15 setLabel:@"_colorSimKernel"];
  [v15 setComputePipelineState:self->_colorSimKernel];
  [v15 setTexture:v12 atIndex:0];
  [v15 setTexture:v13 atIndex:1];
  [v15 setTexture:v14 atIndex:2];
  [v15 setBytes:&v19 length:8 atIndex:0];
  v18[0] = ([v14 width] + 15) >> 4;
  v18[1] = ([v14 height] + 15) >> 4;
  v18[2] = 1;
  v16 = xmmword_1DED747F0;
  v17 = 1;
  [v15 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  [v15 endEncoding];
}

- (void)encodeCopyTextureToCommandBuffer:(id)a3 inTexture:(id)a4 outTexture:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 width];
  v11 = [v8 height];
  v12 = [v8 depth];
  v13 = [v7 blitCommandEncoder];
  memset(v16, 0, sizeof(v16));
  v15[0] = v10;
  v15[1] = v11;
  v15[2] = v12;
  memset(v14, 0, sizeof(v14));
  [v13 copyFromTexture:v8 sourceSlice:0 sourceLevel:0 sourceOrigin:v16 sourceSize:v15 toTexture:v9 destinationSlice:0 destinationLevel:0 destinationOrigin:v14];
  [v13 endEncoding];
}

- (void)setStageLightProxyCubeData:(id)a3 cubeData:(id)a4
{
  v12 = a3;
  v7 = a4;
  self->_isBgColorLutBlack = 1;
  if (self->_lastStageLightProxyCubeData != v12)
  {
    objc_storeStrong(&self->_lastStageLightProxyCubeData, a3);
    v8 = sub_1DED6FF78(v12, self->_device);
    stageLightProxyLut = self->_stageLightProxyLut;
    self->_stageLightProxyLut = v8;
  }

  if (self->_lastStageLightCubeData != v7)
  {
    objc_storeStrong(&self->_lastStageLightCubeData, a4);
    v10 = sub_1DED6FF78(v7, self->_device);
    stageLightLut = self->_stageLightLut;
    self->_stageLightLut = v10;
  }
}

- (void)setPortraitForegroundCubeData:(id)a3 backgroundCubeData:(id)a4
{
  v7 = a3;
  v6 = a4;
  self->_isBgColorLutBlack = 0;
  [(VideoMattingMetal *)self setFgLut:v7];
  [(VideoMattingMetal *)self setBgLut:v6];
}

- (void)setFgLut:(id)a3
{
  v5 = a3;
  if (self->_lastFgLutData != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_lastFgLutData, a3);
    v6 = sub_1DED6FF78(v8, self->_device);
    fgColorLut = self->_fgColorLut;
    self->_fgColorLut = v6;

    v5 = v8;
  }
}

- (void)setBgLut:(id)a3
{
  v5 = a3;
  if (self->_lastBgLutData != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_lastBgLutData, a3);
    v6 = sub_1DED6FF78(v8, self->_device);
    bgColorLut = self->_bgColorLut;
    self->_bgColorLut = v6;

    v5 = v8;
  }
}

- (void)setAlphaLut:(float)a3 gammaExponent:(float)a4
{
  if (a3 != 2.0)
  {
    v4 = a4;
    v5 = self;
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:v5 file:@"VideoMattingMetal.mm" lineNumber:945 description:{@"contrastExponent value %f is not supported", a3}];

    a4 = v4;
    self = v5;
  }

  self->_gammaExponent = a4;
}

- (void)prewarmGuidedFilter:(id)a3 device:(id)a4 commandBuffer:(id)a5 width:(int)a6 height:(int)a7 width2:(int)a8 height2:(int)a9
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  [v11 epsilon];
  LODWORD(v14) = 1008981770;
  [v11 setEpsilon:v14];
  operator new();
}

- (void)dealloc
{
  scaledSourceCV = self->_scaledSourceCV;
  v4 = self->_scaledSourceCV[0];
  if (v4)
  {
    CVPixelBufferRelease(v4);
  }

  v5 = scaledSourceCV[1];
  if (v5)
  {
    CVPixelBufferRelease(v5);
  }

  yuvSourceDownsampledBuffer = self->_yuvSourceDownsampledBuffer;
  if (yuvSourceDownsampledBuffer)
  {
    CVPixelBufferRelease(yuvSourceDownsampledBuffer);
  }

  hwScaler = self->_hwScaler;
  if (hwScaler)
  {
    CFRelease(hwScaler);
    self->_hwScaler = 0;
  }

  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  v9.receiver = self;
  v9.super_class = VideoMattingMetal;
  [(ImageSaverRegistrator *)&v9 dealloc];
}

- (VideoMattingMetal)initWithStaticParams:(const VideoMattingStaticParams *)a3 renderingDisparityUpdateRate:(float)a4 renderingDisparityBlurRadius:(float)a5 renderingLensFocalLength_mm:(float)a6 useTemporalConfidence:(BOOL)a7 metalContext:(void *)a8 error:(id *)a9
{
  v328[1] = *MEMORY[0x1E69E9840];
  v145.receiver = self;
  v145.super_class = VideoMattingMetal;
  v16 = [(ImageSaverRegistrator *)&v145 init];
  v17 = v16;
  if (v16)
  {
    v16->_sdofRenderingHasForegroundBlur = a3->supportsForegroundBlur;
    v16->_deadzoneInCinematic = a3->deadzoneInCinematic;
    v16->_renderStateIsConfigured = 0;
    v16->_width = a3->colorWidth;
    v16->_height = a3->colorHeight;
    v16->_width2 = a3->guidedFilterWidth;
    p_width2 = &v16->_width2;
    v16->_height2 = a3->guidedFilterHeight;
    width2 = v16->_width2;
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_width2: %d outside bounds [2, %d] for guided filter", width2, 0xFFFFLL];
    v21 = [v19 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 423, v20];
    sub_1DED25D64(width2 < 2, a9, 4294944393, v21);

    if (width2 >= 2)
    {
      height2 = v17->_height2;
      v23 = MEMORY[0x1E696AEC0];
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_height2: %d outside bounds [2, %d] for guided filter", height2, 0xFFFFLL];
      v25 = [v23 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 433, v24];
      sub_1DED25D64(height2 < 2, a9, 4294944393, v25);

      if (height2 >= 2)
      {
        v17->_infConvolutionScale = 1.0;
        v17->_doDisparityDiffusion = 1;
        v29 = +[CVAPreferenceManager defaults];
        v17->_enableInfConvolution = [v29 BOOLForKey:@"disableInfConvolution"] ^ 1;

        v30 = +[CVAPreferenceManager defaults];
        v17->_mattingUsesPostprocessing = [v30 BOOLForKey:@"disablePostprocessingForMatting"] ^ 1;

        v31 = +[CVAPreferenceManager defaults];
        v17->_renderingUsesPostprocessing = [v31 BOOLForKey:@"disablePostprocessingForRendering"] ^ 1;

        v32 = +[CVAPreferenceManager defaults];
        v17->_doFaceMask = [v32 BOOLForKey:@"enableFaceMaskPostprocessing"];

        v144 = objc_opt_new();
        [v144 setConstantValue:p_width2 type:29 withName:@"kDistanceTransformWidth"];
        [v144 setConstantValue:&v17->_height2 type:29 withName:@"kDistanceTransformHeight"];
        v143 = 0;
        [v144 setConstantValue:&v143 type:53 withName:@"kDoVignetting"];
        objc_storeStrong(&v17->_device, *(a8 + 1));
        objc_storeStrong(&v17->_commandQueue, *(a8 + 2));
        objc_storeStrong(&v17->_defaultLibrary, *(a8 + 3));
        objc_storeStrong(&v17->_pipelineLibrary, *(a8 + 4));
        v17->_metalContext = a8;
        if (v17->_sdofRenderingHasForegroundBlur)
        {
          v33 = [[GlobalReductionAverage alloc] initWithFigMetalContext:*a8 textureSize:256.0, 192.0];
          globalReductionAverage = v17->_globalReductionAverage;
          v17->_globalReductionAverage = v33;
        }

        v17->_lastCommittedCommand = 0;
        v327 = *MEMORY[0x1E6966000];
        v328[0] = &unk_1F5A09F00;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v328 forKeys:&v327 count:1];
        if (CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], v35, v17->_device, 0, &v17->_textureCache))
        {
          v36 = 1;
        }

        else
        {
          v36 = v17->_textureCache == 0;
        }

        v37 = MEMORY[0x1E696AEC0];
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error allocating texture cache"];
        v39 = [v37 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 479, v38];
        sub_1DED25D64(v36, a9, 4294944382, v39);

        if (v36)
        {
          goto LABEL_40;
        }

        v17->_isBgColorLutBlack = 0;
        v17->_renderingDisparityUpdateRate = a4;
        v17->_renderingDisparityBlurRadius = a5;
        v17->_renderingLensFocalLength_mm = a6;
        v17->_useTemporalConfidence = a7;
        v40 = [[CVAPhotoMTLRingBuffer alloc] initWithLength:36 options:0 device:v17->_device];
        disparityConfig = v17->_disparityConfig;
        v17->_disparityConfig = v40;

        v42 = v17->_disparityConfig;
        v43 = MEMORY[0x1E696AEC0];
        v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[_Nonnull id<MTLDeviceSPI> newBufferWithLength:%lu] is nil", 36];
        v45 = [v43 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 509, v44];
        sub_1DED25D64(v42 == 0, a9, 4294944382, v45);

        if (!v42)
        {
          goto LABEL_40;
        }

        v46 = [CVAFilterDiffusion alloc];
        LODWORD(v47) = 998310275;
        LODWORD(v48) = 1.0;
        v49 = [(CVAFilterDiffusion *)v46 initWithFigMetalContext:*a8 bufferWidth:*p_width2 bufferHeight:v17->_height2 edgeVariance:a9 stepSize:v47 error:v48];
        diffusion = v17->_diffusion;
        v17->_diffusion = v49;

        if (!v17->_diffusion)
        {
          goto LABEL_40;
        }

        if (v17->_doFaceMask && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DED23000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "CVAPhoto: Facemask-based disparity post-processing has been deprecated.", buf, 2u);
        }

        v51 = [CVAFilterDistanceTransform alloc];
        v52 = *a8;
        v53 = v17->_height2;
        *buf = *p_width2;
        v147 = v53;
        v148 = 1;
        v54 = [(CVAFilterDistanceTransform *)v51 initWithFigMetalContext:v52 textureSize:buf error:a9];
        distanceTransform = v17->_distanceTransform;
        v17->_distanceTransform = v54;

        if (!v17->_distanceTransform)
        {
          goto LABEL_40;
        }

        v56 = [CVAFilterBox alloc];
        v57 = *a8;
        v58 = v17->_height2;
        *buf = *p_width2;
        v147 = v58;
        v148 = 1;
        v59 = [(CVAFilterBox *)v56 initWithFigMetalContext:v57 textureSize:buf error:a9];
        boxFilter = v17->_boxFilter;
        v17->_boxFilter = v59;

        if (!v17->_boxFilter)
        {
          goto LABEL_40;
        }

        v61 = [[CVAFilterColorAlphaToFgBg alloc] initWithFigMetalContext:*a8 error:a9];
        colorAlphaToFgBg = v17->_colorAlphaToFgBg;
        v17->_colorAlphaToFgBg = v61;

        if (!v17->_colorAlphaToFgBg)
        {
          goto LABEL_40;
        }

        v63 = [[CVAFilterHybridResampling alloc] initWithFigMetalContext:*a8 commandQueue:v17->_commandQueue error:a9];
        hybridResampler = v17->_hybridResampler;
        v17->_hybridResampler = v63;

        if (!v17->_hybridResampler)
        {
          goto LABEL_40;
        }

        v135 = sub_1DED5D1F8(@"harvesting.enabled", @"com.apple.coremedia", 0);
        v136 = ((floorf(((a3->kernelSize * 0.5) * *p_width2) / a3->alphaWidth) * 2.0) + 1.0);
        if (!v135)
        {
          v65 = [objc_alloc(MEMORY[0x1E69745D0]) initWithDevice:v17->_device kernelDiameter:v136];
          guidedFilter = v17->_guidedFilter;
          v17->_guidedFilter = v65;

          v67 = v17->_guidedFilter;
          v68 = MEMORY[0x1E696AEC0];
          v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MPSImageGuidedFilter is nil"];
          v70 = [v68 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 592, v69];
          sub_1DED25D64(v67 == 0, a9, 4294944382, v70);

          if (!v67)
          {
            goto LABEL_40;
          }
        }

        [(MPSImageGuidedFilter *)v17->_guidedFilter setRescaleCoefficients:0];
        [(MPSImageGuidedFilter *)v17->_guidedFilter setReconstructionCoefficientsSampleBicubic:1];
        v71 = [CVAFilterGuided alloc];
        commandQueue = v17->_commandQueue;
        v73 = *p_width2;
        v74 = v17->_height2;
        laplacianLimitingDownsampling = a3->laplacianLimitingDownsampling;
        infConvolutionDownsampling = a3->infConvolutionDownsampling;
        v77 = *&a3->alphaWidth;
        *&v78 = v77;
        *(&v78 + 1) = HIDWORD(v77);
        v141 = v78;
        v79 = *a8;
        *buf = v73;
        v147 = v74;
        v148 = 1;
        v142 = 1;
        LODWORD(v133) = laplacianLimitingDownsampling;
        HIDWORD(v133) = a3->laplacianLimitingBlurSize;
        v80 = [(CVAFilterGuided *)v71 initWithFigMetalContext:v79 commandQueue:commandQueue textureSize:buf alphaSize:&v141 kernelSize:v136 infConvolutionDownsampling:infConvolutionDownsampling laplacianLimitingDownsampling:v133 laplacianLimitingBlurSize:a9 error:?];
        cvaGuidedFilter = v17->_cvaGuidedFilter;
        v17->_cvaGuidedFilter = v80;

        if (!v17->_cvaGuidedFilter)
        {
          goto LABEL_40;
        }

        v82 = [[CVAFilterMaskedVariableBlur alloc] initWithFigMetalContext:*a8 commandQueue:v17->_commandQueue kernelSize:7 error:a9];
        maskedVariableBlur = v17->_maskedVariableBlur;
        v17->_maskedVariableBlur = v82;

        if (!v17->_maskedVariableBlur)
        {
          goto LABEL_40;
        }

        v84 = [[CVAFilterRenderStagelight alloc] initWithFigMetalContext:*v17->_metalContext error:a9];
        stagelightFilter = v17->_stagelightFilter;
        v17->_stagelightFilter = v84;

        if (!v17->_stagelightFilter || (v86 = [[CVAFilterRenderComposite alloc] initWithFigMetalContext:*v17->_metalContext error:a9], renderComposite = v17->_renderComposite, v17->_renderComposite = v86, renderComposite, !v17->_renderComposite))
        {
LABEL_40:
          v26 = 0;
LABEL_41:

          goto LABEL_5;
        }

        v140 = &v144;
        *buf = &v17->_disparityDecimateKernel;
        v147 = @"disparityDecimate";
        v148 = 0;
        p_colorSimKernel = &v17->_colorSimKernel;
        coeffHistory = @"colorSim";
        v151 = 0;
        p_colorSimL1Kernel = &v17->_colorSimL1Kernel;
        v153 = @"colorSimL1";
        v154 = 0;
        p_temporalCoefficientsFilterKernel = &v17->_temporalCoefficientsFilterKernel;
        v156 = @"temporalFilterCoefficients";
        v157 = 0;
        p_guidedFilterWeightKernel = &v17->_guidedFilterWeightKernel;
        v159 = @"guidedFilterWeight";
        v160 = 0;
        p_disparityConfidenceMaskKernel = &v17->_disparityConfidenceMaskKernel;
        p_gfForegroundMask = @"disparityConfidenceMask";
        v163 = 0;
        p_disparityMasksKernel = &v17->_disparityMasksKernel;
        v165 = @"disparityMasks";
        p_gfWeight = 0;
        p_disparityIsValidKernel = &v17->_disparityIsValidKernel;
        v168 = @"disparityIsValid";
        v169 = 0;
        p_domainTransformXKernel = &v17->_domainTransformXKernel;
        v171 = @"domainTransformX";
        v172 = v144;
        p_domainTransformYKernel = &v17->_domainTransformYKernel;
        v174 = @"domainTransformY";
        v175 = v172;
        p_edgeAwareFillXKernel = &v17->_edgeAwareFillXKernel;
        v177 = @"edgeAwareFillX";
        disparity = v175;
        p_edgeAwareFillYKernel = &v17->_edgeAwareFillYKernel;
        v180 = @"edgeAwareFillY";
        v181 = disparity;
        p_invalidDisparityMaskKernel = &v17->_invalidDisparityMaskKernel;
        v183 = @"invalidDisparityMask";
        v184 = 0;
        p_bgFillXKernel = &v17->_bgFillXKernel;
        p_disparityInScreenAspectRatio = @"bgFillX";
        v187 = 0;
        p_bgFillYKernel = &v17->_bgFillYKernel;
        v189 = @"bgFillY";
        p_facemaskDisparity = 0;
        p_internalDisparityToCanonicalDisparityKernel = &v17->_internalDisparityToCanonicalDisparityKernel;
        v192 = @"internalDisparityToCanonicalDisparity";
        v193 = 0;
        p_simpleConfidenceKernel = &v17->_simpleConfidenceKernel;
        v195 = @"simpleConfidence";
        v196 = 0;
        p_roughDisparityKernel = &v17->_roughDisparityKernel;
        p_filledDisparityNoInvalidTexture = @"roughDisparity";
        v199 = 0;
        p_diffusionMapKernel = &v17->_diffusionMapKernel;
        v201 = @"diffusionMap";
        p_temporallyFilteredDisparity = 0;
        p_renderingDisparityDeweightKernel = &v17->_renderingDisparityDeweightKernel;
        v204 = @"disparityDeweightFg";
        v205 = 0;
        p_renderingDisparityFillAndFilterKernel = &v17->_renderingDisparityFillAndFilterKernel;
        v207 = @"disparityFillAndFilter";
        v208 = 0;
        p_disparityCleanupKernel = &v17->_disparityCleanupKernel;
        smoothConfidence = @"disparityCleanup";
        v211 = sub_1DED6C1F0(&v140, @"kFirstFrame", 0);
        p_disparityCleanupKernel_firstFrame = &v17->_disparityCleanupKernel_firstFrame;
        v213 = @"disparityCleanup";
        v214 = sub_1DED6C1F0(&v140, @"kFirstFrame", 1);
        p_updateConfidenceAndLastValidDisparityKernel = &v17->_updateConfidenceAndLastValidDisparityKernel;
        v216 = @"updateConfidenceAndLastValidDisparity";
        v217 = sub_1DED6C1F0(&v140, @"kUseTemporalConfidence", 0);
        p_updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence = &v17->_updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence;
        v219 = @"updateConfidenceAndLastValidDisparity";
        v220 = sub_1DED6C1F0(&v140, @"kUseTemporalConfidence", 1);
        p_temporalDisparityFilterKernel = &v17->_temporalDisparityFilterKernel;
        smoothDisparity = @"temporalDisparityFilter";
        v223 = sub_1DED6C1F0(&v140, @"kTemporalDisparityFallbackToInvalid", 0);
        p_temporalDisparityFilterKernel_fallbackToInvalid = &v17->_temporalDisparityFilterKernel_fallbackToInvalid;
        v225 = @"temporalDisparityFilter";
        v226 = sub_1DED6C1F0(&v140, @"kTemporalDisparityFallbackToInvalid", 1);
        p_fillBackgroundDisparityKernel = &v17->_fillBackgroundDisparityKernel;
        v228 = @"fillBackgroundDisparity";
        v229 = sub_1DED6C1F0(&v140, @"kUseFacemaskInFillBackgroundDisparity", 0);
        p_fillBackgroundDisparityKernel_faceMask = &v17->_fillBackgroundDisparityKernel_faceMask;
        v231 = @"fillBackgroundDisparity";
        v232 = sub_1DED6C1F0(&v140, @"kUseFacemaskInFillBackgroundDisparity", 1);
        p_halfDownSampler = &v17->_halfDownSampler;
        p_outputCanonicalDisparity = @"halfDownsample";
        v235 = 0;
        p_alphaFillKernel = &v17->_alphaFillKernel;
        v237 = @"fillAlpha";
        p_diffusionMapTexture = 0;
        p_rotateAndFitIntoRectKernel = &v17->_rotateAndFitIntoRectKernel;
        v240 = @"rotateAndFitIntoRectKernel";
        v241 = 0;
        sub_1DED6C284(&v141, buf, 0x20uLL);

        v89 = *(&v141 + 1);
        v88 = v141;
        if (v141 != *(&v141 + 1))
        {
          while (1)
          {
            sub_1DED422A0(*v88, *a8, *(v88 + 8), *(v88 + 16));
            if (!**v88)
            {
              break;
            }

            v88 += 24;
            if (v88 == v89)
            {
              goto LABEL_30;
            }
          }

          v26 = 0;
          goto LABEL_49;
        }

LABEL_30:
        *buf = &v17->_coeff;
        v147 = 125;
        LODWORD(v148) = *p_width2;
        HIDWORD(v148) = v17->_height2;
        p_colorSimKernel = 0;
        coeffHistory = v17->_coeffHistory;
        v151 = 115;
        LODWORD(p_colorSimL1Kernel) = *p_width2;
        HIDWORD(p_colorSimL1Kernel) = v17->_height2;
        v153 = 0;
        v154 = &v17->_coeffHistory[1];
        p_temporalCoefficientsFilterKernel = 115;
        LODWORD(v156) = *p_width2;
        HIDWORD(v156) = v17->_height2;
        v157 = 0;
        p_guidedFilterWeightKernel = &v17->_alphaNoPostprocessing;
        v159 = 10;
        v160 = *&a3->alphaWidth;
        p_disparityConfidenceMaskKernel = 0;
        p_gfForegroundMask = &v17->_gfForegroundMask;
        v163 = 10;
        LODWORD(p_disparityMasksKernel) = *p_width2;
        HIDWORD(p_disparityMasksKernel) = v17->_height2;
        v165 = 0;
        p_gfWeight = &v17->_gfWeight;
        p_disparityIsValidKernel = 25;
        LODWORD(v168) = *p_width2;
        HIDWORD(v168) = v17->_height2;
        v169 = 0;
        p_domainTransformXKernel = v17->_disparityLastValidValue;
        v171 = 25;
        LODWORD(v172) = *p_width2;
        HIDWORD(v172) = v17->_height2;
        p_domainTransformYKernel = 0;
        v174 = &v17->_disparityLastValidValue[1];
        v175 = 25;
        LODWORD(p_edgeAwareFillXKernel) = *p_width2;
        HIDWORD(p_edgeAwareFillXKernel) = v17->_height2;
        v177 = 0;
        disparity = v17->_disparity;
        p_edgeAwareFillYKernel = 25;
        LODWORD(v180) = *p_width2;
        HIDWORD(v180) = v17->_height2;
        v181 = 0;
        p_invalidDisparityMaskKernel = &v17->_disparity[1];
        v183 = 25;
        LODWORD(v184) = *p_width2;
        HIDWORD(v184) = v17->_height2;
        p_bgFillXKernel = 0;
        p_disparityInScreenAspectRatio = &v17->_disparityInScreenAspectRatio;
        v187 = 25;
        LODWORD(p_bgFillYKernel) = 2 * *p_width2;
        HIDWORD(p_bgFillYKernel) = 2 * v17->_height2;
        v189 = 0;
        p_facemaskDisparity = &v17->_facemaskDisparity;
        p_internalDisparityToCanonicalDisparityKernel = 25;
        LODWORD(v192) = *p_width2;
        HIDWORD(v192) = v17->_height2;
        v193 = 0;
        p_simpleConfidenceKernel = &v17->_filledDisparityTexture;
        v195 = 25;
        LODWORD(v196) = *p_width2;
        HIDWORD(v196) = v17->_height2;
        p_roughDisparityKernel = 0;
        p_filledDisparityNoInvalidTexture = &v17->_filledDisparityNoInvalidTexture;
        v199 = 25;
        LODWORD(p_diffusionMapKernel) = *p_width2;
        HIDWORD(p_diffusionMapKernel) = v17->_height2;
        v201 = 0;
        p_temporallyFilteredDisparity = &v17->_temporallyFilteredDisparity;
        p_renderingDisparityDeweightKernel = 25;
        LODWORD(v204) = *p_width2;
        HIDWORD(v204) = v17->_height2;
        v205 = 0;
        p_renderingDisparityFillAndFilterKernel = &v17->_disparityConfidenceMaskTexture;
        v207 = 25;
        LODWORD(v208) = *p_width2;
        HIDWORD(v208) = v17->_height2;
        p_disparityCleanupKernel = 0;
        smoothConfidence = v17->_smoothConfidence;
        v211 = 25;
        LODWORD(p_disparityCleanupKernel_firstFrame) = *p_width2;
        HIDWORD(p_disparityCleanupKernel_firstFrame) = v17->_height2;
        v213 = 0;
        v214 = &v17->_smoothConfidence[1];
        p_updateConfidenceAndLastValidDisparityKernel = 25;
        LODWORD(v216) = *p_width2;
        HIDWORD(v216) = v17->_height2;
        v217 = 0;
        p_updateConfidenceAndLastValidDisparityKernel_useTemporalConfidence = &v17->_colorSim;
        v219 = 10;
        LODWORD(v220) = *p_width2;
        HIDWORD(v220) = v17->_height2;
        p_temporalDisparityFilterKernel = 0;
        smoothDisparity = v17->_smoothDisparity;
        v223 = 55;
        LODWORD(p_temporalDisparityFilterKernel_fallbackToInvalid) = *p_width2;
        HIDWORD(p_temporalDisparityFilterKernel_fallbackToInvalid) = v17->_height2;
        v225 = 0;
        v226 = &v17->_smoothDisparity[1];
        p_fillBackgroundDisparityKernel = 55;
        LODWORD(v228) = *p_width2;
        HIDWORD(v228) = v17->_height2;
        v229 = 0;
        p_fillBackgroundDisparityKernel_faceMask = &v17->_roughDisparity;
        v231 = 25;
        LODWORD(v232) = *p_width2;
        HIDWORD(v232) = v17->_height2;
        p_halfDownSampler = 0;
        p_outputCanonicalDisparity = &v17->_outputCanonicalDisparity;
        v235 = 25;
        LODWORD(p_alphaFillKernel) = *p_width2;
        HIDWORD(p_alphaFillKernel) = v17->_height2;
        v237 = 0;
        p_diffusionMapTexture = &v17->_diffusionMapTexture;
        p_rotateAndFitIntoRectKernel = 25;
        LODWORD(v240) = *p_width2;
        HIDWORD(v240) = v17->_height2;
        v241 = 0;
        p_disparityIsValidTexture = &v17->_disparityIsValidTexture;
        v243 = 13;
        v244 = *p_width2;
        v245 = v17->_height2;
        v246 = 0;
        p_distanceFromKnownDisparityTexture = &v17->_distanceFromKnownDisparityTexture;
        v248 = 25;
        v249 = *p_width2;
        v250 = v17->_height2;
        v251 = 0;
        p_domainTransformXTexture = &v17->_domainTransformXTexture;
        v253 = 25;
        v254 = *p_width2;
        v255 = v17->_height2;
        v256 = 0;
        p_domainTransformYTexture = &v17->_domainTransformYTexture;
        v258 = 25;
        v259 = *p_width2;
        v260 = v17->_height2;
        v261 = 0;
        p_tempFloatR32FloatTexture = &v17->_tempFloatR32FloatTexture;
        v263 = 55;
        v264 = *p_width2;
        v265 = v17->_height2;
        v266 = 0;
        p_edgeAwareFillTempTexture = &v17->_edgeAwareFillTempTexture;
        v268 = 25;
        v269 = *p_width2;
        v270 = v17->_height2;
        v271 = 0;
        p_bgFillTempTexture = &v17->_bgFillTempTexture;
        v273 = 25;
        v274 = *p_width2;
        v275 = v17->_height2;
        v276 = 0;
        p_invalidDisparityMaskTexture = &v17->_invalidDisparityMaskTexture;
        v278 = 13;
        v279 = *p_width2;
        v280 = v17->_height2;
        v281 = 0;
        p_initDisparity = &v17->_initDisparity;
        v283 = 25;
        v284 = *p_width2;
        v285 = v17->_height2;
        v286 = 0;
        p_isForegroundTexture = &v17->_isForegroundTexture;
        v288 = 13;
        v289 = *p_width2;
        v290 = v17->_height2;
        v291 = 0;
        p_distanceToForegroundTexture = &v17->_distanceToForegroundTexture;
        v293 = 25;
        v294 = *p_width2;
        v295 = v17->_height2;
        v296 = 0;
        p_correctlyRotatedAndReshapedSegmentation = &v17->_correctlyRotatedAndReshapedSegmentation;
        v298 = 25;
        v299 = *p_width2;
        v300 = v17->_height2;
        v301 = 0;
        p_blurredBg = &v17->_blurredBg;
        v303 = 70;
        width = v17->_width;
        height = v17->_height;
        v306 = 0;
        p_deweightedDisparity = &v17->_deweightedDisparity;
        v308 = 65;
        v309 = *p_width2;
        v310 = v17->_height2;
        v311 = 0;
        shift = v17->_shift;
        v313 = 65;
        v314 = *p_width2;
        v315 = v17->_height2;
        v316 = 0;
        v317 = &v17->_shift[1];
        v318 = 65;
        v319 = *p_width2;
        v320 = v17->_height2;
        v321 = 0;
        p_coc = &v17->_coc;
        v323 = 10;
        v324 = *p_width2;
        v325 = v17->_height2;
        v326 = 0;
        sub_1DED6C348(&__p, buf, 0x29uLL);
        v90 = __p;
        v91 = v139;
        if (__p != v139)
        {
          do
          {
            v92 = sub_1DED6FDC8(v17->_device, v90[1], *(v90 + 4), *(v90 + 5), v90[3], a9);
            v93 = **v90;
            **v90 = v92;

            if (!**v90)
            {
              goto LABEL_46;
            }

            v90 += 4;
          }

          while (v90 != v91);
        }

        v94 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:*p_width2 height:v17->_height2 mipmapped:0];
        [v94 setUsage:7];
        v95 = [(MTLDeviceSPI *)v17->_device newTextureWithDescriptor:v94];
        facemaskRegionTexture = v17->_facemaskRegionTexture;
        v17->_facemaskRegionTexture = v95;

        v97 = v17->_facemaskRegionTexture;
        v98 = MEMORY[0x1E696AEC0];
        v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_facemaskRegionTexture is nil"];
        v100 = [v98 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 788, v99];
        sub_1DED25D64(v97 == 0, a9, 4294944382, v100);

        if (v97)
        {
          if (v17->_height >= v17->_width)
          {
            v101 = v17->_width;
          }

          else
          {
            v101 = v17->_height;
          }

          v102 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:? height:? mipmapped:?];
          [v102 setUsage:3];
          [v102 setMipmapLevelCount:vcvtps_u32_f32(log2f((v101 >> 3)))];
          v103 = [(MTLDeviceSPI *)v17->_device newTextureWithDescriptor:v102];
          v104 = MEMORY[0x1E696AEC0];
          v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_bg is nil"];
          v106 = [v104 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 802, v105];
          sub_1DED25D64(v103 == 0, a9, 4294944382, v106);

          if (v103)
          {
            bg = v17->_bg;
            v17->_bg = v103;

            if (v135)
            {
LABEL_39:
              v108 = dispatch_semaphore_create(0);
              semaphore = v17->_semaphore;
              v17->_semaphore = v108;

              v110 = dispatch_semaphore_create(5);
              renderingCallbackSemaphore = v17->_renderingCallbackSemaphore;
              v17->_renderingCallbackSemaphore = v110;

              v112 = dispatch_queue_create("_synchronousRenderingCallbackQueue", 0);
              synchronousRenderingCallbackQueue = v17->_synchronousRenderingCallbackQueue;
              v17->_synchronousRenderingCallbackQueue = v112;

              v114 = dispatch_semaphore_create(5);
              mattingCallbackSemaphore = v17->_mattingCallbackSemaphore;
              v17->_mattingCallbackSemaphore = v114;

              v116 = dispatch_queue_create("_synchronousMattingCallbackQueue", 0);
              synchronousMattingCallbackQueue = v17->_synchronousMattingCallbackQueue;
              v17->_synchronousMattingCallbackQueue = v116;

              v26 = v17;
              goto LABEL_47;
            }

            v118 = objc_alloc(MEMORY[0x1E69745C0]);
            LODWORD(v119) = 1053609165;
            v120 = [v118 initWithDevice:v17->_device sigma:v119];
            smoothFilter = v17->_smoothFilter;
            v17->_smoothFilter = v120;

            v122 = [objc_alloc(MEMORY[0x1E6974580]) initWithDevice:v17->_device kernelWidth:((v17->_renderingDisparityBlurRadius * 2.0) + 1.0) kernelHeight:((v17->_renderingDisparityBlurRadius * 2.0) + 1.0)];
            disparityBlurBoxKernel = v17->_disparityBlurBoxKernel;
            v17->_disparityBlurBoxKernel = v122;

            [(MPSImageBox *)v17->_disparityBlurBoxKernel setEdgeMode:0];
            v124 = [objc_alloc(MEMORY[0x1E6974580]) initWithDevice:v17->_device kernelWidth:7 kernelHeight:7];
            fgBlurBoxKernel = v17->_fgBlurBoxKernel;
            v17->_fgBlurBoxKernel = v124;

            [(MPSImageBox *)v17->_fgBlurBoxKernel setEdgeMode:1];
            v126 = [objc_alloc(MEMORY[0x1E6974570]) initWithDevice:v17->_device kernelWidth:3 kernelHeight:3];
            fgMaskErosionKernel = v17->_fgMaskErosionKernel;
            v17->_fgMaskErosionKernel = v126;

            [(MPSImageAreaMin *)v17->_fgMaskErosionKernel setEdgeMode:0];
            v128 = IOSurfaceAcceleratorCreate();
            v129 = MEMORY[0x1E696AEC0];
            v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create IOAccelerator"];
            v131 = [v129 stringWithFormat:@"Assertion failure in %s at %s:%d -- %@", "-[VideoMattingMetal initWithStaticParams:renderingDisparityUpdateRate:renderingDisparityBlurRadius:renderingLensFocalLength_mm:useTemporalConfidence:metalContext:error:]", "/Library/Caches/com.apple.xbs/Sources/AppleCVAPhoto/module/sdof/src/pipeline/VideoMattingMetal.mm", 836, v130];
            sub_1DED25D64(v128 != 0, a9, 4294944396, v131);

            if (!v128)
            {
              v132 = [(MTLCommandQueue *)v17->_commandQueue commandBuffer];
              [v132 setLabel:@"MPS-prewarming"];
              sub_1DED70534(v17->_disparityBlurBoxKernel, v17->_device, v132, [(MTLTexture *)v17->_deweightedDisparity pixelFormat]);
              LODWORD(v134) = v17->_height2;
              [(VideoMattingMetal *)v17 prewarmGuidedFilter:v17->_guidedFilter device:v17->_device commandBuffer:v132 width:v17->_width height:v17->_height width2:*p_width2 height2:v134];
              [(VideoMattingMetal *)v17 encodeCopyTextureToCommandBuffer:v132 inTexture:v17->_disparity[0] outTexture:v17->_disparity[1]];
              [v132 commit];

              goto LABEL_39;
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_46:
        v26 = 0;
LABEL_47:
        if (__p)
        {
          v139 = __p;
          operator delete(__p);
        }

LABEL_49:
        sub_1DED6C3E8(&v141);
        goto LABEL_41;
      }
    }
  }

  v26 = 0;
LABEL_5:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (void)decomposeYuvPixelBuffer:(__CVBuffer *)a3 yTexture:(id *)a4 uvTexture:(id *)a5 textureCache:(__CVMetalTextureCache *)a6
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v12 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:PixelFormatType];
  v14 = [v12 containsObject:v13];

  if ((v14 & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = +[CVAVideoPipelineProperties_Impl allSupportedYCbCrPixelFormats];
    [v22 handleFailureInMethod:a2 object:a1 file:@"VideoMattingMetal.mm" lineNumber:3374 description:{@"yuvBuffer is not one of %@", v23}];
  }

  v27 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];
  [v27 setUsage:3];
  v15 = MEMORY[0x1E69741C0];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 1uLL);
  v17 = [v15 texture2DDescriptorWithPixelFormat:30 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(a3 mipmapped:1uLL), 0];
  [v17 setUsage:3];
  v18 = [a1 textureFromCacheUsingPixelBuffer:a3 textureDescriptor:? plane:? textureCache:?];
  v19 = *a4;
  *a4 = v18;

  v20 = [a1 textureFromCacheUsingPixelBuffer:a3 textureDescriptor:v17 plane:1 textureCache:a6];
  v21 = *a5;
  *a5 = v20;
}

+ (id)textureFromCacheUsingPixelBuffer:(__CVBuffer *)a3 textureDescriptor:(id)a4 plane:(unint64_t)a5 textureCache:(__CVMetalTextureCache *)a6
{
  v28[2] = *MEMORY[0x1E69E9840];
  v10 = a4;
  image = 0;
  v27[0] = *MEMORY[0x1E6966010];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "usage")}];
  v28[0] = v11;
  v27[1] = *MEMORY[0x1E6966008];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "storageMode")}];
  v28[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v14 = [v10 pixelFormat];
  v15 = [v10 width];
  v16 = [v10 height];
  v17 = CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x1E695E480], a6, a3, v13, v14, v15, v16, a5, &image);

  if (v17)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"VideoMattingMetal.mm" lineNumber:3351 description:{@"Cannot get textureRef from cache. Error code %ul", v17}];
  }

  v18 = image;
  if (!image)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"VideoMattingMetal.mm" lineNumber:3352 description:@"Cannot get textureRef from cache"];

    v18 = image;
  }

  v19 = CVMetalTextureGetTexture(v18);
  CFRelease(image);
  if (!v19)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"VideoMattingMetal.mm" lineNumber:3357 description:@"Cannot get texture from textureRef"];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (void)saveTexture:(id)a3 toFilename:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 pixelFormat] != 252 && objc_msgSend(v7, "pixelFormat") != 55)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"VideoMattingMetal.mm" lineNumber:3311 description:@"unsupported pixel format!"];
  }

  v9 = [v7 width];
  v10 = [v7 height];
  v11 = v10;
  v12 = malloc_type_malloc(vcvtd_n_u64_f64(v9 * v10, 2uLL), 0xA7B50A40uLL);
  v13 = vcvtd_n_u64_f64(v9, 2uLL);
  memset(v18, 0, 24);
  v18[3] = v9;
  v18[4] = v10;
  v18[5] = 1;
  [v7 getBytes:v12 bytesPerRow:v13 fromRegion:v18 mipmapLevel:0];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_32f_%dx%d.raw", v9, v10];
  v15 = [v8 stringByAppendingString:v14];

  v16 = fopen([v15 cStringUsingEncoding:4], "wb");
  if (v16)
  {
    fwrite(v12, 4uLL, ((v13 >> 2) * v11), v16);
    fclose(v16);
  }

  free(v12);
}

@end