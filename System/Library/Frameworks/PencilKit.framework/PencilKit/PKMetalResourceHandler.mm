@interface PKMetalResourceHandler
+ (id)generatePipelineDescriptorsForDevice:(id)device;
+ (id)sharedResourceHandlerWithDevice:(uint64_t)device;
+ (uint64_t)colorSpaceForExtendedDynamicRange;
+ (uint64_t)inkBundle;
- (char)_uberShaderForKey:(char *)key;
- (double)paperTextureSize;
- (id).cxx_construct;
- (id)_createSDFPenEllipseLookupTexture;
- (id)_inkTextureNamed:(uint64_t)named image:;
- (id)_preloadUberShaders;
- (id)_signpostLog;
- (id)cachedQuadTexCoordBuffer;
- (id)cachedQuadVertexBuffer;
- (id)compositeEraseShaderWithMode:(char)mode clipping:(int)clipping colorAttachmentIndex:(char)index secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:;
- (id)compositeMultiplyShaderWithMode:(char)mode clipping:(char)clipping targetMultiple:(int)multiple colorAttachmentIndex:(char)index renderMask:(char)mask edgeMask:(char)edgeMask secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:;
- (id)compositeOverShaderWithMode:(char)mode clipping:(int)clipping colorAttachmentIndex:(unsigned __int8)index renderMask:(char)mask edgeMask:(char)edgeMask secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:;
- (id)compositePaperShaderWithMode:(int)mode colorAttachmentIndex:(char)index secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:;
- (id)compositeSoftWhiteShaderWithMode:(char)mode clipping:(int)clipping colorAttachmentIndex:(unsigned __int8)index renderMask:(char)mask edgeMask:(char)edgeMask secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:;
- (id)indexBufferForNumVertices:(void *)vertices outIndexType:;
- (id)initWithDevice:(char)device generatePipelineDescriptors:;
- (id)initWithDevice:(id)device;
- (id)inkTextureNamed:(uint64_t)named image:;
- (id)kernelPipelineStateForKey:(uint64_t)key;
- (id)namedShaderForKey:(uint64_t)key;
- (id)newBufferWithLength:(uint64_t)length bytes:(uint64_t)bytes outOffset:;
- (id)newGPUBufferWithLength:(uint64_t)length outOffset:(void *)offset commandBuffer:;
- (id)newPurgeableBufferWithLength:(uint64_t)length bytes:(uint64_t)bytes outOffset:;
- (id)paintShaderKernelPipelineState;
- (id)paintShaderKernelPipelineStateWithLiveStrokeMode;
- (id)paintShaderKernelPipelineStateWithLiveStrokeParticles;
- (id)paperTexture;
- (id)particleShaderKernelPipelineStateWithVariableSpacing:(int)spacing particleMasks:;
- (id)randomNumberBuffer;
- (id)sdfPenEllipseLookupTexture;
- (id)sdfPenMaxHeightLookupTexture;
- (id)sdfPenShaderKernelPipelineState;
- (id)shaderLibrary;
- (id)sixChannelShaderWithMode:(char)mode clipping:(char)clipping erase:(char)erase bitmapEraserMask:(char)mask snapshotImage:(char)image renderMask:(char)renderMask secondaryPaintEnabled:(uint64_t)enabled colorAttachmentIndex:(uint64_t)self0 multiplyLayerColorAttachmentIndex:(uint64_t)self1 pipelineConfig:;
- (id)strokeRenderCache;
- (id)uberShaderForKey:(uint64_t)key;
- (id)uint16IndexBuffer;
- (uint64_t)_kernelPipelineStateForKey:(uint64_t)key;
- (uint64_t)_namedShaderForKey:(int8x8_t *)key;
- (uint64_t)_pipelineDescriptorForConfig:(void *)config;
- (uint64_t)isAppInBackground;
- (uint64_t)newPaintShaderKernelPipelineState;
- (uint64_t)randomNumberArray;
- (void)_paintShaderKernelPipelineStateWithLiveStrokeMode:(void *)mode particles:(int)particles;
- (void)_setupPaperTextureIfNecessary;
- (void)deallocateReusableBuffers;
- (void)newComputePipelineDescriptor;
- (void)reloadParticleTexturesIfNecessaryCommandQueue:(uint64_t)queue;
- (void)replaceInkTexture:(uint64_t)texture image:;
@end

@implementation PKMetalResourceHandler

+ (uint64_t)inkBundle
{
  objc_opt_self();
  v0 = MEMORY[0x1E696AAE8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

- (id).cxx_construct
{
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 62) = 1065353216;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 72) = 1065353216;
  return self;
}

void __38__PKMetalResourceHandler__signpostLog__block_invoke()
{
  v0 = os_log_create("com.apple.pencilkit", "metalResourceHandler");
  v1 = qword_1ED6A53A8;
  qword_1ED6A53A8 = v0;
}

- (uint64_t)newPaintShaderKernelPipelineState
{
  selfCopy = self;
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E6974060]);
    newComputePipelineDescriptor = [(PKMetalResourceHandler *)selfCopy newComputePipelineDescriptor];
    [newComputePipelineDescriptor setLabel:@"Paint kernel"];
    v4 = [*(selfCopy + 296) newFunctionWithName:@"paint_kernel" constantValues:v2 error:0];
    [newComputePipelineDescriptor setComputeFunction:v4];

    selfCopy = [*(selfCopy + 424) newComputePipelineStateWithDescriptor:newComputePipelineDescriptor options:0 reflection:0 error:0];
  }

  return selfCopy;
}

- (id)_signpostLog
{
  if (self)
  {
    if (qword_1ED6A53B0 != -1)
    {
      dispatch_once(&qword_1ED6A53B0, &__block_literal_global_155);
    }

    self = qword_1ED6A53A8;
    v1 = vars8;
  }

  return self;
}

- (void)newComputePipelineDescriptor
{
  v2 = objc_opt_new();
  [v2 setPipelineLibrary:*(self + 408)];
  return v2;
}

+ (id)sharedResourceHandlerWithDevice:(uint64_t)device
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v4 = +[PKMetalResourceHandler sharedResourceHandlerWithDevice:]::sResourceHandler;
  if (!+[PKMetalResourceHandler sharedResourceHandlerWithDevice:]::sResourceHandler || *(+[PKMetalResourceHandler sharedResourceHandlerWithDevice:]::sResourceHandler + 424) != v2)
  {
    v5 = [[PKMetalResourceHandler alloc] initWithDevice:v2 generatePipelineDescriptors:0];
    v6 = +[PKMetalResourceHandler sharedResourceHandlerWithDevice:]::sResourceHandler;
    +[PKMetalResourceHandler sharedResourceHandlerWithDevice:]::sResourceHandler = v5;

    v4 = +[PKMetalResourceHandler sharedResourceHandlerWithDevice:]::sResourceHandler;
  }

  v7 = v4;
  objc_sync_exit(v3);

  return v7;
}

- (id)initWithDevice:(char)device generatePipelineDescriptors:
{
  v6 = a2;
  if (!self)
  {
    goto LABEL_11;
  }

  v30.receiver = self;
  v30.super_class = PKMetalResourceHandler;
  v7 = objc_msgSendSuper2(&v30, sel_init);
  self = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = +[PKAppBackgroundStateTracker sharedInstance];
  v7[418] = [v6 supportsFamily:1001];
  v7[419] = [v6 supportsFamily:2002];
  v7[420] = [PKMetalUtility deviceSupportsFramebufferFetch:v6];
  v7[416] = device;
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.PencilKit.MetalResourceHandlerAccessQueue", v9);
  v11 = *(v7 + 46);
  *(v7 + 46) = v10;

  objc_storeStrong(v7 + 53, a2);
  *(v7 + 27) = vdupq_n_s64(0x50uLL);
  *(v7 + 56) = 115;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  LODWORD(v9) = [currentDevice _supportsDeepColor];

  if (v9)
  {
    *(v7 + 27) = vdupq_n_s64(0x228uLL);
LABEL_7:
    v13 = 1;
    goto LABEL_8;
  }

  if (*(v7 + 55) != 80)
  {
    goto LABEL_7;
  }

  v13 = *(v7 + 54) != 80;
LABEL_8:
  v7[421] = v13;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = *(v7 + 11);
  *(v7 + 11) = dictionary;

  v16 = objc_alloc_init(PKLRUCache);
  v17 = *(v7 + 41);
  *(v7 + 41) = v16;

  v18 = *(v7 + 41);
  if (v18)
  {
    *(v18 + 64) = 0x8000000;
  }

  v19 = [[PKMetalResourceHandlerBuffer alloc] initWithSize:0 options:v6 device:0 purgeable:?];
  v20 = *(v7 + 49);
  *(v7 + 49) = v19;

  v21 = [[PKMetalResourceHandlerBuffer alloc] initWithSize:0 options:v6 device:1 purgeable:?];
  v22 = *(v7 + 48);
  *(v7 + 48) = v21;

  v23 = [[PKMetalResourceHandlerBuffer alloc] initWithSize:0x20 options:v6 device:0 purgeable:?];
  v24 = *(v7 + 50);
  *(v7 + 50) = v23;

  _signpostLog = [(PKMetalResourceHandler *)v7 _signpostLog];
  *(v7 + 47) = os_signpost_id_make_with_pointer(_signpostLog, v7 + 368);

  v26 = *(v7 + 46);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PKMetalResourceHandler_initWithDevice_generatePipelineDescriptors___block_invoke;
  block[3] = &unk_1E82D6388;
  self = self;
  selfCopy = self;
  dispatch_async(v26, block);

LABEL_11:
  return self;
}

+ (uint64_t)colorSpaceForExtendedDynamicRange
{
  objc_opt_self();
  if (qword_1ED6A5370 != -1)
  {
    dispatch_once(&qword_1ED6A5370, &__block_literal_global_73);
  }

  return _MergedGlobals_160;
}

CGColorSpaceRef __59__PKMetalResourceHandler_colorSpaceForExtendedDynamicRange__block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  _MergedGlobals_160 = result;
  if (!result)
  {
    result = CGColorSpaceCreateDeviceRGB();
    _MergedGlobals_160 = result;
  }

  return result;
}

+ (id)generatePipelineDescriptorsForDevice:(id)device
{
  deviceCopy = device;
  [deviceCopy startCollectingPipelineDescriptors];
  v4 = [[PKMetalResourceHandler alloc] initWithDevice:deviceCopy generatePipelineDescriptors:1];
  dispatch_sync(v4[46], &__block_literal_global_30_0);
  endCollectingPipelineDescriptors = [deviceCopy endCollectingPipelineDescriptors];

  return endCollectingPipelineDescriptors;
}

