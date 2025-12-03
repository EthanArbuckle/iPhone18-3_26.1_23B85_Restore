@interface NTKParameciumFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NTKParameciumFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_backgroundAlphaForEditMode:(int64_t)mode;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (id)_complicationContainerViewForSlot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateBackgroundAndPlatterAlpha:(double)alpha;
- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)style;
- (void)_updateConfettiRotationRate;
- (void)_updatePausedState;
- (void)cleanupAfterEditing;
- (void)layoutSubviews;
- (void)prepareForEditing;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)updateTime:(CLKClockTimerDate *)time;
@end

@implementation NTKParameciumFaceView

- (NTKParameciumFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v29.receiver = self;
  v29.super_class = NTKParameciumFaceView;
  v10 = [(NTKParameciumFaceView *)&v29 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v11->_isPaused = 1;
    v11->_tritiumProgress = 1.0;
    v11->_confettiRotationRate = 0.0;
    v11->_forSwatchRendering = 0;
    v11->_snapshotContentViewsLoaded = 0;
    v12 = [UIColor colorWithRed:0.537 green:0.573 blue:0.6 alpha:1.0];
    [(NTKParameciumFaceView *)v11 setComplicationColor:v12];
    [(NTKParameciumFaceView *)v11 setAlternateComplicationColor:v12];
    [(NTKParameciumFaceView *)v11 setInterpolatedComplicationColor:v12];
    v13 = +[UIColor blackColor];
    [(NTKParameciumFaceView *)v11 setComplicationBackgroundColor:v13];

    v14 = objc_alloc_init(NTKCompositeComplicationFactory);
    v15 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:deviceCopy];
    [v15 setAlpha:v11 faceView:1.0];
    v30[0] = NTKComplicationSlotTopLeft;
    v30[1] = NTKComplicationSlotTopRight;
    v30[2] = NTKComplicationSlotBottomLeft;
    v30[3] = NTKComplicationSlotBottomRight;
    v16 = [NSArray arrayWithObjects:v30 count:4];
    [v14 registerFactory:v15 forSlots:v16];

    cornerFactory = v11->_cornerFactory;
    v11->_cornerFactory = v15;
    v18 = v15;

    v19 = objc_alloc_init(NTKSimpleTextFaceViewComplicationFactory);
    [v19 setFaceView:v11];
    device = [(NTKParameciumFaceView *)v11 device];
    [v19 setVerticalCenterOffset:{sub_3A78(device, device)}];

    [v14 registerFactory:v19 forSlot:NTKComplicationSlotSubdialTop];
    subdialFactory = v11->_subdialFactory;
    v11->_subdialFactory = v19;
    v22 = v19;

    [(NTKParameciumFaceView *)v11 setComplicationFactory:v14];
    v23 = [UIView alloc];
    [(NTKParameciumFaceView *)v11 bounds];
    v24 = [v23 initWithFrame:?];
    subdialComplicationContainerView = v11->_subdialComplicationContainerView;
    v11->_subdialComplicationContainerView = v24;

    contentView = [(NTKParameciumFaceView *)v11 contentView];
    [contentView addSubview:v11->_subdialComplicationContainerView];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v11 selector:"_significantTimeChanged" name:UIApplicationSignificantTimeChangeNotification object:0];
  }

  return v11;
}

- (void)_loadSnapshotContentViews
{
  v14.receiver = self;
  v14.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v14 _loadSnapshotContentViews];
  self->_snapshotContentViewsLoaded = 1;
  if (self->_forSwatchRendering)
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  [(CLKDevice *)self->_device screenBounds];
  v4 = [CLKUIMetalQuadView quadViewWithFrame:@"QARK" identifier:352 options:v3 colorSpace:?];
  quadView = self->_quadView;
  self->_quadView = v4;

  [(CLKUIMetalQuadView *)self->_quadView setDelegate:self];
  [(CLKUIMetalQuadView *)self->_quadView setUserInteractionEnabled:0];
  [(CLKUIMetalQuadView *)self->_quadView setOpaque:0];
  v6 = [[NTKParameciumCompositeQuad alloc] initWithDevice:self->_device];
  compositeQuad = self->_compositeQuad;
  self->_compositeQuad = v6;

  [(CLKUIMetalQuadView *)self->_quadView addQuad:self->_compositeQuad];
  [(NTKParameciumCompositeQuad *)self->_compositeQuad setConfettiEntropy:1.0];
  contentView = [(NTKParameciumFaceView *)self contentView];
  [contentView addSubview:self->_quadView];

  [(NTKParameciumFaceView *)self bounds];
  [(CLKUIMetalQuadView *)self->_quadView setFrame:?];
  [(CLKUIMetalQuadView *)self->_quadView setPreferredFramesPerSecond:60];
  v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 2.0, 2.0}];
  pin = self->_pin;
  self->_pin = v9;

  v11 = +[UIColor blackColor];
  [(UIView *)self->_pin setBackgroundColor:v11];

  layer = [(UIView *)self->_pin layer];
  [layer setCornerRadius:1.0];

  contentView2 = [(NTKParameciumFaceView *)self contentView];
  [contentView2 addSubview:self->_pin];

  [(NTKParameciumFaceView *)self _updatePausedState];
  [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:1.0];
}

