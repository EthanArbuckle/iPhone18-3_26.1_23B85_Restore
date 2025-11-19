@interface GPUImageUndistortion
- (GPUImageUndistortion)init;
- (void)undistortFisheyeImage:(float32x4_t)a3 withFisheyeIntrinsics:(float32x4_t)a4 withFisheyeRadialCoefficients:(float32x4_t)a5 toRectilinearImage:(__n128)a6 withRectilinearIntrinsics:(__n128)a7;
@end

@implementation GPUImageUndistortion

- (GPUImageUndistortion)init
{
  v21.receiver = self;
  v21.super_class = GPUImageUndistortion;
  v2 = [(GPUImageUndistortion *)&v21 init];
  v3 = MTLCreateSystemDefaultDevice();
  device = v2->_device;
  v2->_device = v3;

  v5 = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = v5;

  [(MTLCommandQueue *)v2->_commandQueue setLabel:@"com.apple.abpk.gpuimageundistortion.queue"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:@"default" withExtension:@"metallib"];
  v9 = v2->_device;
  v20 = 0;
  v10 = [(MTLDevice *)v9 newLibraryWithURL:v8 error:&v20];
  v11 = v20;
  library = v2->_library;
  v2->_library = v10;

  v13 = [(MTLLibrary *)v2->_library newFunctionWithName:@"compute_lut"];
  v14 = [(MTLDevice *)v2->_device newComputePipelineStateWithFunction:v13 error:0];
  lutGenerationPipelineState = v2->_lutGenerationPipelineState;
  v2->_lutGenerationPipelineState = v14;

  v16 = [(MTLLibrary *)v2->_library newFunctionWithName:@"undistort_image"];
  v17 = [(MTLDevice *)v2->_device newComputePipelineStateWithFunction:v16 error:0];
  pipelineState = v2->_pipelineState;
  v2->_pipelineState = v17;

  return v2;
}

