@interface PHLivePhotoView
+ (UIImage)livePhotoBadgeImageWithOptions:(PHLivePhotoBadgeOptions)badgeOptions;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)seekTime;
- ($D9D8CEB498DB86C92DC7BFFFAE539F32)trimmedTimeRange;
- (BOOL)isDisplayingPhoto;
- (BOOL)livePhotoView:(id)view canBeginInteractivePlaybackAtPoint:(CGPoint)point;
- (CGImage)overridePhoto;
- (CGPoint)scaleAnchorOffset;
- (CGRect)contentsRect;
- (PHLivePhotoView)initWithCoder:(id)coder;
- (PHLivePhotoView)initWithFrame:(CGRect)frame;
- (UIGestureRecognizer)playbackGestureRecognizer;
- (double)livePhotoViewExtraMinimumTouchDuration:(id)duration touch:(id)touch;
- (id)_debugOverlayImageViewIfExists;
- (id)delegate;
- (id)generateSnapshotImage;
- (id)photosAssetDebugOverlayViewCurrentlyDisplayedImage:(id)image;
- (int64_t)photosAssetDebugOverlayViewPreferredImageDynamicRange:(id)range;
- (void)_addDebugOverlayViewIfNeeded;
- (void)_applySRLCompensationAmount:(id)amount updateCount:(int64_t)count;
- (void)_commonPHLivePhotoViewInitialization;
- (void)_handlePlayerItemStatusChanged;
- (void)_playerDidBeginHinting;
- (void)_setPlaybackRequested:(BOOL)requested;
- (void)_setPlayerItem:(id)item;
- (void)_setPlayingVitality:(BOOL)vitality;
- (void)_setScrubbing:(BOOL)scrubbing;
- (void)_updateCurrentPlaybackStyleAndSeeking;
- (void)_updatePlayerAudioEnabled;
- (void)_updatePlayerTargetReadiness;
- (void)_updatePlayerViewDynamicRange;
- (void)_updatePlayingVitality;
- (void)_updateStatusBorder;
- (void)_updateVideoFilter;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosAssetDebugOverlayView:(id)view didRequestPreferredImageDynamicRange:(int64_t)range;
- (void)setContentMode:(PHLivePhotoViewContentMode)contentMode;
- (void)setContentsRect:(CGRect)contentsRect;
- (void)setDelegate:(id)delegate;
- (void)setLivePhoto:(PHLivePhoto *)livePhoto;
- (void)setMuted:(BOOL)muted;
- (void)setOverridePhoto:(CGImage *)photo;
- (void)setOverrideSRLCompensationAmount:(id)amount;
- (void)setPhotoView:(id)view;
- (void)setPlaybackControllingInteraction:(id)interaction;
- (void)setPlayer:(id)player;
- (void)setPreferredImageDynamicRange:(int64_t)range;
- (void)setScaleAnchorOffset:(CGPoint)offset;
- (void)setSeekTime:(id *)time;
- (void)setShowsStatusBorder:(BOOL)border;
- (void)setTargetReadiness:(int64_t)readiness;
- (void)setTrimmedTimeRange:(id *)range;
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
  photoView = [(PHLivePhotoView *)self photoView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = photoView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)photosAssetDebugOverlayViewPreferredImageDynamicRange:(id)range
{
  selfCopy = [(PHLivePhotoView *)self _debugOverlayImageViewIfExists];
  v5 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  preferredImageDynamicRange = [selfCopy preferredImageDynamicRange];
  if (preferredImageDynamicRange < 3)
  {
    v7 = preferredImageDynamicRange + 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)photosAssetDebugOverlayView:(id)view didRequestPreferredImageDynamicRange:(int64_t)range
{
  selfCopy = [(PHLivePhotoView *)self _debugOverlayImageViewIfExists];
  if ((range - 1) >= 3)
  {
    v7 = -1;
  }

  else
  {
    v7 = range - 1;
  }

  v8 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  [selfCopy setPreferredImageDynamicRange:v7];
  [(PHLivePhotoView *)self _updateDebugOverlayView];
}

- (id)photosAssetDebugOverlayViewCurrentlyDisplayedImage:(id)image
{
  livePhoto = [(PHLivePhotoView *)self _debugOverlayImageViewIfExists];
  v5 = livePhoto;
  if (!livePhoto)
  {
    livePhoto = self->_livePhoto;
  }

  image = [livePhoto image];

  return image;
}

- (double)livePhotoViewExtraMinimumTouchDuration:(id)duration touch:(id)touch
{
  if (!self->_delegateFlags.respondsToExtraMinimumTouchDuration)
  {
    return 0.0;
  }

  touchCopy = touch;
  delegate = [(PHLivePhotoView *)self delegate];
  [delegate livePhotoView:self extraMinimumTouchDurationForTouch:touchCopy withStyle:1];
  v8 = v7;

  return v8;
}

- (BOOL)livePhotoView:(id)view canBeginInteractivePlaybackAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  if (self->_delegateFlags.respondsToCanBeginPlayback && (-[PHLivePhotoView delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 livePhotoView:self canBeginPlaybackWithStyle:1], v8, !v9))
  {
    v12 = 0;
  }

  else
  {
    playbackControllingInteraction = [(PHLivePhotoView *)self playbackControllingInteraction];

    if (playbackControllingInteraction)
    {
      playbackControllingInteraction2 = [(PHLivePhotoView *)self playbackControllingInteraction];
      v12 = [playbackControllingInteraction2 livePhotoView:self canBeginInteractivePlaybackAtPoint:viewCopy inView:{x, y}];
    }

    else
    {
      v12 = 1;
    }
  }

  return v12;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ISPlayerChangeObserverContext == context)
  {
    if ((changeCopy & 0x10) != 0)
    {
      pl_dispatch_on_main_queue();
    }

    if ((changeCopy & 0x20) != 0 && [observableCopy isHinting])
    {
      pl_dispatch_on_main_queue();
    }

    if ((changeCopy & 8) != 0)
    {
      pl_dispatch_on_main_queue();
      [(PHLivePhotoView *)self _updateCurrentPlaybackStyleAndSeeking];
    }
  }

  else if ((changeCopy & 1) != 0 && ISPlayerItemChangeObserverContext == context)
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
  preferredImageDynamicRange = [(PHLivePhotoView *)self preferredImageDynamicRange];
  playerView = [(PHLivePhotoView *)self playerView];
  [playerView setPreferredImageDynamicRange:preferredImageDynamicRange];
}

