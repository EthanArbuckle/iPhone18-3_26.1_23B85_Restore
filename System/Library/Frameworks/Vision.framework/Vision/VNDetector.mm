@interface VNDetector
+ (BOOL)areExistingInitializationOptions:(id)a3 compatibleWithOptions:(id)a4;
+ (BOOL)loadedInstanceWithBoundComputeStageDevices:(id)a3 canBeUsedForRequestedComputeStageDevices:(id)a4;
+ (BOOL)loadedInstanceWithComputeDevice:(id)a3 boundToComputeStage:(id)a4 canBeUsedForProcessingDeviceBridge:(id)a5;
+ (BOOL)runSuccessReportingBlockSynchronously:(id)a3 detector:(id)a4 qosClass:(unsigned int)a5 error:(id *)a6;
+ (Class)detectorClassAndConfigurationOptions:(id *)a3 forDetectorType:(id)a4 options:(id)a5 error:(id *)a6;
+ (Class)detectorClassForDetectorType:(id)a3 configuredWithOptions:(id)a4 error:(id *)a5;
+ (Class)detectorClassForDetectorType:(id)a3 error:(id *)a4;
+ (VNControlledCapacityTasksQueue)detectorCropCreationAsyncTasksQueue;
+ (VNControlledCapacityTasksQueue)detectorCropProcessingAsyncTasksQueue;
+ (VNControlledCapacityTasksQueue)detectorInternalProcessingAsyncTasksQueue;
+ (id)_computeStageDeviceBindingsForConfiguration:(id)a3 error:(id *)a4;
+ (id)_detectorClassForDetectorType:(void *)a3 options:(void *)a4 detectorCreationOptions:(uint64_t)a5 error:;
+ (id)computeDeviceForComputeStage:(id)a3 configurationOptions:(id)a4 error:(id *)a5;
+ (id)computeDeviceForConfiguredProcessingDeviceBridge:(id)a3 computeStage:(id)a4 supportedComputeDevices:(id)a5 error:(id *)a6;
+ (id)computeStageDevicesForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)computeStagesToBindForConfigurationOptions:(id)a3;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)detectorName;
+ (id)detectorWithConfigurationOptions:(id)a3 forSession:(id)a4 error:(id *)a5;
+ (id)fullyPopulatedConfigurationOptionsWithOverridingOptions:(id)a3 populateComputeDevice:(BOOL)a4;
+ (id)keyForDetectorWithConfigurationOptions:(id)a3;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)supportedImageSizeSetForEspressoModelAtPath:(id)a3 inputImageBlobName:(id)a4 analysisPixelFormatType:(unsigned int)a5 error:(id *)a6;
+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4;
+ (unsigned)VNClassCode;
+ (void)fullyPopulateConfigurationOptions:(id)a3;
+ (void)recordDefaultConfigurationOptionsInDictionary:(id)a3;
- (BOOL)canBehaveAsDetectorOfClass:(Class)a3 withConfiguration:(id)a4;
- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4;
- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9;
- (BOOL)currentQueueIsSynchronizationQueue;
- (BOOL)getOptionalCanceller:(id *)a3 inOptions:(id)a4 error:(id *)a5;
- (BOOL)needsMetalContext;
- (BOOL)validateImageBuffer:(id)a3 error:(id *)a4;
- (NSString)description;
- (VNDetector)initWithConfigurationOptions:(id)a3;
- (id)boundComputeDeviceForComputeStage:(id)a3 error:(id *)a4;
- (id)computeDeviceForComputeStage:(id)a3 processingOptions:(id)a4 error:(id *)a5;
- (id)computeDeviceOfTypes:(unint64_t)a3 forComputeStage:(id)a4 processingOptions:(id)a5 error:(id *)a6;
- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)newMetalContextForConfigurationOptions:(id)a3 error:(id *)a4;
- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9;
- (id)processUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8;
- (id)requiredCancellerInOptions:(id)a3 error:(id *)a4;
- (id)validatedImageBufferFromOptions:(id)a3 error:(id *)a4;
- (void)dealloc;
- (void)produceObservationsWithRegionOfInterest:(CGRect)a3 detectorProcessingOptions:(NSDictionary *)a4 completionHandler:(id)a5;
- (void)recordImageCropQuickLookInfoFromOptions:(id)a3 toObservation:(id)a4;
- (void)recordImageCropQuickLookInfoFromOptionsSafe:(id)a3 toObservation:(id)a4;
- (void)recordImageCropQuickLookInfoToOptions:(id)a3 cacheKey:(id)a4 imageBuffer:(id)a5;
- (void)recordImageCropQuickLookInfoToOptionsSafe:(id)a3 cacheKey:(id)a4 imageBuffer:(id)a5;
@end

@implementation VNDetector

