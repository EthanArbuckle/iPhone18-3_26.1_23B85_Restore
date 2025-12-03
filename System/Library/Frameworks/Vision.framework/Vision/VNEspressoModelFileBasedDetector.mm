@interface VNEspressoModelFileBasedDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)espressoModelFileNameForConfigurationOptions:(id)options;
+ (id)espressoModelPathForConfigurationOptions:(id)options error:(id *)error;
+ (id)espressoModelWeightsFilePathInfoForConfigurationOptions:(id)options error:(id *)error;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error;
- (BOOL)_bindBuffer:(id *)buffer toNetworkBlobName:(id)name bindMode:(int)mode bindPtr:(int)ptr error:(id *)error;
- (BOOL)_bindBuffer:(id *)buffer toNetworkBlobName:(id)name bindMode:(int)mode bindPtr:(int)ptr forModel:(id)model error:(id *)error;
- (BOOL)_bindBuffer:(id *)buffer toNetworkBlobName:(id)name bindMode:(int)mode error:(id *)error;
- (BOOL)_loadEspressoModelWithConfigurationOptions:(id)options error:(id *)error;
- (BOOL)bindBuffer:(id *)buffer toNetworkInputBlobName:(id)name error:(id *)error;
- (BOOL)bindBuffer:(id *)buffer toNetworkOutputBlobName:(id)name error:(id *)error;
- (BOOL)bindClientBuffer:(id *)buffer toNetworkInputBlobName:(id)name error:(id *)error;
- (BOOL)bindLockedPixelBuffer:(__CVBuffer *)buffer toNetworkInputBlobName:(id)name error:(id *)error;
- (BOOL)bindLockedPixelBuffer:(__CVBuffer *)buffer toNetworkInputBlobName:(id)name forModel:(id)model error:(id *)error;
- (BOOL)bindPixelBuffer:(__CVBuffer *)buffer toNetworkBlobName:(id)name error:(id *)error;
- (BOOL)bindPixelBuffer:(__CVBuffer *)buffer toNetworkBlobName:(id)name forModel:(id)model error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (BOOL)createRegionOfInterestCrop:(CGRect)crop options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder pixelBuffer:(__CVBuffer *)buffer error:(id *)error progressHandler:(id)handler;
- (BOOL)executePlanAndReturnError:(id *)error;
- (BOOL)executePlanForModel:(id)model error:(id *)error;
- (BOOL)getWidth:(unint64_t *)width height:(unint64_t *)height ofEspressoModelNetworkBlobNamed:(id)named error:(id *)error;
- (int)espressoModelNetworkLayersStorageTypeForConfigurationOptions:(id)options;
@end

@implementation VNEspressoModelFileBasedDetector

