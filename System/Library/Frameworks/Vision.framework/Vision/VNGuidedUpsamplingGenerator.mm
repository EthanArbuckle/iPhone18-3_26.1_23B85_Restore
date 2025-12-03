@interface VNGuidedUpsamplingGenerator
+ (id)computeStagesToBindForConfigurationOptions:(id)options;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)_renderCIImage:(id)image toBuffer:(void *)buffer width:(unint64_t)width height:(unint64_t)height rowBytes:(unint64_t)bytes format:(unsigned int)format vnciContextManager:(id)manager error:(id *)self0;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (__CVBuffer)_renderCIImage:(id)image width:(unint64_t)width height:(unint64_t)height format:(unsigned int)format vnciContextManager:(id)manager error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNGuidedUpsamplingGenerator

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allGPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)computeStagesToBindForConfigurationOptions:(id)options
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (__CVBuffer)_renderCIImage:(id)image width:(unint64_t)width height:(unint64_t)height format:(unsigned int)format vnciContextManager:(id)manager error:(id *)error
{
  v10 = *&format;
  imageCopy = image;
  managerCopy = manager;
  v16 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:error];
  if (v16)
  {
    v17 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:width height:height pixelFormatType:v10 error:error];
    if (v17)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __91__VNGuidedUpsamplingGenerator__renderCIImage_width_height_format_vnciContextManager_error___block_invoke;
      v20[3] = &unk_1E77B4AC8;
      v21 = imageCopy;
      v22 = v17;
      v18 = _Block_copy(v20);
      if (([(VNCIContextManager *)managerCopy performBlock:v18 usingAvailableContextForComputeDevice:v16 error:error]& 1) == 0)
      {
        CVPixelBufferRelease(v17);
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __91__VNGuidedUpsamplingGenerator__renderCIImage_width_height_format_vnciContextManager_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v4 render:*(a1 + 32) toCVPixelBuffer:*(a1 + 40)];

  return 1;
}

- (BOOL)_renderCIImage:(id)image toBuffer:(void *)buffer width:(unint64_t)width height:(unint64_t)height rowBytes:(unint64_t)bytes format:(unsigned int)format vnciContextManager:(id)manager error:(id *)self0
{
  imageCopy = image;
  managerCopy = manager;
  v18 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:error];
  if (v18)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __109__VNGuidedUpsamplingGenerator__renderCIImage_toBuffer_width_height_rowBytes_format_vnciContextManager_error___block_invoke;
    v22[3] = &unk_1E77B3AF8;
    bufferCopy = buffer;
    heightCopy = height;
    widthCopy = width;
    bytesCopy = bytes;
    v23 = imageCopy;
    formatCopy = format;
    v19 = _Block_copy(v22);
    v20 = [(VNCIContextManager *)managerCopy performBlock:v19 usingAvailableContextForComputeDevice:v18 error:error];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __109__VNGuidedUpsamplingGenerator__renderCIImage_toBuffer_width_height_rowBytes_format_vnciContextManager_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  return [(VNCIContext *)a2 renderCIImage:v4 buffer:&v6 format:*(a1 + 72) error:a3];
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v81 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  p_superclass = VNDetector.superclass;
  v66 = optionsCopy;
  v16 = [VNValidationUtilities requiredArrayForKey:@"VNGuidedUpsamplingGeneratorOption_LowResImages" inOptions:optionsCopy withElementsOfClass:objc_opt_class() error:error];
  if (!v16)
  {
    v49 = 0;
    goto LABEL_56;
  }

  v17 = VNValidationUtilities;
  v61 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNGuidedUpsamplingGeneratorOption_OutputPixelFormat" inOptions:optionsCopy error:error];
  if (!v61)
  {
    v49 = 0;
    goto LABEL_55;
  }

  v18 = [v16 count];
  v59 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v59)
  {
LABEL_46:
    v49 = 0;
    goto LABEL_54;
  }

  unsignedIntValue = [v61 unsignedIntValue];
  if ((unsignedIntValue - 1278226488) > 0x30 || ((1 << (unsignedIntValue - 56)) & 0x1400000000001) == 0)
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"unsupported output pixel format"];
      *error = v49 = 0;
      goto LABEL_54;
    }

    goto LABEL_46;
  }

  std::vector<unsigned int>::vector[abi:ne200100](__p, v18);
  pixelBuffer = buffer;
  v67 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18];
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      *(__p[0] + i) = unsignedIntValue;
      v21 = [v16 objectAtIndexedSubscript:i];
      featureName = [v21 featureName];
      if (featureName)
      {
        p_superclass = [v16 objectAtIndexedSubscript:i];
        featureName2 = [(__objc2_class *)p_superclass featureName];
        v9 = featureName2;
      }

      else
      {
        featureName2 = [MEMORY[0x1E695DFB0] null];
        v17 = featureName2;
      }

      [v67 setObject:featureName2 atIndexedSubscript:i];
      v24 = v17;
      if (featureName)
      {

        v24 = p_superclass;
      }
    }
  }

  v25 = [VNValidationUtilities requiredSessionInOptions:v66 error:error];
  if (!v25)
  {
    v49 = 0;
    goto LABEL_52;
  }

  v54 = v25;
  vnciContextManager = [v25 vnciContextManager];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __129__VNGuidedUpsamplingGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
  aBlock[3] = &unk_1E77B3AA8;
  v78 = 1278226534;
  aBlock[4] = self;
  v58 = vnciContextManager;
  v77 = v58;
  v27 = _Block_copy(aBlock);
  v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v16;
  v28 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v28)
  {
    v29 = *v73;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v73 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v27[2](v27, *(*(&v72 + 1) + 8 * j), error);
        if (!v31)
        {
          goto LABEL_42;
        }

        [v65 addObject:v31];
      }

      v28 = [obj countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v28);
  }

  obj = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if (v18)
  {
    v34 = Height;
    v35 = v18;
    while (1)
    {
      v36 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v34 height:1278226534 pixelFormatType:error error:?];
      if (!v36)
      {
        break;
      }

      [obj addObject:v36];

      if (!--v35)
      {
        goto LABEL_27;
      }
    }

