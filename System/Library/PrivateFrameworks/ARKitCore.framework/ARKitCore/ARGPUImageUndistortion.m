@interface ARGPUImageUndistortion
- (ARGPUImageUndistortion)init;
- (uint64_t)undistortFisheyeTexture:(float32x4_t)a3 withFisheyeIntrinsics:(float32x4_t)a4 withFisheyeRadialCoefficients:(float32x4_t)a5 toRectilinearImage:(__n128)a6 withRectilinearIntrinsics:(__n128)a7;
- (void)undistortFisheyeImage:(double)a3 withFisheyeIntrinsics:(double)a4 withFisheyeRadialCoefficients:(double)a5 toRectilinearImage:(double)a6 withRectilinearIntrinsics:(double)a7;
@end

@implementation ARGPUImageUndistortion

- (ARGPUImageUndistortion)init
{
  v64 = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = ARGPUImageUndistortion;
  v2 = [(ARGPUImageUndistortion *)&v57 init];
  if (v2)
  {
    v3 = +[ARSharedGPUDevice sharedInstance];
    v4 = [v3 device];
    device = v2->_device;
    v2->_device = v4;

    v6 = [(MTLDevice *)v2->_device newCommandQueue];
    commandQueue = v2->_commandQueue;
    v2->_commandQueue = v6;

    [(MTLCommandQueue *)v2->_commandQueue setLabel:@"com.apple.arkit.gpuimageundistortion.queue"];
    v8 = ARKitCoreBundle();
    v9 = [v8 URLForResource:@"default" withExtension:@"metallib"];
    v10 = [(MTLDevice *)v2->_device newLibraryWithURL:v9 error:0];
    [v10 setLabel:@"com.apple.arkit.gpuimageundistortion.library"];
    v11 = [v10 newFunctionWithName:@"compute_lut"];
    v12 = v2->_device;
    v56 = 0;
    v13 = [(MTLDevice *)v12 newComputePipelineStateWithFunction:v11 error:&v56];
    v14 = v56;
    lutGenerationPipelineState = v2->_lutGenerationPipelineState;
    v2->_lutGenerationPipelineState = v13;

    if (v2->_lutGenerationPipelineState)
    {
      goto LABEL_12;
    }

    if (ARShouldUseLogTypeError_onceToken_46 != -1)
    {
      [ARGPUImageUndistortion init];
    }

    v16 = ARShouldUseLogTypeError_internalOSVersion_46;
    v17 = _ARLogGeneral_41();
    v18 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138543874;
        v59 = v20;
        v60 = 2048;
        v61 = v2;
        v62 = 2112;
        v63 = v14;
        v21 = "%{public}@ <%p>: Failed to create lut pipeline state, error %@";
        v22 = v18;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v22, v23, v21, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v20 = NSStringFromClass(v24);
      *buf = 138543874;
      v59 = v20;
      v60 = 2048;
      v61 = v2;
      v62 = 2112;
      v63 = v14;
      v21 = "Error: %{public}@ <%p>: Failed to create lut pipeline state, error %@";
      v22 = v18;
      v23 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

LABEL_12:
    v25 = [v10 newFunctionWithName:@"undistort_image_yuv"];
    v26 = [v10 newFunctionWithName:@"undistort_image"];
    v27 = v2->_device;
    v55 = 0;
    v28 = [(MTLDevice *)v27 newComputePipelineStateWithFunction:v25 error:&v55];
    v29 = v55;
    yuvPipelineState = v2->_yuvPipelineState;
    v2->_yuvPipelineState = v28;

    if (v2->_yuvPipelineState)
    {
      goto LABEL_22;
    }

    if (ARShouldUseLogTypeError_onceToken_46 != -1)
    {
      [ARGPUImageUndistortion init];
    }

    v31 = ARShouldUseLogTypeError_internalOSVersion_46;
    v32 = _ARLogGeneral_41();
    v33 = v32;
    if (v31 == 1)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138543874;
        v59 = v35;
        v60 = 2048;
        v61 = v2;
        v62 = 2112;
        v63 = v29;
        v36 = "%{public}@ <%p>: Failed to create image undistortion pipeline state, error %@";
        v37 = v33;
        v38 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_1C241C000, v37, v38, v36, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v35 = NSStringFromClass(v39);
      *buf = 138543874;
      v59 = v35;
      v60 = 2048;
      v61 = v2;
      v62 = 2112;
      v63 = v29;
      v36 = "Error: %{public}@ <%p>: Failed to create image undistortion pipeline state, error %@";
      v37 = v33;
      v38 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

LABEL_22:
    v40 = v2->_device;
    v54 = v29;
    v41 = [(MTLDevice *)v40 newComputePipelineStateWithFunction:v26 error:&v54];
    v42 = v54;

    rgbPipelineState = v2->_rgbPipelineState;
    v2->_rgbPipelineState = v41;

    if (v2->_rgbPipelineState)
    {
LABEL_32:

      return v2;
    }

    if (ARShouldUseLogTypeError_onceToken_46 != -1)
    {
      [ARGPUImageUndistortion init];
    }

    v44 = ARShouldUseLogTypeError_internalOSVersion_46;
    v45 = _ARLogGeneral_41();
    v46 = v45;
    if (v44 == 1)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        *buf = 138543874;
        v59 = v48;
        v60 = 2048;
        v61 = v2;
        v62 = 2112;
        v63 = v42;
        v49 = "%{public}@ <%p>: Failed to create image undistortion pipeline state, error %@";
        v50 = v46;
        v51 = OS_LOG_TYPE_ERROR;
LABEL_30:
        _os_log_impl(&dword_1C241C000, v50, v51, v49, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      v52 = objc_opt_class();
      v48 = NSStringFromClass(v52);
      *buf = 138543874;
      v59 = v48;
      v60 = 2048;
      v61 = v2;
      v62 = 2112;
      v63 = v42;
      v49 = "Error: %{public}@ <%p>: Failed to create image undistortion pipeline state, error %@";
      v50 = v46;
      v51 = OS_LOG_TYPE_INFO;
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  return v2;
}

- (void)undistortFisheyeImage:(double)a3 withFisheyeIntrinsics:(double)a4 withFisheyeRadialCoefficients:(double)a5 toRectilinearImage:(double)a6 withRectilinearIntrinsics:(double)a7
{
  v42[1] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a10);
  Height = CVPixelBufferGetHeight(a10);
  v16 = *a11;
  if (!*a11)
  {
    v41 = *MEMORY[0x1E69660D8];
    v42[0] = MEMORY[0x1E695E0F8];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    CVPixelBufferCreate(0, Width, Height, 0x34323076u, v17, a11);

    v16 = *a11;
  }

  v18 = CVPixelBufferGetWidth(v16);
  v19 = CVPixelBufferGetHeight(*a11);
  v31 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];
  [v31 setUsage:3];
  v20 = [a1[1] newTextureWithDescriptor:v31 iosurface:CVPixelBufferGetIOSurface(a10) plane:0];
  [v20 setLabel:@"com.apple.arkit.gpuimageundistortion.srcY"];
  v30 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:Width >> 1 height:Height >> 1 mipmapped:0];
  [v30 setUsage:1];
  v21 = [a1[1] newTextureWithDescriptor:v30 iosurface:CVPixelBufferGetIOSurface(a10) plane:1];
  [v21 setLabel:@"com.apple.arkit.gpuimageundistortion.srcCbCr"];
  v22 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v18 height:v19 mipmapped:0];
  [v22 setUsage:3];
  v23 = [a1[1] newTextureWithDescriptor:v22 iosurface:CVPixelBufferGetIOSurface(*a11) plane:0];
  [v23 setLabel:@"com.apple.arkit.gpuimageundistortion.dstY"];
  v24 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:v18 >> 1 height:v19 >> 1 mipmapped:0];
  [v24 setUsage:3];
  v25 = [a1[1] newTextureWithDescriptor:v24 iosurface:CVPixelBufferGetIOSurface(*a11) plane:1];
  [v25 setLabel:@"com.apple.arkit.gpuimageundistortion.dstCbCr"];
  v26 = CVBufferRetain(a10);
  v40[0] = v20;
  v40[1] = v21;
  v27 = v20;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v39[0] = v23;
  v39[1] = v25;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  [a1 undistortFisheyeTexture:v28 withFisheyeIntrinsics:v29 withFisheyeRadialCoefficients:a2 toRectilinearImage:a3 withRectilinearIntrinsics:{a4, a5, a6, a7, a8}];

  CVBufferRelease(v26);
}

