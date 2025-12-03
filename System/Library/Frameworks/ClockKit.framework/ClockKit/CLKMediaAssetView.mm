@interface CLKMediaAssetView
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_endTimeForOperation:(SEL)operation;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_startTimeForOperation:(SEL)operation;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKMediaAssetView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (CLKMediaAssetViewDelegate)delegate;
- (void)_cancelPlayback;
- (void)_completePlaybackWithOperation:(int64_t)operation;
- (void)_createVideoPlayerViewIfNeeded;
- (void)_mediaServicesWereReset:(id)reset;
- (void)_reset;
- (void)_transitionFromPosterToVideo;
- (void)changeMediaAsset:(id)asset;
- (void)dealloc;
- (void)fadeFromCurtainViewWithDuration:(double)duration completion:(id)completion;
- (void)fadeToCurtainViewWithDuration:(double)duration completion:(id)completion;
- (void)hideCurtainView;
- (void)interruptPlayback;
- (void)layoutSubviews;
- (void)pauseWithOperation:(int64_t)operation;
- (void)playWithOperation:(int64_t)operation;
- (void)prepareToPlayWithOperation:(int64_t)operation;
- (void)resumeInterruptedPlayback;
- (void)showCurtainView;
- (void)videoPlayerViewDidBeginPlaying:(id)playing;
- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)end;
@end

@implementation CLKMediaAssetView

- (CLKMediaAssetView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = CLKMediaAssetView;
  height = [(CLKMediaAssetView *)&v19 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v13 = objc_alloc(MEMORY[0x277D755E8]);
    [(CLKMediaAssetView *)v12 bounds];
    v14 = [v13 initWithFrame:?];
    posterView = v12->_posterView;
    v12->_posterView = v14;

    [(UIImageView *)v12->_posterView setAutoresizingMask:18];
    [(UIImageView *)v12->_posterView setContentMode:1];
    [(CLKMediaAssetView *)v12 addSubview:v12->_posterView];
    [(CLKMediaAssetView *)v12 bringSubviewToFront:v12->_posterView];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = CLKget_AVAudioSessionMediaServicesWereResetNotification();
    [defaultCenter addObserver:v12 selector:sel__mediaServicesWereReset_ name:v17 object:0];
  }

  return v12;
}

