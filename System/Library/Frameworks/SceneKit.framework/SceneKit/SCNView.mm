@interface SCNView
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (BOOL)usesSeparateWorkGroup;
+ (Class)layerClass;
+ (id)deviceForOptions:(id)options;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
+ (unint64_t)renderingAPIForOptions:(id)options;
- (BOOL)_canJitter;
- (BOOL)_checkAndUpdateDisplayLinkStateIfNeeded;
- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view;
- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block;
- (CGRect)currentViewport;
- (CGSize)_updateBackingSize;
- (CGSize)backingSizeForBoundSize:(CGSize)size;
- (NSInteger)preferredFramesPerSecond;
- (NSString)description;
- (SCNCameraController)defaultCameraController;
- (SCNMatrix4)_screenTransform;
- (SCNVector3)projectPoint:(SCNVector3)point;
- (SCNVector3)unprojectPoint:(SCNVector3)point;
- (SCNVector4)_viewport;
- (SCNView)initWithCoder:(id)coder;
- (SCNView)initWithFrame:(CGRect)frame options:(NSDictionary *)options;
- (UIImage)snapshot;
- (double)_runFPSTestWithDuration:(double)duration;
- (id)focusItemsInRect:(CGRect)rect;
- (id)hitTest:(CGPoint)test options:(id)options;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)nodesInsideFrustumWithPointOfView:(id)view;
- (unint64_t)_renderOptions;
- (void)_adjustBackingLayerPixelFormat;
- (void)_backgroundDidChange;
- (void)_commonInit:(id)init;
- (void)_createDisplayLinkIfNeeded;
- (void)_drawAtTime:(double)time;
- (void)_enterBackground:(id)background;
- (void)_enterForeground:(id)foreground;
- (void)_flushDisplayLink;
- (void)_initializeDisplayLinkWithScreen:(id)screen policy:(unint64_t)policy completionHandler:(id)handler;
- (void)_sceneDidUpdate:(id)update;
- (void)_selectRenderingAPIWithOptions:(id)options;
- (void)_setNeedsDisplay;
- (void)_systemTimeAnimationStarted:(id)started;
- (void)_updateContentsScaleFactor;
- (void)_updateOpacity;
- (void)context;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)displayLayer:(id)layer;
- (void)drawRect:(CGRect)rect;
- (void)encodeWithCoder:(id)coder;
- (void)eventHandlerWantsRedraw;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseDisplayLink;
- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler;
- (void)presentScene:(id)scene withTransition:(id)transition incomingPointOfView:(id)view completionHandler:(id)handler;
- (void)resumeDisplayLink;
- (void)safeAreaInsetsDidChange;
- (void)scn_setBackingLayer:(id)layer;
- (void)scn_setGestureRecognizers:(id)recognizers;
- (void)scn_updateGestureRecognizers;
- (void)setAllowsCameraControl:(BOOL)allowsCameraControl;
- (void)setAntialiasingMode:(SCNAntialiasingMode)antialiasingMode;
- (void)setAutoenablesDefaultLighting:(BOOL)lighting;
- (void)setBackgroundColor:(NSColor *)backgroundColor;
- (void)setContentScaleFactor:(double)factor;
- (void)setDebugOptions:(unint64_t)options;
- (void)setDisplayLink:(id)link;
- (void)setEventHandler:(id)handler;
- (void)setHidden:(BOOL)hidden;
- (void)setJitteringEnabled:(BOOL)enabled;
- (void)setNavigationCameraController:(id)controller;
- (void)setNeedsDisplay;
- (void)setOverlaySKScene:(id)scene;
- (void)setPlaying:(BOOL)playing;
- (void)setPointOfCulling:(id)culling;
- (void)setPointOfView:(id)view;
- (void)setPointOfView:(id)view animate:(BOOL)animate;
- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond;
- (void)setRendersContinuously:(BOOL)rendersContinuously;
- (void)setScene:(SCNScene *)scene;
- (void)setSceneTime:(double)time;
- (void)setShowsStatistics:(BOOL)statistics;
- (void)set_disableLinearRendering:(BOOL)rendering;
- (void)set_renderOptions:(unint64_t)options;
- (void)set_screenTransform:(SCNMatrix4 *)transform;
- (void)stop:(id)sender;
- (void)switchToCameraNamed:(id)named;
- (void)switchToNextCamera;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation SCNView

+ (Class)layerClass
{
  if (!gTmpRenderingAPI)
  {
    [self lowLatency];
  }

  return objc_opt_class();
}

- (void)setNeedsDisplay
{
  v3.receiver = self;
  v3.super_class = SCNView;
  [(SCNView *)&v3 setNeedsDisplay];
  if (!self->_renderingAPI)
  {
    [(SCNView *)self _setNeedsDisplay];
  }
}

- (void)_setNeedsDisplay
{
  if ((*(self + 456) & 0x10) == 0)
  {
    [(SCNJitterer *)self->_jitterer stopIfNeeded];
    self->_didTriggerRedrawWhileRendering = 1;
    if (self->_displayLink)
    {
      v3 = v5;
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v4 = __27__SCNView__setNeedsDisplay__block_invoke_2;
    }

    else
    {
      v3 = block;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v4 = __27__SCNView__setNeedsDisplay__block_invoke;
    }

    v3[2] = v4;
    v3[3] = &unk_2782FB608;
    v3[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v3);
  }
}

- (void)_backgroundDidChange
{
  [(SCNView *)self _updateOpacity];

  [(SCNView *)self _adjustBackingLayerPixelFormat];
}

- (void)_updateOpacity
{
  backgroundColor = scn_NSColorFromCGColorIfApplicable([(SCNMaterialProperty *)[(SCNScene *)self->_scene background] contents]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !backgroundColor)
  {
    backgroundColor = [(SCNView *)self backgroundColor];
    if (!backgroundColor)
    {
      backgroundColor = [(SCNView *)self _defaultBackgroundColor];
    }
  }

  v8 = 0;
  [(NSColor *)backgroundColor scn_C3DColorIgnoringColorSpace:0 success:&v8];
  *&v5 = v4;
  v6 = *(self + 456);
  v7 = (v8 ^ 1) & 1u | (v4 == 1.0);
  *(self + 456) = v6 & 0xFE | v8 ^ 1 | (v4 == 1.0);
  if (v7 != (v6 & 1))
  {
    [-[SCNView layer](self layer];
    [(SCNView *)self setOpaque:*(self + 456) & 1];
  }
}

- (void)_adjustBackingLayerPixelFormat
{
  if (!self->_renderingAPI)
  {
    [(SCNView *)self lock];
    [(SCNRenderer *)self->_renderer lock];
    isOpaque = [(SCNView *)self isOpaque];
    [(SCNMTLRenderContext *)[(SCNRenderer *)self->_renderer _renderContextMetal] setIsOpaque:isOpaque];
    if (C3DWideGamutIsUsed())
    {
      v5 = [objc_msgSend(-[SCNView window](self "window")] == 1;
      v6 = v5;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    _antialiasingMode = [(SCNRenderer *)self->_renderer _antialiasingMode];
    v8 = v6 | 8;
    if (!_antialiasingMode)
    {
      v8 = v6;
    }

    if (isOpaque)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 | 0x10;
    }

    v10 = v9 & 0xDF | (32 * ((*(self + 457) & 2) != 0));
    [(SCNMTLRenderContext *)[(SCNRenderer *)self->_renderer _renderContextMetal] setWantsWideGamut:v5];
    [(SCNMTLRenderContext *)[(SCNRenderer *)self->_renderer _renderContextMetal] setDisableLinearRendering:?];
    [-[SCNView layer](self "layer")];
    [(SCNRenderer *)self->_renderer unlock];

    [(SCNView *)self unlock];
  }
}

- (void)scn_updateGestureRecognizers
{
  array = [MEMORY[0x277CBEB18] array];
  navigationCameraController = self->_navigationCameraController;
  if (navigationCameraController)
  {
    [array addObjectsFromArray:{-[SCNEventHandler gestureRecognizers](navigationCameraController, "gestureRecognizers")}];
  }

  [(SCNView *)self scn_setGestureRecognizers:array];
}

- (void)_createDisplayLinkIfNeeded
{
  if (!self->_displayLink && !self->_displayLinkCreationRequested)
  {
    if (self->_renderer)
    {
      self->_displayLinkCreationRequested = 1;
      objc_initWeak(&location, self);
      v3 = [-[SCNView window](self "window")];
      displayLinkPolicy = [objc_opt_class() displayLinkPolicy];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __37__SCNView__createDisplayLinkIfNeeded__block_invoke;
      v5[3] = &unk_278300120;
      objc_copyWeak(&v6, &location);
      [(SCNView *)self _initializeDisplayLinkWithScreen:v3 policy:displayLinkPolicy completionHandler:v5];
      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }
  }
}

- (void)pauseDisplayLink
{
  [(SCNJitterer *)self->_jitterer stopIfNeeded];
  displayLink = [(SCNView *)self displayLink];

  [displayLink setPaused:1];
}

- (void)_flushDisplayLink
{
  if ([-[SCNView displayLink](self "displayLink")] >= 1)
  {
    v3 = 0;
    do
    {
      usleep(0x2710u);
      v4 = v3 + 1;
      if ([-[SCNView displayLink](self "displayLink")] < 1)
      {
        break;
      }
    }

    while (v3++ < 0x12B);
    if (v4 == 300)
    {
      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(SCNView *)v6 _flushDisplayLink];
      }
    }
  }
}

