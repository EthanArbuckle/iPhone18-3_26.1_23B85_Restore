@interface CIRenderDestination
+ (int)_crashed_because_nonaddressable_memory_was_passed_to_initWithBitmapData:(void *)data width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row format:(int)format;
- (BOOL)blendsInDestinationColorSpace;
- (BOOL)isClamped;
- (BOOL)isCompressed;
- (BOOL)isDithered;
- (BOOL)isFlipped;
- (CGColorSpaceRef)colorSpace;
- (CIBlendKernel)blendKernel;
- (CIRenderDestination)init;
- (CIRenderDestination)initWithBitmapData:(void *)data width:(NSUInteger)width height:(NSUInteger)height bytesPerRow:(NSUInteger)bytesPerRow format:(CIFormat)format;
- (CIRenderDestination)initWithGLTexture:(unsigned int)texture target:(unsigned int)target width:(NSUInteger)width height:(NSUInteger)height;
- (CIRenderDestination)initWithIOSurface:(IOSurface *)surface;
- (CIRenderDestination)initWithMTLTexture:(id)texture commandBuffer:(id)commandBuffer;
- (CIRenderDestination)initWithPixelBuffer:(CVPixelBufferRef)pixelBuffer;
- (CIRenderDestination)initWithWidth:(NSUInteger)width height:(NSUInteger)height pixelFormat:(MTLPixelFormat)pixelFormat commandBuffer:(id)commandBuffer mtlTextureProvider:(void *)block;
- (CIRenderDestination)initWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format colorSpace:(CGColorSpace *)space pixelBufferProvider:(id)provider;
- (CIRenderDestination)initWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format colorSpace:(CGColorSpace *)space surfaceProvider:(id)provider;
- (CIRenderDestinationAlphaMode)alphaMode;
- (NSUInteger)height;
- (NSUInteger)width;
- (id)_initWithInternalRenderDestination:(void *)destination width:(unint64_t)width height:(unint64_t)height format:(int)format colorspace:(CGColorSpace *)colorspace;
- (id)debugDescription;
- (id)description;
- (id)imageRepresentation;
- (id)label;
- (id)surface;
- (int)ditherDepth;
- (int)format;
- (void)_internalRenderDestination;
- (void)_render:(id)_render withContext:(id)context;
- (void)_set_YCC_matrix:(int)c_matrix fullRange:(BOOL)range depth:(int)depth isFloat:(float)float;
- (void)dealloc;
- (void)setAlphaMode:(CIRenderDestinationAlphaMode)alphaMode;
- (void)setBlendKernel:(CIBlendKernel *)blendKernel;
- (void)setBlendsInDestinationColorSpace:(BOOL)blendsInDestinationColorSpace;
- (void)setClamped:(BOOL)clamped;
- (void)setColorSpace:(CGColorSpaceRef)colorSpace;
- (void)setCompressed:(BOOL)compressed;
- (void)setDithered:(BOOL)dithered;
- (void)setFlipped:(BOOL)flipped;
- (void)setLabel:(id)label;
@end

@implementation CIRenderDestination

- (CIRenderDestination)init
{
  v3 = ci_logger_api();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(CIRenderDestination *)v3 init:v4];
  }

  return 0;
}

- (void)_internalRenderDestination
{
  priv = self->_priv;
  if (priv)
  {
    return *priv;
  }

  else
  {
    return 0;
  }
}

