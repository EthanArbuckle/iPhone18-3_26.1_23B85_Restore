@interface NTKVideoFaceView
- (NTKVideoFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_rightSideMarginForDigitalTimeHeroPosition;
- (double)_timeTravelYAdjustment;
- (id)_complicationForegroundColor;
- (id)_defaultListing;
- (id)_nextListing;
- (id)_posterImageViewWithTheme:(unint64_t)theme;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)_viewForEditOption:(id)option;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_handleTapToPlayVideoGesture:(id)gesture;
- (void)_loadSnapshotContentViews;
- (void)_performPreloadVideoTask;
- (void)_prepareForEditing;
- (void)_unloadSnapshotContentViews;
- (void)_updatePaused;
- (void)dealloc;
- (void)videoPlayerViewDidBeginPlaying:(id)playing;
- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)end;
@end

@implementation NTKVideoFaceView

- (NTKVideoFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = NTKVideoFaceView;
  v10 = [(NTKVideoFaceView *)&v25 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifierCopy];
  if (v10)
  {
    v11 = [[NTKDigitialUtilitarianFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    faceViewComplicationFactory = v10->_faceViewComplicationFactory;
    v10->_faceViewComplicationFactory = v11;

    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)v10->_faceViewComplicationFactory setUsesLegibility:1 faceView:v10];
    v13 = v10->_faceViewComplicationFactory;
    v26[0] = NTKComplicationSlotTopRight;
    v26[1] = NTKComplicationSlotBottom;
    v26[2] = NTKComplicationSlotDate;
    v14 = [NSArray arrayWithObjects:v26 count:3];
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)v13 setSupportedComplicationSlots:v14];

    objc_initWeak(&location, v10);
    v15 = v10->_faceViewComplicationFactory;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1F04;
    v22[3] = &unk_8320;
    objc_copyWeak(&v23, &location);
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)v15 setForegroundColorProviderBlock:v22];
    v16 = v10->_faceViewComplicationFactory;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1F50;
    v20[3] = &unk_8348;
    objc_copyWeak(&v21, &location);
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)v16 setTimeTravelYAdjustmentProviderBlock:v20];
    v17 = [[UITapGestureRecognizer alloc] initWithTarget:v10 action:"_handleTapToPlayVideoGesture:"];
    tapToPlayGesture = v10->_tapToPlayGesture;
    v10->_tapToPlayGesture = v17;

    [(UITapGestureRecognizer *)v10->_tapToPlayGesture setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v10->_tapToPlayGesture setDelegate:v10];
    [(UITapGestureRecognizer *)v10->_tapToPlayGesture setEnabled:0];
    [(NTKVideoFaceView *)v10 addGestureRecognizer:v10->_tapToPlayGesture];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)dealloc
{
  device = [(NTKVideoFaceView *)self device];
  v4 = [NTKVideoListingFactory sharedInstanceForDevice:device];
  [v4 discardAssets];

  v5.receiver = self;
  v5.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v5 dealloc];
}

- (void)_performPreloadVideoTask
{
  v3.receiver = self;
  v3.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v3 _performPreloadVideoTask];
  if ((*(self + 32) & 2) == 0)
  {
    *(self + 32) |= 2u;
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:0 faceView:self];
  }
}

- (void)_loadSnapshotContentViews
{
  v2.receiver = self;
  v2.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v2 _loadSnapshotContentViews];
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v5 _unloadSnapshotContentViews];
  device = [(NTKVideoFaceView *)self device];
  v4 = [NTKVideoListingFactory sharedInstanceForDevice:device];
  [v4 discardAssets];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  v24.receiver = self;
  v24.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v24 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slot slot:fraction];
  if (mode == 12)
  {
    videoTheme = [optionCopy videoTheme];
    videoTheme2 = [toOptionCopy videoTheme];
    device = [(NTKVideoFaceView *)self device];
    v17 = [NTKVideoListingFactory sharedInstanceForDevice:device];

    v18 = [v17 defaultListingWithTheme:videoTheme];
    v19 = [v17 defaultListingWithTheme:videoTheme2];
    overlayColor = [v18 overlayColor];
    overlayColor2 = [v19 overlayColor];
    v22 = NTKInterpolateBetweenColors();
    editingComplicationColor = self->_editingComplicationColor;
    self->_editingComplicationColor = v22;

    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:0 faceView:self];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v17.receiver = self;
  v17.super_class = NTKVideoFaceView;
  optionCopy = option;
  [(NTKVideoFaceView *)&v17 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  videoTheme = [optionCopy videoTheme];

  self->_theme = videoTheme;
  posterImageView = [(NTKVideoFaceView *)self posterImageView];
  [posterImageView removeFromSuperview];
  device = [(NTKVideoFaceView *)self device];
  v12 = [NTKVideoListingFactory sharedInstanceForDevice:device];
  v13 = [v12 posterImageWithTheme:self->_theme];
  [posterImageView setImage:v13];

  contentView = [(NTKVideoFaceView *)self contentView];
  [contentView addSubview:posterImageView];

  contentView2 = [(NTKVideoFaceView *)self contentView];
  [contentView2 sendSubviewToBack:posterImageView];

  [(NTKVideoFaceView *)self setNeedsLayout];
  if (mode == 12)
  {
    editingComplicationColor = self->_editingComplicationColor;
    self->_editingComplicationColor = 0;

    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:0 faceView:self];
  }

  if (([(NTKVideoFaceView *)self editing]& 1) == 0)
  {
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory cleanupAfterEditingForFaceView:self];
  }
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v3 _prepareForEditing];
  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory prepareForEditingForFaceView:self];
}

