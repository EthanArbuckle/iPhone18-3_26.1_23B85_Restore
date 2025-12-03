@interface _MLCGPUInstanceNormalization
+ (id)layerWithDevice:(id)device fusedWithNeuronDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)self0 momentum:(float)self1;
+ (id)layerWithDevice:(id)device numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0;
- (_MLCGPUInstanceNormalization)initWithDevice:(id)device fusedWithNeuronDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)self0 momentum:(float)self1;
@end

@implementation _MLCGPUInstanceNormalization

- (_MLCGPUInstanceNormalization)initWithDevice:(id)device fusedWithNeuronDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)self0 momentum:(float)self1
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  meanCopy = mean;
  varianceCopy = variance;
  betaCopy = beta;
  gammaCopy = gamma;
  v92.receiver = self;
  v92.super_class = _MLCGPUInstanceNormalization;
  v21 = [(_MLCGPUInstanceNormalization *)&v92 init];
  v22 = v21;
  if (v21)
  {
    v83 = gammaCopy;
    v84 = descriptorCopy;
    v77 = v21;
    v82 = [MEMORY[0x277CBEBF8] mutableCopy];
    deviceList = [deviceCopy deviceList];
    v24 = [deviceList count];

    if (v24)
    {
      v25 = 0;
      if (descriptorCopy)
      {
        v26 = 6;
      }

      else
      {
        v26 = 5;
      }

      if (betaCopy)
      {
        v27 = v83 == 0;
      }

      else
      {
        v27 = 1;
      }

      v28 = !v27;
      v80 = v28;
      v81 = v26;
      if (meanCopy)
      {
        v29 = varianceCopy == 0;
      }

      else
      {
        v29 = 1;
      }

      v30 = !v29;
      v79 = v30;
      do
      {
        deviceList2 = [deviceCopy deviceList];
        v32 = [deviceList2 objectAtIndexedSubscript:v25];

        gpuLibrary = [deviceCopy gpuLibrary];
        v34 = [gpuLibrary objectAtIndexedSubscript:v25];
        v35 = [v34 newFunctionWithName:@"instance_norm_forward_training"];

        v90 = [v32 newComputePipelineStateWithFunction:v35 error:0];
        gpuLibrary2 = [deviceCopy gpuLibrary];
        v37 = [gpuLibrary2 objectAtIndexedSubscript:v25];
        v38 = [v37 newFunctionWithName:@"instance_norm_forward_inference"];

        v89 = [v32 newComputePipelineStateWithFunction:v38 error:0];
        gpuLibrary3 = [deviceCopy gpuLibrary];
        v40 = [gpuLibrary3 objectAtIndexedSubscript:v25];
        v41 = [v40 newFunctionWithName:@"instance_norm_gradient"];

        v42 = [v32 newComputePipelineStateWithFunction:v41 error:0];
        gpuLibrary4 = [deviceCopy gpuLibrary];
        v44 = [gpuLibrary4 objectAtIndexedSubscript:v25];
        v45 = [v44 newFunctionWithName:@"sum_delta_beta_gamma"];

        v46 = [v32 newComputePipelineStateWithFunction:v45 error:0];
        gpuLibrary5 = [deviceCopy gpuLibrary];
        v48 = [gpuLibrary5 objectAtIndexedSubscript:v25];
        v49 = [v48 newFunctionWithName:@"instance_norm_compute_moving_mean_variance"];

        v50 = [v32 newComputePipelineStateWithFunction:v49 error:0];
        gpuLibrary6 = [deviceCopy gpuLibrary];
        v52 = [gpuLibrary6 objectAtIndexedSubscript:v25];
        v53 = [v52 newFunctionWithName:@"instance_norm_recompute_result"];

        v54 = [v32 newComputePipelineStateWithFunction:v53 error:0];
        v55 = [MLCNormalizationGPUDeviceOps deviceOpsWithForwardKernel:v90 gradientKernel:v42];
        v56 = v55;
        if (v55)
        {
          v88 = v50;
          [v55 setIsMPSKernel:0];
          [v56 setMetalKernelType:v81];
          deviceList3 = [deviceCopy deviceList];
          v58 = [deviceList3 count];

          if (v58 >= 2)
          {
            v60 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v56];
            [v56 setNormalizationMultiGPUChildOps:v60];

            v61 = [MEMORY[0x277CBEBF8] mutableCopy];
            v62 = v61;
            if (meanCopy)
            {
              [v61 setObject:meanCopy atIndexedSubscript:0];
              v63 = 1;
            }

            else
            {
              v63 = 0;
            }

            v78 = v46;
            if (varianceCopy)
            {
              v64 = v63 + 1;
              [v62 setObject:? atIndexedSubscript:?];
              v63 = v64;
            }

            if (betaCopy)
            {
              v65 = v63 + 1;
              [v62 setObject:? atIndexedSubscript:?];
              v63 = v65;
            }

            if (v83)
            {
              [v62 setObject:v83 atIndexedSubscript:v63];
            }

            normalizationMultiGPUChildOps = [v56 normalizationMultiGPUChildOps];
            v67 = [v62 copy];
            GPU_AllocateResourceForMultiGPUTraining(deviceCopy, normalizationMultiGPUChildOps, v67, v25);

            v46 = v78;
          }

          *&v59 = epsilon;
          [v56 setVarianceEpsilon:v59];
          *&v68 = momentum;
          [v56 setMomentum:v68];
          if (v80)
          {
            GPU_AllocateExportableGammaBetaStatesWithDevice(v32, v56, betaCopy, v83, v25);
            [v56 setForwardStatisticsKernel:v89];
          }

          if (v79)
          {
            [v56 setInstanceNormMovingMeanVarianceKernel:v88];
            GPU_AllocateExportableRunningMeanVariancetatesWithDevice(v32, v56, meanCopy, varianceCopy, v25);
          }

          [v56 setNormalizationRecomputeResultKernel:v54];
          [v56 setNormalizationSumBetaGammaDeltaKernel:v46];
          [v56 setSourceOfForwardNeededForGradient:0];
          if (v84)
          {
            isAppleFamily = GPU_isAppleFamily(v32);
            v70 = v46;
            v71 = isAppleFamily;
            [v56 setResultOfForwardNeededForGradient:isAppleFamily];
            v72 = !v71;
            v46 = v70;
            [v56 setRecomputeResultTensor:v72];
            [v56 setNeuronDescriptor:v84];
          }

          else
          {
            [v56 setResultOfForwardNeededForGradient:0];
            [v56 setRecomputeResultTensor:0];
          }

          v50 = v88;
          [v82 addObject:v56];
        }

        ++v25;
        deviceList4 = [deviceCopy deviceList];
        v74 = [deviceList4 count];
      }

      while (v25 < v74);
    }

    v75 = [v82 copy];
    v22 = v77;
    v91.receiver = v77;
    v91.super_class = _MLCGPUInstanceNormalization;
    [(_MLCGPULayer *)&v91 setDeviceOps:v75];

    gammaCopy = v83;
    descriptorCopy = v84;
  }

  return v22;
}

+ (id)layerWithDevice:(id)device numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0
{
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  deviceCopy = device;
  v23 = [self alloc];
  *&v24 = epsilon;
  *&v25 = momentum;
  v26 = [v23 initWithDevice:deviceCopy fusedWithNeuronDescriptor:0 numOfFeatureChannels:channels mean:meanCopy variance:varianceCopy beta:betaCopy gamma:v24 varianceEpsilon:v25 momentum:gammaCopy];

  return v26;
}

+ (id)layerWithDevice:(id)device fusedWithNeuronDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)self0 momentum:(float)self1
{
  gammaCopy = gamma;
  betaCopy = beta;
  varianceCopy = variance;
  meanCopy = mean;
  descriptorCopy = descriptor;
  deviceCopy = device;
  v26 = [self alloc];
  *&v27 = epsilon;
  *&v28 = momentum;
  v29 = [v26 initWithDevice:deviceCopy fusedWithNeuronDescriptor:descriptorCopy numOfFeatureChannels:channels mean:meanCopy variance:varianceCopy beta:betaCopy gamma:v27 varianceEpsilon:v28 momentum:gammaCopy];

  return v29;
}

@end