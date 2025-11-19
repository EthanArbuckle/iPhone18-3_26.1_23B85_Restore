@interface VNE5RTBasedDetector
+ (CGRect)normalizedScaledFaceBoundingBox:(id)a3;
+ (id)E5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)a3 configurationOptions:(id)a4 error:(id *)a5;
+ (id)E5RTProgramLibraryForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)classificationIdentifiersForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
+ (unint64_t)E5RTVisionCoreComputeDeviceForConfigurationOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 functionDescriptor:(id)a4 error:(id *)a5;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (BOOL)imageCropAndScaleOption:(unint64_t *)a3 fromOptions:(id)a4 error:(id *)a5;
- (id)_onlyInputImageDescriptorAndReturnError:(uint64_t)a1;
- (id)newE5RTExecutionContextForFunctionDescriptor:(id)a3 configurationOptions:(id)a4 error:(id *)a5;
- (id)newE5RTExecutionInputsForFunctionDescriptor:(id)a3 croppedPixelBuffer:(__CVBuffer *)a4 options:(id)a5 error:(id *)a6;
- (id)observationsFromE5RTExecutionOutputs:(id)a3 forFunctionDescriptor:(id)a4 originatingRequestSpecifier:(id)a5 options:(id)a6 error:(id *)a7;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNE5RTBasedDetector

