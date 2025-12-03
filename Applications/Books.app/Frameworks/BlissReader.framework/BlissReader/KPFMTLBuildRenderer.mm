@interface KPFMTLBuildRenderer
- (BOOL)addAnimationsAtLayerTime:(double)time;
- (CGRect)p_frameForTextures;
- (KPFMTLBuildRenderer)initWithEffectClass:(Class)class direction:(unint64_t)direction duration:(double)duration effect:(id)effect session:(id)session;
- (id)loadPluginIfNeeded;
- (void)animateAfterDelay:(double)delay;
- (void)dealloc;
- (void)displayMaskDidChange;
- (void)drawFrameAtLayerTime:(double)time;
- (void)p_initMetalLayerIfNeeded;
- (void)p_setupMetalContext;
- (void)prepareAnimations;
- (void)registerForBuildEndCallback:(SEL)callback target:(id)target;
- (void)removeAnimationsAndFinish:(BOOL)finish;
- (void)renderTextures;
- (void)replaceMetalLayerWithProxy;
- (void)setupGraphicsLayerWithFrame:(CGRect)frame;
- (void)setupPluginContext;
- (void)teardown;
@end

@implementation KPFMTLBuildRenderer

- (KPFMTLBuildRenderer)initWithEffectClass:(Class)class direction:(unint64_t)direction duration:(double)duration effect:(id)effect session:(id)session
{
  v22.receiver = self;
  v22.super_class = KPFMTLBuildRenderer;
  v11 = [(KPFMTLBuildRenderer *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->mEffectClass = class;
    v11->mDirection = direction;
    v11->mEffect = effect;
    v11->mSession = session;
    v13 = [KNAnimationContext alloc];
    [(CALayer *)[(KPFSession *)v12->mSession showLayer] bounds];
    v12->mAnimationContext = [(KNAnimationContext *)v13 initWithShowSize:[(KPFSession *)v12->mSession showLayer] viewScale:1 baseLayer:v14 isBaseLayerVisible:v15, 1.0];
    v12->mTextures = 0;
    v16 = [TSDMetalLayer alloc];
    [(CALayer *)[(KPFSession *)v12->mSession showLayer] bounds];
    v12->mMetalLayer = [v16 initWithFrame:objc_msgSend(objc_msgSend(effect isOpaque:"baseLayer") isWideGamut:"isOpaque") delegate:0 metalDevice:{v12, objc_msgSend(session, "metalDevice"), v17, v18, v19, v20}];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KPFMTLBuildRenderer;
  [(KPFMTLBuildRenderer *)&v3 dealloc];
}

- (void)setupPluginContext
{
  mPluginContext = self->mPluginContext;
  if (!mPluginContext)
  {
    mPluginContext = objc_alloc_init(KNAnimationPluginContext);
    self->mPluginContext = mPluginContext;
  }

  [(KNAnimationPluginContext *)mPluginContext setRendererType:10];
  [(KNAnimatedBuild *)[(KPFMTLBuildRenderer *)self animatedBuild] duration];
  [(KNAnimationPluginContext *)mPluginContext setDuration:?];
  [(KNAnimationPluginContext *)mPluginContext setDirection:self->mDirection];
  [(KNAnimationPluginContext *)mPluginContext setAnimatedBuild:[(KPFMTLBuildRenderer *)self animatedBuild]];
  mTextures = self->mTextures;

  [(KNAnimationPluginContext *)mPluginContext setTextures:mTextures];
}

- (void)p_setupMetalContext
{
  objc_opt_class();
  [(KPFMTLBuildRenderer *)self pluginContext];
  v3 = TSUCheckedDynamicCast();
  if (![v3 metalContext])
  {
    [v3 setMetalContext:objc_opt_new()];
  }

  metalContext = [v3 metalContext];
  [metalContext setDevice:{-[TSDMetalLayer device](self->mMetalLayer, "device")}];
  [metalContext setPixelFormat:-[TSDMetalLayer pixelFormat](self->mMetalLayer, "pixelFormat")];
  [(KPFMTLBuildRenderer *)self p_frameForTextures];
  [v3 setDrawableFrame:?];
  [(TSDMetalLayer *)self->mMetalLayer frame];
  [v3 setAnimationFrame:?];
  [(TSDMetalLayer *)self->mMetalLayer frame];
  [metalContext setLayerSize:{v5, v6}];
  [metalContext setCommandQueue:{-[TSDMetalLayer commandQueue](self->mMetalLayer, "commandQueue")}];
  mMetalLayer = self->mMetalLayer;

  [(TSDMetalLayer *)mMetalLayer setDelegate:self];
}

- (CGRect)p_frameForTextures
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  mTextures = self->mTextures;
  v8 = [(NSArray *)mTextures countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(mTextures);
        }

        [*(*(&v24 + 1) + 8 * i) frameOnCanvas];
        v13 = v12;
        v15 = v14;
        [(TSDMetalLayer *)self->mMetalLayer frame];
        v32.origin.x = v16;
        v32.origin.y = v17;
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = height;
        v32.size.width = v13;
        v32.size.height = v15;
        v30 = CGRectUnion(v29, v32);
        x = v30.origin.x;
        y = v30.origin.y;
        width = v30.size.width;
        height = v30.size.height;
      }

      v9 = [(NSArray *)mTextures countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  loadPluginIfNeeded = [(KPFMTLBuildRenderer *)self loadPluginIfNeeded];
  [(KPFMTLBuildRenderer *)self setupPluginContext];
  objc_opt_class();
  v19 = TSUDynamicCast();
  [v19 setAnimatedBuild:self->mAnimatedBuild];
  [loadPluginIfNeeded frameOfEffectWithFrame:v19 context:{x, y, width, height}];
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)setupGraphicsLayerWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!self->mAnimatedBuild)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (!self->mMetalLayer)
  {
    loadPluginIfNeeded = [(KPFMTLBuildRenderer *)self loadPluginIfNeeded];
    [(KPFMTLBuildRenderer *)self setupPluginContext];
    objc_opt_class();
    v9 = TSUDynamicCast();
    [v9 setAnimatedBuild:self->mAnimatedBuild];
    [loadPluginIfNeeded frameOfEffectWithFrame:v9 context:{x, y, width, height}];
    v10 = v16.origin.x;
    v11 = v16.origin.y;
    v12 = v16.size.width;
    v13 = v16.size.height;
    if (!CGRectIsEmpty(v16))
    {
      sharedMetalLayer = [(KPFSession *)self->mSession sharedMetalLayer];
      self->mMetalLayer = sharedMetalLayer;
      [(TSDMetalLayer *)sharedMetalLayer setFrame:v10, v11, v12, v13];
    }

    self->mStartTime = 0.0;
    self->mDelayTime = 0.0;
    self->mAnimationDidStart = 0;
    self->mForceRenderOfFirstFrame = 1;
    [(TSDMetalLayer *)self->mMetalLayer displayAtCurrentLayerTime];
  }

  +[CATransaction commit];
}

