@interface _MLCGPUFullyConnected
+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 descriptor:(id)a6 neuronDescriptor:(id)a7;
+ (void)setGradientComputeWeightsAndBiasOnly:(id)a3 deviceOps:(id)a4;
- (_MLCGPUFullyConnected)initWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 descriptor:(id)a6 neuronDescriptor:(id)a7;
@end

@implementation _MLCGPUFullyConnected

- (_MLCGPUFullyConnected)initWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 descriptor:(id)a6 neuronDescriptor:(id)a7
{
  v66[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v55 = a4;
  v56 = a5;
  v12 = a6;
  v60.receiver = self;
  v60.super_class = _MLCGPUFullyConnected;
  v13 = [(_MLCGPUFullyConnected *)&v60 init];
  v14 = v13;
  if (v13)
  {
    v51 = v13;
    v54 = [MEMORY[0x277CBEBF8] mutableCopy];
    v15 = [v11 deviceList];
    v16 = [v15 count];

    if (v16)
    {
      v17 = 0;
      v57 = v11;
      do
      {
        v18 = [v11 deviceList];
        v19 = [v18 objectAtIndexedSubscript:v17];

        v20 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v19 transposeLeft:0 transposeRight:1 resultRows:1 resultColumns:objc_msgSend(v12 interiorColumns:"outputFeatureChannelCount") alpha:objc_msgSend(v12 beta:{"inputFeatureChannelCount"), 1.0, 0.0}];
        v21 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v19 transposeLeft:0 transposeRight:0 resultRows:1 resultColumns:objc_msgSend(v12 interiorColumns:"inputFeatureChannelCount") alpha:objc_msgSend(v12 beta:{"outputFeatureChannelCount"), 1.0, 0.0}];
        v22 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v19 transposeLeft:1 transposeRight:0 resultRows:objc_msgSend(v12 resultColumns:"outputFeatureChannelCount") interiorColumns:objc_msgSend(v12 alpha:"inputFeatureChannelCount") beta:{1, 1.0, 0.0}];
        if (v20)
        {
          if (v21)
          {
            v58 = v22;
            v23 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v20 gradientKernel:v21 secondaryGradientKernel:v22];
            v66[0] = v20;
            v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
            v25 = [v24 mutableCopy];
            [v23 setForwardStatisticsKernel:v25];

            v65[0] = v21;
            v65[1] = v58;
            v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
            v27 = [v26 mutableCopy];
            [v23 setGradientStatisticsKernel:v27];

            v22 = v58;
            if (v23)
            {
              v28 = [v11 deviceList];
              v29 = [v28 count];

              if (v29 < 2)
              {
                v31 = v55;
              }

              else
              {
                v30 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v23];

                v31 = v55;
                if (v56)
                {
                  v63[0] = v55;
                  v63[1] = v56;
                  v32 = MEMORY[0x277CBEA60];
                  v33 = v63;
                  v34 = 2;
                }

                else
                {
                  v64 = v55;
                  v32 = MEMORY[0x277CBEA60];
                  v33 = &v64;
                  v34 = 1;
                }

                v35 = [v32 arrayWithObjects:v33 count:v34];
                GPU_AllocateResourceForMultiGPUTraining(v11, v30, v35, v17);

                v23 = v30;
              }

              if ([v11 needToAllocateDeviceMemoryForTensor:v31])
              {
                [v11 allocateDeviceMemoryForTensor:v31];
              }

              [v11 broadcastTensor:v31];
              v36 = [v31 descriptor];
              [v23 setWeightsDataType:{objc_msgSend(v36, "dataType")}];

              if (v56)
              {
                if ([v11 needToAllocateDeviceMemoryForTensor:v56])
                {
                  [v11 allocateDeviceMemoryForTensor:v56];
                }

                [v11 broadcastTensor:v56];
                v53 = [v31 deviceMemory];
                v52 = [v53 objectAtIndexedSubscript:v17];
                v62[0] = v52;
                v37 = [v56 deviceMemory];
                v38 = [v37 objectAtIndexedSubscript:v17];
                v62[1] = v38;
                v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
                v40 = [v39 copy];
                [v23 setExportableState:v40];

                v41 = [v56 descriptor];
                [v23 setBiasesDataType:{objc_msgSend(v41, "dataType")}];

                [v23 setArithmeticOp:0];
              }

              else
              {
                v42 = [v31 deviceMemory];
                v43 = [v42 objectAtIndexedSubscript:v17];
                v61 = v43;
                v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
                v45 = [v44 copy];
                [v23 setExportableState:v45];
              }

              [v23 setTotalElementsPerChannel:1];
              [v23 setSourceOfForwardNeededForGradient:1];
              [v23 setResultOfForwardNeededForGradient:0];
              [v54 addObject:v23];

              v11 = v57;
              v22 = v58;
            }
          }
        }

        ++v17;
        v46 = [v11 deviceList];
        v47 = [v46 count];

        v11 = v57;
      }

      while (v17 < v47);
    }

    v48 = [v54 copy];
    v14 = v51;
    v59.receiver = v51;
    v59.super_class = _MLCGPUFullyConnected;
    [(_MLCGPULayer *)&v59 setDeviceOps:v48];
  }

  v49 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)setGradientComputeWeightsAndBiasOnly:(id)a3 deviceOps:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = [v12 deviceList];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [v5 objectAtIndexedSubscript:v8];
      [v9 setComputeWeightsAndBiasOnly:1];

      ++v8;
      v10 = [v12 deviceList];
      v11 = [v10 count];
    }

    while (v8 < v11);
  }
}

+ (id)layerWithDevice:(id)a3 weights:(id)a4 biasTerms:(id)a5 descriptor:(id)a6 neuronDescriptor:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithDevice:v16 weights:v15 biasTerms:v14 descriptor:v13 neuronDescriptor:v12];

  return v17;
}

@end