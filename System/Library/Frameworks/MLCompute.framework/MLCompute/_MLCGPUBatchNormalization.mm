@interface _MLCGPUBatchNormalization
+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 beta:(id)a5 gamma:(id)a6;
+ (id)layerWithDevice:(id)a3 fusedWithNeuronDescriptor:(id)a4 numOfFeatureChannels:(unint64_t)a5 mean:(id)a6 variance:(id)a7 beta:(id)a8 gamma:(id)a9 varianceEpsilon:(float)a10 momentum:(float)a11;
+ (id)layerWithDevice:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10;
- (_MLCGPUBatchNormalization)initWithDevice:(id)a3 fusedWithNeuronDescriptor:(id)a4 numOfFeatureChannels:(unint64_t)a5 mean:(id)a6 variance:(id)a7 beta:(id)a8 gamma:(id)a9 varianceEpsilon:(float)a10 momentum:(float)a11;
@end

@implementation _MLCGPUBatchNormalization

- (_MLCGPUBatchNormalization)initWithDevice:(id)a3 fusedWithNeuronDescriptor:(id)a4 numOfFeatureChannels:(unint64_t)a5 mean:(id)a6 variance:(id)a7 beta:(id)a8 gamma:(id)a9 varianceEpsilon:(float)a10 momentum:(float)a11
{
  v18 = a3;
  v19 = a4;
  v85 = a6;
  v84 = a7;
  v91 = a8;
  v90 = a9;
  v100.receiver = self;
  v100.super_class = _MLCGPUBatchNormalization;
  v20 = [(_MLCGPUBatchNormalization *)&v100 init];
  v21 = v20;
  if (v20)
  {
    v83 = v20;
    v89 = [MEMORY[0x277CBEBF8] mutableCopy];
    v22 = [v18 deviceList];
    v23 = [v22 count];

    if (v23)
    {
      v24 = 0;
      if (v19)
      {
        v25 = 8;
      }

      else
      {
        v25 = 7;
      }

      if (v91)
      {
        v26 = v90 == 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = !v26;
      v87 = v27;
      v88 = v25;
      if (v85)
      {
        v28 = v84 == 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = !v28;
      v86 = v29;
      v94 = v18;
      v95 = v19;
      do
      {
        v30 = [v18 deviceList];
        v31 = [v30 objectAtIndexedSubscript:v24];

        v32 = [v18 gpuLibrary];
        v33 = [v32 objectAtIndexedSubscript:v24];
        v34 = [v33 newFunctionWithName:@"batch_norm_compute_mean"];

        v97 = [v31 newComputePipelineStateWithFunction:v34 error:0];
        v35 = [v18 gpuLibrary];
        v36 = [v35 objectAtIndexedSubscript:v24];
        v37 = [v36 newFunctionWithName:@"batch_norm_compute_variance"];

        v96 = [v31 newComputePipelineStateWithFunction:v37 error:0];
        v38 = [v18 gpuLibrary];
        v39 = [v38 objectAtIndexedSubscript:v24];
        v40 = [v39 newFunctionWithName:@"batch_norm_forward_training"];

        v98 = [v31 newComputePipelineStateWithFunction:v40 error:0];
        v41 = [v18 gpuLibrary];
        v42 = [v41 objectAtIndexedSubscript:v24];
        v43 = [v42 newFunctionWithName:@"batch_norm_forward_inference"];

        v44 = [v31 newComputePipelineStateWithFunction:v43 error:0];
        v45 = [v18 gpuLibrary];
        v46 = [v45 objectAtIndexedSubscript:v24];
        v47 = [v46 newFunctionWithName:@"batch_norm_compute_delta_beta_gamma"];

        v48 = [v31 newComputePipelineStateWithFunction:v47 error:0];
        v49 = [v18 gpuLibrary];
        v50 = [v49 objectAtIndexedSubscript:v24];
        v51 = [v50 newFunctionWithName:@"sum_delta_beta_gamma"];

        v52 = [v31 newComputePipelineStateWithFunction:v51 error:0];
        v53 = [v18 gpuLibrary];
        v54 = [v53 objectAtIndexedSubscript:v24];
        v55 = [v54 newFunctionWithName:@"batch_norm_gradient"];

        v56 = [v31 newComputePipelineStateWithFunction:v55 error:0];
        v57 = [v18 gpuLibrary];
        v58 = [v57 objectAtIndexedSubscript:v24];
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
          v67 = [v94 deviceList];
          v68 = [v67 count];

          v70 = v68 >= 2;
          v71 = v95;
          if (v70)
          {
            v72 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v63];
            [v63 setNormalizationMultiGPUChildOps:v72];

            v73 = [MEMORY[0x277CBEBF8] mutableCopy];
            v74 = v73;
            if (v91)
            {
              [v73 setObject:v91 atIndexedSubscript:0];
              v75 = 1;
            }

            else
            {
              v75 = 0;
            }

            if (v90)
            {
              [v74 setObject:v90 atIndexedSubscript:v75];
            }

            v76 = [v63 normalizationMultiGPUChildOps];
            v77 = [v74 copy];
            GPU_AllocateResourceForMultiGPUTraining(v94, v76, v77, v24);

            v71 = v95;
          }

          *&v69 = a10;
          [v63 setVarianceEpsilon:v69];
          *&v78 = a11;
          [v63 setMomentum:v78];
          if (v87)
          {
            GPU_AllocateExportableGammaBetaStatesWithDevice(v31, v63, v91, v90, v24);
          }

          v60 = v96;
          if (v86)
          {
            GPU_AllocateExportableRunningMeanVariancetatesWithDevice(v31, v63, v85, v84, v24);
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
        v18 = v94;
        v79 = [v94 deviceList];
        v80 = [v79 count];

        v19 = v95;
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

+ (id)layerWithDevice:(id)a3 numOfFeatureChannels:(unint64_t)a4 mean:(id)a5 variance:(id)a6 beta:(id)a7 gamma:(id)a8 varianceEpsilon:(float)a9 momentum:(float)a10
{
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v23 = [a1 alloc];
  *&v24 = a9;
  *&v25 = a10;
  v26 = [v23 initWithDevice:v22 numOfFeatureChannels:a4 mean:v21 variance:v20 beta:v19 gamma:v18 varianceEpsilon:v24 momentum:v25];

  return v26;
}

+ (id)layerWithDevice:(id)a3 fusedWithNeuronDescriptor:(id)a4 numOfFeatureChannels:(unint64_t)a5 mean:(id)a6 variance:(id)a7 beta:(id)a8 gamma:(id)a9 varianceEpsilon:(float)a10 momentum:(float)a11
{
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a4;
  v25 = a3;
  v26 = [a1 alloc];
  *&v27 = a10;
  *&v28 = a11;
  v29 = [v26 initWithDevice:v25 fusedWithNeuronDescriptor:v24 numOfFeatureChannels:a5 mean:v23 variance:v22 beta:v21 gamma:v27 varianceEpsilon:v28 momentum:v20];

  return v29;
}

+ (BOOL)setOptimizerDataForDevice:(id)a3 deviceOps:(id)a4 beta:(id)a5 gamma:(id)a6
{
  v59[2] = *MEMORY[0x277D85DE8];
  v55 = a3;
  v54 = a4;
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      v12 = [v55 deviceList];
      v13 = [v12 count];

      if (v13)
      {
        v14 = 0;
        v52 = v11;
        v53 = v9;
        do
        {
          v56 = [v54 objectAtIndexedSubscript:{v14, v52}];
          v15 = [v9 optimizerData];
          if ([v15 count])
          {
            v16 = [v11 optimizerData];
            v17 = [v16 count];

            if (!v17)
            {
              goto LABEL_9;
            }

            v15 = [v9 optimizerDeviceData];
            v18 = [v15 objectAtIndexedSubscript:v14];
            v19 = [v18 momentumVectors];
            v20 = [v19 objectAtIndexedSubscript:0];
            v59[0] = v20;
            v21 = [v11 optimizerDeviceData];
            v22 = [v21 objectAtIndexedSubscript:v14];
            v23 = [v22 momentumVectors];
            v24 = [v23 objectAtIndexedSubscript:0];
            v59[1] = v24;
            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
            [v56 setMomentumVectors:v25];

            v9 = v53;
            v11 = v52;
          }

LABEL_9:
          v26 = [v9 optimizerData];
          if ([v26 count] >= 2)
          {
            v27 = [v11 optimizerData];
            v28 = [v27 count];

            if (v28 < 2)
            {
              goto LABEL_13;
            }

            v26 = [v9 optimizerDeviceData];
            v29 = [v26 objectAtIndexedSubscript:v14];
            v30 = [v29 velocityVectors];
            v31 = [v30 objectAtIndexedSubscript:0];
            v58[0] = v31;
            v32 = [v11 optimizerDeviceData];
            v33 = [v32 objectAtIndexedSubscript:v14];
            v34 = [v33 velocityVectors];
            v35 = [v34 objectAtIndexedSubscript:0];
            v58[1] = v35;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
            [v56 setVelocityVectors:v36];

            v11 = v52;
            v9 = v53;
          }

LABEL_13:
          v37 = [v9 optimizerData];
          if ([v37 count] < 3)
          {
            goto LABEL_16;
          }

          v38 = [v11 optimizerData];
          v39 = [v38 count];

          if (v39 >= 3)
          {
            v37 = [v9 optimizerDeviceData];
            v40 = [v37 objectAtIndexedSubscript:v14];
            v41 = [v40 centerWeightVectors];
            v42 = [v41 objectAtIndexedSubscript:0];
            v57[0] = v42;
            v43 = [v11 optimizerDeviceData];
            v44 = [v43 objectAtIndexedSubscript:v14];
            v45 = [v44 centerWeightVectors];
            v46 = [v45 objectAtIndexedSubscript:0];
            v57[1] = v46;
            v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
            [v56 setCenterWeightVectors:v47];

            v11 = v52;
            v9 = v53;

LABEL_16:
          }

          ++v14;
          v48 = [v55 deviceList];
          v49 = [v48 count];
        }

        while (v14 < v49);
      }
    }
  }

  v50 = *MEMORY[0x277D85DE8];
  return 1;
}

@end