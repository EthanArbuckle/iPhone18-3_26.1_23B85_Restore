@interface CRLAVPlayerController
+ (id)keyPathsForValuesAffectingCanFastForward;
+ (id)keyPathsForValuesAffectingCanFastReverse;
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)p_endCMTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)p_startCMTime;
- (AVAsset)currentAsset;
- (AVPlayerPlaybackCoordinator)playbackCoordinator;
- (BOOL)canFastForward;
- (BOOL)canFastReverse;
- (BOOL)hasCurrentTime;
- (BOOL)isExternalPlaybackActive;
- (BOOL)p_canFastForwardAtCurrentTime;
- (BOOL)p_canFastReverseAtCurrentTime;
- (BOOL)p_notifyDelegateOfPlaybackErrorIfNeeded;
- (BOOL)p_shouldUsePlayerLooperAtRate:(float)a3 timeRange:(id *)a4;
- (CRLAVPlayerController)initWithInitialPlayerItem:(id)a3 enqueuedAssets:(id)a4 initialEnqueuedAssetIndex:(unint64_t)a5 delegate:(id)a6;
- (double)absoluteCurrentTime;
- (double)absoluteDuration;
- (double)currentTime;
- (double)duration;
- (double)endTime;
- (double)remainingTime;
- (double)startTime;
- (float)rate;
- (id)addPeriodicTimeObserverForInterval:(double)a3 block:(id)a4;
- (id)newLayer;
- (id)newRenderable;
- (id)p_addTimeObserverForTime:(id *)a3 handler:(id)a4;
- (id)p_workingPlayerItems;
- (int64_t)remotePause;
- (int64_t)remotePlay;
- (void)attachAVPlayerViewController:(id)a3;
- (void)beginScrubbing;
- (void)cancelPendingSeeks;
- (void)dealloc;
- (void)endScrubbing;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)p_applicationDidResignActive;
- (void)p_applyConstantVolumeToPlayerItem:(id)a3;
- (void)p_applyPendingRateIfNeeded;
- (void)p_applyRate:(float)a3;
- (void)p_clearVolumeRampFromPlayerItem;
- (void)p_enqueueAssetsFromIndex:(unint64_t)a3;
- (void)p_notifyPlayerItemMediatorWithRate:(float)a3;
- (void)p_playerItemDidJumpTime:(id)a3;
- (void)p_playerItemDidPlayToEndTime:(id)a3;
- (void)p_playerItemDidPlayToEndTimeAtRate:(float)a3;
- (void)p_updateAutomaticallyWaitsToMinimizeStalling;
- (void)p_updatePlayerItemsAndApplyRate:(float)a3;
- (void)removePeriodicTimeObserver:(id)a3;
- (void)scrubToTime:(double)a3 withTolerance:(double)a4 completionHandler:(id)a5;
- (void)seekBackwardByOneFrame;
- (void)seekForwardByOneFrame;
- (void)seekToBeginning;
- (void)seekToEnd;
- (void)setEndTime:(double)a3;
- (void)setFastForwarding:(BOOL)a3;
- (void)setFastReversing:(BOOL)a3;
- (void)setPlayerItemMediator:(id)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setRate:(float)a3;
- (void)setRepeatMode:(int64_t)a3;
- (void)setStartTime:(double)a3;
- (void)setVolume:(float)a3;
- (void)setVolume:(float)a3 rampDuration:(double)a4;
- (void)setupRemoteTransportControls;
- (void)skipToAssetAtIndex:(unint64_t)a3;
- (void)stopSynchronously;
- (void)teardown;
- (void)updateNowPlaying;
- (void)updatePlayingToMatchPlayer;
@end

@implementation CRLAVPlayerController

- (id)newRenderable
{
  v2 = [(CRLAVPlayerController *)self newLayer];
  v3 = [CRLCanvasRenderable renderableFromLayer:v2];

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v4 = @"CRLAVPlayerControllerDisableGaplessLooping";
    v5 = &__kCFBooleanFalse;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [v2 registerDefaults:v3];
  }
}

- (CRLAVPlayerController)initWithInitialPlayerItem:(id)a3 enqueuedAssets:(id)a4 initialEnqueuedAssetIndex:(unint64_t)a5 delegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = CRLAVPlayerController;
  v13 = [(CRLAVPlayerController *)&v22 init];
  if (v13)
  {
    v14 = [v11 copy];
    mEnqueuedAssets = v13->mEnqueuedAssets;
    v13->mEnqueuedAssets = v14;

    v13->mRepeatMode = 0;
    v13->mVolume = 1.0;
    v13->mPendingRate = NAN;
    objc_storeStrong(&v13->mDelegate, a6);
    v16 = objc_alloc_init(AVQueuePlayer);
    mPlayer = v13->mPlayer;
    v13->mPlayer = v16;

    [(AVQueuePlayer *)v13->mPlayer setActionAtItemEnd:2 * ([(NSArray *)v13->mEnqueuedAssets count]== 0)];
    [(AVQueuePlayer *)v13->mPlayer addObserver:v13 forKeyPath:@"currentItem" options:7 context:off_1019EFDC8];
    [(AVQueuePlayer *)v13->mPlayer addObserver:v13 forKeyPath:@"rate" options:7 context:off_1019EFDD0];
    [(AVQueuePlayer *)v13->mPlayer addObserver:v13 forKeyPath:@"status" options:4 context:off_1019EFDD8];
    [(AVQueuePlayer *)v13->mPlayer addObserver:v13 forKeyPath:@"currentItem.status" options:4 context:off_1019EFDE0];
    v18 = objc_alloc_init(NSMutableSet);
    mObservationTokens = v13->mObservationTokens;
    v13->mObservationTokens = v18;

    LODWORD(v20) = 1.0;
    [(AVQueuePlayer *)v13->mPlayer setVolume:v20];
    if (v10)
    {
      [(AVQueuePlayer *)v13->mPlayer replaceCurrentItemWithPlayerItem:v10];
    }

    if (a5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(CRLAVPlayerController *)v13 p_enqueueAssetsFromIndex:a5];
    }
  }

  return v13;
}

- (void)dealloc
{
  if (self->mDelegate || self->mPlayerItemMediator)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101368A64();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101368A78();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101368B08();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAVPlayerController dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:179 isFatal:0 description:"-teardown must be called before dealloc"];
  }

  v6.receiver = self;
  v6.super_class = CRLAVPlayerController;
  [(CRLAVPlayerController *)&v6 dealloc];
}

- (void)teardown
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101368B30();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101368B44();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101368BD4();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLAVPlayerController teardown]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:183 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  if ([(CRLAVPlayerController *)self isPlaying]|| [(CRLAVPlayerController *)self isFastReversing]|| [(CRLAVPlayerController *)self isFastForwarding])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101368BFC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101368C24();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101368CB4();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLAVPlayerController teardown]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:185 isFatal:0 description:"player controller should not be playing when it is told to teardown"];
  }

  if (qword_101AD5CA8 != -1)
  {
    sub_101368CDC();
  }

  v9 = off_1019EFDC0;
  if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v31 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: teardown", buf, 0xCu);
  }

  v10 = *&kCMTimeRangeInvalid.start.epoch;
  *&self->mPlayerItemTimeRange.start.value = *&kCMTimeRangeInvalid.start.value;
  *&self->mPlayerItemTimeRange.start.epoch = v10;
  *&self->mPlayerItemTimeRange.duration.timescale = *&kCMTimeRangeInvalid.duration.timescale;
  self->mIsPlayerItemTimeRangeForScrubbing = 0;
  [(AVPlayerLooper *)self->mPlayerLooper disableLooping];
  mPlayerLooper = self->mPlayerLooper;
  self->mPlayerLooper = 0;

  v12 = [(CRLAVPlayerController *)self player];
  [v12 setRate:0.0];
  v13 = [v12 currentItem];
  if (v13)
  {
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:v13];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 removeObserver:self name:AVPlayerItemTimeJumpedNotification object:v13];
  }

  [v12 removeObserver:self forKeyPath:@"currentItem" context:off_1019EFDC8];
  [v12 removeObserver:self forKeyPath:@"rate" context:off_1019EFDD0];
  [v12 removeObserver:self forKeyPath:@"currentItem.status" context:off_1019EFDE0];
  [v12 removeObserver:self forKeyPath:@"status" context:off_1019EFDD8];
  [v12 replaceCurrentItemWithPlayerItem:0];
  mDelegate = self->mDelegate;
  self->mDelegate = 0;

  mPlayerItemMediator = self->mPlayerItemMediator;
  self->mPlayerItemMediator = 0;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->mObservationTokens;
  v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(CRLAVPlayerController *)self crl_removeObserverForToken:*(*(&v25 + 1) + 8 * i), v25];
      }

      v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  mVolumeRampPlayerItem = self->mVolumeRampPlayerItem;
  self->mVolumeRampPlayerItem = 0;

  if (self->mVolumeRampBoundaryTimeObserver)
  {
    [v12 removeTimeObserver:?];
    mVolumeRampBoundaryTimeObserver = self->mVolumeRampBoundaryTimeObserver;
    self->mVolumeRampBoundaryTimeObserver = 0;
  }
}