- (id)_initWithInternalRenderDestination:(void *)destination width:(unint64_t)width height:(unint64_t)height format:(int)format colorspace:(CGColorSpace *)colorspace
{
  if (destination)
  {
    v8 = *&format;
    v20.receiver = self;
    v20.super_class = CIRenderDestination;
    v12 = [(CIRenderDestination *)&v20 init];
    if (v12)
    {
      v13 = malloc_type_calloc(1uLL, 0x98uLL, 0x10A0040E62546F1uLL);
      v14 = CI::Object::ref(destination);
      *v13 = v14;
      v13[1] = width;
      v13[2] = height;
      *(v13 + 6) = v8;
      CI::RenderDestination::setColorspace(v14, colorspace);
      v16 = CI::format_modernize(v8, "[CIRenderDestination _initWithInternalRenderDestination:width:height:format:colorspace:]", v15);
      v17 = v16;
      if (v16 <= 2568)
      {
        if (!v16)
        {
          v13[15] = 1;
          *(v13 + 136) = 1;
          goto LABEL_14;
        }

        if (v16 == 2567)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v16 == 2569 || v16 == 3081)
        {
LABEL_12:
          v13[15] = 1;
          goto LABEL_13;
        }

        if (v16 == 3079)
        {
LABEL_7:
          v13[15] = 0;
LABEL_13:
          *(v13 + 136) = 0;
LABEL_14:
          *(v13 + 64) = 0;
          *(v13 + 33) = CI::format_bits_per_component(v17);
          *(v13 + 137) = 0;
          v13[18] = 0;
          v12->_priv = v13;
          return v12;
        }
      }

      if (!CI::format_only_alpha(v16))
      {
        if (CI::format_has_unpremul_alpha(v17))
        {
          v13[15] = 2;
          v19 = 1;
        }

        else
        {
          v13[15] = CI::format_has_alpha(v17);
          v19 = CI::format_is_float(v17) ^ 1;
        }

        *(v13 + 136) = v19;
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {

    return 0;
  }

  return v12;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    if (*priv)
    {
      CI::Object::unref(*priv);
    }

    v4 = *(priv + 18);
    *(priv + 18) = 0;
    free(self->_priv);
    self->_priv = 0;
  }

  v5.receiver = self;
  v5.super_class = CIRenderDestination;
  [(CIRenderDestination *)&v5 dealloc];
}

- (void)_render:(id)_render withContext:(id)context
{
  v4 = (MEMORY[0x1EEE9AC00])(self, a2, _render, context);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v68 = *MEMORY[0x1E69E9840];
  _internalContext = [v5 _internalContext];
  _internalRenderDestination = [v9 _internalRenderDestination];
  _internalRepresentation = [v8 _internalRepresentation];
  if (!_internalRenderDestination)
  {
    operator new();
  }

  v13 = _internalRepresentation;
  if (!_internalRepresentation)
  {
    operator new();
  }

  if (!_internalContext)
  {
    operator new();
  }

  [v8 extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if ((*(*_internalContext + 16))(_internalContext) == 83)
  {
    v69.origin.x = v15;
    v69.origin.y = v17;
    v69.size.width = v19;
    v69.size.height = v21;
    v22 = CGRectIsInfinite(v69) ? INFINITY : v19 * v21;
    v23 = v13[112];
    v24 = CI_MAX_CPU_RENDER_SIZE();
    v25 = (v24 * v24);
    if (v23 != 1 || v22 > v25)
    {
      v26 = *(_internalContext + 86);
      if (+[CIContext isOpenCLAvailable])
      {
        _internalContext = [v6 _internalFallbackCL];
        v27 = 0;
        v28 = "OpenCL";
      }

      else if (+[CIContext isMetalAvailable])
      {
        _internalContext = (*(*_internalContext + 120))(_internalContext);
        v27 = 0;
        v28 = "Metal";
      }

      else
      {
        v28 = 0;
        v27 = 1;
      }

      v29 = fmemopen(__buf, 0x4000uLL, "w");
      CI::Image::print_graph(v13, v29);
      if (v27)
      {
        if ((v23 & 1) == 0)
        {
          v30 = ci_logger_render();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [(CIRenderDestination *)__buf _render:v30 withContext:v31, v32, v33, v34, v35, v36];
          }

          operator new();
        }
      }

      else
      {
        snprintf(__str, 0x100uLL, " extent exceeds maximum area of %d x %d", v24, v24);
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        *v50 = 0u;
        v51 = 0u;
        v37 = "";
        if (v22 > v25)
        {
          v38 = __str;
        }

        else
        {
          v38 = "";
        }

        if ((v22 <= v25) | v23 & 1)
        {
          v39 = "";
        }

        else
        {
          v39 = " and";
        }

        if (!v23)
        {
          v37 = " it uses an incompatible kernel";
        }

        snprintf(v50, 0x100uLL, "The CIImage %p will be rendered by %s instead of CPU because%s%s%s.", v13, v28, v38, v39, v37);
        v40 = ci_logger_render();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v47 = v50;
          v48 = 2082;
          v49 = __buf;
          _os_log_impl(&dword_19CC36000, v40, OS_LOG_TYPE_INFO, "%{public}s\n%{public}s", buf, 0x16u);
        }

        *(_internalContext + 86) = v26;
      }
    }
  }

  [v8 extent];
  ++_internalContext[19];
  _internalContext[24] = 0;
  _internalContext[20] = v41;
  _internalContext[21] = v42;
  _internalContext[22] = v43;
  _internalContext[23] = v44;
  (*(*_internalContext + 248))(_internalContext, 0);
  return (*(*_internalRenderDestination + 72))(_internalRenderDestination, v13, _internalContext);
}

