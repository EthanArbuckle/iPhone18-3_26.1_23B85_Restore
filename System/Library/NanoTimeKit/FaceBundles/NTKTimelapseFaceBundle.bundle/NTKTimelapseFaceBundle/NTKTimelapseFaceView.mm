@interface NTKTimelapseFaceView
- (NTKTimelapseFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_newBottomGradientViewWithColor:(id)color;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_newTopGradientViewWithColor:(id)color;
- (id)_nextListing;
- (id)_onDeckPosterImageViewWithTheme:(unint64_t)theme;
- (id)_posterImageViewWithTheme:(unint64_t)theme;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)_viewForEditOption:(id)option;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (void)_applyComplicationContentSpecificAttributesAnimated:(BOOL)animated;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyScrubbingForegroundColor:(id)color shadowColor:(id)shadowColor;
- (void)_configureComplicationFactory;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_handleOrdinaryScreenWake;
- (void)_handleTapToPlayVideoGesture:(id)gesture;
- (void)_handleWristRaiseScreenWake;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_performPreloadVideoTask;
- (void)_playQueuedUpVideo;
- (void)_prepareForEditing;
- (void)_resetVideoForListing;
- (void)_startScrubbingAnimationFromUIViewAnimateWithDuration;
- (void)_unloadSnapshotContentViews;
- (void)dealloc;
- (void)layoutSubviews;
- (void)videoPlayerViewDidBeginPlaying:(id)playing;
@end

@implementation NTKTimelapseFaceView

- (NTKTimelapseFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKTimelapseFaceView;
  v9 = [(NTKTimelapseFaceView *)&v16 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    complicationFactory = v9->_complicationFactory;
    v9->_complicationFactory = v10;

    [(NTKTimelapseFaceView *)v9 _configureComplicationFactory];
    v12 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"_handleTapToPlayVideoGesture:"];
    tapToPlayGesture = v9->_tapToPlayGesture;
    v9->_tapToPlayGesture = v12;

    [(UITapGestureRecognizer *)v9->_tapToPlayGesture setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v9->_tapToPlayGesture setDelegate:v9];
    [(UITapGestureRecognizer *)v9->_tapToPlayGesture setEnabled:0];
    [(NTKTimelapseFaceView *)v9 addGestureRecognizer:v9->_tapToPlayGesture];
    device = [(NTKTimelapseFaceView *)v9 device];
    v9->_deviceSizeClass = [device sizeClass];
  }

  return v9;
}

- (void)dealloc
{
  device = [(NTKTimelapseFaceView *)self device];
  v4 = [NTKTimelapseListingFactory sharedInstanceForDevice:device];
  [v4 discardAssets];

  v5.receiver = self;
  v5.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v5 dealloc];
}

- (void)_prepareForEditing
{
  v15.receiver = self;
  v15.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v15 _prepareForEditing];
  if (*&self->_topGradientView != 0)
  {
    v3 = self->_topGradientView;
    v4 = self->_bottomGradientView;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_2B3C;
    v12[3] = &unk_10390;
    v13 = v3;
    v14 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_2B80;
    v9[3] = &unk_103B8;
    v10 = v13;
    v11 = v14;
    v5 = v14;
    v6 = v13;
    [UIView animateWithDuration:v12 animations:v9 completion:0.25];
    topGradientView = self->_topGradientView;
    self->_topGradientView = 0;

    bottomGradientView = self->_bottomGradientView;
    self->_bottomGradientView = 0;
  }
}

