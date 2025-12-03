@interface AVTSnapshotHelper
- (BOOL)_isRenderPassDescriptorValid;
- (uint64_t)newCGImageWithRenderer:(uint64_t)renderer antialiasingMode:(uint64_t)mode pixelWidth:(uint64_t)width pixelHeight:(void *)height error:;
- (uint64_t)newImageWithRenderer:(uint64_t)renderer antialiasingMode:(uint64_t)mode pixelWidth:(uint64_t)width pixelHeight:(void *)height imagePointSize:(double)size contentScaleFactor:(double)factor error:(float)error;
- (void)_rebuildBitmapContextIfNeeded;
- (void)_rebuildRenderPassDescriptorIfNeeded;
- (void)dealloc;
@end

@implementation AVTSnapshotHelper

- (uint64_t)newCGImageWithRenderer:(uint64_t)renderer antialiasingMode:(uint64_t)mode pixelWidth:(uint64_t)width pixelHeight:(void *)height error:
{
  v98 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = v11;
  if (!Image)
  {
    goto LABEL_51;
  }

  if (!mode || !width)
  {
    backgroundColor = avt_default_log();
    if (os_log_type_enabled(backgroundColor, OS_LOG_TYPE_ERROR))
    {
      v66 = objc_opt_class();
      v67 = NSStringFromClass(v66);
      *buf = 138412802;
      *&buf[4] = v67;
      *&buf[12] = 1024;
      *&buf[14] = mode;
      *&buf[18] = 1024;
      *&buf[20] = width;
      _os_log_error_impl(&dword_1BB472000, backgroundColor, OS_LOG_TYPE_ERROR, "Error: %@ Can't create a snapshot of size %d×%d", buf, 0x18u);
    }

    Image = 0;
    goto LABEL_50;
  }

  device = [v11 device];
  v14 = *(Image + 1);
  *(Image + 1) = device;

  if (!*(Image + 1))
  {
    v15 = avt_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AVTSnapshotHelper newCGImageWithRenderer:v15 antialiasingMode:? pixelWidth:? pixelHeight:? error:?];
    }
  }

  *(Image + 9) = mode;
  *(Image + 10) = width;
  *(Image + 11) = renderer;
  backgroundColor = [v12 backgroundColor];
  if (*(Image + 12) != backgroundColor)
  {
    objc_storeStrong(Image + 12, backgroundColor);
    v17 = AVTColor4WithCGColor([*(Image + 12) CGColor]);
    v18 = vmulq_laneq_f32(v17, v17, 3);
    v19 = vcvtq_f64_f32(*v18.i8);
    *(Image + 104) = v19;
    v18.i32[0] = vextq_s8(v18, v18, 8uLL).u32[0];
    v18.i32[1] = vextq_s8(*&v17, *&v17, 8uLL).i32[1];
    v84 = vcvtq_f64_f32(*v18.i8);
    v85 = v19;
    *(Image + 120) = v84;
    colorAttachments = [*(Image + 3) colorAttachments];
    v21 = [colorAttachments objectAtIndexedSubscript:0];
    [v21 setClearColor:{*&v85, *&v84}];
  }

  v22 = (Image + 16);
  device2 = [*(Image + 2) device];
  v24 = *(Image + 1);

  if (device2 != v24)
  {
    v25 = *(Image + 3);
    *(Image + 3) = 0;

    newCommandQueue = [*(Image + 1) newCommandQueue];
    v27 = *(Image + 2);
    *(Image + 2) = newCommandQueue;

    [*(Image + 2) setBackgroundGPUPriority:2];
    v28 = *(Image + 1);
    v29 = AVTMTLDeviceSupportsReadWritePixelFormat();
    v30 = @"avt_convert_linear_premultiplied_to_gamma_premultiplied_copy";
    *(Image + 32) = v29;
    if (v29)
    {
      v30 = @"avt_convert_linear_premultiplied_to_gamma_premultiplied_in_place";
    }

    v31 = *(Image + 1);
    v32 = v30;
    v33 = [AVTMetalHelper helperForDevice:v31];
    v34 = [(AVTMetalHelper *)v33 computePipelineStateWithFunctionName:v32];

    v35 = *(Image + 8);
    *(Image + 8) = v34;
  }

  [(CGImage *)Image _rebuildRenderPassDescriptorIfNeeded];
  [(CGImage *)Image _rebuildBitmapContextIfNeeded];
  if (os_variant_has_internal_diagnostics())
  {
    v36 = objc_alloc_init(MEMORY[0x1E6974010]);
    [v36 setErrorOptions:1];
    commandBuffer = [*v22 commandBufferWithDescriptor:v36];

    if (commandBuffer)
    {
      goto LABEL_16;
    }

LABEL_24:
    v38 = avt_default_log();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [AVTSnapshotHelper newCGImageWithRenderer:v38 antialiasingMode:? pixelWidth:? pixelHeight:? error:?];
    }

    Image = 0;
    goto LABEL_49;
  }

  commandBuffer = [*v22 commandBuffer];
  if (!commandBuffer)
  {
    goto LABEL_24;
  }

