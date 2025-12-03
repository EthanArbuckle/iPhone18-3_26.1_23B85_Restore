@interface CILensModelKernelMetalProcessor
+ (BOOL)hasValidPipelines;
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (void)compilePipelines:(id)pipelines;
+ (void)compilePipelinesIfNeeded:(id)needed;
+ (void)releasePipelines;
@end

@implementation CILensModelKernelMetalProcessor

+ (BOOL)hasValidPipelines
{
  if (shaderLensModelCalc)
  {
    v2 = shaderLensModelApply == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && shaderLensModelMinMax0 != 0 && shaderLensModelMinMax1 != 0;
}

+ (void)compilePipelines:(id)pipelines
{
  v15 = 0;
  v4 = [pipelines newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
  v5 = [v4 newFunctionWithName:@"slm_calc"];
  shaderLensModelCalc = [pipelines newComputePipelineStateWithFunction:v5 error:&v15];
  if (v15)
  {
    localizedDescription = [v15 localizedDescription];
    NSLog(&cfstr_FailedToInitia_0.isa, @"slm_calc", localizedDescription, [v15 localizedFailureReason]);
  }

  v7 = [v4 newFunctionWithName:@"slm_apply"];
  shaderLensModelApply = [pipelines newComputePipelineStateWithFunction:v7 error:&v15];
  if (v15)
  {
    localizedDescription2 = [v15 localizedDescription];
    NSLog(&cfstr_FailedToInitia_0.isa, @"slm_apply", localizedDescription2, [v15 localizedFailureReason]);
  }

  v9 = [v4 newFunctionWithName:@"slm_shiftmap_calcminmax0"];
  shaderLensModelMinMax0 = [pipelines newComputePipelineStateWithFunction:v9 error:&v15];
  if (v15)
  {
    localizedDescription3 = [v15 localizedDescription];
    NSLog(&cfstr_FailedToInitia_0.isa, @"slm_shiftmap_calcminmax0", localizedDescription3, [v15 localizedFailureReason]);
  }

  v11 = [v4 newFunctionWithName:@"slm_shiftmap_calcminmax1"];
  shaderLensModelMinMax1 = [pipelines newComputePipelineStateWithFunction:v11 error:&v15];
  if (v15)
  {
    localizedDescription4 = [v15 localizedDescription];
    NSLog(&cfstr_FailedToInitia_0.isa, @"slm_shiftmap_calcminmax1", localizedDescription4, [v15 localizedFailureReason]);
  }

  v13 = [v4 newFunctionWithName:@"slm_shiftmap_calcminmax2"];
  shaderLensModelMinMax2 = [pipelines newComputePipelineStateWithFunction:v13 error:&v15];
  if (v15)
  {
    localizedDescription5 = [v15 localizedDescription];
    NSLog(&cfstr_FailedToInitia_0.isa, @"slm_shiftmap_calcminmax2", localizedDescription5, [v15 localizedFailureReason]);
  }
}

+ (void)releasePipelines
{
  if (shaderLensModelCalc)
  {
  }

  if (shaderLensModelApply)
  {
  }

  if (shaderLensModelMinMax0)
  {
  }

  if (shaderLensModelMinMax1)
  {
  }

  if (shaderLensModelMinMax2)
  {
  }

  shaderLensModelCalc = 0;
  shaderLensModelApply = 0;
  shaderLensModelMinMax0 = 0;
  shaderLensModelMinMax1 = 0;
  shaderLensModelMinMax2 = 0;
}

+ (void)compilePipelinesIfNeeded:(id)needed
{
  v5 = +[CILensModelKernelMetalProcessor compilePipelinesIfNeeded:]::targetedDevice;
  if (+[CILensModelKernelMetalProcessor compilePipelinesIfNeeded:]::targetedDevice == needed)
  {
    if ([self hasValidPipelines])
    {
      return;
    }

    v5 = +[CILensModelKernelMetalProcessor compilePipelinesIfNeeded:]::targetedDevice;
  }

  if (v5 != needed)
  {
    [self releasePipelines];
    +[CILensModelKernelMetalProcessor compilePipelinesIfNeeded:]::targetedDevice = needed;
  }

  if (([self hasValidPipelines] & 1) == 0)
  {

    [self compilePipelines:needed];
  }
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  metalCommandBuffer = [output metalCommandBuffer];
  device = [metalCommandBuffer device];
  v12 = [arguments objectForKeyedSubscript:@"inputTuningParameters"];
  [self compilePipelinesIfNeeded:device];
  hasValidPipelines = [self hasValidPipelines];
  if (!hasValidPipelines)
  {
    return hasValidPipelines;
  }

  v65 = hasValidPipelines;
  v64 = [device newBufferWithLength:8 options:32];
  v63 = [device newBufferWithLength:16 options:32];
  v62 = [device newBufferWithLength:16 options:0];
  memset(v72, 0, 44);
  SDOFSimpleLensModelValue(@"fallbackFocusROI_left", v12);
  v15 = v14;
  if (arguments)
  {
    v16 = [arguments objectForKey:@"roi_left"];
    if (v16)
    {
      [v16 floatValue];
      v15 = v17;
    }

    LODWORD(v72[0]) = v15;
    SDOFSimpleLensModelValue(@"fallbackFocusROI_top", v12);
    v19 = v18;
    v20 = [arguments objectForKey:@"roi_top"];
    if (v20)
    {
      [v20 floatValue];
      v19 = v21;
    }

    DWORD1(v72[0]) = v19;
    SDOFSimpleLensModelValue(@"fallbackFocusROI_width", v12);
    v23 = v22;
    v24 = [arguments objectForKey:@"roi_width"];
    if (v24)
    {
      [v24 floatValue];
      v23 = v25;
    }

    DWORD2(v72[0]) = v23;
    SDOFSimpleLensModelValue(@"fallbackFocusROI_height", v12);
    v27 = v26;
    v28 = [arguments objectForKey:@"roi_height"];
    if (!v28)
    {
      goto LABEL_13;
    }

    [v28 floatValue];
  }

  else
  {
    LODWORD(v72[0]) = v14;
    SDOFSimpleLensModelValue(@"fallbackFocusROI_top", v12);
    DWORD1(v72[0]) = v30;
    SDOFSimpleLensModelValue(@"fallbackFocusROI_width", v12);
    DWORD2(v72[0]) = v31;
    SDOFSimpleLensModelValue(@"fallbackFocusROI_height", v12);
  }

  v27 = v29;
LABEL_13:
  HIDWORD(v72[0]) = v27;
  SDOFSimpleLensModelValue(@"zeroShiftPercentile", v12);
  LODWORD(v72[1]) = v32;
  SDOFSimpleLensModelValue(@"simulatedFocalLength", v12);
  DWORD1(v72[1]) = v33;
  SDOFSimpleLensModelValue(@"aperture", v12);
  v35 = v34;
  if (arguments)
  {
    v36 = [arguments objectForKey:@"aperture"];
    if (v36)
    {
      [v36 floatValue];
      v35 = v37;
    }
  }

  *(&v72[1] + 1) = v35 | 0x45CE400000000000;
  SDOFSimpleLensModelValue(@"maxFGBlur", v12);
  LODWORD(v72[2]) = v38;
  SDOFRenderingValue(&cfstr_Maxblur.isa, v12);
  *(&v72[2] + 4) = v39 | 0x3F563E8E00000000;
  if (arguments)
  {
    v40 = [arguments objectForKey:@"width"];
    if (v40)
    {
      [v40 floatValue];
      v42 = v41;
    }

    else
    {
      v42 = 2016;
    }

    v44 = [arguments objectForKey:@"height"];
    if (v44)
    {
      [v44 floatValue];
      v43 = v45;
    }

    else
    {
      v43 = 1512;
    }
  }

  else
  {
    v43 = 1512;
    v42 = 2016;
  }

  v71 = 0;
  v46 = vcvtd_n_f64_u32(v42, 2uLL);
  v47 = vcvtd_n_f64_u32(v43, 2uLL);
  maxTotalThreadsPerThreadgroup = [shaderLensModelMinMax1 maxTotalThreadsPerThreadgroup];
  mtlutl_ComputeThreadGroupParameters(maxTotalThreadsPerThreadgroup, [shaderLensModelMinMax1 threadExecutionWidth], &v71 + 1, &v71, v46, v47);
  v49 = v71;
  v50 = HIDWORD(v71);
  v51 = v46 / HIDWORD(v71);
  v52 = v47 / v71;
  maxTotalThreadsPerThreadgroup2 = [shaderLensModelApply maxTotalThreadsPerThreadgroup];
  mtlutl_ComputeThreadGroupParameters(maxTotalThreadsPerThreadgroup2, [shaderLensModelApply threadExecutionWidth], &v71 + 1, &v71, v42, v43);
  v54 = v71;
  v61 = HIDWORD(v71);
  v60 = v42 / HIDWORD(v71);
  v59 = v43 / v71;
  v55 = [objc_msgSend(inputs objectAtIndexedSubscript:{0), "metalTexture"}];
  metalTexture = [output metalTexture];
  computeCommandEncoder = [metalCommandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:shaderLensModelMinMax0];
  [computeCommandEncoder setBuffer:v64 offset:0 atIndex:0];
  v66 = vdupq_n_s64(1uLL);
  v67 = v66;
  v69 = v66;
  v70 = 1;
  v68 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v69 threadsPerThreadgroup:&v67];
  [computeCommandEncoder setComputePipelineState:shaderLensModelMinMax1];
  [computeCommandEncoder setTexture:v55 atIndex:0];
  [computeCommandEncoder setBuffer:v64 offset:0 atIndex:0];
  v69.i64[0] = v51;
  v69.i64[1] = v52;
  v70 = 1;
  *&v67 = v50;
  *(&v67 + 1) = v49;
  v68 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v69 threadsPerThreadgroup:&v67];
  [computeCommandEncoder setComputePipelineState:shaderLensModelMinMax2];
  [computeCommandEncoder setBuffer:v64 offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:v63 offset:0 atIndex:1];
  v69 = v66;
  v70 = 1;
  v67 = v66;
  v68 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v69 threadsPerThreadgroup:&v67];
  [computeCommandEncoder setComputePipelineState:shaderLensModelCalc];
  [computeCommandEncoder setBytes:v72 length:44 atIndex:0];
  [computeCommandEncoder setBuffer:v63 offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:v62 offset:0 atIndex:2];
  [computeCommandEncoder setTexture:v55 atIndex:0];
  [computeCommandEncoder setThreadgroupMemoryLength:2048 atIndex:0];
  v69 = v66;
  v70 = 1;
  v67 = xmmword_19CF27AE0;
  v68 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v69 threadsPerThreadgroup:&v67];
  [computeCommandEncoder setComputePipelineState:shaderLensModelApply];
  [computeCommandEncoder setBuffer:v62 offset:0 atIndex:0];
  [computeCommandEncoder setTexture:v55 atIndex:0];
  [computeCommandEncoder setTexture:metalTexture atIndex:1];
  v69.i64[0] = v60;
  v69.i64[1] = v59;
  v70 = 1;
  *&v67 = v61;
  *(&v67 + 1) = v54;
  v68 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v69 threadsPerThreadgroup:&v67];
  [computeCommandEncoder endEncoding];

  LOBYTE(hasValidPipelines) = v65;
  return hasValidPipelines;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v5 = [arguments objectForKeyedSubscript:{@"focusRect", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end