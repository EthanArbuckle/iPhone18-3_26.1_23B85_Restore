@interface NTKAlaskanChronographView
- (BOOL)isRunning;
- (CLKUIColoringLabel)centerLabel;
- (CLKUIColoringLabel)topLabel;
- (NTKAlaskanChronoButton)resetButton;
- (NTKAlaskanChronoButton)startStopButton;
- (NTKAlaskanChronographView)initWithFrame:(CGRect)a3;
- (NTKAlaskanChronographViewDelegate)delegate;
- (NTKHandView)secondaryHandView;
- (UIView)chronometerHandsParentView;
- (double)_stopwatchCurrentLapTimeForFutureDate:(id)a3;
- (double)_stopwatchElapsedTimeForFutureDate:(id)a3;
- (double)largeAnalogHandsFullRotationDuration;
- (double)largeHandsAnimationFPS;
- (double)leftSubdialAnalogHandsFullRotationDuration;
- (double)resetButtonAlpha;
- (double)rightSubdialAnalogHandsFullRotationDuration;
- (double)secondsAngleForCurrentDate;
- (double)startStopButtonAlpha;
- (id)_currentLapStartDateRelativeToDate:(id)a3;
- (id)_lapTimelapsedTextProviderWithDate:(id)a3;
- (id)_newCenterLabel;
- (id)_stopwatchStartDateRelativeToDate:(id)a3;
- (id)_tachymeterTextProviderWithTimeInterval:(double)a3 dropPrefix:(BOOL)a4 dropSuffix:(BOOL)a5;
- (id)_totalTimelapsedTextProviderWithDate:(id)a3;
- (id)currentClockDate;
- (id)currentStopwatchDate;
- (id)dialViewForTimeScale:(unint64_t)a3;
- (id)layerDisabledActions;
- (id)leftSubdialViewForTimeScale:(unint64_t)timeScale;
- (id)rightSubdialViewForTimeScale:(unint64_t)timeScale;
- (id)titleForTimeScale:(unint64_t)a3;
- (unint64_t)nextTimeScale;
- (unint64_t)previousTimeScale;
- (void)_cleanupSubdialView:(id)a3;
- (void)_setUpUIForTimeScale:(unint64_t)a3;
- (void)_updateElapsedTimeLabel;
- (void)_updateTachymeterLabel;
- (void)applyPalette:(id)a3;
- (void)applyTransitionFromTimeModeToChronometerModeWithfraction:(double)a3;
- (void)applyTransitionFromTimeScale:(unint64_t)a3 toTimeScale:(unint64_t)a4 fraction:(double)a5;
- (void)applyTransitionFromView:(id)a3 toView:(id)a4 fraction:(double)a5;
- (void)cleanUpTimeScaleTransition;
- (void)configureHandsAnimation:(id)a3 currentRadians:(double)a4 durationOfFullRotation:(double)a5 fps:(double)a6;
- (void)dealloc;
- (void)enableDisableResetButton;
- (void)handleResetButtonTap;
- (void)handleStartStopButtonTap;
- (void)handleTapGestureRecognizer:(id)a3;
- (void)layoutSubviews;
- (void)removeAllTransitionViews;
- (void)setChronometerHandsParentView:(id)a3;
- (void)setDialTickView:(id)a3;
- (void)setDiameter:(double)a3;
- (void)setIsChronoMode:(BOOL)a3 completionBlock:(id)a4 animated:(BOOL)a5;
- (void)setIsEditing:(BOOL)a3;
- (void)setPalette:(id)a3;
- (void)setStopwatchModel:(id)a3;
- (void)setStopwatchModel:(id)a3 animating:(BOOL)a4;
- (void)setTimeScale:(unint64_t)a3;
- (void)setupForChronographModeWithCompletionBlock:(id)a3;
- (void)setupForTimeModeWithCompletionBlock:(id)a3 animated:(BOOL)a4;
- (void)startAnimatingBottomSubdialHand;
- (void)startAnimatingHands;
- (void)startStopTachymeterUnitUpdates:(BOOL)a3;
- (void)stopAnimatingBottomSubdialHand;
- (void)stopAnimatingHands;
- (void)stopHandAnimation:(id)a3;
- (void)switchBottomSubDialView;
- (void)switchDialViewForTimeScale:(unint64_t)a3 setTopLabel:(BOOL)a4;
- (void)switchLeftSubDialViewsForTimeScale:(unint64_t)a3;
- (void)switchRightSubDialViewsForTimeScale:(unint64_t)a3;
- (void)switchSubDialViewsForTimeScale:(unint64_t)a3;
- (void)updateBottomSubdialHandPosition;
- (void)updateCenterLabelColor;
- (void)updateCenterLabelColorForChronometerMode;
- (void)updateCenterLabelColorForTimeMode;
- (void)updateChronoLargeHandsCenterPoint;
- (void)updateClockHandsPositionAnimated:(BOOL)a3;
- (void)updateHandsPosition;
- (void)updateInnerCircleColor;
- (void)updateSecondaryHandVisibility;
- (void)updateStartStopButtonColor;
- (void)updateSubdialViewFrames;
@end

@implementation NTKAlaskanChronographView

- (NTKAlaskanChronographView)initWithFrame:(CGRect)a3
{
  v35.receiver = self;
  v35.super_class = NTKAlaskanChronographView;
  v3 = [(NTKAlaskanChronographView *)&v35 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    v5 = [v4 device];
    device = v3->_device;
    v3->_device = v5;

    v3->_updateFidelity = 0;
    v7 = objc_alloc_init(NTKAlaskanDialViewFactory);
    dialViewFactory = v3->_dialViewFactory;
    v3->_dialViewFactory = v7;

    v9 = objc_alloc_init(NTKAlaskanSubdialViewFactory);
    subdialViewFactory = v3->_subdialViewFactory;
    v3->_subdialViewFactory = v9;

    v11 = [UIColor colorWithWhite:0.5 alpha:1.0];
    topLabelPrefixColor = v3->_topLabelPrefixColor;
    v3->_topLabelPrefixColor = v11;

    v13 = +[UIColor whiteColor];
    topLabelSuffixColor = v3->_topLabelSuffixColor;
    v3->_topLabelSuffixColor = v13;

    v15 = [(NTKAlaskanChronographView *)v3 layerDisabledActions];
    v16 = objc_opt_new();
    outerBackgroundCircle = v3->_outerBackgroundCircle;
    v3->_outerBackgroundCircle = v16;

    [(CALayer *)v3->_outerBackgroundCircle setMasksToBounds:1];
    [(CALayer *)v3->_outerBackgroundCircle setActions:v15];
    v18 = [(NTKAlaskanChronographView *)v3 layer];
    [v18 addSublayer:v3->_outerBackgroundCircle];

    v19 = objc_opt_new();
    innerBackgroundCircle = v3->_innerBackgroundCircle;
    v3->_innerBackgroundCircle = v19;

    [(CALayer *)v3->_innerBackgroundCircle setMasksToBounds:1];
    [(CALayer *)v3->_innerBackgroundCircle setActions:v15];
    v21 = [(NTKAlaskanChronographView *)v3 layer];
    [v21 addSublayer:v3->_innerBackgroundCircle];

    v22 = [(NTKAlaskanChronographView *)v3 device];
    v23 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:v22];

    v24 = [NTKHandView alloc];
    v25 = [(NTKAlaskanChronographView *)v3 device];
    v26 = [v24 initWithConfiguration:v23 forDevice:v25 maskedShadow:1];
    primaryHandView = v3->_primaryHandView;
    v3->_primaryHandView = v26;

    [(NTKHandView *)v3->_primaryHandView anchorPointFromConfiguration];
    v29 = v28;
    v31 = v30;
    v32 = [(NTKHandView *)v3->_primaryHandView layer];
    [v32 setAnchorPoint:{v29, v31}];

    [(NTKAlaskanChronographView *)v3 addSubview:v3->_primaryHandView];
    v33 = [[UITapGestureRecognizer alloc] initWithTarget:v3 action:"handleTapGestureRecognizer:"];
    [(NTKAlaskanChronographView *)v3 addGestureRecognizer:v33];
    [(NTKAlaskanChronographView *)v3 setupForTimeMode];
    [(NTKAlaskanChronographView *)v3 setStopwatchModel:0];
  }

  return v3;
}

- (id)layerDisabledActions
{
  v2 = +[NSNull null];
  v5[0] = @"contents";
  v5[1] = @"backgroundColor";
  v6[0] = v2;
  v6[1] = v2;
  v5[2] = @"transform";
  v5[3] = @"bounds";
  v6[2] = v2;
  v6[3] = v2;
  v5[4] = @"position";
  v5[5] = @"opacity";
  v6[4] = v2;
  v6[5] = v2;
  v5[6] = @"mask";
  v6[6] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:7];

  return v3;
}

- (void)dealloc
{
  [(NTKHandView *)self->_primaryHandView removeFromSuperview];
  [(NTKHandView *)self->_secondaryHandView removeFromSuperview];
  if (self->_tachymeterTimerToken)
  {
    v3 = +[CLKClockTimer sharedInstance];
    [v3 stopUpdatesForToken:self->_tachymeterTimerToken];
  }

  v4.receiver = self;
  v4.super_class = NTKAlaskanChronographView;
  [(NTKAlaskanChronographView *)&v4 dealloc];
}

- (void)setIsEditing:(BOOL)a3
{
  v3 = a3;
  self->_isEditing = a3;
  [(CLKUIColoringLabel *)self->_topLabel setHidden:?];
  [(NTKAlaskanChronoButton *)self->_resetButton setHidden:v3];
  [(NTKAlaskanChronoButton *)self->_startStopButton setHidden:v3];
  if (!v3)
  {
    [(CLKUIColoringLabel *)self->_transitionCenterLabel removeFromSuperview];
    transitionCenterLabel = self->_transitionCenterLabel;
    self->_transitionCenterLabel = 0;
  }
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_originalPalette, a3);
  v5 = a3;
  [(NTKAlaskanChronographView *)self applyPalette:v5];
}

