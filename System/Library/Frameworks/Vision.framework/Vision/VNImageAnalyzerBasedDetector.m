@interface VNImageAnalyzerBasedDetector
+ (id)computeStagesToBindForConfigurationOptions:(id)a3;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4;
+ (id)sceneLabelsFilePathForConfiguration:(id)a3 error:(id *)a4;
+ (id)segmentationLabelsFilePathForConfiguration:(id)a3 error:(id *)a4;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (CGSize)inputImageSize;
- (id).cxx_construct;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7;
- (id)observationsForSceneLabelsFromLastAnalysisOfImageAnalyzer:(void *)a3 identifierAcceptingBlock:(id)a4 operationPointsProvider:(id)a5 originatingRequestSpecifier:(id)a6 qosClass:(unsigned int)a7 error:(id *)a8;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)supportedClassificationIdentifiersAcceptedByBlock:(id)a3 error:(id *)a4;
- (uint64_t)_validateProvidesSceneLabelsAndReturnError:(uint64_t)result;
@end

@implementation VNImageAnalyzerBasedDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__VNImageAnalyzerBasedDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [VNValidationUtilities originatingRequestSpecifierInOptions:v6 error:a4];
  if (!v7)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v8 = [a1 modelPathForConfiguration:v6 error:a4];
  if (v8)
  {
    v9 = [a1 inputImageBlobNameForConfiguration:v6];
    if (v9)
    {
      v15 = 0;
      v16 = 0;
      if ([VNEspressoHelpers getWidth:&v16 height:&v15 ofBlobNamed:v9 forNetworkModelFileWithPath:v8 error:a4])
      {
        v10 = [a1 analysisPixelFormatTypeForConfiguration:v6];
        v11 = [VNSupportedImageSize alloc];
        v12 = [(VNSupportedImageSize *)v11 initWithIdealFormat:v10 width:v16 height:v15 orientation:1 aspectRatioHandling:0 orientationAgnostic:0];
        v17[0] = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

LABEL_11:
        goto LABEL_12;
      }
    }

    else if (a4)
    {
      [VNError errorForUnsupportedRequestSpecifier:v7];
      *a4 = v13 = 0;
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

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities espressoV1ModelComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)computeStagesToBindForConfigurationOptions:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)segmentationLabelsFilePathForConfiguration:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

+ (id)sceneLabelsFilePathForConfiguration:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

