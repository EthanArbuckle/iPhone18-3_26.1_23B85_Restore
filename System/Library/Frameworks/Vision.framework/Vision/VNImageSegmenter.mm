@interface VNImageSegmenter
+ (BOOL)modelFullyANEResident;
+ (id)E5RTProgramLibraryForConfigurationOptions:(id)options error:(id *)error;
+ (id)_observationFeatureNameToSegmenterCategoryMappingsForOriginatingRequestSpecifier:(id)specifier error:(id *)error;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error;
+ (id)modelDropRevisionForConfigurationOptions:(id)options error:(id *)error;
+ (id)modelURLForConfigurationOptions:(id)options error:(id *)error;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedFeaturesForOptions:(id)options error:(id *)error;
+ (id)supportedOutputPixelFormatsForOptions:(id)options error:(id *)error;
- (BOOL)_addInstanceMaskBuffersForCategory:(id)category instanceFeatures:(id)features toInstanceMaskArray:(id)array connectedComponentResult:(const void *)result featureInstanceMaskMap:(id)map categoryInstanceMaskMap:(id)maskMap options:(id)options session:(id)self0 error:(id *)self1;
- (BOOL)_instanceMask:(__CVBuffer *)mask containsTargetPoints:(id)points;
- (BOOL)_validatePoints:(id)points error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (__CVBuffer)_createPixelBufferOfFormat:(unsigned int)format fromImageBuffer:(vImage_Buffer *)buffer ofType:(int)type options:(id)options session:(id)session error:(id *)error;
- (__CVBuffer)_createPixelBufferOfFormat:(unsigned int)format fromSegmenter:(id)segmenter instanceFeatures:(id)features category:(int)category options:(id)options session:(id)session error:(id *)error;
- (__CVBuffer)_createPixelBufferOfFormat:(unsigned int)format fromSegmenter:(id)segmenter instanceFeatures:(id)features options:(id)options session:(id)session error:(id *)error;
- (__CVBuffer)createAllInstancesMaskFromForegroundCC:(const void *)c backgroundCC:(const void *)cC options:(id)options session:(id)session error:(id *)error;
- (id)_observationsFromSegmenter:(id)segmenter instanceFeatures:(id)features originatingRequestSpecifier:(id)specifier options:(id)options maskPixelFormatType:(unsigned int)type session:(id)session error:(id *)error;
- (id)newE5RTExecutionInputsForFunctionDescriptor:(id)descriptor croppedPixelBuffer:(__CVBuffer *)buffer options:(id)options error:(id *)error;
- (id)observationsFromE5RTExecutionOutputs:(id)outputs forFunctionDescriptor:(id)descriptor originatingRequestSpecifier:(id)specifier options:(id)options error:(id *)error;
- (vector<float,)_oneDimensionalArrayFromInputVNPointArray:(VNImageSegmenter *)self;
@end

@implementation VNImageSegmenter

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v6 = [self E5RTProgramLibraryForConfigurationOptions:? error:?];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 functionNamed:@"main" error:error];
    v9 = [v8 descriptorOfClass:objc_opt_class() forInput:@"input" error:error];
    v24 = v9;
    if (v9)
    {
      v26[0] = v9;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (i = 0; [&unk_1F19C2128 count] > i; ++i)
      {
        v12 = objc_opt_class();
        v13 = [&unk_1F19C2128 objectAtIndexedSubscript:i];
        v14 = [v8 descriptorOfClass:v12 forInput:v13 error:error];

        if (!v14)
        {
          v15 = 0;
          goto LABEL_17;
        }

        [v10 addObject:v14];
      }

      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (j = 0; ; ++j)
      {
        if ([&unk_1F19C2140 count] <= j)
        {
          v21 = [objc_alloc(MEMORY[0x1E69DF970]) initWithMajor:1];
          v15 = [objc_alloc(MEMORY[0x1E69DF8E0]) initWithFunction:v8 inputDescriptors:v10 inputImageDescriptors:v23 outputDescriptors:v16 confidencesOutputDescriptors:0 networkVersion:v21];

          goto LABEL_16;
        }

        v18 = objc_opt_class();
        v19 = [&unk_1F19C2140 objectAtIndexedSubscript:j];
        v20 = [v8 descriptorOfClass:v18 forOutput:v19 error:error];

        if (!v20)
        {
          break;
        }

        [v16 addObject:v20];
      }

      v15 = 0;
LABEL_16:

LABEL_17:
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)E5RTProgramLibraryForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [self modelURLForConfigurationOptions:optionsCopy error:error];
  v8 = [self modelDropRevisionForConfigurationOptions:optionsCopy error:0];
  [v8 floatValue];
  v24 = v9;
  VNValidatedLog(1, @"segmentation model : %@ MD%f", v10, v11, v12, v13, v14, v15, v7);

  if (!v7)
  {
    goto LABEL_13;
  }

  if ([MEMORY[0x1E69DF8F0] isProgramLibraryAtURL:v7])
  {
    v16 = [MEMORY[0x1E69DF8F0] programLibraryForURL:v7 error:error];
    goto LABEL_18;
  }

  if ([MEMORY[0x1E69DF8E8] isModelSourceURL:v7])
  {
    v17 = [MEMORY[0x1E69DF8E8] modelSourceFromURL:v7 error:error];
    if (v17)
    {
      v18 = [self E5RTProgramLibraryCompilationOptionsForModelSource:v17 configurationOptions:optionsCopy error:error];
      v19 = VNANEArchitectureName();
      v20 = VNANEGenerationNumberForArchitectureName(v19, error);

      if (!v20)
      {
        goto LABEL_14;
      }

      if ([v20 integerValue] <= 0xD)
      {
        [v18 setCustomCompilationOptions:@"MemCacheStrategy=None"];
      }

      if (v18)
      {
        v16 = [MEMORY[0x1E69DF8F0] compileModelSource:v17 options:v18 error:error];
      }

      else
      {
LABEL_14:
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_17;
  }

  if (!error)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_18;
  }

  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  path = [v7 path];
  v17 = [v21 initWithFormat:@"Could not open program library for %@", path, *&v24];

  [VNError errorForInvalidArgumentWithLocalizedDescription:v17];
  *error = v16 = 0;
LABEL_17:

LABEL_18:

  return v16;
}

