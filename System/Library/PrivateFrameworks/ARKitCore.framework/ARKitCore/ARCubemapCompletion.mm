@interface ARCubemapCompletion
+ (id)sharedInstance;
- (ARCubemapCompletion)init;
- (id).cxx_construct;
- (id)completeCubemap:(simd_float3)cubemap cameraExposure:(simd_float3)exposure rotationWorldFromCube:(simd_float3)cube;
- (id)completeLatLongImage:(id)image;
- (id)generateSeamSmoothingTexture;
- (id)grayCubemapOfSize:(unint64_t)size;
- (id)toTexture:(id *)texture;
- (unsigned)srgbToLog:(unsigned __int8)log;
- (vImage_Buffer)toVImageBuffer:(SEL)buffer;
- (void)dealloc;
@end

@implementation ARCubemapCompletion

+ (id)sharedInstance
{
  if (+[ARCubemapCompletion sharedInstance]::onceToken != -1)
  {
    +[ARCubemapCompletion sharedInstance];
  }

  v3 = +[ARCubemapCompletion sharedInstance]::sharedInstance;

  return v3;
}

void __37__ARCubemapCompletion_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ARCubemapCompletion);
  v1 = +[ARCubemapCompletion sharedInstance]::sharedInstance;
  +[ARCubemapCompletion sharedInstance]::sharedInstance = v0;
}

- (ARCubemapCompletion)init
{
  v126 = *MEMORY[0x1E69E9840];
  v114.receiver = self;
  v114.super_class = ARCubemapCompletion;
  v2 = [(ARCubemapCompletion *)&v114 init];
  if (!v2)
  {
    goto LABEL_75;
  }

  kdebug_trace();
  v3 = objc_opt_new();
  cubemapConverter = v2->_cubemapConverter;
  v2->_cubemapConverter = v3;

  v5 = objc_opt_new();
  sphericalBlur = v2->_sphericalBlur;
  v2->_sphericalBlur = v5;

  v7 = MTLCreateSystemDefaultDevice();
  device = v2->_device;
  v2->_device = v7;

  v2->_use_model_pre_A11 = [(MTLDevice *)v2->_device supportsFamily:1004]^ 1;
  generateSeamSmoothingTexture = [(ARCubemapCompletion *)v2 generateSeamSmoothingTexture];
  roughness = v2->_roughness;
  v2->_roughness = generateSeamSmoothingTexture;

  v11 = ARKitCoreBundle();
  if (v2->_use_model_pre_A11)
  {
    v12 = @"gan_model_pre_A11";
  }

  else
  {
    v12 = @"gan_model";
  }

  v13 = v12;
  v14 = _ARLogTechnique();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138544130;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v2;
    v122 = 2112;
    v123 = v18;
    v124 = 2112;
    v125 = v13;
    _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@  model choice : %@", buf, 0x2Au);
  }

  v19 = [v11 pathForResource:v13 ofType:@"mlmodelc"];
  v20 = [v19 stringByAppendingPathComponent:@"model.espresso.net"];
  context = espresso_create_context();
  v2->_espresso_ctx = context;
  p_espresso_ctx = &v2->_espresso_ctx;
  if (context)
  {
    v23 = _ARLogTechnique();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using ANE for Completion", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v26 = espresso_create_context();
  *p_espresso_ctx = v26;
  if (v26)
  {
    v23 = _ARLogTechnique();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using GPU for Completion", buf, 0x16u);
    }

LABEL_13:

    if (espresso_context_set_low_precision_accumulation())
    {
      v29 = _ARLogTechnique();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        *buf = 138543618;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Unable to set Espresso low precision accumulation.", buf, 0x16u);
      }
    }

    if (v2->_use_model_pre_A11)
    {
      v2->_espresso_plan = espresso_create_plan();
      v32 = _ARLogTechnique();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Completion model espresso plan at low priority.", buf, 0x16u);
      }
    }

    else
    {
      v2->_espresso_plan = espresso_create_plan();
      v32 = _ARLogTechnique();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Completion model espresso plan at default priority.", buf, 0x16u);
      }
    }

    if (!v2->_espresso_plan)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v43 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v44 = _ARLogGeneral();
      v45 = v44;
      if (v43 == 1)
      {
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          v47 = NSStringFromClass(v46);
          *buf = 138543618;
          *&buf[4] = v47;
          *&buf[12] = 2048;
          *&buf[14] = v2;
          _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Espresso plan creation failed.", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        *buf = 138543618;
        *&buf[4] = v55;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Espresso plan creation failed.", buf, 0x16u);
      }

      espresso_context_destroy();
      goto LABEL_73;
    }

    v37 = v20;
    [v20 UTF8String];
    if (espresso_plan_add_network())
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v38 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v39 = _ARLogGeneral();
      v40 = v39;
      if (v38 == 1)
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v41 = objc_opt_class();
          v42 = NSStringFromClass(v41);
          *buf = 138543618;
          *&buf[4] = v42;
          *&buf[12] = 2048;
          *&buf[14] = v2;
          _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Adding plan to Espresso network failed.", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Adding plan to Espresso network failed.", buf, 0x16u);
      }

