@interface VNJunkIdentifier
+ (BOOL)shouldDumpDebugIntermediates;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id).cxx_construct;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
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
  block[4] = self;
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

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];
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

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v48[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v21 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v21)
  {
    (*(self->mJunkDescriptorImpl.__ptr_->var0 + 8))(&v46);
    metalContext = [(VNDetector *)self metalContext];
    v44 = 0;
    v45 = 0;
    if ([VNImageClassifier computeImageDescriptorsWithImage:v21 pixelBuffer:buffer regionOfInterest:self->mJunkDescriptorImpl.__ptr_ usingDescriptorProcessor:0 tileCount:3 augmentationMode:v46 resultantDescriptorBuffer:x options:y metalContext:width canceller:height tileColumns:optionsCopy tileRows:metalContext error:0, &v45, &v44, error])
    {
      VNRecordImageTilingWarning(recorderCopy, v45, v44);
      v23 = [VNImageClassifier classifyImageWithDescriptors:v46 usingImageClassifier:self->mJunkClassifierImpl.__ptr_ andMinConfidenceForClassification:optionsCopy options:metalContext metalContext:error error:0.0];
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

        v29 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
        if (v29)
        {
          v30 = [VNClassificationObservation alloc];
          LODWORD(v31) = v27;
          v42 = [(VNClassificationObservation *)v30 initWithOriginatingRequestSpecifier:v29 identifier:@"junk" confidence:v31];
          v41 = [optionsCopy objectForKeyedSubscript:@"VNImageClassifierProcessingOption_DebugIntermediatesDumpPath"];
          v43 = [optionsCopy objectForKeyedSubscript:@"VNImageClassifierProcessingOption_DebugInfo"];
          if (v41 && v43)
          {
            fileURL = [v21 fileURL];
            lastPathComponent = [fileURL lastPathComponent];
            stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

            if (![stringByDeletingPathExtension length])
            {
              v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-[VNJunkIdentifier processRegionOfInterest:croppedPixelBuffer:options:qosClass:warningRecorder:error:progressHandler:]::image_name_offset];
              stringValue = [v34 stringValue];

              stringByDeletingPathExtension = stringValue;
            }

            v36 = [stringByDeletingPathExtension stringByAppendingString:@".json"];
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

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  v17 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  if (v17)
  {
    height = [VNImageClassifier computeImageCropWithImage:v17 regionOfInterest:self->mJunkDescriptorImpl.__ptr_ usingDescriptorProcessor:1 scalingImage:optionsCopy options:buffer pixelBuffer:error error:x, y, width, height];
  }

  else
  {
    height = 0;
  }

  return height;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v15 = *&class;
  v41[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v20 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v21 = v20;
  if (v20)
  {
    width = [v20 width];
    height = [v21 height];
    (*(self->mJunkDescriptorImpl.__ptr_->var0 + 19))(self->mJunkDescriptorImpl.__ptr_);
    if (height >= width)
    {
      v26 = width;
    }

    else
    {
      v26 = height;
    }

    if (v24 >= v25)
    {
      v24 = v25;
    }

    if (v26 < v24 >> 2)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, v24 >> 2);
      v27 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
      if (v27)
      {
        v28 = [VNClassificationObservation alloc];
        LODWORD(v29) = 1.0;
        v30 = [(VNClassificationObservation *)v28 initWithOriginatingRequestSpecifier:v27 identifier:@"junk" confidence:v29];
        v41[0] = v30;
        height2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
      }

      else
      {
        height2 = 0;
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
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:v33 isDirectory:1];
    LOBYTE(v32) = [defaultManager createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:error];

    if (v32)
    {
      v35 = v38;
      [optionsCopy setObject:v35 forKeyedSubscript:@"VNImageClassifierProcessingOption_DebugIntermediatesDumpPath"];
      v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [optionsCopy setObject:v36 forKeyedSubscript:@"VNImageClassifierProcessingOption_DebugInfo"];

LABEL_14:
      [optionsCopy setObject:&unk_1F19C1570 forKeyedSubscript:@"VNImageBufferOption_DownscaleCGInterpolationQuality"];
      [optionsCopy setObject:&unk_1F19C1588 forKeyedSubscript:@"VNImageBufferOption_UpscaleCGInterpolationQuality"];
      v40.receiver = self;
      v40.super_class = VNJunkIdentifier;
      height2 = [(VNDetector *)&v40 internalProcessUsingQualityOfServiceClass:v15 options:optionsCopy regionOfInterest:recorderCopy warningRecorder:error error:handlerCopy progressHandler:x, y, width, height];

      goto LABEL_19;
    }
  }

  height2 = 0;
LABEL_19:

  return height2;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v23.receiver = self;
  v23.super_class = VNJunkIdentifier;
  if (![(VNDetector *)&v23 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  v6 = VNFrameworkBundle();
  v7 = [v6 pathForResource:@"junk-descriptor-current" ofType:@"bin"];
  v8 = [v6 pathForResource:@"junk-classifier-current" ofType:@"bin"];
  v9 = [v6 pathForResource:@"junk-classifier-labels-current" ofType:@"txt"];
  configurationOptions = [(VNDetector *)self configurationOptions];
  v11 = [configurationOptions objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"];
  bOOLValue = [v11 BOOLValue];

  v22 = 1;
  if ([VNValidationUtilities getMTLGPUPriority:&v22 forKey:@"VNDetectorOption_MetalContextPriority" inOptions:configurationOptions withDefaultValue:1 error:error])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__VNJunkIdentifier_completeInitializationForSession_error___block_invoke;
    aBlock[3] = &unk_1E77B45C8;
    aBlock[4] = self;
    v17 = v8;
    v18 = v9;
    v21 = bOOLValue;
    v19 = v7;
    v20 = v22;
    v13 = _Block_copy(aBlock);
    v14 = VNExecuteBlock(v13, error);
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