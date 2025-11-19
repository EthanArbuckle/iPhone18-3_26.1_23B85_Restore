@interface NTKParameciumFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NTKParameciumFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_backgroundAlphaForEditMode:(int64_t)a3;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (id)_complicationContainerViewForSlot:(id)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateBackgroundAndPlatterAlpha:(double)a3;
- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)a3;
- (void)_updateConfettiRotationRate;
- (void)_updatePausedState;
- (void)cleanupAfterEditing;
- (void)layoutSubviews;
- (void)prepareForEditing;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)updateTime:(CLKClockTimerDate *)a3;
@end

@implementation NTKParameciumFaceView

- (NTKParameciumFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9 = a4;
  v29.receiver = self;
  v29.super_class = NTKParameciumFaceView;
  v10 = [(NTKParameciumFaceView *)&v29 initWithFaceStyle:a3 forDevice:v9 clientIdentifier:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, a4);
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
    v15 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initForDevice:v9];
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
    v20 = [(NTKParameciumFaceView *)v11 device];
    [v19 setVerticalCenterOffset:{sub_3A78(v20, v20)}];

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

    v26 = [(NTKParameciumFaceView *)v11 contentView];
    [v26 addSubview:v11->_subdialComplicationContainerView];

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
  v8 = [(NTKParameciumFaceView *)self contentView];
  [v8 addSubview:self->_quadView];

  [(NTKParameciumFaceView *)self bounds];
  [(CLKUIMetalQuadView *)self->_quadView setFrame:?];
  [(CLKUIMetalQuadView *)self->_quadView setPreferredFramesPerSecond:60];
  v9 = [[UIView alloc] initWithFrame:{0.0, 0.0, 2.0, 2.0}];
  pin = self->_pin;
  self->_pin = v9;

  v11 = +[UIColor blackColor];
  [(UIView *)self->_pin setBackgroundColor:v11];

  v12 = [(UIView *)self->_pin layer];
  [v12 setCornerRadius:1.0];

  v13 = [(NTKParameciumFaceView *)self contentView];
  [v13 addSubview:self->_pin];

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
  v3 = [(NTKParameciumFaceView *)self dataMode];
  v4 = [(NTKParameciumFaceView *)self editing];
  v5 = [(NTKParameciumFaceView *)self isFrozen]^ 1;
  if ((((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1) & v5 & NTKIsScreenOn()) != 0 || v4)
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
  v3 = [(NTKParameciumFaceView *)self dataMode];
  v4 = [(NTKParameciumFaceView *)self optionForCustomEditMode:12 slot:0];
  v5 = [v4 style];

  v6 = v5 == &dword_0 + 2 && v3 == &dword_0 + 1;
  v7 = 0.00174532925;
  if (!v6)
  {
    v7 = 0.0;
  }

  self->_confettiRotationRate = v7;
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v10 setOverrideDate:v6 duration:a4];
  overrideDate = self->_overrideDate;
  self->_overrideDate = v6;
  v8 = v6;

  CLKClockTimerDateForDate();
  [(NTKParameciumFaceView *)self updateTime:v9];
}

- (void)updateTime:(CLKClockTimerDate *)a3
{
  if (self->_overrideDate)
  {
    CLKClockTimerDateForDate();
    v5 = v12;
  }

  else
  {
    if (a3->var0)
    {
      v6 = +[NTKTimeOffsetManager sharedManager];
      [v6 timeOffset];
      v8 = v7;

      if (v8 <= 0.0)
      {
        v5 = a3->var0;
        goto LABEL_9;
      }

      v9 = +[NTKTimeOffsetManager sharedManager];
      v10 = [v9 displayTimeForRealTime:a3->var0];

      CLKClockTimerDateForDate();
    }

    else
    {
      v11 = +[NTKTimeOffsetManager sharedManager];
      v10 = [v11 faceDisplayTime];

      CLKClockTimerDateForDate();
    }

    v5 = v12;
  }

LABEL_9:
  [(NTKParameciumCompositeQuad *)self->_compositeQuad setToDate:v5];
}

