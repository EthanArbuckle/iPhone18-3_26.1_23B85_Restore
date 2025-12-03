@interface THWAudioRep
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)handleGesture:(id)gesture;
- (CALayer)pressableAnimationLayer;
- (THWAudioRep)initWithLayout:(id)layout canvas:(id)canvas;
- (THWAutoplayConfig)autoplayConfig;
- (THWMovieLayout)movieLayout;
- (THWPressableRepGestureTargetHandler)pressableHandler;
- (double)currentTime;
- (double)playbackRate;
- (id)movieInfo;
- (void)autoplayPause;
- (void)autoplayStart;
- (void)autoplayStop;
- (void)changeCurrentTimeTo:(double)to;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_cleanupPlayerAndController;
- (void)p_play;
- (void)p_playPause:(id)pause;
- (void)p_playerDidPlayToEnd:(id)end;
- (void)p_setPlaying:(BOOL)playing;
- (void)p_stop;
- (void)pause;
- (void)play;
- (void)pressableRepWasPressed:(id)pressed atPoint:(CGPoint)point;
- (void)setChildReps:(id)reps;
- (void)stop;
- (void)timeChanged:(double)changed;
- (void)timerDidTriggerTimeChangedUpdate;
- (void)updateChildrenFromLayout;
- (void)viewScrollWillChange;
- (void)willBeRemoved;
@end

@implementation THWAudioRep