void __69__PKMetalResourceHandler_initWithDevice_generatePipelineDescriptors___block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  v2 = a1 + 32;
  v3 = [(PKMetalResourceHandler *)*(a1 + 32) _signpostLog];
  v4 = v3;
  v5 = *(*v2 + 376);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PreloadResources", "", buf, 2u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    if (!*(v6 + 72))
    {
      v7 = [*(v6 + 424) newBufferWithBytes:&-[PKMetalResourceHandler _setupCachedQuad]::vertices length:32 options:0];
      v8 = *(v6 + 72);
      *(v6 + 72) = v7;
    }

    if (!*(v6 + 80))
    {
      v9 = [*(v6 + 424) newBufferWithBytes:&-[PKMetalResourceHandler _setupCachedQuad]::texCoords length:32 options:0];
      v10 = *(v6 + 80);
      *(v6 + 80) = v9;
    }

    v11 = *(a1 + 32);
    if (v11 && !*&v11[37])
    {
      v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v13 = [v12 pathForResource:@"PencilKit_iOS" ofType:@"pipelinelib"];
      if (v13 && (v11[52].i8[0] & 1) == 0)
      {
        v15 = [(PKMetalResourceHandler *)v11 _signpostLog];
        v16 = v15;
        v17 = v11[47];
        if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "LoadPipelineLibrary", "", buf, 2u);
        }

        v18 = v11[53];
        v56 = 0;
        v19 = [v18 newPipelineLibraryWithFilePath:v13 error:&v56];
        v14 = v56;
        v20 = v11[51];
        v11[51] = v19;

        v21 = [(PKMetalResourceHandler *)v11 _signpostLog];
        v22 = v21;
        v23 = v11[47];
        if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v22, OS_SIGNPOST_INTERVAL_END, v23, "LoadPipelineLibrary", "", buf, 2u);
        }
      }

      else
      {
        v14 = 0;
      }

      v24 = [(PKMetalResourceHandler *)v11 _signpostLog];
      v25 = v24;
      v26 = v11[47];
      if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v26, "PreloadShaders", "", buf, 2u);
      }

      v27 = v11[53];
      v55 = v14;
      v28 = [v27 newDefaultLibraryWithBundle:v12 error:&v55];
      v29 = v55;

      objc_storeStrong(&v11[37], v28);
      if (!*&v11[3])
      {
        v30 = [(PKMetalResourceHandler *)v11 newPaintShaderKernelPipelineState];
        v31 = v11[3];
        v11[3] = v30;
      }

      if (!*&v11[8])
      {
        v32 = [PKMetalResourceHandler _paintShaderKernelPipelineStateWithLiveStrokeMode:v11 particles:1];
        v33 = v11[8];
        v11[8] = v32;
      }

      if (!*&v11[7])
      {
        v34 = [PKMetalResourceHandler _paintShaderKernelPipelineStateWithLiveStrokeMode:v11 particles:0];
        v35 = v11[7];
        v11[7] = v34;
      }

      v36 = [(PKMetalResourceHandler *)v11 _kernelPipelineStateForKey:?];
      v37 = [(PKMetalResourceHandler *)v11 _kernelPipelineStateForKey:?];
      v38 = [(PKMetalResourceHandler *)v11 _kernelPipelineStateForKey:?];
      v39 = [(PKMetalResourceHandler *)v11 _kernelPipelineStateForKey:?];
      if (v11[52].i8[0] == 1)
      {
        *buf = 3;
        LODWORD(v58[0]) = 1;
        memset(v58 + 4, 0, 20);
        v59 = 33620226;
        v40 = [(PKMetalResourceHandler *)v11 _namedShaderForKey:buf];
        *buf = 3;
        LODWORD(v58[0]) = 1;
        memset(v58 + 4, 0, 20);
        v59 = 33620226;
        v41 = [(PKMetalResourceHandler *)v11 _namedShaderForKey:buf];
        *buf = 4;
        LODWORD(v58[0]) = 1;
        memset(v58 + 4, 0, 20);
        v59 = 33620226;
        v42 = [(PKMetalResourceHandler *)v11 _namedShaderForKey:buf];
        *buf = 5;
        LODWORD(v58[0]) = 1;
        memset(v58 + 4, 0, 20);
        v59 = 33620226;
        v43 = [(PKMetalResourceHandler *)v11 _namedShaderForKey:buf];
        *buf = 7;
        LODWORD(v58[0]) = 1;
        memset(v58 + 4, 0, 20);
        v59 = 33620226;
        v44 = [(PKMetalResourceHandler *)v11 _namedShaderForKey:buf];
        *buf = 11;
        LODWORD(v58[0]) = 1;
        memset(v58 + 4, 0, 20);
        v59 = 33620226;
        v45 = [(PKMetalResourceHandler *)v11 _namedShaderForKey:buf];
        *buf = 11;
        memset(v58, 0, sizeof(v58));
        v59 = 33620226;
        v46 = [(PKMetalResourceHandler *)v11 _namedShaderForKey:buf];
        *buf = 2;
        LODWORD(v58[0]) = 1;
        memset(v58 + 4, 0, 20);
        v59 = 16843009;
        v47 = [(PKMetalResourceHandler *)v11 _namedShaderForKey:buf];
        *buf = 11;
        LODWORD(v58[0]) = 1;
        memset(v58 + 4, 0, 20);
        v59 = 16843009;
        v48 = [(PKMetalResourceHandler *)v11 _namedShaderForKey:buf];
        v11[52].i8[1] = 0;
        [(PKMetalResourceHandler *)v11 _preloadUberShaders];
        v11[52].i8[1] = 1;
        [(PKMetalResourceHandler *)v11 _preloadUberShaders];
      }

      v49 = [(PKMetalResourceHandler *)v11 _signpostLog];
      v50 = v49;
      v51 = v11[47];
      if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v50, OS_SIGNPOST_INTERVAL_END, v51, "PreloadShaders", "", buf, 2u);
      }

      v11 = *(a1 + 32);
    }
  }

  else
  {
    v11 = 0;
  }

  v52 = [(PKMetalResourceHandler *)v11 _signpostLog];
  v53 = v52;
  v54 = *(*(a1 + 32) + 376);
  if (v54 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v53, OS_SIGNPOST_INTERVAL_END, v54, "PreloadResources", "", buf, 2u);
  }
}

- (id)initWithDevice:(id)device
{
  v3 = a2;
  if (device)
  {
    device = [(PKMetalResourceHandler *)device initWithDevice:v3 generatePipelineDescriptors:0];
  }

  return device;
}