- (id)_complicationContainerViewForSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotSubdialTop])
  {
    v5 = self->_subdialComplicationContainerView;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKParameciumFaceView;
    v5 = [(NTKParameciumFaceView *)&v8 _complicationContainerViewForSlot:v4];
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

- (void)_updateBackgroundAndPlatterAlpha:(double)a3
{
  if (self->_snapshotContentViewsLoaded)
  {
    v4 = ((self->_tritiumProgress + -1.0) + 1.0) * 0.992156863 * (1.0 - self->_backgroundOn) * a3;
    v9 = [UIColor colorWithRed:v4 green:v4 blue:v4 alpha:1.0];
    v5 = [(NTKParameciumFaceView *)self rootContainerView];
    [v5 setBackgroundColor:v9];

    v6 = [(NTKParameciumFaceView *)self complicationBackgroundColor];
    v7 = [v6 isEqual:v9];

    if ((v7 & 1) == 0)
    {
      [(NTKParameciumFaceView *)self setComplicationBackgroundColor:v9];
      [(NTKParameciumFaceView *)self enumerateComplicationDisplayWrappersWithBlock:&stru_14580];
    }
  }

  else
  {
    v9 = +[UIColor clearColor];
    v8 = [(NTKParameciumFaceView *)self rootContainerView];
    [v8 setBackgroundColor:v9];
  }
}

- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)a3
{
  v5 = [(NTKParameciumFaceView *)self device];
  v6 = sub_3A78(v5, v5);
  v8 = v7;

  if (a3 == 2)
  {
    v6 = v8;
  }

  v10 = [(NTKParameciumFaceView *)self complicationFactory];
  v9 = [v10 factoryAtSlot:NTKComplicationSlotSubdialTop];
  [v9 verticalCenterOffset];
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    [v9 setVerticalCenterOffset:v6];
    [(NTKParameciumFaceView *)self invalidateComplicationLayout];
    [(NTKParameciumFaceView *)self layoutIfNeeded];
    [(NTKParameciumFaceView *)self layoutComplicationViews];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v12 = a3;
  v8 = a5;
  if (a4 == 12)
  {
    v10 = [v12 style];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setTickShadows:0.0];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsTicks:flt_BE20[v10]];
    v11 = flt_BE38[v10];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsConfetti:v11];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsNumbers:flt_BE2C[v10]];
    self->_simpleProgress = v11;
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setConfettiRotation:0.0];
    [(NTKParameciumFaceView *)self _updateConfettiRotationRate];
    [(NTKParameciumFaceView *)self _updateComplicationCenterOffsetForStyle:v10];
  }

  else if (a4 == 15)
  {
    v9 = flt_BE18[[v12 background]];
    self->_backgroundOn = v9;
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setBackgroundOn:v9];
    if (self->_forSwatchRendering)
    {
      [(CLKUIMetalQuadView *)self->_quadView setClearColor:(1.0 - self->_backgroundOn), (1.0 - self->_backgroundOn), (1.0 - self->_backgroundOn), 1.0];
    }
  }

  [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:1.0];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 == 12)
  {
    v18 = [v12 style];
    v19 = [v13 style];
    v20 = v19;
    v21 = v18 << 32;
    v22 = v19 << 32;
    CLKInterpolateBetweenFloatsUnclipped();
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setTickShadows:?];
    v23 = flt_BE38[v18];
    v24 = flt_BE38[v20];
    CLKInterpolateBetweenFloatsUnclipped();
    *&v25 = v25;
    self->_simpleProgress = *&v25;
    v26 = flt_BE2C[v18];
    v27 = flt_BE2C[v20];
    CLKInterpolateBetweenFloatsUnclipped();
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsNumbers:?];
    v28 = flt_BE20[v18];
    v29 = flt_BE20[v20];
    CLKInterpolateBetweenFloatsUnclipped();
    v31 = v30;
    CLKInterpolateBetweenFloatsUnclipped();
    v33 = v32;
    if (v18 << 32 == 0x100000000 && v22 == 0x200000000 || v21 == 0x200000000 && v22 == 0x100000000)
    {
      v31 = floorf(v31);
    }

    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsTicks:v31];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setShowsConfetti:v33];
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setConfettiRotation:0.0];
    if (a3 >= 0.5)
    {
      v18 = v20;
    }

    else
    {
      v18 = v18;
    }

    CLKMapFractionIntoRange();
    v35 = v34;
    CLKMapFractionIntoRange();
    memset(&v40, 0, sizeof(v40));
    CGAffineTransformMakeScale(&v40, v36, v36);
    [(NTKParameciumFaceView *)self _updateComplicationCenterOffsetForStyle:v18];
    if (v22 == 0x200000000 || v21 == 0x200000000)
    {
      v37 = [(NTKParameciumFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialTop];
      v38 = [v37 display];

      [v38 setAlpha:v35];
      v39 = v40;
      [v38 setTransform:&v39];
    }

    [(NTKParameciumFaceView *)self _updateConfettiRotationRate];
    goto LABEL_16;
  }

  if (a6 == 15)
  {
    v15 = flt_BE18[[v12 background]];
    v16 = flt_BE18[[v13 background]];
    CLKInterpolateBetweenFloatsUnclipped();
    *&v17 = v17;
    self->_backgroundOn = *&v17;
    [(NTKParameciumCompositeQuad *)self->_compositeQuad setBackgroundOn:*&v17];
LABEL_16:
    [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:1.0];
  }

  [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:1.0];
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 < 2)
  {
    return 1.0;
  }

  return result;
}

