@interface ARGPUSphericalBlur
- (ARGPUSphericalBlur)init;
- (id)blurCubemapTexture:(float32x4_t)texture roughness:(float32x4_t)roughness rotation:(uint64_t)rotation;
@end

@implementation ARGPUSphericalBlur

- (ARGPUSphericalBlur)init
{
  v35 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = ARGPUSphericalBlur;
  v2 = [(ARGPUSphericalBlur *)&v28 init];
  v3 = +[ARSharedGPUDevice sharedInstance];
  device = [v3 device];
  device = v2->_device;
  v2->_device = device;

  newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = newCommandQueue;

  [(MTLCommandQueue *)v2->_commandQueue setLabel:@"com.apple.arkit.gpusphericalblur.queue"];
  v2->_gpuFamilyAtleast4 = [(MTLDevice *)v2->_device supportsFamily:1004];
  v8 = ARKitCoreBundle();
  v9 = [v8 URLForResource:@"default" withExtension:@"metallib"];
  v10 = [(MTLDevice *)v2->_device newLibraryWithURL:v9 error:0];
  [v10 setLabel:@"com.apple.arkit.gpusphericalblur.library"];
  if (v2->_gpuFamilyAtleast4)
  {
    v11 = @"blur_cubemap";
  }

  else
  {
    v11 = @"blur_cubemap_views";
  }

  v12 = [v10 newFunctionWithName:v11];
  v13 = v2->_device;
  v27 = 0;
  v14 = [(MTLDevice *)v13 newComputePipelineStateWithFunction:v12 error:&v27];
  v15 = v27;
  cubemapBlurPipelineState = v2->_cubemapBlurPipelineState;
  v2->_cubemapBlurPipelineState = v14;

  if (!v2->_cubemapBlurPipelineState)
  {
    if (ARShouldUseLogTypeError_onceToken_42 != -1)
    {
      [ARGPUSphericalBlur init];
    }

    v17 = ARShouldUseLogTypeError_internalOSVersion_42;
    v18 = _ARLogGeneral_34();
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
        v22 = "%{public}@ <%p>: Failed to create cubemap blur pipeline state, error %@";
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
      v22 = "Error: %{public}@ <%p>: Failed to create cubemap blur pipeline state, error %@";
      v23 = v19;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }
  }

  return v2;
}

- (id)blurCubemapTexture:(float32x4_t)texture roughness:(float32x4_t)roughness rotation:(uint64_t)rotation
{
  textureCopy = texture;
  roughnessCopy = roughness;
  v30 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a7;
  v11 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:objc_msgSend(v9 size:"pixelFormat") mipmapped:objc_msgSend(v9, "width"), 1];
  [v11 setUsage:23];
  v12 = [*(self + 8) newTextureWithDescriptor:v11];
  [v12 setLabel:@"com.apple.arkit.gpusphericalblur.target"];
  commandBuffer = [*(self + 16) commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"com.apple.arkit.gpusphericalblur.cubemapblur"];
  [computeCommandEncoder setComputePipelineState:*(self + 24)];
  [computeCommandEncoder setTexture:v9 atIndex:0];
  [computeCommandEncoder setTexture:v10 atIndex:1];
  v15 = 0;
  v34 = xmmword_1C25C8910;
  v35 = xmmword_1C25C8BC0;
  v36 = xmmword_1C25C9070;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  do
  {
    *(&v37 + v15) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v34 + v15))), textureCopy, *(&v34 + v15), 1), roughnessCopy, *(&v34 + v15), 2);
    v15 += 16;
  }

  while (v15 != 48);
  v16 = 0;
  v34 = v37;
  v35 = v38;
  v36 = v39;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  do
  {
    *(&v37 + v16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C8910, COERCE_FLOAT(*(&v34 + v16))), xmmword_1C25C8BC0, *(&v34 + v16), 1), xmmword_1C25C9070, *(&v34 + v16), 2);
    v16 += 16;
  }

  while (v16 != 48);
  v33[1] = DWORD2(v37);
  v33[3] = DWORD2(v38);
  v33[0] = v37;
  v33[2] = v38;
  v33[5] = DWORD2(v39);
  v33[4] = v39;
  [computeCommandEncoder setBytes:v33 length:48 atIndex:0];
  if (*(self + 32) == 1)
  {
    [computeCommandEncoder setTexture:v12 atIndex:2];
  }

  else
  {
    v17 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    do
    {
      v18 = [v12 newTextureViewWithPixelFormat:objc_msgSend(v9 textureType:"pixelFormat" levels:*&v30 slices:*&textureCopy, *&roughnessCopy), 2, 0, 1, v17, 1];
      v19 = *(&v37 + v17);
      *(&v37 + v17) = v18;

      ++v17;
    }

    while (v17 != 6);
    [computeCommandEncoder setTextures:&v37 withRange:{2, 6}];
    for (i = 40; i != -8; i -= 8)
    {
    }
  }

  threadExecutionWidth = [*(self + 24) threadExecutionWidth];
  width = [v9 width];
  if (threadExecutionWidth >= width)
  {
    threadExecutionWidth = width;
  }

  maxTotalThreadsPerThreadgroup = [*(self + 24) maxTotalThreadsPerThreadgroup];
  v24 = threadExecutionWidth;
  do
  {
    v25 = v24;
    v26 = v24 * threadExecutionWidth;
    v24 >>= 1;
  }

  while (v26 > maxTotalThreadsPerThreadgroup);
  v27 = (threadExecutionWidth + [v9 width] - 1) / threadExecutionWidth;
  height = [v9 height];
  *&v37 = v27;
  *(&v37 + 1) = (v25 + height - 1) / v25;
  *&v38 = 6;
  *&v34 = threadExecutionWidth;
  *(&v34 + 1) = v25;
  *&v35 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v37 threadsPerThreadgroup:&v34];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  return v12;
}

@end