LABEL_16:
  heightCopy = height;
  [v12 renderWithViewport:commandBuffer commandBuffer:*(Image + 3) passDescriptor:{0.0, 0.0, *(Image + 9), *(Image + 10)}];
  v38 = *(Image + 5);
  threadExecutionWidth = [*(Image + 8) threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [*(Image + 8) maxTotalThreadsPerThreadgroup];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:*(Image + 8)];
  [computeCommandEncoder setTexture:*(Image + 6) atIndex:0];
  if ((*(Image + 32) & 1) == 0)
  {
    v42 = *(Image + 7);

    [computeCommandEncoder setTexture:*(Image + 7) atIndex:1];
    v38 = v42;
  }

  device3 = [computeCommandEncoder device];
  v45 = AVTMTLDeviceSupportsNonUniformThreadgroupSize(device3, v44);

  if (v45)
  {
    width = [*(Image + 5) width];
    height = [*(Image + 5) height];
    *buf = width;
    *&buf[8] = height;
    *&buf[16] = 1;
    *v87 = threadExecutionWidth;
    *&v87[8] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    *&v87[16] = 1;
    [computeCommandEncoder dispatchThreads:buf threadsPerThreadgroup:v87];
  }

  else
  {
    width2 = [*(Image + 5) width];
    if (threadExecutionWidth >= width2)
    {
      v49 = width2;
    }

    else
    {
      v49 = threadExecutionWidth;
    }

    height2 = [*(Image + 5) height];
    if (threadExecutionWidth >= height2)
    {
      v51 = height2;
    }

    else
    {
      v51 = threadExecutionWidth;
    }

    do
    {
      v52 = v51;
      v53 = v51 * v49;
      v51 >>= 1;
    }

    while (v53 > maxTotalThreadsPerThreadgroup);
    v54 = (v49 + [*(Image + 5) width] - 1) / v49;
    height3 = [*(Image + 5) height];
    *buf = v54;
    *&buf[8] = (v52 + height3 - 1) / v52;
    *&buf[16] = 1;
    *v87 = v49;
    *&v87[8] = v52;
    *&v87[16] = 1;
    [computeCommandEncoder dispatchThreadgroups:buf threadsPerThreadgroup:v87];
  }

  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  if ([commandBuffer status] == 4)
  {
    Data = CGBitmapContextGetData(*(Image + 17));
    BytesPerRow = CGBitmapContextGetBytesPerRow(*(Image + 17));
    memset(buf, 0, 24);
    *&buf[24] = *(Image + 72);
    *&buf[40] = 1;
    [v38 getBytes:Data bytesPerRow:BytesPerRow fromRegion:buf mipmapLevel:0];
    Image = CGBitmapContextCreateImage(*(Image + 17));
LABEL_48:

LABEL_49:
LABEL_50:

LABEL_51:
    v64 = *MEMORY[0x1E69E9840];
    return Image;
  }

  error = [commandBuffer error];
  v59 = error;
  if (heightCopy && error)
  {
    v60 = error;
    *heightCopy = v59;
  }

  if (AVTIsRunningInAppExtensionOrViewService())
  {
    v72 = avt_default_log();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
    {
      v73 = objc_opt_class();
      v74 = NSStringFromClass(v73);
      status = [commandBuffer status];
      logs = [commandBuffer logs];
      *buf = 136316418;
      *&buf[4] = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v74;
      *&buf[22] = 2048;
      *&buf[24] = v12;
      *&buf[32] = 1024;
      *&buf[34] = status;
      *&buf[38] = 2112;
      *&buf[40] = v59;
      LOWORD(v96) = 2112;
      *(&v96 + 2) = logs;
      _os_log_fault_impl(&dword_1BB472000, v72, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
    }

    v97 = 0u;
    v96 = 0u;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = objc_opt_class();
    v78 = NSStringFromClass(v77);
    status2 = [commandBuffer status];
    commandBuffer = [commandBuffer logs];
    *v87 = 136316418;
    *&v87[4] = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
    *&v87[12] = 2112;
    *&v87[14] = v78;
    *&v87[22] = 2048;
    v88 = v12;
    v89 = 1024;
    v90 = status2;
    v91 = 2112;
    v92 = v59;
    v93 = 2112;
    v94 = commandBuffer;
    v12 = _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
  }

  else
  {
    if (v59)
    {
      domain = [v59 domain];
      v62 = *MEMORY[0x1E6973F70];

      if (domain == v62 && [v59 code] == 7)
      {
        [AVTSnapshotHelper newCGImageWithRenderer:v12 antialiasingMode:commandBuffer pixelWidth:v59 pixelHeight:? error:?];
LABEL_47:

        Image = 0;
        goto LABEL_48;
      }
    }

    v63 = avt_default_log();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
    {
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      status3 = [commandBuffer status];
      logs2 = [commandBuffer logs];
      *buf = 136316418;
      *&buf[4] = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v69;
      *&buf[22] = 2048;
      *&buf[24] = v12;
      *&buf[32] = 1024;
      *&buf[34] = status3;
      *&buf[38] = 2112;
      *&buf[40] = v59;
      LOWORD(v96) = 2112;
      *(&v96 + 2) = logs2;
      _os_log_fault_impl(&dword_1BB472000, v63, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
    }

    if (!AVTLogAllowsInternalCrash())
    {
      goto LABEL_47;
    }
  }

  v97 = 0u;
  v96 = 0u;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v80 = objc_opt_class();
  v81 = NSStringFromClass(v80);
  status4 = [commandBuffer status];
  logs3 = [commandBuffer logs];
  *v87 = 136316418;
  *&v87[4] = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
  *&v87[12] = 2112;
  *&v87[14] = v81;
  *&v87[22] = 2048;
  v88 = v12;
  v89 = 1024;
  v90 = status4;
  v91 = 2112;
  v92 = v59;
  v93 = 2112;
  v94 = logs3;
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

- (BOOL)_isRenderPassDescriptorValid
{
  renderPassDescriptor = self->_renderPassDescriptor;
  if (!renderPassDescriptor)
  {
    return 0;
  }

  colorAttachments = [(MTLRenderPassDescriptor *)renderPassDescriptor colorAttachments];
  v5 = [colorAttachments objectAtIndexedSubscript:0];
  texture = [v5 texture];

  device = [texture device];
  device = self->_device;

  if (device == device && [texture width] == self->_pixelWidth && objc_msgSend(texture, "height") == self->_pixelHeight)
  {
    antialiasingMode = self->_antialiasingMode;
    v10 = antialiasingMode - 1;
    v11 = 1;
    if (antialiasingMode == 1)
    {
      v11 = 2;
    }

    if (antialiasingMode == 2)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v14 = [colorAttachments2 objectAtIndexedSubscript:0];
    resolveTexture = [v14 resolveTexture];

    if (v10 > 1)
    {
      if (!resolveTexture)
      {
LABEL_13:
        v16 = 1;
LABEL_20:

        goto LABEL_15;
      }
    }

    else if (resolveTexture && [texture sampleCount] == v12)
    {
      goto LABEL_13;
    }

    v16 = 0;
    goto LABEL_20;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)_rebuildRenderPassDescriptorIfNeeded
{
  if (![(AVTSnapshotHelper *)self _isRenderPassDescriptorValid])
  {
    v44 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:71 width:self->_pixelWidth height:self->_pixelHeight mipmapped:0];
    [v44 setStorageMode:0];
    [v44 setUsage:4];
    supportsReadWriteTexture = self->_supportsReadWriteTexture;
    usage = [v44 usage];
    v5 = 3;
    if (!supportsReadWriteTexture)
    {
      v5 = 1;
    }

    [v44 setUsage:usage | v5];
    v6 = [(MTLDevice *)self->_device newTextureWithDescriptor:v44];
    objc_storeStrong(&self->_convertPremultipliedAlphaTexture, v6);
    v7 = [v6 newTextureViewWithPixelFormat:70];
    convertPremultipliedAlphaTextureView = self->_convertPremultipliedAlphaTextureView;
    self->_convertPremultipliedAlphaTextureView = v7;

    if (self->_supportsReadWriteTexture)
    {
      convertPremultipliedAlphaExtraTexture = self->_convertPremultipliedAlphaExtraTexture;
      self->_convertPremultipliedAlphaExtraTexture = 0;
    }

    else
    {
      convertPremultipliedAlphaExtraTexture = [v44 copy];
      [(MTLTexture *)convertPremultipliedAlphaExtraTexture setPixelFormat:70];
      [(MTLTexture *)convertPremultipliedAlphaExtraTexture usage];
      [(MTLTexture *)convertPremultipliedAlphaExtraTexture setUsage:0];
      [(MTLTexture *)convertPremultipliedAlphaExtraTexture setUsage:[(MTLTexture *)convertPremultipliedAlphaExtraTexture usage]| 2];
      v10 = [(MTLDevice *)self->_device newTextureWithDescriptor:convertPremultipliedAlphaExtraTexture];
      v11 = self->_convertPremultipliedAlphaExtraTexture;
      self->_convertPremultipliedAlphaExtraTexture = v10;
    }

    v12 = AVTMTLDeviceSupportsMemorylessStorage(self->_device);
    antialiasingMode = self->_antialiasingMode;
    v14 = 1;
    if (antialiasingMode == 1)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    if (antialiasingMode == 2)
    {
      v16 = 4;
    }

    else
    {
      v16 = v15;
    }

    v17 = 2;
    if (v12)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    if (antialiasingMode - 1 > 1)
    {
      v20 = 0;
      v21 = 0;
      v19 = v6;
    }

    else
    {
      [v44 setStorageMode:v18];
      v17 = 4;
      [v44 setUsage:4];
      [v44 setTextureType:4];
      [v44 setSampleCount:v16];
      v19 = [(MTLDevice *)self->_device newTextureWithDescriptor:v44];
      v14 = 2;
      v20 = v6;
      v21 = v19;
    }

    v22 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:252 width:self->_pixelWidth height:self->_pixelHeight mipmapped:0];
    [v22 setStorageMode:v18];
    [v22 setUsage:4];
    [v22 setTextureType:v17];
    [v22 setSampleCount:v16];
    v23 = [(MTLDevice *)self->_device newTextureWithDescriptor:v22];
    renderPassDescriptor = [MEMORY[0x1E6974130] renderPassDescriptor];
    renderPassDescriptor = self->_renderPassDescriptor;
    self->_renderPassDescriptor = renderPassDescriptor;

    colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v27 = [colorAttachments objectAtIndexedSubscript:0];
    [v27 setTexture:v19];

    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v29 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v29 setResolveTexture:v20];

    colorAttachments3 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v31 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v31 setLoadAction:2];

    red = self->_backgroundColorForMetal.red;
    green = self->_backgroundColorForMetal.green;
    blue = self->_backgroundColorForMetal.blue;
    alpha = self->_backgroundColorForMetal.alpha;
    colorAttachments4 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v37 = [colorAttachments4 objectAtIndexedSubscript:0];
    [v37 setClearColor:{red, green, blue, alpha}];

    colorAttachments5 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v39 = [colorAttachments5 objectAtIndexedSubscript:0];
    [v39 setStoreAction:v14];

    depthAttachment = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
    [depthAttachment setTexture:v23];

    depthAttachment2 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
    [depthAttachment2 setClearDepth:0.0];

    depthAttachment3 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
    [depthAttachment3 setLoadAction:2];

    depthAttachment4 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
    [depthAttachment4 setStoreAction:0];
  }
}

