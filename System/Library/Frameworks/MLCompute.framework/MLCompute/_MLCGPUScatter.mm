@interface _MLCGPUScatter
- (_MLCGPUScatter)initWithDevice:(id)device dimension:(unint64_t)dimension reduceType:(int)type;
@end

@implementation _MLCGPUScatter

- (_MLCGPUScatter)initWithDevice:(id)device dimension:(unint64_t)dimension reduceType:(int)type
{
  deviceCopy = device;
  v31.receiver = self;
  v31.super_class = _MLCGPUScatter;
  v7 = [(_MLCGPUScatter *)&v31 init];
  v8 = v7;
  if (v7)
  {
    v27 = v7;
    deviceList = [deviceCopy deviceList];
    v10 = [deviceList count];

    v11 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        deviceList2 = [deviceCopy deviceList];
        v14 = [deviceList2 objectAtIndexedSubscript:i];

        gpuLibrary = [deviceCopy gpuLibrary];
        v16 = [gpuLibrary objectAtIndexedSubscript:i];
        v17 = [v16 newFunctionWithName:@"scatter_forward"];

        v18 = [v14 newComputePipelineStateWithFunction:v17 error:0];
        gpuLibrary2 = [deviceCopy gpuLibrary];
        v20 = [gpuLibrary2 objectAtIndexedSubscript:i];
        v21 = [v20 newFunctionWithName:@"gather_forward"];

        v22 = [v14 newComputePipelineStateWithFunction:v21 error:0];
        v23 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v18 gradientKernel:v22];
        v24 = v23;
        if (v23)
        {
          [v23 setIsMPSKernel:0];
          [v24 setMetalKernelType:13];
          [v24 setScatterGatherDimension:dimension];
          [v24 setScatterReduceType:type];
          [v24 setLayer:objc_opt_class()];
          [v24 setSourceOfForwardNeededForGradient:1];
          [v24 setResultOfForwardNeededForGradient:0];
          [v11 addObject:v24];
        }
      }
    }

    v25 = [v11 copy];
    v8 = v27;
    v30.receiver = v27;
    v30.super_class = _MLCGPUScatter;
    [(_MLCGPULayer *)&v30 setDeviceOps:v25];
  }

  return v8;
}

@end