- (void)_initializeDisplayLinkWithScreen:(id)screen policy:(unint64_t)policy completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  screenCopy = screen;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__SCNView_SCNDisplayLink___initializeDisplayLinkWithScreen_policy_completionHandler___block_invoke;
  aBlock[3] = &unk_2782FD9C8;
  objc_copyWeak(v22, &location);
  v10 = screenCopy;
  v20 = v10;
  v22[1] = policy;
  v11 = handlerCopy;
  v21 = v11;
  v12 = _Block_copy(aBlock);
  [(SCNView *)self _renderThreadPriority];
  v14 = v13;
  memset(&v27, 0, sizeof(v27));
  pthread_attr_init(&v27);
  pthread_attr_setschedpolicy(&v27, 2);
  v15 = v14;
  if (v14 == 0.0)
  {
    v15 = 45;
  }

  v18.sched_priority = v15;
  *v18.__opaque = 0;
  pthread_attr_setschedparam(&v27, &v18);
  v16 = _Block_copy(v12);
  v17 = dispatch_time(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__SCNView_SCNDisplayLink___initializeDisplayLinkWithScreen_policy_completionHandler___block_invoke_2;
  block[3] = &__block_descriptor_104_e5_v8__0l;
  v25 = v27;
  v26 = v16;
  dispatch_after(v17, MEMORY[0x277D85CD0], block);
  pthread_attr_destroy(&v27);

  objc_destroyWeak(v22);
  objc_destroyWeak(&location);
}

void __85__SCNView_SCNDisplayLink___initializeDisplayLinkWithScreen_policy_completionHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  memset(&token_out, 0, sizeof(token_out));
  if (WeakRetained)
  {
    v3 = [objc_opt_class() usesSeparateWorkGroup];
    if (v3)
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_INFO, "Info: [SCNView] Using separate work group", v16, 2u);
      }

      if (os_workgroup_attr_set_flags())
      {
        __85__SCNView_SCNDisplayLink___initializeDisplayLinkWithScreen_policy_completionHandler___block_invoke_cold_1();
      }

      v5 = os_workgroup_create();
      if (!v5)
      {
        __85__SCNView_SCNDisplayLink___initializeDisplayLinkWithScreen_policy_completionHandler___block_invoke_cold_3();
      }

      v6 = v5;
      if (os_workgroup_join(v5, &token_out))
      {
        __85__SCNView_SCNDisplayLink___initializeDisplayLinkWithScreen_policy_completionHandler___block_invoke_cold_2();
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = [WeakRetained renderer];
    v8 = [v7 _renderingQueue];
    v9 = [WeakRetained SCN_setupDisplayLinkWithQueue:v8 screen:*(a1 + 32) policy:*(a1 + 56)];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = 0;
    v3 = 0;
  }

  v10 = [MEMORY[0x277CBEB88] currentRunLoop];
  pthread_setname_np("com.apple.scenekit.scnview-renderer");
  pthread_set_fixedpriority_self();
  v11 = objc_loadWeakRetained((a1 + 48));

  if (v11)
  {
    v12 = *MEMORY[0x277CBE640];
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:1.0];
      [v10 runMode:v12 beforeDate:v14];

      objc_autoreleasePoolPop(v13);
      v15 = objc_loadWeakRetained((a1 + 48));
    }

    while (v15);
  }

  if (v3)
  {
    os_workgroup_leave(v6, &token_out);
  }
}

+ (unint64_t)renderingAPIForOptions:(id)options
{
  if (C3DPreferencesGetBool(0) || !C3DMetalIsSupported())
  {
    return 1;
  }

  if (C3DPreferencesGetBool(1))
  {
    return 0;
  }

  v5 = C3DWasLinkedBeforeMajorOSYear2015();
  v6 = [options objectForKey:@"SCNPreferredRenderingAPIKey"];
  if (C3DGetInfoPlistFlagIsSet(@"PrefersOpenGL", 0))
  {
    if (v6 && ![v6 integerValue])
    {
      v8 = scn_default_log();
      v4 = 1;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        v4 = 1;
        _os_log_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_INFO, "Info: PrefersOpenGL key is set in the plist but Metal is requested programmatically. GL will be used", v9, 2u);
      }

      return v4;
    }

    return 1;
  }

  if (!v6)
  {
    return v5;
  }

  return [v6 integerValue];
}

+ (id)deviceForOptions:(id)options
{
  v3 = MTLCreateSystemDefaultDevice();
  if (!v3 && (deviceForOptions__done & 1) == 0)
  {
    deviceForOptions__done = 1;
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNView deviceForOptions:v4];
    }
  }

  return v3;
}

- (void)_commonInit:(id)init
{
  v20[2] = *MEMORY[0x277D85DE8];
  SCNGetPerformanceStatisticsEnabled();
  *(self + 456) |= 1u;
  *(self + 456) |= 0x10u;
  self->_currentSystemTime = CACurrentMediaTime();
  self->_lock = objc_alloc_init(SCNRecursiveLock);
  renderingAPI = self->_renderingAPI;
  layer = [(SCNView *)self layer];
  v7 = layer;
  if (renderingAPI)
  {
    [layer setOpaque:1];
    v8 = *MEMORY[0x277CD93B8];
    v19[0] = *MEMORY[0x277CD93C0];
    v19[1] = v8;
    v9 = *MEMORY[0x277CD93A0];
    v20[0] = MEMORY[0x277CBEC28];
    v20[1] = v9;
    [v7 setDrawableProperties:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v20, v19, 2)}];
    [(SCNView *)self scn_setBackingLayer:v7];
    eaglContext = [(SCNView *)self eaglContext];
    if (!eaglContext)
    {
      if ([objc_msgSend(MEMORY[0x277D75128] "sharedApplication")] == 2)
      {
        eaglContext = 0;
      }

      else
      {
        if (LODWORD(self->_renderingAPI) == 2)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        eaglContext = SCNCreateGLESContext(v11);
      }
    }
  }

  else
  {
    _setupMetalBackingLayer(layer, (*(self + 457) >> 1) & 1);
    [(SCNView *)self scn_setBackingLayer:v7];
    eaglContext = [v7 device];
    self->_device = eaglContext;
  }

  if ([objc_opt_class() shouldObserveApplicationStateToPreventBackgroundGPUAccess])
  {
    if (_UIApplicationIsExtension())
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__enterForeground_ name:*MEMORY[0x277CCA0C0] object:0];
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = MEMORY[0x277CCA0D8];
    }

    else
    {
      v15 = [objc_msgSend(MEMORY[0x277D75DA0] "_applicationKeyWindow")];
      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      if (v15)
      {
        [defaultCenter3 addObserver:self selector:sel__enterForeground_ name:@"_UIViewServiceHostDidBecomeActiveNotification" object:0];
        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        v17 = @"_UIViewServiceHostWillResignActiveNotification";
LABEL_17:
        [defaultCenter2 addObserver:self selector:sel__enterBackground_ name:v17 object:0];
        goto LABEL_18;
      }

      [defaultCenter3 addObserver:self selector:sel__enterForeground_ name:*MEMORY[0x277D76648] object:0];
      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = MEMORY[0x277D76768];
    }

    v17 = *v14;
    goto LABEL_17;
  }

