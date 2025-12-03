@interface _MLCGPUSoftmax
- (_MLCGPUSoftmax)initWithDevice:(id)device operation:(int)operation dimension:(unint64_t)dimension;
@end

@implementation _MLCGPUSoftmax

- (_MLCGPUSoftmax)initWithDevice:(id)device operation:(int)operation dimension:(unint64_t)dimension
{
  deviceCopy = device;
  v43.receiver = self;
  v43.super_class = _MLCGPUSoftmax;
  v8 = [(_MLCGPUSoftmax *)&v43 init];
  v9 = v8;
  if (v8)
  {
    v35 = v8;
    deviceList = [deviceCopy deviceList];
    v11 = [deviceList count];

    v37 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v11)
    {
      v12 = 0;
      if (operation)
      {
        v13 = @"log_softmax_forward_fast";
      }

      else
      {
        v13 = @"softmax_forward_fast";
      }

      v14 = @"log_softmax_forward";
      if (!operation)
      {
        v14 = @"softmax_forward";
      }

      v40 = v14;
      v41 = v13;
      v15 = @"softmax_gradient";
      if (operation)
      {
        v15 = @"log_softmax_gradient";
      }

      v38 = v11;
      v39 = v15;
      do
      {
        deviceList2 = [deviceCopy deviceList];
        v17 = [deviceList2 objectAtIndexedSubscript:v12];

        gpuLibrary = [deviceCopy gpuLibrary];
        v19 = [gpuLibrary objectAtIndexedSubscript:v12];
        v20 = [v19 newFunctionWithName:v41];

        gpuLibrary2 = [deviceCopy gpuLibrary];
        v22 = [gpuLibrary2 objectAtIndexedSubscript:v12];
        v23 = [v22 newFunctionWithName:v40];

        gpuLibrary3 = [deviceCopy gpuLibrary];
        v25 = [gpuLibrary3 objectAtIndexedSubscript:v12];
        v26 = [v25 newFunctionWithName:v39];

        v27 = [v17 newComputePipelineStateWithFunction:v23 error:0];
        v28 = [v17 newComputePipelineStateWithFunction:v20 error:0];
        v29 = [v17 newComputePipelineStateWithFunction:v26 error:0];
        v30 = v29;
        if (v27 && v29)
        {
          v31 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v27 gradientKernel:v29];
          v32 = v31;
          if (v31)
          {
            [v31 setIsMPSKernel:0];
            [v32 setMetalKernelType:3];
            [v32 setSoftmaxAxis:dimension];
            [v32 setForwardStatisticsKernel:v28];
            [v32 setSourceOfForwardNeededForGradient:0];
            [v32 setResultOfForwardNeededForGradient:1];
            [v32 setLayer:objc_opt_class()];
            [v37 addObject:v32];
          }

          v11 = v38;
        }

        ++v12;
      }

      while (v11 != v12);
    }

    v33 = [v37 copy];
    v9 = v35;
    v42.receiver = v35;
    v42.super_class = _MLCGPUSoftmax;
    [(_MLCGPULayer *)&v42 setDeviceOps:v33];
  }

  return v9;
}

@end