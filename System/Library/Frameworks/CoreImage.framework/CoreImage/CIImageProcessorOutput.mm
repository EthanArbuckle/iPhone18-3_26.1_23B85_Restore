@interface CIImageProcessorOutput
- (CGColorSpace)workingColorSpace;
- (CIImageProcessorOutput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context tileTask:(void *)self0;
- (MTLCommandBuffer)metalCommandBuffer;
- (MTLTexture)metalTexture;
- (__IOSurface)surface;
- (id)metalContext;
- (unsigned)contextID;
- (void)baseAddress;
- (void)dealloc;
- (void)metalTexture;
- (void)setError:(id)error;
@end

@implementation CIImageProcessorOutput

- (CIImageProcessorOutput)initWithSurface:(__IOSurface *)surface texture:(void *)texture digest:(unint64_t)digest allowSRGB:(BOOL)b bounds:(CGRect)bounds onlyMetal:(BOOL)metal context:(void *)context tileTask:(void *)self0
{
  if (surface | texture)
  {
    v22.receiver = self;
    v22.super_class = CIImageProcessorOutput;
    v19 = [CIImageProcessorInOut initWithSurface:sel_initWithSurface_texture_digest_allowSRGB_bounds_onlyMetal_context_ texture:bounds.origin.x digest:bounds.origin.y allowSRGB:bounds.size.width bounds:bounds.size.height onlyMetal:? context:?];
    if (v19)
    {
      taskCopy = task;
      if (task)
      {
        taskCopy = CI::Object::ref(task);
      }

      v19->_task = taskCopy;
    }
  }

  else
  {
    v11 = ci_logger_api();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CIImageProcessorOutput initWithSurface:v11 texture:v12 digest:v13 allowSRGB:v14 bounds:v15 onlyMetal:v16 context:v17 tileTask:v18];
    }

    return 0;
  }

  return v19;
}

- (void)dealloc
{
  self->_cmdBuffer = 0;
  if (self->super._surfaceLocked)
  {
    surface = self->super._surface;
    if (surface)
    {
      IOSurfaceUnlock(surface, 0, 0);
      self->super._surfaceLocked = 0;
    }
  }

  task = self->_task;
  if (task)
  {
    CI::Object::unref(task);
  }

  self->_task = 0;
  v5.receiver = self;
  v5.super_class = CIImageProcessorOutput;
  [(CIImageProcessorInOut *)&v5 dealloc];
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
    [(CIImageProcessorOutput *)v2 surface:v3];
  }

  return 0;
}

- (void)baseAddress
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
      [(CIImageProcessorOutput *)v4 baseAddress:v5];
    }

    return 0;
  }

  if (self->super._onlyMetal)
  {
    v12 = ci_logger_api();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorOutput *)v12 baseAddress:v13];
    }

    return 0;
  }

  if (IOSurfaceGetCompressionTypeOfPlane())
  {
    v20 = ci_logger_api();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorOutput *)v20 baseAddress:v21];
    }

    return 0;
  }

  if (!self->super._surfaceLocked)
  {
    IOSurfaceLock(self->super._surface, 0, 0);
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
      [CIImageProcessorOutput metalTexture];
    }
  }

  else
  {
    v3 = ci_logger_api();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorOutput *)v3 metalTexture:v4];
    }
  }

  return 0;
}

- (MTLCommandBuffer)metalCommandBuffer
{
  if (self->_cmdBuffer)
  {
    return self->_cmdBuffer;
  }

  v3 = (*(*self->super._context + 16))(self->super._context, a2);
  context = self->super._context;
  if (v3 == 85)
  {
    cmdBuffer = context[231];
LABEL_8:
    self->_cmdBuffer = cmdBuffer;
    goto LABEL_9;
  }

  v6 = (*(*context + 16))(context);
  device = [(CIImageProcessorInOut *)self device];
  if (v6 != 84)
  {
    {
      v18 = device;
      {
        singletonMTLCommandQueue(objc_object  {objcproto9MTLDevice}*)::commandQueue = CIMetalCommandQueueCreate("com.apple.CoreImage", v18);
      }
    }

    cmdBuffer = CIMetalCommandBufferCreate("com.apple.CoreImage", singletonMTLCommandQueue(objc_object  {objcproto9MTLDevice}*)::commandQueue, 0, 0);
    goto LABEL_8;
  }

  v8 = CIMetalCommandQueueCreate("com.apple.CoreImage", device);
  self->_cmdBuffer = CIMetalCommandBufferCreate("com.apple.CoreImage", v8, 0, 0);
  CFRelease(v8);
  cmdBuffer = self->_cmdBuffer;
LABEL_9:
  if (([(MTLCommandBuffer *)cmdBuffer retainedReferences]& 1) == 0)
  {
    v9 = ci_logger_api();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CIImageProcessorOutput *)v9 metalCommandBuffer:v10];
    }
  }

  return self->_cmdBuffer;
}

- (CGColorSpace)workingColorSpace
{
  context = self->super._context;
  if (context)
  {
    return *(context + 3);
  }

  else
  {
    return 0;
  }
}

- (unsigned)contextID
{
  context = self->super._context;
  if (context)
  {
    LODWORD(context) = (*(*context + 280))();
  }

  return context;
}

- (id)metalContext
{
  context = self->super._context;
  if (!context)
  {
    return 0;
  }

  metalContext = self->super._metalContext;
  if (!metalContext)
  {
    if ((*(*context + 16))(context, a2) == 85)
    {
      operator new();
    }

    if ((*(*self->super._context + 16))(self->super._context) == 84)
    {
      operator new();
    }

    if ((*(*self->super._context + 16))(self->super._context) == 82)
    {
      operator new();
    }

    metalContext = 0;
    self->super._metalContext = 0;
  }

  return metalContext;
}

- (void)setError:(id)error
{
  if (error)
  {
    task = self->_task;
    if (task)
    {
      CI::TileTask::setCommandBufferError(task, error);
    }
  }
}

- (void)metalTexture
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end