+ (id)espressoModelWeightsFilePathInfoForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [self espressoModelPathForConfigurationOptions:optionsCopy error:error];
  if (v7)
  {
    if (+[VNEspressoModelFileBasedDetector espressoModelWeightsFilePathInfoForConfigurationOptions:error:]::onceToken != -1)
    {
      dispatch_once(&+[VNEspressoModelFileBasedDetector espressoModelWeightsFilePathInfoForConfigurationOptions:error:]::onceToken, &__block_literal_global_29094);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__VNEspressoModelFileBasedDetector_espressoModelWeightsFilePathInfoForConfigurationOptions_error___block_invoke_2;
    aBlock[3] = &unk_1E77B5530;
    v8 = v7;
    v13 = v8;
    v9 = _Block_copy(aBlock);
    v10 = [+[VNEspressoModelFileBasedDetector espressoModelWeightsFilePathInfoForConfigurationOptions:error:]::weightsFilePathInfoCache objectForIdentifier:v8 creationBlock:v9 error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

VNEspressoModelWeightsFileInfo *__98__VNEspressoModelFileBasedDetector_espressoModelWeightsFilePathInfoForConfigurationOptions_error___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [VNEspressoHelpers weightsFilePathForEspressoNetworkModelFilePath:*(a1 + 32) error:a2];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = -[VNEspressoModelWeightsFileInfo initWithFilePath:exists:isRegular:]([VNEspressoModelWeightsFileInfo alloc], "initWithFilePath:exists:isRegular:", v3, [v4 fileExistsAtPath:*(a1 + 32)], objc_msgSend(*(a1 + 32), "hasSuffix:", @".espresso.weights"));
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __98__VNEspressoModelFileBasedDetector_espressoModelWeightsFilePathInfoForConfigurationOptions_error___block_invoke()
{
  +[VNEspressoModelFileBasedDetector espressoModelWeightsFilePathInfoForConfigurationOptions:error:]::weightsFilePathInfoCache = objc_alloc_init(MEMORY[0x1E69DF950]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)espressoModelPathForConfigurationOptions:(id)options error:(id *)error
{
  v6 = [self espressoModelFileNameForConfigurationOptions:options];
  if (v6)
  {
    error = [VNEspressoHelpers pathForEspressoNetworkModelFileWithName:v6 error:error];
  }

  else if (error)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = NSStringFromClass(self);
    v9 = [v7 initWithFormat:@"%@ did not provide a valid model file name", v8];

    *error = [VNError errorForInvalidModelWithLocalizedDescription:v9];

    error = 0;
  }

  return error;
}

+ (id)espressoModelFileNameForConfigurationOptions:(id)options
{
  optionsCopy = options;
  if (objc_opt_class() == self || ![(VisionCoreRuntimeUtilities *)VNRuntimeUtilities item:self overridesClassSelector:sel_espressoModelPathForConfigurationOptions_error_])
  {
    lastPathComponent = 0;
  }

  else
  {
    v11 = 0;
    v5 = [self espressoModelPathForConfigurationOptions:optionsCopy error:&v11];
    v6 = v11;
    localizedDescription = [v6 localizedDescription];
    [VNError VNAssert:v5 != 0 log:localizedDescription];

    if (v5)
    {
      lastPathComponent = [v5 lastPathComponent];
      if ([lastPathComponent hasSuffix:@".espresso.net"])
      {
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

        lastPathComponent = stringByDeletingPathExtension;
      }
    }

    else
    {
      lastPathComponent = 0;
    }
  }

  return lastPathComponent;
}

- (BOOL)executePlanForModel:(id)model error:(id *)error
{
  modelCopy = model;
  [modelCopy plan];
  v6 = espresso_plan_execute_sync();
  v7 = v6;
  if (error && v6)
  {
    *error = [VNError errorForEspressoReturnStatus:v6 localizedDescription:@"inference plan failed to execute"];
  }

  return v7 == 0;
}

- (BOOL)executePlanAndReturnError:(id *)error
{
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)self executePlanForModel:espressoResources error:error];

  return error;
}

- (BOOL)bindPixelBuffer:(__CVBuffer *)buffer toNetworkBlobName:(id)name forModel:(id)model error:(id *)error
{
  nameCopy = name;
  modelCopy = model;
  [modelCopy network];
  [nameCopy UTF8String];
  v10 = espresso_network_bind_cvpixelbuffer();
  v11 = v10;
  if (error && v10)
  {
    *error = [VNError errorForEspressoReturnStatus:v10 localizedDescription:@"failed to bind pixel buffer to network"];
  }

  return v11 == 0;
}

- (BOOL)bindPixelBuffer:(__CVBuffer *)buffer toNetworkBlobName:(id)name error:(id *)error
{
  nameCopy = name;
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)self bindPixelBuffer:buffer toNetworkBlobName:nameCopy forModel:espressoResources error:error];

  return error;
}