- (void)_cleanupAfterEditing
{
  currentListing = [(NTKVideoFaceView *)self currentListing];
  if (!currentListing)
  {
    _nextListing = [(NTKVideoFaceView *)self _nextListing];
  }

  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory cleanupAfterEditingForFaceView:self];
  editingComplicationColor = self->_editingComplicationColor;
  self->_editingComplicationColor = 0;

  v6.receiver = self;
  v6.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v6 _cleanupAfterEditing];
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  videoTheme = [option videoTheme];
  if (videoTheme > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_8390 + videoTheme);
  }

  return [NTKMotionFaceBundle imageWithName:v6];
}

- (id)_viewForEditOption:(id)option
{
  videoTheme = [option videoTheme];

  return [(NTKVideoFaceView *)self _posterImageViewWithTheme:videoTheme];
}

- (double)_rightSideMarginForDigitalTimeHeroPosition
{
  device = [(NTKVideoFaceView *)self device];
  if ([device deviceCategory] == &dword_0 + 1)
  {

    return NTKDigitalTimeLabelStyleNarrowRightSideMargin;
  }

  device2 = [(NTKVideoFaceView *)self device];
  deviceCategory = [device2 deviceCategory];

  if (deviceCategory == &dword_0 + 2)
  {
    return NTKDigitalTimeLabelStyleNarrowRightSideMargin;
  }

  device3 = [(NTKVideoFaceView *)self device];
  NTKDigitalTimeLabelStyleWideRightSideMargin();
  v9 = v8;

  return v9;
}

- (double)_timeTravelYAdjustment
{
  device = [(NTKVideoFaceView *)self device];
  if ([device sizeClass])
  {
    v3 = 16.5;
  }

  else
  {
    v3 = 15.5;
  }

  return v3;
}

- (id)_complicationForegroundColor
{
  v3 = +[UIColor whiteColor];
  if ([(NTKVideoFaceView *)self editing])
  {
    editingComplicationColor = self->_editingComplicationColor;
    if (editingComplicationColor)
    {
      v5 = editingComplicationColor;
LABEL_8:
      overlayColor2 = v3;
      v3 = v5;
      goto LABEL_9;
    }
  }

  if ((*(self + 32) & 4) != 0)
  {
    v5 = +[UIColor grayColor];
    goto LABEL_8;
  }

  if (*(self + 32))
  {
    _defaultListing = [(NTKVideoFaceView *)self _defaultListing];
  }

  else
  {
    if (([(NTKVideoFaceView *)self editing]& 1) != 0 || ([(NTKVideoFaceView *)self currentListing], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      device = [(NTKVideoFaceView *)self device];
      overlayColor2 = [NTKVideoListingFactory sharedInstanceForDevice:device];

      v12 = [overlayColor2 defaultListingWithTheme:self->_theme];
      overlayColor = [v12 overlayColor];

      v3 = overlayColor;
      goto LABEL_9;
    }

    _defaultListing = [(NTKVideoFaceView *)self currentListing];
  }

  v10 = _defaultListing;
  overlayColor2 = [_defaultListing overlayColor];

  if (overlayColor2)
  {
    overlayColor2 = overlayColor2;

    v3 = overlayColor2;
  }

LABEL_9:

  return v3;
}

- (void)_updatePaused
{
  v5.receiver = self;
  v5.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v5 _updatePaused];
  tapToPlayGesture = self->_tapToPlayGesture;
  if (([(NTKVideoFaceView *)self isContentUnloadedForFaceSwiping]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(NTKVideoFaceView *)self shouldPause]^ 1;
  }

  [(UITapGestureRecognizer *)tapToPlayGesture setEnabled:v4];
}

- (id)_posterImageViewWithTheme:(unint64_t)theme
{
  v5 = [UIImageView alloc];
  [(NTKVideoFaceView *)self bounds];
  v6 = [v5 initWithFrame:?];
  [v6 setContentMode:2];
  [v6 setClipsToBounds:1];
  device = [(NTKVideoFaceView *)self device];
  v8 = [NTKVideoListingFactory sharedInstanceForDevice:device];
  v9 = [v8 posterImageWithTheme:theme];
  [v6 setImage:v9];

  return v6;
}

- (id)_defaultListing
{
  device = [(NTKVideoFaceView *)self device];
  v4 = [NTKVideoListingFactory sharedInstanceForDevice:device];

  v5 = [v4 defaultListingWithTheme:self->_theme];

  return v5;
}

