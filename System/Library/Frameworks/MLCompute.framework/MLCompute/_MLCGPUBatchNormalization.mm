@interface _MLCGPUBatchNormalization
+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops beta:(id)beta gamma:(id)gamma;
+ (id)layerWithDevice:(id)device fusedWithNeuronDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)self0 momentum:(float)self1;
+ (id)layerWithDevice:(id)device numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)self0;
- (_MLCGPUBatchNormalization)initWithDevice:(id)device fusedWithNeuronDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)self0 momentum:(float)self1;
@end

@implementation _MLCGPUBatchNormalization

- (_MLCGPUBatchNormalization)initWithDevice:(id)device fusedWithNeuronDescriptor:(id)descriptor numOfFeatureChannels:(unint64_t)channels mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)self0 momentum:(float)self1
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  meanCopy = mean;
  varianceCopy = variance;
  betaCopy = beta;
  gammaCopy = gamma;
  v100.receiver = self;
  v100.super_class = _MLCGPUBatchNormalization;
  v20 = [(_MLCGPUBatchNormalization *)&v100 init];
  v21 = v20;
  if (v20)
  {
    v83 = v20;
    v89 = [MEMORY[0x277CBEBF8] mutableCopy];
    deviceList = [deviceCopy deviceList];
    v23 = [deviceList count];

    if (v23)
    {
      v24 = 0;
      if (descriptorCopy)
      {
        v25 = 8;
      }

      else
      {
        v25 = 7;
      }

      if (betaCopy)
      {
        v26 = gammaCopy == 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = !v26;
      v87 = v27;
      v88 = v25;
      if (meanCopy)
      {
        v28 = varianceCopy == 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = !v28;
      v86 = v29;
      v94 = deviceCopy;
      v95 = descriptorCopy;
      do
      {
        deviceList2 = [deviceCopy deviceList];
        v31 = [deviceList2 objectAtIndexedSubscript:v24];

        gpuLibrary = [deviceCopy gpuLibrary];
        v33 = [gpuLibrary objectAtIndexedSubscript:v24];
        v34 = [v33 newFunctionWithName:@"batch_norm_compute_mean"];

        v97 = [v31 newComputePipelineStateWithFunction:v34 error:0];
        gpuLibrary2 = [deviceCopy gpuLibrary];
        v36 = [gpuLibrary2 objectAtIndexedSubscript:v24];
        v37 = [v36 newFunctionWithName:@"batch_norm_compute_variance"];

        v96 = [v31 newComputePipelineStateWithFunction:v37 error:0];
        gpuLibrary3 = [deviceCopy gpuLibrary];
        v39 = [gpuLibrary3 objectAtIndexedSubscript:v24];
        v40 = [v39 newFunctionWithName:@"batch_norm_forward_training"];

        v98 = [v31 newComputePipelineStateWithFunction:v40 error:0];
        gpuLibrary4 = [deviceCopy gpuLibrary];
        v42 = [gpuLibrary4 objectAtIndexedSubscript:v24];
        v43 = [v42 newFunctionWithName:@"batch_norm_forward_inference"];

        v44 = [v31 newComputePipelineStateWithFunction:v43 error:0];
        gpuLibrary5 = [deviceCopy gpuLibrary];
        v46 = [gpuLibrary5 objectAtIndexedSubscript:v24];
        v47 = [v46 newFunctionWithName:@"batch_norm_compute_delta_beta_gamma"];

        v48 = [v31 newComputePipelineStateWithFunction:v47 error:0];
        gpuLibrary6 = [deviceCopy gpuLibrary];
        v50 = [gpuLibrary6 objectAtIndexedSubscript:v24];
        v51 = [v50 newFunctionWithName:@"sum_delta_beta_gamma"];

        v52 = [v31 newComputePipelineStateWithFunction:v51 error:0];
        gpuLibrary7 = [deviceCopy gpuLibrary];
        v54 = [gpuLibrary7 objectAtIndexedSubscript:v24];
        v55 = [v54 newFunctionWithName:@"batch_norm_gradient"];

        v56 = [v31 newComputePipelineStateWithFunction:v55 error:0];
        gpuLibrary8 = [deviceCopy gpuLibrary];
        v58 = [gpuLibrary8 objectAtIndexedSubscript:v24];
        v59 = [v58 newFunctionWithName:@"batch_norm_recompute_result"];

        v60 = v96;
        v61 = [v31 newComputePipelineStateWithFunction:v59 error:0];
        v62 = [MLCNormalizationGPUDeviceOps deviceOpsWithForwardKernel:v98 gradientKernel:v56];
        v63 = v62;
        if (v62)
        {
          [v62 setIsMPSKernel:0];
          [v63 setMetalKernelType:v88];
          [v63 setBatchNormMeanKernel:v97];
          [v63 setBatchNormVarianceKernel:v96];
          v92 = v48;
          [v63 setBatchNormBetaGammaDeltaKernel:v48];
          [v63 setNormalizationSumBetaGammaDeltaKernel:v52];
          v93 = v44;
          [v63 setForwardStatisticsKernel:v44];
          [v63 setNormalizationRecomputeResultKernel:v61];
          [v63 setSourceOfForwardNeededForGradient:0];
          v64 = v52;
          if (v95)
          {
            isAppleFamily = GPU_isAppleFamily(v31);
            v66 = isAppleFamily ^ 1;
          }

          else
          {
            isAppleFamily = 0;
            v66 = 0;
          }

          [v63 setResultOfForwardNeededForGradient:isAppleFamily];
          [v63 setRecomputeResultTensor:v66];
          deviceList3 = [v94 deviceList];
          v68 = [deviceList3 count];

          v70 = v68 >= 2;
          v71 = v95;
          if (v70)
          {
            v72 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v63];
            [v63 setNormalizationMultiGPUChildOps:v72];

            v73 = [MEMORY[0x277CBEBF8] mutableCopy];
            v74 = v73;
            if (betaCopy)
            {
              [v73 setObject:betaCopy atIndexedSubscript:0];
              v75 = 1;
            }

            else
            {
              v75 = 0;
            }

            if (gammaCopy)
            {
              [v74 setObject:gammaCopy atIndexedSubscript:v75];
            }

            normalizationMultiGPUChildOps = [v63 normalizationMultiGPUChildOps];
            v77 = [v74 copy];
            GPU_AllocateResourceForMultiGPUTraining(v94, normalizationMultiGPUChildOps, v77, v24);

            v71 = v95;
          }

          *&v69 = epsilon;
          [v63 setVarianceEpsilon:v69];
          *&v78 = momentum;
          [v63 setMomentum:v78];
          if (v87)
          {
            GPU_AllocateExportableGammaBetaStatesWithDevice(v31, v63, betaCopy, gammaCopy, v24);
          }

          v60 = v96;
          if (v86)
          {
            GPU_AllocateExportableRunningMeanVariancetatesWithDevice(v31, v63, meanCopy, varianceCopy, v24);
          }

          v52 = v64;
          if (v71)
          {
            [v63 setNeuronDescriptor:v71];
          }

          [v89 addObject:v63];
          v48 = v92;
          v44 = v93;
        }

        ++v24;
        deviceCopy = v94;
        deviceList4 = [v94 deviceList];
        v80 = [deviceList4 count];

        descriptorCopy = v95;
      }

      while (v24 < v80);
    }

    v81 = [v89 copy];
    v21 = v83;
    v99.receiver = v83;
    v99.super_class = _MLCGPUBatchNormalization;
    [(_MLCGPULayer *)&v99 setDeviceOps:v81];
  }

  return v21;
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
  v26 = [v23 initWithDevice:deviceCopy numOfFeatureChannels:channels mean:meanCopy variance:varianceCopy beta:betaCopy gamma:gammaCopy varianceEpsilon:v24 momentum:v25];

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

+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops beta:(id)beta gamma:(id)gamma
{
  v59[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  opsCopy = ops;
  betaCopy = beta;
  gammaCopy = gamma;
  v11 = gammaCopy;
  if (betaCopy)
  {
    if (gammaCopy)
    {
      deviceList = [deviceCopy deviceList];
      v13 = [deviceList count];

      if (v13)
      {
        v14 = 0;
        v52 = v11;
        v53 = betaCopy;
        do
        {
          v56 = [opsCopy objectAtIndexedSubscript:{v14, v52}];
          optimizerData = [betaCopy optimizerData];
          if ([optimizerData count])
          {
            optimizerData2 = [v11 optimizerData];
            v17 = [optimizerData2 count];

            if (!v17)
            {
              goto LABEL_9;
            }

            optimizerData = [betaCopy optimizerDeviceData];
            v18 = [optimizerData objectAtIndexedSubscript:v14];
            momentumVectors = [v18 momentumVectors];
            v20 = [momentumVectors objectAtIndexedSubscript:0];
            v59[0] = v20;
            optimizerDeviceData = [v11 optimizerDeviceData];
            v22 = [optimizerDeviceData objectAtIndexedSubscript:v14];
            momentumVectors2 = [v22 momentumVectors];
            v24 = [momentumVectors2 objectAtIndexedSubscript:0];
            v59[1] = v24;
            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
            [v56 setMomentumVectors:v25];

            betaCopy = v53;
            v11 = v52;
          }

LABEL_9:
          optimizerData3 = [betaCopy optimizerData];
          if ([optimizerData3 count] >= 2)
          {
            optimizerData4 = [v11 optimizerData];
            v28 = [optimizerData4 count];

            if (v28 < 2)
            {
              goto LABEL_13;
            }

            optimizerData3 = [betaCopy optimizerDeviceData];
            v29 = [optimizerData3 objectAtIndexedSubscript:v14];
            velocityVectors = [v29 velocityVectors];
            v31 = [velocityVectors objectAtIndexedSubscript:0];
            v58[0] = v31;
            optimizerDeviceData2 = [v11 optimizerDeviceData];
            v33 = [optimizerDeviceData2 objectAtIndexedSubscript:v14];
            velocityVectors2 = [v33 velocityVectors];
            v35 = [velocityVectors2 objectAtIndexedSubscript:0];
            v58[1] = v35;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
            [v56 setVelocityVectors:v36];

            v11 = v52;
            betaCopy = v53;
          }

LABEL_13:
          optimizerData5 = [betaCopy optimizerData];
          if ([optimizerData5 count] < 3)
          {
            goto LABEL_16;
          }

          optimizerData6 = [v11 optimizerData];
          v39 = [optimizerData6 count];

          if (v39 >= 3)
          {
            optimizerData5 = [betaCopy optimizerDeviceData];
            v40 = [optimizerData5 objectAtIndexedSubscript:v14];
            centerWeightVectors = [v40 centerWeightVectors];
            v42 = [centerWeightVectors objectAtIndexedSubscript:0];
            v57[0] = v42;
            optimizerDeviceData3 = [v11 optimizerDeviceData];
            v44 = [optimizerDeviceData3 objectAtIndexedSubscript:v14];
            centerWeightVectors2 = [v44 centerWeightVectors];
            v46 = [centerWeightVectors2 objectAtIndexedSubscript:0];
            v57[1] = v46;
            v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
            [v56 setCenterWeightVectors:v47];

            v11 = v52;
            betaCopy = v53;

LABEL_16:
          }

          ++v14;
          deviceList2 = [deviceCopy deviceList];
          v49 = [deviceList2 count];
        }

        while (v14 < v49);
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
  return 1;
}

@end