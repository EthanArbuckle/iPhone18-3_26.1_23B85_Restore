@interface NTKVideoFaceView
- (NTKVideoFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_rightSideMarginForDigitalTimeHeroPosition;
- (double)_timeTravelYAdjustment;
- (id)_complicationForegroundColor;
- (id)_defaultListing;
- (id)_nextListing;
- (id)_posterImageViewWithTheme:(unint64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)_viewForEditOption:(id)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_handleTapToPlayVideoGesture:(id)a3;
- (void)_loadSnapshotContentViews;
- (void)_performPreloadVideoTask;
- (void)_prepareForEditing;
- (void)_unloadSnapshotContentViews;
- (void)_updatePaused;
- (void)dealloc;
- (void)videoPlayerViewDidBeginPlaying:(id)a3;
- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)a3;
@end

@implementation NTKVideoFaceView

- (NTKVideoFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v25.receiver = self;
  v25.super_class = NTKVideoFaceView;
  v10 = [(NTKVideoFaceView *)&v25 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:v9];
  if (v10)
  {
    v11 = [[NTKDigitialUtilitarianFaceViewComplicationFactory alloc] initForDevice:v8];
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
  v3 = [(NTKVideoFaceView *)self device];
  v4 = [NTKVideoListingFactory sharedInstanceForDevice:v3];
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
  v3 = [(NTKVideoFaceView *)self device];
  v4 = [NTKVideoListingFactory sharedInstanceForDevice:v3];
  [v4 discardAssets];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v24.receiver = self;
  v24.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v24 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:a7 slot:a3];
  if (a6 == 12)
  {
    v14 = [v12 videoTheme];
    v15 = [v13 videoTheme];
    v16 = [(NTKVideoFaceView *)self device];
    v17 = [NTKVideoListingFactory sharedInstanceForDevice:v16];

    v18 = [v17 defaultListingWithTheme:v14];
    v19 = [v17 defaultListingWithTheme:v15];
    v20 = [v18 overlayColor];
    v21 = [v19 overlayColor];
    v22 = NTKInterpolateBetweenColors();
    editingComplicationColor = self->_editingComplicationColor;
    self->_editingComplicationColor = v22;

    [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory applyComplicationContentSpecificAttributesAnimated:0 faceView:self];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v17.receiver = self;
  v17.super_class = NTKVideoFaceView;
  v8 = a3;
  [(NTKVideoFaceView *)&v17 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  v9 = [v8 videoTheme];

  self->_theme = v9;
  v10 = [(NTKVideoFaceView *)self posterImageView];
  [v10 removeFromSuperview];
  v11 = [(NTKVideoFaceView *)self device];
  v12 = [NTKVideoListingFactory sharedInstanceForDevice:v11];
  v13 = [v12 posterImageWithTheme:self->_theme];
  [v10 setImage:v13];

  v14 = [(NTKVideoFaceView *)self contentView];
  [v14 addSubview:v10];

  v15 = [(NTKVideoFaceView *)self contentView];
  [v15 sendSubviewToBack:v10];

  [(NTKVideoFaceView *)self setNeedsLayout];
  if (a4 == 12)
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
  v3 = [(NTKVideoFaceView *)self currentListing];
  if (!v3)
  {
    v4 = [(NTKVideoFaceView *)self _nextListing];
  }

  [(NTKDigitialUtilitarianFaceViewComplicationFactory *)self->_faceViewComplicationFactory cleanupAfterEditingForFaceView:self];
  editingComplicationColor = self->_editingComplicationColor;
  self->_editingComplicationColor = 0;

  v6.receiver = self;
  v6.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v6 _cleanupAfterEditing];
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v5 = [a3 videoTheme];
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_8390 + v5);
  }

  return [NTKMotionFaceBundle imageWithName:v6];
}

- (id)_viewForEditOption:(id)a3
{
  v4 = [a3 videoTheme];

  return [(NTKVideoFaceView *)self _posterImageViewWithTheme:v4];
}

- (double)_rightSideMarginForDigitalTimeHeroPosition
{
  v3 = [(NTKVideoFaceView *)self device];
  if ([v3 deviceCategory] == &dword_0 + 1)
  {

    return NTKDigitalTimeLabelStyleNarrowRightSideMargin;
  }

  v4 = [(NTKVideoFaceView *)self device];
  v5 = [v4 deviceCategory];

  if (v5 == &dword_0 + 2)
  {
    return NTKDigitalTimeLabelStyleNarrowRightSideMargin;
  }

  v7 = [(NTKVideoFaceView *)self device];
  NTKDigitalTimeLabelStyleWideRightSideMargin();
  v9 = v8;

  return v9;
}