LABEL_18:
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  [(SCNView *)self setContentScaleFactor:?];
  [(SCNView *)self setContentMode:4];
  [(SCNView *)self setMultipleTouchEnabled:1];
  self->_renderer = [[SCNRenderer alloc] _initWithOptions:init isPrivateRenderer:1 privateRendererOwner:self clearsOnDraw:1 context:eaglContext renderingAPI:self->_renderingAPI];
  self->_jitterer = [[SCNJitterer alloc] initWithDelegate:self];
  [(SCNView *)self setBackgroundColor:[(SCNView *)self _defaultBackgroundColor]];
  if (C3DPreferencesGetBool(3))
  {
    [(SCNView *)self setAllowsCameraControl:1];
  }

  if (C3DPreferencesGetBool(2))
  {
    [(SCNView *)self setShowsStatistics:1];
  }

  SCNUIKitSourceSetCurrentViewEvent(self);
  if ((MGGetBoolAnswer() & 1) != 0 || !NSClassFromString(&cfstr_Arscnview.isa))
  {
    v18 = 1;
  }

  else
  {
    v18 = objc_opt_isKindOfClass() ^ 1;
  }

  [(SCNMTLRenderContext *)[(SCNRenderer *)self->_renderer _renderContextMetal] setShouldPresentAfterMinimumDuration:?];
  [(SCNMTLRenderContext *)[(SCNRenderer *)self->_renderer _renderContextMetal] setPreferredFramesPerSecond:?];
  if (_UIApplicationIsExtension())
  {
    [(SCNRenderer *)self->_renderer _runningInExtension];
  }

  [(SCNView *)self setNavigationCameraController:[[SCNCameraNavigationController alloc] initWithView:self]];
}

- (SCNView)initWithFrame:(CGRect)frame options:(NSDictionary *)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SCNView *)self _selectRenderingAPIWithOptions:?];
  v13.receiver = self;
  v13.super_class = SCNView;
  height = [(SCNView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    height->_boundsSize.width = width;
    height->_boundsSize.height = height;
    [(SCNView *)height _commonInit:options];
  }

  return v11;
}

- (void)_selectRenderingAPIWithOptions:(id)options
{
  self->_renderingAPI = [objc_opt_class() renderingAPIForOptions:options];
  v4 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v4, sel_renderingAPI);
  Implementation = method_getImplementation(InstanceMethod);
  v7 = objc_opt_class();
  v8 = class_getInstanceMethod(v7, sel_renderingAPI);
  if (Implementation == method_getImplementation(v8))
  {
    renderingAPI = self->_renderingAPI;
    if (renderingAPI)
    {
      goto LABEL_9;
    }
  }

  else
  {
    renderingAPI = [(SCNView *)self renderingAPI];
    self->_renderingAPI = renderingAPI;
    if (renderingAPI)
    {
      goto LABEL_9;
    }
  }

  if (+[SCNView _isMetalSupported])
  {
    renderingAPI = self->_renderingAPI;
    if (!renderingAPI)
    {
      C3DNotifyMetalIsUsed();
      renderingAPI = self->_renderingAPI;
    }
  }

  else
  {
    renderingAPI = 1;
    self->_renderingAPI = 1;
  }

LABEL_9:
  gTmpRenderingAPI = renderingAPI;
}

