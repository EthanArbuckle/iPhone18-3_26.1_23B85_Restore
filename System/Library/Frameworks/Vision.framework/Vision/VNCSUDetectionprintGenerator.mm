@interface VNCSUDetectionprintGenerator
+ (BOOL)_getCSUDetectionprintNetworkConfiguration:(id *)a3 forConfigurationOptions:(id)a4 error:(id *)a5;
+ (id)computeStagesToBindForConfigurationOptions:(id)a3;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (BOOL)warmUpSession:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (id)_observationsFromNetworkOutput:(id)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
@end

@implementation VNCSUDetectionprintGenerator

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  v12 = a5;
  v13 = [VNValidationUtilities originatingRequestSpecifierInOptions:v12 error:a8];
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
    [(CSUDetectionPrintNetwork *)network runOnInputImage:a4 completion:v19];
    v16 = v30[5];
    if (v16)
    {
      v17 = v16;
    }

    else if (a8)
    {
      *a8 = v24[5];
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
    v23 = width * v21;
    v24 = height * v22;
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
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v18, v25);
    }

    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"VNImageBufferOption_CreateFromPixelBufferPool"];
    inputImagePixelWidth = self->_inputImagePixelWidth;
    inputImagePixelHeight = self->_inputImagePixelHeight;
    inputImagePixelFormat = self->_inputImagePixelFormat;
    v33 = 0;
    v29 = [v20 croppedBufferWithWidth:inputImagePixelWidth height:inputImagePixelHeight format:inputImagePixelFormat cropRect:v17 options:a8 error:&v33 pixelBufferRepsCacheKey:{x * v21, y * v22, v23, v24}];
    v30 = v33;
    *a7 = v29;
    v31 = v29 != 0;
    if (v29)
    {
      [(VNDetector *)self recordImageCropQuickLookInfoToOptionsSafe:v17 cacheKey:v30 imageBuffer:v20];
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)warmUpSession:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v12.receiver = self;
  v12.super_class = VNCSUDetectionprintGenerator;
  if ([(VNDetector *)&v12 warmUpSession:v8 withOptions:v9 error:a5])
  {
    v10 = [(CSUDetectionPrintNetwork *)self->_network loadResourcesAndReturnError:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v16.receiver = self;
  v16.super_class = VNCSUDetectionprintGenerator;
  if (![(VNDetector *)&v16 completeInitializationForSession:a3 error:?])
  {
    return 0;
  }

  v6 = [(VNDetector *)self configurationOptions];
  v15 = 0;
  v7 = [objc_opt_class() _getCSUDetectionprintNetworkConfiguration:&v15 forConfigurationOptions:v6 error:a4];
  v8 = v15;
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E6999100]) initWithConfiguration:v8];
    network = self->_network;
    self->_network = v9;

    v11 = [v8 inputPixelBufferDescriptor];
    self->_inputImagePixelFormat = [v11 pixelFormat];
    self->_inputImagePixelWidth = [v11 width];
    v12 = [v11 height];
    self->_inputImagePixelHeight = v12;
    inputImagePixelWidth = self->_inputImagePixelWidth;
    if (inputImagePixelWidth >= v12)
    {
      inputImagePixelWidth = v12;
    }

    self->_inputImageMinimumDimension = inputImagePixelWidth;
  }

  return v7;
}

- (id)_observationsFromNetworkOutput:(id)a3 originatingRequestSpecifier:(id)a4 error:(id *)a5
{
  v29[2] = *MEMORY[0x1E69E9840];
  v21 = a3;
  v20 = a4;
  v28[0] = @"6316";
  v28[1] = @"5637";
  v29[0] = @"VNDetectionprintTensorKeyStride8FeatureMap";
  v29[1] = @"VNDetectionprintTensorKeyStride16FeatureMap";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v21 availableTapPointNames];
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
          v14 = [v21 detectionPrintFeatureForTapPointName:v12 error:a5];
          if (!v14)
          {
            goto LABEL_14;
          }

          v15 = [VNDetectionprintTensor tensorFromCSUBuffer:v14 originatingRequestSpecifier:v20 error:a5];
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

  v16 = [[VNDetectionprint alloc] initWithTensorsDictionary:v19 originatingRequestSpecifier:v20];
  v13 = [[VNDetectionprintObservation alloc] initWithOriginatingRequestSpecifier:v20 detectionprint:v16];
  v26 = v13;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
LABEL_15:

  return v17;
}

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [a1 _getCSUDetectionprintNetworkConfiguration:&v11 forConfigurationOptions:a3 error:a4];
  v5 = v11;
  v6 = v5;
  if (v4)
  {
    v7 = [v5 inputPixelBufferDescriptor];
    v8 = -[VNSupportedImageSize initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:]([VNSupportedImageSize alloc], "initWithIdealFormat:width:height:orientation:aspectRatioHandling:orientationAgnostic:", [v7 pixelFormat], objc_msgSend(v7, "width"), objc_msgSend(v7, "height"), 1, 0, 0);
    v12[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 detectionPrintConfigurationRevisionForConfigurationOptions:v6];
  v8 = [MEMORY[0x1E6999108] detectionPrintConfigurationForRevision:v7 error:a4];
  v9 = v8;
  if (v8)
  {
    v13 = @"VNComputeStageMain";
    v10 = [v8 supportedComputeDevices];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)computeStagesToBindForConfigurationOptions:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"VNComputeStageMain";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (BOOL)_getCSUDetectionprintNetworkConfiguration:(id *)a3 forConfigurationOptions:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a1 computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v8 error:a5];
  if (v9)
  {
    v10 = [a1 detectionPrintConfigurationRevisionForConfigurationOptions:v8];
    v11 = [MEMORY[0x1E6999108] detectionPrintConfigurationForRevision:v10 error:a5];
    v12 = v11;
    v13 = v11 != 0;
    if (v11)
    {
      [v11 setComputeDevice:v9];
      v14 = v12;
      *a3 = v12;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end