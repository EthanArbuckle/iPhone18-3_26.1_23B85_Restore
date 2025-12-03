@interface NTKAlaskanChronographView
- (BOOL)isRunning;
- (CLKUIColoringLabel)centerLabel;
- (CLKUIColoringLabel)topLabel;
- (NTKAlaskanChronoButton)resetButton;
- (NTKAlaskanChronoButton)startStopButton;
- (NTKAlaskanChronographView)initWithFrame:(CGRect)frame;
- (NTKAlaskanChronographViewDelegate)delegate;
- (NTKHandView)secondaryHandView;
- (UIView)chronometerHandsParentView;
- (double)_stopwatchCurrentLapTimeForFutureDate:(id)date;
- (double)_stopwatchElapsedTimeForFutureDate:(id)date;
- (double)largeAnalogHandsFullRotationDuration;
- (double)largeHandsAnimationFPS;
- (double)leftSubdialAnalogHandsFullRotationDuration;
- (double)resetButtonAlpha;
- (double)rightSubdialAnalogHandsFullRotationDuration;
- (double)secondsAngleForCurrentDate;
- (double)startStopButtonAlpha;
- (id)_currentLapStartDateRelativeToDate:(id)date;
- (id)_lapTimelapsedTextProviderWithDate:(id)date;
- (id)_newCenterLabel;
- (id)_stopwatchStartDateRelativeToDate:(id)date;
- (id)_tachymeterTextProviderWithTimeInterval:(double)interval dropPrefix:(BOOL)prefix dropSuffix:(BOOL)suffix;
- (id)_totalTimelapsedTextProviderWithDate:(id)date;
- (id)currentClockDate;
- (id)currentStopwatchDate;
- (id)dialViewForTimeScale:(unint64_t)scale;
- (id)layerDisabledActions;
- (id)leftSubdialViewForTimeScale:(unint64_t)timeScale;
- (id)rightSubdialViewForTimeScale:(unint64_t)timeScale;
- (id)titleForTimeScale:(unint64_t)scale;
- (unint64_t)nextTimeScale;
- (unint64_t)previousTimeScale;
- (void)_cleanupSubdialView:(id)view;
- (void)_setUpUIForTimeScale:(unint64_t)scale;
- (void)_updateElapsedTimeLabel;
- (void)_updateTachymeterLabel;
- (void)applyPalette:(id)palette;
- (void)applyTransitionFromTimeModeToChronometerModeWithfraction:(double)withfraction;
- (void)applyTransitionFromTimeScale:(unint64_t)scale toTimeScale:(unint64_t)timeScale fraction:(double)fraction;
- (void)applyTransitionFromView:(id)view toView:(id)toView fraction:(double)fraction;
- (void)cleanUpTimeScaleTransition;
- (void)configureHandsAnimation:(id)animation currentRadians:(double)radians durationOfFullRotation:(double)rotation fps:(double)fps;
- (void)dealloc;
- (void)enableDisableResetButton;
- (void)handleResetButtonTap;
- (void)handleStartStopButtonTap;
- (void)handleTapGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)removeAllTransitionViews;
- (void)setChronometerHandsParentView:(id)view;
- (void)setDialTickView:(id)view;
- (void)setDiameter:(double)diameter;
- (void)setIsChronoMode:(BOOL)mode completionBlock:(id)block animated:(BOOL)animated;
- (void)setIsEditing:(BOOL)editing;
- (void)setPalette:(id)palette;
- (void)setStopwatchModel:(id)model;
- (void)setStopwatchModel:(id)model animating:(BOOL)animating;
- (void)setTimeScale:(unint64_t)scale;
- (void)setupForChronographModeWithCompletionBlock:(id)block;
- (void)setupForTimeModeWithCompletionBlock:(id)block animated:(BOOL)animated;
- (void)startAnimatingBottomSubdialHand;
- (void)startAnimatingHands;
- (void)startStopTachymeterUnitUpdates:(BOOL)updates;
- (void)stopAnimatingBottomSubdialHand;
- (void)stopAnimatingHands;
- (void)stopHandAnimation:(id)animation;
- (void)switchBottomSubDialView;
- (void)switchDialViewForTimeScale:(unint64_t)scale setTopLabel:(BOOL)label;
- (void)switchLeftSubDialViewsForTimeScale:(unint64_t)scale;
- (void)switchRightSubDialViewsForTimeScale:(unint64_t)scale;
- (void)switchSubDialViewsForTimeScale:(unint64_t)scale;
- (void)updateBottomSubdialHandPosition;
- (void)updateCenterLabelColor;
- (void)updateCenterLabelColorForChronometerMode;
- (void)updateCenterLabelColorForTimeMode;
- (void)updateChronoLargeHandsCenterPoint;
- (void)updateClockHandsPositionAnimated:(BOOL)animated;
- (void)updateHandsPosition;
- (void)updateInnerCircleColor;
- (void)updateSecondaryHandVisibility;
- (void)updateStartStopButtonColor;
- (void)updateSubdialViewFrames;
@end

@implementation NTKAlaskanChronographView

- (NTKAlaskanChronographView)initWithFrame:(CGRect)frame
{
  v35.receiver = self;
  v35.super_class = NTKAlaskanChronographView;
  v3 = [(NTKAlaskanChronographView *)&v35 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NTKFaceViewRenderingContext sharedRenderingContext];
    device = [v4 device];
    device = v3->_device;
    v3->_device = device;

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

    layerDisabledActions = [(NTKAlaskanChronographView *)v3 layerDisabledActions];
    v16 = objc_opt_new();
    outerBackgroundCircle = v3->_outerBackgroundCircle;
    v3->_outerBackgroundCircle = v16;

    [(CALayer *)v3->_outerBackgroundCircle setMasksToBounds:1];
    [(CALayer *)v3->_outerBackgroundCircle setActions:layerDisabledActions];
    layer = [(NTKAlaskanChronographView *)v3 layer];
    [layer addSublayer:v3->_outerBackgroundCircle];

    v19 = objc_opt_new();
    innerBackgroundCircle = v3->_innerBackgroundCircle;
    v3->_innerBackgroundCircle = v19;

    [(CALayer *)v3->_innerBackgroundCircle setMasksToBounds:1];
    [(CALayer *)v3->_innerBackgroundCircle setActions:layerDisabledActions];
    layer2 = [(NTKAlaskanChronographView *)v3 layer];
    [layer2 addSublayer:v3->_innerBackgroundCircle];

    device2 = [(NTKAlaskanChronographView *)v3 device];
    v23 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:device2];

    v24 = [NTKHandView alloc];
    device3 = [(NTKAlaskanChronographView *)v3 device];
    v26 = [v24 initWithConfiguration:v23 forDevice:device3 maskedShadow:1];
    primaryHandView = v3->_primaryHandView;
    v3->_primaryHandView = v26;

    [(NTKHandView *)v3->_primaryHandView anchorPointFromConfiguration];
    v29 = v28;
    v31 = v30;
    layer3 = [(NTKHandView *)v3->_primaryHandView layer];
    [layer3 setAnchorPoint:{v29, v31}];

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