LABEL_42:
    v49 = 0;
    goto LABEL_51;
  }

LABEL_27:
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __129__VNGuidedUpsamplingGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke_2;
  v68[3] = &unk_1E77B3AD0;
  v68[4] = self;
  v69 = v65;
  v56 = obj;
  v70 = v56;
  v71 = pixelBuffer;
  v51 = _Block_copy(v68);
  if ((VNExecuteBlock(v51, error) & 1) == 0)
  {
    v49 = 0;
    goto LABEL_50;
  }

  v55 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18];
  v53 = CVPixelBufferGetWidth(pixelBuffer);
  v52 = CVPixelBufferGetHeight(pixelBuffer);
  if (!v18)
  {
LABEL_39:
    v48 = v55;
    v49 = v55;
    goto LABEL_49;
  }

  v37 = 0;
  while (1)
  {
    v38 = [v56 objectAtIndexedSubscript:v37];

    PixelFormatType = CVPixelBufferGetPixelFormatType(v38);
    if (PixelFormatType != *(__p[0] + v37))
    {
      break;
    }

    v40 = CVPixelBufferRetain(v38);
LABEL_33:
    v42 = [VNPixelBufferObservation alloc];
    v43 = [v67 objectAtIndexedSubscript:v37];
    null = [MEMORY[0x1E695DFB0] null];
    v45 = [v43 isEqual:null];
    if (v45)
    {
      v46 = 0;
    }

    else
    {
      pixelBuffer = [v67 objectAtIndexedSubscript:v37];
      v46 = pixelBuffer;
    }

    v47 = [(VNPixelBufferObservation *)v42 initWithOriginatingRequestSpecifier:v59 featureName:v46 CVPixelBuffer:v40];
    if ((v45 & 1) == 0)
    {
    }

    CVPixelBufferRelease(v40);
    [v55 addObject:v47];

    if (v18 == ++v37)
    {
      goto LABEL_39;
    }
  }

  v41 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:v38];
  v40 = [(VNGuidedUpsamplingGenerator *)self _renderCIImage:v41 width:v53 height:v52 format:*(__p[0] + v37) vnciContextManager:v58 error:error];

  if (v40)
  {
    goto LABEL_33;
  }

  v49 = 0;
  v48 = v55;
LABEL_49:

LABEL_50:
LABEL_51:

  v25 = v54;
LABEL_52:

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_54:

LABEL_55:
LABEL_56:

  return v49;
}

__CVBuffer *__129__VNGuidedUpsamplingGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 pixelBuffer];
  v7 = v6;
  if (!v6)
  {
    if (a3)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"VNPixelBufferObservation missing pixel buffer"];
      *a3 = v7 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (CVPixelBufferGetPixelFormatType(v6) != *(a1 + 48))
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v7];
    v10 = *(a1 + 32);
    [v9 extent];
    v12 = v11;
    [v9 extent];
    v14 = *(a1 + 48);
    v15 = *(a1 + 40);
    v19 = 0;
    v7 = [v10 _renderCIImage:v9 width:v12 height:v13 format:v14 vnciContextManager:v15 error:&v19];
    v16 = v19;

    objc_autoreleasePoolPop(v8);
    if (v7)
    {

      goto LABEL_12;
    }

    if (a3)
    {
      v17 = v16;
      *a3 = v16;
    }

    goto LABEL_11;
  }

  CVPixelBufferRetain(v7);
LABEL_12:

  return v7;
}

BOOL __129__VNGuidedUpsamplingGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) metalContext];
  v5 = v4;
  if (v4)
  {
    v6 = [(VNMetalContext *)v4 bindPixelBuffersToTextures:a2 error:?];
    if (v6)
    {
      v7 = [(VNMetalContext *)v5 bindPixelBuffersToTextures:a2 error:?];
      if (v7)
      {
        v8 = [(VNMetalContext *)v5 bindPixelBufferToMTL2DTexture:a2 error:?];
        if (v8)
        {
          v9 = [(VNMetalContext *)v5 createGuidedFilterForTextures:v6 referenceTexture:v8 error:a2];
          if (v9)
          {
            v10 = [(VNMetalContext *)v5 upsampleTextures:v6 referenceTexture:v8 constraintsTextures:0 upsampledTextures:v7 filter:v9 waitForCompletion:1 error:a2];
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_17;
  }

  if (a2)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v6 = [v11 initWithFormat:@"%@ does not have a metal context", v13];

    [VNError errorForInternalErrorWithLocalizedDescription:v6];
    *a2 = v10 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v10 = 0;
LABEL_18:

  return v10;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v24 = 0;
  if ([VNValidationUtilities getOSTypeValue:&v24 forKey:@"VNGuidedUpsamplingGeneratorOption_InputPixelFormat" inOptions:optionsCopy error:error])
  {
    v17 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
    v18 = v17;
    if (v17)
    {
      width = [v17 width];
      height = [v18 height];
      v21 = [v18 croppedBufferWithWidth:(width * width) height:(height * height) format:v24 cropRect:optionsCopy options:error error:{x * width, y * height}];
      *buffer = v21;
      v22 = v21 != 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end