- (void)dealloc
{
  if (self->_timeObserver)
  {
    player = [(CLKVideoPlayerView *)self->_videoPlayerView player];
    [player removeTimeObserver:self->_timeObserver];

    timeObserver = self->_timeObserver;
    self->_timeObserver = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = CLKMediaAssetView;
  [(CLKMediaAssetView *)&v6 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIImageView *)self->_posterView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIImageView *)self->_posterView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = CLKMediaAssetView;
  [(CLKMediaAssetView *)&v15 layoutSubviews];
  superlayer = [(AVSynchronizedLayer *)self->_syncLayer superlayer];
  [superlayer bounds];
  [(AVSynchronizedLayer *)self->_syncLayer setFrame:?];

  superlayer2 = [(CALayer *)self->_posterLayer superlayer];
  [superlayer2 bounds];
  [(CALayer *)self->_posterLayer setFrame:?];

  v5 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_23702D000, v5, OS_LOG_TYPE_DEFAULT, "CLKMediaAssetView layoutSubviews", v14, 2u);
  }

  [(CLKMediaAssetView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  _CLKSetViewBoundsAndPositionFromFrame(self->_curtainView, v6, v8, v10, v12);
  _CLKSetViewBoundsAndPositionFromFrame(self->_posterView, v7, v9, v11, v13);
  _CLKSetViewBoundsAndPositionFromFrame(self->_videoPlayerView, v7, v9, v11, v13);
}

- (void)changeMediaAsset:(id)asset
{
  assetCopy = asset;
  [(CLKMediaAssetView *)self _cancelPlayback];
  video = [assetCopy video];
  v7 = [video url];
  video2 = [(CLKMediaAsset *)self->_mediaAsset video];
  v9 = [video2 url];

  if (v7 != v9)
  {
    *(self + 440) &= ~1u;
    [(CALayer *)self->_posterLayer removeFromSuperlayer];
    [(AVSynchronizedLayer *)self->_syncLayer removeFromSuperlayer];
    syncLayer = self->_syncLayer;
    self->_syncLayer = 0;

    posterLayer = self->_posterLayer;
    self->_posterLayer = 0;
  }

  self->_preparedForOperation = 0;
  objc_storeStrong(&self->_mediaAsset, asset);
  image = [assetCopy image];
  [(UIImageView *)self->_posterView setImage:image];

  posterView = self->_posterView;
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  v17[0] = *MEMORY[0x277CBF2C0];
  v17[1] = v14;
  v17[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(UIImageView *)posterView setTransform:v17];
  [(UIImageView *)self->_posterView setAlpha:1.0];
  video3 = [assetCopy video];
  v16 = [video3 url];

  if (v16)
  {
    [(CLKMediaAssetView *)self _createVideoPlayerViewIfNeeded];
  }

  if ((*(self + 440) & 1) == 0)
  {
    [(CLKVideoPlayerView *)self->_videoPlayerView setHidden:1];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_startTimeForOperation:(SEL)operation
{
  [(CLKMediaAsset *)self->_mediaAsset stillDisplayTime];
  v5.n128_f64[0] = fmax(v5.n128_f64[0] + _startTimeForOperation__startTimeOffsets[a4], 0.0);

  return CLKcall_CMTimeMakeWithSeconds(1000, v5);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_endTimeForOperation:(SEL)operation
{
  [(CLKMediaAsset *)self->_mediaAsset stillDisplayTime];
  v7 = v6 + _endTimeForOperation__endTimeOffsets[a4];
  [(CLKMediaAsset *)self->_mediaAsset videoDuration];
  if (v7 < v8.n128_f64[0])
  {
    v8.n128_f64[0] = v7;
  }

  return CLKcall_CMTimeMakeWithSeconds(1000, v8);
}

- (void)prepareToPlayWithOperation:(int64_t)operation
{
  v47 = *MEMORY[0x277D85DE8];
  if ((operation - 4) > 0xFFFFFFFFFFFFFFFCLL)
  {
    video = [(CLKMediaAsset *)self->_mediaAsset video];
    v6 = [video url];
    if (v6)
    {
      preparedForOperation = self->_preparedForOperation;

      if (preparedForOperation != operation)
      {
        if ((*(self + 440) & 1) == 0)
        {
          v8 = CLKLoggingObjectForDomain(0);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            video2 = [(CLKMediaAsset *)self->_mediaAsset video];
            v10 = [video2 url];
            LODWORD(buf.a) = 138412290;
            *(&buf.a + 4) = v10;
            _os_log_impl(&dword_23702D000, v8, OS_LOG_TYPE_DEFAULT, "Loading video: %@.", &buf, 0xCu);
          }

          videoPlayerView = self->_videoPlayerView;
          video3 = [(CLKMediaAsset *)self->_mediaAsset video];
          [(CLKVideoPlayerView *)videoPlayerView loadVideo:video3];

          [(CLKVideoPlayerView *)self->_videoPlayerView setHidden:0];
          *(self + 440) |= 1u;
        }

        if (operation == 2)
        {
          if (!self->_syncLayer)
          {
            layer = [MEMORY[0x277CD9ED0] layer];
            posterLayer = self->_posterLayer;
            self->_posterLayer = layer;

            [(CALayer *)self->_posterLayer setContentsGravity:*MEMORY[0x277CDA710]];
            [(CALayer *)self->_posterLayer setContentsRect:0.046, 0.046, 0.908, 0.908];
            [MEMORY[0x277CD9FF0] begin];
            [MEMORY[0x277CD9FF0] setDisableActions:1];
            image = [(UIImageView *)self->_posterView image];
            -[CALayer setContents:](self->_posterLayer, "setContents:", [image CGImage]);

            image2 = [(UIImageView *)self->_posterView image];
            imageOrientation = [image2 imageOrientation];

            v18 = *(MEMORY[0x277CBF2C0] + 16);
            *&v45.a = *MEMORY[0x277CBF2C0];
            *&v45.c = v18;
            *&v45.tx = *(MEMORY[0x277CBF2C0] + 32);
            if ((imageOrientation - 1) <= 2)
            {
              CGAffineTransformMakeRotation(&v45, dbl_2370A4C50[imageOrientation - 1]);
            }

            v19 = self->_posterLayer;
            buf = v45;
            [(CALayer *)v19 setContentsTransform:&buf];
            [(CALayer *)self->_posterLayer setOpacity:0.0];
            [MEMORY[0x277CD9FF0] commit];
            v20 = CLKget_AVSynchronizedLayerClass();
            player = [(CLKVideoPlayerView *)self->_videoPlayerView player];
            currentItem = [player currentItem];
            v23 = [v20 synchronizedLayerWithPlayerItem:currentItem];
            syncLayer = self->_syncLayer;
            self->_syncLayer = v23;

            layer2 = [(CLKMediaAssetView *)self layer];
            [layer2 bounds];
            [(AVSynchronizedLayer *)self->_syncLayer setFrame:?];

            layer3 = [(CLKMediaAssetView *)self layer];
            [layer3 addSublayer:self->_syncLayer];

            [(AVSynchronizedLayer *)self->_syncLayer bounds];
            [(CALayer *)self->_posterLayer setFrame:?];
            [(AVSynchronizedLayer *)self->_syncLayer addSublayer:self->_posterLayer];
          }

          [(CLKMediaAsset *)self->_mediaAsset stillDisplayTime];
          CLKcall_CMTimeMakeWithSeconds(1000, v27);
          player2 = [(CLKVideoPlayerView *)self->_videoPlayerView player];
          currentItem2 = [player2 currentItem];
          *&buf.a = v43;
          buf.c = v44;
          [currentItem2 setForwardPlaybackEndTime:&buf];

          v30 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
          [v30 setFromValue:&unk_284A35018];
          [v30 setToValue:&unk_284A35028];
          [v30 setDuration:0.065];
          [v30 setFillMode:*MEMORY[0x277CDA238]];
          [v30 setRemovedOnCompletion:0];
          [(CLKMediaAsset *)self->_mediaAsset stillDisplayTime];
          [v30 setBeginTime:v31 + -0.065];
          [(CALayer *)self->_posterLayer addAnimation:v30 forKey:@"poster"];
        }

        else
        {
          player3 = [(CLKVideoPlayerView *)self->_videoPlayerView player];
          currentItem3 = [player3 currentItem];
          *&buf.a = v41;
          buf.c = v42;
          [currentItem3 setForwardPlaybackEndTime:&buf];

          [MEMORY[0x277CD9FF0] begin];
          [MEMORY[0x277CD9FF0] setDisableActions:1];
          [(CALayer *)self->_posterLayer removeAllAnimations];
          [(CALayer *)self->_posterLayer setOpacity:0.0];
          commit = [MEMORY[0x277CD9FF0] commit];
        }

        memset(&buf, 0, 24);
        CLKget_kCMTimePositiveInfinity(&buf, commit);
        if (operation == 1)
        {
          CLKget_kCMTimeZero(&v39);
          *&buf.a = v39;
          buf.c = v40;
        }

        v35 = self->_videoPlayerView;
        [(CLKMediaAssetView *)self _startTimeForOperation:operation];
        v37 = *&buf.a;
        c = buf.c;
        [(CLKVideoPlayerView *)v35 seekToTime:&v39 tolerance:&v37];
        [(CLKVideoPlayerView *)self->_videoPlayerView preroll];
        self->_preparedForOperation = operation;
      }
    }

    else
    {
    }
  }

  else
  {
    v4 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = operation;
      _os_log_impl(&dword_23702D000, v4, OS_LOG_TYPE_DEFAULT, "Unsupported media view operation: %ld", &buf, 0xCu);
    }
  }
}

- (void)_transitionFromPosterToVideo
{
  transitionOperation = self->_transitionOperation;
  v4 = _transitionFromPosterToVideo_s_transitionDurationForPlayWithOperation[transitionOperation];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(CALayer *)self->_posterLayer setOpacity:0.0];
  [MEMORY[0x277CD9FF0] commit];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__CLKMediaAssetView__transitionFromPosterToVideo__block_invoke;
  v7[3] = &unk_278A1FE58;
  v7[4] = self;
  v7[5] = 0x3FF1333333333333;
  v5 = MEMORY[0x2383C4AF0](v7);
  v6 = v5;
  if (transitionOperation == 1)
  {
    [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v5 options:0 animations:v4 completion:0.0];
  }

  else
  {
    (*(v5 + 16))(v5);
  }
}

uint64_t __49__CLKMediaAssetView__transitionFromPosterToVideo__block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(*(a1 + 32) + 424);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(*(a1 + 32) + 424) setAlpha:0.0];
}