- (void)_unloadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v5 _unloadSnapshotContentViews];
  self->_snapshotContentViewsLoaded = 0;
  [(CLKUIMetalQuadView *)self->_quadView removeFromSuperview];
  quadView = self->_quadView;
  self->_quadView = 0;

  [(UIView *)self->_pin removeFromSuperview];
  pin = self->_pin;
  self->_pin = 0;

  [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:1.0];
}

- (void)prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v3 prepareForEditing];
  [(NTKParameciumFaceView *)self _updatePausedState];
}

- (void)cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v3 cleanupAfterEditing];
  [(NTKParameciumFaceView *)self _updatePausedState];
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v3 _applyFrozen];
  [(NTKParameciumFaceView *)self _updatePausedState];
}

- (void)_applyDataMode
{
  v3.receiver = self;
  v3.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v3 _applyDataMode];
  [(NTKParameciumFaceView *)self _updatePausedState];
  [(NTKParameciumFaceView *)self _updateConfettiRotationRate];
  if ([(NTKParameciumFaceView *)self dataMode]== &dword_0 + 3)
  {
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setConfettiRotation:0.0];
  }
}

- (void)_updatePausedState
{
  dataMode = [(NTKParameciumFaceView *)self dataMode];
  editing = [(NTKParameciumFaceView *)self editing];
  v5 = [(NTKParameciumFaceView *)self isFrozen]^ 1;
  if ((((dataMode & 0xFFFFFFFFFFFFFFFBLL) == 1) & v5 & NTKIsScreenOn()) != 0 || editing)
  {
    if (self->_isPaused)
    {
      self->_isPaused = 0;
      [(CLKUIMetalQuadView *)self->_quadView setPaused:0];
      objc_initWeak(&location, self);
      v7 = +[CLKClockTimer sharedInstance];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_24B8;
      v10[3] = &unk_14500;
      objc_copyWeak(&v11, &location);
      v8 = [v7 startUpdatesWithUpdateFrequency:3 withHandler:v10 identificationLog:&stru_14540];
      clockTimerToken = self->_clockTimerToken;
      self->_clockTimerToken = v8;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }

  else if (!self->_isPaused)
  {
    self->_isPaused = 1;
    [(CLKUIMetalQuadView *)self->_quadView setPaused:1];
    v6 = self->_clockTimerToken;
    self->_clockTimerToken = 0;
  }
}

- (void)_updateConfettiRotationRate
{
  dataMode = [(NTKParameciumFaceView *)self dataMode];
  v4 = [(NTKParameciumFaceView *)self optionForCustomEditMode:12 slot:0];
  style = [v4 style];

  v6 = style == &dword_0 + 2 && dataMode == &dword_0 + 1;
  v7 = 0.00174532925;
  if (!v6)
  {
    v7 = 0.0;
  }

  self->_confettiRotationRate = v7;
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v10 setOverrideDate:dateCopy duration:duration];
  overrideDate = self->_overrideDate;
  self->_overrideDate = dateCopy;
  v8 = dateCopy;

  CLKClockTimerDateForDate();
  [(NTKParameciumFaceView *)self updateTime:v9];
}

- (void)updateTime:(CLKClockTimerDate *)time
{
  if (self->_overrideDate)
  {
    CLKClockTimerDateForDate();
    v5 = v12;
  }

  else
  {
    if (time->var0)
    {
      v6 = +[NTKTimeOffsetManager sharedManager];
      [v6 timeOffset];
      v8 = v7;

      if (v8 <= 0.0)
      {
        v5 = time->var0;
        goto LABEL_9;
      }

      v9 = +[NTKTimeOffsetManager sharedManager];
      faceDisplayTime = [v9 displayTimeForRealTime:time->var0];

      CLKClockTimerDateForDate();
    }

    else
    {
      v11 = +[NTKTimeOffsetManager sharedManager];
      faceDisplayTime = [v11 faceDisplayTime];

      CLKClockTimerDateForDate();
    }

    v5 = v12;
  }

LABEL_9:
  [(NTKParameciumCompositeQuad *)self->_compositeQuad setToDate:v5];
}

