@interface VNJunkIdentifier
+ (BOOL)shouldDumpDebugIntermediates;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (id).cxx_construct;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNJunkIdentifier

+ (BOOL)shouldDumpDebugIntermediates
{
  if (+[VNJunkIdentifier shouldDumpDebugIntermediates]::onceToken != -1)
  {
    dispatch_once(&+[VNJunkIdentifier shouldDumpDebugIntermediates]::onceToken, &__block_literal_global_20572);
  }

  return +[VNJunkIdentifier shouldDumpDebugIntermediates]::dumpDebug;
}

void __48__VNJunkIdentifier_shouldDumpDebugIntermediates__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"VN_DEBUG_DUMP_JUNK_INTERMEDIATES"];

  if (v1)
  {
    +[VNJunkIdentifier shouldDumpDebugIntermediates]::dumpDebug = 1;
  }
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VNJunkIdentifier_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNJunkIdentifier configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNJunkIdentifier configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNJunkIdentifier configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __57__VNJunkIdentifier_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNJunkIdentifier;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNDetectorOption_PreferBackgroundProcessing"];
  [v2 addObject:@"VNDetectorOption_MetalContextPriority"];
  v3 = [v2 copy];
  v4 = +[VNJunkIdentifier configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNJunkIdentifier configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v48[1] = *MEMORY[0x1E69E9840];
  v18 = a5;
  v19 = a7;
  v20 = a9;
  v21 = [(VNDetector *)self validatedImageBufferFromOptions:v18 error:a8];
  if (v21)
  {
    (*(self->mJunkDescriptorImpl.__ptr_->var0 + 8))(&v46);
    v22 = [(VNDetector *)self metalContext];
    v44 = 0;
    v45 = 0;
    if ([VNImageClassifier computeImageDescriptorsWithImage:v21 pixelBuffer:a4 regionOfInterest:self->mJunkDescriptorImpl.__ptr_ usingDescriptorProcessor:0 tileCount:3 augmentationMode:v46 resultantDescriptorBuffer:x options:y metalContext:width canceller:height tileColumns:v18 tileRows:v22 error:0, &v45, &v44, a8])
    {
      VNRecordImageTilingWarning(v19, v45, v44);
      v23 = [VNImageClassifier classifyImageWithDescriptors:v46 usingImageClassifier:self->mJunkClassifierImpl.__ptr_ andMinConfidenceForClassification:v18 options:v22 metalContext:a8 error:0.0];
      v24 = v23;
      if (v23)
      {
        if ([v23 count])
        {
          v25 = [v24 objectAtIndexedSubscript:0];
          [v25 confidence];
          v27 = v26;
        }

        else
        {
          v27 = 0;
        }

        v29 = [VNValidationUtilities originatingRequestSpecifierInOptions:v18 error:a8];
        if (v29)
        {
          v30 = [VNClassificationObservation alloc];
          LODWORD(v31) = v27;
          v42 = [(VNClassificationObservation *)v30 initWithOriginatingRequestSpecifier:v29 identifier:@"junk" confidence:v31];
          v41 = [v18 objectForKeyedSubscript:@"VNImageClassifierProcessingOption_DebugIntermediatesDumpPath"];
          v43 = [v18 objectForKeyedSubscript:@"VNImageClassifierProcessingOption_DebugInfo"];
          if (v41 && v43)
          {
            v40 = [v21 fileURL];
            v32 = [v40 lastPathComponent];
            v33 = [v32 stringByDeletingPathExtension];

            if (![v33 length])
            {
              v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-[VNJunkIdentifier processRegionOfInterest:croppedPixelBuffer:options:qosClass:warningRecorder:error:progressHandler:]::image_name_offset];
              v35 = [v34 stringValue];

              v33 = v35;
            }

            v36 = [v33 stringByAppendingString:@".json"];
            v37 = [v41 stringByAppendingString:v36];

            v38 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v43 options:1 error:0];
            [v38 writeToFile:v37 atomically:1];
            ++[VNJunkIdentifier processRegionOfInterest:croppedPixelBuffer:options:qosClass:warningRecorder:error:progressHandler:]::image_name_offset;
          }

          v48[0] = v42;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a4;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:v16 error:a8];
  if (v17)
  {
    v18 = [VNImageClassifier computeImageCropWithImage:v17 regionOfInterest:self->mJunkDescriptorImpl.__ptr_ usingDescriptorProcessor:1 scalingImage:v16 options:a7 pixelBuffer:a8 error:x, y, width, height];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = *&a3;
  v41[1] = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = [(VNDetector *)self validatedImageBufferFromOptions:v17 error:a7];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 width];
    v23 = [v21 height];
    (*(self->mJunkDescriptorImpl.__ptr_->var0 + 19))(self->mJunkDescriptorImpl.__ptr_);
    if (v23 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v23;
    }

    if (v24 >= v25)
    {
      v24 = v25;
    }

    if (v26 < v24 >> 2)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v18, v24 >> 2);
      v27 = [VNValidationUtilities originatingRequestSpecifierInOptions:v17 error:a7];
      if (v27)
      {
        v28 = [VNClassificationObservation alloc];
        LODWORD(v29) = 1.0;
        v30 = [(VNClassificationObservation *)v28 initWithOriginatingRequestSpecifier:v27 identifier:@"junk" confidence:v29];
        v41[0] = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_19;
    }

    if (!+[VNJunkIdentifier shouldDumpDebugIntermediates])
    {
      v36 = 0;
      v35 = 0;
      goto LABEL_14;
    }

    v32 = NSTemporaryDirectory();
    v33 = [v32 stringByAppendingPathComponent:@"VN_junk_classifier_debug_intermediates"];

    v38 = v33;
    v39 = [MEMORY[0x1E696AC08] defaultManager];
    v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:v33 isDirectory:1];
    LOBYTE(v32) = [v39 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:a7];

    if (v32)
    {
      v35 = v38;
      [v17 setObject:v35 forKeyedSubscript:@"VNImageClassifierProcessingOption_DebugIntermediatesDumpPath"];
      v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v17 setObject:v36 forKeyedSubscript:@"VNImageClassifierProcessingOption_DebugInfo"];

