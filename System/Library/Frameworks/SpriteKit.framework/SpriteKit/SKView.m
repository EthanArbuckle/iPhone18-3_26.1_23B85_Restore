@interface SKView
+ (Class)layerClass;
+ (id)debugHierarchyAdditionalGroupingIDs;
+ (id)debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5;
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6;
- (BOOL)_renderUpdateEnabled;
- (BOOL)_showsCPUStats;
- (BOOL)_showsGPUStats;
- (BOOL)disableDepthStencilBuffer;
- (BOOL)hasValidViewFramebuffer;
- (BOOL)ignoresSiblingOrder;
- (BOOL)isAsynchronous;
- (BOOL)isEqualToView:(id)a3;
- (BOOL)shouldCullNonVisibleNodes;
- (BOOL)showsDrawCount;
- (BOOL)showsFPS;
- (BOOL)showsFields;
- (BOOL)showsNodeCount;
- (BOOL)showsPhysics;
- (BOOL)showsQuadCount;
- (CGPoint)_viewTranslation;
- (CGPoint)convertPoint:(CGPoint)point fromScene:(SKScene *)scene;
- (CGPoint)convertPoint:(CGPoint)point toScene:(SKScene *)scene;
- (CGSize)pixelSize;
- (NSObject)delegate;
- (SKTexture)textureFromNode:(SKNode *)node;
- (SKTexture)textureFromNode:(SKNode *)node crop:(CGRect)crop;
- (SKView)initWithCoder:(id)a3;
- (SKView)initWithFrame:(CGRect)a3;
- (double)_fps;
- (double)alphaValue;
- (double)getViewTransform;
- (double)getViewport;
- (float)_getViewContentsScale;
- (id).cxx_construct;
- (id)_getPerformanceStats;
- (id)archiveToFile:(id)a3;
- (id)captureToFile:(id)a3;
- (id)focusItemsInRect:(CGRect)a3;
- (id)getRenderOptions;
- (id)snapshot;
- (id)textureFromNode:(id)a3 withOptions:(id)a4;
- (shared_ptr<jet_framebuffer>)nextFramebuffer;
- (unint64_t)_getEffectivePreferredFramesPerSecond;
- (void)CBApplicationDidBecomeActive;
- (void)CBApplicationWillResignActive;
- (void)_commonInit;
- (void)_dispatchRenderToIOSurfaceID:(unsigned int)a3 async:(BOOL)a4 onQueue:(id)a5 waitOnFence:(BOOL)a6 preRender:(id)a7 postRender:(id)a8;
- (void)_endFrameStats;
- (void)_ensureRenderer;
- (void)_renderSynchronouslyForTime:(double)a3 preRender:(id)a4 postRender:(id)a5 withMTLScheduleHandler:(id)a6;
- (void)_renderToIOSurfaceID:(unsigned int)a3 scaleFactor:(float)a4 asynchronous:(BOOL)a5 waitOnFence:(BOOL)a6 preRender:(id)a7 postRender:(id)a8;
- (void)_reshape;
- (void)_update:(double)a3;
- (void)_vsyncRenderForTime:(double)a3 preRender:(id)a4 postRender:(id)a5;
- (void)dealloc;
- (void)debugPrint;
- (void)didMoveToWindow;
- (void)encodeWithCoder:(id)a3;
- (void)getRootNode;
- (void)layoutSubviews;
- (void)notifyWillRenderContent;
- (void)overrideMetalCommandQueue:(id)a3;
- (void)presentScene:(SKScene *)scene;
- (void)presentScene:(SKScene *)scene transition:(SKTransition *)transition;
- (void)remakeFramebuffer;
- (void)setAllowsTransparency:(BOOL)allowsTransparency;
- (void)setAsynchronous:(BOOL)asynchronous;
- (void)setDisableDepthStencilBuffer:(BOOL)disableDepthStencilBuffer;
- (void)setDynamicRenderBlock:(id)a3;
- (void)setFrameInterval:(NSInteger)frameInterval;
- (void)setIgnoresSiblingOrder:(BOOL)ignoresSiblingOrder;
- (void)setPaused:(BOOL)paused;
- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond;
- (void)setShouldCullNonVisibleNodes:(BOOL)shouldCullNonVisibleNodes;
- (void)setShowsDrawCount:(BOOL)showsDrawCount;
- (void)setShowsFPS:(BOOL)showsFPS;
- (void)setShowsFields:(BOOL)showsFields;
- (void)setShowsNodeCount:(BOOL)showsNodeCount;
- (void)setShowsPhysics:(BOOL)showsPhysics;
- (void)setShowsQuadCount:(BOOL)showsQuadCount;
- (void)setUpRenderCallback;
- (void)set_renderUpdateEnabled:(BOOL)a3;
- (void)set_showsCPUStats:(BOOL)a3;
- (void)set_showsGPUStats:(BOOL)a3;
- (void)set_viewScale:(double)a3;
- (void)set_viewTranslation:(CGPoint)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SKView

- (void)setDynamicRenderBlock:(id)a3
{
  v4 = MEMORY[0x21CF0AB10](a3, a2);
  v5 = *&self->_checkForDrawables;
  *&self->_checkForDrawables = v4;
}