- (void)setIsEditing:(BOOL)editing
{
  editingCopy = editing;
  self->_isEditing = editing;
  [(CLKUIColoringLabel *)self->_topLabel setHidden:?];
  [(NTKAlaskanChronoButton *)self->_resetButton setHidden:editingCopy];
  [(NTKAlaskanChronoButton *)self->_startStopButton setHidden:editingCopy];
  if (!editingCopy)
  {
    [(CLKUIColoringLabel *)self->_transitionCenterLabel removeFromSuperview];
    transitionCenterLabel = self->_transitionCenterLabel;
    self->_transitionCenterLabel = 0;
  }
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_originalPalette, palette);
  paletteCopy = palette;
  [(NTKAlaskanChronographView *)self applyPalette:paletteCopy];
}

- (void)applyPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  [(NTKAlaskanDialViewFactory *)self->_dialViewFactory setPalette:paletteCopy];
  [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory setPalette:paletteCopy];
  ring = [(NTKChronographProFacePalette *)self->_palette ring];
  -[CALayer setBackgroundColor:](self->_outerBackgroundCircle, "setBackgroundColor:", [ring CGColor]);

  lapHand1 = [(NTKChronographProFacePalette *)self->_palette lapHand1];
  [(NTKHandView *)self->_primaryHandView setTintColor:lapHand1];

  lapHand2 = [(NTKChronographProFacePalette *)self->_palette lapHand2];
  [(NTKHandView *)self->_secondaryHandView setTintColor:lapHand2];

  resetButton = [(NTKChronographProFacePalette *)self->_palette resetButton];
  [(NTKAlaskanChronoButton *)self->_resetButton setTintColor:resetButton];

  dialTickView = [(NTKAlaskanChronographView *)self dialTickView];
  [dialTickView updateWithColorPalette:self->_palette];

  [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView updateWithColorPalette:self->_palette];
  [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView updateWithColorPalette:self->_palette];
  [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView updateWithColorPalette:self->_palette];

  [(NTKAlaskanChronographView *)self updateStartStopButtonColor];
  [(NTKAlaskanChronographView *)self updateInnerCircleColor];

  [(NTKAlaskanChronographView *)self updateCenterLabelColor];
}

- (void)updateStartStopButtonColor
{
  isRunning = [(NTKAlaskanChronographView *)self isRunning];
  palette = self->_palette;
  if (isRunning)
  {
    stopButton = [(NTKChronographProFacePalette *)palette stopButton];
    startStopButton = [(NTKAlaskanChronographView *)self startStopButton];
    [startStopButton setTintColor:stopButton];
  }

  else
  {
    stopButton = [(NTKChronographProFacePalette *)palette startButton];
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
  timeLapsedInactiveLabel = [(NTKChronographProFacePalette *)self->_palette timeLapsedInactiveLabel];
  centerLabel = [(NTKAlaskanChronographView *)self centerLabel];
  [centerLabel setTextColor:timeLapsedInactiveLabel];

  if ([(NTKAlaskanChronographView *)self isEditing])
  {
    [(CLKUIColoringLabel *)self->_transitionCenterLabel setTextColor:timeLapsedInactiveLabel];
  }
}

- (void)updateCenterLabelColorForChronometerMode
{
  timeLapsedLabel = [(NTKChronographProFacePalette *)self->_palette timeLapsedLabel];
  centerLabel = [(NTKAlaskanChronographView *)self centerLabel];
  [centerLabel setTextColor:timeLapsedLabel];

  if ([(NTKAlaskanChronographView *)self isEditing])
  {
    [(CLKUIColoringLabel *)self->_transitionCenterLabel setTextColor:timeLapsedLabel];
  }
}

- (NTKHandView)secondaryHandView
{
  secondaryHandView = self->_secondaryHandView;
  if (!secondaryHandView)
  {
    device = [(NTKAlaskanChronographView *)self device];
    v5 = [CLKUIAnalogHandConfiguration defaultSecondConfigurationForDevice:device];

    v6 = [NTKHandView alloc];
    device2 = [(NTKAlaskanChronographView *)self device];
    v8 = [v6 initWithConfiguration:v5 forDevice:device2 maskedShadow:1];
    v9 = self->_secondaryHandView;
    self->_secondaryHandView = v8;

    [(NTKHandView *)self->_secondaryHandView anchorPointFromConfiguration];
    v11 = v10;
    v13 = v12;
    layer = [(NTKHandView *)self->_secondaryHandView layer];
    [layer setAnchorPoint:{v11, v13}];

    lapHand2 = [(NTKChronographProFacePalette *)self->_palette lapHand2];
    [(NTKHandView *)self->_secondaryHandView setTintColor:lapHand2];

    chronometerHandsParentView = [(NTKAlaskanChronographView *)self chronometerHandsParentView];
    [chronometerHandsParentView addSubview:self->_secondaryHandView];

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

    resetButton = [(NTKChronographProFacePalette *)self->_palette resetButton];
    [(NTKAlaskanChronoButton *)self->_resetButton setTintColor:resetButton];

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

    startButton = [(NTKChronographProFacePalette *)self->_palette startButton];
    [(NTKAlaskanChronoButton *)self->_startStopButton setTintColor:startButton];

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
    device = [(NTKAlaskanChronographView *)self device];
    sub_1CDA8(device, v25);

    v5 = [CLKUIColoringLabel labelWithOptions:0];
    v6 = self->_topLabel;
    self->_topLabel = v5;

    v7 = +[UIColor whiteColor];
    [(CLKUIColoringLabel *)self->_topLabel setTextColor:v7];

    [(CLKUIColoringLabel *)self->_topLabel setUsesTextProviderTintColoring:1];
    v8 = *(v25 + 1);
    v9 = [CLKFont compactSoftFontOfSize:*(v25 + 1) weight:UIFontWeightSemibold];
    fontDescriptor = [v9 fontDescriptor];
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
    v14 = [fontDescriptor fontDescriptorByAddingAttributes:v13];

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
    _newCenterLabel = [(NTKAlaskanChronographView *)self _newCenterLabel];
    v5 = self->_centerLabel;
    self->_centerLabel = _newCenterLabel;

    v6 = +[CALayer layer];
    centerLabelBackgroundLayer = self->_centerLabelBackgroundLayer;
    self->_centerLabelBackgroundLayer = v6;

    layerDisabledActions = [(NTKAlaskanChronographView *)self layerDisabledActions];
    [(CALayer *)self->_centerLabelBackgroundLayer setActions:layerDisabledActions];

    layer = [(NTKAlaskanChronographView *)self layer];
    [layer addSublayer:self->_centerLabelBackgroundLayer];

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
  cLKFontWithMonospacedNumbers = [v4 CLKFontWithMonospacedNumbers];
  [v3 setFont:cLKFontWithMonospacedNumbers];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:1];
  return v3;
}

- (void)setDialTickView:(id)view
{
  viewCopy = view;
  dialTickView = self->_dialTickView;
  if (dialTickView != viewCopy)
  {
    [(NTKAlaskanChronoDialView *)dialTickView removeFromSuperview];
    objc_storeStrong(&self->_dialTickView, view);
    [(NTKAlaskanChronographView *)self insertSubview:self->_dialTickView atIndex:1];
    v7 = self->_dialTickView;
    [(NTKAlaskanChronographView *)self bounds];
    dialTickView = [(NTKAlaskanChronoDialView *)v7 ntk_setBoundsAndPositionFromFrame:?];
  }

  _objc_release_x1(dialTickView);
}

- (void)setChronometerHandsParentView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_chronometerHandsParentView, viewCopy);
  primaryHandView = [(NTKAlaskanChronographView *)self primaryHandView];
  [primaryHandView removeFromSuperview];

  primaryHandView2 = [(NTKAlaskanChronographView *)self primaryHandView];
  [viewCopy addSubview:primaryHandView2];

  secondaryHandView = [(NTKAlaskanChronographView *)self secondaryHandView];
  [secondaryHandView removeFromSuperview];

  secondaryHandView2 = [(NTKAlaskanChronographView *)self secondaryHandView];
  [viewCopy addSubview:secondaryHandView2];

  [(NTKAlaskanChronographView *)self updateSecondaryHandVisibility];

  [(NTKAlaskanChronographView *)self updateChronoLargeHandsCenterPoint];
}