+ (id)modelDropRevisionForConfigurationOptions:(id)options error:(id *)error
{
  v5 = objc_alloc_init(VNModelCatalogBridgingInterface);
  v6 = [(VNModelCatalogBridgingInterface *)v5 foregroundBackgroundSegmentationModelBundleURLWithError:error];
  v7 = v6;
  if (!v6)
  {
    v20 = 0;
    goto LABEL_23;
  }

  v8 = [v6 URLByAppendingPathComponent:@"metadata.json"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v8 path];
  v11 = [defaultManager fileExistsAtPath:path];

  if ((v11 & 1) == 0)
  {
    if (error)
    {
      [VNError errorForMissingOptionNamed:@"metadata.json missing in .mlmodelc bundle "];
      *error = v20 = 0;
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_22;
  }

  v12 = MEMORY[0x1E695DEF0];
  path2 = [v8 path];
  v14 = [v12 dataWithContentsOfFile:path2 options:1 error:error];

  if (v14)
  {
    v15 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v14 options:1 error:error];
    if (!v15)
    {
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [v15 firstObject];
      v17 = [firstObject objectForKeyedSubscript:@"foregroundbackgroundsegmenter"];
      v18 = [v17 objectForKeyedSubscript:@"version"];

      if (v18)
      {
        v19 = objc_alloc_init(MEMORY[0x1E696ADA0]);
        [v19 setNumberStyle:1];
        v20 = [v19 numberFromString:v18];
      }

      else if (error)
      {
        [VNError errorForMissingOptionNamed:@"version missing"];
        *error = v20 = 0;
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_20;
    }

    if (error)
    {
      [VNError errorForInvalidFormatErrorWithLocalizedDescription:@"metadata.json is not formatted correctly"];
      *error = v20 = 0;
    }

    else
    {
LABEL_15:
      v20 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  v20 = 0;
LABEL_21:

LABEL_22:
LABEL_23:

  return v20;
}

+ (id)modelURLForConfigurationOptions:(id)options error:(id *)error
{
  v5 = objc_alloc_init(VNModelCatalogBridgingInterface);
  v6 = [(VNModelCatalogBridgingInterface *)v5 foregroundBackgroundSegmentationModelBundleURLWithError:error];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 URLByAppendingPathComponent:@"foregroundbackgroundsegmenter.mlmodelc"];
    v9 = [v8 URLByAppendingPathComponent:@"model.specialization.bundle"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  error = [VNComputeDeviceUtilities computeDevicesOfTypes:4, error];
  v8[0] = error;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)supportedFeaturesForOptions:(id)options error:(id *)error
{
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:options error:?];
  if (v6)
  {
    v7 = [self _observationFeatureNameToSegmenterCategoryMappingsForOriginatingRequestSpecifier:v6 error:error];
    v8 = v7;
    if (v7)
    {
      allKeys = [v7 allKeys];
    }

    else
    {
      allKeys = 0;
    }
  }

  else
  {
    allKeys = 0;
  }

  return allKeys;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VNImageSegmenter_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNImageSegmenter configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNImageSegmenter configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNImageSegmenter configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __57__VNImageSegmenter_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNImageSegmenter;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  v3 = [v2 copy];
  v4 = +[VNImageSegmenter configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNImageSegmenter configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedOutputPixelFormatsForOptions:(id)options error:(id *)error
{
  if (+[VNImageSegmenter supportedOutputPixelFormatsForOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNImageSegmenter supportedOutputPixelFormatsForOptions:error:]::onceToken, &__block_literal_global_30563);
  }

  v5 = +[VNImageSegmenter supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats;

  return v5;
}

void __64__VNImageSegmenter_supportedOutputPixelFormatsForOptions_error___block_invoke()
{
  v0 = +[VNImageSegmenter supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats;
  +[VNImageSegmenter supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats = &unk_1F19C2110;
}

+ (id)_observationFeatureNameToSegmenterCategoryMappingsForOriginatingRequestSpecifier:(id)specifier error:(id *)error
{
  v9[2] = *MEMORY[0x1E69E9840];
  specifierCopy = specifier;
  if ([specifierCopy specifiesRequestClass:objc_opt_class()] && objc_msgSend(specifierCopy, "requestRevision") == 1)
  {
    v8[0] = @"VNImageSegmentationFeatureForeground";
    v8[1] = @"VNImageSegmentationFeatureBackground";
    v9[0] = &unk_1F19C19D8;
    v9[1] = &unk_1F19C19F0;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  else if (error)
  {
    [VNError errorForUnsupportedRequestSpecifier:specifierCopy];
    *error = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)modelFullyANEResident
{
  v2 = VNANEArchitectureName();
  v3 = VNANEGenerationNumberForArchitectureName(v2, 0);

  if (v3)
  {
    v4 = [v3 integerValue] != 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (vector<float,)_oneDimensionalArrayFromInputVNPointArray:(VNImageSegmenter *)self
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v19 = -1082130432;
  std::vector<float>::vector[abi:ne200100](retstr, 0x400uLL);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (v8 < (retstr->__end_ - retstr->__begin_))
        {
          v11 = *(*(&v15 + 1) + 8 * i);
          [v11 x];
          *&v12 = v12;
          retstr->__begin_[2 * v8] = *&v12;
          [v11 y];
          *&v13 = v13;
          retstr->__begin_[2 * v8++ + 1] = 1.0 - *&v13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  return result;
}

- (BOOL)_validatePoints:(id)points error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  if ([pointsCopy count] < 0x201)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = pointsCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = *v22;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          [v11 x];
          v13 = v12;
          [v11 y];
          v27.y = v14;
          v28.origin.x = 0.0;
          v28.origin.y = 0.0;
          v28.size.width = 1.0;
          v28.size.height = 1.0;
          v27.x = v13;
          if (!CGRectContainsPoint(v28, v27))
          {
            if (error)
            {
              v15 = MEMORY[0x1E696AEC0];
              [v11 x];
              v17 = v16;
              [v11 y];
              v19 = [v15 stringWithFormat:@" pointOfInterest value is out of bounds: %f, %f", v17, v18, v21];
              *error = [VNError errorWithCode:4 message:v19];

              LOBYTE(error) = 0;
            }

            goto LABEL_15;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    LOBYTE(error) = 1;
LABEL_15:
  }

  else if (error)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"target points array contains more than maximum allowed quantity of %lu", 512];
    *error = [VNError errorWithCode:4 message:v6];

    LOBYTE(error) = 0;
  }

  return error;
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
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v20, "width")}];
    [optionsCopy setObject:v23 forKey:@"inputSizeWidth"];

    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v20, "height")}];
    [optionsCopy setObject:v24 forKey:@"inputSizeHeight"];

    configuration = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter configuration];
    [configuration inputSize];
    v28 = v26;
    v29 = v27;
    v30 = width;
    v31 = width * width;
    v32 = height;
    v33 = height * height;
    if (v26 >= v27)
    {
      v26 = v27;
    }

    if (v31 >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v31;
    }

    if (v34 < v26)
    {
      if (v30 >= v32)
      {
        v35 = v32;
      }

      else
      {
        v35 = v30;
      }

      if (v35 > 0.0)
      {
        v26 = v26 / v35;
      }

      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, v26);
    }

    [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    v47 = 0.0;
    v48 = 0.0;
    v46 = *MEMORY[0x1E695EFF8];
    v45 = 0;
    v36 = [v20 cropAndScaleBufferWithWidth:v28 height:v29 cropRect:1111970369 format:1 imageCropAndScaleOption:optionsCopy options:error error:x * width calculatedNormalizedOriginOffset:y * height calculatedScaleX:v31 calculatedScaleY:v33 pixelBufferRepsCacheKey:{&v46, &v48, &v47, &v45}];
    v37 = v45;
    *buffer = v36;
    v38 = [MEMORY[0x1E696AD98] numberWithDouble:*&v46];
    [optionsCopy setObject:v38 forKey:@"normOrigOffsetX"];

    v39 = [MEMORY[0x1E696AD98] numberWithDouble:*(&v46 + 1)];
    [optionsCopy setObject:v39 forKey:@"normOrigOffsetY"];

    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
    [optionsCopy setObject:v40 forKey:@"scaleX"];

    v41 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
    [optionsCopy setObject:v41 forKey:@"scaleY"];

    v42 = *buffer;
    v43 = *buffer != 0;
    if (v42)
    {
      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:optionsCopy cacheKey:v37 imageBuffer:v20];
    }
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (id)observationsFromE5RTExecutionOutputs:(id)outputs forFunctionDescriptor:(id)descriptor originatingRequestSpecifier:(id)specifier options:(id)options error:(id *)error
{
  outputsCopy = outputs;
  descriptorCopy = descriptor;
  specifierCopy = specifier;
  optionsCopy = options;
  v16 = [VNValidationUtilities requiredSessionInOptions:optionsCopy error:error];
  if (v16)
  {
    v49 = 0;
    v17 = [VNValidationUtilities getOptionalArray:&v49 forKey:@"targetPts" inOptions:optionsCopy withElementsOfClass:objc_opt_class() error:error];
    v18 = v49;
    v19 = v18;
    if (v17)
    {
      v43 = descriptorCopy;
      v44 = outputsCopy;
      v47 = specifierCopy;
      v45 = optionsCopy;
      v20 = [v18 count];
      v42 = v19;
      [(VNImageSegmenter *)self _oneDimensionalArrayFromInputVNPointArray:v19];
      if (v20 < 1)
      {
        v46 = 0;
      }

      else
      {
        LODWORD(v22) = *__p;
        v46 = 1;
        LODWORD(v21) = -1.0;
        if (*__p == -1.0)
        {
          LODWORD(v22) = __p[1];
          if (*&v22 == -1.0)
          {
            v23 = 0;
            v24 = (__p + 3);
            while ((v20 & 0x7FFFFFFF) - 1 != v23)
            {
              *&v22 = *(v24 - 1);
              v25 = *v24;
              v24 += 2;
              ++v23;
              if (*&v22 != -1.0 || v25 != -1.0)
              {
                goto LABEL_17;
              }
            }

            v23 = v20 & 0x7FFFFFFF;
LABEL_17:
            v46 = v23 < (v20 & 0x7FFFFFFFu);
          }
        }
      }

      v41 = [optionsCopy objectForKeyedSubscript:{@"minMask", v21, v22}];
      self->_minimumMaskPixelCount = [v41 unsignedIntegerValue];
      v28 = [[VNFgBgE5MLOutputs alloc] initWithOutputs:outputsCopy descriptor:descriptorCopy];
      fgbgInstanceSegmenter = self->_fgbgInstanceSegmenter;
      segments = [(VNFgBgE5MLOutputs *)v28 segments];
      predictionMiyoshiConfidence = [(VNFgBgE5MLOutputs *)v28 predictionMiyoshiConfidence];
      predictionCocoConfidence = [(VNFgBgE5MLOutputs *)v28 predictionCocoConfidence];
      predictionIoU = [(VNFgBgE5MLOutputs *)v28 predictionIoU];
      stabilityScore = [(VNFgBgE5MLOutputs *)v28 stabilityScore];
      decodeMatch = [(VNFgBgE5MLOutputs *)v28 decodeMatch];
      LOBYTE(v38) = v46;
      LOBYTE(v37) = 0;
      v34 = predictionMiyoshiConfidence;
      v35 = [(VNFgBgE5MLInstanceSegmenter *)fgbgInstanceSegmenter composeInstanceFeatures:segments miyoshiConfidence:predictionMiyoshiConfidence cocoConfidence:predictionCocoConfidence predictionIoU:predictionIoU stabilityScore:stabilityScore decodeMatch:decodeMatch isRotated:v37 minimumMaskPixelCount:self->_minimumMaskPixelCount useInteractive:v38];

      if (v35)
      {
        optionsCopy = v45;
        v27 = [(VNImageSegmenter *)self _observationsFromSegmenter:self->_fgbgInstanceSegmenter instanceFeatures:v35 originatingRequestSpecifier:v47 options:v45 maskPixelFormatType:0 session:v16 error:error];
      }

      else
      {
        v27 = 0;
        optionsCopy = v45;
      }

      if (__p)
      {
        operator delete(__p);
      }

      descriptorCopy = v43;
      outputsCopy = v44;
      specifierCopy = v47;
      v19 = v42;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)newE5RTExecutionInputsForFunctionDescriptor:(id)descriptor croppedPixelBuffer:(__CVBuffer *)buffer options:(id)options error:(id *)error
{
  descriptorCopy = descriptor;
  optionsCopy = options;
  v42 = 0;
  v10 = [VNValidationUtilities getOptionalArray:&v42 forKey:@"targetPts" inOptions:optionsCopy withElementsOfClass:objc_opt_class() error:error];
  v11 = v42;
  v12 = v11;
  if (v10 && (![v11 count] || -[VNImageSegmenter _validatePoints:error:](self, "_validatePoints:error:", v12, error)))
  {
    if ([v12 count])
    {
      [(VNImageSegmenter *)self _oneDimensionalArrayFromInputVNPointArray:v12];
      v35 = [VNFgBgE5MLInputTensors alloc];
      configuration = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter configuration];
      queryNumber = [configuration queryNumber];
      configuration2 = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter configuration];
      maxSpatialLength = [configuration2 maxSpatialLength];
      configuration3 = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter configuration];
      [configuration3 inputSize];
      v18 = v17;
      v20 = v19;
      configuration4 = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter configuration];
      v22 = -[VNFgBgE5MLInputTensors initWithTargetPointList:queryNumber:maxSpatialLength:inputSize:radius:error:](v35, "initWithTargetPointList:queryNumber:maxSpatialLength:inputSize:radius:error:", __p, queryNumber, maxSpatialLength, [configuration4 radius], error, v18, v20);

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v36 = [VNFgBgE5MLInputTensors alloc];
      configuration5 = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter configuration];
      queryNumber2 = [configuration5 queryNumber];
      configuration6 = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter configuration];
      maxSpatialLength2 = [configuration6 maxSpatialLength];
      configuration7 = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter configuration];
      [configuration7 inputSize];
      v29 = v28;
      v31 = v30;
      configuration8 = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter configuration];
      v22 = -[VNFgBgE5MLInputTensors initWithTargetPoint:queryNumber:maxSpatialLength:inputSize:radius:error:](v36, "initWithTargetPoint:queryNumber:maxSpatialLength:inputSize:radius:error:", queryNumber2, maxSpatialLength2, [configuration8 radius], error, -1.0, -1.0, v29, v31);
    }

    process = [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter process];
    v23 = [process newInputsForFunctionDescriptor:descriptorCopy inputSurfaces:v22 croppedPixelBuffer:buffer error:error];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v16.receiver = self;
  v16.super_class = VNImageSegmenter;
  if (![(VNE5RTBasedDetector *)&v16 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  configurationOptions = [(VNDetector *)self configurationOptions];
  v7 = [VNValidationUtilities originatingRequestSpecifierInOptions:configurationOptions error:error];

  v8 = +[VNFgBgE5MLInstanceSegmenter instanceSegmenterWithRevision:error:](VNFgBgE5MLInstanceSegmenter, "instanceSegmenterWithRevision:error:", [v7 requestRevision], error);
  fgbgInstanceSegmenter = self->_fgbgInstanceSegmenter;
  self->_fgbgInstanceSegmenter = v8;

  v10 = self->_fgbgInstanceSegmenter;
  v11 = v10 != 0;
  if (v10)
  {
    configuration = [(VNFgBgE5MLInstanceSegmenter *)v10 configuration];
    thresholds = [configuration thresholds];
    [thresholds defaultValidMinimumMaskPixelCount];
    self->_minimumMaskPixelCount = v14;
  }

  return v11;
}

- (BOOL)_instanceMask:(__CVBuffer *)mask containsTargetPoints:(id)points
{
  v33 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  Width = CVPixelBufferGetWidth(mask);
  Height = CVPixelBufferGetHeight(mask);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = pointsCopy;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v8)
  {
    LOBYTE(v9) = 0;
    goto LABEL_26;
  }

  v9 = 0;
  v10 = *v29;
  while (2)
  {
    v26 = v9;
    for (i = 0; i != v8; ++i)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      [v12 x];
      [v12 y];
      CVPixelBufferGetWidth(mask);
      CVPixelBufferGetHeight(mask);
      VisionCoreImagePointForNormalizedPoint();
      v14 = v13;
      v16 = v15;
      v17 = CVPixelBufferGetHeight(mask);
      v18 = v14;
      if ((v18 & 0x80000000) != 0 || (v19 = (v17 - v16), (v19 & 0x80000000) != 0) || (Width > v18 ? (v20 = Height > v19) : (v20 = 0), !v20))
      {

        goto LABEL_24;
      }

      CVPixelBufferLockBaseAddress(mask, 1uLL);
      PixelFormatType = CVPixelBufferGetPixelFormatType(mask);
      BytesPerRow = CVPixelBufferGetBytesPerRow(mask);
      if (PixelFormatType == 1278226534)
      {
        if (*(CVPixelBufferGetBaseAddress(mask) + ((BytesPerRow >> 2) * v19) + v18) != 0.0)
        {
          goto LABEL_16;
        }
      }

      else if (PixelFormatType == 1278226488 && *(CVPixelBufferGetBaseAddress(mask) + BytesPerRow * v19 + v18))
      {
LABEL_16:
        v23 = 0;
        v24 = 1;
        v26 = 1;
        goto LABEL_19;
      }

      v24 = 0;
      v23 = 1;
LABEL_19:
      CVPixelBufferUnlockBaseAddress(mask, 1uLL);
      if (!v23)
      {

        LOBYTE(v9) = v26;
        if (v24)
        {
          goto LABEL_28;
        }

LABEL_24:
        LOBYTE(v9) = 0;
        goto LABEL_28;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    v9 = v26;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_26:

LABEL_28:
  return v9 & 1;
}

- (id)_observationsFromSegmenter:(id)segmenter instanceFeatures:(id)features originatingRequestSpecifier:(id)specifier options:(id)options maskPixelFormatType:(unsigned int)type session:(id)session error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  segmenterCopy = segmenter;
  featuresCopy = features;
  specifierCopy = specifier;
  optionsCopy = options;
  sessionCopy = session;
  v53 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [optionsCopy objectForKeyedSubscript:@"disableCCRefinement"];
  bOOLValue = [v15 BOOLValue];

  v72 = 0;
  if (![VNValidationUtilities getBOOLValue:&v72 forKey:@"fillMaskGaps" inOptions:optionsCopy withDefaultValue:0 error:error])
  {
    v19 = 0;
    v44 = 0;
    goto LABEL_44;
  }

  v71 = 0;
  v17 = [VNValidationUtilities getOptionalArray:&v71 forKey:@"targetPts" inOptions:optionsCopy withElementsOfClass:objc_opt_class() error:error];
  v18 = v71;
  v50 = v18;
  if (v17)
  {
    v48 = [v18 count];
    if ((bOOLValue & 1) == 0)
    {
      v70 = 0;
      *v68 = 0u;
      v69 = 0u;
      fgbgInstanceSegmenter = self->_fgbgInstanceSegmenter;
      intValue = [&unk_1F19C19D8 intValue];
      if (fgbgInstanceSegmenter)
      {
        [(VNFgBgE5MLInstanceSegmenter *)fgbgInstanceSegmenter generateMaskFromInstanceFeatures:featuresCopy toCategory:intValue drawBox:0 maskImageType:&v70];
      }

      else
      {
        *v68 = 0u;
        v69 = 0u;
      }

      *v66 = 0u;
      v67 = 0u;
      v40 = self->_fgbgInstanceSegmenter;
      intValue2 = [&unk_1F19C19F0 intValue];
      if (v40)
      {
        [(VNFgBgE5MLInstanceSegmenter *)v40 generateMaskFromInstanceFeatures:featuresCopy toCategory:intValue2 drawBox:0 maskImageType:&v70];
      }

      else
      {
        *v66 = 0u;
        v67 = 0u;
      }

      apple::vision::fgbg::ConnectedComponentResult::ConnectedComponentResult(&v65, 0, 0, 0, 0, 0);
    }

    selfCopy = self;
    LODWORD(v65) = 0;
    if ([VNValidationUtilities getOSTypeValue:&v65 forKey:@"VNImageSegmenterProcessOption_OutputPixelFormat" inOptions:optionsCopy withDefaultValue:1278226534 error:error])
    {
      if ([(VNImageSegmenter *)self _validateSegmentationOutputFormat:v65])
      {
        v19 = [(VNImageSegmenter *)self _createPixelBufferOfFormat:v65 fromSegmenter:segmenterCopy instanceFeatures:featuresCopy options:optionsCopy session:sessionCopy error:error];
        if (v19)
        {
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          obj = featuresCopy;
          v20 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
          if (v20)
          {
            v47 = *v61;
            while (2)
            {
              v46 = v20;
              for (i = 0; i != v46; ++i)
              {
                if (*v61 != v47)
                {
                  objc_enumerationMutation(obj);
                }

                v22 = *(*(&v60 + 1) + 8 * i);
                miyoshiCategoryName = [v22 miyoshiCategoryName];
                v24 = [miyoshiCategoryName isEqualToString:@"Foreground Object"];

                if (v24)
                {
                  [v58 addObject:@"VNImageSegmentationFeatureForeground"];
                }

                miyoshiCategoryName2 = [v22 miyoshiCategoryName];
                v26 = [miyoshiCategoryName2 isEqualToString:@"Background Object"];

                if (v26)
                {
                  [v58 addObject:@"VNImageSegmentationFeatureBackground"];
                }

                miyoshiCategoryName3 = [v22 miyoshiCategoryName];
                v28 = [miyoshiCategoryName3 isEqualToString:@"Scene Background"];
                if (v48)
                {
                  v29 = v28;
                }

                else
                {
                  v29 = 0;
                }

                if (v29)
                {
                  [v58 addObject:@"VNImageSegmentationFeatureBackground"];
                }

                v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
                cocoCategoryName = [v22 cocoCategoryName];
                v32 = [cocoCategoryName isEqualToString:@"shadow"];

                if (v32)
                {
                  [v30 addObject:@"VNImageSegmentationCategoryShadow"];
                }

                cocoCategoryName2 = [v22 cocoCategoryName];
                v34 = [cocoCategoryName2 isEqualToString:@"texture-other"];

                if (v34)
                {
                  [v30 addObject:@"VNImageSegmentationCategoryStrand"];
                }

                [v55 addObject:v30];
                LODWORD(v64) = 0;
                if (![VNValidationUtilities getOSTypeValue:&v64 forKey:@"VNImageSegmenterProcessOption_OutputPixelFormat" inOptions:optionsCopy withDefaultValue:1278226534 error:error])
                {
                  goto LABEL_49;
                }

                if (![(VNImageSegmenter *)selfCopy _validateSegmentationOutputFormat:v65])
                {
                  if (error)
                  {
                    *error = [VNError errorForInvalidOptionWithLocalizedDescription:@"Unsupported output format specified. Please use kCVPixelFormatType_OneComponent32Float or kCVPixelFormatType_OneComponent8"];
                  }

LABEL_49:

                  goto LABEL_42;
                }

                v35 = v64;
                v73 = v22;
                v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
                v37 = -[VNImageSegmenter _createPixelBufferOfFormat:fromSegmenter:instanceFeatures:category:options:session:error:](selfCopy, "_createPixelBufferOfFormat:fromSegmenter:instanceFeatures:category:options:session:error:", v35, segmenterCopy, v36, [v22 miyoshiCategory], optionsCopy, sessionCopy, error);

                if (!v37)
                {
                  goto LABEL_49;
                }

                [v56 addObject:v37];
              }

              v20 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          v43 = -[VNInstanceMaskObservation initWithOriginatingRequestSpecifier:instanceLowResMaskArray:instanceFeatureKeyIndexMap:instanceCategoryKeyIndexMap:instanceMask:numComponents:regionOfInterest:]([VNInstanceMaskObservation alloc], "initWithOriginatingRequestSpecifier:instanceLowResMaskArray:instanceFeatureKeyIndexMap:instanceCategoryKeyIndexMap:instanceMask:numComponents:regionOfInterest:", specifierCopy, v56, v58, v55, v19, [v56 count] + 1, 0.0, 0.0, 1.0, 1.0);
          [(VNObservation *)v43 setUUID:v53];
          [v52 addObject:v43];
          v44 = v52;

          goto LABEL_43;
        }
      }

      else if (error)
      {
        *error = [VNError errorForInvalidOptionWithLocalizedDescription:@"Unsupported output format specified. Please use kCVPixelFormatType_OneComponent32Float or kCVPixelFormatType_OneComponent8"];
      }
    }
  }

  v19 = 0;
LABEL_42:
  v44 = 0;
LABEL_43:

LABEL_44:
  CVPixelBufferRelease(v19);

  return v44;
}

- (BOOL)_addInstanceMaskBuffersForCategory:(id)category instanceFeatures:(id)features toInstanceMaskArray:(id)array connectedComponentResult:(const void *)result featureInstanceMaskMap:(id)map categoryInstanceMaskMap:(id)maskMap options:(id)options session:(id)self0 error:(id *)self1
{
  v87 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  featuresCopy = features;
  arrayCopy = array;
  mapCopy = map;
  maskMapCopy = maskMap;
  optionsCopy = options;
  sessionCopy = session;
  v65 = categoryCopy;
  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([categoryCopy isEqualToString:@"VNImageSegmentationFeatureForeground"])
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_118];
    v17 = [featuresCopy filteredArrayUsingPredicate:v16];
  }

  else if ([categoryCopy isEqualToString:@"VNImageSegmentationFeatureBackground"])
  {
    v16 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_120_30671];
    v17 = [featuresCopy filteredArrayUsingPredicate:v16];
  }

  else
  {
    if (![categoryCopy isEqualToString:@"VNImageSegmentationFeatureScene"])
    {
      goto LABEL_8;
    }

    v16 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_122];
    v17 = [featuresCopy filteredArrayUsingPredicate:v16];
  }

  v18 = v17;

  v69 = v18;
