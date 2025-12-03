@interface ARGPUCubemapConverter
- (ARGPUCubemapConverter)init;
- (id)cubemapTextureFromEquirectangularTexture:(__n128)texture rotation:(__n128)rotation size:(uint64_t)size;
- (id)equirectangularTextureFromCubemapTexture:(float32x4_t)texture rotation:(float32x4_t)rotation width:(uint64_t)width height:(void *)height;
@end

@implementation ARGPUCubemapConverter

- (ARGPUCubemapConverter)init
{
  v50 = *MEMORY[0x1E69E9840];
  v43.receiver = self;
  v43.super_class = ARGPUCubemapConverter;
  v2 = [(ARGPUCubemapConverter *)&v43 init];
  v3 = +[ARSharedGPUDevice sharedInstance];
  device = [v3 device];
  device = v2->_device;
  v2->_device = device;

  newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = newCommandQueue;

  [(MTLCommandQueue *)v2->_commandQueue setLabel:@"com.apple.arkit.cubemapconverter.queue"];
  v2->_gpuFamilyAtleast4 = [(MTLDevice *)v2->_device supportsFamily:1004];
  v8 = ARKitCoreBundle();
  v9 = [v8 URLForResource:@"default" withExtension:@"metallib"];
  v10 = [(MTLDevice *)v2->_device newLibraryWithURL:v9 error:0];
  [v10 setLabel:@"com.apple.cubemapconverter.library"];
  v11 = [v10 newFunctionWithName:@"compute_latlong_from_cubemap"];
  v12 = v2->_device;
  v42 = 0;
  v13 = [(MTLDevice *)v12 newComputePipelineStateWithFunction:v11 error:&v42];
  v14 = v42;
  cubemapToLatLongPipelineState = v2->_cubemapToLatLongPipelineState;
  v2->_cubemapToLatLongPipelineState = v13;

  if (v2->_cubemapToLatLongPipelineState)
  {
    goto LABEL_11;
  }

  if (ARShouldUseLogTypeError_onceToken_39 != -1)
  {
    [ARGPUCubemapConverter init];
  }

  v16 = ARShouldUseLogTypeError_internalOSVersion_39;
  v17 = _ARLogGeneral_31();
  v18 = v17;
  if (v16 == 1)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543874;
      v45 = v20;
      v46 = 2048;
      v47 = v2;
      v48 = 2112;
      v49 = v14;
      v21 = "%{public}@ <%p>: Failed to create cube map conversion pipeline state, error %@";
      v22 = v18;
      v23 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_1C241C000, v22, v23, v21, buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v24 = objc_opt_class();
    v20 = NSStringFromClass(v24);
    *buf = 138543874;
    v45 = v20;
    v46 = 2048;
    v47 = v2;
    v48 = 2112;
    v49 = v14;
    v21 = "Error: %{public}@ <%p>: Failed to create cube map conversion pipeline state, error %@";
    v22 = v18;
    v23 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

LABEL_11:
  if (v2->_gpuFamilyAtleast4)
  {
    v25 = @"compute_cubemap_from_latlong";
  }

  else
  {
    v25 = @"compute_cubemap_from_latlong_views";
  }

  v26 = [v10 newFunctionWithName:v25];
  v27 = v2->_device;
  v41 = 0;
  v28 = [(MTLDevice *)v27 newComputePipelineStateWithFunction:v26 error:&v41];
  v29 = v41;
  latLongToCubemapPipelineState = v2->_latLongToCubemapPipelineState;
  v2->_latLongToCubemapPipelineState = v28;

  if (!v2->_latLongToCubemapPipelineState)
  {
    if (ARShouldUseLogTypeError_onceToken_39 != -1)
    {
      [ARGPUCubemapConverter init];
    }

    v31 = ARShouldUseLogTypeError_internalOSVersion_39;
    v32 = _ARLogGeneral_31();
    v33 = v32;
    if (v31 == 1)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138543874;
        v45 = v35;
        v46 = 2048;
        v47 = v2;
        v48 = 2112;
        v49 = v29;
        v36 = "%{public}@ <%p>: Failed to create cube map conversion pipeline state, error %@";
        v37 = v33;
        v38 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_1C241C000, v37, v38, v36, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v35 = NSStringFromClass(v39);
      *buf = 138543874;
      v45 = v35;
      v46 = 2048;
      v47 = v2;
      v48 = 2112;
      v49 = v29;
      v36 = "Error: %{public}@ <%p>: Failed to create cube map conversion pipeline state, error %@";
      v37 = v33;
      v38 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }
  }

  return v2;
}

