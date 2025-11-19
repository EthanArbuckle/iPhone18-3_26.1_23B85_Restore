@interface _MLCGPUPadding
- (_MLCGPUPadding)initWithDevice:(id)a3 paddingType:(int)a4 paddingLeft:(unint64_t)a5 paddingRight:(unint64_t)a6 paddingTop:(unint64_t)a7 paddingBottom:(unint64_t)a8 constantValue:(float)a9 dataType:(int)a10;
@end

@implementation _MLCGPUPadding

- (_MLCGPUPadding)initWithDevice:(id)a3 paddingType:(int)a4 paddingLeft:(unint64_t)a5 paddingRight:(unint64_t)a6 paddingTop:(unint64_t)a7 paddingBottom:(unint64_t)a8 constantValue:(float)a9 dataType:(int)a10
{
  v12 = a3;
  v45.receiver = self;
  v45.super_class = _MLCGPUPadding;
  v13 = [(_MLCGPUPadding *)&v45 init];
  v14 = v13;
  if (v13)
  {
    v36 = v13;
    v15 = [v12 deviceList];
    v16 = [v15 count];

    v42 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v16)
    {
      v17 = 0;
      if (a4)
      {
        v18 = a4 == 3;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v19 = @"padding_gradient";
      }

      else
      {
        v19 = @"padding_gradient_reflect_symmetric";
      }

      v37 = v19;
      do
      {
        v20 = [v12 deviceList];
        v21 = [v20 objectAtIndexedSubscript:v17];

        v22 = [v12 gpuLibrary];
        v23 = [v22 objectAtIndexedSubscript:v17];
        v24 = [v23 newFunctionWithName:@"padding_forward"];

        v25 = [v21 newComputePipelineStateWithFunction:v24 error:0];
        v26 = [v12 gpuLibrary];
        v27 = [v26 objectAtIndexedSubscript:v17];
        v28 = [v27 newFunctionWithName:v19];

        v29 = [v21 newComputePipelineStateWithFunction:v28 error:0];
        v30 = v29;
        if (v25 && v29)
        {
          v31 = [MLCPaddingGPUDeviceOps deviceOpsWithForwardKernel:v25 gradientKernel:v29];
          v32 = v31;
          if (v31)
          {
            [v31 setIsMPSKernel:0];
            [v32 setMetalKernelType:2];
            [v32 setPaddingType:a4];
            if (a4 == 3)
            {
              *&v33 = a9;
              [v32 setPaddingValue:v33];
            }

            [v32 setPaddingLeft:a5];
            [v32 setPaddingRight:a6];
            [v32 setPaddingTop:a7];
            [v32 setPaddingBottom:a8];
            [v32 setSourceOfForwardNeededForGradient:0];
            [v32 setResultOfForwardNeededForGradient:0];
            [v42 addObject:v32];
            v19 = v37;
          }
        }

        ++v17;
      }

      while (v16 != v17);
    }

    v34 = [v42 copy];
    v14 = v36;
    v44.receiver = v36;
    v44.super_class = _MLCGPUPadding;
    [(_MLCGPULayer *)&v44 setDeviceOps:v34];
  }

  return v14;
}

@end