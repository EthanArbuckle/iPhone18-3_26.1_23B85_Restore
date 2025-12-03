@interface VNHomographyTracker
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNHomographyTracker

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNHomographyTrackerProcessOption_State" inOptions:optionsCopy error:error];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __121__VNHomographyTracker_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
      v20[3] = &unk_1E77B2398;
      v20[4] = self;
      v21 = optionsCopy;
      v22 = v14;
      bufferCopy = buffer;
      v23 = v13;
      v16 = v15;
      v24 = v16;
      v17 = _Block_copy(v20);
      if (VNExecuteBlock(v17, error))
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __121__VNHomographyTracker_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) validatedImageBufferFromOptions:*(a1 + 40) error:a2];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_22;
  }

  [v4 timingInfo];
  v30 = v26;
  v6 = v28;
  v31 = v27;
  if (v28)
  {
    v7 = v29;
  }

  else
  {
    v30 = *MEMORY[0x1E6960C68];
    v6 = *(MEMORY[0x1E6960C68] + 12);
    v31 = *(MEMORY[0x1E6960C68] + 8);
    v7 = *(MEMORY[0x1E6960C68] + 16);
  }

  v21 = 0;
  v8 = 0uLL;
  v20 = 0u;
  v9 = *(a1 + 48);
  if (!v9)
  {
    goto LABEL_17;
  }

  v22 = v30;
  v23 = v31;
  v24 = v6;
  v25 = v7;
  if (!ICAnalysisAddFrame())
  {
    goto LABEL_22;
  }

  v10 = *(v9 + 24);
  *(v9 + 24) = v10 - 1;
  if (v10 <= 1)
  {
    v12 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(*(v9 + 16), v12))
    {
      if (a2)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"timeout exceeded"];
        *a2 = v11 = 0;
        goto LABEL_23;
      }

LABEL_22:
      v11 = 0;
      goto LABEL_23;
    }

    do
    {
      os_unfair_lock_lock((v9 + 32));
      v13 = *(v9 + 40);
      v14 = *(v9 + 48);
      if (v13 != v14)
      {
        do
        {
          std::vector<std::tuple<simd_float3x3,float>>::push_back[abi:ne200100](&v20, v13);
          v13 += 4;
        }

        while (v13 != v14);
        v13 = *(v9 + 40);
      }

      *(v9 + 48) = v13;
      os_unfair_lock_unlock((v9 + 32));
    }

    while (!dispatch_semaphore_wait(*(v9 + 16), 0));
    v8 = v20;
LABEL_17:
    v15 = v8;
    if (v8 != *(&v8 + 1))
    {
      v16 = v8;
      do
      {
        v17 = [(VNObservation *)[VNImageHomographicAlignmentObservation alloc] initWithOriginatingRequestSpecifier:*(a1 + 56)];
        [(VNImageHomographicAlignmentObservation *)v17 setWarpTransform:*v16, *(v16 + 16), *(v16 + 32)];
        LODWORD(v18) = *(v16 + 48);
        [(VNObservation *)v17 setConfidence:v18];
        [*(a1 + 64) addObject:v17];

        v16 += 64;
      }

      while (v16 != *(&v15 + 1));
    }

    if (v15)
    {
      *(&v20 + 1) = v15;
      operator delete(v15);
    }
  }

  v11 = 1;
LABEL_23:

  return v11;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v18 = v17;
  if (v17)
  {
    width = [v17 width];
    height = [v18 height];
    v21 = [v18 croppedBufferWithWidth:(width * (width & 0xFFFFFFFFFFFFFFFELL)) height:(height * (height & 0xFFFFFFFFFFFFFFFELL)) format:875704422 cropRect:optionsCopy options:error error:{x * (width & 0xFFFFFFFFFFFFFFFELL), y * (height & 0xFFFFFFFFFFFFFFFELL)}];
    *buffer = v21;
    v22 = v21 != 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end