LABEL_72:

      espresso_context_destroy();
      espresso_plan_destroy();
      *p_espresso_ctx = 0;
      v2->_espresso_plan = 0;
LABEL_73:
      v76 = v2;
      v75 = 0;
      goto LABEL_74;
    }

    if (espresso_plan_build())
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v48 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v49 = _ARLogGeneral();
      v40 = v49;
      if (v48 == 1)
      {
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          *buf = 138543618;
          *&buf[4] = v51;
          *&buf[12] = 2048;
          *&buf[14] = v2;
          _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Building Espresso plan failed.", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v77 = objc_opt_class();
        v78 = NSStringFromClass(v77);
        *buf = 138543618;
        *&buf[4] = v78;
        *&buf[12] = 2048;
        *&buf[14] = v2;
        _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Building Espresso plan failed.", buf, 0x16u);
      }

      goto LABEL_72;
    }

    v61 = -1.0;
    if (v2->_use_model_pre_A11)
    {
      v61 = 0.0;
    }

    v62 = 0.0078431;
    if (v2->_use_model_pre_A11)
    {
      v62 = 0.0039216;
    }

    v2->_espresso_processing_params.bias_r = v61;
    v2->_espresso_processing_params.bias_g = v61;
    v2->_espresso_processing_params.bias_b = v61;
    v2->_espresso_processing_params.scale = v62;
    v2->_espresso_processing_params.network_wants_bgr = 1;
    espresso_network_query_blob_dimensions();
    v63 = *&buf[8];
    v2->_gan_width = *buf;
    v2->_gan_height = v63;
    MEMORY[0x1C691B940](&v2->_vImageBuffer);
    v64 = 3 * v2->_gan_width * v2->_gan_height;
    std::vector<unsigned char>::reserve(&v2->_randomNumbers.__begin_, v64);
    for (; v64; --v64)
    {
      v115[0] = arc4random_uniform(0xFFu);
      std::vector<unsigned char>::push_back[abi:ne200100](&v2->_randomNumbers, v115);
    }

    if (v2->_use_model_pre_A11)
    {
      std::vector<unsigned char>::reserve(&v2->_srgbToLogLUT_pre_A11.__begin_, 0x100uLL);
      for (i = 0; i != 256; ++i)
      {
        v115[0] = [(ARCubemapCompletion *)v2 srgbToLog:i];
        std::vector<unsigned char>::push_back[abi:ne200100](&v2->_srgbToLogLUT_pre_A11, v115);
      }
    }

    v2->_alpha_threshold = 0.9;
    v2->_bias_exposure_threshold = 0.005;
    newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
    queue = v2->_queue;
    v2->_queue = newCommandQueue;

    [(MTLCommandQueue *)v2->_queue setLabel:@"com.apple.arkit.cubemapcompletion.queue"];
    v2->_espressoInitialized = 1;
    if (espresso_plan_execute_sync())
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v68 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v69 = _ARLogGeneral();
      v70 = v69;
      if (v68 == 1)
      {
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v71 = objc_opt_class();
          v72 = NSStringFromClass(v71);
          *v115 = 138543618;
          v116 = v72;
          v117 = 2048;
          v118 = v2;
          _os_log_impl(&dword_1C241C000, v70, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Espresso warm-up failed...", v115, 0x16u);
        }
      }

      else if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v88 = objc_opt_class();
        v89 = NSStringFromClass(v88);
        *v115 = 138543618;
        v116 = v89;
        v117 = 2048;
        v118 = v2;
        _os_log_impl(&dword_1C241C000, v70, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Espresso warm-up failed...", v115, 0x16u);
      }

      espresso_context_destroy();
      espresso_plan_destroy();
      *p_espresso_ctx = 0;
      v2->_espresso_plan = 0;
      v90 = v2;
      v75 = 0;
      goto LABEL_103;
    }

    v80 = [v11 URLForResource:@"default" withExtension:@"metallib"];
    v81 = v2->_device;
    v113 = 0;
    v109 = v80;
    v82 = [(MTLDevice *)v81 newLibraryWithURL:v80 error:&v113];
    v83 = v113;
    v110 = v82;
    [v82 setLabel:@"com.apple.arkit.cubemapcompletion.library"];
    if (v82)
    {
      v84 = v2->_device;
      if (v2->_use_model_pre_A11)
      {
        v85 = [v82 newFunctionWithName:@"combine_buffers_to_hdr_pre_A11"];
        v112 = v83;
        v86 = &v112;
        v87 = [(MTLDevice *)v84 newComputePipelineStateWithFunction:v85 error:&v112];
      }

      else
      {
        v85 = [v82 newFunctionWithName:@"combine_buffers_to_hdr"];
        v111 = v83;
        v86 = &v111;
        v87 = [(MTLDevice *)v84 newComputePipelineStateWithFunction:v85 error:&v111];
      }

      v96 = v87;
      v97 = *v86;

      combineBuffersToHDR = v2->_combineBuffersToHDR;
      v2->_combineBuffersToHDR = v96;

      if (v2->_combineBuffersToHDR)
      {
        v99 = v110;
        kdebug_trace();
        v75 = 1;
LABEL_102:

LABEL_103:
        v76 = v2;
        goto LABEL_74;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v100 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v101 = _ARLogGeneral();
      v93 = v101;
      if (v100 == 1)
      {
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v102 = objc_opt_class();
          v103 = NSStringFromClass(v102);
          *v115 = 138543874;
          v116 = v103;
          v117 = 2048;
          v118 = v2;
          v119 = 2112;
          v120 = v97;
          _os_log_impl(&dword_1C241C000, v93, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to create combine buffer to hdr pipeline state %@", v115, 0x20u);
        }
      }

      else if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
      {
        v106 = objc_opt_class();
        v107 = NSStringFromClass(v106);
        *v115 = 138543874;
        v116 = v107;
        v117 = 2048;
        v118 = v2;
        v119 = 2112;
        v120 = v97;
        _os_log_impl(&dword_1C241C000, v93, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to create combine buffer to hdr pipeline state %@", v115, 0x20u);
      }

      v83 = v97;
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion init];
      }

      v91 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v92 = _ARLogGeneral();
      v93 = v92;
      if (v91 == 1)
      {
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v94 = objc_opt_class();
          v95 = NSStringFromClass(v94);
          *v115 = 138543874;
          v116 = v95;
          v117 = 2048;
          v118 = v2;
          v119 = 2112;
          v120 = v83;
          _os_log_impl(&dword_1C241C000, v93, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to create MTLLibrary %@", v115, 0x20u);
        }
      }

      else if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
      {
        v104 = objc_opt_class();
        v105 = NSStringFromClass(v104);
        *v115 = 138543874;
        v116 = v105;
        v117 = 2048;
        v118 = v2;
        v119 = 2112;
        v120 = v83;
        _os_log_impl(&dword_1C241C000, v93, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to create MTLLibrary %@", v115, 0x20u);
      }
    }

    v108 = v2;
    v75 = 0;
    v97 = v83;
    v99 = v110;
    goto LABEL_102;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARCubemapCompletion init];
  }

  v56 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v57 = _ARLogGeneral();
  v58 = v57;
  if (v56 == 1)
  {
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      *buf = 138543618;
      *&buf[4] = v60;
      *&buf[12] = 2048;
      *&buf[14] = v2;
      _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Espresso context creation failed.", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    *buf = 138543618;
    *&buf[4] = v74;
    *&buf[12] = 2048;
    *&buf[14] = v2;
    _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Espresso context creation failed.", buf, 0x16u);
  }

  v75 = 0;
  v76 = 0;