- (void)applyPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  v5 = a3;
  [(NTKAlaskanDialViewFactory *)self->_dialViewFactory setPalette:v5];
  [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory setPalette:v5];
  v6 = [(NTKChronographProFacePalette *)self->_palette ring];
  -[CALayer setBackgroundColor:](self->_outerBackgroundCircle, "setBackgroundColor:", [v6 CGColor]);

  v7 = [(NTKChronographProFacePalette *)self->_palette lapHand1];
  [(NTKHandView *)self->_primaryHandView setTintColor:v7];

  v8 = [(NTKChronographProFacePalette *)self->_palette lapHand2];
  [(NTKHandView *)self->_secondaryHandView setTintColor:v8];

  v9 = [(NTKChronographProFacePalette *)self->_palette resetButton];
  [(NTKAlaskanChronoButton *)self->_resetButton setTintColor:v9];

  v10 = [(NTKAlaskanChronographView *)self dialTickView];
  [v10 updateWithColorPalette:self->_palette];

  [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView updateWithColorPalette:self->_palette];
  [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView updateWithColorPalette:self->_palette];
  [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView updateWithColorPalette:self->_palette];

  [(NTKAlaskanChronographView *)self updateStartStopButtonColor];
  [(NTKAlaskanChronographView *)self updateInnerCircleColor];

  [(NTKAlaskanChronographView *)self updateCenterLabelColor];
}

- (void)updateStartStopButtonColor
{
  v3 = [(NTKAlaskanChronographView *)self isRunning];
  palette = self->_palette;
  if (v3)
  {
    v6 = [(NTKChronographProFacePalette *)palette stopButton];
    v5 = [(NTKAlaskanChronographView *)self startStopButton];
    [v5 setTintColor:v6];
  }

  else
  {
    v6 = [(NTKChronographProFacePalette *)palette startButton];
    [(NTKAlaskanChronoButton *)self->_startStopButton setTintColor:?];
  }
}

- (void)updateInnerCircleColor
{
  isChronoMode = self->_isChronoMode;
  palette = self->_palette;
  if (isChronoMode)
  {
    [(NTKChronographProFacePalette *)palette backgroundChronometerMode];
  }

  else
  {
    [(NTKChronographProFacePalette *)palette backgroundTimeMode];
  }
  v6 = ;
  v5 = v6;
  -[CALayer setBackgroundColor:](self->_innerBackgroundCircle, "setBackgroundColor:", [v6 CGColor]);
}

- (void)updateCenterLabelColor
{
  if (self->_isChronoMode)
  {
    [(NTKAlaskanChronographView *)self updateCenterLabelColorForChronometerMode];
  }

  else
  {
    [(NTKAlaskanChronographView *)self updateCenterLabelColorForTimeMode];
  }
}

- (void)updateCenterLabelColorForTimeMode
{
  v4 = [(NTKChronographProFacePalette *)self->_palette timeLapsedInactiveLabel];
  v3 = [(NTKAlaskanChronographView *)self centerLabel];
  [v3 setTextColor:v4];

  if ([(NTKAlaskanChronographView *)self isEditing])
  {
    [(CLKUIColoringLabel *)self->_transitionCenterLabel setTextColor:v4];
  }
}

- (void)updateCenterLabelColorForChronometerMode
{
  v4 = [(NTKChronographProFacePalette *)self->_palette timeLapsedLabel];
  v3 = [(NTKAlaskanChronographView *)self centerLabel];
  [v3 setTextColor:v4];

  if ([(NTKAlaskanChronographView *)self isEditing])
  {
    [(CLKUIColoringLabel *)self->_transitionCenterLabel setTextColor:v4];
  }
}

- (NTKHandView)secondaryHandView
{
  secondaryHandView = self->_secondaryHandView;
  if (!secondaryHandView)
  {
    v4 = [(NTKAlaskanChronographView *)self device];
    v5 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:v4];

    v6 = [NTKHandView alloc];
    v7 = [(NTKAlaskanChronographView *)self device];
    v8 = [v6 initWithConfiguration:v5 forDevice:v7 maskedShadow:1];
    v9 = self->_secondaryHandView;
    self->_secondaryHandView = v8;

    [(NTKHandView *)self->_secondaryHandView anchorPointFromConfiguration];
    v11 = v10;
    v13 = v12;
    v14 = [(NTKHandView *)self->_secondaryHandView layer];
    [v14 setAnchorPoint:{v11, v13}];

    v15 = [(NTKChronographProFacePalette *)self->_palette lapHand2];
    [(NTKHandView *)self->_secondaryHandView setTintColor:v15];

    v16 = [(NTKAlaskanChronographView *)self chronometerHandsParentView];
    [v16 addSubview:self->_secondaryHandView];

    secondaryHandView = self->_secondaryHandView;
  }

  return secondaryHandView;
}

- (NTKAlaskanChronoButton)resetButton
{
  resetButton = self->_resetButton;
  if (!resetButton)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NTKAlaskanChronographView *)self device:0];
    sub_1CDA8(v4, &v10);

    v5 = [NTKAlaskanChronoButton alloc];
    v6 = [(NTKAlaskanButton *)v5 initWithFrame:0.0, 0.0, *&v11, *&v11];
    v7 = self->_resetButton;
    self->_resetButton = v6;

    v8 = [(NTKChronographProFacePalette *)self->_palette resetButton];
    [(NTKAlaskanChronoButton *)self->_resetButton setTintColor:v8];

    [(NTKAlaskanChronoButton *)self->_resetButton addTarget:self action:"handleResetButtonTap" forControlEvents:64];
    [(NTKAlaskanChronoButton *)self->_resetButton setHidden:1];
    [(NTKAlaskanChronographView *)self addSubview:self->_resetButton];
    resetButton = self->_resetButton;
  }

  return resetButton;
}

- (NTKAlaskanChronoButton)startStopButton
{
  startStopButton = self->_startStopButton;
  if (!startStopButton)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NTKAlaskanChronographView *)self device:0];
    sub_1CDA8(v4, &v10);

    v5 = [NTKAlaskanChronoButton alloc];
    v6 = [(NTKAlaskanButton *)v5 initWithFrame:0.0, 0.0, *&v11, *&v11];
    v7 = self->_startStopButton;
    self->_startStopButton = v6;

    v8 = [(NTKChronographProFacePalette *)self->_palette startButton];
    [(NTKAlaskanChronoButton *)self->_startStopButton setTintColor:v8];

    [(NTKAlaskanChronoButton *)self->_startStopButton addTarget:self action:"handleStartStopButtonTap" forControlEvents:64];
    [(NTKAlaskanChronoButton *)self->_startStopButton setHidden:1];
    [(NTKAlaskanChronographView *)self addSubview:self->_startStopButton];
    startStopButton = self->_startStopButton;
  }

  return startStopButton;
}

- (CLKUIColoringLabel)topLabel
{
  topLabel = self->_topLabel;
  if (!topLabel)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v4 = [(NTKAlaskanChronographView *)self device];
    sub_1CDA8(v4, v25);

    v5 = [CLKUIColoringLabel labelWithOptions:0];
    v6 = self->_topLabel;
    self->_topLabel = v5;

    v7 = +[UIColor whiteColor];
    [(CLKUIColoringLabel *)self->_topLabel setTextColor:v7];

    [(CLKUIColoringLabel *)self->_topLabel setUsesTextProviderTintColoring:1];
    v8 = *(v25 + 1);
    v9 = [CLKFont compactSoftFontOfSize:*(v25 + 1) weight:UIFontWeightSemibold];
    v10 = [v9 fontDescriptor];
    v30[0] = UIFontFeatureTypeIdentifierKey;
    v30[1] = UIFontFeatureSelectorIdentifierKey;
    v31[0] = &off_3A9F8;
    v31[1] = &off_3AA10;
    v11 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v27 = v11;
    v28 = UIFontDescriptorFeatureSettingsAttribute;
    v12 = [NSArray arrayWithObjects:&v27 count:1];
    v29 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v14 = [v10 fontDescriptorByAddingAttributes:v13];

    objc_initWeak(&location, self);
    v15 = self->_topLabel;
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_188B0;
    v22 = &unk_392C0;
    objc_copyWeak(&v23, &location);
    [(CLKUIColoringLabel *)v15 setNowProvider:&v19];
    v16 = [CLKFont fontWithDescriptor:v14 size:v8, v19, v20, v21, v22];
    [(CLKUIColoringLabel *)self->_topLabel setFont:v16];

    [(CLKUIColoringLabel *)self->_topLabel setTextAlignment:1];
    v17 = +[UIColor blackColor];
    [(CLKUIColoringLabel *)self->_topLabel setBackgroundColor:v17];

    [(CLKUIColoringLabel *)self->_topLabel setHidden:[(NTKAlaskanChronographView *)self isEditing]];
    [(NTKAlaskanChronographView *)self addSubview:self->_topLabel];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);

    topLabel = self->_topLabel;
  }

  return topLabel;
}

