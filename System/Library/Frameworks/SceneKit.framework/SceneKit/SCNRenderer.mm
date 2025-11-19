@interface SCNRenderer
+ (SCNRenderer)rendererWithContext:(EAGLContext *)context options:(NSDictionary *)options;
+ (SCNRenderer)rendererWithDevice:(id)device options:(NSDictionary *)options;
- (BOOL)_collectCompilationErrors;
- (BOOL)_drawSceneWithLegacyRenderer:(__C3DScene *)a3;
- (BOOL)_drawSceneWithNewRenderer:(__C3DScene *)a3;
- (BOOL)_enableARMode;
- (BOOL)_installContext;
- (BOOL)_isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4 viewport:(SCNVector4)a5;
- (BOOL)_needsRedrawAsap;
- (BOOL)_needsRepetitiveRedraw;
- (BOOL)_preloadResource:(id)a3 abortHandler:(id)a4;
- (BOOL)_prepareObject:(id)a3 shouldAbortBlock:(id)a4;
- (BOOL)_preparePreloadRenderer:(id)a3;
- (BOOL)_recordWithoutExecute;
- (BOOL)_shouldDelegateARCompositing;
- (BOOL)autoAdjustCamera;
- (BOOL)autoenablesDefaultLighting;
- (BOOL)isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4;
- (BOOL)prepareObject:(id)a3 shouldAbortBlock:(id)a4;
- (BOOL)renderMovieToURL:(id)a3 size:(CGSize)a4 antialiasingMode:(unint64_t)a5 attributes:(id)a6 error:(id *)a7;
- (BOOL)usesReverseZ;
- (CGImage)_createBackgroundColorImageWithSize:(CGSize)a3;
- (CGImage)_createSnapshotAtTime:(double)a3 withSize:(CGSize)a4 antialiasingMode:(unint64_t)a5 error:(id *)a6;
- (CGImage)createSnapshot:(double)a3 error:(id *)a4;
- (CGRect)currentViewport;
- (MTLCommandQueue)commandQueue;
- (MTLDevice)device;
- (MTLRenderCommandEncoder)currentRenderCommandEncoder;
- (MTLRenderPassDescriptor)currentRenderPassDescriptor;
- (NSString)description;
- (SCNNode)audioListener;
- (SCNVector3)_projectPoint:(SCNVector3)a3 viewport:(SCNVector4)a4;
- (SCNVector3)_unprojectPoint:(SCNVector3)a3 viewport:(SCNVector4)a4;
- (SCNVector3)projectPoint:(SCNVector3)result;
- (SCNVector3)unprojectPoint:(SCNVector3)result;
- (SCNVector4)_viewport;
- (UIImage)snapshotAtTime:(CFTimeInterval)time withSize:(CGSize)size antialiasingMode:(SCNAntialiasingMode)antialiasingMode;
- (__C3DRendererContext)_rendererContextGL;
- (double)_computeNextFrameTime;
- (double)_systemTime;
- (id)_compilationErrors;
- (id)_computedLightingEnvironmentMapsPath;
- (id)_copyPassDescription;
- (id)_copyPerformanceStatistics;
- (id)_copyRenderGraphDescription;
- (id)_defaultPOVForScene:(id)a3;
- (id)_hitTest:(CGPoint)a3 viewport:(CGSize)a4 options:(id)a5;
- (id)_initWithOptions:(id)a3 isPrivateRenderer:(BOOL)a4 privateRendererOwner:(id)a5 clearsOnDraw:(BOOL)a6 context:(void *)a7 renderingAPI:(unint64_t)a8;
- (id)_nodesInsideFrustumWithPointOfView:(id)a3 viewport:(SCNVector4)a4;
- (id)_prepareSKRenderer;
- (id)_readSubdivCacheForHash:(id)a3;
- (id)_setupSKRendererIfNeeded;
- (id)backgroundColor;
- (id)currentCommandBuffer;
- (id)hitTest:(CGPoint)a3 options:(id)a4;
- (id)hitTestWithSegmentFromPoint:(SCNVector3)a3 toPoint:(SCNVector3)a4 options:(id)a5;
- (id)metalLayer;
- (id)nodesInsideFrustumWithPointOfView:(id)a3;
- (id)programWithNode:(id)a3 withMaterial:(id)a4;
- (id)snapshotAtTime:(double)a3;
- (id)snapshotAtTime:(double)a3 withSize:(CGSize)a4 antialiasingMode:(unint64_t)a5 error:(id *)a6;
- (id)snapshotRendererWithSize:(CGSize)a3;
- (unint64_t)_antialiasingMode;
- (unint64_t)colorPixelFormat;
- (unint64_t)depthPixelFormat;
- (void)_addGPUFrameCompletedHandler:(id)a3;
- (void)_addGPUFramePresentedHandler:(id)a3;
- (void)_addGPUFrameScheduledHandler:(id)a3;
- (void)_allowGPUBackgroundExecution;
- (void)_beginFrame;
- (void)_c3dBackgroundColorDidChange;
- (void)_clearBackBuffer;
- (void)_createOffscreenFramebufferIfNeeded;
- (void)_createPrepareFramebufferIfNeeded;
- (void)_deleteGLFramebuffer;
- (void)_didRenderScene:(id)a3;
- (void)_discardPendingGPUFrameCompletedHandlers;
- (void)_discardPendingGPUFramePresentedHandlers;
- (void)_discardPendingGPUFrameScheduledHandlers;
- (void)_displayLinkStatsTack;
- (void)_displayLinkStatsTick;
- (void)_draw;
- (void)_drawAtTime:(double)a3;
- (void)_drawOverlaySceneAtTime:(double)a3;
- (void)_drawScene:(__C3DScene *)a3;
- (void)_drawWithJitteringPresentationMode;
- (void)_endFrame;
- (void)_installGLContextAndSetViewport;
- (void)_installViewport;
- (void)_interfaceOrientationDidChange;
- (void)_jitterAtStep:(unint64_t)a3 updateMainFramebuffer:(BOOL)a4 redisplay:(BOOL)a5 jitterer:(id)a6;
- (void)_play;
- (void)_prepareForTransition:(id)a3 outgoingScene:(id)a4 outgoingPointOfView:(id)a5 completionHandler:(id)a6;
- (void)_prepareGLRenderTarget;
- (void)_prepareRenderTarget;
- (void)_presentFramebuffer;
- (void)_projectPoints:(SCNVector3 *)a3 count:(unint64_t)a4 viewport:(SCNVector4)a5;
- (void)_releasePreloadRenderer;
- (void)_reloadDebugOptions;
- (void)_renderAtTime:(double)a3;
- (void)_renderAtTime:(double)a3 viewport:(CGRect)a4 encoder:(id)a5 passDescriptor:(id)a6 commandQueue:(id)a7 commandBuffer:(id)a8;
- (void)_renderGraphFrameRecordingAtPath:(id)a3 withCompletion:(id)a4;
- (void)_renderSceneWithEngineContext:(__C3DEngineContext *)a3 sceneTime:(double)a4;
- (void)_resolveAndDiscardGL;
- (void)_setBackingSize:(SCNRenderer *)self;
- (void)_setContentsScaleFactor:(double)a3;
- (void)_setInterfaceOrientation:(int64_t)a3;
- (void)_setSceneTime:(double)a3;
- (void)_setupOffscreenRendererWithSize:(CGSize)a3;
- (void)_stop;
- (void)_update:(__C3DScene *)a3;
- (void)_updateEngineCallbacks;
- (void)_updatePointOfView;
- (void)_updateProbes:(id)a3 withProgress:(id)a4;
- (void)_updateSystemTimeAndDeltaTimeWithCurrentTime:(double)a3;
- (void)_updateWithSystemTime:(double)a3;
- (void)_willRenderScene:(id)a3;
- (void)_writeSubdivCacheForHash:(id)a3 dataProvider:(id)a4;
- (void)autoenablesDefaultLighting;
- (void)context;
- (void)dealloc;
- (void)prepareObjects:(id)a3 withCompletionHandler:(id)a4;
- (void)presentScene:(id)a3 withTransition:(id)a4 incomingPointOfView:(id)a5 completionHandler:(id)a6;
- (void)render;
- (void)renderAtTime:(CFTimeInterval)time;
- (void)renderAtTime:(CFTimeInterval)time viewport:(CGRect)viewport commandBuffer:(id)commandBuffer passDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor;
- (void)renderAtTime:(double)a3 encoder:(id)a4 commandQueue:(id)a5 passDescriptor:(id)a6 viewPoints:(id)a7;
- (void)renderAtTime:(double)a3 encoder:(id)a4 commandQueue:(id)a5 passDescriptor:(id)a6 viewPoints:(id)a7 coordinateSpace:(unint64_t)a8;
- (void)renderContext:(id)a3 commandBufferDidCompleteWithError:(id)a4;
- (void)renderContext:(id)a3 didFallbackToDefaultTextureForSource:(id)a4 message:(id)a5;
- (void)renderWithCommandBuffer:(id)a3 viewPoints:(id)a4;
- (void)renderWithCommandBuffer:(id)a3 viewpoints:(id)a4 coordinateSpace:(unint64_t)a5;
- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)commandBuffer passDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor;
- (void)resolvedBackgroundColorDidChange;
- (void)setAudioListener:(id)a3;
- (void)setAutoAdjustCamera:(BOOL)a3;
- (void)setAutoenablesDefaultLighting:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setContext:(id)a3;
- (void)setDebugOptions:(unint64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setFrozen:(BOOL)a3;
- (void)setOverlaySKScene:(id)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setPointOfCulling:(id)a3;
- (void)setPointOfView:(id)a3;
- (void)setRendersContinuously:(BOOL)a3;
- (void)setScene:(SCNScene *)scene;
- (void)setScene:(id)a3 completionHandler:(id)a4;
- (void)setSceneTime:(double)a3;
- (void)setShowsStatistics:(BOOL)a3;
- (void)setTechnique:(id)a3;
- (void)setTemporalAntialiasingEnabled:(BOOL)a3;
- (void)setUsesReverseZ:(BOOL)a3;
- (void)set_antialiasingMode:(unint64_t)a3;
- (void)set_collectCompilationErrors:(BOOL)a3;
- (void)set_commandBufferStatusMonitor:(id)a3;
- (void)set_computedLightingEnvironmentMapsPath:(id)a3;
- (void)set_deltaTime:(double)a3;
- (void)set_disableLinearRendering:(BOOL)a3;
- (void)set_drawableSafeAreaInsets:(SCNRenderer *)self;
- (void)set_enableARMode:(BOOL)a3;
- (void)set_recordWithoutExecute:(BOOL)a3;
- (void)set_resourceManagerMonitor:(id)a3;
- (void)set_screenTransform:(SCNMatrix4 *)a3;
- (void)set_shouldDelegateARCompositing:(BOOL)a3;
- (void)set_shouldForwardSceneRendererDelegationMessagesToPrivateRendererOwner:(BOOL)a3;
- (void)set_showsAuthoringEnvironment:(BOOL)a3;
- (void)set_systemTime:(double)a3;
- (void)set_viewport:(SCNVector4)a3;
- (void)set_wantsSceneRendererDelegationMessages:(BOOL)a3;
- (void)setupAuthoringEnvironment;
- (void)updateAndDrawStatisticsIfNeeded;
- (void)updateCurrentTimeIfPlayingWithSystemTime:(double)a3;
- (void)updateProbes:(NSArray *)lightProbes atTime:(CFTimeInterval)time;
@end

@implementation SCNRenderer

- (void)_updateEngineCallbacks
{
  engineContext = self->_engineContext;
  if (engineContext)
  {
    RenderCallbacks = C3DEngineContextGetRenderCallbacks(engineContext);
    delegationConformance = self->_delegationConformance;
    if ((delegationConformance & 0x10) != 0 || (*&self->_selfDelegationConformance & 0x10) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
    {
      *RenderCallbacks = _willRenderSceneEngineContextCallback;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x20) != 0 || (*&self->_selfDelegationConformance & 0x20) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
    {
      RenderCallbacks[1] = _didRenderSceneEngineContextCallback;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x80) != 0 || (*&self->_selfDelegationConformance & 0x80) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x80) != 0)
    {
      RenderCallbacks[3] = _readSubdivCacheEngineContextCallback;
      delegationConformance = self->_delegationConformance;
    }

    if ((delegationConformance & 0x100) != 0 || (selfDelegationConformance = self->_selfDelegationConformance, (selfDelegationConformance & 0x100) != 0) || (*&self->_privateRendererOwnerDelegationConformance & 0x100) != 0)
    {
      RenderCallbacks[4] = _writeSubdivCacheEngineContextCallback;
      selfDelegationConformance = self->_selfDelegationConformance;
    }

    if ((selfDelegationConformance & 0x200) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x200) != 0)
    {
      RenderCallbacks[5] = _wantsMainPassCustomPostProcessEncodingEngineContextCallback;
      RenderCallbacks[6] = _mainPassCustomPostProcessUsesExtraRenderTargetEngineContextCallback;
      RenderCallbacks[7] = _useSpecificMainPassClearColorEngineContextCallback;
      RenderCallbacks[8] = _encodeMainPassCustomPostProcessEngineContextCallback;
    }

    RenderCallbacks[2] = _renderOverlayEngineContextCallback;
  }
}

- (unint64_t)_antialiasingMode
{
  if (C3DPreferencesGetBool(5))
  {
    return 0;
  }

  else
  {
    return self->__antialiasingMode;
  }
}

- (void)_setupOffscreenRendererWithSize:(CGSize)a3
{
  width = a3.width;
  height = a3.height;
  -[SCNRenderer setBackgroundColor:](self, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  v4.f64[0] = width;
  v4.f64[1] = height;
  *(self + 121) |= 0x10u;
  *self->_anon_58 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(v4)));
  privateRendererOwner = self->_privateRendererOwner;
  if (privateRendererOwner)
  {
    v6 = [(SCNSceneRenderer *)privateRendererOwner antialiasingMode];
  }

  else
  {
    v6 = 2 * (self->_renderingAPI == 0);
  }

  [(SCNRenderer *)self set_antialiasingMode:v6];
}

- (id)_initWithOptions:(id)a3 isPrivateRenderer:(BOOL)a4 privateRendererOwner:(id)a5 clearsOnDraw:(BOOL)a6 context:(void *)a7 renderingAPI:(unint64_t)a8
{
  v12 = a4;
  v47.receiver = self;
  v47.super_class = SCNRenderer;
  v13 = [(SCNRenderer *)&v47 init];
  v14 = v13;
  if (v13)
  {
    v13->_scene = 0;
    v13->_viewpoints = 0;
    v13->_contentScaleFactor = 1.0;
    v13->_engineContext = C3DEngineContextCreateWithOptions();
    *(v14 + 216) = a8;
    *(v14 + 121) |= 0x40u;
    if (!a8)
    {
      C3DNotifyMetalIsUsed();
    }

    *(v14 + 32) = objc_alloc_init(SCNRecursiveLock);
    [v14 _updateEngineCallbacks];
    C3DEngineContextSetRenderingOptionForKey(*(v14 + 208), @"frustumCulling", *MEMORY[0x277CBED28]);
    C3DEngineContextSetClearsOnDraw(*(v14 + 208), a6);
    v15 = *(v14 + 208);
    if (v15)
    {
      C3DEngineContextSetUserInfo(v15, v14);
    }

    else
    {
      v16 = scn_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SCNRenderer _initWithOptions:isPrivateRenderer:privateRendererOwner:clearsOnDraw:context:renderingAPI:];
      }
    }

    *(v14 + 185) = 1;
    if (v12)
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    *(v14 + 121) = *(v14 + 121) & 0xFB | v17;
    *(v14 + 344) = a5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = *(v14 + 121);
    if (isKindOfClass)
    {
      v20 = 8;
    }

    else
    {
      v20 = 0;
    }

    *(v14 + 121) = v19 & 0xF7 | v20;
    if ((v19 & 4) != 0)
    {
      v21 = [MEMORY[0x277CCAB98] defaultCenter];
      [v21 addObserver:v14 selector:sel__UIOrientationDidChangeNotification_ name:*MEMORY[0x277D76658] object:0];
      if ((*(v14 + 121) & 8) != 0)
      {
        v22 = [objc_msgSend(objc_msgSend(*(v14 + 344) "window")];
      }

      else
      {
        v22 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
      }

      C3DEngineContextSetInterfaceOrientation(*(v14 + 208), v22);
    }

    *(v14 + 56) = 0;
    if (v12)
    {
      if ((_initWithOptions_isPrivateRenderer_privateRendererOwner_clearsOnDraw_context_renderingAPI__first & 1) == 0)
      {
        _initWithOptions_isPrivateRenderer_privateRendererOwner_clearsOnDraw_context_renderingAPI__first = 1;
        getpid();
        proc_disable_wakemon();
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = scn_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          [(SCNRenderer *)v23 _initWithOptions:v24 isPrivateRenderer:v25 privateRendererOwner:v26 clearsOnDraw:v27 context:v28 renderingAPI:v29, v30];
        }
      }

      v31 = MEMORY[0x277CCACA8];
      v32 = objc_opt_class();
      v33 = [objc_msgSend(v31 stringWithFormat:@"com.apple.scenekit.renderingQueue.%@%p", NSStringFromClass(v32), *(v14 + 344)), "cStringUsingEncoding:", 1];
      v34 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
      *(v14 + 40) = dispatch_queue_create(v33, v34);
    }

    if (*(v14 + 216))
    {
      if (a7)
      {
        [v14 setContext:a7];
        v35 = NSClassFromString(&cfstr_Skglobalshared.isa);
        [NSClassFromString(&cfstr_Skscnrenderer.isa) setPrefersOpenGL:1];
        if (![(objc_class *)v35 globalGLSharedContext])
        {
          [(objc_class *)v35 setGlobalGLSharedContext:a7];
        }
      }
    }

    else
    {
      if (([a7 conformsToProtocol:&unk_282E57D28] & 1) == 0)
      {
        v36 = scn_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          [(SCNRenderer *)v36 _initWithOptions:v37 isPrivateRenderer:v38 privateRendererOwner:v39 clearsOnDraw:v40 context:v41 renderingAPI:v42, v43];
        }
      }

      *(v14 + 280) = [[SCNMTLRenderContext alloc] initWithDevice:a7 engineContext:*(v14 + 208)];
      v44 = SCNSampleCountForAntialiasingMode([v14 _antialiasingMode]);
      [(SCNMTLRenderContext *)*(v14 + 280) setSampleCount:v44];
      C3DEngineContextSetRenderContext(*(v14 + 208), *(v14 + 280));

      v45 = NSClassFromString(&cfstr_Skglobalshared.isa);
      if (objc_opt_respondsToSelector())
      {
        [(objc_class *)v45 setGlobalMetalDevice:a7];
      }
    }
  }

  return v14;
}

+ (SCNRenderer)rendererWithDevice:(id)device options:(NSDictionary *)options
{
  v5 = device;
  if (device || (result = [SCNView deviceForOptions:options], (v5 = result) != 0))
  {
    v8 = [[a1 alloc] _initWithOptions:options isPrivateRenderer:0 privateRendererOwner:0 clearsOnDraw:0 context:v5 renderingAPI:0];

    return v8;
  }

  return result;
}

+ (SCNRenderer)rendererWithContext:(EAGLContext *)context options:(NSDictionary *)options
{
  v4 = context;
  if (!context)
  {
    v6 = objc_alloc(MEMORY[0x277CD9388]);
    v4 = [v6 initWithAPI:2 properties:MEMORY[0x277CBEC10]];
  }

  v7 = [[a1 alloc] _initWithOptions:0 isPrivateRenderer:0 privateRendererOwner:0 clearsOnDraw:0 context:v4 renderingAPI:__inferRenderingAPIFromGLContext(v4)];

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SCNRenderer *)self scene];
  v7 = [(SCNRenderer *)self pointOfView];
  [(SCNRenderer *)self sceneTime];
  return [v3 stringWithFormat:@"<%@ %p: scene = %@, pointOfView = %@, sceneTime = %f, context = %p>", v5, self, v6, v7, v8, -[SCNRenderer context](self, "context")];
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  objc_storeWeak(&self->_delegate, 0);

  self->_preloadRenderer = 0;
  self->_technique = 0;

  self->_mtlTexture = 0;
  if (self->_glContext)
  {
    v3 = [MEMORY[0x277CD9388] currentContext];
    v4 = v3;
    glContext = self->_glContext;
    if (glContext && v3 != glContext)
    {
      [MEMORY[0x277CD9388] setCurrentContext:?];
    }
  }

  else
  {
    v4 = 0;
  }

  if (self->_framebufferInfo.frameBuffer)
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
    deleteGLFramebufferInfo(&self->_framebufferInfo, RendererContextGL);
  }

  if (self->_engineContext)
  {
    [+[SCNSourceRendererRegistry sharedRegistry](SCNSourceRendererRegistry "sharedRegistry")];
    C3DEngineContextCleanup(self->_engineContext);
    CFRelease(self->_engineContext);
  }

  v7 = self->_glContext;
  if (v7)
  {
    v8 = v4;
    if (v4 == v7)
    {
      if ([(EAGLContext *)v7 retainCount]!= 2)
      {
        goto LABEL_15;
      }

      v8 = 0;
    }

    [MEMORY[0x277CD9388] setCurrentContext:v8];
  }

LABEL_15:
  renderingQueue = self->__renderingQueue;
  if (renderingQueue)
  {
    dispatch_release(renderingQueue);
  }

  prepareQueue = self->__prepareQueue;
  if (prepareQueue)
  {
    dispatch_release(prepareQueue);
  }

  self->_glContext = 0;
  v11.receiver = self;
  v11.super_class = SCNRenderer;
  [(SCNRenderer *)&v11 dealloc];
}

- (id)currentCommandBuffer
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext currentCommandBuffer];
  }
}

- (MTLRenderPassDescriptor)currentRenderPassDescriptor
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext currentRenderPassDescriptor];
  }
}

- (MTLRenderCommandEncoder)currentRenderCommandEncoder
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext currentRenderCommandEncoder];
  }
}

- (MTLDevice)device
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext device];
  }
}

- (MTLCommandQueue)commandQueue
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return [(SCNMTLRenderContext *)self->_renderContext commandQueue];
  }
}

- (unint64_t)colorPixelFormat
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  if ((*(self + 121) & 0x10) != 0)
  {
    mtlTexture = self->_mtlTexture;
  }

  else
  {
    mtlTexture = [(SCNRenderer *)self metalLayer];
  }

  return [(MTLTexture *)mtlTexture pixelFormat];
}

- (unint64_t)depthPixelFormat
{
  if (self->_renderingAPI)
  {
    return 0;
  }

  else
  {
    return 252;
  }
}

- (BOOL)_installContext
{
  if (self->_renderContext)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [(SCNRenderer *)self context:v2];
    if (v4)
    {
      [MEMORY[0x277CD9388] setCurrentContext:v4];
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)_installViewport
{
  v3 = *self->_anon_58;
  if ((*(self + 121) & 4) == 0)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(SCNRenderer *)v4 _installViewport:v5];
    }
  }

  C3DEngineContextSetDrawableSize(self->_engineContext, COERCE_DOUBLE(vcvt_f32_u32(v3)));
  [(SCNRenderer *)self adjustViewportForRendering:0.0];
  C3DEngineContextSetViewport(v12, self->_engineContext);
}