+ (BOOL)areExistingInitializationOptions:(id)a3 compatibleWithOptions:(id)a4
{
  v4 = sub_1A5FD3C0C();
  v5 = sub_1A5FD3C0C();
  swift_getObjCClassMetadata();
  v6 = sub_1A5C59F64(v4, v5);

  return v6 & 1;
}

- (void)produceObservationsWithRegionOfInterest:(CGRect)a3 detectorProcessingOptions:(NSDictionary *)a4 completionHandler:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB1F30E0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(a5);
  v16 = swift_allocObject();
  v16[2] = x;
  v16[3] = y;
  v16[4] = width;
  v16[5] = height;
  *(v16 + 6) = a4;
  *(v16 + 7) = v15;
  *(v16 + 8) = self;
  v17 = sub_1A5FD40AC();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1A6016AC0;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1A6016AD0;
  v19[5] = v18;
  v20 = a4;
  v21 = self;
  sub_1A5C5AA24(0, 0, v14, &unk_1A6016AE0, v19);
}

- (NSString)description
{
  v15.receiver = self;
  v15.super_class = VNDetector;
  v3 = [(VNDetector *)&v15 description];
  v4 = [(VNDetector *)self boundComputeStageDevices];
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __25__VNDetector_description__block_invoke;
    v13 = &unk_1E77B3F58;
    v6 = v5;
    v14 = v6;
    [v4 enumerateKeysAndObjectsUsingBlock:&v10];
    v7 = [v6 componentsJoinedByString:{@", "}];
    v8 = [v3 stringByAppendingFormat:@" bound to [%@]", v7, v10, v11, v12, v13];

    v3 = v8;
  }

  return v3;
}

void __25__VNDetector_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ --> %@", v7, v5];
  [*(a1 + 32) addObject:v6];
}

- (void)recordImageCropQuickLookInfoFromOptionsSafe:(id)a3 toObservation:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_detectorMultiSessionAccessLock);
  [(VNDetector *)self recordImageCropQuickLookInfoFromOptions:v7 toObservation:v6];
  os_unfair_lock_unlock(&self->_detectorMultiSessionAccessLock);
}

- (void)recordImageCropQuickLookInfoToOptionsSafe:(id)a3 cacheKey:(id)a4 imageBuffer:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_detectorMultiSessionAccessLock);
  [(VNDetector *)self recordImageCropQuickLookInfoToOptions:v10 cacheKey:v8 imageBuffer:v9];
  os_unfair_lock_unlock(&self->_detectorMultiSessionAccessLock);
}

- (void)recordImageCropQuickLookInfoFromOptions:(id)a3 toObservation:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 objectForKey:@"VNDetectorInternalProcessOption_CacheKeys"];
  [v5 setRequestImageBuffersCacheKeys:v6];
  v7 = [v8 objectForKey:@"VNDetectorInternalProcessOption_ImageBuffers"];
  [v5 setRequestImageBuffers:v7];
}

- (void)recordImageCropQuickLookInfoToOptions:(id)a3 cacheKey:(id)a4 imageBuffer:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
  [v9 addPointer:v7];
  v10 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  [v10 addPointer:v8];
  [v11 setObject:v9 forKey:@"VNDetectorInternalProcessOption_CacheKeys"];
  [v11 setObject:v10 forKey:@"VNDetectorInternalProcessOption_ImageBuffers"];
}

- (id)computeDeviceOfTypes:(unint64_t)a3 forComputeStage:(id)a4 processingOptions:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [(VNDetector *)self computeDeviceForComputeStage:v10 processingOptions:v11 error:a6];
  if (!v12)
  {
    goto LABEL_6;
  }

  if ([VNComputeDeviceUtilities computeDevice:v12 isOneTypeOfTypes:a3])
  {
    v13 = v12;
    goto LABEL_7;
  }

  if (a6)
  {
    [VNError errorForUnsupportedComputeDevice:v12];
    *a6 = v13 = 0;
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

LABEL_7:

  return v13;
}

- (id)computeDeviceForComputeStage:(id)a3 processingOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(VNDetector *)self boundComputeStageDevices];
  v11 = [v10 objectForKeyedSubscript:v8];
  v12 = [v9 objectForKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
  v13 = [v12 objectForKeyedSubscript:v8];
  if (!v13)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (!v11)
  {
LABEL_9:
    v15 = [(VNDetector *)self configurationOptions];
    v16 = [v15 mutableCopy];

    [v16 addEntriesFromDictionary:v9];
    v14 = [objc_opt_class() computeDeviceForComputeStage:v8 configurationOptions:v16 error:a5];

    goto LABEL_10;
  }

  if ([v11 isEqual:v13])
  {
LABEL_8:
    v14 = v11;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_9;
  }

  if (a5)
  {
    [VNError errorForUnsupportedComputeDevice:v13];
    *a5 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

LABEL_10:

  return v14;
}

- (id)requiredCancellerInOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNDetectorProcessOption_Canceller" inOptions:v5 error:a4];

  return v6;
}

