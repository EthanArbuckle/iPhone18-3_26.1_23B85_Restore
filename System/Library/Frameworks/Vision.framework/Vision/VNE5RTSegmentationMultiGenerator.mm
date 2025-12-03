@interface VNE5RTSegmentationMultiGenerator
+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error;
+ (NSDictionary)requestKeyToRequestInfo;
+ (id)requestInfoForRequest:(id)request;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedOutputPixelFormatsForOptions:(id)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (BOOL)imageCropAndScaleOption:(unint64_t *)option fromOptions:(id)options error:(id *)error;
- (__CVBuffer)renderCIImage:(id)image width:(unint64_t)width height:(unint64_t)height format:(unsigned int)format vnciContextManager:(id)manager error:(id *)error;
@end

@implementation VNE5RTSegmentationMultiGenerator

- (BOOL)imageCropAndScaleOption:(unint64_t *)option fromOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  [VNError VNAssert:option != 0 log:@"cropAndScaleOptionPointer cannot be NULL"];
  v11 = 0;
  v8 = [VNValidationUtilities getBOOLValue:&v11 forKey:@"VNSegmentationGeneratorProcessOption_ImageRotated" inOptions:optionsCopy error:error];
  if (v8)
  {
    v9 = 2;
    if (v11)
    {
      v9 = 258;
    }

    *option = v9;
  }

  return v8;
}

- (__CVBuffer)renderCIImage:(id)image width:(unint64_t)width height:(unint64_t)height format:(unsigned int)format vnciContextManager:(id)manager error:(id *)error
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
      v20[2] = __95__VNE5RTSegmentationMultiGenerator_renderCIImage_width_height_format_vnciContextManager_error___block_invoke;
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

uint64_t __95__VNE5RTSegmentationMultiGenerator_renderCIImage_width_height_format_vnciContextManager_error___block_invoke(uint64_t a1, uint64_t a2)
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

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v20 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v21 = v20;
  if (v20)
  {
    width = [v20 width];
    height = [v21 height];
    functionDescriptor = [(VNE5RTBasedDetector *)self functionDescriptor];
    onlyInputImage = [functionDescriptor onlyInputImage];

    pixelWidth = [onlyInputImage pixelWidth];
    v27 = pixelWidth / [onlyInputImage pixelHeight];
    v28 = width * width / (height * height);
    if (v27 >= 1.0 || v28 < 1.0)
    {
      v31 = v28 < 1.0 && v27 >= 1.0;
    }

    else
    {
      v31 = 1;
    }

    v32 = [MEMORY[0x1E696AD98] numberWithBool:v31];
    [optionsCopy setObject:v32 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_ImageRotated"];

    v36.receiver = self;
    v36.super_class = VNE5RTSegmentationMultiGenerator;
    height2 = [(VNE5RTBasedDetector *)&v36 createRegionOfInterestCrop:optionsCopy options:class qosClass:recorderCopy warningRecorder:buffer pixelBuffer:error error:handlerCopy progressHandler:x, y, width, height];
  }

  else
  {
    height2 = 0;
  }

  return height2;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (NSDictionary)requestKeyToRequestInfo
{
  if (+[VNE5RTSegmentationMultiGenerator requestKeyToRequestInfo]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSegmentationMultiGenerator requestKeyToRequestInfo]::onceToken, &__block_literal_global_52);
  }

  v3 = +[VNE5RTSegmentationMultiGenerator requestKeyToRequestInfo]::requestKeyToRequestInfo;

  return v3;
}