LABEL_8:
  v19 = *(result + 10);
  v63 = *(result + 11);
  if (v19 == v63)
  {
LABEL_51:
    v59 = 1;
  }

  else
  {
    while (1)
    {
      v76 = v19;
      v20 = **v19;
      v21 = (*v19)[1];
      v22 = v20;
      v23 = v21;
      if ((v22 & 0x80000000) != 0 || (v24 = *(result + 13), v24 <= v22) || (v23 & 0x80000000) != 0)
      {
        resultCopy3 = result;
        if (error)
        {
LABEL_52:
          v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Point (%i, %i) is out of the mask image bounds of %lu x %lu", v22, v23, *(result + 13), *(result + 14)];
          *error = [VNError errorWithCode:14 message:v60];

          goto LABEL_56;
        }

        v24 = *(result + 13);
      }

      else if (error)
      {
        resultCopy3 = result;
        if (*(result + 14) <= v23)
        {
          goto LABEL_52;
        }
      }

      else
      {
        resultCopy3 = result;
      }

      v26 = *(*resultCopy3 + 8 * (v20 + v21 * v24));
      *v84 = 0u;
      v85 = 0u;
      fgbgInstanceSegmenter = self->_fgbgInstanceSegmenter;
      if (fgbgInstanceSegmenter)
      {
        [VNFgBgE5MLInstanceSegmenter generateMaskForLabel:"generateMaskForLabel:fromConnectedComponents:error:" fromConnectedComponents:v26 error:?];
      }

      v83 = 0;
      if (![VNValidationUtilities getOSTypeValue:&v83 forKey:@"VNImageSegmenterProcessOption_OutputPixelFormat" inOptions:optionsCopy withDefaultValue:1278226534 error:error])
      {
        goto LABEL_56;
      }

      if (![(VNImageSegmenter *)self _validateSegmentationOutputFormat:v83])
      {
        break;
      }

      v82[0] = *v84;
      v82[1] = v85;
      v28 = [(VNImageSegmenter *)self _createPixelBufferOfFormat:v83 fromImageBuffer:v82 ofType:1 options:optionsCopy session:sessionCopy error:error];
      free(v84[0]);
      v84[0] = 0;
      if (!v28)
      {
        goto LABEL_56;
      }

      v81 = 0;
      v29 = [VNValidationUtilities getOptionalArray:&v81 forKey:@"targetPts" inOptions:optionsCopy withElementsOfClass:objc_opt_class() error:error];
      v30 = v81;
      v73 = v30;
      if (!v29)
      {
        CVPixelBufferRelease(v28);

        goto LABEL_56;
      }

      if (![v30 count] || -[VNImageSegmenter _instanceMask:containsTargetPoints:](self, "_instanceMask:containsTargetPoints:", v28, v73))
      {
        [arrayCopy addObject:v28];

        [mapCopy addObject:v65];
        v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        obj = v69;
        v32 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
        if (!v32)
        {
          goto LABEL_46;
        }

        v75 = *v78;
        while (1)
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v78 != v75)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v77 + 1) + 8 * i);
            [v34 bbox];
            v36 = v35;
            v38 = v37;
            v40 = v39;
            v42 = v41;
            [v34 mapSize];
            v44 = v43;
            [v34 mapSize];
            v46 = *v76;
            v47 = v76[1];
            if (*v76 == v47)
            {
              continue;
            }

            v48 = v45;
            v49 = v42 * v48;
            v50 = v38 * v48;
            v51 = v44;
            v52 = v40 * v51;
            v53 = v36 * v51;
            while (1)
            {
              v88.origin.x = v53;
              v88.origin.y = v50;
              v88.size.width = v52;
              v88.size.height = v49;
              if (CGRectContainsPoint(v88, *v46))
              {
                cocoCategoryName = [v34 cocoCategoryName];
                if ([cocoCategoryName isEqualToString:@"shadow"])
                {
                  v55 = [v31 containsObject:@"VNImageSegmentationCategoryShadow"];

                  if ((v55 & 1) == 0)
                  {
                    v58 = @"VNImageSegmentationCategoryShadow";
                    goto LABEL_43;
                  }
                }

                else
                {
                }

                cocoCategoryName2 = [v34 cocoCategoryName];
                if (![cocoCategoryName2 isEqualToString:@"texture-other"])
                {

                  goto LABEL_41;
                }

                v57 = [v31 containsObject:@"VNImageSegmentationCategoryStrand"];

                if ((v57 & 1) == 0)
                {
                  break;
                }
              }

LABEL_41:
              if (++v46 == v47)
              {
                goto LABEL_44;
              }
            }

            v58 = @"VNImageSegmentationCategoryStrand";