LABEL_74:

  if (v75)
  {
LABEL_75:
    v76 = v2;
  }

  return v76;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  free(self->_vImageBuffer.data);
  v3.receiver = self;
  v3.super_class = ARCubemapCompletion;
  [(ARCubemapCompletion *)&v3 dealloc];
}

- (unsigned)srgbToLog:(unsigned __int8)log
{
  v3 = powf(log / 255.0, 2.2);
  v4 = (log10((v3 / 0.18) + 1.0e-16) * 224.999985 + 445.0) / 1023.0;
  return (fmaxf(fminf(v4, 1.0), 0.0) * 255.0);
}

- (id)completeCubemap:(simd_float3)cubemap cameraExposure:(simd_float3)exposure rotationWorldFromCube:(simd_float3)cube
{
  v31.columns[1] = exposure;
  v31.columns[2] = cube;
  v31.columns[0] = cubemap;
  v36 = *MEMORY[0x1E69E9840];
  v9 = a7;
  [v9 width];
  [v9 height];
  kdebug_trace();
  if (*(self + 60))
  {
    __asm { FMOV            V0.2S, #1.0 }

    *(self + 256) = _D0;
    *(self + 264) = 1065353216;
    v15 = *(self + 152);
    *(self + 144) = v15 > a2;
    if (v15 <= a2)
    {
      v16 = v31;
      if (*(self + 224))
      {
        v18 = 255;
      }

      else
      {
        v18 = 128;
      }

      *(self + 160) = v18;
    }

    else
    {
      v16.columns[1] = v31.columns[1];
      v16.columns[2] = v31.columns[2];
      if (*(self + 224))
      {
        *(self + 268) = *(self + 192) / 2;
        *(self + 256) = vdup_n_s32(0x3F7D70A4u);
        *(self + 264) = 1066192077;
      }

      *(self + 160) = 255;
      v16.columns[0] = v31.columns[0];
    }

    v19 = *(self + 120);
    v38 = __invert_f3(v16);
    v20 = [v19 equirectangularTextureFromCubemapTexture:v9 rotation:*(self + 184) width:*(self + 192) height:{*v38.columns[0].i64, *v38.columns[1].i64, *v38.columns[2].i64}];
    v21 = [self completeLatLongImage:v20];
    if (v21)
    {
      v22 = [*(self + 120) cubemapTextureFromEquirectangularTexture:v21 rotation:objc_msgSend(v9 size:{"height"), *v31.columns[0].i64, *v31.columns[1].i64, *v31.columns[2].i64}];
      v17 = [*(self + 128) blurCubemapTexture:v22 roughness:*(self + 136) rotation:{*v31.columns[0].i64, *v31.columns[1].i64, *v31.columns[2].i64}];
      [v17 width];
      [v17 height];
      kdebug_trace();
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARCubemapCompletion completeCubemap:cameraExposure:rotationWorldFromCube:];
      }

      v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v24 = _ARLogGeneral();
      v25 = v24;
      if (v23 == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *buf = 138543618;
          v33 = v27;
          v34 = 2048;
          selfCopy2 = self;
          _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not complete environment texture", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138543618;
        v33 = v29;
        v34 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not complete environment texture", buf, 0x16u);
      }

      v17 = [self grayCubemapOfSize:{objc_msgSend(v9, "width")}];
    }
  }

  else
  {
    v17 = [self grayCubemapOfSize:{objc_msgSend(v9, "width")}];
  }

  return v17;
}

