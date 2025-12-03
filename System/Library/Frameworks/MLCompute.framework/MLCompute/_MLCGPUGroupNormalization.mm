@interface _MLCGPUGroupNormalization
+ (id)layerWithDevice:(id)device numOfFeatureChannels:(unint64_t)channels groupCount:(unint64_t)count beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon;
- (_MLCGPUGroupNormalization)initWithDevice:(id)device numOfFeatureChannels:(unint64_t)channels groupCount:(unint64_t)count beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon;
@end

@implementation _MLCGPUGroupNormalization

- (_MLCGPUGroupNormalization)initWithDevice:(id)device numOfFeatureChannels:(unint64_t)channels groupCount:(unint64_t)count beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon
{
  v58[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  betaCopy = beta;
  gammaCopy = gamma;
  v57.receiver = self;
  v57.super_class = _MLCGPUGroupNormalization;
  v13 = [(_MLCGPUGroupNormalization *)&v57 init];
  v14 = v13;
  if (v13)
  {
    v49 = v13;
    v54 = [MEMORY[0x277CBEBF8] mutableCopy];
    deviceList = [deviceCopy deviceList];
    v16 = [deviceList count];

    if (v16)
    {
      v17 = 0;
      if (betaCopy)
      {
        v18 = gammaCopy == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = !v18;
      v55 = v19;
      while (1)
      {
        deviceList2 = [deviceCopy deviceList];
        v21 = [deviceList2 objectAtIndexedSubscript:v17];

        gpuLibrary = [deviceCopy gpuLibrary];
        v23 = [gpuLibrary objectAtIndexedSubscript:v17];
        v24 = [v23 newFunctionWithName:@"group_norm_forward_training"];

        v25 = [v21 newComputePipelineStateWithFunction:v24 error:0];
        gpuLibrary2 = [deviceCopy gpuLibrary];
        v27 = [gpuLibrary2 objectAtIndexedSubscript:v17];
        v28 = [v27 newFunctionWithName:@"group_norm_gradient"];

        v29 = [v21 newComputePipelineStateWithFunction:v28 error:0];
        gpuLibrary3 = [deviceCopy gpuLibrary];
        v31 = [gpuLibrary3 objectAtIndexedSubscript:v17];
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
        deviceList3 = [deviceCopy deviceList];
        v45 = [deviceList3 count];

        if (v17 >= v45)
        {
          goto LABEL_19;
        }
      }

      [v34 setIsMPSKernel:0];
      [v35 setMetalKernelType:9];
      deviceList4 = [deviceCopy deviceList];
      v37 = [deviceList4 count];

      if (v37 >= 2)
      {
        v39 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v35];
        [v35 setNormalizationMultiGPUChildOps:v39];

        if (!v55)
        {
          *&v40 = epsilon;
          [v35 setVarianceEpsilon:v40];
          [v35 setGroupCount:count];
          [v35 setNormalizationSumBetaGammaDeltaKernel:v33];
          [v35 setSourceOfForwardNeededForGradient:0];
          [v35 setResultOfForwardNeededForGradient:0];
LABEL_17:
          [v54 addObject:v35];
          goto LABEL_18;
        }

        [v35 normalizationMultiGPUChildOps];
        v41 = v50 = v25;
        v58[0] = gammaCopy;
        v58[1] = betaCopy;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
        v43 = [v42 copy];
        GPU_AllocateResourceForMultiGPUTraining(deviceCopy, v41, v43, v17);

        v25 = v50;
      }

      *&v38 = epsilon;
      [v35 setVarianceEpsilon:v38];
      [v35 setGroupCount:count];
      [v35 setNormalizationSumBetaGammaDeltaKernel:v33];
      [v35 setSourceOfForwardNeededForGradient:0];
      [v35 setResultOfForwardNeededForGradient:0];
      if (v55)
      {
        GPU_AllocateExportableGammaBetaStatesWithDevice(v21, v35, betaCopy, gammaCopy, v17);
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

+ (id)layerWithDevice:(id)device numOfFeatureChannels:(unint64_t)channels groupCount:(unint64_t)count beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon
{
  gammaCopy = gamma;
  betaCopy = beta;
  deviceCopy = device;
  v17 = [self alloc];
  *&v18 = epsilon;
  v19 = [v17 initWithDevice:deviceCopy numOfFeatureChannels:channels groupCount:count beta:betaCopy gamma:gammaCopy varianceEpsilon:v18];

  return v19;
}

@end