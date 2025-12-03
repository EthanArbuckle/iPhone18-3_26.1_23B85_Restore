@interface KPFMTLTransitionRenderer
- (BOOL)addAnimationsAtTime:(double)time relativeToCurrentMediaTime:(BOOL)mediaTime;
- (BOOL)shouldDrawFrameAtLayerTime:(double)time;
- (KPFMTLTransitionRenderer)initWithEffectClass:(Class)class direction:(unint64_t)direction duration:(double)duration effect:(id)effect session:(id)session;
- (KPFMTLTransitionRenderer)initWithEffectClass:(Class)class direction:(unint64_t)direction duration:(double)duration session:(id)session;
- (id)plugin;
- (void)animateWithDelay:(double)delay;
- (void)dealloc;
- (void)drawFrameAtLayerTime:(double)time;
- (void)p_generateTextures;
- (void)p_initMetalLayerIfNeeded;
- (void)registerForTransitionEndCallback:(SEL)callback target:(id)target;
- (void)removeAnimations;
- (void)renderTextures;
- (void)setupPluginContext;
- (void)teardown;
@end

@implementation KPFMTLTransitionRenderer

- (KPFMTLTransitionRenderer)initWithEffectClass:(Class)class direction:(unint64_t)direction duration:(double)duration effect:(id)effect session:(id)session
{
  effectCopy = effect;
  sessionCopy = session;
  v32.receiver = self;
  v32.super_class = KPFMTLTransitionRenderer;
  v15 = [(KPFMTLTransitionRenderer *)&v32 init];
  v16 = v15;
  if (v15)
  {
    v15->mEffectClass = class;
    objc_storeStrong(&v15->mEffect, effect);
    objc_storeStrong(&v16->mSession, session);
    v16->mDirection = direction;
    v16->mDuration = duration;
    v17 = [KNAnimationContext alloc];
    showLayer = [(KPFSession *)v16->mSession showLayer];
    [showLayer bounds];
    v20 = v19;
    v22 = v21;
    showLayer2 = [(KPFSession *)v16->mSession showLayer];
    v24 = [(KNAnimationContext *)v17 initWithShowSize:showLayer2 viewScale:1 baseLayer:v20 isBaseLayerVisible:v22, 1.0];
    mAnimationContext = v16->mAnimationContext;
    v16->mAnimationContext = v24;

    mTextures = v16->mTextures;
    v16->mTextures = 0;

    sharedMetalLayer = [(KPFSession *)v16->mSession sharedMetalLayer];
    metalLayer = v16->metalLayer;
    v16->metalLayer = sharedMetalLayer;

    v29 = dispatch_semaphore_create(3);
    mInFlightSemaphore = v16->mInFlightSemaphore;
    v16->mInFlightSemaphore = v29;
  }

  return v16;
}

- (KPFMTLTransitionRenderer)initWithEffectClass:(Class)class direction:(unint64_t)direction duration:(double)duration session:(id)session
{
  sessionCopy = session;
  v29.receiver = self;
  v29.super_class = KPFMTLTransitionRenderer;
  v12 = [(KPFMTLTransitionRenderer *)&v29 init];
  v13 = v12;
  if (v12)
  {
    v12->mEffectClass = class;
    objc_storeStrong(&v12->mCAKPFSession, session);
    v13->mDirection = direction;
    v13->mDuration = duration;
    v14 = [KNAnimationContext alloc];
    showLayer = [sessionCopy showLayer];
    [showLayer bounds];
    v17 = v16;
    v19 = v18;
    showLayer2 = [sessionCopy showLayer];
    v21 = [(KNAnimationContext *)v14 initWithShowSize:showLayer2 viewScale:1 baseLayer:v17 isBaseLayerVisible:v19, 1.0];
    mAnimationContext = v13->mAnimationContext;
    v13->mAnimationContext = v21;

    mTextures = v13->mTextures;
    v13->mTextures = 0;

    sharedMetalLayer = [sessionCopy sharedMetalLayer];
    metalLayer = v13->metalLayer;
    v13->metalLayer = sharedMetalLayer;

    v26 = dispatch_semaphore_create(3);
    mInFlightSemaphore = v13->mInFlightSemaphore;
    v13->mInFlightSemaphore = v26;
  }

  return v13;
}

