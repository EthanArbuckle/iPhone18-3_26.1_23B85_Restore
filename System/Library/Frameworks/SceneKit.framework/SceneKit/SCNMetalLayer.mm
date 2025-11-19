@interface SCNMetalLayer
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (BOOL)_checkAndUpdateDisplayLinkStateIfNeeded;
- (BOOL)autoenablesDefaultLighting;
- (BOOL)isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4;
- (BOOL)prepareObject:(id)a3 shouldAbortBlock:(id)a4;
- (CGRect)currentViewport;
- (NSString)description;
- (SCNMetalLayer)init;
- (SCNMetalLayer)initWithLayer:(id)a3;
- (SCNNode)pointOfView;
- (SCNVector3)projectPoint:(SCNVector3)a3;
- (SCNVector3)unprojectPoint:(SCNVector3)a3;
- (SCNVector4)_viewport;
- (id)displayLink;
- (id)hitTest:(CGPoint)a3 options:(id)a4;
- (id)hitTestWithSegmentFromPoint:(SCNVector3)a3 toPoint:(SCNVector3)a4 options:(id)a5;
- (id)nodesInsideFrustumWithPointOfView:(id)a3;
- (id)pointOfCulling;
- (int64_t)preferredFramesPerSecond;
- (void)SCN_displayLinkCallback:(double)a3;
- (void)_drawAtTime:(double)a3;
- (void)_jitterRedisplay;
- (void)_sceneDidUpdate:(id)a3;
- (void)_systemTimeAnimationStarted:(id)a3;
- (void)commonInit;
- (void)dealloc;
- (void)pauseDisplayLink;
- (void)prepareObjects:(id)a3 withCompletionHandler:(id)a4;
- (void)presentScene:(id)a3 withTransition:(id)a4 incomingPointOfView:(id)a5 completionHandler:(id)a6;
- (void)projectPoints:(SCNVector3 *)a3 count:(unint64_t)a4;
- (void)resumeDisplayLink;
- (void)setAntialiasingMode:(unint64_t)a3;
- (void)setAutoenablesDefaultLighting:(BOOL)a3;
- (void)setBackgroundColor:(CGColor *)a3;
- (void)setNeedsDisplay;
- (void)setPlaying:(BOOL)a3;
- (void)setPointOfCulling:(id)a3;
- (void)setPointOfView:(id)a3;
- (void)setPreferredFramesPerSecond:(int64_t)a3;
- (void)setRenderer:(id)a3;
- (void)setScene:(id)a3;
- (void)setSceneTime:(double)a3;
- (void)stop:(id)a3;
@end

@implementation SCNMetalLayer

- (void)commonInit
{
  self->_preferredFramePerSeconds = 60;
  v3 = [(SCNMetalLayer *)self rendererOptions];
  v4 = [objc_opt_class() deviceForOptions:v3];
  v5 = [[SCNRenderer alloc] _initWithOptions:v3 isPrivateRenderer:1 privateRendererOwner:self clearsOnDraw:1 context:v4 renderingAPI:0];
  [(SCNMetalLayer *)self setRenderer:v5];
  self->_lastRenderedTime = -1.0;

  [(CAMetalLayer *)self setDevice:v4];
  [(CAMetalLayer *)self setPixelFormat:C3DMetalFramebufferPixelFormat(0)];
  [(CAMetalLayer *)self setFramebufferOnly:1];
  [(SCNMetalLayer *)self setLoops:1];
  [(SCNMetalLayer *)self setScene:+[SCNScene scene]];
  -[SCNMetalLayer setBackgroundColor:](self, "setBackgroundColor:", [objc_msgSend(MEMORY[0x277D75348] "whiteColor")]);

  [(SCNMetalLayer *)self setNeedsDisplayOnBoundsChange:1];
}

- (SCNMetalLayer)initWithLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNMetalLayer;
  return [(SCNMetalLayer *)&v4 initWithLayer:a3];
}