- (void)p_initMetalLayerIfNeeded
{
  mMetalLayer = self->mMetalLayer;
  if (!mMetalLayer)
  {
    sharedMetalLayer = [(KPFSession *)self->mSession sharedMetalLayer];
    self->mMetalLayer = sharedMetalLayer;
    [(TSDMetalLayer *)sharedMetalLayer displayAtCurrentLayerTime];
    [(TSDMetalLayer *)self->mMetalLayer setDelegate:self];
    [(CALayer *)[(KPFSession *)self->mSession showLayer] bounds];
    [(TSDMetalLayer *)self->mMetalLayer setBounds:?];
    [(CALayer *)[(KPFSession *)self->mSession showLayer] addSublayer:self->mMetalLayer];
    mMetalLayer = self->mMetalLayer;
  }

  [(TSDMetalLayer *)mMetalLayer setHidden:0];
  LODWORD(v5) = 1.0;
  [(TSDMetalLayer *)self->mMetalLayer setOpacity:v5];
  if (!self->mMetalLayer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (void)prepareAnimations
{
  if (!self->mAreAnimationsPrepared)
  {
    [(KPFMTLBuildRenderer *)self loadPluginIfNeeded];
    [(KPFMTLBuildRenderer *)self p_generateTextures];
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(KPFMTLBuildRenderer *)self p_setupMetalContext];
    if ([(NSArray *)self->mTextures count])
    {
      self->mAreAnimationsPrepared = 1;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      mTextures = self->mTextures;
      v4 = [(NSArray *)mTextures countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v33;
        y = CGRectNull.origin.y;
        height = CGRectNull.size.height;
        r1 = CGRectNull.size.width;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v33 != v6)
            {
              objc_enumerationMutation(mTextures);
            }

            v9 = *(*(&v32 + 1) + 8 * i);
            [(CALayer *)[(KPFGingerEffect *)self->mEffect layer] frame];
            v11 = v10;
            v13 = v12;
            [(CALayer *)[(KPFGingerEffect *)self->mEffect baseLayer] frame];
            TSDAddPoints();
            v41.origin.x = v14;
            v41.origin.y = v15;
            v37.origin.y = y;
            v37.origin.x = CGRectNull.origin.x;
            v37.size.width = r1;
            v37.size.height = height;
            v41.size.width = v11;
            v41.size.height = v13;
            v38 = CGRectUnion(v37, v41);
            x = v38.origin.x;
            v17 = v38.origin.y;
            width = v38.size.width;
            v19 = v38.size.height;
            [v9 frame];
            v21 = x + v20;
            [v9 frame];
            v22 = v17 + CGRectGetMaxY(v39);
            [v9 frame];
            v24 = v23;
            [v9 frame];
            [v9 setFrameOnCanvas:{v21, v22, v24}];
            [(KPFMTLBuildRenderer *)self setupGraphicsLayerWithFrame:x, v17, width, v19];
            [(CALayer *)[(KPFSession *)self->mSession showLayer] addSublayer:self->mMetalLayer];
          }

          v5 = [(NSArray *)mTextures countByEnumeratingWithState:&v32 objects:v36 count:16];
        }

        while (v5);
      }
    }

    v25 = [(NSArray *)self->mTextures objectAtIndex:0];
    if ([(KNAnimatedBuild *)[(KNAnimationPluginContext *)self->mPluginContext animatedBuild] isBuildOut])
    {
      [v25 frameOnCanvas];
      MidX = CGRectGetMidX(v40);
      [v25 frameOnCanvas];
      v28 = v27;
      [v25 frameOnCanvas];
      [objc_msgSend(v25 "layer")];
      self->mTextureLayer = [v25 layer];
      [-[TSDMetalLayer superlayer](self->mMetalLayer "superlayer")];
    }

    +[CATransaction commit];
  }
}

