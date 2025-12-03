@interface ARGPUCubemapProjector
+ (id)createCubemap:(unint64_t)cubemap;
- (ARGPUCubemapProjector)init;
- (void)projectToCube:(float32x4_t)cube transformWorldFromCube:(float32x4_t)fromCube meshes:(float32x4_t)meshes blend:(uint64_t)blend;
@end

@implementation ARGPUCubemapProjector

+ (id)createCubemap:(unint64_t)cubemap
{
  v3 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:71 size:cubemap mipmapped:0];
  [v3 setUsage:5];
  v4 = +[ARSharedGPUDevice sharedInstance];
  device = [v4 device];
  v6 = [device newTextureWithDescriptor:v3];

  return v6;
}

- (ARGPUCubemapProjector)init
{
  v74 = *MEMORY[0x1E69E9840];
  v67.receiver = self;
  v67.super_class = ARGPUCubemapProjector;
  v2 = [(ARGPUCubemapProjector *)&v67 init];
  v3 = +[ARSharedGPUDevice sharedInstance];
  device = [v3 device];
  device = v2->_device;
  v2->_device = device;

  newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = newCommandQueue;

  [(MTLCommandQueue *)v2->_commandQueue setLabel:@"com.apple.arkit.cubemapprojector.queue"];
  v8 = ARKitCoreBundle();
  v9 = [v8 URLForResource:@"default" withExtension:@"metallib"];
  if (!v9)
  {
    [ARGPUCubemapProjector init];
  }

  v10 = v9;
  v11 = [(MTLDevice *)v2->_device newLibraryWithURL:v9 error:0];
  [v11 setLabel:@"com.apple.arkit.cubemapprojector.library"];
  v12 = [v11 newFunctionWithName:@"cubemapVertexShader"];
  v13 = [v11 newFunctionWithName:@"cubemapFragmentShader"];
  v14 = objc_alloc_init(MEMORY[0x1E6974148]);
  [v14 setLabel:@"com.apple.arkit.cubemapprojector.srgbpipeline"];
  [v14 setVertexFunction:v12];
  [v14 setFragmentFunction:v13];
  colorAttachments = [v14 colorAttachments];
  v16 = [colorAttachments objectAtIndexedSubscript:0];
  [v16 setPixelFormat:81];

  [v14 setDepthAttachmentPixelFormat:252];
  v17 = v2->_device;
  v66 = 0;
  v18 = [(MTLDevice *)v17 newRenderPipelineStateWithDescriptor:v14 error:&v66];
  v19 = v66;
  cubemapPipelineStateSRGB_BGRA = v2->_cubemapPipelineStateSRGB_BGRA;
  v2->_cubemapPipelineStateSRGB_BGRA = v18;

  if (!v2->_cubemapPipelineStateSRGB_BGRA)
  {
    if (ARShouldUseLogTypeError_onceToken_41 != -1)
    {
      [ARGPUCubemapProjector init];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion_41;
    v22 = _ARLogGeneral_33();
    v23 = v22;
    if (v21 == 1)
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543874;
      v69 = v25;
      v70 = 2048;
      v71 = v2;
      v72 = 2112;
      v73 = v19;
      v26 = "%{public}@ <%p>: Failed to create cube map srgb pipeline state, error %@";
      v27 = v23;
      v28 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      v29 = objc_opt_class();
      v25 = NSStringFromClass(v29);
      *buf = 138543874;
      v69 = v25;
      v70 = 2048;
      v71 = v2;
      v72 = 2112;
      v73 = v19;
      v26 = "Error: %{public}@ <%p>: Failed to create cube map srgb pipeline state, error %@";
      v27 = v23;
      v28 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v27, v28, v26, buf, 0x20u);

LABEL_11:
    if (!v2->_cubemapPipelineStateSRGB_BGRA)
    {
      [ARGPUCubemapProjector init];
    }
  }

  colorAttachments2 = [v14 colorAttachments];
  v31 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v31 setPixelFormat:71];

  v32 = v2->_device;
  v65 = v19;
  v33 = [(MTLDevice *)v32 newRenderPipelineStateWithDescriptor:v14 error:&v65];
  v34 = v65;

  cubemapPipelineStateSRGB_RGBA = v2->_cubemapPipelineStateSRGB_RGBA;
  v2->_cubemapPipelineStateSRGB_RGBA = v33;

  if (v2->_cubemapPipelineStateSRGB_RGBA)
  {
    goto LABEL_22;
  }

  if (ARShouldUseLogTypeError_onceToken_41 != -1)
  {
    [ARGPUCubemapProjector init];
  }

  v36 = ARShouldUseLogTypeError_internalOSVersion_41;
  v37 = _ARLogGeneral_33();
  v38 = v37;
  if (v36 == 1)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138543874;
      v69 = v40;
      v70 = 2048;
      v71 = v2;
      v72 = 2112;
      v73 = v34;
      v41 = "%{public}@ <%p>: Failed to create cube map srgb pipeline state, error %@";
      v42 = v38;
      v43 = OS_LOG_TYPE_ERROR;
