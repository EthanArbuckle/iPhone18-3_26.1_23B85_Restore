@interface SCNTextureCoreAnimationSource
- (CGSize)layerSizeInPixels;
- (__C3DTexture)_textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time;
- (double)__renderLayer:(id)layer withCARenderer:(id)renderer engineContext:(__C3DEngineContext *)context viewport:(double)viewport atTime:(BOOL)time forceUpdate:(BOOL *)update didUpdate:;
- (double)__renderLayerUsingMetal:(id)metal withCARenderer:(id)renderer engineContext:(__C3DEngineContext *)context viewport:(double)viewport atTime:(BOOL)time forceUpdate:(BOOL *)update didUpdate:;
- (double)__updateTextureWithLayer:(id)layer texture:(id)texture engineContext:(__C3DEngineContext *)context sampler:(__C3DTextureSampler *)sampler;
- (double)layerContentsScaleFactor;
- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)_resizeLayer:(id)layer toSize:(CGSize)size updateLayer:(BOOL)updateLayer updateTransform:(BOOL)transform caRenderer:(id)renderer;
- (void)_resizeLayer:(id)layer toSize:(CGSize)size updateLayer:(BOOL)updateLayer updateTransform:(BOOL)transform caRenderer:(id)renderer isMainThread:(BOOL)thread;
- (void)cleanup:(__C3DRendererContext *)cleanup;
- (void)dealloc;
- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)setLayer:(id)layer;
@end

@implementation SCNTextureCoreAnimationSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNTextureCoreAnimationSource;
  [(SCNTextureSource *)&v3 dealloc];
}

- (void)setLayer:(id)layer
{
  layer = self->_layer;
  if (layer != layer)
  {

    self->_layer = layer;
  }
}

- (void)renderWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  if (C3DEngineContextGetRenderContext(context))
  {
    v11 = [(SCNTextureCoreAnimationSource *)self metalTextureWithEngineContext:context textureSampler:sampler nextFrameTime:time status:status];
    RenderContext = C3DEngineContextGetRenderContext(context);

    [(SCNMTLRenderContext *)RenderContext _drawFullScreenTexture:v11 over:0];
  }

  else
  {
    v13 = [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
    [objc_msgSend(v13 "layer")];
    v15 = CACurrentMediaTime() - v14;
    *&v16 = C3DEngineContextGetViewport(context).n128_u64[0];
    layer = self->_layer;

    [(SCNTextureCoreAnimationSource *)self __renderLayer:layer withCARenderer:v13 engineContext:context viewport:1 atTime:0 forceUpdate:v16 didUpdate:v15];
  }
}