- (id)loadPluginIfNeeded
{
  result = self->mPlugin;
  if (!result)
  {
    result = [objc_alloc(self->mEffectClass) initWithAnimationContext:self->mAnimationContext];
    self->mPlugin = result;
  }

  return result;
}

- (void)renderTextures
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSArray *)self->mTextures copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setupMetalTextureForDevice:{-[TSDMetalContext device](-[KNAnimationPluginContext metalContext](self->mPluginContext, "metalContext"), "device")}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)addAnimationsAtLayerTime:(double)time
{
  if (!self->mAreAnimationsPrepared)
  {
    [(KPFMTLBuildRenderer *)self prepareAnimations];
    self->mForceRenderOfFirstFrame = 0;
  }

  if ([(NSArray *)self->mTextures count])
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(CALayer *)[(KPFGingerEffect *)self->mEffect layer] setHidden:1];
    self->mStartTime = time;
    self->mDelayTime = 0.0;
    self->mAnimationDidStart = 1;
    +[CATransaction commit];
  }

  return [(NSArray *)self->mTextures count]!= 0;
}

- (void)drawFrameAtLayerTime:(double)time
{
  [(TSDMetalLayer *)self->mMetalLayer setBackgroundColor:0];
  if (!self->mPlugin)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!self->mAnimatedBuild)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!self->mAreAnimationsPrepared)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!self->mWasPluginNotifiedOfAnimationStart)
  {
    mPlugin = self->mPlugin;
    if (objc_opt_respondsToSelector())
    {
      [(KPFMTLBuildRenderer *)self setupPluginContext];
      [(KPFMTLBuildRenderer *)self p_setupMetalContext];
      [mPlugin animationWillBeginWithContext:self->mPluginContext];
      self->mWasPluginNotifiedOfAnimationStart = 1;
    }
  }

  v5 = objc_autoreleasePoolPush();
  nextDrawable = [(TSDMetalLayer *)self->mMetalLayer nextDrawable];
  v7 = nextDrawable;
  if (!nextDrawable)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    if ([0 texture])
    {
      goto LABEL_32;
    }

