@interface KPFMovie
- (BOOL)showsClosedCaptions;
- (KPFMovie)initWithURL:(id)l looping:(id)looping volume:(double)volume name:(id)name audioOnly:(BOOL)only drmContext:(id)context;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)p_playMovie;
- (void)p_playerItemDidPlayToEndTime:(id)time;
- (void)p_setShowsClosedCaptions:(BOOL)captions;
- (void)p_setupEnhancedCaptionsInformation;
- (void)p_setupPosterFrame;
- (void)p_tearDownMoviePlayback;
- (void)pause;
- (void)playAfterDelay:(double)delay;
- (void)registerForMovieEndCallback:(SEL)callback target:(id)target;
- (void)resume;
- (void)stop;
@end

@implementation KPFMovie

- (BOOL)showsClosedCaptions
{
  v2 = MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(kMACaptionAppearanceDomainUser);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 != 0;
}

- (KPFMovie)initWithURL:(id)l looping:(id)looping volume:(double)volume name:(id)name audioOnly:(BOOL)only drmContext:(id)context
{
  onlyCopy = only;
  v19.receiver = self;
  v19.super_class = KPFMovie;
  v14 = [(KPFMovie *)&v19 init];
  if (v14)
  {
    if ([looping isEqualToString:@"looping"])
    {
      v15 = 2;
    }

    else if ([looping isEqualToString:@"loopBackAndForth"])
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    v14->mLooping = v15;
    v14->mVolume = volume;
    v14->mName = name;
    v16 = [AVPlayerItem playerItemWithURL:l];
    v14->mPlayerItem = v16;
    [context authorizeAVPlayerItemForPlayback:v16];
    v14->mPlayer = [[AVPlayer alloc] initWithPlayerItem:v14->mPlayerItem];
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(AVPlayer *)v14->mPlayer setActionAtItemEnd:2];
    [(AVPlayer *)v14->mPlayer addObserver:v14 forKeyPath:@"currentItem" options:7 context:off_55FFF0];
    [(AVPlayer *)v14->mPlayer addObserver:v14 forKeyPath:@"currentItem.status" options:0 context:off_55FFF8];
    v14->mIsObservingPlayerItemStatus = 1;
    *&v14->mMoviePlaybackIsQueued = 0;
    v14->mAudioOnly = onlyCopy;
    if (onlyCopy)
    {
      v14->mPlayerLayer = 0;
    }

    else
    {
      if ([(KPFMovie *)v14 p_canLoadEnhancedCaptionsInformationForURL:l])
      {
        [(KPFMovie *)v14 p_setupEnhancedCaptionsInformation];
      }

      v17 = objc_alloc_init(AVPlayerLayer);
      v14->mPlayerLayer = v17;
      [(AVPlayerLayer *)v17 setPlayer:v14->mPlayer];
      [(AVPlayerLayer *)v14->mPlayerLayer setVideoGravity:AVLayerVideoGravityResize];
      [(AVPlayerLayer *)v14->mPlayerLayer setName:@"movieLayer"];
    }

    +[CATransaction commit];
  }

  return v14;
}

- (void)dealloc
{
  [(KPFMovie *)self stop];

  self->mPlayerItem = 0;
  v3.receiver = self;
  v3.super_class = KPFMovie;
  [(KPFMovie *)&v3 dealloc];
}

- (void)p_setShowsClosedCaptions:(BOOL)captions
{
  captionsCopy = captions;
  v5 = [(AVAsset *)[(AVPlayerItem *)self->mPlayerItem asset] mediaSelectionGroupForMediaCharacteristic:AVMediaCharacteristicLegible];
  v6 = v5;
  if (captionsCopy)
  {
    v7 = +[AVMediaSelectionGroup mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:](AVMediaSelectionGroup, "mediaSelectionOptionsFromArray:filteredAndSortedAccordingToPreferredLanguages:", [(AVMediaSelectionGroup *)v5 options], +[NSLocale preferredLanguages]);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    if (![(NSArray *)v7 count])
    {
      return;
    }

    mPlayerItem = self->mPlayerItem;
    v10 = [(NSArray *)v8 objectAtIndex:0];
    v11 = mPlayerItem;
  }

  else
  {
    v11 = self->mPlayerItem;
    v10 = 0;
  }

  [(AVPlayerItem *)v11 selectMediaOption:v10 inMediaSelectionGroup:v6];
}

- (void)p_setupEnhancedCaptionsInformation
{
  if ([(AVAsset *)[(AVPlayerItem *)self->mPlayerItem asset] statusOfValueForKey:@"tracks" error:0]!= &dword_0 + 2)
  {
    asset = [(AVPlayerItem *)self->mPlayerItem asset];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_7A060;
    v4[3] = &unk_45AE00;
    v4[4] = self;
    [(AVAsset *)asset loadValuesAsynchronouslyForKeys:&off_49D860 completionHandler:v4];
  }
}

