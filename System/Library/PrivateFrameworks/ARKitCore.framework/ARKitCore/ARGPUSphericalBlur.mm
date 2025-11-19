@interface ARGPUSphericalBlur
- (ARGPUSphericalBlur)init;
- (id)blurCubemapTexture:(float32x4_t)a3 roughness:(float32x4_t)a4 rotation:(uint64_t)a5;
@end

@implementation ARGPUSphericalBlur

- (ARGPUSphericalBlur)init
{
  v35 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = ARGPUSphericalBlur;
  v2 = [(ARGPUSphericalBlur *)&v28 init];
  v3 = +[ARSharedGPUDevice sharedInstance];
  v4 = [v3 device];
  device = v2->_device;
  v2->_device = v4;

  v6 = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = v6;

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

- (id)blurCubemapTexture:(float32x4_t)a3 roughness:(float32x4_t)a4 rotation:(uint64_t)a5
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = a7;
  v11 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:objc_msgSend(v9 size:"pixelFormat") mipmapped:objc_msgSend(v9, "width"), 1];
  [v11 setUsage:23];
  v12 = [*(a1 + 8) newTextureWithDescriptor:v11];
  [v12 setLabel:@"com.apple.arkit.gpusphericalblur.target"];
  v13 = [*(a1 + 16) commandBuffer];
  v14 = [v13 computeCommandEncoder];
  [v14 setLabel:@"com.apple.arkit.gpusphericalblur.cubemapblur"];
  [v14 setComputePipelineState:*(a1 + 24)];
  [v14 setTexture:v9 atIndex:0];
  [v14 setTexture:v10 atIndex:1];
  v15 = 0;
  v34 = xmmword_1C25C8910;
  v35 = xmmword_1C25C8BC0;
  v36 = xmmword_1C25C9070;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  do
  {
    *(&v37 + v15) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v34 + v15))), v31, *(&v34 + v15), 1), v32, *(&v34 + v15), 2);
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
  [v14 setBytes:v33 length:48 atIndex:0];
  if (*(a1 + 32) == 1)
  {
    [v14 setTexture:v12 atIndex:2];
  }

  else
  {
    v17 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    do
    {
      v18 = [v12 newTextureViewWithPixelFormat:objc_msgSend(v9 textureType:"pixelFormat" levels:*&v30 slices:*&v31, *&v32), 2, 0, 1, v17, 1];
      v19 = *(&v37 + v17);
      *(&v37 + v17) = v18;

      ++v17;
    }

    while (v17 != 6);
    [v14 setTextures:&v37 withRange:{2, 6}];
    for (i = 40; i != -8; i -= 8)
    {
    }
  }

  v21 = [*(a1 + 24) threadExecutionWidth];
  v22 = [v9 width];
  if (v21 >= v22)
  {
    v21 = v22;
  }

  v23 = [*(a1 + 24) maxTotalThreadsPerThreadgroup];
  v24 = v21;
  do
  {
    v25 = v24;
    v26 = v24 * v21;
    v24 >>= 1;
  }

  while (v26 > v23);
  v27 = (v21 + [v9 width] - 1) / v21;
  v28 = [v9 height];
  *&v37 = v27;
  *(&v37 + 1) = (v25 + v28 - 1) / v25;
  *&v38 = 6;
  *&v34 = v21;
  *(&v34 + 1) = v25;
  *&v35 = 1;
  [v14 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v34];
  [v14 endEncoding];
  [v13 commit];
  [v13 waitUntilCompleted];

  return v12;
}

@end