@interface ABPK2DDetectionPostprocessGPU
- (ABPK2DDetectionPostprocessGPU)initWithNumberOfChannels:(unint64_t)channels;
- (uint64_t)process:(double)process counter:(uint64_t)counter shape:(__IOSurface *)shape;
- (void)_copyToInputAsFloat16:(float *)float16 shape:(CGSize)shape;
- (void)dealloc;
@end

@implementation ABPK2DDetectionPostprocessGPU

- (ABPK2DDetectionPostprocessGPU)initWithNumberOfChannels:(unint64_t)channels
{
  v27.receiver = self;
  v27.super_class = ABPK2DDetectionPostprocessGPU;
  v4 = [(ABPK2DDetectionPostprocessGPU *)&v27 init];
  v4->_nChannels = channels;
  v5 = MTLCreateSystemDefaultDevice();
  device = v4->_device;
  v4->_device = v5;

  newCommandQueue = [(MTLDevice *)v4->_device newCommandQueue];
  commandQueue = v4->_commandQueue;
  v4->_commandQueue = newCommandQueue;

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 URLForResource:@"default" withExtension:@"metallib"];
  v11 = v4->_device;
  v26 = 0;
  v12 = [(MTLDevice *)v11 newLibraryWithURL:v10 error:&v26];
  v13 = v26;
  library = v4->_library;
  v4->_library = v12;

  v15 = [(MTLLibrary *)v4->_library newFunctionWithName:@"interpolateBicubic"];
  v16 = [(MTLDevice *)v4->_device newComputePipelineStateWithFunction:v15 error:0];
  pipelineStateInterpolate = v4->_pipelineStateInterpolate;
  v4->_pipelineStateInterpolate = v16;

  v18 = [(MTLLibrary *)v4->_library newFunctionWithName:@"maxFilter"];
  v19 = [(MTLDevice *)v4->_device newComputePipelineStateWithFunction:v18 error:0];
  pipelineStateMaxFilter = v4->_pipelineStateMaxFilter;
  v4->_pipelineStateMaxFilter = v19;

  v21 = [(MTLDevice *)v4->_device newBufferWithLength:2 * width * height * scale * scale * v4->_nChannels + 16 options:32];
  intermediate = v4->_intermediate;
  v4->_intermediate = v21;

  v23 = [(MTLDevice *)v4->_device newBufferWithLength:2 * width * height * scale * scale * v4->_nChannels + 16 options:0];
  output = v4->_output;
  v4->_output = v23;

  return v4;
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
  v6.super_class = ABPK2DDetectionPostprocessGPU;
  [(ABPK2DDetectionPostprocessGPU *)&v6 dealloc];
}

- (void)_copyToInputAsFloat16:(float *)float16 shape:(CGSize)shape
{
  v5 = (shape.height * (shape.width * self->_nChannels * 0.125) * 0.125);
  for (i = [(MTLBuffer *)self->_input contents]; v5; --v5)
  {
    v7 = *float16++;
    _S0 = v7;
    __asm { FCVT            H0, S0 }

    *i++ = _S0;
  }
}

- (uint64_t)process:(double)process counter:(uint64_t)counter shape:(__IOSurface *)shape
{
  v11 = [*(self + 16) newBufferWithIOSurface:?];
  v12 = *(self + 48);
  *(self + 48) = v11;

  bzero([*(self + 64) contents], objc_msgSend(*(self + 64), "length"));
  commandBuffer = [*(self + 24) commandBuffer];
  [commandBuffer setLabel:@"com.apple.abpk.2ddetectionpostprocessGPU.commandBuffer"];
  v14 = (a2 * 0.125);
  v15 = (process * 0.125);
  v34[0] = (process * 0.125);
  v34[1] = process;
  v34[2] = IOSurfaceGetBytesPerRow(shape) >> 1;
  v34[3] = a2;
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"com.apple.abpk.2ddetectionpostprocessGPU.interpolation"];
  [computeCommandEncoder setComputePipelineState:*(self + 32)];
  [computeCommandEncoder setBuffer:*(self + 48) offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:*(self + 56) offset:0 atIndex:1];
  [computeCommandEncoder setBytes:&precomputedInterpolateBicubic length:96 atIndex:2];
  [computeCommandEncoder setBytes:v34 length:16 atIndex:3];
  threadExecutionWidth = [*(self + 32) threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [*(self + 32) maxTotalThreadsPerThreadgroup];
  v19 = *(self + 8);
  v31 = scale * v14;
  v32 = scale * v15;
  v33 = v19;
  v28 = threadExecutionWidth;
  v29 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v30 = 1;
  [computeCommandEncoder dispatchThreads:&v31 threadsPerThreadgroup:&v28];
  [computeCommandEncoder endEncoding];

  computeCommandEncoder2 = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder2 setLabel:@"com.apple.abpk.2ddetectionpostprocessGPU.maxfilter"];
  [computeCommandEncoder2 setComputePipelineState:*(self + 40)];
  [computeCommandEncoder2 setBuffer:*(self + 56) offset:0 atIndex:0];
  [computeCommandEncoder2 setBuffer:*(self + 64) offset:0 atIndex:1];
  v21 = [*(self + 16) newBufferWithBytes:a6 length:4 options:0];
  [computeCommandEncoder2 setBuffer:v21 offset:0 atIndex:2];
  v22 = [*(self + 16) newBufferWithBytes:v34 length:16 options:0];
  [computeCommandEncoder2 setBuffer:v22 offset:0 atIndex:3];
  threadExecutionWidth2 = [*(self + 40) threadExecutionWidth];
  maxTotalThreadsPerThreadgroup2 = [*(self + 40) maxTotalThreadsPerThreadgroup];
  v25 = *(self + 8);
  v31 = scale * v14;
  v32 = scale * v15;
  v33 = v25;
  v28 = threadExecutionWidth2;
  v29 = maxTotalThreadsPerThreadgroup2 / threadExecutionWidth2;
  v30 = 1;
  [computeCommandEncoder2 dispatchThreads:&v31 threadsPerThreadgroup:&v28];
  [computeCommandEncoder2 endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  memcpy(a6, [v21 contents], objc_msgSend(v21, "length"));
  contents = [*(self + 64) contents];

  return contents;
}

@end