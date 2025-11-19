@interface SCNTextureDelegateSource
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5;
- (void)__updateTextureWithDelegate:(id)a3 engineContext:(__C3DEngineContext *)a4;
- (void)cleanup:(__C3DRendererContext *)a3;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5;
@end

@implementation SCNTextureDelegateSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNTextureDelegateSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (void)renderWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5
{
  v7 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:a3, a4, a5];
  if (v7)
  {
    GLContext = C3DRendererContextGetGLContext(v7);
  }

  else
  {
    GLContext = 0;
  }

  Scene = C3DEngineContextGetScene(a3);
  AnimationManager = C3DSceneGetAnimationManager(Scene);
  if (!AnimationManager)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  [self->_delegate drawInContext:GLContext atTime:C3DAnimationManagerGetSystemTime(AnimationManager)];
}

- (void)__updateTextureWithDelegate:(id)a3 engineContext:(__C3DEngineContext *)a4
{
  v6 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:a4];
  Scene = C3DEngineContextGetScene(a4);
  AnimationManager = C3DSceneGetAnimationManager(Scene);
  if (!AnimationManager)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DAnimationManagerSetSystemTime_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager);
  if (self->super._framebuffer)
  {
    v18 = SystemTime;
    lastUpdate = self->_lastUpdate;
    if (lastUpdate != v18 && (lastUpdate == 0.0 || v18 > self->_nextUpdateDate || (objc_opt_respondsToSelector() & 1) != 0 && [self->_delegate needsUpdate]))
    {
      self->_lastUpdate = v18;
      GLContext = C3DRendererContextGetGLContext(v6);
      [(SCNTextureOffscreenRenderingSource *)self _bindFramebuffer:a4];
      [self->_delegate drawInContext:GLContext atTime:v18];
      [(SCNTextureOffscreenRenderingSource *)self _unbindFramebuffer:a4];
      v21 = objc_opt_respondsToSelector();
      v22 = 0.0;
      if (v21)
      {
        [self->_delegate nextFrameTime];
      }

      self->_nextUpdateDate = v18 + v22;
    }
  }
}

- (void)cleanup:(__C3DRendererContext *)a3
{
  v3.receiver = self;
  v3.super_class = SCNTextureDelegateSource;
  [(SCNTextureOffscreenRenderingSource *)&v3 cleanup:a3];
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5
{
  Stats = C3DEngineContextGetStats(a3);
  v9 = CACurrentMediaTime();
  v10 = [(SCNTextureDelegateSource *)self delegate];
  if (v10)
  {
    v11 = v10;
    [v10 contentSize];
    v13 = 0;
    if (v14 > 0.0 && v12 > 0.0)
    {
      v13 = [(SCNTextureOffscreenRenderingSource *)self __prepareFramebufferWithSize:a3 withEngineContext:a4 textureSampler:0 needsStencil:?];
      [(SCNTextureDelegateSource *)self __updateTextureWithDelegate:v11 engineContext:a3];
    }

    *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v9;
  }

  else
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SCNTextureDelegateSource textureWithEngineContext:v15 textureSampler:? nextFrameTime:?];
    }

    return 0;
  }

  return v13;
}

@end