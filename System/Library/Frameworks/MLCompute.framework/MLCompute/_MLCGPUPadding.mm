@interface _MLCGPUPadding
- (_MLCGPUPadding)initWithDevice:(id)device paddingType:(int)type paddingLeft:(unint64_t)left paddingRight:(unint64_t)right paddingTop:(unint64_t)top paddingBottom:(unint64_t)bottom constantValue:(float)value dataType:(int)self0;
@end

@implementation _MLCGPUPadding

- (_MLCGPUPadding)initWithDevice:(id)device paddingType:(int)type paddingLeft:(unint64_t)left paddingRight:(unint64_t)right paddingTop:(unint64_t)top paddingBottom:(unint64_t)bottom constantValue:(float)value dataType:(int)self0
{
  deviceCopy = device;
  v45.receiver = self;
  v45.super_class = _MLCGPUPadding;
  v13 = [(_MLCGPUPadding *)&v45 init];
  v14 = v13;
  if (v13)
  {
    v36 = v13;
    deviceList = [deviceCopy deviceList];
    v16 = [deviceList count];

    v42 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v16)
    {
      v17 = 0;
      if (type)
      {
        v18 = type == 3;
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
        deviceList2 = [deviceCopy deviceList];
        v21 = [deviceList2 objectAtIndexedSubscript:v17];

        gpuLibrary = [deviceCopy gpuLibrary];
        v23 = [gpuLibrary objectAtIndexedSubscript:v17];
        v24 = [v23 newFunctionWithName:@"padding_forward"];

        v25 = [v21 newComputePipelineStateWithFunction:v24 error:0];
        gpuLibrary2 = [deviceCopy gpuLibrary];
        v27 = [gpuLibrary2 objectAtIndexedSubscript:v17];
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
            [v32 setPaddingType:type];
            if (type == 3)
            {
              *&v33 = value;
              [v32 setPaddingValue:v33];
            }

            [v32 setPaddingLeft:left];
            [v32 setPaddingRight:right];
            [v32 setPaddingTop:top];
            [v32 setPaddingBottom:bottom];
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