- (id)equirectangularTextureFromCubemapTexture:(float32x4_t)texture rotation:(float32x4_t)rotation width:(uint64_t)width height:(void *)height
{
  heightCopy = height;
  v12 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:objc_msgSend(heightCopy width:"pixelFormat") height:a7 mipmapped:a8, 0];
  [v12 setUsage:3];
  v13 = [*(self + 8) newTextureWithDescriptor:v12];
  [v13 setLabel:@"com.apple.arkit.cubemapconverter.latlongtexture"];
  commandBuffer = [*(self + 16) commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setLabel:@"com.apple.arkit.gpucubemapconverter.computelatlong"];
  [computeCommandEncoder setComputePipelineState:*(self + 24)];
  v16 = 0;
  v27 = xmmword_1C25C8910;
  v28 = xmmword_1C25C8BC0;
  v29 = xmmword_1C25C9070;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  do
  {
    *(&v30 + v16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v27 + v16))), texture, *&v27.i8[v16], 1), rotation, *(&v27 + v16), 2);
    v16 += 16;
  }

  while (v16 != 48);
  v17 = 0;
  v27 = v30;
  v28 = v31;
  v29 = v32;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  do
  {
    *(&v30 + v17) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C8910, COERCE_FLOAT(*(&v27 + v17))), xmmword_1C25C8BC0, *&v27.i8[v17], 1), xmmword_1C25C9070, *(&v27 + v17), 2);
    v17 += 16;
  }

  while (v17 != 48);
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  DWORD2(v24) = v30.i32[2];
  DWORD2(v25) = DWORD2(v31);
  *&v24 = v30.i64[0];
  *&v25 = v31;
  DWORD2(v26) = DWORD2(v32);
  *&v26 = v32;
  [computeCommandEncoder setBytes:&v24 length:48 atIndex:0];
  [computeCommandEncoder setTexture:heightCopy atIndex:0];
  [computeCommandEncoder setTexture:v13 atIndex:1];
  width = [v12 width];
  height = [v12 height];
  v30.i64[0] = width;
  v30.i64[1] = height;
  *&v31 = 1;
  v27 = vdupq_n_s64(1uLL);
  *&v28 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v30 threadsPerThreadgroup:&v27];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  return v13;
}

- (id)cubemapTextureFromEquirectangularTexture:(__n128)texture rotation:(__n128)rotation size:(uint64_t)size
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = v9;
  if (a7 >= 0x800)
  {
    a7 = 2048;
  }

  v11 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:objc_msgSend(v9 size:"pixelFormat" mipmapped:*&a2, *&texture, *&rotation), a7, 0];
  [v11 setUsage:23];
  v12 = [*(self + 8) newTextureWithDescriptor:v11];
  [v12 setLabel:@"com.apple.arkit.cubemapconverter.cubemaptexture"];
  commandBuffer = [*(self + 16) commandBuffer];
  v14 = *(self + 32);
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:v14];
  v16 = 0;
  v38 = xmmword_1C25C8910;
  v39 = xmmword_1C25C8BC0;
  v40 = xmmword_1C25C9070;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  do
  {
    *(&v41 + v16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(*(&v38 + v16))), v34, *(&v38 + v16), 1), v36, *(&v38 + v16), 2);
    v16 += 16;
  }

  while (v16 != 48);
  v17 = 0;
  v38 = v41;
  v39 = v42;
  v40 = v43;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  do
  {
    *(&v41 + v17) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C8910, COERCE_FLOAT(*(&v38 + v17))), xmmword_1C25C8BC0, *(&v38 + v17), 1), xmmword_1C25C9070, *(&v38 + v17), 2);
    v17 += 16;
  }

  while (v17 != 48);
  v37[1] = DWORD2(v41);
  v37[3] = DWORD2(v42);
  v37[0] = v41;
  v37[2] = v42;
  v37[5] = DWORD2(v43);
  v37[4] = v43;
  [computeCommandEncoder setBytes:v37 length:48 atIndex:0];
  [computeCommandEncoder setTexture:v10 atIndex:0];
  if (*(self + 40) == 1)
  {
    [computeCommandEncoder setTexture:v12 atIndex:1];
  }

  else
  {
    v18 = 0;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    do
    {
      v19 = [v12 newTextureViewWithPixelFormat:objc_msgSend(v12 textureType:"pixelFormat") levels:2 slices:0, 1, v18, 1];
      v20 = *(&v41 + v18);
      *(&v41 + v18) = v19;

      ++v18;
    }

    while (v18 != 6);
    [computeCommandEncoder setTextures:&v41 withRange:{1, 6}];
    for (i = 40; i != -8; i -= 8)
    {
    }
  }

  threadExecutionWidth = [v14 threadExecutionWidth];
  width = [v12 width];
  if (threadExecutionWidth >= width)
  {
    threadExecutionWidth = width;
  }

  maxTotalThreadsPerThreadgroup = [v14 maxTotalThreadsPerThreadgroup];
  v25 = threadExecutionWidth;
  do
  {
    v26 = v25;
    v27 = v25 * threadExecutionWidth;
    v25 >>= 1;
  }

  while (v27 > maxTotalThreadsPerThreadgroup);
  v28 = (threadExecutionWidth + [v12 width] - 1) / threadExecutionWidth;
  height = [v12 height];
  *&v41 = v28;
  *(&v41 + 1) = (v26 + height - 1) / v26;
  *&v42 = 6;
  *&v38 = threadExecutionWidth;
  *(&v38 + 1) = v26;
  *&v39 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v41 threadsPerThreadgroup:&v38];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  return v12;
}

@end