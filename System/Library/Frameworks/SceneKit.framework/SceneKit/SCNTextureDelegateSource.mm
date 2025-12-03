@interface SCNTextureDelegateSource
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (void)__updateTextureWithDelegate:(id)delegate engineContext:(__C3DEngineContext *)context;
- (void)cleanup:(__C3DRendererContext *)cleanup;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
@end

@implementation SCNTextureDelegateSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNTextureDelegateSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  time = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context, sampler, time];
  if (time)
  {
    GLContext = C3DRendererContextGetGLContext(time);
  }

  else
  {
    GLContext = 0;
  }

  Scene = C3DEngineContextGetScene(context);
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

- (void)__updateTextureWithDelegate:(id)delegate engineContext:(__C3DEngineContext *)context
{
  v6 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context];
  Scene = C3DEngineContextGetScene(context);
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
      [(SCNTextureOffscreenRenderingSource *)self _bindFramebuffer:context];
      [self->_delegate drawInContext:GLContext atTime:v18];
      [(SCNTextureOffscreenRenderingSource *)self _unbindFramebuffer:context];
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

- (void)cleanup:(__C3DRendererContext *)cleanup
{
  v3.receiver = self;
  v3.super_class = SCNTextureDelegateSource;
  [(SCNTextureOffscreenRenderingSource *)&v3 cleanup:cleanup];
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  Stats = C3DEngineContextGetStats(context);
  v9 = CACurrentMediaTime();
  delegate = [(SCNTextureDelegateSource *)self delegate];
  if (delegate)
  {
    v11 = delegate;
    [delegate contentSize];
    v13 = 0;
    if (v14 > 0.0 && v12 > 0.0)
    {
      v13 = [(SCNTextureOffscreenRenderingSource *)self __prepareFramebufferWithSize:context withEngineContext:sampler textureSampler:0 needsStencil:?];
      [(SCNTextureDelegateSource *)self __updateTextureWithDelegate:v11 engineContext:context];
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