- (id)shaderLibrary
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __39__PKMetalResourceHandler_shaderLibrary__block_invoke;
    v4[3] = &unk_1E82D6868;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)isAppInBackground
{
  v0 = +[PKAppBackgroundStateTracker sharedInstance];
  if (v0)
  {
    v1 = atomic_load(v0 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (id)strokeRenderCache
{
  if (self)
  {
    self = self[41];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_pipelineDescriptorForConfig:(void *)config
{
  v27[1] = *MEMORY[0x1E69E9840];
  v27[0] = a2;
  v4 = config + 27;
  v5 = PKHashBytes(v27, 8);
  v6 = v5;
  v7 = config[28];
  if (!*&v7)
  {
    goto LABEL_17;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= *&v7)
    {
      v9 = v5 % v7.i32[0];
    }
  }

  else
  {
    v9 = (*&v7 + 0xFFFFFFFFLL) & v5;
  }

  v10 = *(*v4 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_17:
    v26 = a2;
    v25 = objc_opt_new();
    [v25 setPipelineLibrary:{config[51], v26}];
    v13 = 0;
    while (1)
    {
      v14 = *(v27 + v13);
      if (v14 > 3)
      {
        switch(v14)
        {
          case 4u:
            v15 = 554;
            break;
          case 5u:
            v15 = config[56];
            break;
          case 6u:
            v15 = 115;
            break;
          default:
            v15 = 0;
            break;
        }
      }

      else if (*(v27 + v13) <= 1u)
      {
        if (v14 != 1)
        {
          goto LABEL_34;
        }

        v15 = 10;
      }

      else if (v14 == 2)
      {
        v15 = 80;
      }

      else
      {
        v15 = 0;
        if (v14 == 3)
        {
          v15 = 552;
        }
      }

      colorAttachments = [v25 colorAttachments];
      v17 = [colorAttachments objectAtIndexedSubscript:v13];
      [v17 setPixelFormat:v15];

      if (++v13 == 8)
      {
LABEL_34:
        [v25 setStencilAttachmentPixelFormat:0];
        [v25 setPipelineLibrary:config[51]];
        v18 = config[28];
        if (v18)
        {
          v19 = vcnt_s8(v18);
          v19.i16[0] = vaddlv_u8(v19);
          if (v19.u32[0] > 1uLL)
          {
            v20 = v6;
            if (v6 >= *&v18)
            {
              v20 = v6 % *&v18;
            }
          }

          else
          {
            v20 = (*&v18 + 0xFFFFFFFFLL) & v6;
          }

          v21 = *(*v4 + 8 * v20);
          if (v21)
          {
            for (i = *v21; i; i = *i)
            {
              v23 = i[1];
              if (v23 == v6)
              {
                if (i[2] == v27[0])
                {
                  goto LABEL_52;
                }
              }

              else
              {
                if (v19.u32[0] > 1uLL)
                {
                  if (v23 >= *&v18)
                  {
                    v23 %= *&v18;
                  }
                }

                else
                {
                  v23 &= *&v18 - 1;
                }

                if (v23 != v20)
                {
                  break;
                }
              }
            }
          }
        }

        operator new();
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_17;
    }

LABEL_16:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (v11[2] != v27[0])
  {
    goto LABEL_16;
  }

  v25 = v11[3];
LABEL_52:

  return v25;
}

- (id)sixChannelShaderWithMode:(char)mode clipping:(char)clipping erase:(char)erase bitmapEraserMask:(char)mask snapshotImage:(char)image renderMask:(char)renderMask secondaryPaintEnabled:(uint64_t)enabled colorAttachmentIndex:(uint64_t)self0 multiplyLayerColorAttachmentIndex:(uint64_t)self1 pipelineConfig:
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__26;
    v18 = __Block_byref_object_dispose__26;
    v19 = 0;
    v11 = *(self + 368);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __200__PKMetalResourceHandler_sixChannelShaderWithMode_clipping_erase_bitmapEraserMask_snapshotImage_renderMask_secondaryPaintEnabled_colorAttachmentIndex_multiplyLayerColorAttachmentIndex_pipelineConfig___block_invoke;
    block[3] = &unk_1E82DB548;
    modeCopy = mode;
    block[6] = enabled;
    block[7] = index;
    imageCopy = image;
    block[8] = a2;
    clippingCopy = clipping;
    eraseCopy = erase;
    maskCopy = mask;
    renderMaskCopy = renderMask;
    attachmentIndexCopy = attachmentIndex;
    block[4] = self;
    block[5] = &v14;
    dispatch_sync(v11, block);
    v12 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __200__PKMetalResourceHandler_sixChannelShaderWithMode_clipping_erase_bitmapEraserMask_snapshotImage_renderMask_secondaryPaintEnabled_colorAttachmentIndex_multiplyLayerColorAttachmentIndex_pipelineConfig___block_invoke(uint64_t a1)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 73);
  v5 = *(a1 + 64);
  v6 = *(a1 + 74);
  v7 = *(a1 + 75);
  v8 = *(a1 + 76);
  v9 = *(a1 + 77);
  v10 = *(a1 + 78);
  v11 = *(a1 + 32);
  LOBYTE(v57) = *(a1 + 72);
  BYTE1(v57) = v4;
  BYTE2(v57) = v8;
  v50 = v6;
  BYTE3(v57) = v6;
  BYTE4(v57) = v7;
  v47 = v9;
  BYTE5(v57) = v9;
  HIWORD(v57) = 0;
  v58 = v5;
  v59 = __PAIR64__(v3, v2);
  v45 = v3;
  v60 = v10;
  if (!v11)
  {
    v44 = 0;
    goto LABEL_85;
  }

  v12 = v11 + 17;
  v13 = PKHashBytes(&v57, 32);
  v14 = v13;
  v15 = v11[18];
  if (!*&v15)
  {
    goto LABEL_28;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v13;
    if (v13 >= *&v15)
    {
      v17 = v13 % v15.i32[0];
    }
  }

  else
  {
    v17 = (*&v15 + 0xFFFFFFFFLL) & v13;
  }

  v18 = *(*v12 + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_28:
    v46 = v10;
    v52 = objc_alloc_init(MEMORY[0x1E6974060]);
    v24 = objc_alloc_init(MEMORY[0x1E6974060]);
    v56 = 1;
    if (v1)
    {
      [v52 setConstantValue:&v56 type:53 atIndex:1];
      [v24 setConstantValue:&v56 type:53 atIndex:1];
    }

    if (v8)
    {
      [v24 setConstantValue:&v56 type:53 atIndex:3];
    }

    if (v4)
    {
      [v24 setConstantValue:&v56 type:53 atIndex:2];
    }

    if (v11[52].i8[4] == 1)
    {
      [v24 setConstantValue:&v56 type:53 atIndex:8];
    }

    if (v50)
    {
      [v24 setConstantValue:&v56 type:53 atIndex:0];
    }

    if (v47)
    {
      [v24 setConstantValue:&v56 type:53 atIndex:9];
    }

    if (v7)
    {
      [v24 setConstantValue:&v56 type:53 atIndex:10];
    }

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        [v24 setConstantValue:&v56 type:53 atIndex:6];
        goto LABEL_51;
      }

      if (v5 != 2)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v5 == 3)
      {
LABEL_46:
        LODWORD(v53) = v45;
        [v24 setConstantValue:&v56 type:53 atIndex:5];
        [v24 setConstantValue:&v53 type:33 atIndex:11];
        goto LABEL_51;
      }

      if (v5 != 4)
      {
        if (v5 == 5)
        {
          goto LABEL_46;
        }

LABEL_51:
        v55 = v2;
        [v24 setConstantValue:&v55 type:33 atIndex:7];
        v25 = v11[37];
        v53 = 0;
        v26 = [v25 newFunctionWithName:@"sixChannelBlend_vertex" constantValues:v52 error:&v53];
        v48 = v53;
        v27 = v11[37];
        v54 = 0;
        v28 = [v27 newFunctionWithName:@"sixChannelBlend_fragment" constantValues:v24 error:&v54];
        v29 = v54;
        if (!v26 || !v28)
        {
          objc_exception_throw(@"Failed to compile shader");
        }

        v61[0] = v46;
        v30 = [(PKMetalResourceHandler *)v11 _pipelineDescriptorForConfig:v46];
        v31 = [PKMetalShader alloc];
        for (i = 0; i != 8; ++i)
        {
          if (!*(v61 + i))
          {
            break;
          }
        }

        v51 = [(PKMetalShader *)v31 initWithVertexFunction:v26 fragmentFunction:v28 blendMode:0 colorAttachmentIndex:v55 sharedPipelineDescriptor:v30 numColorAttachments:i];

        v33 = v11[18];
        if (v33)
        {
          v34 = vcnt_s8(v33);
          v34.i16[0] = vaddlv_u8(v34);
          if (v34.u32[0] > 1uLL)
          {
            v35 = v14;
            if (v14 >= *&v33)
            {
              v35 = v14 % v33.i32[0];
            }
          }

          else
          {
            v35 = (*&v33 + 0xFFFFFFFFLL) & v14;
          }

          v36 = *(*v12 + 8 * v35);
          if (v36)
          {
            v37 = *v36;
            if (v37)
            {
              v44 = v51;
              do
              {
                v38 = v37[1];
                if (v38 == v14)
                {
                  if (v37[2] == v57 && v37[3] == v58 && v37[4] == v59 && v37[5] == v60)
                  {
                    goto LABEL_85;
                  }
                }

                else
                {
                  if (v34.u32[0] > 1uLL)
                  {
                    if (v38 >= *&v33)
                    {
                      v38 %= *&v33;
                    }
                  }

                  else
                  {
                    v38 &= *&v33 - 1;
                  }

                  if (v38 != v35)
                  {
                    break;
                  }
                }

                v37 = *v37;
              }

              while (v37);
            }
          }
        }

        operator new();
      }
    }

    LODWORD(v53) = v45;
    [v24 setConstantValue:&v56 type:53 atIndex:4];
    [v24 setConstantValue:&v53 type:33 atIndex:11];
    goto LABEL_51;
  }

  while (1)
  {
    v20 = v19[1];
    if (v20 == v13)
    {
      break;
    }

    if (v16.u32[0] > 1uLL)
    {
      if (v20 >= *&v15)
      {
        v20 %= *&v15;
      }
    }

    else
    {
      v20 &= *&v15 - 1;
    }

    if (v20 != v17)
    {
      goto LABEL_28;
    }

LABEL_27:
    v19 = *v19;
    if (!v19)
    {
      goto LABEL_28;
    }
  }

  if (v19[2] != v57 || v19[3] != v58 || v19[4] != v59 || v19[5] != v60)
  {
    goto LABEL_27;
  }

  v44 = v19[6];
LABEL_85:
  v42 = *(*(a1 + 40) + 8);
  v43 = *(v42 + 40);
  *(v42 + 40) = v44;
}

void __61__PKMetalResourceHandler__createSDFPenMaxHeightLookupTexture__block_invoke(uint64_t a1)
{
  std::vector<float>::resize(&qword_1ED6A53B8, 0x200uLL);
  v2 = 0;
  v3 = qword_1ED6A53B8;
  do
  {
    memset(&v18, 0, sizeof(v18));
    v16 = v2 * 3.14159265 / 511.0;
    CGAffineTransformMakeRotation(&v18, v16);
    v4 = 0;
    v5 = *(a1 + 32);
    b = v18.b;
    d = v18.d;
    v8 = 0.0;
    ty = v18.ty;
    v17 = 0.0;
    do
    {
      v10 = __sincos_stret(v4 * 3.14159265 / 511.0);
      v11 = v10.__sinval * v5;
      v12 = ty + d * (v10.__sinval * v5) + b * v10.__cosval;
      if (v12 >= 0.0)
      {
        v13 = ty + d * v11 + b * v10.__cosval;
      }

      else
      {
        v13 = -v12;
      }

      if (v13 > v8)
      {
        v17 = atan2(v11, v10.__cosval);
        v8 = v13;
      }

      ++v4;
    }

    while (v4 != 512);
    v14 = v16 + v17;
    if (v16 + v17 > 3.14159265)
    {
      v14 = v16 + v17 + -3.14159265;
    }

    v15 = v14;
    *(v3 + 4 * v2++) = v15;
  }

  while (v2 != 512);
}

- (id)_createSDFPenEllipseLookupTexture
{
  selfCopy = self;
  if (self)
  {
    v2 = [PKInk alloc];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v4 = [(PKInk *)v2 initWithInkType:@"com.apple.ink.fountainpen" color:blackColor];

    behavior = [(PKInk *)v4 behavior];
    v6 = behavior;
    if (behavior)
    {
      [behavior inkTransform];
      v7 = *(&v12[1] + 1);
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      v7 = 0.0;
    }

    v8 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:512 height:1 mipmapped:0];
    if ((atomic_load_explicit(&qword_1ED6A5388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED6A5388))
    {
      __cxa_atexit(std::vector<float>::~vector[abi:ne200100], &qword_1ED6A53D0, &dword_1C7CCA000);
      __cxa_guard_release(&qword_1ED6A5388);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PKMetalResourceHandler__createSDFPenEllipseLookupTexture__block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v11 = v7;
    if (qword_1ED6A5390 != -1)
    {
      dispatch_once(&qword_1ED6A5390, block);
    }

    selfCopy = [selfCopy[53] newTextureWithDescriptor:v8];
    memset(v12, 0, 24);
    *(&v12[1] + 8) = xmmword_1C801EA40;
    *(&v12[2] + 1) = 1;
    [selfCopy replaceRegion:v12 mipmapLevel:0 withBytes:qword_1ED6A53D0 bytesPerRow:2048];
  }

  return selfCopy;
}

void __59__PKMetalResourceHandler__createSDFPenEllipseLookupTexture__block_invoke(uint64_t a1)
{
  std::vector<float>::resize(&qword_1ED6A53D0, 0x200uLL);
  v2 = 0;
  __asm { FMOV            V1.2S, #1.0 }

  _D1.i32[1] = *(a1 + 32);
  v22 = _D1;
  v8 = vdiv_f32(0, _D1);
  v9 = vaddv_f32(vmul_f32(v8, v8)) + -1.0;
  v10 = qword_1ED6A53D0;
  __asm { FMOV            V0.4S, #1.0 }

  do
  {
    v13 = __sincos_stret(v2 * 3.14159265 / 511.0);
    v12.f64[0] = v13.__cosval;
    v12.f64[1] = v13.__sinval;
    v14 = vcvt_f32_f64(v12);
    *&v12.f64[0] = vdiv_f32(v14, v22);
    v15 = vaddv_f32(vmul_f32(*&v12.f64[0], *&v12.f64[0]));
    v16 = vaddv_f32(vmul_f32(v8, *&v12.f64[0]));
    v17 = (v16 * v16) - (v15 * v9);
    v18 = 0;
    if (v17 >= 0.0)
    {
      v19 = sqrtf(v17);
      v20 = fmaxf((-v16 - v19) / v15, (v19 - v16) / v15);
      if (v20 >= 0.0)
      {
        v18 = vmla_n_f32(0, v14, v20);
      }
    }

    v21 = vsub_f32(v14, v18);
    *(v10 + 4 * v2++) = 1.0 - sqrtf(vaddv_f32(vmul_f32(v21, v21)));
  }

  while (v2 != 512);
}

- (id)sdfPenMaxHeightLookupTexture
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __54__PKMetalResourceHandler_sdfPenMaxHeightLookupTexture__block_invoke;
    v4[3] = &unk_1E82D8600;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __54__PKMetalResourceHandler_sdfPenMaxHeightLookupTexture__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (!v3)
  {
    v4 = [(PKMetalResourceHandler *)v2 _createSDFPenEllipseLookupTexture];
    v5 = *(a1 + 32);
    v6 = [PKInk alloc];
    v7 = [MEMORY[0x1E69DC888] blackColor];
    v8 = [(PKInk *)v6 initWithInkType:@"com.apple.ink.fountainpen" color:v7];

    v9 = [(PKInk *)v8 behavior];
    v10 = v9;
    if (v9)
    {
      [v9 inkTransform];
      v11 = *(&v18[1] + 1);
    }

    else
    {
      memset(v18, 0, sizeof(v18));
      v11 = 0.0;
    }

    if ((atomic_load_explicit(&qword_1ED6A5378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED6A5378))
    {
      __cxa_atexit(std::vector<float>::~vector[abi:ne200100], &qword_1ED6A53B8, &dword_1C7CCA000);
      __cxa_guard_release(&qword_1ED6A5378);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__PKMetalResourceHandler__createSDFPenMaxHeightLookupTexture__block_invoke;
    block[3] = &__block_descriptor_36_e5_v8__0l;
    v17 = v11;
    if (qword_1ED6A5380 != -1)
    {
      dispatch_once(&qword_1ED6A5380, block);
    }

    v12 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:512 height:1 mipmapped:0];
    v13 = [*(v5 + 424) newTextureWithDescriptor:v12];
    memset(v18, 0, 24);
    *(&v18[1] + 8) = xmmword_1C801EA40;
    *(&v18[2] + 1) = 1;
    [v13 replaceRegion:v18 mipmapLevel:0 withBytes:qword_1ED6A53B8 bytesPerRow:2048];

    v14 = *(a1 + 32);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v3 = *(*(a1 + 32) + 40);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

- (id)sdfPenEllipseLookupTexture
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__PKMetalResourceHandler_sdfPenEllipseLookupTexture__block_invoke;
    v4[3] = &unk_1E82D8600;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __52__PKMetalResourceHandler_sdfPenEllipseLookupTexture__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (!v3)
  {
    v4 = [(PKMetalResourceHandler *)v2 _createSDFPenEllipseLookupTexture];
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;

    v3 = *(*(a1 + 32) + 48);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (id)kernelPipelineStateForKey:(uint64_t)key
{
  if (key)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__26;
    v11 = __Block_byref_object_dispose__26;
    v12 = 0;
    v2 = *(key + 368);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__PKMetalResourceHandler_kernelPipelineStateForKey___block_invoke;
    block[3] = &unk_1E82DB590;
    block[4] = key;
    block[5] = &v7;
    v6 = a2;
    dispatch_sync(v2, block);
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __52__PKMetalResourceHandler_kernelPipelineStateForKey___block_invoke(uint64_t a1)
{
  v2 = [(PKMetalResourceHandler *)*(a1 + 32) _kernelPipelineStateForKey:?];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (uint64_t)_kernelPipelineStateForKey:(uint64_t)key
{
  v26 = a2;
  if (key)
  {
    v4 = (key + 256);
    v5 = PKHashBytes(&v26, 2);
    v6 = v5;
    v7 = *(key + 264);
    if (v7)
    {
      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v5;
        if (v5 >= *&v7)
        {
          v9 = v5 % v7.i32[0];
        }
      }

      else
      {
        v9 = (*&v7 + 0xFFFFFFFFLL) & v5;
      }

      v10 = *(*v4 + 8 * v9);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v12 == v5)
          {
            if (*(i + 8) == v26)
            {
              v25 = i[3];
              goto LABEL_40;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v12 >= *&v7)
              {
                v12 %= *&v7;
              }
            }

            else
            {
              v12 &= *&v7 - 1;
            }

            if (v12 != v9)
            {
              break;
            }
          }
        }
      }
    }

    newComputePipelineDescriptor = [(PKMetalResourceHandler *)key newComputePipelineDescriptor];
    [newComputePipelineDescriptor setLabel:@"Particle kernel with Variable Particle Spacing"];
    v14 = objc_alloc_init(MEMORY[0x1E6974060]);
    v15 = v14;
    LOBYTE(v27) = 1;
    if (a2)
    {
      [v14 setConstantValue:&v27 type:53 atIndex:3];
    }

    if ((a2 & 0x100) != 0)
    {
      [v15 setConstantValue:&v27 type:53 atIndex:4];
    }

    v16 = [*(key + 296) newFunctionWithName:@"particle_kernel" constantValues:v15 error:0];
    [newComputePipelineDescriptor setComputeFunction:v16];

    v17 = [*(key + 424) newComputePipelineStateWithDescriptor:newComputePipelineDescriptor options:0 reflection:0 error:0];
    v18 = *(key + 264);
    if (!*&v18)
    {
      goto LABEL_39;
    }

    v19 = vcnt_s8(v18);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      v20 = v6;
      if (v6 >= *&v18)
      {
        v20 = v6 % *&v18;
      }
    }

    else
    {
      v20 = (*&v18 + 0xFFFFFFFFLL) & v6;
    }

    v21 = *(*v4 + 8 * v20);
    if (!v21 || (v22 = *v21) == 0)
    {
LABEL_39:
      operator new();
    }

    while (1)
    {
      v23 = v22[1];
      if (v23 == v6)
      {
        if (*(v22 + 8) == v26)
        {
          v25 = v17;
          goto LABEL_40;
        }
      }

      else
      {
        if (v19.u32[0] > 1uLL)
        {
          if (v23 >= *&v18)
          {
            v23 %= *&v18;
          }
        }

        else
        {
          v23 &= *&v18 - 1;
        }

        if (v23 != v20)
        {
          goto LABEL_39;
        }
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_39;
      }
    }
  }

  v25 = 0;
LABEL_40:

  return v25;
}

- (id)particleShaderKernelPipelineStateWithVariableSpacing:(int)spacing particleMasks:
{
  if (self)
  {
    v4 = 256;
    if (!spacing)
    {
      v4 = 0;
    }

    self = [(PKMetalResourceHandler *)self kernelPipelineStateForKey:?];
    v3 = vars8;
  }

  return self;
}

- (id)paintShaderKernelPipelineState
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __56__PKMetalResourceHandler_paintShaderKernelPipelineState__block_invoke;
    v4[3] = &unk_1E82D8600;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __56__PKMetalResourceHandler_paintShaderKernelPipelineState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (!v3)
  {
    v4 = [(PKMetalResourceHandler *)v2 newPaintShaderKernelPipelineState];
    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = v4;

    v3 = *(*(a1 + 32) + 24);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (id)sdfPenShaderKernelPipelineState
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__PKMetalResourceHandler_sdfPenShaderKernelPipelineState__block_invoke;
    v4[3] = &unk_1E82D8600;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __57__PKMetalResourceHandler_sdfPenShaderKernelPipelineState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6974060]);
    v5 = [(PKMetalResourceHandler *)v2 newComputePipelineDescriptor];
    [v5 setLabel:@"Fountain Pen kernel"];
    v6 = [*(v2 + 296) newFunctionWithName:@"sdfPen_kernel" constantValues:v4 error:0];
    [v5 setComputeFunction:v6];

    v7 = [*(v2 + 424) newComputePipelineStateWithDescriptor:v5 options:0 reflection:0 error:0];
    v8 = *(a1 + 32);
    v9 = *(v8 + 32);
    *(v8 + 32) = v7;

    v3 = *(*(a1 + 32) + 32);
  }

  v10 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v10, v3);
}

