@interface _MLCGPUPooling
+ (id)layerWithDevice:(id)a3 descriptor:(id)a4 paddingSizes:(unint64_t)a5[4];
- (_MLCGPUPooling)initWithDevice:(id)a3 descriptor:(id)a4 paddingSizes:(unint64_t)a5[4];
@end

@implementation _MLCGPUPooling

- (_MLCGPUPooling)initWithDevice:(id)a3 descriptor:(id)a4 paddingSizes:(unint64_t)a5[4]
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v59.receiver = self;
  v59.super_class = _MLCGPUPooling;
  v10 = [(_MLCGPUPooling *)&v59 init];
  v11 = v10;
  if (v10)
  {
    aSelector = a2;
    v55 = v10;
    v57 = [MEMORY[0x277CBEBF8] mutableCopy];
    v12 = [v8 deviceList];
    v13 = [v12 count];

    if (v13)
    {
      v15 = 0;
      *&v14 = 138412546;
      v53 = v14;
      do
      {
        v16 = [v8 deviceList];
        v17 = [v16 objectAtIndexedSubscript:v15];

        v18 = [v9 poolingType];
        if (v18 == 3)
        {
          v37 = [v8 gpuLibrary];
          v38 = [v37 objectAtIndexedSubscript:v15];
          v39 = [v38 newFunctionWithName:@"pooling_l2norm_forward"];

          v22 = [v17 newComputePipelineStateWithFunction:v39 error:0];
          v40 = [v8 gpuLibrary];
          v41 = [v40 objectAtIndexedSubscript:v15];
          v25 = [v41 newFunctionWithName:@"pooling_l2norm_gradient"];

          v26 = [v17 newComputePipelineStateWithFunction:v25 error:0];
          v36 = 17;
        }

        else if (v18 == 2)
        {
          v27 = [v9 countIncludesPadding];
          v28 = [v8 gpuLibrary];
          v29 = [v28 objectAtIndexedSubscript:v15];
          v30 = v29;
          if (v27)
          {
            v31 = @"pooling_average_include_padding_forward";
          }

          else
          {
            v31 = @"pooling_average_exclude_padding_forward";
          }

          v32 = [v29 newFunctionWithName:v31];

          v22 = [v17 newComputePipelineStateWithFunction:v32 error:0];
          if ([v9 countIncludesPadding])
          {
            v33 = @"pooling_average_include_padding_gradient";
          }

          else
          {
            v33 = @"pooling_average_exclude_padding_gradient";
          }

          v34 = [v8 gpuLibrary];
          v35 = [v34 objectAtIndexedSubscript:v15];
          v25 = [v35 newFunctionWithName:v33];

          v26 = [v17 newComputePipelineStateWithFunction:v25 error:0];
          v36 = 16;
        }

        else
        {
          if (v18 == 1)
          {
            v19 = [v8 gpuLibrary];
            v20 = [v19 objectAtIndexedSubscript:v15];
            v21 = [v20 newFunctionWithName:@"pooling_max_forward"];

            v22 = [v17 newComputePipelineStateWithFunction:v21 error:0];
            v23 = [v8 gpuLibrary];
            v24 = [v23 objectAtIndexedSubscript:v15];
            v25 = [v24 newFunctionWithName:@"pooling_max_gradient"];

            v26 = [v17 newComputePipelineStateWithFunction:v25 error:0];
          }

          else
          {
            v42 = +[MLCLog framework];
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v48 = NSStringFromSelector(aSelector);
              v49 = [v9 poolingType];
              *buf = v53;
              v61 = v48;
              v62 = 1024;
              v63 = v49;
              _os_log_error_impl(&dword_238C1D000, v42, OS_LOG_TYPE_ERROR, "%@: Unknown pooling type %d", buf, 0x12u);
            }

            v26 = 0;
            v22 = 0;
            v25 = 0;
          }

          v36 = 15;
        }

        v43 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v22 gradientKernel:v26];
        v44 = v43;
        if (v43)
        {
          [v43 setIsMPSKernel:0];
          [v44 setMetalKernelType:v36];
          [v44 setKernelSizeInX:{objc_msgSend(v9, "kernelWidth")}];
          [v44 setKernelSizeInY:{objc_msgSend(v9, "kernelHeight")}];
          [v44 setStrideInX:{objc_msgSend(v9, "strideInX")}];
          [v44 setStrideInY:{objc_msgSend(v9, "strideInY")}];
          [v44 setDilationRateInX:{objc_msgSend(v9, "dilationRateInX")}];
          [v44 setDilationRateInY:{objc_msgSend(v9, "dilationRateInY")}];
          [v44 setCountIncludesPadding:{objc_msgSend(v9, "countIncludesPadding")}];
          [v44 setPaddingLeft:*a5];
          [v44 setPaddingRight:a5[1]];
          [v44 setPaddingTop:a5[2]];
          [v44 setPaddingBottom:a5[3]];
          [v44 setLayer:objc_opt_class()];
          v45 = [v9 poolingType] == 3;
          [v44 setSourceOfForwardNeededForGradient:v45];
          [v44 setResultOfForwardNeededForGradient:v45];
          [v57 addObject:v44];
        }

        ++v15;
        v46 = [v8 deviceList];
        v47 = [v46 count];
      }

      while (v15 < v47);
    }

    v50 = [v57 copy];
    v11 = v55;
    v58.receiver = v55;
    v58.super_class = _MLCGPUPooling;
    [(_MLCGPULayer *)&v58 setDeviceOps:v50];
  }

  v51 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)layerWithDevice:(id)a3 descriptor:(id)a4 paddingSizes:(unint64_t)a5[4]
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithDevice:v9 descriptor:v8 paddingSizes:a5];

  return v10;
}

@end