- (BOOL)getOptionalCanceller:(id *)a3 inOptions:(id)a4 error:(id *)a5
{
  v7 = a4;
  LOBYTE(a5) = [VNValidationUtilities getOptionalObject:a3 ofClass:objc_opt_class() forKey:@"VNDetectorProcessOption_Canceller" inOptions:v7 error:a5];

  return a5;
}

- (id)boundComputeDeviceForComputeStage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(VNDetector *)self boundComputeStageDevices];
  v8 = [v7 objectForKey:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else if (a4)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ was not bound to a compute device", v6];
    *a4 = [VNError errorForInvalidModelWithLocalizedDescription:v11];
  }

  return v9;
}

- (id)newMetalContextForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_opt_class() computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v5 error:a4];
  if (v6)
  {
    v7 = [VNComputeDeviceUtilities metalDeviceForComputeDevice:v6];
    v8 = [VNMetalContext metalContextForDevice:v7 error:a4];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)needsMetalContext
{
  v2 = [(VNDetector *)self configurationOptions];
  v3 = [objc_opt_class() computeStageDevicesForConfigurationOptions:v2 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"VNComputeStageMain"];
    if (v5)
    {
      v6 = [VNComputeDeviceUtilities isGPUComputeDevice:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)validatedImageBufferFromOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = 0;
  v7 = [VNValidationUtilities getArray:&v13 forKey:@"VNDetectorProcessOption_InputImageBuffers" inOptions:v6 withElementsOfClass:objc_opt_class() requiredMinimumCount:1 allowedMaximumCount:1 error:a4];
  v8 = v13;
  v9 = v8;
  if (v7)
  {
    v10 = [v8 firstObject];
    if ([(VNDetector *)self validateImageBuffer:v10 error:a4])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)processRegionOfInterest:(CGRect)a3 croppedPixelBuffer:(const __CVBuffer *)a4 options:(id)a5 qosClass:(unsigned int)a6 warningRecorder:(id)a7 error:(id *)a8 progressHandler:(id)a9
{
  if (a8)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    v15 = [v11 stringWithFormat:@"%@ does not implement %@", v13, v14];
    *a8 = [VNError errorWithCode:3 message:v15];
  }

  return 0;
}

- (BOOL)createRegionOfInterestCrop:(CGRect)a3 options:(id)a4 qosClass:(unsigned int)a5 warningRecorder:(id)a6 pixelBuffer:(__CVBuffer *)a7 error:(id *)a8 progressHandler:(id)a9
{
  if (a8)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = NSStringFromSelector(a2);
    v15 = [v11 stringWithFormat:@"%@ does not implement %@", v13, v14];
    *a8 = [VNError errorWithCode:3 message:v15];
  }

  return 0;
}

- (BOOL)validateImageBuffer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 width];
  v8 = [v6 height];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__VNDetector_validateImageBuffer_error___block_invoke;
  v10[3] = &unk_1E77B6810;
  v10[4] = self;
  LOBYTE(a4) = [VNValidationUtilities validateNonZeroImageWidth:v7 height:v8 componentNameProvidingBlock:v10 error:a4];

  return a4;
}

uint64_t __40__VNDetector_validateImageBuffer_error___block_invoke()
{
  v0 = objc_opt_class();

  return [v0 detectorName];
}

- (id)internalProcessUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  objc_initWeak(location, self);
  v20 = [objc_opt_class() VNClassCode];
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v62[3] = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__16828;
  v60 = __Block_byref_object_dispose__16829;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__16828;
  v54 = __Block_byref_object_dispose__16829;
  v55 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__VNDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke;
  block[3] = &unk_1E77B3E90;
  objc_copyWeak(v47, location);
  v45 = &v50;
  v48 = v20;
  v49 = a3;
  v47[1] = *&x;
  v47[2] = *&y;
  v47[3] = *&width;
  v47[4] = *&height;
  v21 = v17;
  v42 = v21;
  v22 = v18;
  v43 = v22;
  v46 = v62;
  v23 = v19;
  v44 = v23;
  v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, block);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __119__VNDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3;
  v31[3] = &unk_1E77B3F08;
  objc_copyWeak(v38, location);
  v39 = a3;
  v40 = v20;
  v35 = &v50;
  v36 = &v56;
  v38[1] = *&x;
  v38[2] = *&y;
  v38[3] = *&width;
  v38[4] = *&height;
  v37 = v62;
  v25 = v21;
  v32 = v25;
  v26 = v22;
  v33 = v26;
  v27 = v23;
  v34 = v27;
  v28 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a3, 0, v31);
  v24[2](v24);
  v28[2](v28);
  if ([VNValidationUtilities validateAsyncStatusResult:v51[5] error:a7])
  {
    v29 = v57[5];
  }

  else
  {
    v29 = 0;
  }

  objc_destroyWeak(v38);
  objc_destroyWeak(v47);
  _Block_object_dispose(&v50, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(v62, 8);
  objc_destroyWeak(location);

  return v29;
}

