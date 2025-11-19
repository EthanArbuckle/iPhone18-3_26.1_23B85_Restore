@interface CAKPFSession
- (BOOL)decrementCurrentEventIndex;
- (BOOL)incrementCurrentEventIndex;
- (CAKPFSession)initWithKPFDocument:(id)a3 showLayer:(id)a4;
- (KPFEvent)currentEvent;
- (KPFEvent)nextEvent;
- (MTLDevice)metalDevice;
- (TSDMetalLayer)sharedMetalLayer;
- (int64_t)nextEventIndexAfterCurrent;
- (unint64_t)previousSlideIndex;
- (unint64_t)visibleEventIndex;
- (void)dealloc;
- (void)layoutIfNeeded;
- (void)setEventIndex:(unint64_t)a3 skipBreadCrumb:(BOOL)a4;
- (void)setPlaybackStatus:(int)a3;
- (void)tearDown;
@end

@implementation CAKPFSession

- (CAKPFSession)initWithKPFDocument:(id)a3 showLayer:(id)a4
{
  v11.receiver = self;
  v11.super_class = CAKPFSession;
  v6 = [(CAKPFSession *)&v11 init];
  if (v6)
  {
    v7 = a4;
    v6->mShowLayer = v7;
    [(CALayer *)v7 setMasksToBounds:1];
    [(CALayer *)v6->mShowLayer setEdgeAntialiasingMask:0];
    v6->mKPFDocument = a3;
    v6->mPlaybackState = 1;
    v6->mBreadCrumbTrail = objc_alloc_init(NSMutableArray);
    v6->mAnimationRegistry = objc_alloc_init(KPFAnimationRegistry);
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [(NSUserDefaults *)v8 BOOLForKey:kTHEnableKeynoteDebugging];
    v6->mIsDebuggingEnabled = v9;
    if (v9)
    {
      v6->mStatusLayer = objc_alloc_init(CALayer);
      [(CAKPFSession *)v6 layoutIfNeeded];
      [[(CALayer *)v6->mShowLayer superlayer] insertSublayer:v6->mStatusLayer above:v6->mShowLayer];
      [(CAKPFSession *)v6 setPlaybackStatus:2];
    }
  }

  return v6;
}

- (TSDMetalLayer)sharedMetalLayer
{
  objc_sync_enter(self);
  if (!self->_sharedMetalLayer)
  {
    +[CATransaction begin];
    +[CATransaction activateBackground:](CATransaction, "activateBackground:", +[NSThread isMainThread]^ 1);
    [CATransaction setDisableActions:1];
    v3 = [TSDMetalLayer alloc];
    [(CALayer *)self->mShowLayer bounds];
    v8 = [v3 initWithFrame:1 isOpaque:0 isWideGamut:0 delegate:-[CAKPFSession metalDevice](self metalDevice:{"metalDevice"), v4, v5, v6, v7}];
    self->_sharedMetalLayer = v8;
    [(CALayer *)self->mShowLayer addSublayer:v8];
    +[CATransaction commit];
  }

  objc_sync_exit(self);
  return self->_sharedMetalLayer;
}

- (MTLDevice)metalDevice
{
  result = self->mMetalDevice;
  if (!result)
  {
    result = MTLCreateSystemDefaultDevice();
    self->mMetalDevice = result;
  }

  return result;
}

- (void)dealloc
{
  [(KPFEvent *)self->mCurrentEvent tearDown];

  [(TSDMetalLayer *)self->_sharedMetalLayer tearDown];
  v3.receiver = self;
  v3.super_class = CAKPFSession;
  [(CAKPFSession *)&v3 dealloc];
}

- (void)tearDown
{
  [(KPFEvent *)self->mCurrentEvent tearDown];

  self->mCurrentEvent = 0;
}

- (unint64_t)visibleEventIndex
{
  if (self->mPlaybackStatus == 4)
  {
    return [(CAKPFSession *)self nextEventIndexAfterCurrent];
  }

  else
  {
    return self->mCurrentEventIndex;
  }
}

- (int64_t)nextEventIndexAfterCurrent
{
  mCurrentEventIndex = self->mCurrentEventIndex;
  if (mCurrentEventIndex <= [self->mKPFDocument eventCount]- 1)
  {
    v4 = self->mCurrentEventIndex;
    if (v4 == [self->mKPFDocument eventCount]- 1)
    {
      return [self->mKPFDocument isLooping]- 1;
    }

    else
    {
      return self->mCurrentEventIndex + 1;
    }
  }

  return mCurrentEventIndex;
}

- (KPFEvent)nextEvent
{
  result = self->mNextEvent;
  if (!result)
  {
    v4 = [(CAKPFSession *)self nextEventIndexAfterCurrent];
    if (v4 == -1)
    {
      return self->mNextEvent;
    }

    else
    {
      result = [self->mKPFDocument newEventAtIndex:v4];
      self->mNextEvent = result;
    }
  }

  return result;
}

