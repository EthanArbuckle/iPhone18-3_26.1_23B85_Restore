@interface SCNMetalLayer
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (BOOL)_checkAndUpdateDisplayLinkStateIfNeeded;
- (BOOL)autoenablesDefaultLighting;
- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view;
- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block;
- (CGRect)currentViewport;
- (NSString)description;
- (SCNMetalLayer)init;
- (SCNMetalLayer)initWithLayer:(id)layer;
- (SCNNode)pointOfView;
- (SCNVector3)projectPoint:(SCNVector3)point;
- (SCNVector3)unprojectPoint:(SCNVector3)point;
- (SCNVector4)_viewport;
- (id)displayLink;
- (id)hitTest:(CGPoint)test options:(id)options;
- (id)hitTestWithSegmentFromPoint:(SCNVector3)point toPoint:(SCNVector3)toPoint options:(id)options;
- (id)nodesInsideFrustumWithPointOfView:(id)view;
- (id)pointOfCulling;
- (int64_t)preferredFramesPerSecond;
- (void)SCN_displayLinkCallback:(double)callback;
- (void)_drawAtTime:(double)time;
- (void)_jitterRedisplay;
- (void)_sceneDidUpdate:(id)update;
- (void)_systemTimeAnimationStarted:(id)started;
- (void)commonInit;
- (void)dealloc;
- (void)pauseDisplayLink;
- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler;
- (void)presentScene:(id)scene withTransition:(id)transition incomingPointOfView:(id)view completionHandler:(id)handler;
- (void)projectPoints:(SCNVector3 *)points count:(unint64_t)count;
- (void)resumeDisplayLink;
- (void)setAntialiasingMode:(unint64_t)mode;
- (void)setAutoenablesDefaultLighting:(BOOL)lighting;
- (void)setBackgroundColor:(CGColor *)color;
- (void)setNeedsDisplay;
- (void)setPlaying:(BOOL)playing;
- (void)setPointOfCulling:(id)culling;
- (void)setPointOfView:(id)view;
- (void)setPreferredFramesPerSecond:(int64_t)second;
- (void)setRenderer:(id)renderer;
- (void)setScene:(id)scene;
- (void)setSceneTime:(double)time;
- (void)stop:(id)stop;
@end

@implementation SCNMetalLayer

- (void)commonInit
{
  self->_preferredFramePerSeconds = 60;
  rendererOptions = [(SCNMetalLayer *)self rendererOptions];
  v4 = [objc_opt_class() deviceForOptions:rendererOptions];
  v5 = [[SCNRenderer alloc] _initWithOptions:rendererOptions isPrivateRenderer:1 privateRendererOwner:self clearsOnDraw:1 context:v4 renderingAPI:0];
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

- (SCNMetalLayer)initWithLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = SCNMetalLayer;
  return [(SCNMetalLayer *)&v4 initWithLayer:layer];
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
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  displayLink = self->_displayLink;
  if (isMainThread)
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
  isPlaying = [(SCNMetalLayer *)self isPlaying];
  displayLink = [(SCNMetalLayer *)self displayLink];
  [(SCNRenderer *)self->_renderer _nextFrameTime];

  return [displayLink setPaused:!isPlaying nextFrameTimeHint:? lastUpdate:?];
}