- (void)_set_YCC_matrix:(int)c_matrix fullRange:(BOOL)range depth:(int)depth isFloat:(float)float
{
  v24 = *MEMORY[0x1E69E9840];
  if (c_matrix)
  {
    if (float == 0.0)
    {
      depthCopy = depth;
    }

    else
    {
      depthCopy = 0;
    }

    if (get_rgb_to_ycc_matrix(c_matrix, range, depthCopy, v23, &v21, &v19, &v17))
    {
      v9 = v21;
      v10 = v22;
      v11 = v19;
      v12 = v20;
      v13 = v17;
      v14 = v18;
      v15 = *v23;
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
      v12 = 0;
      v14 = 0;
      v11 = 0uLL;
      v13 = 0uLL;
      v15 = 0uLL;
    }

    priv = self->_priv;
    *(priv + 7) = c_matrix;
    *(priv + 2) = v9;
    *(priv + 6) = v10;
    *(priv + 56) = v11;
    *(priv + 9) = v12;
    *(priv + 5) = v13;
    *(priv + 12) = v14;
    *(priv + 104) = v15;
  }
}

- (CIRenderDestination)initWithPixelBuffer:(CVPixelBufferRef)pixelBuffer
{
  v43 = *MEMORY[0x1E69E9840];
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    if (Width - 1 >= 0xF4240 || Height - 1 >= 0xF4240)
    {
      v18 = ci_logger_api();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v18 initWithPixelBuffer:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    else
    {
      v8 = CI::format_from_CVPixelBuffer(pixelBuffer, v7);
      if (checkFormat(v8))
      {
        is_ycc_biplanar = CI::format_is_ycc_biplanar(v8);
        if ((is_ycc_biplanar ^ (CVPixelBufferGetPlaneCount(pixelBuffer) < 2)))
        {
          CVImageBufferCopyColorSpace(pixelBuffer);
          if (CVPixelBufferGetIOSurface(pixelBuffer))
          {
            operator new();
          }

          operator new();
        }

        v34 = ci_logger_api();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v34 initWithPixelBuffer:v35, v36, v37, v38, v39, v40, v41];
        }
      }

      else
      {
        v26 = ci_logger_api();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v26 initWithPixelBuffer:v27, v28, v29, v30, v31, v32, v33];
        }
      }
    }
  }

  else
  {
    v10 = ci_logger_api();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v10 initWithPixelBuffer:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  return 0;
}

- (CIRenderDestination)initWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format colorSpace:(CGColorSpace *)space pixelBufferProvider:(id)provider
{
  if (!provider)
  {
    v21 = ci_logger_api();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v21 initWithWidth:v22 height:v23 pixelFormat:v24 colorSpace:v25 pixelBufferProvider:v26, v27, v28];
    }

    goto LABEL_18;
  }

  if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
  {
    v29 = ci_logger_api();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v29 initWithWidth:v30 height:v31 pixelFormat:v32 colorSpace:v33 pixelBufferProvider:v34, v35, v36];
    }

    goto LABEL_18;
  }

  v9 = CI::format_from_PixelFormatType(*&format);
  if (!checkFormat(v9))
  {
    v37 = ci_logger_api();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v37 initWithWidth:v38 height:v39 pixelFormat:v40 colorSpace:v41 pixelBufferProvider:v42, v43, v44];
    }

    goto LABEL_18;
  }

  if (!space)
  {
    goto LABEL_21;
  }

  TypeID = CGColorSpaceGetTypeID();
  if (TypeID != CFGetTypeID(space) || !CGColorSpaceSupportsOutput(space))
  {
LABEL_10:
    v13 = ci_logger_api();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v13 initWithWidth:v14 height:v15 pixelFormat:v16 colorSpace:v17 pixelBufferProvider:v18, v19, v20];
    }

LABEL_18:

    return 0;
  }

  is_luminance = CI::format_is_luminance(v9);
  Model = CGColorSpaceGetModel(space);
  if (!is_luminance)
  {
    if (Model == kCGColorSpaceModelRGB)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (Model)
  {
    goto LABEL_10;
  }

LABEL_21:
  v46 = ci_logger_api();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [(CIRenderDestination *)v46 initWithWidth:v47 height:v48 pixelFormat:v49 colorSpace:v50 pixelBufferProvider:v51, v52, v53];
  }

  return self;
}

