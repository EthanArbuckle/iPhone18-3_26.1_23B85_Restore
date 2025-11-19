@interface AR2DSkeletonDetectionPostProcessGPU
- (AR2DSkeletonDetectionPostProcessGPU)init;
- (uint64_t)process:(double)a3 counter:(uint64_t)a4 shape:(__IOSurface *)a5;
- (void)dealloc;
@end

@implementation AR2DSkeletonDetectionPostProcessGPU

- (AR2DSkeletonDetectionPostProcessGPU)init
{
  v22.receiver = self;
  v22.super_class = AR2DSkeletonDetectionPostProcessGPU;
  v2 = [(AR2DSkeletonDetectionPostProcessGPU *)&v22 init];
  v3 = MTLCreateSystemDefaultDevice();
  device = v2->_device;
  v2->_device = v3;

  v5 = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = v5;

  v7 = ARKitCoreBundle();
  v8 = [v7 URLForResource:@"default" withExtension:@"metallib"];
  if (!v8)
  {
    [AR2DSkeletonDetectionPostProcessGPU init];
  }

  v9 = v8;
  v10 = [(MTLDevice *)v2->_device newLibraryWithURL:v8 error:0];
  v11 = [v10 newFunctionWithName:@"interpolateBicubic"];
  v12 = [(MTLDevice *)v2->_device newComputePipelineStateWithFunction:v11 error:0];
  pipelineStateInterpolate = v2->_pipelineStateInterpolate;
  v2->_pipelineStateInterpolate = v12;

  v14 = [v10 newFunctionWithName:@"maxFilter"];
  v15 = [(MTLDevice *)v2->_device newComputePipelineStateWithFunction:v14 error:0];
  pipelineStateMaxFilter = v2->_pipelineStateMaxFilter;
  v2->_pipelineStateMaxFilter = v15;

  v17 = [(MTLDevice *)v2->_device newBufferWithLength:2 * width * height * scale * scale * nChannels + 16 options:32];
  intermediate = v2->_intermediate;
  v2->_intermediate = v17;

  v19 = [(MTLDevice *)v2->_device newBufferWithLength:2 * width * height * scale * scale * nChannels + 16 options:0];
  output = v2->_output;
  v2->_output = v19;

  return v2;
}

- (void)dealloc
{
  input = self->_input;
  self->_input = 0;

  intermediate = self->_intermediate;
  self->_intermediate = 0;

  output = self->_output;
  self->_output = 0;

  v6.receiver = self;
  v6.super_class = AR2DSkeletonDetectionPostProcessGPU;
  [(AR2DSkeletonDetectionPostProcessGPU *)&v6 dealloc];
}

- (uint64_t)process:(double)a3 counter:(uint64_t)a4 shape:(__IOSurface *)a5
{
  v11 = [*(a1 + 8) newBufferWithIOSurface:?];
  v12 = *(a1 + 40);
  *(a1 + 40) = v11;

  bzero([*(a1 + 56) contents], objc_msgSend(*(a1 + 56), "length"));
  v13 = [*(a1 + 16) commandBuffer];
  v14 = (a2 * 0.125);
  v15 = (a3 * 0.125);
  v32[0] = (a3 * 0.125);
  v32[1] = a3;
  v32[2] = IOSurfaceGetBytesPerRow(a5) >> 1;
  v32[3] = a2;
  v16 = [v13 computeCommandEncoder];
  [v16 setComputePipelineState:*(a1 + 24)];
  [v16 setBuffer:*(a1 + 40) offset:0 atIndex:0];
  [v16 setBuffer:*(a1 + 48) offset:0 atIndex:1];
  [v16 setBytes:&precomputedInterpolateBicubic length:96 atIndex:2];
  [v16 setBytes:v32 length:16 atIndex:3];
  v17 = [*(a1 + 24) threadExecutionWidth];
  v18 = [*(a1 + 24) maxTotalThreadsPerThreadgroup];
  v29 = scale * v14;
  v30 = scale * v15;
  v31 = nChannels;
  v26 = v17;
  v27 = v18 / v17;
  v28 = 1;
  [v16 dispatchThreads:&v29 threadsPerThreadgroup:&v26];
  [v16 endEncoding];

  v19 = [v13 computeCommandEncoder];
  [v19 setComputePipelineState:*(a1 + 32)];
  [v19 setBuffer:*(a1 + 48) offset:0 atIndex:0];
  [v19 setBuffer:*(a1 + 56) offset:0 atIndex:1];
  v20 = [*(a1 + 8) newBufferWithBytes:a6 length:4 options:0];
  [v19 setBuffer:v20 offset:0 atIndex:2];
  v21 = [*(a1 + 8) newBufferWithBytes:v32 length:16 options:0];
  [v19 setBuffer:v21 offset:0 atIndex:3];
  v22 = [*(a1 + 32) threadExecutionWidth];
  v23 = [*(a1 + 32) maxTotalThreadsPerThreadgroup];
  v29 = scale * v14;
  v30 = scale * v15;
  v31 = nChannels;
  v26 = v22;
  v27 = v23 / v22;
  v28 = 1;
  [v19 dispatchThreads:&v29 threadsPerThreadgroup:&v26];
  [v19 endEncoding];
  [v13 commit];
  [v13 waitUntilCompleted];
  memcpy(a6, [v20 contents], objc_msgSend(v20, "length"));
  v24 = [*(a1 + 56) contents];

  return v24;
}

@end