- (int64_t)preferredFramesPerSecond
{
  displayLink = [(SCNMetalLayer *)self displayLink];
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

- (void)setPreferredFramesPerSecond:(int64_t)second
{
  displayLink = [(SCNMetalLayer *)self displayLink];
  if (displayLink)
  {
    *&v6 = second;
    [displayLink setPreferredFrameRate:v6];
  }

  self->_preferredFramePerSeconds = second;
}

- (void)pauseDisplayLink
{
  [(SCNJitterer *)self->_jitterer stopIfNeeded];
  displayLink = [(SCNMetalLayer *)self displayLink];

  [displayLink setPaused:1];
}

- (void)resumeDisplayLink
{
  displayLink = [(SCNMetalLayer *)self displayLink];
  isPlaying = [(SCNMetalLayer *)self isPlaying];
  [(SCNRenderer *)self->_renderer _nextFrameTime];

  [displayLink setPaused:!isPlaying nextFrameTimeHint:? lastUpdate:?];
}

- (void)setPointOfView:(id)view
{
  [-[SCNMetalLayer renderer](self "renderer")];

  [(SCNMetalLayer *)self setNeedsDisplay];
}

- (SCNNode)pointOfView
{
  renderer = [(SCNMetalLayer *)self renderer];

  return [renderer pointOfView];
}

- (void)setPointOfCulling:(id)culling
{
  if ([(SCNMetalLayer *)self pointOfCulling]!= culling)
  {
    if (![culling scene])
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
  renderer = [(SCNMetalLayer *)self renderer];

  return [renderer pointOfCulling];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  scene = [(SCNMetalLayer *)self scene];
  [(SCNMetalLayer *)self sceneTime];
  return [v3 stringWithFormat:@"<%@: %p | scene=%@ sceneTime=%f pointOfView=%@>", v5, self, scene, v7, -[SCNMetalLayer pointOfView](self, "pointOfView")];
}

- (BOOL)autoenablesDefaultLighting
{
  renderer = [(SCNMetalLayer *)self renderer];

  return [renderer autoenablesDefaultLighting];
}

- (void)setAutoenablesDefaultLighting:(BOOL)lighting
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

- (id)hitTest:(CGPoint)test options:(id)options
{
  y = test.y;
  x = test.x;
  renderer = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self bounds];

  return [renderer _hitTest:options viewport:x options:y];
}

- (id)hitTestWithSegmentFromPoint:(SCNVector3)point toPoint:(SCNVector3)toPoint options:(id)options
{
  z = toPoint.z;
  y = toPoint.y;
  x = toPoint.x;
  v9 = point.z;
  v10 = point.y;
  v11 = point.x;
  renderer = [(SCNMetalLayer *)self renderer];
  *&v13 = v11;
  *&v14 = v10;
  *&v15 = v9;
  *&v16 = x;
  *&v17 = y;
  *&v18 = z;

  return [renderer hitTestWithSegmentFromPoint:options toPoint:v13 options:{v14, v15, v16, v17, v18}];
}

- (BOOL)isNodeInsideFrustum:(id)frustum withPointOfView:(id)view
{
  renderer = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self _viewport];

  return [renderer _isNodeInsideFrustum:frustum withPointOfView:view viewport:?];
}

- (id)nodesInsideFrustumWithPointOfView:(id)view
{
  renderer = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self _viewport];

  return [renderer _nodesInsideFrustumWithPointOfView:view viewport:?];
}

- (BOOL)prepareObject:(id)object shouldAbortBlock:(id)block
{
  renderer = [(SCNMetalLayer *)self renderer];

  return [renderer prepareObject:object shouldAbortBlock:block];
}

- (void)prepareObjects:(id)objects withCompletionHandler:(id)handler
{
  renderer = [(SCNMetalLayer *)self renderer];

  [renderer prepareObjects:objects withCompletionHandler:handler];
}

- (void)projectPoints:(SCNVector3 *)points count:(unint64_t)count
{
  renderer = [(SCNMetalLayer *)self renderer];
  [(SCNMetalLayer *)self _viewport];

  [renderer _projectPoints:points count:count viewport:?];
}

- (SCNVector3)projectPoint:(SCNVector3)point
{
  z = point.z;
  y = point.y;
  x = point.x;
  renderer = [(SCNMetalLayer *)self renderer];
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

  [renderer _projectPoint:v9 viewport:{v10, v11, v12, v13, v14, v15}];
  result.z = v18;
  result.y = v17;
  result.x = v16;
  return result;
}

- (SCNVector3)unprojectPoint:(SCNVector3)point
{
  z = point.z;
  y = point.y;
  x = point.x;
  renderer = [(SCNMetalLayer *)self renderer];
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

  [renderer _unprojectPoint:v9 viewport:{v10, v11, v12, v13, v14, v15}];
  result.z = v18;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)setRenderer:(id)renderer
{
  renderer = self->_renderer;
  if (renderer != renderer)
  {

    self->_renderer = renderer;
  }
}

