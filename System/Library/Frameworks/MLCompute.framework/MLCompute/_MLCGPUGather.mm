@interface _MLCGPUGather
+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension;
- (_MLCGPUGather)initWithDevice:(id)device dimension:(unint64_t)dimension;
@end

@implementation _MLCGPUGather

- (_MLCGPUGather)initWithDevice:(id)device dimension:(unint64_t)dimension
{
  deviceCopy = device;
  v29.receiver = self;
  v29.super_class = _MLCGPUGather;
  v6 = [(_MLCGPUGather *)&v29 init];
  v7 = v6;
  if (v6)
  {
    v26 = v6;
    deviceList = [deviceCopy deviceList];
    v9 = [deviceList count];

    v10 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        deviceList2 = [deviceCopy deviceList];
        v13 = [deviceList2 objectAtIndexedSubscript:i];

        gpuLibrary = [deviceCopy gpuLibrary];
        v15 = [gpuLibrary objectAtIndexedSubscript:i];
        v16 = [v15 newFunctionWithName:@"gather_forward"];

        v17 = [v13 newComputePipelineStateWithFunction:v16 error:0];
        gpuLibrary2 = [deviceCopy gpuLibrary];
        v19 = [gpuLibrary2 objectAtIndexedSubscript:i];
        v20 = [v19 newFunctionWithName:@"scatter_forward"];

        v21 = [v13 newComputePipelineStateWithFunction:v20 error:0];
        v22 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v17 gradientKernel:v21];
        v23 = v22;
        if (v22)
        {
          [v22 setIsMPSKernel:0];
          [v23 setMetalKernelType:14];
          [v23 setScatterGatherDimension:dimension];
          [v23 setScatterReduceType:1];
          [v23 setLayer:objc_opt_class()];
          [v10 addObject:v23];
        }
      }
    }

    v24 = [v10 copy];
    v7 = v26;
    v28.receiver = v26;
    v28.super_class = _MLCGPUGather;
    [(_MLCGPULayer *)&v28 setDeviceOps:v24];
  }

  return v7;
}

+ (id)layerWithDevice:(id)device dimension:(unint64_t)dimension
{
  deviceCopy = device;
  v7 = [[self alloc] initWithDevice:deviceCopy dimension:dimension];

  return v7;
}

@end