- (void)dealloc
{
  [(KPFMTLTransitionRenderer *)self teardown];
  v3.receiver = self;
  v3.super_class = KPFMTLTransitionRenderer;
  [(KPFMTLTransitionRenderer *)&v3 dealloc];
}

- (void)setupPluginContext
{
  mContext = self->mContext;
  if (!mContext)
  {
    v4 = objc_alloc_init(KNAnimationPluginContext);
    v5 = self->mContext;
    self->mContext = v4;

    mContext = self->mContext;
  }

  [(KNAnimationPluginContext *)mContext setRendererType:9];
  [(KNAnimationPluginContext *)self->mContext setTextures:self->mTextures];
  [(KNAnimationPluginContext *)self->mContext setPercent:self->mPercent];
  [(KNAnimationPluginContext *)self->mContext setDuration:self->mDuration];
  [(KNAnimationPluginContext *)self->mContext setDirection:self->mDirection];
  v6 = objc_opt_new();
  [(KNAnimationPluginContext *)self->mContext setMetalContext:v6];

  device = [(TSDMetalLayer *)self->metalLayer device];
  metalContext = [(KNAnimationPluginContext *)self->mContext metalContext];
  [metalContext setDevice:device];

  pixelFormat = [(TSDMetalLayer *)self->metalLayer pixelFormat];
  metalContext2 = [(KNAnimationPluginContext *)self->mContext metalContext];
  [metalContext2 setPixelFormat:pixelFormat];

  [(TSDMetalLayer *)self->metalLayer bounds];
  v12 = v11;
  v14 = v13;
  metalContext3 = [(KNAnimationPluginContext *)self->mContext metalContext];
  [metalContext3 setLayerSize:{v12, v14}];

  metalLayer = self->metalLayer;

  [(TSDMetalLayer *)metalLayer setDelegate:self];
}

- (id)plugin
{
  mPlugin = self->mPlugin;
  if (!mPlugin)
  {
    v4 = [objc_alloc(self->mEffectClass) initWithAnimationContext:self->mAnimationContext];
    v5 = self->mPlugin;
    self->mPlugin = v4;

    mPlugin = self->mPlugin;
  }

  return mPlugin;
}

- (void)p_initMetalLayerIfNeeded
{
  mCAKPFSession = self->mCAKPFSession;
  if (!mCAKPFSession)
  {
    mCAKPFSession = self->mSession;
  }

  sharedMetalLayer = [mCAKPFSession sharedMetalLayer];
  metalLayer = self->metalLayer;
  self->metalLayer = sharedMetalLayer;

  [(TSDMetalLayer *)self->metalLayer displayAtCurrentLayerTime];
  [(TSDMetalLayer *)self->metalLayer setDelegate:self];
  mSession = self->mCAKPFSession;
  if (!mSession)
  {
    mSession = self->mSession;
  }

  showLayer = [mSession showLayer];
  [showLayer bounds];
  [(TSDMetalLayer *)self->metalLayer setBounds:?];

  [(TSDMetalLayer *)self->metalLayer setPresentsWithTransaction:0];
  v8 = self->mCAKPFSession;
  v9 = +[TSUColor blackColor];
  cGColor = [v9 CGColor];
  if (v8)
  {
    showLayer2 = [self->mCAKPFSession showLayer];
    [showLayer2 setBackgroundColor:cGColor];

    showLayer3 = [self->mCAKPFSession showLayer];
    [showLayer3 setSublayers:0];

    showLayer4 = [self->mCAKPFSession showLayer];
    [showLayer4 addSublayer:self->metalLayer];

    if (self->metalLayer)
    {
      goto LABEL_11;
    }

    v14 = 176;
  }

  else
  {
    showLayer5 = [(KPFSession *)self->mSession showLayer];
    [showLayer5 setBackgroundColor:cGColor];

    showLayer6 = [(KPFSession *)self->mSession showLayer];
    [showLayer6 setSublayers:0];

    showLayer7 = [(KPFSession *)self->mSession showLayer];
    [showLayer7 addSublayer:self->metalLayer];

    if (self->metalLayer)
    {
      goto LABEL_11;
    }

    v14 = 181;
  }

  v18 = +[TSUAssertionHandler currentHandler];
  v19 = [NSString stringWithUTF8String:"[KPFMTLTransitionRenderer p_initMetalLayerIfNeeded]"];
  v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KPFMTLTransitionRenderer.m"];
  [v18 handleFailureInFunction:v19 file:v20 lineNumber:v14 description:{@"invalid nil value for '%s'", "metalLayer"}];

LABEL_11:
  [(TSDMetalLayer *)self->metalLayer setHidden:0];
  v21 = self->metalLayer;
  LODWORD(v22) = 1.0;

  [(TSDMetalLayer *)v21 setOpacity:v22];
}

