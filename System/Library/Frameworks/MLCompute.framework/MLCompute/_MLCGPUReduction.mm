@interface _MLCGPUReduction
- (_MLCGPUReduction)initWithDevice:(id)a3 reduceType:(int)a4 dimensions:(id)a5 sourceShapeCount:(unint64_t)a6;
@end

@implementation _MLCGPUReduction

- (_MLCGPUReduction)initWithDevice:(id)a3 reduceType:(int)a4 dimensions:(id)a5 sourceShapeCount:(unint64_t)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v36.receiver = self;
  v36.super_class = _MLCGPUReduction;
  v9 = [(_MLCGPUReduction *)&v36 init];
  v10 = v9;
  if (v9)
  {
    aSelector = a2;
    v32 = v9;
    v11 = [v8 deviceList];
    v12 = [v11 count];

    v33 = [MEMORY[0x277CBEBF8] mutableCopy];
    if (v12)
    {
      v13 = 0;
      if ((a4 & 0xFFFFFFFE) == 8)
      {
        v14 = @"reduce_forward_any_all";
      }

      else
      {
        v14 = @"reduce_forward";
      }

      do
      {
        v15 = [v8 deviceList];
        v16 = [v15 objectAtIndexedSubscript:v13];

        v17 = [v8 gpuLibrary];
        v18 = [v17 objectAtIndexedSubscript:v13];
        v19 = [v18 newFunctionWithName:v14];

        v20 = [v16 newComputePipelineStateWithFunction:v19 error:0];
        v21 = [v8 gpuLibrary];
        v22 = [v21 objectAtIndexedSubscript:v13];
        v23 = [v22 newFunctionWithName:@"reduce_gradient"];

        v24 = [v16 newComputePipelineStateWithFunction:v23 error:0];
        if ((a4 - 1) >= 9)
        {
          v25 = +[MLCLog framework];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v30 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v38 = v30;
            v39 = 1024;
            v40 = a4;
            _os_log_error_impl(&dword_238C1D000, v25, OS_LOG_TYPE_ERROR, "%@: unknown reduceType type = %d", buf, 0x12u);
          }
        }

        if (v20)
        {
          v26 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v20 gradientKernel:v24];
          [v26 setSourceOfForwardNeededForGradient:0];
          [v26 setResultOfForwardNeededForGradient:0];
          if ((a4 - 3) >= 2)
          {
            if (a4 == 7)
            {
              [v26 setSourceOfForwardNeededForGradient:1];
            }
          }

          else
          {
            [v26 setSourceOfForwardNeededForGradient:1];
            [v26 setResultOfForwardNeededForGradient:1];
          }

          if (v26)
          {
            [v33 addObject:v26];
          }
        }

        ++v13;
      }

      while (v12 != v13);
    }

    v27 = [v33 copy];
    v10 = v32;
    v35.receiver = v32;
    v35.super_class = _MLCGPUReduction;
    [(_MLCGPULayer *)&v35 setDeviceOps:v27];
  }

  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

@end