- (void)setBackgroundColor:(CGColor *)color
{
  v10.receiver = self;
  v10.super_class = SCNMetalLayer;
  [(SCNMetalLayer *)&v10 setBackgroundColor:?];
  v5 = [MEMORY[0x277D75348] colorWithCGColor:color];
  v8 = 0;
  v9 = 0;
  v6 = 0.0;
  v7 = 0;
  [v5 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
  [(SCNMetalLayer *)self setOpaque:v6 >= 1.0, v6];
  [(SCNRenderer *)self->_renderer setBackgroundColor:v5];
  [(SCNMetalLayer *)self setNeedsDisplay];
}

- (void)presentScene:(id)scene withTransition:(id)transition incomingPointOfView:(id)view completionHandler:(id)handler
{
  scene = self->_scene;
  pointOfView = [(SCNMetalLayer *)self pointOfView];
  +[SCNTransaction begin];
  [SCNTransaction setAnimationDuration:0.0];
  [SCNTransaction setImmediateMode:1];
  [(SCNMetalLayer *)self setScene:scene];
  [(SCNMetalLayer *)self setPointOfView:view];
  if (transition)
  {
    [(SCNRenderer *)self->_renderer _prepareForTransition:transition outgoingScene:scene outgoingPointOfView:pointOfView completionHandler:handler];
  }

  +[SCNTransaction commit];
}

- (void)setScene:(id)scene
{
  if ([(SCNMetalLayer *)self scene]!= scene)
  {

    self->_scene = scene;
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    renderer = self->_renderer;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __26__SCNMetalLayer_setScene___block_invoke;
    v6[3] = &unk_2782FB608;
    v6[4] = self;
    [(SCNRenderer *)renderer setScene:scene completionHandler:v6];
    if (scene)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    }

    [(SCNMetalLayer *)self setNeedsDisplay];
  }
}

- (void)setSceneTime:(double)time
{
  [(SCNRenderer *)self->_renderer setSceneTime:time];

  [(SCNMetalLayer *)self setNeedsDisplay];
}

- (void)stop:(id)stop
{
  [(SCNMetalLayer *)self setPlaying:0];
  renderer = [(SCNMetalLayer *)self renderer];

  [renderer _stop];
}

- (void)setPlaying:(BOOL)playing
{
  playingCopy = playing;
  if ([(SCNMetalLayer *)self isPlaying]!= playing)
  {
    [(SCNRenderer *)self->_renderer setPlaying:playingCopy];
    if (playingCopy)
    {
      displayLink = [(SCNMetalLayer *)self displayLink];

      [displayLink setPaused:0];
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

- (void)SCN_displayLinkCallback:(double)callback
{
  selfCopy = self;
  [(SCNMetalLayer *)self _drawAtTime:callback];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SCNMetalLayer_SCN_displayLinkCallback___block_invoke;
  block[3] = &unk_2782FB608;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_drawAtTime:(double)time
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
      time = v6;
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
      [(SCNRenderer *)self->_renderer _drawAtTime:time];
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

- (void)_systemTimeAnimationStarted:(id)started
{
  displayLink = [(SCNMetalLayer *)self displayLink];

  [displayLink setPaused:0];
}

- (void)_sceneDidUpdate:(id)update
{
  self->_lastUpdate = CACurrentMediaTime();

  [(SCNMetalLayer *)self setNeedsDisplay];
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___SCNMetalLayer;
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
  v6.super_class = &OBJC_METACLASS___SCNMetalLayer;
  return objc_msgSendSuper2(&v6, sel_automaticallyNotifiesObserversForKey_, key);
}

- (void)_jitterRedisplay
{
  self->_drawForJittering = 1;
  [(SCNMetalLayer *)self display];
  self->_drawForJittering = 0;
}

- (void)setAntialiasingMode:(unint64_t)mode
{
  [(SCNRenderer *)self->_renderer set_antialiasingMode:mode];

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