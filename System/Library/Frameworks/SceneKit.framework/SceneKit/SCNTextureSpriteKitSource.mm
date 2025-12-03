@interface SCNTextureSpriteKitSource
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (double)__updateTextureWithSKScene:(id)scene engineContext:(__C3DEngineContext *)context sampler:(__C3DTextureSampler *)sampler;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)__renderSKScene:(id)scene withSKSCNRenderer:(id)renderer engineContext:(__C3DEngineContext *)context viewport:(double)viewport atTime:;
- (void)cleanup:(__C3DRendererContext *)cleanup;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
@end

@implementation SCNTextureSpriteKitSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNTextureSpriteKitSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  Scene = C3DEngineContextGetScene(context);
  AnimationManager = C3DSceneGetAnimationManager(Scene);
  if (!AnimationManager)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SCNTextureCoreAnimationSource __updateTextureWithLayer:v9 texture:? engineContext:? sampler:?];
    }
  }

  SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager);
  v11 = [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
  Viewport = C3DEngineContextGetViewport(context);
  if (objc_opt_respondsToSelector())
  {
    if (([(SKScene *)self->_scene _isDirty]& 1) != 0)
    {
      C3DEngineContextSetNextFrameTimeToAsap(context);
    }

    else
    {
      [(SKScene *)self->_scene _notifyNextDirtyState];
    }
  }

  if (C3DEngineContextGetRenderContext(context))
  {
    [v11 setBounds:{Viewport.n128_f32[0], Viewport.n128_f32[1], Viewport.n128_f32[2], Viewport.n128_f32[3]}];
    if ([v11 scene] != self->_scene)
    {
      [v11 setScene:?];
    }

    [SCNMTLRenderContext renderSKSceneWithRenderer:overlay:atTime:];
  }

  else
  {
    [(SCNTextureSpriteKitSource *)self __renderSKScene:self->_scene withSKSCNRenderer:v11 engineContext:context viewport:Viewport.n128_f64[0] atTime:SystemTime];
  }
}

- (void)__renderSKScene:(id)scene withSKSCNRenderer:(id)renderer engineContext:(__C3DEngineContext *)context viewport:(double)viewport atTime:
{
  v7 = v6;
  v18 = *&viewport;
  v11 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context];
  Viewport = C3DEngineContextGetViewport(context);
  C3DRendererContextSetViewport(v18);
  [renderer setBounds:{v18.n128_f32[0], v18.n128_f32[1], v18.n128_f32[2], v18.n128_f32[3]}];
  if ([renderer scene] != scene)
  {
    [renderer setScene:{scene, *&Viewport}];
  }

  [renderer updateAtTime:{v7, *&Viewport}];
  IsEnabled = glIsEnabled(0xB44u);
  v13 = glIsEnabled(0xBE2u);
  glDisable(0xBE2u);
  glDisable(0xB44u);
  *v19 = 0;
  *params = 0;
  glGetIntegerv(0x80CBu, &params[1]);
  glGetIntegerv(0x80CAu, params);
  glGetIntegerv(0x80C9u, &v19[1]);
  glGetIntegerv(0x80C8u, v19);
  glBlendFunc(0x302u, 0x303u);
  C3DRendererContextUnbindProgramObject(v11);
  C3DRendererContextUnbindBufferObjects(v11);
  BoundFramebuffer = C3DRendererContextGetBoundFramebuffer(v11);
  if (BoundFramebuffer)
  {
    FBO = C3DFramebufferGetFBO(BoundFramebuffer);
  }

  else
  {
    FBO = 0;
  }

  [renderer renderToFramebuffer:FBO shouldClear:1];
  if (IsEnabled)
  {
    glEnable(0xB44u);
  }

  glBlendFuncSeparate(v19[1], v19[0], params[1], params[0]);
  if (v13)
  {
    glEnable(0xBE2u);
  }

  C3DRendererContextSetViewport(v17);
}

- (double)__updateTextureWithSKScene:(id)scene engineContext:(__C3DEngineContext *)context sampler:(__C3DTextureSampler *)sampler
{
  Scene = C3DEngineContextGetScene(context);
  AnimationManager = C3DSceneGetAnimationManager(Scene);
  if (!AnimationManager)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [SCNTextureCoreAnimationSource __updateTextureWithLayer:v11 texture:? engineContext:? sampler:?];
    }
  }

  SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager);
  if (self->super._framebuffer)
  {
    if (self->_lastUpdate != SystemTime)
    {
      self->_lastUpdate = SystemTime;
      v13 = [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
      [(SCNTextureOffscreenRenderingSource *)self _bindFramebuffer:context];
      [(SCNTextureSpriteKitSource *)self __renderSKScene:scene withSKSCNRenderer:v13 engineContext:context viewport:*vcvt_hight_f32_f64(0 atTime:self->super._framebufferSize).i64, SystemTime];
      [(SCNTextureOffscreenRenderingSource *)self _unbindFramebuffer:context];
      if (C3DTextureSamplerGetMipFilter(sampler))
      {
        [(SCNTextureOffscreenRenderingSource *)self _buildMipmaps:context];
      }
    }
  }

  return SystemTime;
}

