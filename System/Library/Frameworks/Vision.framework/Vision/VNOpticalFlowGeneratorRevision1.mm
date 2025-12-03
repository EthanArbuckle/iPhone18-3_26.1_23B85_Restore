@interface VNOpticalFlowGeneratorRevision1
+ (id)computeStagesToBindForConfigurationOptions:(id)options;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNOpticalFlowGeneratorRevision1

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUAndGPUComputeDevices:options];
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

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  v69[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  recorderCopy = recorder;
  handlerCopy = handler;
  v15 = [optionsCopy objectForKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_ROIWidth"];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  v17 = [optionsCopy objectForKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_ROIHeight"];
  unsignedIntegerValue2 = [v17 unsignedIntegerValue];

  v19 = optionsCopy;
  v20 = v19;
  if (!self)
  {

    goto LABEL_24;
  }

  pixelBuffer = 0;
  v21 = [VNValidationUtilities getOptionalObject:&pixelBuffer ofClass:objc_opt_class() forKey:@"VNOpticalFlowGeneratorProcessOption_PreviousObservation" inOptions:v19 error:error];
  v22 = pixelBuffer;
  v23 = v22;
  if (!v21)
  {

LABEL_24:
    v30 = 0;
    goto LABEL_25;
  }

  v67 = 0;
  if (![VNValidationUtilities getNSUIntegerValue:&v67 forKey:@"VNOpticalFlowGeneratorProcessOption_OutputPixelFormat" inOptions:v20 error:error])
  {
LABEL_17:

    goto LABEL_24;
  }

  if (v67 != 843264102 && v67 != 843264104)
  {
    if (error)
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      *error = [VNError errorForInvalidOption:v28 named:@"outputPixelFormat"];
    }

    goto LABEL_17;
  }

  v66 = 0;
  if (![VNValidationUtilities getNSUIntegerValue:&v66 forKey:@"VNOpticalFlowGeneratorOption_ComputationAccuracy" inOptions:v20 error:error])
  {
LABEL_23:

    goto LABEL_24;
  }

  v24 = ceilf(logf(8.0 / unsignedIntegerValue2) / -0.69315);
  v25 = ceilf(logf(8.0 / unsignedIntegerValue) / -0.69315);
  if (v24 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  if (v66 <= 1)
  {
    if (!v66)
    {
      v57 = 2;
      v58 = 0;
      v27 = 3;
      goto LABEL_29;
    }

    if (v66 == 1)
    {
      v57 = 2;
      v58 = 0;
      v27 = 5;
LABEL_29:
      v59 = v27;
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if (v66 != 2)
  {
    if (v66 == 3)
    {
      v58 = 1;
      v59 = 7;
      v57 = 1;
      goto LABEL_31;
    }

LABEL_21:
    if (error)
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      *error = [VNError errorForInvalidOption:v29 named:@"VNOpticalFlowGeneratorOption_ComputationAccuracy"];
    }

    goto LABEL_23;
  }

  v59 = 5;
  v57 = 2;
  v58 = 1;
LABEL_31:
  v32 = v23;
  v33 = v67;
  v61 = v32;

  texture = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:unsignedIntegerValue height:unsignedIntegerValue2 pixelFormatType:v33 error:error];
  if (texture)
  {
    v34 = [VNValidationUtilities requiredArrayForKey:@"VNOpticalFlowGeneratorProcessOption_FromAndToPixelBuffers" inOptions:v20 withElementsOfClass:0 error:error];
    v35 = v34;
    if (!v34)
    {
      v30 = 0;
LABEL_67:

      CVPixelBufferRelease(texture);
      goto LABEL_68;
    }

    +[VNError VNAssert:log:](VNError, "VNAssert:log:", [v34 count] == 2, @"Unexpected number of buffers for optical flow processing");
    v36 = [v35 objectAtIndexedSubscript:0];

    v37 = [v35 objectAtIndexedSubscript:1];

    v56 = [VNValidationUtilities originatingRequestSpecifierInOptions:v20 error:error];
    if (!v56)
    {
      v30 = 0;
LABEL_66:

      goto LABEL_67;
    }

    v38 = [(VNDetector *)self computeDeviceForComputeStage:@"VNComputeStageMain" processingOptions:v20 error:error];
    v55 = v38;
    if (!v38)
    {
      v30 = 0;
LABEL_65:

      goto LABEL_66;
    }

    v39 = [VNComputeDeviceUtilities isCPUComputeDevice:v38];
    v65 = texture;
    CVPixelBufferRetain(texture);
    v64 = v36;
    if (v36)
    {
      CVPixelBufferRetain(v36);
    }

    v63 = v37;
    if (v37)
    {
      CVPixelBufferRetain(v37);
    }

    opticalFlow = [(__CVBuffer *)v61 opticalFlow];
    v41 = opticalFlow;
    if (opticalFlow && v26 == [opticalFlow levelCount])
    {
      v42 = 1;
    }

    else
    {
      [(__CVBuffer *)v61 setOpticalFlow:0];
      pixelBuffer = v65;
      v54 = v26;
      CVPixelBufferRetain(v65);
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      if (v39)
      {
        v44 = [[VNLKTOpticalFlowCPU alloc] initWithWidth:Width height:Height numScales:v54];
        v45 = v44;
        if (error && !v44)
        {
          +[VNError errorForMemoryAllocationFailure];
          *error = v45 = 0;
        }
      }

      else
      {
        v46 = [VNLKTOpticalFlowGPU alloc];
        metalContext = [(VNDetector *)self metalContext];
        v45 = [(VNLKTOpticalFlowGPU *)v46 initWithMetalContext:metalContext width:Width height:Height numScales:v54 error:error];
      }

      apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&pixelBuffer);
      if (!v45)
      {
        v41 = 0;
        goto LABEL_60;
      }

      v42 = 0;
      v41 = v45;
    }

    [v41 setOutputPixelFormat:v33, Width];
    [v41 setNumWarpings:v59];
    [v41 setUseNonLocalRegularization:v58];
    [v41 setNlreg_radius:4];
    [v41 setNlreg_padding:v57];
    LODWORD(v48) = 6.0;
    [v41 setNlreg_sigma_l:v48];
    LODWORD(v49) = 2.0;
    [v41 setNlreg_sigma_c:v49];
    LODWORD(v50) = 1045220557;
    [v41 setNlreg_sigma_w:v50];
    if ([v41 setOutputUV:v65 error:error])
    {
      if (v42)
      {
        if (([v41 estimateFlowStream:v63 error:error] & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_59:
        [v41 waitUntilCompleted];
        v41 = v41;
        v51 = v41;
LABEL_61:

        apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v63);
        apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v64);
        apple::vision::CVPixelBufferWrapper::~CVPixelBufferWrapper(&v65);
        if (v51)
        {
          v52 = [(VNPixelBufferObservation *)[VNOpticalFlowObservation alloc] initWithOriginatingRequestSpecifier:v56 featureName:0 CVPixelBuffer:texture];
          [(VNOpticalFlowObservation *)v52 setOpticalFlow:v51];
          v69[0] = v52;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
        }

        else
        {
          v30 = 0;
        }

        goto LABEL_65;
      }

      if ([v41 estimateFlowFromReference:v64 target:v63 error:error])
      {
        goto LABEL_59;
      }
    }

LABEL_60:
    v51 = 0;
    goto LABEL_61;
  }

  v30 = 0;