void __119__VNDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    kdebug_trace();
    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __119__VNDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_2;
    aBlock[3] = &unk_1E77B3E68;
    v38 = *(a1 + 116);
    v9 = WeakRetained;
    v31 = v9;
    v10 = *(a1 + 96);
    v36 = *(a1 + 80);
    v37 = v10;
    v32 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 64);
    v33 = v11;
    v35 = v12;
    v34 = *(a1 + 48);
    v13 = _Block_copy(aBlock);
    v29 = 0;
    v14 = VNExecuteBlock(v13, &v29);
    v15 = v29;
    v16 = [[VNAsyncStatus alloc] initWithStatus:v14 error:v15];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    VNValidatedLog(1, @"createRegionOfInterestCropForProcessingBlock: finish processing; currentDetector: %@", v19, v20, v21, v22, v23, v24, v9);
    kdebug_trace();
  }

  else
  {
    v25 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v26 = [[VNAsyncStatus alloc] initWithStatus:0 error:v25];
    v27 = *(*(a1 + 56) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
  }
}

void __119__VNDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    VNValidatedLog(1, @"processRegionOfInterestBlock: start processing; currentDetector: %@", v3, v4, v5, v6, v7, v8, WeakRetained);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __119__VNDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4;
    aBlock[3] = &unk_1E77B3EE0;
    v10 = v9;
    v29 = v10;
    v37 = vrev64_s32(*(a1 + 120));
    v33 = *(a1 + 56);
    v35 = *(a1 + 88);
    v36 = *(a1 + 104);
    v34 = *(a1 + 72);
    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    v32 = *(a1 + 48);
    v11 = _Block_copy(aBlock);
    v27 = 0;
    v12 = VNExecuteBlock(v11, &v27);
    v13 = v27;
    v14 = [[VNAsyncStatus alloc] initWithStatus:v12 error:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    VNValidatedLog(1, @"processRegionOfInterestBlock: finish processing; currentDetector: %@", v17, v18, v19, v20, v21, v22, v10);
    kdebug_trace();
  }

  else
  {
    v23 = [VNError errorForInternalErrorWithLocalizedDescription:@"Currently executed Detector should not be nil"];
    v24 = [[VNAsyncStatus alloc] initWithStatus:0 error:v23];
    v25 = *(*(a1 + 56) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  CVPixelBufferRelease(*(*(*(a1 + 72) + 8) + 24));
  *(*(*(a1 + 72) + 8) + 24) = 0;
}

BOOL __119__VNDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_4(uint64_t a1, void *a2)
{
  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterestBlock: start processing (crop is ready); currentDetector: %@", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  if ([*(*(*(a1 + 64) + 8) + 40) completed])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __119__VNDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5;
    aBlock[3] = &unk_1E77B3EB8;
    v10 = *(a1 + 32);
    v27 = *(a1 + 120);
    v11 = *(a1 + 88);
    v26 = *(a1 + 104);
    v12 = *(a1 + 72);
    v25 = v11;
    v24 = v12;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v10;
    *(&v17 + 1) = v13;
    v22 = v17;
    v23 = v16;
    v18 = _Block_copy(aBlock);
    CVPixelBufferLockBaseAddress(*(*(*(a1 + 80) + 8) + 24), 1uLL);
    [objc_opt_class() runSuccessReportingBlockSynchronously:v18 detector:*(a1 + 32) qosClass:*(a1 + 124) error:a2];
    CVPixelBufferUnlockBaseAddress(*(*(*(a1 + 80) + 8) + 24), 1uLL);
    v19 = *(*(*(a1 + 72) + 8) + 40) != 0;
  }

  else if (a2)
  {
    [*(*(*(a1 + 64) + 8) + 40) error];
    *a2 = v19 = 0;
  }

  else
  {
    return 0;
  }

  return v19;
}

BOOL __119__VNDetector_internalProcessUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  kdebug_trace();
  VNValidatedLog(1, @"processRegionOfInterest Netto: start processing; currentDetector: %@", v4, v5, v6, v7, v8, v9, *(a1 + 32));
  v10 = [*(a1 + 32) processRegionOfInterest:*(*(*(a1 + 72) + 8) + 24) croppedPixelBuffer:*(a1 + 40) options:*(a1 + 116) qosClass:*(a1 + 48) warningRecorder:a2 error:*(a1 + 56) progressHandler:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  VNValidatedLog(1, @"processRegionOfInterest Netto: finish processing; currentDetector: %@", v13, v14, v15, v16, v17, v18, *(a1 + 32));
  kdebug_trace();
  return *(*(*(a1 + 64) + 8) + 40) != 0;
}