- (SCNView)initWithCoder:(id)coder
{
  v27[1] = *MEMORY[0x277D85DE8];
  if ([coder containsValueForKey:@"ibPreferredRenderingAPI"])
  {
    v5 = [coder decodeIntegerForKey:@"ibPreferredRenderingAPI"];
    v6 = v5;
    if (v5 == 2)
    {
      v7 = 1;
LABEL_10:
      if (C3DWasLinkedBeforeMajorOSYear2015())
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      goto LABEL_13;
    }

    if (v5 == 1)
    {
      v7 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  if (!C3DWasLinkedBeforeMajorOSYear2015())
  {
    v9 = 0;
    goto LABEL_14;
  }

  v8 = 1;
LABEL_13:
  v26 = @"SCNPreferredRenderingAPIKey";
  v27[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
LABEL_14:
  [(SCNView *)self _selectRenderingAPIWithOptions:v9];
  v23.receiver = self;
  v23.super_class = SCNView;
  v10 = [(SCNView *)&v23 initWithCoder:coder];
  v11 = v10;
  if (v10)
  {
    p_boundsSize = &v10->_boundsSize;
    [(SCNView *)v10 bounds];
    *&p_boundsSize->width = v13;
    v11->_boundsSize.height = v14;
    [(SCNView *)v11 set_ibPreferredRenderingAPI:v6];
    if ([coder containsValueForKey:@"ibWantsMultisampling"])
    {
      v15 = [coder decodeBoolForKey:@"ibWantsMultisampling"];
    }

    else
    {
      v15 = 0;
    }

    [(SCNView *)v11 set_ibWantsMultisampling:v15];
    [(SCNView *)v11 _commonInit:v9];
    if ([(SCNView *)v11 _ibWantsMultisampling])
    {
      [(SCNView *)v11 setAntialiasingMode:2];
    }

    if ([coder containsValueForKey:@"loops"])
    {
      -[SCNView setLoops:](v11, "setLoops:", [coder decodeBoolForKey:@"loops"]);
    }

    if ([coder containsValueForKey:@"playing"])
    {
      -[SCNView setPlaying:](v11, "setPlaying:", [coder decodeBoolForKey:@"playing"]);
    }

    if ([coder containsValueForKey:@"autoenablesDefaultLighting"])
    {
      -[SCNView setAutoenablesDefaultLighting:](v11, "setAutoenablesDefaultLighting:", [coder decodeBoolForKey:@"autoenablesDefaultLighting"]);
    }

    if ([coder containsValueForKey:@"jitteringEnabled"])
    {
      -[SCNView setJitteringEnabled:](v11, "setJitteringEnabled:", [coder decodeBoolForKey:@"jitteringEnabled"]);
    }

    if ([coder containsValueForKey:@"temporalAntialiasingEnabled"])
    {
      -[SCNView setTemporalAntialiasingEnabled:](v11, "setTemporalAntialiasingEnabled:", [coder decodeBoolForKey:@"temporalAntialiasingEnabled"]);
    }

    if ([coder containsValueForKey:@"allowsCameraControl"])
    {
      -[SCNView setAllowsCameraControl:](v11, "setAllowsCameraControl:", [coder decodeBoolForKey:@"allowsCameraControl"]);
    }

    if ([coder containsValueForKey:@"backgroundColor"])
    {
      -[SCNView setBackgroundColor:](v11, "setBackgroundColor:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"backgroundColor"]);
    }

    -[SCNView set_ibSceneName:](v11, "set_ibSceneName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"ibSceneName"]);
    if ([(NSString *)v11->__ibSceneName length])
    {
      pathExtension = [(NSString *)v11->__ibSceneName pathExtension];
      v17 = SCNGetResourceBundle();
      stringByDeletingPathExtension = [(NSString *)v11->__ibSceneName stringByDeletingPathExtension];
      if ([(__CFString *)pathExtension isEqualToString:&stru_282DCC058])
      {
        v19 = @"dae";
      }

      else
      {
        v19 = pathExtension;
      }

      v20 = [v17 URLForResource:stringByDeletingPathExtension withExtension:v19];
      if (v20)
      {
        v24[0] = @"kSceneSourceCreateCameraIfAbsent";
        v24[1] = @"kSceneSourceCreateNormalsIfAbsent";
        v25[0] = MEMORY[0x277CBEC38];
        v25[1] = MEMORY[0x277CBEC38];
        v21 = +[SCNScene sceneWithURL:options:error:](SCNScene, "sceneWithURL:options:error:", v20, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2], 0);
        if (v21)
        {
          [(SCNView *)v11 setScene:v21];
        }
      }
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNView;
  [(SCNView *)&v5 encodeWithCoder:?];
  [coder encodeBool:-[SCNView loops](self forKey:{"loops"), @"loops"}];
  [coder encodeBool:-[SCNView isPlaying](self forKey:{"isPlaying"), @"playing"}];
  [coder encodeBool:-[SCNView autoenablesDefaultLighting](self forKey:{"autoenablesDefaultLighting"), @"autoenablesDefaultLighting"}];
  [coder encodeBool:-[SCNView isJitteringEnabled](self forKey:{"isJitteringEnabled"), @"jitteringEnabled"}];
  [coder encodeBool:-[SCNView isTemporalAntialiasingEnabled](self forKey:{"isTemporalAntialiasingEnabled"), @"temporalAntialiasingEnabled"}];
  [coder encodeBool:-[SCNView allowsCameraControl](self forKey:{"allowsCameraControl"), @"allowsCameraControl"}];
  [coder encodeObject:-[SCNView backgroundColor](self forKey:{"backgroundColor"), @"backgroundColor"}];
  [coder encodeObject:-[SCNView _ibSceneName](self forKey:{"_ibSceneName"), @"ibSceneName"}];
  [coder encodeBool:-[SCNView _ibWantsMultisampling](self forKey:{"_ibWantsMultisampling"), @"ibWantsMultisampling"}];
  [coder encodeInteger:-[SCNView _ibPreferredRenderingAPI](self forKey:{"_ibPreferredRenderingAPI"), @"ibPreferredRenderingAPI"}];
}

- (void)dealloc
{
  *(self + 456) |= 0x10u;
  *(self + 456) |= 0x40u;
  [(SCNView *)self _flushDisplayLink];
  [(SCNView *)self scn_setGestureRecognizers:0];
  if (gCurrentSCNViewFocusEnvironment == self)
  {
    gCurrentSCNViewFocusEnvironment = 0;
  }

  [(SCNDisplayLink *)self->_displayLink invalidate];

  self->_displayLink = 0;
  [(SCNJitterer *)self->_jitterer delegateWillDie];

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(SCNEventHandler *)self->_navigationCameraController sceneWillChange];
  [(SCNEventHandler *)self->_navigationCameraController setDelegate:0];

  [(SCNScene *)self->_scene removeObserver:self forKeyPath:@"background.contents"];
  v3.receiver = self;
  v3.super_class = SCNView;
  [(SCNView *)&v3 dealloc];
}

- (void)setHidden:(BOOL)hidden
{
  v5.receiver = self;
  v5.super_class = SCNView;
  [(SCNView *)&v5 setHidden:?];
  self->_isHidden = hidden;
}

- (void)presentScene:(id)scene withTransition:(id)transition incomingPointOfView:(id)view completionHandler:(id)handler
{
  v11 = self->_scene;
  pointOfView = [(SCNView *)self pointOfView];
  [(SCNView *)self lock];
  +[SCNTransaction begin];
  [SCNTransaction setAnimationDuration:0.0];
  [SCNTransaction setImmediateMode:1];
  [(SCNView *)self setScene:scene];
  [(SCNView *)self setPointOfView:view];
  if (transition)
  {
    [(SCNRenderer *)self->_renderer _prepareForTransition:transition outgoingScene:v11 outgoingPointOfView:pointOfView completionHandler:handler];
  }

  +[SCNTransaction commit];
  [(SCNView *)self unlock];
}

- (void)setScene:(SCNScene *)scene
{
  if (self->_scene != scene)
  {
    [(SCNView *)self lock];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(SCNScene *)self->_scene removeObserver:self forKeyPath:@"background.contents"];
    [(SCNEventHandler *)self->_navigationCameraController sceneWillChange];

    v5 = scene;
    self->_scene = v5;
    if (v5)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      [(SCNScene *)self->_scene addObserver:self forKeyPath:@"background.contents" options:0 context:@"kSCNViewObservingContext"];
    }

    renderer = self->_renderer;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __20__SCNView_setScene___block_invoke;
    v7[3] = &unk_2782FB608;
    v7[4] = self;
    [(SCNRenderer *)renderer setScene:scene completionHandler:v7];
    [(SCNEventHandler *)self->_navigationCameraController sceneDidChange];
    [(SCNView *)self unlock];
    [(SCNView *)self _updateOpacity];
  }
}

- (void)set_screenTransform:(SCNMatrix4 *)transform
{
  v3 = *&transform->m21;
  v5[0] = *&transform->m11;
  v5[1] = v3;
  v4 = *&transform->m41;
  v5[2] = *&transform->m31;
  v5[3] = v4;
  [(SCNRenderer *)self->_renderer set_screenTransform:v5];
}

- (SCNMatrix4)_screenTransform
{
  result = self->_renderer;
  if (result)
  {
    return [(SCNMatrix4 *)result _screenTransform];
  }

  *&retstr->m31 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m21 = 0u;
  return result;
}

- (void)set_renderOptions:(unint64_t)options
{
  optionsCopy = options;
  valuePtr = options;
  _engineContext = [(SCNRenderer *)self->_renderer _engineContext];
  v6 = _engineContext;
  if (optionsCopy)
  {
    v7 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
    C3DEngineContextSetRenderingOptionForKey(v6, @"debugRendering", v7);
    CFRelease(v7);
  }

  else
  {
    C3DEngineContextSetRenderingOptionForKey(_engineContext, @"debugRendering", 0);
  }

  [(SCNView *)self _setNeedsDisplay];
}

- (unint64_t)_renderOptions
{
  result = C3DEngineContextGetRenderingOptionForKey([(SCNRenderer *)self->_renderer _engineContext], @"debugRendering");
  if (result)
  {
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

- (void)scn_setBackingLayer:(id)layer
{
  backingLayer = self->_backingLayer;
  if (backingLayer != layer)
  {

    self->_backingLayer = layer;
  }
}

- (void)setJitteringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(SCNJitterer *)self->_jitterer setEnabled:?];
  [(SCNRenderer *)self->_renderer setJitteringEnabled:enabledCopy];

  [(SCNView *)self _setNeedsDisplay];
}

- (BOOL)_canJitter
{
  RendererContextGL = [(SCNRenderer *)self->_renderer _engineContext];
  if (RendererContextGL)
  {
    v3 = RendererContextGL;
    Viewport = C3DEngineContextGetViewport(RendererContextGL);
    Viewport.n128_u64[0] = vclez_f32(*&vextq_s8(Viewport, Viewport, 8uLL));
    if ((Viewport.n128_u32[0] | Viewport.n128_u32[1]))
    {
      LOBYTE(RendererContextGL) = 0;
    }

    else if (C3DEngineContextGetRenderContext(v3))
    {
      LOBYTE(RendererContextGL) = 1;
    }

    else
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(v3);
      if (RendererContextGL)
      {
        LOBYTE(RendererContextGL) = C3DRendererContextGetGLContext(RendererContextGL) != 0;
      }
    }
  }

  return RendererContextGL;
}

+ (BOOL)usesSeparateWorkGroup
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];

  return [standardUserDefaults BOOLForKey:@"com.apple.sceneKit.forceSeparateWorkGroup"];
}