- (SCNMetalLayer)init
{
  v5.receiver = self;
  v5.super_class = SCNMetalLayer;
  v2 = [(CAMetalLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SCNMetalLayer *)v2 commonInit];
  }

  return v3;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(SCNDisplayLink *)self->_displayLink invalidate];
  v3 = [MEMORY[0x277CCACC8] isMainThread];
  displayLink = self->_displayLink;
  if (v3)
  {

    self->_displayLink = 0;
  }

  else
  {
    self->_displayLink = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__SCNMetalLayer_dealloc__block_invoke;
    block[3] = &unk_2782FB608;
    block[4] = displayLink;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v5.receiver = self;
  v5.super_class = SCNMetalLayer;
  [(CAMetalLayer *)&v5 dealloc];
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

- (id)displayLink
{
  result = self->_displayLink;
  if (!result)
  {
    v4 = [self SCN_setupDisplayLinkWithQueue:[(SCNRenderer *)self->_renderer _renderingQueue] screen:0 policy:0];
    self->_displayLink = v4;
    [(SCNDisplayLink *)v4 setPaused:0];
    *&v5 = self->_preferredFramePerSeconds;
    [(SCNDisplayLink *)self->_displayLink setPreferredFrameRate:v5];
    return self->_displayLink;
  }

  return result;
}

- (BOOL)_checkAndUpdateDisplayLinkStateIfNeeded
{
  v3 = [(SCNMetalLayer *)self isPlaying];
  v4 = [(SCNMetalLayer *)self displayLink];
  [(SCNRenderer *)self->_renderer _nextFrameTime];

  return [v4 setPaused:!v3 nextFrameTimeHint:? lastUpdate:?];
}

- (int64_t)preferredFramesPerSecond
{
  v3 = [(SCNMetalLayer *)self displayLink];
  if (v3)
  {
    [v3 preferredFrameRate];
  }

  else
  {
    return self->_preferredFramePerSeconds;
  }

  return v4;
}

- (void)setPreferredFramesPerSecond:(int64_t)a3
{
  v5 = [(SCNMetalLayer *)self displayLink];
  if (v5)
  {
    *&v6 = a3;
    [v5 setPreferredFrameRate:v6];
  }

  self->_preferredFramePerSeconds = a3;
}

- (void)pauseDisplayLink
{
  [(SCNJitterer *)self->_jitterer stopIfNeeded];
  v3 = [(SCNMetalLayer *)self displayLink];

  [v3 setPaused:1];
}

- (void)resumeDisplayLink
{
  v3 = [(SCNMetalLayer *)self displayLink];
  v4 = [(SCNMetalLayer *)self isPlaying];
  [(SCNRenderer *)self->_renderer _nextFrameTime];

  [v3 setPaused:!v4 nextFrameTimeHint:? lastUpdate:?];
}

- (void)setPointOfView:(id)a3
{
  [-[SCNMetalLayer renderer](self "renderer")];

  [(SCNMetalLayer *)self setNeedsDisplay];
}

- (SCNNode)pointOfView
{
  v2 = [(SCNMetalLayer *)self renderer];

  return [v2 pointOfView];
}

- (void)setPointOfCulling:(id)a3
{
  if ([(SCNMetalLayer *)self pointOfCulling]!= a3)
  {
    if (![a3 scene])
    {
      v5 = scn_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [SCNMetalLayer setPointOfCulling:v5];
      }
    }

    [-[SCNMetalLayer renderer](self "renderer")];
    [(SCNMetalLayer *)self setNeedsDisplay];
  }
}

- (id)pointOfCulling
{
  v2 = [(SCNMetalLayer *)self renderer];

  return [v2 pointOfCulling];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SCNMetalLayer *)self scene];
  [(SCNMetalLayer *)self sceneTime];
  return [v3 stringWithFormat:@"<%@: %p | scene=%@ sceneTime=%f pointOfView=%@>", v5, self, v6, v7, -[SCNMetalLayer pointOfView](self, "pointOfView")];
}

- (BOOL)autoenablesDefaultLighting
{
  v2 = [(SCNMetalLayer *)self renderer];

  return [v2 autoenablesDefaultLighting];
}

