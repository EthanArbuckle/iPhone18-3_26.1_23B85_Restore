@interface CIDisparitySmoothingProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (void)compilePipelines:(id)pipelines;
+ (void)compilePipelinesIfNeeded:(id)needed;
+ (void)releasePipelines;
@end

@implementation CIDisparitySmoothingProcessor

+ (void)compilePipelines:(id)pipelines
{
  v7 = 0;
  v4 = [pipelines newDefaultLibraryWithBundle:objc_msgSend(MEMORY[0x1E696AAE8] error:{"bundleForClass:", objc_opt_class()), 0}];
  v5 = [v4 newFunctionWithName:@"CIDisparitySmoothing"];
  shaderDisparitySmoothing = [pipelines newComputePipelineStateWithFunction:v5 error:&v7];
  if (v7)
  {
    localizedDescription = [v7 localizedDescription];
    NSLog(&cfstr_FailedToInitia.isa, localizedDescription, [v7 localizedFailureReason]);
  }
}

+ (void)releasePipelines
{
  if (shaderDisparitySmoothing)
  {
  }

  shaderDisparitySmoothing = 0;
}

+ (void)compilePipelinesIfNeeded:(id)needed
{
  v5 = +[CIDisparitySmoothingProcessor compilePipelinesIfNeeded:]::targetedDevice;
  if (+[CIDisparitySmoothingProcessor compilePipelinesIfNeeded:]::targetedDevice == needed)
  {
    if ([self hasValidPipelines])
    {
      return;
    }

    v5 = +[CIDisparitySmoothingProcessor compilePipelinesIfNeeded:]::targetedDevice;
  }

  if (v5 != needed)
  {
    [self releasePipelines];
    +[CIDisparitySmoothingProcessor compilePipelinesIfNeeded:]::targetedDevice = needed;
  }

  if (([self hasValidPipelines] & 1) == 0)
  {

    [self compilePipelines:needed];
  }
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  metalCommandBuffer = [output metalCommandBuffer];
  [self compilePipelinesIfNeeded:{objc_msgSend(metalCommandBuffer, "device")}];
  hasValidPipelines = [self hasValidPipelines];
  if (hasValidPipelines)
  {
    v11 = [inputs objectAtIndexedSubscript:0];
    metalTexture = [v11 metalTexture];
    metalTexture2 = [output metalTexture];
    [v11 region];
    v15 = v14;
    [v11 region];
    LODWORD(v11) = v15 >> 1;
    v17 = v16 >> 1;
    v27 = 0;
    maxTotalThreadsPerThreadgroup = [shaderDisparitySmoothing maxTotalThreadsPerThreadgroup];
    mtlutl_ComputeThreadGroupParameters(maxTotalThreadsPerThreadgroup, [shaderDisparitySmoothing threadExecutionWidth], &v27 + 1, &v27, v11, v17);
    v20 = v27;
    v19 = HIDWORD(v27);
    v21 = v11 / HIDWORD(v27);
    v22 = v17 / v27;
    computeCommandEncoder = [metalCommandBuffer computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:shaderDisparitySmoothing];
    [computeCommandEncoder setTexture:metalTexture atIndex:0];
    [computeCommandEncoder setTexture:metalTexture2 atIndex:1];
    v26[0] = v21;
    v26[1] = v22;
    v26[2] = 1;
    v25[0] = v19;
    v25[1] = v20;
    v25[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:v26 threadsPerThreadgroup:v25];
    [computeCommandEncoder endEncoding];
  }

  return hasValidPipelines;
}

@end