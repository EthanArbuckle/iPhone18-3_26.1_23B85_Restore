@interface VNHumanPoseDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (id)vcpPoseRequestRuntimeOptionsForDetectorOptions:(id)options error:(id *)error;
- (id)vcpPoseRequestSetupOptionsForDetectorOptions:(id)options error:(id *)error;
@end

@implementation VNHumanPoseDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__VNHumanPoseDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNHumanPoseDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNHumanPoseDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNHumanPoseDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __60__VNHumanPoseDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNHumanPoseDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 removeObject:@"VNDetectorInitOption_ModelBackingStore"];
  [v2 addObject:@"VNDetectorOption_OriginatingRequestSpecifier"];
  [v2 addObject:@"VNHumanPoseDetectorInitOption_UseCPUOnly"];
  v3 = [v2 copy];
  v4 = +[VNHumanPoseDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNHumanPoseDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"VNHumanPoseDetectorInitOption_UseCPUOnly"];
  bOOLValue = [v5 BOOLValue];

  v10 = @"VNComputeStageMain";
  if (bOOLValue)
  {
    +[VNComputeDeviceUtilities allCPUComputeDevices];
  }

  else
  {
    +[VNComputeDeviceUtilities allComputeDevices];
  }
  v7 = ;
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v8;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v24 = [(VCPRequest *)self->_humanPoseDetector processImage:buffer withOptions:0 error:error];
  if (v24)
  {
    v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
    if (v13)
    {
      recognizedPointsObservationClass = [objc_opt_class() recognizedPointsObservationClass];
      errorCopy = error;
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v24, "count")}];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = v24;
      v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v17)
      {
        v18 = *v26;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = [[recognizedPointsObservationClass alloc] initWithOriginatingRequestSpecifier:v13 keypointReturningObservation:*(*(&v25 + 1) + 8 * i)];
            if (!v20)
            {
              if (errorCopy)
              {
                *errorCopy = [VNError errorForInternalErrorWithLocalizedDescription:@"Unable to create observation"];
              }

              v21 = 0;
              goto LABEL_16;
            }

            [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:optionsCopy toObservation:v20];
            [v15 addObject:v20];
          }

          v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v21 = v15;
LABEL_16:
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  v11 = *&class;
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v18 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v19 = v18;
  if (v18)
  {
    width = [v18 width];
    height = [v19 height];
    v50.origin.x = x * width;
    v50.size.width = width * width;
    v50.origin.y = y * height;
    v50.size.height = height * height;
    v51 = CGRectIntegral(v50);
    v22 = v51.origin.x;
    v23 = v51.origin.y;
    v24 = v51.size.width;
    v25 = v51.size.height;
    [VNError VNAssert:self->_humanPoseDetector != 0 log:@"Human Pose Request is not initialized"];
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = __Block_byref_object_copy__11523;
    v48[4] = __Block_byref_object_dispose__11524;
    v49 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __117__VNHumanPoseDetector_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke;
    aBlock[3] = &unk_1E77B3720;
    v42 = v48;
    aBlock[4] = self;
    v26 = optionsCopy;
    v41 = v26;
    v43 = &v44;
    v27 = _Block_copy(aBlock);
    [objc_opt_class() runSuccessReportingBlockSynchronously:v27 detector:self qosClass:v11 error:error];
    if ((v45[3] & 1) == 0 || ([(VCPRequest *)self->_humanPoseDetector preferredInputSizeWithOptions:0 error:error], v30 = v29, v31 = v28, v32 = *MEMORY[0x1E695F060], *MEMORY[0x1E695F060] == v30) && (v32 = *(MEMORY[0x1E695F060] + 8), v32 == v28))
    {
      v33 = 0;
    }

    else
    {
      preferredPixelFormat = [(VCPRequest *)self->_humanPoseDetector preferredPixelFormat];
      if ((preferredPixelFormat & 0xFFFFFFEF) == 0x34323066)
      {
        v35 = (v30 + 1) & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v35 = v30;
      }

      v39 = 0;
      v36 = [v19 croppedBufferWithWidth:v35 height:v31 format:preferredPixelFormat cropRect:v26 options:error error:&v39 pixelBufferRepsCacheKey:{v22, v23, v24, v25}];
      v37 = v39;
      *buffer = v36;
      v33 = v36 != 0;
      if (v36)
      {
        [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:v26 cacheKey:v37 imageBuffer:v19];
      }
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(v48, 8);
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

uint64_t __117__VNHumanPoseDetector_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) vcpPoseRequestRuntimeOptionsForDetectorOptions:*(a1 + 40) error:a2];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  *(*(*(a1 + 56) + 8) + 24) = [*(*(a1 + 32) + 56) updateWithOptions:*(*(*(a1 + 48) + 8) + 40) error:a2];
  return *(*(*(a1 + 56) + 8) + 24);
}

- (id)vcpPoseRequestRuntimeOptionsForDetectorOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v7, "width")}];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v10 = getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr;
    v19 = getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr;
    if (!getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr)
    {
      v11 = VideoProcessingLibrary();
      v17[3] = dlsym(v11, "VCPRequestFrameWidthPropertyKey");
      getVCPRequestFrameWidthPropertyKeySymbolLoc(void)::ptr = v17[3];
      v10 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v10)
    {
      goto LABEL_13;
    }

    [v8 setObject:v9 forKeyedSubscript:*v10];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v7, "height")}];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v13 = getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr;
    v19 = getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr;
    if (!getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr)
    {
      v14 = VideoProcessingLibrary();
      v17[3] = dlsym(v14, "VCPRequestFrameHeightPropertyKey");
      getVCPRequestFrameHeightPropertyKeySymbolLoc(void)::ptr = v17[3];
      v13 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v13)
    {
LABEL_13:
      dlerror();
      result = abort_report_np();
      __break(1u);
      return result;
    }

    [v8 setObject:v12 forKeyedSubscript:*v13];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)vcpPoseRequestSetupOptionsForDetectorOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0;
  if ([VNValidationUtilities getBOOLValue:&v13 forKey:@"VNHumanPoseDetectorInitOption_UseCPUOnly" inOptions:optionsCopy withDefaultValue:0 error:error])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v13];
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v8 = getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr;
    v22 = getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr;
    if (!getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr)
    {
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = ___ZL41getVCPRequestForceCPUPropertyKeySymbolLocv_block_invoke;
      v17 = &unk_1E77B69F0;
      v18 = &v19;
      v9 = VideoProcessingLibrary();
      v10 = dlsym(v9, "VCPRequestForceCPUPropertyKey");
      *(v18[1] + 24) = v10;
      getVCPRequestForceCPUPropertyKeySymbolLoc(void)::ptr = *(v18[1] + 24);
      v8 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v8)
    {
      dlerror();
      result = abort_report_np();
      __break(1u);
      return result;
    }

    [v6 setObject:v7 forKeyedSubscript:*v8];

    v11 = v6;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end