- (id)_nextListing
{
  device = [(NTKVideoFaceView *)self device];
  v4 = [NTKVideoListingFactory sharedInstanceForDevice:device];

  currentListing = [(NTKVideoFaceView *)self currentListing];
  if (currentListing && (v6 = *(self + 32), currentListing, (v6 & 1) == 0))
  {
    v10 = [v4 behaviorForTheme:self->_theme];
    currentListing2 = [(NTKVideoFaceView *)self currentListing];
    if ([(NTKVideoFaceView *)self shouldChangeVariantForScreenWake])
    {
      v11 = [v4 anyListingWithTheme:self->_theme notMatchingVariant:objc_msgSend(currentListing2 matchingTag:{"variant"), 4}];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v4 anyListingWithTheme:self->_theme notMatchingVariant:objc_msgSend(currentListing2 matchingTag:{"variant"), 2}];
      }

      _defaultListing = v13;
    }

    else
    {
      theme = self->_theme;
      variant = [currentListing2 variant];
      if (v10 == &dword_4)
      {
        [v4 anyListingWithTheme:theme variant:variant tag:2 notMatchingClip:{objc_msgSend(currentListing2, "clip")}];
      }

      else
      {
        [v4 anyListingWithTheme:theme notMatchingVariant:variant matchingTag:2];
      }
      _defaultListing = ;
    }
  }

  else
  {
    *(self + 32) &= ~1u;
    _defaultListing = [(NTKVideoFaceView *)self _defaultListing];
    v8 = [v4 anyListingWithTheme:self->_theme variant:objc_msgSend(_defaultListing tag:{"variant"), 4}];
    currentListing2 = v8;
    if (v8)
    {
      currentListing2 = v8;

      _defaultListing = currentListing2;
    }
  }

  [(NTKVideoFaceView *)self setShouldChangeVariantForScreenWake:0];

  return _defaultListing;
}

- (void)_handleTapToPlayVideoGesture:(id)gesture
{
  gestureCopy = gesture;
  if (([(NTKVideoFaceView *)self timeScrubbing]& 1) == 0)
  {
    [(NTKVideoFaceView *)self faultInFaceContentSkippedDuringSwiping];
    if (([(NTKVideoFaceView *)self shouldPause]& 1) == 0)
    {
      [(NTKVideoFaceView *)self _cancelDelayedPlayback];
      device = [(NTKVideoFaceView *)self device];
      v6 = [NTKVideoListingFactory sharedInstanceForDevice:device];

      currentListing = [(NTKVideoFaceView *)self currentListing];
      v8 = [v6 anyListingWithTheme:self->_theme notMatchingVariant:objc_msgSend(currentListing matchingTag:{"variant"), 4}];
      if (v8 || ([v6 anyListingWithTheme:self->_theme notMatchingVariant:objc_msgSend(currentListing matchingTag:{"variant"), 2}], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = v8;
        [(NTKVideoFaceView *)self setCurrentListing:v8];
        [(NTKVideoFaceView *)self _updateImageToBlur];
        videoPlayerView = [(NTKVideoFaceView *)self videoPlayerView];
        [videoPlayerView pause];

        [(UITapGestureRecognizer *)self->_tapToPlayGesture setEnabled:0];
        objc_initWeak(&location, self);
        v11 = _NSConcreteStackBlock;
        v12 = 3221225472;
        v13 = sub_304C;
        v14 = &unk_8370;
        objc_copyWeak(&v15, &location);
        [(NTKVideoFaceView *)self _fadeToCurtainViewWithDuration:&v11 completion:0.5];
        *(self + 32) |= 4u;
        [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:1 faceView:self, v11, v12, v13, v14];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)videoPlayerViewDidBeginPlaying:(id)playing
{
  v4.receiver = self;
  v4.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v4 videoPlayerViewDidBeginPlaying:playing];
  [(NTKVideoFaceView *)self _hideCurtainView];
  [(UITapGestureRecognizer *)self->_tapToPlayGesture setEnabled:1];
  if ((*(self + 32) & 2) != 0)
  {
    *(self + 32) &= ~2u;
  }

  else
  {
    *(self + 32) &= ~4u;
    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:1 faceView:self];
  }
}

- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)end
{
  kdebug_trace();
  device = [(NTKVideoFaceView *)self device];
  v5 = [NTKVideoListingFactory sharedInstanceForDevice:device];

  if ([v5 behaviorForTheme:self->_theme] - 3 <= &dword_0 + 1)
  {
    [(NTKVideoFaceView *)self _cancelDelayedPlayback];
    if ([(NTKVideoFaceView *)self _shouldDelayBeforePlayingNextVideo])
    {
      [(NTKVideoFaceView *)self _playNextVideoAfterDelay:arc4random_uniform(0x28u) / 10.0 + 1.0];
    }

    else
    {
      [(NTKVideoFaceView *)self _playNextVideo];
    }
  }
}

@end