@interface VNImageAnalyzerBasedDetector
+ (id)computeStagesToBindForConfigurationOptions:(id)options;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)modelPathForConfiguration:(id)configuration error:(id *)error;
+ (id)sceneLabelsFilePathForConfiguration:(id)configuration error:(id *)error;
+ (id)segmentationLabelsFilePathForConfiguration:(id)configuration error:(id *)error;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)configureImageAnalyzerOptions:(void *)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (CGSize)inputImageSize;
- (id).cxx_construct;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)analyzer processOptions:(id)options originatingRequestSpecifier:(id)specifier qosClass:(unsigned int)class error:(id *)error;
- (id)observationsForSceneLabelsFromLastAnalysisOfImageAnalyzer:(void *)analyzer identifierAcceptingBlock:(id)block operationPointsProvider:(id)provider originatingRequestSpecifier:(id)specifier qosClass:(unsigned int)class error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (id)supportedClassificationIdentifiersAcceptedByBlock:(id)block error:(id *)error;
- (uint64_t)_validateProvidesSceneLabelsAndReturnError:(uint64_t)result;
@end

@implementation VNImageAnalyzerBasedDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VNImageAnalyzerBasedDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNImageAnalyzerBasedDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNImageAnalyzerBasedDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNImageAnalyzerBasedDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __69__VNImageAnalyzerBasedDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNImageAnalyzerBasedDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 removeObject:@"VNDetectorInitOption_ModelBackingStore"];
  [v2 removeObject:@"VNDetectorOption_OriginatingRequestSpecifier"];
  v3 = [v2 copy];
  v4 = +[VNImageAnalyzerBasedDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNImageAnalyzerBasedDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v7)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v8 = [self modelPathForConfiguration:optionsCopy error:error];
  if (v8)
  {
    v9 = [self inputImageBlobNameForConfiguration:optionsCopy];
    if (v9)
    {
      v15 = 0;
      v16 = 0;
      if ([VNEspressoHelpers getWidth:&v16 height:&v15 ofBlobNamed:v9 forNetworkModelFileWithPath:v8 error:error])
      {
        v10 = [self analysisPixelFormatTypeForConfiguration:optionsCopy];
        v11 = [VNSupportedImageSize alloc];
        v12 = [(VNSupportedImageSize *)v11 initWithIdealFormat:v10 width:v16 height:v15 orientation:1 aspectRatioHandling:0 orientationAgnostic:0];
        v17[0] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

LABEL_11:
        goto LABEL_12;
      }
    }

    else if (error)
    {
      [VNError errorForUnsupportedRequestSpecifier:v7];
      *error = v13 = 0;
      goto LABEL_11;
    }

    v13 = 0;
    goto LABEL_11;
  }

  v13 = 0;
LABEL_12:

LABEL_13:

  return v13;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities espressoV1ModelComputeDevices:options];
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

+ (id)segmentationLabelsFilePathForConfiguration:(id)configuration error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

+ (id)sceneLabelsFilePathForConfiguration:(id)configuration error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

+ (id)modelPathForConfiguration:(id)configuration error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  v14 = [(VNImageAnalyzerBasedDetector *)self analysisTypesForProcessOptions:optionsCopy];
  if (!self)
  {
LABEL_21:
    v19 = 0;
    goto LABEL_16;
  }

  v15 = v14;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (PixelFormatType <= 1094862673)
  {
    if (PixelFormatType != 8 && PixelFormatType != 32)
    {
LABEL_19:
      if (error)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"the image processing type is unknown"];
        *error = v19 = 0;
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else if (PixelFormatType != 1094862674 && PixelFormatType != 1111970369 && PixelFormatType != 1380401729)
  {
    goto LABEL_19;
  }

  vision::mod::ImageAnalyzer::analyzeUsingCVPixelBuffer(self->_imageAnalyzer.__ptr_, v15, buffer);
  v17 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v17)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__870;
    v30 = __Block_byref_object_dispose__871;
    v31 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __130__VNImageAnalyzerBasedDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
    aBlock[3] = &unk_1E77B2578;
    v24 = &v26;
    aBlock[4] = self;
    v22 = optionsCopy;
    v23 = v17;
    classCopy = class;
    v18 = _Block_copy(aBlock);
    if (VNExecuteBlock(v18, error))
    {
      v19 = v27[5];
    }

    else
    {
      v19 = 0;
    }

    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v19 = 0;
  }

