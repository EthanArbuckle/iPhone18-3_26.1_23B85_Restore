@interface PHLivePhotoView
+ (UIImage)livePhotoBadgeImageWithOptions:(PHLivePhotoBadgeOptions)badgeOptions;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)seekTime;
- ($D9D8CEB498DB86C92DC7BFFFAE539F32)trimmedTimeRange;
- (BOOL)isDisplayingPhoto;
- (BOOL)livePhotoView:(id)a3 canBeginInteractivePlaybackAtPoint:(CGPoint)a4;
- (CGImage)overridePhoto;
- (CGPoint)scaleAnchorOffset;
- (CGRect)contentsRect;
- (PHLivePhotoView)initWithCoder:(id)a3;
- (PHLivePhotoView)initWithFrame:(CGRect)a3;
- (UIGestureRecognizer)playbackGestureRecognizer;
- (double)livePhotoViewExtraMinimumTouchDuration:(id)a3 touch:(id)a4;
- (id)_debugOverlayImageViewIfExists;
- (id)delegate;
- (id)generateSnapshotImage;
- (id)photosAssetDebugOverlayViewCurrentlyDisplayedImage:(id)a3;
- (int64_t)photosAssetDebugOverlayViewPreferredImageDynamicRange:(id)a3;
- (void)_addDebugOverlayViewIfNeeded;
- (void)_applySRLCompensationAmount:(id)a3 updateCount:(int64_t)a4;
- (void)_commonPHLivePhotoViewInitialization;
- (void)_handlePlayerItemStatusChanged;
- (void)_playerDidBeginHinting;
- (void)_setPlaybackRequested:(BOOL)a3;
- (void)_setPlayerItem:(id)a3;
- (void)_setPlayingVitality:(BOOL)a3;
- (void)_setScrubbing:(BOOL)a3;
- (void)_updateCurrentPlaybackStyleAndSeeking;
- (void)_updatePlayerAudioEnabled;
- (void)_updatePlayerTargetReadiness;
- (void)_updatePlayerViewDynamicRange;
- (void)_updatePlayingVitality;
- (void)_updateStatusBorder;
- (void)_updateVideoFilter;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosAssetDebugOverlayView:(id)a3 didRequestPreferredImageDynamicRange:(int64_t)a4;
- (void)setContentMode:(PHLivePhotoViewContentMode)contentMode;
- (void)setContentsRect:(CGRect)contentsRect;
- (void)setDelegate:(id)delegate;
- (void)setLivePhoto:(PHLivePhoto *)livePhoto;
- (void)setMuted:(BOOL)muted;
- (void)setOverridePhoto:(CGImage *)a3;
- (void)setOverrideSRLCompensationAmount:(id)a3;
- (void)setPhotoView:(id)a3;
- (void)setPlaybackControllingInteraction:(id)a3;
- (void)setPlayer:(id)a3;
- (void)setPreferredImageDynamicRange:(int64_t)a3;
- (void)setScaleAnchorOffset:(CGPoint)a3;
- (void)setSeekTime:(id *)a3;
- (void)setShowsStatusBorder:(BOOL)a3;
- (void)setTargetReadiness:(int64_t)a3;
- (void)setTrimmedTimeRange:(id *)a3;
- (void)startPlaybackWithStyle:(PHLivePhotoViewPlaybackStyle)playbackStyle;
- (void)stopPlayback;
@end

@implementation PHLivePhotoView

- ($D9D8CEB498DB86C92DC7BFFFAE539F32)trimmedTimeRange
{
  v3 = *&self[12].var0.var3;
  *&retstr->var0.var0 = *&self[12].var0.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[12].var1.var1;
  return self;
}