- (CIRenderDestination)initWithIOSurface:(IOSurface *)surface
{
  v43 = *MEMORY[0x1E69E9840];
  if (surface)
  {
    Width = IOSurfaceGetWidth(surface);
    Height = IOSurfaceGetHeight(surface);
    if (Width - 1 >= 0xF4240 || Height - 1 >= 0xF4240)
    {
      v18 = ci_logger_api();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v18 initWithIOSurface:v19, v20, v21, v22, v23, v24, v25];
      }
    }

    else
    {
      v8 = CI::format_from_IOSurface(surface, v7);
      if (checkFormat(v8))
      {
        is_ycc_biplanar = CI::format_is_ycc_biplanar(v8);
        if ((is_ycc_biplanar ^ (IOSurfaceGetPlaneCount(surface) < 2)))
        {
          CopySurfaceColorSpace(surface);
          operator new();
        }

        v34 = ci_logger_api();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v34 initWithIOSurface:v35, v36, v37, v38, v39, v40, v41];
        }
      }

      else
      {
        v26 = ci_logger_api();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v26 initWithIOSurface:v27, v28, v29, v30, v31, v32, v33];
        }
      }
    }
  }

  else
  {
    v10 = ci_logger_api();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v10 initWithIOSurface:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  return 0;
}

- (CIRenderDestination)initWithWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format colorSpace:(CGColorSpace *)space surfaceProvider:(id)provider
{
  if (!provider)
  {
    v21 = ci_logger_api();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v21 initWithWidth:v22 height:v23 pixelFormat:v24 colorSpace:v25 surfaceProvider:v26, v27, v28];
    }

    goto LABEL_18;
  }

  if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
  {
    v29 = ci_logger_api();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v29 initWithWidth:v30 height:v31 pixelFormat:v32 colorSpace:v33 surfaceProvider:v34, v35, v36];
    }

    goto LABEL_18;
  }

  v9 = CI::format_from_PixelFormatType(*&format);
  if (!checkFormat(v9))
  {
    v37 = ci_logger_api();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v37 initWithWidth:v38 height:v39 pixelFormat:v40 colorSpace:v41 surfaceProvider:v42, v43, v44];
    }

    goto LABEL_18;
  }

  if (!space)
  {
    goto LABEL_21;
  }

  TypeID = CGColorSpaceGetTypeID();
  if (TypeID != CFGetTypeID(space) || !CGColorSpaceSupportsOutput(space))
  {
LABEL_10:
    v13 = ci_logger_api();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v13 initWithWidth:v14 height:v15 pixelFormat:v16 colorSpace:v17 surfaceProvider:v18, v19, v20];
    }

LABEL_18:

    return 0;
  }

  is_luminance = CI::format_is_luminance(v9);
  Model = CGColorSpaceGetModel(space);
  if (!is_luminance)
  {
    if (Model == kCGColorSpaceModelRGB)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (Model)
  {
    goto LABEL_10;
  }

LABEL_21:
  v46 = ci_logger_api();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    [(CIRenderDestination *)v46 initWithWidth:v47 height:v48 pixelFormat:v49 colorSpace:v50 surfaceProvider:v51, v52, v53];
  }

  return self;
}

- (CIRenderDestination)initWithMTLTexture:(id)texture commandBuffer:(id)commandBuffer
{
  if (texture)
  {
    width = [texture width];
    height = [texture height];
    if ((width - 1) >= 0xF4240 || (height - 1) >= 0xF4240)
    {
      v24 = ci_logger_api();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v24 initWithMTLTexture:v25 commandBuffer:v26, v27, v28, v29, v30, v31];
      }
    }

    else if ([texture depth] == 1)
    {
      if ([texture textureType] == 2)
      {
        if (([texture usage] & 2) != 0)
        {
          v59 = 0;
          Format = CIMetalTextureGetFormat(texture);
          v50 = CIFormatFromCIMetalTextureFormat(Format, &v59);
          if (v50)
          {
            default_colorspace_for_format(v50, v59);
            operator new();
          }

          v51 = ci_logger_api();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [(CIRenderDestination *)v51 initWithMTLTexture:v52 commandBuffer:v53, v54, v55, v56, v57, v58];
          }
        }

        else
        {
          v8 = ci_logger_api();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [(CIRenderDestination *)v8 initWithMTLTexture:v9 commandBuffer:v10, v11, v12, v13, v14, v15];
          }
        }
      }

      else
      {
        v40 = ci_logger_api();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v40 initWithMTLTexture:v41 commandBuffer:v42, v43, v44, v45, v46, v47];
        }
      }
    }

    else
    {
      v32 = ci_logger_api();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v32 initWithMTLTexture:v33 commandBuffer:v34, v35, v36, v37, v38, v39];
      }
    }
  }

  else
  {
    v16 = ci_logger_api();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v16 initWithMTLTexture:v17 commandBuffer:v18, v19, v20, v21, v22, v23];
    }
  }

  return 0;
}

