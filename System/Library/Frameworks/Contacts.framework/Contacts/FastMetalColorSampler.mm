@interface FastMetalColorSampler
+ (id)sharedPipelineStateForDevice:(id)device;
- (FastMetalColorSampler)init;
- (id)createTextureFromCIImage:(id)image;
- (id)sampleColors:(id)colors sampleCount:(unint64_t)count;
- (void)setupMetal;
@end

@implementation FastMetalColorSampler

+ (id)sharedPipelineStateForDevice:(id)device
{
  deviceCopy = device;
  if (sharedPipelineStateForDevice__onceToken != -1)
  {
    +[FastMetalColorSampler sharedPipelineStateForDevice:];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(deviceCopy, "registryID")}];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__23;
  v22 = __Block_byref_object_dispose__23;
  v23 = 0;
  v5 = sharedPipelineStateForDevice__cacheQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_200;
  block[3] = &unk_1E7412358;
  v17 = &v18;
  v6 = v4;
  v16 = v6;
  dispatch_sync(v5, block);
  v7 = v19[5];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = sharedPipelineStateForDevice__cacheQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_2;
    v11[3] = &unk_1E7415ED0;
    v14 = &v18;
    v12 = v6;
    v13 = deviceCopy;
    dispatch_barrier_sync(v9, v11);
    v8 = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  return v8;
}

uint64_t __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = sharedPipelineStateForDevice__pipelineCache;
  sharedPipelineStateForDevice__pipelineCache = v0;

  v2 = dispatch_queue_create("com.apple.contacts.metal.pipeline.cache", MEMORY[0x1E69E96A8]);
  v3 = sharedPipelineStateForDevice__cacheQueue;
  sharedPipelineStateForDevice__cacheQueue = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_200(uint64_t a1)
{
  v2 = [sharedPipelineStateForDevice__pipelineCache objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

void __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_2(uint64_t a1)
{
  v2 = [sharedPipelineStateForDevice__pipelineCache objectForKeyedSubscript:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = (a1 + 40);
    v6 = [*(a1 + 40) newDefaultLibrary];
    v7 = v6;
    if (!v6)
    {
      v8 = background_color_os_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_2_cold_4();
      }

      goto LABEL_16;
    }

    v8 = [v6 newFunctionWithName:@"sampleColors"];
    if (!v8)
    {
      v11 = background_color_os_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_2_cold_3();
      }

      goto LABEL_15;
    }

    v9 = *(a1 + 40);
    v16 = 0;
    v10 = [v9 newComputePipelineStateWithFunction:v8 error:&v16];
    v11 = v16;
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v10;

    if (v11)
    {
      v14 = background_color_os_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_2_cold_1(v11, v14);
      }
    }

    else
    {
      v15 = *(*(*(a1 + 48) + 8) + 40);
      if (!v15)
      {
LABEL_15:

LABEL_16:
        return;
      }

      [sharedPipelineStateForDevice__pipelineCache setObject:v15 forKeyedSubscript:*(a1 + 32)];
      v14 = background_color_os_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_2_cold_2(v5, v14);
      }
    }

    goto LABEL_15;
  }
}

- (FastMetalColorSampler)init
{
  v5.receiver = self;
  v5.super_class = FastMetalColorSampler;
  v2 = [(FastMetalColorSampler *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FastMetalColorSampler *)v2 setupMetal];
  }

  return v3;
}

- (void)setupMetal
{
  v3 = MTLCreateSystemDefaultDevice();
  [(FastMetalColorSampler *)self setDevice:v3];

  device = [(FastMetalColorSampler *)self device];

  if (device)
  {
    device2 = [(FastMetalColorSampler *)self device];
    newCommandQueue = [device2 newCommandQueue];
    [(FastMetalColorSampler *)self setCommandQueue:newCommandQueue];

    v7 = MEMORY[0x1E695F620];
    device3 = [(FastMetalColorSampler *)self device];
    v9 = [v7 contextWithMTLDevice:device3];
    [(FastMetalColorSampler *)self setCiContext:v9];

    v10 = objc_opt_class();
    device4 = [(FastMetalColorSampler *)self device];
    v12 = [v10 sharedPipelineStateForDevice:device4];
    [(FastMetalColorSampler *)self setPipelineState:v12];

    pipelineState = [(FastMetalColorSampler *)self pipelineState];

    v14 = background_color_os_log();
    v15 = v14;
    if (pipelineState)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [FastMetalColorSampler setupMetal];
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FastMetalColorSampler setupMetal];
    }
  }

  else
  {
    v15 = background_color_os_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FastMetalColorSampler setupMetal];
    }
  }
}

