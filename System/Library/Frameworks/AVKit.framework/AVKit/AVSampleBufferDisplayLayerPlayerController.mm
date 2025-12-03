@interface AVSampleBufferDisplayLayerPlayerController
+ (id)keyPathsForValuesAffectingContentDuration;
+ (id)keyPathsForValuesAffectingContentDurationWithinEndTimes;
+ (id)keyPathsForValuesAffectingCurrentTimeWithinEndTimes;
+ (id)keyPathsForValuesAffectingHasLiveStreamingContent;
+ (id)keyPathsForValuesAffectingPictureInPicturePossible;
+ (id)keyPathsForValuesAffectingRate;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentSBDLTime;
- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)contentTimeRange;
- (AVPictureInPictureController)pictureInPictureController;
- (AVPictureInPictureSampleBufferPlaybackDelegate)playbackDelegate;
- (AVSampleBufferDisplayLayerPlayerController)init;
- (BOOL)hasLiveStreamingContent;
- (BOOL)isPaused;
- (BOOL)isPictureInPicturePossible;
- (CGSize)enqueuedBufferDimensions;
- (double)_effectiveRate;
- (double)contentDurationWithinEndTimes;
- (double)currentTimeWithinEndTimes;
- (double)rate;
- (id)maxTiming;
- (int64_t)timeControlStatus;
- (void)_startObservation;
- (void)_updateBackgroundAudioPlaybackPolicy;
- (void)_updatePlaybackStateTiming;
- (void)_updateStatus;
- (void)dealloc;
- (void)invalidatePlaybackState;
- (void)seekByTimeInterval:(double)interval toleranceBefore:(double)before toleranceAfter:(double)after;
- (void)setContentTimeRange:(id *)range;
- (void)setEnqueuedBufferDimensions:(CGSize)dimensions;
- (void)setPictureInPictureController:(id)controller;
- (void)setPictureInPictureInterrupted:(BOOL)interrupted;
- (void)setPlaybackDelegate:(id)delegate;
- (void)setPlaybackState:(id)state;
- (void)setPlaying:(BOOL)playing;
- (void)togglePlaybackEvenWhenInBackground:(id)background;
@end

@implementation AVSampleBufferDisplayLayerPlayerController

- (void)setContentTimeRange:(id *)range
{
  v4 = *&range->var0.var3;
  v3 = *&range->var1.var1;
  *&self->_enqueuedBufferDimensions.height = *&range->var0.var0;
  *&self->_contentTimeRange.start.timescale = v4;
  *&self->_contentTimeRange.duration.value = v3;
}

- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)contentTimeRange
{
  v3 = *&self[17].var1.var0;
  *&retstr->var0.var0 = *&self[17].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[17].var1.var3;
  return self;
}

- (CGSize)enqueuedBufferDimensions
{
  v2 = *&self->_oldAVPlayControllerStatus;
  width = self->_enqueuedBufferDimensions.width;
  result.height = width;
  result.width = v2;
  return result;
}

- (AVPictureInPictureSampleBufferPlaybackDelegate)playbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureController);

  return WeakRetained;
}

- (AVPictureInPictureController)pictureInPictureController
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackState);

  return WeakRetained;
}