- (void)_resizeLayer:(id)layer toSize:(CGSize)size updateLayer:(BOOL)updateLayer updateTransform:(BOOL)transform caRenderer:(id)renderer isMainThread:(BOOL)thread
{
  transformCopy = transform;
  updateLayerCopy = updateLayer;
  height = size.height;
  width = size.width;
  [MEMORY[0x277CD9FF0] begin];
  if (!thread)
  {
    [MEMORY[0x277CD9FF0] activateBackground:1];
  }

  [MEMORY[0x277CD9FF0] setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDA918]];
  if (updateLayerCopy)
  {
    [renderer setLayer:layer];
  }

  if (transformCopy)
  {
    v16 = [(SCNTextureCoreAnimationSource *)self layerToFocusForRenderedLayer:layer];
    if (v16 != layer)
    {
      [layer setAnchorPoint:{0.0, 0.0}];
      [v16 setAnchorPoint:{0.0, 0.0}];
      [layer setPosition:{0.0, 0.0}];
      [v16 setPosition:{0.0, 0.0}];
    }

    [v16 bounds];
    v18 = v17;
    v20 = v19;
    [v16 contentsScale];
    v22 = v21 * v18;
    v23 = v21 * v20;
    if (v21 * v18 != 0.0 || v23 != 0.0)
    {
      v24 = width / v22;
      v25 = height / v23;
      shouldFlip = [(SCNTextureSource *)self shouldFlip];
      if (shouldFlip)
      {
        if (v16 == layer)
        {
          [layer anchorPoint];
          v30 = v22 * ((v24 + -1.0) * v29);
          [layer anchorPoint];
          CATransform3DMakeTranslation(&v36, v30, v23 * ((v25 + -1.0) * v31), 0.0);
          *&a.m31 = *&v36.m31;
          *&a.m33 = *&v36.m33;
          *&a.m41 = *&v36.m41;
          *&a.m43 = *&v36.m43;
          *&a.m11 = *&v36.m11;
          *&a.m13 = *&v36.m13;
          v27 = *&v36.m21;
          v28 = *&v36.m23;
        }

        else
        {
          CATransform3DMakeTranslation(&v38, 0.0, height, 0.0);
          *&a.m31 = *&v38.m31;
          *&a.m33 = *&v38.m33;
          *&a.m41 = *&v38.m41;
          *&a.m43 = *&v38.m43;
          *&a.m11 = *&v38.m11;
          *&a.m13 = *&v38.m13;
          v27 = *&v38.m21;
          v28 = *&v38.m23;
        }
      }

      else
      {
        CATransform3DMakeTranslation(&v35, 0.0, 0.0, 0.0);
        *&a.m31 = *&v35.m31;
        *&a.m33 = *&v35.m33;
        *&a.m41 = *&v35.m41;
        *&a.m43 = *&v35.m43;
        *&a.m11 = *&v35.m11;
        *&a.m13 = *&v35.m13;
        v27 = *&v35.m21;
        v28 = *&v35.m23;
      }

      *&a.m21 = v27;
      *&a.m23 = v28;
      [layer setTransform:&a];
      CATransform3DMakeScale(&a, v24, v25, 1.0);
      if (layer)
      {
        [layer transform];
      }

      else
      {
        memset(&b, 0, sizeof(b));
      }

      CATransform3DConcat(&v34, &a, &b);
      a = v34;
      [layer setTransform:&a];
      if (shouldFlip)
      {
        CATransform3DMakeScale(&a, 1.0, -1.0, 1.0);
        if (layer)
        {
          [layer transform];
        }

        else
        {
          memset(&b, 0, sizeof(b));
        }

        CATransform3DConcat(&v32, &a, &b);
        a = v32;
        [layer setTransform:&a];
      }
    }
  }

  [MEMORY[0x277CD9FF0] commit];
}