LABEL_16:

  return v19;
}

BOOL __130__VNImageAnalyzerBasedDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) observationsForLastAnalysisOfImageAnalyzer:*(*(a1 + 32) + 56) processOptions:*(a1 + 40) originatingRequestSpecifier:*(a1 + 48) qosClass:*(a1 + 64) error:a2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v20 = v19;
  if (v19)
  {
    width = [v19 width];
    height = [v20 height];
    v42 = 0;
    v23 = optionsCopy;
    if (self && [VNValidationUtilities getNSUIntegerValue:&v42 forKey:@"VNDetectorProcessOption_ImageCropAndScaleOption" inOptions:v23 withDefaultValue:[(VNImageAnalyzerBasedDetector *)self defaultImageCropAndScaleOption] error:error])
    {
      v24 = width;
      v25 = height;
      v26 = width * width;
      v27 = height * height;
      if (!self->_networkUsesAnisotropicScaling && v42 == 2)
      {
        v42 = 0;
      }

      v28 = self->_networkRequiredInputImageSize.width;
      if (v28 >= self->_networkRequiredInputImageSize.height)
      {
        v28 = self->_networkRequiredInputImageSize.height;
      }

      if (v26 >= v27)
      {
        v29 = height * height;
      }

      else
      {
        v29 = width * width;
      }

      v30 = v29;
      if (v28 > v30)
      {
        if (width >= height)
        {
          v31 = height;
        }

        else
        {
          v31 = width;
        }

        if (v31 > 0.0)
        {
          v28 = v28 / v31;
        }

        VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, v28);
      }

      v32 = objc_opt_class();
      configurationOptions = [(VNDetector *)self configurationOptions];
      v34 = [v32 analysisPixelFormatTypeForConfiguration:configurationOptions];

      [v23 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
      v35 = self->_networkRequiredInputImageSize.width;
      v36 = self->_networkRequiredInputImageSize.height;
      v41 = 0;
      v37 = [v20 cropAndScaleBufferWithWidth:v35 height:v36 cropRect:v34 format:v42 imageCropAndScaleOption:v23 options:error error:x * v24 calculatedNormalizedOriginOffset:y * v25 calculatedScaleX:v26 calculatedScaleY:v27 pixelBufferRepsCacheKey:{0, 0, 0, &v41}];
      v38 = v41;
      *buffer = v37;
      v39 = v37 != 0;
      if (v37)
      {
        [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:v23 cacheKey:v38 imageBuffer:v20];
        v39 = 1;
      }

      v23 = v38;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)class options:(id)options regionOfInterest:(CGRect)interest warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v15 = *&class;
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  if ([(VNImageAnalyzerBasedDetector *)self analysisTypesForProcessOptions:optionsCopy])
  {
    v22.receiver = self;
    v22.super_class = VNImageAnalyzerBasedDetector;
    height = [(VNDetector *)&v22 internalProcessUsingQualityOfServiceClass:v15 options:optionsCopy regionOfInterest:recorderCopy warningRecorder:error error:handlerCopy progressHandler:x, y, width, height];
  }

  else
  {
    height = MEMORY[0x1E695E0F0];
  }

  return height;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v19.receiver = self;
  v19.super_class = VNImageAnalyzerBasedDetector;
  v7 = [(VNDetector *)&v19 completeInitializationForSession:sessionCopy error:error];
  if (self)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    configurationOptions = [(VNDetector *)self configurationOptions];
    v10 = objc_opt_class();
    v11 = [v10 modelPathForConfiguration:configurationOptions error:error];
    if (!v11)
    {
      goto LABEL_18;
    }

    if ([v10 providesSceneLabelsForConfiguration:configurationOptions])
    {
      v12 = [v10 sceneLabelsFilePathForConfiguration:configurationOptions error:error];
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
    }

    if ([v10 providesSegmentationLabelsForConfiguration:configurationOptions])
    {
      v13 = [v10 segmentationLabelsFilePathForConfiguration:configurationOptions error:error];
      if (!v13)
      {
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    vision::mod::ImageAnalyzer_Options::ImageAnalyzer_Options(&__str);
    if ([(VNImageAnalyzerBasedDetector *)self configureImageAnalyzerOptions:&__str error:error])
    {
      v21 = 8576;
      uTF8String = [v11 UTF8String];
      uTF8String2 = [v12 UTF8String];
      uTF8String3 = [v13 UTF8String];
      vision::mod::ImageAnalyzer::createImageAnalyzer(&v20, &v21, uTF8String, uTF8String2, 0, uTF8String3, 0, 0, &__str, v18, v19.receiver);
    }

    vision::mod::ImageAnalyzer_Options::~ImageAnalyzer_Options(&__str);

    goto LABEL_17;
  }

LABEL_19:

  return 0;
}

- (id)observationsForSceneLabelsFromLastAnalysisOfImageAnalyzer:(void *)analyzer identifierAcceptingBlock:(id)block operationPointsProvider:(id)provider originatingRequestSpecifier:(id)specifier qosClass:(unsigned int)class error:(id *)error
{
  blockCopy = block;
  providerCopy = provider;
  specifierCopy = specifier;
  if (([(VNImageAnalyzerBasedDetector *)self _validateProvidesSceneLabelsAndReturnError:error]& 1) == 0)
  {
    v17 = 0;
    goto LABEL_31;
  }

  *v41 = 0u;
  *v42 = 0u;
  v43 = 1065353216;
  vision::mod::ImageAnalyzer::getSceneLabelsConfidences(__p, 0.0, analyzer);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(v41, __p);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(__p[2]);
  v15 = __p[0];
  __p[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  if (!providerCopy)
  {
    v16 = 0;
    goto LABEL_9;
  }

  v16 = [providerCopy operationPointsAndReturnError:error];
  if (v16)
  {
LABEL_9:
    v36 = providerCopy;
    v18 = objc_alloc(MEMORY[0x1E695DF70]);
    v19 = [v18 initWithCapacity:v42[1]];
    v35 = objc_autoreleasePoolPush();
    v20 = v42[0];
    if (v42[0])
    {
      v21 = 0;
      while (1)
      {
        v22 = objc_alloc(MEMORY[0x1E696AEC0]);
        v23 = v20 + 16;
        if (v20[39] < 0)
        {
          v23 = *v23;
        }

        v24 = [v22 initWithUTF8String:{v23, v35}];
        if (_isAcceptableRecognizedObjectIdentifier(v24, blockCopy))
        {
          if (v16)
          {
            v38 = v21;
            v39 = 0;
            v25 = [v16 getClassificationMetrics:&v39 forClassificationIdentifier:v24 error:&v38];
            v26 = v39;
            v27 = v38;

            if ((v25 & 1) == 0)
            {

              v32 = 0;
              goto LABEL_25;
            }

            v21 = v27;
          }

          else
          {
            v26 = 0;
          }

          v28 = [VNClassificationObservation alloc];
          LODWORD(v29) = *(v20 + 10);
          v30 = [(VNClassificationObservation *)v28 initWithOriginatingRequestSpecifier:specifierCopy identifier:v24 confidence:v26 classificationMetrics:v29];
          if (v30)
          {
            [v19 addObject:v30];
          }
        }

        v20 = *v20;
        if (!v20)
        {
          goto LABEL_24;
        }
      }
    }

    v21 = 0;
LABEL_24:
    v24 = &__block_literal_global_128;
    v31 = &__block_literal_global_128;
    [v19 sortWithOptions:16 usingComparator:&__block_literal_global_128];
    v32 = 1;
    v27 = v21;
LABEL_25:

    objc_autoreleasePoolPop(v35);
    if (v32)
    {
      v17 = v19;
    }

    else
    {
      v17 = 0;
    }

    providerCopy = v36;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_29:
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(v42[0]);
  v33 = v41[0];
  v41[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

LABEL_31:

  return v17;
}

- (uint64_t)_validateProvidesSceneLabelsAndReturnError:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = objc_opt_class();
    configurationOptions = [v3 configurationOptions];
    LOBYTE(v4) = [v4 providesSceneLabelsForConfiguration:configurationOptions];

    if (v4)
    {
      return 1;
    }

    else
    {
      if (a2)
      {
        v6 = MEMORY[0x1E696AEC0];
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v6 stringWithFormat:@"%@ does not provide classification labels", v8];

        *a2 = [VNError errorForDataUnavailableWithLocalizedDescription:v9];
      }

      return 0;
    }
  }

  return result;
}

- (id)supportedClassificationIdentifiersAcceptedByBlock:(id)block error:(id *)error
{
  blockCopy = block;
  if (([(VNImageAnalyzerBasedDetector *)self _validateProvidesSceneLabelsAndReturnError:error]& 1) != 0)
  {
    cachedSupportedClassificationIdentifiers = self->_cachedSupportedClassificationIdentifiers;
    if (!cachedSupportedClassificationIdentifiers)
    {
      LabelsList = vision::mod::ImageAnalyzer::getLabelsList(self->_imageAnalyzer.__ptr_, 2u);
      DisallowedLabels = vision::mod::ImageAnalyzer::getDisallowedLabels(self->_imageAnalyzer.__ptr_, 2u);
      context = objc_autoreleasePoolPush();
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((LabelsList[1] - *LabelsList) >> 3) - DisallowedLabels[3]];
      v11 = *LabelsList;
      v12 = LabelsList[1];
      if (*LabelsList != v12)
      {
        do
        {
          if (!std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(DisallowedLabels, v11))
          {
            v13 = objc_alloc(MEMORY[0x1E696AEC0]);
            v14 = v11;
            if (*(v11 + 23) < 0)
            {
              v14 = *v11;
            }

            v15 = [v13 initWithUTF8String:v14];
            if (_isAcceptableRecognizedObjectIdentifier(v15, blockCopy))
            {
              [v10 addObject:v15];
            }
          }

          v11 += 24;
        }

        while (v11 != v12);
      }

      [v10 sortUsingSelector:sel_compare_];
      v16 = [v10 copy];
      v17 = self->_cachedSupportedClassificationIdentifiers;
      self->_cachedSupportedClassificationIdentifiers = v16;

      objc_autoreleasePoolPop(context);
      cachedSupportedClassificationIdentifiers = self->_cachedSupportedClassificationIdentifiers;
    }

    v18 = cachedSupportedClassificationIdentifiers;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)analyzer processOptions:(id)options originatingRequestSpecifier:(id)specifier qosClass:(unsigned int)class error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self, specifier, *&class];
  }

  return 0;
}