LABEL_16:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    goto LABEL_32;
  }

  texture = [nextDrawable texture];
  if (!texture)
  {
    goto LABEL_16;
  }

  v9 = texture;
  commandQueue = self->_commandQueue;
  if (!commandQueue)
  {
    commandQueue = [-[TSDMetalLayer device](self->mMetalLayer "device")];
    if (commandQueue)
    {
      self->_commandQueue = commandQueue;
    }

    else
    {
      commandQueue = [(TSDMetalLayer *)self->mMetalLayer commandQueue];
      self->_commandQueue = commandQueue;
      if (!commandQueue)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        commandQueue = self->_commandQueue;
      }
    }
  }

  commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
  if (!commandBuffer)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->mForceRenderOfFirstFrame = 0;
  mPluginContext = self->mPluginContext;
  if (!mPluginContext)
  {
    [(KPFMTLBuildRenderer *)self setupPluginContext];
    mPluginContext = self->mPluginContext;
  }

  [(KNAnimationPluginContext *)mPluginContext duration];
  TSUClamp();
  v14 = v13;
  self->mAnimationRanToCompletion = v13 >= 1.0;
  metalContext = [(KNAnimationPluginContext *)self->mPluginContext metalContext];
  [(TSDMetalContext *)metalContext setCommandQueue:self->_commandQueue];
  [(TSDMetalContext *)metalContext setCommandBuffer:commandBuffer];
  [(TSDMetalContext *)metalContext setCurrentBuffer:self->mCurrentBuffer];
  v16 = +[MTLRenderPassDescriptor renderPassDescriptor];
  [[(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)v16 colorAttachments] objectAtIndexedSubscript:0] setTexture:v9];
  [[(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)v16 colorAttachments] objectAtIndexedSubscript:0] setLoadAction:2];
  [[(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)v16 colorAttachments] objectAtIndexedSubscript:0] setStoreAction:1];
  [[(MTLRenderPassColorAttachmentDescriptorArray *)[(MTLRenderPassDescriptor *)v16 colorAttachments] objectAtIndexedSubscript:0] setClearColor:0.0, 0.0, 0.0, 0.0];
  [(TSDMetalContext *)metalContext setPassDescriptor:v16];
  v17 = [commandBuffer renderCommandEncoderWithDescriptor:v16];
  if ([(TSDMetalContext *)metalContext renderEncoder])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(TSDMetalContext *)metalContext setRenderEncoder:v17];
  [(KNAnimationPluginContext *)self->mPluginContext setPercent:v14];
  [self->mPlugin renderFrameWithContext:self->mPluginContext];
  [v17 endEncoding];
  if (self->mIsRealtime)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_114D08;
    v20[3] = &unk_45DA98;
    v20[4] = v7;
    [commandBuffer addScheduledHandler:v20];
  }

  [commandBuffer commit];
  if (self->mTextureLayer)
  {
    [commandBuffer waitUntilCompleted];
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    +[CATransaction activateBackground:](CATransaction, "activateBackground:", +[NSThread isMainThread]^ 1);
    [(CALayer *)self->mTextureLayer removeFromSuperlayer];
    self->mTextureLayer = 0;
    +[CATransaction commit];
  }

  if (self->mAnimationRanToCompletion)
  {
    v18 = objc_autoreleasePoolPush();
    [(KPFMTLBuildRenderer *)self removeAnimationsAndFinish:1];
    objc_autoreleasePoolPop(v18);
    self->mAnimationRanToCompletion = 1;
    if (self->mBuildEndCallbackTarget)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_114D10;
      block[3] = &unk_45AE00;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

LABEL_32:
  objc_autoreleasePoolPop(v5);
}