- (void)setShouldCullNonVisibleNodes:(BOOL)shouldCullNonVisibleNodes
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:shouldCullNonVisibleNodes];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)shouldCullNonVisibleNodes
{
  v2 = [(NSMapTable *)self->_touchMap objectForKeyedSubscript:@"cullNonVisibleNodes"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIgnoresSiblingOrder:(BOOL)ignoresSiblingOrder
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:ignoresSiblingOrder];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDisableDepthStencilBuffer:(BOOL)disableDepthStencilBuffer
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:disableDepthStencilBuffer];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)disableDepthStencilBuffer
{
  v2 = [(NSMapTable *)self->_touchMap valueForKey:@"disableStencilBuffers"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)ignoresSiblingOrder
{
  v2 = [(NSMapTable *)self->_touchMap objectForKeyedSubscript:@"ignoresSiblingOrder"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setShowsFPS:(BOOL)showsFPS
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsFPS];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsFPS
{
  v2 = [(NSMapTable *)self->_touchMap valueForKey:@"debugDrawStats_FPS"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setShowsPhysics:(BOOL)showsPhysics
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsPhysics];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsPhysics
{
  v2 = [(NSMapTable *)self->_touchMap valueForKey:@"debugDrawPhysics"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setShowsFields:(BOOL)showsFields
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsFields];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsFields
{
  v2 = [(NSMapTable *)self->_touchMap objectForKeyedSubscript:@"debugDrawPhysicsFields"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setShowsQuadCount:(BOOL)showsQuadCount
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsQuadCount];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsQuadCount
{
  v2 = [(NSMapTable *)self->_touchMap objectForKeyedSubscript:@"debugDrawStats_QuadCount"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setShowsNodeCount:(BOOL)showsNodeCount
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsNodeCount];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsNodeCount
{
  v2 = [(NSMapTable *)self->_touchMap objectForKeyedSubscript:@"debugDrawStats_NodeCount"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setShowsDrawCount:(BOOL)showsDrawCount
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:showsDrawCount];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)showsDrawCount
{
  v2 = [(NSMapTable *)self->_touchMap objectForKeyedSubscript:@"debugDrawStats_DrawCount"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)set_showsGPUStats:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)_showsGPUStats
{
  v2 = [(NSMapTable *)self->_touchMap objectForKeyedSubscript:@"debugDrawStats_GPU"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)set_showsCPUStats:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [NSMapTable setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)_showsCPUStats
{
  v2 = [(NSMapTable *)self->_touchMap objectForKeyedSubscript:@"debugDrawStats_CPU"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)archiveToFile:(id)a3
{
  v4 = a3;
  v5 = [(SKView *)self scene];

  if (v5)
  {
    v6 = [(SKView *)self scene];
    v7 = [v6 _info];

    if (!v7)
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
      v9 = [(SKView *)self scene];
      [v9 set_info:v8];
    }

    v10 = [(SKView *)self scene];
    v11 = [v10 _info];
    v12 = [(SKView *)self description];
    [v11 setValue:v12 forKey:@"SKView"];

    v13 = [(SKView *)self scene];
    v14 = [v13 archiveToFile:v4];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to archive nil scene"];
    NSLog(&stru_282E19138.isa, v14);
  }

  return v14;
}

- (id)captureToFile:(id)a3
{
  v4 = a3;
  v5 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v6 = [v5 objectAtIndex:0];
  if (!v4)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    v4 = [v7 description];
  }

  v8 = [v4 pathExtension];
  v9 = [v8 length];

  if (!v9)
  {
    v10 = [v4 stringByAppendingPathExtension:@"skc"];

    v4 = v10;
  }

  v11 = v4;
  v12 = v11;
  if (([v11 isAbsolutePath] & 1) == 0)
  {
    v13 = [v6 stringByAppendingPathComponent:v11];

    v12 = v13;
  }

  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v12 stringByDeletingLastPathComponent];
  [v14 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:0];

  v16 = [(SKView *)self scene];

  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = [(SKView *)self scene];
  v18 = [v17 _info];

  if (!v18)
  {
    v19 = [MEMORY[0x277CBEB38] dictionary];
    v20 = [(SKView *)self scene];
    [v20 set_info:v19];
  }

  v21 = [(SKView *)self scene];
  v22 = [v21 _info];
  [v22 setValue:MEMORY[0x277CBEC38] forKey:@"SKCapture"];

  v23 = [(SKView *)self scene];
  v24 = [v23 _info];
  v25 = [(SKView *)self description];
  [v24 setValue:v25 forKey:@"SKView"];

  v26 = [(SKView *)self scene];
  v27 = [v26 _info];
  [(SKView *)self bounds];
  v28 = NSStringFromCGRect(v50);
  [v27 setValue:v28 forKey:@"SKView_Bounds"];

  v29 = [(SKView *)self scene];
  v30 = [v29 _info];
  v31 = SKGetVersionString();
  [v30 setValue:v31 forKey:@"SKVersion"];

  v32 = [(SKView *)self scene];
  v33 = [v32 _info];
  v34 = MEMORY[0x277CCABB0];
  [(SKView *)self _getViewContentsScale];
  v35 = [v34 numberWithFloat:?];
  [v33 setValue:v35 forKey:@"SKView_ScaleFactor"];

  renderer = self->_renderer;
  if (renderer)
  {
    SKCRenderer::getBackingContext(renderer, &v47);
    v37 = (*(*v47 + 136))(v47);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (v37)
    {
      if (v37 != 1)
      {
        goto LABEL_19;
      }

      v38 = [(SKView *)self scene];
      v39 = [v38 _info];
      [v39 setValue:@"Metal" forKey:@"SKView_ContextType"];
    }

    else
    {
      v38 = [(SKView *)self scene];
      v39 = [v38 _info];
      [v39 setValue:@"OpenGL" forKey:@"SKView_ContextType"];
    }
  }

  else
  {
    v38 = [(SKView *)self scene];
    v39 = [v38 _info];
    [v39 setValue:@"None" forKey:@"SKView_ContextType"];
  }

LABEL_19:
  v40 = objc_opt_new();
  v41 = [MEMORY[0x277CBEB28] data];
  v42 = [objc_alloc(MEMORY[0x277CCAAB0]) initForWritingWithMutableData:v41];
  [v42 setDelegate:v40];
  [v42 setRequiresSecureCoding:0];
  v43 = [(SKView *)self scene];
  [v42 encodeObject:v43 forKey:*MEMORY[0x277CCA308]];

  [v42 finishEncoding];
  LOBYTE(v43) = [v41 writeToFile:v12 atomically:1];

  if (v43)
  {
    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Archived %@ to %@", self, v12];
    goto LABEL_22;
  }

LABEL_21:
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to archive %@ to %@", self, v12];
LABEL_22:
  v45 = v44;
  NSLog(&stru_282E19138.isa, v44);

  return v45;
}

- (void)debugPrint
{
  NSLog(&cfstr_DebugprintP.isa, a2, self, self);
  NSLog(&stru_282E19A38.isa);
  v3 = [(SKView *)self scene];
  [v3 debugPrint];
}

+ (Class)layerClass
{
  if (SKGetShouldEnableMetal())
  {
    jet_isMetalSupported();
  }

  v2 = objc_opt_class();

  return v2;
}

- (void)remakeFramebuffer
{
  kdebug_trace();
  *&self->_viewFramebufferPixelSize[5] = 0;
  v3 = [(SKView *)self chooseViewRenderer];
  if (v3)
  {
    v4 = v3;
    if (!self->_framebuffer.__ptr_)
    {
      SKCRenderer::getBackingContext(self->_renderer, &v38);
      v5 = (*(*v38 + 112))(v38);
      std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v39, v5);
    }

    v6 = [(SKView *)self window];

    if (!v6)
    {
      v7 = [(SKView *)self getRenderOptions];
      v8 = [v7 objectForKeyedSubscript:@"ingnoreMissingWindow"];
      v9 = [v8 BOOLValue];

      if ((v9 & 1) == 0)
      {
        self->_viewFramebufferIsValid = 0;
        kdebug_trace();

        return;
      }
    }

    [(SKView *)self _getViewContentsScale];
    v11 = v10;
    [(SKView *)self bounds];
    v34 = v12;
    [(SKView *)self bounds];
    v13.f64[0] = v34;
    v13.f64[1] = v14;
    v15 = vmovn_s64(vcvtq_u64_f64(vmulq_n_f64(v13, v11)));
    v16 = v15.u32[0];
    v17 = v15.u32[1];
    if (v15.i32[0] < 2u || v15.i32[1] <= 1u)
    {
      self->_viewFramebufferIsValid = 0;
      kdebug_trace();
      return;
    }

    v35 = v15;
    SKCRenderer::getBackingContext(v4, &v39);
    v19 = (*(*v39 + 136))(v39);
    if (*(&v39 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
    }

    if (v19 == 1)
    {
      [(CAMetalLayer *)self->_metalLayer setDrawableSize:v16, v17];
    }

    cntrl = self->_frameBufferDepthStencilTexture.__cntrl_;
    self->_frameBufferDepthStencilTexture.__ptr_ = 0;
    self->_frameBufferDepthStencilTexture.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    if (![(SKView *)self disableDepthStencilBuffer])
    {
      SKCRenderer::getBackingContext(self->_renderer, &v38);
      texture_2d = jet_context::create_texture_2d();
      std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v39, texture_2d);
    }

    SKCRenderer::getBackingContext(v4, &v39);
    v22 = (*(*v39 + 136))(v39);
    if (*(&v39 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
    }

    if (v22)
    {
      goto LABEL_26;
    }

    SKCRenderer::getBackingContext(v4, &v39);
    v23 = v39;
    if (*(&v39 + 1))
    {
      atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
      if (*(&v39 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
      }
    }

    [(CAEAGLLayer *)self->_eaglLayer setContentsScale:v11];
    v24 = (*(*v23 + 360))(v23);
    glContextUse::glContextUse(&v39, v24);

    p_frameBufferColorTexture = &self->_frameBufferColorTexture;
    if (self->_frameBufferColorTexture.__ptr_)
    {
      glBindRenderbuffer(0x8D41u, self->_colorRenderBuffer);
      v26 = (*(*v23 + 360))(v23);
      [v26 renderbufferStorage:36161 fromDrawable:0];

      self->_colorRenderBuffer = 0;
      v27 = self->_frameBufferColorTexture.__cntrl_;
      p_frameBufferColorTexture->__ptr_ = 0;
      self->_frameBufferColorTexture.__cntrl_ = 0;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    colorRenderBuffer = self->_colorRenderBuffer;
    if (!colorRenderBuffer)
    {
      glGenRenderbuffers(1, &self->_colorRenderBuffer);
      colorRenderBuffer = self->_colorRenderBuffer;
    }

    glBindRenderbuffer(0x8D41u, colorRenderBuffer);
    v29 = (*(*v23 + 360))(v23);
    v30 = [v29 renderbufferStorage:36161 fromDrawable:self->_eaglLayer];

    if (v30)
    {
      *params = 0;
      glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &params[1]);
      glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, params);
      if (params[1])
      {
        v31 = params[0] == 0;
      }

      else
      {
        v31 = 1;
      }

      v32 = !v31;
      if (v31)
      {
        self->_viewFramebufferIsValid = 0;
        kdebug_trace();
      }

      else if (!p_frameBufferColorTexture->__ptr_)
      {
        v33 = (*(*v23 + 384))(v23, self->_colorRenderBuffer, v16, v17, 3, 1);
        std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v38, v33);
      }

      glContextUse::~glContextUse(&v39);
      if (*(&v23 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
      }

      if (v32)
      {
LABEL_26:
        *&self->_viewFramebufferPixelSize[5] = v36;
        self->_viewFramebufferIsValid = 1;
      }
    }

    else
    {
      kdebug_trace();
      self->_viewFramebufferIsValid = 0;
      kdebug_trace();
      glContextUse::~glContextUse(&v39);
      if (*(&v23 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v23 + 1));
      }
    }
  }

  else
  {
    self->_viewFramebufferIsValid = 0;

    kdebug_trace();
  }
}

- (void)_ensureRenderer
{
  if (!self->_renderer)
  {
    operator new();
  }
}

- (void)_commonInit
{
  v3 = +[SKAnalytics instance];
  [v3 sendAnalyticsDataWithKey:@"com.apple.spritekit.apps"];

  sk_debug_check_optional();
  kdebug_trace();
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v5 = dispatch_queue_create("SKRenderQueue", v4);
  renderSemaphore = self->_renderSemaphore;
  self->_renderSemaphore = v5;

  v7 = dispatch_semaphore_create(1);
  v8 = *&self->_queuedFrameCount;
  *&self->_queuedFrameCount = v7;

  LODWORD(self->_prevVsyncRenderTime) = 0;
  self->_prevRenderTime = -1.0;
  self->_displayLink = SKDisplayGetDefaultFramerate(0);
  self->_preferredFramesPerSecond = 1;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  touchMap = self->_touchMap;
  self->_touchMap = v9;

  v11 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.3];
  [(NSMapTable *)self->_touchMap setObject:v11 forKeyedSubscript:@"debugDrawStats_BGColor"];

  [(NSMapTable *)self->_touchMap setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"debugDisablePresentationTime"];
  [(SKView *)self setShouldCullNonVisibleNodes:1];
  [(SKView *)self setIgnoresSiblingOrder:0];
  v12 = [MEMORY[0x277CBEB38] dictionary];
  [(SKView *)self set_info:v12];

  if ((SKGetLinkedOnOrAfter(589824) & 1) == 0)
  {
    [(SKView *)self setUserInteractionEnabled:1];
    [(SKView *)self setMultipleTouchEnabled:1];
    [(SKView *)self setContentScaleFactor:0.0];
  }

  LOBYTE(self->_machTimeTimebase) = SKGetLinkedOnOrAfter(1179648);
  if (mach_timebase_info(&info))
  {
    info = 0x100000001;
    v13 = 1.0;
  }

  else
  {
    v13 = (info.numer / info.denom);
  }

  *&self->_renderQueue = v13;
  self->_viewFramebufferIsValid = 0;
  self->_didRunOnce = 0;
  nextScene = self->_nextScene;
  self->_nextScene = 0;

  __asm { FMOV            V0.4S, #1.0 }

  *self->_viewScale = _Q0;
  *self->_viewTranslation = 0;
  *&self->_viewTranslation[8] = 0;
  [(SKView *)self onInit];
  [(SKView *)self _ensureRenderer];
  v20 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v21 = *&self->_prevBackingScaleFactor;
  *&self->_prevBackingScaleFactor = v20;

  *&self->_prefersLowPowerGPU = 0xBFF0000000000000;
  BYTE1(self->_transition) = 0;
  timePreviousUpdate = self->_timePreviousUpdate;
  self->_timePreviousUpdate = 0.0;

  [(SKView *)self setUpRenderCallback];
  [(SKView *)self startRenderCallbacks];
  BYTE2(self->_frameInterval) = [(SKView *)self isPaused];
  LOBYTE(self->_frameInterval) = 0;
  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 addObserver:self selector:sel_CBApplicationWillResignActive name:*MEMORY[0x277D76768] object:0];

  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  [v24 addObserver:self selector:sel_CBApplicationDidBecomeActive name:*MEMORY[0x277D76648] object:0];
}

- (void)CBApplicationWillResignActive
{
  v6 = [(SKView *)self getRenderOptions];
  v3 = [v6 objectForKeyedSubscript:@"ignoreBackgroundNotifications"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    BYTE2(self->_frameInterval) = self->_spriteArrayHint;
    [(SKView *)self setPaused:1];
    v5 = +[SKSoundContext currentContext];
    [v5 setSuspended:1];

    LOBYTE(self->_frameInterval) = 1;
  }
}

- (void)CBApplicationDidBecomeActive
{
  v6 = [(SKView *)self getRenderOptions];
  v3 = [v6 objectForKeyedSubscript:@"ignoreBackgroundNotifications"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0 && LOBYTE(self->_frameInterval) == 1)
  {
    LOBYTE(self->_frameInterval) = 0;
    [(SKView *)self setPaused:BYTE2(self->_frameInterval)];
    v5 = +[SKSoundContext currentContext];
    [v5 setSuspended:0];
  }
}

- (void)_vsyncRenderForTime:(double)a3 preRender:(id)a4 postRender:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  sk_debug_check_optional();
  if (sk_debug_option_exists(&cfstr_Preferredframe_0.isa))
  {
    [(OS_dispatch_queue *)self->_updateQueue setPreferredFramesPerSecond:[(SKView *)self _getEffectivePreferredFramesPerSecond]];
  }

  v11 = CACurrentMediaTime();
  if (v11 < self->_prevRenderTime)
  {
    goto LABEL_6;
  }

  *&self->_delegate = a3;
  self->_prevRenderTime = v11;
  if (atomic_fetch_add_explicit(&self->_prevVsyncRenderTime, 1u, memory_order_relaxed) > 0)
  {
    atomic_fetch_add_explicit(&self->_prevVsyncRenderTime, 0xFFFFFFFF, memory_order_relaxed);
LABEL_6:
    kdebug_trace();
    goto LABEL_7;
  }

  if ([(SKView *)self isAsynchronous])
  {
    v12 = BYTE1(self->_transition);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 & 1;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __51__SKView__vsyncRenderForTime_preRender_postRender___block_invoke;
  v22[3] = &unk_27830FC98;
  v22[4] = self;
  v23 = v8;
  v25 = a3;
  v24 = v9;
  v14 = MEMORY[0x21CF0AB10](v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__SKView__vsyncRenderForTime_preRender_postRender___block_invoke_2;
  v18[3] = &unk_27830FCC0;
  v18[4] = self;
  v20 = a3;
  v21 = v13;
  v15 = v14;
  v19 = v15;
  v16 = MEMORY[0x21CF0AB10](v18);
  timePreviousUpdate = self->_timePreviousUpdate;
  if (timePreviousUpdate == 0.0)
  {
    v16[2](v16);
  }

  else
  {
    dispatch_sync(*&timePreviousUpdate, v16);
  }

LABEL_7:
  objc_autoreleasePoolPop(v10);
}

void __51__SKView__vsyncRenderForTime_preRender_postRender___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  if (!v3[144] || (v4 = [v3[144] _usesExplicitRender], v3 = *(a1 + 32), !v4))
  {
LABEL_8:
    v7 = [v3 getRenderOptions];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 valueForKey:@"requestCapture"];
      v10 = [v9 BOOLValue];

      if (v10)
      {
        v11 = [v8 valueForKey:@"captureTag"];
        v12 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
        v13 = [v12 firstObject];

        v14 = [v13 stringByAppendingPathComponent:v11];
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", *(a1 + 32)];
        v16 = [v14 stringByAppendingPathComponent:v15];

        v17 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = [v16 stringByDeletingLastPathComponent];
        [v17 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:0];

        v19 = [v16 stringByAppendingPathExtension:@"sks"];

        if (v19 && ([v17 fileExistsAtPath:v19] & 1) == 0)
        {
          v20 = [*(a1 + 32) captureToFile:v19];
        }
      }

      v21 = [v8 valueForKey:@"debugLogRenderContent"];
      v22 = [v21 BOOLValue];

      if (v22)
      {
        NSLog(&cfstr_SkRenderconten.isa, *(a1 + 32));
      }
    }

    v23 = [*(a1 + 32) getRootNode];
    v24 = SKGetGlobalDefaults();
    v25 = [v24 objectForKeyedSubscript:@"kSKMutableTextureExists"];
    v26 = [v25 BOOLValue];

    if (!v23 || ((sk_debug_option_get_BOOL(&cfstr_Debugdisabledi.isa) | v26) & 1) != 0)
    {
      goto LABEL_26;
    }

    v27 = SKCNode::matchesAnyFlags(v23, 66, 66);
    v28 = *(*(a1 + 32) + 1152);
    v29 = v28;
    if (v28)
    {
      v30 = [v28 camera];
      v31 = v30;
      if (v30)
      {
        v32 = SKCNode::matchesAnyFlags([v30 _backingNode], 2, 2);
        SKCNode::clearDirty([v31 _backingNode]);
        v27 |= v32;
      }
    }

    v33 = *(*(a1 + 32) + 1144);
    if (v33)
    {
      v34 = v33;
      v35 = [v33 camera];
      v36 = v35;
      if (v35)
      {
        v37 = SKCNode::matchesAnyFlags([v35 _backingNode], 2, 2);
        SKCNode::clearDirty([v36 _backingNode]);
        LOBYTE(v27) = v27 | v37;
      }

      if (v27)
      {
        goto LABEL_26;
      }
    }

    else if (v27)
    {
LABEL_26:
      if ([*(a1 + 32) hasValidViewFramebuffer])
      {
        v38 = [*(a1 + 32) chooseViewRenderer];
        if (v38)
        {
          v39 = *(a1 + 32);
          if (v39)
          {
            [v39 nextFramebuffer];
            if (v44)
            {
              v40 = CACurrentMediaTime();
              _perfBeginRender(v40);
              kdebug_trace();
              [*(a1 + 32) frame];
              [*(a1 + 32) frame];
              [*(a1 + 32) getViewport];
              [*(a1 + 32) getViewTransform];
              SKCRenderer::render(v38, v23, &v44, 1, v8, *(a1 + 32) + 760, *(a1 + 32) + 408, 0);
            }

            if (v45)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            }
          }
        }
      }

      goto LABEL_33;
    }

    kdebug_trace();
    [*(a1 + 32) _endFrameStats];
LABEL_33:
    kdebug_trace();

    v41 = *(a1 + 48);
    if (v41)
    {
      (*(v41 + 16))();
    }

    atomic_fetch_add_explicit((*(a1 + 32) + 1240), 0xFFFFFFFF, memory_order_relaxed);
    dispatch_semaphore_signal(*(*(a1 + 32) + 1232));
    kdebug_trace();
    v42 = CACurrentMediaTime();
    _perfMarkCADisplayLinkEnd(v42);
    _perfUpdateStatistics(*(a1 + 32) + 760, *(a1 + 32) + 408, *(a1 + 32));
    return;
  }

  v5 = [v3[144] _needsRender];
  v6 = *(a1 + 32);
  if ((v5 & 1) != 0 || *(v6 + 1136))
  {
    [*(v6 + 1152) set_needsRender:0];
    v3 = *(a1 + 32);
    goto LABEL_8;
  }

  atomic_fetch_add_explicit((v6 + 1240), 0xFFFFFFFF, memory_order_relaxed);
  v43 = *(*(a1 + 32) + 1232);

  dispatch_semaphore_signal(v43);
}

