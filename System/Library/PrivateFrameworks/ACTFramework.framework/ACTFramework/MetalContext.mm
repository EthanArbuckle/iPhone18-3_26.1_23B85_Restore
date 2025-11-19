@interface MetalContext
+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)a3;
- (BOOL)writeMetalTextureToData:(void *)a3 texture:(id)a4 mipmapLevel:(int)a5;
- (BOOL)writeMetalTextureToFile:(const char *)a3 texture:(id)a4 mipmapLevel:(int)a5;
- (MetalContext)init;
- (MetalContext)initWithDevice:(id)a3 library:(id)a4 commandQueue:(id)a5;
- (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 plane:(unint64_t)a7;
- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 plane:(unint64_t)a5;
- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 textureSize:(CGSize)a5 plane:(unint64_t)a6;
- (id)newBufferWithPixelFormat:(unint64_t)a3 width:(int)a4 data:(const void *)a5;
- (id)newTextureWithPixelFormat:(unint64_t)a3 width:(int)a4 height:(int)a5;
- (id)readBufferFromFile:(const char *)a3 width:(int)a4 pixelFormat:(unint64_t)a5;
- (id)readTextureFromFile:(const char *)a3 width:(int)a4 height:(int)a5 pixelFormat:(unint64_t)a6;
- (int)writeMetalBufferToFile:(const char *)a3 buffer:(id)a4;
- (void)copyMTLBufferToMTLTexture:(id)a3 bytesPerRow:(unint64_t)a4 texture:(id)a5;
@end

@implementation MetalContext

- (MetalContext)init
{
  v28.receiver = self;
  v28.super_class = MetalContext;
  v2 = [(MetalContext *)&v28 init];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = MTLCreateSystemDefaultDevice();
  device = v2->_device;
  v2->_device = v3;

  v5 = v2->_device;
  if (!v5)
  {
    sub_23C474170(&v29);
    if (v29)
    {
      goto LABEL_7;
    }

LABEL_9:
    v24 = v2;
    goto LABEL_10;
  }

  v6 = MEMORY[0x277CCA8D8];
  v7 = objc_opt_class();
  v10 = objc_msgSend_bundleForClass_(v6, v8, v7, v9);
  v27 = 0;
  v12 = objc_msgSend_newDefaultLibraryWithBundle_error_(v5, v11, v10, &v27);
  v13 = v27;
  library = v2->_library;
  v2->_library = v12;

  if (v2->_library)
  {
    v18 = objc_msgSend_newCommandQueue(v2->_device, v15, v16, v17);
    commandQueue = v2->_commandQueue;
    v2->_commandQueue = v18;

    v22 = v2->_commandQueue;
    if (v22)
    {
      objc_msgSend_setBackgroundGPUPriority_(v22, v20, 2, v21);
      v23 = 0;
      goto LABEL_6;
    }

    sub_23C4740B8(&v29);
  }

  else
  {
    sub_23C474114(&v29);
  }

  v23 = v29;
LABEL_6:

  if (!v23)
  {
    goto LABEL_9;
  }

LABEL_7:
  v24 = 0;
LABEL_10:
  v25 = v24;

  return v25;
}

- (MetalContext)initWithDevice:(id)a3 library:(id)a4 commandQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MetalContext;
  v12 = [(MetalContext *)&v17 init];
  v13 = v12;
  if (!v12 || (objc_storeStrong(&v12->_device, a3), v13->_device) && (objc_storeStrong(&v13->_library, a4), v13->_library) && (objc_storeStrong(&v13->_commandQueue, a5), v13->_commandQueue) || sub_23C4741CC())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v15;
}

- (BOOL)writeMetalTextureToFile:(const char *)a3 texture:(id)a4 mipmapLevel:(int)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v11 = v7;
  v12 = 0;
  if (!a3 || !v7 || a5 < 0)
  {
    goto LABEL_9;
  }

  if (objc_msgSend_mipmapLevelCount(v7, v8, v9, v10) <= a5)
  {
    v12 = 0;
    goto LABEL_9;
  }

  objc_msgSend_pixelFormat(v11, v13, v14, v15);
  MTLPixelFormatGetInfoForDevice();
  v16 = v33;
  v20 = objc_msgSend_width(v11, v17, v18, v19) >> a5;
  v24 = objc_msgSend_height(v11, v21, v22, v23) >> a5;
  v12 = malloc_type_malloc(v20 * v33 * v24, 0x100004077774924uLL);
  memset(v32, 0, sizeof(v32));
  v33 = v20;
  v34 = v24;
  v35 = 1;
  objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v11, v25, v12, v20 * v16, v32, a5);
  v26 = fopen(a3, "wb");
  if (!v26)
  {
    v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_9:
    free(v12);
    v28 = 0;
    goto LABEL_11;
  }

  v27 = v26;
  v28 = fwrite(v12, v16, v24 * v20, v26) == v24 * v20;
  if (!v28)
  {
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  free(v12);
  fclose(v27);
LABEL_11:

  return v28;
}