- (void)_startObservation
{
  v59[6] = *MEMORY[0x1E69E9840];
  sbdlObservationController = [(AVSampleBufferDisplayLayerPlayerController *)self sbdlObservationController];

  if (!sbdlObservationController)
  {
    v4 = [[AVObservationController alloc] initWithOwner:self];
    [(AVSampleBufferDisplayLayerPlayerController *)self setSbdlObservationController:v4];

    sbdlObservationController2 = [(AVSampleBufferDisplayLayerPlayerController *)self sbdlObservationController];
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    v7 = [sbdlObservationController2 startObserving:mEMORY[0x1E6958460] keyPath:@"isPiPAvailable" includeInitialValue:1 observationHandler:&__block_literal_global_34584];

    sbdlObservationController3 = [(AVSampleBufferDisplayLayerPlayerController *)self sbdlObservationController];
    [sbdlObservationController3 startObservingNotificationForName:*MEMORY[0x1E6960CD0] object:0 notificationCenter:0 observationHandler:&__block_literal_global_142_34585];

    sbdlObservationController4 = [(AVSampleBufferDisplayLayerPlayerController *)self sbdlObservationController];
    [sbdlObservationController4 startObservingNotificationForName:*MEMORY[0x1E6960CE8] object:0 notificationCenter:0 observationHandler:&__block_literal_global_142_34585];

    pictureInPictureController = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
    contentSource = [pictureInPictureController contentSource];
    sampleBufferDisplayLayer = [contentSource sampleBufferDisplayLayer];

    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x4010000000;
    v56[3] = "";
    v57 = 0u;
    v58 = 0u;
    [sampleBufferDisplayLayer frame];
    *&v57 = v13;
    *(&v57 + 1) = v14;
    *&v58 = v15;
    *(&v58 + 1) = v16;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x4010000000;
    v53[3] = "";
    v54 = 0u;
    v55 = 0u;
    [sampleBufferDisplayLayer bounds];
    *&v54 = v17;
    *(&v54 + 1) = v18;
    *&v55 = v19;
    *(&v55 + 1) = v20;
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x5010000000;
    v49[3] = "";
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    if (sampleBufferDisplayLayer)
    {
      [sampleBufferDisplayLayer affineTransform];
      v37 = 0;
      v38 = &v37;
      v39 = 0xA010000000;
      v40 = "";
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      [sampleBufferDisplayLayer transform];
      v25 = 0;
      v26 = &v25;
      v27 = 0xA010000000;
      v28 = "";
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      [sampleBufferDisplayLayer sublayerTransform];
    }

    else
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0xA010000000;
      v40 = "";
      v41 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v48 = 0uLL;
      v25 = 0;
      v26 = &v25;
      v27 = 0xA010000000;
      v28 = "";
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
    }

    sbdlObservationController5 = [(AVSampleBufferDisplayLayerPlayerController *)self sbdlObservationController];
    v59[0] = @"bounds";
    v59[1] = @"frame";
    v59[2] = @"transform";
    v59[3] = @"affineTransform";
    v59[4] = @"sublayerTransform";
    v59[5] = @"videoGravity";
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:6];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __63__AVSampleBufferDisplayLayerPlayerController__startObservation__block_invoke_3;
    v24[3] = &unk_1E720A148;
    v24[4] = v56;
    v24[5] = v53;
    v24[6] = v49;
    v24[7] = &v37;
    v24[8] = &v25;
    v23 = [sbdlObservationController5 startObserving:sampleBufferDisplayLayer keyPaths:v22 includeInitialValue:1 observationHandler:v24];

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(v49, 8);
    _Block_object_dispose(v53, 8);
    _Block_object_dispose(v56, 8);
  }
}

