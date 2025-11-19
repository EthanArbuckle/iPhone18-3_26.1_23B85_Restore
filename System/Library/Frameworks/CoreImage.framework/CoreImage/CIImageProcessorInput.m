@interface CIImageProcessorInput
- (CIImageProcessorInput)initWithSurface:(__IOSurface *)a3 texture:(void *)a4 digest:(unint64_t)a5 allowSRGB:(BOOL)a6 bounds:(CGRect)a7 onlyMetal:(BOOL)a8 context:(void *)a9;
- (CIImageProcessorInput)initWithSurface:(__IOSurface *)a3 texture:(void *)a4 digest:(unint64_t)a5 allowSRGB:(BOOL)a6 bounds:(CGRect)a7 roiTileIndex:(unint64_t)a8 roiTileCount:(unint64_t)a9 onlyMetal:(BOOL)a10 context:(void *)a11;
- (MTLTexture)metalTexture;
- (__IOSurface)surface;
- (const)baseAddress;
- (void)dealloc;
- (void)metalTexture;
@end

@implementation CIImageProcessorInput

- (CIImageProcessorInput)initWithSurface:(__IOSurface *)a3 texture:(void *)a4 digest:(unint64_t)a5 allowSRGB:(BOOL)a6 bounds:(CGRect)a7 onlyMetal:(BOOL)a8 context:(void *)a9
{
  v10.receiver = self;
  v10.super_class = CIImageProcessorInput;
  result = [(CIImageProcessorInOut *)&v10 initWithSurface:a3 texture:a4 digest:a5 allowSRGB:a6 bounds:a8 onlyMetal:a9 context:a7.origin.x, a7.origin.y, a7.size.width, a7.size.height];
  if (result)
  {
    result->_roiTileIndex = 0;
    result->_roiTileCount = 1;
  }

  return result;
}

- (CIImageProcessorInput)initWithSurface:(__IOSurface *)a3 texture:(void *)a4 digest:(unint64_t)a5 allowSRGB:(BOOL)a6 bounds:(CGRect)a7 roiTileIndex:(unint64_t)a8 roiTileCount:(unint64_t)a9 onlyMetal:(BOOL)a10 context:(void *)a11
{
  result = [(CIImageProcessorInput *)self initWithSurface:a3 texture:a4 digest:a5 allowSRGB:a6 bounds:a10 onlyMetal:a11 context:a7.origin.x, a7.origin.y, a7.size.width, a7.size.height];
  if (result)
  {
    result->_roiTileIndex = a8;
    result->_roiTileCount = a9;
  }

  return result;
}

- (void)dealloc
{
  if (self->super._surfaceLocked)
  {
    surface = self->super._surface;
    if (surface)
    {
      IOSurfaceUnlock(surface, 1u, 0);
      self->super._surfaceLocked = 0;
    }
  }

  v4.receiver = self;
  v4.super_class = CIImageProcessorInput;
  [(CIImageProcessorInOut *)&v4 dealloc];
}

- (__IOSurface)surface
{
  if (!self->super._onlyMetal)
  {
    return self->super._surface;
  }

  v2 = ci_logger_api();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(CIImageProcessorInput *)v2 surface:v3];
  }

  return 0;
}

- (const)baseAddress
{
  if (CGRectIsEmpty(self->super._region))
  {
    return 0;
  }

  surface = self->super._surface;
  if (!surface)
  {
    return 0;
  }

  if (IOSurfaceGetPlaneCount(surface) >= 2)
  {
    v4 = ci_logger_api();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorInput *)v4 baseAddress:v5];
    }

    return 0;
  }

  if (self->super._onlyMetal)
  {
    v12 = ci_logger_api();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorInput *)v12 baseAddress:v13];
    }

    return 0;
  }

  if (IOSurfaceGetCompressionTypeOfPlane())
  {
    v20 = ci_logger_api();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorInput *)v20 baseAddress:v21];
    }

    return 0;
  }

  if (!self->super._surfaceLocked)
  {
    IOSurfaceLock(self->super._surface, 1u, 0);
    self->super._surfaceLocked = 1;
  }

  v29 = self->super._surface;

  return IOSurfaceGetBaseAddress(v29);
}

- (MTLTexture)metalTexture
{
  if (IOSurfaceGetPlaneCount(self->super._surface) < 2)
  {
    CIMetalFormatForFormat([(CIImageProcessorInOut *)self format], 0);
    [(CIImageProcessorInOut *)self device];
    MTLPixelFormatGetInfoForDevice();
    v11 = ci_logger_api();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CIImageProcessorInput metalTexture];
    }
  }

  else
  {
    v3 = ci_logger_api();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorInput *)v3 metalTexture:v4];
    }
  }

  return 0;
}

- (void)metalTexture
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end