- (void)_updateContentsScaleFactor
{
  [(SCNView *)self contentScaleFactor];
  renderer = self->_renderer;

  [(SCNRenderer *)renderer _setContentsScaleFactor:?];
}

- (CGSize)backingSizeForBoundSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(SCNView *)self contentScaleFactor];
  v7 = width * v6;
  [(SCNView *)self contentScaleFactor];
  v9 = height * v8;
  v10 = v7;
  result.height = v9;
  result.width = v10;
  return result;
}

- (CGSize)_updateBackingSize
{
  [(SCNView *)self lock];
  [(SCNView *)self _updateContentsScaleFactor];
  [(SCNView *)self bounds];
  self->_boundsSize.width = v3;
  self->_boundsSize.height = v4;
  [(SCNView *)self backingSizeForBoundSize:v3, v4];
  v13 = v5;
  v14 = v6;
  v7.f64[0] = v5;
  v7.f64[1] = v6;
  v8 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(v7)));
  [(SCNRenderer *)self->_renderer _setBackingSize:*&v8];
  v9 = COERCE_DOUBLE(vcvt_f32_u32(v8));
  LODWORD(v10) = HIDWORD(v9);
  [(SCNRenderer *)self->_renderer set_viewport:0.0, 0.0, v9, v10];
  [(SCNView *)self unlock];
  v11 = v13;
  v12 = v14;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_drawAtTime:(double)time
{
  if ((*(self + 456) & 0x40) != 0 || (*(self + 456) & 0x10) != 0)
  {
    if ((*(self + 456) & 0x20) == 0)
    {
      return;
    }

    *(self + 456) &= ~0x20u;
  }

  if (-[SCNRenderer _installContext](self->_renderer, "_installContext") && (self->_renderingAPI || !self->_skipFramesIfNoDrawableAvailable && ![objc_opt_class() lowLatency] || -[CALayer isDrawableAvailable](self->_backingLayer, "isDrawableAvailable")))
  {
    self->_didTriggerRedrawWhileRendering = 0;
    [(SCNJitterer *)self->_jitterer stopIfNeeded];
    [(SCNRenderer *)self->_renderer _displayLinkStatsTick];
    [(SCNView *)self lock];
    [(SCNRenderer *)self->_renderer _backingSize];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {

      [(SCNView *)self unlock];
    }

    else
    {
      [(SCNEventHandler *)self->_navigationCameraController viewWillDrawAtTime:CACurrentMediaTime()];
      [(SCNRenderer *)self->_renderer lock];
      v8 = objc_autoreleasePoolPush();
      [(SCNRenderer *)self->_renderer _beginFrame];
      [(SCNRenderer *)self->_renderer _getFrameIndex];
      kdebug_trace();
      +[SCNTransaction lock];
      currentSystemTime = CACurrentMediaTime();
      if (time != 0.0)
      {
        currentSystemTime = time;
      }

      self->_currentSystemTime = currentSystemTime;
      if (self->_renderingAPI)
      {
        glPushGroupMarkerEXT(0, "SceneKit - SCNView Draw");
        currentSystemTime = self->_currentSystemTime;
      }

      [(SCNRenderer *)self->_renderer _drawAtTime:currentSystemTime];
      if (self->_renderingAPI)
      {
        glPopGroupMarkerEXT();
      }

      [(SCNRenderer *)self->_renderer _presentFramebuffer];
      objc_autoreleasePoolPop(v8);
      +[SCNTransaction unlock];
      [(SCNRenderer *)self->_renderer _nextFrameTime];
      v11 = v10;
      v12 = CACurrentMediaTime();
      [(SCNRenderer *)self->_renderer unlock];
      kdebug_trace();
      [(SCNEventHandler *)self->_navigationCameraController viewDidDrawAtTime:self->_currentSystemTime];
      if ([(SCNView *)self _checkAndUpdateDisplayLinkStateIfNeeded])
      {
        if (![(SCNView *)self isPlaying])
        {
          v13 = v11 - v12;
          if (v11 - v12 > 2.0)
          {
            [(SCNJitterer *)self->_jitterer restart];
          }
        }
      }

      [(SCNView *)self unlock];
      renderer = self->_renderer;

      [(SCNRenderer *)renderer _displayLinkStatsTack];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SCNView;
  [(SCNView *)&v3 layoutSubviews];
  [(SCNView *)self _updateBackingSize];
  [(SCNView *)self _setNeedsDisplay];
}

- (void)setPointOfView:(id)view animate:(BOOL)animate
{
  animateCopy = animate;
  +[SCNTransaction begin];
  v7 = 0.0;
  if (animateCopy)
  {
    v7 = 0.75;
  }

  [SCNTransaction setAnimationDuration:v7];
  [(SCNView *)self setPointOfView:view];

  +[SCNTransaction commit];
}

- (void)setPointOfView:(id)view
{
  if ([(SCNView *)self pointOfView]!= view)
  {
    [(SCNEventHandler *)self->_navigationCameraController cameraWillChange];
    [(SCNRenderer *)self->_renderer setPointOfView:view];
    navigationCameraController = self->_navigationCameraController;

    [(SCNEventHandler *)navigationCameraController cameraDidChange];
  }
}

- (CGRect)currentViewport
{
  [(SCNRenderer *)self->_renderer currentViewport];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setPointOfCulling:(id)culling
{
  if ([(SCNView *)self pointOfCulling]!= culling)
  {
    renderer = self->_renderer;

    [(SCNRenderer *)renderer setPointOfCulling:culling];
  }
}

- (void)setAllowsCameraControl:(BOOL)allowsCameraControl
{
  v4 = C3DPreferencesGetBool(3) | allowsCameraControl;
  if (v4 != [(SCNEventHandler *)self->_navigationCameraController enabled])
  {
    navigationCameraController = self->_navigationCameraController;

    [(SCNEventHandler *)navigationCameraController setEnabled:v4];
  }
}

- (SCNCameraController)defaultCameraController
{
  navigationCameraController = [(SCNView *)self navigationCameraController];

  return [navigationCameraController cameraController];
}

- (void)setPlaying:(BOOL)playing
{
  playingCopy = playing;
  if ([(SCNView *)self isPlaying]!= playing)
  {
    [(SCNRenderer *)self->_renderer setPlaying:playingCopy];
    if (playingCopy)
    {
      displayLink = [(SCNView *)self displayLink];

      [displayLink setPaused:0];
    }

    else
    {
      [(SCNRenderer *)self->_renderer _nextFrameTime];
      if (v6 - CACurrentMediaTime() > 2.0 && (*(self + 456) & 2) == 0)
      {
        jitterer = self->_jitterer;

        [(SCNJitterer *)jitterer restart];
      }
    }
  }
}

- (void)setRendersContinuously:(BOOL)rendersContinuously
{
  v3 = *(self + 456);
  if (((((v3 & 2) == 0) ^ rendersContinuously) & 1) == 0)
  {
    if (rendersContinuously)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(self + 456) = v3 & 0xFD | v5;
    [(SCNRenderer *)self->_renderer setRendersContinuously:?];
    if ((*(self + 456) & 2) != 0)
    {
      displayLink = [(SCNView *)self displayLink];

      [displayLink setPaused:0];
    }

    else
    {
      [(SCNRenderer *)self->_renderer _nextFrameTime];
      if (v6 - CACurrentMediaTime() > 2.0 && ![(SCNView *)self isPlaying])
      {
        jitterer = self->_jitterer;

        [(SCNJitterer *)jitterer restart];
      }
    }
  }
}

- (void)stop:(id)sender
{
  [(SCNView *)self setPlaying:0];
  [(SCNRenderer *)self->_renderer _stop];

  [(SCNView *)self _setNeedsDisplay];
}

- (SCNVector4)_viewport
{
  width = self->_boundsSize.width;
  height = self->_boundsSize.height;
  v4 = 0.0;
  v5 = 0.0;
  result.w = height;
  result.z = width;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)hitTest:(CGPoint)test options:(id)options
{
  x = test.x;
  [(SCNView *)self _flipY:test.y];
  renderer = self->_renderer;
  width = self->_boundsSize.width;
  height = self->_boundsSize.height;

  return [(SCNRenderer *)renderer _hitTest:options viewport:x options:v7, width, height];
}

- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view
{
  renderer = self->_renderer;
  [(SCNView *)self _viewport];

  return [(SCNRenderer *)renderer _isNodeInsideFrustum:frustum withPointOfView:view viewport:?];
}

- (id)nodesInsideFrustumWithPointOfView:(id)view
{
  renderer = self->_renderer;
  [(SCNView *)self _viewport];

  return [(SCNRenderer *)renderer _nodesInsideFrustumWithPointOfView:view viewport:?];
}

- (SCNVector3)projectPoint:(SCNVector3)point
{
  z = point.z;
  y = point.y;
  x = point.x;
  renderer = self->_renderer;
  [(SCNView *)self _viewport];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  *&v16 = x;
  *&v17 = y;
  *&v18 = z;
  LODWORD(v19) = v9;
  LODWORD(v20) = v11;
  LODWORD(v21) = v13;
  LODWORD(v22) = v15;
  [(SCNRenderer *)renderer _projectPoint:v16 viewport:v17, v18, v19, v20, v21, v22];
  v24 = v23;
  v26 = v25;
  [(SCNView *)self _flipY:v27];
  v29 = v28;
  v30 = v24;
  v31 = v26;
  result.z = v31;
  result.y = v29;
  result.x = v30;
  return result;
}

- (SCNVector3)unprojectPoint:(SCNVector3)point
{
  z = point.z;
  x = point.x;
  [(SCNView *)self _flipY:point.y];
  v7 = v6;
  renderer = self->_renderer;
  [(SCNView *)self _viewport];
  LODWORD(v14) = LODWORD(v10);
  LODWORD(v15) = LODWORD(v11);
  LODWORD(v16) = LODWORD(v12);
  v9 = LODWORD(v13);
  *&v10 = x;
  *&v11 = v7;
  *&v12 = z;
  LODWORD(v13) = LODWORD(v14);
  LODWORD(v14) = LODWORD(v15);
  LODWORD(v15) = LODWORD(v16);
  LODWORD(v16) = v9;

  [(SCNRenderer *)renderer _unprojectPoint:v10 viewport:v11, v12, v13, v14, v15, v16];
  result.z = v19;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == @"kSCNViewObservingContext")
  {
    if ([path isEqualToString:{@"background.contents", object, change}])
    {

      [(SCNView *)self _updateOpacity];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SCNView;
    [(SCNView *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___SCNView;
  v5 = objc_msgSendSuper2(&v7, sel_keyPathsForValuesAffectingValueForKey_);
  if ([objc_msgSend(self "_kvoKeysForwardedToRenderer")])
  {
    return [objc_msgSend(MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"renderer.%@", key)), "setByAddingObjectsFromSet:", v5}];
  }

  return v5;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  if ([objc_msgSend(self "_kvoKeysForwardedToRenderer")])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___SCNView;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, key);
}

- (void)setEventHandler:(id)handler
{
  [(SCNView *)self setNavigationCameraController:?];
  [handler setView:self];

  [(SCNView *)self setAllowsCameraControl:1];
}

- (void)setNavigationCameraController:(id)controller
{
  navigationCameraController = self->_navigationCameraController;
  if (navigationCameraController != controller)
  {
    [(SCNEventHandler *)navigationCameraController setDelegate:0];

    self->_navigationCameraController = controller;
    [-[SCNView navigationCameraController](self "navigationCameraController")];

    [(SCNView *)self scn_updateGestureRecognizers];
  }
}

- (void)eventHandlerWantsRedraw
{
  displayLink = [(SCNView *)self displayLink];

  [displayLink setPaused:0];
}

- (void)setBackgroundColor:(NSColor *)backgroundColor
{
  _defaultBackgroundColor = backgroundColor;
  v5 = self->_backgroundColor;
  if (v5 != backgroundColor)
  {

    self->_backgroundColor = _defaultBackgroundColor;
  }

  if (!_defaultBackgroundColor)
  {
    _defaultBackgroundColor = [(SCNView *)self _defaultBackgroundColor];
  }

  v8.receiver = self;
  v8.super_class = SCNView;
  [(SCNView *)&v8 setBackgroundColor:_defaultBackgroundColor];
  traitCollection = [(SCNView *)self traitCollection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__SCNView_setBackgroundColor___block_invoke;
  v7[3] = &unk_2782FC928;
  v7[4] = traitCollection;
  v7[5] = self;
  v7[6] = _defaultBackgroundColor;
  [SCNTransaction postCommandWithContext:0 object:self applyBlock:v7];
  [(SCNView *)self _backgroundDidChange];
}

uint64_t __30__SCNView_setBackgroundColor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__SCNView_setBackgroundColor___block_invoke_2;
  v4[3] = &unk_2782FC790;
  v5 = *(a1 + 40);
  [v2 performAsCurrentTraitCollection:v4];
  return [*(a1 + 40) _setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = SCNView;
  [(SCNView *)&v7 traitCollectionDidChange:?];
  traitCollection = [(SCNView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:change])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__SCNView_traitCollectionDidChange___block_invoke;
    v6[3] = &unk_2782FC950;
    v6[4] = traitCollection;
    v6[5] = self;
    [SCNTransaction postCommandWithContext:0 object:self applyBlock:v6];
  }
}

uint64_t __36__SCNView_traitCollectionDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__SCNView_traitCollectionDidChange___block_invoke_2;
  v4[3] = &unk_2782FB608;
  v4[4] = *(a1 + 40);
  [v2 performAsCurrentTraitCollection:v4];
  *(*(a1 + 40) + 456) |= 0x20u;
  return [*(a1 + 40) _setNeedsDisplay];
}

- (void)setSceneTime:(double)time
{
  [(SCNRenderer *)self->_renderer setSceneTime:time];

  [(SCNView *)self _setNeedsDisplay];
}

- (void)setAutoenablesDefaultLighting:(BOOL)lighting
{
  [(SCNRenderer *)self->_renderer setAutoenablesDefaultLighting:lighting];

  [(SCNView *)self _setNeedsDisplay];
}

- (void)context
{
  if (self->_renderingAPI)
  {
    return [(SCNRenderer *)self->_renderer context];
  }

  else
  {
    return 0;
  }
}

- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block
{
  [(SCNRenderer *)self->_renderer setContext:[(SCNView *)self context]];
  renderer = self->_renderer;

  return [(SCNRenderer *)renderer prepareObject:object shouldAbortBlock:block];
}

- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler
{
  [(SCNRenderer *)self->_renderer setContext:[(SCNView *)self context]];
  renderer = self->_renderer;

  [(SCNRenderer *)renderer prepareObjects:objects withCompletionHandler:handler];
}

- (void)setOverlaySKScene:(id)scene
{
  [[(SCNView *)self overlaySKScene] willMoveFromView:self];
  [(SCNRenderer *)self->_renderer setOverlaySKScene:scene];
  if (scene)
  {
    [scene _didMoveToView:self];
    spriteKitEventHandler = self->_spriteKitEventHandler;
    if (!spriteKitEventHandler)
    {
      spriteKitEventHandler = objc_alloc_init(SCNSpriteKitEventHandler);
      self->_spriteKitEventHandler = spriteKitEventHandler;
    }

    [(SCNSpriteKitEventHandler *)spriteKitEventHandler setScene:scene];
  }

  else
  {
    v6 = self->_spriteKitEventHandler;
    if (v6)
    {

      self->_spriteKitEventHandler = 0;
    }
  }

  [(SCNView *)self _setNeedsDisplay];
}

- (void)setDisplayLink:(id)link
{
  displayLink = self->_displayLink;
  if (displayLink != link)
  {

    self->_displayLink = link;
  }
}

void __37__SCNView__createDisplayLinkIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__SCNView__createDisplayLinkIfNeeded__block_invoke_2;
  v3[3] = &unk_2783000F8;
  objc_copyWeak(&v4, (a1 + 32));
  v3[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
}

id __37__SCNView__createDisplayLinkIfNeeded__block_invoke_2(uint64_t a1)
{
  result = objc_loadWeak((a1 + 40));
  if (result)
  {
    v4 = result;
    *&v3 = *(result + 63);
    [*(a1 + 32) setPreferredFrameRate:v3];
    [v4 setDisplayLink:*(a1 + 32)];

    return [v4 _setNeedsDisplay];
  }

  return result;
}

- (BOOL)_checkAndUpdateDisplayLinkStateIfNeeded
{
  if (!self->_displayLink)
  {
    return 0;
  }

  if ((*(self + 456) & 2) != 0 || [(SCNView *)self isPlaying]|| self->_didTriggerRedrawWhileRendering)
  {
    v3 = 0;
  }

  else
  {
    v3 = [-[SCNView eventHandler](self "eventHandler")] ^ 1;
  }

  displayLink = self->_displayLink;
  [(SCNRenderer *)self->_renderer _nextFrameTime];

  return [SCNDisplayLink setPaused:"setPaused:nextFrameTimeHint:lastUpdate:" nextFrameTimeHint:v3 lastUpdate:?];
}

- (NSInteger)preferredFramesPerSecond
{
  displayLink = [(SCNView *)self displayLink];
  if (displayLink)
  {
    [displayLink preferredFrameRate];
  }

  else
  {
    return self->_preferredFramePerSeconds;
  }

  return v4;
}

- (void)setPreferredFramesPerSecond:(NSInteger)preferredFramesPerSecond
{
  displayLink = [(SCNView *)self displayLink];
  if (displayLink)
  {
    *&v6 = preferredFramesPerSecond;
    [displayLink setPreferredFrameRate:v6];
  }

  self->_preferredFramePerSeconds = preferredFramesPerSecond;
  v7 = [-[SCNView renderer](self "renderer")];

  [(SCNMTLRenderContext *)v7 setPreferredFramesPerSecond:?];
}

uint64_t __27__SCNView__setNeedsDisplay__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 496) isPaused];
  if (result)
  {
    v3 = *(*(a1 + 32) + 496);

    return [v3 setNeedsDisplay];
  }

  return result;
}