- (void)p_generateTextures
{
  textures = [(KPFGingerEffect *)self->mEffect textures];
  v4 = [textures objectAtIndex:0];

  mCAKPFSession = self->mCAKPFSession;
  if (mCAKPFSession)
  {
    kPFDocument = [mCAKPFSession KPFDocument];
    currentEvent = [self->mCAKPFSession currentEvent];
    textures2 = [currentEvent textures];
    v9 = [textures2 objectAtIndex:0];
    v10 = [kPFDocument newImageForTextureName:v9];
  }

  else
  {
    v10 = [(KPFSession *)self->mSession CGImageForTextureName:v4];
  }

  v11 = [[TSDTexturedRectangle alloc] initWithCGImage:v10];
  textures3 = [(KPFGingerEffect *)self->mEffect textures];
  v13 = [textures3 objectAtIndex:1];

  v14 = self->mCAKPFSession;
  if (v14)
  {
    kPFDocument2 = [(CAKPFSession *)v14 KPFDocument];
    currentEvent2 = [self->mCAKPFSession currentEvent];
    textures4 = [currentEvent2 textures];
    v18 = [textures4 objectAtIndex:1];
    v19 = [kPFDocument2 newImageForTextureName:v18];
  }

  else
  {
    v19 = [(KPFSession *)self->mSession CGImageForTextureName:v13];
  }

  v20 = [[TSDTexturedRectangle alloc] initWithCGImage:v19];
  v23[0] = v11;
  v23[1] = v20;
  v21 = [NSArray arrayWithObjects:v23 count:2];
  mTextures = self->mTextures;
  self->mTextures = v21;
}