- (BOOL)imageCropAndScaleOption:(unint64_t *)a3 fromOptions:(id)a4 error:(id *)a5
{
  v8 = a4;
  [VNError VNAssert:a3 != 0 log:@"cropAndScaleOptionPointer cannot be NULL"];
  v12 = 0;
  v9 = v8;
  if (self && [VNValidationUtilities getNSUIntegerValue:&v12 forKey:@"VNDetectorProcessOption_ImageCropAndScaleOption" inOptions:v9 withDefaultValue:[(VNE5RTBasedDetector *)self defaultImageCropAndScaleOption] error:a5])
  {
    if (v12 == 2)
    {
      v12 = 0;
    }

    *a3 = v12;
    v10 = 1;
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = a5;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 error:a8];
  if (v13)
  {
    v14 = [(VNE5RTBasedDetector *)self newE5RTExecutionInputsForFunctionDescriptor:self->_functionDescriptor croppedPixelBuffer:a4 options:v12 error:a8];
    if (v14)
    {
      v15 = [(VisionCoreE5RTExecutionContext *)self->_executionContext executeWithInputObjects:v14 error:a8];
      if (v15)
      {
        v16 = [(VNE5RTBasedDetector *)self observationsFromE5RTExecutionOutputs:v15 forFunctionDescriptor:self->_functionDescriptor originatingRequestSpecifier:v13 options:v12 error:a8];
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
    v56 = 0;
    v23 = [VNValidationUtilities getOptionalFaceObservation:&v56 inOptions:v17 error:a8];
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
        v34 = [v20 width];
        v35 = [v20 height];
        LODWORD(v55) = -1;
        if (([v25 getFaceEXIFOrientation:&v55 error:a8] & 1) == 0)
        {
          goto LABEL_25;
        }

        v36 = [MEMORY[0x1E696AD98] numberWithInt:v55];
        [v17 setObject:v36 forKeyedSubscript:@"VNImageBufferOption_FeatureOrientationRelativeToUpRight"];
        v37 = v27 * v34;
        v38 = v31 * v34;
        v39 = v29 * v35;
        v40 = v33 * v35;
      }

      else
      {
        v37 = x * v21;
        v38 = width * v21;
        v39 = y * v22;
        v40 = height * v22;
      }

      v55 = 0;
      if ([(VNE5RTBasedDetector *)self imageCropAndScaleOption:&v55 fromOptions:v17 error:a8])
      {
        v42 = [(VNE5RTBasedDetector *)self _onlyInputImageDescriptorAndReturnError:a8];
        v43 = v42;
        if (v42)
        {
          v53 = [v42 pixelWidth];
          v44 = [v43 pixelHeight];
          v45 = v44;
          v46 = v53;
          if (v53 >= v44)
          {
            v46 = v44;
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

            VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v18, (v46 / v48));
          }

          [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
          v49 = [v43 pixelFormatType];
          v54 = 0;
          v50 = [v20 cropAndScaleBufferWithWidth:v53 height:v45 cropRect:v49 format:v55 imageCropAndScaleOption:v17 options:a8 error:v37 calculatedNormalizedOriginOffset:v39 calculatedScaleX:v38 calculatedScaleY:v40 pixelBufferRepsCacheKey:{0, 0, 0, &v54}];
          v51 = v54;
          *a7 = v50;
          v41 = v50 != 0;
          if (v50)
          {
            [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:v17 cacheKey:v51 imageBuffer:v20];
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

- (id)_onlyInputImageDescriptorAndReturnError:(uint64_t)a1
{
  if (a1)
  {
    v3 = [*(a1 + 56) onlyInputImage];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
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

- (BOOL)completeInitializationForSession:(id)a3 functionDescriptor:(id)a4 error:(id *)a5
{
  v9 = a4;
  v12.receiver = self;
  v12.super_class = VNE5RTBasedDetector;
  v10 = [(VNDetector *)&v12 completeInitializationForSession:a3 error:a5];
  if (v10)
  {
    objc_storeStrong(&self->_functionDescriptor, a4);
  }

  return v10;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v14.receiver = self;
  v14.super_class = VNE5RTBasedDetector;
  if (![(VNDetector *)&v14 completeInitializationForSession:a3 error:?])
  {
    return 0;
  }

  v6 = [(VNDetector *)self configurationOptions];
  v7 = [objc_opt_class() E5RTFunctionDescriptorForConfigurationOptions:v6 error:a4];
  functionDescriptor = self->_functionDescriptor;
  self->_functionDescriptor = v7;

  v9 = self->_functionDescriptor;
  if (v9)
  {
    v10 = [(VNE5RTBasedDetector *)self newE5RTExecutionContextForFunctionDescriptor:v9 configurationOptions:v6 error:a4];
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

- (id)observationsFromE5RTExecutionOutputs:(id)a3 forFunctionDescriptor:(id)a4 originatingRequestSpecifier:(id)a5 options:(id)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = [VNError errorForUnimplementedMethod:a2 ofObject:self, a5, a6];
  }

  return 0;
}

- (id)newE5RTExecutionInputsForFunctionDescriptor:(id)a3 croppedPixelBuffer:(__CVBuffer *)a4 options:(id)a5 error:(id *)a6
{
  v9 = objc_alloc_init(MEMORY[0x1E69DF940]);
  if (!a4)
  {
LABEL_4:
    v11 = v9;
    goto LABEL_6;
  }

  v10 = [(VNE5RTBasedDetector *)self _onlyInputImageDescriptorAndReturnError:a6];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 name];
    v13 = [v9 assignPixelBuffer:a4 toName:v12 error:a6];

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

- (id)newE5RTExecutionContextForFunctionDescriptor:(id)a3 configurationOptions:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E69DF8D8]);
  v8 = [v6 function];
  v9 = [v8 newExecutionContextWithConfiguration:v7 error:a5];

  return v9;
}

+ (id)classificationIdentifiersForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = [a1 E5RTFunctionDescriptorForConfigurationOptions:a3 error:?];
  if (v5)
  {
    v6 = [v5 confidencesOutputOfClass:objc_opt_class() error:a4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 sortedValidLabels];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 E5RTFunctionDescriptorForConfigurationOptions:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 onlyInputImage];
    if (v9)
    {
      v10 = -[VNSupportedImageSize initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:]([VNSupportedImageSize alloc], "initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:", [v9 pixelFormatType], objc_msgSend(v9, "pixelWidth"), objc_msgSend(v9, "pixelHeight"), 1, 0, 0);
      v16[0] = v10;
      a4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    }

    else if (a4)
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 initWithFormat:@"%@ (%@) does not have an input image", v13, v8];

      *a4 = [VNError errorForDataUnavailableWithLocalizedDescription:v14 underlyingError:0];

      a4 = 0;
    }
  }

  else
  {
    a4 = 0;
  }

  return a4;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [a1 E5RTFunctionDescriptorForConfigurationOptions:a3 error:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 function];
    v7 = [v6 programLibrary];
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

+ (CGRect)normalizedScaledFaceBoundingBox:(id)a3
{
  [a3 unalignedBoundingBox];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

+ (id)E5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __75__VNE5RTBasedDetector_E5RTFunctionDescriptorForConfigurationOptions_error___block_invoke;
  v21 = &unk_1E77B6848;
  v23 = a1;
  v7 = v6;
  v22 = v7;
  v8 = _Block_copy(&aBlock);
  v9 = [a1 modelURLForConfigurationOptions:v7 error:a4];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = NSStringFromClass(a1);
    v12 = [a1 modelURLForConfigurationOptions:v7 error:0];
    v13 = [v10 initWithFormat:@"%@:%@", v11, v12, aBlock, v19, v20, v21];

    v14 = +[VNFrameworkManager manager];
    v15 = [v14 detectorDescriptorsCache];
    v16 = [v15 objectForIdentifier:v13 creationBlock:v8 error:a4];
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

+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)a3 configurationOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E69DF8F8]);
  v11 = [a1 supportedComputeStageDevicesForOptions:v9 error:a5];
  v12 = [v11 objectForKey:@"VNComputeStageMain"];

  if (v12)
  {
    [v10 setComputeDeviceTypes:VNVisionCoreE5RTComputeDeviceTypesForMLComputeDevices(v12)];
    [v10 setFullyANEResident:{objc_msgSend(objc_opt_class(), "modelFullyANEResident")}];
    v13 = [a1 E5RTProgramLibraryCustomCompilationOptionsForModelSource:v8 configurationOptions:v9 error:a5];
    v14 = [a1 E5RTProgramLibraryMilEntryPointsForModelSource:v8 configurationOptions:v9 error:a5];
    if (v13 | v14)
    {
      if (([v13 isEqualToString:&stru_1F1976900] & 1) == 0)
      {
        v16 = [v10 customCompilationOptions];

        if (v16)
        {
          v17 = [v10 customCompilationOptions];
          v18 = [v17 stringByAppendingString:v13];
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

+ (unint64_t)E5RTVisionCoreComputeDeviceForConfigurationOptions:(id)a3 error:(id *)a4
{
  v4 = [a1 supportedComputeStageDevicesForOptions:a3 error:a4];
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

+ (id)E5RTProgramLibraryForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 modelURLForConfigurationOptions:v6 error:a4];
  v8 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v9 = [v7 URLByDeletingLastPathComponent];
  if (![MEMORY[0x1E69DF8F0] isProgramLibraryAtURL:v9])
  {
    if ([MEMORY[0x1E69DF8E8] isModelSourceURL:v8])
    {
      v11 = [MEMORY[0x1E69DF8E8] modelSourceFromURL:v8 error:a4];
      if (v11)
      {
        v12 = [a1 E5RTProgramLibraryCompilationOptionsForModelSource:v11 configurationOptions:v6 error:a4];
        if (v12)
        {
          v10 = [MEMORY[0x1E69DF8F0] compileModelSource:v11 options:v12 error:a4];
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
      if (!a4)
      {
        v10 = 0;
        goto LABEL_16;
      }

      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = [v8 path];
      v11 = [v13 initWithFormat:@"Could not open program library for %@", v14];

      [VNError errorForInvalidArgumentWithLocalizedDescription:v11];
      *a4 = v10 = 0;
    }

    goto LABEL_16;
  }

  v10 = [MEMORY[0x1E69DF8F0] programLibraryForURL:v9 error:a4];
LABEL_16:

LABEL_17:

  return v10;
}

+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

@end