- (void)setAutoenablesDefaultLighting:(BOOL)a3
{
  [-[SCNMetalLayer renderer](self "renderer")];

  [(SCNMetalLayer *)self setNeedsDisplay];
}

- (SCNVector4)_viewport
{
  [(SCNMetalLayer *)self bounds];
  v3 = v2;
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  result.w = v5;
  result.z = v3;
  result.y = v7;
  result.x = v6;
  return result;
}

- (id)hitTest:(CGPoint)a3 options:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self bounds];

  return [v8 _hitTest:a4 viewport:x options:y];
}

- (id)hitTestWithSegmentFromPoint:(SCNVector3)a3 toPoint:(SCNVector3)a4 options:(id)a5
{
  z = a4.z;
  y = a4.y;
  x = a4.x;
  v9 = a3.z;
  v10 = a3.y;
  v11 = a3.x;
  v12 = [(SCNMetalLayer *)self renderer];
  *&v13 = v11;
  *&v14 = v10;
  *&v15 = v9;
  *&v16 = x;
  *&v17 = y;
  *&v18 = z;

  return [v12 hitTestWithSegmentFromPoint:a5 toPoint:v13 options:{v14, v15, v16, v17, v18}];
}

- (BOOL)isNodeInsideFrustum:(id)a3 withPointOfView:(id)a4
{
  v7 = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self _viewport];

  return [v7 _isNodeInsideFrustum:a3 withPointOfView:a4 viewport:?];
}

- (id)nodesInsideFrustumWithPointOfView:(id)a3
{
  v5 = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self _viewport];

  return [v5 _nodesInsideFrustumWithPointOfView:a3 viewport:?];
}

- (BOOL)prepareObject:(id)a3 shouldAbortBlock:(id)a4
{
  v6 = [(SCNMetalLayer *)self renderer];

  return [v6 prepareObject:a3 shouldAbortBlock:a4];
}

- (void)prepareObjects:(id)a3 withCompletionHandler:(id)a4
{
  v6 = [(SCNMetalLayer *)self renderer];

  [v6 prepareObjects:a3 withCompletionHandler:a4];
}

- (void)projectPoints:(SCNVector3 *)a3 count:(unint64_t)a4
{
  v7 = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self _viewport];

  [v7 _projectPoints:a3 count:a4 viewport:?];
}

- (SCNVector3)projectPoint:(SCNVector3)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v7 = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self _viewport];
  LODWORD(v13) = LODWORD(v9);
  LODWORD(v14) = LODWORD(v10);
  LODWORD(v15) = LODWORD(v11);
  v8 = LODWORD(v12);
  *&v9 = x;
  *&v10 = y;
  *&v11 = z;
  LODWORD(v12) = LODWORD(v13);
  LODWORD(v13) = LODWORD(v14);
  LODWORD(v14) = LODWORD(v15);
  LODWORD(v15) = v8;

  [v7 _projectPoint:v9 viewport:{v10, v11, v12, v13, v14, v15}];
  result.z = v18;
  result.y = v17;
  result.x = v16;
  return result;
}

- (SCNVector3)unprojectPoint:(SCNVector3)a3
{
  z = a3.z;
  y = a3.y;
  x = a3.x;
  v7 = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self _viewport];
  LODWORD(v13) = LODWORD(v9);
  LODWORD(v14) = LODWORD(v10);
  LODWORD(v15) = LODWORD(v11);
  v8 = LODWORD(v12);
  *&v9 = x;
  *&v10 = y;
  *&v11 = z;
  LODWORD(v12) = LODWORD(v13);
  LODWORD(v13) = LODWORD(v14);
  LODWORD(v14) = LODWORD(v15);
  LODWORD(v15) = v8;

  [v7 _unprojectPoint:v9 viewport:{v10, v11, v12, v13, v14, v15}];
  result.z = v18;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)setRenderer:(id)a3
{
  renderer = self->_renderer;
  if (renderer != a3)
  {

    self->_renderer = a3;
  }
}