- (BOOL)currentQueueIsSynchronizationQueue
{
  synchronizationQueue = self->_synchronizationQueue;
  if (synchronizationQueue)
  {
    LOBYTE(synchronizationQueue) = [(VNControlledCapacityTasksQueue *)synchronizationQueue currentQueueIsSynchronizationQueue];
  }

  return synchronizationQueue;
}

- (id)processUsingQualityOfServiceClass:(unsigned int)a3 options:(id)a4 regionOfInterest:(CGRect)a5 warningRecorder:(id)a6 error:(id *)a7 progressHandler:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v17 = a4;
  v18 = a6;
  v19 = a8;
  v20 = [objc_opt_class() VNClassCode];
  v21 = [(VNDetector *)self signPostAdditionalParameter];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__16828;
  v50 = __Block_byref_object_dispose__16829;
  v51 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__VNDetector_processUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke;
  aBlock[3] = &unk_1E77B3E40;
  v44 = a3;
  v22 = v17;
  v34 = v22;
  v35 = self;
  v45 = v20;
  v38 = &v46;
  v39 = v21;
  v40 = x;
  v41 = y;
  v42 = width;
  v43 = height;
  v23 = v18;
  v36 = v23;
  v24 = v19;
  v37 = v24;
  v25 = _Block_copy(aBlock);
  v32 = 0;
  v26 = VNExecuteBlock(v25, &v32);
  v27 = v32;
  v28 = v27;
  if (v26)
  {
    v29 = v47[5];
  }

  else if (a7)
  {
    v30 = v27;
    v29 = 0;
    *a7 = v28;
  }

  else
  {
    v29 = 0;
  }

  _Block_object_dispose(&v46, 8);

  return v29;
}

BOOL __111__VNDetector_processUsingQualityOfServiceClass_options_regionOfInterest_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) mutableCopy];
  kdebug_trace();
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 112);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v21 = 0;
  v13 = [v11 internalProcessUsingQualityOfServiceClass:v6 options:v4 regionOfInterest:v12 warningRecorder:&v21 error:*(a1 + 56) progressHandler:{v7, v8, v9, v10}];
  v14 = v21;
  v15 = *(*(a1 + 64) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v13;

  objc_autoreleasePoolPop(v5);
  v17 = *(*(*(a1 + 64) + 8) + 40);
  v18 = v17 != 0;
  if (a2 && !v17)
  {
    v19 = v14;
    *a2 = v14;
  }

  kdebug_trace();
  return v18;
}