- (id)sampleColors:(id)colors sampleCount:(unint64_t)count
{
  v41 = *MEMORY[0x1E69E9840];
  colorsCopy = colors;
  device = [(FastMetalColorSampler *)self device];
  if (device)
  {
    v8 = device;
    pipelineState = [(FastMetalColorSampler *)self pipelineState];

    v10 = 0;
    if (colorsCopy && pipelineState)
    {
      if (count >= 8)
      {
        countCopy = 8;
      }

      else
      {
        countCopy = count;
      }

      v12 = objc_autoreleasePoolPush();
      v13 = [(FastMetalColorSampler *)self createTextureFromCIImage:colorsCopy];
      if (!v13)
      {
        goto LABEL_17;
      }

      reusableOutputBuffer = [(FastMetalColorSampler *)self reusableOutputBuffer];
      if (!reusableOutputBuffer || (v15 = reusableOutputBuffer, v16 = [(FastMetalColorSampler *)self bufferCapacity], v15, v16 < 16 * countCopy))
      {
        device2 = [(FastMetalColorSampler *)self device];
        v18 = [device2 newBufferWithLength:128 options:0];
        [(FastMetalColorSampler *)self setReusableOutputBuffer:v18];

        [(FastMetalColorSampler *)self setBufferCapacity:128];
      }

      reusableOutputBuffer2 = [(FastMetalColorSampler *)self reusableOutputBuffer];

      if (reusableOutputBuffer2)
      {
        commandQueue = [(FastMetalColorSampler *)self commandQueue];
        commandBuffer = [commandQueue commandBuffer];

        computeCommandEncoder = [commandBuffer computeCommandEncoder];
        pipelineState2 = [(FastMetalColorSampler *)self pipelineState];
        [computeCommandEncoder setComputePipelineState:pipelineState2];

        [computeCommandEncoder setTexture:v13 atIndex:0];
        reusableOutputBuffer3 = [(FastMetalColorSampler *)self reusableOutputBuffer];
        [computeCommandEncoder setBuffer:reusableOutputBuffer3 offset:0 atIndex:0];

        *components = vdupq_n_s64(1uLL);
        *&v40.f64[0] = 1;
        v37 = xmmword_19567B080;
        v38 = 1;
        [computeCommandEncoder dispatchThreadgroups:components threadsPerThreadgroup:&v37];
        [computeCommandEncoder endEncoding];
        [commandBuffer commit];
        [commandBuffer waitUntilCompleted];
        reusableOutputBuffer4 = [(FastMetalColorSampler *)self reusableOutputBuffer];
        contents = [reusableOutputBuffer4 contents];

        v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:countCopy];
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        if (count)
        {
          v28 = (contents + 8);
          __asm { FMOV            V8.2S, #1.0 }

          do
          {
            v34 = vcvtq_f64_f32(vmaxnm_f32(vminnm_f32(*v28, _D8), 0));
            *components = vcvtq_f64_f32(vmaxnm_f32(vminnm_f32(v28[-1], _D8), 0));
            v40 = v34;
            v35 = CGColorCreate(DeviceRGB, components);
            [v10 addObject:v35];
            CGColorRelease(v35);
            v28 += 2;
            --countCopy;
          }

          while (countCopy);
        }

        CGColorSpaceRelease(DeviceRGB);
      }

      else
      {
LABEL_17:
        v10 = 0;
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createTextureFromCIImage:(id)image
{
  imageCopy = image;
  [imageCopy extent];
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  if (CGRectIsInfinite(v26) || (v27.origin.x = x, v27.origin.y = y, v27.size.width = width, v27.size.height = height, CGRectIsEmpty(v27)))
  {
    v9 = 0;
  }

  else
  {
    v10 = 1.0;
    if (width > 512.0 || height > 512.0)
    {
      if (width >= height)
      {
        v12 = width;
      }

      else
      {
        v12 = height;
      }

      v10 = 512.0 / v12;
    }

    if ((width * v10) <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = (width * v10);
    }

    if ((height * v10) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = (height * v10);
    }

    v15 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:70 width:v13 height:v14 mipmapped:0];
    [v15 setUsage:3];
    device = [(FastMetalColorSampler *)self device];
    v9 = [device newTextureWithDescriptor:v15];

    if (v9)
    {
      v17 = imageCopy;
      if (v10 != 1.0)
      {
        memset(&v24, 0, sizeof(v24));
        CGAffineTransformMakeScale(&v24, v10, v10);
        v23 = v24;
        v18 = [v17 imageByApplyingTransform:&v23];

        v17 = v18;
      }

      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      ciContext = [(FastMetalColorSampler *)self ciContext];
      [ciContext render:v17 toMTLTexture:v9 commandBuffer:0 bounds:DeviceRGB colorSpace:{0.0, 0.0, v13, v14}];

      CGColorSpaceRelease(DeviceRGB);
      v21 = v9;
    }
  }

  return v9;
}

void __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Failed to create compute pipeline state for cache: %@", &v2, 0xCu);
}

void __54__FastMetalColorSampler_sharedPipelineStateForDevice___block_invoke_2_cold_2(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 name];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_1954A0000, a2, OS_LOG_TYPE_DEBUG, "Created and cached Metal pipeline state for device: %@", &v4, 0xCu);
}

@end