- (void)_systemTimeAnimationStarted:(id)started
{
  displayLink = [(SCNView *)self displayLink];

  [displayLink setPaused:0];
}

- (void)_sceneDidUpdate:(id)update
{
  self->_lastUpdate = CACurrentMediaTime();

  [(SCNView *)self _setNeedsDisplay];
}

- (void)setShowsStatistics:(BOOL)statistics
{
  [(SCNRenderer *)self->_renderer setShowsStatistics:C3DPreferencesGetBool(2) | statistics];

  [(SCNView *)self _setNeedsDisplay];
}

- (UIImage)snapshot
{
  width = self->_boundsSize.width;
  height = self->_boundsSize.height;
  [(SCNView *)self contentScaleFactor];
  v6 = width * v5;
  [(SCNView *)self contentScaleFactor];
  v8 = height * v7;
  renderer = self->_renderer;
  [(SCNRenderer *)renderer _systemTime];
  v11 = v10;
  antialiasingMode = [(SCNView *)self antialiasingMode];

  return [(SCNRenderer *)renderer snapshotAtTime:antialiasingMode withSize:v11 antialiasingMode:v6, v8];
}

- (NSString)description
{
  [(SCNView *)self frame];
  v3 = NSStringFromCGRect(v10);
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  scene = [(SCNView *)self scene];
  [(SCNView *)self sceneTime];
  return [v4 stringWithFormat:@"<%@: %p | scene=%@ sceneTime=%f frame=%@ pointOfView=%@>", v6, self, scene, v8, v3, -[SCNView pointOfView](self, "pointOfView")];
}

