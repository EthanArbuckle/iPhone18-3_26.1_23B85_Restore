@interface VNEspressoModelFileBasedDetector
+ (id)configurationOptionKeysForDetectorKey;
+ (id)espressoModelFileNameForConfigurationOptions:(id)a3;
+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)espressoModelWeightsFilePathInfoForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
- (BOOL)_bindBuffer:(id *)a3 toNetworkBlobName:(id)a4 bindMode:(int)a5 bindPtr:(int)a6 error:(id *)a7;
- (BOOL)_bindBuffer:(id *)a3 toNetworkBlobName:(id)a4 bindMode:(int)a5 bindPtr:(int)a6 forModel:(id)a7 error:(id *)a8;
- (BOOL)_bindBuffer:(id *)a3 toNetworkBlobName:(id)a4 bindMode:(int)a5 error:(id *)a6;
- (BOOL)_loadEspressoModelWithConfigurationOptions:(id)a3 error:(id *)a4;
- (BOOL)bindBuffer:(id *)a3 toNetworkInputBlobName:(id)a4 error:(id *)a5;
- (BOOL)bindBuffer:(id *)a3 toNetworkOutputBlobName:(id)a4 error:(id *)a5;
- (BOOL)bindClientBuffer:(id *)a3 toNetworkInputBlobName:(id)a4 error:(id *)a5;
- (BOOL)bindLockedPixelBuffer:(__CVBuffer *)a3 toNetworkInputBlobName:(id)a4 error:(id *)a5;
- (BOOL)bindLockedPixelBuffer:(__CVBuffer *)a3 toNetworkInputBlobName:(id)a4 forModel:(id)a5 error:(id *)a6;
- (BOOL)bindPixelBuffer:(__CVBuffer *)a3 toNetworkBlobName:(id)a4 error:(id *)a5;
- (BOOL)bindPixelBuffer:(__CVBuffer *)a3 toNetworkBlobName:(id)a4 forModel:(id)a5 error:(id *)a6;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (BOOL)executePlanAndReturnError:(id *)a3;
- (BOOL)executePlanForModel:(id)a3 error:(id *)a4;
- (BOOL)getWidth:(unint64_t *)a3 height:(unint64_t *)a4 ofEspressoModelNetworkBlobNamed:(id)a5 error:(id *)a6;
- (int)espressoModelNetworkLayersStorageTypeForConfigurationOptions:(id)a3;
@end

@implementation VNEspressoModelFileBasedDetector

+ (id)espressoModelWeightsFilePathInfoForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 espressoModelPathForConfigurationOptions:v6 error:a4];
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
    v10 = [+[VNEspressoModelFileBasedDetector espressoModelWeightsFilePathInfoForConfigurationOptions:error:]::weightsFilePathInfoCache objectForIdentifier:v8 creationBlock:v9 error:a4];
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

+ (id)espressoModelPathForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = [a1 espressoModelFileNameForConfigurationOptions:a3];
  if (v6)
  {
    a4 = [VNEspressoHelpers pathForEspressoNetworkModelFileWithName:v6 error:a4];
  }

  else if (a4)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = NSStringFromClass(a1);
    v9 = [v7 initWithFormat:@"%@ did not provide a valid model file name", v8];

    *a4 = [VNError errorForInvalidModelWithLocalizedDescription:v9];

    a4 = 0;
  }

  return a4;
}

+ (id)espressoModelFileNameForConfigurationOptions:(id)a3
{
  v4 = a3;
  if (objc_opt_class() == a1 || ![(VisionCoreRuntimeUtilities *)VNRuntimeUtilities item:a1 overridesClassSelector:sel_espressoModelPathForConfigurationOptions_error_])
  {
    v8 = 0;
  }

  else
  {
    v11 = 0;
    v5 = [a1 espressoModelPathForConfigurationOptions:v4 error:&v11];
    v6 = v11;
    v7 = [v6 localizedDescription];
    [VNError VNAssert:v5 != 0 log:v7];

    if (v5)
    {
      v8 = [v5 lastPathComponent];
      if ([v8 hasSuffix:@".espresso.net"])
      {
        v9 = [v8 stringByDeletingPathExtension];

        v8 = v9;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)executePlanForModel:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 plan];
  v6 = espresso_plan_execute_sync();
  v7 = v6;
  if (a4 && v6)
  {
    *a4 = [VNError errorForEspressoReturnStatus:v6 localizedDescription:@"inference plan failed to execute"];
  }

  return v7 == 0;
}

- (BOOL)executePlanAndReturnError:(id *)a3
{
  v5 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(a3) = [(VNEspressoModelFileBasedDetector *)self executePlanForModel:v5 error:a3];

  return a3;
}

- (BOOL)bindPixelBuffer:(__CVBuffer *)a3 toNetworkBlobName:(id)a4 forModel:(id)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a5;
  [v9 network];
  [v8 UTF8String];
  v10 = espresso_network_bind_cvpixelbuffer();
  v11 = v10;
  if (a6 && v10)
  {
    *a6 = [VNError errorForEspressoReturnStatus:v10 localizedDescription:@"failed to bind pixel buffer to network"];
  }

  return v11 == 0;
}