- (void)_paintShaderKernelPipelineStateWithLiveStrokeMode:(void *)mode particles:(int)particles
{
  modeCopy = mode;
  if (mode)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6974060]);
    newComputePipelineDescriptor = [(PKMetalResourceHandler *)modeCopy newComputePipelineDescriptor];
    [newComputePipelineDescriptor setLabel:@"Paint kernel"];
    v14 = 1;
    [v4 setConstantValue:&v14 type:53 atIndex:2];
    if (particles)
    {
      [v4 setConstantValue:&v14 type:53 atIndex:3];
    }

    v6 = modeCopy[37];
    v13 = 0;
    v7 = [v6 newFunctionWithName:@"paint_kernel" constantValues:v4 error:&v13];
    v8 = v13;
    [newComputePipelineDescriptor setComputeFunction:v7];

    v9 = modeCopy[53];
    v12 = v8;
    modeCopy = [v9 newComputePipelineStateWithDescriptor:newComputePipelineDescriptor options:0 reflection:0 error:&v12];
    v10 = v12;
  }

  return modeCopy;
}

- (id)paintShaderKernelPipelineStateWithLiveStrokeParticles
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __79__PKMetalResourceHandler_paintShaderKernelPipelineStateWithLiveStrokeParticles__block_invoke;
    v4[3] = &unk_1E82D8600;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __79__PKMetalResourceHandler_paintShaderKernelPipelineStateWithLiveStrokeParticles__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (!v3)
  {
    v4 = [PKMetalResourceHandler _paintShaderKernelPipelineStateWithLiveStrokeMode:v2 particles:1];
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    v3 = *(*(a1 + 32) + 64);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (id)paintShaderKernelPipelineStateWithLiveStrokeMode
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __74__PKMetalResourceHandler_paintShaderKernelPipelineStateWithLiveStrokeMode__block_invoke;
    v4[3] = &unk_1E82D8600;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __74__PKMetalResourceHandler_paintShaderKernelPipelineStateWithLiveStrokeMode__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (!v3)
  {
    v4 = [PKMetalResourceHandler _paintShaderKernelPipelineStateWithLiveStrokeMode:v2 particles:0];
    v5 = *(a1 + 32);
    v6 = *(v5 + 56);
    *(v5 + 56) = v4;

    v3 = *(*(a1 + 32) + 56);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (id)namedShaderForKey:(uint64_t)key
{
  v16 = *MEMORY[0x1E69E9840];
  if (key)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__26;
    v10 = __Block_byref_object_dispose__26;
    v11 = 0;
    v2 = *(key + 368);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PKMetalResourceHandler_namedShaderForKey___block_invoke;
    block[3] = &unk_1E82DB5B8;
    block[4] = key;
    block[5] = &v6;
    v3 = a2[1];
    v13 = *a2;
    v14 = v3;
    v15 = *(a2 + 4);
    dispatch_sync(v2, block);
    v4 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __44__PKMetalResourceHandler_namedShaderForKey___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v7[0] = *(a1 + 48);
  v7[1] = v3;
  v8 = *(a1 + 80);
  v4 = [(PKMetalResourceHandler *)v2 _namedShaderForKey:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (uint64_t)_namedShaderForKey:(int8x8_t *)key
{
  v166[3] = *MEMORY[0x1E69E9840];
  if (key)
  {
    v4 = key + 22;
    v5 = PKHashBytes(a2, 40);
    v6 = key[23];
    if (!*&v6 || ((v7 = v5, v8 = vcnt_s8(v6), v8.i16[0] = vaddlv_u8(v8), v9 = v8.u32[0], v8.u32[0] > 1uLL) ? (v5 >= *&v6 ? (v10 = v5 % v6.i32[0]) : (v10 = v5)) : (v10 = (*&v6 + 0xFFFFFFFFLL) & v5), (v11 = *(*v4 + 8 * v10)) == 0 || (v12 = *v11) == 0))
    {
LABEL_19:
      v14 = 0;
      v15 = 1;
      v16 = 2;
      switch(*a2)
      {
        case 1:
          v16 = 0;
          goto LABEL_53;
        case 2:
          v16 = 1;
          goto LABEL_53;
        case 3:
          v14 = 0;
          v15 = 0;
          goto LABEL_77;
        case 4:
          goto LABEL_77;
        case 5:
          v15 = 0;
          v14 = 1;
LABEL_77:
          v94 = *(a2 + 8);
          v96 = *(a2 + 24);
          v95 = *(a2 + 32);
          v166[0] = v95;
          v165 = v94;
          v97 = objc_alloc_init(MEMORY[0x1E6974060]);
          [v97 setConstantValue:&v165 type:33 atIndex:1];
          LOBYTE(v164) = 1;
          if (v14)
          {
            [v97 setConstantValue:&v164 type:53 atIndex:2];
          }

          if (v15)
          {
            [v97 setConstantValue:&v164 type:53 atIndex:4];
          }

          v98 = key[37];
          v162 = 0;
          v99 = [v98 newFunctionWithName:@"particle_vertex" constantValues:v97 error:&v162];
          v100 = v162;
          v101 = key[37];
          v161 = v100;
          v102 = [v101 newFunctionWithName:@"particle_fragment" constantValues:v97 error:&v161];
          v103 = v161;

          if (!v99 || !v102)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v104 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v95];
          v105 = [PKMetalShader alloc];
          v106 = 0;
          if (v96 == 1)
          {
            v107 = 1;
          }

          else
          {
            v107 = 2;
          }

          do
          {
            if (!*(v166 + v106))
            {
              break;
            }

            ++v106;
          }

          while (v106 != 8);
          v17 = [(PKMetalShader *)v105 initWithVertexFunction:v99 fragmentFunction:v102 blendMode:v107 colorAttachmentIndex:v165 sharedPipelineDescriptor:v104 numColorAttachments:v106];

          goto LABEL_113;
        case 6:
          v124 = *(a2 + 32);
          v166[0] = v124;
          v125 = objc_alloc_init(MEMORY[0x1E6974060]);
          LOBYTE(v161) = 1;
          [v125 setConstantValue:&v161 type:53 atIndex:4];
          [v125 setConstantValue:&v161 type:53 atIndex:2];
          v126 = key[37];
          v162 = 0;
          v127 = [v126 newFunctionWithName:@"uber_vertex" constantValues:v125 error:&v162];
          v128 = v162;
          v129 = [*&key[37] newFunctionWithName:@"paper_fragment"];
          v130 = v129;
          if (!v127 || !v129)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v131 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v124];
          v132 = [PKMetalShader alloc];
          for (i = 0; i != 8; ++i)
          {
            if (!*(v166 + i))
            {
              break;
            }
          }

          if (v132)
          {
            v17 = [(PKMetalShader *)v132 initWithVertexFunction:v127 fragmentFunction:v130 blendMode:0 colorAttachmentIndex:0x7FFFFFFFFFFFFFFFLL sharedPipelineDescriptor:v131 numColorAttachments:i];
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_113;
        case 7:
          v79 = *(a2 + 8);
          v80 = *(a2 + 32);
          v81 = *(a2 + 17);
          v82 = *(a2 + 18);
          v166[0] = v80;
          v165 = v79;
          v83 = objc_alloc_init(MEMORY[0x1E6974060]);
          [v83 setConstantValue:&v165 type:33 atIndex:1];
          v84 = objc_alloc_init(MEMORY[0x1E6974060]);
          LOBYTE(v164) = 1;
          [v84 setConstantValue:&v164 type:53 atIndex:4];
          if (v81)
          {
            [v83 setConstantValue:&v164 type:53 atIndex:2];
          }

          if (v82)
          {
            [v83 setConstantValue:&v164 type:53 atIndex:3];
          }

          v85 = key[37];
          v162 = 0;
          v86 = [v85 newFunctionWithName:@"uber_vertex" constantValues:v84 error:&v162];
          v87 = v162;
          v88 = key[37];
          v161 = v87;
          v89 = [v88 newFunctionWithName:@"blit_fragment" constantValues:v83 error:&v161];
          v90 = v161;

          if (!v86 || !v89)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v91 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v80];
          for (j = 0; j != 8; ++j)
          {
            if (!*(v166 + j))
            {
              break;
            }
          }

          v93 = [PKMetalShader alloc];
          v17 = [(PKMetalShader *)v93 initWithVertexFunction:v86 fragmentFunction:v89 blendMode:0 colorAttachmentIndex:v165 sharedPipelineDescriptor:v91 numColorAttachments:j];

          goto LABEL_113;
        case 8:
          v153 = *(a2 + 32);
          v166[0] = v153;
          v154 = [*&key[37] newFunctionWithName:@"lines_vertex"];
          v155 = [*&key[37] newFunctionWithName:@"lines_fragment"];
          v156 = v155;
          if (!v154 || !v155)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v157 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v153];
          for (k = 0; k != 8; ++k)
          {
            if (!*(v166 + k))
            {
              break;
            }
          }

          v159 = [PKMetalShader alloc];
          if (v159)
          {
            v17 = [(PKMetalShader *)v159 initWithVertexFunction:v154 fragmentFunction:v156 blendMode:0 colorAttachmentIndex:0x7FFFFFFFFFFFFFFFLL sharedPipelineDescriptor:v157 numColorAttachments:k];
          }

          else
          {
            v17 = 0;
          }

          if (!v17)
          {
            goto LABEL_140;
          }

          goto LABEL_114;
        case 9:
          v56 = *(a2 + 32);
          v166[0] = v56;
          v57 = objc_alloc_init(MEMORY[0x1E6974060]);
          LOBYTE(v161) = 1;
          [v57 setConstantValue:&v161 type:53 atIndex:4];
          v58 = key[37];
          v162 = 0;
          v59 = [v58 newFunctionWithName:@"uber_vertex" constantValues:v57 error:&v162];
          v60 = v162;
          v61 = [*&key[37] newFunctionWithName:@"paint_circle_fragment"];
          v62 = v61;
          if (!v59 || !v61)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v63 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v56];
          v64 = [PKMetalShader alloc];
          for (m = 0; m != 8; ++m)
          {
            if (!*(v166 + m))
            {
              break;
            }
          }

          v17 = [(PKMetalShader *)v64 initWithVertexFunction:v59 fragmentFunction:v62 blendMode:2 colorAttachmentIndex:3 sharedPipelineDescriptor:v63 numColorAttachments:m];

          goto LABEL_113;
        case 0xALL:
          v134 = *(a2 + 32);
          v166[0] = v134;
          v135 = objc_alloc_init(MEMORY[0x1E6974060]);
          LOBYTE(v161) = 1;
          [v135 setConstantValue:&v161 type:53 atIndex:4];
          v136 = key[37];
          v162 = 0;
          v137 = [v136 newFunctionWithName:@"paint_vertex" constantValues:v135 error:&v162];
          v138 = v162;
          v139 = [*&key[37] newFunctionWithName:@"fill_white"];
          v140 = v139;
          if (!v137 || !v139)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v141 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v134];
          v142 = [PKMetalShader alloc];
          for (n = 0; n != 8; ++n)
          {
            if (!*(v166 + n))
            {
              break;
            }
          }

          v17 = [(PKMetalShader *)v142 initWithVertexFunction:v137 fragmentFunction:v140 blendMode:5 colorAttachmentIndex:0 sharedPipelineDescriptor:v141 numColorAttachments:n];

          goto LABEL_113;
        case 0xBLL:
          v30 = *(a2 + 8);
          v31 = *(a2 + 32);
          v166[0] = v31;
          v165 = v30;
          v32 = objc_alloc_init(MEMORY[0x1E6974060]);
          v33 = objc_alloc_init(MEMORY[0x1E6974060]);
          [v33 setConstantValue:&v165 type:33 atIndex:1];
          LOBYTE(v164) = 1;
          [v32 setConstantValue:&v164 type:53 atIndex:4];
          v34 = key[37];
          v162 = 0;
          v35 = [v34 newFunctionWithName:@"uber_vertex" constantValues:v32 error:&v162];
          v36 = v162;
          v37 = key[37];
          v161 = v36;
          v38 = [v37 newFunctionWithName:@"erase_fragment" constantValues:v33 error:&v161];
          v39 = v161;

          if (!v35 || !v38)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v40 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v31];
          v41 = [PKMetalShader alloc];
          for (ii = 0; ii != 8; ++ii)
          {
            if (!*(v166 + ii))
            {
              break;
            }
          }

          if (v41)
          {
            v17 = [(PKMetalShader *)v41 initWithVertexFunction:v35 fragmentFunction:v38 blendMode:0 colorAttachmentIndex:0x7FFFFFFFFFFFFFFFLL sharedPipelineDescriptor:v40 numColorAttachments:ii];
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_113;
        case 0xCLL:
          v43 = *(a2 + 8);
          v44 = *(a2 + 32);
          v166[0] = v44;
          v165 = v43;
          LOBYTE(v164) = 1;
          v45 = objc_alloc_init(MEMORY[0x1E6974060]);
          [v45 setConstantValue:&v164 type:53 atIndex:4];
          [v45 setConstantValue:&v164 type:53 atIndex:2];
          v46 = objc_alloc_init(MEMORY[0x1E6974060]);
          [v46 setConstantValue:&v165 type:33 atIndex:1];
          v47 = key[37];
          v162 = 0;
          v48 = [v47 newFunctionWithName:@"uber_vertex" constantValues:v45 error:&v162];
          v49 = v162;
          v50 = key[37];
          v161 = v49;
          v51 = [v50 newFunctionWithName:@"fill_color" constantValues:v46 error:&v161];
          v52 = v161;

          if (!v48 || !v51)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v53 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v44];
          for (jj = 0; jj != 8; ++jj)
          {
            if (!*(v166 + jj))
            {
              break;
            }
          }

          v55 = [PKMetalShader alloc];
          if (v55)
          {
            v17 = [(PKMetalShader *)v55 initWithVertexFunction:v48 fragmentFunction:v51 blendMode:0 colorAttachmentIndex:0x7FFFFFFFFFFFFFFFLL sharedPipelineDescriptor:v53 numColorAttachments:jj];
          }

          else
          {
            v17 = 0;
          }

          goto LABEL_113;
        case 0xDLL:
          v109 = *(a2 + 8);
          v108 = *(a2 + 12);
          v110 = *(a2 + 32);
          v111 = *(a2 + 17);
          v112 = *(a2 + 18);
          v166[0] = v110;
          v164 = v109;
          v165 = v108;
          v113 = objc_alloc_init(MEMORY[0x1E6974060]);
          [v113 setConstantValue:&v165 type:33 atIndex:1];
          [v113 setConstantValue:&v164 type:33 atIndex:2];
          v114 = objc_alloc_init(MEMORY[0x1E6974060]);
          v163 = 1;
          [v114 setConstantValue:&v163 type:53 atIndex:4];
          if (v111)
          {
            [v113 setConstantValue:&v163 type:53 atIndex:3];
          }

          if (v112)
          {
            [v113 setConstantValue:&v163 type:53 atIndex:4];
          }

          v115 = key[37];
          v162 = 0;
          v116 = [v115 newFunctionWithName:@"uber_vertex" constantValues:v114 error:&v162];
          v117 = v162;
          v118 = key[37];
          v161 = v117;
          v119 = [v118 newFunctionWithName:@"copy_framebuffer_fragment" constantValues:v113 error:&v161];
          v120 = v161;

          if (!v116 || !v119)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v121 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v110];
          for (kk = 0; kk != 8; ++kk)
          {
            if (!*(v166 + kk))
            {
              break;
            }
          }

          v123 = [PKMetalShader alloc];
          v17 = [(PKMetalShader *)v123 initWithVertexFunction:v116 fragmentFunction:v119 blendMode:0 colorAttachmentIndex:v164 sharedPipelineDescriptor:v121 numColorAttachments:kk];

          goto LABEL_113;
        case 0xELL:
          v18 = *(a2 + 8);
          v19 = *(a2 + 32);
          v166[0] = v19;
          v165 = v18;
          v20 = objc_alloc_init(MEMORY[0x1E6974060]);
          [v20 setConstantValue:&v165 type:33 atIndex:1];
          v21 = key[37];
          v162 = 0;
          v22 = [v21 newFunctionWithName:@"sdfPen_vertex" constantValues:v20 error:&v162];
          v23 = v162;
          v24 = key[37];
          v161 = v23;
          v25 = [v24 newFunctionWithName:@"sdfPen_fragment" constantValues:v20 error:&v161];
          v26 = v161;

          if (!v22 || !v25)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v27 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v19];
          v28 = [PKMetalShader alloc];
          for (mm = 0; mm != 8; ++mm)
          {
            if (!*(v166 + mm))
            {
              break;
            }
          }

          v17 = [(PKMetalShader *)v28 initWithVertexFunction:v22 fragmentFunction:v25 blendMode:1 colorAttachmentIndex:v165 sharedPipelineDescriptor:v27 numColorAttachments:mm];

          goto LABEL_113;
        case 0xFLL:
          goto LABEL_53;
        case 0x10:
          v16 = 3;
