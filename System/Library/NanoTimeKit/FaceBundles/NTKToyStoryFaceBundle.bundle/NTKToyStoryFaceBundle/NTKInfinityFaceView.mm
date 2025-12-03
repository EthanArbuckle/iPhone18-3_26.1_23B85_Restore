@interface NTKInfinityFaceView
- (BOOL)_shouldQueueKeepAlive;
- (NTKInfinityFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_adjustmentForBottomTimeLayout;
- (double)_rightSideMarginForDigitalTimeHeroPosition;
- (double)_timeLabelAlphaForEditMode:(int64_t)mode;
- (id)_currentPosterImageView;
- (id)_editingComplicationColor;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_nextListing;
- (id)_posterImageViewForStyle:(unint64_t)style;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)_viewForEditOption:(id)option;
- (id)videoPlayerView;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_handleOrdinaryScreenWake;
- (void)_handleSingleTap:(id)tap;
- (void)_handleWristRaiseScreenWake;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_performPreloadVideoTask;
- (void)_prepareForEditing;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationWithColor:(id)color animated:(BOOL)animated;
- (void)_updatePaused;
- (void)dealloc;
- (void)didAddSubview:(id)subview;
- (void)layoutSubviews;
- (void)setTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption customEditMode:(int64_t)mode slot:(id)slot;
- (void)videoPlayerViewDidBeginPlaying:(id)playing;
- (void)videoPlayerViewDidBeginPlayingQueuedVideo:(id)video;
- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)end;
@end

@implementation NTKInfinityFaceView

- (NTKInfinityFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = NTKInfinityFaceView;
  v9 = [(NTKInfinityFaceView *)&v18 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(NTKInfinityFaceView *)v9 setShouldChangeVariantForScreenWake:1];
    *(v10 + 8) &= ~1u;
    v11 = [NTKInfinityController alloc];
    device = [(NTKInfinityFaceView *)v10 device];
    v13 = [(NTKInfinityController *)v11 initForDevice:device];
    controller = v10->_controller;
    v10->_controller = v13;

    v15 = [[NTKDigitialUtilitarianFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    faceViewComplicationFactory = v10->_faceViewComplicationFactory;
    v10->_faceViewComplicationFactory = v15;
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v4 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v19.receiver = self;
  v19.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v19 _loadSnapshotContentViews];
  foregroundContainerView = [(NTKInfinityFaceView *)self foregroundContainerView];
  [(NTKInfinityFaceView *)self bringSubviewToFront:foregroundContainerView];

  timeView = [(NTKInfinityFaceView *)self timeView];
  v5 = [UIColor colorWithWhite:0.0 alpha:0.3];
  [timeView setShadowColor:v5];

  v6 = [NTKRoundedCornerOverlayView alloc];
  [(NTKInfinityFaceView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  device = [(NTKInfinityFaceView *)self device];
  v16 = [v6 initWithFrame:device forDeviceCornerRadius:{v8, v10, v12, v14}];
  cornerView = self->_cornerView;
  self->_cornerView = v16;

  [(NTKInfinityFaceView *)self addSubview:self->_cornerView];
  videoPlayerView = [(NTKInfinityFaceView *)self videoPlayerView];
  [videoPlayerView setPausedViewEnabled:0];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v4 _unloadSnapshotContentViews];
  [(UIView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v12 layoutSubviews];
  foregroundContainerView = [(NTKInfinityFaceView *)self foregroundContainerView];
  [foregroundContainerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_cornerView ntk_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
}

- (void)_performPreloadVideoTask
{
  v4.receiver = self;
  v4.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v4 _performPreloadVideoTask];
  _editingComplicationColor = [(NTKInfinityFaceView *)self _editingComplicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:_editingComplicationColor animated:0];
}

- (void)_updatePaused
{
  v2.receiver = self;
  v2.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v2 _updatePaused];
}

- (id)_nextListing
{
  if (([(NTKInfinityFaceView *)self shouldChangeVariantForScreenWake]& 1) != 0)
  {
    [(NTKInfinityFaceView *)self setShouldChangeVariantForScreenWake:0];
    [(NTKInfinityController *)self->_controller invalidateCurrentListing];
  }

  nextListing = [(NTKInfinityController *)self->_controller nextListing];
  complicationColor = [nextListing complicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:complicationColor animated:1];

  return nextListing;
}

- (void)_handleWristRaiseScreenWake
{
  videoPlayerView = [(NTKInfinityFaceView *)self videoPlayerView];
  isPlaybackReady = [videoPlayerView isPlaybackReady];

  if (isPlaybackReady)
  {
    [(NTKInfinityFaceView *)self _hideCurtainView];
  }

  v5.receiver = self;
  v5.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v5 _handleWristRaiseScreenWake];
}

- (void)_handleOrdinaryScreenWake
{
  videoPlayerView = [(NTKInfinityFaceView *)self videoPlayerView];
  isPlaybackReady = [videoPlayerView isPlaybackReady];

  if (isPlaybackReady)
  {
    [(NTKInfinityFaceView *)self _hideCurtainView];
  }

  v5.receiver = self;
  v5.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v5 _handleOrdinaryScreenWake];
}