- (BOOL)bindPixelBuffer:(__CVBuffer *)a3 toNetworkBlobName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(a5) = [(VNEspressoModelFileBasedDetector *)self bindPixelBuffer:a3 toNetworkBlobName:v8 forModel:v9 error:a5];

  return a5;
}

- (BOOL)bindLockedPixelBuffer:(__CVBuffer *)a3 toNetworkInputBlobName:(id)a4 forModel:(id)a5 error:(id *)a6
{
  v8 = a4;
  v9 = a5;
  [v9 network];
  [v8 UTF8String];
  v10 = espresso_network_bind_input_cvpixelbuffer();
  v11 = v10;
  if (a6 && v10)
  {
    *a6 = [VNError errorForEspressoReturnStatus:v10 localizedDescription:@"failed to bind pixel buffer to network"];
  }

  return v11 == 0;
}

- (BOOL)bindLockedPixelBuffer:(__CVBuffer *)a3 toNetworkInputBlobName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(a5) = [(VNEspressoModelFileBasedDetector *)self bindPixelBuffer:a3 toNetworkBlobName:v8 forModel:v9 error:a5];

  return a5;
}

- (BOOL)_bindBuffer:(id *)a3 toNetworkBlobName:(id)a4 bindMode:(int)a5 bindPtr:(int)a6 forModel:(id)a7 error:(id *)a8
{
  v10 = a4;
  v11 = a7;
  [v11 network];
  [v10 UTF8String];
  v12 = espresso_network_bind_buffer();
  v13 = v12;
  if (a8 && v12)
  {
    *a8 = [VNError errorForEspressoReturnStatus:v12 localizedDescription:@"failed to bind buffer to network"];
  }

  return v13 == 0;
}

- (BOOL)_bindBuffer:(id *)a3 toNetworkBlobName:(id)a4 bindMode:(int)a5 bindPtr:(int)a6 error:(id *)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v12 = a4;
  v13 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(a7) = [(VNEspressoModelFileBasedDetector *)self _bindBuffer:a3 toNetworkBlobName:v12 bindMode:v9 bindPtr:v8 forModel:v13 error:a7];

  return a7;
}

- (BOOL)_bindBuffer:(id *)a3 toNetworkBlobName:(id)a4 bindMode:(int)a5 error:(id *)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(a6) = [(VNEspressoModelFileBasedDetector *)self _bindBuffer:a3 toNetworkBlobName:v10 bindMode:v7 bindPtr:0x10000 forModel:v11 error:a6];

  return a6;
}

- (BOOL)bindBuffer:(id *)a3 toNetworkOutputBlobName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(a5) = [(VNEspressoModelFileBasedDetector *)self _bindBuffer:a3 toNetworkBlobName:v8 bindMode:0x20000 bindPtr:0x10000 forModel:v9 error:a5];

  return a5;
}

- (BOOL)bindClientBuffer:(id *)a3 toNetworkInputBlobName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(a5) = [(VNEspressoModelFileBasedDetector *)self bindClientBuffer:a3 toNetworkInputBlobName:v8 forModel:v9 error:a5];

  return a5;
}

- (BOOL)bindBuffer:(id *)a3 toNetworkInputBlobName:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  LOBYTE(a5) = [(VNEspressoModelFileBasedDetector *)self bindBuffer:a3 toNetworkInputBlobName:v8 forModel:v9 error:a5];

  return a5;
}

- (BOOL)getWidth:(unint64_t *)a3 height:(unint64_t *)a4 ofEspressoModelNetworkBlobNamed:(id)a5 error:(id *)a6
{
  v10 = a5;
  v11 = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  [v11 network];
  if ([v10 length])
  {
    [v10 UTF8String];
  }

  blob_dimensions = espresso_network_query_blob_dimensions();

  if (blob_dimensions)
  {
    if (a6)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"could not obtain the dimensions of %@", v10];
      *a6 = [VNError errorForEspressoReturnStatus:blob_dimensions localizedDescription:v13];
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  return blob_dimensions == 0;
}