- (void)switchToCameraNamed:(id)named
{
  v5 = [(SCNNode *)[(SCNScene *)[(SCNView *)self scene] rootNode] childNodeWithName:named recursively:1];
  if (v5)
  {

    [(SCNView *)self setPointOfView:v5 animate:1];
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SCNView *)named switchToCameraNamed:v6];
    }
  }
}

- (void)switchToNextCamera
{
  v3 = [(SCNNode *)[(SCNScene *)[(SCNView *)self scene] rootNode] childNodesPassingTest:&__block_literal_global_99];
  if ([(NSArray *)v3 count])
  {
    v4 = [(NSArray *)v3 indexOfObject:[(SCNRenderer *)self->_renderer pointOfView]];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      firstObject = [(NSArray *)v3 firstObject];
    }

    else
    {
      firstObject = [(NSArray *)v3 objectAtIndex:(v4 + 1) % [(NSArray *)v3 count]];
    }

    [(SCNView *)self setPointOfView:firstObject animate:1];
  }
}

- (void)set_disableLinearRendering:(BOOL)rendering
{
  if (rendering)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 457) = *(self + 457) & 0xFD | v3;
  [(SCNView *)self _adjustBackingLayerPixelFormat];
}

- (void)setDebugOptions:(unint64_t)options
{
  [(SCNRenderer *)self->_renderer setDebugOptions:options];

  [(SCNView *)self _setNeedsDisplay];
}

- (void)setAntialiasingMode:(SCNAntialiasingMode)antialiasingMode
{
  [(SCNRenderer *)self->_renderer set_antialiasingMode:antialiasingMode];

  [(SCNView *)self _setNeedsDisplay];
}

- (double)_runFPSTestWithDuration:(double)duration
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (self->_renderingAPI)
  {
    [(SCNView *)self context];
  }

  _renderingQueue = [(SCNRenderer *)self->_renderer _renderingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SCNView__runFPSTestWithDuration___block_invoke;
  block[3] = &unk_278300148;
  *&block[6] = duration;
  block[4] = self;
  block[5] = &v9;
  dispatch_sync(_renderingQueue, block);
  v6 = v10[6];
  _Block_object_dispose(&v9, 8);
  return v6;
}