- (CLKUIColoringLabel)centerLabel
{
  centerLabel = self->_centerLabel;
  if (!centerLabel)
  {
    v4 = [(NTKAlaskanChronographView *)self _newCenterLabel];
    v5 = self->_centerLabel;
    self->_centerLabel = v4;

    v6 = +[CALayer layer];
    centerLabelBackgroundLayer = self->_centerLabelBackgroundLayer;
    self->_centerLabelBackgroundLayer = v6;

    v8 = [(NTKAlaskanChronographView *)self layerDisabledActions];
    [(CALayer *)self->_centerLabelBackgroundLayer setActions:v8];

    v9 = [(NTKAlaskanChronographView *)self layer];
    [v9 addSublayer:self->_centerLabelBackgroundLayer];

    objc_initWeak(&location, self);
    v10 = self->_centerLabel;
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_18A7C;
    v15 = &unk_392C0;
    objc_copyWeak(&v16, &location);
    [(CLKUIColoringLabel *)v10 setNowProvider:&v12];
    [(NTKAlaskanChronographView *)self addSubview:self->_centerLabel, v12, v13, v14, v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    centerLabel = self->_centerLabel;
  }

  return centerLabel;
}

- (id)_newCenterLabel
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [(NTKAlaskanChronographView *)self device:0];
  sub_1CDA8(v2, &v7);

  v3 = [CLKUIColoringLabel labelWithOptions:0];
  v4 = [CLKFont compactSoftFontOfSize:*&v8 weight:UIFontWeightSemibold];
  v5 = [v4 CLKFontWithMonospacedNumbers];
  [v3 setFont:v5];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:1];
  return v3;
}

- (void)setDialTickView:(id)a3
{
  v5 = a3;
  dialTickView = self->_dialTickView;
  if (dialTickView != v5)
  {
    [(NTKAlaskanChronoDialView *)dialTickView removeFromSuperview];
    objc_storeStrong(&self->_dialTickView, a3);
    [(NTKAlaskanChronographView *)self insertSubview:self->_dialTickView atIndex:1];
    v7 = self->_dialTickView;
    [(NTKAlaskanChronographView *)self bounds];
    dialTickView = [(NTKAlaskanChronoDialView *)v7 ntk_setBoundsAndPositionFromFrame:?];
  }

  _objc_release_x1(dialTickView);
}

- (void)setChronometerHandsParentView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_chronometerHandsParentView, v4);
  v5 = [(NTKAlaskanChronographView *)self primaryHandView];
  [v5 removeFromSuperview];

  v6 = [(NTKAlaskanChronographView *)self primaryHandView];
  [v4 addSubview:v6];

  v7 = [(NTKAlaskanChronographView *)self secondaryHandView];
  [v7 removeFromSuperview];

  v8 = [(NTKAlaskanChronographView *)self secondaryHandView];
  [v4 addSubview:v8];

  [(NTKAlaskanChronographView *)self updateSecondaryHandVisibility];

  [(NTKAlaskanChronographView *)self updateChronoLargeHandsCenterPoint];
}

- (void)setStopwatchModel:(id)a3
{
  v8 = a3;
  v4 = [(NTKAlaskanChronographView *)self primaryHandView];
  v5 = [v4 layer];
  v6 = [v5 animationForKey:@"NTKAlaskanChronographHandsAnimationKey"];
  v7 = v6 != 0;

  [(NTKAlaskanChronographView *)self setStopwatchModel:v8 animating:v7];
}

- (void)setStopwatchModel:(id)a3 animating:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  objc_storeStrong(&self->_stopwatchModel, a3);
  if (v8 && ([v8 isRunning] & 1) != 0 || objc_msgSend(v8, "isPaused"))
  {
    [(NTKAlaskanChronographView *)self setIsChronoMode:1];
  }

  if ([(NTKAlaskanChronographView *)self isChronoMode])
  {
    [(NTKAlaskanChronographView *)self updateSecondaryHandVisibility];
  }

  v7 = [(NTKAlaskanChronographView *)self isRunning];
  [(NTKAlaskanChronographView *)self stopAnimatingHands];
  if (v7 && v4)
  {
    [(NTKAlaskanChronographView *)self startAnimatingHands];
  }

  else
  {
    [(NTKAlaskanChronographView *)self updateHandsPosition];
  }

  if (v8)
  {
    [(NTKAlaskanChronographView *)self updateStartStopButtonColor];
  }

  [(NTKAlaskanChronographView *)self _updateElapsedTimeLabel];
  [(NTKAlaskanChronographView *)self enableDisableResetButton];
}

- (void)updateClockHandsPositionAnimated:(BOOL)a3
{
  v3 = a3;
  [(NTKAlaskanChronographView *)self stopAnimatingBottomSubdialHand];
  if (v3)
  {

    [(NTKAlaskanChronographView *)self startAnimatingBottomSubdialHand];
  }

  else
  {

    [(NTKAlaskanChronographView *)self updateBottomSubdialHandPosition];
  }
}

- (id)currentClockDate
{
  clockOverrideDate = self->_clockOverrideDate;
  if (clockOverrideDate)
  {
    v3 = clockOverrideDate;
  }

  else
  {
    v3 = +[NSDate date];
  }

  return v3;
}

- (id)currentStopwatchDate
{
  stopwatchOverrideDate = self->_stopwatchOverrideDate;
  if (stopwatchOverrideDate)
  {
    v3 = stopwatchOverrideDate;
  }

  else
  {
    v3 = +[NSDate date];
  }

  return v3;
}

