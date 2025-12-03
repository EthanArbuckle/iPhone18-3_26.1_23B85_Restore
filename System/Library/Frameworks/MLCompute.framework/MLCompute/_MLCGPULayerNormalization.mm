@interface _MLCGPULayerNormalization
- (_MLCGPULayerNormalization)initWithDevice:(id)device normalizedShape:(id)shape beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon isFusedWithArithmeticLayer:(BOOL)layer;
@end

@implementation _MLCGPULayerNormalization

- (_MLCGPULayerNormalization)initWithDevice:(id)device normalizedShape:(id)shape beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon isFusedWithArithmeticLayer:(BOOL)layer
{
  layerCopy = layer;
  v76[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  shapeCopy = shape;
  betaCopy = beta;
  gammaCopy = gamma;
  v17 = gammaCopy;
  if ((!betaCopy || gammaCopy) && (betaCopy || !gammaCopy))
  {
    v75.receiver = self;
    v75.super_class = _MLCGPULayerNormalization;
    v20 = [(_MLCGPULayerNormalization *)&v75 init];
    v21 = v20;
    if (v20)
    {
      v62 = v20;
      v63 = v17;
      v64 = betaCopy;
      v66 = [MEMORY[0x277CBEBF8] mutableCopy];
      deviceList = [deviceCopy deviceList];
      v23 = [deviceList count];

      if (v23)
      {
        v24 = 0;
        if (betaCopy)
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
          deviceList2 = [deviceCopy deviceList];
          v28 = [deviceList2 objectAtIndexedSubscript:v24];

          gpuLibrary = [deviceCopy gpuLibrary];
          v30 = [gpuLibrary objectAtIndexedSubscript:v24];
          v31 = [v30 newFunctionWithName:@"layer_norm_forward_training"];

          v32 = [v28 newComputePipelineStateWithFunction:v31 error:0];
          gpuLibrary2 = [deviceCopy gpuLibrary];
          v34 = [gpuLibrary2 objectAtIndexedSubscript:v24];
          v35 = [v34 newFunctionWithName:@"layer_norm_forward_inference"];

          v72 = v35;
          v73 = [v28 newComputePipelineStateWithFunction:v35 error:0];
          gpuLibrary3 = [deviceCopy gpuLibrary];
          v37 = [gpuLibrary3 objectAtIndexedSubscript:v24];
          v38 = [v37 newFunctionWithName:@"layer_norm_gradient"];

          v39 = [v28 newComputePipelineStateWithFunction:v38 error:0];
          gpuLibrary4 = [deviceCopy gpuLibrary];
          v41 = [gpuLibrary4 objectAtIndexedSubscript:v24];
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
          deviceList3 = [deviceCopy deviceList];
          v58 = [deviceList3 count];

          if (v24 >= v58)
          {
            goto LABEL_26;
          }
        }

        v69 = v32;
        v70 = v31;
        [v44 setIsMPSKernel:0];
        [v45 setMetalKernelType:4];
        deviceList4 = [deviceCopy deviceList];
        v47 = [deviceList4 count];

        if (v47 >= 2)
        {
          v48 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v45];
          [v45 setNormalizationMultiGPUChildOps:v48];

          if (!v67)
          {
            [v45 setNormalizedShape:shapeCopy];
            *&v56 = epsilon;
            [v45 setVarianceEpsilon:v56];
            [v45 setIsFusedWithArithmeticLayer:layerCopy];
            [v45 setSourceOfForwardNeededForGradient:0];
            [v45 setResultOfForwardNeededForGradient:0];
LABEL_24:
            [v66 addObject:v45];
            v32 = v69;
            v31 = v70;
            goto LABEL_25;
          }

          normalizationMultiGPUChildOps = [v45 normalizationMultiGPUChildOps];
          v76[0] = v63;
          v76[1] = v64;
          v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
          GPU_AllocateResourceForMultiGPUTraining(deviceCopy, normalizationMultiGPUChildOps, v50, v24);
        }

        [v45 setNormalizedShape:shapeCopy];
        *&v51 = epsilon;
        [v45 setVarianceEpsilon:v51];
        [v45 setIsFusedWithArithmeticLayer:layerCopy];
        [v45 setSourceOfForwardNeededForGradient:0];
        [v45 setResultOfForwardNeededForGradient:0];
        if (v67)
        {
          v65 = v43;
          GPU_AllocateExportableGammaBetaStatesWithDevice(v28, v45, v64, v63, v24);
          data = [v63 data];
          v53 = [v28 newBufferWithLength:objc_msgSend(data options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

          data2 = [v64 data];
          v55 = [v28 newBufferWithLength:objc_msgSend(data2 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];

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
      betaCopy = v64;
    }

    self = v21;
    selfCopy = self;
    goto LABEL_28;
  }

  v18 = +[MLCLog framework];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [_MLCGPULayerNormalization initWithDevice:a2 normalizedShape:v18 beta:? gamma:? varianceEpsilon:? isFusedWithArithmeticLayer:?];
  }

  selfCopy = 0;
LABEL_28:

  v60 = *MEMORY[0x277D85DE8];
  return selfCopy;
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