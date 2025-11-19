@interface THWAudioRep
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)handleGesture:(id)a3;
- (CALayer)pressableAnimationLayer;
- (THWAudioRep)initWithLayout:(id)a3 canvas:(id)a4;
- (THWAutoplayConfig)autoplayConfig;
- (THWMovieLayout)movieLayout;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (double)currentTime;
- (double)playbackRate;
- (id)movieInfo;
- (void)autoplayPause;
- (void)autoplayStart;
- (void)autoplayStop;
- (void)changeCurrentTimeTo:(double)a3;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)control:(id)a3 repWillBeRemoved:(id)a4;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_cleanupPlayerAndController;
- (void)p_play;
- (void)p_playPause:(id)a3;
- (void)p_playerDidPlayToEnd:(id)a3;
- (void)p_setPlaying:(BOOL)a3;
- (void)p_stop;
- (void)pause;
- (void)play;
- (void)pressableRepWasPressed:(id)a3 atPoint:(CGPoint)a4;
- (void)setChildReps:(id)a3;
- (void)stop;
- (void)timeChanged:(double)a3;
- (void)timerDidTriggerTimeChangedUpdate;
- (void)updateChildrenFromLayout;
- (void)viewScrollWillChange;
- (void)willBeRemoved;
@end

@implementation THWAudioRep

