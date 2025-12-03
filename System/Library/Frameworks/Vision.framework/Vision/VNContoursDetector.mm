@interface VNContoursDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNContoursDetector

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VNContoursDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNContoursDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNContoursDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNContoursDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __59__VNContoursDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNContoursDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  v3 = [v2 copy];
  v4 = +[VNContoursDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNContoursDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUAndGPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v17 = [VNValidationUtilities originatingRequestSpecifierInOptions:"originatingRequestSpecifierInOptions:error:" error:?];
  if (v17)
  {
    v20 = 1;
    if ([VNValidationUtilities getBOOLValue:&v20 forKey:@"VNContourDetectorProcessOption_DetectDarkOnLight" inOptions:optionsCopy withDefaultValue:1 error:error])
    {
      v19 = 1;
      if ([VNValidationUtilities getBOOLValue:&v19 forKey:@"VNContourDetectorProcessOption_InHierarchy" inOptions:optionsCopy withDefaultValue:1 error:error])
      {
        CVPixelBufferGetWidth(buffer);
        CVPixelBufferGetHeight(buffer);
        if (self)
        {
          pixelBuffer = buffer;
          if (buffer)
          {
            CVPixelBufferRetain(buffer);
            v11 = pixelBuffer;
          }

          else
          {
            v11 = 0;
          }

          Width = CVPixelBufferGetWidth(v11);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
          BaseAddress = 0;
          v23 = Height;
          v24 = Width;
          v25 = BytesPerRow;
          texture = 0;
          apple::vision::CVPixelBufferWrapper::BaseAddressLock<1ull>::BaseAddressLock(&v27, pixelBuffer);
          BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
          if (texture)
          {
            CVPixelBufferRelease(texture);
          }

          texture = pixelBuffer;
          pixelBuffer = 0;
          apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&pixelBuffer);
          v28 = 1;
          v29 = 0x3EA1E89B3FEE76C9;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          memset(v33, 0, sizeof(v33));
          operator new();
        }
      }
    }
  }

  return 0;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v68[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v17 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  if (!v17)
  {
    v26 = 0;
    goto LABEL_11;
  }

  v18 = [(VNDetector *)self validatedImageBufferFromOptions:optionsCopy error:error];
  v19 = v18;
  if (v18)
  {
    width = [v18 width];
    v21 = width * width;
    height = [v19 height];
    v23 = height * height;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __116__VNContoursDetector_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke;
    v60[3] = &unk_1E77B6810;
    v60[4] = self;
    if ([VNValidationUtilities validateNonZeroImageWidth:v21 height:v23 componentNameProvidingBlock:v60 error:error])
    {
      v59 = 0;
      if ([VNValidationUtilities getBOOLValue:&v59 forKey:@"VNContourDetectorProcessOption_ForceUseInputCVPixelBufferDirectly" inOptions:optionsCopy withDefaultValue:0 error:error])
      {
        if (v59 == 1)
        {
          originalPixelBuffer = [v19 originalPixelBuffer];
          if (originalPixelBuffer)
          {
            v25 = 0;
            *buffer = CVPixelBufferRetain(originalPixelBuffer);
LABEL_26:
            [(VNDetector *)self recordImageCropQuickLookInfoToOptions:optionsCopy cacheKey:v25 imageBuffer:v19];
            v26 = 1;
LABEL_31:

            goto LABEL_9;
          }

          if (error)
          {
            [VNError errorForInternalErrorWithLocalizedDescription:@"VNContourDetector: Original buffer could not be found"];
            v25 = 0;
            *error = v26 = 0;
            goto LABEL_31;
          }

          v25 = 0;
LABEL_30:
          v26 = 0;
          goto LABEL_31;
        }

        v58 = 0;
        v28 = v19;
        v29 = optionsCopy;
        v57 = v28;
        if (!self)
        {
          v34 = 0;
LABEL_25:

          v25 = v58;
          *buffer = v34;
          if (v34)
          {
            goto LABEL_26;
          }

          goto LABEL_30;
        }

        v30 = [objc_opt_class() computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v29 error:error];
        if (!v30 || (v66 = 512, ![VNValidationUtilities getNSUIntegerValue:&v66 forKey:@"VNContourDetectorProcessOption_MaximumImageDimension" inOptions:v29 withDefaultValue:512 error:error]) || (v65 = 2.0, LODWORD(v31) = 2.0, ![VNValidationUtilities getFloatValue:&v65 forKey:@"VNContourDetectorProcessOption_ContrastAdjustment" inOptions:v29 withDefaultValue:error error:v31]))
        {
          v34 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v32 = v66 / v23;
        if (v66 / v21 < v32)
        {
          v32 = v66 / v21;
        }

        v33 = fmin(v32, 1.0);
        v34 = [v28 cropAndScaleBufferWithWidth:vcvtad_u64_f64(v21 * v33) height:vcvtad_u64_f64(v23 * v33) cropRect:1278226488 format:2 imageCropAndScaleOption:v29 options:error error:x * width calculatedNormalizedOriginOffset:y * height calculatedScaleX:v21 calculatedScaleY:v23 pixelBufferRepsCacheKey:{0, 0, 0, &v58}];
        if (!v34 || v65 == 1.0)
        {
          goto LABEL_24;
        }

        v54 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVPixelBuffer:v34];
        CVPixelBufferRelease(v34);
        v64 = 0.5;
        LODWORD(v35) = 0.5;
        if ([VNValidationUtilities getFloatValue:&v64 forKey:@"VNContourDetectorProcessOption_ContrastPivot" inOptions:v29 withDefaultValue:error error:v35])
        {
          *&v36 = v64;
          if (v64 == 0.5)
          {
            v67 = *MEMORY[0x1E695FA88];
            *&v36 = v65;
            v55 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
            v68[0] = v55;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
            v51 = [v54 imageByApplyingFilter:@"CIColorControls" withInputParameters:?];

            v54 = v51;
          }

          else if (v64 == -1.0)
          {
            [(VNCIFilter *)self->_ciContrastFromAvgFilter setInputImage:v54, v36];
            *&v42 = v65;
            v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
            [(VNCIContrastFromAverageColorFilter *)self->_ciContrastFromAvgFilter setInputContrast:v43];

            outputImage = [(VNCIContrastFromAverageColorFilter *)self->_ciContrastFromAvgFilter outputImage];

            v54 = outputImage;
            [(VNCIFilter *)self->_ciContrastFromAvgFilter setInputImage:0];
          }

          else
          {
            [(VNCIFilter *)self->_ciContrastWithPivotFilter setInputImage:v54, v36];
            *&v37 = v65;
            v38 = [MEMORY[0x1E696AD98] numberWithFloat:v37];
            [(VNCIContrastWithPivotColorFilter *)self->_ciContrastWithPivotFilter setInputContrast:v38];

            *&v39 = v64;
            v40 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
            [(VNCIContrastWithPivotColorFilter *)self->_ciContrastWithPivotFilter setInputPivot:v40];

            outputImage2 = [(VNCIContrastWithPivotColorFilter *)self->_ciContrastWithPivotFilter outputImage];

            v54 = outputImage2;
            [(VNCIFilter *)self->_ciContrastWithPivotFilter setInputImage:0];
          }

          if (!v54)
          {
            if (error)
            {
              v49 = [VNError errorForInternalErrorWithLocalizedDescription:@"VNContourDetector: Failed to adjust contrast"];
              v50 = 0;
              v34 = 0;
              *error = v49;
            }

            else
            {
              v50 = 0;
              v34 = 0;
            }

            goto LABEL_47;
          }

          [v54 extent];
          v34 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:v45 height:v46 pixelFormatType:1278226488 error:error];
          if (v34)
          {
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __114__VNContoursDetector__highContastMonoCVPixelBufferFromImageBuffer_cropRect_options_pixelBufferRepsCacheKey_error___block_invoke;
            aBlock[3] = &unk_1E77B4AC8;
            v54 = v54;
            v62 = v54;
            v63 = v34;
            v56 = _Block_copy(aBlock);
            v47 = [VNValidationUtilities requiredSessionInOptions:v29 error:error];
            v48 = v47;
            if (v47)
            {
              vnciContextManager = [v47 vnciContextManager];
              if (([(VNCIContextManager *)vnciContextManager performBlock:v56 usingAvailableContextForComputeDevice:v30 error:error]& 1) == 0)
              {
                CVPixelBufferRelease(v34);
                v34 = 0;
              }
            }

            else
            {
              v34 = 0;
            }
          }
        }

        else
        {
          v34 = 0;
        }

        v50 = v54;
LABEL_47:

        goto LABEL_24;
      }
    }
  }

  v26 = 0;
LABEL_9:

LABEL_11:
  return v26;
}

NSString *__116__VNContoursDetector_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

uint64_t __114__VNContoursDetector__highContastMonoCVPixelBufferFromImageBuffer_cropRect_options_pixelBufferRepsCacheKey_error___block_invoke(uint64_t a1, uint64_t a2)
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

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = VNContoursDetector;
  if (![(VNDetector *)&v13 completeInitializationForSession:sessionCopy error:error])
  {
    goto LABEL_7;
  }

  v7 = objc_alloc_init(VNCIContrastWithPivotColorFilter);
  ciContrastWithPivotFilter = self->_ciContrastWithPivotFilter;
  self->_ciContrastWithPivotFilter = v7;

  v9 = objc_alloc_init(VNCIContrastFromAverageColorFilter);
  ciContrastFromAvgFilter = self->_ciContrastFromAvgFilter;
  self->_ciContrastFromAvgFilter = v9;

  if (!self->_ciContrastWithPivotFilter || !self->_ciContrastFromAvgFilter)
  {
    if (error)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"VNContourDetector: Failed to create image filters"];
      *error = v11 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = 1;
LABEL_8:

  return v11;
}

@end