- (void)videoPlayerViewDidBeginPlayingQueuedVideo:(id)video
{
  if ([(NTKInfinityFaceView *)self _shouldQueueKeepAlive])
  {
    nextListing = [(NTKInfinityController *)self->_controller nextListing];
    currentQueueListing = self->_currentQueueListing;
    self->_currentQueueListing = nextListing;

    videoPlayerView = [(NTKInfinityFaceView *)self videoPlayerView];
    video = [(NTKInfinityListing *)self->_currentQueueListing video];
    [videoPlayerView queueVideo:video];
  }
}

- (void)videoPlayerViewDidBeginPlaying:(id)playing
{
  playingCopy = playing;
  if (*(self + 8))
  {
    *(self + 8) &= ~1u;
  }

  else if (![(NTKInfinityFaceView *)self _curtainViewVisible])
  {
    goto LABEL_5;
  }

  [(NTKInfinityFaceView *)self _fadeFromCurtainViewWithDuration:0 completion:0.1];
LABEL_5:
  controller = self->_controller;
  currentListing = [(NTKInfinityFaceView *)self currentListing];
  [(NTKInfinityController *)controller startedPlayingListing:currentListing];

  if ([(NTKInfinityFaceView *)self _shouldQueueKeepAlive])
  {
    nextQueueListing = [(NTKInfinityController *)self->_controller nextQueueListing];
    currentQueueListing = self->_currentQueueListing;
    self->_currentQueueListing = nextQueueListing;

    videoPlayerView = [(NTKInfinityFaceView *)self videoPlayerView];
    video = [(NTKInfinityListing *)self->_currentQueueListing video];
    [videoPlayerView queueVideo:video];
  }

  currentComplicationColor = [(NTKInfinityController *)self->_controller currentComplicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:currentComplicationColor animated:1];
}

- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)end
{
  if (![(NTKInfinityController *)self->_controller controllerMode]|| [(NTKInfinityController *)self->_controller controllerMode]== &dword_0 + 1)
  {
    currentListing = [(NTKInfinityController *)self->_controller currentListing];
    playback = [currentListing playback];

    if (playback)
    {
      if (playback == &dword_0 + 1)
      {

        [(NTKInfinityFaceView *)self _fadeToCurtainViewWithDuration:0 completion:0.2];
      }

      else if (playback == &dword_0 + 2)
      {
        [(NTKInfinityFaceView *)self _resetVideoForListing];

        [(NTKInfinityFaceView *)self _playQueuedUpVideo];
      }
    }

    else
    {

      [(NTKInfinityFaceView *)self _playNextVideo];
    }
  }
}

- (id)videoPlayerView
{
  v4.receiver = self;
  v4.super_class = NTKInfinityFaceView;
  videoPlayerView = [(NTKInfinityFaceView *)&v4 videoPlayerView];
  [videoPlayerView setPausedViewEnabled:0];

  return videoPlayerView;
}

- (BOOL)_shouldQueueKeepAlive
{
  currentListing = [(NTKInfinityFaceView *)self currentListing];
  v3 = [currentListing type] == &dword_0 + 1 || objc_msgSend(currentListing, "type") == 0;

  return v3;
}

- (double)_rightSideMarginForDigitalTimeHeroPosition
{
  device = [(NTKInfinityFaceView *)self device];
  if ([device deviceCategory] == &dword_0 + 1)
  {

    return NTKDigitalTimeLabelStyleNarrowRightSideMargin;
  }

  device2 = [(NTKInfinityFaceView *)self device];
  deviceCategory = [device2 deviceCategory];

  if (deviceCategory == &dword_0 + 2)
  {
    return NTKDigitalTimeLabelStyleNarrowRightSideMargin;
  }

  device3 = [(NTKInfinityFaceView *)self device];
  NTKDigitalTimeLabelStyleWideRightSideMargin();
  v9 = v8;

  return v9;
}