- (void)playAfterDelay:(double)delay
{
  if ([(AVPlayerItem *)[(AVPlayer *)self->mPlayer currentItem] status]== &dword_0 + 1)
  {

    [(KPFMovie *)self performSelector:"p_playMovie" withObject:0 afterDelay:delay];
  }

  else if ([(AVPlayerItem *)[(AVPlayer *)self->mPlayer currentItem] status]!= &dword_0 + 2)
  {
    self->mMoviePlaybackIsQueued = 1;
    self->mQueuedPlaybackTime = CACurrentMediaTime() + delay;
  }
}

- (void)stop
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (self->mPlayer)
  {
    [(KPFMovie *)self p_tearDownMoviePlayback];
  }

  +[CATransaction commit];
}

- (void)pause
{
  if (!self->mMoviePlaybackIsPaused)
  {
    self->mMoviePlaybackIsPaused = 1;
    if (self->mMoviePlaybackHasStarted)
    {
      [(AVPlayer *)self->mPlayer setRate:0.0];
    }
  }
}

- (void)resume
{
  if (self->mMoviePlaybackIsPaused)
  {
    self->mMoviePlaybackIsPaused = 0;
    if (self->mMoviePlaybackHasStarted)
    {
      LODWORD(v2) = 1.0;
      [(AVPlayer *)self->mPlayer setRate:v2];
    }
  }
}

- (void)registerForMovieEndCallback:(SEL)callback target:(id)target
{
  self->mMovieEndCallbackTarget = target;
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = 0;
  }

  self->mMovieEndCallbackSelector = callbackCopy;
}

- (void)p_playMovie
{
  if (self->mPlayer)
  {
    self->mMoviePlaybackHasStarted = 1;
    if (!self->mAudioOnly)
    {
      [(AVPlayerLayer *)self->mPlayerLayer setHidden:0];
      v4 = [(AVPlayerLayer *)self->mPlayerLayer valueForKey:@"textureLayer"];
      if (v4)
      {
        [v4 setHidden:1];
      }
    }

    if (!self->mMoviePlaybackIsPaused)
    {
      mPlayer = self->mPlayer;
      LODWORD(v2) = 1.0;

      [(AVPlayer *)mPlayer setRate:v2];
    }
  }
}

