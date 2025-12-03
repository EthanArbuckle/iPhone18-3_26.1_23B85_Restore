@interface VNEspressoprintUpgradeDetector
+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error;
+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error;
- ($FD4688982923A924290ECB669CAF1EC2)highResolutionNewEspressoprint;
- ($FD4688982923A924290ECB669CAF1EC2)highResolutionNewEspressoprintSigma;
- (BOOL)_bindEspressoprintClientBuffer:(id)buffer toNetworkInputBlobName:(id)name toNetworkBuffer:(id *)networkBuffer error:(id *)error;
- (BOOL)completeInitializationForSession:(id)session error:(id *)error;
- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler;
- (void)dealloc;
- (void)setHighResolutionNewEspressoprint:(id *)espressoprint;
- (void)setHighResolutionNewEspressoprintSigma:(id *)sigma;
@end

@implementation VNEspressoprintUpgradeDetector

- (void)setHighResolutionNewEspressoprintSigma:(id *)sigma
{
  v4 = *sigma->var2;
  v3 = *&sigma->var2[2];
  *&self->_highResolutionNewEspressoprintSigma.data = *&sigma->var0;
  *self->_highResolutionNewEspressoprintSigma.dim = v4;
  *&self->_highResolutionNewEspressoprintSigma.dim[2] = v3;
  v5 = *&sigma->var6;
  v7 = *sigma->var3;
  v6 = *&sigma->var3[2];
  *&self->_highResolutionNewEspressoprintSigma.width = *&sigma->var4;
  *&self->_highResolutionNewEspressoprintSigma.channels = v5;
  *self->_highResolutionNewEspressoprintSigma.stride = v7;
  *&self->_highResolutionNewEspressoprintSigma.stride[2] = v6;
  v9 = *&sigma->var10;
  v8 = *&sigma->var12;
  v10 = *&sigma->var8;
  *&self->_highResolutionNewEspressoprintSigma.storage_type = *&sigma->var14;
  *&self->_highResolutionNewEspressoprintSigma.stride_height = v9;
  *&self->_highResolutionNewEspressoprintSigma.stride_batch_number = v8;
  *&self->_highResolutionNewEspressoprintSigma.sequence_length = v10;
}

- ($FD4688982923A924290ECB669CAF1EC2)highResolutionNewEspressoprintSigma
{
  v3 = *&self[4].var3[2];
  *&retstr->var10 = *self[4].var3;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[4].var4;
  v4 = *&self[4].var0;
  *&retstr->var3[2] = *&self[3].var13;
  *&retstr->var4 = v4;
  v5 = *&self[4].var2[2];
  *&retstr->var6 = *self[4].var2;
  *&retstr->var8 = v5;
  v6 = *&self[3].var7;
  *&retstr->var0 = *&self[3].var5;
  *retstr->var2 = v6;
  v7 = *&self[3].var11;
  *&retstr->var2[2] = *&self[3].var9;
  *retstr->var3 = v7;
  return self;
}

- (void)setHighResolutionNewEspressoprint:(id *)espressoprint
{
  v4 = *espressoprint->var2;
  v3 = *&espressoprint->var2[2];
  *&self->_highResolutionNewEspressoprint.data = *&espressoprint->var0;
  *self->_highResolutionNewEspressoprint.dim = v4;
  *&self->_highResolutionNewEspressoprint.dim[2] = v3;
  v5 = *&espressoprint->var6;
  v7 = *espressoprint->var3;
  v6 = *&espressoprint->var3[2];
  *&self->_highResolutionNewEspressoprint.width = *&espressoprint->var4;
  *&self->_highResolutionNewEspressoprint.channels = v5;
  *self->_highResolutionNewEspressoprint.stride = v7;
  *&self->_highResolutionNewEspressoprint.stride[2] = v6;
  v9 = *&espressoprint->var10;
  v8 = *&espressoprint->var12;
  v10 = *&espressoprint->var8;
  *&self->_highResolutionNewEspressoprint.storage_type = *&espressoprint->var14;
  *&self->_highResolutionNewEspressoprint.stride_height = v9;
  *&self->_highResolutionNewEspressoprint.stride_batch_number = v8;
  *&self->_highResolutionNewEspressoprint.sequence_length = v10;
}

- ($FD4688982923A924290ECB669CAF1EC2)highResolutionNewEspressoprint
{
  v3 = *&self[3].var3[2];
  *&retstr->var10 = *self[3].var3;
  *&retstr->var12 = v3;
  *&retstr->var14 = self[3].var4;
  v4 = *&self[3].var0;
  *&retstr->var3[2] = *&self[2].var13;
  *&retstr->var4 = v4;
  v5 = *&self[3].var2[2];
  *&retstr->var6 = *self[3].var2;
  *&retstr->var8 = v5;
  v6 = *&self[2].var7;
  *&retstr->var0 = *&self[2].var5;
  *retstr->var2 = v6;
  v7 = *&self[2].var11;
  *&retstr->var2[2] = *&self[2].var9;
  *retstr->var3 = v7;
  return self;
}