- (id)completeLatLongImage:(id)image
{
  v19 = 0u;
  v20 = 0u;
  [(ARCubemapCompletion *)self toVImageBuffer:image];
  v8 = v19;
  v9 = v20;
  if (espresso_network_bind_input_vimagebuffer_bgra8() || espresso_network_bind_buffer() || !self->_espresso_plan || (kdebug_trace(), espresso_plan_execute_sync()))
  {
    v4 = 0;
  }

  else
  {
    kdebug_trace();
    v6[8] = v16;
    v6[9] = v17;
    v7 = v18;
    v6[4] = v12;
    v6[5] = v13;
    v6[6] = v14;
    v6[7] = v15;
    v6[0] = v8;
    v6[1] = v9;
    v6[2] = v10;
    v6[3] = v11;
    v4 = [(ARCubemapCompletion *)self toTexture:v6];
  }

  return v4;
}

- (vImage_Buffer)toVImageBuffer:(SEL)buffer
{
  v6 = a4;
  [v6 width];
  [v6 height];
  kdebug_trace();
  width = [v6 width];
  height = [v6 height];
  data = self->_vImageBuffer.data;
  rowBytes = self->_vImageBuffer.rowBytes;
  memset(v33, 0, 24);
  v33[3] = width;
  v33[4] = height;
  v33[5] = 1;
  [v6 getBytes:data bytesPerRow:rowBytes fromRegion:v33 mipmapLevel:0];
  v13 = self->_vImageBuffer.data;
  v14 = self->_vImageBuffer.rowBytes;
  begin = self->_randomNumbers.__begin_;
  *&self->_g_avg = 0;
  self->_r_avg = 0.0;
  if (height)
  {
    v16 = 0;
    v17 = 0;
    v18 = (v13 + 1);
    do
    {
      v19 = v18;
      v20 = width;
      if (width)
      {
        while (1)
        {
          LOBYTE(v11) = v19[2];
          v11 = LODWORD(v11);
          LODWORD(v12) = 1132396544;
          v21 = self->_alpha_threshold * 255.0;
          if (v21 >= v11)
          {
            break;
          }

          LOBYTE(v12) = *(v19 - 1);
          g_avg = self->_g_avg;
          v24 = *&v12 / 255.0 + self->_r_avg;
          *&v24 = v24;
          self->_r_avg = *&v24;
          LOBYTE(v24) = *v19;
          v25 = *&v24 / 255.0 + g_avg;
          *&v25 = v25;
          self->_g_avg = *&v25;
          LOBYTE(v25) = v19[1];
          v12 = *&v25 / 255.0 + self->_b_avg;
          *&v12 = v12;
          self->_b_avg = *&v12;
          ++v17;
          if (self->_use_model_pre_A11)
          {
            *(v19 - 1) = self->_srgbToLogLUT_pre_A11.__begin_[*(v19 - 1)];
            *v19 = self->_srgbToLogLUT_pre_A11.__begin_[*v19];
            LOBYTE(v22) = self->_srgbToLogLUT_pre_A11.__begin_[v19[1]];
LABEL_19:
            v19[1] = v22;
          }

          if (self->_use_model_pre_A11 && v16 < self->_bias_height_pre_A11)
          {
            if (v21 >= v11)
            {
              if (self->_outdoorScene)
              {
                LOBYTE(bias_mask) = -16;
              }

              else
              {
                LOBYTE(bias_mask) = -1;
              }

              goto LABEL_29;
            }

LABEL_28:
            LOBYTE(bias_mask) = 0;
            goto LABEL_29;
          }

          if (v21 < v11)
          {
            goto LABEL_28;
          }

          bias_mask = self->_bias_mask;
LABEL_29:
          v19[2] = bias_mask;
          v19 += 4;
          if (!--v20)
          {
            goto LABEL_30;
          }
        }

        if (self->_use_model_pre_A11)
        {
          LOBYTE(v12) = *begin;
          *&v12 = LODWORD(v12);
          if (v16 < self->_bias_height_pre_A11)
          {
            *&v12 = self->_r_bias_pre_A11 * *&v12;
            if (*&v12 > 250.0)
            {
              *&v12 = 250.0;
            }
          }

          *(v19 - 1) = *&v12;
          LOBYTE(v12) = begin[1];
          *&v12 = LODWORD(v12);
          if (v16 < self->_bias_height_pre_A11)
          {
            *&v12 = self->_g_bias_pre_A11 * *&v12;
            if (*&v12 > 250.0)
            {
              *&v12 = 250.0;
            }
          }

          *v19 = *&v12;
          LOBYTE(v12) = begin[2];
          *&v12 = LODWORD(v12);
          if (v16 < self->_bias_height_pre_A11)
          {
            *&v12 = self->_b_bias_pre_A11 * *&v12;
            if (*&v12 > 250.0)
            {
              *&v12 = 250.0;
            }
          }

          begin += 3;
          v22 = *&v12;
        }

        else
        {
          *(v19 - 1) = *begin;
          *v19 = begin[1];
          LOBYTE(v22) = begin[2];
          begin += 3;
        }

        goto LABEL_19;
      }

LABEL_30:
      ++v16;
      v18 += v14;
    }

    while (v16 != height);
    r_avg = self->_r_avg;
    v28 = self->_g_avg;
    b_avg = self->_b_avg;
    v30 = v17;
  }

  else
  {
    b_avg = 0.0;
    v28 = 0.0;
    r_avg = 0.0;
    v30 = 0.0;
  }

  self->_r_avg = powf(r_avg / v30, 2.2);
  self->_g_avg = powf(v28 / v30, 2.2);
  self->_b_avg = powf(b_avg / v30, 2.2);
  kdebug_trace();
  v31 = *&self->_vImageBuffer.width;
  *&retstr->data = *&self->_vImageBuffer.data;
  *&retstr->width = v31;

  return result;
}

