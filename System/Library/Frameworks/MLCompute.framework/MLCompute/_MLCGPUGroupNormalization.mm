@interface _MLCGPUGroupNormalization
+ (id)layerWithDevice:(id)a3 numOfFeatureChannels:(unint64_t)a4 groupCount:(unint64_t)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8;
- (_MLCGPUGroupNormalization)initWithDevice:(id)a3 numOfFeatureChannels:(unint64_t)a4 groupCount:(unint64_t)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8;
@end

@implementation _MLCGPUGroupNormalization

- (_MLCGPUGroupNormalization)initWithDevice:(id)a3 numOfFeatureChannels:(unint64_t)a4 groupCount:(unint64_t)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8
{
  v58[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v52 = a6;
  v51 = a7;
  v57.receiver = self;
  v57.super_class = _MLCGPUGroupNormalization;
  v13 = [(_MLCGPUGroupNormalization *)&v57 init];
  v14 = v13;
  if (v13)
  {
    v49 = v13;
    v54 = [MEMORY[0x277CBEBF8] mutableCopy];
    v15 = [v12 deviceList];
    v16 = [v15 count];

    if (v16)
    {
      v17 = 0;
      if (v52)
      {
        v18 = v51 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = !v18;
      v55 = v19;
      while (1)
      {
        v20 = [v12 deviceList];
        v21 = [v20 objectAtIndexedSubscript:v17];

        v22 = [v12 gpuLibrary];
        v23 = [v22 objectAtIndexedSubscript:v17];
        v24 = [v23 newFunctionWithName:@"group_norm_forward_training"];

        v25 = [v21 newComputePipelineStateWithFunction:v24 error:0];
        v26 = [v12 gpuLibrary];
        v27 = [v26 objectAtIndexedSubscript:v17];
        v28 = [v27 newFunctionWithName:@"group_norm_gradient"];

        v29 = [v21 newComputePipelineStateWithFunction:v28 error:0];
        v30 = [v12 gpuLibrary];
        v31 = [v30 objectAtIndexedSubscript:v17];
        v32 = [v31 newFunctionWithName:@"sum_delta_beta_gamma"];

        v33 = [v21 newComputePipelineStateWithFunction:v32 error:0];
        v34 = [MLCNormalizationGPUDeviceOps deviceOpsWithForwardKernel:v25 gradientKernel:v29];
        v35 = v34;
        if (v34)
        {
          break;
        }

LABEL_18:

        ++v17;
        v44 = [v12 deviceList];
        v45 = [v44 count];

        if (v17 >= v45)
        {
          goto LABEL_19;
        }
      }

      [v34 setIsMPSKernel:0];
      [v35 setMetalKernelType:9];
      v36 = [v12 deviceList];
      v37 = [v36 count];

      if (v37 >= 2)
      {
        v39 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v35];
        [v35 setNormalizationMultiGPUChildOps:v39];

        if (!v55)
        {
          *&v40 = a8;
          [v35 setVarianceEpsilon:v40];
          [v35 setGroupCount:a5];
          [v35 setNormalizationSumBetaGammaDeltaKernel:v33];
          [v35 setSourceOfForwardNeededForGradient:0];
          [v35 setResultOfForwardNeededForGradient:0];
LABEL_17:
          [v54 addObject:v35];
          goto LABEL_18;
        }

        [v35 normalizationMultiGPUChildOps];
        v41 = v50 = v25;
        v58[0] = v51;
        v58[1] = v52;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
        v43 = [v42 copy];
        GPU_AllocateResourceForMultiGPUTraining(v12, v41, v43, v17);

        v25 = v50;
      }

      *&v38 = a8;
      [v35 setVarianceEpsilon:v38];
      [v35 setGroupCount:a5];
      [v35 setNormalizationSumBetaGammaDeltaKernel:v33];
      [v35 setSourceOfForwardNeededForGradient:0];
      [v35 setResultOfForwardNeededForGradient:0];
      if (v55)
      {
        GPU_AllocateExportableGammaBetaStatesWithDevice(v21, v35, v52, v51, v17);
      }

      goto LABEL_17;
    }

LABEL_19:
    v46 = [v54 copy];
    v14 = v49;
    v56.receiver = v49;
    v56.super_class = _MLCGPUGroupNormalization;
    [(_MLCGPULayer *)&v56 setDeviceOps:v46];
  }

  v47 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (id)layerWithDevice:(id)a3 numOfFeatureChannels:(unint64_t)a4 groupCount:(unint64_t)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a3;
  v17 = [a1 alloc];
  *&v18 = a8;
  v19 = [v17 initWithDevice:v16 numOfFeatureChannels:a4 groupCount:a5 beta:v15 gamma:v14 varianceEpsilon:v18];

  return v19;
}

@end