- (CIRenderDestination)initWithWidth:(NSUInteger)width height:(NSUInteger)height pixelFormat:(MTLPixelFormat)pixelFormat commandBuffer:(id)commandBuffer mtlTextureProvider:(void *)block
{
  if (block)
  {
    if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
    {
      v17 = ci_logger_api();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v17 initWithWidth:v18 height:v19 pixelFormat:v20 commandBuffer:v21 mtlTextureProvider:v22, v23, v24];
      }
    }

    else
    {
      v34 = 0;
      v8 = CIFormatFromCIMetalTextureFormat(pixelFormat, &v34);
      if (v8)
      {
        default_colorspace_for_format(v8, v34);
        operator new();
      }

      v25 = ci_logger_api();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v25 initWithWidth:v26 height:v27 pixelFormat:v28 commandBuffer:v29 mtlTextureProvider:v30, v31, v32];
      }
    }
  }

  else
  {
    v9 = ci_logger_api();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v9 initWithWidth:v10 height:v11 pixelFormat:v12 commandBuffer:v13 mtlTextureProvider:v14, v15, v16];
    }
  }

  return 0;
}

- (CIRenderDestination)initWithGLTexture:(unsigned int)texture target:(unsigned int)target width:(NSUInteger)width height:(NSUInteger)height
{
  if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
  {
    v7 = ci_logger_api();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v7 initWithGLTexture:v8 target:v9 width:v10 height:v11, v12, v13, v14];
    }
  }

  else
  {
    if (target == 3553)
    {
      CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      operator new();
    }

    v15 = ci_logger_api();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v15 initWithGLTexture:v16 target:v17 width:v18 height:v19, v20, v21, v22];
    }
  }

  return 0;
}

+ (int)_crashed_because_nonaddressable_memory_was_passed_to_initWithBitmapData:(void *)data width:(unint64_t)width height:(unint64_t)height bytesPerRow:(unint64_t)row format:(int)format
{
  v11 = CI::format_bits_per_pixel(format);
  rowCopy2 = (v11 * width) >> 3;
  if (v11 == 12)
  {
    rowCopy2 = row;
  }

  if (!v11)
  {
    rowCopy2 = row;
  }

  return *(data + (height - 1) * row + rowCopy2 - 1) + *data;
}

- (CIRenderDestination)initWithBitmapData:(void *)data width:(NSUInteger)width height:(NSUInteger)height bytesPerRow:(NSUInteger)bytesPerRow format:(CIFormat)format
{
  if (data)
  {
    if (width - 1 >= 0xF4240 || height - 1 >= 0xF4240)
    {
      v27 = ci_logger_api();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v27 initWithBitmapData:v28 width:v29 height:v30 bytesPerRow:v31 format:v32, v33, v34];
      }
    }

    else if (bytesPerRow < 0x3D0901)
    {
      v37 = CI::format_modernize(*&format, "[CIRenderDestination initWithBitmapData:width:height:bytesPerRow:format:]", data);
      if (CI::format_is_supported_render_to_bitmap(v37))
      {
        v38 = CI::format_destination_rowbytes_requirement(v37);
        if (CI::format_bytes_per_pixel(v37) * width <= bytesPerRow)
        {
          if (!(bytesPerRow % v38))
          {
            [CIRenderDestination _crashed_because_nonaddressable_memory_was_passed_to_initWithBitmapData:data width:width height:height bytesPerRow:bytesPerRow format:v37];
            default_colorspace_for_format(v37, 0);
            operator new();
          }

          v48 = ci_logger_api();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            [CIRenderDestination initWithBitmapData:width:height:bytesPerRow:format:];
          }
        }

        else
        {
          v39 = ci_logger_api();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [(CIRenderDestination *)v39 initWithBitmapData:v40 width:v41 height:v42 bytesPerRow:v43 format:v44, v45, v46];
          }
        }
      }

      else
      {
        v47 = ci_logger_api();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          [CIRenderDestination initWithBitmapData:v37 width:? height:? bytesPerRow:? format:?];
        }
      }
    }

    else
    {
      v11 = ci_logger_api();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CIRenderDestination *)v11 initWithBitmapData:v12 width:v13 height:v14 bytesPerRow:v15 format:v16, v17, v18];
      }
    }
  }

  else
  {
    v19 = ci_logger_api();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v19 initWithBitmapData:v20 width:v21 height:v22 bytesPerRow:v23 format:v24, v25, v26];
    }
  }

  return 0;
}

