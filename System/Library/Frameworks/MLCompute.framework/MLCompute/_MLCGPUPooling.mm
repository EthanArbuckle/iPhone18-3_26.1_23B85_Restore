@interface _MLCGPUPooling
+ (id)layerWithDevice:(id)device descriptor:(id)descriptor paddingSizes:(unint64_t)sizes[4];
- (_MLCGPUPooling)initWithDevice:(id)device descriptor:(id)descriptor paddingSizes:(unint64_t)sizes[4];
@end

@implementation _MLCGPUPooling

- (_MLCGPUPooling)initWithDevice:(id)device descriptor:(id)descriptor paddingSizes:(unint64_t)sizes[4]
{
  v64 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  descriptorCopy = descriptor;
  v59.receiver = self;
  v59.super_class = _MLCGPUPooling;
  v10 = [(_MLCGPUPooling *)&v59 init];
  v11 = v10;
  if (v10)
  {
    aSelector = a2;
    v55 = v10;
    v57 = [MEMORY[0x277CBEBF8] mutableCopy];
    deviceList = [deviceCopy deviceList];
    v13 = [deviceList count];

    if (v13)
    {
      v15 = 0;
      *&v14 = 138412546;
      v53 = v14;
      do
      {
        deviceList2 = [deviceCopy deviceList];
        v17 = [deviceList2 objectAtIndexedSubscript:v15];

        poolingType = [descriptorCopy poolingType];
        if (poolingType == 3)
        {
          gpuLibrary = [deviceCopy gpuLibrary];
          v38 = [gpuLibrary objectAtIndexedSubscript:v15];
          v39 = [v38 newFunctionWithName:@"pooling_l2norm_forward"];

          v22 = [v17 newComputePipelineStateWithFunction:v39 error:0];
          gpuLibrary2 = [deviceCopy gpuLibrary];
          v41 = [gpuLibrary2 objectAtIndexedSubscript:v15];
          v25 = [v41 newFunctionWithName:@"pooling_l2norm_gradient"];

          v26 = [v17 newComputePipelineStateWithFunction:v25 error:0];
          v36 = 17;
        }

        else if (poolingType == 2)
        {
          countIncludesPadding = [descriptorCopy countIncludesPadding];
          gpuLibrary3 = [deviceCopy gpuLibrary];
          v29 = [gpuLibrary3 objectAtIndexedSubscript:v15];
          v30 = v29;
          if (countIncludesPadding)
          {
            v31 = @"pooling_average_include_padding_forward";
          }

          else
          {
            v31 = @"pooling_average_exclude_padding_forward";
          }

          v32 = [v29 newFunctionWithName:v31];

          v22 = [v17 newComputePipelineStateWithFunction:v32 error:0];
          if ([descriptorCopy countIncludesPadding])
          {
            v33 = @"pooling_average_include_padding_gradient";
          }

          else
          {
            v33 = @"pooling_average_exclude_padding_gradient";
          }

          gpuLibrary4 = [deviceCopy gpuLibrary];
          v35 = [gpuLibrary4 objectAtIndexedSubscript:v15];
          v25 = [v35 newFunctionWithName:v33];

          v26 = [v17 newComputePipelineStateWithFunction:v25 error:0];
          v36 = 16;
        }

        else
        {
          if (poolingType == 1)
          {
            gpuLibrary5 = [deviceCopy gpuLibrary];
            v20 = [gpuLibrary5 objectAtIndexedSubscript:v15];
            v21 = [v20 newFunctionWithName:@"pooling_max_forward"];

            v22 = [v17 newComputePipelineStateWithFunction:v21 error:0];
            gpuLibrary6 = [deviceCopy gpuLibrary];
            v24 = [gpuLibrary6 objectAtIndexedSubscript:v15];
            v25 = [v24 newFunctionWithName:@"pooling_max_gradient"];

            v26 = [v17 newComputePipelineStateWithFunction:v25 error:0];
          }

          else
          {
            v42 = +[MLCLog framework];
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v48 = NSStringFromSelector(aSelector);
              poolingType2 = [descriptorCopy poolingType];
              *buf = v53;
              v61 = v48;
              v62 = 1024;
              v63 = poolingType2;
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
          [v44 setKernelSizeInX:{objc_msgSend(descriptorCopy, "kernelWidth")}];
          [v44 setKernelSizeInY:{objc_msgSend(descriptorCopy, "kernelHeight")}];
          [v44 setStrideInX:{objc_msgSend(descriptorCopy, "strideInX")}];
          [v44 setStrideInY:{objc_msgSend(descriptorCopy, "strideInY")}];
          [v44 setDilationRateInX:{objc_msgSend(descriptorCopy, "dilationRateInX")}];
          [v44 setDilationRateInY:{objc_msgSend(descriptorCopy, "dilationRateInY")}];
          [v44 setCountIncludesPadding:{objc_msgSend(descriptorCopy, "countIncludesPadding")}];
          [v44 setPaddingLeft:*sizes];
          [v44 setPaddingRight:sizes[1]];
          [v44 setPaddingTop:sizes[2]];
          [v44 setPaddingBottom:sizes[3]];
          [v44 setLayer:objc_opt_class()];
          v45 = [descriptorCopy poolingType] == 3;
          [v44 setSourceOfForwardNeededForGradient:v45];
          [v44 setResultOfForwardNeededForGradient:v45];
          [v57 addObject:v44];
        }

        ++v15;
        deviceList3 = [deviceCopy deviceList];
        v47 = [deviceList3 count];
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

+ (id)layerWithDevice:(id)device descriptor:(id)descriptor paddingSizes:(unint64_t)sizes[4]
{
  descriptorCopy = descriptor;
  deviceCopy = device;
  v10 = [[self alloc] initWithDevice:deviceCopy descriptor:descriptorCopy paddingSizes:sizes];

  return v10;
}

@end