- (void)_rebuildBitmapContextIfNeeded
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    Width = CGBitmapContextGetWidth(bitmapContext);
    pixelWidth = self->_pixelWidth;
    Height = CGBitmapContextGetHeight(self->_bitmapContext);
    if (Width == pixelWidth && Height == self->_pixelHeight)
    {
      if (self->_bitmapContext)
      {
        return;
      }
    }

    else
    {
      Data = CGBitmapContextGetData(self->_bitmapContext);
      free(Data);
      CFRelease(self->_bitmapContext);
      self->_bitmapContext = 0;
    }
  }

  v8 = 4 * (self->_pixelWidth & 0x3FFFFFFF);
  v9 = malloc_type_malloc(v8 * self->_pixelHeight, 0x100004077774924uLL);
  v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  self->_bitmapContext = CGBitmapContextCreate(v9, self->_pixelWidth, self->_pixelHeight, 8uLL, v8, v10, 0x4001u);

  CFRelease(v10);
}

- (void)dealloc
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    Data = CGBitmapContextGetData(bitmapContext);
    free(Data);
    CFRelease(self->_bitmapContext);
  }

  v5.receiver = self;
  v5.super_class = AVTSnapshotHelper;
  [(AVTSnapshotHelper *)&v5 dealloc];
}