- (NSUInteger)width
{
  priv = self->_priv;
  if (priv)
  {
    return priv[1];
  }

  else
  {
    return 0;
  }
}

- (NSUInteger)height
{
  priv = self->_priv;
  if (priv)
  {
    return priv[2];
  }

  else
  {
    return 0;
  }
}

- (CIRenderDestinationAlphaMode)alphaMode
{
  priv = self->_priv;
  if (priv)
  {
    return *(priv + 15);
  }

  else
  {
    return 0;
  }
}

- (void)setAlphaMode:(CIRenderDestinationAlphaMode)alphaMode
{
  if (alphaMode < 4)
  {
    priv = self->_priv;
    if (priv)
    {
      priv[15] = alphaMode;
    }
  }

  else
  {
    v3 = ci_logger_api();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v3 setAlphaMode:v4, v5, v6, v7, v8, v9, v10];
    }
  }
}

- (BOOL)isFlipped
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[128];
  }

  return priv & 1;
}

- (void)setFlipped:(BOOL)flipped
{
  priv = self->_priv;
  if (priv)
  {
    priv[128] = flipped;
  }
}

- (BOOL)isDithered
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[129];
  }

  return priv & 1;
}

- (void)setDithered:(BOOL)dithered
{
  priv = self->_priv;
  if (priv)
  {
    priv[129] = dithered;
  }
}

- (int)ditherDepth
{
  priv = self->_priv;
  if (priv)
  {
    return priv[33];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isClamped
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[136];
  }

  return priv & 1;
}

- (void)setClamped:(BOOL)clamped
{
  priv = self->_priv;
  if (priv)
  {
    priv[136] = clamped;
  }
}

- (BOOL)isCompressed
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[138];
  }

  return priv & 1;
}

- (void)setCompressed:(BOOL)compressed
{
  priv = self->_priv;
  if (priv)
  {
    priv[138] = compressed;
  }
}

- (int)format
{
  priv = self->_priv;
  if (priv)
  {
    v3 = (priv + 24);
  }

  else
  {
    v3 = &kCIFormatNil;
  }

  return *v3;
}

- (CGColorSpaceRef)colorSpace
{
  priv = self->_priv;
  if (priv && (v3 = *priv) != 0)
  {
    return *(v3 + 24);
  }

  else
  {
    return 0;
  }
}

- (void)setColorSpace:(CGColorSpaceRef)colorSpace
{
  priv = self->_priv;
  if (priv)
  {
    v4 = *priv;
    if (*priv)
    {
      if (v4[3] != colorSpace)
      {
        if (colorSpace)
        {
          v6 = *(priv + 6);
          TypeID = CGColorSpaceGetTypeID();
          if (TypeID != CFGetTypeID(colorSpace) || !CGColorSpaceSupportsOutput(colorSpace))
          {
            goto LABEL_9;
          }

          is_luminance = CI::format_is_luminance(v6);
          Model = CGColorSpaceGetModel(colorSpace);
          if (is_luminance)
          {
            if (Model)
            {
              goto LABEL_9;
            }
          }

          else if (Model != kCGColorSpaceModelRGB)
          {
LABEL_9:
            v10 = ci_logger_api();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [(CIRenderDestination *)v10 setColorSpace:v11, v12, v13, v14, v15, v16, v17];
            }

            return;
          }
        }

        CI::RenderDestination::setColorspace(v4, colorSpace);
      }
    }
  }
}

- (CIBlendKernel)blendKernel
{
  priv = self->_priv;
  if (priv)
  {
    return *(priv + 18);
  }

  else
  {
    return 0;
  }
}