- (int)espressoModelNetworkLayersStorageTypeForConfigurationOptions:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v3 error:0];
  v5 = [VNEspressoHelpers espressoStorageTypeForComputeDevice:v4];

  return v5;
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
  if (v19)
  {
    v20 = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageWidth];
    v21 = [(VNEspressoModelFileBasedDetector *)self networkRequiredInputImageHeight];
    v22 = [v19 width];
    v23 = width * v22;
    v24 = [v19 height];
    v25 = height * v24;
    if (v23 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    if (v20 >= v21)
    {
      v27 = v21;
    }

    else
    {
      v27 = v20;
    }

    if (v26 < v27)
    {
      VNRecordImageTooSmallWarningWithImageMinimumShortDimension(v18, v27);
    }

    v28 = [(VNDetector *)self configurationOptions];
    v29 = [v19 croppedBufferWithWidth:v20 height:v21 format:objc_msgSend(objc_opt_class() cropRect:"networkRequiredInputImagePixelFormatForConfigurationOptions:" options:v28) error:{v17, a8, x * v22, y * v24, v23, v25}];
    *a7 = v29;
    v30 = v29 != 0;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v9.receiver = self;
  v9.super_class = VNEspressoModelFileBasedDetector;
  if (![(VNDetector *)&v9 completeInitializationForSession:a3 error:?])
  {
    return 0;
  }

  v6 = [(VNDetector *)self configurationOptions];
  v7 = [(VNEspressoModelFileBasedDetector *)self _loadEspressoModelWithConfigurationOptions:v6 error:a4];

  return v7;
}

- (BOOL)_loadEspressoModelWithConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNDetector *)self boundComputeDeviceForComputeStage:@"VNComputeStageMain" error:a4];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    v28 = [objc_opt_class() espressoModelPathForConfigurationOptions:v8 error:a4];
    if (!v28 || ([v6 objectForKeyedSubscript:@"VNDetectorOption_PreferBackgroundProcessing"], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v30 = 0, !+[VNValidationUtilities getEspressoPriority:forKey:inOptions:withDefaultValue:error:](VNValidationUtilities, "getEspressoPriority:forKey:inOptions:withDefaultValue:error:", &v30, @"VNDetectorOption_EspressoPlanPriority", v6, 0, a4)))
    {
      v20 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v27 = v8;
    v11 = [v6 objectForKeyedSubscript:@"VNDetectorInitOption_MemoryPoolId"];
    v26 = v10;
    v12 = [v11 unsignedLongLongValue];

    v13 = v30;
    v14 = [v6 objectForKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_InputBlobNames"];
    v15 = [v6 objectForKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_OutputBlobNames"];
    v16 = [v6 objectForKeyedSubscript:@"VNEspressoModelFileBasedDetectorOption_NetworkConfiguration"];
    v29 = 0;
    LOBYTE(v12) = [VNEspressoHelpers createSingleNetworkPlanFromModelPath:v28 forComputeDevice:v7 lowPriorityMode:v26 priority:v13 inputBlobNames:v14 outputBlobNames:v15 networkConfiguration:v16 memoryPoolId:v12 espressoResources:&v29 error:a4];
    v17 = v29;
    v18 = v29;

    if ((v12 & 1) == 0)
    {
      v20 = 0;
LABEL_19:
      v8 = v27;

      goto LABEL_20;
    }

    objc_storeStrong(&self->_espressoResources, v17);
    v19 = [objc_opt_class() espressoModelInputImageDimensionsBlobNameForConfigurationOptions:v6];
    if (v19)
    {
      if ([(VNEspressoModelFileBasedDetector *)self getWidth:&self->_networkRequiredInputImageWidth height:&self->_networkRequiredInputImageHeight ofEspressoModelNetworkBlobNamed:v19 error:a4])
      {
        if (self->_networkRequiredInputImageWidth && self->_networkRequiredInputImageHeight)
        {
          v20 = 1;
LABEL_18:

          goto LABEL_19;
        }

        if (a4)
        {
          [VNError errorForInternalErrorWithLocalizedDescription:@"Unexpected network input image size"];
          *a4 = v20 = 0;
          goto LABEL_18;
        }
      }
    }

    else if (a4)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [v21 stringWithFormat:@"%@ did not provide a valid model input image dimensions blob name", v23];

      *a4 = [VNError errorForInternalErrorWithLocalizedDescription:v24];
    }

    v20 = 0;
    goto LABEL_18;
  }

  v20 = 0;
LABEL_21:

  return v20;
}

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v6 error:a4];
  if (v7)
  {
    v8 = [v6 mutableCopy];
    [v8 setObject:v7 forKeyedSubscript:@"VNDetectorInternalOption_ModelComputeDevice"];
    v9 = [a1 espressoModelPathForConfigurationOptions:v8 error:a4];
    if (v9)
    {
      v10 = [a1 espressoModelInputImageDimensionsBlobNameForConfigurationOptions:v6];
      v16 = 0;
      v17 = 0;
      if ([VNEspressoHelpers getWidth:&v17 height:&v16 ofBlobNamed:v10 forNetworkModelFileWithPath:v9 error:a4])
      {
        v11 = [a1 networkRequiredInputImagePixelFormatForConfigurationOptions:v6];
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

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
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
  v8 = v6;
  v18 = &v20;
  v19 = a1;
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
    if (a4)
    {
      *a4 = v21[5];
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
  block[4] = a1;
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