- (void)playWithOperation:(int64_t)operation
{
  v26 = *MEMORY[0x277D85DE8];
  if ((operation - 4) > 0xFFFFFFFFFFFFFFFCLL)
  {
    video = [(CLKMediaAsset *)self->_mediaAsset video];
    v7 = [video url];

    if (v7)
    {
      if (self->_preparedForOperation != operation)
      {
        [(CLKMediaAssetView *)self prepareToPlayWithOperation:operation];
      }

      self->_transitionOperation = operation;
      memset(buf, 0, sizeof(buf));
      v25 = 0;
      [(CLKMediaAssetView *)self _endTimeForOperation:operation];
      objc_initWeak(&location, self);
      if (self->_timeObserver)
      {
        player = [(CLKVideoPlayerView *)self->_videoPlayerView player];
        [player removeTimeObserver:self->_timeObserver];

        timeObserver = self->_timeObserver;
        self->_timeObserver = 0;
      }

      player2 = [(CLKVideoPlayerView *)self->_videoPlayerView player];
      v20 = *buf;
      v21 = v25;
      v11 = [MEMORY[0x277CCAE60] valueWithCMTime:&v20];
      v23 = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __39__CLKMediaAssetView_playWithOperation___block_invoke;
      v18 = &unk_278A1FE80;
      objc_copyWeak(v19, &location);
      v19[1] = operation;
      v13 = [player2 addBoundaryTimeObserverForTimes:v12 queue:0 usingBlock:&v15];
      v14 = self->_timeObserver;
      self->_timeObserver = v13;

      [(CLKVideoPlayerView *)self->_videoPlayerView play:v15];
      self->_preparedForOperation = 0;
      *(self + 440) |= 2u;
      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v4 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = operation;
      _os_log_impl(&dword_23702D000, v4, OS_LOG_TYPE_DEFAULT, "Unsupported media view operation: %ld", buf, 0xCu);
    }
  }
}