void __63__AVSampleBufferDisplayLayerPlayerController__startObservation__block_invoke_3(uint64_t a1, void *a2)
{
  objc_initWeak(&location, a2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVSampleBufferDisplayLayerPlayerController__startObservation__block_invoke_4;
  block[3] = &unk_1E720A120;
  objc_copyWeak(&v8, &location);
  v3 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v3;
  v7 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __63__AVSampleBufferDisplayLayerPlayerController__startObservation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained pictureInPictureController];
  v4 = [v3 contentSource];
  v5 = [v4 sampleBufferDisplayLayer];

  if (WeakRetained)
  {
    if (v5)
    {
      v6 = *(*(a1 + 32) + 8);
      [v5 frame];
      v77.origin.x = v7;
      v77.origin.y = v8;
      v77.size.width = v9;
      v77.size.height = v10;
      if (!CGRectEqualToRect(v6[1], v77) || (v11 = *(*(a1 + 40) + 8), [v5 bounds], v78.origin.x = v12, v78.origin.y = v13, v78.size.width = v14, v78.size.height = v15, !CGRectEqualToRect(v11[1], v78)) || (v16 = *(*(a1 + 48) + 8), objc_msgSend(v5, "affineTransform"), v17 = v16[3], *&t1.m11 = v16[2], *&t1.m13 = v17, *&t1.m21 = v16[4], !CGAffineTransformEqualToTransform(&t1, &t2)) || (v18 = *(*(a1 + 56) + 8), objc_msgSend(v5, "transform"), v19 = v18[7], *&t1.m31 = v18[6], *&t1.m33 = v19, v20 = v18[9], *&t1.m41 = v18[8], *&t1.m43 = v20, v21 = v18[3], *&t1.m11 = v18[2], *&t1.m13 = v21, v22 = v18[5], *&t1.m21 = v18[4], *&t1.m23 = v22, !CATransform3DEqualToTransform(&t1, &t2)) || (v23 = *(*(a1 + 64) + 8), objc_msgSend(v5, "sublayerTransform"), v24 = v23[7], *&t1.m31 = v23[6], *&t1.m33 = v24, v25 = v23[9], *&t1.m41 = v23[8], *&t1.m43 = v25, v26 = v23[3], *&t1.m11 = v23[2], *&t1.m13 = v26, v27 = v23[5], *&t1.m21 = v23[4], *&t1.m23 = v27, !CATransform3DEqualToTransform(&t1, &t2)))
      {
        [v5 frame];
        v28 = *(*(a1 + 32) + 8);
        v28[4] = v29;
        v28[5] = v30;
        v28[6] = v31;
        v28[7] = v32;
        [v5 bounds];
        v33 = *(*(a1 + 40) + 8);
        v33[4] = v34;
        v33[5] = v35;
        v33[6] = v36;
        v33[7] = v37;
        [v5 affineTransform];
        v38 = *(*(a1 + 48) + 8);
        v40 = v73;
        v39 = v74;
        v38[2] = v72;
        v38[3] = v40;
        v38[4] = v39;
        [v5 transform];
        v41 = *(*(a1 + 56) + 8);
        v43 = v66;
        v42 = v67;
        v44 = v65;
        v41[2] = v64;
        v41[3] = v44;
        v46 = v70;
        v45 = v71;
        v47 = v69;
        v41[6] = v68;
        v41[7] = v47;
        v41[8] = v46;
        v41[9] = v45;
        v41[4] = v43;
        v41[5] = v42;
        [v5 sublayerTransform];
        v48 = *(*(a1 + 64) + 8);
        v50 = v58;
        v49 = v59;
        v51 = v57;
        v48[2] = v56;
        v48[3] = v51;
        v53 = v62;
        v52 = v63;
        v54 = v61;
        v48[6] = v60;
        v48[7] = v54;
        v48[8] = v53;
        v48[9] = v52;
        v48[4] = v50;
        v48[5] = v49;
        v55 = [WeakRetained pictureInPictureController];
        [v55 contentSourceVideoRectInWindowChanged];
      }
    }
  }
}

void __63__AVSampleBufferDisplayLayerPlayerController__startObservation__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v5 = a4;
  v6 = [v12 pictureInPictureController];
  v7 = [v6 contentSource];
  v8 = [v7 sampleBufferDisplayLayer];
  v9 = [v8 sampleBufferRenderer];
  v10 = [v9 timebase];

  if (v10)
  {
    v11 = [v5 object];

    if (v10 == v11)
    {
      [v12 invalidatePlaybackState];
    }
  }
}

uint64_t __63__AVSampleBufferDisplayLayerPlayerController__startObservation__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6958460];
  v3 = a2;
  v4 = [v2 sharedInstance];
  [v3 setPictureInPictureAvailable:{objc_msgSend(v4, "isPiPAvailable")}];

  v5 = [v3 isPictureInPictureAvailable];

  return [AVPlayerController setCachedIsPictureInPictureSupported:v5];
}