- (void)_clearBackBuffer
{
  renderContext = self->_renderContext;
  engineContext = self->_engineContext;
  if (renderContext)
  {
    RenderGraph = C3DEngineContextGetRenderGraph(engineContext);

    C3DRenderGraphClearDrawable(RenderGraph);
  }

  else
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(engineContext);
    if (self->_backgroundColor)
    {
      p_c3dBackgroundColor = &self->_c3dBackgroundColor;
      v8 = 17664;
    }

    else
    {
      v8 = 1280;
      p_c3dBackgroundColor = 0;
    }

    C3DRendererContextClear(RendererContextGL, v8, p_c3dBackgroundColor);
  }
}

- (void)_setContentsScaleFactor:(double)a3
{
  v3 = a3;
  self->_contentScaleFactor = v3;
  if (self->_renderContext)
  {
    renderContext = self->_renderContext;

    [(SCNMTLRenderContext *)renderContext setContentScaleFactor:a3];
  }

  else
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
    if (RendererContextGL)
    {

      C3DRendererContextSetContentScaleFactor(RendererContextGL, v3);
    }
  }
}

- (void)_setBackingSize:(SCNRenderer *)self
{
  v3 = vceq_s32(*self->_anon_58, v2);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    v5 = v2;
    *self->_anon_58 = v2;
    [(SCNRenderer *)self _invalidateFramebuffer];
    if (self->_renderContext && !self->_renderingAPI && (*(self + 121) & 8) != 0)
    {
      [-[SCNRenderer metalLayer](self "metalLayer")];
    }

    if (self->_overlayScene)
    {

      [(SCNRenderer *)self _prepareSKRenderer];
    }
  }
}

- (void)_deleteGLFramebuffer
{
  if (self->_renderingAPI)
  {
    if ([MEMORY[0x277CD9388] currentContext] != self->_glContext)
    {
      v3 = scn_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        [(SCNRenderer *)v3 _deleteGLFramebuffer:v4];
      }
    }
  }

  if (self->_glContext)
  {
    glPushGroupMarkerEXT(0, "SceneKit - Delete Framebuffer");
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
    deleteGLFramebufferInfo(&self->_framebufferInfo, RendererContextGL);
    glPopGroupMarkerEXT();
  }

  else
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_DEFAULT, "Warning: _deleteGLFramebuffer - No context!", v13, 2u);
    }
  }
}

- (void)_beginFrame
{
  [(SCNRenderer *)self _prepareRenderTarget];
  if (self->_renderContext)
  {
    if (self->_renderingAPI)
    {
      v3 = scn_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        [(SCNRenderer *)v3 _beginFrame:v4];
      }
    }

    renderContext = self->_renderContext;
    if ((*(self + 121) & 0x30) != 0)
    {
      mtlTexture = self->_mtlTexture;
    }

    else
    {
      mtlTexture = [(SCNRenderer *)self metalLayer];
    }

    [(SCNMTLRenderContext *)renderContext beginFrame:?];
  }

  else
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
    if (self->_framebufferInfo.frameBuffer)
    {
      if (self->_framebufferInfo.multisamplingFrameBuffer)
      {
        multisamplingFrameBuffer = self->_framebufferInfo.multisamplingFrameBuffer;
      }

      else
      {
        multisamplingFrameBuffer = self->_framebufferInfo.frameBuffer;
      }

      C3DRendererContextBindFramebuffer(RendererContextGL, multisamplingFrameBuffer);
    }
  }
}

- (void)_endFrame
{
  if (self->_renderContext)
  {
    if ((*&self->_selfDelegationConformance & 0x40) != 0)
    {
      SystemTime = C3DEngineContextGetSystemTime(self->_engineContext);
      v6 = self;
      v7 = self;
    }

    else if ((*&self->_privateRendererOwnerDelegationConformance & 0x40) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
      SystemTime = C3DEngineContextGetSystemTime(self->_engineContext);
      v6 = privateRendererOwner;
      v7 = privateRendererOwner;
    }

    else
    {
      if ((*&self->_delegationConformance & 0x40) == 0)
      {
LABEL_15:
        renderContext = self->_renderContext;
        v12 = (*(self + 121) >> 4) & 1;

        [(SCNMTLRenderContext *)renderContext endFrameWaitingUntilCompleted:v12 status:0 error:0];
        return;
      }

      Weak = objc_loadWeak(&self->_delegate);
      v4 = self;
      if ((*(self + 121) & 4) != 0)
      {
        v4 = self->_privateRendererOwner;
      }

      SystemTime = C3DEngineContextGetSystemTime(self->_engineContext);
      v6 = Weak;
      v7 = v4;
    }

    [(SCNRenderer *)v6 _renderer:v7 inputTimeForCurrentFrameWithTime:SystemTime];
    [-[SCNRenderer metalLayer](self "metalLayer")];
    goto LABEL_15;
  }

  RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
  if (self->_framebufferInfo.frameBuffer)
  {

    C3DRendererContextUnbindFramebuffer(RendererContextGL);
  }
}

- (void)_resolveAndDiscardGL
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
  if (self->_framebufferInfo.multisamplingFrameBuffer)
  {
    v4 = RendererContextGL;
    Size = C3DFramebufferGetSize(self->_framebufferInfo.frameBuffer);
    *&v6 = 0;
    *(&v6 + 1) = Size;
    v7 = v6;
    C3DRendererContextResolveFramebuffer(v4, self->_framebufferInfo.frameBuffer, self->_framebufferInfo.multisamplingFrameBuffer, 1, 1, &v7);
  }
}

- (void)_prepareRenderTarget
{
  v3 = *(self + 121);
  if (v3)
  {
    if (self->_renderingAPI)
    {
      [(SCNRenderer *)self _deleteGLFramebuffer];
    }

    else
    {

      self->_mtlTexture = 0;
    }

    v3 = *(self + 121) & 0xFE;
    *(self + 121) = v3;
  }

  if ((v3 & 0x20) != 0 && !self->_renderingAPI)
  {

    [(SCNRenderer *)self _createPrepareFramebufferIfNeeded];
  }

  else if ((v3 & 0x10) != 0)
  {

    [(SCNRenderer *)self _createOffscreenFramebufferIfNeeded];
  }

  else if (self->_renderingAPI)
  {

    [(SCNRenderer *)self _prepareGLRenderTarget];
  }
}

- (void)_prepareGLRenderTarget
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __37__SCNRenderer__prepareGLRenderTarget__block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 272) renderbufferStorage:36161 fromDrawable:{objc_msgSend(*(*(a1 + 32) + 344), "scn_backingLayer")}] & 1) == 0)
  {
    v1 = scn_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __37__SCNRenderer__prepareGLRenderTarget__block_invoke_cold_1();
    }
  }
}

- (void)_createOffscreenFramebufferIfNeeded
{
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_4_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)_createPrepareFramebufferIfNeeded
{
  if (!self->_renderingAPI)
  {
    v12 = v2;
    mtlTexture = self->_mtlTexture;
    if (*(self + 121))
    {

      self->_mtlTexture = 0;
      *(self + 121) &= ~1u;
    }

    else if (mtlTexture)
    {
      return;
    }

    v8 = [(SCNRenderer *)self _preparePixelFormat:v3];
    if (!v8)
    {
      v9 = [(SCNMTLRenderContext *)self->_renderContext wantsWideGamut];
      if (self->__antialiasingMode)
      {
        v10 = v9 | 8;
      }

      else
      {
        v10 = v9;
      }

      v8 = C3DMetalFramebufferPixelFormat(v10 | 0x10u);
    }

    v11 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v8 width:32 height:32 mipmapped:0];
    [v11 setUsage:5];
    [v11 setStorageMode:0];
    if (C3DEngineContextGetPreferredRenderMode(self->_engineContext) == 1)
    {
      [v11 setArrayLength:C3DEngineContextGetEyeCount(self->_engineContext)];
      [v11 setTextureType:3];
    }

    self->_mtlTexture = [-[SCNRenderer metalDevice](self "metalDevice")];
  }
}

- (void)set_antialiasingMode:(unint64_t)a3
{
  if (self->__antialiasingMode != a3)
  {
    self->__antialiasingMode = a3;
    [(SCNRenderer *)self _invalidateFramebuffer];
    v4 = SCNSampleCountForAntialiasingMode([(SCNRenderer *)self _antialiasingMode]);
    RendererContextGL = C3DEngineContextGetRendererContextGL([(SCNRenderer *)self _engineContext]);
    if (RendererContextGL)
    {

      C3DRendererContextSetSampleCount(RendererContextGL, v4);
    }

    else
    {
      renderContext = self->_renderContext;
      if (renderContext)
      {

        [(SCNMTLRenderContext *)renderContext setSampleCount:v4];
      }
    }
  }
}

- (void)set_screenTransform:(SCNMatrix4 *)a3
{
  v3 = *&a3->m21;
  v5[0] = *&a3->m11;
  v5[1] = v3;
  v4 = *&a3->m41;
  v5[2] = *&a3->m31;
  v5[3] = v4;
  [(SCNMTLRenderContext *)self->_renderContext setScreenTransform:v5];
}

- (__C3DRendererContext)_rendererContextGL
{
  result = self->_engineContext;
  if (result)
  {
    return C3DEngineContextGetRendererContextGL(result);
  }

  return result;
}

- (BOOL)autoenablesDefaultLighting
{
  [(SCNRenderer *)self lock];
  v3 = [(SCNRenderer *)self _engineContext];
  if (v3)
  {
    v4 = C3DEngineContextGetRenderingOptionForKey(v3, @"defaultLight") == *MEMORY[0x277CBED28];
  }

  else
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer autoenablesDefaultLighting];
    }

    v4 = 0;
  }

  [(SCNRenderer *)self unlock];
  return v4;
}

- (void)setAutoenablesDefaultLighting:(BOOL)a3
{
  v3 = a3;
  [(SCNRenderer *)self lock];
  v5 = [(SCNRenderer *)self _engineContext];
  if (v5)
  {
    v6 = v5;
    Scene = C3DEngineContextGetScene(v5);
    if (Scene)
    {
      v8 = Scene;
      C3DSceneLock(Scene);
      v9 = MEMORY[0x277CBED10];
      if (v3)
      {
        v9 = MEMORY[0x277CBED28];
      }

      C3DEngineContextSetRenderingOptionForKey(v6, @"defaultLight", *v9);
      C3DSceneUnlock(v8);
    }

    else
    {
      v11 = MEMORY[0x277CBED10];
      if (v3)
      {
        v11 = MEMORY[0x277CBED28];
      }

      C3DEngineContextSetRenderingOptionForKey(v6, @"defaultLight", *v11);
    }
  }

  else
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer setAutoenablesDefaultLighting:];
    }
  }

  [(SCNRenderer *)self unlock];
}

- (void)setPointOfView:(id)a3
{
  v135 = *MEMORY[0x277D85DE8];
  if (self->_pointOfView != a3)
  {
    v3 = a3;
    self->_pointOfViewWasSet = 1;
    if ([a3 isPresentationInstance])
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(SCNRenderer *)v5 setPointOfView:v6, v7, v8, v9, v10, v11, v12];
      }
    }

    v13 = [(SCNNode *)[(SCNRenderer *)self pointOfView] presentationNode];
    v14 = self->_pointOfView;
    self->_pointOfView = v3;
    +[SCNTransaction animationDuration];
    v16 = v15;
    v17 = (v15 > 0.0) & ~+[SCNTransaction disableActions];
    Scene = C3DEngineContextGetScene(self->_engineContext);
    v19 = Scene;
    if (v17 == 1 && Scene != 0)
    {
      v17 = C3DSceneIsPausedForEditing(Scene) ^ 1;
    }

    if (+[SCNTransaction immediateMode])
    {
      v17 = 0;
    }

    else
    {
      if (!v13)
      {
        v17 = 0;
      }

      +[SCNTransaction begin];
    }

    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = __30__SCNRenderer_setPointOfView___block_invoke;
    v133[3] = &unk_2782FC950;
    v133[4] = v3;
    v133[5] = self;
    [SCNTransaction postCommandWithContext:v19 object:self applyBlock:v133];
    if (!v17)
    {
      goto LABEL_139;
    }

    ImplicitAnimationTimingFunction = +[SCNTransaction animationTimingFunction];
    if (!ImplicitAnimationTimingFunction)
    {
      ImplicitAnimationTimingFunction = SCNKitGetImplicitAnimationTimingFunction();
    }

    memset(&v132, 0, sizeof(v132));
    memset(&v131, 0, sizeof(v131));
    if ([v3 parentNode])
    {
      v22 = [objc_msgSend(v3 "parentNode")];
      if (v22)
      {
        v130 = SCNMatrix4Identity;
        [v22 convertTransform:&v130 fromNode:v13];
        goto LABEL_24;
      }
    }

    else if (v13)
    {
      [(SCNNode *)v13 worldTransform];
      goto LABEL_24;
    }

    memset(&v131, 0, sizeof(v131));
LABEL_24:
    memset(&v130, 0, sizeof(v130));
    v23 = [v3 presentationNode];
    if (v23)
    {
      [v23 transform];
    }

    else
    {
      memset(&v130, 0, sizeof(v130));
    }

    m = v130;
    SCNMatrix4Invert(&a, &m);
    v130 = a;
    a = v131;
    m = v130;
    SCNMatrix4Mult(&v132, &a, &m);
    v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform"];
    [v24 setDuration:v16];
    [v24 setTimingFunction:ImplicitAnimationTimingFunction];
    [v24 setAdditive:1];
    a = v132;
    [v24 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNMatrix4:", &a)}];
    a = SCNMatrix4Identity;
    [v24 setToValue:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNMatrix4:", &a)}];
    [v3 addAnimation:v24 forKey:0];
    v25 = [(SCNNode *)v13 camera];
    v26 = [objc_msgSend(v3 "presentationNode")];
    v121 = v26;
    if (-[SCNCamera hasCustomProjectionTransform](v25, "hasCustomProjectionTransform") || ([v26 hasCustomProjectionTransform] & 1) != 0)
    {
LABEL_130:
      v104 = ImplicitAnimationTimingFunction;
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v105 = [&unk_282E0FBD0 countByEnumeratingWithState:&v122 objects:v134 count:16];
      if (v105)
      {
        v106 = v105;
        v107 = *v123;
        do
        {
          for (i = 0; i != v106; ++i)
          {
            if (*v123 != v107)
            {
              objc_enumerationMutation(&unk_282E0FBD0);
            }

            v109 = *(*(&v122 + 1) + 8 * i);
            [objc_msgSend(v26 valueForKey:{v109), "doubleValue"}];
            v111 = v110;
            [-[SCNCamera valueForKey:](v25 valueForKey:{v109), "doubleValue"}];
            if (v111 != v112)
            {
              v113 = v112;
              v114 = v25;
              v115 = v3;
              v116 = MEMORY[0x277CD9E10];
              v117 = [@"camera." stringByAppendingString:v109];
              v118 = v116;
              v3 = v115;
              v25 = v114;
              v26 = v121;
              v119 = [v118 animationWithKeyPath:v117];
              [v119 setDuration:v16];
              [v119 setTimingFunction:v104];
              [v119 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v113 - v111)}];
              [v119 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
              [v119 setAdditive:1];
              [v3 addAnimation:v119 forKey:0];
            }
          }

          v106 = [&unk_282E0FBD0 countByEnumeratingWithState:&v122 objects:v134 count:16];
        }

        while (v106);
      }

LABEL_139:
      if (!+[SCNTransaction immediateMode])
      {
        +[SCNTransaction commit];
      }

      return;
    }

    v27 = *self->_anon_58;
    if (HIDWORD(v27))
    {
      v28 = v27 / HIDWORD(v27);
    }

    else
    {
      v28 = 1.0;
    }

    if ([v26 useLegacyFov])
    {
      [v26 xFov];
      v30 = v29;
      [v26 yFov];
      if (v31 == 0.0 && v30 == 0.0)
      {
        v33 = 60.0;
      }

      else
      {
        v33 = v31;
      }

      if (v30 != 0.0 && v33 != 0.0)
      {
        v34 = tan(v30 / 180.0 * 3.14159265);
        if (v34 / tan(v33 / 180.0 * 3.14159265) <= v28)
        {
          v30 = 0.0;
        }

        else
        {
          v33 = 0.0;
        }
      }

      if ([(SCNCamera *)v25 useLegacyFov])
      {
        [(SCNCamera *)v25 xFov];
        v36 = v35;
        [(SCNCamera *)v25 yFov];
        if (v37 == 0.0 && v36 == 0.0)
        {
          v39 = 60.0;
        }

        else
        {
          v39 = v37;
        }

        if (v36 != 0.0 && v39 != 0.0)
        {
          v120 = v28;
          v40 = tan(v36 / 180.0 * 3.14159265);
          if (v40 / tan(v39 / 180.0 * 3.14159265) <= v28)
          {
            v36 = 0.0;
          }

          else
          {
            v39 = 0.0;
          }
        }

        if (v30 != 0.0)
        {
          if (v36 == 0.0)
          {
            v41 = __tanpi(v39 / 360.0);
            v42 = atan(v28 * v41);
            if (v42 < 0.0)
            {
              v42 = 3.14159265 - v42;
            }

            v36 = v42 * 114.591559;
          }

          v39 = 0.0;
          goto LABEL_105;
        }

        v36 = 0.0;
        if (v39 == 0.0)
        {
          v63 = 0.0;
LABEL_92:
          v64 = __tanpi(v63);
          v65 = atan(v64 / v28);
          if (v65 < 0.0)
          {
            v65 = 3.14159265 - v65;
          }

          v39 = v65 * 114.591559;
        }
      }

      else
      {
        [(SCNCamera *)v25 fieldOfView];
        v54 = v53;
        v55 = [(SCNCamera *)v25 projectionDirection];
        v56 = v54;
        if (v30 != 0.0)
        {
          v39 = 0.0;
          if (v55 == 1)
          {
            v36 = v54;
          }

          else
          {
            v66 = __tanpi(v56 / 360.0);
            v67 = atan(v28 * v66);
            if (v67 < 0.0)
            {
              v67 = 3.14159265 - v67;
            }

            v36 = v67 * 114.591559;
          }

          goto LABEL_105;
        }

        v36 = 0.0;
        if (v55)
        {
          v63 = v56 / 360.0;
          goto LABEL_92;
        }

        v39 = v56;
      }

LABEL_105:
      if (v30 == 0.0)
      {
        if (v33 == 0.0)
        {
          goto LABEL_115;
        }

        if (v39 != v33)
        {
          v72 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.yFov"];
          [v72 setDuration:v16];
          [v72 setTimingFunction:ImplicitAnimationTimingFunction];
          [v72 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v39 - v33)}];
          [v72 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
          [v72 setAdditive:1];
          [v3 addAnimation:v72 forKey:0];
        }

        v70 = MEMORY[0x277CD9E10];
        v71 = @"camera.xFov";
      }

      else
      {
        if (v36 != v30)
        {
          v69 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.xFov"];
          [v69 setDuration:v16];
          [v69 setTimingFunction:ImplicitAnimationTimingFunction];
          [v69 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v36 - v30)}];
          [v69 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
          [v69 setAdditive:1];
          [v3 addAnimation:v69 forKey:0];
        }

        v70 = MEMORY[0x277CD9E10];
        v71 = @"camera.yFov";
      }

      v68 = [v70 animationWithKeyPath:{v71, *&v120}];
      [v68 setDuration:v16];
      [v68 setTimingFunction:ImplicitAnimationTimingFunction];
      [v68 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
      [v68 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
LABEL_114:
      [v3 addAnimation:v68 forKey:0];
LABEL_115:
      if ([(SCNCamera *)v25 usesOrthographicProjection])
      {
        if ([v26 usesOrthographicProjection])
        {
          [(SCNCamera *)v25 orthographicScale];
          v74 = v73;
          [v26 orthographicScale];
          if (v74 != v75)
          {
            v76 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.orthographicScale"];
            [v76 setDuration:v16];
            [v76 setTimingFunction:ImplicitAnimationTimingFunction];
            v77 = MEMORY[0x277CCABB0];
            [(SCNCamera *)v25 orthographicScale];
            v79 = v78;
            [v121 orthographicScale];
            v81 = v77;
            v26 = v121;
            [v76 setFromValue:{objc_msgSend(v81, "numberWithDouble:", v79 - v80)}];
            [v76 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
            [v76 setAdditive:1];
            [v3 addAnimation:v76 forKey:0];
          }
        }
      }

      [(SCNCamera *)v25 lensShift];
      v83 = v82;
      [v26 lensShift];
      v85 = vmvn_s8(vceq_f32(v83, v84));
      if ((vpmax_u32(v85, v85).u32[0] & 0x80000000) != 0)
      {
        [(SCNCamera *)v25 lensShift];
        v87 = v86;
        [v26 lensShift];
        v89 = vsub_f32(v87, v88);
        v90 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.lensShift"];
        [v90 setDuration:v16];
        [v90 setTimingFunction:ImplicitAnimationTimingFunction];
        [v90 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", vcvtq_f64_f32(v89))}];
        [v90 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "SCN_valueWithCGPoint:", *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8))}];
        [v90 setAdditive:1];
        [v3 addAnimation:v90 forKey:0];
      }

      v91 = 0uLL;
      memset(&a, 0, 48);
      if (v25)
      {
        [(SCNCamera *)v25 postProjectionTransform];
        v91 = 0uLL;
      }

      *&m.m21 = v91;
      *&m.m31 = v91;
      *&m.m11 = v91;
      if (v26)
      {
        [v26 postProjectionTransform];
      }

      *&t1.a = *&a.m11;
      *&t1.c = *&a.m21;
      *&t1.tx = *&a.m31;
      *&t2.a = *&m.m11;
      *&t2.c = *&m.m21;
      *&t2.tx = *&m.m31;
      if (!CGAffineTransformEqualToTransform(&t1, &t2))
      {
        v92 = vcvt_f32_f64(*&a.m31);
        v93 = vcvt_f32_f64(*&m.m31);
        v94 = vmvn_s8(vceq_f32(v92, v93));
        if ((vpmax_u32(v94, v94).u32[0] & 0x80000000) != 0)
        {
          v95 = vsub_f32(v92, v93);
          v96 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.postProjectionTransformTranslation"];
          [v96 setDuration:v16];
          [v96 setTimingFunction:ImplicitAnimationTimingFunction];
          [v96 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", vcvtq_f64_f32(v95))}];
          [v96 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "SCN_valueWithCGPoint:", *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8))}];
          [v96 setAdditive:1];
          [v3 addAnimation:v96 forKey:0];
        }

        v97.f64[0] = *&a.m11;
        v97.f64[1] = *&a.m23;
        v98.f64[0] = *&m.m11;
        v98.f64[1] = *&m.m23;
        v99 = vcvt_f32_f64(v97);
        v100 = vcvt_f32_f64(v98);
        v101 = vmvn_s8(vceq_f32(v99, v100));
        if ((vpmax_u32(v101, v101).u32[0] & 0x80000000) != 0)
        {
          v102 = vsub_f32(v99, v100);
          v103 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.postProjectionTransformScale"];
          [v103 setDuration:v16];
          [v103 setTimingFunction:ImplicitAnimationTimingFunction];
          [v103 setFromValue:{objc_msgSend(MEMORY[0x277CCAE60], "SCN_valueWithCGPoint:", vcvtq_f64_f32(v102))}];
          [v103 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "SCN_valueWithCGPoint:", *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8))}];
          [v103 setAdditive:1];
          [v3 addAnimation:v103 forKey:0];
        }
      }

      goto LABEL_130;
    }

    [v26 fieldOfView];
    v44 = v43;
    if ([(SCNCamera *)v25 useLegacyFov])
    {
      [(SCNCamera *)v25 xFov];
      v46 = v45;
      [(SCNCamera *)v25 yFov];
      if (v47 == 0.0 && v46 == 0.0)
      {
        v49 = 60.0;
      }

      else
      {
        v49 = v47;
      }

      if (v46 != 0.0 && v49 != 0.0)
      {
        v50 = tan(v46 / 180.0 * 3.14159265);
        if (v50 / tan(v49 / 180.0 * 3.14159265) <= v28)
        {
          v46 = 0.0;
        }

        else
        {
          v49 = 0.0;
        }
      }

      if ([v26 projectionDirection] == 1)
      {
        v51 = v46;
        if (v46 == 0.0)
        {
          v52 = v28 * __tanpi(v49 / 360.0);
          goto LABEL_85;
        }
      }

      else
      {
        v51 = v49;
        if (v49 == 0.0)
        {
          v52 = __tanpi(v46 / 360.0) / v28;
LABEL_85:
          v62 = atan(v52);
          if (v62 < 0.0)
          {
            v62 = 3.14159265 - v62;
          }

LABEL_101:
          v51 = v62 * 114.591559;
        }
      }
    }

    else
    {
      [(SCNCamera *)v25 fieldOfView];
      v51 = v57;
      v58 = [v26 projectionDirection];
      if (v58 != [(SCNCamera *)v25 projectionDirection])
      {
        v59 = [v26 projectionDirection];
        v60 = __tanpi(v51 / 360.0);
        if (v59 == 1)
        {
          v61 = v28 * v60;
        }

        else
        {
          v61 = v60 / v28;
        }

        v62 = atan(v61);
        if (v62 < 0.0)
        {
          v62 = 3.14159265 - v62;
        }

        goto LABEL_101;
      }
    }

    if (v51 == v44)
    {
      goto LABEL_115;
    }

    v68 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"camera.fieldOfView"];
    [v68 setDuration:v16];
    [v68 setTimingFunction:ImplicitAnimationTimingFunction];
    [v68 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v51 - v44)}];
    [v68 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0)}];
    [v68 setAdditive:1];
    goto LABEL_114;
  }
}