void __39__CLKMediaAssetView_playWithOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completePlaybackWithOperation:*(a1 + 40)];
}

- (void)_completePlaybackWithOperation:(int64_t)operation
{
  player = [(CLKVideoPlayerView *)self->_videoPlayerView player];
  [player removeTimeObserver:self->_timeObserver];

  timeObserver = self->_timeObserver;
  self->_timeObserver = 0;

  if (operation == 1)
  {
    [(CLKVideoPlayerView *)self->_videoPlayerView pause];
    self->_preparedForOperation = 0;
    *(self + 440) &= ~2u;
  }

  else
  {
    [(CLKMediaAssetView *)self pauseWithOperation:operation];
  }

  delegate = [(CLKMediaAssetView *)self delegate];
  [delegate mediaAssetViewDidEndPlaying:self];
}

- (void)pauseWithOperation:(int64_t)operation
{
  v16 = *MEMORY[0x277D85DE8];
  if ((operation - 4) > 0xFFFFFFFFFFFFFFFCLL)
  {
    video = [(CLKMediaAsset *)self->_mediaAsset video];
    v7 = [video url];

    if (v7)
    {
      if (self->_timeObserver)
      {
        player = [(CLKVideoPlayerView *)self->_videoPlayerView player];
        [player removeTimeObserver:self->_timeObserver];

        timeObserver = self->_timeObserver;
        self->_timeObserver = 0;
      }

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __40__CLKMediaAssetView_pauseWithOperation___block_invoke;
      v13[3] = &unk_278A1F1B8;
      v13[4] = self;
      v10 = MEMORY[0x2383C4AF0](v13);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__CLKMediaAssetView_pauseWithOperation___block_invoke_2;
      v12[3] = &unk_278A1FD10;
      v12[4] = self;
      v11 = MEMORY[0x2383C4AF0](v12);
      if (operation == 1)
      {
        [MEMORY[0x277D75D18] animateWithDuration:0x10000 delay:v10 options:v11 animations:0.6 completion:0.0];
      }

      else
      {
        v10[2](v10);
        v11[2](v11, 1);
      }
    }
  }

  else
  {
    v4 = CLKLoggingObjectForDomain(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      operationCopy = operation;
      _os_log_impl(&dword_23702D000, v4, OS_LOG_TYPE_DEFAULT, "Unsupported media view operation: %ld", buf, 0xCu);
    }
  }
}