- (void)undistortFisheyeImage:(float32x4_t)a3 withFisheyeIntrinsics:(float32x4_t)a4 withFisheyeRadialCoefficients:(float32x4_t)a5 toRectilinearImage:(__n128)a6 withRectilinearIntrinsics:(__n128)a7
{
  *&v46[16] = a7;
  *&v46[32] = a8;
  *v46 = a6;
  v66[1] = *MEMORY[0x277D85DE8];
  v63 = a3;
  v64 = a4;
  v61 = a5;
  v62 = a2;
  Width = CVPixelBufferGetWidth(a10);
  Height = CVPixelBufferGetHeight(a10);
  v51 = a11;
  v15 = *a11;
  if (!*a11)
  {
    v65 = *MEMORY[0x277CC4DE8];
    v66[0] = MEMORY[0x277CBEC10];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    CVPixelBufferCreate(0, Width, Height, 0x34323076u, v16, v51);

    v15 = *v51;
  }

  v17 = CVPixelBufferGetWidth(v15);
  v18 = CVPixelBufferGetHeight(*v51);
  pixelBufferAttributes = [*(a1 + 16) commandBuffer];
  [(__CFDictionary *)pixelBufferAttributes setLabel:@"com.apple.abpk.gpuimageundistortion.commandBuffer"];
  v19 = *(a1 + 40);
  if (!v19 || [v19 width] != v17 || objc_msgSend(*(a1 + 40), "height") != v18 || (v20 = vandq_s8(vandq_s8(vceqq_f32(*(a1 + 64), v63), vceqq_f32(*(a1 + 48), v62)), vceqq_f32(*(a1 + 80), v64)), v20.i32[3] = v20.i32[2], (vminvq_u32(v20) & 0x80000000) == 0) || (vminvq_u32(vceqq_f32(*(a1 + 96), v61)) & 0x80000000) == 0 || (v21 = vandq_s8(vandq_s8(vceqq_f32(*(a1 + 128), *&v46[16]), vceqq_f32(*(a1 + 112), *v46)), vceqq_f32(*(a1 + 144), *&v46[32])), v21.i32[3] = v21.i32[2], (vminvq_u32(v21) & 0x80000000) == 0))
  {
    v22 = v63;
    v23 = v64;
    v24 = v61;
    *(a1 + 48) = v62;
    *(a1 + 64) = v22;
    *(a1 + 80) = v23;
    *(a1 + 96) = v24;
    *(a1 + 112) = *v46;
    *(a1 + 128) = *&v46[16];
    *(a1 + 144) = *&v46[32];
    v25 = *(a1 + 40);
    if (!v25 || [v25 width] != v17 || objc_msgSend(*(a1 + 40), "height") != v18)
    {
      v26 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:105 width:v17 height:v18 mipmapped:0, *v46];
      [v26 setUsage:3];
      v27 = [*(a1 + 8) newTextureWithDescriptor:v26];
      v28 = *(a1 + 40);
      *(a1 + 40) = v27;
    }

    v29 = [(__CFDictionary *)pixelBufferAttributes computeCommandEncoder];
    [v29 setLabel:@"com.apple.abpk.gpuimageundistortion.generatelut"];
    [v29 setComputePipelineState:*(a1 + 32)];
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v67 = __invert_f3(*v46);
    DWORD2(v58) = v67.columns[0].i32[2];
    DWORD2(v59) = v67.columns[1].i32[2];
    *&v58 = v67.columns[0].i64[0];
    *&v59 = v67.columns[1].i64[0];
    DWORD2(v60) = v67.columns[2].i32[2];
    *&v60 = v67.columns[2].i64[0];
    [v29 setTexture:*(a1 + 40) atIndex:0];
    [v29 setBytes:&v62 length:48 atIndex:0];
    [v29 setBytes:&v61 length:16 atIndex:1];
    [v29 setBytes:&v58 length:48 atIndex:2];
    v30 = [*(a1 + 32) threadExecutionWidth];
    v31 = v18;
    v32 = [*(a1 + 32) maxTotalThreadsPerThreadgroup];
    v33 = [*(a1 + 40) width];
    v34 = [*(a1 + 40) height];
    v55 = (v30 + v33 - 1) / v30;
    v56 = (v32 / v30 + v34 - 1) / (v32 / v30);
    v57 = 1;
    v54[0] = v30;
    v54[1] = v32 / v30;
    v54[2] = 1;
    [v29 dispatchThreadgroups:&v55 threadsPerThreadgroup:v54];
    [v29 endEncoding];

    v18 = v31;
  }

  v48 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0, *v46];
  [v48 setUsage:3];
  v47 = [*(a1 + 8) newTextureWithDescriptor:v48 iosurface:CVPixelBufferGetIOSurface(a10) plane:0];
  [v47 setLabel:@"com.apple.abpk.gpuimageundistortion.srcY"];
  v50 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:30 width:Width >> 1 height:Height >> 1 mipmapped:0];
  [v50 setUsage:1];
  v35 = [*(a1 + 8) newTextureWithDescriptor:v50 iosurface:CVPixelBufferGetIOSurface(a10) plane:1];
  [v35 setLabel:@"com.apple.abpk.gpuimageundistortion.srcCbCr"];
  v36 = CVBufferRetain(a10);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __143__GPUImageUndistortion_undistortFisheyeImage_withFisheyeIntrinsics_withFisheyeRadialCoefficients_toRectilinearImage_withRectilinearIntrinsics___block_invoke;
  v53[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
  v53[4] = v36;
  [(__CFDictionary *)pixelBufferAttributes addCompletedHandler:v53];
  v37 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:v17 height:v18 mipmapped:0];
  [v37 setUsage:3];
  v38 = [*(a1 + 8) newTextureWithDescriptor:v37 iosurface:CVPixelBufferGetIOSurface(*v51) plane:0];
  [v38 setLabel:@"com.apple.abpk.gpuimageundistortion.dstY"];
  v39 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:30 width:v17 >> 1 height:v18 >> 1 mipmapped:0];
  [v39 setUsage:3];
  v40 = [*(a1 + 8) newTextureWithDescriptor:v39 iosurface:CVPixelBufferGetIOSurface(*v51) plane:1];
  [v40 setLabel:@"com.apple.abpk.gpuimageundistortion.dstCbCr"];
  v41 = [(__CFDictionary *)pixelBufferAttributes computeCommandEncoder];
  v42 = v18;
  [v41 setLabel:@"com.apple.abpk.gpuimageundistortion.settexture"];
  [v41 setComputePipelineState:*(a1 + 24)];
  [v41 setTexture:v47 atIndex:0];
  [v41 setTexture:v35 atIndex:1];
  [v41 setTexture:*(a1 + 40) atIndex:2];
  [v41 setTexture:v38 atIndex:3];
  [v41 setTexture:v40 atIndex:4];
  v43 = [*(a1 + 24) threadExecutionWidth];
  v44 = [*(a1 + 24) maxTotalThreadsPerThreadgroup];
  *&v58 = (v17 + v43 - 1) / v43;
  *(&v58 + 1) = (v42 + v44 / v43 - 1) / (v44 / v43);
  *&v59 = 1;
  v55 = v43;
  v56 = v44 / v43;
  v57 = 1;
  [v41 dispatchThreadgroups:&v58 threadsPerThreadgroup:&v55];
  [v41 endEncoding];
  [(__CFDictionary *)pixelBufferAttributes commit];
  [(__CFDictionary *)pixelBufferAttributes waitUntilCompleted];

  v45 = *MEMORY[0x277D85DE8];
}

@end