void __30__SCNRenderer_setPointOfView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  PointOfViewIfAny = C3DEngineContextGetPointOfViewIfAny(*(*(a1 + 40) + 208));
  if (PointOfViewIfAny && (Camera = C3DNodeGetCamera(PointOfViewIfAny)) != 0)
  {
    v5 = Camera;
    HasDepthOfField = C3DCameraHasDepthOfField(Camera);
    v7 = C3DCameraGetTechnique(v5) != 0;
  }

  else
  {
    v7 = 0;
    HasDepthOfField = 0;
  }

  C3DEngineContextSetPointOfView(*(*(a1 + 40) + 208), v2);
  if (v2)
  {
    v8 = C3DNodeGetCamera(v2);
    if (v8)
    {
      v9 = v8;
      v10 = C3DCameraHasDepthOfField(v8);
      v11 = C3DCameraGetTechnique(v9) != 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    if (v10 != HasDepthOfField || v11 || v7)
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance();
      v13 = C3DGetScene(v2);

      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v13, 0, 1u);
    }
  }
}

- (void)setPointOfCulling:(id)a3
{
  pointOfCulling = self->_pointOfCulling;
  if (pointOfCulling != a3)
  {
    v6 = pointOfCulling;
    self->_pointOfCulling = a3;
    Scene = C3DEngineContextGetScene(self->_engineContext);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__SCNRenderer_setPointOfCulling___block_invoke;
    v8[3] = &unk_2782FC950;
    v8[4] = a3;
    v8[5] = self;
    [SCNTransaction postCommandWithContext:Scene object:self applyBlock:v8];
  }
}

CFTypeRef __33__SCNRenderer_setPointOfCulling___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nodeRef];
  v3 = *(*(a1 + 40) + 208);

  return C3DEngineContextSetPointOfCulling(v3, v2);
}

- (void)_projectPoints:(SCNVector3 *)a3 count:(unint64_t)a4 viewport:(SCNVector4)a5
{
  y = a5.y;
  x = a5.x;
  v8 = [(SCNRenderer *)self _engineContext];
  if (v8)
  {
    v9 = v8;
    PointOfView = C3DEngineContextGetPointOfView(v8);
    if (PointOfView)
    {
      v11 = PointOfView;
      [(SCNRenderer *)self adjustViewportForRendering:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];
      v18 = v12;
      if (C3DWasLinkedBeforeMajorOSYear2020())
      {
        CoordinatesSystemOptions = 0;
        if (!a4)
        {
          return;
        }
      }

      else
      {
        CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v9);
        if (!a4)
        {
          return;
        }
      }

      p_z = &a3->z;
      do
      {
        v13.i64[0] = *(p_z - 1);
        v13.f32[2] = *p_z;
        v19 = v13;
        if (_C3DProjectPoints(&v19, 1, v11, [(SCNScene *)[(SCNRenderer *)self scene] sceneRef], CoordinatesSystemOptions, &v19, v18))
        {
          v13.i64[1] = v19.i64[1];
          *(p_z - 1) = v19.i64[0];
          *p_z = v13.f32[2];
        }

        p_z += 3;
        --a4;
      }

      while (a4);
    }
  }
}

- (SCNVector3)_projectPoint:(SCNVector3)a3 viewport:(SCNVector4)a4
{
  y = a4.y;
  x = a4.x;
  z = a3.z;
  v20 = *&a3.x;
  v21 = a3.y;
  v5 = [(SCNRenderer *)self _engineContext];
  if (v5)
  {
    v6 = v5;
    PointOfView = C3DEngineContextGetPointOfView(v5);
    if (PointOfView)
    {
      v8 = PointOfView;
      [(SCNRenderer *)self adjustViewportForRendering:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];
      v19 = v9;
      v10 = v20;
      v10.f32[1] = v21;
      v10.f32[2] = z;
      v23 = v10;
      if (C3DWasLinkedBeforeMajorOSYear2020())
      {
        CoordinatesSystemOptions = 0;
      }

      else
      {
        CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v6);
      }

      v12 = [(SCNScene *)[(SCNRenderer *)self scene] sceneRef];
      C3DSceneLock(v12);
      v13 = _C3DProjectPoints(&v23, 1, v8, v12, CoordinatesSystemOptions, &v23, v19);
      C3DSceneUnlock(v12);
      if (v13)
      {
        v21 = v23.f32[1];
        v20.i32[0] = v23.i32[0];
        z = v23.f32[2];
      }
    }
  }

  v14 = v20.f32[0];
  v15 = v21;
  v16 = z;
  result.z = v16;
  result.y = v15;
  result.x = v14;
  return result;
}

- (SCNVector3)_unprojectPoint:(SCNVector3)a3 viewport:(SCNVector4)a4
{
  y = a4.y;
  x = a4.x;
  z = a3.z;
  v20 = *&a3.x;
  v21 = a3.y;
  v5 = [(SCNRenderer *)self _engineContext];
  if (v5)
  {
    v6 = v5;
    PointOfView = C3DEngineContextGetPointOfView(v5);
    if (PointOfView)
    {
      v8 = PointOfView;
      [(SCNRenderer *)self adjustViewportForRendering:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];
      v19 = v9;
      v10 = v20;
      v10.f32[1] = v21;
      v10.f32[2] = z;
      v23 = v10;
      if (C3DWasLinkedBeforeMajorOSYear2020())
      {
        CoordinatesSystemOptions = 0;
      }

      else
      {
        CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(v6);
      }

      v12 = [(SCNScene *)[(SCNRenderer *)self scene] sceneRef];
      C3DSceneLock(v12);
      v13 = _C3DUnProjectPoints(&v23, 1, v8, v12, CoordinatesSystemOptions, &v23, v19);
      C3DSceneUnlock(v12);
      if (v13)
      {
        v21 = v23.f32[1];
        v20.i32[0] = v23.i32[0];
        z = v23.f32[2];
      }
    }
  }

  v14 = v20.f32[0];
  v15 = v21;
  v16 = z;
  result.z = v16;
  result.y = v15;
  result.x = v14;
  return result;
}

- (SCNVector3)projectPoint:(SCNVector3)result
{
  v4 = *self->_anon_58;
  if (v4.i32[0])
  {
    v5 = COERCE_DOUBLE(vcvt_f32_u32(v4));
    LODWORD(v3) = HIDWORD(v5);
    [(SCNRenderer *)self _projectPoint:*&result.x viewport:*&result.y, *&result.z, 0.0, 0.0, v5, v3];
  }

  return result;
}

- (SCNVector3)unprojectPoint:(SCNVector3)result
{
  v4 = *self->_anon_58;
  if (v4.i32[0])
  {
    v5 = COERCE_DOUBLE(vcvt_f32_u32(v4));
    LODWORD(v3) = HIDWORD(v5);
    [(SCNRenderer *)self _unprojectPoint:*&result.x viewport:*&result.y, *&result.z, 0.0, 0.0, v5, v3];
  }

  return result;
}

- (void)_didRenderScene:(id)a3
{
  if ((*&self->_delegationConformance & 0x20) != 0 || (*&self->_selfDelegationConformance & 0x20) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
  {
    [SCNTransaction setImmediateMode:1];
    +[SCNTransaction setImmediateModeRestrictedContext:](SCNTransaction, "setImmediateModeRestrictedContext:", [a3 sceneRef]);
    Stats = C3DEngineContextGetStats(self->_engineContext);
    v6 = CACurrentMediaTime();
    [(SCNRenderer *)self _getFrameIndex];
    kdebug_trace();
    if (!self->_renderingAPI && ![(SCNMTLRenderContext *)self->_renderContext clientCommandBuffer])
    {
      [(SCNMTLRenderContext *)self->_renderContext _commitResourceCommandBufferIfNeeded];
      [-[SCNMTLRenderContext currentCommandBuffer](self->_renderContext) enqueue];
    }

    forceSystemTime = self->_forceSystemTime;
    if (forceSystemTime == 0.0)
    {
      forceSystemTime = self->_currentSystemTime;
    }

    if ((*&self->_delegationConformance & 0x20) != 0)
    {
      Weak = objc_loadWeak(&self->_delegate);
      privateRendererOwner = self;
      if ((*(self + 121) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      [Weak renderer:privateRendererOwner didRenderScene:a3 atTime:forceSystemTime];
    }

    if ((*&self->_selfDelegationConformance & 0x20) != 0)
    {
      [(SCNRenderer *)self _renderer:self didRenderScene:a3 atTime:forceSystemTime];
    }

    if ((*&self->_privateRendererOwnerDelegationConformance & 0x20) != 0)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didRenderScene:a3 atTime:forceSystemTime];
    }

    kdebug_trace();
    *(Stats + 168) = *(Stats + 168) + CACurrentMediaTime() - v6;
    [SCNTransaction setImmediateModeRestrictedContext:0];

    [SCNTransaction setImmediateMode:0];
  }
}

- (void)_willRenderScene:(id)a3
{
  v4 = self;
  if ((*&self->_delegationConformance & 0x10) != 0 || (*&self->_selfDelegationConformance & 0x10) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 0x10) != 0)
  {
    [SCNTransaction setImmediateMode:1];
    +[SCNTransaction setImmediateModeRestrictedContext:](SCNTransaction, "setImmediateModeRestrictedContext:", [a3 sceneRef]);
    Stats = C3DEngineContextGetStats(v4->_engineContext);
    v6 = CACurrentMediaTime();
    [(SCNRenderer *)v4 _getFrameIndex];
    kdebug_trace();
    forceSystemTime = v4->_forceSystemTime;
    if (forceSystemTime == 0.0)
    {
      forceSystemTime = v4->_currentSystemTime;
    }

    if ((*&v4->_privateRendererOwnerDelegationConformance & 0x10) != 0)
    {
      [(SCNSceneRenderer *)v4->_privateRendererOwner _renderer:v4->_privateRendererOwner willRenderScene:a3 atTime:forceSystemTime];
    }

    if ((*&v4->_selfDelegationConformance & 0x10) != 0)
    {
      [(SCNRenderer *)v4 _renderer:v4 willRenderScene:a3 atTime:forceSystemTime];
    }

    if ((*&v4->_delegationConformance & 0x10) != 0)
    {
      Weak = objc_loadWeak(&v4->_delegate);
      if ((*(v4 + 121) & 4) != 0)
      {
        v4 = v4->_privateRendererOwner;
      }

      [Weak renderer:v4 willRenderScene:a3 atTime:forceSystemTime];
    }

    kdebug_trace();
    *(Stats + 168) = *(Stats + 168) + CACurrentMediaTime() - v6;
    [SCNTransaction setImmediateModeRestrictedContext:0];

    [SCNTransaction setImmediateMode:0];
  }
}

- (id)_readSubdivCacheForHash:(id)a3
{
  v4 = self;
  if (((*&self->_privateRendererOwnerDelegationConformance & 0x80) == 0 || (result = [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner subdivDataForHash:a3]) == 0) && ((*&v4->_selfDelegationConformance & 0x80) == 0 || (result = [(SCNRenderer *)v4 _renderer:v4 subdivDataForHash:a3]) == 0))
  {
    if ((*&v4->_delegationConformance & 0x80) == 0)
    {
      return 0;
    }

    Weak = objc_loadWeak(&v4->_delegate);
    if ((*(v4 + 121) & 4) != 0)
    {
      v4 = v4->_privateRendererOwner;
    }

    result = [Weak _renderer:v4 subdivDataForHash:a3];
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

- (void)_writeSubdivCacheForHash:(id)a3 dataProvider:(id)a4
{
  v6 = self;
  if ((*&self->_privateRendererOwnerDelegationConformance & 0x100) != 0)
  {
    [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didBuildSubdivDataForHash:a3 dataProvider:a4];
  }

  if ((*&v6->_selfDelegationConformance & 0x100) != 0)
  {
    [(SCNRenderer *)v6 _renderer:v6 didBuildSubdivDataForHash:a3 dataProvider:a4];
  }

  if ((*&v6->_delegationConformance & 0x100) != 0)
  {
    Weak = objc_loadWeak(&v6->_delegate);
    if ((*(v6 + 121) & 4) != 0)
    {
      v6 = v6->_privateRendererOwner;
    }

    [Weak _renderer:v6 didBuildSubdivDataForHash:a3 dataProvider:a4];
  }
}

- (void)setAutoAdjustCamera:(BOOL)a3
{
  v3 = a3;
  v4 = [(SCNRenderer *)self _engineContext];
  if (v4)
  {

    C3DEngineContextSetAutoAdjustZRange(v4, v3);
  }
}

- (BOOL)autoAdjustCamera
{
  v2 = [(SCNRenderer *)self _engineContext];
  if (v2)
  {
    LOBYTE(v2) = C3DEngineContextGetAutoAdjustZRange(v2) != 0;
  }

  return v2;
}

- (id)_defaultPOVForScene:(id)a3
{
  v5 = [objc_msgSend(a3 "rootNode")];
  if ([v5 count])
  {

    return [v5 objectAtIndex:0];
  }

  else
  {
    v7 = [a3 sceneRef];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(SCNSceneRenderer *)self->_privateRendererOwner _isEditor];
    }

    else
    {
      v8 = 0;
    }

    result = C3DCreateDefaultCameraNode(v7, v8);
    if (result)
    {
      v9 = result;
      v10 = [SCNNode nodeWithNodeRef:result];
      CFRelease(v9);
      return v10;
    }
  }

  return result;
}

BOOL __35__SCNRenderer__defaultPOVForScene___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = [a2 camera];
  if (v4)
  {
    *a3 = 1;
  }

  return v4 != 0;
}

- (void)_updatePointOfView
{
  engineContext = self->_engineContext;
  if (engineContext)
  {
    PointOfView = C3DEngineContextGetPointOfView(engineContext);
    if (self->_pointOfView)
    {
      v5 = 1;
    }

    else
    {
      v5 = PointOfView == 0;
    }

    if (!v5)
    {
      [(SCNRenderer *)self setPointOfView:[SCNNode nodeWithNodeRef:PointOfView]];
      self->_pointOfViewWasSet = 0;
    }
  }
}

- (void)_prepareForTransition:(id)a3 outgoingScene:(id)a4 outgoingPointOfView:(id)a5 completionHandler:(id)a6
{
  transitionContext = self->_transitionContext;
  if (transitionContext)
  {

    self->_transitionContext = 0;
  }

  v12 = objc_alloc_init(SCNRendererTransitionContext);
  self->_transitionContext = v12;
  if (a6)
  {
    v13 = _Block_copy(a6);
    v12 = self->_transitionContext;
  }

  else
  {
    v13 = 0;
  }

  v12->completionHandler = v13;
  [(SCNRendererTransitionContext *)self->_transitionContext setOutgoingScene:a4];
  [(SCNRendererTransitionContext *)self->_transitionContext setOutgoingPointOfView:a5];
  [(SCNRendererTransitionContext *)self->_transitionContext setTransition:a3];
  [(SCNRendererTransitionContext *)self->_transitionContext setTransitionStartTime:CACurrentMediaTime()];
  if ([a3 pausesIncomingScene])
  {
    [(SCNScene *)self->_scene setPaused:1];
  }

  if ([a3 pausesOutgoingScene])
  {

    [a4 setPaused:1];
  }
}

- (void)presentScene:(id)a3 withTransition:(id)a4 incomingPointOfView:(id)a5 completionHandler:(id)a6
{
  scene = self->_scene;
  v12 = [(SCNRenderer *)self pointOfView];
  [(SCNRenderer *)self lock];
  +[SCNTransaction begin];
  [SCNTransaction setAnimationDuration:0.0];
  [SCNTransaction setImmediateMode:1];
  [(SCNRenderer *)self setScene:a3];
  [(SCNRenderer *)self setPointOfView:a5];
  if (a4)
  {
    [(SCNRenderer *)self _prepareForTransition:a4 outgoingScene:scene outgoingPointOfView:v12 completionHandler:a6];
  }

  +[SCNTransaction commit];

  [(SCNRenderer *)self unlock];
}

- (void)setScene:(id)a3 completionHandler:(id)a4
{
  self->_scene = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__SCNRenderer_setScene_completionHandler___block_invoke;
  v12[3] = &unk_2782FB820;
  v12[4] = self;
  [SCNTransaction postCommandWithContext:0 object:self applyBlock:v12];
  if (a3 && (!self->_pointOfViewWasSet || [(SCNNode *)self->_pointOfView scene]!= self->_scene))
  {
    v7 = [(SCNRenderer *)self _defaultPOVForScene:a3];
    if ((*(self + 121) & 4) != 0)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    else
    {
      privateRendererOwner = self;
    }

    [privateRendererOwner setPointOfView:v7];
    self->_pointOfViewWasSet = 0;
  }

  if (a4)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__SCNRenderer_setScene_completionHandler___block_invoke_2;
    v11[3] = &unk_2782FF140;
    v11[4] = a4;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v11];
  }

  engineContext = self->_engineContext;
  if (engineContext)
  {
    AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(engineContext, 0);
    if (AuthoringEnvironment)
    {
      C3DAuthoringEnvironmentSceneDidChange(AuthoringEnvironment, a3);
    }
  }
}

void __42__SCNRenderer_setScene_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 208);
  if (v2)
  {
    v3 = [*(v1 + 8) sceneRef];

    C3DEngineContextSetupWithScene(v2, v3);
  }
}

- (void)setScene:(SCNScene *)scene
{
  if (self->_scene != scene)
  {
    [(SCNRenderer *)self lock];

    v6 = scene;
    self->_scene = v6;
    engineContext = self->_engineContext;
    if (engineContext)
    {
      C3DEngineContextSetupWithScene(engineContext, [(SCNScene *)v6 sceneRef]);
    }

    [(SCNRenderer *)self unlock];
  }
}

- (id)backgroundColor
{
  v2 = self->_backgroundColor;

  return v2;
}

- (void)setBackgroundColor:(id)a3
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor != a3)
  {

    v7 = a3;
    self->_backgroundColor = v7;
    v8.i64[0] = [(UIColor *)v7 scn_C3DColorIgnoringColorSpace:0 success:0];
    v8.i64[1] = v9;
    v10 = vmulq_f32(vdupq_n_s32(HIDWORD(v9)), v8);
    v10.var0.var0[3] = *(&v9 + 1);
    self->_c3dBackgroundColor = v10;

    [(SCNRenderer *)self _c3dBackgroundColorDidChange];
  }
}

- (void)_c3dBackgroundColorDidChange
{
  v3 = [(SCNRenderer *)self _engineContext];
  if (!v3)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  C3DEngineContextSetMainClearColor(v3, *self->_c3dBackgroundColor.var0.var0, *&self->_c3dBackgroundColor.var0.var1.var2);
}

- (void)resolvedBackgroundColorDidChange
{
  v3.i64[0] = [(UIColor *)self->_backgroundColor scn_C3DColorIgnoringColorSpace:0 success:0];
  v3.i64[1] = v4;
  v5 = vmulq_f32(vdupq_n_s32(HIDWORD(v4)), v3);
  v5.var0.var0[3] = *(&v4 + 1);
  self->_c3dBackgroundColor = v5;

  [(SCNRenderer *)self _c3dBackgroundColorDidChange];
}

- (id)metalLayer
{
  if ((*(self + 121) & 8) != 0)
  {
    return [(SCNSceneRenderer *)self->_privateRendererOwner scn_backingLayer];
  }

  else
  {
    return 0;
  }
}

- (id)_setupSKRendererIfNeeded
{
  result = self->_overlayRenderer;
  if (!result)
  {
    v4 = NSClassFromString(&cfstr_Skscnrenderer.isa);
    if (self->_renderingAPI)
    {
      [(SCNRenderer *)self context];
      glContext = self->_glContext;
      [(SCNRenderer *)self lock];
      if (glContext)
      {
        v6 = [(objc_class *)v4 rendererWithContext:glContext options:0];
        self->_overlayRenderer = v6;
        [(__SKSCNRenderer *)v6 setScene:self->_overlayScene];
      }

      [(SCNRenderer *)self unlock];
    }

    else
    {
      self->_overlayRenderer = [(objc_class *)v4 rendererWithDevice:[(SCNRenderer *)self metalDevice] options:0];
    }

    [(SCNRenderer *)self _contentsScaleFactor];
    [(__SKSCNRenderer *)self->_overlayRenderer setBackingScaleFactor:?];
    return self->_overlayRenderer;
  }

  return result;
}

- (id)_prepareSKRenderer
{
  v3 = [(SCNRenderer *)self _setupSKRendererIfNeeded];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *self->_anon_58;
  v13 = v12;
  v14 = HIDWORD(v12);
  [(SCNRenderer *)self _contentsScaleFactor];
  v16 = v13 / v15;
  v17 = v14 / v15;
  [v3 setBackingScaleFactor:?];
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v21.size.width = v16;
  v21.size.height = v17;
  if (!CGRectEqualToRect(v20, v21))
  {
    v18 = [v3 scene];
    if ([v18 scaleMode] == 3)
    {
      [v18 setSize:{v16, v17}];
    }

    [v3 setBounds:{0.0, 0.0, v16, v17}];
  }

  return v3;
}

- (void)setOverlaySKScene:(id)a3
{
  [(SCNRenderer *)self lock];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  self->_overlayScene = a3;
  if (a3)
  {
    if ((*(self + 121) & 4) != 0)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    }

    [(SCNRenderer *)self _setupSKRendererIfNeeded];
  }

  v5 = [(SCNScene *)self->_scene sceneRef];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__SCNRenderer_setOverlaySKScene___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = a3;
  v6[5] = self;
  [SCNTransaction postCommandWithContext:v5 object:0 applyBlock:v6];
  [(SCNRenderer *)self unlock];
}

void __33__SCNRenderer_setOverlaySKScene___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 368);
  if (v2)
  {

    [v3 setScene:?];
  }

  else
  {

    *(*(a1 + 40) + 368) = 0;
  }
}

