@interface _MLCGPUSlice
+ (id)layerWithDevice:(id)a3 begin:(id)a4 end:(id)a5 stride:(id)a6;
- (_MLCGPUSlice)initWithDevice:(id)a3 begin:(id)a4 end:(id)a5 stride:(id)a6;
@end

@implementation _MLCGPUSlice

- (_MLCGPUSlice)initWithDevice:(id)a3 begin:(id)a4 end:(id)a5 stride:(id)a6
{
  v10 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a6;
  v35.receiver = self;
  v35.super_class = _MLCGPUSlice;
  v11 = [(_MLCGPUSlice *)&v35 init];
  v12 = v11;
  if (v11)
  {
    v30 = v11;
    v13 = [v10 deviceList];
    v14 = [v13 count];

    v15 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v14)
    {
      for (i = 0; i != v14; ++i)
      {
        v17 = [v10 deviceList];
        v18 = [v17 objectAtIndexedSubscript:i];

        v19 = [v10 gpuLibrary];
        v20 = [v19 objectAtIndexedSubscript:i];
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
            v25 = [v33 copy];
            [v24 setBegin:v25];

            v26 = [v32 copy];
            [v24 setEnd:v26];

            v27 = [v31 copy];
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

+ (id)layerWithDevice:(id)a3 begin:(id)a4 end:(id)a5 stride:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithDevice:v13 begin:v12 end:v11 stride:v10];

  return v14;
}

@end