- (void)_applySRLCompensationAmount:(id)amount updateCount:(int64_t)count
{
  amountCopy = amount;
  if ([(PHLivePhotoView *)self videoFilterUpdateCounter]== count)
  {
    if (amountCopy)
    {
      v6 = [MEMORY[0x1E6979378] filterWithType:@"srl"];
      [v6 setValue:amountCopy forKey:@"inputAmount"];
    }

    else
    {
      v6 = 0;
    }

    playerView = [(PHLivePhotoView *)self playerView];
    [playerView setVideoFilter:v6];
  }
}

- (void)_updateVideoFilter
{
  [(PHLivePhotoView *)self setVideoFilterUpdateCounter:[(PHLivePhotoView *)self videoFilterUpdateCounter]+ 1];
  videoFilterUpdateCounter = [(PHLivePhotoView *)self videoFilterUpdateCounter];
  overrideSRLCompensationAmount = [(PHLivePhotoView *)self overrideSRLCompensationAmount];
  if (overrideSRLCompensationAmount)
  {
    [(PHLivePhotoView *)self _applySRLCompensationAmount:overrideSRLCompensationAmount updateCount:videoFilterUpdateCounter];
  }

  else
  {
    objc_initWeak(&location, self);
    livePhoto = [(PHLivePhotoView *)self livePhoto];
    v6 = dispatch_get_global_queue(25, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__PHLivePhotoView__updateVideoFilter__block_invoke;
    v8[3] = &unk_1E83F7298;
    v9 = livePhoto;
    v7 = livePhoto;
    objc_copyWeak(v10, &location);
    v10[1] = videoFilterUpdateCounter;
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

- (void)setOverrideSRLCompensationAmount:(id)amount
{
  amountCopy = amount;
  if (self->_overrideSRLCompensationAmount != amountCopy && ([(NSNumber *)amountCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_overrideSRLCompensationAmount, amount);
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

    player = [(PHLivePhotoView *)self player];
    [player setTargetReadiness:v3];
  }
}

- (void)_playerDidBeginHinting
{
  if (self->_delegatePrivateFlags.respondsToDidBeginHinting)
  {
    delegate = [(PHLivePhotoView *)self delegate];
    [delegate livePhotoViewDidBeginHinting:self];
  }
}

- (void)_updateCurrentPlaybackStyleAndSeeking
{
  player = [(PHLivePhotoView *)self player];
  currentPlaybackStyle = [player currentPlaybackStyle];

  v5 = 2 * (currentPlaybackStyle == 2);
  if (currentPlaybackStyle == 1)
  {
    v5 = 1;
  }

  self->_currentPlaybackStyle = v5;

  [(PHLivePhotoView *)self _setScrubbing:currentPlaybackStyle == 3];
}

- (void)_updateStatusBorder
{
  if ([(PHLivePhotoView *)self showsStatusBorder])
  {
    _playerItem = [(PHLivePhotoView *)self _playerItem];
    if ([_playerItem status] == 3)
    {
      greenColor = [MEMORY[0x1E69DC888] greenColor];
      videoComposition = [_playerItem videoComposition];

      if (videoComposition)
      {
        purpleColor = [MEMORY[0x1E69DC888] purpleColor];

        greenColor = purpleColor;
      }
    }

    else
    {
      greenColor = [MEMORY[0x1E69DC888] redColor];
    }

    layer = [(PHLivePhotoView *)self layer];
    [layer setBorderColor:{objc_msgSend(greenColor, "CGColor")}];

    layer2 = [(PHLivePhotoView *)self layer];
    [layer2 setBorderWidth:2.0];
  }

  else
  {
    layer3 = [(PHLivePhotoView *)self layer];
    [layer3 setBorderWidth:0.0];

    _playerItem = [(PHLivePhotoView *)self layer];
    [_playerItem setBorderColor:0];
  }
}

- (void)_setPlayingVitality:(BOOL)vitality
{
  if (self->__playingVitality != vitality)
  {
    self->__playingVitality = vitality;
    if (!vitality && self->_delegatePrivateFlags.respondsToDidEndPlayingVitality)
    {
      delegate = [(PHLivePhotoView *)self delegate];
      [delegate livePhotoViewDidEndPlayingVitality:self];
    }
  }
}

- (void)_updatePlayingVitality
{
  player = [(PHLivePhotoView *)self player];
  -[PHLivePhotoView _setPlayingVitality:](self, "_setPlayingVitality:", [player isPlayingVitality]);
}

- (void)_updatePlayerAudioEnabled
{
  isMuted = [(PHLivePhotoView *)self isMuted];
  player = [(PHLivePhotoView *)self player];
  [player setAudioEnabled:!isMuted];
}

- (void)_setPlayerItem:(id)item
{
  itemCopy = item;
  playerItem = self->__playerItem;
  if (playerItem != itemCopy)
  {
    v8 = itemCopy;
    [(ISPlayerItem *)playerItem unregisterChangeObserver:self context:ISPlayerItemChangeObserverContext];
    objc_storeStrong(&self->__playerItem, item);
    [(ISPlayerItem *)self->__playerItem registerChangeObserver:self context:ISPlayerItemChangeObserverContext];
    [(PHLivePhotoView *)self _updateStatusBorder];
    player = [(PHLivePhotoView *)self player];
    [player setPlayerItem:v8];

    playerItem = [(PHLivePhotoView *)self _updatePlayerAudioEnabled];
    itemCopy = v8;
  }

  MEMORY[0x1EEE66BB8](playerItem, itemCopy);
}

- (void)_setScrubbing:(BOOL)scrubbing
{
  if (self->_scrubbing != scrubbing)
  {
    self->_scrubbing = scrubbing;
    if (scrubbing)
    {
      if (!self->_delegatePrivateFlags.respondsToDidBeginScrubbing)
      {
        return;
      }

      delegate = [(PHLivePhotoView *)self delegate];
      [delegate livePhotoViewDidBeginScrubbing:self];
    }

    else
    {
      if (!self->_delegatePrivateFlags.respondsToDidEndScrubbing)
      {
        return;
      }

      delegate = [(PHLivePhotoView *)self delegate];
      [delegate livePhotoViewDidEndScrubbing:self];
    }
  }
}

- (BOOL)isDisplayingPhoto
{
  playerView = [(PHLivePhotoView *)self playerView];
  isDisplayingPhoto = [playerView isDisplayingPhoto];

  return isDisplayingPhoto;
}

- (id)generateSnapshotImage
{
  playerView = [(PHLivePhotoView *)self playerView];
  generateSnapshotImage = [playerView generateSnapshotImage];

  return generateSnapshotImage;
}

- (CGImage)overridePhoto
{
  playerView = [(PHLivePhotoView *)self playerView];
  overrideImage = [playerView overrideImage];
  cGImage = [overrideImage CGImage];

  return cGImage;
}

- (void)setOverridePhoto:(CGImage *)photo
{
  v5 = [MEMORY[0x1E69DCAB8] imageWithCGImage:photo];
  playerView = [(PHLivePhotoView *)self playerView];
  [playerView setOverrideImage:v5];
}

- (void)setContentMode:(PHLivePhotoViewContentMode)contentMode
{
  v6.receiver = self;
  v6.super_class = PHLivePhotoView;
  [(PHLivePhotoView *)&v6 setContentMode:?];
  playerView = [(PHLivePhotoView *)self playerView];
  [playerView setContentMode:contentMode];
}

- (void)stopPlayback
{
  player = [(PHLivePhotoView *)self player];
  [player stopPlayback];
}

- (void)startPlaybackWithStyle:(PHLivePhotoViewPlaybackStyle)playbackStyle
{
  v4 = playbackStyle == PHLivePhotoViewPlaybackStyleHint;
  player = [(PHLivePhotoView *)self player];
  v7 = player;
  if (playbackStyle == PHLivePhotoViewPlaybackStyleFull)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * v4;
  }

  [player startPlaybackWithStyleWhenReady:v6 settleAutomatically:1];
}

- (void)setTrimmedTimeRange:(id *)range
{
  v4 = *&range->var0.var3;
  v3 = *&range->var1.var1;
  *&self->_trimmedTimeRange.start.value = *&range->var0.var0;
  *&self->_trimmedTimeRange.start.epoch = v4;
  *&self->_trimmedTimeRange.duration.timescale = v3;
  v5 = [(PHLivePhotoView *)self player:range->var0.var0];
  [v5 setTrimTimeRange:&v6];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)seekTime
{
  player = [(PHLivePhotoView *)self player];
  if (player)
  {
    v6 = player;
    [player seekTime];
    player = v6;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)setSeekTime:(id *)time
{
  player = [(PHLivePhotoView *)self player];
  v5 = *time;
  [player setSeekTime:&v5 completion:0];
}

- (void)setMuted:(BOOL)muted
{
  if (self->_muted != muted)
  {
    self->_muted = muted;
    [(PHLivePhotoView *)self _updatePlayerAudioEnabled];
  }
}

- (void)_setPlaybackRequested:(BOOL)requested
{
  if (self->__playbackRequested != requested)
  {
    self->__playbackRequested = requested;
    [(PHLivePhotoView *)self _updatePlayerTargetReadiness];
  }
}

- (void)setTargetReadiness:(int64_t)readiness
{
  if (self->_targetReadiness != readiness)
  {
    self->_targetReadiness = readiness;
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
      image = [(PHLivePhoto *)v5 image];
      videoAsset = [(PHLivePhoto *)v5 videoAsset];
      [(PHLivePhoto *)v5 photoTime];
      Seconds = CMTimeGetSeconds(&v46);
      [image imageOrientation];
      v9 = PLExifOrientationFromImageOrientation();
      [(PHLivePhoto *)v5 targetSize];
      v12 = v11;
      v13 = v10;
      if (v11 == *MEMORY[0x1E695F060] && v10 == *(MEMORY[0x1E695F060] + 8))
      {
        window = [(PHLivePhotoView *)self window];
        screen = [window screen];

        if (!screen)
        {
          screen = [MEMORY[0x1E69DCEB0] mainScreen];
        }

        [screen bounds];
        v18 = v17;
        v20 = v19;
        [screen scale];
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

      hasPhotoColorAdjustments = [(PHLivePhoto *)v5 hasPhotoColorAdjustments];
      v25 = [objc_alloc(MEMORY[0x1E69C1AE8]) initWithVideoAsset:videoAsset UIImage:image photoTime:v9 photoEXIFOrientation:hasPhotoColorAdjustments options:Seconds];
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
      videoComposition = [(PHLivePhoto *)v5 videoComposition];
      [v31 setVideoComposition:videoComposition];
      [(PHLivePhoto *)v5 audioVolume];
      v40 = v39;
      player = [(ISLivePhotoUIView *)self->_playerView player];
      LODWORD(v42) = v40;
      [player setAudioVolume:v42];

      playbackControllingInteraction = self->_playbackControllingInteraction;
      image2 = [(PHLivePhoto *)self->_livePhoto image];
      [(PHLivePhotoViewPlaybackControllingInteraction *)playbackControllingInteraction updatePhotosImage:image2];
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

- (void)setScaleAnchorOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if (self->_scaleAnchorOffset.x != offset.x || self->_scaleAnchorOffset.y != offset.y)
  {
    self->_scaleAnchorOffset = offset;
    playerView = [(PHLivePhotoView *)self playerView];
    [playerView setScaleAnchorOffset:{x, y}];
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
    playerView = [(PHLivePhotoView *)self playerView];
    [playerView setContentsRect:{x, y, width, height}];
  }
}

- (void)setPhotoView:(id)view
{
  viewCopy = view;
  if (self->_photoView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->_photoView, view);
    playerView = [(PHLivePhotoView *)self playerView];
    [playerView setCustomPhotoView:self->_photoView];

    [(PHLivePhotoView *)self _updateDebugOverlayView];
    viewCopy = v7;
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
  playerView = [(PHLivePhotoView *)self playerView];
  playbackGestureRecognizer = [playerView playbackGestureRecognizer];

  return playbackGestureRecognizer;
}

- (void)setShowsStatusBorder:(BOOL)border
{
  if (self->_showsStatusBorder != border)
  {
    self->_showsStatusBorder = border;
    [(PHLivePhotoView *)self _updateStatusBorder];
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  if (self->_player != playerCopy)
  {
    v9 = playerCopy;
    playerView = [(PHLivePhotoView *)self playerView];
    [(ISLivePhotoPlayer *)self->_player unregisterChangeObserver:self context:ISPlayerChangeObserverContext];
    objc_storeStrong(&self->_player, player);
    [(ISLivePhotoPlayer *)self->_player registerChangeObserver:self context:ISPlayerChangeObserverContext];
    [playerView setPlayer:self->_player];
    playerItem = [(ISLivePhotoPlayer *)v9 playerItem];
    playerItem = self->__playerItem;
    self->__playerItem = playerItem;

    playerCopy = v9;
  }
}

- (void)setPreferredImageDynamicRange:(int64_t)range
{
  if (self->_preferredImageDynamicRange != range)
  {
    self->_preferredImageDynamicRange = range;
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
  player = [(ISLivePhotoUIView *)self->_playerView player];
  player = self->_player;
  self->_player = player;

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

- (void)setPlaybackControllingInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (self->_playbackControllingInteraction != interactionCopy)
  {
    v9 = interactionCopy;
    objc_storeStrong(&self->_playbackControllingInteraction, interaction);
    [(PHLivePhotoViewPlaybackControllingInteraction *)v9 setLivePhotoView:self];
    playerView = [(PHLivePhotoView *)self playerView];
    if (v9)
    {
      playbackGestureRecognizer = [playerView playbackGestureRecognizer];
      [(PHLivePhotoView *)self addGestureRecognizer:playbackGestureRecognizer];
    }

    else
    {
      playbackGestureRecognizer = [(PHLivePhotoView *)self playerView];
      v7PlaybackGestureRecognizer = [playbackGestureRecognizer playbackGestureRecognizer];
      [playerView addGestureRecognizer:v7PlaybackGestureRecognizer];
    }

    interactionCopy = v9;
  }
}

- (PHLivePhotoView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PHLivePhotoView;
  v3 = [(PHLivePhotoView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PHLivePhotoView *)v3 _commonPHLivePhotoViewInitialization];
  }

  return v4;
}

- (PHLivePhotoView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PHLivePhotoView;
  v3 = [(PHLivePhotoView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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