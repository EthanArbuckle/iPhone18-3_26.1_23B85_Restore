@interface NTKInfinityFaceView
- (BOOL)_shouldQueueKeepAlive;
- (NTKInfinityFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_adjustmentForBottomTimeLayout;
- (double)_rightSideMarginForDigitalTimeHeroPosition;
- (double)_timeLabelAlphaForEditMode:(int64_t)a3;
- (id)_currentPosterImageView;
- (id)_editingComplicationColor;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_nextListing;
- (id)_posterImageViewForStyle:(unint64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)_viewForEditOption:(id)a3;
- (id)videoPlayerView;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_handleOrdinaryScreenWake;
- (void)_handleSingleTap:(id)a3;
- (void)_handleWristRaiseScreenWake;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_performPreloadVideoTask;
- (void)_prepareForEditing;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationWithColor:(id)a3 animated:(BOOL)a4;
- (void)_updatePaused;
- (void)dealloc;
- (void)didAddSubview:(id)a3;
- (void)layoutSubviews;
- (void)setTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 customEditMode:(int64_t)a6 slot:(id)a7;
- (void)videoPlayerViewDidBeginPlaying:(id)a3;
- (void)videoPlayerViewDidBeginPlayingQueuedVideo:(id)a3;
- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)a3;
@end

@implementation NTKInfinityFaceView

- (NTKInfinityFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v18.receiver = self;
  v18.super_class = NTKInfinityFaceView;
  v9 = [(NTKInfinityFaceView *)&v18 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    [(NTKInfinityFaceView *)v9 setShouldChangeVariantForScreenWake:1];
    *(v10 + 8) &= ~1u;
    v11 = [NTKInfinityController alloc];
    v12 = [(NTKInfinityFaceView *)v10 device];
    v13 = [(NTKInfinityController *)v11 initForDevice:v12];
    controller = v10->_controller;
    v10->_controller = v13;

    v15 = [[NTKDigitialUtilitarianFaceViewComplicationFactory alloc] initForDevice:v8];
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
  v3 = [(NTKInfinityFaceView *)self foregroundContainerView];
  [(NTKInfinityFaceView *)self bringSubviewToFront:v3];

  v4 = [(NTKInfinityFaceView *)self timeView];
  v5 = [UIColor colorWithWhite:0.0 alpha:0.3];
  [v4 setShadowColor:v5];

  v6 = [NTKRoundedCornerOverlayView alloc];
  [(NTKInfinityFaceView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(NTKInfinityFaceView *)self device];
  v16 = [v6 initWithFrame:v15 forDeviceCornerRadius:{v8, v10, v12, v14}];
  cornerView = self->_cornerView;
  self->_cornerView = v16;

  [(NTKInfinityFaceView *)self addSubview:self->_cornerView];
  v18 = [(NTKInfinityFaceView *)self videoPlayerView];
  [v18 setPausedViewEnabled:0];
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
  v3 = [(NTKInfinityFaceView *)self foregroundContainerView];
  [v3 bounds];
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
  v3 = [(NTKInfinityFaceView *)self _editingComplicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:v3 animated:0];
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

  v3 = [(NTKInfinityController *)self->_controller nextListing];
  v4 = [v3 complicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:v4 animated:1];

  return v3;
}

- (void)_handleWristRaiseScreenWake
{
  v3 = [(NTKInfinityFaceView *)self videoPlayerView];
  v4 = [v3 isPlaybackReady];

  if (v4)
  {
    [(NTKInfinityFaceView *)self _hideCurtainView];
  }

  v5.receiver = self;
  v5.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v5 _handleWristRaiseScreenWake];
}

- (void)_handleOrdinaryScreenWake
{
  v3 = [(NTKInfinityFaceView *)self videoPlayerView];
  v4 = [v3 isPlaybackReady];

  if (v4)
  {
    [(NTKInfinityFaceView *)self _hideCurtainView];
  }

  v5.receiver = self;
  v5.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v5 _handleOrdinaryScreenWake];
}

- (void)videoPlayerViewDidBeginPlayingQueuedVideo:(id)a3
{
  if ([(NTKInfinityFaceView *)self _shouldQueueKeepAlive])
  {
    v4 = [(NTKInfinityController *)self->_controller nextListing];
    currentQueueListing = self->_currentQueueListing;
    self->_currentQueueListing = v4;

    v7 = [(NTKInfinityFaceView *)self videoPlayerView];
    v6 = [(NTKInfinityListing *)self->_currentQueueListing video];
    [v7 queueVideo:v6];
  }
}

- (void)videoPlayerViewDidBeginPlaying:(id)a3
{
  v11 = a3;
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
  v5 = [(NTKInfinityFaceView *)self currentListing];
  [(NTKInfinityController *)controller startedPlayingListing:v5];

  if ([(NTKInfinityFaceView *)self _shouldQueueKeepAlive])
  {
    v6 = [(NTKInfinityController *)self->_controller nextQueueListing];
    currentQueueListing = self->_currentQueueListing;
    self->_currentQueueListing = v6;

    v8 = [(NTKInfinityFaceView *)self videoPlayerView];
    v9 = [(NTKInfinityListing *)self->_currentQueueListing video];
    [v8 queueVideo:v9];
  }

  v10 = [(NTKInfinityController *)self->_controller currentComplicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:v10 animated:1];
}

- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)a3
{
  if (![(NTKInfinityController *)self->_controller controllerMode]|| [(NTKInfinityController *)self->_controller controllerMode]== &dword_0 + 1)
  {
    v4 = [(NTKInfinityController *)self->_controller currentListing];
    v5 = [v4 playback];

    if (v5)
    {
      if (v5 == &dword_0 + 1)
      {

        [(NTKInfinityFaceView *)self _fadeToCurtainViewWithDuration:0 completion:0.2];
      }

      else if (v5 == &dword_0 + 2)
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
  v2 = [(NTKInfinityFaceView *)&v4 videoPlayerView];
  [v2 setPausedViewEnabled:0];

  return v2;
}

- (BOOL)_shouldQueueKeepAlive
{
  v2 = [(NTKInfinityFaceView *)self currentListing];
  v3 = [v2 type] == &dword_0 + 1 || objc_msgSend(v2, "type") == 0;

  return v3;
}

- (double)_rightSideMarginForDigitalTimeHeroPosition
{
  v3 = [(NTKInfinityFaceView *)self device];
  if ([v3 deviceCategory] == &dword_0 + 1)
  {

    return NTKDigitalTimeLabelStyleNarrowRightSideMargin;
  }

  v4 = [(NTKInfinityFaceView *)self device];
  v5 = [v4 deviceCategory];

  if (v5 == &dword_0 + 2)
  {
    return NTKDigitalTimeLabelStyleNarrowRightSideMargin;
  }

  v7 = [(NTKInfinityFaceView *)self device];
  NTKDigitalTimeLabelStyleWideRightSideMargin();
  v9 = v8;

  return v9;
}

- (double)_adjustmentForBottomTimeLayout
{
  v2 = [(NTKInfinityFaceView *)self device];
  if ([v2 sizeClass])
  {
    v3 = 113.5;
  }

  else
  {
    v3 = 100.0;
  }

  return v3;
}

- (void)didAddSubview:(id)a3
{
  v4 = [(NTKInfinityFaceView *)self _curtainView];
  [(NTKInfinityFaceView *)self bringSubviewToFront:v4];

  [(NTKInfinityFaceView *)self bringSubviewToFront:self->_cornerView];
  v5 = [(NTKInfinityFaceView *)self foregroundContainerView];
  [(NTKInfinityFaceView *)self bringSubviewToFront:v5];
}

- (void)_loadLayoutRules
{
  v3.receiver = self;
  v3.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v3 _loadLayoutRules];
  [(NTKFaceViewComplicationFactory *)self->_faceViewComplicationFactory loadLayoutRulesForFaceView:self];
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  v9 = a5;
  v10 = [(NTKFaceViewComplicationFactory *)faceViewComplicationFactory newLegacyViewForComplication:a3 family:a4 slot:v9 faceView:self];
  [(NTKInfinityFaceView *)self _configureComplicationView:v10 forSlot:v9];

  return v10;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(NTKFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:v10 forSlot:v6 faceView:self];
  [v10 setSuppressesInternalColorOverrides:1];
  v7 = [v6 isEqualToString:NTKComplicationSlotBottom];
  if (v7)
  {
    v8 = [UIColor colorWithWhite:0.0 alpha:0.7];
    [v10 setShadowColor:v8];
  }

  else
  {
    if (![v6 isEqualToString:NTKComplicationSlotTopRight])
    {
      goto LABEL_6;
    }

    [v10 setShadowColor:0];
    v9 = [(NTKInfinityFaceView *)self _editingComplicationColor];
    [v10 setForegroundColor:v9];

    [v10 setForegroundAlpha:1.0];
    [v10 setForegroundImageAlpha:1.0];
  }

  [v10 setUsesLegibility:v7];
LABEL_6:
}

- (void)_updateComplicationWithColor:(id)a3 animated:(BOOL)a4
{
  v7 = a3;
  v8 = v7;
  if (v7 && self->_currentComplicationColor != v7)
  {
    objc_storeStrong(&self->_currentComplicationColor, a3);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_2D20;
    v9[3] = &unk_C4D8;
    v10 = a4;
    v9[4] = self;
    [(NTKInfinityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
  }
}

- (id)_editingComplicationColor
{
  v3 = [(NTKInfinityController *)self->_controller currentStyleComplicationColor];
  if (([(NTKInfinityFaceView *)self editing]& 1) == 0)
  {
    v4 = [(NTKInfinityController *)self->_controller currentListing];

    if (v4)
    {
      v5 = [(NTKInfinityController *)self->_controller currentComplicationColor];

      v3 = v5;
    }
  }

  return v3;
}

- (id)_viewForEditOption:(id)a3
{
  v4 = [a3 style];

  return [(NTKInfinityFaceView *)self _posterImageViewForStyle:v4];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v19 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  if (a4 == 12)
  {
    v9 = [(NTKInfinityController *)self->_controller currentStyle];
    v10 = [v8 style];
    [(NTKInfinityController *)self->_controller setStyle:v10];
    if (v9 != v10 || [(NTKInfinityFaceView *)self editing])
    {
      v11 = [(NTKInfinityFaceView *)self posterImageView];
      v12 = [(NTKInfinityController *)self->_controller posterImageForStyle:v10];
      [v11 setImage:v12];

      v13 = [(NTKInfinityController *)self->_controller currentComplicationColor];
      [(NTKInfinityFaceView *)self _updateComplicationWithColor:v13 animated:0];
    }

    v14 = [(NTKInfinityFaceView *)self posterImageView];
    [v14 removeFromSuperview];

    v15 = [(NTKInfinityFaceView *)self backgroundContainerView];
    v16 = [(NTKInfinityFaceView *)self posterImageView];
    [v15 addSubview:v16];

    v17 = [(NTKInfinityFaceView *)self backgroundContainerView];
    v18 = [(NTKInfinityFaceView *)self posterImageView];
    [v17 sendSubviewToBack:v18];

    [(NTKInfinityFaceView *)self setNeedsLayout];
  }
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v4 _prepareForEditing];
  v3 = [(NTKInfinityFaceView *)self _editingComplicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:v3 animated:1];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v4 _cleanupAfterEditing];
  [(NTKInfinityController *)self->_controller invalidateCurrentListing];
  v3 = [(NTKInfinityFaceView *)self _editingComplicationColor];
  [(NTKInfinityFaceView *)self _updateComplicationWithColor:v3 animated:1];
}

- (void)_applyDataMode
{
  v7.receiver = self;
  v7.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v7 _applyDataMode];
  if ([(NTKInfinityFaceView *)self dataMode]!= self->_previousDataMode)
  {
    v3 = [(NTKInfinityFaceView *)self dataMode];
    if (v3 == &dword_4 + 1)
    {
      [(NTKInfinityFaceView *)self setShouldChangeVariantForScreenWake:0];
    }

    else if (v3 == &dword_0 + 1 && self->_previousDataMode == 3)
    {
      v4 = [(NTKInfinityFaceView *)self currentListing];

      if (v4)
      {
        v5 = [(NTKInfinityFaceView *)self currentListing];
        v6 = [v5 complicationColor];
        [(NTKInfinityFaceView *)self _updateComplicationWithColor:v6 animated:1];
      }
    }

    self->_previousDataMode = [(NTKInfinityFaceView *)self dataMode];
  }
}