- (BOOL)canBehaveAsDetectorOfClass:(Class)a3 withConfiguration:(id)a4
{
  v6 = a4;
  v7 = [(objc_class *)a3 keyForDetectorWithConfigurationOptions:v6];
  v8 = objc_opt_class();
  v9 = [(VNDetector *)self configurationOptions];
  v10 = [v8 keyForDetectorWithConfigurationOptions:v9];

  if ([v7 isEqual:v10])
  {
    v11 = [(VNDetector *)self boundComputeStageDevices];
    v14 = 1;
    if (v11)
    {
      v12 = [v6 objectForKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
      if (!v12 || (v13 = [objc_opt_class() loadedInstanceWithBoundComputeStageDevices:v11 canBeUsedForRequestedComputeStageDevices:v12], v12, (v13 & 1) == 0))
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)completeInitializationForSession:(id)a3 error:(id *)a4
{
  v6 = [(VNDetector *)self configurationOptions];
  v7 = [objc_opt_class() _computeStageDeviceBindingsForConfiguration:v6 error:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];
    boundComputeStageDevices = self->_boundComputeStageDevices;
    self->_boundComputeStageDevices = v9;

    self->_backingStore = 0;
    v11 = [v6 objectForKeyedSubscript:@"VNDetectorInitOption_ModelBackingStore"];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 unsignedIntegerValue];
      if (v13 < 3)
      {
        self->_backingStore = v13;
      }
    }

    v16 = 1;
    if ([(VNDetector *)self needsMetalContext])
    {
      v14 = [(VNDetector *)self newMetalContextForConfigurationOptions:v6 error:a4];
      metalContext = self->_metalContext;
      self->_metalContext = v14;

      if (!self->_metalContext)
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)dealloc
{
  [objc_opt_class() VNClassCode];
  kdebug_trace();
  v3.receiver = self;
  v3.super_class = VNDetector;
  [(VNDetector *)&v3 dealloc];
}

- (VNDetector)initWithConfigurationOptions:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VNDetector;
  v5 = [(VNDetector *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_class();
    if (([(objc_class *)v6 isReentrant]& 1) == 0)
    {
      v7 = +[VNDetectorSyncTasksQueueCache sharedCache];
      v8 = NSStringFromClass(v6);
      v9 = [v7 queueWithUniqueAppendix:v8];
      synchronizationQueue = v5->_synchronizationQueue;
      v5->_synchronizationQueue = v9;
    }

    v11 = [v4 copy];
    configurationOptions = v5->_configurationOptions;
    v5->_configurationOptions = v11;

    v5->_detectorMultiSessionAccessLock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

+ (unsigned)VNClassCode
{
  v3 = 0;
  [VNClassRegistrar getClassCode:&v3 forClass:a1 error:0];
  return v3;
}

+ (id)computeStageDevicesForConfigurationOptions:(id)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 supportedComputeStageDevicesForOptions:v6 error:a4];
  v17 = v7;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [a1 computeDeviceForComputeStage:v13 configurationOptions:v6 error:a4];
          if (!v14)
          {

            v15 = 0;
            goto LABEL_12;
          }

          [v8 setObject:v14 forKeyedSubscript:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = v8;
LABEL_12:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)computeDeviceForComputeStage:(id)a3 configurationOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 supportedComputeStageDevicesForOptions:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    v17 = 0;
    goto LABEL_28;
  }

  v12 = [v10 objectForKeyedSubscript:v8];
  if ([v12 count])
  {
    v13 = [v9 objectForKeyedSubscript:@"VNDetectorOption_ComputeStageDeviceAssignments"];
    v14 = [v13 objectForKeyedSubscript:v8];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ([v12 containsObject:v14])
        {
          v18 = v14;
LABEL_20:
          v14 = v18;
          v17 = v18;
          goto LABEL_25;
        }

        if (a5)
        {
          [VNError errorForUnsupportedComputeDevice:v14];
          *a5 = v17 = 0;
          goto LABEL_25;
        }

LABEL_24:
        v17 = 0;
        goto LABEL_25;
      }

      v15 = v14;
      v14 = [a1 computeDeviceForConfiguredProcessingDeviceBridge:v15 computeStage:v8 supportedComputeDevices:v12 error:a5];

      if (!v14)
      {
LABEL_8:

        v17 = v14;
LABEL_25:

        goto LABEL_26;
      }

      if ([v12 containsObject:v14])
      {
        v16 = v14;
        goto LABEL_8;
      }
    }

    v19 = [VNComputeDeviceUtilities mostPerformantComputeDeviceOfComputeDevices:v12];

    if (v19)
    {
      v18 = v19;
      goto LABEL_20;
    }

    if (a5)
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v21 = NSStringFromClass(a1);
      v22 = [v20 initWithFormat:@"%@ could not resolve a compute device", v21];

      *a5 = [VNError errorForInternalErrorWithLocalizedDescription:v22];
    }

    v14 = 0;
    goto LABEL_24;
  }

  if (a5)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"No available compute device for %@", v8];
    [VNError errorForInvalidOperationWithLocalizedDescription:v13];
    *a5 = v17 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v17 = 0;
LABEL_27:

LABEL_28:

  return v17;
}

+ (id)computeDeviceForConfiguredProcessingDeviceBridge:(id)a3 computeStage:(id)a4 supportedComputeDevices:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 computeDevice];
  v11 = [VNComputeDeviceUtilities computeDeviceOfComputeDevices:v9 mostCompatibleWithComputeDevice:v10 options:3];
  if (!v11)
  {
    v11 = [VNComputeDeviceUtilities mostPerformantComputeDeviceOfComputeDevices:v9];
    if (!v11)
    {
      if (a6)
      {
        v12 = [v8 processingDevice];
        *a6 = [VNError errorForUnsupportedProcessingDevice:v12];
      }

      v11 = 0;
    }
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

+ (id)supportedImageSizeSetForOptions:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = [VNError errorForUnimplementedMethod:a2 ofObject:a1];
  }

  return 0;
}

+ (BOOL)runSuccessReportingBlockSynchronously:(id)a3 detector:(id)a4 qosClass:(unsigned int)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__16828;
  v28 = __Block_byref_object_dispose__16829;
  v29 = 0;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __76__VNDetector_runSuccessReportingBlockSynchronously_detector_qosClass_error___block_invoke;
  v19 = &unk_1E77B3F30;
  v23 = a5;
  v21 = &v30;
  v11 = v9;
  v20 = v11;
  v22 = &v24;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a5, 0, &v16);
  v13 = [v10 synchronizationQueue];
  if (v13 && ([v10 currentQueueIsSynchronizationQueue] & 1) == 0)
  {
    [v13 dispatchSyncByPreservingQueueCapacity:v12];
  }

  else
  {
    v12[2](v12);
  }

  v14 = *(v31 + 24);
  if (a6 && (v31[3] & 1) == 0)
  {
    *a6 = v25[5];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v14;
}