- (void)cleanup:(__C3DRendererContext *)cleanup
{
  v3.receiver = self;
  v3.super_class = SCNTextureSpriteKitSource;
  [(SCNTextureOffscreenRenderingSource *)&v3 cleanup:cleanup];
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  Stats = C3DEngineContextGetStats(context);
  v10 = CACurrentMediaTime();
  scene = [(SCNTextureSpriteKitSource *)self scene];
  if (scene)
  {
    v12 = scene;
    [(SKScene *)scene size];
    v14 = 0;
    if (v15 > 0.0 && v13 > 0.0)
    {
      v14 = [(SCNTextureOffscreenRenderingSource *)self __prepareFramebufferWithSize:context withEngineContext:sampler textureSampler:1 needsStencil:?];
      [(SCNTextureSpriteKitSource *)self __updateTextureWithSKScene:v12 engineContext:context sampler:sampler];
      *time = v16;
    }

    v17 = CACurrentMediaTime();
  }

  else
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SCNTextureSpriteKitSource textureWithEngineContext:v18 textureSampler:? nextFrameTime:?];
    }

    v17 = CACurrentMediaTime();
    v14 = 0;
  }

  *(Stats + 160) = *(Stats + 160) + v17 - v10;
  return v14;
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  RenderContext = C3DEngineContextGetRenderContext(context);
  device = [(SCNMTLRenderContext *)RenderContext device];
  Stats = C3DEngineContextGetStats(context);
  scene = [(SCNTextureSpriteKitSource *)self scene];
  if (scene)
  {
    v14 = scene;
    v15 = CACurrentMediaTime();
    [(SKScene *)v14 size];
    v17 = v16;
    v19 = v18;
    mTLTextureCache = [(SCNTextureSource *)self MTLTextureCache];
    if (!mTLTextureCache)
    {
      v21 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:C3DMetalFramebufferPixelFormat(0) width:v17 height:v19 mipmapped:0];
      [v21 setStorageMode:2];
      [v21 setUsage:21];
      mTLTextureCache = [device newTextureWithDescriptor:v21];
      [(SCNTextureSource *)self setMTLTextureCache:mTLTextureCache];
    }

    Scene = C3DEngineContextGetScene(context);
    AnimationManager = C3DSceneGetAnimationManager(Scene);
    SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager);
    if (!mTLTextureCache || (v25 = SystemTime, self->_lastUpdate == SystemTime))
    {
      v28 = 0;
LABEL_22:
      status->var0 = v28;
      status->var1 = 1;
      *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v15;
      return mTLTextureCache;
    }

    self->_lastUpdate = SystemTime;
    v26 = [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
    if (objc_opt_respondsToSelector())
    {
      v27 = [(SKScene *)v14 _isDirty]^ 1;
    }

    else
    {
      v27 = 0;
    }

    [v26 setBounds:{0.0, 0.0, v17, v19}];
    if ([v26 scene] != v14)
    {
      v30 = scn_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&dword_21BEF7000, v30, OS_LOG_TYPE_DEFAULT, "Warning: SCNTextureSource unexpected SKScene", v33, 2u);
      }
    }

    [v26 updateAtTime:v25];
    if (C3DLinearRenderingIsEnabled())
    {
      v31 = [mTLTextureCache newTextureViewWithPixelFormat:SCNMTLPixelFormatNonSRGBVariant(objc_msgSend(mTLTextureCache, "pixelFormat"))];
      [v26 renderToTexture:v31 commandQueue:-[SCNMTLRenderContext commandQueue](RenderContext)];

      if (!v27)
      {
LABEL_18:
        *time = v25;
LABEL_21:
        v28 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      [v26 renderToTexture:mTLTextureCache commandQueue:-[SCNMTLRenderContext commandQueue](RenderContext)];
      if (!v27)
      {
        goto LABEL_18;
      }
    }

    [(SKScene *)v14 _notifyNextDirtyState];
    goto LABEL_21;
  }

  v29 = scn_default_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [SCNTextureSpriteKitSource textureWithEngineContext:v29 textureSampler:? nextFrameTime:?];
  }

  return 0;
}

@end