- (double)_backgroundAlphaForEditMode:(int64_t)a3
{
  result = 0.2;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4
{
  v4.receiver = self;
  v4.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v4 _cleanupAfterTransitionComplicationSlot:a3 selectedComplication:a4];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v5.receiver = self;
  v5.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v5 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:a3];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v5.receiver = self;
  v5.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v5 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:a3];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v8 = [(NTKParameciumFaceView *)self complicationContainerView];
  [(NTKParameciumFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKParameciumFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  [(NTKParameciumFaceView *)self _backgroundAlphaForEditMode:a4];
  [(NTKParameciumFaceView *)self _backgroundAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKParameciumFaceView *)self _updateBackgroundAndPlatterAlpha:?];
}

- (void)_loadLayoutRules
{
  v9.receiver = self;
  v9.super_class = NTKParameciumFaceView;
  [(NTKParameciumFaceView *)&v9 _loadLayoutRules];
  cornerFactory = self->_cornerFactory;
  v4 = [(NTKParameciumFaceView *)self device];
  [v4 screenBounds];
  v6 = v5;
  v7 = [(NTKParameciumFaceView *)self device];
  [v7 screenScale];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)cornerFactory loadLayoutRulesForFaceView:self dialDiameter:v6 * v8];

  [(NTKSimpleTextFaceViewComplicationFactory *)self->_subdialFactory loadLayoutRules];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(NTKParameciumFaceView *)self complicationFactory];
  [v7 configureComplicationView:v12 forSlot:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v12 transitionToMonochromeWithFraction:1.0];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v12;
    v9 = [(NTKParameciumFaceView *)self complicationColor];
    v10 = [v8 label];

    [v10 setTextColor:v9];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v11 = v12;
    [v11 setShowsSeconds:0];
    v9 = [(NTKParameciumFaceView *)self complicationColor];
    [v11 setTextColor:v9];
  }

LABEL_8:
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_15000;
  if (a3 != 15)
  {
    v4 = 0;
  }

  if (a3 == 12)
  {
    return &off_14FE8;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
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

  if (a4 == 15)
  {
    v10 = v8;
    v11 = [v9 objectForKeyedSubscript:&off_14D30];
  }

  else
  {
    if (a4 != 12)
    {
      v12 = 0;
      v10 = 0;
      goto LABEL_12;
    }

    v10 = [v9 objectForKeyedSubscript:&off_14D18];
    v11 = v8;
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
    v18 = [(NTKParameciumFaceView *)self device];
    v19 = [(NTKParameciumFaceView *)v17 initWithFaceStyle:44 forDevice:v18 clientIdentifier:0];

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