- (BOOL)incrementCurrentEventIndex
{
  v3 = [(CAKPFSession *)self nextEventIndexAfterCurrent];
  if (v3 != -1)
  {
    v4 = [self->mKPFDocument slideIndexForEventIndex:self->mCurrentEventIndex];
    [(KPFEvent *)self->mCurrentEvent tearDown];

    v5 = [self->mKPFDocument newEventAtIndex:v3];
    self->mCurrentEventIndex = v3;
    self->mCurrentEvent = v5;
    if (v4 != [self->mKPFDocument slideIndexForEventIndex:v3])
    {
      [(NSMutableArray *)self->mBreadCrumbTrail addObject:[NSNumber numberWithUnsignedInteger:v4]];
    }

    self->mNextEvent = 0;
  }

  return v3 != -1;
}

- (BOOL)decrementCurrentEventIndex
{
  v3 = [self->mKPFDocument slideIndexForEventIndex:self->mCurrentEventIndex];
  mCurrentEventIndex = self->mCurrentEventIndex;
  if (!mCurrentEventIndex)
  {
    v5 = [self->mKPFDocument isLooping];
    if (!v5)
    {
      return v5;
    }

    mCurrentEventIndex = [self->mKPFDocument eventCount];
  }

  self->mCurrentEventIndex = mCurrentEventIndex - 1;
  if (v3 != [self->mKPFDocument slideIndexForEventIndex:?])
  {
    [(NSMutableArray *)self->mBreadCrumbTrail addObject:[NSNumber numberWithUnsignedInteger:v3]];
  }

  [(KPFEvent *)self->mCurrentEvent tearDown];

  self->mCurrentEvent = 0;
  self->mNextEvent = 0;
  LOBYTE(v5) = 1;
  return v5;
}

- (KPFEvent)currentEvent
{
  result = self->mCurrentEvent;
  if (!result)
  {
    result = [self->mKPFDocument newEventAtIndex:self->mCurrentEventIndex];
    self->mCurrentEvent = result;
  }

  return result;
}

- (void)setEventIndex:(unint64_t)a3 skipBreadCrumb:(BOOL)a4
{
  if ([self->mKPFDocument eventCount]> a3)
  {
    v7 = [self->mKPFDocument slideIndexForEventIndex:self->mCurrentEventIndex];
    if (self->mPlaybackStatus == 4)
    {
      [(NSMutableArray *)self->mBreadCrumbTrail addObject:[NSNumber numberWithUnsignedInteger:v7]];
      v7 = [self->mKPFDocument slideIndexForEventIndex:[(CAKPFSession *)self nextEventIndexAfterCurrent]];
    }

    self->mCurrentEventIndex = a3;
    v8 = [self->mKPFDocument slideIndexForEventIndex:a3];
    if (!a4 && v7 != v8)
    {
      [(NSMutableArray *)self->mBreadCrumbTrail addObject:[NSNumber numberWithUnsignedInteger:v7]];
    }

    [(KPFEvent *)self->mCurrentEvent tearDown];

    self->mCurrentEvent = 0;
    self->mNextEvent = 0;
  }
}

- (void)setPlaybackStatus:(int)a3
{
  self->mPlaybackStatus = a3;
  if (self->mIsDebuggingEnabled)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    if ((a3 - 3) >= 2)
    {
      if (a3 == 2)
      {
        v6 = +[TSUColor orangeColor];
        v7 = @"Playback status: Preparing...";
      }

      else
      {
        v6 = +[TSUColor greenColor];
        v7 = @"Playback status: Ready";
      }
    }

    else
    {
      v6 = +[TSUColor redColor];
      v7 = @"Playback status: Animating...";
    }

    -[CALayer setBackgroundColor:](self->mStatusLayer, "setBackgroundColor:", [v6 CGColor]);
    v8 = CACurrentMediaTime();
    NSLog(@"%f - %@", *&v8, v7);
    +[CATransaction flush];

    +[CATransaction commit];
  }
}

- (void)layoutIfNeeded
{
  [(CALayer *)self->mShowLayer bounds];
  v4 = 25.0 / v3;
  [(CALayer *)self->mShowLayer frame];
  v6 = v4 * v5;
  [(CALayer *)self->mShowLayer frame];
  v8 = v6 + v7;
  [(CALayer *)self->mShowLayer frame];
  v10 = v9;
  [(CALayer *)self->mShowLayer frame];
  mStatusLayer = self->mStatusLayer;

  [(CALayer *)mStatusLayer setFrame:v8, v10 + v11 + v6 * -2.0, v6, v6];
}

- (unint64_t)previousSlideIndex
{
  v3 = [-[NSMutableArray lastObject](self->mBreadCrumbTrail "lastObject")];
  if (self->mPlaybackStatus == 4)
  {
    mKPFDocument = self->mKPFDocument;
    mCurrentEventIndex = self->mCurrentEventIndex;

    return [mKPFDocument slideIndexForEventIndex:mCurrentEventIndex];
  }

  else
  {
    v7 = v3;
    [(NSMutableArray *)self->mBreadCrumbTrail removeLastObject];
    return v7;
  }
}

@end