- (void)renderTextures
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSArray *)self->mTextures copy];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        metalContext = [(KNAnimationPluginContext *)self->mContext metalContext];
        device = [metalContext device];
        [v8 setupMetalTextureForDevice:device];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)animateWithDelay:(double)delay
{
  if (!self->mTextures)
  {
    [(KPFMTLTransitionRenderer *)self p_initMetalLayerIfNeeded];
    [(KPFMTLTransitionRenderer *)self setupPluginContext];
    [(KPFMTLTransitionRenderer *)self p_generateTextures];
    [(KPFMTLTransitionRenderer *)self renderTextures];
  }

  if ([(KPFMTLTransitionRenderer *)self addAnimationsAtTime:1 relativeToCurrentMediaTime:delay])
  {
    self->mIsRealtime = 1;
    [(TSDMetalLayer *)self->metalLayer startAnimation];
    self->_isAnimationBeingStopped = 0;
  }

  else if (self->mTransitionEndCallbackTarget)
  {
    if (objc_opt_respondsToSelector())
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_6B7F8;
      block[3] = &unk_45AD60;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (BOOL)addAnimationsAtTime:(double)time relativeToCurrentMediaTime:(BOOL)mediaTime
{
  timeCopy = time;
  if (mediaTime)
  {
    timeCopy = CACurrentMediaTime() + time;
  }

  self->mStartTime = timeCopy;
  self->mDelayTime = 0.0;
  return 1;
}

- (void)teardown
{
  [(TSDMetalLayer *)self->metalLayer stopAnimation];
  if (!self->mAnimationRanToCompletion)
  {
    [(KPFMTLTransitionRenderer *)self removeAnimations];
  }

  mPlugin = self->mPlugin;
  self->mPlugin = 0;

  metalLayer = self->metalLayer;

  [(TSDMetalLayer *)metalLayer tearDown];
}

- (void)removeAnimations
{
  superlayer = [(TSDMetalLayer *)self->metalLayer superlayer];

  if (superlayer)
  {
    [(TSDMetalLayer *)self->metalLayer stopAnimation];
    [(TSDMetalLayer *)self->metalLayer setPresentsWithTransaction:0];
    self->mIsRealtime = 0;
    self->_isAnimationBeingStopped = 1;
    plugin = [(KPFMTLTransitionRenderer *)self plugin];
    if (self->mWasPluginNotifiedOfAnimationStart && (objc_opt_respondsToSelector() & 1) != 0)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_6BAD4;
      block[3] = &unk_45ADB0;
      v17 = plugin;
      selfCopy = self;
      dispatch_async(&_dispatch_main_q, block);
    }

    self->mWasPluginNotifiedOfAnimationStart = 0;
    mPlugin = self->mPlugin;
    self->mPlugin = 0;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = self->mTextures;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10) releaseSingleTexture];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v19 count:16];
      }

      while (v8);
    }

    mTextures = self->mTextures;
    if (mTextures)
    {
      self->mTextures = 0;

      [(TSDMetalLayer *)self->metalLayer setDelegate:0];
      self->mAnimationRanToCompletion = 0;
    }
  }
}

- (void)registerForTransitionEndCallback:(SEL)callback target:(id)target
{
  targetCopy = target;
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->mTransitionEndCallbackTarget = targetCopy;
  self->mTransitionEndCallbackSelector = callbackCopy;

  _objc_release_x1();
}

- (BOOL)shouldDrawFrameAtLayerTime:(double)time
{
  if (self->mStartTime > time)
  {
    self->mForceRenderFirstFrame = 1;
  }

  return !self->mAnimationRanToCompletion;
}