void __51__SKView__vsyncRenderForTime_preRender_postRender___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 0);
  if (dispatch_semaphore_wait(*(*(a1 + 32) + 1232), v2))
  {
    atomic_fetch_add_explicit((*(a1 + 32) + 1240), 0xFFFFFFFF, memory_order_relaxed);

    kdebug_trace();
  }

  else
  {
    kdebug_trace();
    SKCStats::SKCStats(&v16);
    v3 = *(a1 + 32) + 760;
    v4 = *&v16.frameCount;
    v5 = *&v16.baseTime;
    *(v3 + 8) = *&v16.frameBeginTime;
    *(v3 + 24) = v5;
    *(v3 + 40) = v4;
    v6 = *&v16.update.duration;
    v7 = *&v16.physics.duration;
    v8 = *&v16.constraints.beginTime;
    *(v3 + 56) = *&v16.clientUpdate.duration;
    *(v3 + 104) = v8;
    *(v3 + 88) = v7;
    *(v3 + 72) = v6;
    v9 = *&v16.render.duration;
    v10 = *&v16.render.nodeTraversalCount;
    v11 = *&v16.render.passCount;
    *(v3 + 120) = *&v16.constraints.constraintCount;
    *(v3 + 168) = v11;
    *(v3 + 152) = v10;
    *(v3 + 136) = v9;
    SKCStats::~SKCStats(&v16);
    v12 = *(a1 + 32);
    v13 = CACurrentMediaTime();
    SKCStats::beginFrame((v12 + 760), v13);
    v14 = CACurrentMediaTime();
    _perfMarkCADisplayLinkStart(v14);
    if (sk_debug_get_optional())
    {
      kdebug_trace();
    }

    v15 = *(a1 + 48);
    if (v15 <= 0.0)
    {
      v15 = CACurrentMediaTime();
    }

    [*(a1 + 32) _update:v15];
    [*(a1 + 32) notifyWillRenderContent];
    kdebug_trace();
    if (*(a1 + 56) == 1)
    {
      dispatch_async(*(*(a1 + 32) + 1224), *(a1 + 40));
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

- (void)_renderSynchronouslyForTime:(double)a3 preRender:(id)a4 postRender:(id)a5 withMTLScheduleHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  *&self->_delegate = a3;
  kdebug_trace();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__SKView__renderSynchronouslyForTime_preRender_postRender_withMTLScheduleHandler___block_invoke;
  v19[3] = &unk_27830FCE8;
  v19[4] = self;
  v23 = a3;
  v14 = v10;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  v16 = v11;
  v22 = v16;
  v17 = MEMORY[0x21CF0AB10](v19);
  timePreviousUpdate = self->_timePreviousUpdate;
  if (timePreviousUpdate == 0.0)
  {
    v17[2](v17);
  }

  else
  {
    dispatch_sync(*&timePreviousUpdate, v17);
  }

  objc_autoreleasePoolPop(v13);
}

intptr_t __82__SKView__renderSynchronouslyForTime_preRender_postRender_withMTLScheduleHandler___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 1232), 0xFFFFFFFFFFFFFFFFLL);
  SKCStats::SKCStats(&v27);
  v2 = *(a1 + 32) + 760;
  v3 = *&v27.frameCount;
  v4 = *&v27.baseTime;
  *(v2 + 8) = *&v27.frameBeginTime;
  *(v2 + 24) = v4;
  *(v2 + 40) = v3;
  v5 = *&v27.update.duration;
  v6 = *&v27.physics.duration;
  v7 = *&v27.constraints.beginTime;
  *(v2 + 56) = *&v27.clientUpdate.duration;
  *(v2 + 104) = v7;
  *(v2 + 88) = v6;
  *(v2 + 72) = v5;
  v8 = *&v27.render.duration;
  v9 = *&v27.render.nodeTraversalCount;
  v10 = *&v27.render.passCount;
  *(v2 + 120) = *&v27.constraints.constraintCount;
  *(v2 + 168) = v10;
  *(v2 + 152) = v9;
  *(v2 + 136) = v8;
  SKCStats::~SKCStats(&v27);
  v11 = *(a1 + 32);
  v12 = CACurrentMediaTime();
  SKCStats::beginFrame((v11 + 760), v12);
  v13 = *(a1 + 64);
  if (v13 <= 0.0)
  {
    v13 = CACurrentMediaTime();
  }

  [*(a1 + 32) _update:v13];
  [*(a1 + 32) notifyWillRenderContent];
  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))();
  }

  v15 = [*(a1 + 32) getRenderOptions];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 valueForKey:@"debugLogRenderContent"];
    v18 = [v17 BOOLValue];

    if (v18)
    {
      NSLog(&cfstr_SkRenderconten.isa, *(a1 + 32));
    }
  }

  v19 = [*(a1 + 32) hasValidViewFramebuffer];
  if (v19)
  {
    v20 = [*(a1 + 32) chooseViewRenderer];
    if (v20)
    {
      v21 = *(a1 + 32);
      if (v21)
      {
        [v21 nextFramebuffer];
        if (v27._vptr$SKCStats)
        {
          [*(a1 + 32) frame];
          [*(a1 + 32) frame];
          v22 = [*(a1 + 32) getRootNode];
          [*(a1 + 32) getViewport];
          [*(a1 + 32) getViewTransform];
          SKCRenderer::render(v20, v22, &v27, 1, v16, *(a1 + 32) + 760, *(a1 + 32) + 408, *(a1 + 48));
        }
      }

      else
      {
        v27._vptr$SKCStats = 0;
        v27.frameBeginTime = 0.0;
      }

      if (*&v27.frameBeginTime)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v27.frameBeginTime);
      }

      v23 = 0;
      v24 = 1;
    }

    else
    {
      v24 = 0;
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  if (*(a1 + 48))
  {
    NSLog(&cfstr_SkviewFailedTo.isa, v19, v23, v24);
    (*(*(a1 + 48) + 16))();
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    (*(v25 + 16))();
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 1232));
}