- (THWAudioRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v11.receiver = self;
  v11.super_class = THWAudioRep;
  v4 = [(THWAudioRep *)&v11 initWithLayout:layout canvas:canvas];
  v5 = v4;
  if (v4)
  {
    if ([(THWAudioRep *)v4 movieInfo])
    {
      [(THWAudioRep *)v5 setPVolumeLevel:1.0];
      [(THWAudioRep *)v5 setPMuted:0];
      mediaListener = [(THWMovieLayout *)[(THWAudioRep *)v5 movieLayout] mediaListener];
      [-[THWAudioRep movieInfo](v5 "movieInfo")];
      v8 = v7;
      [-[THWAudioRep movieInfo](v5 "movieInfo")];
      [(THWAVMediaListener *)mediaListener durationChanged:v8 - v9];
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

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (void)drawInContext:(CGContext *)context
{
  [(THWAudioRep *)self naturalBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  movieInfo = [(THWAudioRep *)self movieInfo];
  if (![movieInfo posterImageData] && objc_msgSend(movieInfo, "controlStyle") != 1)
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
      isPaused = [(THWAudioRep *)self isPaused];
      isPressableAtPoint = [(THWPressableRepGestureTargetHandler *)[(THWAudioRep *)self pressableHandler] isPressableAtPoint];
      v17 = @"ib_media_btn_audio-N";
      if (isPressableAtPoint)
      {
        v17 = @"ib_media_btn_audio-P";
      }

      v18 = @"ib_media_btn_play_bg_well-P";
      if (!isPressableAtPoint)
      {
        v18 = @"ib_media_btn_play_bg_well";
      }

      if (isPaused)
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
    CGContextDrawImage(context, v42, v28);
    if ([(THWAudioRep *)self isPlaying]|| [(THWAudioRep *)self isPaused])
    {
      [movieInfo endTime];
      v30 = v29;
      [movieInfo startTime];
      v32 = v30 - v31;
      [(THWAudioRep *)self currentTime];
      v34 = v33;
      [movieInfo startTime];
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

        CGContextSetStrokeColorWithColor(context, [[TSUColor colorWithRed:? green:? blue:? alpha:?];
        CGContextSetLineWidth(context, 7.0);
        Mutable = CGPathCreateMutable();
        CGPathMoveToPoint(Mutable, 0, MidX, MidY + -17.82);
        CGPathAddArc(Mutable, 0, MidX, MidY, 17.82, -1.57079633, v36 * 3.14159265 * 2.0 + -1.57079633, 0);
        CGContextAddPath(context, Mutable);
        CGContextStrokePath(context);

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

- (void)p_playPause:(id)pause
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

- (void)p_setPlaying:(BOOL)playing
{
  if (self->mIsPlaying != playing)
  {
    self->mIsPlaying = playing;
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
    mediaListener = [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];
    [(THWAudioRep *)self playbackRate];

    [(THWAVMediaListener *)mediaListener rateChanged:?];
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

- (void)timeChanged:(double)changed
{
  [(THWAVMediaListener *)[(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener] timeChanged:changed];
  movieInfo = [(THWAudioRep *)self movieInfo];
  if (-[THWAudioRep isPlaying](self, "isPlaying") && ![movieInfo posterImageData] && objc_msgSend(movieInfo, "controlStyle") != 1)
  {

    [(THWAudioRep *)self setNeedsDisplay];
  }
}

- (void)p_play
{
  [(THWAudioRep *)self setIsPaused:0];
  movieInfo = [(THWAudioRep *)self movieInfo];
  [(THWAudioRep *)self stop];
  v4 = +[AVPlayerItem playerItemWithAsset:](AVPlayerItem, "playerItemWithAsset:", [movieInfo makeAVAsset]);
  v5 = [-[THWAudioRep movieInfo](self "movieInfo")];
  if (v5 && ([v5 authorizeAVPlayerItemForPlayback:v4] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THWAudioRep *)self p_cleanupPlayerAndController];
  memset(&v15, 0, sizeof(v15));
  [movieInfo startTime];
  CMTimeMakeWithSeconds(&v15, v6, 100);
  v14 = v15;
  [(AVPlayerItem *)v4 setReversePlaybackEndTime:&v14];
  [movieInfo endTime];
  if (v7 != 0.0)
  {
    memset(&v14, 0, sizeof(v14));
    [movieInfo endTime];
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
    [movieInfo loopOption];
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
  selfCopy = self;
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

- (void)changeCurrentTimeTo:(double)to
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
    CMTimeMakeWithSeconds(&v12, to, 100);
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
    [(THWAudioRep *)self setTimeToBeginPlaybackAt:to];
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

- (void)p_playerDidPlayToEnd:(id)end
{
  if ([(THWAudioRep *)self isPlaying])
  {
    if (![-[THWAudioRep movieInfo](self "movieInfo")])
    {
      [(THWAudioRep *)self stop];
    }

    [-[THWAudioRep movieInfo](self "movieInfo")];
    [(THWAudioRep *)self setTimeToBeginPlaybackAt:?];
    mediaListener = [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];

    [(THWAVMediaListener *)mediaListener mediaDidPlayToEnd];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_563660 == context)
  {
    if ([(THWAudioRep *)self isPlaying:path])
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
    [(THWAudioRep *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)pressableRepWasPressed:(id)pressed atPoint:(CGPoint)point
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
      mediaListener = [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];

      [(THWAVMediaListener *)mediaListener playMovie];
    }
  }

  else
  {
    mediaListener2 = [(THWMovieLayout *)[(THWAudioRep *)self movieLayout] mediaListener];

    [(THWAVMediaListener *)mediaListener2 mediaWasPressed];
  }
}

- (CALayer)pressableAnimationLayer
{
  interactiveCanvasController = [(THWAudioRep *)self interactiveCanvasController];

  return [interactiveCanvasController layerForRep:self];
}

- (BOOL)canHandleGesture:(id)gesture
{
  pressableHandler = [(THWAudioRep *)self pressableHandler];

  return [(THWPressableRepGestureTargetHandler *)pressableHandler canHandleGesture:gesture];
}

- (BOOL)handleGesture:(id)gesture
{
  v4 = [(THWPressableRepGestureTargetHandler *)[(THWAudioRep *)self pressableHandler] handleGesture:gesture];
  [(THWAudioRep *)self setNeedsDisplay];
  return v4;
}

- (void)setChildReps:(id)reps
{
  childReps = self->_childReps;
  if (childReps != reps)
  {
    [(NSArray *)childReps makeObjectsPerformSelector:"setParentRep:" withObject:0];

    repsCopy = reps;
    self->_childReps = repsCopy;

    [(NSArray *)repsCopy makeObjectsPerformSelector:"setParentRep:" withObject:self];
  }
}

- (void)updateChildrenFromLayout
{
  v3 = [TSDContainerRep childrenFromLayoutInContainerRep:self];

  [(THWAudioRep *)self setChildReps:v3];
}

- (void)control:(id)control repWasAdded:(id)added
{
  layout = [(THWAudioRep *)self layout];
  if (layout)
  {
    mediaListener = [layout mediaListener];

    [mediaListener control:control repWasAdded:added];
  }
}

- (void)control:(id)control repWillBeRemoved:(id)removed
{
  layout = [(THWAudioRep *)self layout];
  if (layout)
  {
    mediaListener = [layout mediaListener];

    [mediaListener control:control repWillBeRemoved:removed];
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
  selfCopy = self;
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