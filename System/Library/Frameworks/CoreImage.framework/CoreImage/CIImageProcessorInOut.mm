@interface CIImageProcessorInOut
- (CGRect)region;
- (CIImageProcessorInOut)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context;
- (MTLDevice)device;
- (__CVBuffer)pixelBuffer;
- (id)debugDescription;
- (id)debugQuickLookObject;
- (id)description;
- (int)format;
- (unint64_t)bytesPerRow;
- (unint64_t)digest;
- (void)dealloc;
@end

@implementation CIImageProcessorInOut

- (CIImageProcessorInOut)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context
{
  if (context)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    bCopy = b;
    v31.receiver = self;
    v31.super_class = CIImageProcessorInOut;
    v20 = [(CIImageProcessorInOut *)&v31 init];
    if (v20)
    {
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v20->_region = CGRectIntegral(v32);
      if (surface)
      {
        CFRetain(surface);
        v20->_surface = surface;
        v20->_usesSRGB = 0;
        if (bCopy && IOSurfaceGetPixelFormat(surface) == 1111970369)
        {
          v20->_usesSRGB = 1;
        }
      }

      else
      {
        v20->_surface = 0;
        v20->_usesSRGB = 0;
      }

      v20->_onlyMetal = metal;
      v20->_context = CI::Object::ref(context);
      if ((*(*context + 16))(context) == 85)
      {
        if (texture)
        {
          v29 = CFRetain(texture);
        }

        else
        {
          v29 = 0;
        }

        v20->_mtlTexture = v29;
      }

      v20->_surfaceLocked = 0;
      v20->_digest = digest;
    }
  }

  else
  {
    v21 = ci_logger_api();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorInOut *)v21 initWithSurface:v22 texture:v23 digest:v24 allowSRGB:v25 bounds:v26 onlyMetal:v27 context:v28];
    }

    return 0;
  }

  return v20;
}

- (void)dealloc
{
  surface = self->_surface;
  if (surface)
  {
    CFRelease(surface);
  }

  self->_surface = 0;
  context = self->_context;
  if (context)
  {
    CI::Object::unref(context);
  }

  mtlTexture = self->_mtlTexture;
  if (mtlTexture)
  {
    CFRelease(mtlTexture);
  }

  self->_mtlTexture = 0;

  self->_metalContext = 0;
  v6.receiver = self;
  v6.super_class = CIImageProcessorInOut;
  [(CIImageProcessorInOut *)&v6 dealloc];
}

- (MTLDevice)device
{
  v3 = (*(*self->_context + 16))(self->_context, a2);
  context = self->_context;
  if (v3 == 85)
  {

    return CI::MetalContext::device(context);
  }

  else
  {
    if ((*(*context + 2))(context) == 84)
    {
      v6 = (*(*self->_context + 120))(self->_context);
      v7 = CI::MetalContext::device(v6);
      if (v6)
      {
        CI::Object::unref(v6);
      }
    }

    else
    {
      {
        singletonMTLDevice(CI::Context const*)::device = CIMetalCopyDefaultDevice();
      }

      return singletonMTLDevice(CI::Context const*)::device;
    }

    return v7;
  }
}

- (__CVBuffer)pixelBuffer
{
  if (CGRectIsEmpty(self->_region))
  {
    return 0;
  }

  surface = self->_surface;
  if (!surface)
  {
    return 0;
  }

  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(0, surface, 0, &pixelBufferOut);
  result = pixelBufferOut;
  if (pixelBufferOut)
  {
    CFAutorelease(pixelBufferOut);
    return pixelBufferOut;
  }

  return result;
}

- (unint64_t)bytesPerRow
{
  if (CGRectIsEmpty(self->_region))
  {
    return 0;
  }

  surface = self->_surface;
  if (!surface)
  {
    return 0;
  }

  return IOSurfaceGetBytesPerRow(surface);
}