- (void)_renderToIOSurfaceID:(unsigned int)a3 scaleFactor:(float)a4 asynchronous:(BOOL)a5 waitOnFence:(BOOL)a6 preRender:(id)a7 postRender:(id)a8
{
  v9 = a5;
  v10 = *&a3;
  v12 = a7;
  v13 = a8;
  v14 = objc_autoreleasePoolPush();
  kdebug_trace();
  if (v9)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__SKView__renderToIOSurfaceID_scaleFactor_asynchronous_waitOnFence_preRender_postRender___block_invoke;
    block[3] = &unk_27830FD10;
    block[4] = self;
    v25 = v12;
    v27 = v10;
    v26 = v13;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    dispatch_semaphore_wait(*&self->_queuedFrameCount, 0xFFFFFFFFFFFFFFFFLL);
    if (v12)
    {
      v12[2](v12);
    }

    if (v10)
    {
      [(SKView *)self _ensureRenderer];
      v15 = IOSurfaceLookup(v10);
      v16 = v15;
      if (v15)
      {
        Width = IOSurfaceGetWidth(v15);
        Height = IOSurfaceGetHeight(v16);
        if (Width && Height)
        {
          if (!self->_didRunOnce)
          {
            self->_didRunOnce = 1;
            [(SKView *)self runOnce];
          }

          v18 = [(SKView *)self chooseViewRenderer];
          if (v18)
          {
            v19 = v18;
            [(SKView *)self getRootNode];
            SKCRenderer::getBackingContext(v19, &v22);
            v20 = (*(*v22 + 32))(v22, v10, Width, Height, 4, 0);
            std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v23, v20);
          }
        }

        CFRelease(v16);
      }
    }

    if (v13)
    {
      v13[2](v13);
    }

    dispatch_semaphore_signal(*&self->_queuedFrameCount);
  }

  objc_autoreleasePoolPop(v14);
}

intptr_t __89__SKView__renderToIOSurfaceID_scaleFactor_asynchronous_waitOnFence_preRender_postRender___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 1232), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 56))
  {
    [*(a1 + 32) _ensureRenderer];
    v3 = IOSurfaceLookup(*(a1 + 56));
    if (v3)
    {
      v4 = v3;
      Width = IOSurfaceGetWidth(v3);
      Height = IOSurfaceGetHeight(v4);
      if (Width)
      {
        v7 = Height;
        if (Height)
        {
          v8 = *(a1 + 32);
          if ((v8[1065] & 1) == 0)
          {
            v8[1065] = 1;
            [*(a1 + 32) runOnce];
            v8 = *(a1 + 32);
          }

          v9 = [v8 chooseViewRenderer];
          if (v9)
          {
            v10 = v9;
            [*(a1 + 32) getRootNode];
            SKCRenderer::getBackingContext(v10, &v14);
            v11 = (*(*v14 + 32))(v14, *(a1 + 56), Width, v7, 4, 0);
            std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v15, v11);
          }
        }
      }

      CFRelease(v4);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))();
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 1232));
}

- (void)_dispatchRenderToIOSurfaceID:(unsigned int)a3 async:(BOOL)a4 onQueue:(id)a5 waitOnFence:(BOOL)a6 preRender:(id)a7 postRender:(id)a8
{
  v10 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a8;
  v16 = objc_autoreleasePoolPush();
  kdebug_trace();
  if (v13 && v10)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__SKView__dispatchRenderToIOSurfaceID_async_onQueue_waitOnFence_preRender_postRender___block_invoke;
    block[3] = &unk_27830FD10;
    block[4] = self;
    v17 = &v24;
    v24 = v14;
    v26 = a3;
    v18 = &v25;
    v25 = v15;
    dispatch_async(v13, block);
LABEL_6:

    goto LABEL_7;
  }

  if (v13)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __86__SKView__dispatchRenderToIOSurfaceID_async_onQueue_waitOnFence_preRender_postRender___block_invoke_2;
    v19[3] = &unk_27830FD10;
    v19[4] = self;
    v17 = &v20;
    v20 = v14;
    v22 = a3;
    v18 = &v21;
    v21 = v15;
    dispatch_sync(v13, v19);
    goto LABEL_6;
  }

LABEL_7:
  objc_autoreleasePoolPop(v16);
}

intptr_t __86__SKView__dispatchRenderToIOSurfaceID_async_onQueue_waitOnFence_preRender_postRender___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 1232), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 56))
  {
    [*(a1 + 32) _ensureRenderer];
    v3 = IOSurfaceLookup(*(a1 + 56));
    if (v3)
    {
      v4 = v3;
      Width = IOSurfaceGetWidth(v3);
      Height = IOSurfaceGetHeight(v4);
      if (Width)
      {
        v7 = Height;
        if (Height)
        {
          v8 = *(a1 + 32);
          if ((v8[1065] & 1) == 0)
          {
            v8[1065] = 1;
            [*(a1 + 32) runOnce];
            v8 = *(a1 + 32);
          }

          v9 = [v8 chooseViewRenderer];
          if (v9)
          {
            v10 = v9;
            [*(a1 + 32) getRootNode];
            SKCRenderer::getBackingContext(v10, &v14);
            v11 = (*(*v14 + 32))(v14, *(a1 + 56), Width, v7, 4, 0);
            std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v15, v11);
          }
        }
      }

      CFRelease(v4);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))();
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 1232));
}

intptr_t __86__SKView__dispatchRenderToIOSurfaceID_async_onQueue_waitOnFence_preRender_postRender___block_invoke_2(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 1232), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(a1 + 56))
  {
    [*(a1 + 32) _ensureRenderer];
    v3 = IOSurfaceLookup(*(a1 + 56));
    if (v3)
    {
      v4 = v3;
      Width = IOSurfaceGetWidth(v3);
      Height = IOSurfaceGetHeight(v4);
      if (Width)
      {
        v7 = Height;
        if (Height)
        {
          v8 = *(a1 + 32);
          if ((v8[1065] & 1) == 0)
          {
            v8[1065] = 1;
            [*(a1 + 32) runOnce];
            v8 = *(a1 + 32);
          }

          v9 = [v8 chooseViewRenderer];
          if (v9)
          {
            v10 = v9;
            [*(a1 + 32) getRootNode];
            SKCRenderer::getBackingContext(v10, &v14);
            v11 = (*(*v14 + 32))(v14, *(a1 + 56), Width, v7, 4, 0);
            std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v15, v11);
          }
        }
      }

      CFRelease(v4);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))();
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 1232));
}

- (void)overrideMetalCommandQueue:(id)a3
{
  v4 = a3;
  SKCRenderer::getBackingContext(self->_renderer, &lpsrc);
  if (!lpsrc)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = __dynamic_cast(lpsrc, MEMORY[0x277D218E8], MEMORY[0x277D218F0], 0);
  if (!v5)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_7:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v5)
  {
    jet_context_Metal::override_Metal_render_state();
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

- (void)setAsynchronous:(BOOL)asynchronous
{
  v3 = asynchronous;
  v4 = [(SKView *)self layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setPresentsWithTransaction:!v3];
  }
}

- (BOOL)isAsynchronous
{
  v2 = [(SKView *)self layer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 presentsWithTransaction] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)setUpRenderCallback
{
  objc_initWeak(&location, self);
  updateQueue = self->_updateQueue;
  self->_updateQueue = 0;

  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __29__SKView_setUpRenderCallback__block_invoke;
  v10 = &unk_27830FD38;
  objc_copyWeak(&v11, &location);
  v4 = objc_loadWeakRetained(&location);
  v5 = [SKDisplayLink displayLinkWithDisplay:0 handler:&v7 client:v4];
  v6 = self->_updateQueue;
  self->_updateQueue = v5;

  [(OS_dispatch_queue *)self->_updateQueue setPreferredFramesPerSecond:[(SKView *)self _getEffectivePreferredFramesPerSecond:v7]];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __29__SKView_setUpRenderCallback__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v6 = [WeakRetained _shouldRenderForTime:a2];
    v5 = v10;
    if (v6)
    {
      v7 = [v10 delegate];
      if (!v7 || (objc_opt_respondsToSelector() & 1) == 0 || (v8 = objc_loadWeakRetained((a1 + 32)), v9 = [v7 view:v8 shouldRenderAtTime:a2], v8, (v9 & 1) != 0))
      {
        [v10 _vsyncRenderForTime:0 preRender:0 postRender:a2];
      }

      v5 = v10;
    }
  }
}

- (BOOL)_renderUpdateEnabled
{
  updateQueue = self->_updateQueue;
  if (updateQueue)
  {
    LOBYTE(updateQueue) = [(OS_dispatch_queue *)updateQueue isPaused]^ 1;
  }

  return updateQueue;
}

- (void)set_renderUpdateEnabled:(BOOL)a3
{
  if (a3)
  {
    [(SKView *)self startRenderCallbacks];
  }

  else
  {
    [(SKView *)self stopRenderCallbacks];
  }
}

