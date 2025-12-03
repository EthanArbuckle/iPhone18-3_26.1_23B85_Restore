@interface _MLCGPUUpsample
- (_MLCGPUUpsample)initWithDevice:(id)device scaleFactorX:(float)x scaleFactorY:(float)y sampleMode:(int)mode alignCorners:(BOOL)corners;
@end

@implementation _MLCGPUUpsample

- (_MLCGPUUpsample)initWithDevice:(id)device scaleFactorX:(float)x scaleFactorY:(float)y sampleMode:(int)mode alignCorners:(BOOL)corners
{
  cornersCopy = corners;
  deviceCopy = device;
  v46.receiver = self;
  v46.super_class = _MLCGPUUpsample;
  v12 = [(_MLCGPUUpsample *)&v46 init];
  v13 = v12;
  if (v12)
  {
    v40 = v12;
    deviceList = [deviceCopy deviceList];
    v15 = [deviceList count];

    v43 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v15)
    {
      v16 = 0;
      v17 = @"resize_nearest_forward";
      if (x == 2.0 && y == 2.0)
      {
        v17 = @"resize_nearest2x2_forward";
      }

      v41 = mode == 0;
      if (mode)
      {
        v18 = @"resize_bilinear_forward";
      }

      else
      {
        v18 = v17;
      }

      if (mode)
      {
        v19 = @"resize_bilinear_gradient";
      }

      else
      {
        v19 = @"resize_nearest_gradient";
      }

      v44 = deviceCopy;
      do
      {
        deviceList2 = [deviceCopy deviceList];
        v21 = [deviceList2 objectAtIndexedSubscript:v16];

        gpuLibrary = [deviceCopy gpuLibrary];
        v23 = [gpuLibrary objectAtIndexedSubscript:v16];
        v24 = [v23 newFunctionWithName:v18];

        gpuLibrary2 = [deviceCopy gpuLibrary];
        v26 = [gpuLibrary2 objectAtIndexedSubscript:v16];
        v27 = [v26 newFunctionWithName:v19];

        v28 = [v21 newComputePipelineStateWithFunction:v24 error:0];
        v29 = [v21 newComputePipelineStateWithFunction:v27 error:0];
        v30 = v29;
        if (v28 && v29)
        {
          v31 = v19;
          v32 = v18;
          v33 = v15;
          v34 = [MLCResizeGPUDeviceOps deviceOpsWithForwardKernel:v28 gradientKernel:v29];
          v35 = v34;
          if (v34)
          {
            [v34 setIsMPSKernel:0];
            [v35 setMetalKernelType:10];
            *&v36 = x;
            [v35 setScaleFactorX:v36];
            *&v37 = y;
            [v35 setScaleFactorY:v37];
            [v35 setAlignCorners:cornersCopy];
            [v35 setIsSpecialCasedNearestForwardKernel:v41 & (x == 2.0 && y == 2.0)];
            [v35 setSourceOfForwardNeededForGradient:0];
            [v35 setResultOfForwardNeededForGradient:0];
            [v43 addObject:v35];
          }

          v15 = v33;
          v18 = v32;
          v19 = v31;
          deviceCopy = v44;
        }

        ++v16;
      }

      while (v15 != v16);
    }

    v38 = [v43 copy];
    v13 = v40;
    v45.receiver = v40;
    v45.super_class = _MLCGPUUpsample;
    [(_MLCGPULayer *)&v45 setDeviceOps:v38];
  }

  return v13;
}

@end