LABEL_53:
          v66 = *(a2 + 8);
          v67 = *(a2 + 32);
          v166[0] = v67;
          v165 = v66;
          v68 = objc_alloc_init(MEMORY[0x1E6974060]);
          [v68 setConstantValue:&v165 type:33 atIndex:1];
          LOBYTE(v164) = 1;
          if (v16 > 1)
          {
            if (v16 == 2)
            {
              v69 = 4;
            }

            else
            {
              v69 = 5;
            }
          }

          else
          {
            if (!v16)
            {
              goto LABEL_60;
            }

            v69 = 2;
          }

          [v68 setConstantValue:&v164 type:53 atIndex:v69];
LABEL_60:
          v70 = key[37];
          v162 = 0;
          v71 = [v70 newFunctionWithName:@"paint_vertex" constantValues:v68 error:&v162];
          v72 = v162;
          v73 = key[37];
          v161 = v72;
          v74 = [v73 newFunctionWithName:@"paint_fragment" constantValues:v68 error:&v161];
          v75 = v161;

          if (!v71 || !v74)
          {
            objc_exception_throw(@"Failed to compile shader");
          }

          v76 = [(PKMetalResourceHandler *)key _pipelineDescriptorForConfig:v67];
          v77 = [PKMetalShader alloc];
          for (nn = 0; nn != 8; ++nn)
          {
            if (!*(v166 + nn))
            {
              break;
            }
          }

          v17 = [(PKMetalShader *)v77 initWithVertexFunction:v71 fragmentFunction:v74 blendMode:1 colorAttachmentIndex:v165 sharedPipelineDescriptor:v76 numColorAttachments:nn];

LABEL_113:
          if (!v17)
          {
            goto LABEL_140;
          }

LABEL_114:
          v144 = PKHashBytes(a2, 40);
          v145 = v144;
          v146 = key[23];
          if (!*&v146)
          {
            goto LABEL_131;
          }

          v147 = vcnt_s8(v146);
          v147.i16[0] = vaddlv_u8(v147);
          v148 = v147.u32[0];
          if (v147.u32[0] > 1uLL)
          {
            v149 = v144;
            if (v144 >= *&v146)
            {
              v149 = v144 % v146.i32[0];
            }
          }

          else
          {
            v149 = (*&v146 + 0xFFFFFFFFLL) & v144;
          }

          v150 = *(*v4 + 8 * v149);
          if (!v150)
          {
            goto LABEL_131;
          }

          v151 = *v150;
          if (!*v150)
          {
            goto LABEL_131;
          }

          break;
        default:
          goto LABEL_21;
      }

      while (1)
      {
        v152 = v151[1];
        if (v152 == v145)
        {
          if (PKNamedShaderKey::operator==((v151 + 2), a2))
          {
            goto LABEL_140;
          }
        }

        else
        {
          if (v148 > 1)
          {
            if (v152 >= *&v146)
            {
              v152 %= *&v146;
            }
          }

          else
          {
            v152 &= *&v146 - 1;
          }

          if (v152 != v149)
          {
LABEL_131:
            operator new();
          }
        }

        v151 = *v151;
        if (!v151)
        {
          goto LABEL_131;
        }
      }
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        if (PKNamedShaderKey::operator==((v12 + 2), a2))
        {
          v17 = v12[7];
          goto LABEL_140;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v6)
          {
            v13 %= *&v6;
          }
        }

        else
        {
          v13 &= *&v6 - 1;
        }

        if (v13 != v10)
        {
          goto LABEL_19;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_21:
  v17 = 0;
LABEL_140:

  return v17;
}