- (void)setStopwatchModel:(id)model
{
  modelCopy = model;
  primaryHandView = [(NTKAlaskanChronographView *)self primaryHandView];
  layer = [primaryHandView layer];
  v6 = [layer animationForKey:@"NTKAlaskanChronographHandsAnimationKey"];
  v7 = v6 != 0;

  [(NTKAlaskanChronographView *)self setStopwatchModel:modelCopy animating:v7];
}

- (void)setStopwatchModel:(id)model animating:(BOOL)animating
{
  animatingCopy = animating;
  modelCopy = model;
  objc_storeStrong(&self->_stopwatchModel, model);
  if (modelCopy && ([modelCopy isRunning] & 1) != 0 || objc_msgSend(modelCopy, "isPaused"))
  {
    [(NTKAlaskanChronographView *)self setIsChronoMode:1];
  }

  if ([(NTKAlaskanChronographView *)self isChronoMode])
  {
    [(NTKAlaskanChronographView *)self updateSecondaryHandVisibility];
  }

  isRunning = [(NTKAlaskanChronographView *)self isRunning];
  [(NTKAlaskanChronographView *)self stopAnimatingHands];
  if (isRunning && animatingCopy)
  {
    [(NTKAlaskanChronographView *)self startAnimatingHands];
  }

  else
  {
    [(NTKAlaskanChronographView *)self updateHandsPosition];
  }

  if (modelCopy)
  {
    [(NTKAlaskanChronographView *)self updateStartStopButtonColor];
  }

  [(NTKAlaskanChronographView *)self _updateElapsedTimeLabel];
  [(NTKAlaskanChronographView *)self enableDisableResetButton];
}

- (void)updateClockHandsPositionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(NTKAlaskanChronographView *)self stopAnimatingBottomSubdialHand];
  if (animatedCopy)
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

