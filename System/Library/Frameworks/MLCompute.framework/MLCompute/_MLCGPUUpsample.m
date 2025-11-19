@interface _MLCGPUUpsample
- (_MLCGPUUpsample)initWithDevice:(id)a3 scaleFactorX:(float)a4 scaleFactorY:(float)a5 sampleMode:(int)a6 alignCorners:(BOOL)a7;
@end

@implementation _MLCGPUUpsample

- (_MLCGPUUpsample)initWithDevice:(id)a3 scaleFactorX:(float)a4 scaleFactorY:(float)a5 sampleMode:(int)a6 alignCorners:(BOOL)a7
{
  v42 = a7;
  v11 = a3;
  v46.receiver = self;
  v46.super_class = _MLCGPUUpsample;
  v12 = [(_MLCGPUUpsample *)&v46 init];
  v13 = v12;
  if (v12)
  {
    v40 = v12;
    v14 = [v11 deviceList];
    v15 = [v14 count];

    v43 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v15)
    {
      v16 = 0;
      v17 = @"resize_nearest_forward";
      if (a4 == 2.0 && a5 == 2.0)
      {
        v17 = @"resize_nearest2x2_forward";
      }

      v41 = a6 == 0;
      if (a6)
      {
        v18 = @"resize_bilinear_forward";
      }

      else
      {
        v18 = v17;
      }

      if (a6)
      {
        v19 = @"resize_bilinear_gradient";
      }

      else
      {
        v19 = @"resize_nearest_gradient";
      }

      v44 = v11;
      do
      {
        v20 = [v11 deviceList];
        v21 = [v20 objectAtIndexedSubscript:v16];

        v22 = [v11 gpuLibrary];
        v23 = [v22 objectAtIndexedSubscript:v16];
        v24 = [v23 newFunctionWithName:v18];

        v25 = [v11 gpuLibrary];
        v26 = [v25 objectAtIndexedSubscript:v16];
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
            *&v36 = a4;
            [v35 setScaleFactorX:v36];
            *&v37 = a5;
            [v35 setScaleFactorY:v37];
            [v35 setAlignCorners:v42];
            [v35 setIsSpecialCasedNearestForwardKernel:v41 & (a4 == 2.0 && a5 == 2.0)];
            [v35 setSourceOfForwardNeededForGradient:0];
            [v35 setResultOfForwardNeededForGradient:0];
            [v43 addObject:v35];
          }

          v15 = v33;
          v18 = v32;
          v19 = v31;
          v11 = v44;
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