- (void)setTechnique:(id)a3
{
  technique = self->_technique;
  if (technique != a3)
  {
    v9[7] = v3;
    v9[8] = v4;

    self->_technique = a3;
    v8 = [(SCNScene *)self->_scene sceneRef];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __28__SCNRenderer_setTechnique___block_invoke;
    v9[3] = &unk_2782FB820;
    v9[4] = self;
    [SCNTransaction postCommandWithContext:v8 object:0 applyBlock:v9];
  }
}

void __28__SCNRenderer_setTechnique___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _engineContext];
  if (v2)
  {
    v3 = v2;
    v4 = [*(*(a1 + 32) + 352) techniqueRef];
    FXContext = C3DEngineContextGetFXContext(v3);
    if (FXContext)
    {
      C3DFXContextSetPostProcessTechnique(FXContext, v4, v3);
    }

    if (C3DEngineContextGetRenderGraph(v3))
    {

      C3DRenderGraphSetCustomTechnique();
    }
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __28__SCNRenderer_setTechnique___block_invoke_cold_1();
    }
  }
}

- (id)_copyPassDescription
{
  [(SCNRenderer *)self lock];
  FXContext = C3DEngineContextGetFXContext(self->_engineContext);
  v4 = C3DFXContextCopyPassDescription(FXContext, self->_engineContext);
  [(SCNRenderer *)self unlock];
  return v4;
}

- (id)_copyRenderGraphDescription
{
  [(SCNRenderer *)self lock];
  RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
  v4 = [C3DRenderGraphGetDescription(RenderGraph) copy];
  [(SCNRenderer *)self unlock];
  return v4;
}

- (void)_renderGraphFrameRecordingAtPath:(id)a3 withCompletion:(id)a4
{
  [(SCNRenderer *)self lock];
  RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
  C3DRenderGraphRecordFrame(RenderGraph, a3, a4);

  [(SCNRenderer *)self unlock];
}

- (BOOL)_recordWithoutExecute
{
  [(SCNRenderer *)self lock];
  RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
  IsRecordingWithoutExecute = C3DRenderGraphIsRecordingWithoutExecute(RenderGraph);
  [(SCNRenderer *)self unlock];
  return IsRecordingWithoutExecute;
}

- (void)set_recordWithoutExecute:(BOOL)a3
{
  [(SCNRenderer *)self lock];
  [(SCNRenderer *)self willChangeValueForKey:@"_recordWithoutExecute"];
  RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
  C3DRenderGraphSetRecordWithoutExecute(RenderGraph, a3);
  [(SCNRenderer *)self didChangeValueForKey:@"_recordWithoutExecute"];

  [(SCNRenderer *)self unlock];
}

- (id)_computedLightingEnvironmentMapsPath
{
  RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);

  return [(SCNMTLRenderContext *)RenderContext generatedTexturePath];
}

- (void)set_computedLightingEnvironmentMapsPath:(id)a3
{
  RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);

  [(SCNMTLRenderContext *)RenderContext setGeneratedTexturePath:a3];
}

- (BOOL)_preloadResource:(id)a3 abortHandler:(id)a4
{
  if (self->_renderingAPI)
  {
    v7 = [MEMORY[0x277CD9388] currentContext];
    [MEMORY[0x277CD9388] setCurrentContext:{-[SCNRenderer context](self, "context")}];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a3 sceneRef];
  v9 = v8;
  if (v8)
  {
    C3DSceneLock(v8);
  }

  [(SCNRenderer *)self lock];
  *(self + 121) |= 0x20u;
  if (!self->_renderingAPI)
  {
    *&v10 = 0;
    *(&v10 + 1) = vcvt_f32_u32(*self->_anon_58);
    v16 = v10;
    C3DEngineContextSetDrawableSize(self->_engineContext, *(&v10 + 1));
    [(SCNRenderer *)self adjustViewportForRendering:*&v16];
    C3DEngineContextSetViewport(v11, self->_engineContext);
LABEL_10:
    [(SCNRenderer *)self _beginFrame];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = C3DWarmupSceneVRAMResourcesForEngineContext([a3 sceneRef], self->_engineContext, a4);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = C3DWarmupNodeTreeVRAMResourcesForEngineContext([a3 nodeRef], self->_engineContext, a4);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = C3DWarmupGeometryVRAMResourcesForEngineContext([a3 geometryRef], self->_engineContext, a4);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = 0;
            goto LABEL_22;
          }

          v12 = C3DWarmupMaterialVRAMResourcesForEngineContext([a3 materialRef], self->_engineContext, a4);
        }
      }
    }

    v13 = v12;
LABEL_22:
    if (self->_renderingAPI)
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
      C3DRendererContextUnbindFramebuffer(RendererContextGL);
      glFlush();
    }

    else
    {
      [(SCNRenderer *)self _endFrame];
    }

    *(self + 121) &= ~0x20u;
    [(SCNRenderer *)self unlock];
    if (v9)
    {
      C3DSceneUnlock(v9);
    }

    if (self->_renderingAPI)
    {
      [MEMORY[0x277CD9388] setCurrentContext:v7];
    }

    return v13;
  }

  if ([(SCNRenderer *)self _installContext])
  {
    glViewport(0, 0, 32, 32);
    goto LABEL_10;
  }

  if (v9)
  {
    C3DSceneUnlock(v9);
  }

  [(SCNRenderer *)self unlock];
  return 0;
}

- (BOOL)_preparePreloadRenderer:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (self->_preloadRenderer)
  {
LABEL_15:
    LOBYTE(v14) = 1;
    return v14;
  }

  if (!self->_renderingAPI)
  {
    v7 = [SCNOffscreenRenderer offscreenRendererWithDevice:[(SCNRenderer *)self metalDevice] sceneRendererDelegate:self size:32.0, 32.0];
    self->_preloadRenderer = &v7->super;
    [(SCNRenderer *)v7 set_antialiasingMode:self->__antialiasingMode];
    [(SCNRenderer *)self->_preloadRenderer set_resourceManagerMonitor:objc_loadWeak(&self->_resourceManagerMonitor)];
    if ((*(self + 121) & 8) != 0)
    {
      -[SCNRenderer set_preparePixelFormat:](self->_preloadRenderer, "set_preparePixelFormat:", [a3 pixelFormat]);
    }

    RenderGraph = C3DEngineContextGetRenderGraph([(SCNRenderer *)self->_preloadRenderer _engineContext]);
    v9 = [(SCNRenderer *)self colorPixelFormat];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 80;
    }

    C3DRenderGraphSetWarmupPixelFormat(RenderGraph, v10);
    goto LABEL_11;
  }

  if ([(SCNRenderer *)self context])
  {
    v4 = [(SCNRenderer *)self context];
    v17 = *MEMORY[0x277CD93A8];
    v18[0] = [v4 sharegroup];
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    self->_preloadRenderer = +[SCNOffscreenRenderer offscreenRendererWithContext:size:](SCNOffscreenRenderer, "offscreenRendererWithContext:size:", [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2 properties:v5], 32.0, 32.0);
LABEL_11:
    if ([(SCNRenderer *)self _collectCompilationErrors])
    {
      C3DEngineContextGetRendererContextGL(self->_engineContext);
      v11 = [(SCNRenderer *)self->_preloadRenderer _renderContextMetal];
      if (v11)
      {
        [(SCNMTLRenderContext *)v11 setCollectsCompilationErrors:?];
      }
    }

    v12 = [(SCNRenderer *)self->_preloadRenderer _engineContext];
    RenderingOptionForKey = C3DEngineContextGetRenderingOptionForKey([(SCNRenderer *)self _engineContext], @"defaultLight");
    C3DEngineContextSetRenderingOptionForKey(v12, @"defaultLight", RenderingOptionForKey);
    goto LABEL_15;
  }

  v15 = scn_default_log();
  v14 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    [SCNRenderer _preparePreloadRenderer:];
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (void)_releasePreloadRenderer
{
  v3 = [(SCNRenderer *)self->_preloadRenderer _engineContext];
  if (v3 && (RendererContextGL = C3DEngineContextGetRendererContextGL(v3)) != 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__SCNRenderer__releasePreloadRenderer__block_invoke;
    v5[3] = &__block_descriptor_40_e5_v8__0l;
    v5[4] = RendererContextGL;
    C3DRendererContextExecuteOnContext(RendererContextGL, v5);
  }

  else
  {

    self->_preloadRenderer = 0;
  }
}

- (BOOL)prepareObject:(id)a3 shouldAbortBlock:(id)a4
{
  objc_sync_enter(self);
  if (!self->_renderingAPI && (*(self + 121) & 8) != 0)
  {
    v7 = [(SCNSceneRenderer *)self->_privateRendererOwner layer];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SCNRenderer *)self _preparePreloadRenderer:v7];
  if (v8)
  {
    +[SCNTransaction flush];
    [(SCNRenderer *)self _prepareObject:a3 shouldAbortBlock:a4];
    [(SCNRenderer *)self _releasePreloadRenderer];
  }

  objc_sync_exit(self);
  return v8;
}

- (BOOL)_prepareObject:(id)a3 shouldAbortBlock:(id)a4
{
  [(SCNRenderer *)self _getFrameIndex];
  kdebug_trace();
  v7 = [(SCNRenderer *)self->_preloadRenderer _engineContext];
  RendererContextGL = C3DEngineContextGetRendererContextGL(v7);
  if (RendererContextGL)
  {
    Stats = C3DEngineContextGetStats(v7);
    v9 = C3DEngineStatsResetResourceStats(Stats);
  }

  if ([MEMORY[0x277CCAC48] currentProgress])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [(SCNRenderer *)self->_preloadRenderer _preloadResource:a3 abortHandler:?];
    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v12 = [(SCNRenderer *)self->_preloadRenderer _preloadResource:a3 abortHandler:a4];
  }

  if (RendererContextGL)
  {
    v13 = C3DEngineContextGetStats(v7);
    v14 = C3DEngineContextGetStats([(SCNRenderer *)self _engineContext]);
    C3DEngineStatsMergeResourceStats(v13, v14);
  }

  else
  {
    RenderContext = C3DEngineContextGetRenderContext(v7);
    v16 = C3DEngineContextGetRenderContext(self->_engineContext);
    if (RenderContext && v16)
    {
      v17 = [(SCNMTLRenderContext *)v16 compilationErrors];
      [v17 addEntriesFromDictionary:-[SCNMTLRenderContext compilationErrors](RenderContext)];
    }
  }

  kdebug_trace();
  return v12;
}

uint64_t __47__SCNRenderer__prepareObject_shouldAbortBlock___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    return 1;
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)prepareObjects:(id)a3 withCompletionHandler:(id)a4
{
  if (!self->_renderingAPI && (*(self + 121) & 8) != 0)
  {
    v7 = [(SCNSceneRenderer *)self->_privateRendererOwner layer];
  }

  else
  {
    v7 = 0;
  }

  if (!self->__prepareQueue)
  {
    [(SCNRenderer *)self lock];
    if (!self->__prepareQueue)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = objc_opt_class();
      v10 = [objc_msgSend(v8 stringWithFormat:@"com.apple.scenekit.prepareQueue.%@%p", NSStringFromClass(v9), self->_privateRendererOwner), "cStringUsingEncoding:", 1];
      v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
      self->__prepareQueue = dispatch_queue_create(v10, v11);
    }

    [(SCNRenderer *)self unlock];
  }

  v12 = [MEMORY[0x277CCAC48] currentProgress];
  if (v12)
  {
    v12 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:{objc_msgSend(a3, "count")}];
  }

  prepareQueue = self->__prepareQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SCNRenderer_prepareObjects_withCompletionHandler___block_invoke;
  block[3] = &unk_2782FF1E0;
  block[4] = v12;
  block[5] = self;
  block[6] = v7;
  block[7] = a3;
  block[8] = a4;
  dispatch_async(prepareQueue, block);
}

void __52__SCNRenderer_prepareObjects_withCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__SCNRenderer_prepareObjects_withCompletionHandler___block_invoke_2;
    v18[3] = &unk_2782FF190;
    v18[4] = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 40);
  objc_sync_enter(v4);
  if ([*(a1 + 40) _preparePreloadRenderer:*(a1 + 48)])
  {
    +[SCNTransaction flush];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = *(a1 + 56);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = *v15;
      v8 = 1;
LABEL_7:
      v9 = 0;
      while (1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
        LOBYTE(v10) = [*(a1 + 40) _prepareObject:v10 shouldAbortBlock:v3];
        [*(a1 + 32) resignCurrent];
        v8 &= v10;
        if ([*(a1 + 32) isCancelled])
        {
          break;
        }

        if (v6 == ++v9)
        {
          v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v6)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    [*(a1 + 40) _releasePreloadRenderer];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v4);
  v11 = *(a1 + 64);
  if (v11)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__SCNRenderer_prepareObjects_withCompletionHandler___block_invoke_3;
    v12[3] = &unk_2782FF1B8;
    v12[4] = v11;
    v13 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

- (id)programWithNode:(id)a3 withMaterial:(id)a4
{
  v8 = [(SCNRenderer *)self _engineContext];
  RendererContextGL = C3DEngineContextGetRendererContextGL(v8);
  if (!RendererContextGL || !C3DRendererContextGetGLContext(RendererContextGL))
  {
    return 0;
  }

  if (!v8)
  {
    [SCNRenderer programWithNode:a2 withMaterial:self];
  }

  v10 = [a3 nodeRef];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [objc_msgSend(a3 "geometry")];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  Mesh = C3DGeometryGetMesh(v12);
  if (!Mesh)
  {
    return 0;
  }

  v15 = Mesh;
  v16 = [a4 materialRef];
  if (![(SCNScene *)[(SCNRenderer *)self scene] sceneRef])
  {
    [SCNRenderer programWithNode:a2 withMaterial:?];
  }

  v17 = C3DEngineContextEvaluateProgram(v8, v11, v13, v15, v16);
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v19 = +[SCNProgram program];
  v20 = CFGetTypeID(v18);
  if (v20 == C3DFXGLSLProgramGetTypeID())
  {
    ShaderSources = C3DFXGLSLProgramGetShaderSources(v18);
    v23 = v22;
    [(SCNProgram *)v19 setVertexShader:ShaderSources];
    [(SCNProgram *)v19 setFragmentShader:v23];
  }

  else
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  return v19;
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFFD | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFFB | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFF7 | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFEF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFDF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 64;
  }

  else
  {
    v9 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFFBF | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 128;
  }

  else
  {
    v10 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFF7F | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  *&self->_delegationConformance = *&self->_delegationConformance & 0xFCFF | v11;

  [(SCNRenderer *)self _updateEngineCallbacks];
}

- (void)set_wantsSceneRendererDelegationMessages:(BOOL)a3
{
  if (a3)
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  *(self + 288) = *(self + 288) & 0xF7 | v4;
  if (!a3 || (*(self + 121) & 4) != 0)
  {
    v13 = 0;
    selfDelegationConformance = *&self->_selfDelegationConformance & 0xFE00;
  }

  else
  {
    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFEF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFDF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 128;
    }

    else
    {
      v10 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFF7F | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFEFF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 64;
    }

    else
    {
      v12 = 0;
    }

    *&self->_selfDelegationConformance = *&self->_selfDelegationConformance & 0xFFBF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 512;
    }

    else
    {
      v13 = 0;
    }

    selfDelegationConformance = self->_selfDelegationConformance;
  }

  *&self->_selfDelegationConformance = selfDelegationConformance & 0xFDFF | v13;

  [(SCNRenderer *)self _updateEngineCallbacks];
}

- (void)set_shouldForwardSceneRendererDelegationMessagesToPrivateRendererOwner:(BOOL)a3
{
  if (a3)
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  *(self + 288) = *(self + 288) & 0xEF | v4;
  if (a3 && (*(self + 121) & 4) != 0)
  {
    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFFD | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFF7 | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 16;
    }

    else
    {
      v10 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFEF | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 32;
    }

    else
    {
      v11 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFDF | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 128;
    }

    else
    {
      v12 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFF7F | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFEFF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 64;
    }

    else
    {
      v14 = 0;
    }

    *&self->_privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFFBF | v14;
    if (objc_opt_respondsToSelector())
    {
      v5 = 512;
    }

    else
    {
      v5 = 0;
    }

    privateRendererOwnerDelegationConformance = self->_privateRendererOwnerDelegationConformance;
  }

  else
  {
    v5 = 0;
    privateRendererOwnerDelegationConformance = *&self->_privateRendererOwnerDelegationConformance & 0xFE00;
  }

  *&self->_privateRendererOwnerDelegationConformance = privateRendererOwnerDelegationConformance & 0xFDFF | v5;

  [(SCNRenderer *)self _updateEngineCallbacks];
}

- (void)set_resourceManagerMonitor:(id)a3
{
  if (objc_loadWeak(&self->_resourceManagerMonitor) != a3)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    if (a3)
    {
      v6 = self;
    }

    else
    {
      v6 = 0;
    }

    objc_storeWeak(&self->_resourceManagerMonitor, v5);
    [(SCNMTLRenderContext *)self->_renderContext setResourceManagerMonitor:v6];
    v7 = [(SCNRenderer *)self->_preloadRenderer _renderContextMetal];

    [(SCNMTLRenderContext *)v7 setResourceManagerMonitor:v6];
  }
}

- (void)renderContext:(id)a3 didFallbackToDefaultTextureForSource:(id)a4 message:(id)a5
{
  privateRendererOwner = self;
  if ((*(self + 121) & 4) != 0)
  {
    privateRendererOwner = self->_privateRendererOwner;
  }

  Weak = objc_loadWeak(&self->_resourceManagerMonitor);

  [Weak renderer:privateRendererOwner didFallbackToDefaultTextureForSource:a4 message:a5];
}

- (void)set_commandBufferStatusMonitor:(id)a3
{
  if (objc_loadWeak(&self->_commandBufferStatusMonitor) != a3)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    if (a3)
    {
      v6 = self;
    }

    else
    {
      v6 = 0;
    }

    objc_storeWeak(&self->_commandBufferStatusMonitor, v5);
    [(SCNMTLRenderContext *)self->_renderContext setCommandBufferStatusMonitor:v6];
    v7 = [(SCNRenderer *)self->_preloadRenderer _renderContextMetal];

    [(SCNMTLRenderContext *)v7 setCommandBufferStatusMonitor:v6];
  }
}

- (void)renderContext:(id)a3 commandBufferDidCompleteWithError:(id)a4
{
  privateRendererOwner = self;
  if ((*(self + 121) & 4) != 0)
  {
    privateRendererOwner = self->_privateRendererOwner;
  }

  Weak = objc_loadWeak(&self->_commandBufferStatusMonitor);

  [Weak renderer:privateRendererOwner commandBufferDidCompleteWithError:a4];
}

- (void)updateCurrentTimeIfPlayingWithSystemTime:(double)a3
{
  v5 = [(SCNScene *)self->_scene sceneRef];
  v6 = v5;
  currentSceneTime = self->_currentSceneTime;
  playing = self->_playing;
  if (!playing || v5 == 0)
  {
    self->_lastSystemTime = a3;
    if (v5)
    {
      v10 = !playing;
    }

    else
    {
      v10 = 1;
    }

    v11 = currentSceneTime;
    if (v10)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  PlaybackSpeed = C3DSceneGetPlaybackSpeed(v5);
  StartTime = C3DSceneGetStartTime(v6);
  if (currentSceneTime < StartTime)
  {
    currentSceneTime = StartTime;
  }

  lastSystemTime = self->_lastSystemTime;
  if (lastSystemTime != 0.0)
  {
    v15 = a3 - lastSystemTime;
    if (v15 > 1.0)
    {
      v15 = 0.0166666667;
    }

    currentSceneTime = currentSceneTime + v15 * PlaybackSpeed;
  }

  self->_lastSystemTime = a3;
  v11 = currentSceneTime;
  if (self->_playing)
  {
LABEL_19:
    EndTime = C3DSceneGetEndTime(v6);
    if (currentSceneTime <= EndTime)
    {
      v11 = currentSceneTime;
    }

    else
    {
      v17 = EndTime;
      if (self->_loops)
      {
        v11 = 0.0;
        if (v17 != 0.0)
        {
          v18 = C3DSceneGetStartTime(v6);
          v11 = fmod(currentSceneTime - v17, v17) + v18;
        }
      }

      else
      {
        [(SCNRenderer *)self setPlaying:0];
        v11 = v17;
      }
    }
  }

LABEL_25:

  [(SCNRenderer *)self _setSceneTime:v11];
}

- (BOOL)_needsRepetitiveRedraw
{
  if (self->_isAnimating || self->_playing)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    return (*(self + 121) >> 1) & 1;
  }

  return v2;
}

- (void)_setSceneTime:(double)a3
{
  if ((*(self + 288) & 4) == 0)
  {
    [(SCNRenderer *)self willChangeValueForKey:@"sceneTime"];
    self->_currentSceneTime = a3;

    [(SCNRenderer *)self didChangeValueForKey:@"sceneTime"];
  }
}

- (void)setSceneTime:(double)a3
{
  if ((*(self + 288) & 4) == 0)
  {
    if ((*(self + 121) & 4) != 0)
    {
      v5 = [(SCNScene *)self->_scene sceneRef];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __28__SCNRenderer_setSceneTime___block_invoke;
      v6[3] = &unk_2782FB7D0;
      v6[4] = self;
      *&v6[5] = a3;
      [SCNTransaction postCommandWithContext:v5 object:self applyBlock:v6];
    }

    else
    {
      self->_currentSceneTime = a3;
    }
  }
}

- (double)_systemTime
{
  result = self->_forceSystemTime;
  if (result == 0.0)
  {
    return self->_currentSystemTime;
  }

  return result;
}

- (void)set_systemTime:(double)a3
{
  if ((*(self + 288) & 4) == 0)
  {
    self->_currentSystemTime = a3;
    [(SCNRenderer *)self updateCurrentTimeIfPlayingWithSystemTime:?];
  }
}

- (void)set_deltaTime:(double)a3
{
  if ((*(self + 288) & 4) != 0)
  {
    a3 = 0.0;
  }

  self->_deltaTime = a3;
}

- (void)setContext:(id)a3
{
  if (self->_engineContext && self->_glContext != a3)
  {
    v5 = [MEMORY[0x277CD9388] currentContext];
    if (self->_glContext)
    {
      [MEMORY[0x277CD9388] setCurrentContext:?];
      [(SCNRenderer *)self _deleteGLFramebuffer];
    }

    self->_glContext = a3;
    [MEMORY[0x277CD9388] setCurrentContext:v5];
    if (self->_glContext)
    {
      [MEMORY[0x277CD9388] setCurrentContext:?];
      C3DEngineContextSetGLContext(self->_engineContext, self->_glContext);
      if (self->_authoringEnvironment)
      {
        if (self->_privateRendererOwner)
        {
          privateRendererOwner = self->_privateRendererOwner;
        }

        else
        {
          privateRendererOwner = self;
        }

        v7 = [SCNAuthoringEnvironment authoringEnvironmentForSceneRenderer:privateRendererOwner createIfNeeded:1];

        self->_authoringEnvironment = v7;
      }

      C3DFXInvalidatePasses(self->_engineContext);
      RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
      if (RendererContextGL)
      {
        v9 = RendererContextGL;
        v10 = SCNSampleCountForAntialiasingMode([(SCNRenderer *)self _antialiasingMode]);

        C3DRendererContextSetSampleCount(v9, v10);
      }
    }
  }
}