- (void)attachAVPlayerViewController:(id)a3
{
  v4 = a3;
  v5 = [(CRLAVPlayerController *)self player];
  [v4 setPlayer:v5];
}

- (AVAsset)currentAsset
{
  v2 = [(CRLAVPlayerController *)self player];
  v3 = [v2 currentItem];
  v4 = [v3 asset];

  return v4;
}

- (AVPlayerPlaybackCoordinator)playbackCoordinator
{
  v2 = [(CRLAVPlayerController *)self player];
  v3 = [v2 playbackCoordinator];

  return v3;
}

- (BOOL)isExternalPlaybackActive
{
  v2 = [(CRLAVPlayerController *)self player];
  v3 = [v2 isExternalPlaybackActive];

  return v3;
}

- (id)newLayer
{
  v3 = objc_alloc_init(AVPlayerLayer);
  v4 = [(CRLAVPlayerController *)self player];
  [v3 setPlayer:v4];

  [v3 setVideoGravity:AVLayerVideoGravityResize];
  return v3;
}

- (BOOL)p_shouldUsePlayerLooperAtRate:(float)a3 timeRange:(id *)a4
{
  v7 = [(CRLAVPlayerController *)self player];
  v8 = [v7 currentItem];

  v9 = [v8 asset];
  v10 = [(CRLAVPlayerController *)self repeatMode];
  LOBYTE(v11) = 0;
  if (a3 >= 0.0 && v10 == 1 && v8)
  {
    if ((a4->var0.var2 & 1) != 0 && (a4->var1.var2 & 1) != 0 && !a4->var1.var3 && (a4->var1.var0 & 0x8000000000000000) == 0)
    {
      time1 = a4->var1;
      v20 = *&kCMTimeZero.value;
      *&time2.value = *&kCMTimeZero.value;
      epoch = kCMTimeZero.epoch;
      time2.epoch = epoch;
      if (CMTimeCompare(&time1, &time2))
      {
        var2 = a4->var0.var2;
        if ((var2 & 1) == 0 || (v15 = a4->var1.var2, (v15 & 1) == 0) || a4->var1.var3 || a4->var1.var0 < 0 || ((v15 | var2) & 0x10) == 0)
        {
          time1 = a4->var0;
          *&time2.value = v20;
          time2.epoch = epoch;
          if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0 && ![(CRLAVPlayerController *)self isScrubbing]&& ![(NSArray *)self->mEnqueuedAssets count])
          {
            v16 = objc_opt_class();
            v17 = sub_100014370(v16, v9);
            v18 = [v17 URL];
            if (!v18)
            {
              LOBYTE(v11) = 0;
LABEL_28:

              goto LABEL_8;
            }

            v19 = v18;
            if ([v18 isFileURL])
            {
            }

            else
            {
              v11 = [v19 isFileReferenceURL];

              if (!v11)
              {
                goto LABEL_8;
              }
            }

            if ([v9 providesPreciseDurationAndTiming] && objc_msgSend(v9, "statusOfValueForKey:error:", @"duration", 0) == 2)
            {
              v17 = +[NSUserDefaults standardUserDefaults];
              v11 = [v17 BOOLForKey:@"CRLAVPlayerControllerDisableGaplessLooping"] ^ 1;
              goto LABEL_28;
            }
          }
        }
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_8:

  return v11;
}

- (void)p_updatePlayerItemsAndApplyRate:(float)a3
{
  v5 = [(CRLAVPlayerController *)self player];
  v6 = [v5 currentItem];
  v48 = 0uLL;
  v49 = 0;
  [(CRLAVPlayerController *)self p_startCMTime];
  v46 = 0uLL;
  v47 = 0;
  [(CRLAVPlayerController *)self p_endCMTime];
  memset(&v45, 0, sizeof(v45));
  *&start.start.value = v48;
  start.start.epoch = v49;
  *&end.start.value = v46;
  end.start.epoch = v47;
  CMTimeRangeFromTimeToTime(&v45, &start.start, &end.start);
  v7 = [(CRLAVPlayerController *)self isScrubbing];
  p_mPlayerLooper = &self->mPlayerLooper;
  mPlayerLooper = self->mPlayerLooper;
  start = v45;
  v10 = [(CRLAVPlayerController *)self p_shouldUsePlayerLooperAtRate:&start timeRange:COERCE_DOUBLE(__PAIR64__(v45.duration.flags, LODWORD(a3)))];
  v11 = *&self->mPlayerItemTimeRange.start.epoch;
  *&start.start.value = *&self->mPlayerItemTimeRange.start.value;
  *&start.start.epoch = v11;
  *&start.duration.timescale = *&self->mPlayerItemTimeRange.duration.timescale;
  end = v45;
  if (CMTimeRangeEqual(&start, &end) && self->mIsPlayerItemTimeRangeForScrubbing == v7 && (mPlayerLooper != 0) == v10)
  {
    goto LABEL_43;
  }

  self->mIsUpdatingPlayerItems = 1;
  v13 = *&v45.start.epoch;
  *&self->mPlayerItemTimeRange.start.value = *&v45.start.value;
  *&self->mPlayerItemTimeRange.start.epoch = v13;
  *&self->mPlayerItemTimeRange.duration.timescale = *&v45.duration.timescale;
  self->mIsPlayerItemTimeRangeForScrubbing = v7;
  [(CRLAVPlayerController *)self p_notifyPlayerItemMediatorWithRate:0.0];
  [v5 setRate:0.0];
  memset(&end, 0, 24);
  if (v6)
  {
    [v6 currentTime];
  }

  if (mPlayerLooper)
  {
    [(AVPlayerLooper *)*p_mPlayerLooper disableLooping];
    v14 = *p_mPlayerLooper;
    *p_mPlayerLooper = 0;
  }

  if (v10)
  {
    v15 = [AVPlayerLooper alloc];
    v16 = *&self->mPlayerItemTimeRange.start.epoch;
    *&start.start.value = *&self->mPlayerItemTimeRange.start.value;
    *&start.start.epoch = v16;
    *&start.duration.timescale = *&self->mPlayerItemTimeRange.duration.timescale;
    v17 = [v15 initWithPlayer:v5 templateItem:v6 timeRange:&start];
    v18 = *p_mPlayerLooper;
    *p_mPlayerLooper = v17;

    if ([(AVPlayerLooper *)*p_mPlayerLooper status]== 2)
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_101368D04();
      }

      v19 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_ERROR))
      {
        sub_101368D2C(self, &self->mPlayerLooper, v19);
      }

      [(AVPlayerLooper *)*p_mPlayerLooper disableLooping];
      v20 = *p_mPlayerLooper;
      *p_mPlayerLooper = 0;
    }
  }

  v21 = [v5 currentItem];
  if (v21)
  {
    memset(&v43, 0, sizeof(v43));
    time = end.start;
    v22 = *&self->mPlayerItemTimeRange.start.epoch;
    *&start.start.value = *&self->mPlayerItemTimeRange.start.value;
    *&start.start.epoch = v22;
    *&start.duration.timescale = *&self->mPlayerItemTimeRange.duration.timescale;
    CMTimeClampToRange(&v43, &time, &start);
    if ((v43.flags & 0x1D) == 1)
    {
      start.start = v43;
      time = kCMTimeZero;
      v41 = time;
      [v21 seekToTime:&start toleranceBefore:&time toleranceAfter:&v41 completionHandler:0];
    }

    if (!*p_mPlayerLooper)
    {
      v23 = &v48;
      if (self->mIsPlayerItemTimeRangeForScrubbing)
      {
        v23 = &kCMTimeInvalid;
      }

      v39 = *&v23->value;
      epoch = v23->epoch;
      *&start.start.value = v39;
      start.start.epoch = epoch;
      [v21 setReversePlaybackEndTime:&start];
      v24 = &v46;
      if (self->mIsPlayerItemTimeRangeForScrubbing)
      {
        v24 = &kCMTimeInvalid;
      }

      v38 = v24->epoch;
      v37 = *&v24->value;
      *&start.start.value = v37;
      start.start.epoch = v38;
      [v21 setForwardPlaybackEndTime:&start];
    }
  }

  self->mIsUpdatingPlayerItems = 0;
  if (self->mPlayerLooper)
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_101368E80();
    }

    v25 = off_1019EFDC0;
    if (!os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    LODWORD(start.start.value) = 134217984;
    *(&start.start.value + 4) = self;
    v26 = "CRLAVPlayerController %p: Did set up new player looper.";
  }

  else
  {
    if (!mPlayerLooper)
    {
      goto LABEL_35;
    }

    if (qword_101AD5CA8 != -1)
    {
      sub_101368EA8();
    }

    v25 = off_1019EFDC0;
    if (!os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }

    LODWORD(start.start.value) = 134217984;
    *(&start.start.value + 4) = self;
    v26 = "CRLAVPlayerController %p: Did tear down player looper.";
  }

  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, &start, 0xCu);