- (int)writeMetalBufferToFile:(const char *)a3 buffer:(id)a4
{
  v5 = a4;
  v6 = fopen(a3, "wb");
  if (v6)
  {
    v7 = v6;
    v8 = v5;
    v12 = objc_msgSend_contents(v8, v9, v10, v11);
    v16 = objc_msgSend_length(v5, v13, v14, v15);
    if (fwrite(v12, 1uLL, v16, v7) == v16)
    {
      v17 = 0;
    }

    else
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v17 = -1;
    }

    fclose(v7);
  }

  else
  {
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v17 = -1;
  }

  return v17;
}

- (id)newTextureWithPixelFormat:(unint64_t)a3 width:(int)a4 height:(int)a5
{
  if (a5 == 1)
  {
    v8 = objc_msgSend_textureBufferDescriptorWithPixelFormat_width_resourceOptions_usage_(MEMORY[0x277CD7058], a2, a3, a4, 0, 19);
  }

  else
  {
    v8 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], a2, a3, a4, a5, 0);
    objc_msgSend_setUsage_(v8, v9, 19, v10);
  }

  v11 = objc_msgSend_newTextureWithDescriptor_(self->_device, v6, v8, v7);

  return v11;
}

- (id)newBufferWithPixelFormat:(unint64_t)a3 width:(int)a4 data:(const void *)a5
{
  v8 = objc_msgSend_bytesPerPixelForTextureFormat_(MetalContext, a2, a3, *&a4) * a4;
  device = self->_device;
  if (a5)
  {

    return objc_msgSend_newBufferWithBytes_length_options_(device, v7, a5, v8, 0);
  }

  else
  {

    return objc_msgSend_newBufferWithLength_options_(device, v7, v8, 0);
  }
}

- (id)readTextureFromFile:(const char *)a3 width:(int)a4 height:(int)a5 pixelFormat:(unint64_t)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v24 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = objc_msgSend_bytesPerPixelForTextureFormat_(MetalContext, a2, a6, *&a4) * a4;
  __ptr = malloc_type_malloc(v12 * v7, 0x100004077774924uLL);
  if (__ptr)
  {
    v13 = fopen(a3, "rb");
    if (v13)
    {
      v15 = v13;
      v16 = objc_msgSend_newTextureWithPixelFormat_width_height_(self, v14, a6, v8, v7);
      fread(__ptr, v12 * v7, 1uLL, v15);
      memset(v22, 0, 24);
      v22[3] = v11;
      if (v7 == 1)
      {
        v23 = vdupq_n_s64(1uLL);
      }

      else
      {
        v23.i64[0] = v7;
        v23.i64[1] = 1;
      }

      objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v16, v17, v22, 0, __ptr, v12);
      free(__ptr);
      fclose(v15);
      goto LABEL_10;
    }

    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    free(__ptr);
  }

  else
  {
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (id)readBufferFromFile:(const char *)a3 width:(int)a4 pixelFormat:(unint64_t)a5
{
  v7 = objc_msgSend_bytesPerPixelForTextureFormat_(MetalContext, a2, a5, *&a4) * a4;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (v8)
  {
    v9 = v8;
    v10 = fopen(a3, "rb");
    if (v10)
    {
      v11 = v10;
      fread(v9, v7, 1uLL, v10);
      v13 = objc_msgSend_newBufferWithBytes_length_options_(self->_device, v12, v9, v7, 0);
      free(v9);
      fclose(v11);
      goto LABEL_7;
    }

    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    free(v9);
  }

  else
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 plane:(unint64_t)a5
{
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (IOSurface)
  {
    v9 = IOSurface;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, a5);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v9, a5);
    v13 = objc_msgSend_bindIOSurfaceToMTL2DTexture_pixelFormat_width_height_plane_(self, v12, v9, a4, WidthOfPlane, HeightOfPlane, a5);
  }

  else
  {
    sub_23C47422C();
    v13 = 0;
  }

  return v13;
}