- (double)_timeTravelYAdjustment
{
  v2 = [(NTKVideoFaceView *)self device];
  if ([v2 sizeClass])
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
      v7 = v3;
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
    v6 = [(NTKVideoFaceView *)self _defaultListing];
  }

  else
  {
    if (([(NTKVideoFaceView *)self editing]& 1) != 0 || ([(NTKVideoFaceView *)self currentListing], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v11 = [(NTKVideoFaceView *)self device];
      v7 = [NTKVideoListingFactory sharedInstanceForDevice:v11];

      v12 = [v7 defaultListingWithTheme:self->_theme];
      v13 = [v12 overlayColor];

      v3 = v13;
      goto LABEL_9;
    }

    v6 = [(NTKVideoFaceView *)self currentListing];
  }

  v10 = v6;
  v7 = [v6 overlayColor];

  if (v7)
  {
    v7 = v7;

    v3 = v7;
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

- (id)_posterImageViewWithTheme:(unint64_t)a3
{
  v5 = [UIImageView alloc];
  [(NTKVideoFaceView *)self bounds];
  v6 = [v5 initWithFrame:?];
  [v6 setContentMode:2];
  [v6 setClipsToBounds:1];
  v7 = [(NTKVideoFaceView *)self device];
  v8 = [NTKVideoListingFactory sharedInstanceForDevice:v7];
  v9 = [v8 posterImageWithTheme:a3];
  [v6 setImage:v9];

  return v6;
}

- (id)_defaultListing
{
  v3 = [(NTKVideoFaceView *)self device];
  v4 = [NTKVideoListingFactory sharedInstanceForDevice:v3];

  v5 = [v4 defaultListingWithTheme:self->_theme];

  return v5;
}

- (id)_nextListing
{
  v3 = [(NTKVideoFaceView *)self device];
  v4 = [NTKVideoListingFactory sharedInstanceForDevice:v3];

  v5 = [(NTKVideoFaceView *)self currentListing];
  if (v5 && (v6 = *(self + 32), v5, (v6 & 1) == 0))
  {
    v10 = [v4 behaviorForTheme:self->_theme];
    v9 = [(NTKVideoFaceView *)self currentListing];
    if ([(NTKVideoFaceView *)self shouldChangeVariantForScreenWake])
    {
      v11 = [v4 anyListingWithTheme:self->_theme notMatchingVariant:objc_msgSend(v9 matchingTag:{"variant"), 4}];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v4 anyListingWithTheme:self->_theme notMatchingVariant:objc_msgSend(v9 matchingTag:{"variant"), 2}];
      }

      v7 = v13;
    }

    else
    {
      theme = self->_theme;
      v15 = [v9 variant];
      if (v10 == &dword_4)
      {
        [v4 anyListingWithTheme:theme variant:v15 tag:2 notMatchingClip:{objc_msgSend(v9, "clip")}];
      }

      else
      {
        [v4 anyListingWithTheme:theme notMatchingVariant:v15 matchingTag:2];
      }
      v7 = ;
    }
  }

  else
  {
    *(self + 32) &= ~1u;
    v7 = [(NTKVideoFaceView *)self _defaultListing];
    v8 = [v4 anyListingWithTheme:self->_theme variant:objc_msgSend(v7 tag:{"variant"), 4}];
    v9 = v8;
    if (v8)
    {
      v9 = v8;

      v7 = v9;
    }
  }

  [(NTKVideoFaceView *)self setShouldChangeVariantForScreenWake:0];

  return v7;
}

- (void)_handleTapToPlayVideoGesture:(id)a3
{
  v4 = a3;
  if (([(NTKVideoFaceView *)self timeScrubbing]& 1) == 0)
  {
    [(NTKVideoFaceView *)self faultInFaceContentSkippedDuringSwiping];
    if (([(NTKVideoFaceView *)self shouldPause]& 1) == 0)
    {
      [(NTKVideoFaceView *)self _cancelDelayedPlayback];
      v5 = [(NTKVideoFaceView *)self device];
      v6 = [NTKVideoListingFactory sharedInstanceForDevice:v5];

      v7 = [(NTKVideoFaceView *)self currentListing];
      v8 = [v6 anyListingWithTheme:self->_theme notMatchingVariant:objc_msgSend(v7 matchingTag:{"variant"), 4}];
      if (v8 || ([v6 anyListingWithTheme:self->_theme notMatchingVariant:objc_msgSend(v7 matchingTag:{"variant"), 2}], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = v8;
        [(NTKVideoFaceView *)self setCurrentListing:v8];
        [(NTKVideoFaceView *)self _updateImageToBlur];
        v10 = [(NTKVideoFaceView *)self videoPlayerView];
        [v10 pause];

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

- (void)videoPlayerViewDidBeginPlaying:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKVideoFaceView;
  [(NTKVideoFaceView *)&v4 videoPlayerViewDidBeginPlaying:a3];
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

- (void)videoPlayerViewDidPauseAfterPlayingVideoToEnd:(id)a3
{
  kdebug_trace();
  v4 = [(NTKVideoFaceView *)self device];
  v5 = [NTKVideoListingFactory sharedInstanceForDevice:v4];

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