- (CGPoint)scaleAnchorOffset
{
  x = self->_scaleAnchorOffset.x;
  y = self->_scaleAnchorOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_debugOverlayImageViewIfExists
{
  v2 = [(PHLivePhotoView *)self photoView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)photosAssetDebugOverlayViewPreferredImageDynamicRange:(id)a3
{
  v4 = [(PHLivePhotoView *)self _debugOverlayImageViewIfExists];
  v5 = v4;
  if (!v4)
  {
    v4 = self;
  }

  v6 = [v4 preferredImageDynamicRange];
  if (v6 < 3)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)photosAssetDebugOverlayView:(id)a3 didRequestPreferredImageDynamicRange:(int64_t)a4
{
  v6 = [(PHLivePhotoView *)self _debugOverlayImageViewIfExists];
  if ((a4 - 1) >= 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = a4 - 1;
  }

  v8 = v6;
  if (!v6)
  {
    v6 = self;
  }

  [v6 setPreferredImageDynamicRange:v7];
  [(PHLivePhotoView *)self _updateDebugOverlayView];
}

- (id)photosAssetDebugOverlayViewCurrentlyDisplayedImage:(id)a3
{
  livePhoto = [(PHLivePhotoView *)self _debugOverlayImageViewIfExists];
  v5 = livePhoto;
  if (!livePhoto)
  {
    livePhoto = self->_livePhoto;
  }

  v6 = [livePhoto image];

  return v6;
}

- (double)livePhotoViewExtraMinimumTouchDuration:(id)a3 touch:(id)a4
{
  if (!self->_delegateFlags.respondsToExtraMinimumTouchDuration)
  {
    return 0.0;
  }

  v5 = a4;
  v6 = [(PHLivePhotoView *)self delegate];
  [v6 livePhotoView:self extraMinimumTouchDurationForTouch:v5 withStyle:1];
  v8 = v7;

  return v8;
}

- (BOOL)livePhotoView:(id)a3 canBeginInteractivePlaybackAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  if (self->_delegateFlags.respondsToCanBeginPlayback && (-[PHLivePhotoView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 livePhotoView:self canBeginPlaybackWithStyle:1], v8, !v9))
  {
    v12 = 0;
  }

  else
  {
    v10 = [(PHLivePhotoView *)self playbackControllingInteraction];

    if (v10)
    {
      v11 = [(PHLivePhotoView *)self playbackControllingInteraction];
      v12 = [v11 livePhotoView:self canBeginInteractivePlaybackAtPoint:v7 inView:{x, y}];
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (ISPlayerChangeObserverContext == a5)
  {
    if ((v6 & 0x10) != 0)
    {
      pl_dispatch_on_main_queue();
    }

    if ((v6 & 0x20) != 0 && [v8 isHinting])
    {
      pl_dispatch_on_main_queue();
    }

    if ((v6 & 8) != 0)
    {
      pl_dispatch_on_main_queue();
      [(PHLivePhotoView *)self _updateCurrentPlaybackStyleAndSeeking];
    }
  }

  else if ((v6 & 1) != 0 && ISPlayerItemChangeObserverContext == a5)
  {
    pl_dispatch_on_main_queue();
  }
}

void __48__PHLivePhotoView_observable_didChange_context___block_invoke_3(uint64_t a1)
{
  v6 = [*(a1 + 32) player];
  v2 = [v6 currentPlaybackStyle];
  v3 = *(a1 + 32);
  if (v2)
  {
    if (v3[409] != 1)
    {
      goto LABEL_10;
    }

    if (v2 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2 * (v2 == 2);
    }

    v5 = [v3 delegate];
    [v5 livePhotoView:*(a1 + 32) willBeginPlaybackWithStyle:v4];
  }

  else
  {
    if (v3[410] != 1)
    {
      goto LABEL_10;
    }

    v5 = [v3 delegate];
    [v5 livePhotoView:*(a1 + 32) didEndPlaybackWithStyle:*(*(a1 + 32) + 416)];
  }

LABEL_10:
}

- (void)_handlePlayerItemStatusChanged
{
  if ([(PHLivePhotoView *)self showsStatusBorder])
  {

    [(PHLivePhotoView *)self _updateStatusBorder];
  }
}

- (void)_addDebugOverlayViewIfNeeded
{
  if (PUPhotosAssetViewShowDebugOverlayView() && !self->_debugOverlayView)
  {
    v3 = [PUPhotosAssetDebugOverlayView alloc];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(PUPhotosAssetDebugOverlayView *)v3 initWithClientIdentifier:v5];
    debugOverlayView = self->_debugOverlayView;
    self->_debugOverlayView = v6;

    [(PUPhotosAssetDebugOverlayView *)self->_debugOverlayView setDelegate:self];
    v8 = self->_debugOverlayView;

    [(PHLivePhotoView *)self addSubview:v8];
  }
}

- (void)_updatePlayerViewDynamicRange
{
  v3 = [(PHLivePhotoView *)self preferredImageDynamicRange];
  v4 = [(PHLivePhotoView *)self playerView];
  [v4 setPreferredImageDynamicRange:v3];
}

- (void)_applySRLCompensationAmount:(id)a3 updateCount:(int64_t)a4
{
  v8 = a3;
  if ([(PHLivePhotoView *)self videoFilterUpdateCounter]== a4)
  {
    if (v8)
    {
      v6 = [MEMORY[0x1E6979378] filterWithType:@"srl"];
      [v6 setValue:v8 forKey:@"inputAmount"];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(PHLivePhotoView *)self playerView];
    [v7 setVideoFilter:v6];
  }
}

- (void)_updateVideoFilter
{
  [(PHLivePhotoView *)self setVideoFilterUpdateCounter:[(PHLivePhotoView *)self videoFilterUpdateCounter]+ 1];
  v3 = [(PHLivePhotoView *)self videoFilterUpdateCounter];
  v4 = [(PHLivePhotoView *)self overrideSRLCompensationAmount];
  if (v4)
  {
    [(PHLivePhotoView *)self _applySRLCompensationAmount:v4 updateCount:v3];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [(PHLivePhotoView *)self livePhoto];
    v6 = dispatch_get_global_queue(25, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__PHLivePhotoView__updateVideoFilter__block_invoke;
    v8[3] = &unk_1E83F7298;
    v9 = v5;
    v7 = v5;
    objc_copyWeak(v10, &location);
    v10[1] = v3;
    dispatch_async(v6, v8);

    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __37__PHLivePhotoView__updateVideoFilter__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) srlCompensationValue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PHLivePhotoView__updateVideoFilter__block_invoke_2;
  block[3] = &unk_1E83F7298;
  objc_copyWeak(v7, (a1 + 40));
  v3 = *(a1 + 48);
  v6 = v2;
  v7[1] = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v7);
}

void __37__PHLivePhotoView__updateVideoFilter__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _applySRLCompensationAmount:*(a1 + 32) updateCount:*(a1 + 48)];
}