- (void)_resizeLayer:(id)layer toSize:(CGSize)size updateLayer:(BOOL)updateLayer updateTransform:(BOOL)transform caRenderer:(id)renderer
{
  transformCopy = transform;
  updateLayerCopy = updateLayer;
  height = size.height;
  width = size.width;
  v14 = pthread_main_np();
  if (v14 || ![(SCNTextureCoreAnimationSource *)self requiresMainThreadUpdates])
  {

    [(SCNTextureCoreAnimationSource *)self _resizeLayer:layer toSize:updateLayerCopy updateLayer:transformCopy updateTransform:renderer caRenderer:v14 != 0 isMainThread:width, height];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__SCNTextureCoreAnimationSource__resizeLayer_toSize_updateLayer_updateTransform_caRenderer___block_invoke;
    v15[3] = &unk_2782FB7A8;
    v15[4] = self;
    v15[5] = layer;
    *&v15[7] = width;
    *&v15[8] = height;
    v16 = updateLayerCopy;
    v17 = transformCopy;
    v15[6] = renderer;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

- (double)__renderLayerUsingMetal:(id)metal withCARenderer:(id)renderer engineContext:(__C3DEngineContext *)context viewport:(double)viewport atTime:(BOOL)time forceUpdate:(BOOL *)update didUpdate:
{
  v11 = v8;
  rect2 = vcvt_hight_f64_f32(*&viewport);
  [renderer bounds];
  v24.size.width = rect2.f64[0];
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.height = rect2.f64[1];
  if (!CGRectEqualToRect(v22, v24))
  {
    [renderer setBounds:{0.0, 0.0, *&rect2}];
  }

  layer = [renderer layer];
  if (layer != metal || metal && ([metal transform], v21 > 0.0))
  {
    [(SCNTextureCoreAnimationSource *)self _resizeLayer:metal toSize:layer != metal updateLayer:1 updateTransform:renderer caRenderer:*&rect2];
  }

  [renderer beginFrameAtTime:0 timeStamp:v11];
  if (time || ([renderer updateBounds], !CGRectIsEmpty(v23)))
  {
    if (update)
    {
      *update = 1;
    }

    [renderer addUpdateRect:{0.0, 0.0, *&rect2}];
    [renderer render];
    [renderer nextFrameTime];
    v17 = v18;
    [renderer endFrame];
  }

  else
  {
    [renderer nextFrameTime];
    v17 = v16;
    [renderer endFrame];
    if (update)
    {
      *update = 0;
    }
  }

  return v17;
}

- (double)__renderLayer:(id)layer withCARenderer:(id)renderer engineContext:(__C3DEngineContext *)context viewport:(double)viewport atTime:(BOOL)time forceUpdate:(BOOL *)update didUpdate:
{
  v11 = v8;
  v27 = *&viewport;
  v15 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context];
  [MEMORY[0x277CD9388] setCurrentContext:C3DRendererContextGetGLContext(v15)];
  rect2 = vcvt_hight_f64_f32(v27);
  *&v16 = C3DRendererContextGetViewport();
  v25 = v16;
  C3DRendererContextSetViewport(v27);
  [renderer bounds];
  v42.size.width = rect2.f64[0];
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  v42.size.height = rect2.f64[1];
  if (!CGRectEqualToRect(v40, v42))
  {
    [renderer setBounds:{0.0, 0.0, *&rect2, v25}];
  }

  layer = [renderer layer];
  if (layer == layer)
  {
    if (!layer)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      goto LABEL_5;
    }

    [layer transform];
    if (*(&v34 + 1) <= 0.0)
    {
      goto LABEL_5;
    }
  }

  [(SCNTextureCoreAnimationSource *)self _resizeLayer:layer toSize:layer != layer updateLayer:1 updateTransform:renderer caRenderer:*&rect2];
LABEL_5:
  [renderer beginFrameAtTime:0 timeStamp:v11];
  if (time || ([renderer updateBounds], !CGRectIsEmpty(v41)))
  {
    if (update)
    {
      *update = 1;
    }

    *v30 = 0;
    *params = 0;
    [(SCNTextureCoreAnimationSource *)self clearValue];
    v29 = vdupq_lane_s32(v20, 0);
    C3DRendererContextClear(v15, 0x4000u, v29.i8);
    IsEnabled = glIsEnabled(0xB44u);
    v22 = glIsEnabled(0xBE2u);
    glDisable(0xBE2u);
    glDisable(0xB44u);
    glGetIntegerv(0x80CBu, &params[1]);
    glGetIntegerv(0x80CAu, params);
    glGetIntegerv(0x80C9u, &v30[1]);
    glGetIntegerv(0x80C8u, v30);
    glBlendFunc(0x302u, 0x303u);
    C3DRendererContextUnbindProgramObject(v15);
    C3DRendererContextUnbindBufferObjects(v15);
    [renderer addUpdateRect:{0.0, 0.0, *&rect2}];
    [renderer render];
    [renderer nextFrameTime];
    v19 = v23;
    [renderer endFrame];
    if (IsEnabled)
    {
      glEnable(0xB44u);
    }

    glBlendFuncSeparate(v30[1], v30[0], params[1], params[0]);
    if (v22)
    {
      glEnable(0xBE2u);
    }

    C3DRendererContextSetViewport(v26);
  }

  else
  {
    [renderer nextFrameTime];
    v19 = v18;
    [renderer endFrame];
    if (update)
    {
      *update = 0;
    }
  }

  return v19;
}