- (void)applyTransitionFromTimeScale:(unint64_t)scale toTimeScale:(unint64_t)timeScale fraction:(double)fraction
{
  if (scale == timeScale)
  {

    [(NTKAlaskanChronographView *)self setTimeScale:fraction];
    return;
  }

  dialTickView = [(NTKAlaskanChronographView *)self dialTickView];
  v10 = [dialTickView tag];

  if (v10 != scale)
  {
    [(NTKAlaskanChronographView *)self switchDialViewForTimeScale:scale];
  }

  if (self->_transitionDialTickView)
  {
    transitionDialTickView = [(NTKAlaskanChronographView *)self transitionDialTickView];
    v12 = [transitionDialTickView tag];

    if (v12 == timeScale)
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
  v14 = [(NTKAlaskanChronographView *)self dialViewForTimeScale:timeScale];
  v15 = self->_transitionDialTickView;
  self->_transitionDialTickView = v14;

  [(NTKAlaskanChronoDialView *)self->_transitionDialTickView setTag:timeScale];
  [(NTKAlaskanChronographView *)self insertSubview:self->_transitionDialTickView aboveSubview:self->_dialTickView];
  v16 = self->_transitionDialTickView;
  [(NTKAlaskanChronoDialView *)self->_dialTickView bounds];
  [(NTKAlaskanChronoDialView *)v16 ntk_setBoundsAndPositionFromFrame:?];
LABEL_12:
  dialTickView2 = [(NTKAlaskanChronographView *)self dialTickView];
  transitionDialTickView2 = [(NTKAlaskanChronographView *)self transitionDialTickView];
  [(NTKAlaskanChronographView *)self applyTransitionFromView:dialTickView2 toView:transitionDialTickView2 fraction:fraction];
  v18 = [(NTKAlaskanChronographView *)self leftSubdialViewForTimeScale:scale];
  v19 = [v18 tag];

  v20 = [(NTKAlaskanChronographView *)self leftSubdialViewForTimeScale:timeScale];
  v21 = [v20 tag];

  leftSubdialView = [(NTKAlaskanChronographView *)self leftSubdialView];
  v23 = [leftSubdialView tag];

  if (v23 != v19)
  {
    [(NTKAlaskanChronographView *)self switchLeftSubDialViewsForTimeScale:scale];
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
    v26 = [(NTKAlaskanChronographView *)self leftSubdialViewForTimeScale:timeScale];
    v27 = self->_transitionLeftSubdialView;
    self->_transitionLeftSubdialView = v26;

    [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView setTag:v21];
    [(NTKAlaskanChronographView *)self insertSubview:self->_transitionLeftSubdialView aboveSubview:self->_leftSubdialView];
    v28 = self->_transitionLeftSubdialView;
    [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView frame];
    [(NTKAlaskanChronoSubdialView *)v28 ntk_setBoundsAndPositionFromFrame:?];
    v29 = +[UIColor clearColor];
    [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView setBackgroundColor:v29];

    analogHand = [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView analogHand];
    [analogHand setHidden:1];
  }

  leftSubdialView2 = [(NTKAlaskanChronographView *)self leftSubdialView];
  markersView = [leftSubdialView2 markersView];

  markersView2 = [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView markersView];

  [(NTKAlaskanChronographView *)self applyTransitionFromView:markersView toView:markersView2 fraction:fraction];
  leftSubdialView3 = [(NTKAlaskanChronographView *)self leftSubdialView];
  dialTickView2 = [leftSubdialView3 tickView];

  transitionDialTickView2 = [(NTKAlaskanChronoSubdialView *)self->_transitionLeftSubdialView tickView];

  [(NTKAlaskanChronographView *)self applyTransitionFromView:dialTickView2 toView:transitionDialTickView2 fraction:fraction];
LABEL_21:
  v35 = [(NTKAlaskanChronographView *)self rightSubdialViewForTimeScale:scale];
  v36 = [v35 tag];

  v37 = [(NTKAlaskanChronographView *)self rightSubdialViewForTimeScale:timeScale];
  v38 = [v37 tag];

  rightSubdialView = [(NTKAlaskanChronographView *)self rightSubdialView];
  v40 = [rightSubdialView tag];

  if (v40 != v36)
  {
    [(NTKAlaskanChronographView *)self switchRightSubDialViewsForTimeScale:scale];
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
    v43 = [(NTKAlaskanChronographView *)self rightSubdialViewForTimeScale:timeScale];
    v44 = self->_transitionRightSubdialView;
    self->_transitionRightSubdialView = v43;

    [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView setTag:v38];
    [(NTKAlaskanChronographView *)self insertSubview:self->_transitionRightSubdialView aboveSubview:self->_rightSubdialView];
    v45 = self->_transitionRightSubdialView;
    [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView frame];
    [(NTKAlaskanChronoSubdialView *)v45 ntk_setBoundsAndPositionFromFrame:?];
    v46 = +[UIColor clearColor];
    [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView setBackgroundColor:v46];

    analogHand2 = [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView analogHand];
    [analogHand2 setHidden:1];
  }

  rightSubdialView2 = [(NTKAlaskanChronographView *)self rightSubdialView];
  markersView3 = [rightSubdialView2 markersView];

  markersView4 = [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView markersView];

  [(NTKAlaskanChronographView *)self applyTransitionFromView:markersView3 toView:markersView4 fraction:fraction];
  rightSubdialView3 = [(NTKAlaskanChronographView *)self rightSubdialView];
  dialTickView2 = [rightSubdialView3 tickView];

  transitionDialTickView2 = [(NTKAlaskanChronoSubdialView *)self->_transitionRightSubdialView tickView];

  [(NTKAlaskanChronographView *)self applyTransitionFromView:dialTickView2 toView:transitionDialTickView2 fraction:fraction];
LABEL_30:
  if (![(NTKAlaskanChronographView *)self isEditing])
  {
    if (fraction >= 0.5)
    {
      [(NTKAlaskanChronographView *)self _updateElapsedTimeLabel];
      if (scale)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    v52 = [(NTKAlaskanChronographView *)self titleForTimeScale:scale];
    topLabel = [(NTKAlaskanChronographView *)self topLabel];
    [topLabel setText:v52];
  }

  if (!scale)
  {
LABEL_34:
    [(NTKAlaskanChronographView *)self applyTransitionFromTimeModeToChronometerModeWithfraction:fraction];
  }

LABEL_35:
}

- (void)_cleanupSubdialView:(id)view
{
  viewCopy = view;
  markersView = [viewCopy markersView];
  [markersView setAlpha:1.0];

  tickView = [viewCopy tickView];
  [tickView setAlpha:1.0];

  markersView2 = [viewCopy markersView];
  v9 = *&CGAffineTransformIdentity.c;
  v11 = *&CGAffineTransformIdentity.a;
  v10 = v11;
  v12 = v9;
  v13 = *&CGAffineTransformIdentity.tx;
  v8 = v13;
  [markersView2 setTransform:&v11];

  tickView2 = [viewCopy tickView];

  v11 = v10;
  v12 = v9;
  v13 = v8;
  [tickView2 setTransform:&v11];
}

- (void)applyTransitionFromTimeModeToChronometerModeWithfraction:(double)withfraction
{
  CLKCompressFraction();
  v6 = v5;
  CLKCompressFraction();
  v8 = v7;
  backgroundTimeMode = [(NTKChronographProFacePalette *)self->_palette backgroundTimeMode];
  backgroundChronometerMode = [(NTKChronographProFacePalette *)self->_palette backgroundChronometerMode];
  v11 = NTKInterpolateBetweenColors();
  -[CALayer setBackgroundColor:](self->_innerBackgroundCircle, "setBackgroundColor:", [v11 CGColor]);

  if ([(NTKAlaskanChronographView *)self isEditing])
  {
    transitionCenterLabel = self->_transitionCenterLabel;
    if (!transitionCenterLabel)
    {
      _newCenterLabel = [(NTKAlaskanChronographView *)self _newCenterLabel];
      v14 = self->_transitionCenterLabel;
      self->_transitionCenterLabel = _newCenterLabel;

      [(CLKUIColoringLabel *)self->_transitionCenterLabel setAlpha:0.0];
      [(NTKAlaskanChronographView *)self _updateElapsedTimeLabel];
      [(NTKAlaskanChronographView *)self addSubview:self->_transitionCenterLabel];
      transitionCenterLabel = self->_transitionCenterLabel;
    }

    [(NTKAlaskanChronographView *)self applyTransitionFromView:self->_centerLabel toView:transitionCenterLabel fraction:withfraction];
  }

  if (withfraction >= 0.5)
  {
    [(NTKAlaskanChronographView *)self updateCenterLabelColorForChronometerMode];
    if (![(NTKAlaskanChronographView *)self isEditing])
    {
      centerLabel = [(NTKAlaskanChronographView *)self centerLabel];
      [centerLabel setAlpha:v8];
    }

    primaryHandView = [(NTKAlaskanChronographView *)self primaryHandView];
    [primaryHandView setHidden:0];

    CLKInterpolateBetweenFloatsClipped();
    v21 = v20;
    primaryHandView2 = [(NTKAlaskanChronographView *)self primaryHandView];
    [primaryHandView2 setAlpha:v21];
  }

  else
  {
    [(NTKAlaskanChronographView *)self updateCenterLabelColorForTimeMode];
    if (![(NTKAlaskanChronographView *)self isEditing])
    {
      centerLabel2 = [(NTKAlaskanChronographView *)self centerLabel];
      [centerLabel2 setAlpha:1.0 - v6];
    }

    primaryHandView3 = [(NTKAlaskanChronographView *)self primaryHandView];
    [primaryHandView3 setAlpha:0.0];

    primaryHandView2 = [(NTKAlaskanChronographView *)self primaryHandView];
    [primaryHandView2 setHidden:1];
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
  isChronoMode = [(NTKAlaskanChronographView *)self isChronoMode];
  result = 0.0;
  if (isChronoMode)
  {
    return 1.0;
  }

  return result;
}

- (double)resetButtonAlpha
{
  isChronoMode = [(NTKAlaskanChronographView *)self isChronoMode];
  result = 0.0;
  if (isChronoMode)
  {
    result = 1.0;
    if (self->_timeScale == 1)
    {
      stopwatchModel = [(NTKAlaskanChronographView *)self stopwatchModel];
      isRunning = [stopwatchModel isRunning];

      result = 0.3;
      if ((isRunning & 1) == 0)
      {
        return 1.0;
      }
    }
  }

  return result;
}

- (void)applyTransitionFromView:(id)view toView:(id)toView fraction:(double)fraction
{
  toViewCopy = toView;
  viewCopy = view;
  CLKCompressFraction();
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  CGAffineTransformMakeScale(&v18, v9, v9);
  v17 = v18;
  [viewCopy setTransform:&v17];
  [viewCopy setAlpha:v11];

  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  CGAffineTransformMakeScale(&v16, v13, v13);
  v17 = v16;
  [toViewCopy setTransform:&v17];
  [toViewCopy setAlpha:v15];
}

- (void)setTimeScale:(unint64_t)scale
{
  transitionDialTickView = [(NTKAlaskanChronographView *)self transitionDialTickView];

  if (transitionDialTickView)
  {
    [(NTKAlaskanChronographView *)self removeAllTransitionViews];
  }

  else if (self->_timeScale == scale)
  {
    return;
  }

  self->_timeScale = scale;

  [(NTKAlaskanChronographView *)self _setUpUIForTimeScale:scale];
}

- (void)_setUpUIForTimeScale:(unint64_t)scale
{
  [(NTKAlaskanChronographView *)self updateSecondaryHandVisibility];
  [(NTKAlaskanChronographView *)self switchSubDialViewsForTimeScale:scale];
  [(NTKAlaskanChronographView *)self _updateElapsedTimeLabel];
  if ([(NTKAlaskanChronographView *)self isChronoMode])
  {
    [(NTKAlaskanChronographView *)self switchDialViewForTimeScale:scale];
    [(NTKAlaskanChronographView *)self enableDisableResetButton];
    [(NTKAlaskanChronographView *)self setStopwatchModel:self->_stopwatchModel];
  }

  delegate = [(NTKAlaskanChronographView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(NTKAlaskanChronographView *)self delegate];
    [delegate2 alaskanChronographView:self didChangeTimeScale:scale];
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
  transitionDialTickView = [(NTKAlaskanChronographView *)self transitionDialTickView];
  [transitionDialTickView removeFromSuperview];

  [(NTKAlaskanChronographView *)self setTransitionDialTickView:0];
  transitionLeftSubdialView = [(NTKAlaskanChronographView *)self transitionLeftSubdialView];
  [transitionLeftSubdialView removeFromSuperview];

  [(NTKAlaskanChronographView *)self setTransitionLeftSubdialView:0];
  transitionRightSubdialView = [(NTKAlaskanChronographView *)self transitionRightSubdialView];
  [transitionRightSubdialView removeFromSuperview];

  [(NTKAlaskanChronographView *)self setTransitionRightSubdialView:0];
}

- (void)setIsChronoMode:(BOOL)mode completionBlock:(id)block animated:(BOOL)animated
{
  animatedCopy = animated;
  modeCopy = mode;
  blockCopy = block;
  if (self->_isChronoMode != modeCopy)
  {
    self->_isChronoMode = modeCopy;
    if (modeCopy)
    {
      blockCopy = [(NTKAlaskanChronographView *)self setupForChronographModeWithCompletionBlock:blockCopy];
    }

    else
    {
      blockCopy = [(NTKAlaskanChronographView *)self setupForTimeModeWithCompletionBlock:blockCopy animated:animatedCopy];
    }
  }

  _objc_release_x1(blockCopy);
}

- (void)setupForChronographModeWithCompletionBlock:(id)block
{
  timeScale = self->_timeScale;
  blockCopy = block;
  [(NTKAlaskanChronographView *)self switchDialViewForTimeScale:timeScale];
  [(NTKAlaskanChronographView *)self updateInnerCircleColor];
  [(NTKAlaskanChronographView *)self setStopwatchModel:self->_stopwatchModel animating:0];
  [(NTKAlaskanChronographView *)self updateCenterLabelColor];
  resetButton = [(NTKAlaskanChronographView *)self resetButton];
  [resetButton setAlpha:1.0];

  startStopButton = [(NTKAlaskanChronographView *)self startStopButton];
  [startStopButton setAlpha:1.0];

  topLabel = [(NTKAlaskanChronographView *)self topLabel];
  [(NTKAlaskanChronographView *)self switchSubDialViewsForTimeScale:self->_timeScale];
  [(NTKAlaskanChronographView *)self updateSecondaryHandVisibility];
  [(NTKAlaskanChronographView *)self removeAllTransitionViews];
  primaryHandView = [(NTKAlaskanChronographView *)self primaryHandView];
  [primaryHandView setHidden:0];

  primaryHandView2 = [(NTKAlaskanChronographView *)self primaryHandView];
  [primaryHandView2 setAlpha:1.0];

  delegate = [(NTKAlaskanChronographView *)self delegate];
  [delegate alaskanChronographViewDidEnterChronometerMode:self completionBlock:blockCopy];
}

- (void)setupForTimeModeWithCompletionBlock:(id)block animated:(BOOL)animated
{
  animatedCopy = animated;
  dialViewFactory = self->_dialViewFactory;
  blockCopy = block;
  _12HourDialView = [(NTKAlaskanDialViewFactory *)dialViewFactory _12HourDialView];
  [(NTKAlaskanChronographView *)self setDialTickView:_12HourDialView];

  v9 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
  centerLabel = [(NTKAlaskanChronographView *)self centerLabel];
  [centerLabel setText:v9];

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
  primaryHandView = [(NTKAlaskanChronographView *)self primaryHandView];
  [primaryHandView setHidden:1];

  primaryHandView2 = [(NTKAlaskanChronographView *)self primaryHandView];
  [primaryHandView2 setAlpha:0.0];

  delegate = [(NTKAlaskanChronographView *)self delegate];
  [delegate alaskanChronographViewDidExitChronometerMode:self completionBlock:blockCopy animated:animatedCopy];
}

- (void)switchLeftSubDialViewsForTimeScale:(unint64_t)scale
{
  [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView removeFromSuperview];
  v5 = [(NTKAlaskanChronographView *)self leftSubdialViewForTimeScale:scale];
  leftSubdialView = self->_leftSubdialView;
  self->_leftSubdialView = v5;

  subdialClockHand = [(NTKChronographProFacePalette *)self->_palette subdialClockHand];
  analogHand = [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView analogHand];
  [analogHand setTintColor:subdialClockHand];

  [(NTKAlaskanChronographView *)self updateHandsPosition];
  [(NTKAlaskanChronographView *)self addSubview:self->_leftSubdialView];

  [(NTKAlaskanChronographView *)self updateSubdialViewFrames];
}

- (void)switchRightSubDialViewsForTimeScale:(unint64_t)scale
{
  [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView removeFromSuperview];
  v5 = [(NTKAlaskanChronographView *)self rightSubdialViewForTimeScale:scale];
  rightSubdialView = self->_rightSubdialView;
  self->_rightSubdialView = v5;

  subdialClockHand = [(NTKChronographProFacePalette *)self->_palette subdialClockHand];
  analogHand = [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView analogHand];
  [analogHand setTintColor:subdialClockHand];

  [(NTKAlaskanChronographView *)self updateHandsPosition];
  [(NTKAlaskanChronographView *)self addSubview:self->_rightSubdialView];

  [(NTKAlaskanChronographView *)self updateSubdialViewFrames];
}

- (void)switchBottomSubDialView
{
  [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView removeFromSuperview];
  _60secondsSubdialView = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _60secondsSubdialView];
  bottomSubdialView = self->_bottomSubdialView;
  self->_bottomSubdialView = _60secondsSubdialView;

  subdialClockHand = [(NTKChronographProFacePalette *)self->_palette subdialClockHand];
  analogHand = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
  [analogHand setTintColor:subdialClockHand];

  [(NTKAlaskanChronographView *)self updateBottomSubdialHandPosition];
  [(NTKAlaskanChronographView *)self addSubview:self->_bottomSubdialView];

  [(NTKAlaskanChronographView *)self updateSubdialViewFrames];
}

- (void)switchSubDialViewsForTimeScale:(unint64_t)scale
{
  [(NTKAlaskanChronographView *)self switchLeftSubDialViewsForTimeScale:?];
  [(NTKAlaskanChronographView *)self switchRightSubDialViewsForTimeScale:scale];
  if (!self->_bottomSubdialView)
  {
    _60secondsSubdialView = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _60secondsSubdialView];
    bottomSubdialView = self->_bottomSubdialView;
    self->_bottomSubdialView = _60secondsSubdialView;

    subdialClockHand = [(NTKChronographProFacePalette *)self->_palette subdialClockHand];
    analogHand = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
    [analogHand setTintColor:subdialClockHand];

    [(NTKAlaskanChronographView *)self addSubview:self->_bottomSubdialView];
  }

  [(NTKAlaskanChronographView *)self updateSubdialViewFrames];
}

- (void)switchDialViewForTimeScale:(unint64_t)scale setTopLabel:(BOOL)label
{
  labelCopy = label;
  v7 = [(NTKAlaskanChronographView *)self dialViewForTimeScale:?];
  [(NTKAlaskanChronographView *)self setDialTickView:v7];

  dialTickView = [(NTKAlaskanChronographView *)self dialTickView];
  [dialTickView setTag:scale];

  if (labelCopy && ![(NTKAlaskanChronographView *)self isEditing]&& [(NTKAlaskanChronographView *)self isChronoMode])
  {
    v10 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
    topLabel = [(NTKAlaskanChronographView *)self topLabel];
    [topLabel setText:v10];
  }
}

- (id)dialViewForTimeScale:(unint64_t)scale
{
  dialViewFactory = self->_dialViewFactory;
  if (scale <= 2)
  {
    if (scale == 1)
    {
      _tachymeterDialView = [(NTKAlaskanDialViewFactory *)dialViewFactory _tachymeterDialView];
      goto LABEL_13;
    }

    if (scale == 2)
    {
      _tachymeterDialView = [(NTKAlaskanDialViewFactory *)dialViewFactory _60secondsDialView];
      goto LABEL_13;
    }
  }

  else
  {
    switch(scale)
    {
      case 3uLL:
        _tachymeterDialView = [(NTKAlaskanDialViewFactory *)dialViewFactory _30secondsDialView];
        goto LABEL_13;
      case 4uLL:
        _tachymeterDialView = [(NTKAlaskanDialViewFactory *)dialViewFactory _6secondsDialView];
        goto LABEL_13;
      case 5uLL:
        _tachymeterDialView = [(NTKAlaskanDialViewFactory *)dialViewFactory _3secondsDialView];
        goto LABEL_13;
    }
  }

  _tachymeterDialView = [(NTKAlaskanDialViewFactory *)dialViewFactory _12HourDialView];
LABEL_13:

  return _tachymeterDialView;
}

- (id)titleForTimeScale:(unint64_t)scale
{
  v3 = 0;
  if (scale <= 2)
  {
    if (scale == 1)
    {
      v4 = @"EDIT_OPTION_LABEL_SHARK_TIME_SCALE_TACHYMETER";
      v5 = @"TACHYMETER";
    }

    else
    {
      if (scale != 2)
      {
        goto LABEL_13;
      }

      v4 = @"EDIT_OPTION_LABEL_SHARK_TIME_SCALE_60";
      v5 = @"60-SECONDS";
    }
  }

  else
  {
    switch(scale)
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
    _60MinutesSubdialView = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _60MinutesSubdialView];
  }

  else
  {
    _60MinutesSubdialView = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _12HoursSubdialView];
  }

  return _60MinutesSubdialView;
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
      _15MinutesSubdialView = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _15MinutesSubdialView];
      goto LABEL_12;
    }