- (BOOL)configureImageAnalyzerOptions:(void *)options error:(id *)error
{
  v6 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:error];
  if (v6)
  {
    configurationOptions = [(VNDetector *)self configurationOptions];
    v8 = objc_opt_class();
    *(options + 9) = [VNEspressoHelpers espressoDeviceIDForComputeDevice:v6];
    *(options + 8) = [VNEspressoHelpers espressoStorageTypeForComputeDevice:v6];
    *(options + 6) = [VNEspressoHelpers espressoEngineForComputeDevice:v6];
    *(options + 7) = 0;
    *(options + 385) = 1;
    v9 = [v8 modelPathForConfiguration:configurationOptions error:0];
    lastPathComponent = [v9 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    std::string::__assign_external(options, [stringByDeletingPathExtension UTF8String]);

    v12 = [v8 analysisPixelFormatTypeForConfiguration:configurationOptions];
    if (v12 <= 1094862673)
    {
      if (v12 == 8)
      {
        v13 = 1;
        goto LABEL_14;
      }

      if (v12 == 32)
      {
        v13 = 8;
        goto LABEL_14;
      }
    }

    else
    {
      switch(v12)
      {
        case 1380401729:
          v13 = 2;
          goto LABEL_14;
        case 1111970369:
          v13 = 4;
          goto LABEL_14;
        case 1094862674:
          v13 = 16;
LABEL_14:
          *(options + 10) = v13;
          v14 = [v8 inputImageBlobNameForConfiguration:configurationOptions];
          std::string::__assign_external(options + 2, [v14 UTF8String]);

          goto LABEL_15;
      }
    }

    v13 = 0;
    goto LABEL_14;
  }

LABEL_15:

  return v6 != 0;
}

- (CGSize)inputImageSize
{
  width = self->_networkRequiredInputImageSize.width;
  height = self->_networkRequiredInputImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end