- (uint64_t)newImageWithRenderer:(uint64_t)renderer antialiasingMode:(uint64_t)mode pixelWidth:(uint64_t)width pixelHeight:(void *)height imagePointSize:(double)size contentScaleFactor:(double)factor error:(float)error
{
  v15 = a2;
  if (self && (v16 = [(AVTSnapshotHelper *)self newCGImageWithRenderer:v15 antialiasingMode:renderer pixelWidth:mode pixelHeight:width error:height]) != 0)
  {
    v17 = v16;
    v18 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v16 scale:0 orientation:error];
    CFRelease(v17);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)newCGImageWithRenderer:(os_log_t)log antialiasingMode:pixelWidth:pixelHeight:error:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "_device";
  v1 = *MEMORY[0x1E69E9840];
}

- (void)newCGImageWithRenderer:(uint64_t *)a1 antialiasingMode:(NSObject *)a2 pixelWidth:pixelHeight:error:.cold.2(uint64_t *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 136315394;
  v5 = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
  v6 = 2048;
  v7 = v2;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: %s Failed to create a command buffer from command queue %p", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)newCGImageWithRenderer:(uint64_t)a3 antialiasingMode:pixelWidth:pixelHeight:error:.cold.3(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = avt_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [a2 status];
    v11 = [a2 logs];
    v12 = 136316418;
    v13 = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
    v14 = 2112;
    v15 = v9;
    v16 = 2048;
    v17 = a1;
    v18 = 1024;
    v19 = v10;
    v20 = 2112;
    v21 = a3;
    v22 = 2112;
    v23 = v11;
    _os_log_error_impl(&dword_1BB472000, v6, OS_LOG_TYPE_ERROR, "Error: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", &v12, 0x3Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end