LABEL_5:
    _15MinutesSubdialView = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _30MinutesSubdialView];
    goto LABEL_12;
  }

  if (timeScale != 4)
  {
    if (timeScale == 5)
    {
      _15MinutesSubdialView = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _2MinutesSubdialView];
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  _15MinutesSubdialView = [(NTKAlaskanSubdialViewFactory *)self->_subdialViewFactory _3MinutesSubdialView];
LABEL_12:

  return _15MinutesSubdialView;
}

- (void)_updateElapsedTimeLabel
{
  isRunning = [(NTKAlaskanChronographView *)self isRunning];
  if ([(NTKAlaskanChronographView *)self isChronoMode])
  {
    currentStopwatchDate = [(NTKAlaskanChronographView *)self currentStopwatchDate];
    v5 = [(NTKAlaskanChronographView *)self _stopwatchStartDateRelativeToDate:currentStopwatchDate];

    v6 = [(NTKAlaskanChronographView *)self _totalTimelapsedTextProviderWithDate:v5];
    v7 = isRunning ^ 1;
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
      topLabel = [(NTKAlaskanChronographView *)self topLabel];
      [topLabel setTextProvider:v14];
    }
  }

  else
  {
    v9 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
    [(CLKUIColoringLabel *)self->_centerLabel setText:v9];

    v7 = isRunning ^ 1;
  }

  textProvider = [(CLKUIColoringLabel *)self->_topLabel textProvider];
  [textProvider setPaused:v7];

  textProvider2 = [(CLKUIColoringLabel *)self->_centerLabel textProvider];
  [textProvider2 setPaused:v7];

  if ([(NTKAlaskanStopwatch *)self->_stopwatchModel isStopped]&& ![(NTKAlaskanChronographView *)self isEditing]&& [(NTKAlaskanChronographView *)self isChronoMode])
  {
    v18 = [(NTKAlaskanChronographView *)self titleForTimeScale:self->_timeScale];
    [(CLKUIColoringLabel *)self->_topLabel setText:v18];
  }

  isRunning2 = [(NTKAlaskanChronographView *)self timeScale]== &dword_0 + 1 && [(NTKAlaskanChronographView *)self isRunning];
  [(NTKAlaskanChronographView *)self startStopTachymeterUnitUpdates:isRunning2];

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
  centerLabel = [(NTKAlaskanChronographView *)self centerLabel];

  if (centerLabel)
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
    device = [(NTKAlaskanChronographView *)self device];
    CLKRoundForDevice();
    v27 = v26;
    [(NTKAlaskanChronographView *)self bounds];
    CGRectGetMidY(v49);
    device2 = [(NTKAlaskanChronographView *)self device];
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
    device3 = [(NTKAlaskanChronographView *)self device];
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
  window = [(NTKAlaskanChronographView *)self window];
  [window convertPoint:self fromView:{v4, v6}];
  v9 = v8;
  v11 = v10;

  window2 = [(NTKAlaskanChronographView *)self window];
  chronometerHandsParentView = [(NTKAlaskanChronographView *)self chronometerHandsParentView];
  [window2 convertPoint:chronometerHandsParentView toView:{v9, v11}];
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