- (id)_complicationContainerViewForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotSubdialTop])
  {
    v5 = self->_subdialComplicationContainerView;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKParameciumFaceView;
    v5 = [(NTKParameciumFaceView *)&v8 _complicationContainerViewForSlot:slotCopy];
  }

  v6 = v5;

  return v6;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v5 layoutSubviews];
  [(NTKParameciumFaceView *)self bounds];
  [(CLKUIMetalQuadView *)self->_quadView setFrame:?];
  [(CLKDevice *)self->_device screenBounds];
  [(UIView *)self->_pin setCenter:v3 * 0.5, v4 * 0.5];
}

- (void)_updateBackgroundAndPlatterAlpha:(double)alpha
{
  if (self->_snapshotContentViewsLoaded)
  {
    v4 = ((self->_tritiumProgress + -1.0) + 1.0) * 0.992156863 * (1.0 - self->_backgroundOn) * alpha;
    v9 = [UIColor colorWithRed:v4 green:v4 blue:v4 alpha:1.0];
    rootContainerView = [(NTKParameciumFaceView *)self rootContainerView];
    [rootContainerView setBackgroundColor:v9];

    complicationBackgroundColor = [(NTKParameciumFaceView *)self complicationBackgroundColor];
    v7 = [complicationBackgroundColor isEqual:v9];

    if ((v7 & 1) == 0)
    {
      [(NTKParameciumFaceView *)self setComplicationBackgroundColor:v9];
      [(NTKParameciumFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_14580];
    }
  }

  else
  {
    v9 = +[UIColor clearColor];
    rootContainerView2 = [(NTKParameciumFaceView *)self rootContainerView];
    [rootContainerView2 setBackgroundColor:v9];
  }
}

- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)style
{
  device = [(NTKParameciumFaceView *)self device];
  v6 = sub_3A78(device, device);
  v8 = v7;

  if (style == 2)
  {
    v6 = v8;
  }

  complicationFactory = [(NTKParameciumFaceView *)self complicationFactory];
  v9 = [complicationFactory factoryAtSlot:NTKComplicationSlotSubdialTop];
  [v9 verticalCenterOffset];
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    [v9 setVerticalCenterOffset:v6];
    [(NTKParameciumFaceView *)self invalidateComplicationLayout];
    [(NTKParameciumFaceView *)self layoutIfNeeded];
    [(NTKParameciumFaceView *)self layoutComplicationViews];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 12)
  {
    style = [optionCopy style];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setTickShadows:0.0];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsTicks:flt_BE20[style]];
    v11 = flt_BE38[style];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsConfetti:v11];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsNumbers:flt_BE2C[style]];
    self->_simpleProgress = v11;
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setConfettiRotation:0.0];
    [(NTKParameciumFaceView *)self _updateConfettiRotationRate];
    [(NTKParameciumFaceView *)self _updateComplicationCenterOffsetForStyle:style];
  }

  else if (mode == 15)
  {
    v9 = flt_BE18[[optionCopy background]];
    self->_backgroundOn = v9;
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setBackgroundOn:v9];
    if (self->_forSwatchRendering)
    {
      [(CLKUIMetalQuadView *)self->_quadView setClearColor:(1.0 - self->_backgroundOn), (1.0 - self->_backgroundOn), (1.0 - self->_backgroundOn), 1.0];
    }
  }

  [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:1.0];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 12)
  {
    style = [optionCopy style];
    style2 = [toOptionCopy style];
    v20 = style2;
    v21 = style << 32;
    v22 = style2 << 32;
    CLKInterpolateBetweenFloatsUnclipped();
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setTickShadows:?];
    v23 = flt_BE38[style];
    v24 = flt_BE38[v20];
    CLKInterpolateBetweenFloatsUnclipped();
    *&v25 = v25;
    self->_simpleProgress = *&v25;
    v26 = flt_BE2C[style];
    v27 = flt_BE2C[v20];
    CLKInterpolateBetweenFloatsUnclipped();
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsNumbers:?];
    v28 = flt_BE20[style];
    v29 = flt_BE20[v20];
    CLKInterpolateBetweenFloatsUnclipped();
    v31 = v30;
    CLKInterpolateBetweenFloatsUnclipped();
    v33 = v32;
    if (style << 32 == 0x100000000 && v22 == 0x200000000 || v21 == 0x200000000 && v22 == 0x100000000)
    {
      v31 = floorf(v31);
    }

    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsTicks:v31];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsConfetti:v33];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setConfettiRotation:0.0];
    if (fraction >= 0.5)
    {
      style = v20;
    }

    else
    {
      style = style;
    }

    CLKMapFractionIntoRange();
    v35 = v34;
    CLKMapFractionIntoRange();
    memset(&v40, 0, sizeof(v40));
    CGAffineTransformMakeScale(&v40, v36, v36);
    [(NTKParameciumFaceView *)self _updateComplicationCenterOffsetForStyle:style];
    if (v22 == 0x200000000 || v21 == 0x200000000)
    {
      v37 = [(NTKParameciumFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialTop];
      display = [v37 display];

      [display setAlpha:v35];
      v39 = v40;
      [display setTransform:&v39];
    }

    [(NTKParameciumFaceView *)self _updateConfettiRotationRate];
    goto LABEL_16;
  }

  if (mode == 15)
  {
    v15 = flt_BE18[[optionCopy background]];
    v16 = flt_BE18[[toOptionCopy background]];
    CLKInterpolateBetweenFloatsUnclipped();
    *&v17 = v17;
    self->_backgroundOn = *&v17;
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setBackgroundOn:*&v17];
LABEL_16:
    [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:1.0];
  }

  [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:1.0];
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode < 2)
  {
    return 1.0;
  }

  return result;
}