- (void)setTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 customEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = NTKInfinityFaceView;
  [(NTKInfinityFaceView *)&v20 setTransitionFraction:v12 fromOption:v13 toOption:a6 customEditMode:a7 slot:a3];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_3408;
  v16[3] = &unk_C500;
  v16[4] = self;
  v17 = v13;
  v18 = v12;
  v19 = a3;
  v14 = v12;
  v15 = v13;
  [(NTKInfinityFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v16];
}

- (double)_timeLabelAlphaForEditMode:(int64_t)a3
{
  if (a3 == 12)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (a3 == 1)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (id)_currentPosterImageView
{
  v3 = [(NTKInfinityController *)self->_controller currentStyle];

  return [(NTKInfinityFaceView *)self _posterImageViewForStyle:v3];
}

- (id)_posterImageViewForStyle:(unint64_t)a3
{
  v5 = [UIImageView alloc];
  [(NTKInfinityFaceView *)self bounds];
  v6 = [v5 initWithFrame:?];
  [v6 setContentMode:2];
  [v6 setClipsToBounds:1];
  v7 = [(NTKInfinityController *)self->_controller posterImageForStyle:a3];
  [v6 setImage:v7];

  return v6;
}

- (void)_handleSingleTap:(id)a3
{
  v4 = a3;
  [(NTKInfinityFaceView *)self faultInFaceContentSkippedDuringSwiping];
  if (([(NTKInfinityFaceView *)self shouldPause]& 1) == 0)
  {
    [v4 setEnabled:0];
    *(self + 8) |= 1u;
    [(NTKInfinityController *)self->_controller prepareUserTapAction];
    v5 = [(NTKInfinityController *)self->_controller nextListing];
    [(NTKInfinityFaceView *)self setCurrentListing:v5];

    [(NTKInfinityFaceView *)self _updateImageToBlur];
    v6 = [(NTKInfinityFaceView *)self videoPlayerView];
    [v6 pause];

    if (![(NTKInfinityController *)self->_controller controllerMode])
    {
      v7 = [(NTKInfinityController *)self->_controller currentComplicationColor];
      [(NTKInfinityFaceView *)self _updateComplicationWithColor:v7 animated:0];
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_376C;
    v8[3] = &unk_C528;
    v8[4] = self;
    [(NTKInfinityFaceView *)self _fadeToCurtainViewWithDuration:v8 completion:0.2];
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v5 = [a3 style];
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_C548 + v5);
  }

  return _NTKImageNamed(v6);
}

@end