- (void)_updateBackgroundAudioPlaybackPolicy
{
  WeakRetained = objc_loadWeakRetained(&self->_pictureInPictureController);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_pictureInPictureController);
    pictureInPictureController = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
    v7 = [v5 pictureInPictureControllerShouldProhibitBackgroundAudioPlayback:pictureInPictureController];

    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  pictureInPictureController2 = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
  [pictureInPictureController2 setBackgroundPlaybackPolicy:v8];
}

- (void)_updateStatus
{
  [(AVSampleBufferDisplayLayerPlayerController *)self contentDimensions];
  v7 = ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v4 >= 0 || (v4 - 1) < 0xFFFFFFFFFFFFFLL;
  v9 = (v3 < 0 || ((v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v3 - 1) > 0xFFFFFFFFFFFFELL;
  v10 = 1;
  if (!v9 && v7)
  {
    [(AVSampleBufferDisplayLayerPlayerController *)self contentTimeRange];
    if ((v14 & 1) == 0 || ([(AVSampleBufferDisplayLayerPlayerController *)self contentTimeRange], (v13 & 1) == 0) || ([(AVSampleBufferDisplayLayerPlayerController *)self contentTimeRange], v12) || ([(AVSampleBufferDisplayLayerPlayerController *)self contentTimeRange], v11 < 0))
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  [(AVSampleBufferDisplayLayerPlayerController *)self setStatus:v10];
}

- (void)_updatePlaybackStateTiming
{
  playbackState = [(AVSampleBufferDisplayLayerPlayerController *)self playbackState];
  [playbackState currentElapsedTime];
  v4 = v3;
  if ([playbackState isPaused])
  {
    v5 = 0.0;
    v6 = NAN;
  }

  else
  {
    +[AVValueTiming currentTimeStamp];
    v6 = v7;
    [playbackState timelineRate];
    v5 = v8;
  }

  v9 = [[AVValueTiming alloc] initWithAnchorValue:v4 anchorTimeStamp:v6 rate:v5];
  epoch = self->super._seekToTimeInternal.epoch;
  self->super._seekToTimeInternal.epoch = v9;
}

- (void)setEnqueuedBufferDimensions:(CGSize)dimensions
{
  *&self->_oldAVPlayControllerStatus = dimensions;
  pictureInPictureController = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
  [pictureInPictureController contentSourceVideoRectInWindowChanged];

  [(AVSampleBufferDisplayLayerPlayerController *)self _updateStatus];
}

- (id)maxTiming
{
  [(AVSampleBufferDisplayLayerPlayerController *)self contentDuration];

  return [AVValueTiming valueTimingWithAnchorValue:"valueTimingWithAnchorValue:anchorTimeStamp:rate:" anchorTimeStamp:? rate:?];
}

- (BOOL)hasLiveStreamingContent
{
  [(AVSampleBufferDisplayLayerPlayerController *)self contentTimeRange];
  if (v6)
  {
    [(AVSampleBufferDisplayLayerPlayerController *)self contentTimeRange];
    return (v5 >> 2) & 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (double)contentDurationWithinEndTimes
{
  playbackState = [(AVSampleBufferDisplayLayerPlayerController *)self playbackState];
  [playbackState timelineDuration];
  v4 = v3;

  return v4;
}

- (double)currentTimeWithinEndTimes
{
  playbackState = [(AVSampleBufferDisplayLayerPlayerController *)self playbackState];
  [playbackState currentElapsedTime];
  v4 = v3;

  return v4;
}

- (double)rate
{
  playbackState = [(AVSampleBufferDisplayLayerPlayerController *)self playbackState];
  [playbackState timelineRate];
  v4 = v3;

  return v4;
}

- (BOOL)isPictureInPicturePossible
{
  v12 = *MEMORY[0x1E69E9840];
  oldAVPlayControllerStatus = [(AVSampleBufferDisplayLayerPlayerController *)self oldAVPlayControllerStatus];
  if (oldAVPlayControllerStatus != [(AVSampleBufferDisplayLayerPlayerController *)self status]|| (v4 = [(AVSampleBufferDisplayLayerPlayerController *)self oldPictureInPictureAvailableState], v4 != [(AVSampleBufferDisplayLayerPlayerController *)self isPictureInPictureAvailable]))
  {
    v5 = _AVLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ([(AVSampleBufferDisplayLayerPlayerController *)self status]== 3)
      {
        v6 = "NO";
      }

      else
      {
        v6 = "YES";
      }

      *v9 = 136315650;
      *&v9[4] = "[AVSampleBufferDisplayLayerPlayerController isPictureInPicturePossible]";
      if ([(AVSampleBufferDisplayLayerPlayerController *)self isPictureInPictureAvailable])
      {
        v7 = "YES";
      }

      else
      {
        v7 = "NO";
      }

      *&v9[12] = 2082;
      *&v9[14] = v6;
      v10 = 2082;
      v11 = v7;
      _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s !AVPlayerControllerStatusFailed = %{public}s, isPictureInPictureAvailable = %{public}s", v9, 0x20u);
    }

    [(AVSampleBufferDisplayLayerPlayerController *)self setOldAVPlayControllerStatus:[(AVSampleBufferDisplayLayerPlayerController *)self status]];
    [(AVSampleBufferDisplayLayerPlayerController *)self setOldPictureInPictureAvailableState:[(AVSampleBufferDisplayLayerPlayerController *)self isPictureInPictureAvailable]];
  }

  return [(AVSampleBufferDisplayLayerPlayerController *)self status]!= 3 && [(AVSampleBufferDisplayLayerPlayerController *)self isPictureInPictureAvailable];
}

- (void)setPictureInPictureInterrupted:(BOOL)interrupted
{
  interruptedCopy = interrupted;
  v5.receiver = self;
  v5.super_class = AVSampleBufferDisplayLayerPlayerController;
  [(AVPlayerController *)&v5 setPictureInPictureInterrupted:?];
  if (interruptedCopy)
  {
    [(AVSampleBufferDisplayLayerPlayerController *)self setPlaying:0];
  }
}

- (void)togglePlaybackEvenWhenInBackground:(id)background
{
  v4 = [(AVSampleBufferDisplayLayerPlayerController *)self isPlaying]^ 1;

  [(AVSampleBufferDisplayLayerPlayerController *)self setPlaying:v4];
}

- (void)seekByTimeInterval:(double)interval toleranceBefore:(double)before toleranceAfter:(double)after
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [(AVSampleBufferDisplayLayerPlayerController *)self isPlaying:interval];
  if (v7)
  {
    [(AVSampleBufferDisplayLayerPlayerController *)self togglePlaybackEvenWhenInBackground:self];
  }

  v8 = _AVLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    *(&buf.value + 4) = "[AVSampleBufferDisplayLayerPlayerController seekByTimeInterval:toleranceBefore:toleranceAfter:]";
    LODWORD(buf.value) = 136315650;
    if (v7)
    {
      v9 = @"YES";
    }

    LOWORD(buf.flags) = 2048;
    *(&buf.flags + 2) = interval;
    HIWORD(buf.epoch) = 2112;
    v17 = v9;
    _os_log_impl(&dword_18B49C000, v8, OS_LOG_TYPE_DEFAULT, "%s  interval: %f shouldResumePlayback: %@", &buf, 0x20u);
  }

  objc_initWeak(&location, self);
  playbackDelegate = [(AVSampleBufferDisplayLayerPlayerController *)self playbackDelegate];
  pictureInPictureController = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
  CMTimeMakeWithSeconds(&buf, interval, 90000);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__AVSampleBufferDisplayLayerPlayerController_seekByTimeInterval_toleranceBefore_toleranceAfter___block_invoke;
  v12[3] = &unk_1E720A0B8;
  objc_copyWeak(&v13, &location);
  v14 = v7;
  [playbackDelegate pictureInPictureController:pictureInPictureController skipByInterval:&buf completionHandler:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __96__AVSampleBufferDisplayLayerPlayerController_seekByTimeInterval_toleranceBefore_toleranceAfter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "Done seeking.", buf, 2u);
    }

    if (*(a1 + 40) == 1)
    {
      v4 = _AVLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "Resuming playback after a seek.", v5, 2u);
      }

      [WeakRetained togglePlaybackEvenWhenInBackground:WeakRetained];
    }
  }
}

