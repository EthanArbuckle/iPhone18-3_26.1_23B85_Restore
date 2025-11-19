@interface VNE5RTSegmentationMultiGenerator
+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4;
+ (NSDictionary)requestKeyToRequestInfo;
+ (id)requestInfoForRequest:(id)a3;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedOutputPixelFormatsForOptions:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (BOOL)imageCropAndScaleOption:(unint64_t *)a3 fromOptions:(id)a4 error:(id *)a5;
- (__CVBuffer)renderCIImage:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 format:(unsigned int)a6 vnciContextManager:(id)a7 error:(id *)a8;
@end

@implementation VNE5RTSegmentationMultiGenerator

- (BOOL)imageCropAndScaleOption:(unint64_t *)a3 fromOptions:(id)a4 error:(id *)a5
{
  v7 = a4;
  [VNError VNAssert:a3 != 0 log:@"cropAndScaleOptionPointer cannot be NULL"];
  v11 = 0;
  v8 = [VNValidationUtilities getBOOLValue:&v11 forKey:@"VNSegmentationGeneratorProcessOption_ImageRotated" inOptions:v7 error:a5];
  if (v8)
  {
    v9 = 2;
    if (v11)
    {
      v9 = 258;
    }

    *a3 = v9;
  }

  return v8;
}

- (__CVBuffer)renderCIImage:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5 format:(unsigned int)a6 vnciContextManager:(id)a7 error:(id *)a8
{
  v10 = *&a6;
  v14 = a3;
  v15 = a7;
  v16 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:a8];
  if (v16)
  {
    v17 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:a4 height:a5 pixelFormatType:v10 error:a8];
    if (v17)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __95__VNE5RTSegmentationMultiGenerator_renderCIImage_width_height_format_vnciContextManager_error___block_invoke;
      v20[3] = &unk_1E77B4AC8;
      v21 = v14;
      v22 = v17;
      v18 = _Block_copy(v20);
      if (([(VNCIContextManager *)v15 performBlock:v18 usingAvailableContextForComputeDevice:v16 error:a8]& 1) == 0)
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

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = a9;
  v20 = [(VNDetector *)self validatedImageBufferFromOptions:v17 error:a8];
  v21 = v20;
  if (v20)
  {
    v22 = [v20 width];
    v23 = [v21 height];
    v24 = [(VNE5RTBasedDetector *)self functionDescriptor];
    v25 = [v24 onlyInputImage];

    v26 = [v25 pixelWidth];
    v27 = v26 / [v25 pixelHeight];
    v28 = width * v22 / (height * v23);
    if (v27 >= 1.0 || v28 < 1.0)
    {
      v31 = v28 < 1.0 && v27 >= 1.0;
    }

    else
    {
      v31 = 1;
    }

    v32 = [MEMORY[0x1E696AD98] numberWithBool:v31];
    [v17 setObject:v32 forKeyedSubscript:@"VNSegmentationGeneratorProcessOption_ImageRotated"];

    v36.receiver = self;
    v36.super_class = VNE5RTSegmentationMultiGenerator;
    v30 = [(VNE5RTBasedDetector *)&v36 createRegionOfInterestCrop:v17 options:a5 qosClass:v18 warningRecorder:a7 pixelBuffer:a8 error:v19 progressHandler:x, y, width, height];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allComputeDevices:a3];
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

+ (id)requestInfoForRequest:(id)a3
{
  v4 = a3;
  v5 = [a1 requestKeyToRequestInfo];
  v6 = [VNMultiDetectorOriginalRequestInfo requestKeyFromRequest:v4];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

+ (id)supportedOutputPixelFormatsForOptions:(id)a3 error:(id *)a4
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

+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 error:a4];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_53;
  }

  v8 = [v6 requestRevision];
  if (![v7 specifiesRequestClass:objc_opt_class()])
  {
    if ([v7 specifiesRequestClass:objc_opt_class()])
    {
      v17 = -1;
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:v5 error:a4])
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
            if ([VNValidationUtilities getBOOLValue:&v16 forKey:@"VNSegmentationGeneratorProcessOption_UseTiling" inOptions:v5 error:a4])
            {
              v9 = objc_opt_class();
              goto LABEL_71;
            }

            goto LABEL_53;
          }

          if (!a4)
          {
            goto LABEL_70;
          }

LABEL_69:
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
          *a4 = [VNError errorForInvalidOption:v14 named:@"qualityLevel"];

          goto LABEL_70;
        }

        if (v8 != 3737841665)
        {
          if (v8 == 3737841664)
          {
            v9 = [VNGenerateSemanticSegmentationCompoundRequest detectorForPersonInstanceRequestAndReturnError:a4];
LABEL_22:
            if (v9)
            {
              goto LABEL_71;
            }

            goto LABEL_53;
          }

          if (v8 == 1)
          {
            v9 = [VNGenerateSemanticSegmentationCompoundRequest detectorForSemanticSegmentationRequestAndReturnError:a4];
            goto LABEL_22;
          }

          if (!a4)
          {
            goto LABEL_70;
          }

LABEL_79:
          v10 = [VNError errorForUnsupportedRevision:v8 ofRequestClass:objc_opt_class()];
          goto LABEL_26;
        }
      }
    }

    else if ([v7 specifiesRequestClass:objc_opt_class()])
    {
      v17 = -1;
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:v5 error:a4])
      {
        goto LABEL_53;
      }

      if (v17 != 1)
      {
        if (!a4)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (v8 != 1 && v8 != 3737841664)
      {
        if (!a4)
        {
          goto LABEL_70;
        }

        goto LABEL_79;
      }
    }

    else if ([v7 specifiesRequestClass:objc_opt_class()])
    {
      v17 = -1;
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:v5 error:a4])
      {
        goto LABEL_53;
      }

      if (v17 != 1)
      {
        if (!a4)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (v8 != 1 && v8 != 3737841664)
      {
        if (!a4)
        {
          goto LABEL_70;
        }

        goto LABEL_79;
      }
    }

    else if ([v7 specifiesRequestClass:objc_opt_class()])
    {
      v17 = -1;
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:v5 error:a4])
      {
        goto LABEL_53;
      }

      if (v17 != 1)
      {
        if (!a4)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (v8 != 1 && v8 != 3737841664)
      {
        if (!a4)
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
      if (![VNValidationUtilities getNSUIntegerValue:&v17 forKey:@"VNSegmentationGeneratorProcessOption_QualityLevel" inOptions:v5 error:a4])
      {
LABEL_53:
        v13 = 0;
        goto LABEL_72;
      }

      if (v17 != 1)
      {
        if (!a4)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      if (v8 != 1)
      {
        if (!a4)
        {
          goto LABEL_70;
        }

        goto LABEL_79;
      }
    }

    v9 = objc_opt_class();
    goto LABEL_71;
  }

  if (v8 == 1)
  {
    v9 = [VNGenerateSemanticSegmentationCompoundRequest detectorForSemanticSegmentationRequestAndReturnError:a4];
    goto LABEL_22;
  }

  if (v8 == 2)
  {
    v9 = [VNGenerateSemanticSegmentationCompoundRequest detectorForPersonInstanceRequestAndReturnError:a4];
    goto LABEL_22;
  }

  if (v8 != 3)
  {
    if (a4)
    {
      v10 = [VNError errorForUnsupportedRevision:v8 ofRequestClass:objc_opt_class()];
LABEL_26:
      v11 = v10;
      v12 = v10;
      v9 = 0;
      *a4 = v11;
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