- (double)_adjustmentForBottomTimeLayout
{
  device = [(NTKInfinityFaceView *)self device];
  if ([device sizeClass])
  {
    v3 = 113.5;
  }

  else
  {
    v3 = 100.0;
  }

  return v3;
}

- (void)didAddSubview:(id)subview
{
  _curtainView = [(NTKInfinityFaceView *)self _curtainView];
  [(NTKInfinityFaceView *)self bringSubviewToFront:_curtainView];

  [(NTKInfinityFaceView *)self bringSubviewToFront:self->_cornerView];
  foregroundContainerView = [(NTKInfinityFaceView *)self foregroundContainerView];
  [(NTKInfinityFaceView *)self bringSubviewToFront:foregroundContainerView];
}

- (void)_loadLayoutRules
{
  v3.receiver = self;
  v3.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v3 _loadLayoutRules];
  [(NTKFaceViewComplicationFactory *)self->_faceViewComplicationFactory loadLayoutRulesForFaceView:self];
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  slotCopy = slot;
  v10 = [(NTKFaceViewComplicationFactory *)faceViewComplicationFactory newLegacyViewForComplication:complication family:family slot:slotCopy faceView:self];
  [(NTKInfinityFaceView *)self _configureComplicationView:v10 forSlot:slotCopy];

  return v10;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  [(NTKFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:viewCopy forSlot:slotCopy faceView:self];
  [viewCopy setSuppressesInternalColorOverrides:1];
  v7 = [slotCopy isEqualToString:NTKComplicationSlotBottom];
  if (v7)
  {
    v8 = [UIColor colorWithWhite:0.0 alpha:0.7];
    [viewCopy setShadowColor:v8];
  }

  else
  {
    if (![slotCopy isEqualToString:NTKComplicationSlotTopRight])
    {
      goto LABEL_6;
    }

    [viewCopy setShadowColor:0];
    _editingComplicationColor = [(NTKInfinityFaceView *)self _editingComplicationColor];
    [viewCopy setForegroundColor:_editingComplicationColor];

    [viewCopy setForegroundAlpha:1.0];
    [viewCopy setForegroundImageAlpha:1.0];
  }

  [viewCopy setUsesLegibility:v7];
LABEL_6:
}

- (void)_updateComplicationWithColor:(id)color animated:(BOOL)animated
{
  colorCopy = color;
  v8 = colorCopy;
  if (colorCopy && self->_currentComplicationColor != colorCopy)
  {
    objc_storeStrong(&self->_currentComplicationColor, color);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_2D20;
    v9[3] = &unk_C4D8;
    animatedCopy = animated;
    v9[4] = self;
    [(NTKInfinityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
  }
}

- (id)_editingComplicationColor
{
  currentStyleComplicationColor = [(NTKInfinityController *)self->_controller currentStyleComplicationColor];
  if (([(NTKInfinityFaceView *)self editing]& 1) == 0)
  {
    currentListing = [(NTKInfinityController *)self->_controller currentListing];

    if (currentListing)
    {
      currentComplicationColor = [(NTKInfinityController *)self->_controller currentComplicationColor];

      currentStyleComplicationColor = currentComplicationColor;
    }
  }

  return currentStyleComplicationColor;
}

- (id)_viewForEditOption:(id)option
{
  style = [option style];

  return [(NTKInfinityFaceView *)self _posterImageViewForStyle:style];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v19.receiver = self;
  v19.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v19 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 12)
  {
    currentStyle = [(NTKInfinityController *)self->_controller currentStyle];
    style = [optionCopy style];
    [(NTKInfinityController *)self->_controller setStyle:style];
    if (currentStyle != style || [(NTKInfinityFaceView *)self editing])
    {
      posterImageView = [(NTKInfinityFaceView *)self posterImageView];
      v12 = [(NTKInfinityController *)self->_controller posterImageForStyle:style];
      [posterImageView setImage:v12];

      currentComplicationColor = [(NTKInfinityController *)self->_controller currentComplicationColor];
      [(NTKInfinityFaceView *)self _updateComplicationWithColor:currentComplicationColor animated:0];
    }

    posterImageView2 = [(NTKInfinityFaceView *)self posterImageView];
    [posterImageView2 removeFromSuperview];

    backgroundContainerView = [(NTKInfinityFaceView *)self backgroundContainerView];
    posterImageView3 = [(NTKInfinityFaceView *)self posterImageView];
    [backgroundContainerView addSubview:posterImageView3];

    backgroundContainerView2 = [(NTKInfinityFaceView *)self backgroundContainerView];
    posterImageView4 = [(NTKInfinityFaceView *)self posterImageView];
    [backgroundContainerView2 sendSubviewToBack:posterImageView4];

    [(NTKInfinityFaceView *)self setNeedsLayout];
  }
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v4 _prepareForEditing];
  _editingComplicationColor = [(NTKInfinityFaceView *)self _editingComplicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:_editingComplicationColor animated:1];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v4 _cleanupAfterEditing];
  [(NTKInfinityController *)self->_controller invalidateCurrentListing];
  _editingComplicationColor = [(NTKInfinityFaceView *)self _editingComplicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:_editingComplicationColor animated:1];
}

