@interface _MLCGPUSlice
+ (id)layerWithDevice:(id)device begin:(id)begin end:(id)end stride:(id)stride;
- (_MLCGPUSlice)initWithDevice:(id)device begin:(id)begin end:(id)end stride:(id)stride;
@end

@implementation _MLCGPUSlice

- (_MLCGPUSlice)initWithDevice:(id)device begin:(id)begin end:(id)end stride:(id)stride
{
  deviceCopy = device;
  beginCopy = begin;
  endCopy = end;
  strideCopy = stride;
  v35.receiver = self;
  v35.super_class = _MLCGPUSlice;
  v11 = [(_MLCGPUSlice *)&v35 init];
  v12 = v11;
  if (v11)
  {
    v30 = v11;
    deviceList = [deviceCopy deviceList];
    v14 = [deviceList count];

    v15 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        deviceList2 = [deviceCopy deviceList];
        v18 = [deviceList2 objectAtIndexedSubscript:i];

        gpuLibrary = [deviceCopy gpuLibrary];
        v20 = [gpuLibrary objectAtIndexedSubscript:i];
        v21 = [v20 newFunctionWithName:@"slice"];

        v22 = [v18 newComputePipelineStateWithFunction:v21 error:0];
        if (v22)
        {
          v23 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v22 gradientKernel:v22];
          v24 = v23;
          if (v23)
          {
            [v23 setIsMPSKernel:0];
            [v24 setMetalKernelType:19];
            [v24 setLayer:objc_opt_class()];
            v25 = [beginCopy copy];
            [v24 setBegin:v25];

            v26 = [endCopy copy];
            [v24 setEnd:v26];

            v27 = [strideCopy copy];
            [v24 setStride:v27];

            [v24 setSourceOfForwardNeededForGradient:0];
            [v24 setResultOfForwardNeededForGradient:0];
            [v15 addObject:v24];
          }
        }
      }
    }

    v28 = [v15 copy];
    v12 = v30;
    v34.receiver = v30;
    v34.super_class = _MLCGPUSlice;
    [(_MLCGPULayer *)&v34 setDeviceOps:v28];
  }

  return v12;
}

+ (id)layerWithDevice:(id)device begin:(id)begin end:(id)end stride:(id)stride
{
  strideCopy = stride;
  endCopy = end;
  beginCopy = begin;
  deviceCopy = device;
  v14 = [[self alloc] initWithDevice:deviceCopy begin:beginCopy end:endCopy stride:strideCopy];

  return v14;
}

@end