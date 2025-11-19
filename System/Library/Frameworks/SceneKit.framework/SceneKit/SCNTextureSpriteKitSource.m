@interface SCNTextureSpriteKitSource
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5;
- (double)__updateTextureWithSKScene:(id)a3 engineContext:(__C3DEngineContext *)a4 sampler:(__C3DTextureSampler *)a5;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5 status:(id *)a6;
- (void)__renderSKScene:(id)a3 withSKSCNRenderer:(id)a4 engineContext:(__C3DEngineContext *)a5 viewport:(double)a6 atTime:;
- (void)cleanup:(__C3DRendererContext *)a3;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5;
@end

@implementation SCNTextureSpriteKitSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNTextureSpriteKitSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (void)renderWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5
{
  Scene = C3DEngineContextGetScene(a3);
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
  Viewport = C3DEngineContextGetViewport(a3);
  if (objc_opt_respondsToSelector())
  {
    if (([(SKScene *)self->_scene _isDirty]& 1) != 0)
    {
      C3DEngineContextSetNextFrameTimeToAsap(a3);
    }

    else
    {
      [(SKScene *)self->_scene _notifyNextDirtyState];
    }
  }

  if (C3DEngineContextGetRenderContext(a3))
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
    [(SCNTextureSpriteKitSource *)self __renderSKScene:self->_scene withSKSCNRenderer:v11 engineContext:a3 viewport:Viewport.n128_f64[0] atTime:SystemTime];
  }
}

- (void)__renderSKScene:(id)a3 withSKSCNRenderer:(id)a4 engineContext:(__C3DEngineContext *)a5 viewport:(double)a6 atTime:
{
  v7 = v6;
  v18 = *&a6;
  v11 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:a5];
  Viewport = C3DEngineContextGetViewport(a5);
  C3DRendererContextSetViewport(v18);
  [a4 setBounds:{v18.n128_f32[0], v18.n128_f32[1], v18.n128_f32[2], v18.n128_f32[3]}];
  if ([a4 scene] != a3)
  {
    [a4 setScene:{a3, *&Viewport}];
  }

  [a4 updateAtTime:{v7, *&Viewport}];
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

  [a4 renderToFramebuffer:FBO shouldClear:1];
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

- (double)__updateTextureWithSKScene:(id)a3 engineContext:(__C3DEngineContext *)a4 sampler:(__C3DTextureSampler *)a5
{
  Scene = C3DEngineContextGetScene(a4);
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
      [(SCNTextureOffscreenRenderingSource *)self _bindFramebuffer:a4];
      [(SCNTextureSpriteKitSource *)self __renderSKScene:a3 withSKSCNRenderer:v13 engineContext:a4 viewport:*vcvt_hight_f32_f64(0 atTime:self->super._framebufferSize).i64, SystemTime];
      [(SCNTextureOffscreenRenderingSource *)self _unbindFramebuffer:a4];
      if (C3DTextureSamplerGetMipFilter(a5))
      {
        [(SCNTextureOffscreenRenderingSource *)self _buildMipmaps:a4];
      }
    }
  }

  return SystemTime;
}

- (void)cleanup:(__C3DRendererContext *)a3
{
  v3.receiver = self;
  v3.super_class = SCNTextureSpriteKitSource;
  [(SCNTextureOffscreenRenderingSource *)&v3 cleanup:a3];
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5
{
  Stats = C3DEngineContextGetStats(a3);
  v10 = CACurrentMediaTime();
  v11 = [(SCNTextureSpriteKitSource *)self scene];
  if (v11)
  {
    v12 = v11;
    [(SKScene *)v11 size];
    v14 = 0;
    if (v15 > 0.0 && v13 > 0.0)
    {
      v14 = [(SCNTextureOffscreenRenderingSource *)self __prepareFramebufferWithSize:a3 withEngineContext:a4 textureSampler:1 needsStencil:?];
      [(SCNTextureSpriteKitSource *)self __updateTextureWithSKScene:v12 engineContext:a3 sampler:a4];
      *a5 = v16;
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

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)a3 textureSampler:(__C3DTextureSampler *)a4 nextFrameTime:(double *)a5 status:(id *)a6
{
  RenderContext = C3DEngineContextGetRenderContext(a3);
  v11 = [(SCNMTLRenderContext *)RenderContext device];
  Stats = C3DEngineContextGetStats(a3);
  v13 = [(SCNTextureSpriteKitSource *)self scene];
  if (v13)
  {
    v14 = v13;
    v15 = CACurrentMediaTime();
    [(SKScene *)v14 size];
    v17 = v16;
    v19 = v18;
    v20 = [(SCNTextureSource *)self MTLTextureCache];
    if (!v20)
    {
      v21 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:C3DMetalFramebufferPixelFormat(0) width:v17 height:v19 mipmapped:0];
      [v21 setStorageMode:2];
      [v21 setUsage:21];
      v20 = [v11 newTextureWithDescriptor:v21];
      [(SCNTextureSource *)self setMTLTextureCache:v20];
    }

    Scene = C3DEngineContextGetScene(a3);
    AnimationManager = C3DSceneGetAnimationManager(Scene);
    SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager);
    if (!v20 || (v25 = SystemTime, self->_lastUpdate == SystemTime))
    {
      v28 = 0;
LABEL_22:
      a6->var0 = v28;
      a6->var1 = 1;
      *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v15;
      return v20;
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
      v31 = [v20 newTextureViewWithPixelFormat:SCNMTLPixelFormatNonSRGBVariant(objc_msgSend(v20, "pixelFormat"))];
      [v26 renderToTexture:v31 commandQueue:-[SCNMTLRenderContext commandQueue](RenderContext)];

      if (!v27)
      {
LABEL_18:
        *a5 = v25;
LABEL_21:
        v28 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      [v26 renderToTexture:v20 commandQueue:-[SCNMTLRenderContext commandQueue](RenderContext)];
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