- (void)setDiameter:(double)diameter
{
  if (self->_diameter != diameter)
  {
    v22 = v8;
    v23 = v7;
    v24 = v6;
    v25 = v5;
    v26 = v3;
    v27 = v4;
    self->_diameter = diameter;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    device = [(NTKAlaskanChronographView *)self device];
    sub_1CDA8(device, v20);

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
    delegate = [(NTKAlaskanChronographView *)self delegate];
    [delegate alaskanChronographViewDidTapStartNewLapButton:self];
  }

  else
  {
    [(NTKAlaskanChronographView *)self setIsChronoMode:0];
    delegate = [(NTKAlaskanChronographView *)self delegate];
    [delegate alaskanChronographViewDidTapResetButton:self];
  }
}

- (void)handleStartStopButtonTap
{
  isRunning = [(NTKAlaskanChronographView *)self isRunning];
  delegate = [(NTKAlaskanChronographView *)self delegate];
  v5 = delegate;
  if (isRunning)
  {
    [delegate alaskanChronographViewDidTapPauseButton:self];
  }

  else
  {
    [delegate alaskanChronographViewDidTapStartButton:self];
  }
}

- (void)handleTapGestureRecognizer:(id)recognizer
{
  if (![(NTKAlaskanChronographView *)self isChronoMode])
  {
    [(NTKAlaskanChronographView *)self setIsChronoMode:1];
    delegate = [(NTKAlaskanChronographView *)self delegate];
    [delegate alaskanChronographViewDidTapView:self];
  }
}