- (id)_preloadUberShaders
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(self + 417);
  *v20 = 3;
  if (v2)
  {
    v3 = 16843009;
  }

  else
  {
    v3 = 33620226;
  }

  *&v20[8] = 0;
  v20[10] = 0;
  v20[11] = v2;
  *&v20[20] = 0;
  *&v20[12] = 0;
  v21 = v3;
  v22 = 0;
  v4 = [(PKMetalResourceHandler *)self _uberShaderForKey:v20];
  v5 = *(self + 417);
  if (v5)
  {
    v6 = 16843009;
  }

  else
  {
    v6 = 33620226;
  }

  *v20 = 3;
  *&v20[8] = 0;
  v20[10] = 1;
  v20[11] = v5;
  *&v20[12] = 0;
  *&v20[16] = 1;
  *&v20[24] = 0;
  v21 = v6;
  v22 = 0;
  v7 = [(PKMetalResourceHandler *)self _uberShaderForKey:v20];
  if (*(self + 417) == 1)
  {
    *v20 = xmmword_1C801EA50;
    *&v20[16] = 4;
    *&v20[24] = 3;
    v21 = 16843009;
    v22 = 0;
    v8 = [(PKMetalResourceHandler *)self _uberShaderForKey:v20];
    *v20 = xmmword_1C801EA60;
    *&v20[16] = 0;
    *&v20[24] = 3;
    v21 = 16843009;
    v22 = 0;
    return [(PKMetalResourceHandler *)self _uberShaderForKey:v20];
  }

  else
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = 0;
      v19 = v11;
      v13 = 1;
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = *(&xmmword_1C801EA50 + v12);
        do
        {
          v17 = qword_1C801EAA0[v14];
          *v20 = v16;
          v20[8] = v10;
          *&v20[9] = 0;
          *&v20[12] = 0;
          *&v20[16] = v17;
          *&v20[24] = 3;
          v21 = 33620226;
          v22 = 0;
          v18 = [(PKMetalResourceHandler *)self _uberShaderForKey:v20];
          ++v14;
        }

        while (v14 != 3);
        *v20 = v16;
        v20[8] = v10;
        *&v20[9] = 256;
        *&v20[11] = 0;
        v20[15] = 0;
        *&v20[16] = 1;
        *&v20[24] = 3;
        v21 = 33620226;
        v22 = 0;
        result = [(PKMetalResourceHandler *)self _uberShaderForKey:v20];
        v13 = 0;
        v12 = 1;
      }

      while ((v15 & 1) != 0);
      v11 = 0;
      v10 = 1;
    }

    while ((v19 & 1) != 0);
  }

  return result;
}

- (id)_inkTextureNamed:(uint64_t)named image:
{
  v56[3] = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (!self)
  {
    cGImage = 0;
    goto LABEL_40;
  }

  cGImage = [*(self + 88) objectForKeyedSubscript:v4];
  if (cGImage)
  {
    goto LABEL_40;
  }

  _signpostLog = [(PKMetalResourceHandler *)self _signpostLog];
  v7 = _signpostLog;
  v8 = *(self + 376);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(_signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "LoadInkTexture", "", buf, 2u);
  }

  v9 = v4;
  v10 = [v9 stringByAppendingString:@"_texture"];
  v39 = v9;

  v41 = v10;
  objc_opt_self();
  v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [MEMORY[0x1E69DCAB8] imageNamed:v41 inBundle:v11];
  v13 = v12;
  cGImage = [v12 CGImage];
  if (cGImage)
  {
    v14 = *MEMORY[0x1E6974400];
    v56[0] = *MEMORY[0x1E6974408];
    v56[1] = v14;
    *buf = &unk_1F47C1550;
    *&buf[8] = &unk_1F47C1568;
    v56[2] = *MEMORY[0x1E69743F8];
    *&buf[16] = MEMORY[0x1E695E110];
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v56 count:3];
    v16 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:*(self + 424)];
    v43 = 0;
    cGImage = [v16 newTextureWithCGImage:cGImage options:v15 error:&v43];
    v17 = v43;
    if (v17)
    {
      v18 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v54 = 138412290;
        v55 = v41;
        _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Error loading texture: %@", v54, 0xCu);
      }
    }
  }

  if (!cGImage)
  {
    objc_opt_self();
    v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v20 = *MEMORY[0x1E6974400];
    v52[0] = *MEMORY[0x1E6974408];
    v52[1] = v20;
    v53[0] = &unk_1F47C1550;
    v53[1] = &unk_1F47C1568;
    v52[2] = *MEMORY[0x1E69743F8];
    v53[2] = MEMORY[0x1E695E110];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
    v22 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:*(self + 424)];
    v42 = 0;
    cGImage = [v22 newTextureWithName:v41 scaleFactor:v19 bundle:v21 options:&v42 error:1.0];
    v23 = v42;
    if (v23 || ![cGImage width])
    {
      if (!named)
      {
        goto LABEL_16;
      }
    }

    else
    {
      height = [cGImage height];
      if (!named || height)
      {
LABEL_17:
        if ([cGImage width])
        {
          v23 = 0;
          if ([cGImage height])
          {
LABEL_28:

            goto LABEL_29;
          }
        }

        else
        {
          v23 = 0;
        }

LABEL_25:
        v27 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412546;
          *&buf[4] = v39;
          *&buf[12] = 2112;
          *&buf[14] = v23;
          _os_log_fault_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_FAULT, "Failed to load texture: %@, error: %@", buf, 0x16u);
        }

        goto LABEL_28;
      }
    }

    v24 = [v22 newTextureWithCGImage:v39 options:? error:?];
    v25 = v23;

    v23 = v25;
    cGImage = v24;
LABEL_16:
    if (v23)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

LABEL_29:
  isAppInBackground = [PKMetalResourceHandler isAppInBackground];
  v29 = os_log_create("com.apple.pencilkit", "");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    width = [cGImage width];
    height2 = [cGImage height];
    depth = [cGImage depth];
    pixelFormat = [cGImage pixelFormat];
    *buf = 138413570;
    *&buf[4] = v41;
    *&buf[12] = 2048;
    *&buf[14] = width;
    *&buf[22] = 2048;
    v45 = height2;
    v46 = 2048;
    v47 = depth;
    v48 = 2048;
    v49 = pixelFormat;
    v50 = 1024;
    v51 = isAppInBackground;
    _os_log_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_DEFAULT, "Loaded ink texture: %@, size: %lu, %lu, %lu, pixelFormat: %lu, inBackground: %d", buf, 0x3Au);
  }

  if (isAppInBackground)
  {
    v34 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v34, OS_LOG_TYPE_ERROR, "App was in the background when loading a texture.", buf, 2u);
    }
  }

  else
  {
    [*(self + 88) setObject:cGImage forKeyedSubscript:v39];
  }

  _signpostLog2 = [(PKMetalResourceHandler *)self _signpostLog];
  v36 = _signpostLog2;
  v37 = *(self + 376);
  if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(_signpostLog2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v36, OS_SIGNPOST_INTERVAL_END, v37, "LoadInkTexture", "", buf, 2u);
  }

LABEL_40:

  return cGImage;
}

- (id)compositePaperShaderWithMode:(int)mode colorAttachmentIndex:(char)index secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    HIBYTE(v6) = 0;
    *(&v6 + 13) = 0;
    *&v6 = a2;
    DWORD2(v6) = 0;
    BYTE12(v6) = index;
    v7 = 4;
    modeCopy = mode;
    enabledCopy = enabled;
    v10 = 0;
    self = [(PKMetalResourceHandler *)self uberShaderForKey:?];
  }

  return self;
}

- (id)uberShaderForKey:(uint64_t)key
{
  v16 = *MEMORY[0x1E69E9840];
  if (key)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__26;
    v10 = __Block_byref_object_dispose__26;
    v11 = 0;
    v2 = *(key + 368);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PKMetalResourceHandler_uberShaderForKey___block_invoke;
    block[3] = &unk_1E82DB5B8;
    block[4] = key;
    block[5] = &v6;
    v3 = a2[1];
    v13 = *a2;
    v14 = v3;
    v15 = *(a2 + 4);
    dispatch_sync(v2, block);
    v4 = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)compositeOverShaderWithMode:(char)mode clipping:(int)clipping colorAttachmentIndex:(unsigned __int8)index renderMask:(char)mask edgeMask:(char)edgeMask secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    HIBYTE(v9) = 0;
    *(&v9 + 13) = 0;
    *&v9 = a2;
    BYTE8(v9) = mode;
    *(&v9 + 9) = index;
    BYTE11(v9) = mask;
    BYTE12(v9) = edgeMask;
    v10 = 0;
    clippingCopy = clipping;
    enabledCopy = enabled;
    v13 = 0;
    self = [(PKMetalResourceHandler *)self uberShaderForKey:?];
  }

  return self;
}

- (id)compositeMultiplyShaderWithMode:(char)mode clipping:(char)clipping targetMultiple:(int)multiple colorAttachmentIndex:(char)index renderMask:(char)mask edgeMask:(char)edgeMask secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:
{
  v15 = *MEMORY[0x1E69E9840];
  if (self)
  {
    HIBYTE(v10) = 0;
    *(&v10 + 13) = 0;
    *&v10 = a2;
    BYTE8(v10) = mode;
    BYTE9(v10) = index;
    BYTE10(v10) = clipping;
    BYTE11(v10) = mask;
    BYTE12(v10) = edgeMask;
    v11 = 1;
    multipleCopy = multiple;
    enabledCopy = enabled;
    v14 = 0;
    self = [(PKMetalResourceHandler *)self uberShaderForKey:?];
  }

  return self;
}

- (id)compositeSoftWhiteShaderWithMode:(char)mode clipping:(int)clipping colorAttachmentIndex:(unsigned __int8)index renderMask:(char)mask edgeMask:(char)edgeMask secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    HIBYTE(v9) = 0;
    *(&v9 + 13) = 0;
    *&v9 = a2;
    BYTE8(v9) = mode;
    *(&v9 + 9) = index;
    BYTE11(v9) = mask;
    BYTE12(v9) = edgeMask;
    v10 = 3;
    clippingCopy = clipping;
    enabledCopy = enabled;
    v13 = 0;
    self = [(PKMetalResourceHandler *)self uberShaderForKey:?];
  }

  return self;
}

- (id)compositeEraseShaderWithMode:(char)mode clipping:(int)clipping colorAttachmentIndex:(char)index secondaryPaintEnabled:(uint64_t)enabled pipelineConfig:
{
  v12 = *MEMORY[0x1E69E9840];
  if (self)
  {
    HIBYTE(v7) = 0;
    *(&v7 + 13) = 0;
    *&v7 = a2;
    BYTE8(v7) = mode;
    *(&v7 + 9) = 0;
    BYTE11(v7) = 0;
    BYTE12(v7) = index;
    v8 = 2;
    clippingCopy = clipping;
    enabledCopy = enabled;
    v11 = 0;
    self = [(PKMetalResourceHandler *)self uberShaderForKey:?];
  }

  return self;
}