LABEL_43:
            [v31 addObject:v58];
LABEL_44:
            ;
          }

          v32 = [obj countByEnumeratingWithState:&v77 objects:v86 count:16];
          if (!v32)
          {
LABEL_46:

            [maskMapCopy addObject:v31];
            goto LABEL_48;
          }
        }
      }

      CVPixelBufferRelease(v28);
LABEL_48:

      v19 = v76 + 3;
      if (v76 + 3 == v63)
      {
        goto LABEL_51;
      }
    }

    if (error)
    {
      *error = [VNError errorForInvalidOptionWithLocalizedDescription:@"Unsupported output format specified. Please use kCVPixelFormatType_OneComponent32Float or kCVPixelFormatType_OneComponent8"];
    }

LABEL_56:
    v59 = 0;
  }

  return v59;
}

uint64_t __186__VNImageSegmenter__addInstanceMaskBuffersForCategory_instanceFeatures_toInstanceMaskArray_connectedComponentResult_featureInstanceMaskMap_categoryInstanceMaskMap_options_session_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 miyoshiCategoryName];
  v3 = [v2 isEqualToString:@"Scene Background"];

  return v3;
}

uint64_t __186__VNImageSegmenter__addInstanceMaskBuffersForCategory_instanceFeatures_toInstanceMaskArray_connectedComponentResult_featureInstanceMaskMap_categoryInstanceMaskMap_options_session_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 miyoshiCategoryName];
  v3 = [v2 isEqualToString:@"Background Object"];

  return v3;
}