- (unint64_t)nextTimeScale
{
  timeScale = [(NTKAlaskanChronographView *)self timeScale];
  if (timeScale + 1 <= 5)
  {
    return timeScale + 1;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)previousTimeScale
{
  timeScale = [(NTKAlaskanChronographView *)self timeScale];
  if (timeScale == 1)
  {
    return 5;
  }

  else
  {
    return timeScale - 1;
  }
}

- (void)updateHandsPosition
{
  [(NTKAlaskanChronographView *)self largeAnalogHandsFullRotationDuration];
  v4 = v3;
  currentStopwatchDate = [(NTKAlaskanChronographView *)self currentStopwatchDate];
  [(NTKAlaskanChronographView *)self _stopwatchElapsedTimeForFutureDate:currentStopwatchDate];
  v7 = v6;

  currentStopwatchDate2 = [(NTKAlaskanChronographView *)self currentStopwatchDate];
  [(NTKAlaskanChronographView *)self _stopwatchCurrentLapTimeForFutureDate:currentStopwatchDate2];
  v10 = v9;

  primaryHandView = [(NTKAlaskanChronographView *)self primaryHandView];
  *&v4 = v4;
  LODWORD(v12) = LODWORD(v4);
  [(NTKAlaskanChronographView *)self zRotationForTime:v7 withDuration:v12];
  [primaryHandView setZRotation:v13];

  secondaryHandView = [(NTKAlaskanChronographView *)self secondaryHandView];
  LODWORD(v15) = LODWORD(v4);
  [(NTKAlaskanChronographView *)self zRotationForTime:v10 withDuration:v15];
  [secondaryHandView setZRotation:v16];

  [(NTKAlaskanChronographView *)self leftSubdialAnalogHandsFullRotationDuration];
  *&v18 = v17;
  [(NTKAlaskanChronographView *)self zRotationForTime:v7 withDuration:v18];
  CGAffineTransformMakeRotation(&v27, v19);
  analogHand = [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView analogHand];
  v26 = v27;
  [analogHand setTransform:&v26];

  [(NTKAlaskanChronographView *)self rightSubdialAnalogHandsFullRotationDuration];
  *&v22 = v21;
  [(NTKAlaskanChronographView *)self zRotationForTime:v7 withDuration:v22];
  CGAffineTransformMakeRotation(&v25, v23);
  analogHand2 = [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView analogHand];
  v26 = v25;
  [analogHand2 setTransform:&v26];
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
  analogHand = [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView analogHand];
  *&v23 = v21;
  [(NTKAlaskanChronographView *)self zRotationForTime:v6 withDuration:v23];
  v25 = v24;
  [(NTKAlaskanChronographView *)self leftSubdialHandsAnimationFPS];
  [(NTKAlaskanChronographView *)self configureHandsAnimation:analogHand currentRadians:v25 durationOfFullRotation:v21 fps:v26];

  [(NTKAlaskanChronographView *)self rightSubdialAnalogHandsFullRotationDuration];
  v28 = v27;
  analogHand2 = [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView analogHand];
  *&v29 = v28;
  [(NTKAlaskanChronographView *)self zRotationForTime:v6 withDuration:v29];
  v31 = v30;
  [(NTKAlaskanChronographView *)self rightSubdialHandsAnimationFPS];
  [(NTKAlaskanChronographView *)self configureHandsAnimation:analogHand2 currentRadians:v31 durationOfFullRotation:v28 fps:v32];
}

- (void)startAnimatingBottomSubdialHand
{
  [(NTKAlaskanChronographView *)self bottomSubdialAnalogHandsFullRotationDuration];
  v4 = v3;
  analogHand = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
  [(NTKAlaskanChronographView *)self secondsAngleForCurrentDate];
  v6 = v5;
  [(NTKAlaskanChronographView *)self bottomSubdialHandsAnimationFPS];
  [(NTKAlaskanChronographView *)self configureHandsAnimation:analogHand currentRadians:v6 durationOfFullRotation:v4 fps:v7];
}

- (void)updateBottomSubdialHandPosition
{
  [(NTKAlaskanChronographView *)self secondsAngleForCurrentDate];
  CGAffineTransformMakeRotation(&v6, v3);
  analogHand = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
  v5 = v6;
  [analogHand setTransform:&v5];
}

- (void)configureHandsAnimation:(id)animation currentRadians:(double)radians durationOfFullRotation:(double)rotation fps:(double)fps
{
  animationCopy = animation;
  v15 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
  LODWORD(v10) = 2139095040;
  [v15 setRepeatCount:v10];
  v11 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
  [v15 setTimingFunction:v11];

  [v15 setRemovedOnCompletion:0];
  [v15 setFillMode:kCAFillModeForwards];
  if (radians < 0.0)
  {
    radians = radians + 6.28318531;
  }

  v12 = [NSNumber numberWithDouble:radians];
  [v15 setFromValue:v12];

  v13 = [NSNumber numberWithDouble:radians + 6.28318531];
  [v15 setToValue:v13];

  [v15 setDuration:rotation];
  [v15 setFrameInterval:1.0 / fps];
  layer = [animationCopy layer];

  [layer addAnimation:v15 forKey:@"NTKAlaskanChronographHandsAnimationKey"];
}

- (void)stopAnimatingHands
{
  layer = [(NTKHandView *)self->_primaryHandView layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:layer];

  layer2 = [(NTKHandView *)self->_secondaryHandView layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:layer2];

  analogHand = [(NTKAlaskanChronoSubdialView *)self->_rightSubdialView analogHand];
  layer3 = [analogHand layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:layer3];

  analogHand2 = [(NTKAlaskanChronoSubdialView *)self->_leftSubdialView analogHand];
  layer4 = [analogHand2 layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:layer4];
}

- (void)stopAnimatingBottomSubdialHand
{
  analogHand = [(NTKAlaskanChronoSubdialView *)self->_bottomSubdialView analogHand];
  layer = [analogHand layer];
  [(NTKAlaskanChronographView *)self stopHandAnimation:layer];
}

- (void)stopHandAnimation:(id)animation
{
  animationCopy = animation;
  v3 = [animationCopy animationForKey:@"NTKAlaskanChronographHandsAnimationKey"];

  if (v3)
  {
    presentationLayer = [animationCopy presentationLayer];
    v5 = [presentationLayer valueForKeyPath:@"transform.rotation"];
    [animationCopy setValue:v5 forKeyPath:@"transform.rotation"];

    [animationCopy removeAnimationForKey:@"NTKAlaskanChronographHandsAnimationKey"];
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

- (id)_totalTimelapsedTextProviderWithDate:(id)date
{
  v4 = [CLKRelativeDateTextProvider textProviderWithDate:date style:2 units:224];
  if (![(NTKAlaskanChronographView *)self isRunning])
  {
    currentStopwatchDate = [(NTKAlaskanChronographView *)self currentStopwatchDate];
    [v4 setRelativeToDate:currentStopwatchDate];
  }

  [v4 setPaused:{-[NTKAlaskanChronographView isRunning](self, "isRunning") ^ 1}];
  [v4 setWantsSubseconds:1];
  [v4 setTwoDigitMinuteZeroPadding:1];

  return v4;
}

- (id)_lapTimelapsedTextProviderWithDate:(id)date
{
  v4 = [CLKRelativeDateTextProvider textProviderWithDate:date style:2 units:224];
  if (![(NTKAlaskanChronographView *)self isRunning])
  {
    currentStopwatchDate = [(NTKAlaskanChronographView *)self currentStopwatchDate];
    [v4 setRelativeToDate:currentStopwatchDate];
  }

  [v4 setPaused:{-[NTKAlaskanChronographView isRunning](self, "isRunning") ^ 1}];
  [v4 setWantsSubseconds:1];
  [v4 setTwoDigitMinuteZeroPadding:1];
  [v4 setTintColor:self->_topLabelSuffixColor];
  v6 = [NTKAlaskanFaceBundle localizedStringForKey:@"ALASKAN_CHRONO_LAP_COUNT" comment:@"LAP %lu: %@"];
  laps = [(NTKAlaskanStopwatch *)self->_stopwatchModel laps];
  v8 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v6, [laps count] + 1);

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
    currentStopwatchDate = [(NTKAlaskanChronographView *)self currentStopwatchDate];
    [(NTKAlaskanChronographView *)self _stopwatchElapsedTimeForFutureDate:currentStopwatchDate];
    v6 = v5;

    v7 = [(NTKAlaskanChronographView *)self _tachymeterTextProviderWithTimeInterval:v6];
    [(CLKUIColoringLabel *)self->_topLabel setTextProvider:v7];

    [(CLKUIColoringLabel *)self->_topLabel sizeToFit];
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    memset(v15, 0, sizeof(v15));
    device = [(NTKAlaskanChronographView *)self device];
    sub_1CDA8(device, v15);

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

- (id)_tachymeterTextProviderWithTimeInterval:(double)interval dropPrefix:(BOOL)prefix dropSuffix:(BOOL)suffix
{
  if (prefix)
  {
    v8 = &stru_395D8;
  }

  else
  {
    v8 = [NTKAlaskanFaceBundle localizedStringForKey:@"ALASKAN_CHRONO_TACHY_LABEL_PREFIX" comment:@"TOTAL"];
  }

  v9 = [CLKSimpleTextProvider textProviderWithText:v8];
  [v9 setTintColor:self->_topLabelPrefixColor];
  if (suffix)
  {
    v10 = @"%lu";
  }

  else
  {
    v10 = [NTKAlaskanFaceBundle localizedStringForKey:@"ALASKAN_CHRONO_TACHY_LABEL" table:@"AlaskanFormats" comment:@"%lu UNITS/HOUR"];
  }

  v11 = [NSString localizedStringWithFormat:v10, vcvtpd_u64_f64(3600.0 / interval)];
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

- (void)startStopTachymeterUnitUpdates:(BOOL)updates
{
  tachymeterTimerToken = self->_tachymeterTimerToken;
  if (tachymeterTimerToken)
  {
    v5 = 1;
  }

  else
  {
    v5 = !updates;
  }

  if (v5)
  {
    if (tachymeterTimerToken && !updates)
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
    laps = [(NTKAlaskanStopwatch *)stopwatchModel laps];
    if ([laps count] && -[NTKAlaskanChronographView timeScale](self, "timeScale") != &dword_0 + 1)
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

  secondaryHandView = [(NTKAlaskanChronographView *)self secondaryHandView];
  [secondaryHandView setHidden:v5];
}

- (double)secondsAngleForCurrentDate
{
  v3 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  currentClockDate = [(NTKAlaskanChronographView *)self currentClockDate];
  NTKHourMinuteSecondAnglesForTime();

  return 0.0;
}

- (double)_stopwatchCurrentLapTimeForFutureDate:(id)date
{
  stopwatchModel = self->_stopwatchModel;
  [date timeIntervalSinceReferenceDate];

  [(NTKAlaskanStopwatch *)stopwatchModel elapsedLapDurationForFutureTime:?];
  return result;
}

- (double)_stopwatchElapsedTimeForFutureDate:(id)date
{
  stopwatchModel = self->_stopwatchModel;
  [date timeIntervalSinceReferenceDate];

  [(NTKAlaskanStopwatch *)stopwatchModel elapsedDurationForFutureTime:?];
  return result;
}

- (id)_stopwatchStartDateRelativeToDate:(id)date
{
  dateCopy = date;
  [(NTKAlaskanChronographView *)self _stopwatchElapsedTimeForFutureDate:dateCopy];
  v6 = [NSDate dateWithTimeInterval:dateCopy sinceDate:-v5];

  return v6;
}

- (id)_currentLapStartDateRelativeToDate:(id)date
{
  dateCopy = date;
  [(NTKAlaskanChronographView *)self _stopwatchCurrentLapTimeForFutureDate:dateCopy];
  v6 = [NSDate dateWithTimeInterval:dateCopy sinceDate:-v5];

  return v6;
}

- (BOOL)isRunning
{
  stopwatchModel = [(NTKAlaskanChronographView *)self stopwatchModel];
  isRunning = [stopwatchModel isRunning];

  return isRunning;
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