- (void)_loadSnapshotContentViews
{
  v19.receiver = self;
  v19.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v19 _loadSnapshotContentViews];
  v3 = [NTKRoundedCornerOverlayView alloc];
  [(NTKTimelapseFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  device = [(NTKTimelapseFaceView *)self device];
  v13 = [v3 initWithFrame:device forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v13;

  v15 = self->_cornerView;
  contentView = [(NTKTimelapseFaceView *)self contentView];
  [(NTKTimelapseFaceView *)self insertSubview:v15 aboveSubview:contentView];

  _nextListing = [(NTKTimelapseFaceView *)self _nextListing];
  photoAnalysis = [_nextListing photoAnalysis];
  [(NTKTimelapseFaceView *)self _setDateAttributes:photoAnalysis animated:0];
}

- (void)_unloadSnapshotContentViews
{
  v8.receiver = self;
  v8.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v8 _unloadSnapshotContentViews];
  [(UIView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;

  [(UIView *)self->_topGradientView removeFromSuperview];
  topGradientView = self->_topGradientView;
  self->_topGradientView = 0;

  [(UIView *)self->_bottomGradientView removeFromSuperview];
  bottomGradientView = self->_bottomGradientView;
  self->_bottomGradientView = 0;

  device = [(NTKTimelapseFaceView *)self device];
  v7 = [NTKTimelapseListingFactory sharedInstanceForDevice:device];
  [v7 discardAssets];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v12 layoutSubviews];
  contentView = [(NTKTimelapseFaceView *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIView *)self->_cornerView ntk_setBoundsAndPositionFromFrame:v5, v7, v9, v11];
}

- (void)_loadLayoutRules
{
  v26.receiver = self;
  v26.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v26 _loadLayoutRules];
  [(NTKTimelapseFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(NTKTimelapseFaceView *)self _shouldAdjustLayoutForTimeTravel])
  {
    [(NTKTimelapseFaceView *)self _timeTravelYAdjustment];
    CLKAlterRect();
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v27[0] = NTKComplicationSlotTopRight;
  v27[1] = NTKComplicationSlotBottom;
  v15 = [NSArray arrayWithObjects:v27 count:2, 0];
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        v21 = [(NTKTimelapseFaceView *)self complicationLayoutforSlot:v20];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v21 forSlot:[(NTKTimelapseFaceView *)self _utilitySlotForSlot:v20] withBounds:v4, v6, v8, v10];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v17);
  }
}

- (int64_t)_utilitySlotForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqual:NTKComplicationSlotTopRight])
  {
    v4 = 5;
  }

  else if ([slotCopy isEqual:NTKComplicationSlotBottom])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_configureComplicationFactory
{
  [(NTKUtilityComplicationFactory *)self->_complicationFactory setForegroundAlpha:1.0];
  complicationFactory = self->_complicationFactory;

  [(NTKUtilityComplicationFactory *)complicationFactory setForegroundImageAlpha:1.0];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  [viewCopy setFontWeight:UIFontWeightSemibold];
  [viewCopy setForegroundColor:self->_foregroundColor];
  [viewCopy setShadowColor:self->_shadowColor];
  if ([slotCopy isEqualToString:NTKComplicationSlotBottom])
  {
    v7 = 1;
  }

  else
  {
    v7 = *(self + 80) & 1;
  }

  [viewCopy setUsesLegibility:v7];
  [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundAlphaForEditing:[(NTKTimelapseFaceView *)self editing]];
  [viewCopy setForegroundAlpha:?];
  [(NTKUtilityComplicationFactory *)self->_complicationFactory foregroundImageAlphaForEditing:[(NTKTimelapseFaceView *)self editing]];
  [viewCopy setForegroundImageAlpha:?];
  [viewCopy setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKTimelapseFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", slotCopy))}];
  [viewCopy setSuppressesInternalColorOverrides:1];
  v8 = +[UIColor clearColor];
  [viewCopy setBackgroundColor:v8];
}

- (void)_applyComplicationContentSpecificAttributesAnimated:(BOOL)animated
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_3360;
  v3[3] = &unk_103E0;
  animatedCopy = animated;
  v3[4] = self;
  [(NTKTimelapseFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v3];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v22.receiver = self;
  v22.super_class = NTKTimelapseFaceView;
  optionCopy = option;
  [(NTKTimelapseFaceView *)&v22 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  theme = self->_theme;
  timelapseTheme = [optionCopy timelapseTheme];

  self->_theme = timelapseTheme;
  if (([(NTKTimelapseFaceView *)self editing]& 1) == 0)
  {
    _nextListing = [(NTKTimelapseFaceView *)self _nextListing];
    photoAnalysis = [_nextListing photoAnalysis];
    [(NTKTimelapseFaceView *)self _setDateAttributes:photoAnalysis animated:0];
  }

  if (theme != self->_theme || [(NTKTimelapseFaceView *)self editing])
  {
    posterImageView = [(NTKTimelapseFaceView *)self posterImageView];
    device = [(NTKTimelapseFaceView *)self device];
    v15 = [NTKTimelapseListingFactory sharedInstanceForDevice:device];
    v16 = [v15 posterImageWithTheme:self->_theme];
    [posterImageView setImage:v16];
  }

  posterImageView2 = [(NTKTimelapseFaceView *)self posterImageView];
  [posterImageView2 removeFromSuperview];

  backgroundContainerView = [(NTKTimelapseFaceView *)self backgroundContainerView];
  posterImageView3 = [(NTKTimelapseFaceView *)self posterImageView];
  [backgroundContainerView addSubview:posterImageView3];

  backgroundContainerView2 = [(NTKTimelapseFaceView *)self backgroundContainerView];
  posterImageView4 = [(NTKTimelapseFaceView *)self posterImageView];
  [backgroundContainerView2 sendSubviewToBack:posterImageView4];

  [(NTKTimelapseFaceView *)self setNeedsLayout];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v5.receiver = self;
  v5.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v5 _configureForTransitionFraction:mode fromEditMode:editMode toEditMode:fraction];
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationFactory = self->_complicationFactory;
  slotCopy = slot;
  complicationCopy = complication;
  v11 = [(NTKUtilityComplicationFactory *)complicationFactory newViewForComplication:complicationCopy family:family forSlot:[(NTKTimelapseFaceView *)self _utilitySlotForSlot:slotCopy]];

  [(NTKTimelapseFaceView *)self _configureComplicationView:v11 forSlot:slotCopy];
  return v11;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  resourceBaseName = [option resourceBaseName];
  v6 = NTKImageNamedFromAssetsBundle();

  return v6;
}

- (void)_handleWristRaiseScreenWake
{
  v2.receiver = self;
  v2.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v2 _handleWristRaiseScreenWake];
}