- (uint64_t)undistortFisheyeTexture:(float32x4_t)a3 withFisheyeIntrinsics:(float32x4_t)a4 withFisheyeRadialCoefficients:(float32x4_t)a5 toRectilinearImage:(__n128)a6 withRectilinearIntrinsics:(__n128)a7
{
  *&v61[16] = a7;
  *&v61[32] = a8;
  *v61 = a6;
  v73 = *MEMORY[0x1E69E9840];
  v68 = a2;
  v69 = a3;
  v70 = a4;
  v13 = a10;
  v67 = a5;
  v14 = a11;
  if (![v13 count] || objc_msgSend(v13, "count") > 2 || (v15 = objc_msgSend(v13, "count"), v15 != objc_msgSend(v14, "count")))
  {
    if (ARShouldUseLogTypeError_onceToken_46 != -1)
    {
      [ARGPUImageUndistortion undistortFisheyeTexture:withFisheyeIntrinsics:withFisheyeRadialCoefficients:toRectilinearImage:withRectilinearIntrinsics:];
    }

    v42 = ARShouldUseLogTypeError_internalOSVersion_46;
    v43 = _ARLogGeneral_41();
    v16 = v43;
    if (v42 == 1)
    {
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2048;
        *&buf[14] = a1;
        v46 = "%{public}@ <%p>: Incorrect number of input/output textures";
        v47 = v16;
        v48 = OS_LOG_TYPE_ERROR;
LABEL_26:
        _os_log_impl(&dword_1C241C000, v47, v48, v46, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v49 = objc_opt_class();
      v45 = NSStringFromClass(v49);
      *buf = 138543618;
      *&buf[4] = v45;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      v46 = "Error: %{public}@ <%p>: Incorrect number of input/output textures";
      v47 = v16;
      v48 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    v50 = 0;
    goto LABEL_28;
  }

  v56 = [v13 count];
  v16 = [v14 firstObject];
  v17 = [v16 width];
  v57 = [v16 height];
  v18 = [*(a1 + 16) commandBuffer];
  [v18 setLabel:@"com.apple.arkit.gpuimageundistortion.commandBuffer"];
  v19 = *(a1 + 48);
  if (!v19 || [v19 width] != v17 || objc_msgSend(*(a1 + 48), "height") != v57 || (v20 = vandq_s8(vandq_s8(vceqq_f32(*(a1 + 80), a3), vceqq_f32(*(a1 + 64), a2)), vceqq_f32(*(a1 + 96), a4)), v20.i32[3] = v20.i32[2], (vminvq_u32(v20) & 0x80000000) == 0) || (vminvq_u32(vceqq_f32(*(a1 + 112), a5)) & 0x80000000) == 0 || (v21 = vandq_s8(vandq_s8(vceqq_f32(*(a1 + 144), *&v61[16]), vceqq_f32(*(a1 + 128), *v61)), vceqq_f32(*(a1 + 160), *&v61[32])), v21.i32[3] = v21.i32[2], (vminvq_u32(v21) & 0x80000000) == 0))
  {
    v22 = v69;
    *(a1 + 64) = v68;
    *(a1 + 80) = v22;
    *(a1 + 96) = v70;
    *(a1 + 112) = a5;
    *(a1 + 128) = *v61;
    *(a1 + 144) = *&v61[16];
    *(a1 + 160) = *&v61[32];
    v23 = *(a1 + 48);
    if (!v23 || [v23 width] != v17 || objc_msgSend(*(a1 + 48), "height") != v57)
    {
      v24 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:105 width:v17 height:v57 mipmapped:0];
      [v24 setUsage:3];
      v25 = [*(a1 + 8) newTextureWithDescriptor:v24];
      v26 = *(a1 + 48);
      *(a1 + 48) = v25;
    }

    v27 = [v18 computeCommandEncoder];
    [v27 setLabel:@"com.apple.arkit.gpuimageundistortion.lutgeneration"];
    [v27 setComputePipelineState:*(a1 + 40)];
    *&buf[16] = 0u;
    v72 = 0u;
    *buf = 0u;
    v74 = __invert_f3(*v61);
    *&buf[8] = v74.columns[0].i32[2];
    *&buf[24] = v74.columns[1].i32[2];
    *buf = v74.columns[0].i64[0];
    *&buf[16] = v74.columns[1].i64[0];
    DWORD2(v72) = v74.columns[2].i32[2];
    *&v72 = v74.columns[2].i64[0];
    [v27 setTexture:*(a1 + 48) atIndex:0];
    [v27 setBytes:&v68 length:48 atIndex:0];
    [v27 setBytes:&v67 length:16 atIndex:1];
    [v27 setBytes:buf length:48 atIndex:2];
    v28 = [*(a1 + 40) threadExecutionWidth];
    v29 = [*(a1 + 40) maxTotalThreadsPerThreadgroup] / v28;
    v30 = v18;
    v31 = v17;
    v32 = (v28 + [*(a1 + 48) width] - 1) / v28;
    v33 = [*(a1 + 48) height];
    v64 = v32;
    v65 = (v29 + v33 - 1) / v29;
    v17 = v31;
    v18 = v30;
    v66 = 1;
    v63[0] = v28;
    v63[1] = v29;
    v63[2] = 1;
    [v27 dispatchThreadgroups:&v64 threadsPerThreadgroup:v63];
    [v27 endEncoding];
  }

  v34 = [v18 computeCommandEncoder];
  [v34 setLabel:@"com.apple.arkit.gpuimageundistortion.textureundistort"];
  v35 = 24;
  if (v56 == 1)
  {
    v35 = 32;
  }

  v36 = *(a1 + v35);
  [v34 setComputePipelineState:v36];
  v37 = [v13 firstObject];
  [v34 setTexture:v37 atIndex:0];

  if (v56 == 1)
  {
    [v34 setTexture:*(a1 + 48) atIndex:1];
    v38 = [v14 firstObject];
    v39 = v34;
    v40 = v38;
    v41 = 2;
  }

  else
  {
    v52 = [v13 lastObject];
    [v34 setTexture:v52 atIndex:1];

    [v34 setTexture:*(a1 + 48) atIndex:2];
    v53 = [v14 firstObject];
    [v34 setTexture:v53 atIndex:3];

    v38 = [v14 lastObject];
    v39 = v34;
    v40 = v38;
    v41 = 4;
  }

  [v39 setTexture:v40 atIndex:v41];

  v54 = [v36 threadExecutionWidth];
  v55 = [v36 maxTotalThreadsPerThreadgroup];
  *buf = (v17 + v54 - 1) / v54;
  *&buf[8] = (v57 + v55 / v54 - 1) / (v55 / v54);
  v50 = 1;
  *&buf[16] = 1;
  v64 = v54;
  v65 = v55 / v54;
  v66 = 1;
  [v34 dispatchThreadgroups:buf threadsPerThreadgroup:&v64];
  [v34 endEncoding];
  [v18 commit];
  [v18 waitUntilCompleted];

LABEL_28:
  return v50;
}

@end