- (id)bindPixelBufferToMTL2DTexture:(__CVBuffer *)a3 pixelFormat:(unint64_t)a4 textureSize:(CGSize)a5 plane:(unint64_t)a6
{
  height = a5.height;
  width = a5.width;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (IOSurface)
  {
    v12 = IOSurface;
    WidthOfPlane = IOSurfaceGetWidthOfPlane(IOSurface, a6);
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v12, a6);
    if (width > WidthOfPlane)
    {
      sub_23C4742EC();
    }

    else
    {
      if (height <= HeightOfPlane)
      {
        v16 = objc_msgSend_bindIOSurfaceToMTL2DTexture_pixelFormat_width_height_plane_(self, v15, v12, a4, width, height, a6);
        goto LABEL_5;
      }

      sub_23C47428C();
    }
  }

  else
  {
    sub_23C47434C();
  }

  v16 = 0;
LABEL_5:

  return v16;
}

- (id)bindIOSurfaceToMTL2DTexture:(__IOSurface *)a3 pixelFormat:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6 plane:(unint64_t)a7
{
  v10 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x277CD7058], a2, a4, a5, a6, 0);
  v13 = v10;
  if (!v10 || (objc_msgSend_setUsage_(v10, v11, 23, v12), (v15 = objc_msgSend_newTextureWithDescriptor_iosurface_plane_(self->_device, v14, v13, a3, a7)) == 0))
  {
    sub_23C4743AC();
    v15 = 0;
  }

  return v15;
}

- (void)copyMTLBufferToMTLTexture:(id)a3 bytesPerRow:(unint64_t)a4 texture:(id)a5
{
  commandQueue = self->_commandQueue;
  v8 = a5;
  v9 = a3;
  v13 = objc_msgSend_commandBuffer(commandQueue, v10, v11, v12);
  v17 = objc_msgSend_blitCommandEncoder(v13, v14, v15, v16);
  v21 = objc_msgSend_height(v8, v18, v19, v20) * a4;
  v44[0] = objc_msgSend_width(v8, v22, v23, v24);
  v44[1] = objc_msgSend_height(v8, v25, v26, v27);
  v44[2] = objc_msgSend_depth(v8, v28, v29, v30);
  memset(v43, 0, sizeof(v43));
  objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v17, v31, v9, 0, a4, v21, v44, v8, 0, 0, v43);

  objc_msgSend_endEncoding(v17, v32, v33, v34);
  objc_msgSend_addCompletedHandler_(v13, v35, &unk_284F097D0, v36);
  objc_msgSend_commit(v13, v37, v38, v39);
  objc_msgSend_waitUntilCompleted(v13, v40, v41, v42);
}

+ (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)a3
{
  v3 = a3 - 62;
  if (a3 - 62 <= 0x3F)
  {
    if (((1 << v3) & 0xF00C1F0FLL) != 0)
    {
      return 4;
    }

    if (((1 << v3) & 0x3D0E0000000000) != 0)
    {
      return 8;
    }

    if (((1 << v3) & 0xE000000000000000) != 0)
    {
      return 16;
    }
  }

  if (a3 <= 0x3C)
  {
    if (((1 << a3) & 0x80743D00000) != 0)
    {
      return 2;
    }

    if (((1 << a3) & 0x7402) != 0)
    {
      return 1;
    }

    if (((1 << a3) & 0x10E0000000000000) != 0)
    {
      return 4;
    }
  }

  NSLog(&cfstr_UnidentifiedMe.isa, a2);
  return 0;
}

- (BOOL)writeMetalTextureToData:(void *)a3 texture:(id)a4 mipmapLevel:(int)a5
{
  v7 = a4;
  v11 = v7;
  v12 = 0;
  if (v7 && (a5 & 0x80000000) == 0)
  {
    if (objc_msgSend_mipmapLevelCount(v7, v8, v9, v10) <= a5)
    {
      v12 = 0;
    }

    else
    {
      objc_msgSend_pixelFormat(v11, v13, v14, v15);
      MTLPixelFormatGetInfoForDevice();
      v19 = objc_msgSend_width(v11, v16, v17, v18) >> a5;
      v23 = objc_msgSend_height(v11, v20, v21, v22);
      memset(v27, 0, sizeof(v27));
      v24 = v19 * v28;
      v28 = v19;
      v12 = 1;
      v29 = v23 >> a5;
      v30 = 1;
      objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v11, v25, a3, v24, v27, a5);
    }
  }

  return v12;
}

@end