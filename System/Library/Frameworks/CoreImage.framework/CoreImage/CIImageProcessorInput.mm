@interface CIImageProcessorInput
- (CIImageProcessorInput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context;
- (CIImageProcessorInput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds roiTileIndex:(unint64_t)index roiTileCount:(unint64_t)count onlyMetal:(BOOL)self0 context:(void *)self1;
- (MTLTexture)metalTexture;
- (__IOSurface)surface;
- (const)baseAddress;
- (void)dealloc;
- (void)metalTexture;
@end

@implementation CIImageProcessorInput

- (CIImageProcessorInput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context
{
  v10.receiver = self;
  v10.super_class = CIImageProcessorInput;
  result = [(CIImageProcessorInOut *)&v10 initWithSurface:surface texture:texture digest:digest allowSRGB:b bounds:metal onlyMetal:context context:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_roiTileIndex = 0;
    result->_roiTileCount = 1;
  }

  return result;
}

- (CIImageProcessorInput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds roiTileIndex:(unint64_t)index roiTileCount:(unint64_t)count onlyMetal:(BOOL)self0 context:(void *)self1
{
  result = [(CIImageProcessorInput *)self initWithSurface:surface texture:texture digest:digest allowSRGB:b bounds:metal onlyMetal:context context:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_roiTileIndex = index;
    result->_roiTileCount = count;
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