- (THWAudioRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v11.receiver = self;
  v11.super_class = THWAudioRep;
  v4 = [(THWAudioRep *)&v11 initWithLayout:a3 canvas:a4];
  v5 = v4;
  if (v4)
  {
    if ([(THWAudioRep *)v4 movieInfo])
    {
      [(THWAudioRep *)v5 setPVolumeLevel:1.0];
      [(THWAudioRep *)v5 setPMuted:0];
      v6 = [(THWMovieLayout *)[(THWAudioRep *)v5 movieLayout] mediaListener];
      [-[THWAudioRep movieInfo](v5 "movieInfo")];
      v8 = v7;
      [-[THWAudioRep movieInfo](v5 "movieInfo")];
      [(THWAVMediaListener *)v6 durationChanged:v8 - v9];
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (THWMovieLayout)movieLayout
{
  objc_opt_class();
  [(THWAudioRep *)self layout];

  return TSUDynamicCast();
}

- (THWPressableRepGestureTargetHandler)pressableHandler
{
  if (![(THWAudioRep *)self createdPressableHandler])
  {
    [(THWAudioRep *)self setCreatedPressableHandler:1];
    if ([(THWAudioRep *)self wantsPressAction])
    {
      self->_pressableHandler = [[THWPressableRepGestureTargetHandler alloc] initWithPressableRep:self pressHandler:self];
    }
  }

  return self->_pressableHandler;
}

- (id)movieInfo
{
  objc_opt_class();
  [(THWAudioRep *)self info];

  return TSUDynamicCast();
}

- (void)p_cleanupPlayerAndController
{
  mPlaybackTimer = self->mPlaybackTimer;
  if (mPlaybackTimer)
  {
    [(NSTimer *)mPlaybackTimer invalidate];

    self->mPlaybackTimer = 0;
  }

  if ([(THWAudioRep *)self observingRate])
  {
    [(AVPlayer *)self->mPlayer removeObserver:self forKeyPath:@"rate"];
    [(THWAudioRep *)self setObservingRate:0];
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v4 removeObserver:self name:TSKAVPlayerControllerDidPlayToEndNotification object:self->mPlayerController];
  [(TSKAVPlayerController *)self->mPlayerController teardown];

  self->mPlayer = 0;
  self->mPlayerController = 0;
}

- (void)dealloc
{
  [(THWAudioRep *)self p_cleanupPlayerAndController];

  v3.receiver = self;
  v3.super_class = THWAudioRep;
  [(THWAudioRep *)&v3 dealloc];
}

- (void)willBeRemoved
{
  v3.receiver = self;
  v3.super_class = THWAudioRep;
  [(THWAudioRep *)&v3 willBeRemoved];
  [(THWAudioRep *)self stop];

  self->_pressableHandler = 0;
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([-[THWAudioRep movieInfo](self "movieInfo")])
  {
    [(THWAudioRep *)self naturalBounds];
  }

  else
  {
    [(THWAudioRep *)self naturalBounds];
    TSDCenterRectOverRect();
  }

  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)viewScrollWillChange
{
  v4.receiver = self;
  v4.super_class = THWAudioRep;
  [(THWAudioRep *)&v4 viewScrollWillChange];
  [(THWAudioRep *)self playbackRate];
  if (v3 != 0.0)
  {
    [(THWAudioRep *)self stop];
  }
}

- (void)drawInContext:(CGContext *)a3
{
  [(THWAudioRep *)self naturalBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(THWAudioRep *)self movieInfo];
  if (![v13 posterImageData] && objc_msgSend(v13, "controlStyle") != 1)
  {
    if ([(THWAudioRep *)self isPlaying])
    {
      if ([(THWPressableRepGestureTargetHandler *)[(THWAudioRep *)self pressableHandler] isPressableAtPoint])
      {
        v14 = @"ib_media_btn_pause_bg_well-P";
      }

      else
      {
        v14 = @"ib_media_btn_pause_bg_well";
      }
    }

    else
    {
      v15 = [(THWAudioRep *)self isPaused];
      v16 = [(THWPressableRepGestureTargetHandler *)[(THWAudioRep *)self pressableHandler] isPressableAtPoint];
      v17 = @"ib_media_btn_audio-N";
      if (v16)
      {
        v17 = @"ib_media_btn_audio-P";
      }

      v18 = @"ib_media_btn_play_bg_well-P";
      if (!v16)
      {
        v18 = @"ib_media_btn_play_bg_well";
      }

      if (v15)
      {
        v14 = v18;
      }

      else
      {
        v14 = v17;
      }
    }

    v19 = [TSUImage imageNamed:v14 inBundle:THBundle()];
    TSDCenterRectOverRect();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [-[THWAudioRep canvas](self "canvas")];
    v28 = [v19 CGImageForContentsScale:?];
    v42.origin.x = v21;
    v42.origin.y = v23;
    v42.size.width = v25;
    v42.size.height = v27;
    CGContextDrawImage(a3, v42, v28);
    if ([(THWAudioRep *)self isPlaying]|| [(THWAudioRep *)self isPaused])
    {
      [v13 endTime];
      v30 = v29;
      [v13 startTime];
      v32 = v30 - v31;
      [(THWAudioRep *)self currentTime];
      v34 = v33;
      [v13 startTime];
      v36 = fmax((v34 - v35) / v32, 0.01);
      if (v36 >= 0.00999999978)
      {
        v43.origin.x = v6;
        v43.origin.y = v8;
        v43.size.width = v10;
        v43.size.height = v12;
        MidX = CGRectGetMidX(v43);
        v44.origin.x = v6;
        v44.origin.y = v8;
        v44.size.width = v10;
        v44.size.height = v12;
        MidY = CGRectGetMidY(v44);
        if ([(THWPressableRepGestureTargetHandler *)[(THWAudioRep *)self pressableHandler] isPressed])
        {
          v39 = 0.5;
        }

        else
        {
          v39 = 1.0;
        }

        CGContextSetStrokeColorWithColor(a3, [[TSUColor colorWithRed:? green:? blue:? alpha:?];
        CGContextSetLineWidth(a3, 7.0);
        Mutable = CGPathCreateMutable();
        CGPathMoveToPoint(Mutable, 0, MidX, MidY + -17.82);
        CGPathAddArc(Mutable, 0, MidX, MidY, 17.82, -1.57079633, v36 * 3.14159265 * 2.0 + -1.57079633, 0);
        CGContextAddPath(a3, Mutable);
        CGContextStrokePath(a3);

        CFRelease(Mutable);
      }
    }
  }
}

- (double)playbackRate
{
  mPlayer = self->mPlayer;
  if (!mPlayer)
  {
    return 0.0;
  }

  [(AVPlayer *)mPlayer rate];
  return v3;
}

- (void)p_playPause:(id)a3
{
  if ([(THWAudioRep *)self isPlaying])
  {

    [(THWAudioRep *)self pause];
  }

  else
  {

    [(THWAudioRep *)self play];
  }
}

- (void)p_setPlaying:(BOOL)a3
{
  if (self->mIsPlaying != a3)
  {
    self->mIsPlaying = a3;
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = v4;
    if (self->mIsPlaying)
    {
      [+[TSKMoviePlaybackRegistry sharedMoviePlaybackRegistry](TSKMoviePlaybackRegistry "sharedMoviePlaybackRegistry")];
      [(NSNotificationCenter *)v5 addObserver:self selector:"p_playerDidPlayToEnd:" name:TSKAVPlayerControllerDidPlayToEndNotification object:self->mPlayerController];
      if ([(THWAudioRep *)self observingRate])
      {
        [(AVPlayer *)self->mPlayer removeObserver:self forKeyPath:@"rate"];
      }

      [(THWAudioRep *)self setObservingRate:1];
      [(AVPlayer *)self->mPlayer addObserver:self forKeyPath:@"rate" options:0 context:off_563660];
      self->mPlaybackTimer = [NSTimer scheduledTimerWithTimeInterval:self target:"timerDidTriggerTimeChangedUpdate" selector:0 userInfo:1 repeats:0.0333333333];
      [(NSNotificationCenter *)v5 addObserver:self selector:"stop" name:UIApplicationDidEnterBackgroundNotification object:0];
      LODWORD(v6) = 1.0;
      [(AVPlayer *)self->mPlayer setRate:v6];
    }

    else
    {
      [(NSNotificationCenter *)v4 removeObserver:self name:TSKAVPlayerControllerDidPlayToEndNotification object:self->mPlayerController];
      [(NSNotificationCenter *)v5 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
      if ([(THWAudioRep *)self observingRate])
      {
        [(AVPlayer *)self->mPlayer removeObserver:self forKeyPath:@"rate"];
        [(THWAudioRep *)self setObservingRate:0];
      }

      mPlaybackTimer = self->mPlaybackTimer;
      if (mPlaybackTimer)
      {
        [(NSTimer *)mPlaybackTimer invalidate];

        self->mPlaybackTimer = 0;
      }

      [(AVPlayer *)self->mPlayer setRate:0.0];
      [+[TSKMoviePlaybackRegistry sharedMoviePlaybackRegistry](TSKMoviePlaybackRegistry "sharedMoviePlaybackRegistry")];
    }

    [(THWAudioRep *)self setNeedsDisplay];
    v8 = [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];
    [(THWAudioRep *)self playbackRate];

    [(THWAVMediaListener *)v8 rateChanged:?];
  }
}

- (void)timerDidTriggerTimeChangedUpdate
{
  [(THWAudioRep *)self ignoreTimeChangeUpdate];
  if (v3 <= 0.0)
  {
    mPlayer = self->mPlayer;
    if (mPlayer)
    {
      [(AVPlayer *)mPlayer currentTime];
      v8 = self->mPlayer;
      v9 = v14;
      if (v8)
      {
        [(AVPlayer *)v8 currentTime];
        v10 = v12;
LABEL_11:
        [(THWAudioRep *)self timeChanged:v9 / v10, v11, v12, v13, v14, v15, v16];
        return;
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v9 = 0.0;
      v16 = 0;
    }

    v11 = 0;
    v12 = 0;
    v10 = 0.0;
    v13 = 0;
    goto LABEL_11;
  }

  SFUGetMicroseconds();
  v5 = v4;
  [(THWAudioRep *)self ignoreTimeChangeUpdate];
  if (v5 > v6)
  {

    [(THWAudioRep *)self setIgnoreTimeChangeUpdate:0.0];
  }
}

- (void)timeChanged:(double)a3
{
  [(THWAVMediaListener *)[(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener] timeChanged:a3];
  v4 = [(THWAudioRep *)self movieInfo];
  if (-[THWAudioRep isPlaying](self, "isPlaying") && ![v4 posterImageData] && objc_msgSend(v4, "controlStyle") != 1)
  {

    [(THWAudioRep *)self setNeedsDisplay];
  }
}

- (void)p_play
{
  [(THWAudioRep *)self setIsPaused:0];
  v3 = [(THWAudioRep *)self movieInfo];
  [(THWAudioRep *)self stop];
  v4 = +[AVPlayerItem playerItemWithAsset:](AVPlayerItem, "playerItemWithAsset:", [v3 makeAVAsset]);
  v5 = [-[THWAudioRep movieInfo](self "movieInfo")];
  if (v5 && ([v5 authorizeAVPlayerItemForPlayback:v4] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWAudioRep *)self p_cleanupPlayerAndController];
  memset(&v15, 0, sizeof(v15));
  [v3 startTime];
  CMTimeMakeWithSeconds(&v15, v6, 100);
  v14 = v15;
  [(AVPlayerItem *)v4 setReversePlaybackEndTime:&v14];
  [v3 endTime];
  if (v7 != 0.0)
  {
    memset(&v14, 0, sizeof(v14));
    [v3 endTime];
    CMTimeMakeWithSeconds(&v14, v8, 100);
    lhs = v14;
    [(AVPlayerItem *)v4 setForwardPlaybackEndTime:&lhs];
  }

  memset(&v14, 0, sizeof(v14));
  if (v4)
  {
    [(AVPlayerItem *)v4 duration];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  [(THWAudioRep *)self timeToBeginPlaybackAt];
  CMTimeMakeWithSeconds(&rhs, v9, 100);
  CMTimeSubtract(&v14, &lhs, &rhs);
  lhs = v14;
  if (CMTimeGetSeconds(&lhs) < 0.2)
  {
    [(THWAudioRep *)self setTimeToBeginPlaybackAt:0.0];
  }

  [(THWAudioRep *)self timeToBeginPlaybackAt];
  CMTimeMakeWithSeconds(&lhs, v10, 100);
  rhs = kCMTimeZero;
  v11 = rhs;
  [(AVPlayerItem *)v4 seekToTime:&lhs toleranceBefore:&rhs toleranceAfter:&v11 completionHandler:0];
  self->mPlayer = [[AVPlayer alloc] initWithPlayerItem:v4];
  if (!self->mPlayerController)
  {
    self->mPlayerController = [[TSKAVPlayerController alloc] initWithPlayer:self->mPlayer delegate:self];
    [v3 loopOption];
    [(TSKAVPlayerController *)self->mPlayerController setRepeatMode:TSKPlayerRepeatModeForMovieLoopOption()];
  }

  [(THWAudioRep *)self p_setPlaying:1];
  [(THWAudioRep *)self setNeedsDisplay];
}

- (void)p_stop
{
  if (self->mPlayer)
  {
    [(THWAudioRep *)self currentTime];
    [(THWAudioRep *)self setTimeToBeginPlaybackAt:?];
    [(THWAudioRep *)self p_setPlaying:0];
    [(THWAudioRep *)self p_cleanupPlayerAndController];
    [(THWAudioRep *)self timeToBeginPlaybackAt];
    [(THWAudioRep *)self timeChanged:?];

    [(THWAudioRep *)self setNeedsDisplay];
  }
}

- (void)play
{
  [(THWAudioRep *)self p_play];
  objc_opt_class();
  [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];
  v3 = TSUDynamicCast();
  v4 = +[THWAVController sharedController];

  [v4 transportControllerDidStartPlaying:v3];
}

- (void)pause
{
  if (self->mPlayer)
  {
    [(THWAudioRep *)self p_stop];
    [(THWAudioRep *)self setIsPaused:1];
    objc_opt_class();
    [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];
    v3 = TSUDynamicCast();
    v4 = +[THWAVController sharedController];

    [v4 transportControllerDidPausePlaying:v3];
  }
}

- (void)stop
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v4 = sub_15D6A8;
  v5 = &unk_45AE00;
  v6 = self;
  if (+[NSThread isMainThread])
  {
    v4(v3);
  }

  else
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_15D71C;
    v2[3] = &unk_45B8B0;
    v2[4] = v3;
    dispatch_async(&_dispatch_main_q, v2);
  }
}

- (void)changeCurrentTimeTo:(double)a3
{
  if (self->mPlayer)
  {
    SFUGetMicroseconds();
    [(THWAudioRep *)self setIgnoreTimeChangeUpdate:v5 + 100000.0];
  }

  if (![(THWAudioRep *)self seeking])
  {
    [(THWAudioRep *)self setSeeking:1];
    mPlayer = self->mPlayer;
    CMTimeMakeWithSeconds(&v12, a3, 100);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_15D850;
    v11[3] = &unk_45B188;
    v11[4] = self;
    v9 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    v7 = v9;
    v8 = epoch;
    [(AVPlayer *)mPlayer seekToTime:&v12 toleranceBefore:&v9 toleranceAfter:&v7 completionHandler:v11];
  }

  if (!self->mPlayer)
  {
    [(THWAudioRep *)self setTimeToBeginPlaybackAt:a3];
  }
}

- (double)currentTime
{
  [(THWAudioRep *)self timeToBeginPlaybackAt];
  mPlayer = self->mPlayer;
  if (mPlayer)
  {
    [(AVPlayer *)mPlayer currentTime];
    return CMTimeGetSeconds(&time);
  }

  return result;
}

- (void)p_playerDidPlayToEnd:(id)a3
{
  if ([(THWAudioRep *)self isPlaying])
  {
    if (![-[THWAudioRep movieInfo](self "movieInfo")])
    {
      [(THWAudioRep *)self stop];
    }

    [-[THWAudioRep movieInfo](self "movieInfo")];
    [(THWAudioRep *)self setTimeToBeginPlaybackAt:?];
    v4 = [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];

    [(THWAVMediaListener *)v4 mediaDidPlayToEnd];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_563660 == a6)
  {
    if ([(THWAudioRep *)self isPlaying:a3])
    {
      [(AVPlayer *)self->mPlayer rate];
      if (v7 == 0.0)
      {
        Main = CFRunLoopGetMain();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_15DA0C;
        block[3] = &unk_45AE00;
        block[4] = self;
        CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, block);
        CFRunLoopWakeUp(Main);
      }
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = THWAudioRep;
    [(THWAudioRep *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)pressableRepWasPressed:(id)a3 atPoint:(CGPoint)a4
{
  if ([-[THWAudioRep movieInfo](self movieInfo])
  {
    [-[THWAudioRep movieInfo](self "movieInfo")];
    v6 = v5;
    if (-[THWAudioRep isPlaying](self, "isPlaying") && ![-[THWAudioRep movieInfo](self "movieInfo")])
    {

      [(THWAudioRep *)self changeCurrentTimeTo:v6];
    }

    else if ([(THWAudioRep *)self isPlaying])
    {

      [(THWAudioRep *)self pause];
    }

    else
    {
      [(THWAudioRep *)self changeCurrentTimeTo:v6];
      v8 = [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];

      [(THWAVMediaListener *)v8 playMovie];
    }
  }

  else
  {
    v7 = [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];

    [(THWAVMediaListener *)v7 mediaWasPressed];
  }
}

- (CALayer)pressableAnimationLayer
{
  v3 = [(THWAudioRep *)self interactiveCanvasController];

  return [v3 layerForRep:self];
}

- (BOOL)canHandleGesture:(id)a3
{
  v4 = [(THWAudioRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)v4 canHandleGesture:a3];
}

- (BOOL)handleGesture:(id)a3
{
  v4 = [(THWPressableRepGestureTargetHandler *)[(THWAudioRep *)self pressableHandler] handleGesture:a3];
  [(THWAudioRep *)self setNeedsDisplay];
  return v4;
}

- (void)setChildReps:(id)a3
{
  childReps = self->_childReps;
  if (childReps != a3)
  {
    [(NSArray *)childReps makeObjectsPerformSelector:"setParentRep:" withObject:0];

    v6 = a3;
    self->_childReps = v6;

    [(NSArray *)v6 makeObjectsPerformSelector:"setParentRep:" withObject:self];
  }
}

- (void)updateChildrenFromLayout
{
  v3 = [TSDContainerRep childrenFromLayoutInContainerRep:self];

  [(THWAudioRep *)self setChildReps:v3];
}

- (void)control:(id)a3 repWasAdded:(id)a4
{
  v6 = [(THWAudioRep *)self layout];
  if (v6)
  {
    v7 = [v6 mediaListener];

    [v7 control:a3 repWasAdded:a4];
  }
}

- (void)control:(id)a3 repWillBeRemoved:(id)a4
{
  v6 = [(THWAudioRep *)self layout];
  if (v6)
  {
    v7 = [v6 mediaListener];

    [v7 control:a3 repWillBeRemoved:a4];
  }
}

- (THWAutoplayConfig)autoplayConfig
{
  [(THWAudioRep *)self info];
  result = TSUProtocolCast();
  if (result)
  {

    return [(THWAutoplayConfig *)result autoplayConfig];
  }

  return result;
}

- (void)autoplayStart
{
  if (![(THWAudioRep *)self isPlaying])
  {
    [(THWAudioRep *)self changeCurrentTimeTo:0.0];
    [(THWAudioRep *)self p_play];
    objc_opt_class();
    [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];
    v3 = TSUDynamicCast();
    v4 = +[THWAVController sharedController];

    [v4 transportControllerDidStartAutoplaying:v3];
  }
}

- (void)autoplayStop
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v4 = sub_15DFE0;
  v5 = &unk_45AE00;
  v6 = self;
  if (+[NSThread isMainThread])
  {
    v4(v3);
  }

  else
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_15E078;
    v2[3] = &unk_45B8B0;
    v2[4] = v3;
    dispatch_async(&_dispatch_main_q, v2);
  }
}

- (void)autoplayPause
{
  if ([(THWAudioRep *)self isPlaying])
  {

    [(THWAudioRep *)self pause];
  }
}

@end