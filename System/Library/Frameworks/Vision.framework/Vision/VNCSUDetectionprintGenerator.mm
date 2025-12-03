@interface VNCSUDetectionprintGenerator
+ (BOOL)_getCSUDetectionprintNetworkConfiguration:(id *)configuration forConfigurationOptions:(id)options error:(id *)error;
+ (id)computeStagesToBindForConfigurationOptions:(id)options;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (BOOL)warmUpSession:(id)session withOptions:(id)options error:(id *)error;
- (id)_observationsFromNetworkOutput:(id)output originatingRequestSpecifier:(id)specifier error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
@end

@implementation VNCSUDetectionprintGenerator

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:optionsCopy error:error];
  v14 = v13;
  if (v13)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__15266;
    v33 = __Block_byref_object_dispose__15267;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__15266;
    network = self->_network;
    v27 = __Block_byref_object_dispose__15267;
    v28 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __130__VNCSUDetectionprintGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
    v19[3] = &unk_1E77B3D40;
    v21 = &v23;
    v22 = &v29;
    v19[4] = self;
    v20 = v13;
    [(CSUDetectionPrintNetwork *)network runOnInputImage:buffer completion:v19];
    v16 = v30[5];
    if (v16)
    {
      v17 = v16;
    }

    else if (error)
    {
      *error = v24[5];
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __130__VNCSUDetectionprintGenerator_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v13 = 0;
    v10 = [v8 _observationsFromNetworkOutput:v5 originatingRequestSpecifier:v9 error:&v13];
    v7 = v13;
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
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
    v23 = width * width;
    v24 = height * height;
    if (v23 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    if (self->_inputImageMinimumDimension > v25)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, v25);
    }

    [optionsCopy setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    inputImagePixelWidth = self->_inputImagePixelWidth;
    inputImagePixelHeight = self->_inputImagePixelHeight;
    inputImagePixelFormat = self->_inputImagePixelFormat;
    v33 = 0;
    v29 = [v20 croppedBufferWithWidth:inputImagePixelWidth height:inputImagePixelHeight format:inputImagePixelFormat cropRect:optionsCopy options:error error:&v33 pixelBufferRepsCacheKey:{x * width, y * height, v23, v24}];
    v30 = v33;
    *buffer = v29;
    v31 = v29 != 0;
    if (v29)
    {
      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:optionsCopy cacheKey:v30 imageBuffer:v20];
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)warmUpSession:(id)session withOptions:(id)options error:(id *)error
{
  sessionCopy = session;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = VNCSUDetectionprintGenerator;
  if ([(VNDetector *)&v12 warmUpSession:sessionCopy withOptions:optionsCopy error:error])
  {
    v10 = [(CSUDetectionPrintNetwork *)self->_network loadResourcesAndReturnError:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v16.receiver = self;
  v16.super_class = VNCSUDetectionprintGenerator;
  if (![(VNDetector *)&v16 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  configurationOptions = [(VNDetector *)self configurationOptions];
  v15 = 0;
  v7 = [objc_opt_class() _getCSUDetectionprintNetworkConfiguration:&v15 forConfigurationOptions:configurationOptions error:error];
  v8 = v15;
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E6999100]) initWithConfiguration:v8];
    network = self->_network;
    self->_network = v9;

    inputPixelBufferDescriptor = [v8 inputPixelBufferDescriptor];
    self->_inputImagePixelFormat = [inputPixelBufferDescriptor pixelFormat];
    self->_inputImagePixelWidth = [inputPixelBufferDescriptor width];
    height = [inputPixelBufferDescriptor height];
    self->_inputImagePixelHeight = height;
    inputImagePixelWidth = self->_inputImagePixelWidth;
    if (inputImagePixelWidth >= height)
    {
      inputImagePixelWidth = height;
    }

    self->_inputImageMinimumDimension = inputImagePixelWidth;
  }

  return v7;
}

- (id)_observationsFromNetworkOutput:(id)output originatingRequestSpecifier:(id)specifier error:(id *)error
{
  v29[2] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  specifierCopy = specifier;
  v28[0] = @"6316";
  v28[1] = @"5637";
  v29[0] = @"VNDetectionprintTensorKeyStride8FeatureMap";
  v29[1] = @"VNDetectionprintTensorKeyStride16FeatureMap";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [outputCopy availableTapPointNames];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v8 = v23 = 0u;
  v9 = [(VNDetectionprint *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        if (v13)
        {
          v14 = [outputCopy detectionPrintFeatureForTapPointName:v12 error:error];
          if (!v14)
          {
            goto LABEL_14;
          }

          v15 = [VNDetectionprintTensor tensorFromCSUBuffer:v14 originatingRequestSpecifier:specifierCopy error:error];
          if (!v15)
          {

LABEL_14:
            v17 = 0;
            v16 = v8;
            goto LABEL_15;
          }

          [v19 setObject:v15 forKeyedSubscript:v13];
        }
      }

      v9 = [(VNDetectionprint *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = [[VNDetectionprint alloc] initWithTensorsDictionary:v19 originatingRequestSpecifier:specifierCopy];
  v13 = [[VNDetectionprintObservation alloc] initWithOriginatingRequestSpecifier:specifierCopy detectionprint:v16];
  v26 = v13;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
LABEL_15:

  return v17;
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [self _getCSUDetectionprintNetworkConfiguration:&v11 forConfigurationOptions:options error:error];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    inputPixelBufferDescriptor = [v5 inputPixelBufferDescriptor];
    v8 = -[VNSupportedImageSize initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:]([VNSupportedImageSize alloc], "initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:", [inputPixelBufferDescriptor pixelFormat], objc_msgSend(inputPixelBufferDescriptor, "width"), objc_msgSend(inputPixelBufferDescriptor, "height"), 1, 0, 0);
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = [self detectionPrintConfigurationRevisionForConfigurationOptions:optionsCopy];
  v8 = [MEMORY[0x1E6999108] detectionPrintConfigurationForRevision:v7 error:error];
  v9 = v8;
  if (v8)
  {
    v13 = @"VNComputeStageMain";
    supportedComputeDevices = [v8 supportedComputeDevices];
    v14[0] = supportedComputeDevices;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)computeStagesToBindForConfigurationOptions:(id)options
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (BOOL)_getCSUDetectionprintNetworkConfiguration:(id *)configuration forConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v9 = [self computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:optionsCopy error:error];
  if (v9)
  {
    v10 = [self detectionPrintConfigurationRevisionForConfigurationOptions:optionsCopy];
    v11 = [MEMORY[0x1E6999108] detectionPrintConfigurationForRevision:v10 error:error];
    v12 = v11;
    v13 = v11 != 0;
    if (v11)
    {
      [v11 setComputeDevice:v9];
      v14 = v12;
      *configuration = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end