- (void)applyTransitionFromTimeScale:(unint64_t)a3 toTimeScale:(unint64_t)a4 fraction:(double)a5
{
  if (a3 == a4)
  {

    [(NTKAlaskanChronographView *)self setTimeScale:a5];
    return;
  }

  v9 = [(NTKAlaskanChronographView *)self dialTickView];
  v10 = [v9 tag];

  if (v10 != a3)
  {
    [(NTKAlaskanChronographView *)self switchDialViewForTimeScale:a3];
  }

  if (self->_transitionDialTickView)
  {
    v11 = [(NTKAlaskanChronographView *)self transitionDialTickView];
    v12 = [v11 tag];

    if (v12 == a4)
    {
      goto LABEL_12;
    }

    transitionDialTickView = self->_transitionDialTickView;
  }

  else
  {
    transitionDialTickView = 0;
  }

  [(NTKAlaskanChronoDialView *)transitionDialTickView removeFromSuperview];
  v14 = [(NTKAlaskanChronographView *)self dialViewForTimeScale:a4];
  v15 = self->_transitionDialTickView;
  self->_transitionDialTickView = v14;

  [(NTKAlaskanChronoDialView *)self->_transitionDialTickView setTag:a4];
  [(NTKAlaskanChronographView *)self insertSubview:self->_transitionDialTickView aboveSubview:self->_dialTickView];
  v16 = self->_transitionDialTickView;
  [(NTKAlaskanChronoDialView *)self->_dialTickView bounds];
  [(NTKAlaskanChronoDialView *)v16 ntk_setBoundsAndPositionFromFrame:?];
LABEL_12:
  v54 = [(NTKAlaskanChronographView *)self dialTickView];
  v17 = [(NTKAlaskanChronographView *)self transitionDialTickView];
  [(NTKAlaskanChronographView *)self applyTransitionFromView:v54 toView:v17 fraction:a5];
  v18 = [(NTKAlaskanChronographView *)self leftSubdialViewForTimeScale:a3];
  v19 = [v18 tag];

  v20 = [(NTKAlaskanChronographView *)self leftSubdialViewForTimeScale:a4];
  v21 = [v20 tag];

  v22 = [(NTKAlaskanChronographView *)self leftSubdialView];
  v23 = [v22 tag];

  if (v23 != v19)
  {
    [(NTKAlaskanChronographView *)self switchLeftSubDialViewsForTimeScale:a3];
  }

  if (v19 == v21)
  {
    [(NTKAlaskanChronographView *)self _cleanupSubdialView:self->_leftSubdialView];
    [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView removeFromSuperview];
    transitionLeftSubdialView = self->_transitionLeftSubdialView;
    self->_transitionLeftSubdialView = 0;

    goto LABEL_21;
  }

  v25 = self->_transitionLeftSubdialView;
  if (!v25)
  {
    goto LABEL_19;
  }

  if ([(NTKAlaskanChronoSubdialView *)v25 tag]!= v21)
  {
    v25 = self->_transitionLeftSubdialView;
LABEL_19:
    [(NTKAlaskanChronoSubdialView *)v25 removeFromSuperview];
    v26 = [(NTKAlaskanChronographView *)self leftSubdialViewForTimeScale:a4];
    v27 = self->_transitionLeftSubdialView;
    self->_transitionLeftSubdialView = v26;

    [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView setTag:v21];
    [(NTKAlaskanChronographView *)self insertSubview:self->_transitionLeftSubdialView aboveSubview:self->_leftSubdialView];
    v28 = self->_transitionLeftSubdialView;
    [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView frame];
    [(NTKAlaskanChronoSubdialView *)v28 ntk_setBoundsAndPositionFromFrame:?];
    v29 = +[UIColor clearColor];
    [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView setBackgroundColor:v29];

    v30 = [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView analogHand];
    [v30 setHidden:1];
  }

  v31 = [(NTKAlaskanChronographView *)self leftSubdialView];
  v32 = [v31 markersView];

  v33 = [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView markersView];

  [(NTKAlaskanChronographView *)self applyTransitionFromView:v32 toView:v33 fraction:a5];
  v34 = [(NTKAlaskanChronographView *)self leftSubdialView];
  v54 = [v34 tickView];

  v17 = [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView tickView];

  [(NTKAlaskanChronographView *)self applyTransitionFromView:v54 toView:v17 fraction:a5];
LABEL_21:
  v35 = [(NTKAlaskanChronographView *)self rightSubdialViewForTimeScale:a3];
  v36 = [v35 tag];

  v37 = [(NTKAlaskanChronographView *)self rightSubdialViewForTimeScale:a4];
  v38 = [v37 tag];

  v39 = [(NTKAlaskanChronographView *)self rightSubdialView];
  v40 = [v39 tag];

  if (v40 != v36)
  {
    [(NTKAlaskanChronographView *)self switchRightSubDialViewsForTimeScale:a3];
  }

  if (v36 == v38)
  {
    [(NTKAlaskanChronographView *)self _cleanupSubdialView:self->_rightSubdialView];
    [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView removeFromSuperview];
    transitionRightSubdialView = self->_transitionRightSubdialView;
    self->_transitionRightSubdialView = 0;

    goto LABEL_30;
  }

  v42 = self->_transitionRightSubdialView;
  if (!v42)
  {
    goto LABEL_28;
  }

  if ([(NTKAlaskanChronoSubdialView *)v42 tag]!= v38)
  {
    v42 = self->_transitionRightSubdialView;
LABEL_28:
    [(NTKAlaskanChronoSubdialView *)v42 removeFromSuperview];
    v43 = [(NTKAlaskanChronographView *)self rightSubdialViewForTimeScale:a4];
    v44 = self->_transitionRightSubdialView;
    self->_transitionRightSubdialView = v43;

    [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView setTag:v38];
    [(NTKAlaskanChronographView *)self insertSubview:self->_transitionRightSubdialView aboveSubview:self->_rightSubdialView];
    v45 = self->_transitionRightSubdialView;
    [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView frame];
    [(NTKAlaskanChronoSubdialView *)v45 ntk_setBoundsAndPositionFromFrame:?];
    v46 = +[UIColor clearColor];
    [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView setBackgroundColor:v46];

    v47 = [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView analogHand];
    [v47 setHidden:1];
  }

  v48 = [(NTKAlaskanChronographView *)self rightSubdialView];
  v49 = [v48 markersView];

  v50 = [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView markersView];

  [(NTKAlaskanChronographView *)self applyTransitionFromView:v49 toView:v50 fraction:a5];
  v51 = [(NTKAlaskanChronographView *)self rightSubdialView];
  v54 = [v51 tickView];

  v17 = [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView tickView];

  [(NTKAlaskanChronographView *)self applyTransitionFromView:v54 toView:v17 fraction:a5];
LABEL_30:
  if (![(NTKAlaskanChronographView *)self isEditing])
  {
    if (a5 >= 0.5)
    {
      [(NTKAlaskanChronographView *)self _updateElapsedTimeLabel];
      if (a3)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v52 = [(NTKAlaskanChronographView *)self titleForTimeScale:a3];
    v53 = [(NTKAlaskanChronographView *)self topLabel];
    [v53 setText:v52];
  }

  if (!a3)
  {
LABEL_34:
    [(NTKAlaskanChronographView *)self applyTransitionFromTimeModeToChronometerModeWithfraction:a5];
  }

LABEL_35:
}

- (void)_cleanupSubdialView:(id)a3
{
  v3 = a3;
  v4 = [v3 markersView];
  [v4 setAlpha:1.0];

  v5 = [v3 tickView];
  [v5 setAlpha:1.0];

  v6 = [v3 markersView];
  v9 = *&CGAffineTransformIdentity.c;
  v11 = *&CGAffineTransformIdentity.a;
  v10 = v11;
  v12 = v9;
  v13 = *&CGAffineTransformIdentity.tx;
  v8 = v13;
  [v6 setTransform:&v11];

  v7 = [v3 tickView];

  v11 = v10;
  v12 = v9;
  v13 = v8;
  [v7 setTransform:&v11];
}

- (void)applyTransitionFromTimeModeToChronometerModeWithfraction:(double)a3
{
  CLKCompressFraction();
  v6 = v5;
  CLKCompressFraction();
  v8 = v7;
  v9 = [(NTKChronographProFacePalette *)self->_palette backgroundTimeMode];
  v10 = [(NTKChronographProFacePalette *)self->_palette backgroundChronometerMode];
  v11 = NTKInterpolateBetweenColors();
  -[CALayer setBackgroundColor:](self->_innerBackgroundCircle, "setBackgroundColor:", [v11 CGColor]);

  if ([(NTKAlaskanChronographView *)self isEditing])
  {
    transitionCenterLabel = self->_transitionCenterLabel;
    if (!transitionCenterLabel)
    {
      v13 = [(NTKAlaskanChronographView *)self _newCenterLabel];
      v14 = self->_transitionCenterLabel;
      self->_transitionCenterLabel = v13;

      [(CLKUIColoringLabel *)self->_transitionCenterLabel setAlpha:0.0];
      [(NTKAlaskanChronographView *)self _updateElapsedTimeLabel];
      [(NTKAlaskanChronographView *)self addSubview:self->_transitionCenterLabel];
      transitionCenterLabel = self->_transitionCenterLabel;
    }

    [(NTKAlaskanChronographView *)self applyTransitionFromView:self->_centerLabel toView:transitionCenterLabel fraction:a3];
  }

  if (a3 >= 0.5)
  {
    [(NTKAlaskanChronographView *)self updateCenterLabelColorForChronometerMode];
    if (![(NTKAlaskanChronographView *)self isEditing])
    {
      v18 = [(NTKAlaskanChronographView *)self centerLabel];
      [v18 setAlpha:v8];
    }

    v19 = [(NTKAlaskanChronographView *)self primaryHandView];
    [v19 setHidden:0];

    CLKInterpolateBetweenFloatsClipped();
    v21 = v20;
    v17 = [(NTKAlaskanChronographView *)self primaryHandView];
    [v17 setAlpha:v21];
  }

  else
  {
    [(NTKAlaskanChronographView *)self updateCenterLabelColorForTimeMode];
    if (![(NTKAlaskanChronographView *)self isEditing])
    {
      v15 = [(NTKAlaskanChronographView *)self centerLabel];
      [v15 setAlpha:1.0 - v6];
    }

    v16 = [(NTKAlaskanChronographView *)self primaryHandView];
    [v16 setAlpha:0.0];

    v17 = [(NTKAlaskanChronographView *)self primaryHandView];
    [v17 setHidden:1];
  }

  if (![(NTKAlaskanChronographView *)self isEditing])
  {
    [(NTKAlaskanChronoButton *)self->_resetButton setHidden:0];
    [(NTKAlaskanChronoButton *)self->_startStopButton setHidden:0];
    [(NTKAlaskanChronographView *)self resetButtonAlpha];
    CLKInterpolateBetweenFloatsClipped();
    [(NTKAlaskanChronoButton *)self->_resetButton setAlpha:?];
    CLKInterpolateBetweenFloatsClipped();
    [(NTKAlaskanChronoButton *)self->_startStopButton setAlpha:?];
  }

  CLKInterpolateBetweenFloatsClipped();
  topLabel = self->_topLabel;

  [(CLKUIColoringLabel *)topLabel setAlpha:?];
}

- (double)startStopButtonAlpha
{
  v2 = [(NTKAlaskanChronographView *)self isChronoMode];
  result = 0.0;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

- (double)resetButtonAlpha
{
  v3 = [(NTKAlaskanChronographView *)self isChronoMode];
  result = 0.0;
  if (v3)
  {
    result = 1.0;
    if (self->_timeScale == 1)
    {
      v5 = [(NTKAlaskanChronographView *)self stopwatchModel];
      v6 = [v5 isRunning];

      result = 0.3;
      if ((v6 & 1) == 0)
      {
        return 1.0;
      }
    }
  }

  return result;
}

- (void)applyTransitionFromView:(id)a3 toView:(id)a4 fraction:(double)a5
{
  v6 = a4;
  v7 = a3;
  CLKCompressFraction();
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  CGAffineTransformMakeScale(&v18, v9, v9);
  v17 = v18;
  [v7 setTransform:&v17];
  [v7 setAlpha:v11];

  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  CGAffineTransformMakeScale(&v16, v13, v13);
  v17 = v16;
  [v6 setTransform:&v17];
  [v6 setAlpha:v15];
}

- (void)setTimeScale:(unint64_t)a3
{
  v5 = [(NTKAlaskanChronographView *)self transitionDialTickView];

  if (v5)
  {
    [(NTKAlaskanChronographView *)self removeAllTransitionViews];
  }

  else if (self->_timeScale == a3)
  {
    return;
  }

  self->_timeScale = a3;

  [(NTKAlaskanChronographView *)self _setUpUIForTimeScale:a3];
}

- (void)_setUpUIForTimeScale:(unint64_t)a3
{
  [(NTKAlaskanChronographView *)self updateSecondaryHandVisibility];
  [(NTKAlaskanChronographView *)self switchSubDialViewsForTimeScale:a3];
  [(NTKAlaskanChronographView *)self _updateElapsedTimeLabel];
  if ([(NTKAlaskanChronographView *)self isChronoMode])
  {
    [(NTKAlaskanChronographView *)self switchDialViewForTimeScale:a3];
    [(NTKAlaskanChronographView *)self enableDisableResetButton];
    [(NTKAlaskanChronographView *)self setStopwatchModel:self->_stopwatchModel];
  }

  v5 = [(NTKAlaskanChronographView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(NTKAlaskanChronographView *)self delegate];
    [v7 alaskanChronographView:self didChangeTimeScale:a3];
  }
}

- (void)cleanUpTimeScaleTransition
{
  [(NTKAlaskanChronographView *)self removeAllTransitionViews];
  timeScale = self->_timeScale;

  [(NTKAlaskanChronographView *)self _setUpUIForTimeScale:timeScale];
}

- (void)removeAllTransitionViews
{
  v3 = [(NTKAlaskanChronographView *)self transitionDialTickView];
  [v3 removeFromSuperview];

  [(NTKAlaskanChronographView *)self setTransitionDialTickView:0];
  v4 = [(NTKAlaskanChronographView *)self transitionLeftSubdialView];
  [v4 removeFromSuperview];

  [(NTKAlaskanChronographView *)self setTransitionLeftSubdialView:0];
  v5 = [(NTKAlaskanChronographView *)self transitionRightSubdialView];
  [v5 removeFromSuperview];

  [(NTKAlaskanChronographView *)self setTransitionRightSubdialView:0];
}

- (void)setIsChronoMode:(BOOL)a3 completionBlock:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  if (self->_isChronoMode != v6)
  {
    self->_isChronoMode = v6;
    if (v6)
    {
      v8 = [(NTKAlaskanChronographView *)self setupForChronographModeWithCompletionBlock:v8];
    }

    else
    {
      v8 = [(NTKAlaskanChronographView *)self setupForTimeModeWithCompletionBlock:v8 animated:v5];
    }
  }

  _objc_release_x1(v8);
}

- (void)setupForChronographModeWithCompletionBlock:(id)a3
{
  timeScale = self->_timeScale;
  v5 = a3;
  [(NTKAlaskanChronographView *)self switchDialViewForTimeScale:timeScale];
  [(NTKAlaskanChronographView *)self updateInnerCircleColor];
  [(NTKAlaskanChronographView *)self setStopwatchModel:self->_stopwatchModel animating:0];
  [(NTKAlaskanChronographView *)self updateCenterLabelColor];
  v6 = [(NTKAlaskanChronographView *)self resetButton];
  [v6 setAlpha:1.0];

  v7 = [(NTKAlaskanChronographView *)self startStopButton];
  [v7 setAlpha:1.0];

  v8 = [(NTKAlaskanChronographView *)self topLabel];
  [(NTKAlaskanChronographView *)self switchSubDialViewsForTimeScale:self->_timeScale];
  [(NTKAlaskanChronographView *)self updateSecondaryHandVisibility];
  [(NTKAlaskanChronographView *)self removeAllTransitionViews];
  v9 = [(NTKAlaskanChronographView *)self primaryHandView];
  [v9 setHidden:0];

  v10 = [(NTKAlaskanChronographView *)self primaryHandView];
  [v10 setAlpha:1.0];

  v11 = [(NTKAlaskanChronographView *)self delegate];
  [v11 alaskanChronographViewDidEnterChronometerMode:self completionBlock:v5];
}

- (void)setupForTimeModeWithCompletionBlock:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  dialViewFactory = self->_dialViewFactory;
  v7 = a3;
  v8 = [(NTKAlaskanDialViewFactory *)dialViewFactory _12HourDialView];
  [(NTKAlaskanChronographView *)self setDialTickView:v8];

  v9 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
  v10 = [(NTKAlaskanChronographView *)self centerLabel];
  [v10 setText:v9];

  [(NTKAlaskanChronographView *)self updateInnerCircleColor];
  [(NTKAlaskanChronographView *)self updateCenterLabelColor];
  [(NTKAlaskanChronoButton *)self->_resetButton setAlpha:0.0];
  [(NTKAlaskanChronoButton *)self->_startStopButton setAlpha:0.0];
  [(CLKUIColoringLabel *)self->_topLabel removeFromSuperview];
  topLabel = self->_topLabel;
  self->_topLabel = 0;

  [(NTKAlaskanChronographView *)self switchSubDialViewsForTimeScale:self->_timeScale];
  [(NTKAlaskanChronographView *)self updateSecondaryHandVisibility];
  [(NTKAlaskanChronographView *)self removeAllTransitionViews];
  v12 = [(NTKAlaskanChronographView *)self primaryHandView];
  [v12 setHidden:1];

  v13 = [(NTKAlaskanChronographView *)self primaryHandView];
  [v13 setAlpha:0.0];

  v14 = [(NTKAlaskanChronographView *)self delegate];
  [v14 alaskanChronographViewDidExitChronometerMode:self completionBlock:v7 animated:v4];
}

