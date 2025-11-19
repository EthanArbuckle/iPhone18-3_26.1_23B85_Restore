@interface CIDisparitySmoothingProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (void)compilePipelines:(id)a3;
+ (void)compilePipelinesIfNeeded:(id)a3;
+ (void)releasePipelines;
@end

@implementation CIDisparitySmoothingProcessor

+ (void)compilePipelines:(id)a3
{
  v7 = 0;
  v4 = [a3 newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
  v5 = [v4 newFunctionWithName:@"CIDisparitySmoothing"];
  shaderDisparitySmoothing = [a3 newComputePipelineStateWithFunction:v5 error:&v7];
  if (v7)
  {
    v6 = [v7 localizedDescription];
    NSLog(&cfstr_FailedToInitia.isa, v6, [v7 localizedFailureReason]);
  }
}

+ (void)releasePipelines
{
  if (shaderDisparitySmoothing)
  {
  }

  shaderDisparitySmoothing = 0;
}

+ (void)compilePipelinesIfNeeded:(id)a3
{
  v5 = +[CIDisparitySmoothingProcessor compilePipelinesIfNeeded:]::targetedDevice;
  if (+[CIDisparitySmoothingProcessor compilePipelinesIfNeeded:]::targetedDevice == a3)
  {
    if ([a1 hasValidPipelines])
    {
      return;
    }

    v5 = +[CIDisparitySmoothingProcessor compilePipelinesIfNeeded:]::targetedDevice;
  }

  if (v5 != a3)
  {
    [a1 releasePipelines];
    +[CIDisparitySmoothingProcessor compilePipelinesIfNeeded:]::targetedDevice = a3;
  }

  if (([a1 hasValidPipelines] & 1) == 0)
  {

    [a1 compilePipelines:a3];
  }
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v9 = [a5 metalCommandBuffer];
  [a1 compilePipelinesIfNeeded:{objc_msgSend(v9, "device")}];
  v10 = [a1 hasValidPipelines];
  if (v10)
  {
    v11 = [a3 objectAtIndexedSubscript:0];
    v12 = [v11 metalTexture];
    v13 = [a5 metalTexture];
    [v11 region];
    v15 = v14;
    [v11 region];
    LODWORD(v11) = v15 >> 1;
    v17 = v16 >> 1;
    v27 = 0;
    v18 = [shaderDisparitySmoothing maxTotalThreadsPerThreadgroup];
    mtlutl_ComputeThreadGroupParameters(v18, [shaderDisparitySmoothing threadExecutionWidth], &v27 + 1, &v27, v11, v17);
    v20 = v27;
    v19 = HIDWORD(v27);
    v21 = v11 / HIDWORD(v27);
    v22 = v17 / v27;
    v23 = [v9 computeCommandEncoder];
    [v23 setComputePipelineState:shaderDisparitySmoothing];
    [v23 setTexture:v12 atIndex:0];
    [v23 setTexture:v13 atIndex:1];
    v26[0] = v21;
    v26[1] = v22;
    v26[2] = 1;
    v25[0] = v19;
    v25[1] = v20;
    v25[2] = 1;
    [v23 dispatchThreadgroups:v26 threadsPerThreadgroup:v25];
    [v23 endEncoding];
  }

  return v10;
}

@end