- (void)_endFrameStats
{
  v3 = CACurrentMediaTime();
  SKCStats::endFrame(&self->_frameStats, v3);
  SKCStats::operator+=(&self->_nextStats, &self->_frameStats);
  if (self->_nextStats.currentTime - self->_nextStats.baseTime > 1.0)
  {
    v4 = *&self->_nextStats.frameCount;
    v5 = *&self->_nextStats.baseTime;
    *&self->_currentStats.frameBeginTime = *&self->_nextStats.frameBeginTime;
    *&self->_currentStats.baseTime = v5;
    *&self->_currentStats.frameCount = v4;
    v6 = *&self->_nextStats.update.duration;
    v7 = *&self->_nextStats.physics.duration;
    v8 = *&self->_nextStats.constraints.beginTime;
    *&self->_currentStats.clientUpdate.duration = *&self->_nextStats.clientUpdate.duration;
    *&self->_currentStats.constraints.beginTime = v8;
    *&self->_currentStats.physics.duration = v7;
    *&self->_currentStats.update.duration = v6;
    v9 = *&self->_nextStats.render.duration;
    v10 = *&self->_nextStats.render.nodeTraversalCount;
    v11 = *&self->_nextStats.render.passCount;
    *&self->_currentStats.constraints.constraintCount = *&self->_nextStats.constraints.constraintCount;
    *&self->_currentStats.render.passCount = v11;
    *&self->_currentStats.render.nodeTraversalCount = v10;
    *&self->_currentStats.render.duration = v9;
    SKCStats::SKCStats(&v12);
    *&self->_nextStats.constraints.constraintCount = *&v12.constraints.constraintCount;
    *&self->_nextStats.render.duration = *&v12.render.duration;
    *&self->_nextStats.render.nodeTraversalCount = *&v12.render.nodeTraversalCount;
    *&self->_nextStats.render.passCount = *&v12.render.passCount;
    *&self->_nextStats.clientUpdate.duration = *&v12.clientUpdate.duration;
    *&self->_nextStats.update.duration = *&v12.update.duration;
    *&self->_nextStats.physics.duration = *&v12.physics.duration;
    *&self->_nextStats.constraints.beginTime = *&v12.constraints.beginTime;
    *&self->_nextStats.frameBeginTime = *&v12.frameBeginTime;
    *&self->_nextStats.baseTime = *&v12.baseTime;
    *&self->_nextStats.frameCount = *&v12.frameCount;
    SKCStats::~SKCStats(&v12);
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = a4;
  v7 = v6;
  if ((BYTE4(self->_transition) & 1) == 0 && *&self->_paused)
  {
    v38[0] = 0;
    v38[1] = 0;
    v29 = v6;
    v37 = v38;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v27;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v36 = *(*(&v32 + 1) + 8 * i);
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "hash", v27)}];
          v13 = *&self->_paused;
          [v36 locationInNode:v13];
          v14 = [v13 nodeAtPoint:1 recursive:?];
          v31 = v14;
          if (v14)
          {
            while (([v14 isUserInteractionEnabled] & 1) == 0)
            {
              v15 = [v31 parent];
              v16 = v31;
              v31 = v15;

              v14 = v31;
              if (!v31)
              {
                goto LABEL_14;
              }
            }

            if (v31)
            {
              [*&self->_prevBackingScaleFactor setObject:v31 forKey:v12];
              v38[3] = &v31;
              v17 = std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::__emplace_unique_key_args<SKNode * {__strong},std::piecewise_construct_t const&,std::tuple<SKNode * const {__strong}&>,std::tuple<>>(&v37, &v31);
              std::vector<UITouch * {__strong}>::push_back[abi:ne200100](v17 + 5, &v36);
            }
          }

LABEL_14:
        }

        v9 = [v8 countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v9);
    }

    v18 = v37;
    if (v37 != v38)
    {
      do
      {
        v19 = v18[4];
        v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v21 = v18[5];
        v22 = v18[6];
        while (v21 != v22)
        {
          v23 = *v21;
          [v20 addObject:v23];

          ++v21;
        }

        [v19 touchesBegan:v20 withEvent:v29];

        v24 = v18[1];
        if (v24)
        {
          do
          {
            v25 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v25 = v18[2];
            v26 = *v25 == v18;
            v18 = v25;
          }

          while (!v26);
        }

        v18 = v25;
      }

      while (v25 != v38);
    }

    std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(&v37, v38[0]);
    v7 = v29;
  }

  v30.receiver = self;
  v30.super_class = SKView;
  [(SKView *)&v30 touchesBegan:v27 withEvent:v7, v27];
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v6 = a4;
  if ((BYTE4(self->_transition) & 1) == 0 && *&self->_paused)
  {
    v32[0] = 0;
    v32[1] = 0;
    v31 = v32;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v22;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v8)
    {
      v9 = *v27;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v30 = *(*(&v26 + 1) + 8 * i);
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v30, "hash", v22)}];
          v25 = [*&self->_prevBackingScaleFactor objectForKey:v11];
          if (v25)
          {
            v32[3] = &v25;
            v12 = std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::__emplace_unique_key_args<SKNode * {__strong},std::piecewise_construct_t const&,std::tuple<SKNode * const {__strong}&>,std::tuple<>>(&v31, &v25);
            std::vector<UITouch * {__strong}>::push_back[abi:ne200100](v12 + 5, &v30);
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v8);
    }

    v13 = v31;
    if (v31 != v32)
    {
      do
      {
        v14 = v13[4];
        v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v16 = v13[5];
        v17 = v13[6];
        while (v16 != v17)
        {
          v18 = *v16;
          [v15 addObject:v18];

          ++v16;
        }

        [v14 touchesMoved:v15 withEvent:v6];

        v19 = v13[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v13[2];
            v21 = *v20 == v13;
            v13 = v20;
          }

          while (!v21);
        }

        v13 = v20;
      }

      while (v20 != v32);
    }

    std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(&v31, v32[0]);
  }

  v24.receiver = self;
  v24.super_class = SKView;
  [(SKView *)&v24 touchesMoved:v22 withEvent:v6, v22];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v6 = a4;
  v7 = v6;
  if ((BYTE4(self->_transition) & 1) == 0 && *&self->_paused)
  {
    v44[0] = 0;
    v44[1] = 0;
    v30 = v6;
    v43 = v44;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = v28;
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v9)
    {
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v42 = *(*(&v38 + 1) + 8 * i);
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "hash", v28)}];
          v37 = [*&self->_prevBackingScaleFactor objectForKey:v12];
          if (v37)
          {
            v44[3] = &v37;
            v13 = std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::__emplace_unique_key_args<SKNode * {__strong},std::piecewise_construct_t const&,std::tuple<SKNode * const {__strong}&>,std::tuple<>>(&v43, &v37);
            std::vector<UITouch * {__strong}>::push_back[abi:ne200100](v13 + 5, &v42);
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v9);
    }

    v14 = v43;
    v7 = v30;
    if (v43 != v44)
    {
      do
      {
        v31 = v14[4];
        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v18 = v14[5];
        v17 = v14[6];
        while (v18 != v17)
        {
          v19 = *v18;
          [v16 addObject:v19];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "hash")}];
          [v15 addObject:v20];

          ++v18;
        }

        [v31 touchesEnded:v16 withEvent:v30];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v21 = v15;
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (v22)
        {
          v23 = *v34;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v34 != v23)
              {
                objc_enumerationMutation(v21);
              }

              [*&self->_prevBackingScaleFactor removeObjectForKey:{*(*(&v33 + 1) + 8 * j), v28}];
            }

            v22 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
          }

          while (v22);
        }

        v25 = v14[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v14[2];
            v27 = *v26 == v14;
            v14 = v26;
          }

          while (!v27);
        }

        v14 = v26;
        v7 = v30;
      }

      while (v26 != v44);
    }

    std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(&v43, v44[0]);
  }

  v32.receiver = self;
  v32.super_class = SKView;
  [(SKView *)&v32 touchesEnded:v28 withEvent:v7, v28];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v6 = a4;
  v7 = v6;
  if ((BYTE4(self->_transition) & 1) == 0 && *&self->_paused)
  {
    v44[0] = 0;
    v44[1] = 0;
    v30 = v6;
    v43 = v44;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = v28;
    v9 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v9)
    {
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v42 = *(*(&v38 + 1) + 8 * i);
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "hash", v28)}];
          v37 = [*&self->_prevBackingScaleFactor objectForKey:v12];
          if (v37)
          {
            v44[3] = &v37;
            v13 = std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::__emplace_unique_key_args<SKNode * {__strong},std::piecewise_construct_t const&,std::tuple<SKNode * const {__strong}&>,std::tuple<>>(&v43, &v37);
            std::vector<UITouch * {__strong}>::push_back[abi:ne200100](v13 + 5, &v42);
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v9);
    }

    v14 = v43;
    v7 = v30;
    if (v43 != v44)
    {
      do
      {
        v31 = v14[4];
        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v18 = v14[5];
        v17 = v14[6];
        while (v18 != v17)
        {
          v19 = *v18;
          [v16 addObject:v19];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "hash")}];
          [v15 addObject:v20];

          ++v18;
        }

        [v31 touchesCancelled:v16 withEvent:v30];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v21 = v15;
        v22 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (v22)
        {
          v23 = *v34;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v34 != v23)
              {
                objc_enumerationMutation(v21);
              }

              [*&self->_prevBackingScaleFactor removeObjectForKey:{*(*(&v33 + 1) + 8 * j), v28}];
            }

            v22 = [v21 countByEnumeratingWithState:&v33 objects:v45 count:16];
          }

          while (v22);
        }

        v25 = v14[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v14[2];
            v27 = *v26 == v14;
            v14 = v26;
          }

          while (!v27);
        }

        v14 = v26;
        v7 = v30;
      }

      while (v26 != v44);
    }

    std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(&v43, v44[0]);
  }

  v32.receiver = self;
  v32.super_class = SKView;
  [(SKView *)&v32 touchesCancelled:v28 withEvent:v7, v28];
}

- (CGPoint)convertPoint:(CGPoint)point toScene:(SKScene *)scene
{
  *&v4 = CGPointConvertFromViewToScene(self, scene, point).n128_u64[0];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromScene:(SKScene *)scene
{
  *&v4 = CGPointConvertFromSceneToView(scene, self, point).n128_u64[0];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)dealloc
{
  kdebug_trace();
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76768] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76648] object:0];

  [(SKView *)self stopRenderCallbacks];
  updateQueue = self->_updateQueue;
  if (updateQueue)
  {
    [(OS_dispatch_queue *)updateQueue invalidate];
    v6 = self->_updateQueue;
    self->_updateQueue = 0;
  }

  renderer = self->_renderer;
  if (renderer)
  {
    SKCRenderer::~SKCRenderer(renderer);
    MEMORY[0x21CF0A160]();
  }

  v8 = *&self->_paused;
  if (v8)
  {
    [v8 removeAllActions];
  }

  v9.receiver = self;
  v9.super_class = SKView;
  [(SKView *)&v9 dealloc];
}

- (double)alphaValue
{
  result = 1.0;
  if (BYTE1(self->_frameInterval))
  {
    return 0.0;
  }

  return result;
}