LABEL_35:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = [(CRLAVPlayerController *)self p_workingPlayerItems];
  v28 = [v27 countByEnumeratingWithState:&v33 objects:v50 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v34;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v27);
        }

        [(CRLAVPlayerController *)self p_applyConstantVolumeToPlayerItem:*(*(&v33 + 1) + 8 * i)];
      }

      v29 = [v27 countByEnumeratingWithState:&v33 objects:v50 count:16];
    }

    while (v29);
  }

LABEL_43:
  *&v12 = a3;
  [(CRLAVPlayerController *)self p_notifyPlayerItemMediatorWithRate:v12];
  *&v32 = a3;
  [(CRLAVPlayerController *)self p_applyRate:v32];
}

- (id)p_workingPlayerItems
{
  mPlayerLooper = self->mPlayerLooper;
  if (mPlayerLooper)
  {
    v4 = [(AVPlayerLooper *)mPlayerLooper loopingPlayerItems];
  }

  else
  {
    v5 = [(CRLAVPlayerController *)self player];
    v4 = [v5 items];
  }

  return v4;
}

- (double)duration
{
  v3 = [(CRLAVPlayerController *)self player];
  v4 = [v3 currentItem];

  if (v4 && (memset(&v10[1], 0, sizeof(CMTime)), [v4 duration], 0 >> 96 == 1))
  {
    [(CRLAVPlayerController *)self endTime];
    v10[0] = v10[1];
    v6 = fmin(v5, CMTimeGetSeconds(v10));
    [(CRLAVPlayerController *)self startTime];
    v8 = fmax(v6 - v7, 0.0);
  }

  else
  {
    v8 = NAN;
  }

  return v8;
}

- (double)absoluteDuration
{
  v2 = [(CRLAVPlayerController *)self player];
  v3 = [v2 currentItem];

  if (v3 && (memset(&v6[1], 0, sizeof(CMTime)), [v3 duration], 0 >> 96 == 1))
  {
    v6[0] = v6[1];
    Seconds = CMTimeGetSeconds(v6);
  }

  else
  {
    Seconds = NAN;
  }

  return Seconds;
}

- (double)startTime
{
  memset(&v3[1], 0, sizeof(CMTime));
  [(CRLAVPlayerController *)self p_startCMTime];
  if (0 >> 96 != 1)
  {
    return NAN;
  }

  v3[0] = v3[1];
  return CMTimeGetSeconds(v3);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)p_startCMTime
{
  *retstr = kCMTimeInvalid;
  v5 = [(CRLAVPlayerController *)self player];
  v8 = [v5 currentItem];

  if (v8)
  {
    if ((self->mStartCMTime.flags & 0x1D) == 1)
    {
      p_value = &self->mStartCMTime.value;
    }

    else
    {
      p_value = &kCMTimeZero;
    }

    *&retstr->var0 = *p_value;
    retstr->var3 = p_value[2];
  }

  return result;
}

- (void)setStartTime:(double)a3
{
  memset(&v6, 0, sizeof(v6));
  CMTimeMakeWithSeconds(&v6, a3, +[_TtC8Freeform18CRLCommonConstants timeScale]);
  time1 = self->mStartCMTime;
  v4 = v6;
  if (CMTimeCompare(&time1, &v4))
  {
    self->mStartCMTime = v6;
    [(CRLAVPlayerController *)self rate];
    [(CRLAVPlayerController *)self p_updatePlayerItemsAndApplyRate:?];
  }
}

- (double)endTime
{
  memset(&v3[1], 0, sizeof(CMTime));
  [(CRLAVPlayerController *)self p_endCMTime];
  if (0 >> 96 != 1)
  {
    return NAN;
  }

  v3[0] = v3[1];
  return CMTimeGetSeconds(v3);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)p_endCMTime
{
  *retstr = kCMTimeInvalid;
  v5 = [(CRLAVPlayerController *)self player];
  v6 = [v5 currentItem];

  if (v6)
  {
    if ((self->mEndCMTime.flags & 0x1D) == 1)
    {
      *&retstr->var0 = *&self->mEndCMTime.value;
      retstr->var3 = self->mEndCMTime.epoch;
    }

    else
    {
      v7 = [v6 asset];
      v8 = v7;
      if (v7)
      {
        [v7 duration];
      }

      else
      {
        v10 = 0uLL;
        v11 = 0;
      }

      *&retstr->var0 = v10;
      retstr->var3 = v11;
    }
  }

  return result;
}

- (void)setEndTime:(double)a3
{
  memset(&v6, 0, sizeof(v6));
  CMTimeMakeWithSeconds(&v6, a3, +[_TtC8Freeform18CRLCommonConstants timeScale]);
  time1 = self->mEndCMTime;
  v4 = v6;
  if (CMTimeCompare(&time1, &v4))
  {
    self->mEndCMTime = v6;
    [(CRLAVPlayerController *)self rate];
    [(CRLAVPlayerController *)self p_updatePlayerItemsAndApplyRate:?];
  }
}

- (void)setRepeatMode:(int64_t)a3
{
  if (self->mRepeatMode != a3)
  {
    self->mRepeatMode = a3;
    [(CRLAVPlayerController *)self rate];
    mRepeatMode = self->mRepeatMode;
    if (v4 >= 0.0 || mRepeatMode == 2)
    {
      v7 = v4;
    }

    else
    {
      v7 = 1.0;
    }

    if (mRepeatMode != 1)
    {
      mPlayerLooper = self->mPlayerLooper;
      if (mPlayerLooper)
      {
        [(AVPlayerLooper *)mPlayerLooper disableLooping];
        v9 = self->mPlayerLooper;
        self->mPlayerLooper = 0;
      }
    }

    [(CRLAVPlayerController *)self p_updateAutomaticallyWaitsToMinimizeStalling];
    [(CRLAVPlayerController *)self rate];
    if (*&v10 != v7)
    {
      *&v10 = v7;

      [(CRLAVPlayerController *)self p_updatePlayerItemsAndApplyRate:v10];
    }
  }
}