- (void)context
{
  renderingAPI = self->_renderingAPI;
  if (renderingAPI)
  {
    if (!self->_glContext)
    {
      if (self->_isRunningInExtension)
      {
LABEL_6:
        if (renderingAPI == 2)
        {
          v4 = 3;
        }

        else
        {
          v4 = 2;
        }

        [(SCNRenderer *)self setContext:SCNCreateGLESContext(v4)];
        return self->_glContext;
      }

      if ([objc_msgSend(MEMORY[0x277D75128] "sharedApplication")] != 2)
      {
        LODWORD(renderingAPI) = self->_renderingAPI;
        goto LABEL_6;
      }
    }

    return self->_glContext;
  }

  return 0;
}

- (void)_update:(__C3DScene *)a3
{
  [(SCNRenderer *)self _systemTime];
  v6 = v5;
  [(SCNRenderer *)self _getFrameIndex];
  C3DEngineContextSetSystemTime(self->_engineContext, v6);
  C3DEngineContextSetDeltaTime(self->_engineContext, self->_deltaTime);
  deltaTime = self->_deltaTime;
  IsPaused = C3DSceneIsPaused(a3);
  IsPausedForEditing = C3DSceneIsPausedForEditing(a3);
  v10 = 0.0;
  if (IsPaused)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = deltaTime;
  }

  if (v11 >= 0.0)
  {
    v10 = v11;
  }

  if (v10 <= 1.0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0.0166666667;
  }

  self->_isAnimating = 0;
  [SCNTransaction setImmediateMode:1];
  [SCNTransaction setImmediateModeRestrictedContext:a3];
  context = objc_autoreleasePoolPush();
  Stats = C3DEngineContextGetStats(self->_engineContext);
  Weak = objc_loadWeak(&self->_delegate);
  if (*&self->_delegationConformance & 1) != 0 || (*&self->_selfDelegationConformance & 1) != 0 || (*&self->_privateRendererOwnerDelegationConformance)
  {
    v15 = CACurrentMediaTime();
    kdebug_trace();
    if (*&self->_privateRendererOwnerDelegationConformance)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner updateAtTime:v6, context];
    }

    if (*&self->_selfDelegationConformance)
    {
      [(SCNRenderer *)self _renderer:self updateAtTime:v6];
    }

    if (*&self->_delegationConformance)
    {
      privateRendererOwner = self;
      if ((*(self + 121) & 4) != 0)
      {
        privateRendererOwner = self->_privateRendererOwner;
      }

      [Weak renderer:privateRendererOwner updateAtTime:{v6, context}];
    }

    kdebug_trace();
    Stats[21] = Stats[21] + CACurrentMediaTime() - v15;
  }

  ModelValueStorage = C3DSceneGetModelValueStorage(a3);
  C3DModelValueStoragePrepareNextFrame(ModelValueStorage);
  v18 = CACurrentMediaTime();
  AnimationManager = C3DSceneGetAnimationManager(a3);
  if (AnimationManager)
  {
    v20 = AnimationManager;
    C3DAnimationManagerSetPausedForEditing(AnimationManager, IsPausedForEditing);
    kdebug_trace();
    C3DAnimationManagerApplyAnimations(v20, v6, self->_currentSceneTime);
    kdebug_trace();
    kdebug_trace();
    currentSceneTime = v6;
    if (IsPausedForEditing)
    {
      currentSceneTime = self->_currentSceneTime;
    }

    C3DAnimationManagerApplyActions(v20, currentSceneTime);
    kdebug_trace();
    C3DAnimationManagerApplyBindings(v20);
    if (IsPausedForEditing & 1 | ((IsPaused & 1) == 0))
    {
      self->_isAnimating = C3DAnimationManagerNeedsRedraw(v20, IsPausedForEditing);
    }
  }

  Stats[16] = Stats[16] + CACurrentMediaTime() - v18;
  if ((*&self->_delegationConformance & 2) != 0 || (*&self->_selfDelegationConformance & 2) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 2) != 0)
  {
    v22 = CACurrentMediaTime();
    kdebug_trace();
    if ((*&self->_privateRendererOwnerDelegationConformance & 2) != 0)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didApplyAnimationsAtTime:v6];
    }

    if ((*&self->_selfDelegationConformance & 2) != 0)
    {
      [(SCNRenderer *)self _renderer:self didApplyAnimationsAtTime:v6];
    }

    if ((*&self->_delegationConformance & 2) != 0)
    {
      v23 = self;
      if ((*(self + 121) & 4) != 0)
      {
        v23 = self->_privateRendererOwner;
      }

      [Weak renderer:v23 didApplyAnimationsAtTime:{v6, context}];
    }

    kdebug_trace();
    Stats[21] = Stats[21] + CACurrentMediaTime() - v22;
  }

  v24 = CACurrentMediaTime();
  v25 = [C3DEntityGetObjCWrapper(a3) _physicsWorldCreateIfNeeded:0];
  if (v25)
  {
    v26 = v25;
    kdebug_trace();
    [v26 _updatePhysicsFieldsTransforms];
    if (IsPausedForEditing)
    {
      kdebug_trace();
    }

    else
    {
      [v26 _step:v12];
      kdebug_trace();
      if ((IsPaused & 1) == 0 && !self->_isAnimating)
      {
        self->_isAnimating = [v26 _needsRedraw];
      }
    }
  }

  Stats[14] = Stats[14] + CACurrentMediaTime() - v24;
  if ((*&self->_delegationConformance & 4) != 0 || (*&self->_selfDelegationConformance & 4) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 4) != 0)
  {
    v27 = CACurrentMediaTime();
    kdebug_trace();
    if ((*&self->_privateRendererOwnerDelegationConformance & 4) != 0)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didSimulatePhysicsAtTime:v6];
    }

    if ((*&self->_selfDelegationConformance & 4) != 0)
    {
      [(SCNRenderer *)self _renderer:self didSimulatePhysicsAtTime:v6];
    }

    if ((*&self->_delegationConformance & 4) != 0)
    {
      v28 = self;
      if ((*(self + 121) & 4) != 0)
      {
        v28 = self->_privateRendererOwner;
      }

      [Weak renderer:v28 didSimulatePhysicsAtTime:{v6, context}];
    }

    kdebug_trace();
    Stats[21] = Stats[21] + CACurrentMediaTime() - v27;
  }

  v29 = CACurrentMediaTime();
  ControllerManager = C3DSceneGetControllerManager(a3);
  if (ControllerManager)
  {
    v31 = ControllerManager;
    *(ControllerManager + 32) = [(SCNRenderer *)self _engineContext];
    kdebug_trace();
    C3DConstraintManagerApply(v31);
    kdebug_trace();
  }

  Stats[13] = Stats[13] + CACurrentMediaTime() - v29;
  if ((*&self->_delegationConformance & 8) != 0 || (*&self->_selfDelegationConformance & 8) != 0 || (*&self->_privateRendererOwnerDelegationConformance & 8) != 0)
  {
    v32 = CACurrentMediaTime();
    kdebug_trace();
    if ((*&self->_privateRendererOwnerDelegationConformance & 8) != 0)
    {
      [(SCNSceneRenderer *)self->_privateRendererOwner _renderer:self->_privateRendererOwner didApplyConstraintsAtTime:v6];
    }

    if ((*&self->_selfDelegationConformance & 8) != 0)
    {
      [(SCNRenderer *)self _renderer:self didApplyConstraintsAtTime:v6];
    }

    if ((*&self->_delegationConformance & 8) != 0)
    {
      v33 = self;
      if ((*(self + 121) & 4) != 0)
      {
        v33 = self->_privateRendererOwner;
      }

      [Weak renderer:v33 didApplyConstraintsAtTime:{v6, context}];
    }

    kdebug_trace();
    Stats[21] = Stats[21] + CACurrentMediaTime() - v32;
  }

  v34 = CACurrentMediaTime();
  ParticleManager = C3DSceneGetParticleManager(a3, 0);
  v36 = ParticleManager;
  if (!IsPausedForEditing)
  {
    v39 = 1;
    if (!ParticleManager)
    {
      goto LABEL_82;
    }

    goto LABEL_76;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v37 = [(SCNRenderer *)self _authoringEnvironment];
  if (v37)
  {
    SelectedNodes = C3DAuthoringEnvironmentGetSelectedNodes(v37);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __23__SCNRenderer__update___block_invoke;
    v43[3] = &unk_2782FF208;
    v43[4] = &v44;
    [SelectedNodes enumerateObjectsUsingBlock:v43];
  }

  v39 = *(v45 + 24);
  _Block_object_dispose(&v44, 8);
  if (v36)
  {
LABEL_76:
    kdebug_trace();
    if ((v39 & 1) == 0)
    {
      v12 = 0.0;
    }

    EnginePipeline = C3DSceneGetEnginePipeline(a3);
    C3DParticleManagerUpdate(v36, EnginePipeline, v12);
    if (!self->_isAnimating && ((v39 ^ 1) & 1) == 0)
    {
      self->_isAnimating = C3DParticleManagerNeedRedraw(v36);
    }

    kdebug_trace();
  }

LABEL_82:
  Stats[15] = Stats[15] + CACurrentMediaTime() - v34;
  kdebug_trace();
  C3DAudioManagerUpdateNodes(self->_engineContext);
  kdebug_trace();
  AuthoringEnvironment2 = C3DSceneGetAuthoringEnvironment2(a3, 0);
  if (AuthoringEnvironment2)
  {
    C3DAuthoringEnvironment2Update(AuthoringEnvironment2, self);
  }

  objc_autoreleasePoolPop(context);
  [SCNTransaction setImmediateModeRestrictedContext:0];
  [SCNTransaction setImmediateMode:0];
}

const __CFDictionary *__23__SCNRenderer__update___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = C3DNodeGetParticleSystems(a2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_updateWithSystemTime:(double)a3
{
  [(SCNRenderer *)self lock];
  [(SCNRenderer *)self _updateSystemTimeAndDeltaTimeWithCurrentTime:a3];
  +[SCNTransaction lock];
  engineContext = self->_engineContext;
  if (engineContext)
  {
    Scene = C3DEngineContextGetScene(engineContext);
    if (Scene)
    {
      v7 = Scene;
      C3DSceneLock(Scene);
      [(SCNRenderer *)self _update:v7];
      C3DSceneUnlock(v7);
    }
  }

  +[SCNTransaction unlock];

  [(SCNRenderer *)self unlock];
}

- (void)updateAndDrawStatisticsIfNeeded
{
  v3 = SCNGetPerformanceStatisticsEnabled();
  v4 = v3;
  if (self->_showStatistics || v3)
  {
    if (self->_renderingAPI)
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
      Stats = C3DRendererContextGetStats(RendererContextGL);
      v7 = 0;
    }

    else
    {
      Stats = [(SCNMTLResourceManager *)self->_renderContext commandQueue];
      v8 = [(SCNMTLRenderContext *)self->_renderContext resourceManager];
      v7 = [(SCNMTLResourceManager *)v8 stats];
    }

    C3DEngineStatsFinish(Stats);
    Current = CFAbsoluteTimeGetCurrent();
    statisticsTimeStamp = self->_statisticsTimeStamp;
    v11 = [(SCNRenderer *)self _authoringEnvironment];
    if (statisticsTimeStamp <= Current)
    {
      v12 = v11;
      memset(v13, 0, 512);
      C3DEngineStatsEndFrameAndCopy(Stats, v7, v13);
      C3DEngineStatsReset(Stats);
      if (self->_showStatistics)
      {
        C3DAuthoringEnvironmentUpdateStats(v12, v13, v7);
      }

      if (v4)
      {
        SCNPushPerformanceStatistics(v13);
      }

      self->_statisticsTimeStamp = Current + 1.0;
    }
  }
}

- (void)_drawOverlaySceneAtTime:(double)a3
{
  if (self->_overlayScene && !self->_disableOverlays)
  {
    Stats = C3DEngineContextGetStats(self->_engineContext);
    v6 = CACurrentMediaTime();
    v7 = [(SCNRenderer *)self _prepareSKRenderer];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([self->_overlayScene _isDirty] & 1) == 0)
    {
      if (![(SCNRenderer *)self _needsRepetitiveRedraw])
      {
        [self->_overlayScene _notifyNextDirtyState];
      }
    }

    else
    {
      C3DEngineContextSetNextFrameTimeToAsap(self->_engineContext);
    }

    if (self->_renderingAPI)
    {
      [v7 updateAtTime:a3];
      RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
      C3DRendererContextPushGroupMarker(RendererContextGL, "SpriteKit - Draw Overlay");
      [v7 render:0];
      C3DRendererContextPopGroupMarker();
    }

    else
    {
      [SCNMTLRenderContext renderSKSceneWithRenderer:overlay:atTime:];
    }

    *(Stats + 160) = *(Stats + 160) + CACurrentMediaTime() - v6;
  }
}

- (id)hitTest:(CGPoint)a3 options:(id)a4
{
  v4 = *self->_anon_58;
  if (v4)
  {
    return [(SCNRenderer *)self _hitTest:a4 viewport:a3.x options:a3.y, v4, HIDWORD(v4)];
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (id)hitTestWithSegmentFromPoint:(SCNVector3)a3 toPoint:(SCNVector3)a4 options:(id)a5
{
  z = a4.z;
  y = a4.y;
  x = a4.x;
  v9 = a3.z;
  v10 = a3.y;
  v11 = a3.x;
  v12 = [(SCNScene *)[(SCNRenderer *)self scene] rootNode];
  *&v13 = v11;
  *&v14 = v10;
  *&v15 = v9;
  *&v16 = x;
  *&v17 = y;
  *&v18 = z;

  return [(SCNNode *)v12 hitTestWithSegmentFromPoint:a5 toPoint:v13 options:v14, v15, v16, v17, v18];
}

- (id)_hitTest:(CGPoint)a3 viewport:(CGSize)a4 options:(id)a5
{
  height = a4.height;
  width = a4.width;
  x = a3.x;
  y = a3.y;
  v7 = [(SCNRenderer *)self scene];
  +[SCNTransaction lock];
  v8 = [(SCNScene *)v7 sceneRef];
  if (v8 && (v9 = CFRetain(v8)) != 0)
  {
    v10 = v9;
    C3DSceneLock(v9);
    v11 = [(SCNRenderer *)self _engineContext];
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v11;
    PointOfView = C3DEngineContextGetPointOfView(v11);
    if (!PointOfView)
    {
      goto LABEL_13;
    }

    v14 = PointOfView;
    if (a5)
    {
      if (![a5 objectForKey:@"kHitTestRootNode"] || (v15 = objc_msgSend(objc_msgSend(a5, "objectForKey:", @"kHitTestRootNode"), "nodeRef"), a5 = objc_msgSend(a5, "mutableCopy"), objc_msgSend(a5, "setObject:forKey:", v15, @"kHitTestRootNode"), a5))
      {
        if ([a5 objectForKey:@"kHitTestShowDebugInfo"])
        {
          a5 = [a5 mutableCopy];
          [a5 setObject:C3DEngineContextGetAuthoringEnvironment(v12 forKey:{0), @"auth"}];
        }
      }
    }

    v16.f64[0] = x;
    v16.f64[1] = y;
    v17 = COERCE_DOUBLE(vcvt_f32_f64(v16));
    v16.f64[0] = width;
    v16.f64[1] = height;
    [(SCNRenderer *)self adjustViewportForRendering:*vcvt_hight_f32_f64(0, v16).i64];
    HitTestResultsAtPoint = C3DSceneCreateHitTestResultsAtPoint(v10, v14, a5, v17, v18, v19);
    if (HitTestResultsAtPoint)
    {
      v21 = HitTestResultsAtPoint;
      v22 = [SCNHitTestResult hitTestResultsFromHitTestResultRef:HitTestResultsAtPoint];
      CFRelease(v21);
    }

    else
    {
LABEL_13:
      v22 = 0;
    }

    C3DSceneUnlock(v10);
    +[SCNTransaction unlock];
    CFRelease(v10);
  }

  else
  {
    +[SCNTransaction unlock];
    v22 = 0;
  }

  if (v22)
  {
    return v22;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (BOOL)_isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4 viewport:(SCNVector4)a5
{
  if ((a4 || (x = a5.x, y = a5.y, v6 = -[SCNRenderer pointOfView](self, "pointOfView"), a5.y = y, a5.x = x, (a4 = v6) != 0)) && (v7 = a5.y, v42 = 0u, v43 = 0u, v40 = 0u, v41 = 0u, v38 = 0u, v39 = 0u, [a4 getFrustum:&v38 withViewport:*&a5.x]))
  {
    memset(v37, 0, sizeof(v37));
    v35 = 0u;
    v36 = 0u;
    if ([a3 isPresentationInstance])
    {
      WorldMatrix = C3DNodeGetWorldMatrix([a3 nodeRef]);
      C3DNodeComputeHierarchicalBoundingBox([a3 nodeRef], 1, &v35);
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      if (a3)
      {
        [a3 worldTransform];
      }

      WorldMatrix = v37;
      *&v10 = C3DMatrix4x4FromSCNMatrix4(v37, &v27).n128_u64[0];
      v34.i32[2] = 0;
      v34.i64[0] = 0;
      v33.i32[2] = 0;
      v33.i64[0] = 0;
      [a3 getBoundingBoxMin:&v34 max:{&v33, v10}];
      v11.i64[0] = 0x3F0000003F000000;
      v11.i64[1] = 0x3F0000003F000000;
      v12 = vmulq_f32(vaddq_f32(v34, v33), v11);
      v13 = vmulq_f32(vsubq_f32(v33, v34), v11);
      v12.i32[3] = 1.0;
      v13.i32[3] = 0;
      v35 = v12;
      v36 = v13;
    }

    for (i = 0; i != 96; i += 16)
    {
      *(&v38 + i) = vnegq_f32(*(&v38 + i));
    }

    v15 = 0;
    v9 = 0;
    v16 = WorldMatrix[1];
    v17 = WorldMatrix[2];
    v18 = vaddq_f32(WorldMatrix[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v16, *v35.f32, 1), *WorldMatrix, v35.f32[0]), v17, v35, 2));
    v18.i32[3] = 1.0;
    v19 = v36;
    v19.i32[1] = v36.i32[0];
    v19.i32[2] = v36.i32[0];
    v20 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(*WorldMatrix, v19)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v36.i8, 1), v36), v16))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v36, v36), v36), v17)));
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v32 = v43;
    v27 = v38;
    v28 = v39;
    do
    {
      v21 = *(&v27 + v15);
      v22 = vmulq_f32(v18, v21);
      *v22.i8 = vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
      v23 = vmulq_f32(v20, vabsq_f32(v21));
      *v22.i8 = vadd_f32(vzip1_s32(*v22.i8, *v23.f32), vzip2_s32(*v22.i8, *v23.f32));
      if (*v22.i32 > (v23.f32[2] + *&v22.i32[1]))
      {
        break;
      }

      v9 = v15++ > 4;
    }

    while (v15 != 6);
  }

  else
  {
    return 0;
  }

  return v9;
}

- (BOOL)isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4
{
  v5 = *self->_anon_58;
  if (!v5.i32[0])
  {
    return 0;
  }

  v6 = COERCE_DOUBLE(vcvt_f32_u32(v5));
  LODWORD(v4) = HIDWORD(v6);
  return [(SCNRenderer *)self _isNodeInsideFrustum:a3 withPointOfView:a4 viewport:0.0, 0.0, v6, v4];
}

- (id)_nodesInsideFrustumWithPointOfView:(id)a3 viewport:(SCNVector4)a4
{
  v6 = [MEMORY[0x277CBEB18] array];
  if (a3 || (a3 = [(SCNRenderer *)self pointOfView]) != 0)
  {
    if ([(SCNRenderer *)self scene])
    {
      memset(v14, 0, sizeof(v14));
      if ([a3 getFrustum:v14 withViewport:0.0])
      {
        v7 = [(SCNScene *)self->_scene sceneRef];
        C3DSceneLock(v7);
        CullingSystem = C3DSceneGetCullingSystem(v7);
        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __59__SCNRenderer__nodesInsideFrustumWithPointOfView_viewport___block_invoke;
        v10[3] = &unk_2782FF230;
        v10[4] = v6;
        v11 = [objc_msgSend(a3 camera];
        DWORD1(v12) = 1;
        C3DCullingSystemCull(CullingSystem);
        C3DSceneUnlock(v7);
      }
    }
  }

  return v6;
}

uint64_t __59__SCNRenderer__nodesInsideFrustumWithPointOfView_viewport___block_invoke(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v15 = v8;
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v3;
    v21 = v9;
    v22 = v10;
    v11 = a3;
    v13 = result;
    do
    {
      v14 = *a2++;
      result = [*(v13 + 32) addObject:{+[SCNNode nodeWithNodeRef:](SCNNode, "nodeWithNodeRef:", v14, v15, v16, v17, v18, v19, v20, v21, v22)}];
      --v11;
    }

    while (v11);
  }

  return result;
}

- (id)nodesInsideFrustumWithPointOfView:(id)a3
{
  v4 = *self->_anon_58;
  if (!v4.i32[0])
  {
    return MEMORY[0x277CBEBF8];
  }

  v5 = COERCE_DOUBLE(vcvt_f32_u32(v4));
  LODWORD(v3) = HIDWORD(v5);
  return [(SCNRenderer *)self _nodesInsideFrustumWithPointOfView:a3 viewport:0.0, 0.0, v5, v3];
}

- (void)_play
{
  if (!self->_playing)
  {
    self->_lastSystemTime = 0.0;
    self->_playing = 1;
  }
}

- (void)_stop
{
  self->_playing = 0;
  scene = self->_scene;
  if (scene)
  {
    StartTime = C3DSceneGetStartTime([(SCNScene *)scene sceneRef]);
  }

  else
  {
    StartTime = 0.0;
  }

  [(SCNRenderer *)self _setSceneTime:StartTime];
}

- (void)setPlaying:(BOOL)a3
{
  if (a3)
  {
    [(SCNRenderer *)self _play];
  }

  else
  {
    [(SCNRenderer *)self _pause];
  }
}

- (void)setRendersContinuously:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 121) = *(self + 121) & 0xFD | v3;
}

- (void)setTemporalAntialiasingEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 288) = *(self + 288) & 0xFD | v3;
}

- (void)setFrozen:(BOOL)a3
{
  v3 = a3;
  [(SCNRenderer *)self lock];
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *(self + 288) = *(self + 288) & 0xFB | v5;

  [(SCNRenderer *)self unlock];
}

- (id)_copyPerformanceStatistics
{
  *v8 = 0u;
  [(SCNRenderer *)self lock:0];
  v3 = [(SCNRenderer *)self _engineContext];
  if (v3 && (Stats = C3DEngineContextGetStats(v3)) != 0)
  {
    SCNConvertEngineStatsToPerformanceData(Stats, &v7, 0);
    v5 = _SCNGetPerformanceStatisticsFromPerformanceData(&v7, 0);
  }

  else
  {
    v5 = 0;
  }

  [(SCNRenderer *)self unlock];
  return v5;
}

- (void)_displayLinkStatsTick
{
  v2 = [(SCNRenderer *)self _engineContext];
  if (v2)
  {
    Stats = C3DEngineContextGetStats(v2);
    if (Stats)
    {
      *(Stats + 184) = *(Stats + 184) + CACurrentMediaTime() - *(Stats + 208);
    }
  }
}

- (void)_displayLinkStatsTack
{
  v2 = [(SCNRenderer *)self _engineContext];
  if (v2)
  {
    Stats = C3DEngineContextGetStats(v2);
    if (Stats)
    {
      *(Stats + 208) = CACurrentMediaTime();
    }
  }
}

- (void)setShowsStatistics:(BOOL)a3
{
  if (a3)
  {
    [(SCNRenderer *)self setupAuthoringEnvironment];
  }

  self->_showStatistics = a3;
}