- (BOOL)bindLockedPixelBuffer:(__CVBuffer *)buffer toNetworkInputBlobName:(id)name forModel:(id)model error:(id *)error
{
  nameCopy = name;
  modelCopy = model;
  [modelCopy network];
  [nameCopy UTF8String];
  v10 = espresso_network_bind_input_cvpixelbuffer();
  v11 = v10;
  if (error && v10)
  {
    *error = [VNError errorForEspressoReturnStatus:v10 localizedDescription:@"failed to bind pixel buffer to network"];
  }

  return v11 == 0;
}

- (BOOL)bindLockedPixelBuffer:(__CVBuffer *)buffer toNetworkInputBlobName:(id)name error:(id *)error
{
  nameCopy = name;
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)self bindPixelBuffer:buffer toNetworkBlobName:nameCopy forModel:espressoResources error:error];

  return error;
}

- (BOOL)_bindBuffer:(id *)buffer toNetworkBlobName:(id)name bindMode:(int)mode bindPtr:(int)ptr forModel:(id)model error:(id *)error
{
  nameCopy = name;
  modelCopy = model;
  [modelCopy network];
  [nameCopy UTF8String];
  v12 = espresso_network_bind_buffer();
  v13 = v12;
  if (error && v12)
  {
    *error = [VNError errorForEspressoReturnStatus:v12 localizedDescription:@"failed to bind buffer to network"];
  }

  return v13 == 0;
}

- (BOOL)_bindBuffer:(id *)buffer toNetworkBlobName:(id)name bindMode:(int)mode bindPtr:(int)ptr error:(id *)error
{
  v8 = *&ptr;
  v9 = *&mode;
  nameCopy = name;
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)self _bindBuffer:buffer toNetworkBlobName:nameCopy bindMode:v9 bindPtr:v8 forModel:espressoResources error:error];

  return error;
}

- (BOOL)_bindBuffer:(id *)buffer toNetworkBlobName:(id)name bindMode:(int)mode error:(id *)error
{
  v7 = *&mode;
  nameCopy = name;
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)self _bindBuffer:buffer toNetworkBlobName:nameCopy bindMode:v7 bindPtr:0x10000 forModel:espressoResources error:error];

  return error;
}

- (BOOL)bindBuffer:(id *)buffer toNetworkOutputBlobName:(id)name error:(id *)error
{
  nameCopy = name;
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)self _bindBuffer:buffer toNetworkBlobName:nameCopy bindMode:0x20000 bindPtr:0x10000 forModel:espressoResources error:error];

  return error;
}

- (BOOL)bindClientBuffer:(id *)buffer toNetworkInputBlobName:(id)name error:(id *)error
{
  nameCopy = name;
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)self bindClientBuffer:buffer toNetworkInputBlobName:nameCopy forModel:espressoResources error:error];

  return error;
}

- (BOOL)bindBuffer:(id *)buffer toNetworkInputBlobName:(id)name error:(id *)error
{
  nameCopy = name;
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(error) = [(VNEspressoModelFileBasedDetector *)self bindBuffer:buffer toNetworkInputBlobName:nameCopy forModel:espressoResources error:error];

  return error;
}

- (BOOL)getWidth:(unint64_t *)width height:(unint64_t *)height ofEspressoModelNetworkBlobNamed:(id)named error:(id *)error
{
  namedCopy = named;
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  [espressoResources network];
  if ([namedCopy length])
  {
    [namedCopy UTF8String];
  }

  blob_dimensions = espresso_network_query_blob_dimensions();

  if (blob_dimensions)
  {
    if (error)
    {
      namedCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not obtain the dimensions of %@", namedCopy];
      *error = [VNError errorForEspressoReturnStatus:blob_dimensions localizedDescription:namedCopy];
    }
  }

  else
  {
    if (width)
    {
      *width = 0;
    }

    if (height)
    {
      *height = 0;
    }
  }

  return blob_dimensions == 0;
}