- (void)setPlaying:(BOOL)playing
{
  playingCopy = playing;
  if ([(AVSampleBufferDisplayLayerPlayerController *)self isPlaying]!= playing)
  {
    playbackDelegateAdapter = [(AVSampleBufferDisplayLayerPlayerController *)self playbackDelegateAdapter];
    pictureInPictureController = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
    [playbackDelegateAdapter pictureInPictureController:pictureInPictureController setPlaying:playingCopy];

    [(AVSampleBufferDisplayLayerPlayerController *)self invalidatePlaybackState];
  }
}

- (int64_t)timeControlStatus
{
  playbackState = [(AVSampleBufferDisplayLayerPlayerController *)self playbackState];
  if ([playbackState isPaused])
  {
    v3 = 0;
  }

  else
  {
    [playbackState timelineRate];
    if (v4 == 0.0)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  return v3;
}

- (BOOL)isPaused
{
  playbackState = [(AVSampleBufferDisplayLayerPlayerController *)self playbackState];
  isPaused = [playbackState isPaused];

  return isPaused;
}

- (void)setPlaybackState:(id)state
{
  stateCopy = state;
  if (self->_timeControlStatus != stateCopy)
  {
    v6 = stateCopy;
    objc_storeStrong(&self->_timeControlStatus, state);
    [(AVSampleBufferDisplayLayerPlayerController *)self _updatePlaybackStateTiming];
    stateCopy = v6;
  }
}

- (void)invalidatePlaybackState
{
  v24 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315138;
      *&v22[4] = "[AVSampleBufferDisplayLayerPlayerController invalidatePlaybackState]";
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "*** %s must be called on main thread. ***", v22, 0xCu);
    }
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    playbackDelegateAdapter = [(AVSampleBufferDisplayLayerPlayerController *)self playbackDelegateAdapter];
    pictureInPictureController = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
    v6 = [playbackDelegateAdapter pictureInPictureControllerIsPlaybackPaused:pictureInPictureController];

    playbackDelegateAdapter2 = [(AVSampleBufferDisplayLayerPlayerController *)self playbackDelegateAdapter];
    pictureInPictureController2 = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
    if (playbackDelegateAdapter2)
    {
      [playbackDelegateAdapter2 pictureInPictureControllerTimeRangeForPlayback:pictureInPictureController2];
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
    }

    *v22 = v18;
    *&v22[16] = v19;
    v23 = v20;
    [(AVSampleBufferDisplayLayerPlayerController *)self setContentTimeRange:v22];

    memset(v22, 0, 24);
    [(AVSampleBufferDisplayLayerPlayerController *)self _currentSBDLTime];
    [(AVSampleBufferDisplayLayerPlayerController *)self contentTimeRange];
    rhs = v15;
    CMTimeSubtract(v22, &lhs, &rhs);
    v9 = [AVPictureInPicturePlaybackState alloc];
    lhs = *v22;
    Seconds = CMTimeGetSeconds(&lhs);
    [(AVSampleBufferDisplayLayerPlayerController *)self contentTimeRange];
    lhs = v14;
    v11 = CMTimeGetSeconds(&lhs);
    [(AVSampleBufferDisplayLayerPlayerController *)self _effectiveRate];
    v13 = [(AVPictureInPicturePlaybackState *)v9 initWithElapsedTime:v6 timelineDuration:Seconds timelineRate:v11 paused:v12];
    [(AVSampleBufferDisplayLayerPlayerController *)self setPlaybackState:v13];

    [(AVSampleBufferDisplayLayerPlayerController *)self _updateBackgroundAudioPlaybackPolicy];
    [(AVSampleBufferDisplayLayerPlayerController *)self _updateStatus];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__AVSampleBufferDisplayLayerPlayerController_invalidatePlaybackState__block_invoke;
    block[3] = &unk_1E720A090;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)setPictureInPictureController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_playbackState);

  if (WeakRetained)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Expect this to only be set once.", v9, 2u);
    }
  }

  objc_storeWeak(&self->_playbackState, controllerCopy);
  contentSource = [controllerCopy contentSource];

  sampleBufferPlaybackDelegate = [contentSource sampleBufferPlaybackDelegate];
  [(AVSampleBufferDisplayLayerPlayerController *)self setPlaybackDelegate:sampleBufferPlaybackDelegate];

  [(AVSampleBufferDisplayLayerPlayerController *)self _startObservation];
}