uint64_t __40__CLKMediaAssetView_pauseWithOperation___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 424);
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  v5[0] = *MEMORY[0x277CBF2C0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v2 setTransform:v5];
  return [*(*(a1 + 32) + 424) setAlpha:1.0];
}

uint64_t __40__CLKMediaAssetView_pauseWithOperation___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 408) pause];
  *(*(a1 + 32) + 472) = 0;
  *(*(a1 + 32) + 440) &= ~2u;
  return result;
}

- (void)interruptPlayback
{
  if ((*(self + 440) & 2) != 0)
  {
    [(CLKVideoPlayerView *)self->_videoPlayerView pause];
  }
}

- (void)resumeInterruptedPlayback
{
  if ((*(self + 440) & 2) != 0)
  {
    [(CLKVideoPlayerView *)self->_videoPlayerView play];
  }
}

- (void)_cancelPlayback
{
  if ((*(self + 440) & 2) != 0)
  {
    posterView = self->_posterView;
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    v7[0] = *MEMORY[0x277CBF2C0];
    v7[1] = v4;
    v7[2] = *(MEMORY[0x277CBF2C0] + 32);
    [(UIImageView *)posterView setTransform:v7];
    [(UIImageView *)self->_posterView setAlpha:1.0];
    [(CLKVideoPlayerView *)self->_videoPlayerView pause];
    self->_preparedForOperation = 0;
    *(self + 440) &= ~2u;
    if (self->_timeObserver)
    {
      player = [(CLKVideoPlayerView *)self->_videoPlayerView player];
      [player removeTimeObserver:self->_timeObserver];

      timeObserver = self->_timeObserver;
      self->_timeObserver = 0;
    }
  }
}

- (void)_mediaServicesWereReset:(id)reset
{
  kdebug_trace();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__CLKMediaAssetView__mediaServicesWereReset___block_invoke;
  block[3] = &unk_278A1F1B8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_createVideoPlayerViewIfNeeded
{
  v3 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23702D000, v3, OS_LOG_TYPE_DEFAULT, "CLKMediaAssetView _createVideoPlayerViewIfNeeded", v7, 2u);
  }

  if (!self->_videoPlayerView)
  {
    kdebug_trace();
    v4 = [CLKVideoPlayerView alloc];
    [(CLKMediaAssetView *)self bounds];
    v5 = [(CLKVideoPlayerView *)v4 initWithFrame:?];
    videoPlayerView = self->_videoPlayerView;
    self->_videoPlayerView = v5;

    [(CLKVideoPlayerView *)self->_videoPlayerView setDelegate:self];
    [(CLKVideoPlayerView *)self->_videoPlayerView setAutoresizingMask:18];
    [(CLKMediaAssetView *)self insertSubview:self->_videoPlayerView belowSubview:self->_posterView];
  }
}