- (int)espressoModelNetworkLayersStorageTypeForConfigurationOptions:(id)options
{
  optionsCopy = options;
  v4 = [objc_opt_class() computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:optionsCopy error:0];
  v5 = [VNEspressoHelpers espressoStorageTypeForComputeDevice:v4];

  return v5;
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
  if (v19)
  {
    networkRequiredInputImageWidth = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageWidth];
    networkRequiredInputImageHeight = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageHeight];
    width = [v19 width];
    v23 = width * width;
    height = [v19 height];
    v25 = height * height;
    if (v23 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    if (networkRequiredInputImageWidth >= networkRequiredInputImageHeight)
    {
      v27 = networkRequiredInputImageHeight;
    }

    else
    {
      v27 = networkRequiredInputImageWidth;
    }

    if (v26 < v27)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(recorderCopy, v27);
    }

    configurationOptions = [(VNDetector *)self configurationOptions];
    v29 = [v19 croppedBufferWithWidth:networkRequiredInputImageWidth height:networkRequiredInputImageHeight format:objc_msgSend(objc_opt_class() cropRect:"networkRequiredInputImagePixelFormatForConfigurationOptions:" options:configurationOptions) error:{optionsCopy, error, x * width, y * height, v23, v25}];
    *buffer = v29;
    v30 = v29 != 0;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v9.receiver = self;
  v9.super_class = VNEspressoModelFileBasedDetector;
  if (![(VNDetector *)&v9 completeInitializationForSession:session error:?])
  {
    return 0;
  }

  configurationOptions = [(VNDetector *)self configurationOptions];
  v7 = [(VNEspressoModelFileBasedDetector *)self _loadEspressoModelWithConfigurationOptions:configurationOptions error:error];

  return v7;
}