void __59__VNE5RTSegmentationMultiGenerator_requestKeyToRequestInfo__block_invoke()
{
  v18[5] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v17[0] = v1;
  v2 = [[VNMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNSegmentationGeneratorProcessOption_PersonSegmentationDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:0];
  v18[0] = v2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v17[1] = v4;
  v5 = [[VNMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNSegmentationGeneratorProcessOption_SkySegmentationDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:1];
  v18[1] = v5;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v17[2] = v7;
  v8 = [[VNMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNSegmentationGeneratorProcessOption_HumanAttributesSegmentationDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:2];
  v18[2] = v8;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v17[3] = v10;
  v11 = [[VNMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNSegmentationGeneratorProcessOption_GlassesSegmentationDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:3];
  v18[3] = v11;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v17[4] = v13;
  v14 = [[VNMultiDetectorOriginalRequestInfo alloc] initWithOriginatingRequestSpecifierProcessingOptionKey:@"VNSegmentationGeneratorProcessOption_AnimalSegmentationDetectorOriginatingRequestSpecifier" originalRequestResultsIndex:4];
  v18[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v16 = +[VNE5RTSegmentationMultiGenerator requestKeyToRequestInfo]::requestKeyToRequestInfo;
  +[VNE5RTSegmentationMultiGenerator requestKeyToRequestInfo]::requestKeyToRequestInfo = v15;
}

+ (id)requestInfoForRequest:(id)request
{
  requestCopy = request;
  requestKeyToRequestInfo = [self requestKeyToRequestInfo];
  v6 = [VNMultiDetectorOriginalRequestInfo requestKeyFromRequest:requestCopy];
  v7 = [requestKeyToRequestInfo objectForKeyedSubscript:v6];

  return v7;
}

+ (id)supportedOutputPixelFormatsForOptions:(id)options error:(id *)error
{
  if (+[VNE5RTSegmentationMultiGenerator supportedOutputPixelFormatsForOptions:error:]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTSegmentationMultiGenerator supportedOutputPixelFormatsForOptions:error:]::onceToken, &__block_literal_global_24034);
  }

  v5 = +[VNE5RTSegmentationMultiGenerator supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats;

  return v5;
}

void __80__VNE5RTSegmentationMultiGenerator_supportedOutputPixelFormatsForOptions_error___block_invoke()
{
  v0 = +[VNE5RTSegmentationMultiGenerator supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats;
  +[VNE5RTSegmentationMultiGenerator supportedOutputPixelFormatsForOptions:error:]::outputPixelFormats = &unk_1F19C20B0;
}

+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_53;
  }

  requestRevision = [v6 requestRevision];
  if (![v7 specifiesRequestClass:objc_opt_class()])
  {
    if ([v7 specifiesRequestClass:objc_opt_class()])
    {
      v17 = -1;
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:optionsCopy error:error])
      {
        goto LABEL_53;
      }

      if (v17 != 2)
      {
        if (v17 != 1)
        {
          if (!v17)
          {
            v16 = 0;
            if ([VNValidationUtilities getBOOLValue:&v16 forKey:@"VNSegmentationGeneratorProcessOption_UseTiling" inOptions:optionsCopy error:error])
            {
              v9 = objc_opt_class();
              goto LABEL_71;
            }

            goto LABEL_53;
          }

          if (!error)
          {
            goto LABEL_70;
          }

LABEL_69:
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          *error = [VNError errorForInvalidOption:v14 named:@"qualityLevel"];

          goto LABEL_70;
        }

        if (requestRevision != 3737841665)
        {
          if (requestRevision == 3737841664)
          {
            v9 = [VNGenerateSemanticSegmentationCompoundRequest detectorForPersonInstanceRequestAndReturnError:error];
LABEL_22:
            if (v9)
            {
              goto LABEL_71;
            }

            goto LABEL_53;
          }

          if (requestRevision == 1)
          {
            v9 = [VNGenerateSemanticSegmentationCompoundRequest detectorForSemanticSegmentationRequestAndReturnError:error];
            goto LABEL_22;
          }

          if (!error)
          {
            goto LABEL_70;
          }

LABEL_79:
          v10 = [VNError errorForUnsupportedRevision:requestRevision ofRequestClass:objc_opt_class()];
          goto LABEL_26;
        }
      }
    }

    else if ([v7 specifiesRequestClass:objc_opt_class()])
    {
      v17 = -1;
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:optionsCopy error:error])
      {
        goto LABEL_53;
      }

      if (v17 != 1)
      {
        if (!error)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (requestRevision != 1 && requestRevision != 3737841664)
      {
        if (!error)
        {
          goto LABEL_70;
        }

        goto LABEL_79;
      }
    }

    else if ([v7 specifiesRequestClass:objc_opt_class()])
    {
      v17 = -1;
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:optionsCopy error:error])
      {
        goto LABEL_53;
      }

      if (v17 != 1)
      {
        if (!error)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (requestRevision != 1 && requestRevision != 3737841664)
      {
        if (!error)
        {
          goto LABEL_70;
        }

        goto LABEL_79;
      }
    }

    else if ([v7 specifiesRequestClass:objc_opt_class()])
    {
      v17 = -1;
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:optionsCopy error:error])
      {
        goto LABEL_53;
      }

      if (v17 != 1)
      {
        if (!error)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (requestRevision != 1 && requestRevision != 3737841664)
      {
        if (!error)
        {
          goto LABEL_70;
        }

        goto LABEL_79;
      }
    }

    else
    {
      if (![v7 specifiesRequestClass:objc_opt_class()])
      {
        goto LABEL_70;
      }

      v17 = -1;
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:optionsCopy error:error])
      {
LABEL_53:
        v13 = 0;
        goto LABEL_72;
      }

      if (v17 != 1)
      {
        if (!error)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (requestRevision != 1)
      {
        if (!error)
        {
          goto LABEL_70;
        }

        goto LABEL_79;
      }
    }

    v9 = objc_opt_class();
    goto LABEL_71;
  }

  if (requestRevision == 1)
  {
    v9 = [VNGenerateSemanticSegmentationCompoundRequest detectorForSemanticSegmentationRequestAndReturnError:error];
    goto LABEL_22;
  }

  if (requestRevision == 2)
  {
    v9 = [VNGenerateSemanticSegmentationCompoundRequest detectorForPersonInstanceRequestAndReturnError:error];
    goto LABEL_22;
  }

  if (requestRevision != 3)
  {
    if (error)
    {
      v10 = [VNError errorForUnsupportedRevision:requestRevision ofRequestClass:objc_opt_class()];
LABEL_26:
      v11 = v10;
      v12 = v10;
      v9 = 0;
      *error = v11;
      goto LABEL_71;
    }

LABEL_70:
    v9 = 0;
    goto LABEL_71;
  }

  v9 = objc_opt_class();
LABEL_71:
  v13 = v9;
LABEL_72:

  return v13;
}

@end