- (char)_uberShaderForKey:(char *)key
{
  keyCopy = key;
  if (!key)
  {
    goto LABEL_71;
  }

  v4 = key + 96;
  v5 = PKHashBytes(a2, 40);
  v6 = *(keyCopy + 104);
  if (v6)
  {
    v7 = v5;
    v8 = vcnt_s8(v6);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5 >= *&v6 ? v5 % v6.i32[0] : v5;
    }

    else
    {
      v10 = (*&v6 + 0xFFFFFFFFLL) & v5;
    }

    v11 = *(*v4 + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        do
        {
          v13 = v12[1];
          if (v13 == v7)
          {
            if (!memcmp(v12 + 2, a2, 0x28uLL))
            {
              keyCopy = v12[7];
              goto LABEL_71;
            }
          }

          else
          {
            if (v9 > 1)
            {
              if (v13 >= *&v6)
              {
                v13 %= *&v6;
              }
            }

            else
            {
              v13 &= *&v6 - 1;
            }

            if (v13 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

  _signpostLog = [(PKMetalResourceHandler *)keyCopy _signpostLog];
  v15 = _signpostLog;
  v16 = *(keyCopy + 47);
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(_signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v16, "CompileShader", "", buf, 2u);
  }

  v54 = 1;
  v17 = *a2;
  v18 = *(a2 + 8);
  v19 = *(a2 + 9);
  v20 = *(a2 + 11);
  *buf = *(a2 + 6);
  v21 = objc_alloc_init(MEMORY[0x1E6974060]);
  v22 = v21;
  v56 = 1;
  if (v17 == 1)
  {
    v23 = 5;
  }

  else
  {
    if (v17)
    {
      goto LABEL_27;
    }

    v23 = 1;
  }

  [v21 setConstantValue:&v56 type:53 atIndex:v23];
LABEL_27:
  if (v18)
  {
    [v22 setConstantValue:&v56 type:53 atIndex:3];
  }

  if (v19)
  {
    [v22 setConstantValue:&v56 type:53 atIndex:14];
  }

  if (v20)
  {
    [v22 setConstantValue:&v56 type:53 atIndex:15];
  }

  [v22 setConstantValue:buf type:33 atIndex:13];
  if (keyCopy[420] == 1)
  {
    [v22 setConstantValue:&v56 type:53 atIndex:7];
  }

  [v22 setConstantValue:&v54 type:53 atIndex:4];
  if (*(a2 + 10) == 1)
  {
    [v22 setConstantValue:&v54 type:53 atIndex:6];
  }

  if (*(a2 + 12) == 1)
  {
    [v22 setConstantValue:&v54 type:53 atIndex:17];
  }

  v24 = a2[2];
  if (v24 <= 4)
  {
    [v22 setConstantValue:&v54 type:53 atIndex:qword_1C801EAF8[v24]];
  }

  v25 = *(keyCopy + 37);
  v53 = 0;
  v26 = [v25 newFunctionWithName:@"uber_vertex" constantValues:v22 error:&v53];
  v49 = v26;
  v50 = v53;
  v27 = *(keyCopy + 37);
  v52 = 0;
  v28 = [v27 newFunctionWithName:@"uber_fragment" constantValues:v22 error:&v52];
  v48 = v52;
  if (!v26 || !v28)
  {
    objc_exception_throw(@"Failed to compile shader");
  }

  v29 = *a2 == 2;
  if (*a2 == 2)
  {
    v30 = 3;
  }

  else
  {
    v30 = 0;
  }

  v31 = [(PKMetalResourceHandler *)keyCopy _pipelineDescriptorForConfig:?];
  v47 = v31;
  v32 = [PKMetalShader alloc];
  for (i = 0; i != 8; ++i)
  {
    if (!*(a2 + i + 28))
    {
      break;
    }
  }

  v51 = [(PKMetalShader *)v32 initWithVertexFunction:v26 fragmentFunction:v28 blendMode:2 * v29 colorAttachmentIndex:v30 sharedPipelineDescriptor:v31 numColorAttachments:i];
  v34 = PKHashBytes(a2, 40);
  v35 = v34;
  v36 = *(keyCopy + 104);
  if (!*&v36)
  {
    goto LABEL_66;
  }

  v37 = vcnt_s8(v36);
  v37.i16[0] = vaddlv_u8(v37);
  v38 = v37.u32[0];
  if (v37.u32[0] > 1uLL)
  {
    v39 = v34;
    if (v34 >= *&v36)
    {
      v39 = v34 % v36.i32[0];
    }
  }

  else
  {
    v39 = (*&v36 + 0xFFFFFFFFLL) & v34;
  }

  v40 = *(*v4 + 8 * v39);
  if (!v40 || (v41 = *v40) == 0)
  {
LABEL_66:
    operator new();
  }

  while (1)
  {
    v42 = v41[1];
    if (v42 == v35)
    {
      break;
    }

    if (v38 > 1)
    {
      if (v42 >= *&v36)
      {
        v42 %= *&v36;
      }
    }

    else
    {
      v42 &= *&v36 - 1;
    }

    if (v42 != v39)
    {
      goto LABEL_66;
    }

LABEL_65:
    v41 = *v41;
    if (!v41)
    {
      goto LABEL_66;
    }
  }

  if (memcmp(v41 + 2, a2, 0x28uLL))
  {
    goto LABEL_65;
  }

  _signpostLog2 = [(PKMetalResourceHandler *)keyCopy _signpostLog];
  v44 = _signpostLog2;
  v45 = *(keyCopy + 47);
  if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(_signpostLog2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v44, OS_SIGNPOST_INTERVAL_END, v45, "CompileShader", "", buf, 2u);
  }

  keyCopy = v51;
LABEL_71:

  return keyCopy;
}

void __43__PKMetalResourceHandler_uberShaderForKey___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v7[0] = *(a1 + 48);
  v7[1] = v3;
  v8 = *(a1 + 80);
  v4 = [(PKMetalResourceHandler *)v2 _uberShaderForKey:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)cachedQuadVertexBuffer
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __48__PKMetalResourceHandler_cachedQuadVertexBuffer__block_invoke;
    v4[3] = &unk_1E82D6868;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)cachedQuadTexCoordBuffer
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __50__PKMetalResourceHandler_cachedQuadTexCoordBuffer__block_invoke;
    v4[3] = &unk_1E82D6868;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)replaceInkTexture:(uint64_t)texture image:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = *(self + 368);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__PKMetalResourceHandler_replaceInkTexture_image___block_invoke;
    block[3] = &unk_1E82DB5E0;
    block[4] = self;
    textureCopy = texture;
    v9 = v5;
    dispatch_sync(v7, block);
  }
}

void __50__PKMetalResourceHandler_replaceInkTexture_image___block_invoke(void *a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:*(a1[4] + 424)];
  v3 = *MEMORY[0x1E6974400];
  v15[0] = *MEMORY[0x1E6974408];
  v15[1] = v3;
  v16[0] = &unk_1F47C1550;
  v16[1] = &unk_1F47C1568;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v5 = a1[6];
  v10 = 0;
  v6 = [v2 newTextureWithCGImage:v5 options:v4 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[5];
      *buf = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Failed to replace with CGImage texture: %@, error: %@", buf, 0x16u);
    }
  }

  if (v6)
  {
    [*(a1[4] + 88) setObject:v6 forKeyedSubscript:a1[5]];
  }
}

- (id)inkTextureNamed:(uint64_t)named image:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__26;
    v18 = __Block_byref_object_dispose__26;
    v19 = 0;
    v7 = *(self + 368);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__PKMetalResourceHandler_inkTextureNamed_image___block_invoke;
    v10[3] = &unk_1E82DB608;
    v12 = &v14;
    v10[4] = self;
    v11 = v5;
    namedCopy = named;
    dispatch_sync(v7, v10);
    v8 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __48__PKMetalResourceHandler_inkTextureNamed_image___block_invoke(uint64_t a1)
{
  v2 = [(PKMetalResourceHandler *)*(a1 + 32) _inkTextureNamed:*(a1 + 56) image:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setupPaperTextureIfNecessary
{
  if (self && !self[38])
  {
    _signpostLog = [(PKMetalResourceHandler *)self _signpostLog];
    v3 = _signpostLog;
    v4 = self[47];
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(_signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SetupPaperTexture", "", buf, 2u);
    }

    v5 = MEMORY[0x1E69DCAB8];
    v6 = MEMORY[0x1E69DD1B8];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    v9 = v8;

    v10 = [v6 traitCollectionWithDisplayScale:{fmin(v9, 2.0)}];
    v11 = [v5 _kitImageNamed:@"UITexturedPaperTile" withTrait:v10];

    [(UIImage *)v11 size];
    self[39] = v12;
    self[40] = v13;
    if (CGImageGetWidth([(UIImage *)v11 CGImage]))
    {
      v30.width = 128.0;
      v30.height = 128.0;
      UIGraphicsBeginImageContextWithOptions(v30, 0, 1.0);
      [(UIImage *)v11 drawInRect:0.0, 0.0, 128.0, 128.0];
      v14 = UIGraphicsGetImageFromCurrentImageContext();

      v11 = v14;
      UIGraphicsEndImageContext();
    }

    cGImage = [(UIImage *)v11 CGImage];
    if (cGImage)
    {
      v16 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:self[53]];
      v28 = 0;
      v17 = [v16 newTextureWithCGImage:cGImage options:0 error:&v28];
      v18 = v28;
      v19 = self[38];
      self[38] = v17;

      if (!self[38])
      {
        v20 = UIImagePNGRepresentation(v11);
        v27 = v18;
        v21 = [v16 newTextureWithData:v20 options:0 error:&v27];
        v22 = v27;

        v23 = self[38];
        self[38] = v21;

        v18 = v22;
      }
    }

    else
    {
      v16 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_DEFAULT, "Unable to load paper texture", buf, 2u);
      }
    }

    _signpostLog2 = [(PKMetalResourceHandler *)self _signpostLog];
    v25 = _signpostLog2;
    v26 = self[47];
    if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(_signpostLog2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v25, OS_SIGNPOST_INTERVAL_END, v26, "SetupPaperTexture", "", buf, 2u);
    }
  }
}

- (id)paperTexture
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __38__PKMetalResourceHandler_paperTexture__block_invoke;
    v4[3] = &unk_1E82D8600;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __38__PKMetalResourceHandler_paperTexture__block_invoke(uint64_t a1)
{
  [(PKMetalResourceHandler *)*(a1 + 32) _setupPaperTextureIfNecessary];
  v2 = *(*(a1 + 32) + 304);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (double)paperTextureSize
{
  if (!self)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x4012000000;
  v8 = __Block_byref_object_copy__149;
  v9 = __Block_byref_object_dispose__150;
  v10 = "";
  v1 = *(self + 368);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__PKMetalResourceHandler_paperTextureSize__block_invoke;
  v4[3] = &unk_1E82D8600;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(v1, v4);
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

__n128 __42__PKMetalResourceHandler_paperTextureSize__block_invoke(uint64_t a1)
{
  [(PKMetalResourceHandler *)*(a1 + 32) _setupPaperTextureIfNecessary];
  v2 = (*(a1 + 32) + 312);
  result = *v2;
  *(*(*(a1 + 40) + 8) + 48) = *v2;
  return result;
}

- (id)randomNumberBuffer
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __44__PKMetalResourceHandler_randomNumberBuffer__block_invoke;
    v4[3] = &unk_1E82D8600;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __44__PKMetalResourceHandler_randomNumberBuffer__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 360))
  {
    v3 = [(PKMetalResourceHandler *)*(a1 + 32) _signpostLog];
    v4 = v3;
    v5 = *(v2 + 376);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SetupRandomNumberBuffer", "", buf, 2u);
    }

    v6 = [*(v2 + 424) newBufferWithBytes:-[PKMetalResourceHandler randomNumberArray](v2) length:0x4000 options:0];
    v7 = *(v2 + 360);
    *(v2 + 360) = v6;

    v8 = [(PKMetalResourceHandler *)v2 _signpostLog];
    v9 = v8;
    v10 = *(v2 + 376);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SetupRandomNumberBuffer", "", v11, 2u);
    }

    v2 = *(a1 + 32);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(v2 + 360));
}

- (id)uint16IndexBuffer
{
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v1 = *(self + 368);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __43__PKMetalResourceHandler_uint16IndexBuffer__block_invoke;
    v4[3] = &unk_1E82D8600;
    v4[4] = self;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __43__PKMetalResourceHandler_uint16IndexBuffer__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 336))
  {
    v2 = [(PKMetalResourceHandler *)*(a1 + 32) _signpostLog];
    v3 = v2;
    v4 = *(v1 + 376);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SetupUInt16IndexBuffer", "", buf, 2u);
    }

    operator new();
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(v1 + 336));
}

- (uint64_t)randomNumberArray
{
  if (result)
  {
    if ((atomic_load_explicit(&qword_1ED6A53A0, memory_order_acquire) & 1) == 0)
    {
      v1 = result;
      v2 = __cxa_guard_acquire(&qword_1ED6A53A0);
      result = v1;
      if (v2)
      {
        __cxa_atexit(std::vector<float>::~vector[abi:ne200100], &qword_1ED6A53E8, &dword_1C7CCA000);
        __cxa_guard_release(&qword_1ED6A53A0);
        result = v1;
      }
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__PKMetalResourceHandler_randomNumberArray__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = result;
    if (qword_1ED6A5398 != -1)
    {
      dispatch_once(&qword_1ED6A5398, block);
    }

    return qword_1ED6A53E8;
  }

  return result;
}

void __43__PKMetalResourceHandler_randomNumberArray__block_invoke(uint64_t a1)
{
  v2 = [(PKMetalResourceHandler *)*(a1 + 32) _signpostLog];
  v3 = v2;
  v4 = *(*(a1 + 32) + 376);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CreateRandomNumberArray", "", buf, 2u);
  }

  std::vector<float>::resize(&qword_1ED6A53E8, 0x1000uLL);
  v5 = 0;
  v6 = qword_1ED6A53E8;
  v7 = 43981;
  do
  {
    v7 = 1664525 * v7 + 1013904223;
    *(v6 + v5) = vcvts_n_f32_u32(vcvtd_n_u64_f64(v7 / 4294967300.0, 0x10uLL), 0x10uLL);
    v5 += 4;
  }

  while (v5 != 0x4000);
  v8 = [(PKMetalResourceHandler *)*(a1 + 32) _signpostLog];
  v9 = v8;
  v10 = *(*(a1 + 32) + 376);
  if (v10 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CreateRandomNumberArray", "", v11, 2u);
  }
}