- (void)_presentFramebuffer
{
  if (self->_renderContext)
  {

    [(SCNRenderer *)self _endFrame];
  }

  else
  {
    if (self->_renderingAPI)
    {
      if ([MEMORY[0x277CD9388] currentContext] != self->_glContext)
      {
        v3 = scn_default_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          [(SCNRenderer *)v3 _deleteGLFramebuffer:v4];
        }
      }
    }

    Stats = C3DEngineContextGetStats(self->_engineContext);
    v12 = CACurrentMediaTime();
    glPushGroupMarkerEXT(0, "SceneKit - Flush");
    [(SCNRenderer *)self _resolveAndDiscardGL];
    RenderTarget = C3DFramebufferGetRenderTarget(self->_framebufferInfo.frameBuffer, 0);
    RenderBuffer = C3DRenderTargetGetRenderBuffer(RenderTarget);
    glBindRenderbuffer(0x8D41u, RenderBuffer);
    [(EAGLContext *)self->_glContext presentRenderbuffer:36161];
    glPopGroupMarkerEXT();
    *(Stats + 176) = *(Stats + 176) + CACurrentMediaTime() - v12;
  }
}

- (void)setDebugOptions:(unint64_t)a3
{
  if (self->_debugOptions != a3)
  {
    [(SCNRenderer *)self setupAuthoringEnvironment];
    self->_debugOptions = a3;
    [(SCNRenderer *)self lock];
    renderingAPI = self->_renderingAPI;
    if ([(SCNRenderer *)self _showsAuthoringEnvironment])
    {
      v7 = [-[SCNRenderer _authoringEnvironment](self "_authoringEnvironment")] & 0xFFFFFFFFFFFFFF82;
    }

    else
    {
      v7 = 0;
    }

    v8 = (a3 << 6) & 0x40 | (a3 >> 1) & 1 | ((a3 << 60) >> 63) & 0x28 | ((a3 << 53) >> 63) & 0x14 | v7;
    if ((a3 & 4) != 0)
    {
      v10 = C3DIsRunningInXcode();
      v11 = v8 | 0x1000;
      if (v10)
      {
        v11 = v8;
      }

      v9 = v11 | 0x200;
    }

    else
    {
      v9 = (a3 << 6) & 0x40 | (a3 >> 1) & 1 | ((a3 << 60) >> 63) & 0x28 | ((a3 << 53) >> 63) & 0x14 | v7 & 0xFFFFFFFFFFFFEDFFLL;
    }

    v12 = v9 & 0xFFFFFFFFFFFFFF7FLL | (((a3 >> 4) & 1) << 7);
    v13 = v12 & 0xFFFFFFFFFFFFFBFFLL;
    if ((a3 & 0x20) != 0)
    {
      v13 = v12 | 0x400;
    }

    if (renderingAPI)
    {
      v12 = v13;
    }

    v14 = (a3 << 6) & 0x4000 | (16 * a3) & 0xA800 | (((a3 >> 12) & 1) << 17) | v12 & 0xFFFFFFFFFFFD17FFLL;
    [(SCNRenderer *)self set_showsAuthoringEnvironment:v14 != 0];
    [-[SCNRenderer _authoringEnvironment](self "_authoringEnvironment")];
    if (!renderingAPI)
    {
      RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);
      [(SCNMTLRenderContext *)RenderContext setDebugOptions:?];
    }

    [(SCNRenderer *)self unlock];
  }
}

- (BOOL)usesReverseZ
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = [(SCNMTLRenderContext *)renderContext reverseZ];
  }

  return renderContext;
}

- (void)setUsesReverseZ:(BOOL)a3
{
  v3 = a3;
  if ([(SCNRenderer *)self usesReverseZ]!= a3)
  {
    renderContext = self->_renderContext;

    [(SCNMTLRenderContext *)renderContext setReverseZ:v3];
  }
}

- (void)_reloadDebugOptions
{
  if ([(SCNRenderer *)self _showsAuthoringEnvironment])
  {
    v3 = [-[SCNRenderer _authoringEnvironment](self "_authoringEnvironment")];
    v4 = v3 & 8 | (2 * (v3 & 1)) | (v3 >> 6) & 1 | (((v3 >> 4) & 1) << 10) | (v3 >> 7) & 4 | (v3 >> 3) & 0x10 | (v3 >> 5) & 0x20 | (v3 >> 4) & 0x80 | (v3 >> 6) & 0x100 | (v3 >> 4) & 0xA00 | (v3 >> 5) & 0x1000;
  }

  else
  {
    v4 = 0;
  }

  self->_debugOptions = self->_debugOptions & 0x60 | v4;
}

- (void)set_disableLinearRendering:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 121) = v3 & 0x80 | *(self + 121) & 0x7F;
}

- (BOOL)_enableARMode
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = [(SCNMTLRenderContext *)renderContext enableARMode];
  }

  return renderContext;
}

- (void)set_enableARMode:(BOOL)a3
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    [(SCNMTLRenderContext *)renderContext setEnableARMode:a3];
  }
}

- (BOOL)_shouldDelegateARCompositing
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    LOBYTE(renderContext) = [(SCNMTLRenderContext *)renderContext shouldDelegateARCompositing];
  }

  return renderContext;
}

- (void)set_shouldDelegateARCompositing:(BOOL)a3
{
  renderContext = self->_renderContext;
  if (renderContext)
  {
    [(SCNMTLRenderContext *)renderContext setShouldDelegateARCompositing:a3];
  }
}

- (BOOL)_collectCompilationErrors
{
  RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
  if (RendererContextGL)
  {

    return C3DRendererContextGetCompilationErrorsCollection(RendererContextGL);
  }

  else
  {
    RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);
    if (self->_renderContext)
    {

      return [(SCNMTLRenderContext *)RenderContext collectsCompilationErrors];
    }

    else
    {
      return 0;
    }
  }
}

- (void)set_collectCompilationErrors:(BOOL)a3
{
  v3 = a3;
  RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
  if (RendererContextGL)
  {
    C3DRendererContextSetCompilationErrorsCollection(RendererContextGL, v3);
  }

  RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);
  if (self->_renderContext)
  {

    [(SCNMTLRenderContext *)RenderContext setCollectsCompilationErrors:v3];
  }
}

- (id)_compilationErrors
{
  snapshotRenderer = self->_snapshotRenderer;
  if (snapshotRenderer)
  {

    return [(SCNRenderer *)snapshotRenderer _compilationErrors];
  }

  else
  {
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
    if (RendererContextGL)
    {

      return C3DRendererContextGetCompilationErrors(RendererContextGL);
    }

    else
    {
      RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);
      if (self->_renderContext)
      {

        return [(SCNMTLRenderContext *)RenderContext compilationErrors];
      }

      else
      {
        return 0;
      }
    }
  }
}

- (void)set_showsAuthoringEnvironment:(BOOL)a3
{
  if (self->_showAuthoringEnvironment != a3)
  {
    self->_showAuthoringEnvironment = a3;
    if (a3)
    {
      [(SCNRenderer *)self setupAuthoringEnvironment];
    }

    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
    if (RendererContextGL)
    {
      C3DAnimationManagerSetPausedForEditing(RendererContextGL, a3);
    }

    RenderContext = C3DEngineContextGetRenderContext(self->_engineContext);
    if (self->_renderContext)
    {
      [(SCNMTLRenderContext *)RenderContext setShowsAuthoringEnvironment:a3];
    }

    [(SCNRenderer *)self _reloadDebugOptions];
  }
}

- (void)setupAuthoringEnvironment
{
  if (!self->_authoringEnvironment)
  {
    [(SCNRenderer *)self lock];
    if (self->_privateRendererOwner)
    {
      privateRendererOwner = self->_privateRendererOwner;
    }

    else
    {
      privateRendererOwner = self;
    }

    self->_authoringEnvironment = [SCNAuthoringEnvironment authoringEnvironmentForSceneRenderer:privateRendererOwner createIfNeeded:1];
    [(SCNRenderer *)self _reloadDebugOptions];

    [(SCNRenderer *)self unlock];
  }
}

- (SCNVector4)_viewport
{
  x = self->__viewport.x;
  y = self->__viewport.y;
  z = self->__viewport.z;
  w = self->__viewport.w;
  result.w = w;
  result.z = z;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)currentViewport
{
  v2 = [(SCNRenderer *)self _engineContext];
  if (v2)
  {
    Viewport = C3DEngineContextGetViewport(v2);
    v4 = vcvt_hight_f64_f32(Viewport);
    v5 = vcvtq_f64_f32(Viewport.n128_u64[0]);
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v4 = *(MEMORY[0x277CBF3A0] + 16);
  }

  v6 = v5.f64[1];
  v7 = v4.f64[1];
  result.size.width = v4.f64[0];
  result.origin.x = v5.f64[0];
  result.size.height = v7;
  result.origin.y = v6;
  return result;
}

- (void)set_viewport:(SCNVector4)a3
{
  x = a3.x;
  self->__viewport = a3;
  y = a3.y;
  w = a3.w;
  z = a3.z;
  v4 = [(SCNRenderer *)self _engineContext];
  if (v4)
  {
    v5 = v4;
    C3DEngineContextSetDrawableSize(v4, COERCE_DOUBLE(__PAIR64__(LODWORD(w), LODWORD(z))));
    [(SCNRenderer *)self adjustViewportForRendering:COERCE_DOUBLE(__PAIR64__(LODWORD(y), LODWORD(x)))];

    C3DEngineContextSetViewport(v6, v5);
  }
}

- (void)set_drawableSafeAreaInsets:(SCNRenderer *)self
{
  v4 = v2;
  *self->__drawableSafeAreaInsets = v2;
  v3 = [(SCNRenderer *)self _engineContext];
  if (v3)
  {

    C3DEngineContextSetDrawableSafeAreaInsets(v3, v4);
  }
}

- (SCNNode)audioListener
{
  Scene = C3DEngineContextGetScene(self->_engineContext);
  if (Scene)
  {
    v4 = Scene;
    C3DSceneLock(Scene);
    Listener = C3DAudioManagerGetListener(self->_engineContext);
    ObjCWrapper = C3DEntityGetObjCWrapper(Listener);
    C3DSceneUnlock(v4);
    return ObjCWrapper;
  }

  else
  {
    v8 = C3DAudioManagerGetListener(self->_engineContext);

    return C3DEntityGetObjCWrapper(v8);
  }
}

- (void)setAudioListener:(id)a3
{
  Scene = C3DEngineContextGetScene(self->_engineContext);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SCNRenderer_setAudioListener___block_invoke;
  v6[3] = &unk_2782FC950;
  v6[4] = self;
  v6[5] = a3;
  [SCNTransaction postCommandWithContext:Scene object:self applyBlock:v6];
}

unint64_t __32__SCNRenderer_setAudioListener___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 208);
  v2 = [*(a1 + 40) nodeRef];

  return C3DAudioManagerSetListener(v1, v2);
}

- (void)_drawWithJitteringPresentationMode
{
  v3 = CACurrentMediaTime();

  [(SCNRenderer *)self _drawAtTime:v3];
}

- (void)_renderSceneWithEngineContext:(__C3DEngineContext *)a3 sceneTime:(double)a4
{
  if (!a3)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  C3DEngineContextResetNextFrameTime(a3);
  C3DEngineContextSetSceneTime(a3, a4);
  Scene = C3DEngineContextGetScene(a3);
  if (Scene)
  {
    v16 = Scene;
    RendererContextGL = C3DEngineContextGetRendererContextGL(a3);
    ResourceManager = C3DEngineContextGetResourceManager(a3);
    if (!self->_renderContext)
    {
      if (!RendererContextGL)
      {
        v19 = scn_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          C3DEngineContextRenderScene_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
        }
      }

      C3DResourceManagerLockVRAMResourceAccess(ResourceManager);
      C3DRendererContextInvalidateCache(RendererContextGL);
    }

    AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(a3, 0);
    if (AuthoringEnvironment)
    {
      C3DAuthoringEnvironmentBeginFrame(AuthoringEnvironment);
    }

    Stats = C3DEngineContextGetStats(a3);
    v29 = CACurrentMediaTime();
    EnginePipeline = C3DSceneGetEnginePipeline(v16);
    if (!EnginePipeline)
    {
      v31 = scn_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        C3DEngineContextRenderScene_cold_3(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    v92[0] = EnginePipeline;
    v92[1] = a3;
    v93 = 0u;
    v94 = 0u;
    C3DEnginePipelineApplyNotificationQueue(v92);
    *(Stats + 152) = *(Stats + 152) + CACurrentMediaTime() - v29;
    C3DEngineContextReloadShadersIfNeeded(a3);
    renderContext = self->_renderContext;
    if (renderContext)
    {
      v40 = [(SCNMTLRenderContext *)renderContext resourceManager];
      C3DSceneSourcePerformConsistencyCheck(v40);
    }

    else
    {
      C3DRendererContextPushGroupMarker(RendererContextGL, "Resource Manager Flush");
      C3DResourceManagerFlush(ResourceManager);
      C3DRendererContextPopGroupMarker();
    }

    C3DEngineContextApplyModifiers(a3, EnginePipeline);
    if (self->_viewpoints)
    {
      viewpointCoordinateSpace = self->_viewpointCoordinateSpace;
    }

    else
    {
      viewpointCoordinateSpace = 2;
    }

    C3DEngineContextSetViewpointCoordinateSpace(a3, viewpointCoordinateSpace);
    viewpoints = self->_viewpoints;
    if (viewpoints)
    {
      v43 = [(NSArray *)viewpoints objectAtIndexedSubscript:0];
      v44 = v43;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      if (v43)
      {
        [v43 viewport];
        if (*(&v91 + 1) != *&v91)
        {
          [(SCNRenderer *)self setUsesReverseZ:*(&v91 + 1) < *&v91, *(&v91 + 1)];
        }
      }

      v100 = __invert_f4(*_PromotedConst);
      v83 = v100.columns[1];
      v84 = v100.columns[0];
      v81 = v100.columns[3];
      v82 = v100.columns[2];
      v45 = [objc_msgSend(objc_msgSend(objc_msgSend(v44 "passDescriptor")];
      v46 = [v45 textureType];
      v47 = v46;
      v50 = v46 == 5 || v46 == 3 || v46 == 8;
      v51 = [(SCNMTLRenderContext *)self->_renderContext features];
      v52 = [(SCNMTLRenderContext *)self->_renderContext features];
      v53 = v47 == 2;
      v54 = [(NSArray *)self->_viewpoints count];
      if (v54)
      {
        v55 = v54;
        v79 = ResourceManager;
        v80 = RendererContextGL;
        v56 = v50;
        v57 = 0;
        v58 = 0;
        v59 = 1;
        v60 = v56 & (v51 >> 5);
        v61 = v53 & (v52 >> 7);
        do
        {
          C3DEngineContextSetRenderPassDescriptorForEye(a3, [-[NSArray objectAtIndexedSubscript:](self->_viewpoints objectAtIndexedSubscript:{v57, v79, v80), "passDescriptor"}], v58);
          v59 = v59 && v45 == [objc_msgSend(objc_msgSend(objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_viewpoints objectAtIndexedSubscript:{v57), "passDescriptor"), "colorAttachments"), "objectAtIndexedSubscript:", 0), "texture"}];
          v57 = ++v58;
        }

        while (v55 > v58);
        if (v61)
        {
          v62 = 2;
        }

        else
        {
          v62 = v60;
        }

        if (((v55 != 1 && v59) & (v61 | v60)) != 0)
        {
          v63 = v62;
        }

        else
        {
          v63 = 0;
        }

        C3DEngineContextSetPreferredRenderMode(a3, v63);
        C3DEngineContextSetEyeCount(a3, v55);
        ResourceManager = v79;
        RendererContextGL = v80;
        v64 = 0;
        for (i = 0; i < v55; v64 = i)
        {
          v66 = [(NSArray *)self->_viewpoints objectAtIndexedSubscript:v64];
          v67 = v66;
          v68 = 0uLL;
          if (v66)
          {
            [v66 viewport];
            v68 = vcvt_hight_f32_f64(vcvt_f32_f64(v96), v97);
          }

          C3DEngineContextSetViewportAtIndex(a3, i, v68);
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          [v67 simdViewMatrix];
          v85 = v69;
          v86 = v70;
          v87 = v71;
          v88 = v72;
          [v67 simdProjectionMatrix];
          v85 = v73;
          v86 = v74;
          v87 = v75;
          v88 = v76;
          if (*(&v75 + 2) > 0.0)
          {
            v77 = 0;
            v95[0] = v73;
            v95[1] = v74;
            v95[2] = v75;
            v95[3] = v76;
            v96 = 0u;
            v97 = 0u;
            v98 = 0u;
            v99 = 0u;
            do
            {
              *(&v96 + v77 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v84, COERCE_FLOAT(v95[v77])), v83, *&v95[v77], 1), v82, v95[v77], 2), v81, v95[v77], 3);
              ++v77;
            }

            while (v77 != 4);
            v85 = v96;
            v86 = v97;
            v87 = v98;
            v88 = v99;
          }

          C3DEngineContextSetEyeMatrix4x4(a3, 0, &v85, i++);
        }
      }

      else
      {
        C3DEngineContextSetPreferredRenderMode(a3, 0);
        C3DEngineContextSetEyeCount(a3, 0);
      }
    }

    else
    {
      [(SCNRenderer *)self adjustViewportForRendering:*&self->__viewport.x];
      C3DEngineContextSetViewport(v78, a3);
    }

    if (self->_renderContext)
    {
      C3DEngineContextRenderWithRenderGraph(a3);
    }

    else
    {
      C3DEngineContextRenderMainTechnique(a3);
    }

    if (!self->_renderContext)
    {
      C3DRendererContextUnbindTextureUnits(RendererContextGL);
      C3DRendererContextResetToDefaultStates(RendererContextGL);
      C3DRendererContextResetVolatileObjects(RendererContextGL);
      C3DResourceManagerUnlockVRAMResourceAccess(ResourceManager);
    }
  }
}

- (BOOL)_drawSceneWithNewRenderer:(__C3DScene *)a3
{
  if (a3)
  {
    v5 = *(self + 121);
    if ((v5 & 0x18) == 8)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(SCNRenderer *)self isJitteringEnabled];
      v5 = *(self + 121);
    }

    if ((v5 & 4) == 0)
    {
      +[SCNTransaction lock];
    }

    C3DSceneLock(a3);
    v7 = [(SCNMTLResourceManager *)self->_renderContext commandQueue];
    if ((*(self + 288) & 4) != 0)
    {
      C3DEngineStatsReset(v7);
    }

    else
    {
      *(v7 + 12) = 0;
    }

    C3DSceneBumpFrameStamp(a3);
    if ((*(self + 121) & 0x40) != 0)
    {
      [(SCNRenderer *)self _update:a3];
    }

    if (v6)
    {
      C3DEngineContextSetJitteringEnabled(self->_engineContext, 1);
    }

    C3DEngineContextSetTemporalAntialiasingEnabled(self->_engineContext, [(SCNRenderer *)self isTemporalAntialiasingEnabled]);
    [(SCNRenderer *)self _renderSceneWithEngineContext:self->_engineContext sceneTime:self->_currentSceneTime];
    if (v6)
    {
      C3DEngineContextSetJitteringEnabled(self->_engineContext, 1);
      [(SCNRenderer *)self _endFrame];
      for (i = 0; ; ++i)
      {
        [(SCNRenderer *)self _beginFrame];
        C3DEngineContextSetUpdateMainFramebuffer(self->_engineContext, i == 80);
        C3DEngineContextSetJitteringStep(self->_engineContext, i);
        [(SCNRenderer *)self _renderSceneWithEngineContext:self->_engineContext sceneTime:self->_currentSceneTime];
        if (i == 80)
        {
          break;
        }

        [(SCNRenderer *)self _endFrame];
      }

      C3DEngineContextSetJitteringEnabled(self->_engineContext, 0);
    }

    [(SCNRenderer *)self _computeNextFrameTime];
    [(SCNRenderer *)self set_nextFrameTime:?];
    [(SCNMTLRenderContext *)self->_renderContext endFrameSceneSpecifics];
    C3DSceneUnlock(a3);
    if ((*(self + 121) & 4) == 0)
    {
      +[SCNTransaction unlock];
    }

    [(SCNRenderer *)self updateAndDrawStatisticsIfNeeded];
  }

  return a3 != 0;
}

- (BOOL)_drawSceneWithLegacyRenderer:(__C3DScene *)a3
{
  if (a3)
  {
    v5 = (*(self + 121) & 0x18) != 8 && [(SCNRenderer *)self isJitteringEnabled];
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
    if ((*(self + 121) & 4) == 0)
    {
      Viewport = C3DEngineContextGetViewport(self->_engineContext);
      *self->_anon_58 = vcvt_u32_f32(vrndp_f32(*&vextq_s8(Viewport, Viewport, 8uLL)));
    }

    Stats = C3DRendererContextGetStats(RendererContextGL);
    if ((*(self + 288) & 4) != 0)
    {
      C3DEngineStatsReset(Stats);
    }

    else
    {
      *(Stats + 12) = 0;
    }

    if ((*(self + 121) & 4) == 0)
    {
      +[SCNTransaction lock];
    }

    C3DSceneLock(a3);
    v9 = [MEMORY[0x277CD9388] currentContext];
    [MEMORY[0x277CD9388] setCurrentContext:self->_glContext];
    C3DSceneBumpFrameStamp(a3);
    [(SCNRenderer *)self _update:a3];
    if (v5)
    {
      C3DEngineContextSetJitteringEnabled(self->_engineContext, 1);
    }

    engineContext = self->_engineContext;
    currentSceneTime = self->_currentSceneTime;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__SCNRenderer__drawSceneWithLegacyRenderer___block_invoke;
    v14[3] = &unk_2782FB608;
    v14[4] = self;
    C3DEngineContextRenderScene(engineContext, currentSceneTime, 0, v14);
    if (v5)
    {
      C3DEngineContextSetJitteringEnabled(self->_engineContext, 1);
      C3DEngineContextSetJitteringStep(self->_engineContext, 0);
      for (i = 0; i != 81; ++i)
      {
        C3DEngineContextSetUpdateMainFramebuffer(self->_engineContext, i == 80);
        C3DEngineContextSetJitteringStep(self->_engineContext, i);
        C3DEngineContextRenderScene(self->_engineContext, self->_currentSceneTime, 0, 0);
      }

      C3DEngineContextSetJitteringEnabled(self->_engineContext, 0);
    }

    [MEMORY[0x277CD9388] setCurrentContext:v9];
    [(SCNRenderer *)self _computeNextFrameTime];
    [(SCNRenderer *)self set_nextFrameTime:?];
    C3DSceneUnlock(a3);
    if ((*(self + 121) & 4) == 0)
    {
      +[SCNTransaction unlock];
    }

    C3DEngineContextSetForceShaderReload(self->_engineContext, 0);
  }

  return a3 != 0;
}