- (void)setPlaybackDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_pictureInPictureController, delegateCopy);
  v5 = [AVSampleBufferDisplayLayerPlaybackDelegateAdapter playbackDelegateAdapterWithDelegate:delegateCopy];

  [(AVSampleBufferDisplayLayerPlayerController *)self setPlaybackDelegateAdapter:v5];

  [(AVSampleBufferDisplayLayerPlayerController *)self invalidatePlaybackState];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentSBDLTime
{
  *retstr = **&MEMORY[0x1E6960C70];
  pictureInPictureController = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
  contentSource = [pictureInPictureController contentSource];
  sampleBufferDisplayLayer = [contentSource sampleBufferDisplayLayer];
  sampleBufferRenderer = [sampleBufferDisplayLayer sampleBufferRenderer];
  timebase = [sampleBufferRenderer timebase];

  if (timebase)
  {
    CFRetain(timebase);
    CMTimebaseGetTime(retstr, timebase);

    CFRelease(timebase);
  }

  return result;
}

- (double)_effectiveRate
{
  pictureInPictureController = [(AVSampleBufferDisplayLayerPlayerController *)self pictureInPictureController];
  contentSource = [pictureInPictureController contentSource];
  sampleBufferDisplayLayer = [contentSource sampleBufferDisplayLayer];
  sampleBufferRenderer = [sampleBufferDisplayLayer sampleBufferRenderer];
  timebase = [sampleBufferRenderer timebase];

  if (!timebase)
  {
    return 0.0;
  }

  CFRetain(timebase);
  EffectiveRate = CMTimebaseGetEffectiveRate(timebase);
  CFRelease(timebase);
  return EffectiveRate;
}

