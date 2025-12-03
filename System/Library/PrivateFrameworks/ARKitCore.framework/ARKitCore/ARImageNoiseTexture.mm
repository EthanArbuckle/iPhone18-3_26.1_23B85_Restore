@interface ARImageNoiseTexture
+ (id)sharedInstanceForCameraPosition:(int64_t)position longEdgeImageResolution:(unsigned int)resolution;
- (ARImageNoiseTexture)initWithNoiseModel:(int)model;
- (float)snrToNoiseIntensity:(float)lastSNR;
@end

@implementation ARImageNoiseTexture

+ (id)sharedInstanceForCameraPosition:(int64_t)position longEdgeImageResolution:(unsigned int)resolution
{
  v4 = *&resolution;
  if (+[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::onceToken != -1)
  {
    +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:];
  }

  dispatch_semaphore_wait(+[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::semaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (+[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::currentCameraPosition != position || +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::currentLongEdgeImageResolution != v4)
  {
    v7 = [[ARImageNoiseTexture alloc] initWithNoiseModel:[ARNoiseParameters modelIdentifierForDevicePosition:position longEdgeImageResolution:v4]];
    v8 = +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::sharedInstance;
    +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::sharedInstance = v7;

    +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::currentCameraPosition = position;
    +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::currentLongEdgeImageResolution = v4;
  }

  dispatch_semaphore_signal(+[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::semaphore);
  v9 = +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::sharedInstance;

  return v9;
}

void __79__ARImageNoiseTexture_sharedInstanceForCameraPosition_longEdgeImageResolution___block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::semaphore;
  +[ARImageNoiseTexture sharedInstanceForCameraPosition:longEdgeImageResolution:]::semaphore = v0;
}

- (ARImageNoiseTexture)initWithNoiseModel:(int)model
{
  v31 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = ARImageNoiseTexture;
  v4 = [(ARImageNoiseTexture *)&v26 init];
  *(v4 + 1) = 0x41C80000C1200000;
  *(v4 + 4) = 1092616192;
  *(v4 + 8) = 2139095040;
  kdebug_trace();
  v5 = MTLCreateSystemDefaultDevice();
  v6 = objc_opt_new();
  [v6 setTextureType:7];
  [v6 setPixelFormat:115];
  [v6 setWidth:256];
  [v6 setHeight:256];
  [v6 setDepth:*(v4 + 4)];
  [v6 setUsage:3];
  v7 = [v5 newTextureWithDescriptor:v6];
  v8 = *(v4 + 5);
  *(v4 + 5) = v7;

  [*(v4 + 5) setLabel:@"com.apple.arkit.imagenoisetexture"];
  if (model == 69)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARImageNoiseTexture initWithNoiseModel:];
    }

    v9 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v10 = _ARLogGeneral();
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543618;
        v28 = v13;
        v29 = 2048;
        v30 = v4;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: No noise model available. Noise texture will be empty.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138543618;
      v28 = v20;
      v29 = 2048;
      v30 = v4;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: No noise model available. Noise texture will be empty.", buf, 0x16u);
    }
  }

  else
  {
    v14 = ARCreateNonFixedPriorityDispatchQueue("com.apple.arkit.imageNoise");
    v15 = *(v4 + 3);
    *(v4 + 3) = v14;

    v16 = *(v4 + 3);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__ARImageNoiseTexture_initWithNoiseModel___block_invoke;
    block[3] = &unk_1E817D928;
    v23 = v5;
    v17 = v4;
    v24 = v17;
    modelCopy = model;
    dispatch_async(v16, block);
    v18 = v24;
    v11 = v17;
  }

  return v4;
}