LABEL_20:
      _os_log_impl(&dword_1C241C000, v42, v43, v41, buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v44 = objc_opt_class();
    v40 = NSStringFromClass(v44);
    *buf = 138543874;
    v69 = v40;
    v70 = 2048;
    v71 = v2;
    v72 = 2112;
    v73 = v34;
    v41 = "Error: %{public}@ <%p>: Failed to create cube map srgb pipeline state, error %@";
    v42 = v38;
    v43 = OS_LOG_TYPE_INFO;
    goto LABEL_20;
  }

LABEL_22:
  [v14 setLabel:@"com.apple.arkit.cubemapprojector.hdrpipeline"];
  colorAttachments3 = [v14 colorAttachments];
  v46 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v46 setPixelFormat:115];

  v47 = v2->_device;
  v64 = v34;
  v48 = [(MTLDevice *)v47 newRenderPipelineStateWithDescriptor:v14 error:&v64];
  v49 = v64;

  cubemapPipelineStateHDR = v2->_cubemapPipelineStateHDR;
  v2->_cubemapPipelineStateHDR = v48;

  if (v2->_cubemapPipelineStateHDR)
  {
    goto LABEL_32;
  }

  if (ARShouldUseLogTypeError_onceToken_41 != -1)
  {
    [ARGPUCubemapProjector init];
  }

  v51 = ARShouldUseLogTypeError_internalOSVersion_41;
  v52 = _ARLogGeneral_33();
  v53 = v52;
  if (v51 == 1)
  {
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    *buf = 138543874;
    v69 = v55;
    v70 = 2048;
    v71 = v2;
    v72 = 2112;
    v73 = v49;
    v56 = "%{public}@ <%p>: Failed to create cube map HDR pipeline state, error %@";
    v57 = v53;
    v58 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      goto LABEL_31;
    }

    v59 = objc_opt_class();
    v55 = NSStringFromClass(v59);
    *buf = 138543874;
    v69 = v55;
    v70 = 2048;
    v71 = v2;
    v72 = 2112;
    v73 = v49;
    v56 = "Error: %{public}@ <%p>: Failed to create cube map HDR pipeline state, error %@";
    v57 = v53;
    v58 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v57, v58, v56, buf, 0x20u);

LABEL_31:
  if (!v2->_cubemapPipelineStateHDR)
  {
    [ARGPUCubemapProjector init];
  }

LABEL_32:
  v60 = objc_alloc_init(MEMORY[0x1E6974050]);
  [v60 setDepthCompareFunction:1];
  [v60 setDepthWriteEnabled:1];
  v61 = [(MTLDevice *)v2->_device newDepthStencilStateWithDescriptor:v60];
  cubemapDepthState = v2->_cubemapDepthState;
  v2->_cubemapDepthState = v61;

  return v2;
}