- (void)setBlendKernel:(CIBlendKernel *)blendKernel
{
  priv = self->_priv;
  if (priv && priv[18] != blendKernel)
  {
    if (!blendKernel)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ((*(**priv + 16))() == 93 && ([*(*priv + 9) usage] & 1) == 0)
      {
        v5 = ci_logger_api();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [(CIRenderDestination *)v5 setBlendKernel:v6, v7, v8, v9, v10, v11, v12];
        }

        return;
      }

LABEL_9:
      v13 = priv[18];
      priv[18] = blendKernel;
      return;
    }

    v14 = ci_logger_api();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v14 setBlendKernel:v15, v16, v17, v18, v19, v20, v21];
    }
  }
}

- (BOOL)blendsInDestinationColorSpace
{
  priv = self->_priv;
  if (priv)
  {
    LOBYTE(priv) = priv[137];
  }

  return priv & 1;
}

- (void)setBlendsInDestinationColorSpace:(BOOL)blendsInDestinationColorSpace
{
  priv = self->_priv;
  if (priv)
  {
    priv[137] = blendsInDestinationColorSpace;
  }
}

- (id)label
{
  priv = self->_priv;
  if (priv && (v3 = *priv) != 0)
  {
    return *(v3 + 16);
  }

  else
  {
    return 0;
  }
}

- (void)setLabel:(id)label
{
  priv = self->_priv;
  if (priv)
  {
    if (*priv)
    {
      CI::RenderDestination::setLabel(*priv, label);
    }
  }
}

- (id)surface
{
  priv = self->_priv;
  if (!priv)
  {
    return 0;
  }

  v3 = *priv;
  if (*priv && (*(*v3 + 2))(v3, a2) == 91)
  {
    return v3[6];
  }

  else
  {
    return 0;
  }
}

- (id)imageRepresentation
{
  v30[2] = *MEMORY[0x1E69E9840];
  priv = self->_priv;
  v3 = *priv;
  v4 = *(priv + 1);
  v5 = *(priv + 2);
  null = *(*priv + 24);
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v7 = MEMORY[0x1E695DF90];
  v30[0] = null;
  v29[0] = @"CIImageColorSpace";
  v29[1] = @"CIImageFlipped";
  v30[1] = [MEMORY[0x1E696AD98] numberWithBool:priv[128]];
  v8 = [v7 dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v30, v29, 2)}];
  v9 = v8;
  has_alpha = 0;
  v11 = *(priv + 15);
  if (v11 <= 1)
  {
    if (!v11)
    {
      has_alpha = CI::format_has_alpha(*(priv + 6));
      goto LABEL_13;
    }

    if (v11 != 1)
    {
      goto LABEL_13;
    }

    v12 = MEMORY[0x1E695E118];
    goto LABEL_12;
  }

  if (v11 == 2)
  {
    v12 = MEMORY[0x1E695E110];
LABEL_12:
    [v8 setValue:v12 forKey:@"CIImagePremultiplied"];
    has_alpha = 0;
    goto LABEL_13;
  }

  if (v11 == 3)
  {
    return 0;
  }

LABEL_13:
  if (*(priv + 7))
  {
    [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:"), @"kCIImageYCCMatrix"}];
  }

  v13 = v4;
  v14 = (*(*v3 + 16))(v3);
  v16 = "";
  if (v14 > 91)
  {
    if (v14 == 92)
    {
      v17 = [CIImage imageWithTexture:*(v3 + 16) size:v9 options:v13, v5];
    }

    else
    {
      if (v14 == 93)
      {
        v19 = *(v3 + 9);
        v18 = v19;
      }

      else
      {
        if (v14 != 96)
        {
          goto LABEL_35;
        }

        v18 = CI::RenderToMTLTextureProvider::texture(v3);
        v19 = v18;
      }

      if (([v18 usage] & 1) == 0)
      {
        v16 = " because the MTLTexture usage does not inlude MTLTextureUsageShaderRead";
        goto LABEL_35;
      }

      v17 = [CIImage imageWithMTLTexture:v19 options:v9];
    }
  }

  else
  {
    switch(v14)
    {
      case 'Y':
        v17 = +[CIImage imageWithBitmapData:bytesPerRow:size:format:options:](CIImage, "imageWithBitmapData:bytesPerRow:size:format:options:", [MEMORY[0x1E695DEF0] dataWithBytes:*(*(v3 + 6) + 72) length:(v5 * *(*(v3 + 6) + 96))], *(v15 + 96), *(v15 + 104), v9, v13, v5);
        break;
      case 'Z':
        v17 = [CIImage imageWithCVPixelBuffer:(*(*v3 + 64))(v3) options:v9];
        break;
      case '[':
        v17 = [CIImage imageWithIOSurface:*(v3 + 6) options:v9];
        break;
      default:
        goto LABEL_35;
    }
  }

  v20 = v17;
  if (!v17)
  {
    v16 = "";
LABEL_35:
    v21 = ci_logger_api();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(CIRenderDestination *)v16 imageRepresentation:v21];
    }

    return 0;
  }

  if (has_alpha)
  {
    [(CIImage *)v17 extent];
    return [(CIImage *)v20 imageBySettingAlphaOneInExtent:?];
  }

  return v20;
}