- (id)toTexture:(id *)texture
{
  kdebug_trace();
  var4 = texture->var4;
  var5 = texture->var5;
  var0 = texture->var0;
  var10 = texture->var10;
  var11 = texture->var11;
  var9 = texture->var9;
  selfCopy = self;
  v56 = var4;
  if (var5)
  {
    v11 = 0;
    v12 = texture->var0;
    v13 = 0;
    rowBytes = self->_vImageBuffer.rowBytes;
    v55 = texture->var5;
    data = self->_vImageBuffer.data;
    v50 = texture->var9;
    v51 = texture->var10;
    v53 = 4 * var10;
    v15 = 0.0;
    v16 = 4 * var9;
    v52 = texture->var0;
    v17 = 0.0;
    v18 = 0.0;
    do
    {
      v19 = v56;
      if (v56)
      {
        v20 = v12;
        v21 = 3;
        do
        {
          if (!data[v21])
          {
            v22 = *v20;
            if (selfCopy->_use_model_pre_A11)
            {
              v15 = v15 + __exp10(((v22 * 1023.0) + -445.0) * 0.00444444456) * 0.180000007;
              v17 = v17 + __exp10(((v20[var11] * 1023.0) + -445.0) * 0.00444444456) * 0.180000007;
              v18 = v18 + __exp10(((v20[2 * var11] * 1023.0) + -445.0) * 0.00444444456) * 0.180000007;
            }

            else
            {
              v15 = v15 + (__exp10f(v22 + 1.0) + -1.0);
              v17 = v17 + (__exp10f(v20[var11] + 1.0) + -1.0);
              v18 = v18 + (__exp10f(v20[2 * var11] + 1.0) + -1.0);
            }

            ++v11;
          }

          v20 = (v20 + v16);
          v21 += 4;
          --v19;
        }

        while (v19);
      }

      data += rowBytes;
      ++v13;
      v12 = (v12 + v53);
    }

    while (v13 != v55);
    v23 = v11;
    self = selfCopy;
    var5 = v55;
    var4 = v56;
    var10 = v51;
    var0 = v52;
    var9 = v50;
  }

  else
  {
    v23 = 0.0;
    v18 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
  }

  v24 = (((self->_g_avg * 0.7152) + (self->_r_avg * 0.2126)) + (self->_b_avg * 0.0722)) / ((((v17 / v23) * 0.7152) + ((v15 / v23) * 0.2126)) + ((v18 / v23) * 0.0722));
  *v67 = v24;
  if (self->_outdoorScene && var5)
  {
    v25 = 0;
    v26 = 4 * var10;
    v27 = 4 * var9;
    v28 = 0.05 / v24;
    do
    {
      if (var4)
      {
        v29 = 0;
        v30 = v25 * 3.14159265 / var5;
        v31 = (v30 + -0.7854) * (v30 + -0.7854);
        v32 = var0;
        do
        {
          v33 = (1.0 - (v29 / var4)) * 6.28318531;
          v34 = v31 + ((v33 + -1.5708) * (v33 + -1.5708));
          if (v34 < 0.017453)
          {
            v35 = 1.0 - expf((0.017453 - v34) / -0.017453);
            *v32 = ((1.0 - v35) * *v32) + (v28 * v35);
            v32[var11] = ((1.0 - v35) * v32[var11]) + (v28 * v35);
            v32[2 * var11] = ((1.0 - v35) * v32[2 * var11]) + (v28 * v35);
          }

          ++v29;
          v32 = (v32 + v27);
        }

        while (var4 != v29);
      }

      ++v25;
      var0 = (var0 + v26);
    }

    while (v25 != var5);
  }

  if (selfCopy->_generateHDROutput)
  {
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.environmentTexturing.maxHDR"];
    if (selfCopy->_generateHDROutput)
    {
      v37 = 115;
    }

    else
    {
      v37 = 81;
    }
  }

  else
  {
    v36 = 1.0;
    v37 = 81;
  }

  v66 = v36;
  commandBuffer = [(MTLCommandQueue *)selfCopy->_queue commandBuffer];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  v39 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:var4 height:var5 mipmapped:0];
  [v39 setUsage:7];
  v40 = [(MTLDevice *)selfCopy->_device newTextureWithDescriptor:v39];
  v41 = [(MTLDevice *)selfCopy->_device newTextureWithDescriptor:v39];
  v42 = [(MTLDevice *)selfCopy->_device newTextureWithDescriptor:v39];
  [v40 setLabel:@"com.apple.arkit.cubemapcompletion.rplane"];
  [v41 setLabel:@"com.apple.arkit.cubemapcompletion.gplane"];
  [v42 setLabel:@"com.apple.arkit.cubemapcompletion.plane"];
  v43 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v37 width:v56 height:var5 mipmapped:0];

  [v43 setUsage:7];
  v44 = [(MTLDevice *)selfCopy->_device newTextureWithDescriptor:v43];
  [v44 setLabel:@"com.apple.arkit.cubemapcompletion.dst"];
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = v56;
  v64 = var5;
  v65 = 1;
  [v40 replaceRegion:&v60 mipmapLevel:0 withBytes:texture->var0 bytesPerRow:texture->var3[0]];
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = v56;
  v64 = var5;
  v65 = 1;
  [v41 replaceRegion:&v60 mipmapLevel:0 withBytes:texture->var0 + 4 * texture->var11 bytesPerRow:texture->var3[0]];
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = v56;
  v64 = var5;
  v65 = 1;
  [v42 replaceRegion:&v60 mipmapLevel:0 withBytes:texture->var0 + 8 * texture->var11 bytesPerRow:texture->var3[0]];
  [computeCommandEncoder setComputePipelineState:selfCopy->_combineBuffersToHDR];
  [computeCommandEncoder setTexture:v40 atIndex:0];
  [computeCommandEncoder setTexture:v41 atIndex:1];
  [computeCommandEncoder setTexture:v42 atIndex:2];
  [computeCommandEncoder setTexture:v44 atIndex:3];
  [computeCommandEncoder setBytes:&v66 length:4 atIndex:0];
  [computeCommandEncoder setBytes:v67 length:4 atIndex:1];
  [computeCommandEncoder setBytes:v67 length:4 atIndex:2];
  [computeCommandEncoder setBytes:v67 length:4 atIndex:3];
  threadExecutionWidth = [(MTLComputePipelineState *)selfCopy->_combineBuffersToHDR threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)selfCopy->_combineBuffersToHDR maxTotalThreadsPerThreadgroup];
  width = [v44 width];
  height = [v44 height];
  v60 = (threadExecutionWidth + width - 1) / threadExecutionWidth;
  v61 = (maxTotalThreadsPerThreadgroup / threadExecutionWidth + height - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
  v62 = 1;
  v59[0] = threadExecutionWidth;
  v59[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v59[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:&v60 threadsPerThreadgroup:v59];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  [v44 width];
  [v44 height];
  kdebug_trace();

  return v44;
}

- (id)grayCubemapOfSize:(unint64_t)size
{
  v5 = 4 * size;
  v6 = 4 * size * size;
  std::vector<unsigned char>::vector[abi:ne200100](__p, v6);
  if (size)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sizeCopy = size;
      v10 = v7;
      do
      {
        *(__p[0] + v10) = 127;
        *(__p[0] + v10 + 1) = 127;
        *(__p[0] + v10 + 2) = 127;
        *(__p[0] + v10 + 3) = -1;
        v10 += 4;
        --sizeCopy;
      }

      while (sizeCopy);
      ++v8;
      v7 += v5;
    }

    while (v8 != size);
  }

  v11 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:81 size:size mipmapped:0];
  [v11 setUsage:5];
  v12 = [(MTLDevice *)self->_device newTextureWithDescriptor:v11];
  for (i = 0; i != 6; ++i)
  {
    memset(v15, 0, 24);
    v15[3] = size;
    v15[4] = size;
    v15[5] = 1;
    [v12 replaceRegion:v15 mipmapLevel:0 slice:i withBytes:__p[0] bytesPerRow:v5 bytesPerImage:v6];
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v12;
}