- (void)_applyDataMode
{
  v7.receiver = self;
  v7.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v7 _applyDataMode];
  if ([(NTKInfinityFaceView *)self dataMode]!= self->_previousDataMode)
  {
    dataMode = [(NTKInfinityFaceView *)self dataMode];
    if (dataMode == &dword_4 + 1)
    {
      [(NTKInfinityFaceView *)self setShouldChangeVariantForScreenWake:0];
    }

    else if (dataMode == &dword_0 + 1 && self->_previousDataMode == 3)
    {
      currentListing = [(NTKInfinityFaceView *)self currentListing];

      if (currentListing)
      {
        currentListing2 = [(NTKInfinityFaceView *)self currentListing];
        complicationColor = [currentListing2 complicationColor];
        [(NTKInfinityFaceView *)self _updateComplicationWithColor:complicationColor animated:1];
      }
    }

    self->_previousDataMode = [(NTKInfinityFaceView *)self dataMode];
  }
}

- (void)setTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption customEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v20.receiver = self;
  v20.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v20 setTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode customEditMode:slot slot:fraction];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_3408;
  v16[3] = &unk_C500;
  v16[4] = self;
  v17 = toOptionCopy;
  v18 = optionCopy;
  fractionCopy = fraction;
  v14 = optionCopy;
  v15 = toOptionCopy;
  [(NTKInfinityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v16];
}

- (double)_timeLabelAlphaForEditMode:(int64_t)mode
{
  if (mode == 12)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (mode == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (id)_currentPosterImageView
{
  currentStyle = [(NTKInfinityController *)self->_controller currentStyle];

  return [(NTKInfinityFaceView *)self _posterImageViewForStyle:currentStyle];
}

- (id)_posterImageViewForStyle:(unint64_t)style
{
  v5 = [UIImageView alloc];
  [(NTKInfinityFaceView *)self bounds];
  v6 = [v5 initWithFrame:?];
  [v6 setContentMode:2];
  [v6 setClipsToBounds:1];
  v7 = [(NTKInfinityController *)self->_controller posterImageForStyle:style];
  [v6 setImage:v7];

  return v6;
}

- (void)_handleSingleTap:(id)tap
{
  tapCopy = tap;
  [(NTKInfinityFaceView *)self faultInFaceContentSkippedDuringSwiping];
  if (([(NTKInfinityFaceView *)self shouldPause]& 1) == 0)
  {
    [tapCopy setEnabled:0];
    *(self + 8) |= 1u;
    [(NTKInfinityController *)self->_controller prepareUserTapAction];
    nextListing = [(NTKInfinityController *)self->_controller nextListing];
    [(NTKInfinityFaceView *)self setCurrentListing:nextListing];

    [(NTKInfinityFaceView *)self _updateImageToBlur];
    videoPlayerView = [(NTKInfinityFaceView *)self videoPlayerView];
    [videoPlayerView pause];

    if (![(NTKInfinityController *)self->_controller controllerMode])
    {
      currentComplicationColor = [(NTKInfinityController *)self->_controller currentComplicationColor];
      [(NTKInfinityFaceView *)self _updateComplicationWithColor:currentComplicationColor animated:0];
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_376C;
    v8[3] = &unk_C528;
    v8[4] = self;
    [(NTKInfinityFaceView *)self _fadeToCurtainViewWithDuration:v8 completion:0.2];
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  style = [option style];
  if (style > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_C548 + style);
  }

  return _NTKImageNamed(v6);
}

@end