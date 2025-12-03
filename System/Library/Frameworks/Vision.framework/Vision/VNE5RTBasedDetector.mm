@interface VNE5RTBasedDetector
+ (CGRect)normalizedScaledFaceBoundingBox:(id)box;
+ (id)E5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error;
+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)source configurationOptions:(id)options error:(id *)error;
+ (id)E5RTProgramLibraryForConfigurationOptions:(id)options error:(id *)error;
+ (id)classificationIdentifiersForConfigurationOptions:(id)options error:(id *)error;
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error;
+ (id)modelURLForConfigurationOptions:(id)options error:(id *)error;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
+ (unint64_t)E5RTVisionCoreComputeDeviceForConfigurationOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session functionDescriptor:(id)descriptor error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (BOOL)imageCropAndScaleOption:(unint64_t *)option fromOptions:(id)options error:(id *)error;
- (id)_onlyInputImageDescriptorAndReturnError:(uint64_t)error;
- (id)newE5RTExecutionContextForFunctionDescriptor:(id)descriptor configurationOptions:(id)options error:(id *)error;
- (id)newE5RTExecutionInputsForFunctionDescriptor:(id)descriptor croppedPixelBuffer:(__CVBuffer *)buffer options:(id)options error:(id *)error;
- (id)observationsFromE5RTExecutionOutputs:(id)outputs forFunctionDescriptor:(id)descriptor originatingRequestSpecifier:(id)specifier options:(id)options error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNE5RTBasedDetector