- (id)description
{
  priv = self->_priv;
  if (priv)
  {
    _internalRenderDestination = [(CIRenderDestination *)self _internalRenderDestination];
    v5 = _internalRenderDestination;
    if (_internalRenderDestination && _internalRenderDestination[2])
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (%@)", _internalRenderDestination[2]];
    }

    else
    {
      v6 = &stru_1F1040378;
    }

    v7 = MEMORY[0x1E696AEC0];
    v8 = [objc_opt_class() description];
    v9 = [v7 stringWithFormat:@"<%@: %p%@ format: %s size: %ux%u", v8, self, v6, CI::name_for_format(priv[6]), *(priv + 1), *(priv + 2)];
    if (v5)
    {
      v10 = (*(*v5 + 24))(v5);
      v9 = [v9 stringByAppendingFormat:@" %@", v10];
      CFRelease(v10);
    }

    return [v9 stringByAppendingString:@">"];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CIRenderDestination;
    return [(CIRenderDestination *)&v12 description];
  }
}

- (id)debugDescription
{
  priv = self->_priv;
  if (priv && (v3 = *priv) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__CIRenderDestination_debugDescription__block_invoke;
    v5[3] = &unk_1E75C3C80;
    v5[4] = self;
    v5[5] = v3;
    v5[6] = priv;
    return stream_to_string(v5);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CIRenderDestination;
    return [(CIRenderDestination *)&v6 debugDescription];
  }
}

uint64_t __39__CIRenderDestination_debugDescription__block_invoke(uint64_t a1, FILE *a2)
{
  fprintf(a2, "%s\n", [objc_msgSend(*(a1 + 32) "description")]);
  fwrite("    colorspace: ", 0x10uLL, 1uLL, a2);
  CI::fprintf_cs(a2, *(*(a1 + 40) + 24), 1);
  fputc(10, a2);
  v4 = *(a1 + 48);
  v5 = *(v4 + 120);
  if (!v5)
  {
    fwrite("    alphaMode: None\n", 0x14uLL, 1uLL, a2);
    v4 = *(a1 + 48);
    v5 = *(v4 + 120);
  }

  if (v5 == 1)
  {
    fwrite("    alphaMode: Premultiplied\n", 0x1DuLL, 1uLL, a2);
    v4 = *(a1 + 48);
    v5 = *(v4 + 120);
  }

  if (v5 == 2)
  {
    fwrite("    alphaMode: Unpremultiplied\n", 0x1FuLL, 1uLL, a2);
    v4 = *(a1 + 48);
    v5 = *(v4 + 120);
  }

  if (v5 == 3)
  {
    fwrite("    alphaMode: Unassociated\n", 0x1CuLL, 1uLL, a2);
    v4 = *(a1 + 48);
  }

  v6 = *(v4 + 144);
  if (v6)
  {
    fprintf(a2, "    blendKernel: %s\n", [objc_msgSend(v6 "description")]);
    fprintf(a2, "    blendsInDestinationColorSpace: %d\n", *(*(a1 + 48) + 137));
    v4 = *(a1 + 48);
  }

  fprintf(a2, "    flipped: %d\n", *(v4 + 128));
  fprintf(a2, "    dithered: %d\n", *(*(a1 + 48) + 129));
  return fprintf(a2, "    clamped: %d", *(*(a1 + 48) + 136));
}

- (void)initWithBitmapData:(int)a1 width:height:bytesPerRow:format:.cold.2(int a1)
{
  CI::name_for_format(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s format %{public}s is unsupported.", v3, v4, v5, v6, 2u);
}

@end