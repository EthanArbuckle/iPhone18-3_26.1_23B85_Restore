@interface ARGPUCubemapHistogram
- (ARGPUCubemapHistogram)init;
- (ARLabHistogram)colorHistogramForCubemap:(SEL)cubemap;
@end

@implementation ARGPUCubemapHistogram

- (ARGPUCubemapHistogram)init
{
  v35 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = ARGPUCubemapHistogram;
  v2 = [(ARGPUCubemapHistogram *)&v28 init];
  v3 = +[ARSharedGPUDevice sharedInstance];
  device = [v3 device];
  device = v2->_device;
  v2->_device = device;

  newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = newCommandQueue;

  [(MTLCommandQueue *)v2->_commandQueue setLabel:@"com.apple.arkit.cubemaphistogram.queue"];
  v2->_gpuFamilyAtleast4 = [(MTLDevice *)v2->_device supportsFamily:1004];
  v8 = ARKitCoreBundle();
  v9 = [v8 URLForResource:@"default" withExtension:@"metallib"];
  v10 = [(MTLDevice *)v2->_device newLibraryWithURL:v9 error:0];
  [v10 setLabel:@"com.apple.arkit.cubemaphistogram.library"];
  if (v2->_gpuFamilyAtleast4)
  {
    v11 = @"cubemap_color_histogram_lab";
  }

  else
  {
    v11 = @"cubemap_color_histogram_lab_views";
  }

  v12 = [v10 newFunctionWithName:v11];
  v13 = v2->_device;
  v27 = 0;
  v14 = [(MTLDevice *)v13 newComputePipelineStateWithFunction:v12 error:&v27];
  v15 = v27;
  cubemapHistogramPipelineState = v2->_cubemapHistogramPipelineState;
  v2->_cubemapHistogramPipelineState = v14;

  if (!v2->_cubemapHistogramPipelineState)
  {
    if (ARShouldUseLogTypeError_onceToken_40 != -1)
    {
      [ARGPUCubemapHistogram init];
    }

    v17 = ARShouldUseLogTypeError_internalOSVersion_40;
    v18 = _ARLogGeneral_32();
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138543874;
        v30 = v21;
        v31 = 2048;
        v32 = v2;
        v33 = 2112;
        v34 = v15;
        v22 = "%{public}@ <%p>: Failed to create cube map histogram pipeline state, error %@";
        v23 = v19;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v23, v24, v22, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v21 = NSStringFromClass(v25);
      *buf = 138543874;
      v30 = v21;
      v31 = 2048;
      v32 = v2;
      v33 = 2112;
      v34 = v15;
      v22 = "Error: %{public}@ <%p>: Failed to create cube map histogram pipeline state, error %@";
      v23 = v19;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }
  }

  return v2;
}

- (ARLabHistogram)colorHistogramForCubemap:(SEL)cubemap
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a4;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v8 = self->_cubemapHistogramPipelineState;
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"com.apple.arkit.gpucubemaphistogram.cubemapcolorhistogram"];
  [computeCommandEncoder setComputePipelineState:v8];
  bzero(v35, 0x400uLL);
  v10 = [(MTLDevice *)self->_device newBufferWithBytes:v35 length:1024 options:0];
  [v10 setLabel:@"com.apple.arkit.cubemaphistogram.histogrambuffer"];
  [computeCommandEncoder setBuffer:v10 offset:0 atIndex:0];
  v31 = 0;
  v11 = [(MTLDevice *)self->_device newBufferWithBytes:&v31 length:4 options:0];
  [v11 setLabel:@"com.apple.arkit.cubemaphistogram.countbuffer"];
  [computeCommandEncoder setBuffer:v11 offset:0 atIndex:1];
  if (self->_gpuFamilyAtleast4)
  {
    [computeCommandEncoder setTexture:v6 atIndex:0];
  }

  else
  {
    v12 = 0;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    do
    {
      v13 = [v6 newTextureViewWithPixelFormat:objc_msgSend(v6 textureType:"pixelFormat") levels:2 slices:0, 1, v12, 1];
      v14 = *(&v32 + v12);
      *(&v32 + v12) = v13;

      ++v12;
    }

    while (v12 != 6);
    [computeCommandEncoder setTextures:&v32 withRange:{1, 6}];
    for (i = 40; i != -8; i -= 8)
    {
    }
  }

  threadExecutionWidth = [(MTLComputePipelineState *)v8 threadExecutionWidth];
  width = [v6 width];
  if (threadExecutionWidth >= width)
  {
    threadExecutionWidth = width;
  }

  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v8 maxTotalThreadsPerThreadgroup];
  v19 = threadExecutionWidth;
  do
  {
    v20 = v19;
    v21 = v19 * threadExecutionWidth;
    v19 >>= 1;
  }

  while (v21 > maxTotalThreadsPerThreadgroup);
  v22 = (threadExecutionWidth + [v6 width] - 1) / threadExecutionWidth;
  height = [v6 height];
  *&v32 = v22;
  *(&v32 + 1) = (v20 + height - 1) / v20;
  *&v33 = 6;
  v30[0] = threadExecutionWidth;
  v30[1] = v20;
  v30[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:&v32 threadsPerThreadgroup:v30];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  [v11 contents];
  [v11 length];
  __memcpy_chk();
  [v10 contents];
  [v10 length];
  __memcpy_chk();
  *&retstr->var0 = 0u;
  *&retstr->var1[0][0][3] = 0u;
  *&retstr->var1[0][0][7] = 0u;
  *&retstr->var1[0][1][3] = 0u;
  *&retstr->var1[0][1][7] = 0u;
  *&retstr->var1[0][2][3] = 0u;
  *&retstr->var1[0][2][7] = 0u;
  *&retstr->var1[0][3][3] = 0u;
  *&retstr->var1[0][3][7] = 0u;
  *&retstr->var1[0][4][3] = 0u;
  *&retstr->var1[0][4][7] = 0u;
  *&retstr->var1[0][5][3] = 0u;
  *&retstr->var1[0][5][7] = 0u;
  *&retstr->var1[0][6][3] = 0u;
  *&retstr->var1[0][6][7] = 0u;
  *&retstr->var1[0][7][3] = 0u;
  *&retstr->var1[0][7][7] = 0u;
  *&retstr->var1[1][0][3] = 0u;
  *&retstr->var1[1][0][7] = 0u;
  *&retstr->var1[1][1][3] = 0u;
  *&retstr->var1[1][1][7] = 0u;
  *&retstr->var1[1][2][3] = 0u;
  *&retstr->var1[1][2][7] = 0u;
  *&retstr->var1[1][3][3] = 0u;
  *&retstr->var1[1][3][7] = 0u;
  *&retstr->var1[1][4][3] = 0u;
  *&retstr->var1[1][4][7] = 0u;
  *&retstr->var1[1][5][3] = 0u;
  *&retstr->var1[1][5][7] = 0u;
  *&retstr->var1[1][6][3] = 0u;
  *&retstr->var1[1][6][7] = 0u;
  *&retstr->var1[1][7][3] = 0u;
  ARLabHistogramCreate(retstr);
  if (v31)
  {
    v25 = 0;
    *v24.i32 = v31;
    v26 = vdupq_lane_s32(v24, 0);
    do
    {
      *&retstr->var1[0][0][v25] = vdivq_f32(vcvtq_f32_u32(*&v35[v25 * 4]), v26);
      v25 += 4;
    }

    while (v25 != 256);
  }

  width2 = [v6 width];
  height2 = [v6 height];
  retstr->var0 = v31 / ((height2 * width2) * 6.0);

  return result;
}

@end