- (void)setAllowsTransparency:(BOOL)allowsTransparency
{
  BYTE1(self->_frameInterval) = allowsTransparency;
  [(SKView *)self setOpaque:!allowsTransparency];
  v4 = [(SKView *)self layer];

  if (v4)
  {
    v5 = BYTE1(self->_frameInterval);
    v8 = [(SKView *)self layer];
    [v8 setOpaque:(v5 & 1) == 0];

    v9 = [MEMORY[0x277D75348] clearColor];
    v6 = [v9 CGColor];
    v7 = [(SKView *)self layer];
    [v7 setBackgroundColor:v6];
  }
}

- (void)presentScene:(SKScene *)scene
{
  v23 = scene;
  v5 = [(SKView *)self getRenderOptions];
  v6 = [v5 objectForKeyedSubscript:@"ignoreBackgroundNotifications"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    [(SKView *)self setPaused:0];
  }

  BYTE4(self->_transition) = 1;
  v8 = *&self->_paused;
  if (v8)
  {
    [v8 _willMoveFromView:self];
    v9 = *&self->_paused;
    *&self->_paused = 0;
  }

  v10 = *&self->_prevBackingScaleFactor;
  if (v10)
  {
    [v10 removeAllObjects];
  }

  if (v23)
  {
    if ([(SKScene *)v23 scaleMode]== SKSceneScaleModeResizeFill)
    {
      [(SKView *)self bounds];
      v12 = v11;
      v14 = v13;
      [(SKScene *)v23 size];
      v16 = v15;
      v18 = v17;
      [(SKScene *)v23 size];
      if (v20 != v12 || v19 != v14)
      {
        [(SKScene *)v23 setSize:v12, v14];
        [(SKScene *)v23 didChangeSize:v16, v18];
      }
    }
  }

  objc_storeStrong(&self->_paused, scene);
  v21 = self->_scene;
  self->_scene = 0;

  nextScene = self->_nextScene;
  self->_nextScene = 0;

  [(SKScene *)v23 setPaused:LOBYTE(self->_spriteArrayHint)];
  [*&self->_paused _didMoveToView:self];
  self->_needsInitialUpdate = 1;
  BYTE4(self->_transition) = 0;
}

- (void)presentScene:(SKScene *)scene transition:(SKTransition *)transition
{
  v20 = scene;
  v7 = transition;
  if (!v20 || !v7)
  {
    goto LABEL_9;
  }

  if ([(SKScene *)v20 scaleMode]== SKSceneScaleModeResizeFill)
  {
    [(SKView *)self bounds];
    v9 = v8;
    v11 = v10;
    [(SKScene *)v20 size];
    v13 = v12;
    v15 = v14;
    [(SKScene *)v20 size];
    if (v17 != v9 || v16 != v11)
    {
      [(SKScene *)v20 setSize:v9, v11];
      [(SKScene *)v20 didChangeSize:v13, v15];
    }
  }

  if (*&self->_paused)
  {
    BYTE4(self->_transition) = 1;
    objc_storeStrong(&self->_scene, scene);
    [(SKScene *)self->_scene setPaused:LOBYTE(self->_spriteArrayHint)];
    [(SKScene *)self->_scene _didMoveToView:self];
    self->_needsInitialUpdate = 1;
    v18 = [(SKTransition *)v7 copy];
    nextScene = self->_nextScene;
    self->_nextScene = v18;

    *([(SKNode *)self->_nextScene _backingNode]+ 720) = 0;
    *([(SKNode *)self->_nextScene _backingNode]+ 584) = 0;
  }

  else
  {
LABEL_9:
    [(SKView *)self presentScene:v20];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SKView;
  [(SKView *)&v6 layoutSubviews];
  [(SKView *)self _reshape];
  v3 = [(SKView *)self getRenderOptions];
  v4 = [v3 objectForKeyedSubscript:@"ignoreRenderSyncInLayoutSubviews"];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    [(SKView *)self _renderSynchronouslyForTime:0 preRender:0 postRender:0.0];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SKView;
  [(SKView *)&v3 didMoveToWindow];
  [(SKView *)self _reshape];
}

- (void)_reshape
{
  kdebug_trace();
  [(SKView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = *&self->_paused;
  if (v7 && [v7 scaleMode] == 3)
  {
    [*&self->_paused size];
    v9 = v8;
    v11 = v10;
    [*&self->_paused size];
    if (v13 != v4 || v12 != v6)
    {
      [*&self->_paused setSize:{v4, v6}];
      [*&self->_paused didChangeSize:{v9, v11}];
    }
  }

  [(SKView *)self _getViewContentsScale];
  v16 = v15;
  if (*&self->_viewFramebufferPixelSize[5] != (v4 * v16) || HIDWORD(*&self->_viewFramebufferPixelSize[5]) != (v6 * v16))
  {
    self->_viewFramebufferIsValid = 0;
  }
}

- (void)_update:(double)a3
{
  if (LOBYTE(self->_spriteArrayHint) != 1 || (p_needsInitialUpdate = &self->_needsInitialUpdate, self->_needsInitialUpdate))
  {
    v6 = a3 - skCurrentTime();
    if (v6 < 0.0)
    {
      return;
    }

    if (v6 <= 1.0)
    {
      skSetTime(a3);
      goto LABEL_15;
    }

    v7 = *&self->_paused;
    scene = self->_scene;
    if (v7)
    {
      v9 = [*&self->_paused isPaused];
      [*&self->_paused setPaused:1];
      if (scene)
      {
LABEL_7:
        v10 = [(SKNode *)self->_scene isPaused];
        [(SKScene *)self->_scene setPaused:1];
LABEL_11:
        skSetTime(a3);
        if (v7)
        {
          [*&self->_paused setPaused:0];
          [*&self->_paused setPaused:v9];
        }

        if (scene)
        {
          [(SKScene *)self->_scene setPaused:0];
          [(SKScene *)self->_scene setPaused:v10];
        }

LABEL_15:
        nextScene = self->_nextScene;
        if (nextScene)
        {
          v12 = [(SKNode *)nextScene _backingNode];
          *(v12 + 584) = *(v12 + 584) + v6;
          v13 = [(SKNode *)self->_nextScene _backingNode];
          v14 = *([(SKNode *)self->_nextScene _backingNode]+ 584);
          v13[180] = v14 / *([(SKNode *)self->_nextScene _backingNode]+ 580);
          v15 = *([(SKNode *)self->_nextScene _backingNode]+ 584);
          if (v15 >= *([(SKNode *)self->_nextScene _backingNode]+ 580))
          {
            if (*([(SKNode *)self->_nextScene _backingNode]+ 576) == 1)
            {
              [*&self->_paused setPaused:0];
            }

            [*&self->_paused _willMoveFromView:self];
            objc_storeStrong(&self->_paused, self->_scene);
            v16 = self->_scene;
            self->_scene = 0;

            BYTE4(self->_transition) = 0;
            if (*([(SKNode *)self->_nextScene _backingNode]+ 577) == 1)
            {
              [*&self->_paused setPaused:0];
            }

            v17 = self->_nextScene;
            self->_nextScene = 0;

            v18 = *&self->_prevBackingScaleFactor;
            if (v18)
            {
              [v18 removeAllObjects];
            }

            v19 = *&self->_paused;
            if (v19)
            {
              SKCNode::setDirty([v19 _backingNode]);
            }
          }
        }

        v20 = *&self->_paused;
        v21 = v20;
        if (v20 && ([v20 isPaused] & 1) == 0)
        {
          if (![v21 _usesExplicitUpdate])
          {
LABEL_30:
            [v21 _update:a3];
            BYTE3(self->_transition) = 0;
            goto LABEL_31;
          }

          if ([v21 _needsUpdate])
          {
            [v21 set_needsUpdate:0];
            goto LABEL_30;
          }
        }

LABEL_31:
        v22 = self->_scene;
        v23 = v22;
        if (v22 && ![(SKNode *)v22 isPaused])
        {
          if (![(SKScene *)v23 _usesExplicitUpdate])
          {
LABEL_36:
            [(SKScene *)v23 _update:a3];
            BYTE3(self->_transition) = 0;
            goto LABEL_37;
          }

          if ([(SKScene *)v23 _needsUpdate])
          {
            [(SKScene *)v23 set_needsUpdate:0];
            goto LABEL_36;
          }
        }

LABEL_37:

        p_needsInitialUpdate = &self->_needsInitialUpdate;
        if (self->_needsInitialUpdate)
        {
          v24 = self->_nextScene;
          if (v24)
          {
            if (*([(SKNode *)v24 _backingNode]+ 576) == 1)
            {
              [*&self->_paused setPaused:1];
            }

            if (*([(SKNode *)self->_nextScene _backingNode]+ 577) == 1)
            {
              [(SKScene *)self->_scene setPaused:1];
            }
          }
        }

        goto LABEL_43;
      }
    }

    else
    {
      v9 = 0;
      if (scene)
      {
        goto LABEL_7;
      }
    }

    v10 = 0;
    goto LABEL_11;
  }

LABEL_43:
  *p_needsInitialUpdate = 0;
}

- (SKTexture)textureFromNode:(SKNode *)node
{
  v3 = [(SKView *)self textureFromNode:node withOptions:0];

  return v3;
}

- (id)textureFromNode:(id)a3 withOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(SKView *)self _ensureRenderer];
  v8 = [v6 _backingNode];
  [(SKView *)self _getViewContentsScale];
  v10 = SKCRenderer::textureFromNode(self->_renderer, v8, v9, v7);

  return v10;
}

- (SKView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SKView;
  v3 = [(SKView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SKView *)v3 _commonInit];
  }

  return v4;
}