- (void)_handleOrdinaryScreenWake
{
  v2.receiver = self;
  v2.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v2 _handleOrdinaryScreenWake];
}

- (void)_performPreloadVideoTask
{
  v5.receiver = self;
  v5.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v5 _performPreloadVideoTask];
  if ((*(self + 80) & 2) == 0)
  {
    *(self + 80) |= 2u;
    currentListing = [(NTKTimelapseFaceView *)self currentListing];
    photoAnalysis = [currentListing photoAnalysis];
    [(NTKTimelapseFaceView *)self _setDateAttributes:photoAnalysis animated:0];
  }
}

- (id)_viewForEditOption:(id)option
{
  timelapseTheme = [option timelapseTheme];

  return [(NTKTimelapseFaceView *)self _posterImageViewWithTheme:timelapseTheme];
}

- (void)videoPlayerViewDidBeginPlaying:(id)playing
{
  currentListing = [(NTKTimelapseFaceView *)self currentListing];
  v5 = currentListing;
  if ((*(self + 80) & 2) != 0)
  {
    *(self + 80) &= ~2u;
  }

  else
  {
    photoAnalysis = [currentListing photoAnalysis];
    [(NTKTimelapseFaceView *)self _setDateAttributes:photoAnalysis animated:1];
  }

  if ([(NTKTimelapseFaceView *)self _curtainViewVisible])
  {
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, 0.95, 0.95);
    v12 = v13;
    videoPlayerView = [(NTKTimelapseFaceView *)self videoPlayerView];
    v11 = v12;
    [videoPlayerView setTransform:&v11];

    v11 = v13;
    [(UIView *)self->_topGradientView setTransform:&v11];
    v11 = v13;
    [(UIView *)self->_bottomGradientView setTransform:&v11];
    v11 = v13;
    [(UIView *)self->_cornerView setTransform:&v11];
    videoPlayerView2 = [(NTKTimelapseFaceView *)self videoPlayerView];
    [videoPlayerView2 setAlpha:0.0];

    [(UIView *)self->_topGradientView setAlpha:0.0];
    [(UIView *)self->_bottomGradientView setAlpha:0.0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_3B94;
    v10[3] = &unk_10408;
    v10[4] = self;
    [UIView animateWithDuration:0x20000 delay:v10 options:0 animations:0.8 completion:0.0];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_3C0C;
    v9[3] = &unk_10408;
    v9[4] = self;
    [UIView animateWithDuration:0 delay:v9 options:0 animations:0.25 completion:0.1];
  }

  [(NTKTimelapseFaceView *)self _hideCurtainView];
  [(UITapGestureRecognizer *)self->_tapToPlayGesture setEnabled:1];
}