- (double)__updateTextureWithLayer:(id)layer texture:(id)texture engineContext:(__C3DEngineContext *)context sampler:(__C3DTextureSampler *)sampler
{
  Scene = C3DEngineContextGetScene(context);
  if (Scene)
  {
    AnimationManager = C3DSceneGetAnimationManager(Scene);
    if (!AnimationManager)
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [SCNTextureCoreAnimationSource __updateTextureWithLayer:v13 texture:? engineContext:? sampler:?];
      }
    }

    SystemTime = C3DAnimationManagerGetSystemTime(AnimationManager);
  }

  else
  {
    SystemTime = 0.0;
  }

  if (self->super._framebufferSize.width <= 0.0)
  {
    return INFINITY;
  }

  if (self->_lastUpdate == SystemTime)
  {
    return INFINITY;
  }

  v15 = [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
  [objc_msgSend(v15 "layer")];
  v17 = CACurrentMediaTime() - v16;
  lastUpdate = self->_lastUpdate;
  if (lastUpdate != 0.0 && SystemTime < self->_nextUpdateDate + -0.0166666667)
  {
    if (SystemTime == lastUpdate)
    {
      return INFINITY;
    }

    [v15 beginFrameAtTime:0 timeStamp:v17];
    [v15 updateBounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v15 endFrame];
    v34.origin.x = v20;
    v34.origin.y = v22;
    v34.size.width = v24;
    v34.size.height = v26;
    if (CGRectIsEmpty(v34))
    {
      return INFINITY;
    }
  }

  self->_lastUpdate = SystemTime;
  if (!texture)
  {
    [(SCNTextureOffscreenRenderingSource *)self _bindFramebuffer:context];
  }

  v33 = 0;
  *&v29 = vcvt_hight_f32_f64(0, self->super._framebufferSize).u64[0];
  if (texture)
  {
    [(SCNTextureCoreAnimationSource *)self __renderLayerUsingMetal:layer withCARenderer:v15 engineContext:context viewport:1 atTime:&v33 forceUpdate:v29 didUpdate:v17];
    v27 = v30;
  }

  else
  {
    [(SCNTextureCoreAnimationSource *)self __renderLayer:layer withCARenderer:v15 engineContext:context viewport:1 atTime:&v33 forceUpdate:v29 didUpdate:v17];
    v27 = v31;
    [(SCNTextureOffscreenRenderingSource *)self _unbindFramebuffer:context];
  }

  if (v33 == 1 && C3DTextureSamplerGetMipFilter(sampler))
  {
    [(SCNTextureOffscreenRenderingSource *)self _buildMipmaps:context];
  }

  self->_nextUpdateDate = 3.40282347e38;
  if (v27 != INFINITY && v27 != 3.40282347e38)
  {
    v32 = CACurrentMediaTime() - v27;
    if (v32 > 0.0)
    {
      self->_nextUpdateDate = SystemTime + v32;
    }
  }

  return v27;
}

- (void)cleanup:(__C3DRendererContext *)cleanup
{
  v3.receiver = self;
  v3.super_class = SCNTextureCoreAnimationSource;
  [(SCNTextureOffscreenRenderingSource *)&v3 cleanup:cleanup];
}

- (CGSize)layerSizeInPixels
{
  layer = [(SCNTextureCoreAnimationSource *)self layer];
  [(CALayer *)layer bounds];
  v4 = v3;
  v6 = v5;
  [(CALayer *)layer contentsScale];
  v8 = v7 * v6;
  v9 = v7 * v4;
  result.height = v8;
  result.width = v9;
  return result;
}

- (double)layerContentsScaleFactor
{
  layer = [(SCNTextureCoreAnimationSource *)self layer];

  [(CALayer *)layer contentsScale];
  return result;
}

- (__C3DTexture)textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  if ([(SCNTextureCoreAnimationSource *)self layer])
  {
    [(SCNTextureCoreAnimationSource *)self layerSizeInPixels];
    glTextureCache = 0;
    if (v9 > 0.0)
    {
      v28 = v10;
      v29 = v9;
      if (v10 > 0.0)
      {
        currentContext = [MEMORY[0x277CD9388] currentContext];
        v13 = [(SCNTextureSource *)self rendererContextForTextureSourceWithEngineContext:context];
        [MEMORY[0x277CD9388] setCurrentContext:C3DRendererContextGetGLContext(v13)];
        glTextureCache = [(SCNTextureCoreAnimationSource *)self _textureWithEngineContext:context textureSampler:sampler nextFrameTime:time];
        glFlush();
        if (currentContext)
        {
          [MEMORY[0x277CD9388] setCurrentContext:currentContext];
        }

        if (glTextureCache)
        {
          IOSurface = C3DTextureGetIOSurface(glTextureCache);
          if (IOSurface)
          {
            v15 = IOSurface;
            glTextureCache = [(SCNTextureSource *)self glTextureCache];
            if (!glTextureCache)
            {
              v16.f64[0] = v29;
              v16.f64[1] = v28;
              v17 = COERCE_DOUBLE(vcvt_f32_f64(v16));
              RendererContextGL = C3DEngineContextGetRendererContextGL(context);
              glTextureCache = C3DCreateTextureFromIOSurface(RendererContextGL, v15, 6408, sampler, v17);
              [(SCNTextureSource *)self setGlTextureCache:glTextureCache];
              CFRelease(glTextureCache);
            }
          }
        }
      }
    }
  }

  else
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(SCNTextureCoreAnimationSource *)v19 textureWithEngineContext:v20 textureSampler:v21 nextFrameTime:v22, v23, v24, v25, v26];
    }

    return 0;
  }

  return glTextureCache;
}