void __76__VNDetector_runSuccessReportingBlockSynchronously_detector_qosClass_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = VNExecuteBlock(v2, &obj);
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

+ (BOOL)loadedInstanceWithBoundComputeStageDevices:(id)a3 canBeUsedForRequestedComputeStageDevices:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v6 objectForKeyedSubscript:{v11, v16}];
        if (v12)
        {
          v14 = [v7 objectForKeyedSubscript:v11];
          LOBYTE(a1) = ([v14 isEqual:v12] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(a1, "loadedInstanceWithComputeDevice:boundToComputeStage:canBeUsedForProcessingDeviceBridge:", v12, v11, v14) & 1) != 0;

          v13 = 0;
          goto LABEL_16;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_16:

  return (v13 | a1) & 1;
}

+ (BOOL)loadedInstanceWithComputeDevice:(id)a3 boundToComputeStage:(id)a4 canBeUsedForProcessingDeviceBridge:(id)a5
{
  v6 = a5;
  v7 = [VNComputeDeviceUtilities typeOfComputeDevice:a3];
  v8 = [v6 computeDevice];
  LOBYTE(v7) = v7 == [VNComputeDeviceUtilities typeOfComputeDevice:v8];

  return v7;
}

+ (id)supportedImageSizeSetForEspressoModelAtPath:(id)a3 inputImageBlobName:(id)a4 analysisPixelFormatType:(unsigned int)a5 error:(id *)a6
{
  v6 = *&a5;
  v13[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  if ([VNEspressoHelpers getWidth:&v12 height:&v11 ofBlobNamed:a4 forNetworkModelFileWithPath:a3 error:a6])
  {
    v7 = [VNSupportedImageSize alloc];
    v8 = [(VNSupportedImageSize *)v7 initWithIdealFormat:v6 width:v12 height:v11 orientation:1 aspectRatioHandling:0 orientationAgnostic:0];
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)keyForDetectorWithConfigurationOptions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = [a1 configurationOptionKeysForDetectorKey];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{(objc_msgSend(v15, "count") << 6) + 64}];
  v6 = NSStringFromClass(a1);
  [v5 appendString:v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v15;
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = [a1 detectorKeyComponentForDetectorConfigurationOptionKey:v10 value:v11];
        [v5 appendFormat:@":%@=%@", v10, v12];
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v13 = [v5 copy];

  return v13;
}

+ (id)configurationOptionKeysForDetectorKey
{
  if (+[VNDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNDetector configurationOptionKeysForDetectorKey]::onceToken, &__block_literal_global_16899);
  }

  v3 = +[VNDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v3;
}

void __51__VNDetector_configurationOptionKeysForDetectorKey__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"VNDetectorOption_EspressoPlanPriority";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v0];
  v2 = +[VNDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v1;
}

+ (id)_computeStageDeviceBindingsForConfiguration:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = [a1 computeStagesToBindForConfigurationOptions:v6];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v16];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [a1 computeDeviceForComputeStage:v12 configurationOptions:v6 error:a4];
        if (!v13)
        {

          v14 = 0;
          goto LABEL_11;
        }

        [v7 setObject:v13 forKey:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = v7;
LABEL_11:

  return v14;
}

+ (id)detectorWithConfigurationOptions:(id)a3 forSession:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 detectorClassForConfigurationOptions:v8 error:a5];
  if (!v10)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v11 = [[v10 alloc] initWithConfigurationOptions:v8];
  v12 = v11;
  if (!v11)
  {
    if (a5)
    {
      +[VNError errorForMemoryAllocationFailure];
      *a5 = v13 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  if (![v11 completeInitializationForSession:v9 error:a5])
  {
    goto LABEL_8;
  }

  v13 = v12;
LABEL_9:

LABEL_10:

  return v13;
}

+ (id)fullyPopulatedConfigurationOptionsWithOverridingOptions:(id)a3 populateComputeDevice:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [a1 recordDefaultConfigurationOptionsInDictionary:v7];
  [v7 addEntriesFromDictionary:v6];
  [a1 fullyPopulateConfigurationOptions:v7];
  if (v4)
  {
    v8 = [v7 objectForKeyedSubscript:@"VNDetectorInternalOption_ModelComputeDevice"];

    if (!v8)
    {
      v9 = [a1 computeDeviceForComputeStage:@"VNComputeStageMain" configurationOptions:v7 error:0];
      [v7 setObject:v9 forKeyedSubscript:@"VNDetectorInternalOption_ModelComputeDevice"];
    }
  }

  return v7;
}