- (void)_handleTapToPlayVideoGesture:(id)gesture
{
  gestureCopy = gesture;
  if (([(NTKTimelapseFaceView *)self timeScrubbing]& 1) == 0)
  {
    [(NTKTimelapseFaceView *)self faultInFaceContentSkippedDuringSwiping];
    if ((-[NTKTimelapseFaceView shouldPause](self, "shouldPause") & 1) == 0 && [gestureCopy state] == &dword_0 + 3)
    {
      [(NTKTimelapseFaceView *)self _cancelDelayedPlayback];
      videoPlayerView = [(NTKTimelapseFaceView *)self videoPlayerView];
      [videoPlayerView pause];

      [(UITapGestureRecognizer *)self->_tapToPlayGesture setEnabled:0];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_3DE4;
      v6[3] = &unk_10408;
      v6[4] = self;
      [(NTKTimelapseFaceView *)self _fadeToCurtainViewWithDuration:v6 completion:0.3];
    }
  }
}

- (id)_newTopGradientViewWithColor:(id)color
{
  colorCopy = color;
  v5 = NTKImageNamed();
  device = [(NTKTimelapseFaceView *)self device];
  [device screenBounds];
  v8 = v7;
  [v5 size];
  v10 = v9;

  v11 = [[UIView alloc] initWithFrame:{0.0, 0.0, v8, v10}];
  layer = [v11 layer];
  cGColor = [colorCopy CGColor];

  [layer setContentsMultiplyColor:cGColor];
  layer2 = [v11 layer];
  [layer2 setContents:{objc_msgSend(v5, "CGImage")}];

  _curtainView = [(NTKTimelapseFaceView *)self _curtainView];
  contentView = [(NTKTimelapseFaceView *)self contentView];
  v17 = contentView;
  if (_curtainView)
  {
    [contentView insertSubview:v11 belowSubview:_curtainView];
  }

  else
  {
    [contentView addSubview:v11];
  }

  return v11;
}

- (id)_newBottomGradientViewWithColor:(id)color
{
  colorCopy = color;
  v5 = [NTKTimelapseFaceBundle imageWithName:@"TimelapseGradient"];
  device = [(NTKTimelapseFaceView *)self device];
  [device screenBounds];
  v8 = v7;
  v10 = v9;

  [v5 size];
  v12 = v10 - v11;
  [v5 size];
  v14 = [[UIView alloc] initWithFrame:{0.0, v12, v8, v13}];
  layer = [v14 layer];
  cGColor = [colorCopy CGColor];

  [layer setContentsMultiplyColor:cGColor];
  layer2 = [v14 layer];
  [layer2 setContents:{objc_msgSend(v5, "CGImage")}];

  v18 = self->_topGradientView;
  _curtainView = [(NTKTimelapseFaceView *)self _curtainView];
  if (v18)
  {
    contentView = [(NTKTimelapseFaceView *)self contentView];
    v21 = contentView;
    v22 = v14;
    v23 = v18;
  }

  else
  {
    contentView = [(NTKTimelapseFaceView *)self contentView];
    v21 = contentView;
    v22 = v14;
    if (!_curtainView)
    {
      [contentView addSubview:v14];
      goto LABEL_6;
    }

    v23 = _curtainView;
  }

  [contentView insertSubview:v22 belowSubview:v23];
LABEL_6:

  return v14;
}

- (void)_applyDataMode
{
  v3.receiver = self;
  v3.super_class = NTKTimelapseFaceView;
  [(NTKTimelapseFaceView *)&v3 _applyDataMode];
  [(UITapGestureRecognizer *)self->_tapToPlayGesture setEnabled:[(NTKTimelapseFaceView *)self dataMode]== &dword_0 + 1];
}

- (id)_posterImageViewWithTheme:(unint64_t)theme
{
  v5 = [UIImageView alloc];
  [(NTKTimelapseFaceView *)self bounds];
  v6 = [v5 initWithFrame:?];
  [v6 setContentMode:2];
  [v6 setClipsToBounds:1];
  device = [(NTKTimelapseFaceView *)self device];
  v8 = [NTKTimelapseListingFactory sharedInstanceForDevice:device];
  v9 = [v8 posterImageWithTheme:theme];
  [v6 setImage:v9];

  return v6;
}

