@interface VNLensSmudgeDetector
+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (id)observationsFromE5RTExecutionOutputs:(id)a3 forFunctionDescriptor:(id)a4 originatingRequestSpecifier:(id)a5 options:(id)a6 error:(id *)a7;
@end

@implementation VNLensSmudgeDetector

- (id)observationsFromE5RTExecutionOutputs:(id)a3 forFunctionDescriptor:(id)a4 originatingRequestSpecifier:(id)a5 options:(id)a6 error:(id *)a7
{
  v37[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [VNValidationUtilities requiredSessionInOptions:v14 error:a7];
  if (v15)
  {
    v16 = [v12 allOutputs];
    v17 = [v16 firstObject];

    if (v17)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __125__VNLensSmudgeDetector_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke;
      v30 = &unk_1E77B5C08;
      v18 = v17;
      v31 = v18;
      v32 = &v33;
      v19 = _Block_copy(&v27);
      v20 = [v18 name];
      v21 = [v11 accessReadOnlyDataForName:v20 usingBlock:v19 error:a7];

      if (v21)
      {
        v22 = [VNRequestSpecifier specifierForRequestClass:objc_opt_class() revision:1 error:a7];
        LODWORD(v23) = *(v34 + 6);
        v24 = [VNLensSmudgeObservation observationForOriginatingRequestSpecifier:v22 confidence:a7 error:v23];
        v37[0] = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
      }

      else
      {
        v25 = 0;
      }

      _Block_object_dispose(&v33, 8);
    }

    else if (a7)
    {
      [VNError errorForInternalErrorWithLocalizedDescription:@"unable to determine output type"];
      *a7 = v25 = 0;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t __125__VNLensSmudgeDetector_observationsFromE5RTExecutionOutputs_forFunctionDescriptor_originatingRequestSpecifier_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) dataType] != 65552)
  {
    if (!a3)
    {
      goto LABEL_9;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected data type: %lu", objc_msgSend(*(a1 + 32), "dataType")];
    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v7];

LABEL_8:
    a3 = 0;
    goto LABEL_9;
  }

  v6 = [*(a1 + 32) storageByteCount];
  if ([v5 length] != 2)
  {
    if (!a3)
    {
      goto LABEL_9;
    }

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [*(a1 + 32) name];
    v10 = [v8 initWithFormat:@"%@ size is %lu bytes instead of the expected %lu bytes, \n", v9, objc_msgSend(v5, "length"), v6];

    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v10];

    goto LABEL_8;
  }

  src.data = [v5 bytes];
  a3 = 1;
  *&src.height = vdupq_n_s64(1uLL);
  src.rowBytes = 2;
  v13 = 2143289344;
  dest.data = &v13;
  *&dest.height = *&src.height;
  dest.rowBytes = 4;
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  *(*(*(a1 + 40) + 8) + 24) = v13;
LABEL_9:

  return a3;
}

+ (id)createE5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4
{
  [a1 E5RTVisionCoreComputeDeviceForConfigurationOptions:a3 error:?];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__VNLensSmudgeDetector_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a4;
  if (createE5RTFunctionDescriptorForConfigurationOptions_error__onceToken != -1)
  {
    dispatch_once(&createE5RTFunctionDescriptorForConfigurationOptions_error__onceToken, block);
  }

  v5 = createE5RTFunctionDescriptorForConfigurationOptions_error__descriptor;
  if (createE5RTFunctionDescriptorForConfigurationOptions_error__descriptor)
  {
    v6 = createE5RTFunctionDescriptorForConfigurationOptions_error__descriptor;
  }

  else if (a4)
  {
    *a4 = 0;
  }

  return v5;
}

uint64_t __82__VNLensSmudgeDetector_createE5RTFunctionDescriptorForConfigurationOptions_error___block_invoke(uint64_t a1)
{
  createE5RTFunctionDescriptorForConfigurationOptions_error__descriptor = [MEMORY[0x1E69DF998] smudgeDetectionNetworkForModelVersion:1 error:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4
{
  v4 = [MEMORY[0x1E69DF998] smudgeDetectionNetworkForModelVersion:1 error:a4];
  v5 = [v4 URL];

  return v5;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([VNLensSmudgeDetector supportsExecution:a3])
  {
    v7 = @"VNComputeStageMain";
    v4 = +[VNComputeDeviceUtilities allNeuralEngineComputeDevices];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end