- (void)setOverrideSRLCompensationAmount:(id)a3
{
  v5 = a3;
  if (self->_overrideSRLCompensationAmount != v5 && ([(NSNumber *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_overrideSRLCompensationAmount, a3);
    [(PHLivePhotoView *)self _updateVideoFilter];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_updatePlayerTargetReadiness
{
  if (self->_shouldApplyTargetReadiness)
  {
    if (self->__playbackRequested)
    {
      v3 = 2;
    }

    else
    {
      targetReadiness = self->_targetReadiness;
      if (targetReadiness == 2)
      {
        v3 = 2;
      }

      else
      {
        v3 = targetReadiness == 1;
      }
    }

    v5 = [(PHLivePhotoView *)self player];
    [v5 setTargetReadiness:v3];
  }
}

- (void)_playerDidBeginHinting
{
  if (self->_delegatePrivateFlags.respondsToDidBeginHinting)
  {
    v4 = [(PHLivePhotoView *)self delegate];
    [v4 livePhotoViewDidBeginHinting:self];
  }
}

- (void)_updateCurrentPlaybackStyleAndSeeking
{
  v3 = [(PHLivePhotoView *)self player];
  v4 = [v3 currentPlaybackStyle];

  v5 = 2 * (v4 == 2);
  if (v4 == 1)
  {
    v5 = 1;
  }

  self->_currentPlaybackStyle = v5;

  [(PHLivePhotoView *)self _setScrubbing:v4 == 3];
}

- (void)_updateStatusBorder
{
  if ([(PHLivePhotoView *)self showsStatusBorder])
  {
    v9 = [(PHLivePhotoView *)self _playerItem];
    if ([v9 status] == 3)
    {
      v3 = [MEMORY[0x1E69DC888] greenColor];
      v4 = [v9 videoComposition];

      if (v4)
      {
        v5 = [MEMORY[0x1E69DC888] purpleColor];

        v3 = v5;
      }
    }

    else
    {
      v3 = [MEMORY[0x1E69DC888] redColor];
    }

    v7 = [(PHLivePhotoView *)self layer];
    [v7 setBorderColor:{objc_msgSend(v3, "CGColor")}];

    v8 = [(PHLivePhotoView *)self layer];
    [v8 setBorderWidth:2.0];
  }

  else
  {
    v6 = [(PHLivePhotoView *)self layer];
    [v6 setBorderWidth:0.0];

    v9 = [(PHLivePhotoView *)self layer];
    [v9 setBorderColor:0];
  }
}

- (void)_setPlayingVitality:(BOOL)a3
{
  if (self->__playingVitality != a3)
  {
    self->__playingVitality = a3;
    if (!a3 && self->_delegatePrivateFlags.respondsToDidEndPlayingVitality)
    {
      v4 = [(PHLivePhotoView *)self delegate];
      [v4 livePhotoViewDidEndPlayingVitality:self];
    }
  }
}

- (void)_updatePlayingVitality
{
  v3 = [(PHLivePhotoView *)self player];
  -[PHLivePhotoView _setPlayingVitality:](self, "_setPlayingVitality:", [v3 isPlayingVitality]);
}

- (void)_updatePlayerAudioEnabled
{
  v3 = [(PHLivePhotoView *)self isMuted];
  v4 = [(PHLivePhotoView *)self player];
  [v4 setAudioEnabled:!v3];
}

- (void)_setPlayerItem:(id)a3
{
  v5 = a3;
  playerItem = self->__playerItem;
  if (playerItem != v5)
  {
    v8 = v5;
    [(ISPlayerItem *)playerItem unregisterChangeObserver:self context:ISPlayerItemChangeObserverContext];
    objc_storeStrong(&self->__playerItem, a3);
    [(ISPlayerItem *)self->__playerItem registerChangeObserver:self context:ISPlayerItemChangeObserverContext];
    [(PHLivePhotoView *)self _updateStatusBorder];
    v7 = [(PHLivePhotoView *)self player];
    [v7 setPlayerItem:v8];

    playerItem = [(PHLivePhotoView *)self _updatePlayerAudioEnabled];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](playerItem, v5);
}

- (void)_setScrubbing:(BOOL)a3
{
  if (self->_scrubbing != a3)
  {
    self->_scrubbing = a3;
    if (a3)
    {
      if (!self->_delegatePrivateFlags.respondsToDidBeginScrubbing)
      {
        return;
      }

      v4 = [(PHLivePhotoView *)self delegate];
      [v4 livePhotoViewDidBeginScrubbing:self];
    }

    else
    {
      if (!self->_delegatePrivateFlags.respondsToDidEndScrubbing)
      {
        return;
      }

      v4 = [(PHLivePhotoView *)self delegate];
      [v4 livePhotoViewDidEndScrubbing:self];
    }
  }
}

- (BOOL)isDisplayingPhoto
{
  v2 = [(PHLivePhotoView *)self playerView];
  v3 = [v2 isDisplayingPhoto];

  return v3;
}

- (id)generateSnapshotImage
{
  v2 = [(PHLivePhotoView *)self playerView];
  v3 = [v2 generateSnapshotImage];

  return v3;
}

- (CGImage)overridePhoto
{
  v2 = [(PHLivePhotoView *)self playerView];
  v3 = [v2 overrideImage];
  v4 = [v3 CGImage];

  return v4;
}

- (void)setOverridePhoto:(CGImage *)a3
{
  v5 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a3];
  v4 = [(PHLivePhotoView *)self playerView];
  [v4 setOverrideImage:v5];
}

- (void)setContentMode:(PHLivePhotoViewContentMode)contentMode
{
  v6.receiver = self;
  v6.super_class = PHLivePhotoView;
  [(PHLivePhotoView *)&v6 setContentMode:?];
  v5 = [(PHLivePhotoView *)self playerView];
  [v5 setContentMode:contentMode];
}

- (void)stopPlayback
{
  v2 = [(PHLivePhotoView *)self player];
  [v2 stopPlayback];
}

- (void)startPlaybackWithStyle:(PHLivePhotoViewPlaybackStyle)playbackStyle
{
  v4 = playbackStyle == PHLivePhotoViewPlaybackStyleHint;
  v5 = [(PHLivePhotoView *)self player];
  v7 = v5;
  if (playbackStyle == PHLivePhotoViewPlaybackStyleFull)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * v4;
  }

  [v5 startPlaybackWithStyleWhenReady:v6 settleAutomatically:1];
}

- (void)setTrimmedTimeRange:(id *)a3
{
  v4 = *&a3->var0.var3;
  v3 = *&a3->var1.var1;
  *&self->_trimmedTimeRange.start.value = *&a3->var0.var0;
  *&self->_trimmedTimeRange.start.epoch = v4;
  *&self->_trimmedTimeRange.duration.timescale = v3;
  v5 = [(PHLivePhotoView *)self player:a3->var0.var0];
  [v5 setTrimTimeRange:&v6];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)seekTime
{
  v4 = [(PHLivePhotoView *)self player];
  if (v4)
  {
    v6 = v4;
    [v4 seekTime];
    v4 = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setSeekTime:(id *)a3
{
  v4 = [(PHLivePhotoView *)self player];
  v5 = *a3;
  [v4 setSeekTime:&v5 completion:0];
}

- (void)setMuted:(BOOL)muted
{
  if (self->_muted != muted)
  {
    self->_muted = muted;
    [(PHLivePhotoView *)self _updatePlayerAudioEnabled];
  }
}

- (void)_setPlaybackRequested:(BOOL)a3
{
  if (self->__playbackRequested != a3)
  {
    self->__playbackRequested = a3;
    [(PHLivePhotoView *)self _updatePlayerTargetReadiness];
  }
}

- (void)setTargetReadiness:(int64_t)a3
{
  if (self->_targetReadiness != a3)
  {
    self->_targetReadiness = a3;
    [(PHLivePhotoView *)self _updatePlayerTargetReadiness];
  }
}

- (void)setLivePhoto:(PHLivePhoto *)livePhoto
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = livePhoto;
  if (self->_livePhoto != v5)
  {
    objc_storeStrong(&self->_livePhoto, livePhoto);
    if (v5)
    {
      v6 = [(PHLivePhoto *)v5 image];
      v7 = [(PHLivePhoto *)v5 videoAsset];
      [(PHLivePhoto *)v5 photoTime];
      Seconds = CMTimeGetSeconds(&v46);
      [v6 imageOrientation];
      v9 = PLExifOrientationFromImageOrientation();
      [(PHLivePhoto *)v5 targetSize];
      v12 = v11;
      v13 = v10;
      if (v11 == *MEMORY[0x1E695F060] && v10 == *(MEMORY[0x1E695F060] + 8))
      {
        v15 = [(PHLivePhotoView *)self window];
        v16 = [v15 screen];

        if (!v16)
        {
          v16 = [MEMORY[0x1E69DCEB0] mainScreen];
        }

        [v16 bounds];
        v18 = v17;
        v20 = v19;
        [v16 scale];
        v22 = v21 * v18;
        v23 = v21 * v20;
        if (v22 >= v23)
        {
          v13 = v22;
        }

        else
        {
          v13 = v23;
        }

        v12 = v13;
      }

      v24 = [(PHLivePhoto *)v5 hasPhotoColorAdjustments];
      v25 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:v7 UIImage:v6 photoTime:v9 photoEXIFOrientation:v24 options:Seconds];
      [(PHLivePhoto *)v5 size];
      v28 = 0;
      if (v26 != 0.0 && v27 != 0.0)
      {
        v30 = *MEMORY[0x1E69BDDB0];
        v29 = *(MEMORY[0x1E69BDDB0] + 8);
        if (v26 == *MEMORY[0x1E69BDDB0] && v27 == v29)
        {
          v28 = 0;
        }

        else
        {
          v32 = MEMORY[0x1E696AD98];
          [(PHLivePhoto *)v5 size];
          v35 = *&v33;
          v36 = v34;
          if (v33 == 0.0 || v34 == 0.0 || v33 == v30 && v34 == v29)
          {
            v37 = 1.0;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              LODWORD(v46.value) = 134218496;
              *(&v46.value + 4) = v35;
              LOWORD(v46.flags) = 2048;
              *(&v46.flags + 2) = v36;
              HIWORD(v46.epoch) = 2048;
              v47 = 0x3FF0000000000000;
              _os_log_fault_impl(&dword_1D2128000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", &v46, 0x20u);
            }
          }

          else
          {
            v37 = fabs(v33 / v34);
          }

          v28 = [v32 numberWithDouble:v37];
        }
      }

      v31 = [MEMORY[0x1E69C1B00] playerItemWithAsset:v25 targetSize:v28 contentAspectRatio:{v12, v13}];
      v38 = [(PHLivePhoto *)v5 videoComposition];
      [v31 setVideoComposition:v38];
      [(PHLivePhoto *)v5 audioVolume];
      v40 = v39;
      v41 = [(ISLivePhotoUIView *)self->_playerView player];
      LODWORD(v42) = v40;
      [v41 setAudioVolume:v42];

      playbackControllingInteraction = self->_playbackControllingInteraction;
      v44 = [(PHLivePhoto *)self->_livePhoto image];
      [(PHLivePhotoViewPlaybackControllingInteraction *)playbackControllingInteraction updatePhotosImage:v44];
    }

    else
    {
      v31 = 0;
    }

    [(PHLivePhotoView *)self _updateVideoFilter];
    [(PHLivePhotoView *)self _setPlayerItem:v31];
    [(PHLivePhotoView *)self _updateDebugOverlayView];
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)setScaleAnchorOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->_scaleAnchorOffset.x != a3.x || self->_scaleAnchorOffset.y != a3.y)
  {
    self->_scaleAnchorOffset = a3;
    v6 = [(PHLivePhotoView *)self playerView];
    [v6 setScaleAnchorOffset:{x, y}];
  }
}

- (void)setContentsRect:(CGRect)contentsRect
{
  height = contentsRect.size.height;
  width = contentsRect.size.width;
  y = contentsRect.origin.y;
  x = contentsRect.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(contentsRect, self->_contentsRect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;
    v9 = [(PHLivePhotoView *)self playerView];
    [v9 setContentsRect:{x, y, width, height}];
  }
}

- (void)setPhotoView:(id)a3
{
  v5 = a3;
  if (self->_photoView != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_photoView, a3);
    v6 = [(PHLivePhotoView *)self playerView];
    [v6 setCustomPhotoView:self->_photoView];

    [(PHLivePhotoView *)self _updateDebugOverlayView];
    v5 = v7;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToCanBeginPlayback = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToWillBeginPlaybackWithStyle = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidEndPlayback = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToExtraMinimumTouchDuration = objc_opt_respondsToSelector() & 1;
    v5 = obj;
    p_delegatePrivateFlags = &self->_delegatePrivateFlags;
    self->_delegatePrivateFlags.respondsToDidEndPlayingVitality = objc_opt_respondsToSelector() & 1;
    self->_delegatePrivateFlags.respondsToDidBeginHinting = objc_opt_respondsToSelector() & 1;
    self->_delegatePrivateFlags.respondsToDidBeginScrubbing = objc_opt_respondsToSelector() & 1;
    v7 = objc_opt_respondsToSelector();

    p_delegatePrivateFlags->respondsToDidEndScrubbing = v7 & 1;
  }
}