+ (void)fullyPopulateConfigurationOptions:(id)a3
{
  v3 = a3;
  [v3 removeObjectForKey:@"VNDetectorProcessOption_InputImageBuffers"];
  [v3 removeObjectForKey:@"VNDetectorProcessOption_Canceller"];
}

+ (void)recordDefaultConfigurationOptionsInDictionary:(id)a3
{
  v3 = a3;
  [v3 setObject:&unk_1F19C14C8 forKeyedSubscript:@"VNDetectorInitOption_ModelBackingStore"];
  [v3 setObject:&unk_1F19C14C8 forKeyedSubscript:@"VNDetectorProcessOption_ImageCropAndScaleOption"];
  [v3 setObject:&unk_1F19C14C8 forKeyedSubscript:@"VNDetectorOption_RequestDetectionLevel"];
}

+ (id)detectorName
{
  v2 = NSStringFromClass(a1);
  if ([v2 hasPrefix:@"VN"])
  {
    v3 = [v2 substringFromIndex:2];
    v4 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    v5 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(v3, "length") + 5}];
    v6 = [MEMORY[0x1E696AE88] scannerWithString:v3];
    v7 = 0;
    while (([v6 isAtEnd] & 1) == 0)
    {
      v14 = 0;
      v8 = [v6 scanUpToCharactersFromSet:v4 intoString:&v14];
      v9 = v14;
      if (v8)
      {
        [v5 appendString:v9];
      }

      v13 = v9;
      v10 = [v6 scanCharactersFromSet:v4 intoString:&v13];
      v11 = v13;

      if (v10)
      {
        if (v7)
        {
          [v5 appendString:@" "];
        }

        [v5 appendString:v11];
        v7 = 1;
      }
    }
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

+ (Class)detectorClassAndConfigurationOptions:(id *)a3 forDetectorType:(id)a4 options:(id)a5 error:(id *)a6
{
  v6 = [(VNDetector *)a1 _detectorClassForDetectorType:a4 options:a5 detectorCreationOptions:a3 error:a6];

  return v6;
}

+ (id)_detectorClassForDetectorType:(void *)a3 options:(void *)a4 detectorCreationOptions:(uint64_t)a5 error:
{
  v8 = a2;
  v9 = a3;
  v10 = [objc_opt_self() detectorClassForDetectorType:v8 error:a5];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 fullyPopulatedConfigurationOptionsWithOverridingOptions:v9 populateComputeDevice:0];
    v13 = [v11 detectorClassForConfigurationOptions:v12 error:a5];
    if (v13)
    {
      if (a4)
      {
        v14 = v12;
        *a4 = v12;
      }

      v15 = v13;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (Class)detectorClassForDetectorType:(id)a3 configuredWithOptions:(id)a4 error:(id *)a5
{
  v5 = [(VNDetector *)a1 _detectorClassForDetectorType:a3 options:a4 detectorCreationOptions:0 error:a5];

  return v5;
}

+ (Class)detectorClassForDetectorType:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (_detectorTypeToClassDictionary(void)::onceToken != -1)
  {
    dispatch_once(&_detectorTypeToClassDictionary(void)::onceToken, &__block_literal_global_550);
  }

  v6 = _detectorTypeToClassDictionary(void)::ourDetectorTypeToClassLookup;
  v7 = [v6 objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown detector type '%@'", v5];
    *a4 = [VNError errorForUnimplementedFunctionWithLocalizedDescription:v10];
  }

  return v8;
}

+ (VNControlledCapacityTasksQueue)detectorInternalProcessingAsyncTasksQueue
{
  v3 = +[VNDetectorAsyncTasksQueueCache sharedCache];
  v4 = NSStringFromClass(a1);
  v5 = [v3 queueWithUniqueAppendix:v4];

  if ([v5 maximumTasksCount] >= 5)
  {
    v6 = [objc_opt_class() maximumAllowedTasksInTheQueue];
    if (v6 >= 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = v6;
    }

    [v5 setMaximumTasksCount:v7];
  }

  return v5;
}

+ (VNControlledCapacityTasksQueue)detectorCropProcessingAsyncTasksQueue
{
  v2 = +[VNDetectorAsyncTasksQueueCache sharedCache];
  v3 = [v2 queueWithUniqueAppendix:@"CropProcessing"];

  return v3;
}

+ (VNControlledCapacityTasksQueue)detectorCropCreationAsyncTasksQueue
{
  v2 = +[VNDetectorAsyncTasksQueueCache sharedCache];
  v3 = [v2 queueWithUniqueAppendix:@"CropCreation"];

  return v3;
}

@end