- (id)generateSeamSmoothingTexture
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69741C0] textureCubeDescriptorWithPixelFormat:10 size:8 mipmapped:0];
  v4 = [(MTLDevice *)self->_device newTextureWithDescriptor:v3];
  [v4 setLabel:@"com.apple.arkit.cubemapcompletion.roughnesstexture"];
  v18[0] = xmmword_1C25C9300;
  v18[1] = unk_1C25C9310;
  v18[2] = xmmword_1C25C9320;
  v18[3] = unk_1C25C9330;
  v15 = 0uLL;
  *&v16[8] = vdupq_n_s64(8uLL);
  *v16 = 0;
  *&v16[24] = 1;
  [v4 replaceRegion:&v15 mipmapLevel:0 slice:0 withBytes:v18 bytesPerRow:8 bytesPerImage:64];
  v15 = xmmword_1C25C9340;
  *v16 = unk_1C25C9350;
  *&v16[16] = xmmword_1C25C9360;
  v17 = unk_1C25C9370;
  v12 = 0uLL;
  *&v13[8] = vdupq_n_s64(8uLL);
  *v13 = 0;
  *&v13[24] = 1;
  [v4 replaceRegion:&v12 mipmapLevel:0 slice:2 withBytes:&v15 bytesPerRow:8 bytesPerImage:64];
  v12 = xmmword_1C25C9340;
  *v13 = unk_1C25C9350;
  *&v13[16] = xmmword_1C25C9360;
  v14 = unk_1C25C9370;
  memset(v11, 0, 24);
  *(&v11[1] + 8) = vdupq_n_s64(8uLL);
  *(&v11[2] + 1) = 1;
  [v4 replaceRegion:v11 mipmapLevel:0 slice:3 withBytes:&v12 bytesPerRow:8 bytesPerImage:64];
  memset(v11, 0, sizeof(v11));
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = vdupq_n_s64(8uLL);
  v10 = 1;
  [v4 replaceRegion:&v6 mipmapLevel:0 slice:1 withBytes:v11 bytesPerRow:8 bytesPerImage:64];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = vdupq_n_s64(8uLL);
  v10 = 1;
  [v4 replaceRegion:&v6 mipmapLevel:0 slice:4 withBytes:v11 bytesPerRow:8 bytesPerImage:64];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = vdupq_n_s64(8uLL);
  v10 = 1;
  [v4 replaceRegion:&v6 mipmapLevel:0 slice:5 withBytes:v11 bytesPerRow:8 bytesPerImage:64];

  return v4;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 30) = 0;
  *(self + 31) = 0;
  *(self + 29) = 0;
  return self;
}

@end