- (void)setVolume:(float)a3
{
  if (self->mVolume != a3)
  {
    self->mVolume = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(CRLAVPlayerController *)self p_workingPlayerItems];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [(CRLAVPlayerController *)self p_applyConstantVolumeToPlayerItem:*(*(&v9 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setVolume:(float)a3 rampDuration:(double)a4
{
  if (self->mVolume != a3)
  {
    p_mVolumeRampPlayerItem = &self->mVolumeRampPlayerItem;
    mVolumeRampPlayerItem = self->mVolumeRampPlayerItem;
    self->mVolumeRampPlayerItem = 0;

    if (p_mVolumeRampPlayerItem[1])
    {
      v9 = [(CRLAVPlayerController *)self player];
      [v9 removeTimeObserver:self->mVolumeRampBoundaryTimeObserver];
      mVolumeRampBoundaryTimeObserver = self->mVolumeRampBoundaryTimeObserver;
      self->mVolumeRampBoundaryTimeObserver = 0;
    }

    [(CRLAVPlayerController *)self volume];
    v12 = v11;
    self->mVolume = a3;
    v13 = objc_opt_class();
    [(CRLAVPlayerController *)self rate];
    if ([v13 p_canApplyVolumeRampAtRate:?])
    {
      memset(&v47, 0, sizeof(v47));
      CMTimeMakeWithSeconds(&v47, a4, +[_TtC8Freeform18CRLCommonConstants timeScale]);
      memset(&v46, 0, sizeof(v46));
      mPlayer = self->mPlayer;
      if (mPlayer)
      {
        [(AVQueuePlayer *)mPlayer currentTime];
      }

      memset(&v45, 0, sizeof(v45));
      lhs = v46;
      rhs = v47;
      CMTimeAdd(&v45, &lhs, &rhs);
      v15 = [(AVQueuePlayer *)self->mPlayer currentItem];
      if (v15)
      {
        v33 = objc_alloc_init(AVMutableAudioMix);
        v16 = [v15 asset];
        v17 = [v16 tracksWithMediaType:AVMediaTypeAudio];

        v18 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v17, "count")}];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v40;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v40 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v39 + 1) + 8 * i);
              v25 = objc_alloc_init(AVMutableAudioMixInputParameters);
              [v25 setTrackID:{objc_msgSend(v24, "trackID")}];
              lhs = v46;
              [v25 setVolume:&lhs atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v46.value), v12))}];
              lhs = v45;
              [v25 setVolume:&lhs atTime:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v45.value), LODWORD(a3)))}];
              [v18 addObject:v25];
            }

            v21 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
          }

          while (v21);
        }

        [v33 setInputParameters:v18];
        [v15 setAudioMix:v33];
        objc_storeStrong(p_mVolumeRampPlayerItem, v15);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1003E2984;
        v38[3] = &unk_10183AB38;
        v38[4] = self;
        lhs = v45;
        v26 = [(CRLAVPlayerController *)self p_addTimeObserverForTime:&lhs handler:v38];
        v27 = self->mVolumeRampBoundaryTimeObserver;
        self->mVolumeRampBoundaryTimeObserver = v26;
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = [(CRLAVPlayerController *)self p_workingPlayerItems];
    v29 = [v28 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v35;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(v28);
          }

          if (*(*(&v34 + 1) + 8 * j) != *p_mVolumeRampPlayerItem)
          {
            [(CRLAVPlayerController *)self p_applyConstantVolumeToPlayerItem:?];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v30);
    }
  }
}

- (void)p_clearVolumeRampFromPlayerItem
{
  if (self->mVolumeRampPlayerItem)
  {
    [(CRLAVPlayerController *)self p_applyConstantVolumeToPlayerItem:?];
  }
}

- (void)p_applyConstantVolumeToPlayerItem:(id)a3
{
  v4 = a3;
  [(CRLAVPlayerController *)self volume];
  v6 = v5;
  mVolumeRampPlayerItem = self->mVolumeRampPlayerItem;
  if (mVolumeRampPlayerItem == v4)
  {
    self->mVolumeRampPlayerItem = 0;

    if (self->mVolumeRampBoundaryTimeObserver)
    {
      v8 = [(CRLAVPlayerController *)self player];
      [v8 removeTimeObserver:self->mVolumeRampBoundaryTimeObserver];
      mVolumeRampBoundaryTimeObserver = self->mVolumeRampBoundaryTimeObserver;
      self->mVolumeRampBoundaryTimeObserver = 0;
    }
  }

  if (v6 == 1.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_alloc_init(AVMutableAudioMix);
    v22 = v4;
    v11 = [(AVPlayerItem *)v4 asset];
    v12 = [v11 tracksWithMediaType:AVMediaTypeAudio];

    v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      v23 = *&kCMTimeZero.value;
      epoch = kCMTimeZero.epoch;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v26 + 1) + 8 * v19);
          v21 = objc_alloc_init(AVMutableAudioMixInputParameters);
          [v21 setTrackID:{objc_msgSend(v20, "trackID")}];
          v24 = v23;
          v25 = epoch;
          [v21 setVolume:&v24 atTime:{COERCE_DOUBLE(__PAIR64__(DWORD1(v23), LODWORD(v6)))}];
          [v13 addObject:v21];

          v19 = v19 + 1;
        }

        while (v16 != v19);
        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    [v10 setInputParameters:v13];
    v4 = v22;
  }

  [(AVPlayerItem *)v4 setAudioMix:v10];
}

- (BOOL)hasCurrentTime
{
  v2 = [(CRLAVPlayerController *)self player];
  v3 = [v2 currentItem];

  if (v3)
  {
    v4 = [v3 status] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)absoluteCurrentTime
{
  v3 = 0.0;
  if ([(CRLAVPlayerController *)self hasCurrentTime])
  {
    v4 = [(CRLAVPlayerController *)self player];
    v5 = [v4 currentItem];

    if (v5)
    {
      [v5 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v3 = fmax(CMTimeGetSeconds(&time), 0.0);
  }

  return v3;
}

- (double)currentTime
{
  v3 = 0.0;
  if ([(CRLAVPlayerController *)self hasCurrentTime])
  {
    v4 = [(CRLAVPlayerController *)self player];
    v5 = [v4 currentItem];

    if (v5)
    {
      [v5 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    [(CRLAVPlayerController *)self startTime];
    v8 = Seconds - v7;
    [(CRLAVPlayerController *)self endTime];
    v3 = sub_1004C3240(v8, 0.0, v9);
  }

  return v3;
}

- (double)remainingTime
{
  v3 = 0.0;
  if ([(CRLAVPlayerController *)self hasCurrentTime])
  {
    v4 = [(CRLAVPlayerController *)self player];
    v5 = [v4 currentItem];

    [(CRLAVPlayerController *)self endTime];
    v7 = v6;
    if (v5)
    {
      [v5 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v3 = fmax(v7 - fmax(CMTimeGetSeconds(&time), 0.0), 0.0);
  }

  return v3;
}

- (void)beginScrubbing
{
  mScrubbingCount = self->mScrubbingCount;
  if (!mScrubbingCount)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"CRLAVPlayerControllerWillBeginScrubbingNotification" object:self];

    mScrubbingCount = self->mScrubbingCount;
  }

  self->mScrubbingCount = mScrubbingCount + 1;
  if (qword_101AD5CA8 != -1)
  {
    sub_101368ED0();
  }

  v5 = off_1019EFDC0;
  if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = self->mScrubbingCount;
    v8 = 134218240;
    v9 = self;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: beginScrubbing count %tu", &v8, 0x16u);
  }

  if (self->mScrubbingCount == 1)
  {
    [(CRLAVPlayerController *)self rate];
    self->mRateBeforeScrubbing = v7;
    [(CRLAVPlayerController *)self setRate:0.0];
  }
}

- (void)scrubToTime:(double)a3 withTolerance:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  if (![(CRLAVPlayerController *)self isScrubbing])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101368EE4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101368EF8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101368F88();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLAVPlayerController scrubToTime:withTolerance:completionHandler:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:775 isFatal:0 description:"scrubbed to time when not in a scrubbing operation"];
  }

  memset(&v19, 0, sizeof(v19));
  CMTimeMakeWithSeconds(&v19, a3, +[_TtC8Freeform18CRLCommonConstants timeScale]);
  memset(&v18, 0, sizeof(v18));
  CMTimeMakeWithSeconds(&v18, a4, +[_TtC8Freeform18CRLCommonConstants timeScale]);
  memset(&v17, 0, sizeof(v17));
  CMTimeMakeWithSeconds(&v17, a4, +[_TtC8Freeform18CRLCommonConstants timeScale]);
  v12 = [(CRLAVPlayerController *)self player];
  v13 = v12;
  v16 = v19;
  v15 = v18;
  v14 = v17;
  if (v8)
  {
    [v12 seekToTime:&v16 toleranceBefore:&v15 toleranceAfter:&v14 completionHandler:v8];
  }

  else
  {
    [v12 seekToTime:&v16 toleranceBefore:&v15 toleranceAfter:&v14];
  }
}

- (void)cancelPendingSeeks
{
  v3 = [(CRLAVPlayerController *)self player];
  v2 = [v3 currentItem];
  [v2 cancelPendingSeeks];
}

- (void)endScrubbing
{
  mScrubbingCount = self->mScrubbingCount;
  if (mScrubbingCount)
  {
    goto LABEL_11;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101368FB0();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101368FC4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101369054();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLAVPlayerController endScrubbing]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:793 isFatal:0 description:"Uneven begin/end scrubbing calls!"];

  mScrubbingCount = self->mScrubbingCount;
  if (mScrubbingCount)
  {
LABEL_11:
    v7 = mScrubbingCount - 1;
    self->mScrubbingCount = v7;
    if (!v7)
    {
      memset(&buf, 0, sizeof(buf));
      v8 = [(CRLAVPlayerController *)self player];
      v9 = v8;
      if (v8)
      {
        [v8 currentTime];
      }

      else
      {
        memset(&buf, 0, sizeof(buf));
      }

      memset(&v22, 0, sizeof(v22));
      [(CRLAVPlayerController *)self p_endCMTime];
      if (0 >> 96 == 1)
      {
        time1 = buf;
        time2 = v22;
        v10 = CMTimeCompare(&time1, &time2) >> 31;
      }

      else
      {
        LOBYTE(v10) = 1;
      }

      memset(&time1, 0, sizeof(time1));
      [(CRLAVPlayerController *)self p_startCMTime];
      if ((time1.flags & 0x1D) == 1)
      {
        time2 = buf;
        v19 = time1;
        v11 = CMTimeCompare(&time2, &v19) < 1;
      }

      else
      {
        v11 = 0;
      }

      mRateBeforeScrubbing = self->mRateBeforeScrubbing;
      if (!((mRateBeforeScrubbing <= 0.0) | v10 & 1) || mRateBeforeScrubbing < 0.0 && v11)
      {
        if ([(CRLAVPlayerController *)self repeatMode])
        {
          *&v14 = self->mRateBeforeScrubbing;
          [(CRLAVPlayerController *)self setRate:v14];
        }

        v15 = +[NSNotificationCenter defaultCenter];
        [v15 postNotificationName:@"CRLAVPlayerControllerDidEndScrubbingNotification" object:self];

        *&v16 = self->mRateBeforeScrubbing;
        [(CRLAVPlayerController *)self p_playerItemDidPlayToEndTimeAtRate:v16];
      }

      else
      {
        [(CRLAVPlayerController *)self setRate:?];
        v13 = +[NSNotificationCenter defaultCenter];
        [v13 postNotificationName:@"CRLAVPlayerControllerDidEndScrubbingNotification" object:self];
      }
    }

    if (qword_101AD5CA8 != -1)
    {
      sub_10136907C();
    }

    v17 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->mScrubbingCount;
      LODWORD(buf.value) = 134218240;
      *(&buf.value + 4) = self;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: endScrubbing count %tu", &buf, 0x16u);
    }
  }
}

