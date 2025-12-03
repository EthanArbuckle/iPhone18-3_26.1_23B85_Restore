@interface SCNTextureSource
- (__C3DRendererContext)rendererContextForTextureSourceWithEngineContext:(__C3DEngineContext *)context;
- (__C3DTexture)_textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (double)textureSize;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)cleanup:(__C3DRendererContext *)cleanup;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (void)setGlTextureCache:(id)cache;
- (void)setMTLTextureCache:(id)cache;
@end

@implementation SCNTextureSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNTextureSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (__C3DRendererContext)rendererContextForTextureSourceWithEngineContext:(__C3DEngineContext *)context
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(context);
  if ([(SCNTextureSource *)self prefersGL3]|| !RendererContextGL)
  {
    if (C3DTextureSourceGetSharedRendererContext_onceToken != -1)
    {
      [SCNTextureSource rendererContextForTextureSourceWithEngineContext:];
    }

    return C3DTextureSourceGetSharedRendererContext_rendererContext;
  }

  return RendererContextGL;
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  v6 = scn_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
  }

  return 0;
}

- (__C3DTexture)_textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  v6 = scn_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
  }

  return 0;
}

- (double)textureSize
{
  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
  }

  __asm { FMOV            V0.2S, #1.0 }

  return result;
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  if (!C3DEngineContextGetRenderContext(context))
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(SCNTextureSource *)v10 metalTextureWithEngineContext:v11 textureSampler:v12 nextFrameTime:v13 status:v14, v15, v16, v17];
    }
  }

  if ([(SCNTextureSource *)self supportsMetal])
  {
    IOSurface = 0;
  }

  else
  {
    [MEMORY[0x277CD9388] setCurrentContext:{C3DRendererContextGetGLContext(-[SCNTextureSource rendererContextForTextureSourceWithEngineContext:](self, "rendererContextForTextureSourceWithEngineContext:", context))}];
    result = [(SCNTextureSource *)self _textureWithEngineContext:context textureSampler:sampler nextFrameTime:time];
    if (!result)
    {
      return result;
    }

    IOSurface = C3DTextureGetIOSurface(result);
    glFlush();
  }

  result = [(SCNTextureSource *)self MTLTextureCache];
  if (!result)
  {
    RenderContext = C3DEngineContextGetRenderContext(context);
    device = [(SCNMTLRenderContext *)RenderContext device];
    [(SCNTextureSource *)self textureSize];
    v26 = v22;
    if (C3DLinearRenderingIsEnabled())
    {
      v23 = 71;
    }

    else
    {
      v23 = 70;
    }

    v24 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v23 width:*&v26 height:*(&v26 + 1) mipmapped:0, v26];
    [v24 setStorageMode:2 * (IOSurface == 0)];
    [v24 setUsage:1];
    v25 = [device newTextureWithDescriptor:v24 iosurface:IOSurface plane:0];
    [(SCNTextureSource *)self setMTLTextureCache:v25];
    return v25;
  }

  return result;
}

- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  v6 = scn_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
  }
}

- (void)cleanup:(__C3DRendererContext *)cleanup
{
  v4 = scn_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSource textureWithEngineContext:a2 textureSampler:? nextFrameTime:?];
  }
}

- (void)setMTLTextureCache:(id)cache
{
  mtlTextureCache = self->_mtlTextureCache;
  if (mtlTextureCache != cache)
  {

    self->_mtlTextureCache = cache;
  }
}

- (void)setGlTextureCache:(id)cache
{
  glTextureCache = self->_glTextureCache;
  if (glTextureCache != cache)
  {

    self->_glTextureCache = cache;
  }
}

- (void)textureWithEngineContext:(const char *)a1 textureSampler:nextFrameTime:.cold.1(const char *a1)
{
  NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: SCNTextureSource abstract method invoked %@", v3, v4, v5, v6, v7);
}

@end