uint64_t __186__VNImageSegmenter__addInstanceMaskBuffersForCategory_instanceFeatures_toInstanceMaskArray_connectedComponentResult_featureInstanceMaskMap_categoryInstanceMaskMap_options_session_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 miyoshiCategoryName];
  v3 = [v2 isEqualToString:@"Foreground Object"];

  return v3;
}

- (__CVBuffer)createAllInstancesMaskFromForegroundCC:(const void *)c backgroundCC:(const void *)cC options:(id)options session:(id)session error:(id *)error
{
  optionsCopy = options;
  sessionCopy = session;
  v14 = *(c + 13);
  v23[1] = *(c + 14);
  *&v24 = v14;
  *(&v24 + 1) = v14;
  v23[0] = malloc_type_calloc(v23[1] * v14, 1uLL, 0x100004077774924uLL);
  v15 = *(c + 10);
  for (i = *(c + 11); v15 != i; v15 += 24)
  {
    [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter modifyMask:v23 forLabel:*(*c + 8 * (**v15 + *(*v15 + 8) * *(c + 13))) fromConnectedComponents:c error:error];
  }

  v17 = *(cC + 10);
  for (j = *(cC + 11); v17 != j; v17 += 24)
  {
    [(VNFgBgE5MLInstanceSegmenter *)self->_fgbgInstanceSegmenter modifyMask:v23 forLabel:*(*cC + 8 * (**v17 + *(*v17 + 8) * *(cC + 13))) fromConnectedComponents:cC error:error];
  }

  v22 = 0;
  if (![VNValidationUtilities getOSTypeValue:&v22 forKey:@"VNImageSegmenterProcessOption_OutputPixelFormat" inOptions:optionsCopy withDefaultValue:1278226534 error:error])
  {
    goto LABEL_10;
  }

  if (![(VNImageSegmenter *)self _validateSegmentationOutputFormat:v22])
  {
    if (error)
    {
      [VNError errorForInvalidOptionWithLocalizedDescription:@"Unsupported output format specified. Please use kCVPixelFormatType_OneComponent32Float or kCVPixelFormatType_OneComponent8"];
      *error = v19 = 0;
      goto LABEL_11;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v21[0] = *v23;
  v21[1] = v24;
  v19 = [(VNImageSegmenter *)self _createPixelBufferOfFormat:v22 fromImageBuffer:v21 ofType:1 options:optionsCopy session:sessionCopy error:error];
  free(v23[0]);
LABEL_11:

  return v19;
}

- (__CVBuffer)_createPixelBufferOfFormat:(unsigned int)format fromSegmenter:(id)segmenter instanceFeatures:(id)features options:(id)options session:(id)session error:(id *)error
{
  v12 = *&format;
  segmenterCopy = segmenter;
  featuresCopy = features;
  optionsCopy = options;
  sessionCopy = session;
  v23 = 0;
  *v21 = 0u;
  v22 = 0u;
  if (segmenterCopy && ([segmenterCopy generateMaskForInstanceFeatures:featuresCopy maskImageType:&v23], v21[0]))
  {
    v20[0] = *v21;
    v20[1] = v22;
    error = [(VNImageSegmenter *)self _createPixelBufferOfFormat:v12 fromImageBuffer:v20 ofType:v23 options:optionsCopy session:sessionCopy error:error];
    free(v21[0]);
  }

  else if (error)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not create mask for all features"];
    *error = [VNError errorForOperationFailedErrorWithLocalizedDescription:v18];

    error = 0;
  }

  return error;
}

- (__CVBuffer)_createPixelBufferOfFormat:(unsigned int)format fromSegmenter:(id)segmenter instanceFeatures:(id)features category:(int)category options:(id)options session:(id)session error:(id *)error
{
  v11 = *&category;
  v13 = *&format;
  errorCopy = error;
  segmenterCopy = segmenter;
  featuresCopy = features;
  optionsCopy = options;
  sessionCopy = session;
  v25 = 0;
  *v23 = 0u;
  v24 = 0u;
  if (segmenterCopy && ([segmenterCopy generateMaskFromInstanceFeatures:featuresCopy toCategory:v11 drawBox:0 maskImageType:&v25], v23[0]))
  {
    v22[0] = *v23;
    v22[1] = v24;
    errorCopy = [(VNImageSegmenter *)self _createPixelBufferOfFormat:v13 fromImageBuffer:v22 ofType:v25 options:optionsCopy session:sessionCopy error:error];
    free(v23[0]);
  }

  else if (error)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"could not create mask for feature category %d", v11];
    *error = [VNError errorForOperationFailedErrorWithLocalizedDescription:v20];

    errorCopy = 0;
  }

  return errorCopy;
}