- (BOOL)_needsRedrawAsap
{
  if (![(SCNRenderer *)self _needsRepetitiveRedraw])
  {
    if (C3DEngineContextGetNextFrameTime(self->_engineContext) == INFINITY)
    {
      Scene = C3DEngineContextGetScene(self->_engineContext);
      if (!Scene)
      {
        return Scene;
      }

      v4 = Scene;
      PointOfView = C3DEngineContextGetPointOfView(self->_engineContext);
      if (PointOfView)
      {
        Camera = C3DNodeGetCamera(PointOfView);
        if (Camera)
        {
          v7 = Camera;
          if (C3DCameraGetWantsHDR(Camera) && (C3DCameraGetWantsExposureAdaptation(v7) & 1) != 0)
          {
            ExposureAdaptationDarkeningSpeedFactor = C3DCameraGetExposureAdaptationDarkeningSpeedFactor(v7);
            ExposureAdaptationBrighteningSpeedFactor = C3DCameraGetExposureAdaptationBrighteningSpeedFactor(v7);
            if (ExposureAdaptationDarkeningSpeedFactor < ExposureAdaptationBrighteningSpeedFactor)
            {
              ExposureAdaptationBrighteningSpeedFactor = ExposureAdaptationDarkeningSpeedFactor;
            }

            v10 = ExposureAdaptationBrighteningSpeedFactor;
            v11 = ExposureAdaptationBrighteningSpeedFactor + 1.0;
            if (v10 <= 0.01)
            {
              v11 = 1.01;
            }

            v12 = (5.0 / logf(v11) * 60.0);
            if (!v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (C3DCameraGetMotionBlurIntensity(v7) == 0.0)
            {
              goto LABEL_24;
            }

            v12 = 2;
          }

          FXContext = C3DEngineContextGetFXContext(self->_engineContext);
          if (FXContext)
          {
            v14 = *(FXContext + 116);
          }

          else
          {
            v14 = 0;
          }

          if (self->_adaptativeTechniqueTimeStamp != v14 || (adaptativeState0 = self->_adaptativeState0, adaptativeState0 != C3DSceneGetStateStamp(v4)))
          {
            self->_adaptativeState0 = C3DSceneGetStateStamp(v4);
            self->_adaptativeEndFrame = C3DSceneGetFrameStamp(v4) + v12;
            self->_adaptativeTechniqueTimeStamp = v14;
          }

          if (C3DSceneGetFrameStamp(v4) < self->_adaptativeEndFrame)
          {
            goto LABEL_2;
          }
        }
      }
    }

LABEL_24:
    LOBYTE(Scene) = 0;
    return Scene;
  }

LABEL_2:
  LOBYTE(Scene) = 1;
  return Scene;
}

- (double)_computeNextFrameTime
{
  NextFrameTime = C3DEngineContextGetNextFrameTime(self->_engineContext);
  if ([(SCNRenderer *)self _needsRedrawAsap])
  {
    v4 = CACurrentMediaTime();
    if (NextFrameTime >= v4)
    {
      return v4;
    }
  }

  return NextFrameTime;
}

- (void)_drawScene:(__C3DScene *)a3
{
  if (!self->_engineContext)
  {
    goto LABEL_8;
  }

  if (self->_renderContext)
  {
    if ([(SCNRenderer *)self _drawSceneWithNewRenderer:a3])
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = [(SCNRenderer *)self _drawSceneWithLegacyRenderer:a3];
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(self->_engineContext, 0);
  if (AuthoringEnvironment)
  {
    C3DAuthoringEnvironmentEndFrame(AuthoringEnvironment);
  }

  if (!v4)
  {
LABEL_8:
    [(SCNRenderer *)self set_nextFrameTime:a3, INFINITY];

    [(SCNRenderer *)self _clearBackBuffer];
  }
}

- (void)_updateSystemTimeAndDeltaTimeWithCurrentTime:(double)a3
{
  forceSystemTime = self->_forceSystemTime;
  if (forceSystemTime == 0.0)
  {
    [(SCNRenderer *)self _systemTime];
    lastSystemTime = v7;
    forceSystemTime = a3;
  }

  else if (self->_lastSystemTime == 0.0)
  {
    lastSystemTime = self->_forceSystemTime;
  }

  else
  {
    lastSystemTime = self->_lastSystemTime;
  }

  [(SCNRenderer *)self set_systemTime:forceSystemTime];
  v8 = forceSystemTime - lastSystemTime;
  if (lastSystemTime == 0.0)
  {
    v8 = 0.0;
  }

  [(SCNRenderer *)self set_deltaTime:v8];
}

- (void)_draw
{
  v3 = CACurrentMediaTime();

  [(SCNRenderer *)self _drawAtTime:v3];
}

- (void)_drawAtTime:(double)a3
{
  v4 = *(self + 121);
  if ((v4 & 0x40) != 0)
  {
    [(SCNRenderer *)self _updateSystemTimeAndDeltaTimeWithCurrentTime:a3];
    v4 = *(self + 121);
  }

  if ((v4 & 4) != 0)
  {
    [(SCNRenderer *)self _installViewport];
  }

  else if (self->_renderingAPI)
  {
    if ([MEMORY[0x277CD9388] currentContext] != self->_glContext)
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(SCNRenderer *)v5 _deleteGLFramebuffer:v6];
      }
    }

    if (glGetError())
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SCNRenderer _drawAtTime:];
      }
    }

    C3DEngineContextGetRendererContextGL(self->_engineContext);
    *v14.i64 = C3DRendererContextGetViewport();
    v50 = v14;
    C3DEngineContextSetDrawableSize(self->_engineContext, *vextq_s8(v14, v14, 8uLL).i64);
    [(SCNRenderer *)self adjustViewportForRendering:*v50.i64];
    C3DEngineContextSetViewport(v15, self->_engineContext);
  }

  [(SCNRenderer *)self lock:a3];
  engineContext = self->_engineContext;
  if (engineContext)
  {
    Scene = C3DEngineContextGetScene(engineContext);
  }

  else
  {
    Scene = 0;
  }

  transitionContext = self->_transitionContext;
  if (transitionContext)
  {
    v19 = transitionContext->_renderers[0];
    [(SCNRenderer *)self _systemTime];
    v21 = v20;
    v22 = [(SCNRenderer *)self _prepareSKRenderer];
    [(SKTransition *)[(SCNRendererTransitionContext *)self->_transitionContext transition] _duration];
    v24 = 1.0;
    if (v23 == 0.0)
    {
      v25 = 1.0;
    }

    else
    {
      v25 = v23;
    }

    [(SCNRendererTransitionContext *)self->_transitionContext transitionStartTime];
    v27 = (v21 - v26) / v25;
    if (v27 <= 1.0)
    {
      v24 = v27;
    }

    v52 = 0;
    v51 = 0;
    [v22 settingsForTransition:-[SCNRendererTransitionContext transition](self->_transitionContext atTime:"transition") renderIncomingToTexture:&v52 + 1 renderOutgoingToTexture:&v52 renderIncomingToScreen:&v51 + 1 renderOutgoingToScreen:{&v51, v24}];
    v28 = *self->_anon_58;
    v29 = HIDWORD(*self->_anon_58);
    if (v52 == 1)
    {
      v30 = [(SCNRendererTransitionContext *)self->_transitionContext prepareRendererAtIndex:0 withScene:[(SCNRendererTransitionContext *)self->_transitionContext outgoingScene] renderSize:[(SCNRendererTransitionContext *)self->_transitionContext outgoingPointOfView] pointOfView:self parentRenderer:v28, v29];
      [(SCNRenderer *)self _viewport];
      [v30 set_viewport:?];
      if (!v19 || ([objc_msgSend(v30 "scene")] & 1) == 0)
      {
        [v30 renderAtTime:v21];
      }
    }

    else
    {
      v30 = 0;
    }

    if (HIBYTE(v52) == 1)
    {
      if (v52)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v30 = [(SCNRendererTransitionContext *)self->_transitionContext prepareRendererAtIndex:1 withScene:self->_scene renderSize:self->_pointOfView pointOfView:self parentRenderer:v28, v29];
      [(SCNRenderer *)self _viewport];
      [v30 set_viewport:?];
      if (!v19 || ([objc_msgSend(v30 "scene")] & 1) == 0)
      {
        [v30 renderAtTime:v21];
      }
    }

    else
    {
      v31 = 0;
    }

    if (HIBYTE(v51) == 1)
    {
      [(SCNRenderer *)self _drawScene:Scene];
    }

    if (v51 == 1)
    {
      [-[SCNRendererTransitionContext prepareRendererAtIndex:withScene:renderSize:pointOfView:parentRenderer:](self->_transitionContext prepareRendererAtIndex:0 withScene:-[SCNRendererTransitionContext outgoingScene](self->_transitionContext renderSize:"outgoingScene") pointOfView:-[SCNRendererTransitionContext outgoingPointOfView](self->_transitionContext parentRenderer:{"outgoingPointOfView"), self, v28, v29), "_drawAtTime:", v21}];
    }

    if (self->_renderingAPI)
    {
      v32 = [(SCNRendererTransitionContext *)self->_transitionContext transition];
      v33 = [v30 textureID];
      v34 = [v31 textureID];
      *&v35 = v24;
      [v22 renderTransition:v32 withInputTexture:v33 outputTexture:v34 inputTextureSize:v28 outputTextureSize:v29 time:{v28, v29, v35}];
    }

    else
    {
      v36 = [v30 MTLTexture];
      v37 = [v31 MTLTexture];
      renderContext = self->_renderContext;
      v39 = HIBYTE(v51) | v51;
      RenderGraph = C3DEngineContextGetRenderGraph(self->_engineContext);
      C3DRenderGraphSpriteKitTransitionBegin(RenderGraph, (v39 & 1) == 0);
      v41 = [(SCNRendererTransitionContext *)self->_transitionContext transition];
      v43 = [(SCNMTLRenderContext *)renderContext currentRenderCommandEncoder];
      v44 = [(SCNMTLRenderContext *)renderContext currentRenderPassDescriptor];
      v45 = [(SCNMTLRenderContext *)renderContext commandQueue];
      v42 = v24;
      *&v46 = v42;
      [v22 renderTransition:v41 withInputTexture:v36 outputTexture:v37 time:v43 encoder:v44 pass:v45 commandQueue:v46];
      v47 = C3DEngineContextGetRenderGraph(self->_engineContext);
      C3DRenderGraphSpriteKitTransitionEnd(v47);
    }

    [(SCNRenderer *)self set_nextFrameTime:CACurrentMediaTime()];
    if (v24 == 1.0)
    {
      if ([(SKTransition *)[(SCNRendererTransitionContext *)self->_transitionContext transition] pausesIncomingScene])
      {
        [(SCNScene *)self->_scene setPaused:0];
      }

      v48 = self->_transitionContext;
      completionHandler = v48->completionHandler;
      if (completionHandler)
      {
        completionHandler[2]();
        v48 = self->_transitionContext;
      }

      self->_transitionContext = 0;
    }
  }

  else
  {
    [(SCNRenderer *)self _drawScene:Scene];
  }

  if (!self->_pointOfView && Scene == [(SCNScene *)self->_scene sceneRef])
  {
    [(SCNRenderer *)self _updatePointOfView];
  }

  [(SCNRenderer *)self unlock];
}

- (void)_renderAtTime:(double)a3
{
  [(SCNRenderer *)self _getFrameIndex];
  kdebug_trace();
  self->_forceSystemTime = a3;
  [(SCNRenderer *)self _drawAtTime:a3];
  self->_forceSystemTime = 0.0;

  kdebug_trace();
}

- (void)renderAtTime:(CFTimeInterval)time
{
  [(SCNRenderer *)self _beginFrame];
  [(SCNRenderer *)self _renderAtTime:time];
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self _resolveAndDiscardGL];
  }

  [(SCNRenderer *)self _endFrame];
}

- (void)renderWithViewport:(CGRect)viewport commandBuffer:(id)commandBuffer passDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor
{
  *(self + 121) &= ~0x40u;
  -[SCNRenderer _renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:](self, "_renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:", 0, renderPassDescriptor, [commandBuffer commandQueue], commandBuffer, 0.0, viewport.origin.x, viewport.origin.y, viewport.size.width, viewport.size.height);
  *(self + 121) |= 0x40u;
}

- (void)renderAtTime:(CFTimeInterval)time viewport:(CGRect)viewport commandBuffer:(id)commandBuffer passDescriptor:(MTLRenderPassDescriptor *)renderPassDescriptor
{
  height = viewport.size.height;
  width = viewport.size.width;
  y = viewport.origin.y;
  x = viewport.origin.x;
  v14 = [commandBuffer commandQueue];

  [(SCNRenderer *)self _renderAtTime:0 viewport:renderPassDescriptor encoder:v14 passDescriptor:commandBuffer commandQueue:time commandBuffer:x, y, width, height];
}

- (void)_renderAtTime:(double)a3 viewport:(CGRect)a4 encoder:(id)a5 passDescriptor:(id)a6 commandQueue:(id)a7 commandBuffer:(id)a8
{
  y = a4.origin.y;
  width = a4.size.width;
  v36 = *&a4.size.height;
  x = a4.origin.x;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(SCNRenderer *)v14 _renderAtTime:v15 viewport:v16 encoder:v17 passDescriptor:v18 commandQueue:v19 commandBuffer:v20, v21];
    }
  }

  v22 = [objc_msgSend(objc_msgSend(objc_msgSend(a6 colorAttachments];
  if (v22 == 2)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2 * (v22 == 4);
  }

  [(SCNRenderer *)self set_antialiasingMode:v23];
  [(SCNMTLRenderContext *)self->_renderContext setClientRenderPassDescriptor:a6];
  v24 = [objc_msgSend(a6 "depthAttachment")];
  if (a5)
  {
    if (v24)
    {
      if ([(SCNMTLRenderContext *)self->_renderContext reverseZ])
      {
        [objc_msgSend(a6 "depthAttachment")];
        if (v25 == 1.0 && (_renderAtTime_viewport_encoder_passDescriptor_commandQueue_commandBuffer__done & 1) == 0)
        {
          _renderAtTime_viewport_encoder_passDescriptor_commandQueue_commandBuffer__done = 1;
          v26 = scn_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [SCNRenderer _renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:];
          }
        }
      }
    }
  }

  [(SCNMTLRenderContext *)self->_renderContext setClientCommandQueue:a7];
  [(SCNMTLRenderContext *)self->_renderContext setClientRenderCommandEncoder:a5];
  [(SCNMTLRenderContext *)self->_renderContext setClientCommandBuffer:a8];
  v27.f64[0] = width;
  v28.f64[0] = x;
  v27.f64[1] = v37;
  *self->_anon_58 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(v27)));
  v28.f64[1] = y;
  self->__viewport = vcvt_hight_f32_f64(vcvt_f32_f64(v28), v27);
  [(SCNRenderer *)self adjustViewportForRendering:?];
  v41 = v29;
  C3DEngineContextSetViewport(v29, self->_engineContext);
  v30 = [objc_msgSend(objc_msgSend(a6 "colorAttachments")];
  if (!v30)
  {
    v30 = [objc_msgSend(objc_msgSend(a6 "colorAttachments")];
  }

  engineContext = self->_engineContext;
  if (a6)
  {
    v42 = [v30 width];
    v32 = [v30 height];
    *&v33 = v42;
    *(&v33 + 1) = v32;
    v34 = v33;
  }

  else
  {
    *&v34 = vextq_s8(v41, v41, 8uLL).u64[0];
  }

  C3DEngineContextSetDrawableSize(engineContext, v34);
  if (v30)
  {
    [(SCNMTLRenderContext *)self->_renderContext beginFrame:v30];
    [(SCNRenderer *)self _renderAtTime:a3];
    [(SCNMTLRenderContext *)self->_renderContext endFrameWaitingUntilCompleted:0 status:0 error:?];
  }

  else
  {
    v35 = scn_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:];
    }
  }
}

- (void)renderWithCommandBuffer:(id)a3 viewPoints:(id)a4
{
  self->_viewpoints = a4;
  self->_viewpointCoordinateSpace = 0;
  if (a4)
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    v6 = [a4 objectAtIndexedSubscript:0];
    if (v6)
    {
      [v6 viewport];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
      v7 = 0u;
    }

    -[SCNRenderer renderWithViewport:commandBuffer:passDescriptor:](self, "renderWithViewport:commandBuffer:passDescriptor:", a3, [-[NSArray objectAtIndexedSubscript:](self->_viewpoints objectAtIndexedSubscript:{0, v7, v8, v9), "passDescriptor"}], 0.0, 0.0, 0.0, 0.0);
    self->_viewpoints = 0;
  }
}

- (void)renderWithCommandBuffer:(id)a3 viewpoints:(id)a4 coordinateSpace:(unint64_t)a5
{
  self->_viewpoints = a4;
  self->_viewpointCoordinateSpace = a5;
  if (a4)
  {
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    v7 = [a4 objectAtIndexedSubscript:0];
    if (v7)
    {
      [v7 viewport];
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
      v8 = 0u;
    }

    -[SCNRenderer renderWithViewport:commandBuffer:passDescriptor:](self, "renderWithViewport:commandBuffer:passDescriptor:", a3, [-[NSArray objectAtIndexedSubscript:](self->_viewpoints objectAtIndexedSubscript:{0, v8, v9, v10), "passDescriptor"}], 0.0, 0.0, 0.0, 0.0);
    self->_viewpoints = 0;
  }
}

- (void)renderAtTime:(double)a3 encoder:(id)a4 commandQueue:(id)a5 passDescriptor:(id)a6 viewPoints:(id)a7
{
  self->_viewpoints = a7;
  self->_viewpointCoordinateSpace = 0;
  if (a7)
  {
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    v12 = [a7 objectAtIndexedSubscript:0];
    if (v12)
    {
      [v12 viewport];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
    }

    [(SCNRenderer *)self _renderAtTime:a4 viewport:a6 encoder:a5 passDescriptor:0 commandQueue:a3 commandBuffer:0.0, 0.0, 0.0, 0.0, v13, v14, v15];
    self->_viewpoints = 0;
  }
}

- (void)renderAtTime:(double)a3 encoder:(id)a4 commandQueue:(id)a5 passDescriptor:(id)a6 viewPoints:(id)a7 coordinateSpace:(unint64_t)a8
{
  self->_viewpoints = a7;
  self->_viewpointCoordinateSpace = a8;
  if (a7)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    v13 = [a7 objectAtIndexedSubscript:0];
    if (v13)
    {
      [v13 viewport];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
    }

    [(SCNRenderer *)self _renderAtTime:a4 viewport:a6 encoder:a5 passDescriptor:0 commandQueue:a3 commandBuffer:0.0, 0.0, 0.0, 0.0, v14, v15, v16];
    self->_viewpoints = 0;
  }
}

- (void)render
{
  v3 = CACurrentMediaTime();

  [(SCNRenderer *)self renderAtTime:v3];
}

- (void)_installGLContextAndSetViewport
{
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self _installContext];
    if (self->_glContext)
    {
      if (self->_renderingAPI && [MEMORY[0x277CD9388] currentContext] != self->_glContext)
      {
        v3 = scn_default_log();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
        {
          [(SCNRenderer *)v3 _deleteGLFramebuffer:v4];
        }
      }

      glViewport(0, 0, *self->_anon_58, HIDWORD(*self->_anon_58));
    }
  }
}

- (CGImage)createSnapshot:(double)a3 error:(id *)a4
{
  [(SCNRenderer *)self _beginFrame];
  [(SCNRenderer *)self _installGLContextAndSetViewport];
  [(SCNRenderer *)self _renderAtTime:a3];
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self _resolveAndDiscardGL];
    [(SCNRenderer *)self _endFrame];
    RendererContextGL = C3DEngineContextGetRendererContextGL(self->_engineContext);
    if (RendererContextGL)
    {
      v8 = RendererContextGL;
      v9 = *self->_anon_58;
      v10 = v9;
      v11 = HIDWORD(v9);
      v12 = malloc_type_malloc((4 * HIDWORD(v9) * v9), 0x100004077774924uLL);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v14 = CGBitmapContextCreate(v12, v10, v11, 8uLL, (4 * v10), DeviceRGB, 0x4001u);
      CGColorSpaceRelease(DeviceRGB);
      if (self->_renderingAPI)
      {
        if ([MEMORY[0x277CD9388] currentContext] != self->_glContext)
        {
          v15 = scn_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            [(SCNRenderer *)v15 _deleteGLFramebuffer:v16];
          }
        }
      }

      C3DRendererContextBindFramebuffer(v8, self->_framebufferInfo.frameBuffer);
      glReadPixels(0, 0, v10, v11, 0x1908u, 0x1401u, v12);
      C3DRendererContextUnbindFramebuffer(v8);
      Image = CGBitmapContextCreateImage(v14);
      CGContextRelease(v14);
      free(v12);
      v24 = CGBitmapContextCreate(0, v10, v11, 8uLL, (4 * v10), DeviceRGB, 0x4001u);
      CGContextScaleCTM(v24, 1.0, -1.0);
      CGContextTranslateCTM(v24, 0.0, -v11);
      v31.size.width = v10;
      v31.size.height = v11;
      v31.origin.x = 0.0;
      v31.origin.y = 0.0;
      CGContextDrawImage(v24, v31, Image);
      CGImageRelease(Image);
      v25 = CGBitmapContextCreateImage(v24);
      CGContextRelease(v24);
    }

    else
    {
      v26 = scn_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21BEF7000, v26, OS_LOG_TYPE_DEFAULT, "Warning: createSnapshot: no GL context", buf, 2u);
      }

      return 0;
    }
  }

  else
  {
    v29 = 0;
    *buf = 0;
    [(SCNMTLRenderContext *)self->_renderContext endFrameWaitingUntilCompleted:&v29 status:buf error:?];
    if (v29 == 4)
    {
      return C3DCreateImageWithTexture([(SCNRenderer *)self MTLTexture]);
    }

    else
    {
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [SCNRenderer createSnapshot:buf error:v27];
      }

      v25 = 0;
      if (a4)
      {
        *a4 = *buf;
      }
    }
  }

  return v25;
}

- (id)snapshotAtTime:(double)a3
{
  v3 = [(SCNRenderer *)self createSnapshot:0 error:a3];
  v4 = [MEMORY[0x277D755B8] imageWithCGImage:v3];
  CGImageRelease(v3);
  return v4;
}

- (CGImage)_createBackgroundColorImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = a3.width;
  v7 = a3.height;
  v8 = 4 * (a3.width & 0x3FFFFFFF);
  v9 = malloc_type_malloc(v8 * a3.height, 0x100004077774924uLL);
  v10 = C3DColorSpaceSRGB();
  v11 = CGBitmapContextCreate(v9, v6, v7, 8uLL, v8, v10, 0x4001u);
  CGContextSetFillColorWithColor(v11, [-[SCNRenderer backgroundColor](self "backgroundColor")]);
  v14.size.width = width;
  v14.size.height = height;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  CGContextFillRect(v11, v14);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  free(v9);
  return Image;
}

- (UIImage)snapshotAtTime:(CFTimeInterval)time withSize:(CGSize)size antialiasingMode:(SCNAntialiasingMode)antialiasingMode
{
  height = size.height;
  width = size.width;
  v8 = [(SCNRenderer *)self _createSnapshotAtTime:antialiasingMode withSize:0 antialiasingMode:time error:?];
  if (!v8)
  {
    v8 = [(SCNRenderer *)self _createBackgroundColorImageWithSize:width, height];
  }

  v9 = [MEMORY[0x277D755B8] imageWithCGImage:v8];
  CGImageRelease(v8);
  return v9;
}

- (id)snapshotAtTime:(double)a3 withSize:(CGSize)a4 antialiasingMode:(unint64_t)a5 error:(id *)a6
{
  result = [(SCNRenderer *)self _createSnapshotAtTime:a5 withSize:a6 antialiasingMode:a3 error:a4.width, a4.height];
  if (result)
  {
    v7 = result;
    v8 = [MEMORY[0x277D755B8] imageWithCGImage:result];
    CGImageRelease(v7);
    return v8;
  }

  return result;
}