- (void)p_playerItemDidPlayToEndTime:(id)time
{
  mLooping = self->mLooping;
  if (mLooping == 3)
  {
    currentItem = [(AVPlayer *)self->mPlayer currentItem];
    if (currentItem)
    {
      v9 = currentItem;
      [(AVPlayerItem *)currentItem currentTime];
      [(AVPlayerItem *)v9 forwardPlaybackEndTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
      memset(&time2, 0, sizeof(time2));
    }

    v13 = CMTimeCompare(&time1, &time2);
    mPlayer = self->mPlayer;
    if ((v13 & 0x80000000) == 0)
    {
      LODWORD(v6) = -1.0;
LABEL_13:
      [(AVPlayer *)mPlayer setRate:v6];
      return;
    }

LABEL_12:
    LODWORD(v6) = 1.0;
    goto LABEL_13;
  }

  if (mLooping == 2)
  {
    memset(&time1, 0, sizeof(time1));
    CMTimeMakeWithSeconds(&time1, 0.0, 90000);
    currentItem2 = [(AVPlayer *)self->mPlayer currentItem];
    time2 = time1;
    v19 = *&kCMTimeZero.value;
    epoch = kCMTimeZero.epoch;
    v17 = v19;
    v18 = epoch;
    [(AVPlayerItem *)currentItem2 seekToTime:&time2 toleranceBefore:&v19 toleranceAfter:&v17 completionHandler:0];
    mPlayer = self->mPlayer;
    goto LABEL_12;
  }

  [(AVPlayer *)self->mPlayer setRate:time, 0.0];
  mMovieEndCallbackTarget = self->mMovieEndCallbackTarget;
  if (mMovieEndCallbackTarget)
  {
    mMovieEndCallbackSelector = self->mMovieEndCallbackSelector;
    self->mMoviePlaybackHasStarted = 0;
    v12 = mMovieEndCallbackSelector ? mMovieEndCallbackSelector : 0;
    v14 = [mMovieEndCallbackTarget methodSignatureForSelector:v12];
    if (v14)
    {
      if ([v14 numberOfArguments] == &dword_0 + 3)
      {
        v15 = self->mMovieEndCallbackTarget;
        if (self->mMovieEndCallbackSelector)
        {
          v16 = self->mMovieEndCallbackSelector;
        }

        else
        {
          v16 = 0;
        }

        [v15 performSelector:v16 withObject:self afterDelay:0.0];
      }
    }
  }
}

- (void)p_setupPosterFrame
{
  currentItem = [(AVPlayer *)self->mPlayer currentItem];
  asset = [(AVPlayerItem *)currentItem asset];
  if (currentItem)
  {
    [(AVPlayerItem *)currentItem currentTime];
  }

  else
  {
    memset(&time, 0, 24);
  }

  v5 = CMTimeGetSeconds(&time.start) + 0.05;
  v6 = [[AVAssetImageGenerator alloc] initWithAsset:asset];
  *&time.start.value = *&kCMTimeZero.value;
  v11 = *&time.start.value;
  time.start.epoch = kCMTimeZero.epoch;
  epoch = time.start.epoch;
  [v6 setRequestedTimeToleranceAfter:&time];
  *&time.start.value = v11;
  time.start.epoch = epoch;
  [v6 setRequestedTimeToleranceBefore:&time];
  [v6 setAppliesPreferredTrackTransform:1];
  CMTimeMakeWithSeconds(&v25, v5, 90000);
  if (asset)
  {
    [(AVAsset *)asset duration];
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  *&start.value = v11;
  start.epoch = epoch;
  CMTimeRangeMake(&time, &start, &duration);
  CMTimeClampToRange(&duration, &v25, &time);
  v8 = [v6 copyCGImageAtTime:&duration actualTime:0 error:0];

  if (v8)
  {
    v9 = +[CALayer layer];
    [(AVPlayerLayer *)self->mPlayerLayer bounds];
    [(CALayer *)v9 setBounds:?];
    [(AVPlayerLayer *)self->mPlayerLayer position];
    [(CALayer *)v9 setPosition:?];
    mPlayerLayer = self->mPlayerLayer;
    if (mPlayerLayer)
    {
      [(AVPlayerLayer *)mPlayerLayer transform];
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      memset(&v18, 0, sizeof(v18));
    }

    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    time = v18;
    v13 = v19;
    [(CALayer *)v9 setTransform:&time];
    [(AVPlayerLayer *)self->mPlayerLayer zPosition];
    [(CALayer *)v9 setZPosition:?];
    [(CALayer *)v9 setContents:v8];
    [(CALayer *)v9 setName:@"posterImage"];
    CGImageRelease(v8);
    [-[AVPlayerLayer superlayer](self->mPlayerLayer "superlayer")];
  }
}

- (void)p_tearDownMoviePlayback
{
  mPlayer = self->mPlayer;
  if (mPlayer)
  {
    [(AVPlayer *)mPlayer setRate:0.0];
    self->mMoviePlaybackHasStarted = 0;
    if (self->mIsObservingPlayerItemStatus)
    {
      [(AVPlayer *)self->mPlayer removeObserver:self forKeyPath:@"currentItem.status"];
      self->mIsObservingPlayerItemStatus = 0;
    }

    [(AVPlayer *)self->mPlayer removeObserver:self forKeyPath:@"currentItem"];
    currentItem = [(AVPlayer *)self->mPlayer currentItem];
    if (currentItem)
    {
      [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:AVPlayerItemDidPlayToEndTimeNotification, currentItem];
    }

    [(KPFMovie *)self p_setupPosterFrame];

    self->mPlayer = 0;
  }

  mPlayerLayer = self->mPlayerLayer;
  if (mPlayerLayer)
  {
    v6 = [(AVPlayerLayer *)mPlayerLayer valueForKey:@"textureLayer"];
    [(AVPlayerLayer *)self->mPlayerLayer setValue:0 forKey:@"textureLayer"];
    [v6 setValue:0 forKey:@"movieLayer"];
    [(AVPlayerLayer *)self->mPlayerLayer removeFromSuperlayer];

    self->mPlayerLayer = 0;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_55FFF8 == context)
  {
    status = [(AVPlayerItem *)[(AVPlayer *)self->mPlayer currentItem:path] status];
    mPlayer = self->mPlayer;
    if (status == AVPlayerItemStatusReadyToPlay)
    {
      [(AVPlayer *)mPlayer removeObserver:self forKeyPath:@"currentItem.status"];
      self->mIsObservingPlayerItemStatus = 0;
      if (!self->mMoviePlaybackIsQueued)
      {
        return;
      }

      mQueuedPlaybackTime = self->mQueuedPlaybackTime;
      v11 = mQueuedPlaybackTime - CACurrentMediaTime();
      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      [(KPFMovie *)self performSelector:"p_playMovie" withObject:0 afterDelay:v11];
    }

    else
    {
      if ([(AVPlayerItem *)[(AVPlayer *)mPlayer currentItem] status]!= &dword_0 + 2)
      {
        return;
      }

      [(AVPlayer *)self->mPlayer removeObserver:self forKeyPath:@"currentItem.status"];
      self->mIsObservingPlayerItemStatus = 0;
    }

    self->mMoviePlaybackIsQueued = 0;
  }

  else if (off_55FFF0 == context)
  {
    v12 = [NSNotificationCenter defaultCenter:path];
    v13 = [change objectForKey:NSKeyValueChangeOldKey];
    if (v13)
    {
      v14 = v13;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSNotificationCenter *)v12 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:v14];
      }
    }

    v15 = [change objectForKey:NSKeyValueChangeNewKey];
    if (v15)
    {
      v16 = v15;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        [(NSNotificationCenter *)v12 addObserver:self selector:"p_playerItemDidPlayToEndTime:" name:AVPlayerItemDidPlayToEndTimeNotification object:v16];
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = KPFMovie;
    [(KPFMovie *)&v17 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

@end