- (double)_backgroundAlphaForEditMode:(int64_t)mode
{
  result = 0.2;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication
{
  v4.receiver = self;
  v4.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v4 _cleanupAfterTransitionComplicationSlot:slot selectedComplication:complication];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5.receiver = self;
  v5.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v5 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:fraction];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5.receiver = self;
  v5.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v5 _applyBreathingFraction:mode forCustomEditMode:slot slot:fraction];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  complicationContainerView = [(NTKParameciumFaceView *)self complicationContainerView];
  [(NTKParameciumFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKParameciumFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [complicationContainerView setAlpha:?];

  [(NTKParameciumFaceView *)self _backgroundAlphaForEditMode:mode];
  [(NTKParameciumFaceView *)self _backgroundAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:?];
}

- (void)_loadLayoutRules
{
  v9.receiver = self;
  v9.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v9 _loadLayoutRules];
  cornerFactory = self->_cornerFactory;
  device = [(NTKParameciumFaceView *)self device];
  [device screenBounds];
  v6 = v5;
  device2 = [(NTKParameciumFaceView *)self device];
  [device2 screenScale];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)cornerFactory loadLayoutRulesForFaceView:self dialDiameter:v6 * v8];

  [(NTKSimpleTextFaceViewComplicationFactory *)self->_subdialFactory loadLayoutRules];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  complicationFactory = [(NTKParameciumFaceView *)self complicationFactory];
  [complicationFactory configureComplicationView:viewCopy forSlot:slotCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy transitionToMonochromeWithFraction:1.0];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = viewCopy;
    complicationColor = [(NTKParameciumFaceView *)self complicationColor];
    label = [v8 label];

    [label setTextColor:complicationColor];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v11 = viewCopy;
    [v11 setShowsSeconds:0];
    complicationColor = [(NTKParameciumFaceView *)self complicationColor];
    [v11 setTextColor:complicationColor];
  }

LABEL_8:
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_15000;
  if (options != 15)
  {
    v4 = 0;
  }

  if (options == 12)
  {
    return &off_14FE8;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
      goto LABEL_15;
    }
  }

  if (qword_1A3F8 != -1)
  {
    sub_8EB0();
  }

  if (mode == 15)
  {
    v10 = optionCopy;
    v11 = [optionsCopy objectForKeyedSubscript:&off_14D30];
  }

  else
  {
    if (mode != 12)
    {
      v12 = 0;
      v10 = 0;
      goto LABEL_12;
    }

    v10 = [optionsCopy objectForKeyedSubscript:&off_14D18];
    v11 = optionCopy;
  }

  v12 = v11;
LABEL_12:
  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 background]);
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 style]);
  v16 = [NSString stringWithFormat:@"%@-%@", v14, v15];

  v13 = [qword_1A3F0 objectForKey:v16];
  if (!v13)
  {
    v17 = [NTKParameciumFaceView alloc];
    device = [(NTKParameciumFaceView *)self device];
    v19 = [(NTKParameciumFaceView *)v17 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

    v19->_forSwatchRendering = 1;
    [(NTKParameciumFaceView *)v19 _loadSnapshotContentViews];
    [NTKEditOption sizeForSwatchStyle:3];
    v21 = v20;
    v23 = v22;
    v24 = +[UIScreen mainScreen];
    [v24 nativeScale];
    v26 = v25;

    [(NTKParameciumFaceView *)v19 _applyOption:v10 forCustomEditMode:15 slot:0];
    [(NTKParameciumFaceView *)v19 _applyOption:v12 forCustomEditMode:12 slot:0];
    v27 = NTKIdealizedDate();
    [(NTKParameciumFaceView *)v19 setOverrideDate:v27 duration:0.0];

    v13 = [(CLKUIMetalQuadView *)v19->_quadView snapshotInRect:0.0 scale:0.0 time:v21, v23, v26, 0.0];
    v19->_forSwatchRendering = 0;
    [qword_1A3F0 setObject:v13 forKey:v16];
  }

LABEL_15:

  return v13;
}

@end