- (id)indexBufferForNumVertices:(void *)vertices outIndexType:
{
  if (self)
  {
    if (a2 > 0x10000)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__26;
      v12 = __Block_byref_object_dispose__26;
      v13 = 0;
      v5 = *(self + 368);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__PKMetalResourceHandler_indexBufferForNumVertices_outIndexType___block_invoke;
      block[3] = &unk_1E82DB630;
      block[5] = &v8;
      block[6] = a2;
      block[4] = self;
      dispatch_sync(v5, block);
      *vertices = 1;
      uint16IndexBuffer = v9[5];
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      *vertices = 0;
      uint16IndexBuffer = [(PKMetalResourceHandler *)self uint16IndexBuffer];
    }
  }

  else
  {
    uint16IndexBuffer = 0;
  }

  return uint16IndexBuffer;
}

void __65__PKMetalResourceHandler_indexBufferForNumVertices_outIndexType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(v2 + 352);
    v5 = *(v2 + 344) && v4 >= v3;
    if (!v5)
    {
      if (v4 <= 0x20000)
      {
        v4 = 0x20000;
      }

      v5 = v3 >= v4;
      v6 = v3 - v4;
      if (!v5)
      {
        v6 = 0;
      }

      v7 = ((v6 + 0xFFFF) & 0xFFFFFFFFFFFF0000) + v4;
      v8 = [(PKMetalResourceHandler *)*(a1 + 32) _signpostLog];
      v9 = v8;
      v10 = *(v2 + 376);
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SetupUInt32IndexBuffer", "", buf, 2u);
      }

      v12 = 6 * (v7 >> 2);
      if (v12)
      {
        if (!(v12 >> 62))
        {
          operator new();
        }

        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      if (v7)
      {
        v13 = 4;
        v14 = 0;
        do
        {
          *v14 = v13 - 4;
          *v11.i8 = vorr_s8(vdup_n_s32(v13 - 4), 0x200000001);
          v11 = vzip1q_s32(v11, vrev64q_s32(v11));
          *(v14 + 4) = v11;
          *(v14 + 20) = v13 - 1;
          v14 += 24;
          v15 = v7 > v13;
          v13 += 4;
        }

        while (v15);
      }

      *(v2 + 352) = v7;
      v16 = [*(v2 + 424) newBufferWithBytes:0 length:24 * (v7 >> 2) options:0];
      v17 = *(v2 + 344);
      *(v2 + 344) = v16;

      v18 = [(PKMetalResourceHandler *)v2 _signpostLog];
      v19 = v18;
      v20 = *(v2 + 376);
      if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
      {
        v21[0] = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v19, OS_SIGNPOST_INTERVAL_END, v20, "SetupUInt32IndexBuffer", "", v21, 2u);
      }
    }
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 344));
}

- (void)deallocateReusableBuffers
{
  if (self)
  {
    v1 = *(self + 368);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PKMetalResourceHandler_deallocateReusableBuffers__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

uint64_t __51__PKMetalResourceHandler_deallocateReusableBuffers__block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 400);
  if (v1)
  {
    return [*(v1 + 56) removeAllObjects];
  }

  return result;
}

- (void)reloadParticleTexturesIfNecessaryCommandQueue:(uint64_t)queue
{
  v3 = a2;
  if (queue)
  {
    if ([PKMetalResourceHandler isAppInBackground])
    {
      v4 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_INFO, "App was in the background when attempting to reload particle textures.", buf, 2u);
      }
    }

    else
    {
      v5 = *(queue + 368);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __72__PKMetalResourceHandler_reloadParticleTexturesIfNecessaryCommandQueue___block_invoke;
      v6[3] = &unk_1E82D6890;
      v6[4] = queue;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void __72__PKMetalResourceHandler_reloadParticleTexturesIfNecessaryCommandQueue___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v32 = [MEMORY[0x1E69DC888] blackColor];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v54[0] = @"com.apple.ink.marker";
  v54[1] = @"com.apple.ink.pencil";
  v54[2] = @"com.apple.ink.watercolor";
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
  v33 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v33)
  {
    v31 = *v49;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v49 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v37 = [PKInk inkWithIdentifier:*(*(&v48 + 1) + 8 * i) color:v32 weight:-1.0];
        v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
        v1 = [v37 behavior];
        v2 = [(PKInkBehavior *)v1 particleTextureName];

        if (v2)
        {
          [v34 addObject:v2];
        }

        v3 = [v37 behavior];
        v4 = [v3 secondaryParticleDescriptor];
        v35 = [v4 textureName];

        if (v35)
        {
          [v34 addObject:?];
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v38 = v34;
        v5 = [v38 countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v5)
        {
          v39 = *v45;
          do
          {
            v40 = v5;
            v6 = 0;
            v7 = v2;
            do
            {
              if (*v45 != v39)
              {
                objc_enumerationMutation(v38);
              }

              v2 = *(*(&v44 + 1) + 8 * v6);

              v8 = [*(*(a1 + 32) + 88) objectForKeyedSubscript:v2];
              v9 = v8;
              if (v8)
              {
                if ([v8 pixelFormat] == 81 || objc_msgSend(v9, "pixelFormat") == 80)
                {
                  v11 = *(a1 + 32);
                  v10 = *(a1 + 40);
                  v12 = v9;
                  v41 = v10;
                  v42 = v12;
                  if (v11 && ([v12 pixelFormat] == 81 || objc_msgSend(v12, "pixelFormat") == 80))
                  {
                    v13 = [v41 commandBuffer];
                    v14 = [v13 blitCommandEncoder];
                    v15 = [v42 width];
                    v16 = [v42 height];
                    v17 = [*(v11 + 424) newBufferWithLength:v16 * 4 * v15 options:0];
                    memset(buf, 0, sizeof(buf));
                    v52[0] = v15;
                    v52[1] = v16;
                    v52[2] = 1;
                    [v14 copyFromTexture:v42 sourceSlice:0 sourceLevel:0 sourceOrigin:buf sourceSize:v52 toBuffer:v17 destinationOffset:0 destinationBytesPerRow:4 * v15 destinationBytesPerImage:v16 * 4 * v15];
                    [v14 endEncoding];
                    [v13 commit];
                    [v13 waitUntilCompleted];
                    v18 = v17;
                    v19 = [v17 contents];
                    if (v16)
                    {
                      v20 = 0;
                      v21 = 0;
                      do
                      {
                        v22 = v19;
                        for (j = v15; j; --j)
                        {
                          v24 = *v22;
                          v22 += 4;
                          v21 += v24;
                        }

                        v19 += 4 * v15;
                        ++v20;
                      }

                      while (v20 != v16);
                      if (v16 * v15)
                      {
                        v16 = v21 / (v16 * v15);
                      }

                      else
                      {
                        v16 = 0;
                      }
                    }
                  }

                  else
                  {
                    v16 = 0;
                  }

                  v26 = os_log_create("com.apple.pencilkit", "");
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 134218242;
                    *&buf[4] = v16;
                    *&buf[12] = 2112;
                    *&buf[14] = v2;
                    _os_log_debug_impl(&dword_1C7CCA000, v26, OS_LOG_TYPE_DEBUG, "Calculated average pixel alpha value: %ld, texture: %@", buf, 0x16u);
                  }

                  if ((v16 - 201) <= 0xFFFFFFFFFFFFFF46)
                  {
                    v27 = os_log_create("com.apple.pencilkit", "");
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v2;
                      *&buf[12] = 2048;
                      *&buf[14] = v16;
                      _os_log_fault_impl(&dword_1C7CCA000, v27, OS_LOG_TYPE_FAULT, "Detected a texture that was corrupt: %@, %lu", buf, 0x16u);
                    }

                    [*(*(a1 + 32) + 88) removeObjectForKey:v2];
                    v28 = [(PKMetalResourceHandler *)*(a1 + 32) _inkTextureNamed:v2 image:0];
                  }
                }

                else
                {
                  v25 = os_log_create("com.apple.pencilkit", "");
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    v29 = [v9 pixelFormat];
                    *buf = 138412546;
                    *&buf[4] = v2;
                    *&buf[12] = 1024;
                    *&buf[14] = v29;
                    _os_log_error_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_ERROR, "Unexpected pixel format in particle texture: %@, %d", buf, 0x12u);
                  }
                }
              }

              ++v6;
              v7 = v2;
            }

            while (v6 != v40);
            v5 = [v38 countByEnumeratingWithState:&v44 objects:v53 count:16];
          }

          while (v5);
        }
      }

      v33 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v33);
  }
}

- (id)newPurgeableBufferWithLength:(uint64_t)length bytes:(uint64_t)bytes outOffset:
{
  if (result)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__26;
    v11 = __Block_byref_object_dispose__26;
    v12 = 0;
    v4 = *(result + 46);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__PKMetalResourceHandler_newPurgeableBufferWithLength_bytes_outOffset___block_invoke;
    block[3] = &unk_1E82DB658;
    block[4] = result;
    block[5] = &v7;
    block[6] = a2;
    block[7] = length;
    block[8] = bytes;
    dispatch_sync(v4, block);
    v5 = v8[5];
    _Block_object_dispose(&v7, 8);

    return v5;
  }

  return result;
}

void __71__PKMetalResourceHandler_newPurgeableBufferWithLength_bytes_outOffset___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 384);
  if (v2)
  {
    v2 = [(PKMetalResourceHandlerBuffer *)v2 newBufferWithLength:*(a1 + 56) bytes:*(a1 + 64) outOffset:0 outReusableMetalBuffer:?];
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)newBufferWithLength:(uint64_t)length bytes:(uint64_t)bytes outOffset:
{
  if (result)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__26;
    v11 = __Block_byref_object_dispose__26;
    v12 = 0;
    v4 = *(result + 46);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__PKMetalResourceHandler_newBufferWithLength_bytes_outOffset___block_invoke;
    block[3] = &unk_1E82DB658;
    block[4] = result;
    block[5] = &v7;
    block[6] = a2;
    block[7] = length;
    block[8] = bytes;
    dispatch_sync(v4, block);
    v5 = v8[5];
    _Block_object_dispose(&v7, 8);

    return v5;
  }

  return result;
}

void __62__PKMetalResourceHandler_newBufferWithLength_bytes_outOffset___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 392);
  if (v2 && (v3 = [(PKMetalResourceHandlerBuffer *)v2 newBufferWithLength:*(a1 + 56) bytes:*(a1 + 64) outOffset:0 outReusableMetalBuffer:?]) != 0)
  {
    v5 = v3;
    v4 = v3[3];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
}

- (id)newGPUBufferWithLength:(uint64_t)length outOffset:(void *)offset commandBuffer:
{
  offsetCopy = offset;
  v8 = offsetCopy;
  if (self)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__26;
    v21 = __Block_byref_object_dispose__26;
    v22 = 0;
    v9 = *(self + 368);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__PKMetalResourceHandler_newGPUBufferWithLength_outOffset_commandBuffer___block_invoke;
    block[3] = &unk_1E82DB6A8;
    v14 = &v17;
    v15 = a2;
    block[4] = self;
    lengthCopy = length;
    v13 = offsetCopy;
    dispatch_sync(v9, block);
    v10 = v18[5];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __73__PKMetalResourceHandler_newGPUBufferWithLength_outOffset_commandBuffer___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 400);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v13 = 0;
  v5 = [(PKMetalResourceHandlerBuffer *)v2 newBufferWithLength:v3 bytes:0 outOffset:v4 outReusableMetalBuffer:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = v5[3];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);

  if (v6 && *(a1 + 40))
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__PKMetalResourceHandler_newGPUBufferWithLength_outOffset_commandBuffer___block_invoke_2;
    v9[3] = &unk_1E82DB680;
    objc_copyWeak(&v11, &location);
    v10 = v6;
    [v8 addCompletedHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __73__PKMetalResourceHandler_newGPUBufferWithLength_outOffset_commandBuffer___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[46];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __73__PKMetalResourceHandler_newGPUBufferWithLength_outOffset_commandBuffer___block_invoke_3;
    v5[3] = &unk_1E82D6890;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    dispatch_async(v4, v5);
  }
}

@end