- (void)seekForwardByOneFrame
{
  v3 = [(CRLAVPlayerController *)self player];
  v4 = [v3 currentItem];

  if (v4 && (memset(&v10, 0, sizeof(v10)), [(CRLAVPlayerController *)self p_endCMTime], 0 >> 96 == 1))
  {
    v5 = [(CRLAVPlayerController *)self player];
    v6 = v5;
    if (v5)
    {
      [v5 currentTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v8 = v10;
    v7 = CMTimeCompare(&time1, &v8) >= 0;
  }

  else
  {
    v7 = 0;
  }

  if ([v4 canStepForward] && !v7)
  {
    [v4 stepByCount:1];
  }
}

- (void)seekBackwardByOneFrame
{
  v3 = [(CRLAVPlayerController *)self player];
  v4 = [v3 currentItem];

  if (v4 && (memset(&v10, 0, sizeof(v10)), [(CRLAVPlayerController *)self p_startCMTime], 0 >> 96 == 1))
  {
    v5 = [(CRLAVPlayerController *)self player];
    v6 = v5;
    if (v5)
    {
      [v5 currentTime];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v8 = v10;
    v7 = CMTimeCompare(&time1, &v8) < 1;
  }

  else
  {
    v7 = 0;
  }

  if ([v4 canStepBackward] && !v7)
  {
    [v4 stepByCount:-1];
  }
}

- (void)seekToBeginning
{
  v3 = [(CRLAVPlayerController *)self player];
  [(CRLAVPlayerController *)self p_startCMTime];
  [v3 seekToTime:v4];
}

- (void)seekToEnd
{
  v3 = [(CRLAVPlayerController *)self player];
  [(CRLAVPlayerController *)self p_endCMTime];
  [v3 seekToTime:v4];
}

- (void)updatePlayingToMatchPlayer
{
  v3 = [(CRLAVPlayerController *)self player];
  v8 = v3;
  if (self->mPlaying)
  {
    [v3 rate];
    if (v4 == 0.0)
    {
      v5 = 0;
      v6 = v8;
      goto LABEL_7;
    }

    v6 = v8;
    if (self->mPlaying)
    {
      goto LABEL_8;
    }
  }

  [v8 rate];
  v6 = v8;
  if (v7 <= 0.0)
  {
    goto LABEL_8;
  }

  v5 = 1;
LABEL_7:
  self->mPlaying = v5;
LABEL_8:
}

- (void)setPlaying:(BOOL)a3
{
  v3 = a3;
  if (a3 && [(CRLAVPlayerController *)self p_notifyDelegateOfPlaybackErrorIfNeeded])
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_1013690B8();
    }

    v5 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Not playing because a playback error occurred.", &buf, 0xCu);
    }
  }

  else if (self->mPlaying != v3)
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_1013690A4();
    }

    v6 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 134218240;
      *(&buf.value + 4) = self;
      LOWORD(buf.flags) = 1024;
      *(&buf.flags + 2) = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: setPlaying %i", &buf, 0x12u);
    }

    self->mPlaying = v3;
    if (v3)
    {
      v7 = [(CRLAVPlayerController *)self player];
      [v7 rate];
      if (*&v8 == 0.0)
      {
        v9 = [v7 currentItem];
        v10 = v9;
        memset(&buf, 0, sizeof(buf));
        if (v9)
        {
          [v9 currentTime];
        }

        memset(&v16, 0, sizeof(v16));
        [(CRLAVPlayerController *)self p_startCMTime];
        memset(&v15, 0, sizeof(v15));
        [(CRLAVPlayerController *)self p_endCMTime];
        CMTimeMake(&rhs, 1, 100);
        CMTimeSubtract(&v15, &lhs, &rhs);
        lhs = buf;
        rhs = v16;
        if (CMTimeCompare(&lhs, &rhs) < 0 || (lhs = buf, rhs = v15, CMTimeCompare(&lhs, &rhs) >= 1))
        {
          lhs = v16;
          rhs = kCMTimeZero;
          v12 = rhs;
          [v10 seekToTime:&lhs toleranceBefore:&rhs toleranceAfter:&v12 completionHandler:0];
          v11 = +[NSNotificationCenter defaultCenter];
          [v11 postNotificationName:@"CRLAVPlayerControllerWillPlayFromStartNotification" object:self];
        }
      }

      LODWORD(v8) = 1.0;
      [(CRLAVPlayerController *)self p_applyRate:v8];
    }

    else
    {
      [(CRLAVPlayerController *)self p_applyRate:0.0];
    }

    [(CRLAVPlayerController *)self setFastReversing:0];
    [(CRLAVPlayerController *)self setFastForwarding:0];
  }
}

- (float)rate
{
  v3 = [(CRLAVPlayerController *)self player];
  v4 = v3;
  if ((LODWORD(self->mPendingRate) & 0x7FFFFFFFu) > 0x7F7FFFFF || ([v3 currentItem], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "status"), v5, v6 == 1))
  {
    [v4 rate];
    mPendingRate = v7;
  }

  else
  {
    mPendingRate = self->mPendingRate;
  }

  return mPendingRate;
}

- (void)setRate:(float)a3
{
  v3 = a3;
  if (a3 == 0.0 || ![(CRLAVPlayerController *)self p_notifyDelegateOfPlaybackErrorIfNeeded])
  {
    a3 = v3;

    [(CRLAVPlayerController *)self p_updatePlayerItemsAndApplyRate:*&a3];
  }

  else
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_1013690CC();
    }

    v5 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = self;
      v8 = 2048;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Not setting rate to %f because a playback error occurred.", &v6, 0x16u);
    }
  }
}

- (void)p_applyRate:(float)a3
{
  v5 = [(CRLAVPlayerController *)self player];
  [(CRLAVPlayerController *)self rate];
  if (v6 != a3)
  {
    v7 = [v5 currentItem];
    v8 = [v7 status];

    if (v8)
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_1013690E0();
      }

      v9 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = self;
        v14 = 2048;
        v15 = a3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Applying rate %f.", &v12, 0x16u);
      }

      *&v10 = a3;
      [v5 setRate:v10];
      [(CRLAVPlayerController *)self updateNowPlaying];
    }

    else
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_1013690F4();
      }

      v11 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = self;
        v14 = 2048;
        v15 = a3;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Saving pending rate %f because the current player item is not yet ready.", &v12, 0x16u);
      }

      [(CRLAVPlayerController *)self willChangeValueForKey:@"rate"];
      self->mPendingRate = a3;
      [(CRLAVPlayerController *)self didChangeValueForKey:@"rate"];
    }
  }
}