- (void)switchLeftSubDialViewsForTimeScale:(unint64_t)a3
{
  [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView removeFromSuperview];
  v5 = [(NTKAlaskanChronographView *)self leftSubdialViewForTimeScale:a3];
  leftSubdialView = self->_leftSubdialView;
  self->_leftSubdialView = v5;

  v7 = [(NTKChronographProFacePalette *)self->_palette subdialClockHand];
  v8 = [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView analogHand];
  [v8 setTintColor:v7];

  [(NTKAlaskanChronographView *)self updateHandsPosition];
  [(NTKAlaskanChronographView *)self addSubview:self->_leftSubdialView];

  [(NTKAlaskanChronographView *)self updateSubdialViewFrames];
}

- (void)switchRightSubDialViewsForTimeScale:(unint64_t)a3
{
  [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView removeFromSuperview];
  v5 = [(NTKAlaskanChronographView *)self rightSubdialViewForTimeScale:a3];
  rightSubdialView = self->_rightSubdialView;
  self->_rightSubdialView = v5;

  v7 = [(NTKChronographProFacePalette *)self->_palette subdialClockHand];
  v8 = [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView analogHand];
  [v8 setTintColor:v7];

  [(NTKAlaskanChronographView *)self updateHandsPosition];
  [(NTKAlaskanChronographView *)self addSubview:self->_rightSubdialView];

  [(NTKAlaskanChronographView *)self updateSubdialViewFrames];
}

- (void)switchBottomSubDialView
{
  [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView removeFromSuperview];
  v3 = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _60secondsSubdialView];
  bottomSubdialView = self->_bottomSubdialView;
  self->_bottomSubdialView = v3;

  v5 = [(NTKChronographProFacePalette *)self->_palette subdialClockHand];
  v6 = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
  [v6 setTintColor:v5];

  [(NTKAlaskanChronographView *)self updateBottomSubdialHandPosition];
  [(NTKAlaskanChronographView *)self addSubview:self->_bottomSubdialView];

  [(NTKAlaskanChronographView *)self updateSubdialViewFrames];
}

- (void)switchSubDialViewsForTimeScale:(unint64_t)a3
{
  [(NTKAlaskanChronographView *)self switchLeftSubDialViewsForTimeScale:?];
  [(NTKAlaskanChronographView *)self switchRightSubDialViewsForTimeScale:a3];
  if (!self->_bottomSubdialView)
  {
    v5 = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _60secondsSubdialView];
    bottomSubdialView = self->_bottomSubdialView;
    self->_bottomSubdialView = v5;

    v7 = [(NTKChronographProFacePalette *)self->_palette subdialClockHand];
    v8 = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
    [v8 setTintColor:v7];

    [(NTKAlaskanChronographView *)self addSubview:self->_bottomSubdialView];
  }

  [(NTKAlaskanChronographView *)self updateSubdialViewFrames];
}

- (void)switchDialViewForTimeScale:(unint64_t)a3 setTopLabel:(BOOL)a4
{
  v4 = a4;
  v7 = [(NTKAlaskanChronographView *)self dialViewForTimeScale:?];
  [(NTKAlaskanChronographView *)self setDialTickView:v7];

  v8 = [(NTKAlaskanChronographView *)self dialTickView];
  [v8 setTag:a3];

  if (v4 && ![(NTKAlaskanChronographView *)self isEditing]&& [(NTKAlaskanChronographView *)self isChronoMode])
  {
    v10 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
    v9 = [(NTKAlaskanChronographView *)self topLabel];
    [v9 setText:v10];
  }
}

- (id)dialViewForTimeScale:(unint64_t)a3
{
  dialViewFactory = self->_dialViewFactory;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v4 = [(NTKAlaskanDialViewFactory *)dialViewFactory _tachymeterDialView];
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = [(NTKAlaskanDialViewFactory *)dialViewFactory _60secondsDialView];
      goto LABEL_13;
    }
  }

  else
  {
    switch(a3)
    {
      case 3uLL:
        v4 = [(NTKAlaskanDialViewFactory *)dialViewFactory _30secondsDialView];
        goto LABEL_13;
      case 4uLL:
        v4 = [(NTKAlaskanDialViewFactory *)dialViewFactory _6secondsDialView];
        goto LABEL_13;
      case 5uLL:
        v4 = [(NTKAlaskanDialViewFactory *)dialViewFactory _3secondsDialView];
        goto LABEL_13;
    }
  }

  v4 = [(NTKAlaskanDialViewFactory *)dialViewFactory _12HourDialView];
LABEL_13:

  return v4;
}

- (id)titleForTimeScale:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v4 = @"EDIT_OPTION_LABEL_SHARK_TIME_SCALE_TACHYMETER";
      v5 = @"TACHYMETER";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_13;
      }

      v4 = @"EDIT_OPTION_LABEL_SHARK_TIME_SCALE_60";
      v5 = @"60-SECONDS";
    }
  }

  else
  {
    switch(a3)
    {
      case 3uLL:
        v4 = @"EDIT_OPTION_LABEL_SHARK_TIME_SCALE_30";
        v5 = @"30-SECONDS";
        break;
      case 4uLL:
        v4 = @"EDIT_OPTION_LABEL_SHARK_TIME_SCALE_6";
        v5 = @"6-SECONDS";
        break;
      case 5uLL:
        v4 = @"EDIT_OPTION_LABEL_SHARK_TIME_SCALE_3";
        v5 = @"3-SECONDS";
        break;
      default:
        goto LABEL_13;
    }
  }

  v3 = [NTKAlaskanFaceBundle localizedStringForKey:v4 comment:v5];
LABEL_13:

  return v3;
}

- (id)leftSubdialViewForTimeScale:(unint64_t)timeScale
{
  if (!timeScale)
  {
    timeScale = self->_timeScale;
  }

  if (timeScale > 3 && (timeScale == 4 || timeScale == 5))
  {
    v3 = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _60MinutesSubdialView];
  }

  else
  {
    v3 = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _12HoursSubdialView];
  }

  return v3;
}

- (id)rightSubdialViewForTimeScale:(unint64_t)timeScale
{
  if (!timeScale)
  {
    timeScale = self->_timeScale;
  }

  if (timeScale <= 3)
  {
    if (timeScale - 1 >= 2 && timeScale == 3)
    {
      v3 = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _15MinutesSubdialView];
      goto LABEL_12;
    }

LABEL_5:
    v3 = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _30MinutesSubdialView];
    goto LABEL_12;
  }

  if (timeScale != 4)
  {
    if (timeScale == 5)
    {
      v3 = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _2MinutesSubdialView];
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v3 = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _3MinutesSubdialView];
LABEL_12:

  return v3;
}