- (BOOL)_loadEspressoModelWithConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v7 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:error];
  if (v7)
  {
    v8 = [optionsCopy mutableCopy];
    v28 = [objc_opt_class() espressoModelPathForConfigurationOptions:v8 error:error];
    if (!v28 || ([optionsCopy objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v30 = 0, !+[VNValidationUtilities getEspressoPriority:forKey:inOptions:withDefaultValue:error:](VNValidationUtilities, "getEspressoPriority:forKey:inOptions:withDefaultValue:error:", &v30, @"VNDetectorOption_EspressoPlanPriority", optionsCopy, 0, error)))
    {
      v20 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v27 = v8;
    v11 = [optionsCopy objectForKeyedSubscript:@"VNDetectorInitOption_MemoryPoolId"];
    v26 = v10;
    unsignedLongLongValue = [v11 unsignedLongLongValue];

    v13 = v30;
    v14 = [optionsCopy objectForKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_InputBlobNames"];
    v15 = [optionsCopy objectForKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];
    v16 = [optionsCopy objectForKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_NetworkConfiguration"];
    v29 = 0;
    LOBYTE(unsignedLongLongValue) = [VNEspressoHelpers createSingleNetworkPlanFromModelPath:v28 forComputeDevice:v7 lowPriorityMode:v26 priority:v13 inputBlobNames:v14 outputBlobNames:v15 networkConfiguration:v16 memoryPoolId:unsignedLongLongValue espressoResources:&v29 error:error];
    v17 = v29;
    v18 = v29;

    if ((unsignedLongLongValue & 1) == 0)
    {
      v20 = 0;
LABEL_19:
      v8 = v27;

      goto LABEL_20;
    }

    objc_storeStrong(&self->_espressoResources, v17);
    v19 = [objc_opt_class() espressoModelInputImageDimensionsBlobNameForConfigurationOptions:optionsCopy];
    if (v19)
    {
      if ([(VNEspressoModelFileBasedDetector *)self getWidth:&self->_networkRequiredInputImageWidth height:&self->_networkRequiredInputImageHeight ofEspressoModelNetworkBlobNamed:v19 error:error])
      {
        if (self->_networkRequiredInputImageWidth && self->_networkRequiredInputImageHeight)
        {
          v20 = 1;
LABEL_18:

          goto LABEL_19;
        }

        if (error)
        {
          [VNError errorForInternalErrorWithLocalizedDescription:@"Unexpected network input image size"];
          *error = v20 = 0;
          goto LABEL_18;
        }
      }
    }

    else if (error)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v21 stringWithFormat:@"%@ did not provide a valid model input image dimensions blob name", v23];

      *error = [VNError errorForInternalErrorWithLocalizedDescription:v24];
    }

    v20 = 0;
    goto LABEL_18;
  }

  v20 = 0;
LABEL_21:

  return v20;
}

+ (id)supportedImageSizeSetForOptions:(id)options error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = [self computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:optionsCopy error:error];
  if (v7)
  {
    v8 = [optionsCopy mutableCopy];
    [v8 setObject:v7 forKeyedSubscript:@"VNDetectorInternalOption_ModelComputeDevice"];
    v9 = [self espressoModelPathForConfigurationOptions:v8 error:error];
    if (v9)
    {
      v10 = [self espressoModelInputImageDimensionsBlobNameForConfigurationOptions:optionsCopy];
      v16 = 0;
      v17 = 0;
      if ([VNEspressoHelpers getWidth:&v17 height:&v16 ofBlobNamed:v10 forNetworkModelFileWithPath:v9 error:error])
      {
        v11 = [self networkRequiredInputImagePixelFormatForConfigurationOptions:optionsCopy];
        v12 = [VNSupportedImageSize alloc];
        v13 = [(VNSupportedImageSize *)v12 initWithIdealFormat:v11 width:v17 height:v16 orientation:1 aspectRatioHandling:0 orientationAgnostic:0];
        v18[0] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v7 = +[VNComputeDeviceUtilities allComputeDevices];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__29193;
  v24 = __Block_byref_object_dispose__29194;
  v25 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __81__VNEspressoModelFileBasedDetector_supportedComputeStageDevicesForOptions_error___block_invoke;
  v16 = &unk_1E77B5508;
  v8 = optionsCopy;
  v18 = &v20;
  selfCopy = self;
  v17 = v8;
  v9 = [v7 indexesOfObjectsPassingTest:&v13];
  if ([v9 count])
  {
    v26 = @"VNComputeStageMain";
    v10 = [v7 objectsAtIndexes:v9];
    v27[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  }

  else
  {
    v11 = 0;
    if (error)
    {
      *error = v21[5];
    }
  }

  _Block_object_dispose(&v20, 8);

  return v11;
}

BOOL __81__VNEspressoModelFileBasedDetector_supportedComputeStageDevicesForOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) mutableCopy];
  [v5 setObject:v3 forKeyedSubscript:@"VNDetectorInternalOption_ModelComputeDevice"];
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v6 espressoModelWeightsFilePathInfoForConfigurationOptions:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (!v8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_8;
  }

  if (([v8 weightsFileExists] & 1) == 0)
  {
    if (([v8 weightsFileExists] & 1) != 0 || (objc_msgSend(v8, "isRegularWeightsFile") & 1) == 0)
    {
      v9 = [VNComputeDeviceUtilities isNeuralEngineComputeDevice:v3];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v9 = 1;
LABEL_8:

  objc_autoreleasePoolPop(v4);
  return v9;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__VNEspressoModelFileBasedDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[VNEspressoModelFileBasedDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNEspressoModelFileBasedDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNEspressoModelFileBasedDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __73__VNEspressoModelFileBasedDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNEspressoModelFileBasedDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 removeObject:@"VNDetectorOption_OriginatingRequestSpecifier"];
  [v2 addObject:@"VNEspressoModelFileBasedDetectorOption_InputBlobNames"];
  [v2 addObject:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];
  [v2 addObject:@"VNDetectorOption_PreferBackgroundProcessing"];
  v3 = [v2 copy];
  v4 = +[VNEspressoModelFileBasedDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNEspressoModelFileBasedDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

@end