- (void)_reset
{
  v3 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23702D000, v3, OS_LOG_TYPE_DEFAULT, "CLKMediaAssetView _reset", v10, 2u);
  }

  video = [(CLKMediaAsset *)self->_mediaAsset video];
  v5 = [video url];

  if (v5)
  {
    v6 = self->_mediaAsset;
    image = [(CLKMediaAsset *)v6 image];
    v8 = [CLKMediaAsset mediaAssetWithImage:image forDevice:self->_device];
    [(CLKMediaAssetView *)self changeMediaAsset:v8];

    [(CLKVideoPlayerView *)self->_videoPlayerView setDelegate:0];
    [(CLKVideoPlayerView *)self->_videoPlayerView pause];
    [(CLKVideoPlayerView *)self->_videoPlayerView removeFromSuperview];
    videoPlayerView = self->_videoPlayerView;
    self->_videoPlayerView = 0;

    [(CLKMediaAssetView *)self changeMediaAsset:v6];
  }
}

- (void)videoPlayerViewDidBeginPlaying:(id)playing
{
  v4 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23702D000, v4, OS_LOG_TYPE_DEFAULT, "CLKMediaAssetView videoPlayerViewDidBeginPlaying", v6, 2u);
  }

  [(CLKMediaAssetView *)self _transitionFromPosterToVideo];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained mediaAssetViewDidBeginPlaying:self];
}

- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)end
{
  v3 = CLKLoggingObjectForDomain(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23702D000, v3, OS_LOG_TYPE_DEFAULT, "CLKMediaAssetView videoPlayerViewDidPauseAfterPlayingVideoToEnd", v4, 2u);
  }
}

- (void)showCurtainView
{
  if (!self->_curtainView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(CLKVideoPlayerView *)self->_videoPlayerView bounds];
    v4 = [v3 initWithFrame:?];
    curtainView = self->_curtainView;
    self->_curtainView = v4;

    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UIView *)self->_curtainView setBackgroundColor:blackColor];

    [(CLKMediaAssetView *)self addSubview:self->_curtainView];
    v7 = self->_curtainView;

    [(CLKMediaAssetView *)self bringSubviewToFront:v7];
  }
}

- (void)hideCurtainView
{
  [(UIView *)self->_curtainView removeFromSuperview];
  curtainView = self->_curtainView;
  self->_curtainView = 0;
}

- (void)fadeToCurtainViewWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  [(CLKMediaAssetView *)self showCurtainView];
  if (duration >= 0.00000011920929)
  {
    [(UIView *)self->_curtainView setAlpha:0.0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__CLKMediaAssetView_fadeToCurtainViewWithDuration_completion___block_invoke;
    v7[3] = &unk_278A1F1B8;
    v7[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:completionCopy completion:duration];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)fadeFromCurtainViewWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__CLKMediaAssetView_fadeFromCurtainViewWithDuration_completion___block_invoke;
  v11[3] = &unk_278A1FEA8;
  v11[4] = self;
  v7 = completionCopy;
  v12 = v7;
  v8 = MEMORY[0x2383C4AF0](v11);
  v9 = v8;
  if (duration >= 0.00000011920929)
  {
    [(CLKMediaAssetView *)self showCurtainView];
    [(UIView *)self->_curtainView setAlpha:1.0];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__CLKMediaAssetView_fadeFromCurtainViewWithDuration_completion___block_invoke_2;
    v10[3] = &unk_278A1F1B8;
    v10[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v9 completion:duration];
  }

  else
  {
    (*(v8 + 16))(v8, 1);
  }
}

uint64_t __64__CLKMediaAssetView_fadeFromCurtainViewWithDuration_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) hideCurtainView];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (CLKMediaAssetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end