- (void)animateAfterDelay:(double)delay
{
  if (!self->mTextures)
  {
    [(KPFMTLBuildRenderer *)self p_initMetalLayerIfNeeded];
    [(KPFMTLBuildRenderer *)self setupPluginContext];
    [(KPFMTLBuildRenderer *)self prepareAnimations];
    [(TSDMetalLayer *)self->mMetalLayer setDelegate:self];
    [(KPFMTLBuildRenderer *)self renderTextures];
  }

  if ([(KPFMTLBuildRenderer *)self addAnimationsAtLayerTime:CACurrentMediaTime() + delay])
  {
    self->mIsRealtime = 1;
    mMetalLayer = self->mMetalLayer;

    [(TSDMetalLayer *)mMetalLayer startAnimation];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_114E58;
    v6[3] = &unk_45B298;
    v6[4] = self;
    *&v6[5] = delay;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

- (void)replaceMetalLayerWithProxy
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v3 = [(NSArray *)self->mTextures objectAtIndex:0];
  [v3 frameOnCanvas];
  MidX = CGRectGetMidX(v9);
  [v3 frameOnCanvas];
  v6 = v5;
  [v3 frameOnCanvas];
  [objc_msgSend(v3 "layer")];
  [-[TSDMetalLayer superlayer](self->mMetalLayer "superlayer")];
  [(TSDMetalLayer *)self->mMetalLayer removeFromSuperlayer];

  +[CATransaction commit];
}

- (void)teardown
{
  [(TSDMetalLayer *)self->mMetalLayer setDelegate:0];
  mMetalLayer = self->mMetalLayer;

  [(TSDMetalLayer *)mMetalLayer tearDown];
}

- (void)removeAnimationsAndFinish:(BOOL)finish
{
  if (finish)
  {
    self->mAnimationRanToCompletion = 1;
  }

  mMetalLayer = self->mMetalLayer;
  if (mMetalLayer && [(TSDMetalLayer *)mMetalLayer superlayer])
  {
    if (!self->mPlugin)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    if (!self->mAnimatedBuild)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(TSDMetalLayer *)self->mMetalLayer setHidden:1];
    [(TSDMetalLayer *)self->mMetalLayer setOpacity:0.0];
    [(TSDMetalLayer *)self->mMetalLayer stopAnimation];
    self->mIsRealtime = 0;
    self->mNonRealtimeLayerTime = 0.0;
    if ([(KNAnimatedBuild *)[(KNAnimationPluginContext *)self->mPluginContext animatedBuild] isBuildIn])
    {
      [(KPFMTLBuildRenderer *)self replaceMetalLayerWithProxy];
    }

    +[CATransaction commit];
    if (self->mWasPluginNotifiedOfAnimationStart && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [self->mPlugin animationDidEndWithContext:self->mPluginContext];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    mTextures = self->mTextures;
    v6 = [(NSArray *)mTextures countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(mTextures);
          }

          [*(*(&v10 + 1) + 8 * i) releaseSingleTexture];
        }

        v7 = [(NSArray *)mTextures countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    self->mPlugin = 0;
    self->mTextures = 0;
    [(TSDMetalLayer *)self->mMetalLayer tearDown];
    [(TSDMetalLayer *)self->mMetalLayer setDelegate:0];
    *&self->mAreAnimationsPrepared = 0;
    *&self->mAnimationRanToCompletion = 0;
  }
}

- (void)registerForBuildEndCallback:(SEL)callback target:(id)target
{
  self->mBuildEndCallbackTarget = target;
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->mBuildEndCallbackSelector = callbackCopy;
}

- (void)displayMaskDidChange
{
  loadPluginIfNeeded = [(KPFMTLBuildRenderer *)self loadPluginIfNeeded];
  if (self->mWasPluginNotifiedOfAnimationStart)
  {
    v4 = loadPluginIfNeeded;
    if (objc_opt_respondsToSelector())
    {
      [v4 animationDidEndWithContext:self->mPluginContext];
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      mTextures = self->mTextures;
      v6 = [(NSArray *)mTextures countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(mTextures);
            }

            [*(*(&v10 + 1) + 8 * i) releaseSingleTexture];
          }

          v7 = [(NSArray *)mTextures countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      self->mWasPluginNotifiedOfAnimationStart = 0;
    }
  }
}

@end