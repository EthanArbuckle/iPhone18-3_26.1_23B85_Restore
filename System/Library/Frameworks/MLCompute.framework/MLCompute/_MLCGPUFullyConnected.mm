@interface _MLCGPUFullyConnected
+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms descriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor;
+ (void)setGradientComputeWeightsAndBiasOnly:(id)only deviceOps:(id)ops;
- (_MLCGPUFullyConnected)initWithDevice:(id)device weights:(id)weights biasTerms:(id)terms descriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor;
@end

@implementation _MLCGPUFullyConnected

- (_MLCGPUFullyConnected)initWithDevice:(id)device weights:(id)weights biasTerms:(id)terms descriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor
{
  v66[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  weightsCopy = weights;
  termsCopy = terms;
  descriptorCopy = descriptor;
  v60.receiver = self;
  v60.super_class = _MLCGPUFullyConnected;
  v13 = [(_MLCGPUFullyConnected *)&v60 init];
  v14 = v13;
  if (v13)
  {
    v51 = v13;
    v54 = [MEMORY[0x277CBEBF8] mutableCopy];
    deviceList = [deviceCopy deviceList];
    v16 = [deviceList count];

    if (v16)
    {
      v17 = 0;
      v57 = deviceCopy;
      do
      {
        deviceList2 = [deviceCopy deviceList];
        v19 = [deviceList2 objectAtIndexedSubscript:v17];

        v20 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v19 transposeLeft:0 transposeRight:1 resultRows:1 resultColumns:objc_msgSend(descriptorCopy interiorColumns:"outputFeatureChannelCount") alpha:objc_msgSend(descriptorCopy beta:{"inputFeatureChannelCount"), 1.0, 0.0}];
        v21 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v19 transposeLeft:0 transposeRight:0 resultRows:1 resultColumns:objc_msgSend(descriptorCopy interiorColumns:"inputFeatureChannelCount") alpha:objc_msgSend(descriptorCopy beta:{"outputFeatureChannelCount"), 1.0, 0.0}];
        v22 = [objc_alloc(MEMORY[0x277CD75E0]) initWithDevice:v19 transposeLeft:1 transposeRight:0 resultRows:objc_msgSend(descriptorCopy resultColumns:"outputFeatureChannelCount") interiorColumns:objc_msgSend(descriptorCopy alpha:"inputFeatureChannelCount") beta:{1, 1.0, 0.0}];
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
              deviceList3 = [deviceCopy deviceList];
              v29 = [deviceList3 count];

              if (v29 < 2)
              {
                v31 = weightsCopy;
              }

              else
              {
                v30 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v23];

                v31 = weightsCopy;
                if (termsCopy)
                {
                  v63[0] = weightsCopy;
                  v63[1] = termsCopy;
                  v32 = MEMORY[0x277CBEA60];
                  v33 = v63;
                  v34 = 2;
                }

                else
                {
                  v64 = weightsCopy;
                  v32 = MEMORY[0x277CBEA60];
                  v33 = &v64;
                  v34 = 1;
                }

                v35 = [v32 arrayWithObjects:v33 count:v34];
                GPU_AllocateResourceForMultiGPUTraining(deviceCopy, v30, v35, v17);

                v23 = v30;
              }

              if ([deviceCopy needToAllocateDeviceMemoryForTensor:v31])
              {
                [deviceCopy allocateDeviceMemoryForTensor:v31];
              }

              [deviceCopy broadcastTensor:v31];
              descriptor = [v31 descriptor];
              [v23 setWeightsDataType:{objc_msgSend(descriptor, "dataType")}];

              if (termsCopy)
              {
                if ([deviceCopy needToAllocateDeviceMemoryForTensor:termsCopy])
                {
                  [deviceCopy allocateDeviceMemoryForTensor:termsCopy];
                }

                [deviceCopy broadcastTensor:termsCopy];
                deviceMemory = [v31 deviceMemory];
                v52 = [deviceMemory objectAtIndexedSubscript:v17];
                v62[0] = v52;
                deviceMemory2 = [termsCopy deviceMemory];
                v38 = [deviceMemory2 objectAtIndexedSubscript:v17];
                v62[1] = v38;
                v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
                v40 = [v39 copy];
                [v23 setExportableState:v40];

                descriptor2 = [termsCopy descriptor];
                [v23 setBiasesDataType:{objc_msgSend(descriptor2, "dataType")}];

                [v23 setArithmeticOp:0];
              }

              else
              {
                deviceMemory3 = [v31 deviceMemory];
                v43 = [deviceMemory3 objectAtIndexedSubscript:v17];
                v61 = v43;
                v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
                v45 = [v44 copy];
                [v23 setExportableState:v45];
              }

              [v23 setTotalElementsPerChannel:1];
              [v23 setSourceOfForwardNeededForGradient:1];
              [v23 setResultOfForwardNeededForGradient:0];
              [v54 addObject:v23];

              deviceCopy = v57;
              v22 = v58;
            }
          }
        }

        ++v17;
        deviceList4 = [deviceCopy deviceList];
        v47 = [deviceList4 count];

        deviceCopy = v57;
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

+ (void)setGradientComputeWeightsAndBiasOnly:(id)only deviceOps:(id)ops
{
  onlyCopy = only;
  opsCopy = ops;
  deviceList = [onlyCopy deviceList];
  v7 = [deviceList count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [opsCopy objectAtIndexedSubscript:v8];
      [v9 setComputeWeightsAndBiasOnly:1];

      ++v8;
      deviceList2 = [onlyCopy deviceList];
      v11 = [deviceList2 count];
    }

    while (v8 < v11);
  }
}

+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms descriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor
{
  neuronDescriptorCopy = neuronDescriptor;
  descriptorCopy = descriptor;
  termsCopy = terms;
  weightsCopy = weights;
  deviceCopy = device;
  v17 = [[self alloc] initWithDevice:deviceCopy weights:weightsCopy biasTerms:termsCopy descriptor:descriptorCopy neuronDescriptor:neuronDescriptorCopy];

  return v17;
}

@end