- (int)format
{
  if (CGRectIsEmpty(self->_region))
  {
    return 0;
  }

  surface = self->_surface;
  if (surface)
  {

    return CI::format_from_IOSurface_ignore_values(surface, v3);
  }

  else
  {
    mtlTexture = self->_mtlTexture;
    if (!mtlTexture)
    {
      return 0;
    }

    pixelFormat = [mtlTexture pixelFormat];

    return CIFormatFromCIMetalTextureFormat(pixelFormat, 0);
  }
}

- (unint64_t)digest
{
  if (CGRectIsEmpty(self->_region) || !self->_surface)
  {
    return 0;
  }

  else
  {
    return self->_digest;
  }
}

- (id)description
{
  [(CIImageProcessorInOut *)self region];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = CI::name_for_format([(CIImageProcessorInOut *)self format]);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = "";
  }

  v13 = [objc_opt_class() description];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  if (CGRectIsInfinite(v19))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p %s region [infinite]>", v13, self, v12, v15, v16, v17, v18];
  }

  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  if (CGRectIsEmpty(v20))
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p %s region [empty]>", v13, self, v12, v15, v16, v17, v18];
  }

  else
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p %s region [%g %g %g %g]>", v13, self, v12, *&v4, *&v6, *&v8, *&v10];
  }
}

- (id)debugDescription
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__CIImageProcessorInOut_debugDescription__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

uint64_t __41__CIImageProcessorInOut_debugDescription__block_invoke(uint64_t a1, FILE *a2)
{
  v4 = [objc_msgSend(objc_opt_class() "description")];
  fprintf(a2, "<%s: %p", v4, *(a1 + 32));
  v5 = CI::name_for_format([*(a1 + 32) format]);
  fprintf(a2, " %s", v5);
  v6 = *(a1 + 32);
  if (*(v6 + 48) == 1)
  {
    fwrite("(sRGB)", 6uLL, 1uLL, a2);
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v20.origin.x = v7;
  v20.origin.y = v8;
  v20.size.width = v9;
  v20.size.height = v10;
  if (CGRectIsInfinite(v20))
  {
    fwrite(" region [infinite]>", 0x13uLL, 1uLL, a2);
  }

  v21.origin.x = v7;
  v21.origin.y = v8;
  v21.size.width = v9;
  v21.size.height = v10;
  if (CGRectIsEmpty(v21))
  {
    fwrite(" region [empty]>", 0x10uLL, 1uLL, a2);
  }

  else
  {
    fprintf(a2, " region [%g %g %g %g]>", v7, v8, v9, v10);
  }

  v11 = *(*(a1 + 32) + 40);
  ID = IOSurfaceGetID(v11);
  fprintf(a2, "\n    IOSurface: %p(%d)", v11, ID);
  v13 = (*(**(*(a1 + 32) + 56) + 312))();
  v14 = (*(**(*(a1 + 32) + 56) + 280))();
  fprintf(a2, "\n    CIContext: (%s context %d", v13, v14);
  v15 = *(*(a1 + 32) + 56);
  v17 = *(v15 + 236);
  v16 = (v15 + 236);
  if (v17)
  {
    return fprintf(a2, ":%s)", v16);
  }

  return fputc(41, a2);
}

- (id)debugQuickLookObject
{
  v2 = [CIImage imageWithIOSurface:self->_surface options:0];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = NSSelectorFromString(&cfstr_Initwithciimag.isa);
  v5 = NSClassFromString(&cfstr_Uiimage.isa);
  if (!v5)
  {
    v5 = NSClassFromString(&cfstr_Nsbitmapimager.isa);
    if (!v5)
    {
      return 0;
    }
  }

  if (!v4)
  {
    return 0;
  }

  v6 = [v5 alloc];

  return [v6 performSelector:v4 withObject:v3];
}

- (CGRect)region
{
  x = self->_region.origin.x;
  y = self->_region.origin.y;
  width = self->_region.size.width;
  height = self->_region.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end