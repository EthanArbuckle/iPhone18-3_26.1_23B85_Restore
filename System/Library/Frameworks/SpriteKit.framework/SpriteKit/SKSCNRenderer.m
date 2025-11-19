@interface SKSCNRenderer
+ (id)rendererWithContext:(id)a3 options:(id)a4;
+ (id)rendererWithDevice:(id)a3 options:(id)a4;
+ (int)getOpenGLFramebuffer:(id)a3;
+ (void)restoreDefaultOpenGLState:(id)a3 frameBuffer:(int)a4;
- (CGRect)bounds;
- (SKSCNRenderer)initWithSKCRenderer:(void *)a3;
- (double)_getDestBounds;
- (double)_getViewport;
- (id)_getOptions;
- (void)_initialize;
- (void)_showAllStats;
- (void)_update:(double)a3;
- (void)dealloc;
- (void)render:(BOOL)a3;
- (void)renderToFramebuffer:(int)a3 shouldClear:(BOOL)a4;
- (void)renderToTexture:(id)a3 commandQueue:(id)a4;
- (void)renderTransition:(id)a3 toFramebuffer:(int)a4 withInputTexture:(unsigned int)a5 outputTexture:(unsigned int)a6 inputTextureSize:(CGSize)a7 outputTextureSize:(CGSize)a8 time:(float)a9;
- (void)renderTransition:(id)a3 withInputTexture:(id)a4 outputTexture:(id)a5 time:(float)a6 encoder:(id)a7 pass:(id)a8 commandQueue:(id)a9;
- (void)renderTransition:(id)a3 withInputTexture:(unsigned int)a4 outputTexture:(unsigned int)a5 inputTextureSize:(CGSize)a6 outputTextureSize:(CGSize)a7 time:(float)a8;
- (void)renderWithEncoder:(id)a3 pass:(id)a4 commandQueue:(id)a5;
- (void)settingsForTransition:(id)a3 atTime:(double)a4 renderIncomingToTexture:(BOOL *)a5 renderOutgoingToTexture:(BOOL *)a6 renderIncomingToScreen:(BOOL *)a7 renderOutgoingToScreen:(BOOL *)a8;
- (void)updateAtTime:(double)a3;
@end

@implementation SKSCNRenderer

- (void)dealloc
{
  skcRenderer = self->_skcRenderer;
  if (skcRenderer)
  {
    SKCRenderer::~SKCRenderer(skcRenderer);
    MEMORY[0x21CF0A160]();
    self->_skcRenderer = 0;
  }

  v4.receiver = self;
  v4.super_class = SKSCNRenderer;
  [(SKSCNRenderer *)&v4 dealloc];
}

- (SKSCNRenderer)initWithSKCRenderer:(void *)a3
{
  v7.receiver = self;
  v7.super_class = SKSCNRenderer;
  v4 = [(SKSCNRenderer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_skcRenderer = a3;
    [(SKSCNRenderer *)v4 _initialize];
  }

  return v5;
}

- (void)_initialize
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  viewRenderOptions = self->_viewRenderOptions;
  self->_viewRenderOptions = v3;

  self->_timePreviousUpdate = -1.0;
  *&self->_hasRenderedOnce = 0;
  self->_disableInput = 0;
  scene = self->_scene;
  self->_scene = 0;

  self->_frames = 0;
  [(SKSCNRenderer *)self setShowsSpriteBounds:0];
  [(SKSCNRenderer *)self setShowsFPS:0];
  [(SKSCNRenderer *)self setShowsNodeCount:0];
  self->_backingScaleFactor = 1.0;
  self->_prevBackingScaleFactor = 0.0;
}

- (void)updateAtTime:(double)a3
{
  scene = self->_scene;
  if (scene)
  {
    [(SKScene *)scene size];
    v7 = v6;
    v9 = v8;
    if ([(SKScene *)self->_scene scaleMode]== SKSceneScaleModeResizeFill)
    {
      [(SKScene *)self->_scene size];
      v11 = v10;
      v13 = v12;
      [(SKSCNRenderer *)self bounds];
      if (v11 != v15 || v13 != v14)
      {
        v17 = self->_scene;
        [(SKSCNRenderer *)self bounds];
        [(SKScene *)v17 setSize:v18, v19];
        [(SKScene *)self->_scene didChangeSize:v7, v9];
      }
    }
  }

  timePreviousUpdate = self->_timePreviousUpdate;
  if (timePreviousUpdate <= 0.0)
  {
    self->_timePreviousUpdate = a3;
    timePreviousUpdate = a3;
  }

  v21 = CACurrentMediaTime();
  if (a3 - v21 < -0.025)
  {
    a3 = v21;
  }

  self->_timePreviousUpdate = a3;
  if (a3 - timePreviousUpdate >= 0.0)
  {
    if (a3 - timePreviousUpdate > 1.0 && (v22 = self->_scene) != 0)
    {
      v23 = [(SKNode *)v22 isPaused];
      [(SKScene *)self->_scene setPaused:1];
      skSetTime(a3);
      [(SKScene *)self->_scene setPaused:0];
      [(SKScene *)self->_scene setPaused:v23];
    }

    else
    {
      skSetTime(a3);
    }

    v24 = self->_scene;
    if (v24)
    {
      if ([(SKScene *)v24 _usesExplicitUpdate])
      {
        if (![(SKScene *)self->_scene _needsUpdate])
        {
          return;
        }

        [(SKScene *)self->_scene set_needsUpdate:0];
      }

      [(SKSCNRenderer *)self _update:a3];
    }
  }
}