- (SKView)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SKView;
  v5 = [(SKView *)&v17 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(SKView *)v5 _commonInit];
    if ([v4 decodeIntegerForKey:@"_version"] >= 1)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v18[0] = objc_opt_class();
      v18[1] = objc_opt_class();
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      [v7 addObjectsFromArray:v8];

      v9 = [v4 allowedClasses];
      [v7 unionSet:v9];

      v10 = [v4 decodeObjectOfClasses:v7 forKey:@"_info"];
      [(SKView *)v6 set_info:v10];

      [v4 decodeCGRectForKey:@"_frame"];
      [(SKView *)v6 setFrame:?];
      -[SKView setPreferredFramesPerSecond:](v6, "setPreferredFramesPerSecond:", [v4 decodeIntegerForKey:@"_preferredFramesPerSecond"]);
      if ([v4 containsValueForKey:@"_paused"])
      {
        -[SKView setPaused:](v6, "setPaused:", [v4 decodeBoolForKey:@"_paused"]);
      }

      if ([v4 containsValueForKey:@"_asynchronous"])
      {
        -[SKView setAsynchronous:](v6, "setAsynchronous:", [v4 decodeBoolForKey:@"_asynchronous"]);
      }

      if ([v4 containsValueForKey:@"_allowsTransparency"])
      {
        -[SKView setAllowsTransparency:](v6, "setAllowsTransparency:", [v4 decodeBoolForKey:@"_allowsTransparency"]);
      }

      if ([v4 containsValueForKey:@"_ignoresSiblingOrder"])
      {
        -[SKView setIgnoresSiblingOrder:](v6, "setIgnoresSiblingOrder:", [v4 decodeBoolForKey:@"_ignoresSiblingOrder"]);
      }

      if ([v4 containsValueForKey:@"_shouldCullNonVisibleNodes"])
      {
        -[SKView setShouldCullNonVisibleNodes:](v6, "setShouldCullNonVisibleNodes:", [v4 decodeBoolForKey:@"_shouldCullNonVisibleNodes"]);
      }

      v11 = [(SKView *)v6 _info];
      v12 = v11 == 0;

      if (!v12)
      {
        v13 = [(SKView *)v6 _info];
        v14 = [v13 objectForKey:@"_ib_SceneName"];

        if (v14 && [v14 length])
        {
          v15 = [(SKNode *)SKScene nodeWithFileNamed:v14];

          if (v15)
          {
LABEL_20:
            [(SKView *)v6 presentScene:v15];

            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_scene"];
      goto LABEL_20;
    }
  }

LABEL_21:

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SKView;
  [(SKView *)&v7 encodeWithCoder:v4];
  [v4 encodeInteger:1 forKey:@"_version"];
  [(SKView *)self frame];
  [v4 encodeCGRect:@"_frame" forKey:?];
  v5 = [(SKView *)self _info];
  [v4 encodeObject:v5 forKey:@"_info"];

  v6 = [(SKView *)self scene];
  [v4 encodeObject:v6 forKey:@"_scene"];

  [v4 encodeInteger:-[SKView preferredFramesPerSecond](self forKey:{"preferredFramesPerSecond"), @"_preferredFramesPerSecond"}];
  [v4 encodeBool:-[SKView isPaused](self forKey:{"isPaused"), @"_paused"}];
  [v4 encodeBool:-[SKView isAsynchronous](self forKey:{"isAsynchronous"), @"_asynchronous"}];
  [v4 encodeBool:-[SKView allowsTransparency](self forKey:{"allowsTransparency"), @"_allowsTransparency"}];
  [v4 encodeBool:-[SKView ignoresSiblingOrder](self forKey:{"ignoresSiblingOrder"), @"_ignoresSiblingOrder"}];
  [v4 encodeBool:-[SKView shouldCullNonVisibleNodes](self forKey:{"shouldCullNonVisibleNodes"), @"_shouldCullNonVisibleNodes"}];
}

- (BOOL)isEqualToView:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_14;
  }

  v5 = [(SKView *)self isPaused];
  if (v5 == [(SKView *)v4 isPaused])
  {
    v6 = [(SKView *)self isAsynchronous];
    if (v6 == [(SKView *)v4 isAsynchronous])
    {
      v7 = [(SKView *)self allowsTransparency];
      if (v7 == [(SKView *)v4 allowsTransparency])
      {
        v8 = [(SKView *)self ignoresSiblingOrder];
        if (v8 == [(SKView *)v4 ignoresSiblingOrder])
        {
          v9 = [(SKView *)self shouldCullNonVisibleNodes];
          if (v9 == [(SKView *)v4 shouldCullNonVisibleNodes])
          {
            v10 = [(SKView *)self preferredFramesPerSecond];
            if (v10 == [(SKView *)v4 preferredFramesPerSecond])
            {
              [(SKView *)self frame];
              v12 = v11;
              v14 = v13;
              v16 = v15;
              v18 = v17;
              [(SKView *)v4 frame];
              v30.origin.x = v19;
              v30.origin.y = v20;
              v30.size.width = v21;
              v30.size.height = v22;
              v29.origin.x = v12;
              v29.origin.y = v14;
              v29.size.width = v16;
              v29.size.height = v18;
              if (CGRectEqualToRect(v29, v30))
              {
                v23 = [(SKView *)self scene];
                if (v23)
                {

LABEL_13:
                  v26 = [(SKView *)self scene];
                  v27 = [(SKView *)v4 scene];
                  v24 = [v26 isEqualToNode:v27];

                  goto LABEL_15;
                }

                v25 = [(SKView *)v4 scene];

                if (v25)
                {
                  goto LABEL_13;
                }

LABEL_14:
                v24 = 1;
                goto LABEL_15;
              }
            }
          }
        }
      }
    }
  }

  v24 = 0;
LABEL_15:

  return v24;
}

- (void)setFrameInterval:(NSInteger)frameInterval
{
  self->_preferredFramesPerSecond = frameInterval;
  v4 = [(SKView *)self _getEffectivePreferredFramesPerSecond];
  updateQueue = self->_updateQueue;

  [(OS_dispatch_queue *)updateQueue setPreferredFramesPerSecond:v4];
}

- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond
{
  self->_displayLink = preferredFramesPerSecond;
  v4 = [(SKView *)self _getEffectivePreferredFramesPerSecond];
  updateQueue = self->_updateQueue;

  [(OS_dispatch_queue *)updateQueue setPreferredFramesPerSecond:v4];
}

- (unint64_t)_getEffectivePreferredFramesPerSecond
{
  if (sk_debug_option_exists(&cfstr_Preferredframe_0.isa))
  {
    v3 = sk_debug_option_get_float(&cfstr_Preferredframe_0.isa);
  }

  else
  {
    v3 = (self->_displayLink / self->_preferredFramesPerSecond);
  }

  return fmaxf(v3, 1.0);
}

- (SKTexture)textureFromNode:(SKNode *)node crop:(CGRect)crop
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = node;
  [(SKView *)self _ensureRenderer];
  v10 = [(SKNode *)v9 _backingNode];
  [(SKView *)self _getViewContentsScale];
  v12 = v11;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectIsEmpty(v20) || (v21.origin.x = x, v21.origin.y = y, v21.size.width = width, v21.size.height = height, CGRectIsInfinite(v21)))
  {
    v13 = 0;
  }

  else
  {
    v17 = @"textureFromNodeCropRect";
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v14 = NSStringFromCGRect(v22);
    v18[0] = v14;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  v15 = SKCRenderer::textureFromNode(self->_renderer, v10, v12, v13);

  return v15;
}

- (shared_ptr<jet_framebuffer>)nextFramebuffer
{
  v3 = v2;
  if (self->_viewFramebufferIsValid)
  {
    v4 = self;
    ptr = self->_frameBufferDepthStencilTexture.__ptr_;
    p_framebuffer = &self->_framebuffer;
    v7 = self->_framebuffer.__ptr_;
    *(v7 + 26) = ptr;
    *(v7 + 29) = ptr;
    SKCRenderer::getBackingContext([(SKView *)self chooseViewRenderer], &v18);
    v8 = (*(*v18 + 136))(v18);
    self = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
    }

    if (v8 == 1)
    {
      SKCRenderer::getBackingContext(v4->_renderer, &v18);
      v9 = v18;
      if (*(&v18 + 1))
      {
        atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
        if (*(&v18 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
        }
      }

      if (sk_debug_get_optional())
      {
        kdebug_trace();
      }

      v10 = CACurrentMediaTime();
      _perfStartRequestDrawable(v10);
      if (LOBYTE(v4->_machTimeTimebase) == 1 && ([(CAMetalLayer *)v4->_metalLayer isDrawableAvailable]& 1) == 0)
      {
        v17 = mach_approximate_time();
        if ((*&v4->_renderQueue * (v17 - [SKView nextFramebuffer]::lastLoggingTimeCheckForDrawables)) >= 0x12A05F201)
        {
          [SKView nextFramebuffer]::lastLoggingTimeCheckForDrawables = v17;
          NSLog(&cfstr_SkviewNoDrawab.isa);
        }

        kdebug_trace();
        *(p_framebuffer->__ptr_ + 2) = 0;
        self = v4->_frameBufferColorTexture.__cntrl_;
        v4->_frameBufferColorTexture.__ptr_ = 0;
        v4->_frameBufferColorTexture.__cntrl_ = 0;
        if (self)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](self);
        }

        *v3 = 0;
        v3[1] = 0;
        if (*(&v9 + 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v11 = [(CAMetalLayer *)v4->_metalLayer nextDrawable];
        v12 = CACurrentMediaTime();
        _perfEndRequestDrawable(v12);
        if (sk_debug_get_optional())
        {
          kdebug_trace();
        }

        if (v11)
        {
          v13 = (*(*v9 + 416))(v9, v11);
          std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v18, v13);
        }

        kdebug_trace();
        *(p_framebuffer->__ptr_ + 2) = 0;
        cntrl = v4->_frameBufferColorTexture.__cntrl_;
        v4->_frameBufferColorTexture.__ptr_ = 0;
        v4->_frameBufferColorTexture.__cntrl_ = 0;
        if (cntrl)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
        }

        *v3 = 0;
        v3[1] = 0;

        if (*(&v9 + 1))
        {
LABEL_22:
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
        }
      }
    }

    else
    {
      v14 = p_framebuffer->__ptr_;
      *(v14 + 2) = v4->_frameBufferColorTexture.__ptr_;
      v15 = p_framebuffer->__cntrl_;
      *v3 = v14;
      v3[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
      }
    }
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)getRootNode
{
  v3 = [(SKView *)self scene];
  v4 = self->_scene;
  nextScene = v3;
  if (self->_nextScene)
  {
    v6 = [(SKNode *)self->_nextScene _backingNode];
    v6[74] = [(SKNode *)v3 _backingNode];
    v7 = [(SKNode *)self->_nextScene _backingNode];
    v7[75] = [(SKNode *)v4 _backingNode];
    SKCNode::recomputeFlags([(SKNode *)self->_nextScene _backingNode], 1);
    nextScene = self->_nextScene;
  }

  v8 = [(SKNode *)nextScene _backingNode];

  return v8;
}

- (double)getViewport
{
  [a1 frame];
  [a1 _getViewContentsScale];
  return 0.0;
}