- (void)p_applyPendingRateIfNeeded
{
  if ((LODWORD(self->mPendingRate) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if (qword_101AD5CA8 != -1)
    {
      sub_101369108();
    }

    v3 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
    {
      mPendingRate = self->mPendingRate;
      v8 = 134218240;
      v9 = self;
      v10 = 2048;
      v11 = mPendingRate;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Applying pending rate %f.", &v8, 0x16u);
    }

    v5 = self->mPendingRate;
    self->mPendingRate = NAN;
    v6 = [(CRLAVPlayerController *)self player];
    *&v7 = v5;
    [v6 setRate:v7];
  }
}

- (void)stopSynchronously
{
  [(CRLAVPlayerController *)self p_clearVolumeRampFromPlayerItem];
  [(CRLAVPlayerController *)self setPlaying:0];
  [(CRLAVPlayerController *)self setRate:0.0];
  v3 = [CRLAVPlayerControllerVideoDisplayBarrier alloc];
  v4 = [(CRLAVPlayerController *)self player];
  v5 = [(CRLAVPlayerControllerVideoDisplayBarrier *)v3 initWithPlayer:v4];

  [(CRLAVPlayerControllerVideoDisplayBarrier *)v5 waitUntilAllVideoFramesAreDisplayed];
}

+ (id)keyPathsForValuesAffectingCanFastReverse
{
  if (qword_101A34DE8 != -1)
  {
    sub_10136911C();
  }

  v3 = qword_101A34DE0;

  return v3;
}

- (BOOL)canFastReverse
{
  v2 = [(CRLAVPlayerController *)self player];
  v3 = [v2 currentItem];
  v4 = [v3 canPlayFastReverse];

  return v4;
}

- (BOOL)p_canFastReverseAtCurrentTime
{
  v3 = [(CRLAVPlayerController *)self player];
  v4 = [v3 currentItem];
  if ([v4 canPlayFastReverse])
  {
    [v3 rate];
    if (v5 == 0.0)
    {
      memset(&v10[1], 0, sizeof(CMTime));
      if (v4)
      {
        [v4 currentTime];
      }

      memset(v10, 0, 24);
      [(CRLAVPlayerController *)self p_startCMTime];
      time1 = v10[1];
      v8 = v10[0];
      v6 = CMTimeCompare(&time1, &v8) > 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setFastReversing:(BOOL)a3
{
  if (a3)
  {
    if ([(CRLAVPlayerController *)self p_notifyDelegateOfPlaybackErrorIfNeeded])
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_101369130();
      }

      v4 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = self;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Not fast reversing because a playback error occurred.", &v7, 0xCu);
      }
    }

    else if (!self->mFastReversing && [(CRLAVPlayerController *)self p_canFastReverseAtCurrentTime])
    {
      self->mFastReversing = 1;
      LODWORD(v6) = -2.0;
      [(CRLAVPlayerController *)self setRate:v6];

      [(CRLAVPlayerController *)self setFastForwarding:0];
    }
  }

  else if (self->mFastReversing)
  {
    self->mFastReversing = 0;
    if (![(CRLAVPlayerController *)self isFastForwarding])
    {
      if ([(CRLAVPlayerController *)self isPlaying])
      {
        LODWORD(v5) = 1.0;
      }

      else
      {
        v5 = 0.0;
      }

      [(CRLAVPlayerController *)self setRate:v5];
    }
  }
}

+ (id)keyPathsForValuesAffectingCanFastForward
{
  if (qword_101A34DF8 != -1)
  {
    sub_101369144();
  }

  v3 = qword_101A34DF0;

  return v3;
}

- (BOOL)canFastForward
{
  v2 = [(CRLAVPlayerController *)self player];
  v3 = [v2 currentItem];
  v4 = [v3 canPlayFastForward];

  return v4;
}

- (BOOL)p_canFastForwardAtCurrentTime
{
  v3 = [(CRLAVPlayerController *)self player];
  v4 = [v3 currentItem];
  if ([v4 canPlayFastForward])
  {
    [v3 rate];
    if (v5 == 0.0)
    {
      memset(&v10[1], 0, sizeof(CMTime));
      if (v4)
      {
        [v4 currentTime];
      }

      memset(v10, 0, 24);
      [(CRLAVPlayerController *)self p_endCMTime];
      time1 = v10[1];
      v8 = v10[0];
      v6 = CMTimeCompare(&time1, &v8) >> 31;
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setFastForwarding:(BOOL)a3
{
  if (a3)
  {
    if ([(CRLAVPlayerController *)self p_notifyDelegateOfPlaybackErrorIfNeeded])
    {
      if (qword_101AD5CA8 != -1)
      {
        sub_101369158();
      }

      v4 = off_1019EFDC0;
      if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 134217984;
        v8 = self;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Not fast forwarding because a playback error occurred.", &v7, 0xCu);
      }
    }

    else if (!self->mFastForwarding && [(CRLAVPlayerController *)self p_canFastForwardAtCurrentTime])
    {
      self->mFastForwarding = 1;
      LODWORD(v6) = 2.0;
      [(CRLAVPlayerController *)self setRate:v6];

      [(CRLAVPlayerController *)self setFastReversing:0];
    }
  }

  else if (self->mFastForwarding)
  {
    self->mFastForwarding = 0;
    if (![(CRLAVPlayerController *)self isFastReversing])
    {
      if ([(CRLAVPlayerController *)self isPlaying])
      {
        LODWORD(v5) = 1.0;
      }

      else
      {
        v5 = 0.0;
      }

      [(CRLAVPlayerController *)self setRate:v5];
    }
  }
}

- (void)skipToAssetAtIndex:(unint64_t)a3
{
  [(CRLAVPlayerController *)self setPlaying:0];
  v5 = [(CRLAVPlayerController *)self player];
  [v5 removeAllItems];
  [(CRLAVPlayerController *)self p_enqueueAssetsFromIndex:a3];
}

- (void)p_enqueueAssetsFromIndex:(unint64_t)a3
{
  v5 = [(CRLAVPlayerController *)self player];
  v6 = [(NSArray *)self->mEnqueuedAssets count];
  if (v6 > a3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [(NSArray *)self->mEnqueuedAssets subarrayWithRange:a3, v6 - a3];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [AVPlayerItem playerItemWithAsset:*(*(&v22 + 1) + 8 * i)];
          [v5 insertItem:v12 afterItem:0];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = [(CRLAVPlayerController *)self p_workingPlayerItems];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(CRLAVPlayerController *)self p_applyConstantVolumeToPlayerItem:*(*(&v18 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }

  [(CRLAVPlayerController *)self rate];
  [(CRLAVPlayerController *)self p_notifyPlayerItemMediatorWithRate:?];
}

- (id)p_addTimeObserverForTime:(id *)a3 handler:(id)a4
{
  v6 = a4;
  v7 = [(CRLAVPlayerController *)self player];
  v12 = *a3;
  v8 = [NSValue valueWithCMTime:&v12];
  v13 = v8;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  v10 = [v7 addBoundaryTimeObserverForTimes:v9 queue:&_dispatch_main_q usingBlock:v6];

  return v10;
}

- (id)addPeriodicTimeObserverForInterval:(double)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(CRLAVPlayerController *)self player];
  CMTimeMakeWithSeconds(&v13, a3, +[_TtC8Freeform18CRLCommonConstants timeScale]);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003E5020;
  v11[3] = &unk_10185EA90;
  v12 = v6;
  v8 = v6;
  v9 = [v7 addPeriodicTimeObserverForInterval:&v13 queue:&_dispatch_main_q usingBlock:v11];

  return v9;
}

- (void)removePeriodicTimeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRLAVPlayerController *)self player];
  [v5 removeTimeObserver:v4];
}

- (void)setPlayerItemMediator:(id)a3
{
  v5 = a3;
  if (self->mPlayerItemMediator != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mPlayerItemMediator, a3);
    [(CRLAVPlayerController *)self rate];
    [(CRLAVPlayerController *)self p_notifyPlayerItemMediatorWithRate:?];
    v5 = v6;
  }
}