- (void)setBackgroundColor:(CGColor *)a3
{
  v10.receiver = self;
  v10.super_class = SCNMetalLayer;
  [(SCNMetalLayer *)&v10 setBackgroundColor:?];
  v5 = [MEMORY[0x277D75348] colorWithCGColor:a3];
  v8 = 0;
  v9 = 0;
  v6 = 0.0;
  v7 = 0;
  [v5 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  [(SCNMetalLayer *)self setOpaque:v6 >= 1.0, v6];
  [(SCNRenderer *)self->_renderer setBackgroundColor:v5];
  [(SCNMetalLayer *)self setNeedsDisplay];
}

- (void)presentScene:(id)a3 withTransition:(id)a4 incomingPointOfView:(id)a5 completionHandler:(id)a6
{
  scene = self->_scene;
  v12 = [(SCNMetalLayer *)self pointOfView];
  +[SCNTransaction begin];
  [SCNTransaction setAnimationDuration:0.0];
  [SCNTransaction setImmediateMode:1];
  [(SCNMetalLayer *)self setScene:a3];
  [(SCNMetalLayer *)self setPointOfView:a5];
  if (a4)
  {
    [(SCNRenderer *)self->_renderer _prepareForTransition:a4 outgoingScene:scene outgoingPointOfView:v12 completionHandler:a6];
  }

  +[SCNTransaction commit];
}

- (void)setScene:(id)a3
{
  if ([(SCNMetalLayer *)self scene]!= a3)
  {

    self->_scene = a3;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    renderer = self->_renderer;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __26__SCNMetalLayer_setScene___block_invoke;
    v6[3] = &unk_2782FB608;
    v6[4] = self;
    [(SCNRenderer *)renderer setScene:a3 completionHandler:v6];
    if (a3)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    }

    [(SCNMetalLayer *)self setNeedsDisplay];
  }
}

- (void)setSceneTime:(double)a3
{
  [(SCNRenderer *)self->_renderer setSceneTime:a3];

  [(SCNMetalLayer *)self setNeedsDisplay];
}

- (void)stop:(id)a3
{
  [(SCNMetalLayer *)self setPlaying:0];
  v4 = [(SCNMetalLayer *)self renderer];

  [v4 _stop];
}

- (void)setPlaying:(BOOL)a3
{
  v3 = a3;
  if ([(SCNMetalLayer *)self isPlaying]!= a3)
  {
    [(SCNRenderer *)self->_renderer setPlaying:v3];
    if (v3)
    {
      v5 = [(SCNMetalLayer *)self displayLink];

      [v5 setPaused:0];
    }

    else
    {
      [(SCNRenderer *)self->_renderer _nextFrameTime];
      if (v6 - CACurrentMediaTime() > 2.0)
      {
        jitterer = self->_jitterer;

        [(SCNJitterer *)jitterer restart];
      }
    }
  }
}

- (void)setNeedsDisplay
{
  self->_lastRenderedTime = -1.0;
  v2.receiver = self;
  v2.super_class = SCNMetalLayer;
  [(SCNMetalLayer *)&v2 setNeedsDisplay];
}