void __42__ARImageNoiseTexture_initWithNoiseModel___block_invoke(uint64_t a1)
{
  v1 = ARKitCoreBundle();
  v2 = [v1 URLForResource:@"default" withExtension:@"metallib"];
  v80 = v2;
  if (!v2)
  {
    __assert_rtn("[ARImageNoiseTexture initWithNoiseModel:]_block_invoke", "ARImageNoiseTexture.mm", 113, "url != nil");
  }

  v81 = [*(a1 + 32) newLibraryWithURL:v2 error:0];
  [v81 setLabel:@"com.apple.arkit.imagenoisetexture"];
  v3 = *(a1 + 32);
  v4 = [v81 newFunctionWithName:@"repeat"];
  v85 = [v3 newComputePipelineStateWithFunction:v4 error:0];

  v5 = *(a1 + 32);
  v6 = [v81 newFunctionWithName:@"noise_ycbcr_to_srgb"];
  v79 = v1;
  v84 = [v5 newComputePipelineStateWithFunction:v6 error:0];

  v87 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:125 width:256 height:256 mipmapped:0];
  [v87 setUsage:3];
  v86 = [*(a1 + 32) newTextureWithDescriptor:v87];
  [v87 setWidth:320];
  [v87 setHeight:320];
  [v87 setPixelFormat:25];
  v7 = [*(a1 + 32) newTextureWithDescriptor:v87];
  v90 = [*(a1 + 32) newTextureWithDescriptor:v87];
  v89 = [*(a1 + 32) newTextureWithDescriptor:v87];
  v8 = [*(a1 + 32) newTextureWithDescriptor:v87];
  [v87 setPixelFormat:115];
  v9 = [*(a1 + 32) newTextureWithDescriptor:v87];
  [v87 setWidth:256];
  [v87 setHeight:256];
  v10 = [*(a1 + 32) newTextureWithDescriptor:v87];
  [v86 setLabel:@"com.apple.arkit.imagenoisetexture.noiseYCbCr"];
  [v7 setLabel:@"com.apple.arkit.imagenoisetexture.paddedNoiseY"];
  [v90 setLabel:@"com.apple.arkit.imagenoisetexture.paddedNoiseCb"];
  [v89 setLabel:@"com.apple.arkit.imagenoisetexture.paddedNoiseCr"];
  [v8 setLabel:@"com.apple.arkit.imagenoisetexture.paddedBlurBuffer"];
  [v9 setLabel:@"com.apple.arkit.imagenoisetexture.paddedNoiseTile"];
  [v10 setLabel:@"com.apple.arkit.imagenoisetexture.noiseTile"];
  v91 = v10;
  v92 = v9;
  v83 = v8;

  v11 = 5489;
  v114.__x_[0] = 5489;
  for (i = 1; i != 624; ++i)
  {
    v11 = i + 1812433253 * (v11 ^ (v11 >> 30));
    v114.__x_[i] = v11;
  }

  v114.__i_ = 0;
  v112 = 0x3F80000000000000;
  v113 = 0;
  std::vector<float>::vector[abi:ne200100](&v110, 0x40000uLL);
  v13 = v110;
  v14 = v111;
  while (v13 != v14)
  {
    *v13++ = std::normal_distribution<float>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v112, &v114, &v112);
  }

  v78 = [*(a1 + 32) newCommandQueue];
  [v78 setLabel:@"com.apple.arkit.imageNoiseTexture.queue"];
  v15 = [v78 commandBuffer];
  [v78 setLabel:@"com.apple.arkit.imagenoisetexture.queue"];
  v16 = *(a1 + 40);
  *&v18 = v16[2];
  *&v17 = v16[3];
  *&v19 = v16[4];
  v108 = 0;
  v109 = 0;
  __src = 0;
  v20 = v16[3];
  if (v20 >= v16[2])
  {
    v21 = 0;
    v22 = *&v17 - *&v18;
    LODWORD(v18) = -1.0;
    *&v19 = *&v19 + -1.0;
    v23 = v22 / *&v19;
    v88 = v7;
    do
    {
      if (v21 >= v109)
      {
        v24 = __src;
        v25 = v21 - __src;
        v26 = (v21 - __src) >> 2;
        v27 = v26 + 1;
        if ((v26 + 1) >> 62)
        {
          _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
        }

        v28 = v109 - __src;
        if ((v109 - __src) >> 1 > v27)
        {
          v27 = v28 >> 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v29 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](&__src, v29);
        }

        v30 = (v21 - __src) >> 2;
        v31 = (4 * v26);
        v32 = (4 * v26 - 4 * v30);
        *v31 = v20;
        v21 = v31 + 1;
        memcpy(v32, v24, v25);
        v33 = __src;
        __src = v32;
        v108 = v21;
        v109 = 0;
        if (v33)
        {
          operator delete(v33);
        }
      }

      else
      {
        *v21++ = v20;
      }

      v108 = v21;
      v20 = v20 - v23;
      LODWORD(v17) = *(*(a1 + 40) + 8);
    }

    while (v20 >= *&v17);
    if (v21 != __src)
    {
      v34 = 0;
      v82 = vdupq_n_s64(0x100uLL);
      do
      {
        v35 = [v86 width];
        v36 = [v86 height];
        v102 = 0;
        v103 = 0;
        v104 = 0;
        v105[0] = v35;
        v105[1] = v36;
        v105[2] = 1;
        [v86 replaceRegion:&v102 mipmapLevel:0 withBytes:v110 bytesPerRow:{16 * objc_msgSend(v86, "width")}];
        arkit::gaussianMixtureKernels(*(a1 + 48), 0x29, &v102, *(__src + v34));
        v37 = [v15 computeCommandEncoder];
        [v37 setLabel:@"com.apple.arkit.imagenoisetexture.repeatpipeline"];
        v38 = [v85 threadExecutionWidth];
        v39 = [v85 maxTotalThreadsPerThreadgroup];
        v40 = [v7 width];
        v41 = [v7 height];
        [v37 setComputePipelineState:v85];
        [v37 setTexture:v86 atIndex:0];
        [v37 setTexture:v7 atIndex:1];
        [v37 setTexture:v90 atIndex:2];
        [v37 setTexture:v89 atIndex:3];
        v101 = 0;
        LODWORD(v35) = [v7 width];
        v42 = [v86 width];
        v43 = [v88 height];
        v44 = [v86 height];
        LODWORD(v45) = (v35 - v42) >> 1;
        HIDWORD(v45) = (v43 - v44) >> 1;
        v101 = v45;
        [v37 setBytes:&v101 length:8 atIndex:0];
        LODWORD(__p[1]) = 0;
        __p[0] = 0;
        *&v46 = vsqrt_f32(*v102);
        DWORD2(v46) = sqrtf(*(v102 + 2));
        *__p = v46;
        [v37 setBytes:__p length:16 atIndex:1];
        v47 = v39 / v38 - 1;
        v98 = ((v47 + v40) / (v39 / v38));
        v99 = (v47 + v41) / (v39 / v38);
        v100 = 1;
        v96[0] = (v39 / v38);
        v96[1] = (v39 / v38);
        v97 = 1;
        [v37 dispatchThreadgroups:&v98 threadsPerThreadgroup:v96];
        [v37 endEncoding];
        v99 = 0;
        v100 = 0;
        v98 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v98, *v105[0], *(v105[0] + 8), (*(v105[0] + 8) - *v105[0]) >> 2);
        v96[1] = 0;
        v97 = 0;
        v96[0] = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v96, *(v105[0] + 24), *(v105[0] + 32), (*(v105[0] + 32) - *(v105[0] + 24)) >> 2);
        __p[1] = 0;
        v95 = 0;
        __p[0] = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, *(v105[0] + 48), *(v105[0] + 56), (*(v105[0] + 56) - *(v105[0] + 48)) >> 2);
        v48 = objc_alloc(MEMORY[0x1E6974598]);
        v49 = [v48 initWithDevice:*(a1 + 32) kernelWidth:(v99 - v98) >> 2 kernelHeight:1 weights:?];
        v50 = objc_alloc(MEMORY[0x1E6974598]);
        v51 = [v50 initWithDevice:*(a1 + 32) kernelWidth:1 kernelHeight:(v99 - v98) >> 2 weights:?];
        v52 = objc_alloc(MEMORY[0x1E6974598]);
        v53 = [v52 initWithDevice:*(a1 + 32) kernelWidth:(v96[1] - v96[0]) >> 2 kernelHeight:1 weights:?];
        v54 = objc_alloc(MEMORY[0x1E6974598]);
        v55 = [v54 initWithDevice:*(a1 + 32) kernelWidth:1 kernelHeight:(v96[1] - v96[0]) >> 2 weights:?];
        v56 = objc_alloc(MEMORY[0x1E6974598]);
        v57 = [v56 initWithDevice:*(a1 + 32) kernelWidth:(__p[1] - __p[0]) >> 2 kernelHeight:1 weights:?];
        v58 = objc_alloc(MEMORY[0x1E6974598]);
        v59 = [v58 initWithDevice:*(a1 + 32) kernelWidth:1 kernelHeight:(__p[1] - __p[0]) >> 2 weights:?];
        [v49 encodeToCommandBuffer:v15 sourceTexture:v88 destinationTexture:v83];
        [v51 encodeToCommandBuffer:v15 sourceTexture:v83 destinationTexture:v88];
        [v53 encodeToCommandBuffer:v15 sourceTexture:v90 destinationTexture:v83];
        [v55 encodeToCommandBuffer:v15 sourceTexture:v83 destinationTexture:v90];
        [v57 encodeToCommandBuffer:v15 sourceTexture:v89 destinationTexture:v83];
        [v59 encodeToCommandBuffer:v15 sourceTexture:v83 destinationTexture:v89];

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v7 = v88;
        if (v96[0])
        {
          v96[1] = v96[0];
          operator delete(v96[0]);
        }

        if (v98)
        {
          v99 = v98;
          operator delete(v98);
        }

        v60 = [v15 computeCommandEncoder];
        v61 = [v84 threadExecutionWidth];
        v62 = [v84 maxTotalThreadsPerThreadgroup];
        v63 = [v92 width];
        v64 = [v92 height];
        [v60 setComputePipelineState:v84];
        [v60 setTexture:v88 atIndex:0];
        [v60 setTexture:v90 atIndex:1];
        [v60 setTexture:v89 atIndex:2];
        [v60 setTexture:v92 atIndex:3];
        v65 = powf(fmaxf(v106, 0.35), 2.2);
        v66 = pow(v65, -0.545454545) * 0.454545438;
        v67 = 0.23564758 / v65 / v66;
        *__p = v67;
        [v60 setBytes:__p length:4 atIndex:0];
        v68 = v62 / v61 - 1;
        v98 = ((v68 + v63) / (v62 / v61));
        v99 = (v68 + v64) / (v62 / v61);
        v100 = 1;
        v96[0] = (v62 / v61);
        v96[1] = (v62 / v61);
        v97 = 1;
        [v60 dispatchThreadgroups:&v98 threadsPerThreadgroup:v96];
        [v60 endEncoding];

        v69 = [v15 blitCommandEncoder];
        v70 = [v92 width];
        v71 = [v91 width];
        v72 = [v92 height];
        v73 = [v91 height];
        v98 = ((v70 - v71) >> 1);
        v99 = (v72 - v73) >> 1;
        v100 = 0;
        v74 = [v91 width];
        v75 = [v91 height];
        v96[0] = v74;
        v96[1] = v75;
        v97 = 1;
        __p[0] = 0;
        __p[1] = 0;
        v95 = 0;
        [v69 copyFromTexture:v92 sourceSlice:0 sourceLevel:0 sourceOrigin:&v98 sourceSize:v96 toTexture:v91 destinationSlice:0 destinationLevel:0 destinationOrigin:__p];
        [v69 endEncoding];

        v76 = [v15 blitCommandEncoder];
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *v96 = v82;
        v97 = 1;
        v77 = *(*(a1 + 40) + 40);
        __p[0] = 0;
        __p[1] = 0;
        v95 = v34;
        [v76 copyFromTexture:v91 sourceSlice:0 sourceLevel:0 sourceOrigin:&v98 sourceSize:v96 toTexture:v77 destinationSlice:0 destinationLevel:0 destinationOrigin:__p];
        [v76 endEncoding];

        v98 = v105;
        std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v98);
        if (v102)
        {
          v103 = v102;
          operator delete(v102);
        }

        ++v34;
      }

      while (v34 < (v108 - __src) >> 2);
    }
  }

  [v15 addCompletedHandler:{&__block_literal_global_52_0, v17, v19, v18}];
  [v15 commit];
  if (__src)
  {
    v108 = __src;
    operator delete(__src);
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }
}

- (float)snrToNoiseIntensity:(float)lastSNR
{
  if (lastSNR == INFINITY)
  {
    lastSNR = self->_lastSNR;
  }

  self->_lastSNR = lastSNR;
  return (self->_maxSNR - fmaxf(fminf(lastSNR, self->_maxSNR), self->_minSNR)) / (self->_maxSNR - self->_minSNR);
}

@end