- (void)projectToCube:(float32x4_t)cube transformWorldFromCube:(float32x4_t)fromCube meshes:(float32x4_t)meshes blend:(uint64_t)blend
{
  v109 = *MEMORY[0x1E69E9840];
  v11 = a7;
  v79 = a8;
  v12 = 0;
  v101 = a9;
  v106.columns[0] = xmmword_1C25C86A0;
  v106.columns[1] = xmmword_1C25C8BC0;
  v106.columns[2] = xmmword_1C25C9080;
  v106.columns[3] = xmmword_1C25C8560;
  memset(v108, 0, 64);
  do
  {
    v108[0].columns[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*&v106.columns[v12])), cube, *v106.columns[v12].f32, 1), fromCube, v106.columns[v12], 2), meshes, v106.columns[v12], 3);
    ++v12;
  }

  while (v12 != 4);
  v110 = __invert_f4(v108[0]);
  v13 = 0;
  v108[0] = v110;
  v102 = xmmword_1C25C9070;
  v103 = xmmword_1C25C8BC0;
  v104 = xmmword_1C25C8910;
  v105 = xmmword_1C25C8560;
  memset(&v106, 0, sizeof(v106));
  do
  {
    v106.columns[v13 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v102 + v13))), cube, *(&v102 + v13), 1), fromCube, *(&v102 + v13), 2), meshes, *(&v102 + v13), 3);
    v13 += 16;
  }

  while (v13 != 64);
  v111 = __invert_f4(v106);
  v14 = 0;
  v108[1] = v111;
  v102 = xmmword_1C25C8910;
  v103 = xmmword_1C25C86A0;
  v104 = xmmword_1C25C9060;
  v105 = xmmword_1C25C8560;
  memset(&v106, 0, sizeof(v106));
  do
  {
    v106.columns[v14 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v102 + v14))), cube, *(&v102 + v14), 1), fromCube, *(&v102 + v14), 2), meshes, *(&v102 + v14), 3);
    v14 += 16;
  }

  while (v14 != 64);
  v112 = __invert_f4(v106);
  v15 = 0;
  v108[2] = v112;
  v102 = xmmword_1C25C8910;
  v103 = xmmword_1C25C9070;
  v104 = xmmword_1C25C8BC0;
  v105 = xmmword_1C25C8560;
  memset(&v106, 0, sizeof(v106));
  do
  {
    v106.columns[v15 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v102 + v15))), cube, *(&v102 + v15), 1), fromCube, *(&v102 + v15), 2), meshes, *(&v102 + v15), 3);
    v15 += 16;
  }

  while (v15 != 64);
  v113 = __invert_f4(v106);
  v16 = 0;
  v108[3] = v113;
  v102 = xmmword_1C25C8910;
  v103 = xmmword_1C25C8BC0;
  v104 = xmmword_1C25C86A0;
  v105 = xmmword_1C25C8560;
  memset(&v106, 0, sizeof(v106));
  do
  {
    v106.columns[v16 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v102 + v16))), cube, *(&v102 + v16), 1), fromCube, *(&v102 + v16), 2), meshes, *(&v102 + v16), 3);
    v16 += 16;
  }

  while (v16 != 64);
  v114 = __invert_f4(v106);
  v17 = 0;
  v108[4] = v114;
  v102 = xmmword_1C25C9080;
  v103 = xmmword_1C25C8BC0;
  v104 = xmmword_1C25C9070;
  v105 = xmmword_1C25C8560;
  memset(&v106, 0, sizeof(v106));
  do
  {
    v106.columns[v17 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2, COERCE_FLOAT(*(&v102 + v17))), cube, *(&v102 + v17), 1), fromCube, *(&v102 + v17), 2), meshes, *(&v102 + v17), 3);
    v17 += 16;
  }

  while (v17 != 64);
  v108[5] = __invert_f4(v106);
  width = [v11 width];
  pixelFormat = [v11 pixelFormat];
  v19 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:252 size:width mipmapped:0];
  [v19 setUsage:4];
  v76 = v19;
  v81 = [*(self + 8) newTextureWithDescriptor:v19];
  [v81 setLabel:@"com.apple.arkit.cubemapprojector.depthtexture"];
  commandBuffer = [*(self + 16) commandBuffer];
  [commandBuffer setLabel:@"com.apple.arkit.cubemapprojector.commandbuffer"];
  v20 = 0;
  fromCubeCopy = fromCube;
  cubeCopy = cube;
  v23 = vextq_s8(cubeCopy, cubeCopy, 4uLL);
  v24 = vextq_s8(fromCubeCopy, fromCubeCopy, 8uLL);
  meshesCopy = meshes;
  v26 = vextq_s8(meshesCopy, meshesCopy, 0xCuLL);
  v27 = vextq_s8(fromCubeCopy, fromCubeCopy, 0xCuLL);
  v28 = vextq_s8(meshesCopy, meshesCopy, 8uLL);
  v29 = vextq_s8(cubeCopy, cubeCopy, 8uLL);
  v30 = vextq_s8(meshes, meshes, 4uLL);
  v31 = vextq_s8(fromCube, fromCube, 4uLL);
  v32 = vmulq_f32(a2, vmlaq_f32(vmlaq_f32(vmulq_f32(v29, vmlaq_f32(vmulq_f32(v26, vnegq_f32(v31)), v30, v27)), vmlaq_f32(vmulq_f32(v28, vnegq_f32(v27)), v26, v24), v23), vmlaq_f32(vmulq_f32(v30, vnegq_f32(v24)), v28, v31), vextq_s8(cube, cube, 0xCuLL)));
  v24.i64[0] = vextq_s8(v32, v32, 8uLL).u64[0];
  if (vaddv_f32(vsub_f32(vzip1_s32(*v32.i8, *v24.f32), vzip2_s32(*v32.i8, *v24.f32))) <= 0.0)
  {
    v33 = 1;
  }

  else
  {
    v33 = 2;
  }

  v77 = v33;
  v80 = v11;
  do
  {
    v34 = [v11 newTextureViewWithPixelFormat:pixelFormat textureType:2 levels:0 slices:1, v20, 1];
    v87 = v20;
    v35 = [v81 newTextureViewWithPixelFormat:252 textureType:2 levels:0 slices:1, v20, 1];
    renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
    colorAttachments = [renderPassDescriptor colorAttachments];
    v38 = [colorAttachments objectAtIndexedSubscript:0];
    v86 = v34;
    [v38 setTexture:v34];

    if (v101)
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }

    colorAttachments2 = [renderPassDescriptor colorAttachments];
    v41 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v41 setLoadAction:v39];

    colorAttachments3 = [renderPassDescriptor colorAttachments];
    v43 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v43 setStoreAction:1];

    colorAttachments4 = [renderPassDescriptor colorAttachments];
    v45 = [colorAttachments4 objectAtIndexedSubscript:0];
    [v45 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    depthAttachment = [renderPassDescriptor depthAttachment];
    v85 = v35;
    [depthAttachment setTexture:v35];

    depthAttachment2 = [renderPassDescriptor depthAttachment];
    [depthAttachment2 setLoadAction:2];

    depthAttachment3 = [renderPassDescriptor depthAttachment];
    [depthAttachment3 setStoreAction:0];

    v84 = renderPassDescriptor;
    v49 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
    [v49 setLabel:@"com.apple.arkit.cubemapprojector.renderencoder"];
    [v49 setCullMode:v77];
    pixelFormat2 = [v11 pixelFormat];
    v51 = (self + 24);
    if (pixelFormat2 != 81)
    {
      pixelFormat3 = [v11 pixelFormat];
      v53 = 40;
      if (pixelFormat3 == 71)
      {
        v53 = 32;
      }

      v51 = (self + v53);
    }

    [v49 setRenderPipelineState:*v51];
    [v49 setDepthStencilState:*(self + 48)];
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v54 = v79;
    v55 = [v54 countByEnumeratingWithState:&v97 objects:v107 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v98;
      v58 = &v108[v87];
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v98 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v60 = *(*(&v97 + 1) + 8 * i);
          vertexBuffer = [v60 vertexBuffer];
          [v49 setVertexBuffer:vertexBuffer offset:0 atIndex:0];

          uvBuffer = [v60 uvBuffer];
          [v49 setVertexBuffer:uvBuffer offset:0 atIndex:1];

          v63 = 0;
          memset(&v96, 0, sizeof(v96));
          v64 = v58->columns[1];
          v65 = v58->columns[2];
          v66 = v58->columns[3];
          v102 = v58->columns[0];
          v103 = v64;
          v104 = v65;
          v105 = v66;
          memset(&v106, 0, sizeof(v106));
          do
          {
            v106.columns[v63 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C25C8910, COERCE_FLOAT(*(&v102 + v63))), xmmword_1C25C8BC0, *(&v102 + v63), 1), xmmword_1C25C93C0, *(&v102 + v63), 2), xmmword_1C25C93D0, *(&v102 + v63), 3);
            v63 += 16;
          }

          while (v63 != 64);
          v93 = v106.columns[0];
          v95 = v106.columns[1];
          v89 = v106.columns[3];
          v91 = v106.columns[2];
          [v60 transform_world_from_primitive];
          v67 = 0;
          v102 = v68;
          v103 = v69;
          v104 = v70;
          v105 = v71;
          memset(&v106, 0, sizeof(v106));
          do
          {
            v106.columns[v67 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, COERCE_FLOAT(*(&v102 + v67))), v95, *(&v102 + v67), 1), v91, *(&v102 + v67), 2), v89, *(&v102 + v67), 3);
            v67 += 16;
          }

          while (v67 != 64);
          v96 = v106;
          [v49 setVertexBytes:&v96 length:64 atIndex:2];
          [v49 setFragmentBytes:&v101 length:1 atIndex:0];
          texture = [v60 texture];
          [v49 setFragmentTexture:texture atIndex:0];

          nIndices = [v60 nIndices];
          indexBuffer = [v60 indexBuffer];
          [v49 drawIndexedPrimitives:3 indexCount:nIndices indexType:1 indexBuffer:indexBuffer indexBufferOffset:0];
        }

        v56 = [v54 countByEnumeratingWithState:&v97 objects:v107 count:16];
      }

      while (v56);
    }

    [v49 endEncoding];
    v20 = v87 + 1;
    v11 = v80;
  }

  while (v87 != 5);
  if ([v80 mipmapLevelCount] > 1)
  {
    blitCommandEncoder = [commandBuffer blitCommandEncoder];
    [blitCommandEncoder generateMipmapsForTexture:v80];
    [blitCommandEncoder endEncoding];
  }

  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

@end