- (void)_updateElapsedTimeLabel
{
  v3 = [(NTKAlaskanChronographView *)self isRunning];
  if ([(NTKAlaskanChronographView *)self isChronoMode])
  {
    v4 = [(NTKAlaskanChronographView *)self currentStopwatchDate];
    v5 = [(NTKAlaskanChronographView *)self _stopwatchStartDateRelativeToDate:v4];

    v6 = [(NTKAlaskanChronographView *)self _totalTimelapsedTextProviderWithDate:v5];
    v7 = v3 ^ 1;
    [v6 setPaused:v7];
    if ([(NTKAlaskanChronographView *)self isEditing])
    {
      v8 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
      [(CLKUIColoringLabel *)self->_centerLabel setText:v8];

      [(CLKUIColoringLabel *)self->_transitionCenterLabel setTextProvider:v6];
      [(CLKUIColoringLabel *)self->_transitionCenterLabel sizeToFit];
    }

    else
    {
      [(CLKUIColoringLabel *)self->_centerLabel setTextProvider:v6];
    }

    if (self->_timeScale == 1)
    {
      [(NTKAlaskanChronographView *)self _updateTachymeterLabel];
    }

    else
    {
      [(NTKAlaskanStopwatch *)self->_stopwatchModel currentTime];
      v11 = v10;
      [(NTKAlaskanStopwatch *)self->_stopwatchModel currentLapTime];
      v13 = [v5 dateByAddingTimeInterval:v11 - v12];
      v14 = [(NTKAlaskanChronographView *)self _lapTimelapsedTextProviderWithDate:v13];
      v15 = [(NTKAlaskanChronographView *)self topLabel];
      [v15 setTextProvider:v14];
    }
  }

  else
  {
    v9 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
    [(CLKUIColoringLabel *)self->_centerLabel setText:v9];

    v7 = v3 ^ 1;
  }

  v16 = [(CLKUIColoringLabel *)self->_topLabel textProvider];
  [v16 setPaused:v7];

  v17 = [(CLKUIColoringLabel *)self->_centerLabel textProvider];
  [v17 setPaused:v7];

  if ([(NTKAlaskanStopwatch *)self->_stopwatchModel isStopped]&& ![(NTKAlaskanChronographView *)self isEditing]&& [(NTKAlaskanChronographView *)self isChronoMode])
  {
    v18 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
    [(CLKUIColoringLabel *)self->_topLabel setText:v18];
  }

  v19 = [(NTKAlaskanChronographView *)self timeScale]== &dword_0 + 1 && [(NTKAlaskanChronographView *)self isRunning];
  [(NTKAlaskanChronographView *)self startStopTachymeterUnitUpdates:v19];

  [(NTKAlaskanChronographView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = NTKAlaskanChronographView;
  [(NTKAlaskanChronographView *)&v47 layoutSubviews];
  dy = 0.0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = [(NTKAlaskanChronographView *)self device:0];
  sub_1CDA8(v3, &v41);

  dialTickView = self->_dialTickView;
  [(NTKAlaskanChronographView *)self bounds];
  [(NTKAlaskanChronoDialView *)dialTickView ntk_setBoundsAndPositionFromFrame:?];
  topLabel = self->_topLabel;
  if (topLabel)
  {
    [(CLKUIColoringLabel *)topLabel sizeToFit];
    [(CLKUIColoringLabel *)self->_topLabel bounds];
    v7 = v6;
    v8 = *(&v42 + 1);
    v9 = *(&v44 + 1);
    v10 = *(&v44 + 1) * 0.5;
    [(NTKAlaskanChronographView *)self bounds];
    v12 = v11 - v9;
    [(CLKUIColoringLabel *)self->_topLabel setMaxWidth:v12];
    [(CLKUIColoringLabel *)self->_topLabel setFrame:v10, v8, v12, v7];
  }

  [(NTKAlaskanChronographView *)self bounds];
  v14 = v13;
  [(NTKAlaskanChronographView *)self bounds];
  if (v14 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  [(NTKAlaskanChronographView *)self setDiameter:v16];
  v17 = [(NTKAlaskanChronographView *)self centerLabel];

  if (v17)
  {
    [(CALayer *)self->_innerBackgroundCircle bounds];
    [(CLKUIColoringLabel *)self->_centerLabel setMaxWidth:*&v45 * v18];
    centerLabel = self->_centerLabel;
    [(CLKUIColoringLabel *)centerLabel maxWidth];
    v21 = v20;
    [(NTKAlaskanChronographView *)self bounds];
    [(CLKUIColoringLabel *)centerLabel sizeThatFits:v21, v22];
    [(CLKUIColoringLabel *)self->_centerLabel setFrame:0.0, 0.0, v23 + *(&v45 + 1), v24];
    [(NTKAlaskanChronographView *)self bounds];
    CGRectGetMidX(v48);
    v25 = [(NTKAlaskanChronographView *)self device];
    CLKRoundForDevice();
    v27 = v26;
    [(NTKAlaskanChronographView *)self bounds];
    CGRectGetMidY(v49);
    v28 = [(NTKAlaskanChronographView *)self device];
    CLKRoundForDevice();
    [(CLKUIColoringLabel *)self->_centerLabel setCenter:v27, v29];

    if (self->_transitionCenterLabel)
    {
      [(CLKUIColoringLabel *)self->_centerLabel center];
      [(CLKUIColoringLabel *)self->_transitionCenterLabel setCenter:?];
    }

    [(CLKUIColoringLabel *)self->_centerLabel frame];
    v51 = CGRectInset(v50, 0.0, dy);
    [(CALayer *)self->_centerLabelBackgroundLayer setFrame:v51.origin.x, v51.origin.y, v51.size.width, v51.size.height];
    [(CALayer *)self->_centerLabelBackgroundLayer frame];
    v30 = [(NTKAlaskanChronographView *)self device];
    CLKRoundForDevice();
    [(CALayer *)self->_centerLabelBackgroundLayer setCornerRadius:?];
  }

  [(NTKAlaskanChronographView *)self updateSubdialViewFrames];
  [(NTKAlaskanChronoButton *)self->_resetButton bounds];
  v32 = *(&v43 + 1);
  v33 = *(&v43 + 1) + v31 * 0.5;
  [(NTKAlaskanChronographView *)self bounds];
  MaxY = CGRectGetMaxY(v52);
  [(NTKAlaskanChronoButton *)self->_resetButton bounds];
  [(NTKAlaskanChronoButton *)self->_resetButton setCenter:v33, MaxY - v35 * 0.5 - v32];
  [(NTKAlaskanChronographView *)self bounds];
  MaxX = CGRectGetMaxX(v53);
  [(NTKAlaskanChronoButton *)self->_startStopButton bounds];
  v38 = MaxX - v37 * 0.5 - v32;
  [(NTKAlaskanChronographView *)self bounds];
  v39 = CGRectGetMaxY(v54);
  [(NTKAlaskanChronoButton *)self->_startStopButton bounds];
  [(NTKAlaskanChronoButton *)self->_startStopButton setCenter:v38, v39 - v40 * 0.5 - v32];
  [(NTKAlaskanChronographView *)self updateChronoLargeHandsCenterPoint];
}

- (void)updateChronoLargeHandsCenterPoint
{
  [(NTKAlaskanChronographView *)self bounds];
  CLKRectGetCenter();
  v4 = v3;
  v6 = v5;
  v7 = [(NTKAlaskanChronographView *)self window];
  [v7 convertPoint:self fromView:{v4, v6}];
  v9 = v8;
  v11 = v10;

  v12 = [(NTKAlaskanChronographView *)self window];
  v13 = [(NTKAlaskanChronographView *)self chronometerHandsParentView];
  [v12 convertPoint:v13 toView:{v9, v11}];
  v15 = v14;
  v17 = v16;

  [(NTKHandView *)self->_primaryHandView setCenter:v15, v17];
  secondaryHandView = self->_secondaryHandView;

  [(NTKHandView *)secondaryHandView setCenter:v15, v17];
}

- (void)updateSubdialViewFrames
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v3 = [(NTKAlaskanChronographView *)self device:0];
  sub_1CDA8(v3, &v11);

  [(NTKAlaskanChronographView *)self bounds];
  MidX = CGRectGetMidX(v17);
  v5 = *&v12;
  v6 = MidX + *&v12;
  [(NTKAlaskanChronographView *)self bounds];
  [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView setCenter:v6, CGRectGetMidY(v18)];
  [(NTKAlaskanChronographView *)self bounds];
  v7 = CGRectGetMidX(v19) - v5;
  [(NTKAlaskanChronographView *)self bounds];
  [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView setCenter:v7, CGRectGetMidY(v20)];
  [(NTKAlaskanChronographView *)self bounds];
  v8 = CGRectGetMidX(v21);
  [(NTKAlaskanChronographView *)self bounds];
  v9 = v5 + CGRectGetMidY(v22);
  bottomSubdialView = self->_bottomSubdialView;

  [(NTKAlaskanChronoSubdialView *)bottomSubdialView setCenter:v8, v9];
}

- (void)setDiameter:(double)a3
{
  if (self->_diameter != a3)
  {
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = v5;
    v26 = v3;
    v27 = v4;
    self->_diameter = a3;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    v10 = [(NTKAlaskanChronographView *)self device];
    sub_1CDA8(v10, v20);

    [(NTKAlaskanChronographView *)self bounds];
    v11 = *v20;
    v13 = v12 - *v20 * 2.0;
    [(NTKAlaskanChronographView *)self bounds];
    [(CALayer *)self->_innerBackgroundCircle setFrame:0.0, 0.0, v13, v14 - v11 * 2.0];
    [(NTKAlaskanChronographView *)self bounds];
    CLKRectGetCenter();
    [(CALayer *)self->_innerBackgroundCircle setPosition:?];
    [(CALayer *)self->_innerBackgroundCircle bounds];
    [(CALayer *)self->_innerBackgroundCircle setCornerRadius:v15 * 0.5];
    [(CALayer *)self->_innerBackgroundCircle setMasksToBounds:0];
    [(NTKAlaskanChronographView *)self bounds];
    v17 = v16;
    [(NTKAlaskanChronographView *)self bounds];
    [(CALayer *)self->_outerBackgroundCircle setFrame:0.0, 0.0, v17, v18];
    [(NTKAlaskanChronographView *)self bounds];
    CLKRectGetCenter();
    [(CALayer *)self->_outerBackgroundCircle setPosition:?];
    [(CALayer *)self->_outerBackgroundCircle bounds];
    [(CALayer *)self->_outerBackgroundCircle setCornerRadius:v19 * 0.5];
  }
}

- (void)handleResetButtonTap
{
  if ([(NTKAlaskanChronographView *)self isRunning])
  {
    v3 = [(NTKAlaskanChronographView *)self delegate];
    [v3 alaskanChronographViewDidTapStartNewLapButton:self];
  }

  else
  {
    [(NTKAlaskanChronographView *)self setIsChronoMode:0];
    v3 = [(NTKAlaskanChronographView *)self delegate];
    [v3 alaskanChronographViewDidTapResetButton:self];
  }
}

- (void)handleStartStopButtonTap
{
  v3 = [(NTKAlaskanChronographView *)self isRunning];
  v4 = [(NTKAlaskanChronographView *)self delegate];
  v5 = v4;
  if (v3)
  {
    [v4 alaskanChronographViewDidTapPauseButton:self];
  }

  else
  {
    [v4 alaskanChronographViewDidTapStartButton:self];
  }
}

- (void)handleTapGestureRecognizer:(id)a3
{
  if (![(NTKAlaskanChronographView *)self isChronoMode])
  {
    [(NTKAlaskanChronographView *)self setIsChronoMode:1];
    v4 = [(NTKAlaskanChronographView *)self delegate];
    [v4 alaskanChronographViewDidTapView:self];
  }
}

- (unint64_t)nextTimeScale
{
  v2 = [(NTKAlaskanChronographView *)self timeScale];
  if (v2 + 1 <= 5)
  {
    return v2 + 1;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)previousTimeScale
{
  v2 = [(NTKAlaskanChronographView *)self timeScale];
  if (v2 == 1)
  {
    return 5;
  }

  else
  {
    return v2 - 1;
  }
}

- (void)updateHandsPosition
{
  [(NTKAlaskanChronographView *)self largeAnalogHandsFullRotationDuration];
  v4 = v3;
  v5 = [(NTKAlaskanChronographView *)self currentStopwatchDate];
  [(NTKAlaskanChronographView *)self _stopwatchElapsedTimeForFutureDate:v5];
  v7 = v6;

  v8 = [(NTKAlaskanChronographView *)self currentStopwatchDate];
  [(NTKAlaskanChronographView *)self _stopwatchCurrentLapTimeForFutureDate:v8];
  v10 = v9;

  v11 = [(NTKAlaskanChronographView *)self primaryHandView];
  *&v4 = v4;
  LODWORD(v12) = LODWORD(v4);
  [(NTKAlaskanChronographView *)self zRotationForTime:v7 withDuration:v12];
  [v11 setZRotation:v13];

  v14 = [(NTKAlaskanChronographView *)self secondaryHandView];
  LODWORD(v15) = LODWORD(v4);
  [(NTKAlaskanChronographView *)self zRotationForTime:v10 withDuration:v15];
  [v14 setZRotation:v16];

  [(NTKAlaskanChronographView *)self leftSubdialAnalogHandsFullRotationDuration];
  *&v18 = v17;
  [(NTKAlaskanChronographView *)self zRotationForTime:v7 withDuration:v18];
  CGAffineTransformMakeRotation(&v27, v19);
  v20 = [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView analogHand];
  v26 = v27;
  [v20 setTransform:&v26];

  [(NTKAlaskanChronographView *)self rightSubdialAnalogHandsFullRotationDuration];
  *&v22 = v21;
  [(NTKAlaskanChronographView *)self zRotationForTime:v7 withDuration:v22];
  CGAffineTransformMakeRotation(&v25, v23);
  v24 = [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView analogHand];
  v26 = v25;
  [v24 setTransform:&v26];
}

- (void)startAnimatingHands
{
  [(NTKAlaskanChronographView *)self largeAnalogHandsFullRotationDuration];
  v4 = v3;
  [(NTKAlaskanStopwatch *)self->_stopwatchModel currentTime];
  v6 = v5;
  [(NTKAlaskanStopwatch *)self->_stopwatchModel currentLapTime];
  v8 = v7;
  primaryHandView = self->_primaryHandView;
  v10 = v4;
  *&v11 = v10;
  [(NTKAlaskanChronographView *)self zRotationForTime:v6 withDuration:v11];
  v13 = v12;
  [(NTKAlaskanChronographView *)self largeHandsAnimationFPS];
  [(NTKAlaskanChronographView *)self configureHandsAnimation:primaryHandView currentRadians:v13 durationOfFullRotation:v4 fps:v14];
  secondaryHandView = self->_secondaryHandView;
  *&v16 = v4;
  [(NTKAlaskanChronographView *)self zRotationForTime:v8 withDuration:v16];
  v18 = v17;
  [(NTKAlaskanChronographView *)self largeHandsAnimationFPS];
  [(NTKAlaskanChronographView *)self configureHandsAnimation:secondaryHandView currentRadians:v18 durationOfFullRotation:v4 fps:v19];
  [(NTKAlaskanChronographView *)self leftSubdialAnalogHandsFullRotationDuration];
  v21 = v20;
  v22 = [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView analogHand];
  *&v23 = v21;
  [(NTKAlaskanChronographView *)self zRotationForTime:v6 withDuration:v23];
  v25 = v24;
  [(NTKAlaskanChronographView *)self leftSubdialHandsAnimationFPS];
  [(NTKAlaskanChronographView *)self configureHandsAnimation:v22 currentRadians:v25 durationOfFullRotation:v21 fps:v26];

  [(NTKAlaskanChronographView *)self rightSubdialAnalogHandsFullRotationDuration];
  v28 = v27;
  v33 = [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView analogHand];
  *&v29 = v28;
  [(NTKAlaskanChronographView *)self zRotationForTime:v6 withDuration:v29];
  v31 = v30;
  [(NTKAlaskanChronographView *)self rightSubdialHandsAnimationFPS];
  [(NTKAlaskanChronographView *)self configureHandsAnimation:v33 currentRadians:v31 durationOfFullRotation:v28 fps:v32];
}

- (void)startAnimatingBottomSubdialHand
{
  [(NTKAlaskanChronographView *)self bottomSubdialAnalogHandsFullRotationDuration];
  v4 = v3;
  v8 = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
  [(NTKAlaskanChronographView *)self secondsAngleForCurrentDate];
  v6 = v5;
  [(NTKAlaskanChronographView *)self bottomSubdialHandsAnimationFPS];
  [(NTKAlaskanChronographView *)self configureHandsAnimation:v8 currentRadians:v6 durationOfFullRotation:v4 fps:v7];
}

- (void)updateBottomSubdialHandPosition
{
  [(NTKAlaskanChronographView *)self secondsAngleForCurrentDate];
  CGAffineTransformMakeRotation(&v6, v3);
  v4 = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
  v5 = v6;
  [v4 setTransform:&v5];
}

- (void)configureHandsAnimation:(id)a3 currentRadians:(double)a4 durationOfFullRotation:(double)a5 fps:(double)a6
{
  v9 = a3;
  v15 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
  LODWORD(v10) = 2139095040;
  [v15 setRepeatCount:v10];
  v11 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  [v15 setTimingFunction:v11];

  [v15 setRemovedOnCompletion:0];
  [v15 setFillMode:kCAFillModeForwards];
  if (a4 < 0.0)
  {
    a4 = a4 + 6.28318531;
  }

  v12 = [NSNumber numberWithDouble:a4];
  [v15 setFromValue:v12];

  v13 = [NSNumber numberWithDouble:a4 + 6.28318531];
  [v15 setToValue:v13];

  [v15 setDuration:a5];
  [v15 setFrameInterval:1.0 / a6];
  v14 = [v9 layer];

  [v14 addAnimation:v15 forKey:@"NTKAlaskanChronographHandsAnimationKey"];
}

- (void)stopAnimatingHands
{
  v3 = [(NTKHandView *)self->_primaryHandView layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:v3];

  v4 = [(NTKHandView *)self->_secondaryHandView layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:v4];

  v5 = [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView analogHand];
  v6 = [v5 layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:v6];

  v8 = [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView analogHand];
  v7 = [v8 layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:v7];
}

- (void)stopAnimatingBottomSubdialHand
{
  v4 = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
  v3 = [v4 layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:v3];
}

- (void)stopHandAnimation:(id)a3
{
  v6 = a3;
  v3 = [v6 animationForKey:@"NTKAlaskanChronographHandsAnimationKey"];

  if (v3)
  {
    v4 = [v6 presentationLayer];
    v5 = [v4 valueForKeyPath:@"transform.rotation"];
    [v6 setValue:v5 forKeyPath:@"transform.rotation"];

    [v6 removeAnimationForKey:@"NTKAlaskanChronographHandsAnimationKey"];
  }
}

- (double)largeHandsAnimationFPS
{
  v2 = self->_timeScale - 1;
  result = 0.0;
  if (v2 <= 4)
  {
    return dbl_36060[v2];
  }

  return result;
}

- (double)largeAnalogHandsFullRotationDuration
{
  timeScale = self->_timeScale;
  result = 0.0;
  if (timeScale <= 5)
  {
    return dbl_36088[timeScale];
  }

  return result;
}

- (double)leftSubdialAnalogHandsFullRotationDuration
{
  timeScale = self->_timeScale;
  result = 0.0;
  if (timeScale <= 5)
  {
    return dbl_360B8[timeScale];
  }

  return result;
}

- (double)rightSubdialAnalogHandsFullRotationDuration
{
  timeScale = self->_timeScale;
  result = 0.0;
  if (timeScale <= 5)
  {
    return dbl_360E8[timeScale];
  }

  return result;
}

- (id)_totalTimelapsedTextProviderWithDate:(id)a3
{
  v4 = [CLKRelativeDateTextProvider textProviderWithDate:a3 style:2 units:224];
  if (![(NTKAlaskanChronographView *)self isRunning])
  {
    v5 = [(NTKAlaskanChronographView *)self currentStopwatchDate];
    [v4 setRelativeToDate:v5];
  }

  [v4 setPaused:{-[NTKAlaskanChronographView isRunning](self, "isRunning") ^ 1}];
  [v4 setWantsSubseconds:1];
  [v4 setTwoDigitMinuteZeroPadding:1];

  return v4;
}

- (id)_lapTimelapsedTextProviderWithDate:(id)a3
{
  v4 = [CLKRelativeDateTextProvider textProviderWithDate:a3 style:2 units:224];
  if (![(NTKAlaskanChronographView *)self isRunning])
  {
    v5 = [(NTKAlaskanChronographView *)self currentStopwatchDate];
    [v4 setRelativeToDate:v5];
  }

  [v4 setPaused:{-[NTKAlaskanChronographView isRunning](self, "isRunning") ^ 1}];
  [v4 setWantsSubseconds:1];
  [v4 setTwoDigitMinuteZeroPadding:1];
  [v4 setTintColor:self->_topLabelSuffixColor];
  v6 = [NTKAlaskanFaceBundle localizedStringForKey:@"ALASKAN_CHRONO_LAP_COUNT" comment:@"LAP %lu: %@"];
  v7 = [(NTKAlaskanStopwatch *)self->_stopwatchModel laps];
  v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [v7 count] + 1);

  v9 = [CLKSimpleTextProvider textProviderWithText:v8];
  [v9 setTintColor:self->_topLabelPrefixColor];
  v10 = [CLKTextProvider textProviderWithFormat:@"%@%@", v9, v4];

  return v10;
}

- (void)_updateTachymeterLabel
{
  updateFidelity = self->_updateFidelity;
  if (updateFidelity < 2 || updateFidelity == 2 && ![(NTKAlaskanChronographView *)self isRunning])
  {
    v4 = [(NTKAlaskanChronographView *)self currentStopwatchDate];
    [(NTKAlaskanChronographView *)self _stopwatchElapsedTimeForFutureDate:v4];
    v6 = v5;

    v7 = [(NTKAlaskanChronographView *)self _tachymeterTextProviderWithTimeInterval:v6];
    [(CLKUIColoringLabel *)self->_topLabel setTextProvider:v7];

    [(CLKUIColoringLabel *)self->_topLabel sizeToFit];
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    memset(v15, 0, sizeof(v15));
    v8 = [(NTKAlaskanChronographView *)self device];
    sub_1CDA8(v8, v15);

    [(NTKAlaskanChronographView *)self bounds];
    v10 = v9 - *(&v16 + 1);
    [(CLKUIColoringLabel *)self->_topLabel bounds];
    if (CGRectGetWidth(v20) > v10)
    {
      v11 = [(NTKAlaskanChronographView *)self _tachymeterTextProviderWithTimeInterval:1 dropPrefix:v6];
      [(CLKUIColoringLabel *)self->_topLabel setTextProvider:v11];

      [(CLKUIColoringLabel *)self->_topLabel sizeToFit];
      [(CLKUIColoringLabel *)self->_topLabel bounds];
      if (CGRectGetWidth(v21) > v10)
      {
        v12 = [(NTKAlaskanChronographView *)self _tachymeterTextProviderWithTimeInterval:1 dropPrefix:1 dropSuffix:v6];
        [(CLKUIColoringLabel *)self->_topLabel setTextProvider:v12];

        topLabel = self->_topLabel;

        [(CLKUIColoringLabel *)topLabel sizeToFit];
      }
    }
  }

  else
  {
    v14 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
    [(CLKUIColoringLabel *)self->_topLabel setText:v14];
  }
}

- (id)_tachymeterTextProviderWithTimeInterval:(double)a3 dropPrefix:(BOOL)a4 dropSuffix:(BOOL)a5
{
  if (a4)
  {
    v8 = &stru_395D8;
  }

  else
  {
    v8 = [NTKAlaskanFaceBundle localizedStringForKey:@"ALASKAN_CHRONO_TACHY_LABEL_PREFIX" comment:@"TOTAL"];
  }

  v9 = [CLKSimpleTextProvider textProviderWithText:v8];
  [v9 setTintColor:self->_topLabelPrefixColor];
  if (a5)
  {
    v10 = @"%lu";
  }

  else
  {
    v10 = [NTKAlaskanFaceBundle localizedStringForKey:@"ALASKAN_CHRONO_TACHY_LABEL" table:@"AlaskanFormats" comment:@"%lu UNITS/HOUR"];
  }

  v11 = [NSString localizedStringWithFormat:v10, vcvtpd_u64_f64(3600.0 / a3)];
  v12 = [CLKSimpleTextProvider textProviderWithText:v11];
  [v12 setTintColor:self->_topLabelSuffixColor];
  if (CLKLayoutIsRTL())
  {
    [CLKTextProvider textProviderWithFormat:@"%@%@", v12, v9];
  }

  else
  {
    [CLKTextProvider textProviderWithFormat:@"%@%@", v9, v12];
  }
  v13 = ;

  return v13;
}

- (void)startStopTachymeterUnitUpdates:(BOOL)a3
{
  tachymeterTimerToken = self->_tachymeterTimerToken;
  if (tachymeterTimerToken)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
  }

  if (v5)
  {
    if (tachymeterTimerToken && !a3)
    {
      v6 = +[CLKClockTimer sharedInstance];
      [v6 stopUpdatesForToken:self->_tachymeterTimerToken];

      v7 = self->_tachymeterTimerToken;
      self->_tachymeterTimerToken = 0;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = +[CLKClockTimer sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1C2C4;
    v11[3] = &unk_38B18;
    objc_copyWeak(&v12, &location);
    v9 = [v8 startUpdatesWithUpdateFrequency:2 withHandler:v11 identificationLog:&stru_392E0];
    v10 = self->_tachymeterTimerToken;
    self->_tachymeterTimerToken = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (void)enableDisableResetButton
{
  v5 = 0;
  if ([(NTKAlaskanChronographView *)self isChronoMode])
  {
    if (self->_timeScale != 1 || (-[NTKAlaskanChronographView stopwatchModel](self, "stopwatchModel"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isRunning], v3, (v4 & 1) == 0))
    {
      v5 = 1;
    }
  }

  [(NTKAlaskanChronoButton *)self->_resetButton setUserInteractionEnabled:v5];
  [(NTKAlaskanChronographView *)self resetButtonAlpha];
  resetButton = self->_resetButton;

  [(NTKAlaskanChronoButton *)resetButton setAlpha:?];
}

- (void)updateSecondaryHandVisibility
{
  stopwatchModel = self->_stopwatchModel;
  if (stopwatchModel)
  {
    v4 = [(NTKAlaskanStopwatch *)stopwatchModel laps];
    if ([v4 count] && -[NTKAlaskanChronographView timeScale](self, "timeScale") != &dword_0 + 1)
    {
      v5 = [(NTKAlaskanChronographView *)self isChronoMode]^ 1;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = [(NTKAlaskanChronographView *)self secondaryHandView];
  [v6 setHidden:v5];
}

- (double)secondsAngleForCurrentDate
{
  v3 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v4 = [(NTKAlaskanChronographView *)self currentClockDate];
  NTKHourMinuteSecondAnglesForTime();

  return 0.0;
}

- (double)_stopwatchCurrentLapTimeForFutureDate:(id)a3
{
  stopwatchModel = self->_stopwatchModel;
  [a3 timeIntervalSinceReferenceDate];

  [(NTKAlaskanStopwatch *)stopwatchModel elapsedLapDurationForFutureTime:?];
  return result;
}

- (double)_stopwatchElapsedTimeForFutureDate:(id)a3
{
  stopwatchModel = self->_stopwatchModel;
  [a3 timeIntervalSinceReferenceDate];

  [(NTKAlaskanStopwatch *)stopwatchModel elapsedDurationForFutureTime:?];
  return result;
}

- (id)_stopwatchStartDateRelativeToDate:(id)a3
{
  v4 = a3;
  [(NTKAlaskanChronographView *)self _stopwatchElapsedTimeForFutureDate:v4];
  v6 = [NSDate dateWithTimeInterval:v4 sinceDate:-v5];

  return v6;
}

- (id)_currentLapStartDateRelativeToDate:(id)a3
{
  v4 = a3;
  [(NTKAlaskanChronographView *)self _stopwatchCurrentLapTimeForFutureDate:v4];
  v6 = [NSDate dateWithTimeInterval:v4 sinceDate:-v5];

  return v6;
}

- (BOOL)isRunning
{
  v2 = [(NTKAlaskanChronographView *)self stopwatchModel];
  v3 = [v2 isRunning];

  return v3;
}

- (NTKAlaskanChronographViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)chronometerHandsParentView
{
  WeakRetained = objc_loadWeakRetained(&self->_chronometerHandsParentView);

  return WeakRetained;
}

@end