- (UIGestureRecognizer)playbackGestureRecognizer
{
  v2 = [(PHLivePhotoView *)self playerView];
  v3 = [v2 playbackGestureRecognizer];

  return v3;
}

- (void)setShowsStatusBorder:(BOOL)a3
{
  if (self->_showsStatusBorder != a3)
  {
    self->_showsStatusBorder = a3;
    [(PHLivePhotoView *)self _updateStatusBorder];
  }
}

- (void)setPlayer:(id)a3
{
  v5 = a3;
  if (self->_player != v5)
  {
    v9 = v5;
    v6 = [(PHLivePhotoView *)self playerView];
    [(ISLivePhotoPlayer *)self->_player unregisterChangeObserver:self context:ISPlayerChangeObserverContext];
    objc_storeStrong(&self->_player, a3);
    [(ISLivePhotoPlayer *)self->_player registerChangeObserver:self context:ISPlayerChangeObserverContext];
    [v6 setPlayer:self->_player];
    v7 = [(ISLivePhotoPlayer *)v9 playerItem];
    playerItem = self->__playerItem;
    self->__playerItem = v7;

    v5 = v9;
  }
}

- (void)setPreferredImageDynamicRange:(int64_t)a3
{
  if (self->_preferredImageDynamicRange != a3)
  {
    self->_preferredImageDynamicRange = a3;
    [(PHLivePhotoView *)self _updatePlayerViewDynamicRange];

    [(PHLivePhotoView *)self _updateDebugOverlayView];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PHLivePhotoView;
  [(PHLivePhotoView *)&v3 layoutSubviews];
  [(PHLivePhotoView *)self bounds];
  [(PUPhotosAssetDebugOverlayView *)self->_debugOverlayView setFrame:?];
}

- (void)_commonPHLivePhotoViewInitialization
{
  self->_targetReadiness = 2;
  self->_shouldApplyTargetReadiness = 1;
  [(PHLivePhotoView *)self setContentMode:2];
  v3 = objc_alloc_init(MEMORY[0x1E69C1AF8]);
  playerView = self->_playerView;
  self->_playerView = v3;

  v5 = self->_playerView;
  [(PHLivePhotoView *)self bounds];
  [(ISLivePhotoUIView *)v5 setFrame:?];
  [(ISLivePhotoUIView *)self->_playerView setAutoresizingMask:18];
  [(ISLivePhotoUIView *)self->_playerView setDelegate:self];
  [(PHLivePhotoView *)self addSubview:self->_playerView];
  v6 = [(ISLivePhotoUIView *)self->_playerView player];
  player = self->_player;
  self->_player = v6;

  [(ISLivePhotoPlayer *)self->_player registerChangeObserver:self context:ISPlayerChangeObserverContext];
  self->_contentsRect.origin.x = 0.0;
  self->_contentsRect.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  self->_contentsRect.size = _Q0;
  [(PHLivePhotoView *)self _updatePlayerAudioEnabled];
  [(PHLivePhotoView *)self _updateCurrentPlaybackStyleAndSeeking];
  [(PHLivePhotoView *)self _updatePlayerViewDynamicRange];

  [(PHLivePhotoView *)self _addDebugOverlayViewIfNeeded];
}

- (void)setPlaybackControllingInteraction:(id)a3
{
  v5 = a3;
  if (self->_playbackControllingInteraction != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_playbackControllingInteraction, a3);
    [(PHLivePhotoViewPlaybackControllingInteraction *)v9 setLivePhotoView:self];
    v6 = [(PHLivePhotoView *)self playerView];
    if (v9)
    {
      v7 = [v6 playbackGestureRecognizer];
      [(PHLivePhotoView *)self addGestureRecognizer:v7];
    }

    else
    {
      v7 = [(PHLivePhotoView *)self playerView];
      v8 = [v7 playbackGestureRecognizer];
      [v6 addGestureRecognizer:v8];
    }

    v5 = v9;
  }
}

- (PHLivePhotoView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PHLivePhotoView;
  v3 = [(PHLivePhotoView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PHLivePhotoView *)v3 _commonPHLivePhotoViewInitialization];
  }

  return v4;
}

- (PHLivePhotoView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PHLivePhotoView;
  v3 = [(PHLivePhotoView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHLivePhotoView *)v3 _commonPHLivePhotoViewInitialization];
  }

  return v4;
}

+ (UIImage)livePhotoBadgeImageWithOptions:(PHLivePhotoBadgeOptions)badgeOptions
{
  v3 = @"PhotoIrisShadowBadge-OFF";
  if ((badgeOptions & 2) != 0)
  {
    v4 = @"PhotoIrisBadge-OFF";
  }

  else
  {
    v3 = @"PhotoIrisShadowBadge-ON";
    v4 = @"PhotoIrisBadge-ON";
  }

  if (badgeOptions)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x1E69DCAB8];
  v7 = PLPhotoLibraryFrameworkBundle();
  v8 = [v6 imageNamed:v5 inBundle:v7];

  return v8;
}

@end