- (CGImage)_createSnapshotAtTime:(double)a3 withSize:(CGSize)a4 antialiasingMode:(unint64_t)a5 error:(id *)a6
{
  height = a4.height;
  v17 = vrndx_f32(vcvt_f32_f64(a4));
  v11 = vcvtq_f64_f32(v17);
  if ((*(self + 121) & 4) == 0)
  {
    v16 = v11;
    [(SCNRenderer *)self _setBackingSize:COERCE_DOUBLE(vmovn_s64(vcvtq_u64_f64(vrndpq_f64(v11))))];
    v11 = v16;
  }

  v12 = [(SCNRenderer *)self snapshotRendererWithSize:*&v11];
  [v12 set_computedLightingEnvironmentMapsPath:{-[SCNRenderer _computedLightingEnvironmentMapsPath](self, "_computedLightingEnvironmentMapsPath")}];
  [v12 set_antialiasingMode:a5];
  LODWORD(v13) = v17.i32[1];
  [v12 set_viewport:{0.0, 0.0, *&v17, v13}];
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self lock];
  }

  v14 = [v12 createSnapshot:a6 error:a3];
  if (self->_renderingAPI)
  {
    [(SCNRenderer *)self unlock];
  }

  if (!self->_pointOfView)
  {
    -[SCNRenderer setPointOfView:](self, "setPointOfView:", [v12 pointOfView]);
    self->_pointOfViewWasSet = 0;
  }

  if ((*(self + 121) & 4) != 0)
  {

    self->_snapshotRenderer = 0;
  }

  return v14;
}

- (id)snapshotRendererWithSize:(CGSize)a3
{
  snapshotRenderer = self->_snapshotRenderer;
  if (snapshotRenderer)
  {
    height = a3.height;
    [(SCNRenderer *)snapshotRenderer _setBackingSize:COERCE_DOUBLE(vmovn_s64(vcvtq_u64_f64(vrndpq_f64(a3))))];
  }

  else
  {
    v15 = a3;
    v16 = *&a3.height;
    renderingAPI = self->_renderingAPI;
    v7 = objc_opt_class();
    if (renderingAPI)
    {
      v8 = [v7 rendererWithContext:-[SCNRenderer context](self options:{"context"), 0}];
    }

    else
    {
      v8 = [v7 rendererWithDevice:-[SCNRenderer device](self options:{"device"), 0}];
    }

    v9 = v8;
    self->_snapshotRenderer = v9;
    [(SCNRenderer *)v9 _setupOffscreenRendererWithSize:v15.width, *&v16];
  }

  [(SCNRenderer *)self lock:v15];
  +[SCNTransaction begin];
  [SCNTransaction setDisableActions:1];
  [SCNTransaction setImmediateMode:1];
  [(SCNScene *)[(SCNRenderer *)self scene] lock];
  [(SCNRenderer *)self _contentsScaleFactor];
  *&v10 = v10;
  self->_snapshotRenderer->_contentScaleFactor = *&v10;
  [(SCNRenderer *)self->_snapshotRenderer setScene:[(SCNRenderer *)self scene]];
  [(SCNRenderer *)self->_snapshotRenderer setOverlaySKScene:[(SCNRenderer *)self overlaySKScene]];
  [(SCNRenderer *)self->_snapshotRenderer setJitteringEnabled:[(SCNRenderer *)self isJitteringEnabled]];
  [(SCNRenderer *)self->_snapshotRenderer setJitteringEnabled:[(SCNRenderer *)self isJitteringEnabled]];
  [(SCNRenderer *)self->_snapshotRenderer setVertexAmplificationEnabled:[(SCNRenderer *)self vertexAmplificationEnabled]];
  [(SCNRenderer *)self->_snapshotRenderer setPointOfView:[(SCNRenderer *)self pointOfView]];
  [(SCNRenderer *)self->_snapshotRenderer setAutoenablesDefaultLighting:[(SCNRenderer *)self autoenablesDefaultLighting]];
  [(SCNRenderer *)self->_snapshotRenderer setAutoAdjustCamera:[(SCNRenderer *)self autoAdjustCamera]];
  [(SCNRenderer *)self->_snapshotRenderer setLoops:[(SCNRenderer *)self loops]];
  [(SCNRenderer *)self->_snapshotRenderer setPlaying:[(SCNRenderer *)self isPlaying]];
  [(SCNRenderer *)self sceneTime];
  [(SCNRenderer *)self->_snapshotRenderer setSceneTime:?];
  [(SCNRenderer *)self->_snapshotRenderer setDelegate:[(SCNRenderer *)self delegate]];
  [(SCNRenderer *)self->_snapshotRenderer set_wantsSceneRendererDelegationMessages:[(SCNRenderer *)self _wantsSceneRendererDelegationMessages]];
  [(SCNRenderer *)self->_snapshotRenderer setBackgroundColor:[(SCNRenderer *)self backgroundColor]];
  [(SCNRenderer *)self->_snapshotRenderer setTechnique:[(SCNRenderer *)self technique]];
  [(SCNRenderer *)self->_snapshotRenderer setDebugOptions:[(SCNRenderer *)self debugOptions]];
  [(SCNRenderer *)self _superSamplingFactor];
  [(SCNRenderer *)self->_snapshotRenderer set_superSamplingFactor:?];
  [(SCNRenderer *)self _screenTransform];
  v11 = self->_snapshotRenderer;
  v17[0] = v17[4];
  v17[1] = v17[5];
  v17[2] = v17[6];
  v17[3] = v17[7];
  [(SCNRenderer *)v11 set_screenTransform:v17];
  [(SCNRenderer *)self->_snapshotRenderer set_collectCompilationErrors:[(SCNRenderer *)self _collectCompilationErrors]];
  [(SCNRenderer *)self->_snapshotRenderer set_resourceManagerMonitor:[(SCNRenderer *)self _resourceManagerMonitor]];
  [(SCNRenderer *)self->_snapshotRenderer set_commandBufferStatusMonitor:[(SCNRenderer *)self _commandBufferStatusMonitor]];
  [(SCNRenderer *)self->_snapshotRenderer __setTransitionContext:self->_transitionContext];
  C3DEngineContextSetClearsOnDraw([(SCNRenderer *)self->_snapshotRenderer _engineContext], 1);
  v12 = [(SCNRenderer *)self->_snapshotRenderer _engineContext];
  InterfaceOrientation = C3DEngineContextGetInterfaceOrientation(self->_engineContext);
  C3DEngineContextSetInterfaceOrientation(v12, InterfaceOrientation);
  [(SCNScene *)[(SCNRenderer *)self scene] unlock];
  +[SCNTransaction commit];
  [(SCNRenderer *)self unlock];
  return self->_snapshotRenderer;
}

- (void)_updateProbes:(id)a3 withProgress:(id)a4
{
  [a4 becomeCurrentWithPendingUnitCount:1];
  [(SCNRenderer *)self updateProbes:a3 atTime:CACurrentMediaTime()];

  [a4 resignCurrent];
}

- (void)updateProbes:(NSArray *)lightProbes atTime:(CFTimeInterval)time
{
  v117 = *MEMORY[0x277D85DE8];
  if (![(SCNRenderer *)self scene])
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(SCNRenderer *)v7 updateProbes:v8 atTime:v9, v10, v11, v12, v13, v14];
    }
  }

  v15 = [(SCNRenderer *)self device];
  v80 = [(SCNRenderer *)self commandQueue];
  v16 = [MEMORY[0x277CD7058] textureCubeDescriptorWithPixelFormat:115 size:1024 mipmapped:0];
  [v16 setResourceOptions:32];
  [v16 setUsage:5];
  v92 = [(MTLDevice *)v15 newTextureWithDescriptor:v16];
  v93 = [SCNRenderer rendererWithDevice:v15 options:0];
  [(SCNRenderer *)v93 setScene:[(SCNRenderer *)self scene]];
  v19 = [-[SCNRenderer backgroundColor](self "backgroundColor")];
  v18 = *(&v19 + 1);
  v17 = *&v19;
  v21 = v20;
  v23 = v22;
  v85 = [(SCNScene *)[(SCNRenderer *)self scene] sceneRef];
  BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(v85, 0);
  if (BackgroundEffectSlot)
  {
    ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(BackgroundEffectSlot);
    if (ColorIfApplicable)
    {
      v17 = *ColorIfApplicable;
      v18 = ColorIfApplicable[1];
      v21 = ColorIfApplicable[2];
      v23 = ColorIfApplicable[3];
    }
  }

  obj = [(SCNNode *)[(SCNScene *)[(SCNRenderer *)self scene] rootNode] childNodesPassingTest:&__block_literal_global_671];
  if ([MEMORY[0x277CCAC48] currentProgress])
  {
    v26 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:{-[NSArray count](lightProbes, "count")}];
  }

  else
  {
    v26 = 0;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v27 = [(NSArray *)lightProbes countByEnumeratingWithState:&v103 objects:v116 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v104;
    v30 = v17;
    v31 = v18;
    v32 = v21;
    v33 = v23;
    v76 = *(MEMORY[0x277D860B8] + 16);
    v77 = *MEMORY[0x277D860B8];
    v73 = vnegq_f32(*MEMORY[0x277D860B8]);
    v74 = *(MEMORY[0x277D860B8] + 48);
    v75 = *(MEMORY[0x277D860B8] + 32);
    v71 = vnegq_f32(v76);
    v72 = vnegq_f32(v75);
    v69 = self;
    v70 = lightProbes;
    v78 = *v104;
    v79 = v26;
    do
    {
      v34 = 0;
      v81 = v28;
      do
      {
        if (*v104 != v29)
        {
          objc_enumerationMutation(lightProbes);
        }

        v35 = *(*(&v103 + 1) + 8 * v34);
        if ([v35 light] && SCNLightTypeToC3DLightType(objc_msgSend(objc_msgSend(v35, "light"), "type")) == 4)
        {
          v36 = [objc_msgSend(v35 "light")];
          if (v36 < 2)
          {
            v39 = v36;
            if ([v26 isCancelled])
            {
              goto LABEL_44;
            }

            v84 = v34;
            v83 = [(MTLCommandQueue *)v80 commandBuffer];
            [v26 becomeCurrentWithPendingUnitCount:1];
            v40 = [MEMORY[0x277CD6F50] renderPassDescriptor];
            [objc_msgSend(objc_msgSend(v40 "colorAttachments")];
            [objc_msgSend(objc_msgSend(v40 "colorAttachments")];
            v41 = v35;
            v42 = +[SCNNode node];
            [(SCNNode *)v42 setCamera:+[SCNCamera camera]];
            [(SCNCamera *)[(SCNNode *)v42 camera] setFieldOfView:90.0];
            [objc_msgSend(v41 "light")];
            [(SCNCamera *)[(SCNNode *)v42 camera] setZNear:v43];
            [objc_msgSend(v41 "light")];
            [(SCNCamera *)[(SCNNode *)v42 camera] setZFar:v44];
            [(SCNNode *)v42 setLight:+[SCNLight light]];
            [(SCNLight *)[(SCNNode *)v42 light] setType:@"probe"];
            [(SCNRenderer *)v93 setPointOfView:v42];
            [v41 simdWorldTransform];
            v89 = v46;
            v90 = v45;
            v87 = v48;
            v88 = v47;
            v82 = [v41 isHidden];
            v86 = v41;
            [v41 setHidden:1];
            v115[0] = v75;
            v115[1] = v76;
            v115[2] = v73;
            v115[3] = v74;
            v115[4] = v72;
            v115[5] = v76;
            v115[6] = v77;
            v115[7] = v74;
            v115[8] = v77;
            v115[9] = v75;
            v115[10] = v71;
            v115[11] = v74;
            v115[12] = v77;
            v115[13] = v72;
            v115[14] = v76;
            v115[15] = v74;
            v115[16] = v77;
            v115[17] = v76;
            v115[18] = v75;
            v115[19] = v74;
            v115[20] = v73;
            v115[21] = v76;
            v115[22] = v72;
            v115[23] = v74;
            WantsSSR = C3DSceneGetWantsSSR(v85);
            C3DSceneSetWantsSSR(v85, 0);
            for (i = 0; i != 6; ++i)
            {
              v51 = [v92 newTextureViewWithPixelFormat:objc_msgSend(v92 textureType:"pixelFormat") levels:2 slices:0, objc_msgSend(v92, "mipmapLevelCount"), i, 1];
              [objc_msgSend(objc_msgSend(v40 "colorAttachments")];
              v52 = 0;
              v53 = &v115[4 * i];
              v54 = v53[1];
              v55 = v53[2];
              v56 = v53[3];
              v107[0] = *v53;
              v107[1] = v54;
              v107[2] = v55;
              v107[3] = v56;
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v111 = 0u;
              do
              {
                *(&v108 + v52 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v90, COERCE_FLOAT(v107[v52])), v89, *&v107[v52], 1), v88, v107[v52], 2), v87, v107[v52], 3);
                ++v52;
              }

              while (v52 != 4);
              [(SCNNode *)v42 setSimdTransform:*&v108, *&v109, *&v110, *&v111];
              +[SCNTransaction flush];
              -[SCNRenderer renderAtTime:viewport:commandBuffer:passDescriptor:](v93, "renderAtTime:viewport:commandBuffer:passDescriptor:", 0, v40, time, 0.0, 0.0, [v51 width], objc_msgSend(v51, "height"));
            }

            [v86 setHidden:v82];
            C3DSceneSetWantsSSR(v85, WantsSSR);
            v57 = [(SCNMTLRenderContext *)[(SCNRenderer *)v93 _renderContextMetal] resourceManager];
            if (v39)
            {
              v58 = [v57 newRadianceTextureForEnvironmentTexture:v92 engineContext:v69->_engineContext cpuAccessible:1 commandBuffer:v83];
              [v83 commit];
              [v83 waitUntilCompleted];
              [objc_msgSend(objc_msgSend(v86 "light")];

              v29 = v78;
              v26 = v79;
              v28 = v81;
              v34 = v84;
            }

            else
            {
              v59 = [v57 sphericalHarmonicsForEnvironmentTexture:v92 order:3 commandBuffer:v83];
              [v83 commit];
              [v83 waitUntilCompleted];
              v60 = [v86 nodeRef];
              v61 = [objc_msgSend(v86 "light")];
              v91 = v59;
              v62 = [v59 contents];
              v95 = 0u;
              v96 = 0u;
              v97 = 0u;
              v98 = 0u;
              v63 = [(NSArray *)obj countByEnumeratingWithState:&v95 objects:v114 count:16];
              if (v63)
              {
                v64 = v63;
                v65 = *v96;
                do
                {
                  for (j = 0; j != v64; ++j)
                  {
                    if (*v96 != v65)
                    {
                      objc_enumerationMutation(obj);
                    }

                    C3DLightAddLightSHContribution(v61, v60, [objc_msgSend(*(*(&v95 + 1) + 8 * j) "light")], objc_msgSend(*(*(&v95 + 1) + 8 * j), "nodeRef"), 3u, v62);
                  }

                  v64 = [(NSArray *)obj countByEnumeratingWithState:&v95 objects:v114 count:16];
                }

                while (v64);
              }

              v26 = v79;
              v28 = v81;
              v34 = v84;
              if ([v91 length] != 108)
              {
                v67 = scn_default_log();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
                {
                  [(SCNRenderer *)buf updateProbes:v67 atTime:?];
                }
              }

              [objc_msgSend(v86 "light")];
              lightProbes = v70;
              v29 = v78;
            }

            [v26 resignCurrent];
          }

          else
          {
            v37 = scn_default_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [SCNRenderer updateProbes:v100 atTime:?];
            }
          }
        }

        else
        {
          v38 = scn_default_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [SCNRenderer updateProbes:v102 atTime:?];
          }
        }

        ++v34;
      }

      while (v34 != v28);
      v68 = [(NSArray *)lightProbes countByEnumeratingWithState:&v103 objects:v116 count:16];
      v28 = v68;
    }

    while (v68);
  }

LABEL_44:
}

uint64_t __35__SCNRenderer_updateProbes_atTime___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 light];
  if (result)
  {
    if (C3DNodeIsHiddenOrIsHiddenByAncestor([a2 nodeRef]))
    {
      return 0;
    }

    else
    {
      result = [objc_msgSend(a2 "light")];
      if (result)
      {
        if ([objc_msgSend(objc_msgSend(a2 "light")] & 1) != 0 || (objc_msgSend(objc_msgSend(objc_msgSend(a2, "light"), "type"), "isEqualToString:", @"omni"))
        {
          return 1;
        }

        else
        {
          v4 = [objc_msgSend(a2 "light")];

          return [v4 isEqualToString:@"spot"];
        }
      }
    }
  }

  return result;
}

- (void)_jitterAtStep:(unint64_t)a3 updateMainFramebuffer:(BOOL)a4 redisplay:(BOOL)a5 jitterer:(id)a6
{
  v11 = [(SCNRenderer *)self renderingAPI];
  renderingQueue = self->__renderingQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__SCNRenderer__jitterAtStep_updateMainFramebuffer_redisplay_jitterer___block_invoke;
  v13[3] = &unk_2782FF258;
  v13[4] = self;
  v13[5] = a6;
  v13[6] = a3;
  v14 = a4;
  v15 = v11 != 0;
  v16 = a5;
  dispatch_sync(renderingQueue, v13);
}

uint64_t __70__SCNRenderer__jitterAtStep_updateMainFramebuffer_redisplay_jitterer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _engineContext];
  result = [*(a1 + 40) isAborting];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) _installContext];
    if (result)
    {
      [*(a1 + 32) lock];
      +[SCNTransaction lock];
      C3DEngineContextSetJitteringEnabled(v2, 1);
      C3DEngineContextSetJitteringStep(v2, *(a1 + 48));
      C3DEngineContextSetUpdateMainFramebuffer(v2, *(a1 + 56));
      v4 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      if (*(a1 + 57) == 1)
      {
        glPushGroupMarkerEXT(0, "SceneKit - Jitter");
      }

      [*(a1 + 32) _beginFrame];
      [*(a1 + 32) _drawAtTime:CACurrentMediaTime()];
      C3DEngineContextSetUpdateMainFramebuffer(v2, 1);
      C3DEngineContextSetJitteringEnabled(v2, 0);
      [*(a1 + 32) _endFrame];
      if (*(a1 + 58) == 1)
      {
        [*(*(a1 + 32) + 344) _jitterRedisplay];
      }

      if (*(a1 + 57) == 1)
      {
        glPopGroupMarkerEXT();
      }

      [v4 drain];
      +[SCNTransaction unlock];
      v5 = *(a1 + 32);

      return [v5 unlock];
    }
  }

  return result;
}

- (void)_addGPUFrameScheduledHandler:(id)a3
{
  if (self->_renderingAPI)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _addGPUFrameScheduledHandler:];
    }

    (*(a3 + 2))(a3);
  }

  else
  {
    [SCNTransaction postCommandWithContext:0 object:MEMORY[0x277D85DD0] applyBlock:3221225472, __44__SCNRenderer__addGPUFrameScheduledHandler___block_invoke, &unk_2782FF280, self, a3];
  }
}

- (void)_addGPUFrameCompletedHandler:(id)a3
{
  if (self->_renderingAPI)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _addGPUFrameCompletedHandler:];
    }

    (*(a3 + 2))(a3);
  }

  else
  {
    [SCNTransaction postCommandWithContext:0 object:MEMORY[0x277D85DD0] applyBlock:3221225472, __44__SCNRenderer__addGPUFrameCompletedHandler___block_invoke, &unk_2782FF280, self, a3];
  }
}

- (void)_addGPUFramePresentedHandler:(id)a3
{
  if (self->_renderingAPI)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _addGPUFramePresentedHandler:];
    }

    (*(a3 + 2))(a3);
  }

  else if ((*(self + 121) & 4) != 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__SCNRenderer__addGPUFramePresentedHandler___block_invoke;
    v7[3] = &unk_2782FF280;
    v7[4] = self;
    v7[5] = a3;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _addGPUFramePresentedHandler:];
    }

    [(SCNRenderer *)self _addGPUFrameCompletedHandler:a3];
  }
}

- (void)_discardPendingGPUFrameScheduledHandlers
{
  if (self->_renderingAPI)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _discardPendingGPUFrameScheduledHandlers];
    }
  }

  else
  {
    [SCNTransaction postCommandWithContext:"postCommandWithContext:object:applyBlock:" object:0 applyBlock:?];
  }
}

- (void)_discardPendingGPUFrameCompletedHandlers
{
  if (self->_renderingAPI)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _discardPendingGPUFrameCompletedHandlers];
    }
  }

  else
  {
    [SCNTransaction postCommandWithContext:"postCommandWithContext:object:applyBlock:" object:0 applyBlock:?];
  }
}

- (void)_discardPendingGPUFramePresentedHandlers
{
  if (self->_renderingAPI)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _discardPendingGPUFramePresentedHandlers];
    }
  }

  else if ((*(self + 121) & 4) != 0)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__SCNRenderer__discardPendingGPUFramePresentedHandlers__block_invoke;
    v5[3] = &unk_2782FB820;
    v5[4] = self;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v5];
  }

  else
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _discardPendingGPUFramePresentedHandlers];
    }

    [(SCNRenderer *)self _discardPendingGPUFrameCompletedHandlers];
  }
}

- (void)_allowGPUBackgroundExecution
{
  if (self->_renderingAPI)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [SCNRenderer _allowGPUBackgroundExecution];
    }
  }

  else
  {
    [SCNTransaction postCommandWithContext:"postCommandWithContext:object:applyBlock:" object:0 applyBlock:?];
  }
}

- (void)_interfaceOrientationDidChange
{
  if ((*(self + 121) & 8) != 0)
  {
    v3 = [objc_msgSend(-[SCNSceneRenderer window](self->_privateRendererOwner "window")];
  }

  else
  {
    v3 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  }

  [(SCNRenderer *)self _setInterfaceOrientation:v3];
}

- (void)_setInterfaceOrientation:(int64_t)a3
{
  v3 = a3;
  [(SCNRenderer *)self lock];
  C3DEngineContextSetInterfaceOrientation(self->_engineContext, v3);

  [(SCNRenderer *)self unlock];
}

- (BOOL)renderMovieToURL:(id)a3 size:(CGSize)a4 antialiasingMode:(unint64_t)a5 attributes:(id)a6 error:(id *)a7
{
  v9 = [[SCNMovieExportOperation alloc] initWithRenderer:self size:a6 attributes:a3 outputURL:a4.width, a4.height];
  [(_SCNExportOperation *)v9 setAntialiasingMode:a5];
  [(SCNMovieExportOperation *)v9 main];
  v10 = [(_SCNExportOperation *)v9 error];
  v11 = v10;
  if (a7 && v10)
  {
    *a7 = [(_SCNExportOperation *)v9 error];
  }

  return v11 == 0;
}

- (void)_initWithOptions:isPrivateRenderer:privateRendererOwner:clearsOnDraw:context:renderingAPI:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)autoenablesDefaultLighting
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setAutoenablesDefaultLighting:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __28__SCNRenderer_setTechnique___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_preparePreloadRenderer:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (uint64_t)programWithNode:(uint64_t)a1 withMaterial:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SCNRenderer.m" lineNumber:3347 description:@"We should have an engine context at this stage"];
}

- (void)_renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_renderAtTime:viewport:encoder:passDescriptor:commandQueue:commandBuffer:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createSnapshot:(id *)a1 error:(NSObject *)a2 .cold.2(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: Failed to create snapshot with error %@", &v4, 0xCu);
}

- (void)updateProbes:(os_log_t)log atTime:.cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "shBuffer.length == ((shOrder * shOrder) * 3 * sizeof(float))";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. MTLBuffer containing the SH coefficients has not the expected size", buf, 0xCu);
}

- (void)updateProbes:(_BYTE *)a1 atTime:(_BYTE *)a2 .cold.3(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_4_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)updateProbes:(_BYTE *)a1 atTime:(_BYTE *)a2 .cold.4(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_4_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

@end