float __35__SCNView__runFPSTestWithDuration___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = Current - Current;
  v4 = 0.0;
  if (Current - Current < *(a1 + 48))
  {
    v5 = 0;
    do
    {
      v6 = objc_autoreleasePoolPush();
      [*(a1 + 32) _drawAtTime:0.0];
      objc_autoreleasePoolPop(v6);
      ++v5;
      v3 = CFAbsoluteTimeGetCurrent() - Current;
    }

    while (v3 < *(a1 + 48));
    v4 = v5;
  }

  result = v4 / v3;
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setContentScaleFactor:(double)factor
{
  v4.receiver = self;
  v4.super_class = SCNView;
  [(SCNView *)&v4 setContentScaleFactor:factor];
  if (self->_renderer)
  {
    [(SCNView *)self _updateBackingSize];
    [(SCNView *)self setNeedsDisplay];
  }
}

- (void)displayLayer:(id)layer
{
  if (self->_renderingAPI)
  {
    _renderingQueue = [(SCNRenderer *)self->_renderer _renderingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__SCNView_displayLayer___block_invoke;
    block[3] = &unk_2782FB608;
    block[4] = self;
    dispatch_sync(_renderingQueue, block);
  }
}

- (void)drawRect:(CGRect)rect
{
  if (self->_renderingAPI || (*(self + 456) & 4) == 0)
  {
    v4 = [(SCNRenderer *)self->_renderer _renderingQueue:rect.origin.x];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__SCNView_drawRect___block_invoke;
    block[3] = &unk_2782FB608;
    block[4] = self;
    dispatch_sync(v4, block);
  }
}

- (void)scn_setGestureRecognizers:(id)recognizers
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  controllerGestureRecognizers = self->_controllerGestureRecognizers;
  v6 = [(NSArray *)controllerGestureRecognizers countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(controllerGestureRecognizers);
        }

        [(SCNView *)self removeGestureRecognizer:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [(NSArray *)controllerGestureRecognizers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  recognizersCopy = recognizers;
  self->_controllerGestureRecognizers = recognizersCopy;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [(NSArray *)recognizersCopy countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(recognizersCopy);
        }

        [(SCNView *)self addGestureRecognizer:*(*(&v15 + 1) + 8 * j)];
      }

      v12 = [(NSArray *)recognizersCopy countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v23 = *MEMORY[0x277D85DE8];
  if (SCNContainsUIKitViews())
  {
    v8 = [(SCNView *)self hitTest:0 options:x, y];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [objc_msgSend(v13 "node")];
          v15 = [objc_msgSend(v14 "materials")];
          if (v15)
          {
            v15 = [objc_msgSend(v14 "materials")];
          }

          [objc_msgSend(v15 "diffuse")];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            SCNUIKitSourceSetCurrentViewEvent(self);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  v17.receiver = self;
  v17.super_class = SCNView;
  return [(SCNView *)&v17 hitTest:event withEvent:x, y];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  if (!-[SCNView showsStatistics](self, "showsStatistics") || ([objc_msgSend(began "anyObject")], v8 = v7, v10 = v9, -[SCNView bounds](self, "bounds"), (objc_msgSend(-[SCNView _authoringEnvironment](self, "_authoringEnvironment"), "didTapAtPoint:", v8, v11 - v10) & 1) == 0))
  {
    if (![(SCNSpriteKitEventHandler *)self->_spriteKitEventHandler touchesBegan:began withEvent:event])
    {
      v12.receiver = self;
      v12.super_class = SCNView;
      [(SCNView *)&v12 touchesBegan:began withEvent:event];
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  if (![SCNSpriteKitEventHandler touchesMoved:"touchesMoved:withEvent:" withEvent:?])
  {
    v7.receiver = self;
    v7.super_class = SCNView;
    [(SCNView *)&v7 touchesMoved:moved withEvent:event];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (![SCNSpriteKitEventHandler touchesEnded:"touchesEnded:withEvent:" withEvent:?])
  {
    v7.receiver = self;
    v7.super_class = SCNView;
    [(SCNView *)&v7 touchesEnded:ended withEvent:event];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  if (![SCNSpriteKitEventHandler touchesCancelled:"touchesCancelled:withEvent:" withEvent:?])
  {
    v7.receiver = self;
    v7.super_class = SCNView;
    [(SCNView *)&v7 touchesCancelled:cancelled withEvent:event];
  }
}

- (void)resumeDisplayLink
{
  [(SCNView *)self _createDisplayLinkIfNeeded];
  displayLink = [(SCNView *)self displayLink];
  if ((*(self + 456) & 2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SCNView *)self isPlaying]^ 1;
  }

  [(SCNRenderer *)self->_renderer _nextFrameTime];

  [displayLink setPaused:v4 nextFrameTimeHint:? lastUpdate:?];
}

- (void)didMoveToWindow
{
  if ([(SCNView *)self window])
  {
    gCurrentSCNViewFocusEnvironment = self;
    *(self + 456) &= ~0x10u;
    [(SCNView *)self resumeDisplayLink];
    [(SCNView *)self _setNeedsDisplay];
  }

  v3.receiver = self;
  v3.super_class = SCNView;
  [(SCNView *)&v3 didMoveToWindow];
  [(SCNView *)self _adjustBackingLayerPixelFormat];
  [(SCNView *)self _updateBackingSize];
  [(SCNRenderer *)self->_renderer _interfaceOrientationDidChange];
}

- (void)willMoveToWindow:(id)window
{
  if (!window)
  {
    SCNUIKitSourceNotifyViewWasRemoved(self);
    [(SCNView *)self pauseDisplayLink];
    *(self + 456) |= 0x10u;
  }

  v5.receiver = self;
  v5.super_class = SCNView;
  [(SCNView *)&v5 willMoveToWindow:window];
}

- (void)_enterForeground:(id)foreground
{
  *(self + 456) &= ~0x40u;
  v4 = *(self + 456);
  if (v4 < 0)
  {
    *(self + 456) = v4 & 0x7F;
    [(SCNScene *)[(SCNView *)self scene] setPaused:0];
  }

  AudioEngine = C3DAudioManagerGetAudioEngine(0);
  if (AudioEngine)
  {
    [AudioEngine startAndReturnError:0];
  }

  if ((*(self + 456) & 0x10) == 0)
  {

    [(SCNView *)self resumeDisplayLink];
  }
}

- (void)_enterBackground:(id)background
{
  *(self + 456) |= 0x40u;
  if (![(SCNScene *)[(SCNView *)self scene] isPaused])
  {
    *(self + 456) |= 0x80u;
    [(SCNScene *)[(SCNView *)self scene] setPaused:1];
  }

  [(SCNView *)self pauseDisplayLink];
  AudioEngine = C3DAudioManagerGetAudioEngine(0);
  if (AudioEngine)
  {
    [AudioEngine pause];
  }

  [(SCNView *)self _flushDisplayLink];
}

- (void)safeAreaInsetsDidChange
{
  v7.receiver = self;
  v7.super_class = SCNView;
  [(SCNView *)&v7 safeAreaInsetsDidChange];
  [(SCNView *)self safeAreaInsets];
  v4.f64[1] = v3;
  v6.f64[1] = v5;
  [(SCNRenderer *)self->_renderer set_drawableSafeAreaInsets:*vcvt_hight_f32_f64(vcvt_f32_f64(v6), v4).i64];
  [(SCNRenderer *)self->_renderer _interfaceOrientationDidChange];
}

- (id)focusItemsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12.receiver = self;
  v12.super_class = SCNView;
  v8 = [(SCNView *)&v12 focusItemsInRect:?];
  if ([v8 count])
  {
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v10 = v9;
  [(SCNNode *)[(SCNScene *)[(SCNView *)self scene] rootNode] _appendFocusableNodesInRect:self ofView:v9 toFocusItems:x, y, width, height];
  return v10;
}

- (void)switchToCameraNamed:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21BEF7000, a2, OS_LOG_TYPE_ERROR, "Error: switchToCameraNamed: no camera named %@", &v2, 0xCu);
}

@end