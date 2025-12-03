@interface AR2DSkeletonDetectionPostProcessGPU
- (AR2DSkeletonDetectionPostProcessGPU)init;
- (uint64_t)process:(double)process counter:(uint64_t)counter shape:(__IOSurface *)shape;
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

  newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = newCommandQueue;

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

- (uint64_t)process:(double)process counter:(uint64_t)counter shape:(__IOSurface *)shape
{
  v11 = [*(self + 8) newBufferWithIOSurface:?];
  v12 = *(self + 40);
  *(self + 40) = v11;

  bzero([*(self + 56) contents], objc_msgSend(*(self + 56), "length"));
  commandBuffer = [*(self + 16) commandBuffer];
  v14 = (a2 * 0.125);
  v15 = (process * 0.125);
  v32[0] = (process * 0.125);
  v32[1] = process;
  v32[2] = IOSurfaceGetBytesPerRow(shape) >> 1;
  v32[3] = a2;
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:*(self + 24)];
  [computeCommandEncoder setBuffer:*(self + 40) offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:*(self + 48) offset:0 atIndex:1];
  [computeCommandEncoder setBytes:&precomputedInterpolateBicubic length:96 atIndex:2];
  [computeCommandEncoder setBytes:v32 length:16 atIndex:3];
  threadExecutionWidth = [*(self + 24) threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [*(self + 24) maxTotalThreadsPerThreadgroup];
  v29 = scale * v14;
  v30 = scale * v15;
  v31 = nChannels;
  v26 = threadExecutionWidth;
  v27 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v28 = 1;
  [computeCommandEncoder dispatchThreads:&v29 threadsPerThreadgroup:&v26];
  [computeCommandEncoder endEncoding];

  computeCommandEncoder2 = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder2 setComputePipelineState:*(self + 32)];
  [computeCommandEncoder2 setBuffer:*(self + 48) offset:0 atIndex:0];
  [computeCommandEncoder2 setBuffer:*(self + 56) offset:0 atIndex:1];
  v20 = [*(self + 8) newBufferWithBytes:a6 length:4 options:0];
  [computeCommandEncoder2 setBuffer:v20 offset:0 atIndex:2];
  v21 = [*(self + 8) newBufferWithBytes:v32 length:16 options:0];
  [computeCommandEncoder2 setBuffer:v21 offset:0 atIndex:3];
  threadExecutionWidth2 = [*(self + 32) threadExecutionWidth];
  maxTotalThreadsPerThreadgroup2 = [*(self + 32) maxTotalThreadsPerThreadgroup];
  v29 = scale * v14;
  v30 = scale * v15;
  v31 = nChannels;
  v26 = threadExecutionWidth2;
  v27 = maxTotalThreadsPerThreadgroup2 / threadExecutionWidth2;
  v28 = 1;
  [computeCommandEncoder2 dispatchThreads:&v29 threadsPerThreadgroup:&v26];
  [computeCommandEncoder2 endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  memcpy(a6, [v20 contents], objc_msgSend(v20, "length"));
  contents = [*(self + 56) contents];

  return contents;
}

@end