- (__C3DTexture)_textureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time
{
  Stats = C3DEngineContextGetStats(context);
  v10 = CACurrentMediaTime();
  layer = [(SCNTextureCoreAnimationSource *)self layer];
  if (layer)
  {
    v12 = layer;
    [(SCNTextureCoreAnimationSource *)self layerSizeInPixels];
    v14 = 0;
    if (v15 > 0.0 && v13 > 0.0)
    {
      v14 = [(SCNTextureOffscreenRenderingSource *)self __prepareFramebufferWithSize:context withEngineContext:sampler textureSampler:0 needsStencil:?];
      [(SCNTextureCoreAnimationSource *)self __updateTextureWithLayer:v12 texture:0 engineContext:context sampler:sampler];
      *time = v16;
    }

    *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v10;
  }

  else
  {
    v17 = scn_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(SCNTextureCoreAnimationSource *)v17 textureWithEngineContext:v18 textureSampler:v19 nextFrameTime:v20, v21, v22, v23, v24];
    }

    return 0;
  }

  return v14;
}

- (id)metalTextureWithEngineContext:(__C3DEngineContext *)context textureSampler:(__C3DTextureSampler *)sampler nextFrameTime:(double *)time status:(id *)status
{
  if ([(SCNTextureCoreAnimationSource *)self supportsMetal])
  {
    RenderContext = C3DEngineContextGetRenderContext(context);
    device = [(SCNMTLRenderContext *)RenderContext device];
    Stats = C3DEngineContextGetStats(context);
    v14 = CACurrentMediaTime();
    layer = [(SCNTextureCoreAnimationSource *)self layer];
    if (layer)
    {
      v16 = layer;
      [(SCNTextureCoreAnimationSource *)self layerSizeInPixels];
      v18 = v17;
      v20 = v19;
      self->super._framebufferSize.width = v17;
      self->super._framebufferSize.height = v19;
      mTLTextureCache = [(SCNTextureSource *)self MTLTextureCache];
      if (mTLTextureCache)
      {
        v22 = mTLTextureCache;
        v23 = 0;
      }

      else
      {
        v33 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:C3DMetalFramebufferPixelFormat(0) width:v18 height:v20 mipmapped:0];
        [v33 setStorageMode:2];
        [v33 setUsage:5];
        v22 = [device newTextureWithDescriptor:v33];
        [(SCNTextureSource *)self setMTLTextureCache:v22];

        v23 = 1;
      }

      status->var0 = v23;
      status->var1 = 1;
      [(SCNTextureCoreAnimationSource *)self __updateTextureWithLayer:v16 texture:v22 engineContext:context sampler:sampler];
      *time = v34;
      v32 = CACurrentMediaTime();
    }

    else
    {
      v24 = scn_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(SCNTextureCoreAnimationSource *)v24 textureWithEngineContext:v25 textureSampler:v26 nextFrameTime:v27, v28, v29, v30, v31];
      }

      v32 = CACurrentMediaTime();
      v22 = 0;
    }

    *(Stats + 160) = *(Stats + 160) + v32 - v14;
  }

  else
  {
    v36.receiver = self;
    v36.super_class = SCNTextureCoreAnimationSource;
    return [(SCNTextureSource *)&v36 metalTextureWithEngineContext:context textureSampler:sampler nextFrameTime:time status:status];
  }

  return v22;
}

- (void)__updateTextureWithLayer:(os_log_t)log texture:engineContext:sampler:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "animationManager";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

@end