- (void)drawFrameAtLayerTime:(double)time
{
  if (!self->mIsRealtime)
  {
    time = 0.0;
  }

  plugin = [(KPFMTLTransitionRenderer *)self plugin];
  if (!self->mWasPluginNotifiedOfAnimationStart && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(KPFMTLTransitionRenderer *)self setupPluginContext];
    [plugin animationWillBeginWithContext:self->mContext];
    self->mWasPluginNotifiedOfAnimationStart = 1;
  }

  [(TSDMetalLayer *)self->metalLayer setDelegate:self];
  v6 = objc_autoreleasePoolPush();
  nextDrawable = [(TSDMetalLayer *)self->metalLayer nextDrawable];
  if (!nextDrawable)
  {
    v8 = +[TSUAssertionHandler currentHandler];
    v9 = [NSString stringWithUTF8String:"[KPFMTLTransitionRenderer drawFrameAtLayerTime:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KPFMTLTransitionRenderer.m"];
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:358 description:{@"invalid nil value for '%s'", "drawable"}];
  }

  texture = [nextDrawable texture];
  if (!texture)
  {
    v12 = +[TSUAssertionHandler currentHandler];
    v13 = [NSString stringWithUTF8String:"[KPFMTLTransitionRenderer drawFrameAtLayerTime:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KPFMTLTransitionRenderer.m"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:360 description:{@"invalid nil value for '%s'", "texture"}];

    goto LABEL_14;
  }

  if (!nextDrawable)
  {
LABEL_14:
    commandBuffer = 0;
    goto LABEL_15;
  }

  self->mForceRenderFirstFrame = 0;
  dispatch_semaphore_wait(self->mInFlightSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_isAnimationBeingStopped)
  {
    dispatch_semaphore_signal(self->mInFlightSemaphore);
    goto LABEL_14;
  }

  commandQueue = self->_commandQueue;
  if (!commandQueue)
  {
    device = [(TSDMetalLayer *)self->metalLayer device];
    newCommandQueue = [device newCommandQueue];
    v19 = self->_commandQueue;
    self->_commandQueue = newCommandQueue;

    commandQueue = self->_commandQueue;
    if (!commandQueue)
    {
      v20 = +[TSUAssertionHandler currentHandler];
      v21 = [NSString stringWithUTF8String:"[KPFMTLTransitionRenderer drawFrameAtLayerTime:]"];
      v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KPFMTLTransitionRenderer.m"];
      [v20 handleFailureInFunction:v21 file:v22 lineNumber:374 description:{@"invalid nil value for '%s'", "_commandQueue"}];

      commandQueue = self->_commandQueue;
    }
  }

  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  if (!commandBuffer)
  {
    v23 = +[TSUAssertionHandler currentHandler];
    v24 = [NSString stringWithUTF8String:"[KPFMTLTransitionRenderer drawFrameAtLayerTime:]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KPFMTLTransitionRenderer.m"];
    [v23 handleFailureInFunction:v24 file:v25 lineNumber:377 description:{@"invalid nil value for '%s'", "commandBuffer"}];
  }

  v43 = v6;
  mContext = self->mContext;
  if (!mContext)
  {
    [(KPFMTLTransitionRenderer *)self setupPluginContext];
    mContext = self->mContext;
  }

  v45 = mContext;
  metalContext = [(KNAnimationPluginContext *)v45 metalContext];
  [metalContext setCommandQueue:self->_commandQueue];
  [metalContext setCommandBuffer:commandBuffer];
  [metalContext setCurrentBuffer:self->mCurrentBuffer];
  v28 = +[MTLRenderPassDescriptor renderPassDescriptor];
  colorAttachments = [v28 colorAttachments];
  v30 = [colorAttachments objectAtIndexedSubscript:0];
  [v30 setTexture:texture];

  colorAttachments2 = [v28 colorAttachments];
  v32 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v32 setLoadAction:2];

  colorAttachments3 = [v28 colorAttachments];
  v34 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v34 setStoreAction:1];

  colorAttachments4 = [v28 colorAttachments];
  v36 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v36 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  [metalContext setPassDescriptor:v28];
  v44 = [commandBuffer renderCommandEncoderWithDescriptor:v28];
  renderEncoder = [metalContext renderEncoder];

  if (renderEncoder)
  {
    v38 = +[TSUAssertionHandler currentHandler];
    v39 = [NSString stringWithUTF8String:"[KPFMTLTransitionRenderer drawFrameAtLayerTime:]"];
    v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/KPFMTLTransitionRenderer.m"];
    [v38 handleFailureInFunction:v39 file:v40 lineNumber:397 description:{@"expected nil value for '%s'", "metalContext.renderEncoder"}];
  }

  [metalContext setRenderEncoder:v44];
  self->mPercent = (time - self->mStartTime) / self->mDuration;
  TSUClamp();
  self->mPercent = v41;
  [(KNAnimationPluginContext *)v45 setPercent:?];
  self->mAnimationRanToCompletion = self->mPercent >= 1.0;
  plugin2 = [(KPFMTLTransitionRenderer *)self plugin];
  [plugin2 renderFrameWithContext:self->mContext];

  [v44 endEncoding];
  if (self->mIsRealtime)
  {
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_6C2D0;
    v52[3] = &unk_45C0B0;
    v53 = nextDrawable;
    [commandBuffer addScheduledHandler:v52];
  }

  objc_initWeak(&location, self->mInFlightSemaphore);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_6C2D8;
  v49[3] = &unk_45C0D8;
  objc_copyWeak(&v50, &location);
  [commandBuffer addCompletedHandler:v49];
  v6 = v43;
  [commandBuffer commit];
  self->mCurrentBuffer = (self->mCurrentBuffer + 1) % 3;
  self->mForceRenderFirstFrame = 0;
  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);

LABEL_15:
  if (self->mAnimationRanToCompletion)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_6C318;
    block[3] = &unk_45ADB0;
    v47 = commandBuffer;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  objc_autoreleasePoolPop(v6);
}

@end