- (AVSampleBufferDisplayLayerPlayerController)init
{
  v9.receiver = self;
  v9.super_class = AVSampleBufferDisplayLayerPlayerController;
  v2 = [(AVPlayerController *)&v9 init];
  if (v2)
  {
    mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
    LOBYTE(v2->_timing) = [mEMORY[0x1E6958460] isPiPAvailable];

    v4 = [[AVPictureInPicturePlaybackState alloc] initWithElapsedTime:1 timelineDuration:NAN timelineRate:NAN paused:0.0];
    timeControlStatus = v2->_timeControlStatus;
    v2->_timeControlStatus = v4;

    v6 = [[AVValueTiming alloc] initWithAnchorValue:NAN anchorTimeStamp:NAN rate:0.0];
    epoch = v2->super._seekToTimeInternal.epoch;
    v2->super._seekToTimeInternal.epoch = v6;
  }

  return v2;
}

- (void)dealloc
{
  sbdlObservationController = [(AVSampleBufferDisplayLayerPlayerController *)self sbdlObservationController];
  [sbdlObservationController stopAllObservation];

  v4.receiver = self;
  v4.super_class = AVSampleBufferDisplayLayerPlayerController;
  [(AVPlayerController *)&v4 dealloc];
}

+ (id)keyPathsForValuesAffectingHasLiveStreamingContent
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"contentTimeRange";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingContentDuration
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"contentDurationWithinEndTimes";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingContentDurationWithinEndTimes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playbackState.timelineDuration";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingCurrentTimeWithinEndTimes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playbackState";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingRate
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"playbackState.timelineRate";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)keyPathsForValuesAffectingPictureInPicturePossible
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"status";
  v6[1] = @"pictureInPictureAvailable";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

@end