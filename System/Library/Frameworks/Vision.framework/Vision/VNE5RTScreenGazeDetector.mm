@interface VNE5RTScreenGazeDetector
+ (CGRect)normalizedScaledFaceBoundingBox:(id)a3;
+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)E5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)configurationOptionKeysForDetectorKey;
+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4;
+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4;
- (id)observationsFromE5RTExecutionOutputs:(id)a3 forFunctionDescriptor:(id)a4 originatingRequestSpecifier:(id)a5 options:(id)a6 error:(id *)a7;
@end

@implementation VNE5RTScreenGazeDetector

+ (CGRect)normalizedScaledFaceBoundingBox:(id)a3
{
  v3 = a3;
  [v3 unalignedBoundingBox];
  v13 = CGRectInset(v12, v12.size.width * -0.200000048 * 0.5, v12.size.height * -0.200000048 * 0.5);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;

  v8 = x;
  v9 = y;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (id)supportedComputeStageDevicesForOptions:(id)a3 error:(id *)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"VNComputeStageMain";
  v4 = [VNComputeDeviceUtilities allNeuralEngineComputeDevices:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  return v5;
}

+ (id)E5RTFunctionDescriptorForConfigurationOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __80__VNE5RTScreenGazeDetector_E5RTFunctionDescriptorForConfigurationOptions_error___block_invoke;
  v21 = &unk_1E77B6848;
  v23 = a1;
  v7 = v6;
  v22 = v7;
  v8 = _Block_copy(&aBlock);
  v9 = [a1 modelURLForConfigurationOptions:v7 error:a4];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = NSStringFromClass(a1);
    v12 = [a1 modelFileName];
    v13 = [v10 initWithFormat:@"%@:%@", v11, v12, aBlock, v19, v20, v21];

    v14 = +[VNFrameworkManager manager];
    v15 = [v14 detectorDescriptorsCache];
    v16 = [v15 objectForIdentifier:v13 creationBlock:v8 error:a4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

id __80__VNE5RTScreenGazeDetector_E5RTFunctionDescriptorForConfigurationOptions_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 40) E5RTProgramLibraryForConfigurationOptions:*(a1 + 32) error:a2];
  if (v4)
  {
    v5 = [*(a1 + 40) modelFunctionName];
    v6 = [*(a1 + 40) modelInputImageName];
    v7 = [*(a1 + 40) modelOutputXYName];
    v12[0] = v7;
    v8 = [*(a1 + 40) modelOutputDeviceGazeProbabilitiesName];
    v12[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v10 = [(VisionCoreE5RTInferenceFunctionDescriptor *)VNE5RTScreenGazeDetectorFunctionDescriptor descriptorForProgramLibrary:v4 functionName:v5 inputImageName:v6 outputNames:v9 confidencesOutputName:0 labelsFileName:0 error:a2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)modelURLForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = [a1 modelFileName];
  v6 = [VNEspressoHelpers pathForEspressoResourceWithFilename:v5 error:a4];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (Class)detectorClassForConfigurationOptions:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [VNValidationUtilities originatingRequestSpecifierInOptions:v5 specifyingRequestClass:objc_opt_class() error:a4];
  v7 = v6;
  if (v6)
  {
    if ([v6 requestRevision] == 2)
    {
      v11 = 0;
      if ([VNValidationUtilities getNSUIntegerValue:&v11 forKey:@"VNScreenGazeDetectorInitOption_ScreenSize" inOptions:v5 error:a4])
      {
        if (v11 == 1 || v11 == 2)
        {
          v9 = objc_opt_class();
          goto LABEL_14;
        }

        if (a4)
        {
          v8 = [VNError errorForUnsupportedRequestSpecifier:v7];
          goto LABEL_9;
        }
      }
    }

    else if (a4)
    {
      v8 = [VNError errorForUnsupportedRequestSpecifier:v7];
LABEL_9:
      v9 = 0;
      *a4 = v8;
      goto LABEL_14;
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

+ (id)configurationOptionKeysForDetectorKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__VNE5RTScreenGazeDetector_configurationOptionKeysForDetectorKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[VNE5RTScreenGazeDetector configurationOptionKeysForDetectorKey]::onceToken != -1)
  {
    dispatch_once(&+[VNE5RTScreenGazeDetector configurationOptionKeysForDetectorKey]::onceToken, block);
  }

  v2 = +[VNE5RTScreenGazeDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;

  return v2;
}

void __65__VNE5RTScreenGazeDetector_configurationOptionKeysForDetectorKey__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = &OBJC_METACLASS___VNE5RTScreenGazeDetector;
  v1 = objc_msgSendSuper2(&v5, sel_configurationOptionKeysForDetectorKey);
  v2 = [v1 mutableCopy];

  [v2 addObject:@"VNScreenGazeDetectorInitOption_ScreenSize"];
  v3 = [v2 copy];
  v4 = +[VNE5RTScreenGazeDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys;
  +[VNE5RTScreenGazeDetector configurationOptionKeysForDetectorKey]::configurationOptionKeys = v3;
}

- (id)observationsFromE5RTExecutionOutputs:(id)a3 forFunctionDescriptor:(id)a4 originatingRequestSpecifier:(id)a5 options:(id)a6 error:(id *)a7
{
  v49[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [VNValidationUtilities requiredObjectOfClass:objc_opt_class() forKey:@"VNScreenGazeDetectorProcessOption_FaceObjectState" inOptions:v13 error:a7];
  if (!v14)
  {
    goto LABEL_10;
  }

  v43 = xmmword_1A6038B10;
  v15 = v11;
  if (!self || ([objc_opt_class() modelOutputXYName], v16 = objc_claimAutoreleasedReturnValue(), v45.i64[0] = MEMORY[0x1E69E9820], v45.i64[1] = 3221225472, v46 = __71__VNE5RTScreenGazeDetector__screenGazeResultForOutput_resultOut_error___block_invoke, v47 = &__block_descriptor_40_e20_B24__0__NSData_8__16l, v48 = &v43, v17 = objc_msgSend(v15, "accessReadOnlyDataForName:usingBlock:error:", v16, &v45, a7), v16, (v17 & 1) == 0))
  {

    goto LABEL_10;
  }

  v18 = [objc_opt_class() modelOutputDeviceGazeProbabilitiesName];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __71__VNE5RTScreenGazeDetector__screenGazeResultForOutput_resultOut_error___block_invoke_2;
  v44[3] = &__block_descriptor_40_e20_B24__0__NSData_8__16l;
  v44[4] = &v43;
  v19 = [v15 accessReadOnlyDataForName:v18 usingBlock:v44 error:a7];

  if ((v19 & 1) == 0)
  {
LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  v20 = *(v14 + 64);
  if (*(v20 + 4))
  {
    v21 = *(v20 + 64);
    if (v21 == *v20)
    {
      v22 = *(v20 + 32);
      v23 = *(v20 + 56);
      *(v20 + 8) = vsubq_f32(*(v20 + 8), (*(v22 + ((v23 >> 5) & 0x7FFFFFFFFFFFFF8)))[v23]);
      --v21;
      v24 = v23 + 1;
      *(v20 + 56) = v24;
      *(v20 + 64) = v21;
      if (v24 >= 0x200)
      {
        operator delete(*v22);
        *(v20 + 32) += 8;
        v21 = *(v20 + 64);
        v24 = *(v20 + 56) - 256;
        *(v20 + 56) = v24;
      }
    }

    else
    {
      v24 = *(v20 + 56);
    }

    v28 = *(v20 + 40);
    v29 = *(v20 + 32);
    v30 = 32 * (v28 - v29) - 1;
    if (v28 == v29)
    {
      v30 = 0;
    }

    v31 = v21 + v24;
    if (v30 == v31)
    {
      if (v24 < 0x100)
      {
        v32 = *(v20 + 48);
        v33 = *(v20 + 24);
        if (v28 - v29 < (v32 - v33))
        {
          if (v32 != v28)
          {
            operator new();
          }

          operator new();
        }

        if (v32 == v33)
        {
          v34 = 1;
        }

        else
        {
          v34 = (v32 - v33) >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int> *>>(v34);
      }

      *(v20 + 56) = v24 - 256;
      v44[0] = *v29;
      *(v20 + 32) = v29 + 8;
      std::__split_buffer<std::pair<int,int> *,std::allocator<std::pair<int,int> *>>::emplace_back<std::pair<int,int> *&>((v20 + 24), v44);
      v29 = *(v20 + 32);
      v31 = *(v20 + 64) + *(v20 + 56);
    }

    *(*&v29[(v31 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v31) = v43;
    v35 = *(v20 + 64) + 1;
    *(v20 + 64) = v35;
    v36 = *(v20 + 16);
    *v37.f32 = vadd_f32(*&v43, *(v20 + 8));
    *(v20 + 8) = v37.i64[0];
    v38 = vceq_f32(v36, v36);
    v39 = vadd_f32(v36, *(&v43 + 8));
    v40 = vbsl_s8(v38, v39, *(&v43 + 8));
    *v39.i32 = v35;
    *(v20 + 16) = v40;
    *&v37.u32[2] = v40;
    v27 = vdivq_f32(v37, vdupq_lane_s32(v39, 0));
  }

  else
  {
    v27 = v43;
  }

  v45 = v27;
  v41 = [[VNFaceScreenGaze alloc] initWithScreenGaze:v12 originatingRequestSpecifier:?];
  v42 = [*(v14 + 8) vn_cloneObject];
  [v42 setUUID:*(v14 + 40)];
  [v42 setFaceScreenGaze:v41];

  if (v42)
  {
    v49[0] = v42;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  }

  else if (a7)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Failed to create screen gaze observation"];
    *a7 = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_11:

  return v25;
}

BOOL __71__VNE5RTScreenGazeDetector__screenGazeResultForOutput_resultOut_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 length];
  if (v6 == 8)
  {
    v7 = [v5 bytes];
    v8 = *(a1 + 32);
    *v8 = *v7;
    v8[1] = v7[1];
  }

  else if (a3)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s size is %lu bytes instead of the expected %lu bytes \n", "xy", objc_msgSend(v5, "length"), 8];
    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v9];
  }

  return v6 == 8;
}

BOOL __71__VNE5RTScreenGazeDetector__screenGazeResultForOutput_resultOut_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 length];
  if (v6 == 8)
  {
    v7 = [v5 bytes];
    v8 = *(a1 + 32);
    *(v8 + 8) = *v7;
    *(v8 + 12) = v7[1];
  }

  else if (a3)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s size is %lu bytes instead of the expected %lu bytes \n", "devicegaze_probs", objc_msgSend(v5, "length"), 12];
    *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v9];
  }

  return v6 == 8;
}

@end