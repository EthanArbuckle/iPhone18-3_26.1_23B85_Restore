@interface _MLCGPUTranspose
+ (id)layerWithDevice:(id)device shape:(id)shape;
- (_MLCGPUTranspose)initWithDevice:(id)device shape:(id)shape;
@end

@implementation _MLCGPUTranspose

- (_MLCGPUTranspose)initWithDevice:(id)device shape:(id)shape
{
  deviceCopy = device;
  shapeCopy = shape;
  v37.receiver = self;
  v37.super_class = _MLCGPUTranspose;
  v8 = [(_MLCGPUTranspose *)&v37 init];
  v9 = v8;
  if (v8)
  {
    v34 = v8;
    v35 = [MEMORY[0x277CBEBF8] mutableCopy];
    deviceList = [deviceCopy deviceList];
    v11 = [deviceList count];

    if (v11)
    {
      v12 = 0;
      do
      {
        deviceList2 = [deviceCopy deviceList];
        v14 = [deviceList2 objectAtIndexedSubscript:v12];

        v15 = [MEMORY[0x277CBEBF8] mutableCopy];
        if ([shapeCopy count])
        {
          v16 = 0;
          do
          {
            if ([shapeCopy count])
            {
              v17 = 0;
              do
              {
                v18 = [shapeCopy objectAtIndexedSubscript:v17];
                unsignedIntegerValue = [v18 unsignedIntegerValue];

                if (v16 == unsignedIntegerValue)
                {
                  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
                  [v15 setObject:v20 atIndexedSubscript:v16];
                }

                ++v17;
              }

              while (v17 < [shapeCopy count]);
            }

            ++v16;
          }

          while (v16 < [shapeCopy count]);
        }

        if ([shapeCopy count] == 2)
        {
          gpuLibrary = [deviceCopy gpuLibrary];
          v22 = [gpuLibrary objectAtIndexedSubscript:v12];
          v23 = v22;
          v24 = @"transpose_two_dims";
        }

        else
        {
          v25 = [shapeCopy count];
          gpuLibrary = [deviceCopy gpuLibrary];
          v22 = [gpuLibrary objectAtIndexedSubscript:v12];
          v23 = v22;
          if (v25 == 3)
          {
            v24 = @"transpose_three_dims";
          }

          else
          {
            v24 = @"transpose_four_dims";
          }
        }

        v26 = [v22 newFunctionWithName:v24];

        v27 = [v14 newComputePipelineStateWithFunction:v26 error:0];
        v28 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v27];
        if (v28)
        {
          v29 = [shapeCopy mutableCopy];
          [v28 setTransposeShape:v29];

          [v28 setTransposeGradientShape:v15];
          [v28 setIsMPSKernel:0];
          [v28 setMetalKernelType:12];
          [v28 setSourceOfForwardNeededForGradient:0];
          [v28 setResultOfForwardNeededForGradient:0];
          [v35 addObject:v28];
        }

        ++v12;
        deviceList3 = [deviceCopy deviceList];
        v31 = [deviceList3 count];
      }

      while (v12 < v31);
    }

    v32 = [v35 copy];
    v9 = v34;
    v36.receiver = v34;
    v36.super_class = _MLCGPUTranspose;
    [(_MLCGPULayer *)&v36 setDeviceOps:v32];
  }

  return v9;
}

+ (id)layerWithDevice:(id)device shape:(id)shape
{
  shapeCopy = shape;
  deviceCopy = device;
  v8 = [[self alloc] initWithDevice:deviceCopy shape:shapeCopy];

  return v8;
}

@end