LABEL_14:
      [v17 setObject:&unk_1F19C1570 forKeyedSubscript:@"VNImageBufferOption_DownscaleCGInterpolationQuality"];
      [v17 setObject:&unk_1F19C1588 forKeyedSubscript:@"VNImageBufferOption_UpscaleCGInterpolationQuality"];
      v40.receiver = self;
      v40.super_class = VNJunkIdentifier;
      v31 = [(VNDetector *)&v40 internalProcessUsingQualityOfServiceClass:v15 options:v17 regionOfInterest:v18 warningRecorder:a7 error:v19 progressHandler:x, y, width, height];

      goto LABEL_19;
    }
  }

  v31 = 0;
LABEL_19:

  return v31;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v23.receiver = self;
  v23.super_class = VNJunkIdentifier;
  if (![(VNDetector *)&v23 completeInitializationForSession:a3 error:?])
  {
    return 0;
  }

  v6 = VNFrameworkBundle();
  v7 = [v6 pathForResource:@"junk-descriptor-current" ofType:@"bin"];
  v8 = [v6 pathForResource:@"junk-classifier-current" ofType:@"bin"];
  v9 = [v6 pathForResource:@"junk-classifier-labels-current" ofType:@"txt"];
  v10 = [(VNDetector *)self configurationOptions];
  v11 = [v10 objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];
  v12 = [v11 BOOLValue];

  v22 = 1;
  if ([VNValidationUtilities getMTLGPUPriority:&v22 forKey:@"VNDetectorOption_MetalContextPriority" inOptions:v10 withDefaultValue:1 error:a4])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__VNJunkIdentifier_completeInitializationForSession_error___block_invoke;
    aBlock[3] = &unk_1E77B45C8;
    aBlock[4] = self;
    v17 = v8;
    v18 = v9;
    v21 = v12;
    v19 = v7;
    v20 = v22;
    v13 = _Block_copy(aBlock);
    v14 = VNExecuteBlock(v13, a4);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __59__VNJunkIdentifier_completeInitializationForSession_error___block_invoke(uint64_t a1)
{
  v2 = 0u;
  [*(a1 + 40) UTF8String];
  [*(a1 + 48) UTF8String];
  operator new();
}

@end