- (void)p_notifyPlayerItemMediatorWithRate:(float)a3
{
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10136916C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101369180();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101369210();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLAVPlayerController p_notifyPlayerItemMediatorWithRate:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:1216 isFatal:0 description:"This operation must only be performed on the main thread."];
  }

  v8 = [(CRLAVPlayerController *)self playerItemMediator];
  v9 = [(CRLAVPlayerController *)self p_workingPlayerItems];
  v10 = *&self->mPlayerItemTimeRange.start.epoch;
  v11[0] = *&self->mPlayerItemTimeRange.start.value;
  v11[1] = v10;
  v12 = *&self->mPlayerItemTimeRange.duration.timescale;
  [v8 playerController:self willUsePlayerItems:v9 atRate:v11 timeRangeForEachPlayerItem:{COERCE_DOUBLE(__PAIR64__(DWORD1(v12), LODWORD(a3)))}];
}

- (void)p_playerItemDidPlayToEndTimeAtRate:(float)a3
{
  if (qword_101AD5CA8 != -1)
  {
    sub_101369238();
  }

  v5 = off_1019EFDC0;
  if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: playerItemDidPlayToEndTimeAtRate: %f", buf, 0x16u);
  }

  if ([(NSArray *)self->mEnqueuedAssets count])
  {
    v6 = [(CRLAVPlayerController *)self player];
    v7 = [v6 items];
    v8 = [v7 count];

    if (v8 == 1)
    {
      v9 = +[NSNotificationCenter defaultCenter];
      [v9 postNotificationName:@"CRLAVPlayerControllerDidPlayToEndNotification" object:self];

      v10 = [(CRLAVPlayerController *)self repeatMode];
      if (!v10 || v10 == 2)
      {
        [(CRLAVPlayerController *)self setRate:0.0];
        v14 = [(CRLAVPlayerController *)self delegate];
        [v14 playbackDidStopForPlayerController:self];
      }

      else if (v10 == 1)
      {
        [(CRLAVPlayerController *)self p_enqueueAssetsFromIndex:0];
        *&v11 = a3;
        [(CRLAVPlayerController *)self setRate:v11];
      }
    }

    goto LABEL_42;
  }

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 postNotificationName:@"CRLAVPlayerControllerDidPlayToEndNotification" object:self];

  v13 = [(CRLAVPlayerController *)self repeatMode];
  if (v13)
  {
    if (v13 == 2)
    {
      if (self->mPlayerLooper)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_101369338();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_101369360();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013693FC();
        }

        v15 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v15);
        }

        v16 = [NSString stringWithUTF8String:"[CRLAVPlayerController p_playerItemDidPlayToEndTimeAtRate:]"];
        v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
        [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:1247 isFatal:0 description:"expected nil value for '%{public}s'", "mPlayerLooper"];
      }

      memset(buf, 0, sizeof(buf));
      if (a3 >= 0.0)
      {
        [(CRLAVPlayerController *)self p_endCMTime];
      }

      else
      {
        [(CRLAVPlayerController *)self p_startCMTime];
      }

      v21 = [(CRLAVPlayerController *)self player];
      *&v22 = -a3;
      v28 = *buf;
      v29 = *&buf[16];
      v26 = *&kCMTimeInvalid.value;
      epoch = kCMTimeInvalid.epoch;
      [v21 setRate:&v28 time:&v26 atHostTime:v22];
      goto LABEL_48;
    }

    if (v13 == 1 && !self->mPlayerLooper)
    {
      memset(buf, 0, sizeof(buf));
      if (a3 >= 0.0)
      {
        [(CRLAVPlayerController *)self p_startCMTime];
      }

      else
      {
        [(CRLAVPlayerController *)self p_endCMTime];
      }

      v21 = [(CRLAVPlayerController *)self player];
      v23 = [v21 currentItem];
      v28 = *buf;
      v29 = *&buf[16];
      v26 = *&kCMTimeZero.value;
      epoch = kCMTimeZero.epoch;
      v24 = v26;
      v25 = epoch;
      [v23 seekToTime:&v28 toleranceBefore:&v26 toleranceAfter:&v24 completionHandler:0];

LABEL_48:
    }
  }

  else
  {
    if (self->mPlayerLooper)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136924C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101369274();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101369310();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLAVPlayerController p_playerItemDidPlayToEndTimeAtRate:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1255 isFatal:0 description:"expected nil value for '%{public}s'", "mPlayerLooper"];
    }

    [(CRLAVPlayerController *)self setPlaying:0];
    [(CRLAVPlayerController *)self setFastReversing:0];
    [(CRLAVPlayerController *)self setFastForwarding:0];
    if (a3 > 0.0)
    {
      v6 = [(CRLAVPlayerController *)self delegate];
      [v6 playbackDidStopForPlayerController:self];
LABEL_42:
    }
  }
}

- (void)p_playerItemDidPlayToEndTime:(id)a3
{
  v7 = [(CRLAVPlayerController *)self player];
  [v7 rate];
  v5 = v4;
  [(CRLAVPlayerController *)self p_clearVolumeRampFromPlayerItem];
  LODWORD(v6) = v5;
  [(CRLAVPlayerController *)self p_playerItemDidPlayToEndTimeAtRate:v6];
}

- (BOOL)p_notifyDelegateOfPlaybackErrorIfNeeded
{
  if (!self->mDidNotifyDelegateOfPlaybackError)
  {
    v4 = [(CRLAVPlayerController *)self player];
    if ([v4 status] == 2)
    {
      v5 = [v4 error];
      if (v5)
      {
        goto LABEL_17;
      }

      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101369424();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101369438();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013694D4();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v6);
      }

      v7 = [NSString stringWithUTF8String:"[CRLAVPlayerController p_notifyDelegateOfPlaybackErrorIfNeeded]"];
      v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
      [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1316 isFatal:0 description:"invalid nil value for '%{public}s'", "error"];
    }

    v5 = [v4 currentItem];
    if ([v5 status] != 2)
    {
LABEL_30:

      mDidNotifyDelegateOfPlaybackError = self->mDidNotifyDelegateOfPlaybackError;
      return mDidNotifyDelegateOfPlaybackError;
    }

    v9 = [v5 error];
    if (!v9)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136961C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101369644();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013696E0();
      }

      v13 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v13);
      }

      v14 = [NSString stringWithUTF8String:"[CRLAVPlayerController p_notifyDelegateOfPlaybackErrorIfNeeded]"];
      v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLAVPlayerController.m"];
      [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1323 isFatal:0 description:"invalid nil value for '%{public}s'", "error"];

      goto LABEL_30;
    }

    v10 = v9;

    v5 = v10;
LABEL_17:
    self->mDidNotifyDelegateOfPlaybackError = 1;
    v11 = [(CRLAVPlayerController *)self delegate];
    [v11 playerController:self playbackDidFailWithError:v5];

    if (qword_101AD5CA8 != -1)
    {
      sub_1013694FC();
    }

    v12 = off_1019EFDC0;
    if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_ERROR))
    {
      sub_101369524(self, v12, v5);
    }

    goto LABEL_30;
  }

  return 1;
}

- (void)p_playerItemDidJumpTime:(id)a3
{
  [(CRLAVPlayerController *)self p_clearVolumeRampFromPlayerItem];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CRLAVPlayerControllerTimeJumpedNotification" object:self userInfo:0];
}

- (void)p_applicationDidResignActive
{
  [(CRLAVPlayerController *)self setupRemoteTransportControls];

  [(CRLAVPlayerController *)self updateNowPlaying];
}