- (BOOL)_bindEspressoprintClientBuffer:(id)buffer toNetworkInputBlobName:(id)name toNetworkBuffer:(id *)networkBuffer error:(id *)error
{
  bufferCopy = buffer;
  nameCopy = name;
  if (bufferCopy)
  {
    v12 = networkBuffer == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  [VNError VNAssert:v13 log:@"One or more of output parameters is/are NULL"];
  descriptorData = [bufferCopy descriptorData];
  bytes = [descriptorData bytes];

  memcpy(networkBuffer->var0, bytes, 4 * [bufferCopy elementCount]);
  espressoResources = [(VNEspressoModelFileBasedDetector *)self espressoResources];
  [espressoResources network];
  [nameCopy UTF8String];
  v17 = espresso_network_bind_buffer();

  if (error && v17)
  {
    *error = [VNError errorForEspressoReturnStatus:v17 localizedDescription:@"failed to bind buffer to network"];
  }

  return v17 == 0;
}

- (id)processRegionOfInterest:(CGRect)interest croppedPixelBuffer:(const __CVBuffer *)buffer options:(id)options qosClass:(unsigned int)class warningRecorder:(id)recorder error:(id *)error progressHandler:(id)handler
{
  optionsCopy = options;
  espressoprintClass = [objc_opt_class() espressoprintClass];
  v13 = [VNValidationUtilities requiredObjectOfClass:espressoprintClass forKey:@"VNEspressoprintUpgradeDetectorProcessOption_FromEspressoprint" inOptions:optionsCopy error:error];
  if (v13)
  {
    v14 = [VNValidationUtilities requiredObjectOfClass:espressoprintClass forKey:@"VNEspressoprintUpgradeDetectorProcessOption_ToEspressoprint" inOptions:optionsCopy error:error];
    if (v14)
    {
      if ([objc_opt_class() isSupportedUpgradeFromPreviousEspressoprint:v13 toNewLowResolutionEspressoprint:v14])
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __132__VNEspressoprintUpgradeDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke;
        aBlock[3] = &unk_1E77B4588;
        aBlock[4] = self;
        v19 = v13;
        v20 = v14;
        v15 = _Block_copy(aBlock);
        if (v15[2](v15, error))
        {
          error = MEMORY[0x1E695E0F0];
        }

        else
        {
          error = 0;
        }

        goto LABEL_12;
      }

      if (!error)
      {
LABEL_12:

        goto LABEL_13;
      }

      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Espressoprint upgrade is not supported for these pair of                                                                  prints produced with request revisions: from = %lu; to = %lu", objc_msgSend(v13, "requestRevision"), objc_msgSend(v14, "requestRevision")];
      *error = [VNError errorForInternalErrorWithLocalizedDescription:v16];
    }

    error = 0;
    goto LABEL_12;
  }

  error = 0;
LABEL_13:

  return error;
}

uint64_t __132__VNEspressoprintUpgradeDetector_processRegionOfInterest_croppedPixelBuffer_options_qosClass_warningRecorder_error_progressHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (![*(a1 + 32) _bindEspressoprintClientBuffer:*(a1 + 40) toNetworkInputBlobName:@"old_embedding" toNetworkBuffer:*(a1 + 32) + 88 error:a2] || !objc_msgSend(*(a1 + 32), "_bindEspressoprintClientBuffer:toNetworkInputBlobName:toNetworkBuffer:error:", *(a1 + 48), @"thumbnail_embedding", *(a1 + 32) + 256, a2))
  {
    return 0;
  }

  v4 = *(a1 + 32);

  return [v4 executePlanAndReturnError:a2];
}

- (BOOL)completeInitializationForSession:(id)session error:(id *)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VNEspressoprintUpgradeDetector;
  if ([(VNEspressoModelFileBasedDetector *)&v8 completeInitializationForSession:session error:?])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __73__VNEspressoprintUpgradeDetector_completeInitializationForSession_error___block_invoke;
    aBlock[3] = &__block_descriptor_36_e47_B36__0_____v_v_4Q__4Q_QQQQQQQQQQi_8r_v16B24__28l;
    v7 = 0;
    _Block_copy(aBlock);
    v9[0] = xmmword_1A603E840;
    v9[1] = unk_1A603E850;
    memset(__p, 0, sizeof(__p));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, v9, v10, 4uLL);
  }

  return 0;
}

BOOL __73__VNEspressoprintUpgradeDetector_completeInitializationForSession_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  *(a2 + 160) = 0x3030303030303030;
  *&v10 = 0x3030303030303030;
  *(&v10 + 1) = 0x3030303030303030;
  *(a2 + 128) = v10;
  *(a2 + 144) = v10;
  *(a2 + 96) = v10;
  *(a2 + 112) = v10;
  *(a2 + 64) = v10;
  *(a2 + 80) = v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v10;
  *a2 = v10;
  *(a2 + 16) = v10;
  espresso_buffer_pack_tensor_shape();
  v11 = *(a1 + 32);
  if (v11)
  {
    if (a5)
    {
      *a5 = [VNError errorForEspressoReturnStatus:v11 localizedDescription:@"failed to shape tensor"];
    }
  }

  else
  {
    if (a4)
    {
      *a2 = malloc_type_calloc(*(*a3 + 8), 4uLL, 0x356A4A0AuLL);
    }

    *(a2 + 160) = 65568;
  }

  return v11 == 0;
}

- (void)dealloc
{
  free(self->_highResolutionOldEspressoprint.data);
  self->_highResolutionOldEspressoprint.data = 0;
  free(self->_lowResolutionNewEspressoprint.data);
  self->_lowResolutionNewEspressoprint.data = 0;
  v3.receiver = self;
  v3.super_class = VNEspressoprintUpgradeDetector;
  [(VNDetector *)&v3 dealloc];
}

+ (id)supportedComputeStageDevicesForOptions:(id)options error:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:options];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (Class)detectorClassForConfigurationOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v6 = [optionsCopy objectForKeyedSubscript:@"VNEspressoprintUpgradeDetectorProcessOption_EspressoprintClass"];
  if (([v6 isEqual:objc_opt_class()] & 1) != 0 || objc_msgSend(v6, "isEqual:", objc_opt_class()))
  {
    v7 = objc_opt_class();
  }

  else if (error)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Unknown espresso print type"];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end