- (double)getViewTransform
{
  [a1 frame];
  v2 = 0;
  v4.f64[1] = v3;
  v5 = vdiv_f32(*(a1 + 960), vcvt_f32_f64(v4));
  __asm { FMOV            V1.2S, #1.0 }

  *&v11 = vsub_f32(_D1, vadd_f32(v5, v5));
  v12 = *(MEMORY[0x277D860B8] + 32);
  v13 = *(MEMORY[0x277D860B8] + 48);
  v14 = v13;
  v14.i32[2] = 0;
  v15 = *MEMORY[0x277D860B8];
  v16 = *(MEMORY[0x277D860B8] + 16);
  *(&v11 + 1) = vextq_s8(v14, v14, 8uLL).u64[0];
  v17 = *MEMORY[0x277D860B8];
  v17.i32[0] = *(a1 + 944);
  v18 = v16;
  v18.i32[1] = HIDWORD(*(a1 + 944));
  v19 = v12;
  v19.i32[2] = 1.0;
  v23 = *MEMORY[0x277D860B8];
  v24 = v16;
  v25 = v12;
  v26 = v11;
  do
  {
    v27[v2 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v23 + v2))), v18, *(&v23 + v2), 1), v19, *(&v23 + v2), 2), v13, *(&v23 + v2), 3);
    v2 += 16;
  }

  while (v2 != 64);
  v20 = 0;
  __asm { FMOV            V4.4S, #-1.0 }

  _Q4.i32[2] = 0;
  _Q4.i32[3] = v13.i32[3];
  v23 = v27[0];
  v24 = v27[1];
  v25 = v27[2];
  v26 = v27[3];
  do
  {
    v27[v20 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*(&v23 + v20))), v16, *(&v23 + v20), 1), v12, *(&v23 + v20), 2), _Q4, *(&v23 + v20), 3);
    v20 += 16;
  }

  while (v20 != 64);
  return *v27;
}

- (id)getRenderOptions
{
  v3 = [(NSMapTable *)self->_touchMap mutableCopy];
  v4 = sk_get_debug_options();
  [v3 addEntriesFromDictionary:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:self];
  [v3 setObject:v5 forKeyedSubscript:@"_client"];

  if (sk_debug_option_get_BOOL(&cfstr_Debugdrawstats_6.isa))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SKView _getEffectivePreferredFramesPerSecond](self, "_getEffectivePreferredFramesPerSecond")}];
    [v3 setObject:v6 forKeyedSubscript:@"_preferredFramesPerSecond"];
  }

  return v3;
}

- (BOOL)hasValidViewFramebuffer
{
  if (self->_viewFramebufferIsValid)
  {
    return 1;
  }

  else
  {
    [(SKView *)self remakeFramebuffer];
    return self->_viewFramebufferIsValid;
  }
}

- (void)notifyWillRenderContent
{
  if (!self->_didRunOnce)
  {
    self->_didRunOnce = 1;
    [(SKView *)self runOnce];
  }

  [(SKView *)self willRenderContent];
  v3 = *&self->_paused;
  if (v3 && ([v3 delegate], v4 = objc_claimAutoreleasedReturnValue(), v3 = *&self->_paused, v4) && (objc_msgSend(v3, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, v3 = *&self->_paused, (v6 & 1) != 0))
  {
    v7 = [v3 delegate];
    [v7 willRenderContentForScene:*&self->_paused];
  }

  else
  {
    [v3 willRenderContent];
  }

  scene = self->_scene;
  if (scene && ([(SKScene *)scene delegate], v9 = objc_claimAutoreleasedReturnValue(), scene = self->_scene, v9) && ([(SKScene *)scene delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, scene = self->_scene, (v11 & 1) != 0))
  {
    v12 = [(SKScene *)scene delegate];
    [v12 willRenderContentForScene:self->_scene];
  }

  else
  {
    [(SKScene *)scene willRenderContent];
  }

  [(SKView *)self _renderContent];
}

- (void)set_viewScale:(double)a3
{
  *&a3 = a3;
  *&v4 = vdupq_lane_s32(*&a3, 0).u64[0];
  *(&v4 + 1) = *&self->_viewScale[8];
  *self->_viewScale = v4;
  v5 = [(SKView *)self scene];

  if (v5)
  {
    v6 = [(SKView *)self scene];
    [v6 _setDirty];
  }
}

- (CGPoint)_viewTranslation
{
  v2 = vcvtq_f64_f32(*self->_viewTranslation);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)set_viewTranslation:(CGPoint)a3
{
  y = a3.y;
  *&v5 = vcvt_f32_f64(a3);
  *(&v5 + 1) = vextq_s8(*self->_viewTranslation, *self->_viewTranslation, 8uLL).u64[0];
  *self->_viewTranslation = v5;
  v6 = [(SKView *)self scene];

  if (v6)
  {
    v7 = [(SKView *)self scene];
    [v7 _setDirty];
  }
}

- (id)snapshot
{
  v3 = [(SKView *)self scene];

  if (v3)
  {
    v4 = [(SKView *)self scene];
    [(SKView *)self frame];
    v5 = [(SKView *)self textureFromNode:v4 crop:?];

    if (v5)
    {
      v6 = [v5 CGImage];
      if (v6)
      {
        v7 = [MEMORY[0x277D755B8] imageWithCGImage:v6];
      }

      else
      {
        v7 = 0;
      }

      CGImageRelease(v6);
    }

    else
    {
      v7 = 0;
    }

    v3 = v7;
  }

  return v3;
}

- (float)_getViewContentsScale
{
  v2 = [(SKView *)self window];
  v3 = [v2 screen];

  if (v3)
  {
    [v3 nativeScale];
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 nativeScale];
    v5 = v7;
  }

  return v5;
}

- (void)setPaused:(BOOL)paused
{
  if (LOBYTE(self->_spriteArrayHint) == paused)
  {
    return;
  }

  LOBYTE(self->_spriteArrayHint) = paused;
  if (LOBYTE(self->_frameInterval) != 1)
  {
    if (!paused)
    {
      goto LABEL_4;
    }

LABEL_6:
    [(SKView *)self stopRenderCallbacks];
    goto LABEL_7;
  }

  BYTE2(self->_frameInterval) = paused;
  if (self->_spriteArrayHint)
  {
    goto LABEL_6;
  }

LABEL_4:
  [(SKView *)self startRenderCallbacks];
LABEL_7:
  v4 = *&self->_paused;
  if (v4)
  {
    [v4 setPaused:LOBYTE(self->_spriteArrayHint)];
  }

  scene = self->_scene;
  if (scene)
  {
    spriteArrayHint_low = LOBYTE(self->_spriteArrayHint);

    [(SKScene *)scene setPaused:spriteArrayHint_low];
  }
}

- (double)_fps
{
  frameCount = self->_currentStats.frameCount;
  result = 1.0;
  if (frameCount >= 2)
  {
    v4 = self->_currentStats.frameBeginTime - self->_currentStats.baseTime;
    if (v4 > 0.0)
    {
      return ((frameCount - 1) / v4);
    }
  }

  return result;
}

- (id)_getPerformanceStats
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  p_frameStats = &self->_frameStats;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_frameStats.render.sknodeTraversalCount];
  [v3 setObject:v5 forKeyedSubscript:@"nodeCount"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:p_frameStats->render.drawCallCount];
  [v3 setObject:v6 forKeyedSubscript:@"drawCallCount"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:p_frameStats->render.quadCount];
  [v3 setObject:v7 forKeyedSubscript:@"quadCount"];

  return v3;
}

- (id)focusItemsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = [(SKView *)self scene];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __27__SKView_focusItemsInRect___block_invoke;
  v17[3] = &unk_27830FD60;
  v17[4] = self;
  *&v17[5] = x;
  *&v17[6] = y;
  *&v17[7] = width;
  *&v17[8] = height;
  v9 = [v8 _descendantsWithPredicate:v17];
  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"zPosition" ascending:1];
  v18[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v12 = [v9 sortedArrayUsingDescriptors:v11];

  v16.receiver = self;
  v16.super_class = SKView;
  v13 = [(SKView *)&v16 focusItemsInRect:x, y, width, height];
  v14 = [v13 arrayByAddingObjectsFromArray:v12];

  return v14;
}

BOOL __27__SKView_focusItemsInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 _convertFrameToView:*(a1 + 32)];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([v3 _isEligibleForFocus])
  {
    v14.origin.x = v5;
    v14.origin.y = v7;
    v14.size.width = v9;
    v14.size.height = v11;
    v12 = CGRectIntersectsRect(*(a1 + 40), v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)debugHierarchyAdditionalGroupingIDs
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.SpriteKit.SKScene";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)debugHierarchyObjectsInGroupWithID:(id)a3 onObject:(id)a4 outOptions:(id *)a5
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"com.apple.SpriteKit.SKScene"])
  {
    v8 = [v7 scene];

    if (v8)
    {
      v9 = [v7 scene];
      v11[0] = v9;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)debugHierarchyPropertyDescriptions
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"allowsTransparency");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"b");
  v12[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"asynchronous");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v5, @"propertyFormat", @"b");
  v12[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"delegate");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v6, @"propertyFormat", @"objectInfo");
  v12[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"ignoresSiblingOrder");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v7, @"propertyFormat", @"b");
  v12[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"paused");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v8, @"propertyFormat", @"b");
  v12[4] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v9, @"propertyName", @"preferredFramesPerSecond");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v9, @"propertyFormat", @"b");
  v12[5] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];

  return v10;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)a6
{
  v27[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (![v10 length])
  {
    goto LABEL_12;
  }

  NSSelectorFromString(v10);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ([v10 length] < 2)
    {
      v15 = [v10 uppercaseString];
    }

    else
    {
      v12 = [v10 substringToIndex:1];
      v13 = [v12 uppercaseString];
      v14 = [v10 substringFromIndex:1];
      v15 = [v13 stringByAppendingString:v14];
    }

    v16 = [@"is" stringByAppendingString:v15];
    NSSelectorFromString(v16);
    if (objc_opt_respondsToSelector())
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_12:
    if (a6)
    {
      v17 = v9;
      v18 = v10;
      if (v17)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v17];
      }

      else
      {
        v19 = &stru_282E190D8;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = &stru_282E190D8;
      }

      v21 = v20;
      v26[0] = @"propertyName";
      v26[1] = @"objectDescription";
      v27[0] = v21;
      v27[1] = v19;
      v26[2] = @"errorDescription";
      v27[2] = &stru_282E190D8;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v22];

      v24 = v23;
      *a6 = v23;

      v11 = 0;
      a6 = 0;
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_21;
  }

  v11 = v10;
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_4:
  a6 = [v9 valueForKey:v11];
LABEL_21:

  return a6;
}

- (NSObject)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->__layerBackedRenderer);

  return WeakRetained;
}

- (CGSize)pixelSize
{
  height = self->_pixelSize.height;
  isa = self[1].super.super.super.isa;
  result.height = *&isa;
  result.width = height;
  return result;
}

- (id).cxx_construct
{
  SKCStats::SKCStats(&self->_currentStats);
  SKCStats::SKCStats(&self->_nextStats);
  SKCStats::SKCStats(&self->_frameStats);
  self->_framebuffer.__ptr_ = 0;
  self->_framebuffer.__cntrl_ = 0;
  self->_frameBufferColorTexture.__ptr_ = 0;
  self->_frameBufferColorTexture.__cntrl_ = 0;
  self->_frameBufferDepthStencilTexture.__ptr_ = 0;
  self->_frameBufferDepthStencilTexture.__cntrl_ = 0;
  self->_renderFence.__ptr_ = 0;
  self->_renderFence.__cntrl_ = 0;
  return self;
}

@end