+ (id)modelPathForConfiguration:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v13 = a5;
  v14 = [(VNImageAnalyzerBasedDetector *)self analysisTypesForProcessOptions:v13];
  if (!self)
  {
LABEL_21:
    v19 = 0;
    goto LABEL_16;
  }

  v15 = v14;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
  if (PixelFormatType <= 1094862673)
  {
    if (PixelFormatType != 8 && PixelFormatType != 32)
    {
LABEL_19:
      if (a8)
      {
        [VNError errorForInternalErrorWithLocalizedDescription:@"the image processing type is unknown"];
        *a8 = v19 = 0;
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else if (PixelFormatType != 1094862674 && PixelFormatType != 1111970369 && PixelFormatType != 1380401729)
  {
    goto LABEL_19;
  }

  vision::mod::ImageAnalyzer::analyzeUsingCVPixelBuffer(self->_imageAnalyzer.__ptr_, v15, a4);
  v17 = [VNValidationUtilities originatingRequestSpecifierInOptions:v13 error:a8];
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
    v22 = v13;
    v23 = v17;
    v25 = a6;
    v18 = _Block_copy(aBlock);
    if (VNExecuteBlock(v18, a8))
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

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = [(VNDetector *)self validatedImageBufferFromOptions:v17 error:a8];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 width];
    v22 = [v20 height];
    v42 = 0;
    v23 = v17;
    if (self && [VNValidationUtilities getNSUIntegerValue:&v42 forKey:@"VNDetectorProcessOption_ImageCropAndScaleOption" inOptions:v23 withDefaultValue:[(VNImageAnalyzerBasedDetector *)self defaultImageCropAndScaleOption] error:a8])
    {
      v24 = v21;
      v25 = v22;
      v26 = width * v21;
      v27 = height * v22;
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
        v29 = height * v22;
      }

      else
      {
        v29 = width * v21;
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

        VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v18, v28);
      }

      v32 = objc_opt_class();
      v33 = [(VNDetector *)self configurationOptions];
      v34 = [v32 analysisPixelFormatTypeForConfiguration:v33];

      [v23 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
      v35 = self->_networkRequiredInputImageSize.width;
      v36 = self->_networkRequiredInputImageSize.height;
      v41 = 0;
      v37 = [v20 cropAndScaleBufferWithWidth:v35 height:v36 cropRect:v34 format:v42 imageCropAndScaleOption:v23 options:a8 error:x * v24 calculatedNormalizedOriginOffset:y * v25 calculatedScaleX:v26 calculatedScaleY:v27 pixelBufferRepsCacheKey:{0, 0, 0, &v41}];
      v38 = v41;
      *a7 = v37;
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

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v15 = *&a3;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  if ([(VNImageAnalyzerBasedDetector *)self analysisTypesForProcessOptions:v17])
  {
    v22.receiver = self;
    v22.super_class = VNImageAnalyzerBasedDetector;
    v20 = [(VNDetector *)&v22 internalProcessUsingQualityOfServiceClass:v15 options:v17 regionOfInterest:v18 warningRecorder:a7 error:v19 progressHandler:x, y, width, height];
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  return v20;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = VNImageAnalyzerBasedDetector;
  v7 = [(VNDetector *)&v19 completeInitializationForSession:v6 error:a4];
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
    v9 = [(VNDetector *)self configurationOptions];
    v10 = objc_opt_class();
    v11 = [v10 modelPathForConfiguration:v9 error:a4];
    if (!v11)
    {
      goto LABEL_18;
    }

    if ([v10 providesSceneLabelsForConfiguration:v9])
    {
      v12 = [v10 sceneLabelsFilePathForConfiguration:v9 error:a4];
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
    }

    if ([v10 providesSegmentationLabelsForConfiguration:v9])
    {
      v13 = [v10 segmentationLabelsFilePathForConfiguration:v9 error:a4];
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
    if ([(VNImageAnalyzerBasedDetector *)self configureImageAnalyzerOptions:&__str error:a4])
    {
      v21 = 8576;
      v14 = [v11 UTF8String];
      v15 = [v12 UTF8String];
      v16 = [v13 UTF8String];
      vision::mod::ImageAnalyzer::createImageAnalyzer(&v20, &v21, v14, v15, 0, v16, 0, 0, &__str, v18, v19.receiver);
    }

    vision::mod::ImageAnalyzer_Options::~ImageAnalyzer_Options(&__str);

    goto LABEL_17;
  }

LABEL_19:

  return 0;
}

- (id)observationsForSceneLabelsFromLastAnalysisOfImageAnalyzer:(void *)a3 identifierAcceptingBlock:(id)a4 operationPointsProvider:(id)a5 originatingRequestSpecifier:(id)a6 qosClass:(unsigned int)a7 error:(id *)a8
{
  v13 = a4;
  v14 = a5;
  v37 = a6;
  if (([(VNImageAnalyzerBasedDetector *)self _validateProvidesSceneLabelsAndReturnError:a8]& 1) == 0)
  {
    v17 = 0;
    goto LABEL_31;
  }

  *v41 = 0u;
  *v42 = 0u;
  v43 = 1065353216;
  vision::mod::ImageAnalyzer::getSceneLabelsConfidences(__p, 0.0, a3);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__move_assign(v41, __p);
  std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::__deallocate_node(__p[2]);
  v15 = __p[0];
  __p[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  if (!v14)
  {
    v16 = 0;
    goto LABEL_9;
  }

  v16 = [v14 operationPointsAndReturnError:a8];
  if (v16)
  {
LABEL_9:
    v36 = v14;
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
        if (_isAcceptableRecognizedObjectIdentifier(v24, v13))
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
          v30 = [(VNClassificationObservation *)v28 initWithOriginatingRequestSpecifier:v37 identifier:v24 confidence:v26 classificationMetrics:v29];
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

    v14 = v36;
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
    v5 = [v3 configurationOptions];
    LOBYTE(v4) = [v4 providesSceneLabelsForConfiguration:v5];

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

- (id)supportedClassificationIdentifiersAcceptedByBlock:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (([(VNImageAnalyzerBasedDetector *)self _validateProvidesSceneLabelsAndReturnError:a4]& 1) != 0)
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
            if (_isAcceptableRecognizedObjectIdentifier(v15, v6))
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

- (id)observationsForLastAnalysisOfImageAnalyzer:(void *)a3 processOptions:(id)a4 originatingRequestSpecifier:(id)a5 qosClass:(unsigned int)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = [VNError errorForUnimplementedMethod:a2 ofObject:self, a5, *&a6];
  }

  return 0;
}

- (BOOL)configureImageAnalyzerOptions:(void *)a3 error:(id *)a4
{
  v6 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:a4];
  if (v6)
  {
    v7 = [(VNDetector *)self configurationOptions];
    v8 = objc_opt_class();
    *(a3 + 9) = [VNEspressoHelpers espressoDeviceIDForComputeDevice:v6];
    *(a3 + 8) = [VNEspressoHelpers espressoStorageTypeForComputeDevice:v6];
    *(a3 + 6) = [VNEspressoHelpers espressoEngineForComputeDevice:v6];
    *(a3 + 7) = 0;
    *(a3 + 385) = 1;
    v9 = [v8 modelPathForConfiguration:v7 error:0];
    v10 = [v9 lastPathComponent];
    v11 = [v10 stringByDeletingPathExtension];
    std::string::__assign_external(a3, [v11 UTF8String]);

    v12 = [v8 analysisPixelFormatTypeForConfiguration:v7];
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
          *(a3 + 10) = v13;
          v14 = [v8 inputImageBlobNameForConfiguration:v7];
          std::string::__assign_external(a3 + 2, [v14 UTF8String]);

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