- (void)p_updateAutomaticallyWaitsToMinimizeStalling
{
  v11 = [(CRLAVPlayerController *)self player];
  v3 = objc_opt_class();
  v4 = [v11 currentItem];
  v5 = [v4 asset];
  v6 = sub_100014370(v3, v5);

  if (v6)
  {
    v7 = [v6 URL];
    v8 = [v7 scheme];

    if ([v8 isEqual:@"http"])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v8 isEqual:@"https"];
    }
  }

  else
  {
    v9 = 0;
  }

  if (self->mRepeatMode == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  [v11 setAutomaticallyWaitsToMinimizeStalling:v10];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSNotificationCenter defaultCenter];
  if (off_1019EFDC8 == a6)
  {
    v14 = [v12 objectForKey:NSKeyValueChangeOldKey];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v13 removeObserver:self name:AVPlayerItemDidPlayToEndTimeNotification object:v14];
        [v13 removeObserver:self name:AVPlayerItemTimeJumpedNotification object:v14];
      }
    }

    v15 = [v12 objectForKey:NSKeyValueChangeNewKey];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![(CRLAVPlayerController *)self canPlay])
        {
          v16 = [v15 asset];
          v17 = [AVAsset crl_playableKeysWithKeys:&off_1018E1E48];
          v46[0] = _NSConcreteStackBlock;
          v46[1] = 3221225472;
          v46[2] = sub_1003E680C;
          v46[3] = &unk_10183AE28;
          v47 = v16;
          v48 = self;
          v18 = v16;
          [v18 loadValuesAsynchronouslyForKeys:v17 completionHandler:v46];
        }

        [v13 addObserver:self selector:"p_playerItemDidPlayToEndTime:" name:AVPlayerItemDidPlayToEndTimeNotification object:v15];
        [v13 addObserver:self selector:"p_playerItemDidJumpTime:" name:AVPlayerItemTimeJumpedNotification object:v15];
        [(CRLAVPlayerController *)self p_updateAutomaticallyWaitsToMinimizeStalling];
        if (!self->mPlayerLooper)
        {
          [(CRLAVPlayerController *)self p_applyConstantVolumeToPlayerItem:v15];
        }
      }
    }

    goto LABEL_58;
  }

  if (off_1019EFDD8 != a6)
  {
    if (off_1019EFDE0 == a6)
    {
      v22 = [(CRLAVPlayerController *)self player];
      v14 = [v22 currentItem];

      v23 = [v14 status];
      if (v23 == 2)
      {
        [(CRLAVPlayerController *)self rate];
        if (v39 != 1.0)
        {
          [(CRLAVPlayerController *)self p_notifyDelegateOfPlaybackErrorIfNeeded];
        }
      }

      else if (v23 == 1)
      {
        [(CRLAVPlayerController *)self p_applyPendingRateIfNeeded];
      }

      goto LABEL_59;
    }

    if (off_1019EFDD0 != a6)
    {
      v43.receiver = self;
      v43.super_class = CRLAVPlayerController;
      [(CRLAVPlayerController *)&v43 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
      goto LABEL_60;
    }

    v24 = objc_opt_class();
    v25 = [v12 objectForKeyedSubscript:NSKeyValueChangeOldKey];
    v14 = sub_100014370(v24, v25);

    v26 = 0.0;
    v27 = 0.0;
    if (v14)
    {
      [v14 floatValue];
      v27 = v28;
    }

    v29 = objc_opt_class();
    v30 = [v12 objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v15 = sub_100014370(v29, v30);

    if (v15)
    {
      [v15 floatValue];
      v26 = v31;
    }

    if (v27 != v26)
    {
      v32 = objc_opt_class();
      *&v33 = v26;
      if (([v32 p_canApplyVolumeRampAtRate:v33] & 1) == 0)
      {
        [(CRLAVPlayerController *)self p_clearVolumeRampFromPlayerItem];
      }

      if ((LODWORD(self->mPendingRate) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        if (qword_101AD5CA8 != -1)
        {
          sub_101369708();
        }

        v34 = off_1019EFDC0;
        if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
        {
          mPendingRate = self->mPendingRate;
          *buf = 134218496;
          v50 = self;
          v51 = 2048;
          v52 = mPendingRate;
          v53 = 2048;
          v54 = v26;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Clearing pending rate %f because the player rate changed to %f.", buf, 0x20u);
        }

        self->mPendingRate = NAN;
      }
    }

    if (v27 != 0.0 || v26 == 0.0)
    {
      if (v27 != 0.0 && v26 == 0.0)
      {
        [v13 removeObserver:self name:UIApplicationWillResignActiveNotification object:0];
        v40 = +[CRLMoviePlaybackRegistry sharedMoviePlaybackRegistry];
        [v40 objectDidEndMoviePlayback:self];

        if (([(CRLAVPlayerController *)self isPlaying]|| [(CRLAVPlayerController *)self isFastReversing]|| [(CRLAVPlayerController *)self isFastForwarding]) && ![(CRLAVPlayerController *)self isScrubbing]&& !self->mIsUpdatingPlayerItems)
        {
          if (qword_101AD5CA8 != -1)
          {
            sub_10136971C();
          }

          v41 = off_1019EFDC0;
          if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v50 = self;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Player rate changed to 0 while playing, fast reversing, or fast forwarding.", buf, 0xCu);
          }

          Main = CFRunLoopGetMain();
          v44[0] = _NSConcreteStackBlock;
          v44[1] = 3221225472;
          v44[2] = sub_1003E6F74;
          v44[3] = &unk_10183AB38;
          v44[4] = self;
          CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, v44);
          CFRunLoopWakeUp(Main);
        }
      }
    }

    else
    {
      v36 = +[CRLMoviePlaybackRegistry sharedMoviePlaybackRegistry];
      [v36 objectWillBeginMoviePlayback:self];

      [v13 addObserver:self selector:"p_applicationDidResignActive" name:UIApplicationWillResignActiveNotification object:0];
      if (self->mWasPlayingBeforeChangeToZeroRate || self->mWasFastReversingBeforeChangeToZeroRate || self->mWasFastForwardingBeforeChangeToZeroRate)
      {
        if (qword_101AD5CA8 != -1)
        {
          sub_101369744();
        }

        v37 = off_1019EFDC0;
        if (os_log_type_enabled(off_1019EFDC0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v50 = self;
          v51 = 2048;
          v52 = v26;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "CRLAVPlayerController %p: Player rate changed to %f after changing to 0 while playing, fast reversing, or fast forwarding.", buf, 0x16u);
        }

        v38 = CFRunLoopGetMain();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1003E6A38;
        block[3] = &unk_10183AB38;
        block[4] = self;
        CFRunLoopPerformBlock(v38, kCFRunLoopCommonModes, block);
      }
    }

LABEL_58:

LABEL_59:
    goto LABEL_60;
  }

  v19 = [(CRLAVPlayerController *)self player];
  v20 = [v19 status];

  if (v20 == 2)
  {
    [(CRLAVPlayerController *)self rate];
    if (v21 != 1.0)
    {
      [(CRLAVPlayerController *)self p_notifyDelegateOfPlaybackErrorIfNeeded];
    }
  }

LABEL_60:
}

- (void)updateNowPlaying
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(CRLAVPlayerController *)self delegate];
  v5 = [v4 nowPlayingTitleWithPlaybackController:self];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:MPMediaItemPropertyTitle];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1003E75A8;
  v23 = sub_1003E75B8;
  v6 = [(CRLAVPlayerController *)self delegate];
  v24 = [v6 nowPlayingImageProviderWithPlaybackController:self];

  if (v20[5])
  {
    v7 = [MPMediaItemArtwork alloc];
    [v20[5] naturalSize];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1003E75C0;
    v18[3] = &unk_10185ED98;
    v18[4] = &v19;
    v8 = [v7 initWithBoundsSize:v18 requestHandler:?];
    [v3 setObject:v8 forKeyedSubscript:MPMediaItemPropertyArtwork];
  }

  v9 = [(CRLAVPlayerController *)self player];
  v10 = [v9 currentItem];

  if (v10)
  {
    [v10 currentTime];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  v11 = [NSNumber numberWithDouble:CMTimeGetSeconds(&v17)];
  [v3 setObject:v11 forKeyedSubscript:MPNowPlayingInfoPropertyElapsedPlaybackTime];

  v12 = [v10 asset];
  v13 = v12;
  if (v12)
  {
    [v12 duration];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  v14 = [NSNumber numberWithDouble:CMTimeGetSeconds(&v17)];
  [v3 setObject:v14 forKeyedSubscript:MPMediaItemPropertyPlaybackDuration];

  [(CRLAVPlayerController *)self rate];
  v15 = [NSNumber numberWithFloat:?];
  [v3 setObject:v15 forKeyedSubscript:MPNowPlayingInfoPropertyPlaybackRate];

  v16 = +[MPNowPlayingInfoCenter defaultCenter];
  [v16 setNowPlayingInfo:v3];

  _Block_object_dispose(&v19, 8);
}

- (int64_t)remotePlay
{
  if ([(CRLAVPlayerController *)self isPlaying])
  {
    return 200;
  }

  [(CRLAVPlayerController *)self setPlaying:1];
  return 0;
}

- (int64_t)remotePause
{
  if (![(CRLAVPlayerController *)self isPlaying])
  {
    return 200;
  }

  [(CRLAVPlayerController *)self setPlaying:0];
  return 0;
}

- (void)setupRemoteTransportControls
{
  v5 = +[MPRemoteCommandCenter sharedCommandCenter];
  v3 = [v5 playCommand];
  [v3 addTarget:self action:"remotePlay"];
  v4 = [v5 pauseCommand];
  [v4 addTarget:self action:"remotePause"];
}

@end