- (void)renderWithEncoder:(id)a3 pass:(id)a4 commandQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  SKCRenderer::getBackingContext(self->_skcRenderer, &v15);
  if (!v15)
  {
    v11 = 0;
    goto LABEL_6;
  }

  v11 = __dynamic_cast(v15, MEMORY[0x277D218E8], MEMORY[0x277D218F0], 0);
  if (!v11)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v12 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v11)
  {
    jet_context_Metal::override_Metal_render_state();
    v13 = (*(*v11 + 400))(v11, v8, v9);
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v14, v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

- (void)renderTransition:(id)a3 withInputTexture:(id)a4 outputTexture:(id)a5 time:(float)a6 encoder:(id)a7 pass:(id)a8 commandQueue:(id)a9
{
  v15 = a3;
  v23 = a4;
  v16 = a5;
  v17 = a7;
  v24 = a8;
  v18 = a9;
  SKCRenderer::getBackingContext(self->_skcRenderer, &v26);
  if (!v26)
  {
    v19 = 0;
    goto LABEL_6;
  }

  v19 = __dynamic_cast(v26, MEMORY[0x277D218E8], MEMORY[0x277D218F0], 0);
  if (!v19)
  {
LABEL_6:
    v20 = 0;
    goto LABEL_7;
  }

  v20 = *(&v26 + 1);
  if (*(&v26 + 1))
  {
    atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (*(&v26 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
  }

  if (v19)
  {
    jet_context_Metal::override_Metal_render_state();
    v26 = 0uLL;
    if (v17)
    {
      v21 = (*(*v19 + 400))(v19, v17, v24);
      std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v25, v21);
    }

    v22 = (*(*v19 + 112))(v19);
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v25, v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

- (void)renderToTexture:(id)a3 commandQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  SKCRenderer::getBackingContext(self->_skcRenderer, &v11);
  if (!v11)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v8 = __dynamic_cast(v11, MEMORY[0x277D218E8], MEMORY[0x277D218F0], 0);
  if (!v8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v8)
  {
    jet_context_Metal::override_Metal_render_state();
    v10 = (*(*v8 + 408))(v8, v6);
    std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v11, v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

- (void)renderToFramebuffer:(int)a3 shouldClear:(BOOL)a4
{
  SKCRenderer::getBackingContext(self->_skcRenderer, &v8);
  if (!v8)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v4 = __dynamic_cast(v8, MEMORY[0x277D218E8], MEMORY[0x277D218F8], 0);
  if (!v4)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v4)
  {
    v6 = (*(*v4 + 360))(v4);
    [SKSCNRenderer getOpenGLFramebuffer:v6];

    jet_context_OpenGL::synchronize_OpenGL_state(v4);
    v7 = (*(*v4 + 112))(v4);
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v8, v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (void)render:(BOOL)a3
{
  v3 = a3;
  SKCRenderer::getBackingContext(self->_skcRenderer, &lpsrc);
  if (!lpsrc)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D218E8], MEMORY[0x277D218F8], 0);
  if (!v5)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v5)
  {
    params = -1;
    v7 = (*(*v5 + 360))(v5);
    glContextUse::glContextUse(&lpsrc, v7);

    glGetIntegerv(0x8CA6u, &params);
    glContextUse::~glContextUse(&lpsrc);
    [(SKSCNRenderer *)self renderToFramebuffer:params shouldClear:v3];
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

- (void)settingsForTransition:(id)a3 atTime:(double)a4 renderIncomingToTexture:(BOOL *)a5 renderOutgoingToTexture:(BOOL *)a6 renderIncomingToScreen:(BOOL *)a7 renderOutgoingToScreen:(BOOL *)a8
{
  *a5 = 1;
  *a6 = 1;
  *a7 = 0;
  *a8 = 0;
}

- (void)renderTransition:(id)a3 withInputTexture:(unsigned int)a4 outputTexture:(unsigned int)a5 inputTextureSize:(CGSize)a6 outputTextureSize:(CGSize)a7 time:(float)a8
{
  height = a7.height;
  width = a7.width;
  v11 = a6.height;
  v12 = a6.width;
  v13 = *&a5;
  v14 = *&a4;
  v16 = a3;
  SKCRenderer::getBackingContext(self->_skcRenderer, &lpsrc);
  if (!lpsrc)
  {
    v17 = 0;
    goto LABEL_6;
  }

  v17 = __dynamic_cast(lpsrc, MEMORY[0x277D218E8], MEMORY[0x277D218F8], 0);
  if (!v17)
  {
LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  v18 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v17)
  {
    params = -1;
    v19 = (*(*v17 + 360))(v17);
    glContextUse::glContextUse(&lpsrc, v19);

    glGetIntegerv(0x8CA6u, &params);
    glContextUse::~glContextUse(&lpsrc);
    *&v20 = a8;
    [(SKSCNRenderer *)self renderTransition:v16 toFramebuffer:params withInputTexture:v14 outputTexture:v13 inputTextureSize:v12 outputTextureSize:v11 time:width, height, v20];
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

- (void)renderTransition:(id)a3 toFramebuffer:(int)a4 withInputTexture:(unsigned int)a5 outputTexture:(unsigned int)a6 inputTextureSize:(CGSize)a7 outputTextureSize:(CGSize)a8 time:(float)a9
{
  v10 = a3;
  SKCRenderer::getBackingContext(self->_skcRenderer, lpsrc);
  if (!lpsrc[0])
  {
    v11 = 0;
    goto LABEL_6;
  }

  v11 = __dynamic_cast(lpsrc[0], MEMORY[0x277D218E8], MEMORY[0x277D218F8], 0);
  if (!v11)
  {
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v12 = lpsrc[1];
  if (lpsrc[1])
  {
    atomic_fetch_add_explicit(lpsrc[1] + 1, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (lpsrc[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](lpsrc[1]);
  }

  if (v11)
  {
    v13 = (*(*v11 + 360))(v11);
    [SKSCNRenderer getOpenGLFramebuffer:v13];

    jet_context_OpenGL::synchronize_OpenGL_state(v11);
    v14 = (*(*v11 + 112))(v11);
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(lpsrc, v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

+ (int)getOpenGLFramebuffer:(id)a3
{
  params = -1;
  glContextUse::glContextUse(v5, a3);
  glGetIntegerv(0x8CA6u, &params);
  v3 = params;
  glContextUse::~glContextUse(v5);
  return v3;
}

+ (void)restoreDefaultOpenGLState:(id)a3 frameBuffer:(int)a4
{
  glContextUse::glContextUse(v5, a3);
  glBindFramebuffer(0x8D40u, a4);
  glDisable(0xC11u);
  glEnable(0xB71u);
  glDepthMask(1u);
  glContextUse::~glContextUse(v5);
}

+ (id)rendererWithDevice:(id)a3 options:(id)a4
{
  v4 = a3;
  if (SKGetShouldEnableMetal())
  {
    v5 = SKGetGlobalMetalDevice();

    if (!v5)
    {
      SKSetGlobalMetalDevice(v4);
    }

    operator new();
  }

  return 0;
}

+ (id)rendererWithContext:(id)a3 options:(id)a4
{
  v4 = a3;
  SKSetPrefersOpenGL(1);
  if ((SKGetShouldEnableMetal() & 1) == 0)
  {
    [SKSCNRenderer getOpenGLFramebuffer:v4];
    operator new();
  }

  return 0;
}

- (void)_showAllStats
{
  [(SKSCNRenderer *)self setShowsDrawCount:1];
  [(SKSCNRenderer *)self setShowsFPS:1];
  [(SKSCNRenderer *)self setShowsNodeCount:1];
  [(SKSCNRenderer *)self setShowsQuadCount:1];
  [(SKSCNRenderer *)self set_showsCulledNodesInNodeCount:1];
  [(SKSCNRenderer *)self set_showsGPUStats:1];
  [(SKSCNRenderer *)self set_showsCPUStats:1];
  [(SKSCNRenderer *)self set_showsCoreAnimationFPS:1];
  [(SKSCNRenderer *)self set_showsTotalAreaRendered:1];
  [(SKSCNRenderer *)self setShowsPhysics:1];

  [(SKSCNRenderer *)self setShowsFields:1];
}

- (void)_update:(double)a3
{
  scene = self->_scene;
  if (scene)
  {
    v6 = [(SKScene *)scene _usesExplicitUpdate];
    v7 = self->_scene;
    if (v6)
    {
      if (![(SKScene *)v7 _needsUpdate])
      {
        return;
      }

      [(SKScene *)self->_scene set_needsUpdate:0];
      v7 = self->_scene;
    }

    [(SKScene *)v7 _update:a3];
    self->_hasRenderedForCurrentUpdate = 0;
  }
}

- (double)_getViewport
{
  [a1 _getDestBounds];
  v8 = v2;
  [a1 backingScaleFactor];
  v7 = v3;
  [a1 backingScaleFactor];
  v4.f64[0] = v7;
  v4.f64[1] = v5;
  *&result = vmovn_hight_s64(0, vcvtq_u64_f64(vmulq_f64(v4, vcvt_hight_f64_f32(v8)))).u64[0];
  return result;
}

- (double)_getDestBounds
{
  [a1 bounds];
  v6 = v2;
  [a1 bounds];
  v3.f64[0] = v6;
  v3.f64[1] = v4;
  *&result = vcvt_hight_f32_f64(0, v3).u64[0];
  return result;
}

- (id)_getOptions
{
  v2 = [(NSMutableDictionary *)self->_viewRenderOptions mutableCopy];
  v3 = sk_get_debug_options();
  [v2 addEntriesFromDictionary:v3];

  return v2;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end