- (BOOL)imageCropAndScaleOption:(unint64_t *)option fromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  [VNError VNAssert:option != 0 log:@"cropAndScaleOptionPointer cannot be NULL"];
  v12 = 0;
  v9 = optionsCopy;
  if (self && [VNValidationUtilities getNSUIntegerValue:&v12 forKey:@"VNDetectorProcessOption_ImageCropAndScaleOption" inOptions:v9 withDefaultValue:[(VNE5RTBasedDetector *)self defaultImageCropAndScaleOption] error:error])
  {
    if (v12 == 2)
    {
      v12 = 0;
    }

    *option = v12;
    v10 = 1;
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (v13)
  {
    v14 = [(VNE5RTBasedDetector *)self newE5RTExecutionInputsForFunctionDescriptor:self->_functionDescriptor croppedPixelBuffer:buffer options:optionsCopy error:error];
    if (v14)
    {
      v15 = [(VisionCoreE5RTExecutionContext *)self->_executionContext executeWithInputObjects:v14 error:error];
      if (v15)
      {
        v16 = [(VNE5RTBasedDetector *)self observationsFromE5RTExecutionOutputs:v15 forFunctionDescriptor:self->_functionDescriptor originatingRequestSpecifier:v13 options:optionsCopy error:error];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
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
    v56 = 0;
    v23 = [VNValidationUtilities getOptionalFaceObservation:&v56 inOptions:optionsCopy error:error];
    v24 = v56;
    v25 = v24;
    if (v23)
    {
      if (v24)
      {
        [objc_opt_class() normalizedScaledFaceBoundingBox:v24];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        width2 = [v20 width];
        height2 = [v20 height];
        LODWORD(v55) = -1;
        if (([v25 getFaceEXIFOrientation:&v55 error:error] & 1) == 0)
        {
          goto LABEL_25;
        }

        v36 = [MEMORY[0x1E696AD98] numberWithInt:v55];
        [optionsCopy setObject:v36 forKeyedSubscript:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight"];
        v37 = v27 * width2;
        v38 = v31 * width2;
        v39 = v29 * height2;
        v40 = v33 * height2;
      }

      else
      {
        v37 = x * width;
        v38 = width * width;
        v39 = y * height;
        v40 = height * height;
      }

      v55 = 0;
      if ([(VNE5RTBasedDetector *)self imageCropAndScaleOption:&v55 fromOptions:optionsCopy error:error])
      {
        v42 = [(VNE5RTBasedDetector *)self _onlyInputImageDescriptorAndReturnError:error];
        v43 = v42;
        if (v42)
        {
          pixelWidth = [v42 pixelWidth];
          pixelHeight = [v43 pixelHeight];
          v45 = pixelHeight;
          v46 = pixelWidth;
          if (pixelWidth >= pixelHeight)
          {
            v46 = pixelHeight;
          }

          if (v38 >= v40)
          {
            v47 = v40;
          }

          else
          {
            v47 = v38;
          }

          if (v47 < v46)
          {
            if (width >= height)
            {
              v48 = height;
            }

            else
            {
              v48 = width;
            }

            if (v48 <= 0.0)
            {
              v48 = 1.0;
            }

            VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, (v46 / v48));
          }

          [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
          pixelFormatType = [v43 pixelFormatType];
          v54 = 0;
          v50 = [v20 cropAndScaleBufferWithWidth:pixelWidth height:v45 cropRect:pixelFormatType format:v55 imageCropAndScaleOption:optionsCopy options:error error:v37 calculatedNormalizedOriginOffset:v39 calculatedScaleX:v38 calculatedScaleY:v40 pixelBufferRepsCacheKey:{0, 0, 0, &v54}];
          v51 = v54;
          *buffer = v50;
          v41 = v50 != 0;
          if (v50)
          {
            [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:optionsCopy cacheKey:v51 imageBuffer:v20];
          }
        }

        else
        {
          v41 = 0;
        }

        goto LABEL_26;
      }
    }

LABEL_25:
    v41 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v41 = 0;
LABEL_27:

  return v41;
}

- (id)_onlyInputImageDescriptorAndReturnError:(uint64_t)error
{
  if (error)
  {
    onlyInputImage = [*(error + 56) onlyInputImage];
    v4 = onlyInputImage;
    if (onlyInputImage)
    {
      v5 = onlyInputImage;
    }

    else if (a2)
    {
      v6 = objc_alloc(MEMORY[0x1E696AEC0]);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 initWithFormat:@"%@ does not have a single input image", v8];

      *a2 = [VNError errorForInvalidOperationWithLocalizedDescription:v9];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)completeInitializationForSession:(id)session functionDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  v12.receiver = self;
  v12.super_class = VNE5RTBasedDetector;
  v10 = [(VNDetector *)&v12 completeInitializationForSession:session error:error];
  if (v10)
  {
    objc_storeStrong(&self->_functionDescriptor, descriptor);
  }

  return v10;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v14.receiver = self;
  v14.super_class = VNE5RTBasedDetector;
  if (![(VNDetector *)&v14 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  configurationOptions = [(VNDetector *)self configurationOptions];
  v7 = [objc_opt_class() E5RTFunctionDescriptorForConfigurationOptions:configurationOptions error:error];
  functionDescriptor = self->_functionDescriptor;
  self->_functionDescriptor = v7;

  v9 = self->_functionDescriptor;
  if (v9)
  {
    v10 = [(VNE5RTBasedDetector *)self newE5RTExecutionContextForFunctionDescriptor:v9 configurationOptions:configurationOptions error:error];
    executionContext = self->_executionContext;
    self->_executionContext = v10;

    v12 = self->_executionContext != 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)observationsFromE5RTExecutionOutputs:(id)outputs forFunctionDescriptor:(id)descriptor originatingRequestSpecifier:(id)specifier options:(id)options error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self, specifier, options];
  }

  return 0;
}

- (id)newE5RTExecutionInputsForFunctionDescriptor:(id)descriptor croppedPixelBuffer:(__CVBuffer *)buffer options:(id)options error:(id *)error
{
  v9 = objc_alloc_init(MEMORY[0x1E69DF940]);
  if (!buffer)
  {
LABEL_4:
    v11 = v9;
    goto LABEL_6;
  }

  v10 = [(VNE5RTBasedDetector *)self _onlyInputImageDescriptorAndReturnError:error];
  v11 = v10;
  if (v10)
  {
    name = [v10 name];
    v13 = [v9 assignPixelBuffer:buffer toName:name error:error];

    if ((v13 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:

  return v11;
}

- (id)newE5RTExecutionContextForFunctionDescriptor:(id)descriptor configurationOptions:(id)options error:(id *)error
{
  descriptorCopy = descriptor;
  v7 = objc_alloc_init(MEMORY[0x1E69DF8D8]);
  function = [descriptorCopy function];
  v9 = [function newExecutionContextWithConfiguration:v7 error:error];

  return v9;
}

+ (id)classificationIdentifiersForConfigurationOptions:(id)options error:(id *)error
{
  v5 = [self E5RTFunctionDescriptorForConfigurationOptions:options error:?];
  if (v5)
  {
    v6 = [v5 confidencesOutputOfClass:objc_opt_class() error:error];
    v7 = v6;
    if (v6)
    {
      sortedValidLabels = [v6 sortedValidLabels];
    }

    else
    {
      sortedValidLabels = 0;
    }
  }

  else
  {
    sortedValidLabels = 0;
  }

  return sortedValidLabels;
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = [self E5RTFunctionDescriptorForConfigurationOptions:optionsCopy error:error];
  v8 = v7;
  if (v7)
  {
    onlyInputImage = [v7 onlyInputImage];
    if (onlyInputImage)
    {
      v10 = -[VNSupportedImageSize initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:]([VNSupportedImageSize alloc], "initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:", [onlyInputImage pixelFormatType], objc_msgSend(onlyInputImage, "pixelWidth"), objc_msgSend(onlyInputImage, "pixelHeight"), 1, 0, 0);
      v16[0] = v10;
      error = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else if (error)
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 initWithFormat:@"%@ (%@) does not have an input image", v13, v8];

      *error = [VNError errorForDataUnavailableWithLocalizedDescription:v14 underlyingError:0];

      error = 0;
    }
  }

  else
  {
    error = 0;
  }

  return error;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [self E5RTFunctionDescriptorForConfigurationOptions:options error:error];
  v5 = v4;
  if (v4)
  {
    function = [v4 function];
    programLibrary = [function programLibrary];
    v11 = @"VNComputeStageMain";
    v8 = [VNComputeDeviceUtilities computeDevicesOfTypes:7];
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (CGRect)normalizedScaledFaceBoundingBox:(id)box
{
  [box unalignedBoundingBox];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

+ (id)E5RTFunctionDescriptorForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __75__VNE5RTBasedDetector_E5RTFunctionDescriptorForConfigurationOptions_error___block_invoke;
  v21 = &unk_1E77B6848;
  selfCopy = self;
  v7 = optionsCopy;
  v22 = v7;
  v8 = _Block_copy(&aBlock);
  v9 = [self modelURLForConfigurationOptions:v7 error:error];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = NSStringFromClass(self);
    v12 = [self modelURLForConfigurationOptions:v7 error:0];
    v13 = [v10 initWithFormat:@"%@:%@", v11, v12, aBlock, v19, v20, v21];

    v14 = +[VNFrameworkManager manager];
    detectorDescriptorsCache = [v14 detectorDescriptorsCache];
    v16 = [detectorDescriptorsCache objectForIdentifier:v13 creationBlock:v8 error:error];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id __75__VNE5RTBasedDetector_E5RTFunctionDescriptorForConfigurationOptions_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 40) createE5RTFunctionDescriptorForConfigurationOptions:*(a1 + 32) error:a2];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)source configurationOptions:(id)options error:(id *)error
{
  sourceCopy = source;
  optionsCopy = options;
  v10 = objc_alloc_init(MEMORY[0x1E69DF8F8]);
  v11 = [self supportedComputeStageDevicesForOptions:optionsCopy error:error];
  v12 = [v11 objectForKey:@"VNComputeStageMain"];

  if (v12)
  {
    [v10 setComputeDeviceTypes:VNVisionCoreE5RTComputeDeviceTypesForMLComputeDevices(v12)];
    [v10 setFullyANEResident:{objc_msgSend(objc_opt_class(), "modelFullyANEResident")}];
    v13 = [self E5RTProgramLibraryCustomCompilationOptionsForModelSource:sourceCopy configurationOptions:optionsCopy error:error];
    v14 = [self E5RTProgramLibraryMilEntryPointsForModelSource:sourceCopy configurationOptions:optionsCopy error:error];
    if (v13 | v14)
    {
      if (([v13 isEqualToString:&stru_1F1976900] & 1) == 0)
      {
        customCompilationOptions = [v10 customCompilationOptions];

        if (customCompilationOptions)
        {
          customCompilationOptions2 = [v10 customCompilationOptions];
          v18 = [customCompilationOptions2 stringByAppendingString:v13];
          [v10 setCustomCompilationOptions:v18];
        }

        else
        {
          [v10 setCustomCompilationOptions:v13];
        }
      }

      [v10 setMilEntryPoints:v14];
      v15 = v10;
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

+ (unint64_t)E5RTVisionCoreComputeDeviceForConfigurationOptions:(id)options error:(id *)error
{
  v4 = [self supportedComputeStageDevicesForOptions:options error:error];
  v5 = [v4 objectForKey:@"VNComputeStageMain"];

  if (v5)
  {
    v6 = VNVisionCoreE5RTComputeDeviceTypesForMLComputeDevices(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)E5RTProgramLibraryForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [self modelURLForConfigurationOptions:optionsCopy error:error];
  v8 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_17;
  }

  uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
  if (![MEMORY[0x1E69DF8F0] isProgramLibraryAtURL:uRLByDeletingLastPathComponent])
  {
    if ([MEMORY[0x1E69DF8E8] isModelSourceURL:v8])
    {
      v11 = [MEMORY[0x1E69DF8E8] modelSourceFromURL:v8 error:error];
      if (v11)
      {
        v12 = [self E5RTProgramLibraryCompilationOptionsForModelSource:v11 configurationOptions:optionsCopy error:error];
        if (v12)
        {
          v10 = [MEMORY[0x1E69DF8F0] compileModelSource:v11 options:v12 error:error];
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
      if (!error)
      {
        v10 = 0;
        goto LABEL_16;
      }

      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      path = [v8 path];
      v11 = [v13 initWithFormat:@"Could not open program library for %@", path];

      [VNError errorForInvalidArgumentWithLocalizedDescription:v11];
      *error = v10 = 0;
    }

    goto LABEL_16;
  }

  v10 = [MEMORY[0x1E69DF8F0] programLibraryForURL:uRLByDeletingLastPathComponent error:error];
LABEL_16:

LABEL_17:

  return v10;
}

+ (id)modelURLForConfigurationOptions:(id)options error:(id *)error
{
  if (error)
  {
    *error = [VNError errorForUnimplementedMethod:a2 ofObject:self];
  }

  return 0;
}

@end