- (__CVBuffer)_createPixelBufferOfFormat:(unsigned int)format fromImageBuffer:(vImage_Buffer *)buffer ofType:(int)type options:(id)options session:(id)session error:(id *)error
{
  typeCopy = type;
  optionsCopy = options;
  sessionCopy = session;
  v38 = 0;
  DeepCopyCVPixelBufferFromVImageBuffer = ImageProcessing_createDeepCopyCVPixelBufferFromVImageBuffer(buffer, typeCopy, &v38);
  if (DeepCopyCVPixelBufferFromVImageBuffer)
  {
    v16 = DeepCopyCVPixelBufferFromVImageBuffer;
    if (CVPixelBufferGetPixelFormatType(DeepCopyCVPixelBufferFromVImageBuffer) == format)
    {
      v17 = CVPixelBufferRetain(v16);
    }

    else
    {
      v18 = [[VNImageBuffer alloc] initWithCVPixelBuffer:v16 orientation:1 options:0 session:sessionCopy];
      v19 = [optionsCopy objectForKey:@"scaleX"];
      [v19 doubleValue];
      v21 = v20;

      v22 = [optionsCopy objectForKey:@"scaleY"];
      [v22 doubleValue];
      v24 = v23;

      v25 = [optionsCopy objectForKey:@"normOrigOffsetX"];
      [v25 doubleValue];
      v27 = v26;

      v28 = [optionsCopy objectForKey:@"normOrigOffsetY"];
      [v28 doubleValue];
      v30 = v29;

      v31 = [optionsCopy objectForKey:@"inputSizeWidth"];
      [v31 doubleValue];
      v33 = v32;

      v34 = [optionsCopy objectForKey:@"inputSizeHeight"];
      [v34 doubleValue];
      v36 = v35;

      v17 = [VNImageBuffer croppedBufferWithWidth:v18 height:"croppedBufferWithWidth:height:format:cropRect:options:error:" format:(v27 * [(VNImageBuffer *)v18 width]) cropRect:(v30 * [(VNImageBuffer *)v18 height]) options:(v21 * v33) error:(v24 * v36)];
    }

    CVPixelBufferRelease(v16);
  }

  else if (error)
  {
    [VNError errorForOSStatus:v38 localizedDescription:@"could not create image pixel buffer"];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end