LABEL_68:

LABEL_25:

  return v30;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v40 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v16 = width;
  v17 = height;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __129__VNOpticalFlowGeneratorRevision1_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke;
  v38[3] = &unk_1E77B6810;
  v38[4] = self;
  if ([VNValidationUtilities validateNonZeroImageWidth:width & 0xFFFFFFFFFFFFFFFELL height:height & 0xFFFFFFFFFFFFFFFELL componentNameProvidingBlock:v38 error:error])
  {
    v18 = [(VNOpticalFlowGenerator *)self validatedImageBuffersFromOptions:optionsCopy error:error];
    v31 = v18;
    if (v18)
    {
      v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v18;
      v19 = 0;
      v20 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v20)
      {
        v21 = *v35;
        while (2)
        {
          v22 = 0;
          v23 = v19;
          do
          {
            if (*v35 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v34 + 1) + 8 * v22);
            if (v23)
            {
              width = [*(*(&v34 + 1) + 8 * v22) width];
              if (width != [v23 width] || (v26 = objc_msgSend(v24, "height"), v26 != objc_msgSend(v23, "height")))
              {
                if (error)
                {
                  [VNError errorForInvalidOperationWithLocalizedDescription:@"Optical flow cannot be performed on images with different dimensions"];
                  *error = v29 = 0;
                }

                else
                {
                  v29 = 0;
                }

                goto LABEL_21;
              }
            }

            v19 = v24;

            v27 = [v19 croppedBufferWithWidth:v16 & 0xFFFFFFFFFFFFFFFELL height:v17 & 0xFFFFFFFFFFFFFFFELL format:1111970369 cropRect:optionsCopy options:error error:{x, y, width, height}];
            if (!v27)
            {
              v29 = 0;
              goto LABEL_20;
            }

            [v33 addObject:v27];

            ++v22;
            v23 = v19;
          }

          while (v20 != v22);
          v20 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      [optionsCopy setObject:v33 forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_FromAndToPixelBuffers"];
      0xFFFFFFFFFFFFFFFELL = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v16 & 0xFFFFFFFFFFFFFFFELL];
      [optionsCopy setObject:0xFFFFFFFFFFFFFFFELL forKeyedSubscript:@"VNOpticalFlowGeneratorProcessOption_ROIWidth"];

      obj = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v17 & 0xFFFFFFFFFFFFFFFELL];
      [optionsCopy setObject:? forKeyedSubscript:?];
      v29 = 1;
LABEL_20:
      v23 = v19;
LABEL_21:
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

NSString *__129__VNOpticalFlowGeneratorRevision1_createRegionOfInterestCrop_options_qosClass_warningRecorder_pixelBuffer_error_progressHandler___block_invoke()
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

@end