- (void)SCN_displayLinkCallback:(double)a3
{
  v5 = self;
  [(SCNMetalLayer *)self _drawAtTime:a3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SCNMetalLayer_SCN_displayLinkCallback___block_invoke;
  block[3] = &unk_2782FB608;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_drawAtTime:(double)a3
{
  [(SCNMetalLayer *)self convertTime:0 fromLayer:?];
  *&v5 = v5;
  v6 = *&v5;
  if (!C3DIsRunningInEditor() || self->_lastRenderedTime != v6)
  {
    self->_lastRenderedTime = v6;
    if (self->_syncTimeWithCoreAnimation)
    {
      [-[SCNMetalLayer renderer](self "renderer")];
      [SCNTransaction setImmediateMode:1];
      [-[SCNMetalLayer renderer](self "renderer")];
      [SCNTransaction setImmediateMode:0];
      a3 = v6;
    }

    [(SCNJitterer *)self->_jitterer stopIfNeeded];
    [(SCNRenderer *)self->_renderer _displayLinkStatsTick];
    [(SCNMetalLayer *)self bounds];
    v25 = v8;
    v26 = v7;
    [(SCNMetalLayer *)self contentsScale];
    v10 = v9 != 0.0;
    if (v9 == 1.0)
    {
      v10 = 0;
    }

    v11.f64[0] = v26;
    v11.f64[1] = v25;
    v12 = vmulq_n_f64(v11, v9);
    v13 = v11;
    *&v11.f64[0] = vdup_n_s32(v10);
    v14.i64[0] = LODWORD(v11.f64[0]);
    v14.i64[1] = HIDWORD(v11.f64[0]);
    v27 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v14, 0x3FuLL)), v12, v13))));
    [(SCNRenderer *)self->_renderer _setBackingSize:?];
    *&v15 = v27.u32[0];
    *&v16 = v27.u32[1];
    [(SCNRenderer *)self->_renderer set_viewport:0.0, 0.0, v15, v16];
    if (v27.i32[0])
    {
      v17 = v27.i32[1] == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      [(SCNRenderer *)self->_renderer lock];
      [(SCNRenderer *)self->_renderer _getFrameIndex];
      kdebug_trace();
      v18 = objc_autoreleasePoolPush();
      [(SCNRenderer *)self->_renderer _beginFrame];
      +[SCNTransaction lock];
      [(SCNRenderer *)self->_renderer _drawAtTime:a3];
      [(SCNRenderer *)self->_renderer _presentFramebuffer];
      +[SCNTransaction unlock];
      objc_autoreleasePoolPop(v18);
      kdebug_trace();
      [(SCNRenderer *)self->_renderer _nextFrameTime];
      v20 = v19;
      v21 = CACurrentMediaTime();
      [(SCNRenderer *)self->_renderer unlock];
      if (C3DIsRunningInEditor())
      {
        [-[SCNMetalLayer renderer](self "renderer")];
        [-[SCNMetalLayer displayLink](self "displayLink")];
      }

      else if ([(SCNMetalLayer *)self _checkAndUpdateDisplayLinkStateIfNeeded])
      {
        if (![(SCNMetalLayer *)self isPlaying]&& !self->_drawForJittering)
        {
          v23 = v20 - v21;
          if (v20 - v21 > 2.0)
          {
            [(SCNJitterer *)self->_jitterer restart];
          }
        }
      }

      renderer = self->_renderer;

      [(SCNRenderer *)renderer _displayLinkStatsTack];
    }
  }
}

- (void)_systemTimeAnimationStarted:(id)a3
{
  v3 = [(SCNMetalLayer *)self displayLink];

  [v3 setPaused:0];
}

- (void)_sceneDidUpdate:(id)a3
{
  self->_lastUpdate = CACurrentMediaTime();

  [(SCNMetalLayer *)self setNeedsDisplay];
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___SCNMetalLayer;
  v5 = objc_msgSendSuper2(&v7, sel_keyPathsForValuesAffectingValueForKey_);
  if ([objc_msgSend(a1 "_kvoKeysForwardedToRenderer")])
  {
    return [objc_msgSend(MEMORY[0x277CBEB98] setWithObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"renderer.%@", a3)), "setByAddingObjectsFromSet:", v5}];
  }

  return v5;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  if ([objc_msgSend(a1 "_kvoKeysForwardedToRenderer")])
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___SCNMetalLayer;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, a3);
}

- (void)_jitterRedisplay
{
  self->_drawForJittering = 1;
  [(SCNMetalLayer *)self display];
  self->_drawForJittering = 0;
}

- (void)setAntialiasingMode:(unint64_t)a3
{
  [(SCNRenderer *)self->_renderer set_antialiasingMode:a3];

  [(SCNMetalLayer *)self setNeedsDisplay];
}

- (void)setPointOfCulling:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "pointOfCulling.scene";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Null argument", &v1, 0xCu);
}

@end