- (id)_onDeckPosterImageViewWithTheme:(unint64_t)theme
{
  v5 = [UIImageView alloc];
  [(NTKTimelapseFaceView *)self bounds];
  v6 = [v5 initWithFrame:?];
  [v6 setContentMode:2];
  [v6 setClipsToBounds:1];
  v7 = +[NTKLocationManager sharedLocationManager];
  anyLocation = [v7 anyLocation];
  [anyLocation coordinate];
  v10 = v9;
  v12 = v11;

  v13 = +[NTKDate faceDate];
  device = [(NTKTimelapseFaceView *)self device];
  v15 = [NTKTimelapseListingFactory sharedInstanceForDevice:device];
  v16 = [v15 heroImageWithTheme:theme date:v13 location:{v10, v12}];
  [v6 setImage:v16];

  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    image = [v6 image];
    v19 = [image description];
    v21 = 136316419;
    v22 = "[NTKTimelapseFaceView _onDeckPosterImageViewWithTheme:]";
    v23 = 2112;
    v24 = v19;
    v25 = 2048;
    themeCopy = theme;
    v27 = 2112;
    v28 = v13;
    v29 = 2049;
    v30 = v10;
    v31 = 2049;
    v32 = v12;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%s creating NTKTimelapseListingFactory with image:%@ theme:%lu date:%@ latitude:%{private}f longitude:%{private}f", &v21, 0x3Eu);
  }

  return v6;
}

- (void)_resetVideoForListing
{
  videoPlayerView = [(NTKTimelapseFaceView *)self videoPlayerView];
  v3 = *&kCMTimeZero.value;
  epoch = kCMTimeZero.epoch;
  [videoPlayerView seekToTime:&v3];
}

- (id)_nextListing
{
  [(NTKTimelapseFaceView *)self setShouldChangeVariantForScreenWake:0];
  v3 = +[NTKLocationManager sharedLocationManager];
  anyLocation = [v3 anyLocation];
  [anyLocation coordinate];
  v6 = v5;
  v8 = v7;

  v9 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    theme = self->_theme;
    v11 = +[NTKDate faceDate];
    v18 = 136316163;
    v19 = "[NTKTimelapseFaceView _nextListing]";
    v20 = 2048;
    v21 = theme;
    v22 = 2112;
    v23 = v11;
    v24 = 2049;
    v25 = v6;
    v26 = 2049;
    v27 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%s creating NTKTimelapseListingFactory with theme:%lu date:%@ latitude:%{private}f longitude:%{private}f", &v18, 0x34u);
  }

  device = [(NTKTimelapseFaceView *)self device];
  v13 = [NTKTimelapseListingFactory sharedInstanceForDevice:device];
  v14 = self->_theme;
  v15 = +[NTKDate faceDate];
  v16 = [v13 listingWithTheme:v14 date:v15 location:{v6, v8}];

  return v16;
}

- (void)_playQueuedUpVideo
{
  _nextListing = [(NTKTimelapseFaceView *)self _nextListing];
  currentListing = [(NTKTimelapseFaceView *)self currentListing];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_5;
  }

  currentListing2 = [(NTKTimelapseFaceView *)self currentListing];
  v6 = [_nextListing isSimilarTo:currentListing2];

  if (!v6)
  {
LABEL_5:
    selfCopy = self;
    v7 = &selRef__playNextVideo;
    v8 = &selfCopy;
    goto LABEL_6;
  }

  selfCopy2 = self;
  v7 = &selRef__playQueuedUpVideo;
  v8 = &selfCopy2;
LABEL_6:
  v8[1] = NTKTimelapseFaceView;
  objc_msgSendSuper2(v8, *v7, selfCopy);
}

- (void)_applyScrubbingForegroundColor:(id)color shadowColor:(id)shadowColor
{
  colorCopy = color;
  shadowColorCopy = shadowColor;
  timeView = [(NTKTimelapseFaceView *)self timeView];
  [timeView setColor:colorCopy];
  [timeView setShadowColor:shadowColorCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4CBC;
  v11[3] = &unk_10458;
  v12 = colorCopy;
  v13 = shadowColorCopy;
  v9 = shadowColorCopy;
  v10 = colorCopy;
  [(NTKTimelapseFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v11];
}

- (void)_startScrubbingAnimationFromUIViewAnimateWithDuration
{
  v4 = +[UIColor whiteColor];
  v3 = +[UIColor clearColor];
  [(NTKTimelapseFaceView *)self _applyScrubbingForegroundColor:v4 shadowColor:v3];
}

@end