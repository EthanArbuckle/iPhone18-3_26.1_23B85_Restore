@interface _MLCGPULayerNormalization
- (_MLCGPULayerNormalization)initWithDevice:(id)a3 normalizedShape:(id)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7 isFusedWithArithmeticLayer:(BOOL)a8;
@end

@implementation _MLCGPULayerNormalization

- (_MLCGPULayerNormalization)initWithDevice:(id)a3 normalizedShape:(id)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7 isFusedWithArithmeticLayer:(BOOL)a8
{
  v68 = a8;
  v76[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v71 = a4;
  v15 = a5;
  v16 = a6;
  v17 = v16;
  if ((!v15 || v16) && (v15 || !v16))
  {
    v75.receiver = self;
    v75.super_class = _MLCGPULayerNormalization;
    v20 = [(_MLCGPULayerNormalization *)&v75 init];
    v21 = v20;
    if (v20)
    {
      v62 = v20;
      v63 = v17;
      v64 = v15;
      v66 = [MEMORY[0x277CBEBF8] mutableCopy];
      v22 = [v14 deviceList];
      v23 = [v22 count];

      if (v23)
      {
        v24 = 0;
        if (v15)
        {
          v25 = v17 == 0;
        }

        else
        {
          v25 = 1;
        }

        v26 = !v25;
        v67 = v26;
        while (1)
        {
          v27 = [v14 deviceList];
          v28 = [v27 objectAtIndexedSubscript:v24];

          v29 = [v14 gpuLibrary];
          v30 = [v29 objectAtIndexedSubscript:v24];
          v31 = [v30 newFunctionWithName:@"layer_norm_forward_training"];

          v32 = [v28 newComputePipelineStateWithFunction:v31 error:0];
          v33 = [v14 gpuLibrary];
          v34 = [v33 objectAtIndexedSubscript:v24];
          v35 = [v34 newFunctionWithName:@"layer_norm_forward_inference"];

          v72 = v35;
          v73 = [v28 newComputePipelineStateWithFunction:v35 error:0];
          v36 = [v14 gpuLibrary];
          v37 = [v36 objectAtIndexedSubscript:v24];
          v38 = [v37 newFunctionWithName:@"layer_norm_gradient"];

          v39 = [v28 newComputePipelineStateWithFunction:v38 error:0];
          v40 = [v14 gpuLibrary];
          v41 = [v40 objectAtIndexedSubscript:v24];
          v42 = [v41 newFunctionWithName:@"layer_norm_compute_beta_gamma_delta"];

          v43 = [v28 newComputePipelineStateWithFunction:v42 error:0];
          v44 = [MLCNormalizationGPUDeviceOps deviceOpsWithForwardKernel:v32 gradientKernel:v39];
          v45 = v44;
          if (v44)
          {
            break;
          }

LABEL_25:

          ++v24;
          v57 = [v14 deviceList];
          v58 = [v57 count];

          if (v24 >= v58)
          {
            goto LABEL_26;
          }
        }

        v69 = v32;
        v70 = v31;
        [v44 setIsMPSKernel:0];
        [v45 setMetalKernelType:4];
        v46 = [v14 deviceList];
        v47 = [v46 count];

        if (v47 >= 2)
        {
          v48 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v45];
          [v45 setNormalizationMultiGPUChildOps:v48];

          if (!v67)
          {
            [v45 setNormalizedShape:v71];
            *&v56 = a7;
            [v45 setVarianceEpsilon:v56];
            [v45 setIsFusedWithArithmeticLayer:v68];
            [v45 setSourceOfForwardNeededForGradient:0];
            [v45 setResultOfForwardNeededForGradient:0];
LABEL_24:
            [v66 addObject:v45];
            v32 = v69;
            v31 = v70;
            goto LABEL_25;
          }

          v49 = [v45 normalizationMultiGPUChildOps];
          v76[0] = v63;
          v76[1] = v64;
          v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
          GPU_AllocateResourceForMultiGPUTraining(v14, v49, v50, v24);
        }

        [v45 setNormalizedShape:v71];
        *&v51 = a7;
        [v45 setVarianceEpsilon:v51];
        [v45 setIsFusedWithArithmeticLayer:v68];
        [v45 setSourceOfForwardNeededForGradient:0];
        [v45 setResultOfForwardNeededForGradient:0];
        if (v67)
        {
          v65 = v43;
          GPU_AllocateExportableGammaBetaStatesWithDevice(v28, v45, v64, v63, v24);
          v52 = [v63 data];
          v53 = [v28 newBufferWithLength:objc_msgSend(v52 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

          v54 = [v64 data];
          v55 = [v28 newBufferWithLength:objc_msgSend(v54 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

          [v45 setNormalizationGammaGradient:v53];
          [v45 setNormalizationBetaGradient:v55];
          [v45 setForwardStatisticsKernel:v73];
          [v45 setGradientStatisticsKernel:v65];

          v43 = v65;
        }

        goto LABEL_24;
      }

LABEL_26:
      v59 = [v66 copy];
      v21 = v62;
      v74.receiver = v62;
      v74.super_class = _MLCGPULayerNormalization;
      [(_MLCGPULayer *)&v74 setDeviceOps:v59];

      v17 = v63;
      v15 = v64;
    }

    self = v21;
    v19 = self;
    goto LABEL_28;
  }

  v18 = +[MLCLog framework];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [_MLCGPULayerNormalization initWithDevice:a2 normalizedShape:v18 beta:? gamma:? varianceEpsilon:? isFusedWithArithmeticLayer:?];
  }

  v19 = 0;
LABEL_28:

  v60 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)initWithDevice:(const char *)a1 normalizedShape:(NSObject *)a2 beta:gamma:varianceEpsilon:isFusedWithArithmeticLayer:.cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: Beta and gamma tensors must both be nil or not nil", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end